if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name A_1_AT_Iniciar
#displayname |cRXP_LOOT_1.0|r - Convirtiéndote en un Campeón

step
	#completewith next
	.goto IcecrownGlacier,69.66,22.86,200 >> Viaja a los |T236690:0|tArgent Torneo Grounds en Corona de Hielo
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Justicar Mariel Corazón Veraz|r
	.goto IcecrownGlacier,69.66,22.86
	.accept 13667 >> Acepta la misión El Torneo Argenta << Alliance
	.accept 13668 >> Acepta la misión El Torneo Argenta << Horde
	.target Justicar Mariel Trueheart
step
	#completewith next
	.goto IcecrownGlacier,72.59,22.61
	.fp Argent Tournament Grounds >> Aprende la ruta de vuelo hacia las Tiendas del Torneo Argenta
	.target Helidan Lightwing
step
	>>Entra al Pabellón del Pacto de Plata << Alliance
	>>Entra en el Pabellón Atracasol de la Horda << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien|r Vacuosol << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13667 >> Entrega la misión El Torneo Argenta << Alliance
	.turnin 13668 >> Entrega la misión El Torneo Argenta << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Golpeveloz|r y |cRXP_FRIENDLY_Exploradora Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien Vacuosol|r, |cRXP_FRIENDLY_Amariel Jurasol|r y |cRXP_FRIENDLY_Galathia Alba Brillante|r << Horde
	.accept 13828 >> Acepta la misión Dominio del combate cuerpo a cuerpo << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.accept 13837 >> Acepta la misión Dominio de Cargar << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.accept 13835 >> Acepta la misión Dominio de Romper escudo << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.accept 13829 >> Acepta la misión Dominio del combate cuerpo a cuerpo << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.accept 13839 >> Acepta la misión Dominio de Cargar << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.accept 13838 >> Acepta la misión Dominio de Romper escudo << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step
	#completewith next
	.goto IcecrownGlacier,75.93,20.37 << Alliance
	.goto IcecrownGlacier,75.63,23.66 << Horde
	.vehicle >>Equipa el |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu inventario y luego monta al |cRXP_FRIENDLY_Corcel Quel'dorei de establo|r << Alliance
	.vehicle >>Equipa el |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario y luego monta al |cRXP_FRIENDLY_Halcón zancudo Atracasol de establo|r << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valis Cazavientos|r
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,73.20,19.23
	.complete 13835,1 << Alliance -- Valis Windchaser's advice
	.complete 13838,1 << Horde -- Valis Windchaser's advice
	.skipgossip 33974,1,1
	.target Valis Windchaser
step
	.isOnQuest 13835 << Alliance
	.isOnQuest 13838 << Horde
	>>Usa |T132358:0|tRomper escudo (2) en los |cRXP_ENEMY_Objetivos a distancia|r y quítales las acumulaciones de |T132360:0|tDefender. Una vez que ya no queden acumulaciones de |T132360:0|tDefender, sigue usando |T132358:0|tRomper escudo en el vulnerable |cRXP_ENEMY_Objetivo a distancia|r
	>>Debes estar a al menos 5 metros de distancia del |cRXP_ENEMY_Objetivo a distancia|r cuando uses el |T132358:0|tRomper escudo
	.goto IcecrownGlacier,73.13,19.01
	.complete 13835,2 << Alliance -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.complete 13838,2 << Horde -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.mob Ranged Target
step
	.isOnQuest 13837 << Alliance
	.isOnQuest 13839 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rugan Tripacero|r
	.goto IcecrownGlacier,72.67,18.87
	.complete 13837,1 << Alliance -- Rugan Steelbelly's advice
	.complete 13839,1 << Horde -- Rugan Steelbelly's advice
	.skipgossip 33972,1,1
	.target Rugan Steelbelly
step
	.isOnQuest 13837 << Alliance
	.isOnQuest 13839 << Horde
	>>Usa |T132358:0|tShield-Pepillo (2) en |cRXP_ENEMY_Charge Targets|r para eliminar las capas de |T132360:0|tDefend. Usa |T132226:0|tCharge (3) una vez que no queden capas de |T132360:0|tDefend
	>>Asegúrate de no estar demasiado cerca ni demasiado lejos del |cRXP_ENEMY_Objetivo de carga|r cuando uses el |T132226:0|tCharge
	.goto IcecrownGlacier,72.75,18.85
	.complete 13837,2 << Alliance -- Charge vulnerable Charge Target (2)
	.complete 13839,2 << Horde -- Charge vulnerable Charge Target (2)
	.mob Charge Target
step
	.isOnQuest 13828 << Alliance
	.isOnQuest 13829 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeran Cierramadera|r
	.goto IcecrownGlacier,72.46,19.30
	.complete 13828,1 << Alliance -- Jeran Lockwood's advice
	.complete 13829,1 << Horde -- Jeran Lockwood's advice
	.skipgossip 33973,1,1
	.target Jeran Lockwood
step
	.isOnQuest 13828 << Alliance
	.isOnQuest 13829 << Horde
	>>Usa el |T132360:0|tDefender (4) |c99ffff99SIEMPRE|r antes de atacar con el |T135375:0|tEstocada (1). El |T132360:0|tDefender se puede acumular hasta 3 veces. Es ideal siempre tener 3 acumulaciones de |T132360:0|tDefender. No tener al menos 1 acumulación de |T132360:0|tDefender te causará daño significativo cuando uses el |T135375:0|tEstocada, potencialmente llevando a ser desmontado
	>>Usa el |T135375:0|tEstocada (1) en el |cRXP_ENEMY_Cuerpo a cuerpo Muñeco-diana|r 5 veces
	>>También puedes usar el |T134058:0|tRenovar montura (5) para sanar cuando no estés en combate
	.goto IcecrownGlacier,72.28,19.24
	.complete 13828,2 << Alliance -- Use Thrust on Melee Target (5)
	.complete 13829,2 << Horde -- Use Thrust on Melee Target (5)
	.mob Melee Target
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Golpeveloz|r y la |cRXP_FRIENDLY_Exploradora Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Magister Edien Vacuosol|r, |cRXP_FRIENDLY_Amariel Jurasol|r y |cRXP_FRIENDLY_Galathia Alba Brillante|r << Horde
	.turnin 13828 >> Entrega la misión Dominio del combate cuerpo a cuerpo << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13837 >> Entrega la misión Dominio de Cargar << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13835 >> Entrega la misión Dominio de Romper escudo << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13829 >> Entrega la misión Dominio del combate cuerpo a cuerpo << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13839 >> Entrega la misión Dominio de Cargar << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13838 >> Entrega la misión Dominio de Romper escudo << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien Vacuosol|r << Horde
	.accept 13672 >> Acepta la misión A la altura del desafío << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.accept 13678 >> Acepta la misión A la altura del desafío << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible << Alliance
	.daily 13669,13670,13666 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien Vacuosol|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible << Horde
	.daily 13674,13675,13673 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avareth Golpeveloz|r y |cRXP_FRIENDLY_Exploradora Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Amariel Jurasol|r y |cRXP_FRIENDLY_Galathia Alba Brillante|r << Horde
	.daily 13671 >> Acepta la misión Instrucción en el campo << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.daily 13676 >> Acepta la misión Instrucción en el campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.daily 13625 >> Acepta la misión Aprende a llevar las riendas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.daily 13677 >> Acepta la misión Aprende a llevar las riendas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestAvailable 13672 << Alliance
	.isQuestAvailable 13678 << Horde
step
	#completewith next
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	.goto IcecrownGlacier,75.93,20.37 << Alliance
	.goto IcecrownGlacier,75.63,23.66 << Horde
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu inventario, luego Monta al |cRXP_FRIENDLY_Estabulado Corcel Quel'dorei|r << Alliance
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario, luego Monta al |cRXP_FRIENDLY_Estabulado Halcón zancudo Atracasol|r << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Usa |T132358:0|tRomper escudo (2) en |cRXP_ENEMY_Objetivos a distancia|r y elimina sus capas de |T132360:0|tDefender. Una vez que |T132360:0|tDefender ya no permanezca, continúa usando |T132358:0|tRomper escudo en los Objetivos a distancia vulnerables
	>>Debes estar al menos 5 yardas de distancia del |cRXP_ENEMY_Objetivo a distancia|r cuando usas |T132358:0|tRomper escudo
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,73.13,19.01
	.complete 13625,2 << Alliance -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.complete 13677,2 << Horde -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.mob Ranged Target
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Usa |T132358:0|tRomper escudo (2) en |cRXP_ENEMY_Cargar Objetivos|r para eliminar las capas de |T132360:0|tDefender. Usa |T132226:0|tCargar (3) una vez que no queden capas de |T132360:0|tDefender
	>>Asegúrate de no estar demasiado cerca o demasiado lejos del |cRXP_ENEMY_Objetivo de carga|r cuando usas |T132226:0|tCargar
	.goto IcecrownGlacier,72.75,18.85
	.complete 13625,3 << Alliance -- Use Charge on vulnerable Charge Target (2)
	.complete 13677,3 << Horde -- Use Charge on vulnerable Charge Target (2)
	.mob Charge Target
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Usa |T132360:0|tDefender (4) |c99ffff99SIEMPRE|r antes de atacar con |T135375:0|tEstocada (1). |T132360:0|tDefender puede acumularse hasta 3 veces. Es ideal tener siempre 3 acumulaciones de |T132360:0|tDefender. No tener al menos 1 acumulación de |T132360:0|tDefender causará que sufras daño significativo cuando uses |T135375:0|tEstocada, potencialmente llevando a ser desmontado
	>>Usa |T135375:0|tEstocada (1) en el |cRXP_ENEMY_Cuerpo a cuerpo Muñeco-diana|r 5 veces
	>>También puedes usar |T134058:0|tRenovar montura (5) para sanar cuando no estés en combate
	.goto IcecrownGlacier,72.28,19.24
	.complete 13625,1 << Alliance -- Use Thrust on Melee Target (5)
	.complete 13677,1 << Horde -- Use Thrust on Melee Target (5)
	.mob Melee Target
step
	.isOnQuest 13671 << Alliance
	.isOnQuest 13676 << Horde
	>>Mata |cRXP_ENEMY_Hulking Abominations|r, |cRXP_ENEMY_Malefic Necromancers|r y |cRXP_ENEMY_Esbirros imperecederos|r o |cRXP_ENEMY_any Plaga|r en Corona de Hielo
	>>|cRXP_WARN_Recuerdo Equipa tu Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	.goto IcecrownGlacier,70.79,62.08,40,0
	.goto IcecrownGlacier,69.99,65.26,40,0
	.goto IcecrownGlacier,67.91,69.43,40,0
	.goto IcecrownGlacier,71.42,68.86,40,0
	.goto IcecrownGlacier,70.79,62.08
	.complete 13671,1 << Alliance -- Icecrown Scourge slain (8)
	.complete 13676,1 << Horde -- Icecrown Scourge slain (8)
	.mob Hulking Abomination
	.mob Malefic Necromancer
	.mob Undying Minion
	.mob Risen Alliance Soldier
step
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
step
	#completewith next
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
step
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13669,1 << Alliance -- Blade of Drak'Mar (1)
	.complete 13674,1 << Horde -- Blade of Drak'Mar (1)
step
	#completewith next
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
step
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto CrystalsongForest,55.05,75.04
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
step
	#completewith next
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
step
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13670,1 << Alliance -- Winter's Edge (1)
	.complete 13675,1 << Horde -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
step
	#completewith next
	.isOnQuest 13666 << Alliance
	.isOnQuest 13673 << Horde
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
step
	.isOnQuest 13666 << Alliance
	.isOnQuest 13673 << Horde
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13666,1 << Alliance -- Ashwood Brand (1)
	.complete 13673,1 << Horde -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Horde
	.isOnQuest 13666,13673,13675,13670,13674,13669
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Golpeveloz|r y |cRXP_FRIENDLY_Exploradora Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien Vacuosol|r, |cRXP_FRIENDLY_Amariel Jurasol|r y |cRXP_FRIENDLY_Galathia Alba Brillante|r << Horde
	.turnin 13669 >> Entrega un arma digna << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13674 >> Entrega un arma digna << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >> Entrega la misión Instrucción en el campo << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >> Entrega la misión Instrucción en el campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >> Entrega la misión Aprende a llevar las riendas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >> Entrega la misión Aprende a llevar las riendas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13669 << Alliance -- A Worthy Weapon
	.isQuestComplete 13674 << Horde -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Golpeveloz|r y |cRXP_FRIENDLY_Exploradora Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien Vacuosol|r, |cRXP_FRIENDLY_Amariel Jurasol|r y |cRXP_FRIENDLY_Galathia Alba Brillante|r << Horde
	.turnin 13670 >> Entrega El Filo del invierno << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13675 >> Entrega El Filo del invierno << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >> Entrega la misión Instrucción en el campo << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >> Entrega la misión Instrucción en el campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >> Entrega la misión Aprende a llevar las riendas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >> Entrega la misión Aprende a llevar las riendas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13670 << Alliance -- The Edge Of Winter
	.isQuestComplete 13675 << Horde -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Golpeveloz|r y |cRXP_FRIENDLY_Exploradora Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien Vacuosol|r, |cRXP_FRIENDLY_Amariel Jurasol|r y |cRXP_FRIENDLY_Galathia Alba Brillante|r << Horde
	.turnin 13666 >> Entrega la misión Una espada de Campeón << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13673 >> Entrega la misión Una espada de Campeón << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >> Entrega la misión Entrenamiento in the Field << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >> Entrega la misión Instrucción en el campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >> Entrega la misión Aprende a llevar las riendas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >> Entrega la misión Aprende a llevar las riendas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13666 << Alliance -- A Blade Fit For A Champion
	.isQuestComplete 13673 << Horde -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Avareth Golpeveloz|r y |cRXP_FRIENDLY_Exploradora Shalyndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Amariel Jurasol|r y |cRXP_FRIENDLY_Galathia Alba Brillante|r << Horde
	.turnin -13671 >> Entrega la misión Entrenamiento in the Field << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin -13676 >> Entrega la misión Instrucción en el campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin -13625 >> Entrega la misión Aprende a llevar las riendas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin -13677 >> Entrega la misión Learn to Hold the Riendas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step -- Checking if they have 15 Aspirant's Seals after a set of turn ins.
	>>Para completar la misión |cFFffff00A la altura del desafío|r y progresar a través de |T236690:0|tArgent Torneo Grounds debes completar misiones diarias y obtener |T133443:0|t|c99CCFFFFAspirant's Seals|r
	>>Necesitas |T133443:0|t|c99CCFFFF15 Aspirant's Seals|r. Ganarás 5 por día si completas las 3 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien Vacuosol|r << Horde
	.complete 13672,1 << Alliance -- Aspirant's Seal (15)
	.complete 13678,1 << Horde -- Aspirant's Seal (15)
	.turnin 13672 >> Entrega la misión A la altura del desafío << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13678 >> Entrega la misión Up to the Desafío << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien Vacuosol|r << Horde
	.accept 13679 >> Acepta la misión El desafío del aspirante << Alliance
	.accept 13680 >> Acepta la misión El desafío del aspirante << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
	.isQuestTurnedIn 13672 << Alliance
	.isQuestTurnedIn 13678 << Horde
step
	#completewith next
	>>Vuela a Aspirants' Tocar en el lado norte
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu inventario luego monta al |cRXP_FRIENDLY_Corcel Quel'dorei de establo|r << Alliance
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario luego monta al |cRXP_FRIENDLY_Halcón zancudo Atracasol de establo|r << Horde
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion << Alliance
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion << Horde
	.goto IcecrownGlacier,71.84,19.87 << Alliance
	.goto IcecrownGlacier,71.84,19.98 << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
	.isOnQuest 13679 << Alliance
	.isOnQuest 13680 << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero David|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén pilas de ella durante el duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Espera a que |cRXP_ENEMY_Valeroso Argenta|r llegue y luego derrótalo
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,71.43,19.57
	.complete 13679,1 << Alliance -- Argent Valiant defeated (1)
	.complete 13680,1 << Horde -- Argent Valiant defeated (1)
	.skipgossip 2
	.timer 13,Llegada del Valeroso Argenta
	.mob Argent Valiant
	.isOnQuest 13679 << Alliance
	.isOnQuest 13680 << Horde
step
	>>Salta del |cRXP_FRIENDLY_Corcel Quel'dorei|r << Alliance
	>>Salta del |cRXP_FRIENDLY_Stabled Halcón zancudo Atracasol|r << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magister Edien Vacuosol|r << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13679 >> Entrega la misión El desafío del aspirante << Alliance
	.turnin 13680 >> Entrega la misión El desafío del aspirante << Horde
	.accept 13690 >> Acepta la misión Un Valeroso de El Exodar << Draenei
	.accept 13685 >> Acepta la misión Un Valeroso de Forjaz << Dwarf
	.accept 13688 >> Acepta la misión Un Valeroso de Gnomeregan << Gnome
	.accept 13684 >> Acepta la misión Un Valeroso de Ventormenta	<< Human
	.accept 13689 >> Acepta la misión Un Valeroso de Darnassus << NightElf
	.accept 13695 >> Acepta la misión Valeroso de Entrañas << Scourge
	.accept 13691 >> Acepta la misión Un Valeroso de Orgrimmar << Orc
	.accept 13694 >> Acepta la misión Un Valeroso de Cima del Trueno << Tauren
	.accept 13693 >> Acepta la misión Un Valeroso de Sen'jin << Troll
	.accept 13696 >> Acepta la misión Un Valeroso de Lunargenta << BloodElf
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.turnin 13690 >> Entrega la misión Un Valeroso del Exodar << Draenei
	.turnin 13685 >> Entrega la misión Un Valeroso de Forjaz << Dwarf
	.turnin 13688 >> Entrega la misión Un Valeroso de Gnomeregan << Gnome
	.turnin 13684 >> Entrega la misión Un Valeroso de Ventormenta	<< Human
	.turnin 13689 >> Entrega la misión Un Valeroso de Darnassus << NightElf
	.turnin 13695 >> Entrega la misión Un Valeroso de Entrañas << Scourge
	.turnin 13691 >> Entrega la misión Un Valeroso de Orgrimmar << Orc
	.turnin 13694 >> Entrega la misión Un Valeroso de Cima del Trueno << Tauren
	.turnin 13693 >> Entrega la misión Un Valeroso de Sen'jin << Troll
	.turnin 13696 >> Entrega la misión Un Valeroso de Lunargenta << BloodElf
	.accept 13716 >> Acepta la misión La carga del Valeroso << Draenei
	.accept	13714 >> Acepta la misión La carga del Valeroso << Dwarf
	.accept 13715 >> Acepta la misión La carga del Valeroso << Gnome
	.accept	13718 >> Acepta la misión La carga del Valeroso << Human
	.accept 13717 >> Acepta la misión La carga del Valeroso << NightElf
	.accept	13721 >> Acepta la misión La carga del Valeroso << Scourge
	.accept 13697 >> Acepta la misión La carga del Valeroso << Orc
	.accept 13720 >> Acepta la misión La carga del Valeroso << Tauren
	.accept 13719 >> Acepta la misión La carga del Valeroso << Troll
	.accept 13722 >> Acepta la misión La carga del Valeroso << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf

step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r. Tiene 1 de 3 misiones diarias. Acepta cualquiera que esté disponible
	.daily 13603,13616,13600 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.60,19.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.daily 13592 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.daily 13665 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13847 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestAvailable 13718

step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible
	.daily 13752,13754,13753 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.10,19.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.daily 13755 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.daily 13756 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13854 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestAvailable 13716

step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r. Ella tiene 1 de 3 misiones diarias. Acepta cualquiera que esté disponible.
	.daily 13757,13759,13758 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.34,19.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.daily 13760 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.daily 13761 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13855 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestAvailable 13717

step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r. Ella tiene 1 de 3 misiones diarias disponibles. Acepta la que esté disponible
	.daily 13741,13743,13742 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.64,19.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rolo Tiro Acertado|r y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.daily 13744 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.daily 13745 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13851 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestAvailable 13714

step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r. Tiene 1 de 3 misiones diarias. Acepta cualquiera que esté disponible
	.daily 13746,13748,13747 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.55,19.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.daily 13749 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.daily 13750 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13852 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestAvailable 13715

step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible
	.daily 13783,13785,13784 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.45,23.85
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.daily 13786 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.daily 13787 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13859 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestAvailable 13722

step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible
	.daily 13778,13780,13779 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.53,24.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.daily 13781 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.daily 13782 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13860 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestAvailable 13721

step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible
	.daily 13762,13764,13763 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.46,24.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.daily 13765 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.daily 13767 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13856 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestAvailable 13697

step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r. Tiene 1 de 3 misiones diarias. Acepta cualquiera que esté disponible
	.daily 13773,13775,13774 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.20,24.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.daily 13776 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.daily 13777 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13858 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestAvailable 13720

step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible.
	.daily 13768,13770,13769 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,75.95,24.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.daily 13771 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.daily 13772 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13857 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestAvailable 13719

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el Elekk de la caballeriza de Exodar << Draenei
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas y luego monta el Carnero de Forjaz de establo << Dwarf
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego monta el Mecazancudo de Gnomeregan de establo << Gnome
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego Monta el Corcel de Ventormenta de establo << Human
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu bolsa, luego monta el Sable de la noche darnassiano de establo << NightElf
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas y Monta el Caballo de guerra Renegado de establo << Scourge
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Lobo de Orgrimmar del establo << Orc
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Kodo de Cima del Trueno de establo << Tauren
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Raptor Lanza Negra de establo << Troll
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario, luego monta el Halcón zancudo de Lunargenta de establo << BloodElf
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion << Alliance
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion << Horde
	.goto IcecrownGlacier,76.36,20.51 << Draenei
	.goto IcecrownGlacier,76.25,20.51 << Dwarf
	.goto IcecrownGlacier,76.17,20.49 << Gnome
	.goto IcecrownGlacier,76.08,20.48 << Human
	.goto IcecrownGlacier,76.00,20.42 << NightElf
	.goto IcecrownGlacier,75.56,23.86 << Scourge
	.goto IcecrownGlacier,75.55,24.00 << Orc
	.goto IcecrownGlacier,75.53,24.26 << Tauren
	.goto IcecrownGlacier,75.58,23.76 << Troll
	.goto IcecrownGlacier,75.54,24.14 << BloodElf
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13665,13745,13750,13756,13761,13767,13772,13777,13782,13787
step -- THE GRAND MELEE
	>>Dirígete al Campo de Valiantes de la Alianza. << Alliance
	>>Ve al Tocar de los Valiantes de la Horda << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.31,19.05,10,0 << Alliance
	.goto IcecrownGlacier,75.66,18.72,10,0 << Alliance
	.goto IcecrownGlacier,75.73,18.12,10,0 << Alliance
	.goto IcecrownGlacier,75.08,17.70,10,0 << Alliance
	.goto IcecrownGlacier,74.82,18.39,10,0 << Alliance
	.goto IcecrownGlacier,75.31,19.05,10,0 << Alliance
	.goto IcecrownGlacier,75.66,18.72,10,0 << Alliance
	.goto IcecrownGlacier,75.73,18.12,10,0 << Alliance
	.goto IcecrownGlacier,75.08,17.70,10,0 << Alliance
	.goto IcecrownGlacier,74.82,18.39,10,0 << Alliance
	.goto IcecrownGlacier,75.31,19.05 << Alliance
	.goto IcecrownGlacier,75.48,25.39,10,0 << Horde
	.goto IcecrownGlacier,75.78,26.03,10,0 << Horde
	.goto IcecrownGlacier,75.53,26.69,10,0 << Horde
	.goto IcecrownGlacier,74.99,26.43,10,0 << Horde
	.goto IcecrownGlacier,75.00,25.65,10,0 << Horde
	.goto IcecrownGlacier,75.48,25.39,10,0 << Horde
	.goto IcecrownGlacier,75.78,26.03,10,0 << Horde
	.goto IcecrownGlacier,75.53,26.69,10,0 << Horde
	.goto IcecrownGlacier,74.99,26.43,10,0 << Horde
	.goto IcecrownGlacier,75.00,25.65,10,0 << Horde
	.goto IcecrownGlacier,75.48,25.39 << Horde
	.complete 13665,1 << Human -- Mark of the Valiant (3)
	.complete 13745,1 << Dwarf -- Mark of the Valiant (3)
	.complete 13750,1 << Gnome -- Mark of the Valiant (3)
	.complete 13756,1 << Draenei -- Mark of the Valiant (3)
	.complete 13761,1 << NightElf -- Mark of the Valiant (3)
	.complete 13767,1 << Orc -- Mark of the Valiant (3)
	.complete 13772,1 << Troll -- Mark of the Valiant (3)
	.complete 13777,1 << Tauren -- Mark of the Valiant (3)
	.complete 13782,1 << Scourge -- Mark of the Valiant (3)
	.complete 13787,1 << BloodElf -- Mark of the Valiant (3)
	.isOnQuest 13665,13745,13750,13756,13761,13767,13772,13777,13782,13787
	.skipgossip
	.mob Stormwind Valiant << Alliance
	.mob Ironforge Valiant << Alliance
	.mob Gnomeregan Valiant << Alliance
	.mob Darnassus Valiant << Alliance
	.mob Exodar Valiant << Alliance
	.mob Thunder Bluff Valiant << Horde
	.mob Silvermoon Valiant << Horde
	.mob Sen'jin Valiant << Horde
	.mob Orgrimmar Valiant << Horde
	.mob Undercity Valiant << Horde
step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13592,1 << Human -- Converted Hero slain (10)
	.complete 13744,1 << Dwarf -- Converted Hero slain (10)
	.complete 13749,1 << Gnome -- Converted Hero slain (10)
	.complete 13755,1 << Draenei -- Converted Hero slain (10)
	.complete 13760,1 << NightElf -- Converted Hero slain (10)
	.complete 13765,1 << Orc -- Converted Hero slain (10)
	.complete 13771,1 << Troll -- Converted Hero slain (10)
	.complete 13776,1 << Tauren -- Converted Hero slain (10)
	.complete 13781,1 << Scourge -- Converted Hero slain (10)
	.complete 13786,1 << BloodElf -- Converted Hero slain (10)
	.isOnQuest 13592,13744,13749,13755,13760,13765,13771,13776,13781,13786
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r << Alliance
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu mochila, luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r << Horde
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13847,2 << Human -- Boneguard Scout slain (10)
	.complete 13851,2 << Dwarf -- Boneguard Scout slain (10)
	.complete 13852,2 << Gnome -- Boneguard Scout slain (10)
	.complete 13854,2 << Draenei -- Boneguard Scout slain (10)
	.complete 13855,2 << NightElf -- Boneguard Scout slain (10)
	.complete 13856,2 << Orc -- Boneguard Scout slain (10)
	.complete 13857,2 << Troll -- Boneguard Scout slain (10)
	.complete 13858,2 << Tauren -- Boneguard Scout slain (10)
	.complete 13860,2 << Scourge -- Boneguard Scout slain (10)
	.complete 13859,2 << BloodElf -- Boneguard Scout slain (10)
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13847,1 << Human -- Boneguard Footman slain (15)
	.complete 13847,3 << Human -- Boneguard Lieutenant (3)
	.complete 13851,1 << Dwarf -- Boneguard Footman slain (15)
	.complete 13851,3 << Dwarf -- Boneguard Lieutenant slain (3)
	.complete 13852,1 << Gnome -- Boneguard Footman slain (15)
	.complete 13852,3 << Gnome -- Boneguard Lieutenant slain (3)
	.complete 13854,1 << Draenei -- Boneguard Footman slain (15)
	.complete 13854,3 << Draenei -- Boneguard Lieutenant slain (3)
	.complete 13855,1 << NightElf -- Boneguard Footman slain (15)
	.complete 13855,3 << NightElf -- Boneguard Lieutenant slain (3)
	.complete 13856,1 << Orc -- Boneguard Footman slain (15)
	.complete 13856,3 << Orc -- Boneguard Lieutenant slain (3)
	.complete 13857,1 << Troll -- Boneguard Footman slain (15)
	.complete 13857,3 << Troll -- Boneguard Lieutenant slain (3)
	.complete 13858,1 << Tauren -- Boneguard Footman slain (15)
	.complete 13858,3 << Tauren -- Boneguard Lieutenant slain (3)
	.complete 13860,1 << Scourge -- Boneguard Footman slain (15)
	.complete 13860,3 << Scourge -- Boneguard Lieutenant slain (3)
	.complete 13859,1 << BloodElf -- Boneguard Footman slain (15)
	.complete 13859,3 << BloodElf -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13847,2 << Human -- Boneguard Scout slain (10)
	.complete 13851,2 << Dwarf -- Boneguard Scout slain (10)
	.complete 13852,2 << Gnome -- Boneguard Scout slain (10)
	.complete 13854,2 << Draenei -- Boneguard Scout slain (10)
	.complete 13855,2 << NightElf -- Boneguard Scout slain (10)
	.complete 13856,2 << Orc -- Boneguard Scout slain (10)
	.complete 13857,2 << Troll -- Boneguard Scout slain (10)
	.complete 13858,2 << Tauren -- Boneguard Scout slain (10)
	.complete 13860,2 << Scourge -- Boneguard Scout slain (10)
	.complete 13859,2 << BloodElf -- Boneguard Scout slain (10)
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13600,1 << Human -- Blade of Drak'Mar (1)
	.complete 13742,1 << Dwarf -- Blade of Drak'Mar (1)
	.complete 13747,1 << Gnome -- Blade of Drak'Mar (1)
	.complete 13753,1 << Draenei -- Blade of Drak'Mar (1)
	.complete 13758,1 << NightElf -- Blade of Drak'Mar (1)
	.complete 13763,1 << Orc -- Blade of Drak'Mar (1)
	.complete 13769,1 << Troll -- Blade of Drak'Mar (1)
	.complete 13774,1 << Tauren -- Blade of Drak'Mar (1)
	.complete 13779,1 << Scourge -- Blade of Drak'Mar (1)
	.complete 13784,1 << BloodElf -- Blade of Drak'Mar (1)
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13616,1 << Human -- Winter's Edge (1)
	.complete 13743,1 << Dwarf -- Winter's Edge (1)
	.complete 13748,1 << Gnome -- Winter's Edge (1)
	.complete 13754,1 << Draenei -- Winter's Edge (1)
	.complete 13759,1 << NightElf -- Winter's Edge (1)
	.complete 13764,1 << Orc -- Winter's Edge (1)
	.complete 13770,1 << Troll -- Winter's Edge (1)
	.complete 13775,1 << Tauren -- Winter's Edge (1)
	.complete 13780,1 << Scourge -- Winter's Edge (1)
	.complete 13785,1 << BloodElf -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13603,1 << Human -- Ashwood Brand (1)
	.complete 13741,1 << Dwarf -- Ashwood Brand (1)
	.complete 13746,1 << Gnome -- Ashwood Brand (1)
	.complete 13752,1 << Draenei -- Ashwood Brand (1)
	.complete 13757,1 << NightElf -- Ashwood Brand (1)
	.complete 13762,1 << Orc -- Ashwood Brand (1)
	.complete 13768,1 << Troll -- Ashwood Brand (1)
	.complete 13773,1 << Tauren -- Ashwood Brand (1)
	.complete 13778,1 << Scourge -- Ashwood Brand (1)
	.complete 13783,1 << BloodElf -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Horde
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783,13616,13743,13748,13754,13759,13764,13770,13775,13780,13785,13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.turnin 13603 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13847 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13603 -- A Blade Fit For A Champion
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.turnin 13616 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13847 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13616 -- The Edge Of Winter
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.turnin 13600 >> Entrega un arma digna
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13847 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13600 -- A Worthy Weapon
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.turnin -13592 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.turnin -13665 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13847 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley

step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.turnin 13752 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13854 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13752 -- A Blade Fit For A Champion
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.turnin 13754 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13854 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13754 -- The Edge Of Winter
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.turnin 13753 >> Entrega un arma digna
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13854 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13753 -- A Worthy Weapon
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.turnin -13755 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.turnin -13756 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13854 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Saandos
	.target Ranii

step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r, |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.turnin 13757 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13855 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13757 -- A Blade Fit For A Champion
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r, |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.turnin 13759 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13855 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13759 -- The Edge Of Winter
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r, |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.turnin 13758 >> Entrega un arma digna
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13855 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13758 -- A Worthy Weapon
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.turnin -13760 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.turnin -13761 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13855 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Illestria Bladesinger
	.target Airae Starseeker

step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r, |cRXP_FRIENDLY_Rolo Tiro Acertado|r y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.turnin 13741 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13851 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13741 -- A Blade Fit For A Champion
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r, |cRXP_FRIENDLY_Rolo Tiro Acertado|r y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.turnin 13743 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13851 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13743 -- The Edge Of Winter
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r, |cRXP_FRIENDLY_Rolo Tiro Acertado|r y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.turnin 13742 >> Entrega un arma digna
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13851 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13742 -- A Worthy Weapon
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rollo|r Sureshot y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.turnin -13744 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.turnin -13745 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13851 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Rollo Sureshot
	.target Clara Tumblebrew

step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r, |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.turnin 13746 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13852 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13746 -- A Blade Fit For A Champion
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r, |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.turnin 13748 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13852 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13748 -- The Edge Of Winter
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r, |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.turnin 13747 >> Entrega un arma digna
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13852 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13747 -- A Worthy Weapon
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.turnin -13749 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.turnin -13750 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13852 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Tickin Gearspanner
	.target Flickin Gearspanner

step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.turnin 13768 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13857 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13768 -- A Blade Fit For A Champion
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.turnin 13770 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13857 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13770 -- The Edge Of Winter
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.turnin 13769 >> Entrega un arma digna
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13857 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13769 -- A Worthy Weapon
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.turnin -13771 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.turnin -13772 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13857 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Shadow Hunter Mezil-kree
	.target Gahju

step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r, |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.turnin 13773 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13858 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13773 -- A Blade Fit For A Champion
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r, |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.turnin 13775 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13858 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13775 -- The Edge Of Winter
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r, |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.turnin 13774 >> Entrega un arma digna
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13858 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13774 -- A Worthy Weapon
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.turnin -13776 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.turnin -13777 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13858 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Dern Ragetotem
	.target Anka Clawhoof

step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r, |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.turnin 13762 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13856 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13762 -- A Blade Fit For A Champion
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r, |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.turnin 13764 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13856 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13764 -- The Edge Of Winter
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r, |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.turnin 13763 >> Entrega un arma digna
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13856 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13763 -- A Worthy Weapon
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.turnin -13765 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.turnin -13767 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13856 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Akinos
	.target Morah Worgsister

step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.turnin 13778 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13860 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13778 -- A Blade Fit For A Champion
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.turnin 13780 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13860 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13780 -- The Edge Of Winter
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.turnin 13779 >> Entrega un arma digna
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13860 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13779 -- A Worthy Weapon
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.turnin -13781 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.turnin -13782 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13860 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Sarah Chalke
	.target Handler Dretch

step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r, |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13783 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13859 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13783 -- A Blade Fit For A Champion
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r, |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13785 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13859 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13785 -- The Edge Of Winter
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r, |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13784 >> Entrega un arma digna
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13859 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13784 -- A Worthy Weapon
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin -13786 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.turnin -13787 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13859 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Kethiel Sunlance
	.target Aneera Thuron

step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.complete 13716,1 >> Entrega la misión Carga del Valeroso << Draenei -- Valiant's Seal (25)
	.complete 13714,1 >> Entrega la misión Carga del Valeroso << Dwarf -- Valiant's Seal (25)
	.complete 13715,1 >> Entrega la misión Carga del Valeroso << Gnome -- Valiant's Seal (25)
	.complete 13718,1 >> Entrega la misión Carga del Valeroso << Human -- Valiant's Seal (25)
	.complete 13717,1 >> Entrega la misión Carga del Valeroso << NightElf -- Valiant's Seal (25)
	.complete 13721,1 >> Entrega la misión Carga del Valeroso << Scourge -- Valiant's Seal (25)
	.complete 13697,1 >> Entrega la misión Carga del Valeroso << Orc -- Valiant's Seal (25)
	.complete 13720,1 >> Entrega la misión Carga del Valeroso << Tauren -- Valiant's Seal (25)
	.complete 13719,1 >> Entrega la misión Carga del Valeroso << Troll -- Valiant's Seal (25)
	.complete 13722,1 >> Entrega la misión Carga del Valeroso << BloodElf -- Valiant's Seal (25)
	.turnin 13716 >> Entrega la misión Carga del Valeroso << Draenei
	.turnin 13714 >> Entrega la misión Carga del Valeroso << Dwarf
	.turnin 13715 >> Entrega la misión Carga del Valeroso << Gnome
	.turnin 13718 >> Entrega la misión Carga del Valeroso << Human
	.turnin 13717 >> Entrega la misión Carga del Valeroso << NightElf
	.turnin 13721 >> Entrega la misión Carga del Valeroso << Scourge
	.turnin 13697 >> Entrega la misión Carga del Valeroso << Orc
	.turnin 13720 >> Entrega la misión Carga del Valeroso << Tauren
	.turnin 13719 >> Entrega la misión Carga del Valeroso << Troll
	.turnin 13722 >> Entrega la misión Carga del Valeroso << BloodElf
	.accept 13724 >> Acepta la misión El desafío del Valeroso << Draenei
	.accept	13713 >> Acepta la misión El desafío del Valeroso << Dwarf
	.accept 13723 >> Acepta la misión El desafío del Valeroso << Gnome
	.accept	13699 >> Acepta la misión El desafío del Valeroso << Human
	.accept 13725 >> Acepta la misión El desafío del Valeroso << NightElf
	.accept	13729 >> Acepta la misión El desafío del Valeroso << Scourge
	.accept 13726 >> Acepta la misión El desafío del Valeroso << Orc
	.accept 13728 >> Acepta la misión El desafío del Valeroso << Tauren
	.accept 13727 >> Acepta la misión El desafío del Valeroso << Troll
	.accept 13731 >> Acepta la misión El desafío del Valeroso << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el Elekk de la caballeriza de Exodar << Draenei
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas y luego monta el Carnero de Forjaz de establo << Dwarf
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego monta el Mecazancudo de Gnomeregan de establo << Gnome
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego Monta el Corcel de Ventormenta de establo << Human
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu bolsa, luego monta el Sable de la noche darnassiano de establo << NightElf
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas y Monta el Caballo de guerra Renegado de establo << Scourge
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Lobo de Orgrimmar del establo << Orc
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Kodo de Cima del Trueno de establo << Tauren
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Raptor Lanza Negra de establo << Troll
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario, luego monta el Halcón zancudo de Lunargenta de establo << BloodElf
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion << Alliance
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion << Horde
	.goto IcecrownGlacier,76.36,20.51 << Draenei
	.goto IcecrownGlacier,76.25,20.51 << Dwarf
	.goto IcecrownGlacier,76.17,20.49 << Gnome
	.goto IcecrownGlacier,76.08,20.48 << Human
	.goto IcecrownGlacier,76.00,20.42 << NightElf
	.goto IcecrownGlacier,75.56,23.86 << Scourge
	.goto IcecrownGlacier,75.55,24.00 << Orc
	.goto IcecrownGlacier,75.53,24.26 << Tauren
	.goto IcecrownGlacier,75.58,23.76 << Troll
	.goto IcecrownGlacier,75.54,24.14 << BloodElf
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13724,13713,13723,13699,13725,13729,13726,13728,13727,13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13724,1 << Draenei -- Argent Champion defeated (1)
	.complete 13713,1 << Dwarf -- Argent Champion defeated (1)
	.complete 13723,1 << Gnome -- Argent Champion defeated (1)
	.complete 13699,1 << Human -- Argent Champion defeated (1)
	.complete 13725,1 << NightElf -- Argent Champion defeated (1)
	.complete 13729,1 << Scourge -- Argent Champion defeated (1)
	.complete 13726,1 << Orc -- Argent Champion defeated (1)
	.complete 13728,1 << Tauren -- Argent Champion defeated (1)
	.complete 13727,1 << Troll -- Argent Champion defeated (1)
	.complete 13731,1 << BloodElf -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13724,13713,13723,13699,13725,13729,13726,13728,13727,13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.turnin 13724 >> Entrega la misión El desafío del Valeroso << Draenei
	.turnin	13713 >> Entrega la misión El desafío del Valeroso << Dwarf
	.turnin 13723 >> Entrega la misión El desafío del Valeroso << Gnome
	.turnin	13699 >> Entrega la misión El desafío del Valeroso << Human
	.turnin 13725 >> Entrega la misión El desafío del Valeroso << NightElf
	.turnin	13729 >> Entrega la misión El desafío del Valeroso << Scourge
	.turnin 13726 >> Entrega la misión El desafío del Valeroso << Orc
	.turnin 13728 >> Entrega la misión El desafío del Valeroso << Tauren
	.turnin 13727 >> Entrega la misión El desafío del Valeroso << Troll
	.turnin 13731 >> Entrega la misión El desafío del Valeroso << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.accept 13734 >> Acepta la misión Se alza un Campeón << Draenei
	.accept	13732 >> Acepta la misión Se alza un Campeón << Dwarf
	.accept 13733 >> Acepta la misión Se alza un Campeón << Gnome
	.accept	13702 >> Acepta la misión Se alza un Campeón << Human
	.accept 13735 >> Acepta la misión Se alza un Campeón << NightElf
	.accept	13739 >> Acepta la misión Se alza un Campeón << Scourge
	.accept 13736 >> Acepta la misión Se alza un Campeón << Orc
	.accept 13738 >> Acepta la misión Se alza un Campeón << Tauren
	.accept 13737 >> Acepta la misión Se alza un Campeón << Troll
	.accept 13740 >> Acepta la misión Se alza un Campeón << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Justicar Mariel Corazón Veraz|r
	.goto IcecrownGlacier,69.66,22.86
	.turnin 13734 >> Entrega la misión Se alza un Campeón << Draenei
	.turnin	13732 >> Entrega la misión Se alza un Campeón << Dwarf
	.turnin 13733 >> Entrega la misión Se alza un Campeón << Gnome
	.turnin	13702 >> Entrega la misión Se alza un Campeón << Human
	.turnin 13735 >> Entrega la misión Se alza un Campeón << NightElf
	.turnin	13739 >> Entrega la misión Se alza un Campeón << Scourge
	.turnin 13736 >> Entrega la misión Se alza un Campeón << Orc
	.turnin 13738 >> Entrega la misión Se alza un Campeón << Tauren
	.turnin 13737 >> Entrega la misión Se alza un Campeón << Troll
	.turnin 13740 >> Entrega la misión Se alza un Campeón << BloodElf
	.target Justicar Mariel Trueheart
step
	.goto IcecrownGlacier,76.33,19.48 << Alliance
	.goto IcecrownGlacier,76.17,24.21 << Horde
	+|cRXP_WARN_¡Ahora eres un |T255137:0|tCampeón del Exodar!|r << Draenei
	+|cRXP_WARN_¡Ahora eres un |T255139:0|tCampeón de Gnomeregan!|r << Gnome
	+|T255138:0|t|cRXP_WARN_¡Ahora eres un Campeón de Ironforge!|r << Dwarf
	+|T255141:0|t|cRXP_WARN_¡Ahora eres un Campeón de Darnassus!|r << NightElf
	+|cRXP_WARN_Ahora eres un |T255140:0|tCampeón de Ventormenta!|r << Human
	+|cRXP_WARN_Ahora eres un |T255142:0|tCampeón de Orgrimmar!|r << Orc
	+|cRXP_WARN_Ahora eres un |T255145:0|tCampeón de Sen'jin!|r << Troll
	+|cRXP_WARN_Ahora eres un |T255136:0|tCampeón de Ciudad de Lunargenta!|r << BloodElf
	+|cRXP_WARN_Ahora eres un |T255143:0|tCampeón de Entrañas!|r << Scourge
	+|cRXP_WARN_¡Ahora eres un |T255144:0|tCampeón de Cima del Trueno!|r << Tauren
	>>|cRXP_LOOT_¡Ahora has terminado con esta introducción Convertirse en un Campeón!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13724 << Draenei
	.isQuestTurnedIn 13713 << Dwarf
	.isQuestTurnedIn 13723 << Gnome
	.isQuestTurnedIn 13699 << Human
	.isQuestTurnedIn 13725 << NightElf
	.isQuestTurnedIn 13729 << Scourge
	.isQuestTurnedIn 13726 << Orc
	.isQuestTurnedIn 13728 << Tauren
	.isQuestTurnedIn 13727 << Troll
	.isQuestTurnedIn 13731 << BloodElf
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name B_2_AT_Exodar
#displayname |cRXP_FRIENDLY_2.0|r - Campeón del Exodar
<< Alliance !Draenei

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r
	.goto IcecrownGlacier,76.10,19.10
	.accept 13705 >> Acepta la misión Un Valeroso de El Exodar
	.turnin 13705 >> Entrega la misión Valeroso de El Exodar
	.target Colosos
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible
	.accept 13716 >> Acepta la misión La carga del Valeroso
	.daily 13752,13754,13753 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.10,19.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.daily 13755 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.daily 13756 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13854 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestAvailable 13716
step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el Elekk de la caballeriza de Exodar
	.goto IcecrownGlacier,76.36,20.51
	.use 46069
	.target Stabled Exodar Elekk
	.isOnQuest 13756
step -- THE GRAND MELEE
	>>Dirígete al Campo de Valiantes de la Alianza. << Alliance
	>>Ve al Tocar de los Valiantes de la Horda << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13756,1 -- Mark of the Valiant (3)
	.isOnQuest 13756
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13755,1 -- Converted Hero slain (10)
	.isOnQuest 13755
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r << Alliance
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13854
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13854,2 -- Boneguard Scout slain (10)
	.isOnQuest 13854
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13854,1 -- Boneguard Footman slain (15)
	.complete 13854,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13854
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13854,2 -- Boneguard Scout slain (10)
	.isOnQuest 13854
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13753
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13753
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13753,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13753

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13754
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13754
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13754
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13754,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13754

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13752
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13752,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13752
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13752,13754,13753,13755,13756,13854
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.turnin 13752 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13854 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13752 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.turnin 13754 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13854 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13754 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r, |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.turnin 13753 >> Entrega un arma digna
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13854 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13753 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Saandos|r y |cRXP_FRIENDLY_Ranii|r
	.turnin -13755 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.08,19.19
	.turnin -13756 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13854 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.15,19.08
	.target Saandos
	.target Ranii
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r
	.goto IcecrownGlacier,76.10,19.10
	.complete 13716,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13716 >> Entrega la misión Carga del Valeroso
	.accept 13724 >> Acepta la misión Desafío del Valeroso
	.target Colosos
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el Elekk de la caballeriza de Exodar
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion
	.goto IcecrownGlacier,76.36,20.51
	.use 46069
	.target Stabled Exodar Elekk
	.isOnQuest 13724
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13724,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13724
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Colosos|r
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13724 >> Entrega la misión El desafío del Valeroso
	.target Colosos
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_¡Ahora eres un |T255137:0|tCampeón del Exodar!|r
	>>|cRXP_LOOT_¡Ya has terminado con la guía del Campeón de El Exodar!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13724
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name C_2_AT_TBC Entidades
#displayname |cRXP_FRIENDLY_2.0|r - Campeón de Ventormenta
<< Alliance !Human

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r
	.goto IcecrownGlacier,76.60,19.12
	.accept 13593 >> Acepta la misión Valeroso de Ventormenta
	.turnin 13593 >> Entrega la misión Valeroso de Ventormenta
	.target Marshal Jacob Alerius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r. Tiene 1 de 3 misiones diarias. Acepta cualquiera que esté disponible
	.accept 13718 >> Acepta la misión La carga del Valeroso
	.daily 13603,13616,13600 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.60,19.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.daily 13592 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.daily 13665 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13847 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestAvailable 13718

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego Monta el Corcel de Ventormenta de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion
	.goto IcecrownGlacier,76.08,20.48
	.use 46069
	.target Stabled Stormwind Steed
	.isOnQuest 13665
step -- THE GRAND MELEE
	>>Dirígete al Campo de Valiantes de la Alianza. << Alliance
	>>Ve al Tocar de los Valiantes de la Horda << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13665,1 -- Mark of the Valiant (3)
	.isOnQuest 13665
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13592,1 -- Converted Hero slain (10)
	.isOnQuest 13592
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r << Alliance
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13847
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13847,2 -- Boneguard Scout slain (10)
	.isOnQuest 13847
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13847,1 -- Boneguard Footman slain (15)
	.complete 13847,3 -- Boneguard Lieutenant (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13847
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13847,2 -- Boneguard Scout slain (10)
	.isOnQuest 13847
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13600
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13600
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13600,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13600

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13616
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13616
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13616
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13616,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13616

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13603
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13603,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13603
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13603,13616,13600,13592,13665,13847
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.turnin 13603 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13847 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13603 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.turnin 13616 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13847 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13616 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.turnin 13600 >> Entrega un arma digna
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13847 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13600 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sir Marcus Barlowe|r y |cRXP_FRIENDLY_Capitán Joseph Holley|r
	.turnin -13592 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.53,19.08
	.turnin -13665 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13847 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.62,19.21
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
step
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r
	.complete 13718,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13718 >> Entrega la misión Carga del Valeroso
	.accept	13699 >> Acepta la misión El desafío del Valeroso
	.target Marshal Jacob Alerius
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego Monta el Corcel de Ventormenta de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion
	.goto IcecrownGlacier,76.08,20.48
	.use 46069
	.target Stabled Stormwind Steed
	.isOnQuest 13699
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13699,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13699
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mariscal Jacob Alerius|r
	.goto IcecrownGlacier,76.60,19.12
	.turnin	13699 >> Entrega la misión El desafío del Valeroso
	.target Marshal Jacob Alerius
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_Ahora eres un |T255140:0|tCampeón de Ventormenta!|r
	>>|cRXP_LOOT_¡Ya terminaste con la guía de Campeón de Ventormenta!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13699
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name D_2_AT_Ironforge
#displayname |cRXP_FRIENDLY_2.0|r - Campeón de Forjaz
<< Alliance !Dwarf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r
	.goto IcecrownGlacier,76.64,19.49
	.accept 13703 >> Acepta la misión Valeroso de Forjaz
	.turnin 13703 >> Entrega la misión Valeroso de Forjaz
	.target Lana Stouthammer
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r. Ella tiene 1 de 3 misiones diarias disponibles. Acepta la que esté disponible
	.accept 13714 >> Acepta la misión La carga del Valeroso
	.daily 13741,13743,13742 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.64,19.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rolo Tiro Acertado|r y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.daily 13744 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.daily 13745 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13851 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestAvailable 13714


step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas y luego monta el Carnero de Forjaz de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion
	.goto IcecrownGlacier,76.25,20.51
	.use 46069
	.target Stabled Ironforge Ram
	.isOnQuest 13745
step -- THE GRAND MELEE
	>>Dirígete al Campamento de Valiantes de la Alianza
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13745,1 -- Mark of the Valiant (3)
	.isOnQuest 13745
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant

step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13744,1 -- Converted Hero slain (10)
	.isOnQuest 13744
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13851
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13851,2 -- Boneguard Scout slain (10)
	.isOnQuest 13851
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13851,1 -- Boneguard Footman slain (15)
	.complete 13851,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13851
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13851,2 -- Boneguard Scout slain (10)
	.isOnQuest 13851
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13742
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13742
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13742,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13742

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13743
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13743
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13743
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13743,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13743

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13741
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13741,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13741
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Horde
	.isOnQuest 13741,13743,13742,13744,13745,13851
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r, |cRXP_FRIENDLY_Rolo Tiro Acertado|r y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.turnin 13741 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13851 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13741 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r, |cRXP_FRIENDLY_Rolo Tiro Acertado|r y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.turnin 13743 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13851 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13743 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r, |cRXP_FRIENDLY_Rolo Tiro Acertado|r y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.turnin 13742 >> Entrega un arma digna
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13851 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13742 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rollo|r Sureshot y |cRXP_FRIENDLY_Clara Vueltabirra|r
	.turnin -13744 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.66,19.41
	.turnin -13745 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13851 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.64,19.57
	.target Rollo Sureshot
	.target Clara Tumblebrew
step
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r
	.goto IcecrownGlacier,76.64,19.49
	.complete 13714,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13714 >> Entrega la misión Carga del Valeroso
	.accept	13713 >> Acepta la misión El desafío del Valeroso
	.target Lana Stouthammer
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas y luego monta el Carnero de Forjaz de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion
	.goto IcecrownGlacier,76.25,20.51
	.use 46069
	.target Stabled Ironforge Ram
	.isOnQuest 13713
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13713,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13713
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lana Martillotenaz|r
	.goto IcecrownGlacier,76.64,19.49
	.turnin	13713 >> Entrega la misión El desafío del Valeroso
	.target Lana Stouthammer
step
	.goto IcecrownGlacier,76.33,19.48
	+|T255138:0|t|cRXP_WARN_¡Ahora eres un Campeón de Ironforge!|r
	>>|cRXP_LOOT_¡Ahora has terminado con la Guía del Campeón de Forjaz!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13713
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name E_2_AT_Gnomeregan
#displayname |cRXP_FRIENDLY_2.0|r - Campeón de Gnomeregan
<< Alliance !Gnome

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r
	.goto IcecrownGlacier,76.55,19.82
	.accept 13704 >> Acepta la misión Valeroso de Gnomeregan
	.turnin 13704 >> Entrega la misión Valeroso de Gnomeregan
	.target Ambrose Boltspark
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r. Tiene 1 de 3 misiones diarias. Acepta cualquiera que esté disponible
	.accept 13715 >> Acepta la misión La carga del Valeroso
	.daily 13746,13748,13747 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.55,19.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.daily 13749 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.daily 13750 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13852 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestAvailable 13715

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego monta el Mecazancudo de Gnomeregan de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion
	.goto IcecrownGlacier,76.17,20.49
	.use 46069
	.target Stabled Gnomeregan Mechanostrider
	.isOnQuest 13750
step -- THE GRAND MELEE
	>>Ve al Tocar de los Valiantes de la Alianza
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13750,1 -- Mark of the Valiant (3)
	.isOnQuest 13750
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13749,1 -- Converted Hero slain (10)
	.isOnQuest 13749
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13852
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13852,2 -- Boneguard Scout slain (10)
	.isOnQuest 13852
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13852,1 -- Boneguard Footman slain (15)
	.complete 13852,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13852
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13852,2 -- Boneguard Scout slain (10)
	.isOnQuest 13852
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13747
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13747
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13747,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13747

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13748
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13748
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13748
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13748,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13748

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13746
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13746,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13746
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13746,13748,13747,13749,13750,13852
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r, |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.turnin 13746 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13852 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13746 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r, |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.turnin 13748 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13852 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13748 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r, |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.turnin 13747 >> Entrega un arma digna
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13852 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13747 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tickin Trazagranaje|r y |cRXP_FRIENDLY_Flickin Trazagranaje|r
	.turnin -13749 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.60,19.79
	.turnin -13750 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13852 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,19.89
	.target Tickin Gearspanner
	.target Flickin Gearspanner
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r
	.goto IcecrownGlacier,76.55,19.82
	.complete 13715,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13715 >> Entrega la misión Carga del Valeroso
	.accept 13723 >> Acepta la misión El desafío del Valeroso
	.target Ambrose Boltspark
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego monta el Mecazancudo de Gnomeregan de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion
	.goto IcecrownGlacier,76.17,20.49
	.use 46069
	.target Stabled Gnomeregan Mechanostrider
	.isOnQuest 13723
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13723,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13723
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ambrose Chisparrayo|r
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13723 >> Entrega la misión El desafío del Valeroso
	.target Ambrose Boltspark
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_¡Ahora eres un |T255139:0|tCampeón de Gnomeregan!|r
	>>|cRXP_LOOT_¡Ya has terminado con el Campeón of Gnomeregan!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13723
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name F_2_AT_Darnassus
#displayname |cRXP_FRIENDLY_2.0|r - Campeón de Darnassus
<< Alliance !NightElf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r
	.goto IcecrownGlacier,76.34,19.03
	.accept 13706 >> Acepta la misión Valorous of Darnassus
	.turnin 13706 >> Entrega la misión Valorous of Darnassus
	.target Jaelyne Evensong
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r. Ella tiene 1 de 3 misiones diarias. Acepta cualquiera que esté disponible.
	.accept 13717 >> Acepta la misión La carga del Valeroso
	.daily 13757,13759,13758 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.34,19.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.daily 13760 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.daily 13761 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13855 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestAvailable 13717


step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu bolsa, luego monta el Sable de la noche darnassiano de establo
	.goto IcecrownGlacier,76.00,20.42
	.use 46069
	.target Stabled Darnassian Nightsaber
	.isOnQuest 13761
step -- THE GRAND MELEE
	>>Dirígete al Campo de Valiantes de la Alianza.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13761,1 -- Mark of the Valiant (3)
	.isOnQuest 13761
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13760,1 -- Converted Hero slain (10)
	.isOnQuest 13760
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13855
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13855,2 -- Boneguard Scout slain (10)
	.isOnQuest 13855
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13855,1 -- Boneguard Footman slain (15)
	.complete 13855,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13855
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13855,2 -- Boneguard Scout slain (10)
	.isOnQuest 13855
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13758
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13758
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13758,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13758

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13759
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13759
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13759
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13759,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13759

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13757
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13757,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13757
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13757,13759,13758,13760,13761,13855
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r, |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.turnin 13757 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13855 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13757 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r, |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.turnin 13759 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13855 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13759 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r, |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.turnin 13758 >> Entrega un arma digna
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13855 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13758 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illestria Rugefilo|r y |cRXP_FRIENDLY_Airae Buscaestelar|r
	.turnin -13760 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.29,18.99
	.turnin -13761 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13855 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,19.00
	.target Illestria Bladesinger
	.target Airae Starseeker
step
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r
	.goto IcecrownGlacier,76.34,19.03
	.complete 13717,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13717 >> Entrega la misión Carga del Valeroso
	.accept 13725 >> Acepta la misión El desafío del Valeroso
	.target Jaelyne Evensong
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu bolsa, luego monta el Sable de la noche darnassiano de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r puedes recoger uno más en el Pavilion
	.goto IcecrownGlacier,76.00,20.42
	.use 46069
	.target Stabled Darnassian Nightsaber
	.isOnQuest 13725
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13725,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13725
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jaelyne Unicanto|r
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13725 >> Entrega la misión El desafío del Valeroso
	.target Jaelyne Evensong
step
	.goto IcecrownGlacier,76.33,19.48
	+|T255141:0|t|cRXP_WARN_¡Ahora eres un Campeón de Darnassus!|r
	>>|cRXP_LOOT_¡Ya terminaste con la Guía del Campeón de Darnassus!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13725
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name B_2_AT_Orgrimmar
#displayname |cRXP_FRIENDLY_2.0|r - Campeón de Orgrimmar
<< Horde !Orc


step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r
	.goto IcecrownGlacier,76.46,24.60
	.accept 13707 >> Acepta la misión Valeroso de Orgrimmar
	.turnin 13707 >> Entrega la misión Valiente de Orgrimmar
	.target Mokra the Skullcrusher
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible
	.accept 13697 >> Acepta la misión La carga del Valeroso
	.daily 13762,13764,13763 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.46,24.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.daily 13765 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.daily 13767 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13856 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestAvailable 13697
step
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Lobo de Orgrimmar del establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion
	.goto IcecrownGlacier,75.55,24.00
	.use 46070
	.target Stabled Orgrimmar Wolf
	.isOnQuest 13767
step
	>>Ve al Tocar de los Valiantes de la Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13767,1 -- Mark of the Valiant (3)
	.isOnQuest 13767
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13765,1 -- Converted Hero slain (10)
	.isOnQuest 13765
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu mochila, luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13856
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13856,2 -- Boneguard Scout slain (10)
	.isOnQuest 13856
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13856,1 -- Boneguard Footman slain (15)
	.complete 13856,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13856
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13856,2 -- Boneguard Scout slain (10)
	.isOnQuest 13856
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13763
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13763
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13763,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13763

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13764
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13764
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13764
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13764,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13764

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13762
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13762,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13762
step
	.goto IcecrownGlacier,76.27,24.38,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13762,13764,13763,13765,13767,13856
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r, |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.turnin 13762 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13856 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13762 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r, |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.turnin 13764 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13856 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13764 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r, |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.turnin 13763 >> Entrega un arma digna
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13856 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13763 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akinos|r y |cRXP_FRIENDLY_Morah Hermana de Huargos|r
	.turnin -13765 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.50,24.48
	.turnin -13767 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13856 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.40,24.59
	.target Akinos
	.target Morah Worgsister
step
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r
	.goto IcecrownGlacier,76.46,24.60
	.complete 13697,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13697 >> Entrega la misión Carga del Valeroso
	.accept 13726 >> Acepta la misión El desafío del Valeroso
	.target Mokra the Skullcrusher
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Lobo de Orgrimmar del establo
	.goto IcecrownGlacier,75.55,24.00
	.use 46070
	.target Stabled Orgrimmar Wolf
	.isOnQuest 13726
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13726,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13726
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13726 >> Entrega la misión El desafío del Valeroso
	.target Mokra the Skullcrusher
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_Ahora eres un |T255142:0|tCampeón de Orgrimmar!|r
	>>|cRXP_LOOT_Ya terminaste con la Guía del Campeón de Orgrimmar!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13726
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name C_2_AT_Sen'jin
#displayname |cRXP_FRIENDLY_2.0|r - Campeón de Sen'jin
<< Horde !Troll

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.accept 13708 >> Acepta la misión Valeroso de Sen'jin
	.turnin 13708 >> Entrega la misión Valeroso de Sen'jin
	.target Zul'tore
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible.
	.accept 13719 >> Acepta la misión La carga del Valeroso
	.daily 13768,13770,13769 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,75.95,24.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.daily 13771 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.daily 13772 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13857 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestAvailable 13719

step
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Raptor Lanza Negra de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion
	.goto IcecrownGlacier,75.58,23.76
	.use 46070
	.target Stabled Darkspear Raptor
	.isOnQuest 13772
step
	>>Ve al Tocar de los Valiantes de la Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13772,1 -- Mark of the Valiant (3)
	.isOnQuest 13772
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13771,1 -- Converted Hero slain (10)
	.isOnQuest 13771
	.mob Converted Hero

step
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu mochila, luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13857
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13857,2 -- Boneguard Scout slain (10)
	.isOnQuest 13857
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13857,1 -- Boneguard Footman slain (15)
	.complete 13857,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13857
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13857,2 -- Boneguard Scout slain (10)
	.isOnQuest 13857
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13769
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13769
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13769,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13769

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13770
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13770
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13770
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13770,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13770

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13768
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13768,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13768
step
	.goto IcecrownGlacier,76.27,24.38,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13768,13770,13769,13771,13772,13857
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.turnin 13768 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13857 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13768 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.turnin 13770 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13857 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13770 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.turnin 13769 >> Entrega un arma digna
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13857 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13769 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cazador de las Sombras Mezil-kree|r y |cRXP_FRIENDLY_Gahju|r
	.turnin -13771 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.04,24.59
	.turnin -13772 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13857 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,75.93,24.41
	.target Shadow Hunter Mezil-kree
	.target Gahju
step
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.complete 13719,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13719 >> Entrega la misión Carga del Valeroso
	.accept 13727 >> Acepta la misión El desafío del Valeroso
	.target Zul'tore
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Raptor Lanza Negra de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion
	.goto IcecrownGlacier,75.58,23.76
	.use 46070
	.target Stabled Darkspear Raptor
	.isOnQuest 13727
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13727,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13727
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13727 >> Entrega la misión El desafío del Valeroso
	.target Zul'tore
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_Ahora eres un |T255145:0|tCampeón de Sen'jin!|r
	>>|cRXP_LOOT_You are now finished with the Campeón de Sen'jin Guiar!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13727
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name D_2_AT_Cima del Trueno
#displayname |cRXP_FRIENDLY_2.0|r - Campeón de Cima del Trueno
<< Horde !Tauren

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r
	.goto IcecrownGlacier,76.20,24.63
	.accept 13709 >> Acepta la misión Valeroso de Cima del Trueno
	.turnin 13709 >> Entrega la misión Valeroso de Cima del Trueno
	.target Runok Wildmane
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r. Tiene 1 de 3 misiones diarias. Acepta cualquiera que esté disponible
	.accept 13720 >> Acepta la misión La carga del Valeroso
	.daily 13773,13775,13774 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.20,24.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.daily 13776 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.daily 13777 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13858 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestAvailable 13720

step
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Kodo de Cima del Trueno de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion
	.goto IcecrownGlacier,75.53,24.26
	.use 46070
	.target Stabled Thunder Bluff Kodo
	.isOnQuest 13777
step
	>>Ve al Tocar de los Valiantes de la Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13777,1 -- Mark of the Valiant (3)
	.isOnQuest 13777
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant

step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13776,1 -- Converted Hero slain (10)
	.isOnQuest 13776
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu mochila, luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13858
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13858,2 -- Boneguard Scout slain (10)
	.isOnQuest 13858
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13858,1 -- Boneguard Footman slain (15)
	.complete 13858,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13858
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13858,2 -- Boneguard Scout slain (10)
	.isOnQuest 13858
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13774
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13774
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13774,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13774

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13775
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13775
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13775
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13775,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13775

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13773
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13773,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13773
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Horde
	.isOnQuest 13773,13775,13774,13776,13777,13858
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r, |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.turnin 13773 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13858 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13773 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r, |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.turnin 13775 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13858 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13775 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r, |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.turnin 13774 >> Entrega un arma digna
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13858 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13774 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dern Tótem de Ira|r y |cRXP_FRIENDLY_Anka Garrapezuña|r
	.turnin -13776 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.26,24.66
	.turnin -13777 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13858 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.14,24.64
	.target Dern Ragetotem
	.target Anka Clawhoof
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r
	.goto IcecrownGlacier,76.20,24.63
	.complete 13720,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13720 >> Entrega la misión Carga del Valeroso
	.accept 13728 >> Acepta la misión Desafío del Valeroso
	.target Runok Wildmane
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Kodo de Cima del Trueno de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion
	.goto IcecrownGlacier,75.53,24.26
	.use 46070
	.target Stabled Thunder Bluff Kodo
	.isOnQuest 13728
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13728,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13728
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Runok Ferocrín|r
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13728 >> Entrega la misión El desafío del Valeroso
	.target Runok Wildmane
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_¡Ahora eres un |T255144:0|tCampeón de Cima del Trueno!|r
	>>|cRXP_LOOT_You are now finished with the Campeón de Cima del Trueno Guiar!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13728
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name E_2_AT_Entrañas
#displayname |cRXP_FRIENDLY_2.0|r - Campeón de Entrañas
<< Horde !Scourge

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r
	.goto IcecrownGlacier,76.53,24.21
	.accept 13710 >> Acepta la misión Valeroso de Entrañas
	.turnin 13710 >> Entrega la misión Valeroso de Entrañas
	.target Deathstalker Visceri
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible
	.accept 13721 >> Acepta la misión La carga del Valeroso
	.daily 13778,13780,13779 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.53,24.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.daily 13781 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.daily 13782 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13860 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestAvailable 13721
step
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas y Monta el Caballo de guerra Renegado de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion
	.goto IcecrownGlacier,75.56,23.86
	.use 46070
	.target Stabled Forsaken Warhorse
	.isOnQuest 13782
step
	>>Ve al Tocar de los Valiantes de la Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13782,1 -- Mark of the Valiant (3)
	.isOnQuest 13782
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13781,1 -- Converted Hero slain (10)
	.isOnQuest 13781
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu mochila, luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13860
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13860,2 -- Boneguard Scout slain (10)
	.isOnQuest 13860
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13860,1 -- Boneguard Footman slain (15)
	.complete 13860,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13860
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13860,2 -- Boneguard Scout slain (10)
	.isOnQuest 13860
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13779
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13779
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13779,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13779

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13780
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13780
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13780
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13780,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13780

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13778
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13778,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13778
step
	.goto IcecrownGlacier,76.46,19.41,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << Horde
	.isOnQuest 13778,13780,13779,13781,13782,13860
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.turnin 13778 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13860 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13778 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.turnin 13780 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13860 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13780 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r, |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.turnin 13779 >> Entrega un arma digna
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13860 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13779 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sarah Chalke|r y |cRXP_FRIENDLY_Cuidador Dretch|r
	.turnin -13781 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.56,24.11
	.turnin -13782 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13860 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.55,24.33
	.target Sarah Chalke
	.target Handler Dretch
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r
	.goto IcecrownGlacier,76.53,24.21
	.complete 13721,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13721 >> Entrega la misión Carga del Valeroso
	.accept	13729 >> Acepta la misión Desafío del Valeroso
	.target Deathstalker Visceri
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas y Monta el Caballo de guerra Renegado de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion
	.goto IcecrownGlacier,75.56,23.86
	.use 46070
	.target Stabled Forsaken Warhorse
	.isOnQuest 13729
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13729,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13729
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mortacechador Visceri|r
	.goto IcecrownGlacier,76.53,24.21
	.turnin	13729 >> Entrega la misión El desafío del Valeroso
	.target Deathstalker Visceri
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_Ahora eres un |T255143:0|tCampeón de Entrañas!|r
	>>|cRXP_LOOT_¡Ya terminaste con la Campeón de Entrañas Guiar!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13729
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name F_2_AT_Silvermoon
#displayname |cRXP_FRIENDLY_2.0|r - Campeón de Lunargenta
#next Campeón Misiones secundarias
<< Horde !BloodElf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r
	.goto IcecrownGlacier,76.45,23.85
	.accept 13711 >> Acepta la misión Valeroso de Lunargenta
	.turnin 13711 >> Entrega la misión Valeroso de Lunargenta
	.target Eressea Dawnsinger
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mokra el Trituracráneos|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible
	.accept 13722 >> Acepta la misión La carga del Valeroso
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r. Tiene 1 de 3 misiones diarias. Acepta la que esté disponible
	.daily 13783,13785,13784 >>Acepta la misión Una espada de Campeón |c99ffff99OR|r El Filo del invierno |c99ffff99OR|r Un arma digna
	.goto IcecrownGlacier,76.45,23.85
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.daily 13786 >> Acepta la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.daily 13787 >> Acepta la misión El gran combate cuerpo a cuerpo
	.daily 13859 >> Acepta la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestAvailable 13722
step
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario, luego monta el Halcón zancudo de Lunargenta de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion
	.goto IcecrownGlacier,75.54,24.14
	.use 46070
	.target Stabled Silvermoon Hawkstrider
	.isOnQuest 13787
step
	>>Ve al Tocar de los Valiantes de la Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Valiant|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tRomper escudo (2) para eliminar las |T132360:0|tacumulaciones de Defender del |cRXP_ENEMY_Valiant|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefender en el |cRXP_ENEMY_Valiant|r, usa |T132226:0|tCargar (3) así como |T135375:0|tEstocada (1) mientras estés a rango melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a otro |cRXP_ENEMY_Valiant|r 3 veces en un Duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13787,1 -- Mark of the Valiant (3)
	.isOnQuest 13787
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Salta de tu montura. |cRXP_WARN_Remember to Equip your Arma|r. No destruyas tu |T135128:0|t|c99ffff99Lanza|r. La necesitarás de nuevo
	>>Mata a los |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13786,1 -- Converted Hero slain (10)
	.isOnQuest 13786
	.mob Converted Hero


step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r << Alliance
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu mochila, luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r << Horde
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13859
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.complete 13859,2 -- Boneguard Scout slain (10)
	.isOnQuest 13859
	.mob Boneguard Scout
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Footmen|r usando tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellarlos y matarlos instantáneamente
	>>Mata a los |cRXP_ENEMY_Guardahuesos Lieutenants|r. Obtén pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo luego |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	.complete 13859,1 -- Boneguard Footman slain (15)
	.complete 13859,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13859
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Mata a los |cRXP_ENEMY_Guardahuesos Exploradores (gárgolas voladoras)|r usando |T132358:0|tRomper escudo (2)
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13859,2 -- Boneguard Scout slain (10)
	.isOnQuest 13859
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Recoge |cRXP_PICK_Winter Hyacinth|r en la Presa del Muro de Hierro en el borde de Corona de Hielo y Bosque Canto de Cristal
	>>Crecen de las rocas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13784
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >> Viaja al Lago Drak'Mar en el noreste de Cementerio de Dragones
	.isOnQuest 13784
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usa la |T134195:0|t|cFFFFFF99Winter Hyacinth|r en tus bolsas mientras estés en el centro del Lago Drak'Mar
	>>Espera a que termine el Roleplay de la Doncella de Drak'Mar luego Despoja la |cRXP_PICK_Blade of Drak'Mar|r
	.cast 62629
	.timer 21,Maiden of Drak'Mar Roleplay
	.complete 13784,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13784

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
	.isOnQuest 13785
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Remember to Equip your Arma|r
	>>Mata a |cRXP_ENEMY_Lord Llama Perpetua|r. Despoja la |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13785
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >> Viaja al Lago Aliento de Invierno en el norte de Fiordo Aquilonal
	.isOnQuest 13785
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usa la |T135488:0|t|c99ffff99Everburning Ember|r en tu inventario para liberar a la Doncella del Lago Aliento Invernal
	.complete 13785,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13785

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >> Viaja a Colinas Pardas
	.isOnQuest 13783
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usa la |T134721:0|t|c99ffff99Cacao antipupas|r de tu bolsa |c99ffff99cada vez|r antes de intentar usar /beso en los Sapos del Lago
	>>Selecciona los Sapos del Lago para besarlos automáticamente. Si esto no funciona, escribe /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente uno de los Sapos del Lago se convertirá en un Humano. Habla con él para recibir el |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Remember to Equip your Arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13783,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13783
step
	.goto IcecrownGlacier,76.27,24.38,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13783,13785,13784,13786,13787,13859
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r, |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13783 >> Entrega la misión Una espada de Campeón
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13859 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13783 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r, |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13785 >> Entrega El Filo del invierno
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13859 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13785 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r, |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin 13784 >> Entrega un arma digna
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin 13859 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13784 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kethiel Lanzasol|r y |cRXP_FRIENDLY_Aneera Thuron|r
	.turnin -13786 >> Entrega la misión Instrucción en el campo de un Valeroso
	.goto IcecrownGlacier,76.41,23.75
	.turnin -13787 >> Entrega la misión El gran combate cuerpo a cuerpo
	.turnin -13859 >> Entrega la misión A las puertas del enemigo
	.goto IcecrownGlacier,76.52,23.93
	.target Kethiel Sunlance
	.target Aneera Thuron
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar la misión |cFFffff00La carga del Valeroso|r y progresar en |T236690:0|tArgent Torneo Grounds, debes completar misiones diarias y adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Necesitas |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Obtendrás 5 por día si completas las 4 misiones diarias
	>>|c99ffff99RECARGA LA GUÍA AL DÍA SIGUIENTE SI TODAVÍA NECESITAS COMPLETAR LAS MISIONES DIARIAS HASTA QUE PUEDAS ENTREGAR ESTA MISIÓN|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r
	.goto IcecrownGlacier,76.45,23.85
	.complete 13722,1 >> Entrega la misión Carga del Valeroso -- Valiant's Seal (25)
	.turnin 13722 >> Entrega la misión Carga del Valeroso
	.accept 13731 >> Acepta la misión Desafío del Valeroso
	.target Eressea Dawnsinger
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario, luego monta el Halcón zancudo de Lunargenta de establo
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, puedes recoger uno de nuevo justo dentro del Pavilion
	.goto IcecrownGlacier,75.54,24.14
	.use 46070
	.target Stabled Silvermoon Hawkstrider
	.isOnQuest 13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Danny|r
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Espera a que llegue el |cRXP_ENEMY_Campeón Argenta|r y derrótalo
	.goto IcecrownGlacier,68.60,20.99
	.complete 13731,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Llegada del Campeón Argent
	.mob Argent Champion
	.isOnQuest 13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eressea Cantoalba|r
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13731 >> Entrega la misión El desafío del Valeroso
	.target Eressea Dawnsinger
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_Ahora eres un |T255136:0|tCampeón de Ciudad de Lunargenta!|r
	>>|cRXP_LOOT_You are now finished with the Campeón de Lunargenta Guiar!|r
	>>|cRXP_LOOT_Ahora tienes la opción de convertirte en un|r |cRXP_WARN_Campeón|r |cRXP_LOOT_de otra|r |cRXP_WARN_Carrera|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carga la |cRXP_FRIENDLY_2.0|r Guiar para cualquiera|r |cRXP_WARN_Carrera|r |cRXP_LOOT_que elijas perseguir a continuación|r
	>>OR|cRXP_LOOT_
	>>|cRXP_LOOT_Puedes comenzar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Campeón Misiones diarias|r
	.isQuestTurnedIn 13731
]])



RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name G_2.1_AT_The_Black_Knight's_Quest_Story
#displayname |cRXP_PICK_2.1|r - El Caballero Negro's Misión Story

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.accept 13633 >> Acepta la misión El Caballero Negro de los Páramos de Poniente << Alliance
	.accept 13634 >> Acepta la misión ¿El Caballero Negro del Bosque de Argénteos? << Horde
	.target Crusader Rhydalla
step << Mage
	.zone Stormwind City >>Teletranspórtate a Ventormenta << Alliance
	.zone Undercity >>Teletranspórtate a Entrañas << Horde
	.isOnQuest 13633,13634
step << Alliance !Mage
    .goto Dalaran,40.11,62.81
	.zone Stormwind City >>Usa el portal desde Dalaran hacia TBC Entidades
	.isOnQuest 13633
step << Alliance
	#completewith next
	.goto StormwindClassic,66.2,62.2
	.fly Westfall >> Vuela a Páramos de Poniente
	.isOnQuest 13633
step << Alliance
	>> Viaja a Moonbrook. Despoja el |cRXP_PICK_Polvoriento Diario|r dentro de la casa
	.goto Westfall,42.09,69.66
	.complete 13633,1 -- Dusty Journal (1)
	.isOnQuest 13633
step << Horde !Mage
    .goto Dalaran,55.64,23.85
	.zone Undercity >>Usa el portal desde Dalaran hacia Undercity
	.isOnQuest 13634
step << Horde
	#completewith next
	.goto Undercity,63.25,48.56
	.fly Silverpine >> Vuela a Bosque de Argénteos
	.isOnQuest 13634
step << Horde
	>> Viaja a Valgan's Field. Despoja el |cRXP_PICK_Polvoriento Diario|r dentro de la casa
	.goto Silverpine Forest,52.85,27.92,8,0
	.goto Silverpine Forest,53.17,28.10
	.complete 13634,1 -- Dusty Journal (1)
	.isOnQuest 13634
step << Mage
	#completewith next
	.zone Dalaran >>Teletranspórtate a Dalaran
	.isOnQuest 13633,13634
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13633,13634
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13633 >> Entrega la misión ¿El Caballero Negro de los Páramos de Poniente? << Alliance
	.turnin 13634 >> Entrega la misión ¿El Caballero Negro del Bosque de Argénteos? << Horde
	.accept 13641 >> Acepta la misión El cristal de vidente
	.target Crusader Rhydalla
step << Mage
	#completewith next
	.zone Dalaran >>Teletranspórtate a Dalaran
	.isOnQuest 13641
step
	#completewith next
	.isOnQuest 13641
	.goto CrystalsongForest,43.90,40.07
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
step
	>>Mata a los Desatado Videntes. Despoja el |cRXP_ENEMY_Cristal del Vidente|r de los |cRXP_LOOT_Desatado Videntes|r
	.goto CrystalsongForest,43.90,40.07,30,0
	.goto CrystalsongForest,46.04,40.87,30,0
	.goto CrystalsongForest,48.62,39.37,30,0
	.goto CrystalsongForest,42.57,49.12,30,0
	.goto CrystalsongForest,46.04,40.87
	.complete 13641,1 -- Seer's Crystal (1)
	.mob Unbound Seer
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13641
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13641 >> Entrega la misión El cristal de vidente
	.accept 13643 >> Acepta la misión Historias que cuentan los muertos
	.target Crusader Rhydalla
step
	>>Ve hacia el este al cementerio del |T236690:0|tArgent Torneo Grounds
	.use 45070 >>Usa el |T132775:0|t|cFFFFFF99Cristal del Vidente|r en tu inventario en las Tumbas
	.complete 13643,1 -- Sir Wendell Balfour's death investigated
	.goto IcecrownGlacier,79.37,23.09
	.complete 13643,3 -- Conall Irongrip's death investigated
	.goto IcecrownGlacier,79.64,22.85
	.complete 13643,2 -- Lorien Sunblaze's death investigated
	.goto IcecrownGlacier,79.63,23.57
	.isOnQuest 13643
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13643 >> Entrega la misión Historias que cuentan los muertos
	.accept 13654 >> Acepta la misión Algo pasa con el escudero
	.target Crusader Rhydalla
step << Mage
	#completewith next
	.zone Dalaran >>Teletranspórtate a Dalaran
	.isOnQuest 13654
step
	#completewith next
	.isOnQuest 13654
	.goto CrystalsongForest,37.48,57.47
	.zone CrystalsongForest >> Viaja a Crystalsong Forest
step
	>>Mata a los |cRXP_ENEMY_Esqueleto Leñadores|r. Despoja un |cRXP_LOOT_Grande Fémur|r
	.goto CrystalsongForest,37.48,57.47,15,0
	.goto CrystalsongForest,36.68,61.93,15,0
	.goto CrystalsongForest,40.81,60.25,15,0
	.goto CrystalsongForest,38.17,57.37,15,0
	.goto CrystalsongForest,36.68,61.93
	.collect 45080,1 -- Large Femur
	.mob Skeletal Woodcutter
	.isOnQuest 13654
step
	>>|cRXP_WARN_COLÓCATE DETRÁS DE MALORIC|r
	.use 45080 >>Usa el |T133727:0|t|cFFFFFF99Grande Fémur|r en tu inventario en |cRXP_ENEMY_Maloric|r
	>>Una vez incapacitado, despoja a Maloric para obtener el |cRXP_LOOT_Kit del Asesino|r
	.goto CrystalsongForest,38.19,59.49
	.complete 13654,1 -- Murderer's Toolkit (1)
	.isOnQuest 13654
	.mob Maloric
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo
	.isOnQuest 13654
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13654 >> Entrega la misión Algo pasa con el escudero
	.accept 13663 >> Acepta la misión Las órdenes del Caballero Negro
	.target Crusader Rhydalla
step
	.use 45083 >>Usa el |T133331:0|t|cFFFFFF99Freno Bajo Encantamiento|r en tu inventario en el |cRXP_FRIENDLY_Grifo del Caballero Negro|r
	>>El Roleplay del Grifo dura aproximadamente 1 min 40 seg
	.goto IcecrownGlacier,77.77,21.61
	.cast 63163
	.timer 100,Roleplay del Grifo del Caballero Negro
	.complete 13663,1 -- Black Knight's Gryphon taken
	.isOnQuest 13663
	.target Black Knight's Gryphon
step
	>>Despoja el |cRXP_LOOT_Invitación Robada al Torneo|r y el |cRXP_LOOT_Órdenes del Caballero Negro|r dentro de la pequeña cabaña
	.complete 13663,2 -- Stolen Tournament Invitation
	.goto IcecrownGlacier,54.07,8.66
	.complete 13663,3 -- Black Knight's Orders
	.goto IcecrownGlacier,54.10,8.63
	.isOnQuest 13663
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13663 >> Entrega la misión Las órdenes del Caballero Negro
	.target Crusader Rhydalla
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	>>NOTA: Aceptar esta misión requiere que seas |cRXP_WARN_Campeón|r. Si no puedes aceptar esta misión debes completar la guía Becoming a Campeón Guiar
	.goto IcecrownGlacier,69.43,23.02
	.accept 13664 >> Acepta la misión La caída del Caballero Negro
	.target Crusader Rhydalla
step
	#completewith next
	.vehicle >>Equipa el |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu inventario, luego monta el |cRXP_FRIENDLY_Caballo de Guerra Argent|r << Alliance
	.vehicle >>Equipa el |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario, luego monta el |cRXP_FRIENDLY_Caballo de Guerra Argent|r << Horde
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza|r, hay Racks a lo largo de Stables
	.use 46069 << Alliance
	.use 46070 << Horde
	.goto IcecrownGlacier,72.30,22.55
	.target Stabled Argent Warhorse
	.isOnQuest 13664
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Escudero Cavin|r
	>>Recuerda usar |T132360:0|tDefender (4). Usa |T132226:0|tCargar (3) junto con |T135375:0|tEstocada (1) y |T132358:0|tRomper escudo (2) si estás a rango
	>>|cRXP_ENEMY_El Caballero Negro|r te desmontará una vez que su HP llegue a 0
	>>|cRXP_WARN_¡Recuerda equipar tu arma!|r
	>>Mata al |cRXP_ENEMY_El Caballero Negro|r
	.goto IcecrownGlacier,71.35,23.14
	.complete 13664,1 -- The Black Knight slain
	.skipgossip
	.timer 14,Llegada del Caballero Negro
	.target Squire Cavin
	.mob The Black Knight
	.isOnQuest 13664
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13664 >> Entrega la misión La caída del Caballero Negro
	.target Crusader Rhydalla

step -- 14016 and 14017 added in 3.2 - Add in Phase 3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.accept 14016 >> Acepta la misión La maldición del Caballero Negro
	.target Crusader Rhydalla
step
	>>Ve al este al Cementerio de los |T236690:0|tCampos del Torneo Argento
	>>Mata al |cRXP_ENEMY_Asesino del Culto|r después del corto Roleplay
	.goto IcecrownGlacier,79.50,23.27
	.complete 14016,1 -- Investigate the Black Knight's Grave
	.isOnQuest 14016
	.target Cult Assassin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 14016 >> Entrega la misión La tumba del Caballero Negro
	.accept 14017 >> Acepta la misión El destino del Caballero Negro
	.target Crusader Rhydalla
step
	>>Vuela al este hacia el Observatorio del Portavoz de la muerte
	>>Mata a |cRXP_ENEMY_Doctor Kolher|r. Despójalo para obtener sus |cRXP_LOOT_Orders|r
	>>Patrulla alrededor de la plataforma
	.goto IcecrownGlacier,61.19,22.41
	.complete 14017,1 -- Doctor Kohler's Orders (1)
	.isOnQuest 14017
	.target Doctor Kolher
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 14017 >> Entrega la misión La tumba del Caballero Negro
	.target Crusader Rhydalla
step
	+|cRXP_WARN_¡Este es el final de la historia de |cRXP_ENEMY_The Negro Caballero's|r!
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name H_3_AT_Campeón_Misiones Diarias
#displayname |cRXP_ENEMY_3.0|r - Campeón Misiones Diarias

step
	>>Para acceder a Campeón Misiones Diarias debes haber completado la |cRXP_LOOT_1.0|r Convirtiéndote en un Campeón Guía
	>>Si no puedes aceptar ninguna misión, asegúrate de que haya sido completada
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Justicar Mariel Corazón Veraz|r
	.goto IcecrownGlacier,69.66,22.86
	.accept 13794 >> Acepta la misión Eadric el Puro << !DK
	.accept 13795 >> Acepta la misión El Finiquiplaga << DK
	.target Justicar Mariel Trueheart
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eadric el Puro|r
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13794 >> Entrega la misión Eadric el Puro
	.target Eadric the Pure
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Crok Finiquiplaga|r
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13795 >> Gira en Finiquiplaga
	.target Crok Scourgebane
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eadric el Puro|r, |cRXP_FRIENDLY_Luuri|r y |cRXP_FRIENDLY_Cellian Rompedía|r
	.daily 13682 >> Acepta la misión Amenaza desde el cielo << Alliance
	.daily 13809 >> Acepta la misión Amenaza desde el cielo << Horde
	.daily 13861 >> Acepta la misión Batalla ante la ciudadela << Alliance
	.daily 13862 >> Acepta la misión Batalla ante la ciudadela << Horde
	.goto IcecrownGlacier,69.96,23.44
	.daily 13790 >> Acepta la misión Entre los campeones << Alliance
	.daily 13811 >> Acepta la misión Entre los campeones << Horde
	.goto IcecrownGlacier,69.93,23.33
	.daily 13789 >> Acepta la misión Llevar la batalla al enemigo << Alliance
	.daily 13810 >> Acepta la misión Llevar la batalla al enemigo << Horde
	.goto IcecrownGlacier,69.92,23.53
	.isQuestTurnedIn 13664 -- Must complete 13664 to accept Threat From Above
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eadric el Puro|r, |cRXP_FRIENDLY_Luuri|r y |cRXP_FRIENDLY_Cellian Rompedía|r
	.daily 13861 >> Acepta la misión Batalla ante la ciudadela << Alliance
	.daily 13862 >> Acepta la misión Batalla ante la ciudadela << Horde
	.goto IcecrownGlacier,69.96,23.44
	.daily 13790 >> Acepta la misión Entre los campeones << Alliance
	.daily 13811 >> Acepta la misión Entre los campeones << Horde
	.goto IcecrownGlacier,69.93,23.33
	.daily 13789 >> Acepta la misión Llevar la batalla al enemigo << Alliance
	.daily 13810 >> Acepta la misión Llevar la batalla al enemigo << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Crok Finiquiplaga|r, |cRXP_FRIENDLY_Illyrie Ocaso|r y |cRXP_FRIENDLY_Zor'be the Flebotomista|r
	.daily 13788 >> Acepta la misión Amenaza desde el cielo << Alliance
	.daily 13812 >> Acepta la misión Amenaza desde el cielo << Horde
	.daily 13864 >> Acepta la misión Batalla ante la ciudadela << Alliance
	.daily 13863 >> Acepta la misión Batalla ante la ciudadela << Horde
	.goto IcecrownGlacier,73.80,20.06
	.daily 13793 >> Acepta la misión Entre los campeones << Alliance
	.daily 13814 >> Acepta la misión Entre los campeones << Horde
	.goto IcecrownGlacier,73.59,20.08
	.daily 13791 >> Acepta la misión Llevar la batalla al enemigo << Alliance
	.daily 13813 >> Acepta la misión Llevar la batalla al enemigo << Horde
	.goto IcecrownGlacier,73.80,19.45
	.isQuestTurnedIn 13664
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Crok Finiquiplaga|r, |cRXP_FRIENDLY_Illyrie Ocaso|r y |cRXP_FRIENDLY_Zor'be el Flebotomista|r
	.daily 13864 >> Acepta la misión Batalla ante la ciudadela << Alliance
	.daily 13863 >> Acepta la misión Batalla ante la ciudadela << Horde
	.goto IcecrownGlacier,73.80,20.06
	.daily 13793 >> Acepta la misión Entre los campeones << Alliance
	.daily 13814 >> Acepta la misión Entre los campeones << Horde
	.goto IcecrownGlacier,73.59,20.08
	.daily 13791 >> Acepta la misión Llevar la batalla al enemigo << Alliance
	.daily 13813 >> Acepta la misión Llevar la batalla al enemigo << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step << !DK Alliance -- Among the Champions
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el Elekk de la caballeriza de Exodar << Draenei
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas y luego monta el Carnero de Forjaz de establo << Dwarf
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego monta el Mecazancudo de Gnomeregan de establo << Gnome
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego Monta el Corcel de Ventormenta de establo << Human
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu bolsa, luego monta el Sable de la noche darnassiano de establo << NightElf
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r, hay Racks a lo largo de Stables
	.goto IcecrownGlacier,71.56,22.41 << Human
	.goto IcecrownGlacier,71.62,22.50 << NightElf
	.goto IcecrownGlacier,71.68,22.38 << Draenei
	.goto IcecrownGlacier,71.80,22.50 << Dwarf
	.goto IcecrownGlacier,71.93,22.51 << Gnome
	.use 46069
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.isOnQuest 13790
step << !DK Alliance -- Among the Champions
	>>Ve al Círculo de Campeones
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Campeón|r. Todos pueden ser retados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a un |cRXP_ENEMY_Campeón|r distinto 4 veces en un Duelo
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13790,1 -- Mark of the Champion (4)
	.isOnQuest 13790
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << !DK Horde -- Among the Champions
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas y Monta el Caballo de guerra Renegado de establo << Scourge
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Lobo de Orgrimmar del establo << Orc
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Kodo de Cima del Trueno de establo << Tauren
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Raptor Lanza Negra de establo << Troll
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario, luego monta el Halcón zancudo de Lunargenta de establo << BloodElf
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Horda|r, hay soportes en toda la Caballeriza
	.goto IcecrownGlacier,72.04,22.54 << Troll
	.goto IcecrownGlacier,72.08,22.45 << Scourge
	.goto IcecrownGlacier,72.17,22.53 << Orc
	.goto IcecrownGlacier,72.20,22.46 << BloodElf
	.goto IcecrownGlacier,71.86,22.39 << Tauren
	.use 46070
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13811
step << !DK Horde -- Among the Champions
	>>Ve al Círculo de Campeones
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Campeón|r. Todos pueden ser retados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a un |cRXP_ENEMY_Campeón|r distinto 4 veces en un Duelo
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13811,1 -- Mark of the Champion (4)
	.isOnQuest 13811
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << DK Alliance -- Among the Champions
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el Elekk de la caballeriza de Exodar << Draenei
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas y luego monta el Carnero de Forjaz de establo << Dwarf
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego monta el Mecazancudo de Gnomeregan de establo << Gnome
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tus bolsas, luego Monta el Corcel de Ventormenta de establo << Human
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r en tu bolsa, luego monta el Sable de la noche darnassiano de establo << NightElf
	>>Si has extraviado tu |T135128:0|t|c99ffff99Lanza de la Alianza|r, hay Racks a lo largo de Stables
	.goto IcecrownGlacier,71.56,22.41 << Human
	.goto IcecrownGlacier,71.62,22.50 << NightElf
	.goto IcecrownGlacier,71.68,22.38 << Draenei
	.goto IcecrownGlacier,71.80,22.50 << Dwarf
	.goto IcecrownGlacier,71.93,22.51 << Gnome
	.use 46069
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.isOnQuest 13793
step << DK Alliance -- Among the Champions
	>>Ve al Círculo de Campeones
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Campeón|r. Todos pueden ser retados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a un |cRXP_ENEMY_Campeón|r distinto 4 veces en un Duelo
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13793,1 -- Mark of the Champion (4)
	.isOnQuest 13793
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << DK Horde -- Among the Champions
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas y Monta el Caballo de guerra Renegado de establo << Scourge
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Lobo de Orgrimmar del establo << Orc
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Kodo de Cima del Trueno de establo << Tauren
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tus bolsas, luego monta el Raptor Lanza Negra de establo << Troll
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu inventario, luego monta el Halcón zancudo de Lunargenta de establo << BloodElf
	>>Si has perdido tu |T135128:0|t|c99ffff99Lanza de la Horda|r hay estantes en toda la Cuadra
	.goto IcecrownGlacier,72.04,22.54 << Troll
	.goto IcecrownGlacier,72.08,22.45 << Scourge
	.goto IcecrownGlacier,72.17,22.53 << Orc
	.goto IcecrownGlacier,72.20,22.46 << BloodElf
	.goto IcecrownGlacier,71.86,22.39 << Tauren
	.use 46070
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13814
step << DK Horde -- Among the Champions
	>>Ve al Anillo de Campeones
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con cualquier |cRXP_ENEMY_Campeón|r. Todos pueden ser desafiados a un Duelo
	>>Recuerda usar |T132360:0|tDefender (4) y mantén las pilas durante el Duelo
	>>Usa |T132358:0|tShield-Pepillo (2) para eliminar |T132360:0|tDefend del |cRXP_ENEMY_Campeón|r constantemente
	>>Una vez que no queden pilas de |T132360:0|tDefend en el |cRXP_ENEMY_Campeón|r, usa |T132226:0|tCharge (3) así como |T135375:0|tThrust (1) en rango de melee
	>>Al final del Duelo usa |T134058:0|tRenovar montura (5) para sanar a vida plena
	>>Derrota a un |cRXP_ENEMY_Campeón|r diferente 4 veces en un Duelo
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13814,1 -- Mark of the Champion (4)
	.isOnQuest 13814
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step
	#completewith next
	.goto IcecrownGlacier,55.23,32.26,60 >>|cRXP_WARN_Recuerda equipar tu Arma!|r
	.isOnQuest 13789,13810,13791,13813
step -- Taking Battle To The Enemy
	>>Mata a un miembro |cRXP_ENEMY_Cult of the Maldito|r
	>>Estos incluyen |cRXP_ENEMY_Blackguards|r, |cRXP_ENEMY_Torturers|r, |cRXP_ENEMY_Alchemists|r o |cRXP_ENEMY_Apothecary|r
	.goto IcecrownGlacier,55.23,32.26,60,0
	.goto IcecrownGlacier,53.47,33.10,60,0
	.goto IcecrownGlacier,53.98,35.81,60,0
	.goto IcecrownGlacier,52.25,33.90,60,0
	.goto IcecrownGlacier,50.66,33.76,60,0
	.goto IcecrownGlacier,48.95,34.32,60,0
	.goto IcecrownGlacier,49.22,31.45,60,0
	.goto IcecrownGlacier,55.23,32.26
	.complete 13789,1 << !DK Alliance -- Cult of the Damned member slain (15)
	.complete 13810,1 << !DK Horde -- Cult of the Damned member slain (15)
	.complete 13791,1 << DK Alliance -- Cult of the Damned member slain (15)
	.complete 13813,1 << DK Horde -- Cult of the Damned member slain (15)
	.isOnQuest 13789,13810,13791,13813
	.mob Cult Blackguard
	.mob Overseer Jhaeqon
	.mob Vile Torturer
	.mob Damned Apothecary
	.mob Cult Alchemist
	.mob Overseer Savryn
step -- Threat From Above
	.goto IcecrownGlacier,47.12,33.26,65,0
	.goto IcecrownGlacier,45.72,35.25,65,0
	.goto IcecrownGlacier,43.85,33.47,65,0
	.goto IcecrownGlacier,45.42,31.95,65,0
	.goto IcecrownGlacier,47.12,33.26
    .line IcecrownGlacier,45.11,31.99,45.80,32.16,46.19,32.24,46.58,32.39,46.93,32.75,47.05,33.02,47.23,33.61,46.91,34.13,46.47,35.04,45.98,35.23,45.42,35.43,44.80,34.97,44.09,34.04,43.85,33.00,44.37,32.12,45.11,31.99
	>>Busca a |cRXP_ENEMY_Chillmaw|r volando en el aire
	>>Mata a |cRXP_ENEMY_Chillmaw|r y a los |cRXP_ENEMY_Cultist Bombardiers|r. Los |cRXP_ENEMY_Cultist Bombardiers|r saltarán de |cRXP_ENEMY_Chillmaw|r cuando su salud se reduzca para luchar también contra ti
	>>Esta misión es MUY difícil. Busca un grupo si es necesario. Omite este paso si no puedes encontrar un grupo o hacerlo en solitario
	.complete 13682,1 << !DK Alliance -- Chillmaw slain (1)
	.complete 13682,2 << !DK Alliance -- Cultist Bombardier slain (3)
	.complete 13809,1 << !DK Horde -- Chillmaw slain (1)
	.complete 13809,2 << !DK Horde -- Cultist Bombardier slain (3)
	.complete 13788,1 << DK Alliance -- Chillmaw slain (1)
	.complete 13788,2 << DK Alliance -- Cultist Bombardier slain (3)
	.complete 13812,1 << DK Horde -- Chillmaw slain (1)
	.complete 13812,2 << DK Horde -- Cultist Bombardier slain (3)
	.isOnQuest 13682,13809,13788,13812
	.unitscan Boneguard Commander
	.mob Cultist Bombardier
step -- Battle Before The Citadel
	#completewith next
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Alianza|r de tu bolsa luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r << Alliance
	.vehicle >>Equipa la |T135128:0|t|c99ffff99Lanza de la Horda|r en tu mochila, luego monta el |cRXP_FRIENDLY_Caballo de campaña de guerra de establo|r << Horde
	>>Hay un |T135128:0|t|c99ffff99Soporte de Lanza|r justo al lado de la Barricada si necesitas otro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13861,13862,13864,13863
	.target Stabled Campaign Warhorse
step -- Battle Before The Citadel
	>>Mata a los |cRXP_ENEMY_Guardahuesos Comandantes|r
	>>Acumula pilas de |T132360:0|tDefender (4) y mantenlas. Usa |T132358:0|tRomper escudo (2) para eliminar su escudo, luego usa |T132226:0|tCargar (3) y |T135375:0|tEstocada (1)
	>>Puedes usar tu |cRXP_FRIENDLY_Caballo de guerra|r para atropellar y matar a los |cRXP_ENEMY_Footmen|r molestos al instante
	>>Usa |T132358:0|tRomper escudo (2) en cualquier |cRXP_ENEMY_Guardahuesos Exploradores (Gargoyles voladores)|r que te ataquen
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.complete 13861,1 << !DK Alliance -- Boneguard Commander slain (3)
	.complete 13862,1 << !DK Horde -- Boneguard Commander slain (3)
	.complete 13864,1 << DK Alliance -- Boneguard Commander slain (3)
	.complete 13863,1 << DK Horde -- Boneguard Commander slain (3)
	.isOnQuest 13861,13862,13864,13863
	.mob Boneguard Commander
step
	.goto IcecrownGlacier,69.96,23.44,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << !DK
	.isOnQuest 13682,13809,13861,13862,13790,13811,13789,13810
step
	.goto IcecrownGlacier,73.80,20.06,300 >> Regresa a los |T236690:0|tCampos del Torneo Argent en Corona de Hielo << DK
	.isOnQuest 13788,13812,13864,13863,13793,13814,13791,13813
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eadric el Puro|r, |cRXP_FRIENDLY_Luuri|r y |cRXP_FRIENDLY_Cellian Rompedía|r
	.turnin 13682 >> Entrega la misión Amenaza desde el cielo << Alliance
	.turnin 13809 >> Entrega la misión Amenaza desde el cielo << Horde
	.turnin 13861 >> Entrega la misión Batalla ante la ciudadela << Alliance
	.turnin 13862 >> Entrega la misión Batalla ante la ciudadela << Horde
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13790 >> Entrega la misión Entre los campeones << Alliance
	.turnin 13811 >> Entrega la misión Entre los campeones << Horde
	.goto IcecrownGlacier,69.93,23.33
	.turnin 13789 >> Entrega la misión Llevar la batalla al enemigo << Alliance
	.turnin 13810 >> Entrega la misión Llevar la batalla al enemigo << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
	.isQuestComplete 13682 << Alliance
	.isQuestComplete 13809 << Horde
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eadric el Puro|r, |cRXP_FRIENDLY_Luuri|r y |cRXP_FRIENDLY_Cellian Rompedía|r
	.turnin 13861 >> Entrega la misión Batalla ante la ciudadela << Alliance
	.turnin 13862 >> Entrega la misión Batalla ante la ciudadela << Horde
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13790 >> Entrega la misión Entre los campeones << Alliance
	.turnin 13811 >> Entrega la misión Entre los campeones << Horde
	.goto IcecrownGlacier,69.93,23.33
	.turnin 13789 >> Entrega la misión Llevar la batalla al enemigo << Alliance
	.turnin 13810 >> Entrega la misión Llevar la batalla al enemigo << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Crok Finiquiplaga|r, |cRXP_FRIENDLY_Illyrie Ocaso|r y |cRXP_FRIENDLY_Zor'be el Flebotomista|r
	.turnin 13788 >> Entrega la misión Amenaza desde el cielo << Alliance
	.turnin 13812 >> Entrega la misión Amenaza desde el cielo << Horde
	.turnin 13864 >> Entrega la misión Batalla ante la ciudadela << Alliance
	.turnin 13863 >> Entrega la misión Batalla ante la ciudadela << Horde
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13793 >> Entrega la misión Entre los campeones << Alliance
	.turnin 13814 >> Entrega la misión Entre los campeones << Horde
	.goto IcecrownGlacier,73.59,20.08
	.turnin 13791 >> Entrega la misión Llevar la batalla al enemigo << Alliance
	.turnin 13813 >> Entrega la misión Llevar la batalla al enemigo << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
	.isQuestComplete 13788 << Alliance
	.isQuestComplete 13812 << Horde
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Crok Finiquiplaga|r, |cRXP_FRIENDLY_Illyrie Ocaso|r y |cRXP_FRIENDLY_Zor'be el Flebotomista|r
	.turnin 13864 >> Batalla ante la Ciudadela << Alliance
	.turnin 13863 >> Batalla ante la Ciudadela << Horde
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13793 >> Entre los Campeones << Alliance
	.turnin 13814 >> Entre los Campeones << Horde
	.goto IcecrownGlacier,73.59,20.08
	.turnin 13791 >> Lleva la Batalla al Enemigo << Alliance
	.turnin 13813 >> Lleva la Batalla al Enemigo << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step
	+|cRXP_WARN_¡Has completado todas las misiones diarias Campeón por hoy! Recarga esta guía mañana para continuar.|r
]])

-- The following are added in 3.2 - Implement in Phase 3

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name I_3.1_AT_Cruzado_Daily_Quests
#displayname |cRXP_ENEMY_3.1|r - Misiones diarias Cruzado

step
	#completewith next
	+|cRXP_WARN_La Fase 3 introduce las misiones diarias Cruzado|r
	>>Para acceder a las misiones diarias Cruzado, debes tener el logro:
	.achievement 2817 << Alliance
	.achievement 2816 << Horde
step
	>>Entra en Argent Pavilion
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_High Cruzado Adelard|r y |cRXP_FRIENDLY_Cruzado Albaplata|r.
	.daily 14105,14101,14102,14104 >>Acepta la misión Portavoz de la muerte Kharos
	>>|c99ffff99OR|r Drottinn Hrothgar
	>>|c99ffff99OR|r Clamaneblina Yngvar
	>>|c99ffff99OR|r Ornolf The Scarred
	.daily 14108,14107 >>Acepta la misión ¡Toma kraken!
	>>|c99ffff99OR|r El Destino del Agonizante
	.goto Icecrown,69.51,23.15
	.target High Crusader Adelard
	.target Crusader Silverdawn
step
	.isOnQuest 14105
	>>Ve al Puesto de Avanzada del Portavoz de la muerte
	>>Mata a |cRXP_ENEMY_Portavoz de la muerte Kharos|r
	.complete 14105,1
	.goto Icecrown,64.2,21.4
	.target Deathspeaker Kharos
step
	#completewith next
	.isOnQuest 14108
	.goto Icecrown,69.79,22.21,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stabled Hipogrifo Argenta|r fuera del Argent Pavilion.
	.skipgossip
step
	.isOnQuest 14108
	>>Lanza |c99ffff99Flaming Lanzas|r al |cRXP_ENEMY_Kraken de El Mar del Norte|r y a los |cRXP_ENEMY_Kvaldir Deepcallers|r.
	.complete 14108,1
	.complete 14108,2
	.use 46954
	.mob North Sea Kraken
	.mob Kvaldir Deepcaller
step
	.isOnQuest 14101
	>>Ve a los Monumentos Tualiq en el Desembarco de Hrothgar.
	>>Usa el |c99ffff99Cuerno de guerra Kvaldir|r
	>>Mata a |cRXP_ENEMY_Drottinn Hrothgar|r
	.complete 14101,1
	.use 47006
	.goto Hrothgar's Landing,50.4,15.6
	.target Drottinn Hrothgar
step
	.isOnQuest 14102
	>>Ve a la Cueva del Clamaneblina en el Desembarco de Hrothgar.
	>>Usa el |c99ffff99Mistcaller's Embelesar|r
	>>Mata a |cRXP_ENEMY_Clamaneblina Yngvar|r
	.complete 14102,1
	.use 47009
	.goto Hrothgar's Landing,43.8,24.6
	.target Mistcaller Yngvar
step
	.isOnQuest 14104
	>>Ve a la cubierta de la Furia de Bor en el Desembarco de Hrothgar.
	>>Usa el |c99ffff99Captured Kvaldir Estandarte|r
	>>Mata a |cRXP_ENEMY_Ornolf The Scarred|r
	.complete 14104,1
	.use 47029
	.goto Hrothgar's Landing,58.6,31.6
step
	.isOnQuest 14107
	>>Despoja |cRXP_PICK_Cristales de alma descartados|r en el suelo.
	>>Usa la |c99ffff99Light-Bendecido Reliquia|r en los espíritus de héroe caído.
	.collect 47035,6,14107,1,-1
	.complete 14107,1
	.use 47033
	.goto Icecrown,49.19,40.42
	.target Fallen Hero's Spirit
step
	>>Regresa a Argent Pavilion
	.dailyturnin 14105,14101,14102,14104 >>Entrega la misión Portavoz de la muerte Kharos
	>>|c99ffff99OR|r Drottinn Hrothgar
	>>|c99ffff99OR|r Clamaneblina Yngvar
	>>|c99ffff99OR|r Ornolf el Cicatrizado
	.dailyturnin 14108,14107 >>Entrega la misión Get Kraken!
	>>|c99ffff99OR|r El Destino de los Caídos
	.goto Icecrown,69.51,23.15
	.target High Crusader Adelard
	.target Crusader Silverdawn
step
	+|cRXP_WARN_You have finished all Plateado Covenant Daily Quests for today! Recarga this Guiar tomorrow to continue them.|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name J_3.2_AT_Plateado_Covenant_Daily_Quests
#displayname |cRXP_ENEMY_3.2|r - Misiones diarias del Pacto Plateado
<< Alliance

step
	#completewith next
	+|cRXP_WARN_La Fase 3 introduce las misiones diarias del Pacto Plateado|r
	>>Para acceder a las misiones diarias del Pacto Plateado, debes estar Exaltado con |cRXP_WARN_Silver Covenant|r y ser |cRXP_ENEMY_Campeón|r, lo que te da el logro:
	.achievement 3676,1
step
	>>Entra al Pabellón del Pacto de Plata
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narasi Albanieve|r y |cRXP_FRIENDLY_Savinia Romanza|r.
	.daily 14096 >>Acepta la misión Esta vez la has liado, Kul
	.daily 14074,14152,14080,14077 >>Acepta la misión A Leg Up
	>>|c99ffff99OR|r Rescate at Sea
	>>|c99ffff99OR|r Detén The Aggressors
	>>|c99ffff99OR|r La piedad de la Luz
	.daily 14076,14090,14112 >>Acepta la misión Desayuno de campeones
	>>|c99ffff99OR|r Gormok Wants His Snobolds
	>>|c99ffff99OR|r What Do You Alimentar a Yeti, Anyway?
	.goto Icecrown,76.26,19.62
	.target Narasi Snowdawn
	.target Savinia Loresong
step
	.isOnQuest 14074
	>>Ve a Hrothgar's Aterrizando
	>>Despoja |cRXP_LOOT_Stolen Zancaalta Patitas|r del suelo o mata a los |cRXP_ENEMY_Kvaldir mobs|r.
	.complete 14074,1
	.goto Hrothgar's Landing,43.4,29.8
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14152
	>>Ve al barco de la Alianza en Hrothgar's Aterrizando.
	>>Mata a los |cRXP_ENEMY_Kvaldir Berserkers|r y |cRXP_ENEMY_Kvaldir Harpooners|r.
	.complete 14152,1
	.complete 14152,2
	.goto Hrothgar's Landing,49.97,49.45
	.mob Kvaldir Berserker
	.mob Kvaldir Harpooner
step
	.isOnQuest 14080
	>>Ve a la costa de Hrothgar
	>>Mata a los |cRXP_ENEMY_Kvaldir Reavers|r o a los |cRXP_ENEMY_Vinculador de bruma Kvaldir|r.
	.complete 14080,1
	.goto Hrothgar's Landing,48.65,32.64
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14077
	>>Ve a la costa de Hrothgar
	>>Usa el |c99ffff99Libro de Oración del Confesor|r para realizar los últimos ritos a los |cRXP_FRIENDLY_Aldeanos Tualiq caídos|r.
	.complete 14077,1
	.use 46870
	.goto Hrothgar's Landing,51,30,10,0
	.goto Hrothgar's Landing,50.60,28.28,10,0
	.goto Hrothgar's Landing,51.84,26.61,10,0
	.goto Hrothgar's Landing,54.03,23.98,10,0
	.goto Hrothgar's Landing,55.65,25.20,10,0
	.goto Hrothgar's Landing,57.41,24.37,10,0
	.goto Hrothgar's Landing,57.10,21.39
	.target Slain Tualiq Villager
step
	.isOnQuest 14112
	#completewith next
	>>Despoja la |cRXP_PICK_Cebo Fresco|r de los cubos en el barco de la Alianza.
	.collect 47036,5
	.goto Icecrown,67.11,7.89
step
	.isOnQuest 14112
	>>Salta al agua y usa el |cRXP_PICK_Cebo Fresco|r.
	>>Mata a los |cRXP_ENEMY_Tiburones|r para la |cRXP_LOOT_Carne de Tiburón del Mar del Norte|r.
	.complete 14112,1
	.use 47036
step
	.isOnQuest 14096
	>>Mata a los |cRXP_ENEMY_Zelotes oscuros|r y a los |cRXP_ENEMY_Dark Ritualists|r para obtener las |cRXP_PICK_Black Jaula Keys|r.
	>>Usa las llaves para liberar a los |cRXP_FRIENDLY_Aspirantes Cautivos|r de las jaulas.
	.collect 46895,5,14096,2,-1
    .complete 14096,2
	.goto Icecrown,65.17,22.19,15,0
	.goto Icecrown,64.66,21.74,15,0
	.goto Icecrown,63.04,21.32,15,0
	.goto Icecrown,61.42,20.74,15,0
	.goto Icecrown,60.25,21.08
	.mob Dark Zealot
	.mob Dark Ritualist
step
	.isOnQuest 14096
	>>Mata a los |cRXP_ENEMY_Zelotes oscuros|r y a los |cRXP_ENEMY_Dark Ritualists|r para las |cRXP_PICK_Black Jaula Keys|r.
	>>Libera a |cRXP_FRIENDLY_Kul el Temerario|r de su jaula.
    .complete 14096,1
	.goto Icecrown,60.82,23.15
step
	.isOnQuest 14076
	>>Ve a Las Cumbres Tormentosas
	>>Usa el |c99ffff99Tambor Sacudetierra|r junto a los montículos de nieve.
	>>Mata a los |cRXP_ENEMY_Jormungares Profundos|r para los |cRXP_LOOT_Sacos de Huevos de Jormungar|r.
	.complete 14076,1
	.use 46893
	.goto The Storm Peaks,43.33,57.74
	.target Deep Jormungar
step
	.isOnQuest 14090
	>>Ve a Las Cumbres Tormentosas
	>>Usa la |c99ffff99Atarraya|r para capturar a los |cRXP_ENEMY_Seguidores Velonieve|r.
	.complete 14090,1
	.use 46885
	.goto The Storm Peaks,43.88,81.60
	.target Snowblind Follower
step
	>>Regresa al Pabellón del Pacto Plateado de la Alianza.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narasi Albanieve|r y |cRXP_FRIENDLY_Savinia Romanza|r.
	.dailyturnin 14096 >>Entrega la misión You've Really Done It This Tiempo, Kul
	.dailyturnin 14074,14152,14080,14077 >>Entrega la misión A Leg Up
	>>|c99ffff99OR|r Rescate at Sea
	>>|c99ffff99OR|r Detén a los agresores
	>>|c99ffff99OR|r La misericordia de La Luz
	.dailyturnin 14076,14090,14112 >>Entrega la misión Breakfast of Campeones
	>>|c99ffff99OR|r Gormok quiere a sus snobolds
	>>|c99ffff99OR|r What Do You Alimentar a Yeti, Anyway?
	.goto Icecrown,76.26,19.62
	.target Narasi Snowdawn
	.target Savinia Loresong
step
	+|cRXP_WARN_You have finished all Plateado Covenant Daily Quests for today! Recarga this Guiar tomorrow to continue them.|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneo
#name J_3.2AT_Sunreavers_Daily_Quests
#displayname |cRXP_ENEMY_3.2|r - Misiones diarias de Sunreavers
<< Horde

step
	#completewith next
	+|cRXP_WARN_La Fase 3 introduce las misiones diarias de Sunreavers|r
	>>Para acceder a las misiones diarias de Sunreavers, debes estar Exaltado con los |cRXP_WARN_Sunreavers|r y ser un |cRXP_ENEMY_Campeón|r, lo cual te otorga el logro:
	.achievement 3677,1
step
	>>Entra al Pabellón de los Sunreavers.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Girana la Ensangrentada|r y |cRXP_FRIENDLY_Tylos Correalba|r.
	.daily 14142 >>Acepta la misión Esta vez la has liado, Kul
	.daily 14143,14136,14140,14144 >>Acepta la misión Una ventaja
	>>|c99ffff99OR|r Rescate at Sea
	>>|c99ffff99OR|r Detén a los agresores
	>>|c99ffff99OR|r La misericordia de La Luz
	.daily 14092,14141,14145 >>Acepta la misión Desayuno de campeones
	>>|c99ffff99OR|r Gormok quiere sus Snobolds
	>>|c99ffff99OR|r ¿Qué tienes que alimentar a un Yeti, de todas formas?
	.goto Icecrown,76.09,24.08
	.target Girana the Blooded
	.target Tylos Dawnrunner
step
	.isOnQuest 14143
	>>Ve a Hrothgar's Aterrizando
	>>Despoja |cRXP_LOOT_Stolen Zancaalta Patitas|r del suelo o mata a los |cRXP_ENEMY_Kvaldir mobs|r.
	.complete 14143,1
	.goto Hrothgar's Landing,43.4,29.8
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14136
	>>Ve al barco de la Horda en Hrothgar's Aterrizando.
	>>Mata a los |cRXP_ENEMY_Kvaldir Berserkers|r y a los |cRXP_ENEMY_Kvaldir Harpooners|r.
	.complete 14136,1
	.complete 14136,2
	.goto Hrothgar's Landing,44.14,54.22
	.mob Kvaldir Berserker
	.mob Kvaldir Harpooner
step
	.isOnQuest 14080
	>>Ve a Hrothgar's Aterrizando
	>>Mata a los |cRXP_ENEMY_Kvaldir Reavers|r o a los |cRXP_ENEMY_Vinculador de bruma Kvaldir|r.
	.complete 14080,1
	.goto Hrothgar's Landing,48.65,32.64
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14144
	>>Ve a Hrothgar's Aterrizando
	>>Usa el |c99ffff99Confessor's Prayer Libro|r para realizar los últimos ritos a los |cRXP_FRIENDLY_Slain Tualiq Villagers|r.
	.complete 14144,1
	.use 46870
	.goto Hrothgar's Landing,51,30,10,0
	.goto Hrothgar's Landing,50.60,28.28,10,0
	.goto Hrothgar's Landing,51.84,26.61,10,0
	.goto Hrothgar's Landing,54.03,23.98,10,0
	.goto Hrothgar's Landing,55.65,25.20,10,0
	.goto Hrothgar's Landing,57.41,24.37,10,0
	.goto Hrothgar's Landing,57.10,21.39
	.target Slain Tualiq Villager
step
	.isOnQuest 14145
	#completewith next
	>>Despoja |cRXP_PICK_Fresh Cebo|r de los cubos en el barco de la Horda.
	.collect 47036,5
	.goto Icecrown,73.97,9.42
step
	.isOnQuest 14145
	>>Salta al agua y usa el |cRXP_PICK_Fresh Cebo|r.
	>>Mata a los |cRXP_ENEMY_Sharks|r para obtener |cRXP_LOOT_North Sea Tiburón Carne|r.
	.complete 14145,1
	.use 47036
step
	.isOnQuest 14142
	>>Mata a los |cRXP_ENEMY_Zelotes oscuros|r y a los |cRXP_ENEMY_Dark Ritualists|r para obtener |cRXP_PICK_Black Jaula Keys|r.
	>>Usa las llaves para liberar los |cRXP_FRIENDLY_Cautivo Aspirants|r de las jaulas.
	.collect 46895,5,14142,2,-1
    .complete 14142,2
	.goto Icecrown,65.17,22.19,15,0
	.goto Icecrown,64.66,21.74,15,0
	.goto Icecrown,63.04,21.32,15,0
	.goto Icecrown,61.42,20.74,15,0
	.goto Icecrown,60.25,21.08
	.mob Dark Zealot
	.mob Dark Ritualist
step
	.isOnQuest 14142
	>>Mata a los |cRXP_ENEMY_Zelotes oscuros|r y a los |cRXP_ENEMY_Dark Ritualists|r para obtener |cRXP_PICK_Black Jaula Keys|r.
	>>Libera al |cRXP_FRIENDLY_Kul el Temerario|r de su jaula.
    .complete 14142,1
	.goto Icecrown,60.82,23.15
step
	.isOnQuest 14092
	>>Ve a Las Cumbres Tormentosas
	>>Usa el |c99ffff99Sacudetierra Tambor|r junto a los montículos de nieve.
	>>Mata a los |cRXP_ENEMY_Profundos Jormungars|r que aparecen para obtener |cRXP_LOOT_Jormungar Huevo Sacs|r.
	.complete 14092,1
	.use 46893
	.goto The Storm Peaks,43.33,57.74
	.target Deep Jormungar
step
	.isOnQuest 14141
	>>Ve a Las Cumbres Tormentosas
	>>Usa la |c99ffff99Atarraya|r para capturar |cRXP_ENEMY_Velonieve Seguidores|r.
	.complete 14141,1
	.use 46885
	.goto The Storm Peaks,43.88,81.60
	.target Snowblind Follower
step
	>>Regresa al Sunreaver Pavilion
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Girana la Ensangrentada|r y |cRXP_FRIENDLY_Tylos Correalba|r.
	.dailyturnin 14142 >>Entrega la misión You've Really Done It This Tiempo, Kul
	.dailyturnin 14143,14136,14080,14144 >>Entrega la misión A Leg Up
	>>|c99ffff99OR|r Rescate at Sea
	>>|c99ffff99OR|r Detener The Aggressors
	>>|c99ffff99OR|r La piedad de la Luz
	.dailyturnin 14092,14141,14145 >>Entrega la misión Breakfast of Campeones
	>>|c99ffff99OR|r Gormok quiere sus Snobolds
	>>|c99ffff99OR|r ¿Qué tienes que alimentar a un Yeti, de todas formas?
	.goto Icecrown,76.09,24.08
	.target Girana the Blooded
	.target Tylos Dawnrunner
step
	+|cRXP_WARN_¡Has completado todas las Sunreaver Daily Quests de hoy! Recarga esta guía mañana para continuarlas.|r
]])
