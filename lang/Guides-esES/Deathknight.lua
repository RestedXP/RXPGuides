if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _, class = UnitClass("player")
if class ~= "DEATHKNIGHT" then return end

RXPGuides.RegisterGuide([[
#version 6
#wotlk
#cata
#mop
<< DK
#group RestedXP Inicio del Caballero de la Muerte
#next RestedXP Alianza 60-70\59-61 Península del Fuego Infernal << Alliance wotlk
#next RestedXP Horda 60-70\59-61 Península del Fuego Infernal << Horde wotlk
#next RXP Cataclismo 60-80 (H)\59-61 Península del Fuego Infernal << Horde cata
#next RXP Cataclismo 60-80 (A)\59-61 Península del Fuego Infernal << Alliance cata
#next RXP MoP 60-80 (H)\59-61 Península del Fuego Infernal << Horde !wotlk !cata
#next RXP MoP 60-80 (A)\59-61 Península del Fuego Infernal << Alliance !wotlk !cata
#defaultfor DK
#name 55-58 El Enclave Escarlata

step
    .goto 124,51.345,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Exánime|r
    .target El Rey Exánime
    .accept 12593 >>Acepta la misión Al servicio del Rey Exánime
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instructor Razuvious|r |cRXP_WARN_patrols slightly|r
    .turnin 12593 >>Entrega la misión Al servicio del Rey Exánime
    .target Instructor Razuvious
    .accept 12619 >>Acepta la misión La hojarruna blasonada
step
    #loop
    .goto 124,47.811,27.771,10,0
    .goto 124,46.8,29.1,40,0
    .goto 124,48.1,27.9,40,0
    .goto 124,49.2,26.5,40,0
    .goto 124,48.1,27.9,40,0
	>>Despoja la |T135410:0|t[|cRXP_LOOT_Espada desgastada por la batalla|r] de uno de los soportes de armas. Tiene varios puntos de generación alrededor de los muros
    .collect 38607,1,12619,1 --Battle-Worn Sword (1)
step
    .isOnQuest 12619
    .goto 124,47.9,27.6
    .cast 51769 >> |cRXP_WARN_Canaliza la|r |T135410:0|t[|cRXP_LOOT_Espada desgastada por la batalla|r] |cRXP_WARN_en la|r |cRXP_PICK_Forja de runas|r
    .timer 8,Engalanar hojarruna RP
	.use 38607
    .complete 12619,1 --Runebladed Sword (1)
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instructor Razuvious|r |cRXP_WARN_patrols slightly|r
    .turnin 12619 >>Entrega la misión La hojarruna blasonada
    .target Instructor Razuvious
    .accept 12842 >>Acepta la misión Forja de runas: preparativos para la batalla
step
    .goto 124,47.9,27.5
    >>|cRXP_WARN_Ve a la |cRXP_PICK_Forja de runas|r de nuevo|r
    >>|cRXP_WARN_En tu libro de hechizos (predeterminado: P) haz clic en|r |T237523:0|t[Forja de runas]
    >>|cRXP_WARN_Graba tu|r |T135335:0|t[|cFF0070FFHoja de alma rúnica|r] |cRXP_WARN_con|r |T136130:0|t[Runa de glaciar de ceniza]
    .complete 12842,1 --Weapon emblazoned (1)
step
    #optional
    #completewith next
    .equip 16,38707 >> |cRXP_WARN_Equípate la|r |T135335:0|t[|cFF0070FFHoja de alma rúnica|r]
    .use 38707
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instructor Razuvious|r |cRXP_WARN_patrols slightly|r
    .turnin 12842 >>Entrega la misión Forja de runas: preparativos para la batalla
    .target Instructor Razuvious
    .accept 12848 >>Acepta la misión El hambre sin fin
step
    #optional
    .isOnQuest 12848
    .equip 16,38707 >> |cRXP_WARN_Equípate la|r |T135335:0|t[|cFF0070FFHoja de alma rúnica|r]
    .use 38707
step
    #completewith next
    .cast 54669 >> Haz clic en una de las |cRXP_PICK_Prisiones de almas de Acherus|r a lo largo de la pared interior central para liberar a un |cRXP_ENEMY_Iniciado indigno|r
    .timer 17,Iniciado indigno RP
step
    .goto 124,48.4,29.0
    >>Mata al |cRXP_ENEMY_Iniciado indigno|r después del RP corto
    .complete 12848,1 --Unworthy Initiate dominated (1)
    .mob Unworthy Initiate
step
    #loop
    .goto 124,49.453,28.174,15,0
    .goto 124,48.214,28.301,15,0
    .goto 124,47.714,29.756,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Instructor Razuvious|r
    >>|cRXP_FRIENDLY_Instructor Razuvious|r |cRXP_WARN_patrols slightly|r
    .turnin 12848 >>Entrega la misión El hambre sin fin
    .target Instructor Razuvious
    .accept 12636 >>Acepta la misión El ojo de Acherus
step << wotlk
    .isOnQuest 12636
    .goto 124,48.660,32.765
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alquimista Karloff|r
    >>|cRXP_BUY_Compra cuatro|r |T133849:0|t[Polvo de cadáver] |cRXP_WARN_de él|r
    .collect 37201,4 --Corpse Dust (4)
    .target Alchemist Karloff
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Exánime|r
    .target El Rey Exánime
    .turnin 12636 >>Entrega la misión El ojo de Acherus
    .accept 12641 >>Acepta la misión La muerte viene de arriba
step
    .isOnQuest 12641
    .goto 124,51.062,36.310,-1
    .goto 124,52.130,35.220,-1
    .aura 51852 >> Haz clic en un |cRXP_PICK_Mecanismo de control del Ojo de Acherus|r
step
    .goto 124,61.42,60.12,0
	>>|cRXP_WARN_Lanza|r |T136158:0|t[Sifón de Acherus] (1) |cRXP_WARN_en la Herrería de Nuevo Ávalon|r
    >>|cRXP_WARN_Evita al|r |cRXP_ENEMY_Cruzado Escarlata|r |cRXP_WARN_a toda costa. Lanzar|r |T136119:0|t[Invocar necrófagos] (2) |cRXP_WARN_también puede servir de pequeña distracción|r
    >>|cFFFF0000No hay flecha para este paso. La ubicación del edificio está marcada en tu mapa. El edificio también tiene un gran ícono rojo de Marca del cazador|r
    .complete 12641,1 --New Avalon Forge Analyzed (1)
step
    .goto 124,61.7,68.2,0
	>>|cRXP_WARN_Lanza|r |T136158:0|t[Sifón de Acherus] (1) |cRXP_WARN_en Bastión Escarlata|r
    >>|cRXP_WARN_Evita al|r |cRXP_ENEMY_Cruzado Escarlata|r |cRXP_WARN_a toda costa. Lanzar|r |T136119:0|t[Invocar necrófagos] (2) |cRXP_WARN_también puede servir de pequeña distracción|r
    >>|cFFFF0000No hay flecha para este paso. La ubicación del edificio está marcada en tu mapa. El edificio también tiene un gran ícono rojo de Marca del cazador|r
    .complete 12641,3 --Scarlet Hold Analyzed (1)
step
    .goto 124,53.4,70.7,0
	>>|cRXP_WARN_Lanza|r |T136158:0|t[Sifón de Acherus] (1) |cRXP_WARN_en el Ayuntamiento de Nuevo Ávalon|r
    >>|cRXP_WARN_Evita al|r |cRXP_ENEMY_Cruzado Escarlata|r |cRXP_WARN_a toda costa. Lanzar|r |T136119:0|t[Invocar necrófagos] (2) |cRXP_WARN_también puede servir de pequeña distracción|r
    >>|cFFFF0000No hay flecha para este paso. La ubicación del edificio está marcada en tu mapa. El edificio también tiene un gran ícono rojo de Marca del cazador|r
    .complete 12641,2 --New Avalon Town Hall Analyzed (1)
step
    .goto 124,52.2,80.7,0
	>>|cRXP_WARN_Lanza|r |T136158:0|t[Sifón de Acherus] (1) |cRXP_WARN_en la Capilla de la Llama Carmesí|r
    >>|cRXP_WARN_Evita al|r |cRXP_ENEMY_Cruzado Escarlata|r |cRXP_WARN_a toda costa. Lanzar|r |T136119:0|t[Invocar necrófagos] (2) |cRXP_WARN_también puede servir de pequeña distracción|r
    >>|cFFFF0000No hay flecha para este paso. La ubicación del edificio está marcada en tu mapa. El edificio también tiene un gran ícono rojo de Marca del cazador|r
    .complete 12641,4 --Chapel of the Crimson Flame Analyzed (1)
step
    #optional
	#completewith next
 	.aura -51852 >> |cRXP_WARN_Presiona Escapar o|r |T136190:0|t[Devolver el Ojo de Acherus] (5) |cRXP_WARN_para regresar al Bastión Ébano|r
step
    .goto 124,51.350,35.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Exánime|r
    .target El Rey Exánime
    .turnin 12641 >>Entrega la misión La muerte viene de arriba
    .accept 12657 >>Acepta la misión El poder de la Plaga
step
    #completewith next
    .goto 124,50.516,33.404,5 >> Pisa el teletransportador morado para viajar al nivel inferior
step
    .goto 124,48.872,29.747
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12657 >>Entrega la misión El poder de la Plaga
    .accept 12850 >>Acepta la misión Preséntate ante el comandante de la Plaga Thalanor
step
    .goto 124,51.055,34.473
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Comandante de la Plaga Thalanor|r
    >>|cRXP_FRIENDLY_Comandante de la Plaga Thalanor|r |cRXP_WARN_patrulla ligeramente|r
    .target Scourge Commander Thalanor
    .turnin 12850 >>Entrega la misión Preséntate ante el comandante de la Plaga Thalanor
    .accept 12670 >>Acepta la misión La cosecha Escarlata
step
	#completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Monta al |cRXP_FRIENDLY_Grifo de la Plaga|r para volar a la Brecha de la Muerte
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Valanar|r
    .target Prince Valanar
    .turnin 12670 >>Entrega la misión La cosecha Escarlata
    .accept 12678 >>Acepta la misión Cuando llegue el caos, deja que el sufrimiento tome las riendas
step
    #optional
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salanar el Jinete|r
    >>|cRXP_FRIENDLY_Salanar el Jinete|r |cRXP_WARN_patrols Muerte's Brecha|r
    .accept 12680 >>Acepta la misión El gran robo de Palomino
    .target Salanar the Horseman
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Olrun la Clamabatallas|r
    .accept 12733 >>Acepta la misión Desafío de la Muerte
step
    #loop
    .goto 124,53.20,33.45,30,0
    .goto 124,51.69,35.67,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salanar el Jinete|r
    >>|cRXP_FRIENDLY_Salanar el Jinete|r |cRXP_WARN_patrols Muerte's Brecha|r
    .accept 12680 >>Acepta la misión El gran robo de Palomino
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orithos el Ensombrecedor del cielo|r
    >>|cRXP_FRIENDLY_Orithos el Ensombrecedor del cielo|r |cRXP_WARN_patrols Muerte's Brecha|r
    .accept 12679 >>Acepta la misión Esta noche cenamos en Villa Refugio
step
	#completewith next
	>>Mata a los |cRXP_ENEMY_Cruzado Escarlata|r y a los |cRXP_ENEMY_Citizens of Havenshire|r. Despoja las |cRXP_PICK_Flechas de saronita|r en el suelo
    >>|cRXP_WARN_No te desvíes de tu camino para completar esto ahora|r
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
	.isOnQuest 12680
    .goto 124,57.4,42.3
	.vehicle >>Monta a la |cRXP_FRIENDLY_Yegua de Villa Refugio|r o al |cRXP_FRIENDLY_Semental de Villa Refugio|r. Montar back to Muerte's Brecha
    >>|cRXP_WARN_Evita al |cRXP_ENEMY_Maestro de establos Kitrik|r que patrulla el área|r
    .target Havenshire Mare
    .target Havenshire Stallion
step
    #loop
    .goto 124,51.69,35.67,35,0
    .goto 124,53.20,33.45,35,0
	>>|cRXP_WARN_Ride back to Muerte's Brecha|r
    >>|cRXP_WARN_Lanza|r |T132226:0|t[Galope] (2) |cRXP_WARN_para aumentar la velocidad de movimiento|r
    >>|cRXP_WARN_Lanza|r |T132261:0|t[Entregar caballo robado] (1) |cRXP_WARN_una vez en|r |cRXP_FRIENDLY_Salanar el Jinete|r
    >>|cRXP_FRIENDLY_Salanar el Jinete|r |cRXP_WARN_patrols Muerte's Brecha|r
    .complete 12680,1 --Horse Successfully Stolen (1)
    .target Salanar the Horseman
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salanar el Jinete|r
    .turnin 12680 >>Entrega la misión El gran robo de Palomino
    .target Salanar the Horseman
    .accept 12687 >>Acepta la misión En el Reino de las Sombras
step
    .isOnQuest 12687
    .goto 124,54.6,46.4
    .vehicle >> Mata a |cRXP_ENEMY_Jinete oscuro de Acherus|r. Monta el |cRXP_FRIENDLY_Destrero de la muerte de Acherus|r después
    .mob Dark Rider of Acherus
    .target Acherus Deathcharger
step
    #optional
    .isOnQuest 12687
    .goto 124,51.70,35.76,20 >> Regresa a Muerte's Brecha
step
    .goto 124,51.70,35.76
	>>|cRXP_WARN_Lanza|r |T136129:0|t[Llamada de jinete] (1) |cRXP_WARN_once at Muerte's Brecha. Esperar out the short RP|r
    .complete 12687,1 --The Horseman's Challenge (1)
step
    #loop
    .goto 124,51.69,35.67,30,0
    .goto 124,53.20,33.45,30,0
    .target Salanar the Horseman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salanar el Jinete|r
    .turnin 12687 >>Entrega la misión En el Reino de las Sombras
step
	#completewith DuelDK
	.cast 48778 >> |cRXP_WARN_Ya tienes tu|r |T237534:0|t[Destrero de la muerte de Acherus]|cRXP_WARN_. Asegúrate de agregarlo a tus barras de acción desde tu panel de Monturas (Predeterminado: Desfasaje+P)|r
step
    #loop
    .goto 124,55.9,38.8,50,0
    .goto 124,53.9,45.6,50,0
    .goto 124,56.1,51.9,50,0
	>>Mata a los |cRXP_ENEMY_Cruzado Escarlata|r y a los |cRXP_ENEMY_Citizens of Havenshire|r. Despoja las |cRXP_PICK_Flechas de saronita|r en el suelo
	.complete 12678,1 --Scarlet Crusader (10)
    .mob +Scarlet Peasant
    .mob +Scarlet Infantryman
    .mob +Scarlet Medic
    .mob +Scarlet Captain
    .mob +Scarlet Miner
    .complete 12678,2 --Citizen of Havenshire (10)
    .mob +Citizen of Havenshire
    .complete 12679,1 --Saronite Arrow (15)
step
    #label DuelDK
	#loop
    .goto 124,51.9,35.4,30,0
    .goto 124,51.0,33.6,30,0
    .goto 124,53.8,30.9,30,0
    >>Habla con |cRXP_FRIENDLY_Death Caballero Initiates|r y derrótalos en un duelo
	>>|cRXP_WARN_No salgas del rango de duelo de 30 yardas|r
    .complete 12733,1 --Death Knights defeated in a duel (5)
	.skipgossip
    .target Death Knight Initiate
    .mob Death Knight Initiate
step
    #loop
    .goto 124,53.7,36.3,50,0
    .goto 124,52.1,38.2,30,0
    .target Orithos the Sky Darkener
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orithos el Ensombrecedor del cielo|r
    >>|cRXP_FRIENDLY_Orithos el Ensombrecedor del cielo|r |cRXP_WARN_patrols Muerte's Brecha|r
    .turnin 12679 >>Entrega la misión Esta noche cenamos en Villa Refugio
step
    .goto 124,54.5,34.2
    .target Olrun the Battlecaller
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Olrun la Clamabatallas|r
    .turnin 12733 >>Entrega la misión Desafío de la Muerte
step
    .goto 124,52.275,33.969
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Valanar|r
    .target Prince Valanar
    .turnin 12678 >>Entrega la misión Cuando llegue el caos, deja que el sufrimiento tome las riendas
    .accept 12697 >>Acepta la misión Gothik el Cosechador
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothik el Cosechador|r
    .target Gothik the Harvester
    .turnin 12697 >>Entrega la misión Gothik el Cosechador
    .accept 12698 >>Acepta la misión La ofrenda que sigue dando
step
    .goto 124,58.396,30.900,20,0
    .goto 124,59.904,31.680,20,0
    .goto 124,60.925,29.682,60,0
    .goto 124,54.1,34.9
    >>|cRXP_WARN_Enter the Havenshire Mina|r
    .use 39253 >> |cRXP_WARN_Usa la|r |T133882:0|t[Ofrenda del Cosechador] |cRXP_WARN_en los |cRXP_ENEMY_Scarlet Miners|r mientras estén fuera de combate. NO los mates ni los ataques|r
    >>|cRXP_WARN_Una vez que tengas 5 |cRXP_FRIENDLY_Scarlet Necrófagos|r siguiéndote, vuelve a|r |cRXP_ENEMY_Gothik el Cosechador|r
    >>|cRXP_WARN_Mata a los |cRXP_ENEMY_Scarlet Ghosts|r con los que estés peleando|r
    .complete 12698,1 --Scarlet Ghoul Returned (5)
step
    .goto 124,54.081,35.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothik el Cosechador|r
    .target Gothik the Harvester
    .turnin 12698 >>Entrega la misión La ofrenda que sigue dando
    .accept 12700 >>Acepta la misión Un ataque de oportunidad
step
    .goto 124,52.273,33.967
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Valanar|r
    .turnin 12700 >>Entrega la misión Un ataque de oportunidad
    .accept 12701 >>Acepta la misión Masacre en la Punta de la Luz
    .target Prince Valanar
step
    .isOnQuest 12701
    #label Follow1
    #completewith ScarletCannon
    .goto 124,61.597,32.417,35 >>|cRXP_WARN_Sigue la flecha al Scarlet Ship. Baja por la pequeña colina|r
step
    .isOnQuest 12701
    #requires Follow1
    #completewith ScarletCannon
    .goto 124,65.376,32.933,35 >> |cRXP_WARN_Salta abajo de nuevo|r
step
    .isOnQuest 12701
    #label ScarletCannon
    .goto 124,67.022,38.817,15,0
    .goto 124,67.706,39.023
    .vehicle >> |cRXP_WARN_Sube corriendo por la rampa al Scarlet Ship. Entra en el |cRXP_PICK_Cañón Escarlata|r
    .target Scarlet Cannon
step
	>>|cRXP_WARN_Lanza|r |T136186:0|t[Cañón Escarlata] (1) |cRXP_WARN_para matar al|r |cRXP_ENEMY_Scarlet Fleet Defensor|r
    >>|cRXP_WARN_Lanza|r |T136099:0|t[Pulso electromagnético] (2) |cRXP_WARN_si los |cRXP_ENEMY_Scarlet Fleet Defensor|r empiezan a atacar tu cañón desde cerca|r
    .complete 12701,1 --Scarlet Defender (100)
    .mob Scarlet Fleet Defender
step
    .isOnQuest 12701
    .cast vehicle,52588,52589 >>|cRXP_WARN_Lanza|r |T135766:0|t[Escapar del grifo esquelético] (5) |cRXP_WARN_para volver a Muerte's Brecha|r
    .timer 70,Vuelo a la Brecha de la Muerte
step
    .goto 124,52.272,33.965
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Valanar|r
    .target Prince Valanar
    .turnin 12701 >>Entrega la misión Masacre en la Punta de la Luz
    .accept 12706 >>Acepta la misión ¡Victoria en la Brecha de la Muerte!
step
    #completewith next
    .goto 124,53.094,32.473
    .fly >> Montar a |cRXP_FRIENDLY_Grifo de la Plaga|r para volver a Acherus
    .skipgossip
    .target Scourge Gryphon
step
    .goto 124,48.873,29.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12706 >>Entrega la misión ¡Victoria en la Brecha de la Muerte!
    .accept 12714 >>Acepta la misión La voluntad del Rey Exánime
step
    .goto 124,47.472,26.550
    .target Lord Thorval
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Thorval|r
    .accept 12849 >>Acepta la misión El poder de la sangre, la escarcha y lo profano
	.turnin 12849 >>Entrega la misión El poder de la sangre, la escarcha y lo profano
	.trainer >> Aprende tus hechizos de clase << wotlk/cata
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Monta a |cRXP_FRIENDLY_Grifo de la Plaga|r para volar a la Brecha de la Muerte
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.459,36.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Valanar|r
    .target Prince Valanar
    .turnin 12714 >>Entrega la misión La voluntad del Rey Exánime
    .accept 12715 >>Acepta la misión La Cripta de los Recuerdos
step << wotlk
    .isOnQuest 12715
    .goto 124,52.896,35.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hargus el Sucio <Suministros>|r
    >>|cRXP_BUY_Compra 20|r |T133849:0|t[Cadáver Polvo] |cRXP_WARN_de él|r
    .collect 37201,20 --Corpse Dust (20)
    .target Hargus the Geist
step
    .goto 124,55.270,46.179
	>>Haz clic en el |cRXP_PICK_Correo Abandonado|r
    >>|cRXP_WARN_También puedes usar este |cRXP_PICK_Buzón|r si quieres enviarte algunos objetos|r
    .turnin 12711 >>Entrega la misión Mensaje abandonado
step
    .goto 124,55.900,52.389
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Noth el Pesteador|r
    .target Noth the Plaguebringer
    .accept 12716 >>Acepta la misión La solicitud del Pesteador
step
    #completewith LTTS
    .goto 124,54.007,58.135,20 >> Viaja hacia la Cripta del Recuerdo
step
    .goto 124,54.299,57.302
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Keleseth|r
    .target Prince Keleseth
    .turnin 12715 >>Entrega la misión La Cripta de los Recuerdos
    .accept 12719 >>Acepta la misión No hay escapatoria
step
    #label LTTS
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barón Osahendido|r
    .target Baron Rivendare
    .accept 12722 >>Acepta la misión Corderos al matadero
step
	#completewith QuimbyRegistry
	>>Mata a los |cRXP_ENEMY_Scarlet Cruzada|r y a los |cRXP_ENEMY_Citizens of Nuevo Ávalon|r. Despójalos para obtener |cRXP_LOOT_Calavera de cruzado|r
    >>|cRXP_WARN_No te desvíes de tu camino para completar esto ahora|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    #completewith next
    .goto 124,52.924,71.237,25 >> Entra en el Ayuntamiento de Nuevo Ávalon
step
    #label QuimbyRegistry
	>>Mata a |cRXP_ENEMY_Alcalde Quimby|r. Despoja la |cRXP_PICK_New Ávalon Registry|r en la mesa
    .complete 12719,1 --Mayor Quimby (1)
    .mob +Mayor Quimby
    .goto 124,52.243,71.152
    .complete 12719,2 --New Avalon Registry (1)
    .goto 124,52.462,71.010
step
    #completewith next
    .goto 124,54.007,58.135,20 >> Regresa a la Cripta del Recuerdo
step
    .goto 124,54.301,57.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Keleseth|r
    .target Prince Keleseth
    .turnin 12719 >>Entrega la misión No hay escapatoria
    .accept 12720 >>Acepta la misión Cómo ganar amigos e influenciar a los enemigos
step
    #optional
    .isQuestComplete 12722
    .goto 124,54.672,57.440
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barón Osahendido|r
    .target Baron Rivendare
    .turnin 12722 >>Entrega la misión Corderos al matadero
step
	#completewith Dawn
	>>Mata a los |cRXP_ENEMY_Scarlet Cruzada|r y a los |cRXP_ENEMY_Citizens of Nuevo Ávalon|r. Despójalos para obtener |cRXP_LOOT_Calavera de cruzado|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,61.387,60.722,20,0
    .goto 124,62.065,60.247
	>>Despoja la |cRXP_PICK_Cadena de hierro|r en la pared dentro de la Herrería
    .complete 12716,2 --Iron Chain (1)
step
    #completewith next
    .goto 124,57.676,64.336,15 >> Entra en la posada
step
    .goto 124,57.847,62.617,10,0
    .goto 124,57.521,61.883,10,0
    .goto 124,57.856,61.842
	>>Despoja el |cRXP_PICK_Caldero vacío|r en el sótano
    .complete 12716,1 --Empty Cauldron (1)
step
    .isOnQuest 12720
	.use 39418 >> |cRXP_WARN_Abre la|r |T132595:0|t[Caja decorada con joyas] |cRXP_WARN_para 2|r |T135271:0|t[Persuasora de Keleseth]
    .collect 39371,2 -- Keleseth's Persuader
step
    .isOnQuest 12720
    .equip 16,39371 >> |cRXP_WARN_Equipa|r |T135271:0|t[Persuasora de Keleseth] |cRXP_WARN_en tu mano principal|r
    .equip 17,39371 >> |cRXP_WARN_Equipa|r |T135271:0|t[Persuasora de Keleseth] |cRXP_WARN_en tu mano secundaria|r
    .use 39371
step
	#label Dawn
    .goto 124,62.4,68.2
	>>|cRXP_WARN_Ataca a cualquiera de los |cRXP_ENEMY_Scarlet Cruzada|r hasta que se complete la misión. Esto puede tardar un poco si tienes mala suerte.|r
    >>|cRXP_WARN_Debes tener|r |T135271:0|t[Persuasora de Keleseth] |cRXP_WARN_equipada para completar el objetivo|r
    .complete 12720,1 --"Crimson Dawn" Revealed (1)
step
    #optional
    .isOnQuest 12720
    .equip 16,38707 >> |cRXP_WARN_Equípate la|r |T135335:0|t[|cFF0070FFHoja de alma rúnica|r]
    .use 38707
step
    #loop
    .goto 124,53.8,71.6,60,0
    .goto 124,54.6,63.8,60,0
    .goto 124,60.6,63.8,60,0
    .goto 124,57.0,68.6,60,0
	>>Mata a los |cRXP_ENEMY_Scarlet Cruzada|r y a los |cRXP_ENEMY_Citizens of Nuevo Ávalon|r. Despójalos para obtener |cRXP_LOOT_Calavera de cruzado|r
    >>|cRXP_ENEMY_Citizens of Nuevo Ávalon|r |cRXP_WARN_se pueden encontrar dentro de los edificios|r
    .complete 12722,1 --Scarlet Crusade Soldier (10)
    .mob +Scarlet Marksman
    .mob +Scarlet Crusader
    .mob +Scarlet Commander
    .mob +Scarlet Preacher
    .complete 12722,2 --Citizen of New Avalon (15)
    .mob +Citizen of New Avalon
    .complete 12716,3 --Crusader Skull (10)
step
    .goto 124,55.894,52.395
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Noth the Pesteador|r
    .target Noth the Plaguebringer
    .turnin 12716 >>Entrega la misión La solicitud del Pesteador
    .accept 12717 >>Acepta la misión Brebaje especial de Noth
step
    .goto 124,56.157,52.008
    >>Haz clic en el |cRXP_PICK_Caldero de peste|r
    .turnin 12717 >>Entrega la misión Brebaje especial de Noth
step
    #optional
    .goto 124,56.157,52.008
    >>Haz clic en el |cRXP_PICK_Caldero de peste|r de nuevo
    .turnin 12718 >>Entrega más calaveras para el brebaje
    .itemcount 39328,20
step
    #completewith BSL
    .goto 124,54.007,58.135,20 >> Regresa a la Cripta del Recuerdo
step
    .goto 124,54.678,57.437
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barón Osahendido|r
    .target Baron Rivendare
    .turnin 12722 >>Entrega la misión Corderos al matadero
step
    #label BSL
    .goto 124,54.299,57.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Keleseth|r
    .target Prince Keleseth
    .turnin 12720 >>Entrega la misión Cómo ganar amigos e influenciar a los enemigos
    .accept 12723 >>Acepta la misión Detrás de las líneas Escarlata
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Viaja a Scarlet Tavern. Habla con |cRXP_FRIENDLY_Orbaz Malasangre|r y con |cRXP_FRIENDLY_Thassarian|r en el piso de arriba
step
    .goto 124,56.249,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orbaz Malasangre|r en el piso de arriba
    .target Orbaz Bloodbane
    .turnin 12723 >>Entrega la misión Detrás de las líneas Escarlata
    .accept 12724 >>Acepta la misión El camino del cruzado honrado
step
    .goto 124,56.266,80.161
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thassarian|r en el piso de arriba
    .target Thassarian
    .accept 12725 >>Acepta la misión Hermanos en la muerte
step
    #completewith next
    .goto 124,61.752,68.157,20,0
    .goto 124,62.876,68.650,10 >> Entra en Bastión Escarlata Keep. Baja al sótano
    >>|cRXP_WARN_NO liberes tu espíritu si mueres. Una |cRXP_FRIENDLY_Dama de batalla Val'kyr|r te resucitará|r
step
    .goto 124,62.954,67.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Koltira Tejemuerte|r en el sótano
    .target Koltira Deathweaver
    .turnin 12725 >>Entrega la misión Hermanos en la muerte
    .accept 12727 >>Acepta la misión Estallido sangriento
step
	#completewith next
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
	>>|cRXP_WARN_No defiendas a|r |cRXP_FRIENDLY_Koltira Tejemuerte|r
    >>Ve al piso superior. Despoja la |cRXP_PICK_New Ávalon Patrol Schedule|r en la mesa
    .complete 12724,1 --New Avalon Patrol Schedule (1)
  step
    .goto 124,62.898,68.109
	>>Regresa a |cRXP_FRIENDLY_Koltira Tejemuerte|r en el sótano
    >>Mata a |cRXP_ENEMY_Valroth|r. Despoja los |cRXP_PICK_Restos del gran inquisidor Valroth|r en el suelo para obtener |cRXP_LOOT_Cabeza de Valroth|r
	>>|cRXP_WARN_Es posible que tengas que matar los adds que atacan a |cRXP_FRIENDLY_Koltira Tejemuerte|r mientras esperas a que |cRXP_ENEMY_Valroth|r aparezca|r
    >>|cRXP_WARN_Si el Roleplay ha terminado, habla con |cRXP_FRIENDLY_Koltira Tejemuerte|r de nuevo para iniciarlo|r
    >>|cRXP_WARN_Mantente en la|r |T136178:0|t[Zona antimagia] |cRXP_WARN_para reducir el daño de hechizos|r
    .complete 12727,1 --Valroth's Head (1)
    .skipgossip
step
    .goto 124,63.1,68.2,10,0
    .goto 124,62.7,68.6,10,0
    .goto 124,62.983,68.309
    >>Ve al piso superior. Despoja la |cRXP_PICK_New Ávalon Patrol Schedule|r en la mesa
    .complete 12724,1 --New Avalon Patrol Schedule (1)
step
    #optional
    .goto 124,56.157,52.008
    >>Haz clic en el |cRXP_PICK_Caldero de peste|r
    .turnin 12718 >>Entrega más calaveras para el brebaje
    .itemcount 39328,20
step
    #completewith ACFV
    .goto 124,56.150,79.986,15 >> Regresa a Scarlet Tavern. Habla con |cRXP_FRIENDLY_Orbaz Malasangre|r y con |cRXP_FRIENDLY_Thassarian|r en el piso de arriba
step
	#completewith ACFV
	.destroy 39328 >> Elimina cualquier |T133730:0|t[Calavera de cruzado] que tengas
step
    .goto 124,56.254,79.845
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orbaz Malasangre|r en el piso de arriba
    .target Orbaz Bloodbane
    .turnin 12724 >>Entrega la misión El camino del cruzado honrado
step
    #label ACFV
    .goto 124,56.266,80.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thassarian|r en el piso de arriba
    .target Thassarian
    .turnin 12727 >>Entrega la misión Estallido sangriento
    .accept 12738 >>Acepta la misión ¡Un grito de venganza!
step
    .goto 124,52.6,80.7,40,0
    .goto 124,53.1,82.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caballero Comandante Puño de Peste|r
    >>|cRXP_FRIENDLY_Caballero Comandante Puño de Peste|r |cRXP_WARN_patrulla la Capilla|r
    .turnin 12738 >>Entrega la misión ¡Un grito de venganza!
    .target Knight Commander Plaguefist
    .accept 12748 >>Acepta la misión Una sorpresa especial << Orc
    .accept 12739 >>Acepta la misión Una sorpresa especial << Tauren
    .accept 12742 >>Acepta la misión Una sorpresa especial << Human
    .accept 12743 >>Acepta la misión Una sorpresa especial << NightElf
    .accept 12744 >>Acepta la misión Una sorpresa especial << Dwarf
    .accept 12745 >>Acepta la misión Una sorpresa especial << Gnome
    .accept 12746 >>Acepta la misión Una sorpresa especial << Draenei
    .accept 12747 >>Acepta la misión Una sorpresa especial << BloodElf
    .accept 12749 >>Acepta la misión Una sorpresa especial << Troll
    .accept 12750 >>Acepta la misión Una sorpresa especial << Undead
    .accept 28649 >>Acepta la misión Una sorpresa especial << Worgen
    .accept 28650 >>Acepta la misión Una sorpresa especial << Goblin
step << Orc
    .goto 124,53.771,83.274
	>>Mata a |cRXP_ENEMY_Kug Quijahierro|r después del roleplay corto
    .complete 12748,1 --Kug Ironjaw (1)
    .mob Kug Ironjaw
step << Tauren
    .goto 124,54.505,83.856
	>>Mata a |cRXP_ENEMY_Malar Cuernobravo|r después del roleplay corto
    .complete 12739,1 -- Malar Bravehorn (1)
    .mob Malar Bravehorn
step << Human
    .goto 124,53.536,83.785
	>>Mata a |cRXP_ENEMY_Ellen Puentecanto|r después del roleplay corto
    .complete 12742,1 --|Ellen Stanbridge slain: 1/1
    .mob Ellen Stanbridge
step << NightElf
    .goto 124,54.246,83.908
	>>Mata a |cRXP_ENEMY_Yazmina Cuerno de Roble|r después del roleplay corto
    .complete 12743,1 -- Yazmina Oakenthorn (1)
    .mob Yazmina Oakenthorn
step << Dwarf
    .goto 124,54.018,83.285
	>>Mata a |cRXP_ENEMY_Donovan Pulhelado|r después del roleplay corto
    .complete 12744,1 --Donovan Pulfrost (1)
    .mob Donovan Pulfrost
step << Gnome
    .goto 124,53.928,83.803
	>>Mata a |cRXP_ENEMY_Goby Pimpampum|r después del roleplay corto
    .complete 12745,1 -- Goby Blastenheimer  (1)
    .mob Goby Blastenheimer
step << Draenei
    .goto 124,54.538,83.423
	>>Mata a |cRXP_ENEMY_Valok el Honrado|r después del roleplay corto
    .complete 12746,1 -- Valok the Righteous (1)
    .mob Valok the Righteous
step << BloodElf
    .goto 124,54.285,83.303
	>>Mata a |cRXP_ENEMY_Lady Eonys|r después del roleplay corto
    .complete 12747,1 --Lady Eonys (1)
    .mob Lady Eonys
step << Troll
    .goto 124,53.801,83.756
	>>Mata a |cRXP_ENEMY_Iggy Colmilloscuro|r después del roleplay corto
    .complete 12749,1 --Iggy Darktusk(1)
    .mob Iggy Darktusk
step << Undead
    .goto 124,53.542,83.304
	>>Mata a |cRXP_ENEMY_Antoine Brack|r después del roleplay corto
    .complete 12750,1 -- Antoine Brack (1)
    .mob Antoine Brack
step << Worgen
    .goto 124,54.144,83.282
	>>Mata a |cRXP_ENEMY_Lord Harford|r después del roleplay corto
    .complete 28649,1 -- Lord Harford (1)
    .mob Lord Harford
step << Goblin
    .goto 124,54.113,83.753
	>>Mata a |cRXP_ENEMY_Gally Tiñebulto|r después del roleplay corto
    .complete 28650,1 -- Gally Lumpstain (1)
    .mob Gally Lumpstain
step
    .goto 124,53.1,82.1,40,0
    .goto 124,52.6,80.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caballero Comandante Puño de Peste|r
    >>|cRXP_FRIENDLY_Caballero Comandante Puño de Peste|r |cRXP_WARN_patrulla la Capilla|r
    .turnin 12748 >>Entrega la misión Una sorpresa especial << Orc
    .turnin 12739 >>Entrega la misión Una sorpresa especial << Tauren
    .turnin 12742 >>Entrega la misión Una sorpresa especial << Human
    .turnin 12743 >>Entrega la misión Una sorpresa especial << Nightelf
    .turnin 12744 >>Entrega la misión Una sorpresa especial << Dwarf
    .turnin 12745 >>Entrega la misión Una sorpresa especial << Gnome
    .turnin 12746 >>Entrega la misión Una sorpresa especial << Draenei
    .turnin 12747 >>Entrega la misión Una sorpresa especial << Bloodelf
    .turnin 12749 >>Entrega la misión Una sorpresa especial << Troll
    .turnin 12750 >>Entrega la misión Una sorpresa especial << Undead
    .turnin 28649 >>Entrega la misión Una sorpresa especial << Worgen
    .turnin 28650 >>Entrega la misión Una sorpresa especial << Goblin
    .target Knight Commander Plaguefist
	.accept 12751 >>Acepta la misión Como volver a casa
step
    #completewith AATO
    .goto 124,56.150,79.986,15 >> Regresa a la Scarlet Tavern. Habla con |cRXP_FRIENDLY_Orbaz Malasangre|r y |cRXP_FRIENDLY_Thassarian|r arriba
step
    .goto 124,56.268,80.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thassarian|r
    .target Thassarian
    .turnin 12751 >>Entrega la misión Como volver a casa
step
    #label AATO
    .goto 124,56.251,79.847
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orbaz Malasangre|r
    .target Orbaz Bloodbane
    .accept 12754 >>Acepta la misión Emboscada en el mirador
step
    #completewith ScarletCourier
    .subzone 4360 >> Viaja al Scarlet Overlook
step
    #completewith ScarletCourier
    .cast 53061 >> |cRXP_WARN_Usa el|r |T136065:0|t[Refugio improvisado] |cRXP_WARN_en el Scarlet Overlook|r
    .use 39645
step
    #label ScarletCourier
    .goto 124,59.715,76.335
	.use 39645 >>Mata a |cRXP_ENEMY_Mensajero Escarlata|r. Despójalo para obtener |cRXP_LOOT_Pertenencias del mensajero Escarlata|r y |cRXP_LOOT_Mensaje del mensajero Escarlata|r
    .complete 12754,1 --Scarlet Courier's Belongings (1)
    .complete 12754,2 --Scarlet Courier's Message (1)
    .mob Scarlet Courier
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Regresa a la Scarlet Tavern. Habla con |cRXP_FRIENDLY_Orbaz Malasangre|r arriba
step
    .goto 124,56.253,79.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orbaz Malasangre|r arriba
    .target Orbaz Bloodbane
    .turnin 12754 >>Entrega la misión Emboscada en el mirador
    .accept 12755 >>Acepta la misión Una reunión con el destino
step
    .goto 124,65.663,83.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lynnia Abbendis|r
    .target High General Abbendis
    .turnin 12755 >>Entrega la misión Una reunión con el destino
    .accept 12756 >>Acepta la misión El Embate Escarlata aparece
step
    #completewith next
    .goto 124,56.150,79.986,15 >> Regresa a Scarlet Tavern. Habla con |cRXP_FRIENDLY_Orbaz Malasangre|r arriba
step
    .goto 124,56.251,79.846
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orbaz Malasangre|r arriba
    .target Orbaz Bloodbane
    .turnin 12756 >>Entrega la misión El Embate Escarlata aparece
    .accept 12757 >>Acepta la misión El ejército escarlata se acerca…
step
    #completewith next
    .goto 124,56.180,80.036
    .subzone 4281 >> |cRXP_WARN_Pasa por el |cRXP_PICK_Portal a Acherus|r detrás de|r |cRXP_FRIENDLY_Orbaz Malasangre|r
step
    .goto 124,48.872,29.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 12757 >>Entrega la misión El ejército escarlata se acerca…
    .accept 12778 >>Acepta la misión El apocalipsis escarlata
step << wotlk/cata
    .goto 124,46.697,31.934
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Amal'thazad|r
    .target Amal'thazad
    .trainer >> Aprende tus hechizos de clase
step
    #completewith next
    .goto 124,52.092,35.048,-1
    .goto 124,50.961,36.165,-1
    .fly >> Monta a |cRXP_FRIENDLY_Grifo de la Plaga|r para volar a la Brecha de la Muerte
    .target Scourge Gryphon
    .skipgossip
step
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Exánime|r
    .target El Rey Exánime
    .turnin 12778 >>Entrega la misión El apocalipsis escarlata
    .accept 12779 >>Acepta la misión Un final para todas las cosas…
step
	#completewith next
	.use 39700
	.vehicle >> |cRXP_WARN_Usa|r |T134228:0|t[Cuerno de Razaescarcha] |cRXP_WARN_para montar el|r |cRXP_FRIENDLY_Vencedor Razaescarcha|r
step
    #loop
    .goto 124,56.0,62.2,100,0
    .goto 124,55.4,64.8,100,0
    .goto 124,54.8,66.8,100,0
    .goto 124,54.6,69.9,100,0
    .goto 124,54.4,75.6,100,0
    .goto 124,57.0,74.8,100,0
    .goto 124,57.3,71.8,100,0
    .goto 124,60.0,72.2,100,0
    .goto 124,62.6,75.1,100,0
    .goto 124,59.5,66.1,100,0
    .goto 124,59.5,60.2,100,0
    >>|cRXP_WARN_Lanza|r |T135851:0|t[Descarga de muerte congelada] (1) |cRXP_WARN_para matar a los |cRXP_ENEMY_Scarlet Soldiers|r y para destruir los|r |cRXP_ENEMY_Scarlet Ballistas|r
    >>|cRXP_WARN_Lanza|r |T136217:0|t[Devorar humanoide] (3) |cRXP_WARN_sobre un |cRXP_ENEMY_Cruzado Escarlata|r para restaurar vida y maná|r
    .complete 12779,2 --Scarlet Ballista destroyed (10)
    .mob +Scarlet Ballista
    .complete 12779,1 --Scarlet Soldiers (150)
step
    #completewith TLKC
    .goto 124,53.575,36.865,30 >> Vuela a |cRXP_FRIENDLY_El Rey Exánime|r
step
    #completewith TLKC
    .exitvehicle >> |cRXP_WARN_Sal|r del |cRXP_FRIENDLY_Vencedor Razaescarcha|r
step
    #label TLKC
    .goto 124,53.575,36.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_El Rey Exánime|r
    .turnin 12779 >>Entrega la misión Un final para todas las cosas…
    .target El Rey Exánime
    .accept 12800 >>Acepta la misión La orden del Rey Exánime
step
    #completewith next
    .goto 124,49.3,28.7,45,0
    .goto 124,47.1,24.1,45,0
    .goto 124,39.430,21.142,70,0
    .goto 124,35.161,26.725,80 >> Viaja por el Paso Fétido hacia el Molino de Browman
step
    .goto 124,34.1,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Comandante de la Plaga Thalanor|r
    .turnin 12800 >>Entrega la misión La orden del Rey Exánime
    .target Scourge Commander Thalanor
    .accept 12801 >>Acepta la misión La luz del alba
step
	#completewith next
    .goto 124,34.441,31.107
	.gossipoption 93584 >> |cRXP_WARN_Habla con |cRXP_FRIENDLY_Alto señor Darion Mograine|r para comenzar el Roleplay|r
    >>|cRXP_WARN_Si no está de pie junto a |cRXP_FRIENDLY_Comandante de la Plaga Thalanor|r significa que la batalla está ocurriendo o en preparación. La información debería estar en la parte superior de tu pantalla. Ve a Capilla de la Esperanza de la Luz y aguanta el Roleplay|r
    .skipgossip
    .subzoneskip 2268
    .target Highlord Darion Mograine
step
    .goto 124,39.0,38.5
	>>|cRXP_WARN_Espera a que termine el Roleplay en Capilla de la Esperanza de la Luz. Puedes sentarte y mantenerte fuera de combate durante la batalla|r
    .complete 12801,1 --The Light of Dawn Uncovered (1)
step
    .goto 124,39.119,39.069
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r
    .turnin 12801 >>Entrega la misión La luz del alba
    .target Highlord Darion Mograine
    .accept 13165 >>Acepta la misión Recuperar Acherus
step
    #optional
    .equip 16,38633 >> |cRXP_WARN_Equipa el|r |T132480:0|t[|cFF0070FFGran hacha de la Espada de Ébano|r]
    .use 38633
    .itemcount 38633,1
step
    #optional
    .equip 16,38632 >> |cRXP_WARN_Equipa la|r |T135335:0|t[|cFF0070FFEspada magna de la Espada de Ébano|r]
    .use 38632
    .itemcount 38632,1
step
	#completewith next
	.cast 50977 >> |cRXP_WARN_Lanza|r |T135766:0|t[Portón de la muerte]
    .usespell 50977
	.subzoneskip 4281
step
	#completewith next
    .subzone 4281 >> |cRXP_WARN_Pasa por el|r |T135766:0|t[Portón de la muerte]
step
    .goto 23/0,-5650.600,2375.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r
    .target Highlord Darion Mograine
    .turnin 13165 >>Entrega la misión Recuperar Acherus
    .accept 13166 >>Acepta la misión La batalla por El Bastión de Ébano
    .trainer >> Aprende tus hechizos de clase << wotlk/cata
step
    #completewith Pwerk
    .goto 23,83.179,48.888,5 >> Sube al teletransportador púrpura para viajar al nivel superior
step
    .isOnQuest 13166
    #sticky
    #label Cinderglacier
    #loop
    .waypoint 23,80.873,47.435,20,0
    .waypoint 23,81.227,44.550,20,0
    .waypoint 23,83.156,45.121,20,0
    .cast 53341 >>|cRXP_WARN_Graba tu arma nueva con la|r |T136130:0|t[Runa de glaciar de ceniza] |cRXP_WARN_en la|r |cRXP_PICK_Forja de runas|r
step
	#completewith Pwerk
	>>Mata a la |cRXP_ENEMY_Plaga|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #label Pwerk
    .goto 23,81.954,46.315
	>>Mata a |cRXP_ENEMY_Remendejo|r
    .complete 13166,1 --Patchwerk (1)
    .mob Patchwerk
step
    #loop
    .goto 23,80.873,47.435,45,0
    .goto 23,81.227,44.550,45,0
    .goto 23,83.156,45.121,45,0
	>>Mata a la |cRXP_ENEMY_Plaga|r
    .complete 13166,2 --Scourge (10)
    .mob +Val'kyr Battle-maiden
    .mob +Terrifying Abomination
    .mob +Scourge Necromancer
step
    #requires Cinderglacier
	#completewith next
    .goto 23,83.179,48.888,5 >> Pisa el teletransportador morado para viajar al nivel inferior
step
    #requires Cinderglacier
    .goto 23/0,-5650.700,2375.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alto señor Darion Mograine|r
    .turnin 13166 >>Entrega la misión La batalla por El Bastión de Ébano
    .target Highlord Darion Mograine
    .accept 13188 >>Acepta la misión El camino de los reyes << Alliance
    .accept 13189 >>Acepta la misión La bendición del Jefe de Guerra << Horde
step << Horde
    .isOnQuest 13189
    .goto 23/0,-5696.000,2348.200
	.zone Durotar >>Toma el portal a Orgrimmar
step << Horde
    .goto Orgrimmar,31.74,37.82 << wotlk/cata
    .goto Orgrimmar,48.112,70.480 << mop
    .target Thrall << wotlk/cata
    .target Garrosh Hellscream << mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 13189 >>Entrega la misión La bendición del Jefe de Guerra
step << Horde
    .goto Orgrimmar,38.1,85.8 << wotlk
    .goto Orgrimmar,35.478,69.111 << cata/mop
	.zone Blasted Lands >> Usa el portal a Las Tierras Devastadas
    .zoneskip Orgrimmar,1
step << Alliance
    .isOnQuest 13188
    .goto 23/0,-5659.900,2324.400
	.zone Elwynn Forest >>Toma el portal a Ventormenta
step << Alliance
    .goto Stormwind City,79.989,38.468 << wotlk
    .goto 84/0,232.200,-8363.000 << cata/mop
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Rey Varian Wrynn|r
    .target King Varian Wrynn
    .turnin 13188 >>Entrega la misión El camino de los reyes
step << Alliance
    .goto Stormwind City,48.99,87.36
	.zone Blasted Lands >> Usa el portal a Las Tierras Devastadas en la Mago Torre
    .zoneskip Stormwind City,1
]])
