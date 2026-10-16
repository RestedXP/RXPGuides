if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 1-10 Gilneas
#displayname 1-10 Gilneas
#next 10-18 Costa Oscura
#defaultfor !DK
#next 10-18 Costa Oscura

<< Worgen

step
    .goto 202,59.130,23.865
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .accept 14078 >>Acepta la misión ¡A cal y canto!
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,56.879,17.856,15,0
    .goto 202,54.626,16.717,15 >>Ve hacia el cadáver de |cRXP_FRIENDLY_Teniente Walden|r en el suelo
step
    .goto 202,54.626,16.717
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el cadáver de |cRXP_FRIENDLY_Teniente Walden|r en el suelo
    .turnin 14078 >>Entrega la misión ¡A cal y canto!
    .accept 14091 >>Acepta la misión Aquí pasa algo
	.target Lieutenant Walden
step
    #optional
    #completewith next
    .goto 202,56.872,17.840,15,0
    .goto 202,58.366,20.712,15,0
    .goto 202,59.830,22.192,15 >>Regresa con |cRXP_FRIENDLY_Príncipe Liam Cringris|r
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .turnin 14091 >>Entrega la misión Aquí pasa algo
    .accept 14093 >>Acepta la misión La hora del caos
    .accept 14098 >>Acepta la misión Evacúa la Plaza de los Mercaderes
	.target Prince Liam Greymane
step
    #completewith next
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    >>Mata al |cRXP_ENEMY_Huargen arrasador|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r
    .accept 14094 >>Acepta la misión Recuperar los suministros
	.target Gwen Armstead
step
    #sticky
    #label Salvaged
    #loop
    .goto 202,58.931,25.445,0
    .goto 202,61.954,36.882,0
    .goto 202,55.539,33.642,0
    .waypoint 202,58.931,25.445,12,0
    .waypoint 202,62.280,26.295,12,0
    .waypoint 202,59.193,28.776,12,0
    .waypoint 202,59.012,35.683,12,0
    .waypoint 202,61.954,36.882,12,0
    .waypoint 202,59.174,38.938,12,0
    .waypoint 202,56.253,42.897,12,0
    .waypoint 202,58.449,36.570,12,0
    .waypoint 202,55.539,33.642,12,0
    .waypoint 202,60.040,20.806,12,0
    >>Abre los |cRXP_PICK_Cajones de suministros|r en el suelo. Despójalos para obtener los |cRXP_LOOT_Suministros recuperados|r
    .complete 14094,1 --Salvaged Supplies (4)
step
    #sticky
    #label Gwen
    #requires Salvaged
    .goto 202,59.561,26.776,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14094 >>Entrega la misión Recuperar los suministros
	.target Gwen Armstead
step
    #optional
    #sticky
    #label RampWorgen
    #loop
    .goto 202,57.678,23.371,0
    .goto 202,65.642,33.161,0
    .goto 202,57.192,40.351,0
    .waypoint 202,57.678,23.371,45,0
    .waypoint 202,60.799,22.195,45,0
    .waypoint 202,63.387,19.323,45,0
    .waypoint 202,64.497,24.603,45,0
    .waypoint 202,65.642,33.161,45,0
    .waypoint 202,60.451,34.024,45,0
    .waypoint 202,59.696,41.857,45,0
    .waypoint 202,57.192,40.351,45,0
    >>Mata al |cRXP_ENEMY_Huargen arrasador|r
    .complete 14093,1 --Rampaging Worgen slain (6)
	.mob Rampaging Worgen
step
    #label Area1
    #loop
    .goto 202,63.192,31.620,0
    .goto 202,55.001,26.559,0
    .goto 202,58.493,19.345,0
    .goto 202,63.192,31.620,8,0
    .goto 202,63.199,34.791,8,0
    .goto 202,55.001,26.559,8,0
    .goto 202,55.839,20.215,8,0
    .goto 202,58.493,19.345,8,0
    >>Golpea las |cRXP_PICK_Puertas de la Plaza del Mercado|r
    >>|cRXP_WARN_Esto puede hacer aparecer a un enemigo hostil|r |cRXP_ENEMY_Huargen arrasador|r
    .complete 14098,1 --Market Homes Evacuated (3)
step
    #optional
    #requires RampWorgen
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Gwen
    .goto 202,59.561,26.776
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14094 >>Entrega la misión Recuperar los suministros
	.target Gwen Armstead
step
    .goto 202,59.830,22.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .turnin 14093 >>Entrega la misión La hora del caos
    .turnin 14098 >>Entrega la misión Evacúa la Plaza de los Mercaderes
    .accept 14099 >>Acepta la misión Órdenes reales
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 202,62.290,31.759,15,0
    .goto 202,64.098,34.535,15,0
    .goto 202,68.809,45.472,15,0
    .goto 202,70.770,55.050,15 >> Ve hacia |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 202,70.770,55.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14099 >>Entrega la misión Órdenes reales
    .accept 14265 >>Acepta la misión Tu instructor << Warrior
    .accept 14269 >>Acepta la misión Alguien te busca << Rogue
    .accept 14273 >>Acepta la misión Asociados umbríos << Warlock
    .accept 14275 >>Acepta la misión Alguien te sigue la pista << Hunter
    .accept 14277 >>Acepta la misión Preguntas arcanas << Mage
    .accept 14278 >>Acepta la misión Busca a la hermana << Priest
    .accept 14280 >>Acepta la misión El viento sabe tu nombre... O eso parece  << Druid
	.target Gwen Armstead
step << skip
    #completewith next
    .goto 202,71.023,55.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marie Allen|r
    .vendor 38853 >>|cRXP_BUY_Cómprale|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_si es necesario|r
	.target Marie Allen
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14265 >>Entrega la misión Tu instructor
    .accept 14266 >>Acepta Cargar
    .train 100 >>Aprende |T132337:0|t[Cargar] << cata
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loren la Perista|r
    >>|cRXP_WARN_Ella está|r |T132320:0|t[En sigilo]
    .turnin 14269 >>Entrega la misión Alguien te busca
    .accept 14272 >>Acepta la misión Eviscerar
    .train 2098 >>Aprende |T132292:0|t[Eviscerar] << cata
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vitus Camino Oscuro|r
    .turnin 14273 >>Entrega la misión Asociados umbríos
    .accept 14274 >>Acepta Inmolar
    .train 348 >>Aprende |T135817:0|t[Inmolar] << cata
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montero Blake|r
    .turnin 14275 >>Entrega la misión Alguien te sigue la pista
    .accept 14276 >>Acepta la misión Disparo firme
    .train 56641 >>Aprende |T132213:0|t[Vigía del pozo Solanian] << cata
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Myriam Despiertamagia|r
    .turnin 14277 >>Entrega la misión Preguntas arcanas
    .accept 14281 >>Acepta la misión Misiles Arcanos
    .train 5143 >>Aprende |T136096:0|t[Misiles Arcanos] << cata
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Almyra|r
    .turnin 14278 >>Entrega la misión Busca a la hermana
    .accept 14279 >>Acepta Sanación relámpago << cata
    .accept 14279 >>Acepta la misión Ayudando a los heridos << !cata
    .train 2061 >>Aprende |T135907:0|t[Sanación relámpago] << cata
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celestina de la Cosecha|r
    .turnin 14280 >>Entrega la misión El viento sabe tu nombre... O eso parece
    .accept 14283 >>Acepta la misión Un toque de rejuvenecimiento << cata
    .accept 14283 >>Acepta la misión Fuego lunar << !cata
    .train 774 >>Aprende |T136081:0|t[Rejuvenecimiento] << cata
	.target Celestine of the Harvest
step << !Priest !Druid
    .goto 202,67.168,64.124
    >>Lanza |T132337:0|t[Cargar] sobre un |cRXP_ENEMY_Huargen Colmillo de Sangre|r << Warrior
    >>Lanza |T136189:0|t[Golpe siniestro] y luego |T132292:0|t[Eviscerar] sobre un |cRXP_ENEMY_Huargen Colmillo de Sangre|r << Rogue
    >>Lanza |T135817:0|t[Inmolar] sobre un |cRXP_ENEMY_Huargen Colmillo de Sangre|r << Warlock
    >>Lanza |T132213:0|t[Vigía del pozo Solanian] sobre un |cRXP_ENEMY_Huargen Colmillo de Sangre|r 2 veces << Hunter
    >>Lanza |T135812:0|t[Bola de Fuego] y luego |T136096:0|t[Misiles Arcanos] cuando se active sobre un |cRXP_ENEMY_Huargen Colmillo de Sangre|r << Mage
    .complete 14266,1 << Warrior cata --Cast Charge (1)
    .complete 14272,1 << Rogue cata --Cast Eviscerate (1)
    .complete 14274,1 << Warlock cata --Cast Immolate (1)
    .complete 14276,1 << Hunter cata --Cast Steady Shot (2)
    .complete 14281,1 << Mage cata --Cast Arcane Missiles (1)
    .complete 14266,2 << Warrior !cata --Cast Charge (1)
    .complete 14272,2 << Rogue !cata --Cast Eviscerate (1)
    .complete 14274,2 << Warlock !cata --Cast Immolate (1)
    .complete 14276,2 << Hunter !cata --Cast Steady Shot (2)
    .complete 14281,2 << Mage !cata --Cast Arcane Missiles (1)
    .mob Bloodfang Worgen
step << !cata Druid/Priest
    .goto 202,67.168,64.124
    >>Lanza |T136096:0|t[Fuego lunar] sobre un |cRXP_ENEMY_Huargen Colmillo de Sangre|r << Druid
    >>Lanza |T136207:0|t[Palabra de las Sombras: dolor] dos veces sobre un |cRXP_ENEMY_Huargen Colmillo de Sangre|r << Priest
    .complete 14279,2 << Priest --Cast Shadow Word: Pain (1)
    .complete 14283,2 << Druid --Cast Moonfire (2)
    .mob Bloodfang Worgen
step << cata Priest/Druid
    #loop
    .goto 202,70.421,65.541,0
    .goto 202,71.003,66.538,8,0
    .goto 202,70.523,67.189,8,0
    .goto 202,69.416,66.577,8,0
    .goto 202,69.782,63.306,5,0
    >>Lanza |T135907:0|t[Sanación relámpago] sobre un |cRXP_FRIENDLY_Guardia herido|r 2 veces << Priest
    >>Lanza |T136081:0|t[Rejuvenecimiento] sobre un |cRXP_FRIENDLY_Guardia herido|r << Druid
    .complete 14279,1 << Priest --Cast Flash Heal (2)
    .complete 14283,1 << Druid --Cast Rejuvenation (1)
step << Warrior
    .goto 202,67.592,64.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seargent Cleese|r
    .turnin 14266 >>Gira a Cargar
    .accept 14286 >>Acepta la misión Cuantos más, mejor
	.target Sergeant Cleese
step << Rogue
    .goto 202,71.406,65.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loren la Perista|r
    >>|cRXP_WARN_Ella está|r |T132320:0|t[En sigilo]
    .turnin 14272 >>Gira a Eviscerar
    .accept 14285 >>Acepta la misión Cuantos más, mejor
	.target Loren the Fence
step << Warlock
    .goto 202,71.420,64.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vitus Camino Oscuro|r
    .turnin 14274 >>Gira a Inmolar
    .accept 14287 >>Acepta la misión Cuantos más, mejor
	.target Vitus Darkwalker
step << Hunter
    .goto 202,71.503,61.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montero Blake|r
    .turnin 14276 >>Entrega la misión Tiro firme
    .accept 14290 >>Acepta la misión Cuantos más, mejor
	.target Huntsman Blake
step << Mage
    .goto 202,68.043,64.695
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Myriam Despiertamagia|r
    .turnin 14281 >>Entrega la misión Misiles Arcanos
    .accept 14288 >>Acepta la misión Cuantos más, mejor
	.target Myriam Spellwaker
step << Priest
    .goto 202,70.421,65.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Almyra|r
    .turnin 14279 >>Gira a Sanación relámpago << cata
    .turnin 14279 >>Entrega la misión Aprender la palabra << !cata
    .accept 14289 >>Acepta la misión Cuantos más, mejor
	.target Sister Almyra
step << Druid
    .goto 202,70.190,65.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celestina de la Cosecha|r
    .turnin 14283 >> Entrega la misión Un toque rejuvenecedor << cata
    .turnin 14283 >> Entrega la misión Fuego lunar << !cata
    .accept 14291 >> Acepta la misión Cuantos más, mejor
	.target Celestine of the Harvest
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rey Genn Cringris|r y |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14285 >>Entrega la misión Cuantos más, mejor << Rogue
    .turnin 14286 >>Entrega la misión Cuantos más, mejor << Warrior
    .turnin 14287 >>Entrega la misión Cuantos más, mejor << Warlock
    .turnin 14288 >>Entrega la misión Cuantos más, mejor << Mage
    .turnin 14289 >>Entrega la misión Cuantos más, mejor << Priest
    .turnin 14290 >>Entrega la misión Cuantos más, mejor << Hunter
    .turnin 14291 >>Entrega la misión Cuantos más, mejor << Druid
    .accept 14157 >>Acepta la misión Viejas divisiones
    .goto 202,65.810,77.714
	.target +King Genn Greymane
    .accept 24930 >>Acepta la misión Ya que estás en ello
    .goto 202,65.279,77.607
	.target +Lord Godfrey
step
    #sticky
    #label Bloodfang
    #loop
    .goto 202,57.890,72.582,0
    .goto 202,59.334,63.772,0
    .goto 202,61.376,70.799,0
    .goto 202,67.168,64.124,0
    .waypoint 202,57.890,72.582,20,0
    .waypoint 202,55.652,68.601,20,0
    .waypoint 202,56.961,66.801,20,0
    .waypoint 202,58.605,63.555,20,0
    .waypoint 202,59.334,63.772,20,0
    .waypoint 202,61.343,66.187,20,0
    .waypoint 202,61.898,66.760,20,0
    .waypoint 202,59.853,70.005,20,0
    .waypoint 202,61.376,70.799,20,0
    .waypoint 202,61.872,71.789,20,0
    .waypoint 202,64.690,69.474,20,0
    .waypoint 202,67.168,64.124,20,0
	>>Mata al |cRXP_ENEMY_Huargen Colmillo de Sangre|r
    .complete 24930,1 --Bloodfang Worgen slain (5)
	.mob *Bloodfang Worgen
step
    #optional
    #completewith next
    .goto 202,59.984,71.904,15,0
    .goto 202,58.006,72.476,15,0
    .goto 202,57.736,73.926,15,0
    .goto 202,57.925,75.584,10 >>Ve hacia |cRXP_FRIENDLY_Capitán Broderick|r adentro
step
    .goto 202,57.925,75.584
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán Broderick|r adentro
    .turnin 14157 >>Entrega la misión Viejas divisiones
    .accept 28850 >>Acepta la misión El tejado de la prisión
	.target Captain Broderick
step
    #optional
    #completewith Rooftop
    #label Staircase1
    .goto 202,57.001,74.780,5,0
    .goto 202,55.627,72.484,12 >>Sube por la escalera de caracol
step
    #optional
    #completewith Rooftop
    #requires Staircase1
    .goto 202,54.046,69.362,12,0
    .goto 202,53.759,67.454,12,0
    .goto 202,55.224,62.906,12 >>Ve hacia |cRXP_FRIENDLY_Lord Darius Crowley|r
step
    #label Rooftop
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 28850 >>Entrega la misión El tejado de la prisión
    .accept 14154 >>Acepta la misión Por los pelos
    .timer 118,Por los pelos RP
	.target Lord Darius Crowley
step
    .goto 202,55.224,62.906
    >>Mata las olas entrantes de |cRXP_ENEMY_Huargen Alphas|r y |cRXP_ENEMY_Colmillo de sangre Cachorro|r durante 2 minutos
    >>|cRXP_WARN_Quédate cerca de |cRXP_FRIENDLY_Lord Darius Crowley|r para obtener|r |T236310:0|t[Valor rebelde] |cRXP_WARN_(Aura Pasiva: Aumenta mucho la rapidez, regeneración de salud y regeneración de recursos)|r
    .complete 14154,1 --Survive while holding back the worgen for 2 minutes. (1)
    .mob Worgen Alpha
    .mob Bloodfang Runt
step
    .goto 202,55.224,62.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 14154 >>Entrega la misión Por los pelos
    .accept 26129 >>Acepta la misión Hermanos enfrentados
	.target Lord Darius Crowley
step
    #optional
    #completewith Brothers
    #label Staircase2
    .goto 202,53.759,67.454,12,0
    .goto 202,54.046,69.362,12 >>Viaja hacia la escalera espiral
--XX NOTE: You can longjump up behind Darius to jump down, but I doubt the avg user can do it (evident of Wetlands skip despite it being easier)
step
    #optional
    #completewith Brothers
    #requires Staircase2
    .goto 202,55.627,72.484,15,0
    .goto 202,57.707,74.729,5,0
    .goto 202,59.984,71.904,20 >>Viaja hacia abajo por la escalera espiral. Ve afuera
step
    #label Brothers
    #requires Bloodfang
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Godfrey|r y con |cRXP_FRIENDLY_King Genn Cringris|r
    .turnin 24930 >>Entrega la misión Ya que estás en ello
    .goto 202,65.279,77.607
	.target +Lord Godfrey
    .turnin 26129 >>Entrega la misión Hermanos enfrentados
    .accept 14159 >>Acepta la misión El arsenal del Señor rebelde
    .goto 202,65.810,77.714
	.target +King Genn Greymane
step
    #optional
    #completewith Arsenal
    #requires Cellar1
    .goto 202,61.383,80.814,15,0
    .goto 202,56.181,82.790,15,0
    .goto 202,55.945,81.481,5,0
    .goto 202,56.805,81.599,6,0
    .goto 202,56.768,85.448,10 >>Haz clic en la |cRXP_PICK_Cellar Puerta|r para abrirla, luego viaja hacia |cRXP_FRIENDLY_Josiah Avery|r adentro
--XX no spell for this
step
    #label Arsenal
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josiah Avery|r y con |cRXP_FRIENDLY_Lorna Crowley|r adentro
    .turnin 14159 >>Entrega la misión El arsenal del Señor rebelde
    .goto 202,56.768,85.448
	.target +Josiah Avery
    .accept 14204 >>Acepta la misión Desde las sombras
    .goto 202,56.873,81.421
	.target +Lorna Crowley
step << skip
    #completewith next
    +|cRXP_WARN_Para habilitar la asignación de teclas para los objetos de misión, sigue estos pasos:|r
    *[1] Presiona la |cRXP_WARN_tecla Escapar|r.
    *[2] Selecciona |cRXP_WARN_Options|r.
    *[3] Navega a |cRXP_WARN_Keybindings|r.
    *[4] Dentro de |cRXP_WARN_Keybindings|r, encuentra |cRXP_WARN_RestedXP Guides|r.
    *[5] Selecciona y vincula los |cRXP_WARN_Active Botones|r.
step
    #loop
    .goto 202,54.026,81.617,0
    .goto 202,50.457,81.103,0
    .goto 202,47.100,77.204,0
    .goto 202,53.263,76.819,0
    .goto 202,54.026,81.617,20,0
    .goto 202,55.209,84.131,20,0
    .goto 202,51.607,83.495,20,0
    .goto 202,50.679,83.942,20,0
    .goto 202,50.457,81.103,20,0
    .goto 202,48.050,84.424,20,0
    .goto 202,47.075,81.792,20,0
    .goto 202,46.153,81.533,20,0
    .goto 202,47.100,77.204,20,0
    .goto 202,48.918,76.770,20,0
    .goto 202,51.200,76.089,20,0
    .goto 202,53.263,76.819,20,0
    >>Mata a los |cRXP_ENEMY_Colmillo de sangre Lurkers|r
    >>|cRXP_WARN_Ten cuidado ya que están|r |T132320:0|t[En sigilo]
    >>|cRXP_WARN_Usa el hechizo de tu |cRXP_FRIENDLY_Mastín gilneano|r|r |T236186:0|t[Atacar a rondador] |cRXP_WARN_para ayudarte a localizar a los |cRXP_ENEMY_Rondadores Colmillo de Sangre|r si es necesario|r
    >>|cRXP_WARN_Si pierdes a tu |cRXP_FRIENDLY_Mastín gilneano|r, vuélvelo a invocar usando el|r |T236926:0|t[Collar de mastín gilneano]
    .complete 14204,1 --Bloodfang Lurker slain (6)
	.mob Bloodfang Lurker
    .use 48707
step
    .goto 202,56.873,81.421
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r adentro
    .turnin 14204 >>Entrega la misión Desde las sombras
    .accept 14214 >>Acepta la misión Mensaje para Cringris
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 202,55.818,81.572,6,0
    .goto 202,56.184,82.795,12,0
    .goto 202,59.207,83.777,15 >> Viaja hacia |cRXP_FRIENDLY_King Genn Cringris|r
step
    .goto 202,59.207,83.777
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rey Genn Cringris|r
    .turnin 14214 >>Entrega la misión Mensaje para Cringris
    .accept 14293 >>Acepta la misión Salvar a Krennan Aranas
    .timer 16,Salvar a Krennan Aranas RP
	.target King Genn Greymane
step << skip
    #completewith next
    .goto 202,58.710,77.289,0
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r DESPUÉS DE salvar a |cRXP_FRIENDLY_Krennan Aranas|r
    .target Ángel de la Resurrección
step
    .goto 202,59.207,83.777,0
    .goto 202,66.171,61.811
    >>Mientras estés montado en el Caballo de |cRXP_FRIENDLY_King Greymane|r:
    >>Lanza |T134149:0|t[Rescatar a Krennan] (1) para salvar a |cRXP_FRIENDLY_Krennan Aranas|r cuando te acercas a él
-- >>|cRXP_WARN_After you save him, press dismount |cRXP_FRIENDLY_King Greymane's Horse|r and die to the|r |cRXP_ENEMY_Bloodfang Rippers|r
    >>|cRXP_WARN_Si fallas esto, habla con |cRXP_FRIENDLY_King Genn Cringris|r para intentar de nuevo|r
    .complete 14293,1 --Krennan Aranas rescued (1)
    .timer 19,Salvar a Krennan Aranas RP
	.target Krennan Aranas
    .target *King Genn Greymane
    .skipgossip 35550,1
    .timer 16,Salvar a Krennan Aranas RP
--XX 19s slower to not deathskip, not gonna risk it
step << skip
    #optional
    #completewith next
    .goto 202,58.710,77.289
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r DESPUÉS DE salvar a |cRXP_FRIENDLY_Krennan Aranas|r
    .target Ángel de la Resurrección
step
    .goto 202,55.715,80.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14293 >>Entrega la misión Salvar a Krennan Aranas
    .accept 14294 >>Acepta la misión Hora de reagruparse
	.target Lord Godfrey
--XX 14293 didn't complete after turning in quest, worked again after accepting followup (very minor issue)
step
    #optional
    #completewith next
    .goto 202,53.411,82.729,15,0
    .goto 202,44.351,82.504,15,0
    .goto 202,41.103,81.945,15,0
    .goto 202,30.373,73.142,15 >> Viaja hacia |cRXP_FRIENDLY_King Genn Cringris|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_King Genn Cringris|r y con |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 14294 >>Entrega la misión Hora de reagruparse
    .goto 202,30.373,73.142
	.target +King Genn Greymane
    .accept 14212 >>Acepta la misión Sacrificios
    .goto 202,31.103,72.365
	.target +Lord Darius Crowley
step
    #completewith next
    .goto 202,31.282,72.645
    .vehicle >> Entra en el Caballo de |cRXP_FRIENDLY_Crowley|r
    .timer 79,Sacrificios RP
    .target Crowley's Horse
step
    .goto 202,31.282,72.645,-1
    .goto 202,40.749,39.219,-1
    >>Mientras estés montado en el Caballo de |cRXP_FRIENDLY_Crowley|r:
    >>Reúne a los |cRXP_ENEMY_Acechadores Colmillo de Sangre|r
    >>Lanza |T135433:0|t[Lanzar antorcha] (1) (Distancia instantánea: Reúne a los |cRXP_ENEMY_Acechadores Colmillo de Sangre|r)
    .complete 14212,1 --Bloodfang Stalker rounded up (30)
	.mob Bloodfang Stalker
--XX about 40s slower not to d
step
    #completewith next
    >>|cRXP_WARN_Espera al Roleplay|r
    .goto 202,40.548,39.446,20 >>Viaja en el Caballo de |cRXP_FRIENDLY_Crowley|r hacia |cRXP_FRIENDLY_Tobias Mantoniebla|r
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tobias Mantoniebla|r
    .turnin 14212 >>Entrega la misión Sacrificios
    .accept 14218 >>Acepta la misión Sangre y cenizas
	.target Tobias Mistmantle
step
    #completewith next
    .goto 202,40.883,36.449,-1
    .goto 202,40.120,36.463,-1
    .goto 202,38.786,37.390,-1
    .goto 202,38.395,38.282,-1
    .goto 202,37.896,39.535,-1
    .goto 202,37.955,40.949,-1
    .vehicle >> Entra en un |cRXP_FRIENDLY_Rebel Cañón|r
    .target Rebel Cannon
step
    .goto 202,40.13,36.52
    >>Mientras estés dentro de un |cRXP_FRIENDLY_Rebel Cañón|r:
    >>Mata a los |cRXP_ENEMY_Acechadores Colmillo de Sangre|r
    >>Lanza |T252185:0|t[Cañón rebelde] (1) (Distancia instantánea: Causa MUCHO daño)
    .complete 14218,1 --Bloodfang Stalker slain (80)
    .mob Bloodfang Stalker
step
    .goto 202,40.548,39.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tobias Mantoniebla|r
    .turnin 14218 >>Entrega la misión Sangre y cenizas
    .accept 14221 >>Acepta la misión ¿Rendirse? Nunca. ¿Retirarse? A veces
	.target Tobias Mistmantle
step
    #optional
    #completewith next
    .goto 202,41.075,40.477,8,0
    .goto 202,43.584,44.647,12 >>Entra en la Catedral
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r adentro
    .turnin 14221 >>Entrega la misión ¿Rendirse? Nunca. ¿Retirarse? A veces
    .accept 14222 >>Acepta la misión Resistencia final
	.target Lord Darius Crowley
step
    #loop
    .goto 202,42.708,43.201,0
    .goto 202,46.550,49.292,0
    .goto 202,47.789,46.937,20,0
    .goto 202,43.825,45.568,20,0
    .goto 202,42.708,43.201,20,0
    .goto 202,45.161,50.530,20,0
    >>Mata a los |cRXP_ENEMY_Frenético Stalkers|r
    >>|cRXP_WARN_Quédate cerca de |cRXP_FRIENDLY_Lord Darius Crowley|r para obtener|r |T236310:0|t[Valor rebelde] |cRXP_WARN_(Aura Pasiva: Aumenta mucho la rapidez, regeneración de salud y regeneración de mana)|r
    .complete 14222,1 --Frenzied Stalker slain (8)
	.mob Frenzied Stalker
step
    .goto 202,48.936,52.794
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r adentro
	>>|cRXP_WARN_Presiona "Escapar" en tu teclado para omitir la cinemática|r
    .turnin 14222 >>Entrega la misión Resistencia final
    .timer 46,Resistencia final RP
	.target Lord Daruius Crowley
step
    .goto 179,36.47,61.39
    >>|cRXP_WARN_Espera al Roleplay|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rey Genn Cringris|r
    .accept 14375 >>Acepta la misión Última esperanza de humanidad
    .turnin 14375 >>Entrega la misión Última esperanza de humanidad
    .timer 7,Última esperanza de humanidad RP
	.target King Genn Greymane
--XX 2dp waypoints here on out (gc bug)
step
    .goto 179,36.51,62.27
    >>|cRXP_WARN_Espera al Roleplay|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Godfrey|r
    .accept 14313 >>Acepta la misión Otra vez entre humanos
	.target Lord Godfrey
step
    #optional
    #completewith next
    .goto 179,37.17,63.58,8,0
    .goto 179,37.41,63.24,10 >>Entra en la casa
step
    .goto 179,37.41,63.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krennan Aranas|r adentro
    .turnin 14313 >>Entrega la misión Otra vez entre humanos
    .accept 14320 >>Acepta la misión Faltan ingredientes
	.target Krennan Aranas
step
    #sticky
    #label Professions1
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Recolectar hierbas y vetas de minería proporciona XP. Solo recopila recursos en tu ruta directa|r
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2366 >> Aprende |T136065:0|t[Herboristería]
    .train 2575 >> Aprende |T136248:0|t[Minería]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,1,1,1
    .train 2366,1 --Herbalism
    .train 2575,1 --Mining
step
    #optional
    #requires Professions1
    #label Professions2
    #completewith Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Recolectar hierbas proporciona XP. Solo recopila recursos en tu ruta directa|r
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2366 >> Aprende |T136065:0|t[Herboristería]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,2,2
    .train 2575,3 --Mining
step
    #optional
    #requires Professions2
    #label Professions3
    .goto 179,37.34,63.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jack "All Trades" Derrington|r
    >>|cRXP_WARN_Minería vetas proporciona XP. Solo recopila recursos en tu ruta directa|r
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    .target Jack "All Trades" Derrington
    .skipgossip 50247,2,3,2
    .train 2366,3 --Herbalism
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montero Blake|r
    .trainer >> Aprende tus hechizos de clase
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sargento Cleese|r
    .trainer >> Aprende tus hechizos de clase
    .target Sergeant Cleese
step
    #completewith INOG
    #optional
    .cast 2383 >> |cRXP_WARN_Lanza|r [Buscar hierbas]
    .cast 2580 >> |cRXP_WARN_Lanza|r [Buscar minerales]
    .train 2575,3 --Mining
    .train 2366,3 --Herbalism
    .subzoneskip 4786,1
step
    #optional
    .goto 179,36.228,64.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Samantha Buckley|r
    .collect 2901,1 >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a esta vendedora|r
    .target Samantha Buckley
    .train 2575,3 --Mining
    .subzoneskip 4786,1
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Almyra|r
    .trainer >> Aprende tus hechizos de clase
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celestina de la Cosecha|r
    .trainer >> Aprende tus hechizos de clase
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Myriam Despiertamagia|r
    .trainer >> Aprende tus hechizos de clase
    .target Myriam Spellwaker
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vitus Camino Oscuro|r
    .trainer >> Aprende tus hechizos de clase
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loren la Perista|r
    .trainer >> Aprende tus hechizos de clase
    .target Loren the Fence
step
    #label INOG
    .goto 179,32.77,66.39
    >>Haz clic en la |cRXP_PICK_Cajón de Mandrake Esencia|r en el suelo
	>>|cRXP_WARN_Presiona "Escapar" en tu teclado para omitir la cinemática|r
    .turnin 14320 >>Entrega la misión Faltan ingredientes
step
    #label MiningWorgen
    .goto 179,32.77,66.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el cadáver del |cRXP_FRIENDLY_Velador asesinado|r en el suelo
	>>|cRXP_WARN_Si no puedes hacer esto, escribe /reload en el chat|r
    .accept 14321 >>Acepta la misión Invasión
    .target Slain Watchman
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 14321 >>Entrega la misión Invasión
    .accept 14336 >>Acepta la misión Mata o muere
	.target Gwen Armstead
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .turnin 14336 >>Entrega la misión Mata o muere
    .accept 14347 >>Acepta la misión Mantener el frente
    .accept 14348 >>Acepta la misión No puedes acabar con ellos solo
	.target Prince Liam Greymane
step
    #sticky
    #label ForsakenInvader
    .goto 179,35.61,66.62,0,0
    >>Mata a los |cRXP_ENEMY_Forsaken Invaders|r
    .complete 14347,1 --Forsaken Invader slain (10)
	.mob Forsaken Invader
step
    #label Abominations
    #loop
    .goto 179,37.77,69.30,0
    .goto 179,34.23,69.98,0
    .goto 179,33.63,64.76,0
    .goto 179,37.77,69.30,30,0
    .goto 179,38.48,71.45,30,0
    .goto 179,37.24,71.34,30,0
    .goto 179,36.02,71.29,30,0
    .goto 179,34.23,69.98,30,0
    .goto 179,33.39,70.65,30,0
    .goto 179,33.33,71.73,30,0
    .goto 179,33.33,67.76,30,0
    .goto 179,33.63,64.76,30,0
    >>Despoja los |T132620:0|t|cRXP_LOOT_[Negro Gunpowder Kegs]|r en el suelo
    >>Lanza los |T132620:0|t|cRXP_LOOT_[Negro Gunpowder Kegs]|r contra los |cRXP_ENEMY_Horrid Abominations|r
    .collect 49202,4,14348,1,-1 --Black Gunpowder Keg (4)
    .complete 14348,1 --Gunpowder thrown at Abominations (4)
    .use 49202
	.mob Horrid Abomination
step
    .goto 179,35.94,66.16,15,0
    .goto 179,35.28,66.06,15,0
    .goto 179,35.76,67.31,15,0
    .goto 179,35.94,66.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .turnin 14347 >>Entrega la misión Mantener el frente
    .turnin 14348,1 >>Entrega la misión No puedes acabar con ellos solo << !Warrior !Rogue !Monk
    .turnin 14348,2 >>Entrega la misión No puedes acabar con ellos solo << Warrior/Rogue/Monk
    .accept 14366 >>Acepta la misión Mantenerse firme
	.target Prince Liam Greymane
step
    .goto 179,37.41,63.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 14366 >>Entrega la misión Mantenerse firme
    .accept 14367 >>Acepta la misión El refugio de tormentas de Allen
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Entra en el Sótano
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Godfrey|r y |cRXP_FRIENDLY_Melinda Hammond|r dentro
    .turnin 14367 >>Entrega la misión El refugio de tormentas de Allen
    .accept 14369 >>Acepta la misión Libera a la bestia
    .accept 14382 >>Acepta la misión Dos junto al mar
    .goto 179,28.97,63.93
	.target +Lord Godfrey
    .accept 14368 >>Acepta la misión ¡Salva a los niños!
    .goto 179,28.93,64.04
	.target +Melinda Hammond
step
    #optional
    #label ChildrenHouse1
    #completewith Ashley
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Sal del Sótano
step
    #optional
	#completewith Cynthia
    >>Mata a los |cRXP_ENEMY_Forsaken Footsoldiers|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob Forsaken Footsoldier
step
    #optional
    #label ChildrenHouse2
    #requires ChildrenHouse1
    #completewith Ashley
    .goto 179,27.83,66.83,7 >>Entra en la casa
step
    #optional
    #completewith Ashley
    #requires ChildrenHouse2
    .goto 179,27.90,66.12,3,0
    .goto 179,28.19,66.32,3 >>Sube las escaleras
step
    #label Ashley
    .goto 179,27.88,66.66
    .cast 68598 >>Habla con |cRXP_FRIENDLY_Ashley|r arriba
--  .complete 14368,2 --Ashley rescued (1)
	.target Ashley
    .isOnQuest 14368
--XX talk spell is about 0.5s faster than credit
step
    .goto 179,28.53,66.73,8,0
    .goto 179,28.71,66.78
    .cast 68596 >>Habla con |cRXP_FRIENDLY_James|r afuera
--  .complete 14368,3 --James rescued (1)
	.target James
    .isOnQuest 14368
step
    #label Cynthia
    .goto 179,29.59,69.31
    .cast 68597 >>Habla con |cRXP_FRIENDLY_Cynthia|r
--  .complete 14368,1 --Cynthia rescued (1)
	.target Cynthia
    .isOnQuest 14368
step
	#sticky
    #label Combatants
    #loop
    .goto 179,27.59,75.20,0
    .goto 179,26.15,74.55,0
    .goto 179,24.40,70.19,0
    .goto 179,24.55,69.00,0
    .waypoint 179,27.59,75.20,45,0
    .waypoint 179,27.39,73.94,45,0
    .waypoint 179,26.15,74.55,45,0
    .waypoint 179,24.29,73.29,45,0
    .waypoint 179,24.40,70.19,45,0
    .waypoint 179,24.55,69.00,45,0
    >>Mata a los |cRXP_ENEMY_Forsaken Footsoldiers|r y a los |cRXP_ENEMY_Forsaken Sailors|r
    .complete 14369,1 --Forsaken Combatant slain (8)
	.mob *Forsaken Footsoldier
	.mob *Forsaken Sailor
step
    #optional
    #completewith Anson
    #loop
    .goto 179,28.39,72.09,0
    .goto 179,26.90,71.55,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    .goto 179,26.73,73.45,45,0
    >>Mata al |cRXP_ENEMY_Maquinista Renegado|r (si lo hay) para dejar espacio en la |cRXP_FRIENDLY_Catapulta de los Renegados|r
    .vehicle >>Entra en la |cRXP_FRIENDLY_Catapulta de los Renegados|r
    .timer 59,La catapulta se derrumba
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #completewith Anson
    +Mientras estés en la |cRXP_FRIENDLY_Catapulta de los Renegados|r:
    >>Apunta cuidadosamente, luego usa |T252175:0|t[Lanzar] (1) para lanzarte al barco del norte del |cRXP_ENEMY_Capitán Anson|r
    *|cRXP_WARN_Recuerdo que puedes moverte mientras estés en la|r |cRXP_FRIENDLY_Catapulta de los Renegados|r
    *|cRXP_WARN_Asegúrate de apuntar cuidadosamente, pues puedes ser lanzado hacia un lado del barco o al agua más allá del barco|r
--XX Subzone 4714 (Gilneas) - can tie this to cast ID or subzone ID but there's no good way to hide this/detect if the player gets onto the boat or not
step
    #label Anson
    .goto 179,24.74,76.26,6,0
    .goto 179,24.94,76.50,6,0
    .goto 179,23.77,74.70
    >>Mata al |cRXP_ENEMY_Capitán Anson|r en el piso de abajo del barco del norte
    .complete 14382,1 --Captain Anson slain (1)
	.mob Captain Anson
--XX Would add waypoints but the Catapult step gives enough bloat as is
--XX Check if body type 2s can exit via cannon holes
step
    #optional
    #completewith Morris
    #label Catapult3
    .goto 179,24.94,76.50,6 >> Regresa arriba
step
    #optional
    #requires Catapult3
    #completewith Morris
    #loop
    .goto 179,26.73,73.45,0
    .goto 179,26.90,71.55,0
    .goto 179,28.39,72.09,0
    .goto 179,29.61,74.10,0
    .goto 179,26.26,70.66,0
    .goto 179,24.79,68.98,0
    .goto 179,25.13,72.09,0
    .goto 179,26.73,73.45,45,0
    .goto 179,26.90,71.55,45,0
    .goto 179,28.39,72.09,45,0
    .goto 179,29.61,74.10,45,0
    .goto 179,26.26,70.66,45,0
    .goto 179,24.79,68.98,45,0
    .goto 179,25.13,72.09,45,0
    >>Mata al |cRXP_ENEMY_Maquinista Renegado|r para dejar espacio en la |cRXP_FRIENDLY_Catapulta de los Renegados|r
    .vehicle >>Entra en la |cRXP_FRIENDLY_Catapulta de los Renegados|r
    .timer 59,La catapulta se derrumba
	.mob Forsaken Machinist
    .target Forsaken Catapult
step
    #optional
    #requires Catapult3
    #completewith Morris
    +Mientras estés en la |cRXP_FRIENDLY_Catapulta de los Renegados|r:
    >>Apunta cuidadosamente, luego usa |T252175:0|t[Lanzar] (1) para lanzarte al barco del sur del |cRXP_ENEMY_Capitán Morris|r
    *|cRXP_WARN_Recuerdo que puedes moverte mientras estés en la|r |cRXP_FRIENDLY_Catapulta de los Renegados|r
    *|cRXP_WARN_Asegúrate de apuntar cuidadosamente, pues puedes ser lanzado hacia un lado del barco o al agua más allá del barco|r
step
	#label Morris
    .goto 179,27.90,81.11,6,0
    .goto 179,28.06,81.32,6,0
    .goto 179,26.85,79.32
    >>Mata al |cRXP_ENEMY_Capitán Morris|r en el piso de abajo del barco del sur
    .complete 14382,2 --Captain Morris slain (1)
	.mob Captain Morris
step << skip
    #requires Combatants
    #completewith Unleash
    .goto 179,27.65,66.05,0
    .deathskip >>Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .subzoneskip 4792
--XX not worth the timesave
step
    #optional
    #requires Combatants
    #completewith Unleash
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Entra en el Sótano
step
    #label Unleash
    #requires Combatants
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Melinda Hammond|r y |cRXP_FRIENDLY_Lord Godfrey|r dentro
    .turnin 14368 >>Entrega la misión ¡Salva a los niños!
    .goto 179,28.93,64.04
	.target +Melinda Hammond
    .turnin 14369 >>Entrega la misión Libera a la bestia
    .turnin 14382 >>Entrega la misión Dos junto al mar
    .accept 14386 >>Acepta la misión Líder de la manada
    .goto 179,28.97,63.93
	.target +Lord Godfrey
step
    .isOnQuest 14386
    #optional
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Sal del Sótano
step
    .isOnQuest 14386
    #completewith Thyala
    .cast 68682 >>Usa el |T132161:0|t[Mastín Silbato] para invocar a los |cRXP_FRIENDLY_Attack Mastiffs|r para atacar a la |cRXP_ENEMY_Forestal oscura Thyala|r
step
    #label Thyala
    .goto 179,23.48,67.53
    >>Mata a la |cRXP_ENEMY_Forestal oscura Thyala|r
    .complete 14386,1 --Dark Ranger Thyala slain (1)
    .use 49240
	.mob Dark Ranger Thyala
step
    #optional
    #completewith next
    .goto 179,28.41,64.23,8,0
    .goto 179,28.32,63.88,6 >>Entra en el Sótano
step
    .goto 179,28.97,63.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Godfrey|r
    .turnin 14386 >>Entrega la misión Líder de la manada
    .accept 14396 >>Acepta la misión Mientras la tierra se hace añicos
	.target Lord Godfrey
step
    #optional
    #label Cellar6
    #completewith next
    .goto 179,28.32,63.88,6,0
    .goto 179,28.41,64.23,5 >>Sal del Sótano
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .turnin 14396 >>Entrega la misión Mientras la tierra se hace añicos
    .accept 14395 >>Acepta la misión Luchando por respirar
	.target Prince Liam Greymane
step
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Recoge a un |cRXP_FRIENDLY_Velador sumido|r
	.target Drowning Watchman
    .isOnQuest 14395
--XXZ Zarant function
step
    .goto 179,29.03,65.05
    >>Trae al |cRXP_FRIENDLY_Velador sumido|r de regreso al |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .complete 14395,1,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Recoge a un |cRXP_FRIENDLY_Velador sumido|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Trae al |cRXP_FRIENDLY_Velador sumido|r de regreso al |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .complete 14395,1,2 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Recoge a un |cRXP_FRIENDLY_Velador sumido|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Trae al |cRXP_FRIENDLY_Velador sumido|r de regreso al |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .complete 14395,1,3 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    #loop
    .goto 179,27.20,68.79,0
    .goto 179,27.07,65.40,0
    .goto 179,27.93,66.03,0
    .goto 179,28.53,66.66,15,0
    .goto 179,28.64,67.08,15,0
    .goto 179,28.76,67.34,15,0
    .goto 179,28.00,67.26,15,0
    .goto 179,27.20,68.79,15,0
    .goto 179,26.34,68.02,15,0
    .goto 179,26.04,66.63,15,0
    .goto 179,26.45,65.92,15,0
    .goto 179,27.07,65.40,15,0
    .goto 179,27.89,66.66,15,0
    .goto 179,27.93,66.03,15,0
    .cast 68735 >>Recoge al |cRXP_FRIENDLY_Velador sumido|r
	.target Drowning Watchman
    .isOnQuest 14395
step
    #optional
    .goto 179,29.03,65.05
    >>Trae al |cRXP_FRIENDLY_Velador sumido|r de vuelta al |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .complete 14395,1 --Drowning Watchman rescued (4)
	.target Prince Liam Greymane
step
    .goto 179,29.03,65.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .turnin 14395,1 >>Entrega la misión Luchando por respirar
    .accept 14397 >>Acepta la misión Evacuación
	.target Prince Liam Greymane
step
    #optional
    #completewith next
    .goto 179,35.95,63.54,20,0
    .goto 179,37.63,65.23,12 >>Ve hacia |cRXP_FRIENDLY_Gwen Armstead|r
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14397 >>Entrega la misión Evacuación
    .accept 14398 >>Acepta la misión La abuela Wahl
    .accept 14403 >>Acepta la misión Los hermanos Hayward
    .accept 14406 >>Acepta la misión El Huerto de Crowley
	.target Gwen Armstead
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14406 >>Entrega la misión El Huerto de Crowley
    .accept 14416 >>Acepta la misión El ettin hambriento
	.target Lorna Crowley
step
    #optional
    #completewith next
    #loop
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,39.82,75.32,20,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,39.72,77.14,20,0
    .goto 179,40.11,79.92,20,0
    .goto 179,39.90,81.96,20,0
    .goto 179,38.21,81.88,20,0
    .vehicle >>Entra en un |cRXP_FRIENDLY_Caballo de montaña|r
    .target Mountain Horse
step
    .goto 179,39.82,75.32,0
    .goto 179,40.11,79.92,0
    .goto 179,39.90,81.96,0
    .goto 179,38.21,81.88,0
    .goto 179,40.26,75.67,20,0
    .goto 179,40.24,77.06,20,0
    .goto 179,37.68,72.76
    >>Mientras estés en un |cRXP_FRIENDLY_Caballo de montaña|r:
    >>Lanza |T134326:0|t[Rodear a caballo] en |cRXP_FRIENDLY_Mountain Horses|r para que te sigan
    >>Guía 5 |cRXP_FRIENDLY_Mountain Horses|r (incluyendo el tuyo) de vuelta a |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_Evadir |cRXP_ENEMY_Koroth el Rompecolinas|r
    .complete 14416,1 --Mountain Horse rescued (5)
	.target Mountain Horse
	.target Lorna
    .unitscan Koroth the Hillbreaker
--XXZ Zarant function
step
    .goto 179,37.68,72.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 14416 >>Entrega la misión El ettin hambriento
	.target Lorna Crowley
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Entra en la Cabaña Wahl
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La abuela Wahl|r adentro
    .turnin 14398 >>Entrega la misión La abuela Wahl
    .accept 14399 >>Acepta la misión La abuela no rige bien
	.target Grandma Wahl
step
    .goto 179,33.96,77.38
    >>Despoja el |cRXP_LOOT_Linen-Wrapped Libro|r en el suelo
    .complete 14399,1 --Linen-Wrapped Book (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La abuela Wahl|r adentro
    .turnin 14399 >>Entrega la misión La abuela no rige bien
    .accept 14400 >>Acepta la misión No puedo llevar esto
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,32.50,76.06,8,0
    .goto 179,32.27,76.07,10,0
    .goto 179,32.04,75.45,10 >>Viaja hacia la |cRXP_LOOT_Ropa buena de la abuela|r afuera
step
    .goto 179,32.04,75.45
    >>Despoja la |cRXP_LOOT_Ropa buena de la abuela|r afuera
    .complete 14400,1 --Grandma's Good Clothes (1)
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La abuela Wahl|r adentro
    .turnin 14400 >>Entrega la misión No puedo llevar esto
    .accept 14401 >>Acepta la misión El gato de la abuela
	.target Grandma Wahl
step
    #optional
    #completewith next
    .goto 179,35.16,74.82
    .cast 68743 >>Haz clic en |cRXP_FRIENDLY_Suertudo|r en el suelo para invocar a |cRXP_ENEMY_Lucius el Cruel|r
	.mob Lucius the Cruel
    .isOnQuest 14401
step
    .goto 179,35.24,74.98
    >>Mata a |cRXP_ENEMY_Lucius el Cruel|r. Despoja su cuerpo para obtener a |cRXP_LOOT_Suertudo|r
    .complete 14401,1 --Chance the Cat (1)
	.mob Lucius the Cruel
step
    #optional
    #completewith next
    .goto 179,33.00,76.02,15,0
    .goto 179,32.57,75.84,6 >>Entra en la Cabaña Wahl
step
    .goto 179,32.52,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La abuela Wahl|r adentro
    .turnin 14401 >>Entrega la misión El gato de la abuela
	.target Grandma Wahl
step
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14403 >>Entrega la misión Los hermanos Hayward
    .accept 14404 >>Acepta la misión No tiene forma de barco
    .accept 14412 >>Acepta la misión Limpieza
	.target Sebastian Hayward
step
	#sticky
    #label Castaways
    #loop
    .goto 179,36.89,84.68,0
    .waypoint 179,37.31,84.32,6,0
    .waypoint 179,36.89,84.68,6,0
    .waypoint 179,36.57,84.53,6,0
    >>Mata a los |cRXP_ENEMY_Forsaken Castaways|r
    .complete 14412,1 --Forsaken Castaway slain (6)
	.mob Forsaken Castaway
step
    .goto 179,37.58,85.98
    >>Abre la |cRXP_PICK_Barrel of Carbón Alquitrán|r en el suelo. Despoja la |cRXP_LOOT_Coal Alquitrán|r
    .complete 14404,3 --Coal Tar (1)
step
    #optional
    #completewith next
    .goto 179,37.05,86.81,6 >>Entra en la casa de Hayward Fishery
step
    .goto 179,37.46,87.15
    >>Despoja las |cRXP_LOOT_Shipwright's Herramientas|r en el suelo dentro
    .complete 14404,1 --Shipwright's Tools (1)
step
    .goto 179,36.09,86.44
    >>Despoja las |cRXP_LOOT_Planks of Madera|r en el suelo
    .complete 14404,2 --Planks of Wood (1)
step
    #requires Castaways
    .goto 179,36.89,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sebastian Hayward|r
    .turnin 14404 >>Entrega la misión No tiene forma de barco
    .turnin 14412 >>Entrega la misión Limpieza
    .accept 14405 >>Acepta la misión Escape por mar
	.target Sebastian Hayward
step
    #completewith next
    .hs >> Establece tu hogar en Duskhaven
step << Priest cata
    .goto 179,36.015,64.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Almyra|r
    .trainer >> Aprende tus hechizos de clase
    .target Sister Almyra
step << Druid cata
    .goto 179,36.276,64.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celestina de la Cosecha|r
    .trainer >> Aprende tus hechizos de clase
    .target Celestine of the Harvest
step << Mage cata
    .goto 179,36.099,63.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Myriam Despiertamagia|r
    .trainer >> Aprende tus hechizos de clase
    .target Celestine of the Harvest
step << Warlock cata
    .goto 179,35.824,63.866
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vitus Camino Oscuro|r
    .trainer >> Aprende tus hechizos de clase
    .target Vitus Darkwalker
step << Rogue cata
    .goto 179,36.735,65.379
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loren la Perista|r
    .trainer >> Aprende tus hechizos de clase
    .target Loren the Fence
step << Hunter cata
    .goto 179,38.032,63.359
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montero Blake|r
    .trainer >> Aprende tus hechizos de clase
    .target Huntsman Blake
step << Warrior cata
    .goto 179,38.278,63.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sargento Cleese|r
    .trainer >> Aprende tus hechizos de clase
    .target Sergeant Cleese
step
    .goto 179,37.63,65.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r
    .turnin 14405 >>Entrega la misión Escape por mar
    .accept 14465 >>Acepta la misión Hacia la Mansión de Cringris
	.timer 32,Mansión de Cringris RP
	.target Gwen Armstead
step << skip
    #optional
    #label Manor01
    #completewith next
    >>|cRXP_WARN_Espera al Roleplay|r
--XX add waypoint to tie to timer
step
    #optional
    #completewith next
    .goto 179,30.27,52.03,15,0
    .goto 179,29.54,51.55,15,0
    .goto 179,28.67,51.02,10 >>Enter Greymane Manor
step
    .goto 179,28.132,50.021
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Reina Mía Cringris|r dentro
    .turnin 14465 >>Entrega la misión Hacia la Mansión de Cringris
    .accept 14466 >>Acepta la misión El observatorio del Rey
	.target Queen Mia Greymane
step
    #optional
    #label Manor1
    #completewith AlasGilneas
    .goto 179,27.89,48.10,15,0
    .goto 179,27.11,48.12,15 >>Sube las escaleras hacia el balcón
step
    #optional
    #label Manor2
    #requires Manor1
    #completewith AlasGilneas
    .goto 179,26.16,46.41,10,0
    .goto 179,26.74,46.34,10 >>Asciende hacia la cima de la torre del Manor
step
    #label AlasGilneas
    .goto 179,26.44,46.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rey Genn Cringris|r en la Torre
	>>|cRXP_WARN_Presiona "Escapar" en tu teclado para omitir la cinemática|r
    .turnin 14466 >>Entrega la misión El observatorio del Rey
    .turnin 14467 >>Entrega la misión ¡Ah, Gilneas!
    .accept 24438 >>Acepta la misión Éxodo
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 179,29.12,51.80,20,0
    .goto 179,29.86,52.22,15 >>Descend the tower, then exit Greymane Manor. Jump down toward the |cRXP_FRIENDLY_Stagecoach Carriage|r
step
    .goto 179,28.90,54.22
    .isOnQuest 24438
    .vehicle >>Entra en el |cRXP_FRIENDLY_Carruaje de diligencia|r
    .timer 80,Monta en el Carruaje de diligencia. Roleplay
    .target Stagecoach Carriage
step
    .isOnQuest 24438
    .goto 179,51.81,80.49,10 >> |cRXP_WARN_Espera al Roleplay|r
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .turnin 24438 >>Entrega la misión Éxodo
    .accept 24468 >>Acepta la misión Varados en el pantano
	.target Prince Liam Greymane
step
    #loop
    .goto 179,53.08,74.25,0
    .goto 179,52.73,72.07,0
    .goto 179,52.23,68.59,0
    .goto 179,53.08,74.25,45,0
    .goto 179,52.04,73.67,45,0
    .goto 179,51.75,72.92,45,0
    .goto 179,51.41,71.57,45,0
    .goto 179,52.73,72.07,45,0
    .goto 179,53.59,71.89,45,0
    .goto 179,53.95,73.95,45,0
    .goto 179,53.56,68.69,45,0
    .goto 179,52.23,68.59,45,0
    .goto 179,50.45,68.07,45,0
    .goto 179,51.46,69.67,45,0
    >>Salva a los |cRXP_FRIENDLY_Crash Survivors|r matando a los |cRXP_ENEMY_Swamp Crocolisks|r que los atacan
    .complete 24468,1 --Crash Survivor rescued (5)
	.mob Swamp Crocolisk
    .target Crash Survivor
step
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .turnin 24468 >>Entrega la misión Varados en el pantano
    .accept 24472 >>Acepta la misión Llegó la hora de las presentaciones
	.target Prince Liam Greymane
step
    #optional
    #completewith Koroth
    .goto 179,50.38,84.87,15,0
    .goto 179,48.88,84.64,15,0
    .goto 179,48.14,85.41,15,0
    .goto 179,46.74,83.20,12 >>Viaja hacia el |cRXP_LOOT_Estandarte de Koroth|r en la cima de la montaña
step
    #sticky
    #label Ogres
    #loop
    .goto 179,46.93,85.06,0
    .goto 179,50.56,85.62,0
    .waypoint 179,46.93,85.06,45,0
    .waypoint 179,45.77,87.30,45,0
    .waypoint 179,45.77,88.95,45,0
    .waypoint 179,45.26,87.21,45,0
    .waypoint 179,48.10,86.57,45,0
    .waypoint 179,49.25,83.82,45,0
    .waypoint 179,50.56,85.62,45,0
    >>Mata a los |cRXP_ENEMY_Ogre Minions|r
    .complete 24472,1 --Ogre Minion slain (4)
	.mob Ogre Minion
step
    #label Koroth
    .goto 179,46.74,83.20
    >>Despoja el |cRXP_LOOT_Estandarte de Koroth|r en el suelo
    .complete 24472,2 --Koroth's Banner (1)
step
    #requires Ogres
    .goto 179,51.81,80.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Príncipe Liam Cringris|r
    .turnin 24472 >>Entrega la misión Llegó la hora de las presentaciones
    .accept 24483 >>Acepta la misión Valletormenta
	.target Prince Liam Greymane
step << !Mage
    #optional
    #completewith next
    .goto 179,53.19,84.01,30,0
    .goto 179,55.27,87.50,30,0
    .goto 179,58.49,91.88,30,0
    .goto 179,59.33,92.34,12,0
    .goto 179,59.84,91.92,6 >>Entra en la casa de |cRXP_FRIENDLY_Gwen Armstead|r en Valletormenta
step << Mage
    .goto 179,59.073,92.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Myriam Despiertamagia|r
    .trainer >> Aprende tus hechizos de clase
    .target Myriam Spellwaker
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 24483 >>Entrega la misión Valletormenta
    .accept 24484 >>Acepta la misión Control de plagas
	.target Gwen Armstead
step
    #sticky
    #label Stormglen
    .goto 179,60.06,91.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Willa Arnes|r dentro
    .home >>Establece tu Piedra de hogar en el Poblado Valletormenta
    .isQuestAvailable 24495
step
    .goto 179,60.26,91.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r adentro
    .accept 24495 >>Acepta la misión Trozos del pasado
	.target Lorna Crowley
step << Priest
    .goto 179,60.482,91.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermana Almyra|r arriba
    .trainer >> Aprende tus hechizos de clase
    .target Sister Almyra
step << Druid
    .goto 179,60.002,92.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Celestina de la Cosecha|r
    .trainer >> Aprende tus hechizos de clase
    .target Celestine of the Harvest
step << Warrior
    .goto 179,59.500,91.003
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sargento Cleese|r
    .trainer >> Aprende tus hechizos de clase
    .target Sergeant Cleese
step << Rogue
    .goto 179,60.255,90.426
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loren la Perista|r
    .trainer >> Aprende tus hechizos de clase
    .target Loren the Fence
step << Hunter
    .goto 179,60.468,90.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Montero Blake|r
    .trainer >> Aprende tus hechizos de clase
    .target Huntsman Blake
step << Warlock
    .goto 179,61.723,91.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vitus Camino Oscuro|r
    .trainer >> Aprende tus hechizos de clase
    .target Vitus Darkwalker
step
    #sticky
    #requires Stormglen
    #label JournalP
    #loop
    .goto 179,62.32,92.85,0
    .goto 179,65.14,90.76,0
    .goto 179,67.36,92.29,0
    .goto 179,62.32,92.85,15,0
    .goto 179,62.98,92.74,15,0
    .goto 179,63.84,91.65,15,0
    .goto 179,64.33,90.99,15,0
    .goto 179,64.82,90.71,15,0
    .goto 179,65.14,90.76,15,0
    .goto 179,65.45,90.92,15,0
    .goto 179,65.78,90.96,15,0
    .goto 179,65.22,92.46,15,0
    .goto 179,65.48,91.64,15,0
    .goto 179,65.91,90.76,15,0
    .goto 179,66.40,90.82,15,0
    .goto 179,67.18,90.80,15,0
    .goto 179,67.41,91.41,15,0
    .goto 179,67.36,92.29,15,0
    >>Despoja las |cRXP_LOOT_Old Diario Pages|r en el suelo
    .complete 24495,1 --Old Journal Page (6)
step
    #requires Stormglen
    #loop
    .goto 179,65.32,92.71,0
    .goto 179,65.53,88.51,0
    .goto 179,65.59,90.93,0
    .goto 179,65.32,92.71,45,0
    .goto 179,66.30,91.16,45,0
    .goto 179,67.59,92.29,45,0
    .goto 179,67.50,88.31,45,0
    .goto 179,65.53,88.51,45,0
    .goto 179,62.70,91.02,45,0
    .goto 179,63.53,89.30,45,0
    .goto 179,63.64,91.38,45,0
    .goto 179,65.12,91.93,45,0
    .goto 179,65.59,90.93,45,0
    >>Mata a los |cRXP_ENEMY_Vilebrood Skitterers|r
    .complete 24484,1 --Vilebrood Skitterer slain (6)
	.mob Vilebrood Skitterer
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Entra en la casa
step
    #requires JournalP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r y |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 24495 >>Entrega la misión Trozos del pasado
    .goto 179,60.26,91.85
	.target +Lorna Crowley
    .turnin 24484 >>Entrega la misión Control de plagas
    .accept 24501 >>Acepta la misión Problemas tamaño-reina
    .goto 179,59.86,91.71
	.target +Gwen Armstead
step
    .goto 179,68.35,81.65
    >>Mata a |cRXP_ENEMY_Rygna|r
    .complete 24501,1 --Rygna slain (1)
	.mob Rygna
step
    #optional
    #requires JournalP
    #completewith next
    .goto 179,60.37,91.46,8 >>Entra en la casa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r y |cRXP_FRIENDLY_Lorna Crowley|r dentro
    .turnin 24501 >>Entrega la misión Problemas tamaño-reina
    .goto 179,59.86,91.71
	.target +Gwen Armstead
    .accept 24578 >>Acepta la misión El Monte Negro
    .goto 179,60.26,91.85
	.target +Lorna Crowley
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belysra Brisa Estelar|r
    .turnin 24578 >>Entrega la misión El Monte Negro
    .accept 24616 >>Acepta la misión Dar esquinazo
	.target Belysra Starbreeze
step
    #optional
    #sticky
    #label Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura 70794 >>|cRXP_WARN_Corre hacia el camino para quedar atrapado en una|r |T134916:0|t[Trampa congelante] |cRXP_WARN_y invocar al |cRXP_ENEMY_Oscuro Explorador|r. Usar|r |T133443:0|t[Talismán de Belysra] |cRXP_WARN_para disipar la|r |T134916:0|t[Trampa congelante]
    .use 49944
step
    #optional
    #sticky
    #requires Trap1
    #completewith Scout
    .goto 179,63.92,81.25
    .aura -70794 >>|cRXP_WARN_Usar|r |T133443:0|t[Talismán de Belysra] |cRXP_WARN_para disipar la|r |T134916:0|t[Trampa congelante]
    .use 49944
--XXZ Currently doesnt work (aura needs to count debuffs)
step
    #label Scout
    .goto 179,64.12,80.52
    >>Mata al |cRXP_ENEMY_Oscuro Explorador|r
    .complete 24616,1 --Dark Scout slain (1)
	.mob Dark Scout
    .use 49944
step
    .goto 179,63.35,82.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belysra Brisa Estelar|r
    .turnin 24616 >>Entrega la misión Dar esquinazo
    .accept 24617 >>Acepta la misión Tal'doren, el hogar de lo salvaje
	.target Belysra Starbreeze
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24617 >>Entrega la misión Tal'doren, el hogar de lo salvaje
    .accept 24627 >>Acepta la misión Ante nuestra puerta
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vassandra Garratormenta|r
    .accept 24628 >>Acepta la misión Preparativos
	.target Vassandra Stormclaw
step
    #sticky
    #label Banshees
    #loop
    .goto 179,64.34,75.55,0
    .goto 179,60.44,78.54,0
    .goto 179,64.23,72.55,0
    .goto 179,64.34,75.55,45,0
    .goto 179,61.21,77.57,45,0
    .goto 179,61.38,79.02,45,0
    .goto 179,61.86,79.10,45,0
    .goto 179,60.44,78.54,45,0
    .goto 179,60.19,80.23,45,0
    .goto 179,60.41,76.88,45,0
    .goto 179,59.79,75.62,45,0
    .goto 179,63.38,74.31,45,0
    .goto 179,64.23,72.55,45,0
    >>Mata a las |cRXP_ENEMY_Howling Banshees|r
    .complete 24627,1 --Howling Banshee slain (6)
	.mob Howling Banshee
step
    #optional
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Despojar |cRXP_LOOT_Hojaluna|r en el suelo
    *|cRXP_WARN_Puedes ver la ubicación de |cRXP_LOOT_Hojaluna|r en tu minimapa si tienes|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_activado|r
    .complete 24628,1 --Moonleaf (6)
	.skill herbalism,1,1
step
    .goto 179,60.64,74.63,0
    .goto 179,63.59,73.45,0
    .goto 179,62.70,76.04,0
    .goto 179,59.97,77.38,0
    .goto 179,60.64,74.63,15,0
    .goto 179,60.95,74.43,15,0
    .goto 179,61.19,74.67,15,0
    .goto 179,61.51,72.89,15,0
    .goto 179,63.38,73.45,15,0
    .goto 179,63.59,73.45,15,0
    .goto 179,66.17,71.64,15,0
    .goto 179,67.04,71.91,15,0
    .goto 179,67.18,75.96,15,0
    .goto 179,65.23,76.21,15,0
    .goto 179,62.70,76.04,15,0
    .goto 179,61.99,75.87,15,0
    .goto 179,61.44,78.34,15,0
    .goto 179,62.27,79.09,15,0
    .goto 179,61.23,79.36,15,0
    .goto 179,60.97,79.56,15,0
    .goto 179,60.06,78.49,15,0
    .goto 179,59.77,78.08,15,0
    .goto 179,59.97,77.38,15,0
    >>Despojar |cRXP_LOOT_Hojaluna|r en el suelo
    .complete 24628,1 --Moonleaf (6)
    .skill herbalism,<1,1
step
    #requires Banshees
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24627 >>Entrega la misión Ante nuestra puerta
    .accept 24646 >>Acepta la misión Recuperar lo que es nuestro
	.target Lord Darius Crowley
step
    .goto 179,69.30,72.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vassandra Garratormenta|r
    .turnin 24628 >>Entrega la misión Preparativos
	.target Vassandra Stormclaw
step
    #optional
    #label Taldoren
    #completewith ScytheOfElune
    .goto 179,58.14,75.79
    .cast 71061 >>|cRXP_WARN_Usa el|r |T134229:0|t[Cuerno de Tal'doren] |cRXP_WARN_para distraer a los|r |cRXP_ENEMY_Veteran Oscuro Forestales|r
    .use 50134
    .unitscan Veteran Dark Ranger
step
    #optional
    #requires Taldoren
    #completewith ScytheOfElune
    .goto 179,57.85,75.95,8 >> Entra en la casa
step
    #label ScytheOfElune
    .goto 179,57.51,75.59
	>>Abre el |cRXP_PICK_Worn Coffer|r dentro. Despójalo para obtener el |cRXP_LOOT_Mysterious Artefacto|r
    .complete 24646,1 --Mysterious Artifact (1)
    .use 50134
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24646 >>Entrega la misión Recuperar lo que es nuestro
    .accept 24593 >>Acepta la misión Ni humano ni bestia
	.target Lord Darius Crowley
step
    >>Bebe del |cRXP_PICK_Well of Furia|r, del |cRXP_PICK_Well of Tranquilidad|r y del |cRXP_PICK_Well of Equilibrio|r
    .complete 24593,1 --Well of Fury (1)
    .goto 179,68.98,72.80,-1
    .complete 24593,2 --Well of Tranquility (1)
    .goto 179,69.26,73.10,-1
    .complete 24593,3 --Well of Balance (1)
    .goto 179,69.14,73.52,-1
step
    .goto 179,68.72,73.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24593 >>Entrega la misión Ni humano ni bestia
    .accept 24673 >>Acepta la misión Regreso a Valletormenta
	.target Lord Darius Crowley
step
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a Valletormenta
step
    .goto 179,59.86,91.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwen Armstead|r dentro
    .turnin 24673 >>Entrega la misión Regreso a Valletormenta
    .accept 24672 >>Acepta la misión Adelante y arriba
	.target Gwen Armstead
step
    #optional
    #completewith next
    .goto 179,60.44,91.30,8,0
    .goto 179,68.80,85.65,45,0
    .goto 179,72.02,82.07,30,0
    .goto 179,72.73,80.05,12 >>Viaja hacia |cRXP_FRIENDLY_Krennas Aranas|r
step
    .goto 179,72.73,80.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krennas Aranas|r
    .turnin 24672 >>Entrega la misión Adelante y arriba
    .accept 24592 >>Acepta la misión Traición en el Tramo de la Tempestad
	.target Krennas Aranas
step
    #optional
    #label Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75
    .subzone 4788 >>Viaja hacia Tempest's Reach
step
    #optional
    #sticky
    #label KrennanStealth
    #requires Walden1
    #completewith TempestBetrayal
    .cast 70456 >>|cRXP_WARN_Usa|r |T135446:0|t[Krennan's Poción of Sigilo] |cRXP_WARN_para volverte|r |T132320:0|t[En sigilo]
    >>|cRXP_WARN_Mientras estés|r |T132320:0|t[En sigilo]|cRXP_WARN_, puedes lanzar la mayoría de los hechizos. El|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe al entrar en combate|r
    >>|cRXP_WARN_NOTA: los |cRXP_ENEMY_Mountain Mastiffs|r tienen una mayor detección de|r |T132320:0|t[Sigilo]
    .use 50218
step
    #optional
    #sticky
    #requires KrennanStealth
    #completewith TempestBetrayal
    +|cRXP_WARN_Si tu|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe, usa|r |T135446:0|t[Krennan's Poción of Sigilo] |cRXP_WARN_para volverte|r |T132320:0|t[En sigilo] |cRXP_WARN_de nuevo (funciona en combate)|r
    >>|cRXP_WARN_Mientras estés|r |T132320:0|t[En sigilo]|cRXP_WARN_, puedes lanzar la mayoría de los hechizos. El|r |T132320:0|t[Sigilo] |cRXP_WARN_se rompe al entrar en combate|r
    >>|cRXP_WARN_NOTA: los |cRXP_ENEMY_Mountain Mastiffs|r tienen una mayor detección de|r |T132320:0|t[Sigilo]
    .use 50218
step
    #optional
    #requires Walden1
    #completewith Walden
    .goto 179,74.82,76.94,30,0
    .goto 179,76.67,72.75,15,0
    .goto 179,76.84,72.10,12,0
    .goto 179,76.88,71.32,12,0
    .goto 179,78.25,70.46,15,0
    .goto 179,79.25,67.92,15,0
    .goto 179,79.29,64.84,35 >>Viaja con cuidado entre los edificios y las colinas hacia |cRXP_ENEMY_Lord Walden|r
step
    #label Walden
    .goto 179,79.29,64.84,30,0
    .goto 179,78.25,65.86,6,0
    .goto 179,78.03,66.47,4,0
    .goto 179,77.83,66.14,4,0
    .goto 179,78.20,65.97,4,0
    .goto 179,78.11,66.23
    >>Mata a |cRXP_ENEMY_Lord Walden|r
    >>|cRXP_WARN_Patrulla entre el exterior de la casa y el piso de arriba dentro de la casa|r
    >>|cRXP_WARN_Ten cuidado, ya que lanza|r |T132797:0|t[Brandy añejo] |cRXP_WARN_(Instantáneo a distancia: aturde durante 4 segundos y causa daño)|r
    .complete 24592,2 --Lord Walden slain (1)
	.mob Lord Walden
step
    #optional
    #completewith next
    .goto 179,82.67,69.63,30,0
    .goto 179,84.22,72.50,30,0
    .goto 179,85.47,73.25,15,0
    .goto 179,79.29,64.84,35 >>Viaja hacia |cRXP_ENEMY_Barón Ashbury|r
step
    #label Ashbury
    .goto 179,85.44,74.22,15,0
    .goto 179,84.93,74.37,15,0
    .goto 179,84.21,74.80
    >>Mata a |cRXP_ENEMY_Barón Ashbury|r
    >>|cRXP_WARN_Patrulla entre las puertas de su casa|r
    .complete 24592,1 --Baron Ashbury slain (1)
	.mob Baron Ashbury
step
    #label TempestBetrayal
    .goto 179,78.28,72.07
    .use 50218 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rey Genn Cringris|r
    .turnin 24592 >>Entrega la misión Traición en el Tramo de la Tempestad
    .accept 24677 >>Acepta la misión Rodea a los Renegados
	.target King Genn Greymane
step
    #completewith next
    .goto 179,78.33,71.88
    .vehicle >>Habla con |cRXP_FRIENDLY_Lord Hewell|r para montar al |cRXP_FRIENDLY_Stout Caballo de montaña|r hacia |cRXP_FRIENDLY_Lorna Crowley|r
    .timer 100.5,Flank the Forsaken RP
    .target Lord Hewell
    .skipgossip 38764,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r, |cRXP_FRIENDLY_Magda Blancapared|r, y |cRXP_FRIENDLY_Marcus|r
    .turnin 24677 >>Entrega la misión Rodea a los Renegados
    .accept 24575 >>Acepta la misión El día de la liberación
    .goto 179,70.88,39.84
	.target +Lorna Crowley
    .accept 24675 >>Acepta la misión La última comida
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .accept 24674 >>Acepta la misión Esclavos de nadie
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
step
    #loop
    .goto 179,75.70,39.60,0
    .goto 179,76.24,45.37,0
    .goto 179,77.83,35.81,0
    .goto 179,75.70,39.60,45,0
    .goto 179,76.12,42.77,45,0
    .goto 179,76.24,45.37,45,0
    .goto 179,77.22,46.97,45,0
    .goto 179,78.11,43.54,45,0
    .goto 179,78.05,38.73,45,0
    .goto 179,77.83,35.81,45,0
    >>Mata a los |cRXP_ENEMY_Brown Stags|r. Despoja los |cRXP_LOOT_Sides of Stag Carne|r
    .complete 24675,1 --Side of Stag Meat (10)
	.mob Brown Stag
step
    #sticky
    #label Enslaved
    #loop
    .goto 179,75.71,31.17,0
    .waypoint 179,82.16,30.73,20,0
    .waypoint 179,81.95,26.18,20,0
    .waypoint 179,78.75,25.15,20,0
    .waypoint 179,79.37,27.64,20,0
    >>Mata a los |cRXP_ENEMY_Forsaken Slavedrivers|r. Despoja los |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r
    >>Usa la |T134247:0|t|cRXP_LOOT_[Slaver's Keys]|r en la |cRXP_PICK_Pelota y Cadena|r de los |cRXP_FRIENDLY_Esclavizados Aldeanos|r dentro y alrededor de Emberstone Mina para liberarlos
    .collect 49881,5,24575,1,-1 --Slaver's Key (5)
    .complete 24575,1 --Enslaved Gilnean freed (5)
	.mob Forsaken Slavedriver
	.target Enslaved Villagers
--XX may need key drop
step
    #optional
    #label Emberstone1
    #completewith Brothogg
    .goto 179,76.71,30.84,10 >>Entra en Emberstone Mina
    .isOnQuest 24674
step
    #optional
    #requires Emberstone1
    #completewith Brothogg
    .goto 179,78.13,24.95,15,0
    .goto 179,79.39,26.51,15 >>Viaja hacia el |cRXP_ENEMY_Maestro de esclavos Brothogg|r adentro
    .isOnQuest 24674
step
    #label Brothogg
    .goto 179,80.32,32.11
    >>Mata al |cRXP_ENEMY_Maestro de esclavos Brothogg|r adentro
    .complete 24674,1 --Brothogg the Slavemaster slain (1)
	.mob Brothogg the Slavemaster
step
    #optional
    #requires Enslaved
    #completewith next
    .goto 179,76.71,30.84,10 >>Sal de Emberstone Mina
    .subzoneskip 4732,1
step << skip
    #requires Enslaved
	#completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .subzoneskip 4732,1
--XX skipping because theres 0 repair vendors in Gilneas past duskhaven?
step
    #requires Enslaved
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magda Blancapared|r, |cRXP_FRIENDLY_Marcus|r, y |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24675 >>Entrega la misión La última comida
    .goto 179,70.65,39.70
	.target +Magda Whitewall
    .turnin 24674 >>Entrega la misión Esclavos de nadie
    .goto 179,70.29,40.05,8,0
    .goto 179,70.63,40.12,8,0
    .goto 179,71.25,39.78
	.target +Marcus
    .turnin 24575 >>Entrega la misión El día de la liberación
    .accept 24676 >>Acepta la misión Échalos
    .goto 179,70.88,39.84
	.target +Lorna Crowley
step
    #sticky
    #label Infantry
    #loop
	.goto 179,74.71,27.21,0
	.goto 179,73.51,30.96,0
	.goto 179,71.72,31.08,0
	.waypoint 179,74.71,27.21,45,0
	.waypoint 179,74.95,27.98,45,0
    .waypoint 179,73.54,29.99,45,0
	.waypoint 179,73.51,30.96,45,0
    .waypoint 179,72.88,29.98,45,0
	.waypoint 179,72.30,30.37,45,0
    .waypoint 179,71.90,29.52,45,0
	.waypoint 179,71.72,31.08,45,0
    >>Mata a los |cRXP_ENEMY_Infantería Renegada|r
	.complete 24676,1 --Forsaken Infantry slain (4)
	.mob Forsaken Infantry
step
    #sticky
    #label Cornell
	.goto 179,72.86,28.42
    >>Mata al |cRXP_ENEMY_Ejecutor Cornell|r
    .complete 24676,2 --Executor Cornell (1)
	.mob Executor Cornell
step
	.goto 179,74.15,27.40
    >>Mata al |cRXP_ENEMY_Valov the Mad|r
    .complete 24676,3 --Valnov the Mad slain (1)
	.mob Valnov the Mad
step
    #optional
    #requires Cornell
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires Infantry
    .goto 179,70.88,39.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 24676 >>Entrega la misión Échalos
    .accept 24904 >>Acepta la misión La Batalla por la Ciudad de Gilneas
	.target Lorna Crowley
step
    .isOnQuest 24904
    .goto 179,70.049,40.897
    .gossip 38553,0 >>Habla con |cRXP_FRIENDLY_Krennan Aranas|r para comenzar la Batalla por la Ciudad de Gilneas. También puedes ser teletransportado a Gilneas si ya hay una batalla en progreso
    >>|cRXP_WARN_No tendrás una flecha para seguir durante esto ya que puedes ser teletransportado a una ubicación aleatoria de Gilneas. Sigue |cRXP_FRIENDLY_Príncipe Liam Cringris|r y |cRXP_FRIENDLY_Lord Darius Crowley|r de cerca|r
    .skipgossip 38553,1
    .target Krennan Aranas
step
    .isOnQuest 24904
    >>|cRXP_WARN_Sigue |cRXP_FRIENDLY_Príncipe Liam Cringris|r y |cRXP_FRIENDLY_Lord Darius Crowley|r a través de Gilneas|r
    .use 50334 >>|cRXP_WARN_Usa la|r |T135340:0|t[Estoque de los patriotas gilneanos] |cRXP_WARN_en tus |cRXP_FRIENDLY_Milicianos gilneanos|r para aumentar su velocidad y regeneración de salud|r
    >>|cRXP_WARN_Entra en un |cRXP_FRIENDLY_Cañón de Piedra Ígnea|r y una |cRXP_FRIENDLY_Catapulta dañada|r para derrotar a los |cRXP_ENEMY_Vile Abominations|r y|r |cRXP_ENEMY_Gorerot|r
    >>|cRXP_WARN_Derrota |cRXP_ENEMY_Lady Sylvanas Brisaveloz|r llevándola al 40% de vida|r
    .complete 24904,1 --Battle for Gilneas City Complete (1)
    .timer 17,La Batalla por la Ciudad de Gilneas RP
    .target Prince Liam Greymane
    .target Lord Darius Crowley
    .target Emberstone Cannon
    .target Damaged Catapult
    .mob Vile Abomination
    .mob Gorerot
    .mob Lady Sylvanas Windrunner
step
    #optional
    #completewith next
    >>|cRXP_WARN_Espera al Roleplay|r
    .goto 202,36.89,59.09,8 >>Entra en la casa
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Habla con |cRXP_FRIENDLY_Lorna Crowley|r adentro
    .turnin 24904 >>Entrega la misión La Batalla por la Ciudad de Gilneas
    .accept 24902 >>Acepta la misión A la caza de Sylvanas
    .timer 170,La caza de Sylvanas RP
	.target Lorna Crowley
step
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Sigue |cRXP_FRIENDLY_Tobias Mantoniebla|r de cerca o no se moverá y puede desaparecer|r
    >>|cRXP_WARN_Síguelo hasta que se esconda en el agua dentro de la Catedral, luego espera a que termine la RP|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Tobias Mantoniebla|r desaparece, omite este paso|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24902
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Regresa a |cRXP_FRIENDLY_Lorna Crowley|r
    .isQuestComplete 24902
step
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Habla con |cRXP_FRIENDLY_Lorna Crowley|r adentro
    .turnin 24902 >>Entrega la misión A la caza de Sylvanas
    .accept 24903 >>Acepta la misión Venganza o supervivencia
	.target Lorna Crowley
    .isQuestComplete 24902
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Habla con |cRXP_FRIENDLY_Lorna Crowley|r adentro
    .accept 24903 >>Acepta la misión Venganza o supervivencia
	.target Lorna Crowley
    .isQuestTurnedIn 24902
step
    #optional
    #completewith next
    .abandon 24902 >>Abandona la misión A la caza de Sylvanas
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Habla con |cRXP_FRIENDLY_Lorna Crowley|r adentro
    .accept 24902 >>Acepta la misión A la caza de Sylvanas
    .timer 193.5,The Hunt For Sylvanas RP
	.target Lorna Crowley
step
    #optional
    .goto 202,36.17,62.68,0
    .goto 202,36.49,59.34,8,0
    .goto 202,36.44,47.99,12,0
    .goto 202,35.22,41.12,12,0
    .goto 202,40.17,31.05,12,0
    .goto 202,40.82,40.67,10,0
    .goto 202,43.46,44.64,10,0
    .goto 202,45.06,50.85
    >>|cRXP_WARN_Sigue a |cRXP_FRIENDLY_Tobias Mantoniebla|r de cerca o no se moverá y podría desaparecer|r
    >>|cRXP_WARN_Sigue a este hasta que se esconda en el agua dentro de la catedral, entonces espera a que termine el Roleplay|r
    .complete 24902,1 --Hunt for Sylvanas (1)
	.target Tobias Mistmantle
	.target Lorna Crowley
    .isOnQuest 24092
step
    #optional
    #completewith next
    .goto 202,43.04,44.05,10,0
    .goto 202,40.40,40.31,10,0
    .goto 202,37.25,44.17,12,0
    .goto 202,38.92,59.78,6,0
    .goto 202,38.62,60.25,8 >>Regresa a |cRXP_FRIENDLY_Lorna Crowley|r
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r adentro
    .turnin 24902 >>Entrega la misión A la caza de Sylvanas
    .accept 24903 >>Acepta la misión Venganza o supervivencia
	.target Lorna Crowley
step
    #optional
    .goto 202,38.62,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r adentro
    .accept 24903 >>Acepta la misión Venganza o supervivencia
	.target Lorna Crowley
step
    #optional
    #requires GennHouse1
    #completewith Vengeance
    .goto 202,32.10,58.01,8 >>Entra en la casa de |cRXP_FRIENDLY_King Genn Cringris|r
step
    #label Vengeance
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rey Genn Cringris|r
    .turnin 24903 >>Entrega la misión Venganza o supervivencia
    .accept 24920 >>Acepta la misión Retrasando lo inevitable
	.target King Genn Greymane
step
    #optional
    #label RidingBat
    #completewith Survival
    .goto 202,30.24,60.96
    .vehicle >>Entra en el |cRXP_FRIENDLY_Murciélago de montar capturado|r
    .timer 21,Retrasando lo inevitable RP
    .target Captured Riding Bat
step
    #optional
    #requires RidingBat
    #completewith Survival
    .goto 179,57.11,39.50,5 >>|cRXP_WARN_Espera al Roleplay|r
step
    #label Survival
    .goto 179,54.83,35.83,-1
    .goto 179,56.43,28.49,-1
    .goto 179,56.77,20.70,-1
    .goto 179,57.12,15.66,-1
    .goto 179,61.45,19.86,-1
    .goto 179,64.89,27.43,-1
    .goto 179,61.30,35.14,-1
    >>Mientras estés en el |cRXP_FRIENDLY_Murciélago de montar capturado|r:
    >>Mata a los |cRXP_ENEMY_Forsaken Plaguesmiths|r, a los |cRXP_ENEMY_Forsaken Invaders|r y a los |cRXP_ENEMY_Forsaken Catapults|r
    >>Lanza la |T133709:0|t[Bomba de hierro] (1) (Ataque a distancia instantáneo: Causa daño)
    .complete 24920,2 --Invading Forsaken (40)
    .complete 24920,1 --Forsaken Catapult slain (6)
    .mob Forsaken Catapult
    .mob Invading Forsaken
step
    #optional
    #completewith next
    >>Mientras estés en el |cRXP_FRIENDLY_Murciélago de montar capturado|r:
    .goto 202,30.43,60.88,5 >>Lanza la |T132182:0|t[Volar de regreso] (2) para regresar a |cRXP_FRIENDLY_King Genn Cringris|r
step
    .goto 202,32.36,57.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rey Genn Cringris|r
    .turnin 24920 >>Entrega la misión Retrasando lo inevitable
    .accept 24678 >>Acepta la misión Hasta las rodillas
	.target King Genn Greymane
step
    #optional
    #completewith next
    .goto 202,33.75,57.09,6 >>Baja las escaleras hacia la cripta
step
    #optional
    #completewith Knee
    .goto 179,53.56,55.10,20,0
    .goto 179,49.87,57.26,10,0
    >>|cRXP_WARN_Usa la|r |T135432:0|t[Antorcha Semiaquemada] |cRXP_WARN_para ahuyentar |cRXP_ENEMY_Putrescent Cresas|r, |cRXP_ENEMY_Arañas Subterráneas|r, y|r |cRXP_ENEMY_Ratas de Cementerio|r
    .goto 179,49.78,57.88,6 >>Viaja hacia el final de la cripta
    .mob Putrescent Maggot
    .mob Underground Spider
    .mob Graveyard Rat
    .use 50220
step
    #label Knee
    .goto 179,49.71,57.28,8,0
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Habla con |cRXP_FRIENDLY_Krennan Aranas|r afuera
    .turnin 24678 >>Entrega la misión Hasta las rodillas
    .accept 24602 >>Acepta la misión Descanso eterno
    .target Krennan Aranas
step
    #loop
    .goto 179,48.60,54.28,0
    .goto 179,46.85,54.23,0
    .goto 179,46.71,56.03,0
    .goto 179,49.33,49.77,0
    .goto 179,51.18,54.22,0
    .goto 179,48.60,54.28,15,0
    .goto 179,48.08,54.11,15,0
    .goto 179,47.59,53.54,15,0
    .goto 179,46.85,54.23,15,0
    .goto 179,48.04,56.35,15,0
    .goto 179,46.71,56.03,15,0
    .goto 179,45.76,54.87,15,0
    .goto 179,45.80,53.49,15,0
    .goto 179,46.79,53.32,15,0
    .goto 179,48.82,50.70,15,0
    .goto 179,49.33,49.77,15,0
    .goto 179,51.01,53.23,15,0
    .goto 179,51.18,54.22,15,0
    >>Abre la |cRXP_PICK_Tierra Perturbada|r en el suelo. Despójala para obtener |cRXP_LOOT_Remembranzas Desenterradas|r
    .complete 24602,1 --Unearthed Memento (5)
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24602 >>Entrega la misión Descanso eterno
    .accept 24679 >>Acepta la misión La bendición del patriarca
    .target Krennan Aranas
step
    .goto 179,48.89,53.14
    >>Coloca las |T134344:0|t[Ofrendas Bendecidas] en el Santuario
	>>|cRXP_WARN_Presiona "Escapar" en tu teclado para omitir la cinemática|r
    .complete 24679,1 --Offering placed (1)
    .use 51956
step
    .goto 179,49.84,56.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krennan Aranas|r
    .turnin 24679 >>Entrega la misión La bendición del patriarca
    .accept 24680 >>Acepta la misión Puerto Quilla
	.target Krennan Aranas
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24680 >>Entrega la misión Puerto Quilla
    .accept 24681 >>Acepta la misión Tienen aliados, pero nosotros también
	.target Lord Darius Crowley
step
    #optional
    #label Glaive
	#completewith Allies
    .goto 179,42.47,37.84
    .vehicle >>Entra en el |cRXP_FRIENDLY_Lanzagujas|r
    .target Glaive Thrower
step
    #optional
    #requires Glaive
    #completewith Allies
    .goto 179,40.32,38.58,20,0
    .goto 179,35.59,35.80
    >>Mientras estés en el |cRXP_FRIENDLY_Lanzagujas|r:
    .subzone 4725 >>Viaja hacia The Headlands
step
    #label Allies
    #loop
    .goto 179,35.03,36.16,0
    .goto 179,31.05,20.09,0
    .goto 179,28.07,23.84,0
    .goto 179,26.35,29.74,0
    .goto 179,30.78,38.88,0
    .goto 179,35.03,36.16,60,0
    .goto 179,31.05,20.09,60,0
    .goto 179,29.52,21.20,60,0
    .goto 179,28.07,23.84,60,0
    .goto 179,27.64,25.32,60,0
    .goto 179,26.83,26.13,60,0
    .goto 179,27.64,27.00,60,0
    .goto 179,26.35,29.74,60,0
    .goto 179,26.56,31.40,60,0
    .goto 179,30.78,38.88,60,0
    >>Mientras estés en el |cRXP_FRIENDLY_Lanzagujas|r:
    >>Mata a los |cRXP_ENEMY_Orc Raiders|r, a los |cRXP_ENEMY_Wolfmaw Outriders|r, y a los |cRXP_ENEMY_Orcish Máquinas de guerra|r
    >>Lanza |T132330:0|t[Arrojar guja] (1) (A distancia instantáneo: Causa daño y lanza hacia atrás)
    >>|T236303:0|t[Ráfaga de gujas] (2) (A distancia instantáneo: Causa MUCHO daño y lanza hacia atrás)
    >>|T136106:0|t[Velocidad doble] (3) (Personal instantáneo: Aumenta la velocidad de movimiento un 100% durante 10 segundos)
    >>|cRXP_WARN_NO dejes que el |cRXP_FRIENDLY_Lanzagujas|r muera|r
    .complete 24681,1 --Orc Raider slain (40)
    .complete 24681,2 --Wolfmaw Outrider slain (8)
    .complete 24681,3 --Orcish War Machine slain (4)
step
    #optional
    #completewith next
    .goto 179,41.93,37.60
    >>Mientras estés en el |cRXP_FRIENDLY_Lanzagujas|r:
    >>|T136106:0|t[Velocidad doble] (3) (Personal instantáneo: Aumenta la velocidad de movimiento un 100% durante 10 segundos)
    .subzone 4726 >>Regresa a Puerto Quilla
step
    .goto 179,41.93,37.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lord Darius Crowley|r
    .turnin 24681 >>Entrega la misión Tienen aliados, pero nosotros también
	.target Lord Darius Crowley
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r
    .accept 26706 >>Acepta la misión Fin del juego
	.target Lorna Crowley
step
	#completewith next
    .goto 179,41.65,36.14
    >>|cRXP_WARN_NOTA: Esta misión está en un temporizador independiente, lo que significa que tendrás que esperar hasta 5 minutos para poder entrar al|r |cRXP_FRIENDLY_Hipogrifo|r
    .vehicle >>Entra al |cRXP_FRIENDLY_Hipogrifo|r
	.timer 58,Fin del juego RP
step
    >>Mata a los |cRXP_ENEMY_Gunship Grunts|r en la cubierta superior
    >>Después de despejar la cubierta superior, haz clic en la |cRXP_PICK_Cuerda|r en el centro de la nave para seguir a |cRXP_FRIENDLY_Lorna Crowley|r
    >>Mata a los |cRXP_ENEMY_Gunship Grunts|r mientras sigues a |cRXP_FRIENDLY_Lorna Crowley|r
    >>|cRXP_WARN_Una vez que |cRXP_FRIENDLY_Lorna Crowley|r coloca los explosivos, espera a que termine el Roleplay|r
    .complete 26706,1 --Gunship destroyed (1)
	.timer 43,Fin del juego RP
    .mob Gunship Grunt
    .target Lorna Crowley
--XX Gunship moves, can't use waypoints and timer may be off
step
    .goto 179,41.65,36.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lorna Crowley|r
    .turnin 26706 >>Entrega la misión Fin del juego
	.target Lorna Crowley
step
    .goto 179,42.59,35.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Almirante Brisanoche|r
    .accept 14434 >>Acepta la misión Aldea Rut'theran
    .turnin 14434 >>Entrega la misión Aldea Rut'theran
	.target Admiral Nightwind
step
    .goto 57,55.229,89.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krennan Aranas|r
    .accept 28517 >>Acepta la misión El Roble Quejumbroso
    .target Krennan Aranas
step
    #optional
    #label Darnassus
    #completewith Oak
    .goto 57,55.045,88.301
    .zone 89 >>Ve por el portal hacia Darnassus
--XX Training around here
step
    #optional
    #requires Darnassus
    #completewith Oak
    .goto 89,48.960,19.200,20,0
    .goto 89,48.126,14.432,60 >> Entra en El Roble Quejumbroso
step
    #label Oak
    .goto 89,48.126,14.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Genn Cringris|r
    .turnin 28517 >>Entrega la misión El Roble Quejumbroso
    .accept 26385 >>Acepta la misión Rompen olas de cambio
    .target Genn Greymane
--XX no longer "King"
--XX No need to set hs as it adjusts automatically
--XX Accepting Breaking Waves closes Hero's Call Darkshore (supposedly)
step
    #optional
    #label DarkshoreTravel
    #completewith Darkshore
    .goto 89,48.960,19.200,20 >> Sal del Roble Quejumbroso
step
    #optional
    #requires DarkshoreTravel
    #completewith Darkshore
    .goto 89,36.547,50.413
    .zone 57 >>Ve de regreso por el portal hacia Aldea Rut'theran
step
    #label Darkshore
    .goto 57,55.415,88.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Lor'Danel >> Vuela a Lor'danel
    .target Vesprystus
    .zoneskip 62
]])
