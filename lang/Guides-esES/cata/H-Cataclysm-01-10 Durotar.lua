if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Valle de los Retos
#next 6-10 Durotar
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor Orc
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step << !Orc
    #completewith next
    +Has seleccionado una guía pensada para Orcs. Debes elegir la misma zona inicial en la que empiezas
step
    .goto 1411,43.29,68.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaltunk|r
    .accept 25152 >>Acepta la misión Tu lugar en el mundo
    .target Kaltunk
step
    .goto 1411,43.23,68.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 25152 >>Entrega la misión Tu lugar en el mundo
    .accept 25126 >>Acepta la misión Dientes afilados
    .target Gornek
step
    .goto 1411,44.96,65.65,30,0
    .goto 1411,45.09,64.90,30,0
    .goto 1411,43.62,64.74,30,0
    .goto 1411,43.97,63.57
    >>Mata |cRXP_ENEMY_Jabalíes jaspeados|r
    .complete 25126,1 --Mottled Boar slaughtered (6)
    .mob Mottled Boar
step
    .goto 1411,43.28,68.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 25126 >>Entrega la misión Dientes afilados
    .accept 25172 >>Acepta la misión Invasores en nuestro hogar
    .target Gornek
step
#loop
	.line 1411,44.39,70.04,45.25,70.47,45.31,71.80,45.11,72.80,44.58,73.46,43.82,74.37,42.69,72.72,42.13,72.47,41.38,72.37,40.73,71.02,41.43,70.77,41.96,71.50,42.69,71.41,43.02,71.23,43.43,70.84,44.39,70.04
	.goto 1411,44.39,70.04,30,0
	.goto 1411,45.25,70.47,30,0
	.goto 1411,45.31,71.80,30,0
	.goto 1411,45.11,72.80,30,0
	.goto 1411,44.58,73.46,30,0
	.goto 1411,43.82,74.37,30,0
	.goto 1411,42.69,72.72,30,0
	.goto 1411,42.13,72.47,30,0
	.goto 1411,41.38,72.37,30,0
	.goto 1411,40.73,71.02,30,0
	.goto 1411,41.43,70.77,30,0
	.goto 1411,41.96,71.50,30,0
	.goto 1411,42.69,71.41,30,0
	.goto 1411,43.02,71.23,30,0
	.goto 1411,43.43,70.84,30,0
	.goto 1411,44.39,70.04,30,0
    >>Mata a los |cRXP_ENEMY_Northwatch Exploradores|r
    >>|cRXP_WARN_Están en sigilo|r
    .complete 25172,1 --Northwatch Scout (7)
    .mob Northwatch Scout
    --VV Check on yard range for these stealthed mobs
step
#loop
	.line 1411,44.39,70.04,45.25,70.47,45.31,71.80,45.11,72.80,44.58,73.46,43.82,74.37,42.69,72.72,42.13,72.47,41.38,72.37,40.73,71.02,41.43,70.77,41.96,71.50,42.69,71.41,43.02,71.23,43.43,70.84,44.39,70.04
	.goto 1411,44.39,70.04,30,0
	.goto 1411,45.25,70.47,30,0
	.goto 1411,45.31,71.80,30,0
	.goto 1411,45.11,72.80,30,0
	.goto 1411,44.58,73.46,30,0
	.goto 1411,43.82,74.37,30,0
	.goto 1411,42.69,72.72,30,0
	.goto 1411,42.13,72.47,30,0
	.goto 1411,41.38,72.37,30,0
	.goto 1411,40.73,71.02,30,0
	.goto 1411,41.43,70.77,30,0
	.goto 1411,41.96,71.50,30,0
	.goto 1411,42.69,71.41,30,0
	.goto 1411,43.02,71.23,30,0
	.goto 1411,43.43,70.84,30,0
	.goto 1411,44.39,70.04,30,0
    .xp 2+650 >> Farmea hasta 650+/900 XP
    .mob Northwatch Scout
step
    .goto 1411,43.27,68.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 25172 >>Entrega la misión Invasores en nuestro hogar
    .accept 25127 >>Acepta la misión Aguijón de escórpido
    .accept 3088 >>Acepta la misión Papiro encriptado << Rogue
    .accept 3087 >>Acepta la misión Papiro con grabados << Hunter
    .accept 25138 >>Acepta la misión Papiro glífico << Mage
    .accept 3089 >>Acepta la misión El papiro con runas grabadas << Shaman
    .accept 2383 >> Acepta la misión Papiro simple << Warrior
    .accept 3090 >>Acepta la misión Papiro corrupto << Warlock
    .accept 31156 >>Acepta la misión Papiro caligrafiado << Monk
    .target Gornek
step << Monk
    .goto 461/1,-4209.900,-618.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gato|r
    .turnin 31156 >>Entrega la misión Papiro caligrafiado
    .accept 31157 >>Acepta la misión Palma del tigre
    .target Gato
step << Rogue
    .goto 1411,42.37,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .turnin 3088 >>Entrega la misión Papiro encriptado
    .accept 25141 >>Acepta la misión Eviscerar
    .train 2098 >> Aprende |T132292:0|t[Eviscerar] << Cata
    .target Rwag
step << Hunter
    .goto 1411,42.84,69.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karranisha|r
    .turnin 3087 >>Entrega la misión Papiro con grabados
    .accept 25139 >>Acepta la misión Disparo firme
    .train 56641 >> Aprende |T132213:0|t[Vigía del pozo Solanian] << Cata
    .target Karranisha
step << Mage cata
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acrypha|r
    .turnin 25138 >>Entrega la misión Papiro glífico
    .accept 25149 >>Acepta la misión Misiles Arcanos
    .train 5143 >> Aprende |T136096:0|t[Misiles Arcanos] << Cata
    .target Acrypha
step << Mage !cata
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acrypha|r
    .turnin 25138 >>Entrega la misión Papiro glífico
    .accept 25149 >>Acepta la misión Nova de Escarcha
    .target Acrypha
step << Shaman
    .goto 1411,42.39,68.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .turnin 3089 >>Entrega la misión El papiro con runas grabadas
    .accept 25143 >>Acepta la misión Golpe primigenio
    .train 73899 >> Aprende |T460956:0|t[Golpe primigenio] << Cata
    .target Shikrik
step << Warrior
    .goto 1411,42.88,69.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple
    .accept 25147 >>Acepta Cargar
    .train 100 >> Aprende |T132337:0|t[Cargar] << Cata
    .target Frang
step << Warlock cata
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entrega la misión Papiro corrupto
    .accept 25145 >>Acepta Inmolar
    .train 348 >> Aprende |T135817:0|t[Inmolar] << Cata
    .target Nartok
step << Warlock !cata
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entrega la misión Papiro corrupto
    .accept 25145 >>Acepta la misión Corrupción
    .target Nartok
step << Monk
    .goto 1411,43.18,69.47
	>>Lanza |T606551:0|t[Palma del tigre] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
    .complete 31156,2 --Practice Tiger Palm: 2/2
	.mob Training Dummy
step << Rogue
    .goto 1411,43.18,69.47
	>>Lanza |T132292:0|t[Eviscerar] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 25141,2 << !Cata --Cast Eviscerate (x3)
	.complete 25141,1 << Cata --Cast Eviscerate (x3)
	.mob Training Dummy
step << Hunter
    .goto 1411,43.18,69.47
	>>Lanza |T132213:0|t[Vigía del pozo Solanian] a un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 25139,2 << !Cata --Cast Steady Shot (x5)
	.complete 25139,1 << Cata --Cast Steady Shot (x5)
	.mob Training Dummy
step << Mage cata
    .goto 1411,43.18,69.47
	>>Lanza |T136096:0|t[Misiles Arcanos] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 25149,1 --Arcane Missiles (x2)
	.mob Training Dummy
step << Mage !cata
    .goto 1411,43.18,69.47
	>>Lanza |T135848:0|t[Vigía del pozo Solanian] a un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 25149,2 --Cast Frost Nova
	.mob Training Dummy
step << Shaman
    .goto 1411,43.18,69.47
	>>Lanza |T460956:0|t[Golpe primigenio] sobre un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 25143,2 << !Cata--Cast Primal Strike (x3)
	.complete 25143,1 << Cata--Cast Primal Strike (x3)
	.mob Training Dummy
step << Warrior
    .goto 1411,43.18,69.47
	>>Lanza |T132337:0|t[Cargar] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 25147,2 << !Cata--Cast Charge (x1)
	.complete 25147,1 << Cata --Cast Charge (x1)
	.mob Training Dummy
step << Warlock cata
    .goto 1411,43.18,69.47
	>>Lanza |T135817:0|t[Inmolar] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 25145,2,1 --Cast Immolate (x5)
	.mob Training Dummy
step << Warlock !cata
    .goto 1411,43.18,69.47
	>>Lanza |T136118:0|t[Vigía del pozo Solanian] sobre un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 25145,2 --Cast Corruption (x5)
	.mob Training Dummy
step << Monk
    .goto 461/1,-4209.500,-618.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gato|r
    .turnin 31157 >>Entrega la misión Palma del tigre
    .target Gato
step << Rogue
    .goto 1411,42.37,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .turnin 25141 >>Gira a Eviscerar
    .target Rwag
step << Hunter
    .goto 1411,42.84,69.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karranisha|r
    .turnin 25139 >>Entrega la misión Tiro firme
    .target Karranisha
step << Mage cata
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acrypha|r
    .turnin 25149 >>Entrega la misión Misiles Arcanos
    .target Acrypha
step << Mage !cata
    .goto 1411,42.52,69.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Acrypha|r
    .turnin 25149 >>Entrega la misión Vigía del pozo Solanian
    .target Acrypha
step << Shaman
    .goto 1411,42.39,68.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .turnin 25143 >>Entrega la misión Golpe primigenio
    .target Shikrik
step << Warrior
    .goto 1411,42.88,69.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 25147 >>Gira a Cargar
    .target Frang
step << Warlock cata
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 25145 >>Gira a Inmolar
    .target Nartok
step << Warlock !cata
    .goto 1411,42.38,68.06
    .>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nartok|r
    .turnin 25145 >>Entrega la misión Corrupción
    .target Nartok
step
    .goto 1411,42.67,67.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .accept 25136 >>Acepta la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
step
    .goto 1411,43.46,67.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .accept 25134 >>Acepta la misión Peones vagos
    .target Foreman Thazz'ril
step
    #completewith Sarkoth
    >>Mata a los |cRXP_ENEMY_Obreros de Escórpido|r. Despójalos para obtener sus |cRXP_LOOT_Cruz|r
    .complete 25127,1 --Scorpid Worker Tail (8)
    .mob Scorpid Worker
 step
    #completewith ScorpidTails
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 25134,1 --Peons Awoken (4)
    .use 16114
    .target Lazy Peon
step
    #completewith ScorpidTails
    >>Despoja las |cRXP_LOOT_Cactus Apples|r
    .complete 25136,1 --Cactus Apple (6)
step
    .goto 1411,40.65,62.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hana'zua|r
    .accept 25129 >>Acepta la misión Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto 1411,40.55,67.23
    >>Mata a |cRXP_ENEMY_Sarkoth|r. Despójalo para obtener su |cRXP_LOOT_Zarpa|r
    .complete 25129,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    #label ScorpidTails
    #loop
    .goto 1411,40.140,67.939,0
    .waypoint 1411,40.081,66.990,30,0
    .waypoint 1411,40.140,67.939,30,0
    .waypoint 1411,40.753,68.579,30,0
    .waypoint 1411,41.270,67.971,30,0
    .waypoint 1411,41.389,65.804,30,0
    .waypoint 1411,40.022,66.103,30,0
    >>Mata a los |cRXP_ENEMY_Obreros de Escórpido|r. Despójalos para obtener sus |cRXP_LOOT_Cruz|r
    .complete 25127,1 --Scorpid Worker Tail (8)
    .mob Scorpid Worker
step
    .goto 1411,42.72,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .turnin 25136 >>Entrega la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
    .isQuestComplete 25136
step
    .goto 1411,43.23,68.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 25127 >>Entrega la misión Aguijón de escórpido
    .target Gornek
step
    .goto 1411,42.47,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Canaga|r
    .accept 25128 >>Acepta la misión Hana'zua
    .target Canaga Earthcaller
step
    .goto 1411,43.45,67.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .accept 25131 >>Acepta la misión Familiares viles
    .target Zureetha Fargaze
step
    .goto 1411,43.53,67.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 37446 >>Entrega la misión Peones vagos
    .target Foreman Thazz'ril
	.isQuestComplete 37446
step
    #completewith VileFamiliars
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 25134,1 --Peons Awoken (4)
    .use 16114
    .target Lazy Peon
step
    #completewith WakePeons
    >>Despoja las |cRXP_LOOT_Cactus Apples|r
    .complete 25136,1 --Cactus Apple (6)
step
    #label VileFamiliars
    #loop
    .goto 1411,45.26,57.37,0
    .goto 1411,46.90,59.59,40,0
    .goto 1411,46.94,58.61,40,0
    .goto 1411,46.25,58.00,40,0
    .goto 1411,46.48,57.25,40,0
    .goto 1411,45.86,57.43,40,0
    .goto 1411,45.82,56.60,40,0
    .goto 1411,45.22,57.51,40,0
    .goto 1411,45.10,56.72,40,0
    .goto 1411,44.55,56.14,40,0
    .goto 1411,44.38,56.79,40,0
    .goto 1411,43.78,57.46,40,0
    .goto 1411,43.95,58.65,40,0
    .goto 1411,43.11,58.25,40,0
    .goto 1411,45.26,57.37,40,0
    >>Mata |cRXP_ENEMY_Familiares viles|r
    .complete 25131,1 --Vile Familiar (8)
    .mob Vile Familiar
step
    #completewith next
    .goto 1411,43.90,57.80,20,0
    .goto 1411,42.85,57.27,20,0
    .goto 1411,41.15,58.91,20,0
    .goto 1411,40.91,60.24,20,0
    .goto 1411,40.43,62.93,20,0
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 25134,1 --Peons Awoken (4)
    .use 16114
    .target Lazy Peon
step
    .goto 1411,40.65,62.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hana'zua|r
    .turnin 25128 >>Entrega la misión Hana'zua
    .turnin 25129 >>Entrega la misión Sarkoth
    .accept 25130 >>Acepta la misión De vuelta a El Cubil
    .target Hana'zua
step
    #label WakePeons
    #loop
    .goto 1411,45.53,65.80,0
    .goto 1411,38.84,61.82,20,0
    .goto 1411,39.78,67.17,20,0
    .goto 1411,40.71,68.62,20,0
    .goto 1411,40.42,62.96,20,0
    .goto 1411,46.74,60.65,20,0
    .goto 1411,47.08,57.87,20,0
    .goto 1411,43.90,57.78,20,0
    .goto 1411,42.84,57.25,20,0
    .goto 1411,41.14,58.93,20,0
    .goto 1411,40.89,60.23,20,0
    .goto 1411,45.53,65.80,20,0
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 25134,1 --Peons Awoken (4)
    .use 16114
    .target Lazy Peon
step
    .goto 1411,42.73,67.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .turnin 25136 >>Entrega la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
    .isQuestComplete 25136
step
    .goto 1411,43.45,67.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 25131 >>Entrega la misión Familiares viles
    .target Zureetha Fargaze
step
    .goto 1411,43.53,67.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 25134 >>Entrega la misión Peones vagos
    .accept 25135 >>Acepta la misión Pico de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto 1411,43.45,67.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .accept 25132 >>Acepta la misión El medallón del Filo Ardiente
    .target Zureetha Fargaze
step
    #loop
    .goto 1411,44.85,59.65,0
    .goto 1411,40.52,60.35,20,0
    .goto 1411,41.59,58.59,20,0
    .goto 1411,42.60,58.76,20,0
    .goto 1411,44.64,58.22,20,0
    .goto 1411,45.45,58.45,20,0
    .goto 1411,44.85,59.65,20,0
    >>Despoja las |cRXP_LOOT_Cactus Apples|r
    .complete 25136,1 --6/6 Cactus Apple
step
    #completewith next
    .goto 1411,45.41,55.69,30 >> Entra en la cueva
step
    #completewith Yarrog
	>>Mata a los |cRXP_ENEMY_Acechadores viles|r
    .complete 25132,1 --5/5 Felstalker slain
    .mob Felstalker
step
    .goto 1411,45.36,56.44,15,0
    .goto 1411,44.57,54.76,15,0
    .goto 1411,43.73,53.79
    >>Despoja el |cRXP_LOOT_Thazz'ril's Pico|r en el suelo
    .complete 25135,1 --1/1 Thazz'ril's Pick
step
	#label Yarrog
    .goto 1411,43.15,55.47,15,0
    .goto 1411,42.43,53.49
    >>Mata a |cRXP_ENEMY_Yarrog Sombrarruina|r. Despójalo para obtener su |cRXP_LOOT_Medallion|r
    .complete 25132,2 --1/1 Burning Blade Medallion
    .mob Yarrog Baneshadow
step
    .goto 1411,42.42,54.14,15,0
    .goto 1411,42.98,55.32,15,0
    .goto 1411,44.48,54.98,15,0
    .goto 1411,44.77,54.56,15,0
    .goto 1411,44.81,53.15,15,0
    .goto 1411,44.10,52.94,15,0
    .goto 1411,42.70,52.97
	>>Mata a los |cRXP_ENEMY_Acechadores viles|r
    .complete 25132,1 --5/5 Felstalker slain
    .mob Felstalker
step
    #completewith next
    .goto 1411,42.50,54.48,-1
    .goto 1411,44.77,54.64,-1
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Asegúrate de morir cerca de la flecha del punto de ruta|r
    .target Ángel de la Resurrección
step
    .goto 1411,43.23,68.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 25130 >>Entrega la misión De vuelta a El Cubil
    .target Gornek
step
    .goto 1411,42.74,67.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .turnin 25136 >>Entrega la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
step
    .goto 1411,43.45,67.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 25132 >>Entrega la misión El medallón del Filo Ardiente
    .accept 25133 >>Acepta la misión Preséntate en el Poblado Sen'jin << Orc
    .target Zureetha Fargaze
step
    .goto 1411,43.53,67.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 25135 >>Entrega la misión Pico de Thazz'ril
    .target Foreman Thazz'ril

    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Lanza Negra Isle
#next 6-10 Durotar
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor Troll
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << !Troll
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía pensada para Trolls. Debes elegir la misma zona inicial en la que empiezas|r
step
    .goto 1411,62.45,84.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jin'thala|r
    .accept 31159 >> Acepta la misión El levantamiento de los Lanza Negra << Monk
	.accept 24770 >> Acepta la misión El levantamiento de los Lanza Negra << Rogue
	.accept 24607 >> Acepta la misión El levantamiento de los Lanza Negra << Warrior
	.accept 24750 >> Acepta la misión El levantamiento de los Lanza Negra << Mage
	.accept 24758 >> Acepta la misión El levantamiento de los Lanza Negra << Shaman
	.accept 24764 >> Acepta la misión El levantamiento de los Lanza Negra << Druid
	.accept 24776 >> Acepta la misión El levantamiento de los Lanza Negra << Hunter
	.accept 24782 >> Acepta la misión El levantamiento de los Lanza Negra << Priest
	.accept 26272 >> Acepta la misión El levantamiento de los Lanza Negra << Warlock
    .target Jin'thala
step << Monk
    .goto 463/1,-5441.400,-1149.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zabrax|r
    .turnin 31159 >>Entrega la misión El levantamiento de los Lanza Negra
    .accept 31158 >>Acepta la misión A golpe de entrenamiento
    .target Zabrax
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Legati|r
    .turnin 24770 >> Entrega la misión El levantamiento de los Lanza Negra
    .accept 24771 >> Acepta la misión A golpe de entrenamiento
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nortet|r
    .turnin 24607 >> Entrega la misión El levantamiento de los Lanza Negra
    .accept 24639 >> Acepta la misión A golpe de entrenamiento
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Soratha|r
    .turnin 24750 >> Entrega la misión El levantamiento de los Lanza Negra
    .accept 24751 >> Acepta la misión A golpe de entrenamiento
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nekali|r
    .turnin 24758 >> Entrega la misión El levantamiento de los Lanza Negra
    .accept 24759 >> Acepta la misión A golpe de entrenamiento
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24764 >> Entrega la misión El levantamiento de los Lanza Negra
    .accept 24765 >> Acepta la misión A golpe de entrenamiento
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ortezza|r
    .turnin 24776 >> Entrega la misión El levantamiento de los Lanza Negra
    .accept 24777 >> Acepta la misión A golpe de entrenamiento
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tunari|r
    .turnin 24782 >> Entrega la misión El levantamiento de los Lanza Negra
    .accept 24783 >> Acepta la misión A golpe de entrenamiento
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Voldreka|r
    .turnin 26272 >> Entrega la misión El levantamiento de los Lanza Negra
    .accept 26273 >> Acepta la misión A golpe de entrenamiento
    .target Voldreka
step
    .goto 1411,66.912,83.481 << Hunter
    .goto 1411,67.907,84.600 << Druid
    .goto 1411,68.617,84.307 << Mage
    .goto 1411,67.825,82.582 << Priest
    .goto 1411,65.927,83.015 << Rogue
    .goto 1411,65.069,82.878 << Warlock
    .goto 1411,64.732,84.031 << Shaman
    .goto 1411,65.931,84.338 << Warrior
 	>>Mata a los |cRXP_ENEMY_Tiki Targets|r
    .complete 31158,1 << Monk --Kill Tiki Target (x6)
	.complete 24771,1 << Rogue --Kill Tiki Target (x6)
	.complete 24639,1 << Warrior --Kill Tiki Target (x6)
	.complete 24751,1 << Mage --Kill Tiki Target (x6)
	.complete 24759,1 << Shaman --Kill Tiki Target (x6)
	.complete 24765,1 << Druid --Kill Tiki Target (x6)
	.complete 24777,1 << Hunter --Kill Tiki Target (x6)
	.complete 24783,1 << Priest --Kill Tiki Target (x6)
	.complete 26273,1 << Warlock --Kill Tiki Target (x6)
	.mob Tiki Target
step << Monk
    .goto 463/1,-5441.300,-1149.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zabrax|r
    .turnin 31158 >>Entrega la misión A golpe de entrenamiento
    .accept 31160 >>Acepta la misión Un duro comienzo
    .target Zabrax
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Legati|r
    .turnin 24771 >> Entrega la misión A golpe de entrenamiento
    .accept 24773 >> Acepta la misión Un duro comienzo
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nortet|r
    .turnin 24639 >> Entrega la misión A golpe de entrenamiento
    .accept 24641 >> Acepta la misión Un duro comienzo
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Soratha|r
    .turnin 24751 >> Entrega la misión A golpe de entrenamiento
    .accept 24753 >> Acepta la misión Un duro comienzo
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nekali|r
    .turnin 24759 >> Entrega la misión A golpe de entrenamiento
    .accept 24761 >> Acepta la misión Un duro comienzo
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24765 >> Entrega la misión A golpe de entrenamiento
    .accept 24767 >> Acepta la misión Un duro comienzo
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ortezza|r
    .turnin 24777 >> Entrega la misión A golpe de entrenamiento
    .accept 24779 >> Acepta la misión Un duro comienzo
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tunari|r
    .turnin 24783 >> Entrega la misión A golpe de entrenamiento
    .accept 24785 >> Acepta la misión Un duro comienzo
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Voldreka|r
    .turnin 26273 >> Entrega la misión A golpe de entrenamiento
    .accept 26275 >> Acepta la misión Un duro comienzo
    .target Voldreka
step << Monk
    #loop
    .goto 1411,65.51,80.26,0
    .goto 1411,64.49,80.21,0
    .goto 1411,65.51,80.26,40,0
    .goto 1411,65.08,79.72,40,0
    .goto 1411,64.49,80.21,40,0
    .goto 1411,64.78,81.23,40,0
    >>Mata a los |cRXP_ENEMY_Wildmane Cats|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
	.complete 31160,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Rogue
    #loop
    .goto 1411,65.51,80.26,0
    .goto 1411,64.49,80.21,0
    .goto 1411,65.51,80.26,40,0
    .goto 1411,65.08,79.72,40,0
    .goto 1411,64.49,80.21,40,0
    .goto 1411,64.78,81.23,40,0
    >>Mata a los |cRXP_ENEMY_Wildmane Cats|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
	.complete 24773,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Warrior
    #loop
    .goto 1411,64.71,86.19,0
    .goto 1411,66.60,87.54,0
    .goto 1411,64.71,86.19,40,0
    .goto 1411,65.45,86.86,40,0
    .goto 1411,65.38,87.62,40,0
    .goto 1411,66.60,87.54,40,0
    .goto 1411,66.86,86.75,40,0
    >>Mata a los |cRXP_ENEMY_Wildmane Cats|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
	.complete 24639,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Mage
    #loop
    .goto 1411,69.46,86.13,0
    .goto 1411,69.35,82.48,0
    .goto 1411,69.46,86.13,40,0
    .goto 1411,69.45,85.51,40,0
    .goto 1411,69.35,83.72,40,0
    .goto 1411,69.35,82.48,40,0
    .goto 1411,69.25,81.02,40,0
    >>Mata a los |cRXP_ENEMY_Wildmane Cats|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
	.complete 24753,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Shaman
    #loop
    .goto 1411,63.99,83.54,0
    .goto 1411,64.99,79.80,0
    .goto 1411,63.99,83.54,40,0
    .goto 1411,64.73,81.40,40,0
    .goto 1411,64.52,80.28,40,0
    .goto 1411,64.99,79.80,40,0
    .goto 1411,65.55,80.36,40,0
    >>Mata a los |cRXP_ENEMY_Wildmane Cats|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
	.complete 24761,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Druid
    #loop
    .goto 1411,69.46,86.13,0
    .goto 1411,69.35,82.48,0
    .goto 1411,69.46,86.13,40,0
    .goto 1411,69.45,85.51,40,0
    .goto 1411,69.35,83.72,40,0
    .goto 1411,69.35,82.48,40,0
    .goto 1411,69.25,81.02,40,0
    >>Mata a los |cRXP_ENEMY_Wildmane Cats|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
	.complete 24767,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Hunter
    #loop
    .goto 1411,67.19,81.74,0
    .goto 1411,68.81,80.40,0
    .goto 1411,67.19,81.74,40,0
    .goto 1411,66.11,80.56,40,0
    .goto 1411,66.33,80.15,40,0
    .goto 1411,67.11,79.64,40,0
    .goto 1411,68.13,79.69,40,0
    .goto 1411,68.81,80.40,40,0
    .goto 1411,69.02,81.08,40,0
    .goto 1411,68.47,81.43,40,0
    >>Mata a los |cRXP_ENEMY_Wildmane Cats|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
	.complete 24779,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Priest
    #loop
    .goto 1411,67.19,81.74,0
    .goto 1411,69.02,81.08,0
    .goto 1411,67.19,81.74,40,0
    .goto 1411,66.11,80.56,40,0
    .goto 1411,66.33,80.15,40,0
    .goto 1411,67.11,79.64,40,0
    .goto 1411,68.13,79.69,40,0
    .goto 1411,68.81,80.40,40,0
    .goto 1411,69.02,81.08,40,0
    .goto 1411,68.47,81.43,40,0
    >>Mata a los |cRXP_ENEMY_Wildmane Cats|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
	.complete 24785,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Warlock
    #loop
    .goto 1411,65.51,80.26,0
    .goto 1411,64.78,81.23,0
    .goto 1411,65.51,80.26,40,0
    .goto 1411,65.08,79.72,40,0
    .goto 1411,64.49,80.21,40,0
    .goto 1411,64.78,81.23,40,0
    >>Mata a los |cRXP_ENEMY_Wildmane Cats|r. Despójalos para obtener sus |cRXP_LOOT_Pelts|r
	.complete 26275,1 --Collect Wildmane Cat Pelt (x6)
	.mob Wildmane Cat
step << Monk
    .goto 463/1,-5441.300,-1149.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zabrax|r
    .turnin 31160 >>Entrega la misión Un duro comienzo
    .accept 31161 >>Acepta la misión Foso de pruebas
    .target Zabrax
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Legati|r
    .turnin 24773 >> Entrega la misión Un duro comienzo
    .accept 24774 >> Acepta la misión Foso de pruebas
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nortet|r
    .turnin 24641 >> Entrega la misión Un duro comienzo
    .accept 24642 >> Acepta la misión Foso de pruebas
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Soratha|r
    .turnin 24753 >> Entrega la misión Un duro comienzo
    .accept 24754 >> Acepta la misión Foso de pruebas
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nekali|r
    .turnin 24761 >> Entrega la misión Un duro comienzo
    .accept 24762 >> Acepta la misión Foso de pruebas
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24767 >> Entrega la misión Un duro comienzo
    .accept 24768 >> Acepta la misión Foso de pruebas
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ortezza|r
    .turnin 24779 >> Entrega la misión Un duro comienzo
    .accept 24780 >> Acepta la misión Foso de pruebas
    .target Ortezza
step << Priest
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tunari|r
    .turnin 24785 >> Entrega la misión Un duro comienzo
    .accept 24786 >> Acepta la misión Foso de pruebas
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Voldreka|r
    .turnin 26275 >> Entrega la misión Un duro comienzo
    .accept 26276 >> Acepta la misión Foso de pruebas
    .target Voldreka
step << Monk
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Carcelero Lanza Negra|r
	.complete 31161,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Rogue
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Carcelero Lanza Negra|r
	.complete 24774,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Warrior
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Carcelero Lanza Negra|r
    .complete 24642,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Mage
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Carcelero Lanza Negra|r
	.complete 24754,1 << Mage --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Shaman
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Carcelero Lanza Negra|r
    .complete 24762,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Druid
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Carcelero Lanza Negra|r
	.complete 24768,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Hunter
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Carcelero Lanza Negra|r
	.complete 24780,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Priest
    .goto 1411,67.47,84.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Carcelero Lanza Negra|r
	.complete 24786,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Warlock
    .goto 1411,65.58,83.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Carcelero Lanza Negra|r
	.complete 26276,1 --Speak to a Darkspear Jailor (x1)
    .skipgossip
    .target Darkspear Jailor
step << Monk
    .goto 1411,65.29,83.74
    >>Mata al |cRXP_ENEMY_Explorador Escama Maliciosa cautivo|r
	.complete 31161,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Rogue
    .goto 1411,65.29,83.74
    >>Mata al |cRXP_ENEMY_Explorador Escama Maliciosa cautivo|r
	.complete 24774,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Warrior
    .goto 1411,65.29,83.74
    >>Mata al |cRXP_ENEMY_Explorador Escama Maliciosa cautivo|r
	.complete 24642,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Mage
    .goto 1411,67.37,83.94
    >>Mata al |cRXP_ENEMY_Explorador Escama Maliciosa cautivo|r
	.complete 24754,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Shaman
    .goto 1411,65.29,83.74
    >>Mata al |cRXP_ENEMY_Explorador Escama Maliciosa cautivo|r
	.complete 24762,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Druid
    .goto 1411,67.37,83.94
    >>Mata al |cRXP_ENEMY_Explorador Escama Maliciosa cautivo|r
	.complete 24768,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Hunter
    .goto 1411,67.37,83.94
    >>Mata al |cRXP_ENEMY_Explorador Escama Maliciosa cautivo|r
	.complete 24780,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Priest
    .goto 1411,67.37,83.94
    >>Mata al |cRXP_ENEMY_Explorador Escama Maliciosa cautivo|r
	.complete 24786,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Warlock
    .goto 1411,65.29,83.74
    >>Mata al |cRXP_ENEMY_Explorador Escama Maliciosa cautivo|r
	.complete 26276,2 --1/1 Captive Spitescale Scout slain
    .mob Captive Spitescale Scout
step << Monk
    .goto 463/1,-5429.900,-1151.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zabrax|r
    .turnin 31161 >>Entrega la misión Foso de pruebas
    .accept 31162 >>Acepta la misión Las artes del monje
    .target Zabrax
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Legati|r
    .turnin 24774 >>Entrega la misión Foso de pruebas
    .accept 24772 >>Acepta la misión Las artes del pícaro
    .train 2098 >> Aprende |T132292:0|t[Eviscerar] << Cata
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nortet|r
    .turnin 24642 >>Entrega la misión Foso de pruebas
    .accept 24640 >>Acepta la misión Las artes del guerrero
    .train 100 >> |T132337:0|t[Cargar] << Cata
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Soratha|r
    .turnin 24754 >>Entrega la misión Foso de pruebas
    .accept 24752 >>Acepta la misión Las artes del mago
    .train 5143 >>Aprende |T136096:0|t[Misiles Arcanos] << Cata
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nekali|r
    .turnin 24762 >>Entrega la misión Foso de pruebas
    .accept 24760 >>Acepta la misión Las artes del chamán
    .train 73899 >>Aprende |T460956:0|t[Golpe primigenio] << Cata
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24768 >>Entrega la misión Foso de pruebas
    .accept 24766 >>Acepta la misión Las artes del druida
    .train 774 >>Aprende |T136081:0|t[Rejuvenecimiento] << Cata
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ortezza|r
    .turnin 24780 >>Entrega la misión Foso de pruebas
    .accept 24778 >>Acepta la misión Las artes del cazador
    .train 56641 >>Aprende |T132213:0|t[Vigía del pozo Solanian] << Cata
    .target Ortezza
step << Priest cata
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tunari|r
    .turnin 24786 >>Entrega la misión Foso de pruebas
    .accept 24784 >>Acepta la misión Las artes de un sacerdote
    .train 2061 >>Aprende |T135907:0|t[Sanación relámpago] << Cata
    .target Tunari
step << Priest !cata
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tunari|r
    .turnin 24786 >>Entrega la misión Foso de pruebas
    .accept 24784 >>Acepta la misión Pillando la palabra
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Voldreka|r
    .turnin 26276 >>Entrega la misión Foso de pruebas
    .accept 26274 >>Acepta la misión Las artes del brujo
    .train 348 >>Aprende |T135817:0|t[Inmolar] << Cata
    .target Voldreka
step << Monk
	.goto 1411,65.91,83.45
	>>Lanza |T606551:0|t[Palma del tigre] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 31162,2 --Cast Tiger Palm (x1)
	.mob Tiki Target
step << Rogue
	.goto 1411,65.91,83.45
	>>Lanza |T132292:0|t[Eviscerar] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 24772,2 << !Cata --Cast Eviscerate (x3)
	.complete 24772,1 << Cata --Cast Eviscerate (x3)
	.mob Tiki Target
step << Warrior
	.goto 1411,65.98,84.42
	>>Lanza |T132337:0|t[Cargar] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 24640,2 << !Cata --Cast Charge (x3)
	.complete 24640,1 << Cata --Cast Charge (x3)
	.mob Tiki Target
step << Mage cata
	.goto 1411,68.91,84.31
	>>Lanza |T136096:0|t[Misiles Arcanos] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 24752,2 << !Cata --Cast Arcane Missiles (x3)
	.complete 24752,1 << Cata --Cast Arcane Missiles (x3)
	.mob Tiki Target
step << Mage !cata
	.goto 1411,68.91,84.31
	>>Lanza |T135848:0|t[Vigía del pozo Solanian] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 24752,2 --Cast Frost Nova
	.mob Tiki Target
step << Shaman
	.goto 1411,64.86,84.69
	>>Lanza |T460956:0|t[Golpe primigenio] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 24760,2 << !Cata --Cast Primal Strike (x3)
	.complete 24760,1 << Cata --Cast Primal Strike (x3)
	.mob Tiki Target
step << Druid cata
	.goto 1411,67.91,84.60
	>>Lanza |T136081:0|t[Rejuvenecimiento] en un |cRXP_FRIENDLY_Vigilante Lanza Negra herido|r
	.complete 24766,1 --Cast Rejuvenation (x1)
	.target Wounded Darkspear Watcher
step << Druid !cata
	.goto 1411,67.91,84.60
	>>Lanza |T136096:0|t[Fuego lunar] en un |cRXP_FRIENDLY_Vigilante Lanza Negra herido|r
	.complete 24766,2 --Cast Moonfire
	.target Wounded Darkspear Watcher
step << Hunter
	.goto 1411,67.18,83.12
	>>Lanza |T132213:0|t[Vigía del pozo Solanian] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 24778,2 << !Cata --Steady Shot (x3)
	.complete 24778,1 << Cata --Steady Shot (x3)
	.mob Tiki Target
step << Priest cata
	.goto 1411,67.35,83.24
	>>Lanza |T135907:0|t[Sanación relámpago] en un |cRXP_FRIENDLY_Vigilante Lanza Negra herido|r
	.complete 24784,1 --Cast Flash Heal (x5)
	.target Wounded Darkspear Watcher
step << Priest !cata
	.goto 1411,65.07,82.88
	>>Lanza |T136207:0|t[Palabra de las Sombras: dolor] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 24784,2 --Cast Shadow Word: Pain
	.mob Tiki Target
step << Warlock cata
	.goto 1411,65.07,82.88
	>>Lanza |T135817:0|t[Inmolar] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 26274,1 --Cast Immolate (x3)
	.mob Tiki Target
step << Warlock !cata
	.goto 1411,65.07,82.88
	>>Lanza |T136118:0|t[Vigía del pozo Solanian] en un |cRXP_ENEMY_Diana Tiki|r
	.complete 26274,2 --Cast Corruption
	.mob Tiki Target
step << Monk
    .goto 463/1,-5430.300,-1151.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zabrax|r
    .turnin 31162 >>Entrega la misión Las artes del monje
    .accept 31163 >>Acepta la misión Mejor de lo esperado
    .target Zabrax
step << Rogue
    .goto 1411,65.89,83.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Legati|r
    .turnin 24772 >>Entrega la misión Las artes del pícaro
    .accept 24775 >>Acepta la misión Mejor de lo esperado
    .target Legati
step << Warrior
    .goto 1411,65.79,84.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nortet|r
    .turnin 24640 >>Entrega la misión Las artes del guerrero
    .accept 24643 >>Acepta la misión Mejor de lo esperado
    .target Nortet
step << Mage
    .goto 1411,68.22,83.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Soratha|r
    .turnin 24752 >>Entrega la misión Las artes del mago
    .accept 24755 >>Acepta la misión Mejor de lo esperado
    .target Soratha
step << Shaman
    .goto 1411,64.94,84.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nekali|r
    .turnin 24760 >>Entrega la misión Las artes del chamán
    .accept 24763 >>Acepta la misión Mejor de lo esperado
    .target Nekali
step << Druid
    .goto 1411,67.67,84.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zen'tabra|r
    .turnin 24766 >>Entrega la misión Las artes del druida
    .accept 24769 >>Acepta la misión Mejor de lo esperado
    .target Zen'tabra
step << Hunter
    .goto 1411,67.09,83.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ortezza|r
    .turnin 24778 >>Entrega la misión Las artes del cazador
    .accept 24781 >>Acepta la misión Mejor de lo esperado
    .target Ortezza
step << Priest cata
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tunari|r
    .turnin 24784 >>Entrega la misión Las artes de un sacerdote
    .accept 24787 >>Acepta la misión Mejor de lo esperado
    .target Tunari
step << Priest !cata
    .goto 1411,67.59,83.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tunari|r
    .turnin 24784 >>Entrega la misión Pillando la palabra
    .accept 24787 >>Acepta la misión Mejor de lo esperado
    .target Tunari
step << Warlock
    .goto 1411,64.92,83.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Voldreka|r
    .turnin 26274 >>Entrega la misión Las artes del brujo
    .accept 26277 >>Acepta la misión Mejor de lo esperado
    .target Voldreka
step
    .goto 1411,68.86,88.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 31163 >>Entrega la misión Mejor de lo esperado << Monk
    .turnin 24643 >>Entrega la misión Mejor de lo esperado << Warrior
    .turnin 24755 >>Entrega la misión Mejor de lo esperado << Mage
    .turnin 24763 >>Entrega la misión Mejor de lo esperado << Shaman
    .turnin 24769 >>Entrega la misión Mejor de lo esperado << Druid
    .turnin 24775 >>Entrega la misión Mejor de lo esperado << Rogue
    .turnin 24781 >>Entrega la misión Mejor de lo esperado << Hunter
    .turnin 24787 >>Entrega la misión Mejor de lo esperado << Priest
    .turnin 26277 >>Entrega la misión Mejor de lo esperado << Warlock
    .accept 25064 >>Acepta la misión Moraya
    .target Vol'Jin
step
    .goto 1411,68.50,87.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tora'Jin|r
    .accept 25037 >> Acepta la misión Pescar cangrejos
    .target Tora'Jin
step
    .goto 1411,67.26,87.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moraya|r
    .turnin 25064 >> Entrega la misión Moraya
    .accept 24622 >> Acepta la misión El mejor amigo del trol
    .target Moraya
step
    #label CrossBridge
    #completewith Kijara
    .goto 1411,66.09,89.14,40,0
    .goto 1411,64.94,89.02,40,0
    .goto 1411,63.42,93.50,40 >> Cruza el Puente
step
    #require CrossBridge
    #completewith next
    >>Mata a los |cRXP_ENEMY_Pygmy Surf Crawlers|r. Despójalos para obtener su |cRXP_LOOT_Carne|r
    .complete 25037,1 --Collect Fresh Crawler Meat (x5)
    .mob Pygmy Surf Crawler
step
    #label Kijara
    .goto 1411,63.20,95.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kijara|r
    .turnin 24622 >>Entrega la misión El mejor amigo del trol
    .accept 24623 >>Acepta la misión Salvar a la prole
    .target Kijara
step
    .goto 1411,63.44,95.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tegashi|r
    .accept 24625 >>Acepta la misión El consorte de la Bruja del Mar
    .accept 24624 >>Acepta la misión Piedad para los perdidos
    .target Tegashi
step
    #completewith Bloodtalons
    >>Mata a los |cRXP_ENEMY_Pygmy Surf Crawlers|r. Despójalos para obtener su |cRXP_LOOT_Carne|r
    .complete 25037,1 --Collect Fresh Crawler Meat (x5)
    .mob Pygmy Surf Crawler
step
	#completewith Bloodtalons
	.goto 1411,61.32,91.76,40,0
	>>Usa tu |T132161:0|t[|cRXP_LOOT_Silbato de Garrasangre|r] cuando estés cerca de la |cRXP_FRIENDLY_Prole Garrasangre perdida|r para rescatarla
	.complete 24623,1 --Rescue Bloodtalon Hatchling (x12)
	.target Lost Bloodtalon Hatchling
	.use 52283
step
    #completewith next
   	.goto 1411,60.89,91.69,40,0
	>>Mata al |cRXP_ENEMY_Garrasangre corrupto|r
	.complete 24624,1 --Kill Corrupted Bloodtalon (x8)
	.mob Corrupted Bloodtalon
step
   	.goto 1411,60.39,89.79
	>>Mata al |cRXP_ENEMY_Naj'tess|r. Despójalo para obtener su |cRXP_LOOT_Orbe|r
	.complete 24625,1 --Collect Naj'Tess' Orb of Corruption (x1)
	.mob Naj'tess
step
	#label Bloodtalons
#loop
	.line 1411,61.70,91.31,61.58,90.08,61.54,89.48,60.93,88.45,60.78,87.63,59.66,87.65,59.46,88.82,59.13,89.94,58.60,90.66,59.46,90.85,60.21,91.14,60.91,91.69,61.70,91
	.goto 1411,61.70,91.31,30,0
	.goto 1411,61.58,90.08,30,0
	.goto 1411,61.54,89.48,30,0
	.goto 1411,60.93,88.45,30,0
	.goto 1411,60.78,87.63,30,0
	.goto 1411,59.66,87.65,30,0
	.goto 1411,59.46,88.82,30,0
	.goto 1411,59.13,89.94,30,0
	.goto 1411,58.60,90.66,30,0
	.goto 1411,59.46,90.85,30,0
	.goto 1411,60.21,91.14,30,0
	.goto 1411,60.91,91.69,30,0
	.goto 1411,61.70,91.00,30,0
	>>Mata al |cRXP_ENEMY_Garrasangre corrupto|r
	.complete 24624,1 --Kill Corrupted Bloodtalon (x8)
	.mob Corrupted Bloodtalon
step
#loop
	.line 1411,61.70,91.31,61.58,90.08,61.54,89.48,60.93,88.45,60.78,87.63,59.66,87.65,59.46,88.82,59.13,89.94,58.60,90.66,59.46,90.85,60.21,91.14,60.91,91.69,61.70,91
	.goto 1411,61.70,91.31,30,0
	.goto 1411,61.58,90.08,30,0
	.goto 1411,61.54,89.48,30,0
	.goto 1411,60.93,88.45,30,0
	.goto 1411,60.78,87.63,30,0
	.goto 1411,59.66,87.65,30,0
	.goto 1411,59.46,88.82,30,0
	.goto 1411,59.13,89.94,30,0
	.goto 1411,58.60,90.66,30,0
	.goto 1411,59.46,90.85,30,0
	.goto 1411,60.21,91.14,30,0
	.goto 1411,60.91,91.69,30,0
	.goto 1411,61.70,91.00,30,0
	>>Usa tu |T132161:0|t[|cRXP_LOOT_Silbato de Garrasangre|r] cuando estés cerca de la |cRXP_FRIENDLY_Prole Garrasangre perdida|r para rescatarla
	.complete 24623,1 --Rescue Bloodtalon Hatchling (x12)
	.target Lost Bloodtalon Hatchling
	.use 52283
step
	#completewith next
    >>Mata a los |cRXP_ENEMY_Pigmeo Surf Crawlers|r. Despójalos para obtener la |cRXP_LOOT_Carne|r
    .complete 25037,1 --Collect Fresh Crawler Meat (x5)
    .mob Pygmy Surf Crawler
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tegashi|r y |cRXP_FRIENDLY_Kijara|r
    .turnin 24625 >>Entrega la misión El consorte de la Bruja del Mar
    .turnin 24624 >>Entrega la misión Piedad para los perdidos
    .goto 1411,63.44,95.23
    .turnin 24623 >>Entrega la misión Salvar a la prole
    .accept 24626 >>Acepta la misión Joven y salvaje
    .goto 1411,63.20,95.52
    .target Tegashi
    .target Kijara
step
    #loop
	.line 463,45.93,86.53,46.15,88.00,43.81,88.49,43.46,91.82,44.25,91.93,45.27,89.85,45.95,89.71,46.91,93.18,47.68,92.85,47.84,88.58,48.45,90.12,47.51,88.96,47.42,86.91,46.21,85.10,46.03,83.83,44.17,82.86,42.43,83.12,41.15,85.98,40.87,88.56,42.30,88.10,43.60,85.27,44.56,85.10,45.93,86.53
    .goto 463,45.93,86.53,30,0
    .goto 463,44.56,85.10,30,0
    .goto 463,43.60,85.27,30,0
    .goto 463,42.30,88.10,30,0
    .goto 463,40.87,88.56,30,0
    .goto 463,41.15,85.98,30,0
    .goto 463,42.43,83.12,30,0
    .goto 463,44.17,82.86,30,0
    .goto 463,46.03,83.83,30,0
    .goto 463,46.21,85.10,30,0
    .goto 463,47.42,86.91,30,0
    .goto 463,47.51,88.96,30,0
    .goto 463,48.45,90.12,30,0
    .goto 463,47.84,88.58,30,0
    .goto 463,47.68,92.85,30,0
    .goto 463,46.91,93.18,30,0
    .goto 463,45.95,89.71,30,0
    .goto 463,45.27,89.85,30,0
    .goto 463,44.25,91.93,30,0
    .goto 463,43.46,91.82,30,0
    .goto 463,43.81,88.49,30,0
    .goto 463,46.15,88.00,30,0
    >>Usa el |T134326:0|t[Bloodtalon Lazo] en |cRXP_FRIENDLY_Garrapresta|r
    >>|cRXP_WARN_Aparece junto a ti y luego corre antihorario alrededor de la isla|r
    .complete 24626,1 --1/1 Capture Swiftclaw
    .unitscan Swiftclaw
    .use 50053
step
    .goto 1411,63.40,93.52,40,0
    .goto 1411,64.81,89.25,40,0
    .goto 1411,65.80,88.52
    >>Monta al |cRXP_FRIENDLY_Garrapresta|r de regreso al Raptor Pen
    .complete 24626,2 --1/1 Return Swiftclaw to the Raptor Pens
step
    .goto 1411,66.65,90.61
    .goto 1411,66.67,91.36
    .goto 1411,67.72,91.16
    .goto 1411,68.07,90.26
    .goto 1411,67.59,90.40
    >>Mata a los |cRXP_ENEMY_Pigmeo Surf Crawlers|r. Despójalos para obtener la |cRXP_LOOT_Carne|r
    .complete 25037,1 --Collect Fresh Crawler Meat (x5)
    .mob Pygmy Surf Crawler
step
    .goto 1411,67.24,87.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Moraya|r
    .turnin 24626 >>Entrega la misión Joven y salvaje
    .target Moraya
step
    .goto 1411,68.50,87.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tora'jin|r
    .turnin 25037 >>Entrega la misión Pescar cangrejos
    .target Tora'Jin
step << Troll
    .goto 1411,67.98,89.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tortunga|r
    .accept 25035 >>Acepta la misión Romper el frente
    .target Tortunga << Troll
step << Troll
    .goto 1411,68.02,89.06
    .gossipoption 112038 >> Habla con |cRXP_FRIENDLY_Jornun|r
    .timer 39,Rompe el frente RP
    .target Jornun
    .isOnQuest 25035
step << Troll
    .goto 1411,67.96,74.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morakki|r
    .turnin 25035 >>Entrega la misión Romper el frente
    .accept 24812 >>Acepta la misión Sin piedad
    .accept 24813 >>Acepta la misión Fetiche territorial
    .target Morakki
step << Troll
    #completewith next
    >>Mata a los |cRXP_ENEMY_Spitescale Nagas|r
    .complete 24812,1 --12/12 Spitescale Naga Slain
    .mob Spitescale Wavethrasher
    .mob Spitescale Siren
step << Troll
    #loop
    .goto 1411,69.043,71.780,0
    .goto 1411,68.748,72.676,12,0
    .goto 1411,69.043,71.780,12,0
    .goto 1411,69.219,70.538,12,0
    .goto 1411,68.692,70.474,12,0
    .goto 1411,69.288,69.600,12,0
    .goto 1411,68.760,69.642,12,0
    .goto 1411,68.363,70.769,12,0
    .use 52065>>Usa el |T132482:0|t[Fetiche territorial] junto a las |cRXP_PICK_Spitescale Banderas|r
    .complete 24813,1 --8/8 Territorial Fetish placed
step << Troll
    #loop
    .goto 1411,69.043,71.780,0
    .goto 1411,68.748,72.676,12,0
    .goto 1411,69.043,71.780,12,0
    .goto 1411,69.219,70.538,12,0
    .goto 1411,68.692,70.474,12,0
    .goto 1411,69.288,69.600,12,0
    .goto 1411,68.760,69.642,12,0
    .goto 1411,68.363,70.769,12,0
    >>Mata a los |cRXP_ENEMY_Spitescale Nagas|r
    >>|cfff78300No saltes|r
    .complete 24812,1 --12/12 Spitescale Naga Slain
    .mob Spitescale Wavethrasher
    .mob Spitescale Siren
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morakki|r
    .goto 1411,67.96,74.08
    .turnin 24812 >>Entrega la misión Sin piedad
    .turnin 24813 >>Entrega la misión Fetiche territorial
    .accept 24814 >>Acepta la misión Viejos enemigos
    .target Morakki
step << Troll
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morakki|r
    .goto 1411,67.96,74.08
    .turnin 24812 >>Entrega la misión Sin piedad
    .turnin 24813 >>Entrega la misión Fetiche territorial
    .target Morakki
step << skip
    .goto 1411,68.60,74.87,10,0
    .goto 1411,69.12,73.99,10,0
    .goto 1411,69.09,72.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vol'jin|r para iniciar el evento
    .complete 24814,1 --Speak with Vol'jin at Spitescale Cove (1)
    .skipgossip
    .target Vol'jin
step << skip
    .goto 1411,68.47,71.44
    >>Enfócate en matar a los miniones, deja que |cRXP_FRIENDLY_Vanira|r y |cRXP_FRIENDLY_Vol'jin|r maten a |cRXP_ENEMY_Zar'jira|r
    .complete 24814,2 --Zar'jira slain (1)
    .mob Zar'jira
    .isQuestTurnedIn 25035
step << skip
    .goto 1411,69.13,72.32
    .gossipoption 37251 >> Habla con |cRXP_FRIENDLY_Vanira|r para regresar a la Aldea Lanza Negra
    .target Vanira
    .isOnQuest 24814
    --VV Add timer in case it's not an instant teleport
step << skip
    .goto 1411,68.86,88.69
    -->>|cRXP_WARN_Wait out the RP|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 24814 >>Entrega la misión Viejos enemigos
    .accept 25073 >>Acepta la misión El Poblado Sen'jin
    .isQuestTurnedIn 25035
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Durotar
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata
#defaultfor Orc/Troll
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << skip
    #completewith BreakingtheChain
    .goto 1411,67.21,86.10,60,0
    .goto 1411,63.67,82.61,60,0
    .goto 1411,60.48,81.45,60,0
    .goto 1411,60.09,79.68,60,0
    .subzone 367 >> Viaja al Poblado Sen'jin
step << Troll
    #completewith BreakingtheChain
    .goto 1411,64.10,74.25,40,0
    .subzone 367 >> Viaja al Poblado Sen'jin
step << Orc
    #completewith BreakingtheChain
    .goto 1411,48.47,67.93,60,0
    .goto 1411,50.44,68.39,60,0
    .subzone 367 >> Viaja al Poblado Sen'jin
step
    #optional << Troll
    .goto 1411,55.95,74.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gadrin|r
    .turnin 25073 >>Entrega la misión El Poblado Sen'jin << Troll
    .turnin 25133 >>Entrega la misión Preséntate en el Poblado Sen'jin << Orc
    .accept 25167 >>Acepta la misión Rompiendo la cadena
    .target Master Gadrin
    .isQuestTurnedIn 24814 << Troll
step << Troll
    #label BreakingtheChain
    .goto 1411,55.95,74.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gadrin|r
    .accept 25167 >>Acepta la misión Rompiendo la cadena
    .target Master Gadrin
step << Shaman Cata
    .goto 1411,56.27,75.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cona|r
    .train 8042 >> Aprende tus hechizos de clase
    .target Cona
step << Druid Cata
    .goto 1411,56.18,75.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Den'chulu|r
    .train 8921 >> Aprende tus hechizos de clase
    .target Den'chulu
step << Hunter Cata
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hai'zan|r
    .train 2973 >> Aprende tus hechizos de clase
    .target Hai'zan
    .xp <6,1
step
    #completewith next
    .goto 1411,56.13,74.53,10,0
    .goto 1411,56.30,73.89,10 >> Entra en la gran cabaña
step << Mage/Priest/Warlock/Druid
    .goto 1411,56.41,73.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'tasi|r
    .vendor >> Vende la basura
    .target Tai'tasi
step << Warrior Cata
    .goto 1411,56.70,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yeniss|r
    .train 34428 >> Aprende tus hechizos de clase
    .target Yeniss
step << Warrior/Shaman/Paladin
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Compra la|r |T133053:0|t[Marra de madera] |cRXP_BUY_al vendedor|r
    .collect 2493,1,25168,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_al vendedor|r
    .collect 2488,1,25168,1 --Collect Gladius (1)
    .target Trayexir
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_de él|r
    .collect 2506,1,25168,1 --Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0270
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior/Shaman/Paladin
    #completewith Bombay
    +Equipa la |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    #completewith Bombay
    +Equipa la |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith Bombay
    +Equipa el |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_de él|r
    .collect 2491,1,25168,1 --Large Axe (1)
    .money <0.0459
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    #completewith Bombay
    +Equipa el |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Mage Cata/Priest Cata/Warlock Cata
    #completewith next
    .goto 1411,56.59,73.25,10,0
    .goto 1411,56.50,72.90,10,0
    .goto 1411,56.33,73.28,10 >> Sube las escaleras
step << Mage Cata
    .goto 1411,56.37,73.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bomsanchu|r arriba
    .train 2136 >> Aprende tus hechizos de clase
    .target Bomsanchu
step << Priest Cata
    .goto 1411,56.41,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Parata|r arriba
    .train 589 >> Aprende tus hechizos de clase
    .target Parata
step << Warlock Cata
    .goto 1411,56.31,73.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gusini|r arriba
    .train 87389 >> Aprende tus hechizos de clase
    .target Gusini
step << Mage Cata/Priest Cata/Warlock Cata
    #completewith next
    .goto 1411,55.71,75.28,10 >> Salta hacia |cRXP_FRIENDLY_Bom'bay|r
step
    #label Bombay
    .goto 1411,55.71,75.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bom'bay|r
    .accept 25170 >>Acepta la misión Limpiando la costa
    .target Bom'bay
step
    #completewith next
    .goto 1411,56.45,78.44,40,0
    .goto 1411,53.52,82.09,40,0
    .goto 1411,52.63,83.01,40,0
    >>Mata a los |cRXP_ENEMY_Surf Crawlers|r. Despojarlos para obtener su |cRXP_LOOT_Mucus|r
    .complete 25170,1 --Collect Crawler Mucus (5)
    .mob Surf Crawler
step
    #loop
    .goto 1411,52.32,81.53,0
    .goto 1411,51.14,79.19,0
    .goto 1411,49.67,79.64,0
    .goto 1411,52.32,81.53,30,0
    .goto 1411,51.14,79.19,20,0
    .goto 1411,49.67,79.64,30,0
    >>Mata a los |cRXP_ENEMY_Northwatch Supply Cajones|r y a los |cRXP_ENEMY_Northwatch Lugs|r
    >>|cRXP_WARN_Quizá tengas que esperar a que reaparezcan más|r
    .complete 25167,1 --Northwatch Supply Crates destroyed (3)
    .mob +Northwatch Supply Crate
    .complete 25167,2 --Northwatch Lug (10)
    .mob +Northwatch Lug
step
    #loop
    .goto 1411,55.68,78.92,0
    .goto 1411,53.52,82.09,0
    .waypoint 1411,56.59,79.22,40,0
    .waypoint 1411,55.68,78.92,40,0
    .waypoint 1411,55.74,79.45,40,0
    .waypoint 1411,55.79,80.54,40,0
    .waypoint 1411,55.15,80.25,40,0
    .waypoint 1411,54.67,80.47,40,0
    .waypoint 1411,54.48,81.37,40,0
    .waypoint 1411,53.52,82.09,40,0
    .waypoint 1411,52.63,83.01,40,0
    .waypoint 1411,56.45,78.44,40,0
    >>Mata a los |cRXP_ENEMY_Surf Crawlers|r. Despojarlos para obtener su |cRXP_LOOT_Mucus|r
    .complete 25170,1 --Collect Crawler Mucus (5)
    .mob Surf Crawler
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bom'bay|r, |cRXP_FRIENDLY_Gadrin|r y |cRXP_FRIENDLY_Lar|r
    .turnin 25170 >>Entrega la misión Limpiando la costa
    .accept 25165 >>Acepta la misión Nunca te fíes de un gran pincho y una sonrisa
    .target +Bom'bay
    .goto 1411,55.78,75.36
    .turnin 25167 >>Entrega la misión Rompiendo la cadena
    .accept 25168 >>Acepta la misión Purgar el valle
    .target +Master Gadrin
    .goto 1411,55.91,74.72
    .accept 25169 >>Acepta la misión La guerra de la agresión de Fuerte del Norte
    .goto 1411,55.47,75.06
    .target +Lar Prowltusk
step
    #xprate >1.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bom'bay|r, |cRXP_FRIENDLY_Gadrin|r y |cRXP_FRIENDLY_Lar|r
    .turnin 25170 >>Entrega la misión Limpiando la costa
    .target +Bom'bay
    .goto 1411,55.78,75.36
    .turnin 25167 >>Entrega la misión Rompiendo la cadena
    .accept 25168 >>Acepta la misión Purgar el valle
    .target +Master Gadrin
    .goto 1411,55.91,74.72
    .accept 25169 >>Acepta la misión La guerra de la agresión de Fuerte del Norte
    .target +Lar Prowltusk
    .goto 1411,55.47,75.06
step << Shaman Cata
    .goto 1411,56.27,75.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cona|r
    .train 8042 >> Aprende tus hechizos de clase
    .target Cona
step << Druid Cata
    .goto 1411,56.18,75.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Den'chulu|r
    .train 8921 >> Aprende tus hechizos de clase
    .target Den'chulu
step << Hunter Cata
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hai'zan|r
    .train 2973 >> Aprende tus hechizos de clase
    .target Hai'zan
    .xp <6,1
step << Warrior Cata
    .goto 1411,56.70,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yeniss|r
    .train 34428 >> Aprende tus hechizos de clase
    .target Yeniss
step << Warrior/Shaman/Paladin
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Hablar con|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Compra la|r |T133053:0|t[Marra de madera] |cRXP_BUY_al vendedor|r
    .collect 2493,1,25168,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Hablar con|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius] |cRXP_BUY_al vendedor|r
    .collect 2488,1,25168,1 --Collect Gladius (1)
    .target Trayexir
    .money <0.0509
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Hablar con|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_al vendedor|r
    .collect 2506,1,25168,1 --Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0270
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior/Shaman/Paladin
    #completewith AttackPlans
    +Equipa la |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Rogue
    #completewith AttackPlans
    +Equipa la |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #completewith AttackPlans
    +Equipa el |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Hablar con|r |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_BUY_Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_al vendedor|r
    .collect 2491,1,25168,1 --Large Axe (1)
    .money <0.0459
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    #completewith AttackPlans
    +Equipa el |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Mage Cata
    .goto 1411,56.37,73.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bomsanchu|r arriba
    .train 2136 >> Aprende tus hechizos de clase
    .target Bomsanchu
step << Priest Cata
    .goto 1411,56.41,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Parata|r arriba
    .train 589 >> Aprende tus hechizos de clase
    .target Parata
step << Warlock Cata
    .goto 1411,56.31,73.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gusini|r arriba
    .train 87389 >> Aprende tus hechizos de clase
    .target Gusini
step
    #xprate <1.1
    #loop
    .goto 1411,52.72,75.35,0
    .waypoint 1411,54.15,74.77,40,0
    .waypoint 1411,53.15,76.15,40,0
    .waypoint 1411,52.72,75.35,40,0
    .waypoint 1411,52.27,74.29,40,0
    .waypoint 1411,51.60,73.68,40,0
    .waypoint 1411,51.40,74.88,40,0
    >>Ataca a los |cRXP_ENEMY_Clattering Scorpids|r
    >>|cRXP_WARN_Usa el|r |T136061:0|t[Tótem de extracción de veneno] |cRXP_WARN_cuando los|r |cRXP_ENEMY_Clattering Scorpids|r |cRXP_WARN_lancen|r |T132287:0|t[Envenenar]
    >>|cRXP_WARN_Esto tiene un tiempo de reutilización de 15 segundos. Tirar varios|r |cRXP_ENEMY_Clattering Scorpids|r |cRXP_WARN_al mismo tiempo para acelerar el proceso|r
    .complete 25165,1 --Sample of Scorpid Venom Collected (6)
    .mob Clattering Scorpid
    .use 52505
step
    #completewith AttackPlans
    .goto 1411,50.83,79.13,15,0
    >>Mata al |cRXP_ENEMY_Soldado de infantería del Fuerte del Norte|r y a los |cRXP_ENEMY_Northwatch Forestales|r
    .complete 25168,1 --Northwatch Troop (12)
    .mob Northwatch Infantryman
    .mob Northwatch Ranger
step
    >>Destruye los |cRXP_PICK_Attack Plans|r en el suelo
    .goto 1411,49.82,81.43
    .complete 25169,1 --Attack Plan: Valley of Trials burned (1)
step
    >>Destruye los |cRXP_PICK_Attack Plans|r en el suelo
    .goto 1411,47.91,77.56
    .complete 25169,2 --Attack Plan: Sen'jin Village burned (1)
step
    #label AttackPlans
    .goto 1411,46.42,78.77
    >>Destruye los |cRXP_PICK_Attack Plans|r en el suelo
    .complete 25169,3 --Attack Plan: Orgrimmar burned (1)
step
    #loop
    .goto 1411,48.36,79.40,0
    .goto 1411,46.63,79.76,40,0
    .goto 1411,47.27,80.88,40,0
    .goto 1411,47.84,79.84,40,0
    .goto 1411,47.79,77.95,40,0
    .goto 1411,49.03,79.33,40,0
    .goto 1411,49.89,79.04,40,0
    .goto 1411,49.97,80.86,40,0
    .goto 1411,48.36,79.40,40,0
    >>Mata al |cRXP_ENEMY_Soldado de infantería del Fuerte del Norte|r y a los |cRXP_ENEMY_Northwatch Forestales|r
    .complete 25168,1 --Northwatch Troop (12)
    .mob Northwatch Infantryman
    .mob Northwatch Ranger
step
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    --VV Beta test needed
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bom'bay|r, |cRXP_FRIENDLY_Lar|r y |cRXP_FRIENDLY_Maestro Gadrin|r
    .turnin 25165 >>Entrega la misión Nunca te fíes de un gran pincho y una sonrisa
    .target +Bom'bay
    .goto 1411,55.74,75.42
    .turnin 25169 >>Entrega la misión La guerra de la agresión de Fuerte del Norte
    .target +Lar Prowltusk
    .goto 1411,55.42,75.11
    .turnin 25168 >>Entrega la misión Purgar el valle
    .accept 25171 >>Acepta la misión Dando una vuelta
    .target +Master Gadrin
    .goto 1411,55.91,74.78
step
    #xprate >1.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r y |cRXP_FRIENDLY_Maestro Gadrin|r
    .turnin 25169 >>Entrega la misión La guerra de la agresión de Fuerte del Norte
    .target +Lar Prowltusk
    .goto 1411,55.42,75.11
    .turnin 25168 >>Entrega la misión Purgar el valle
    .accept 25171 >>Acepta la misión Dando una vuelta
    .target +Master Gadrin
    .goto 1411,55.91,74.78
step
    .goto 1411,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura y repara
    .target Trayexir
step << Rogue Cata
    .goto 1411,56.05,73.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Munalti|r
    .train 15087 >> Aprende tus hechizos de clase
    .target Munalti
    .xp <8,1
step << Shaman Cata
    .goto 1411,56.27,75.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cona|r
    .train 324 >> Aprende tus hechizos de clase
    .target Cona
    .xp <8,1
step << Druid Cata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Den'chulu|r
    .goto 1411,56.18,75.24
    .train 768 >> Aprende tus hechizos de clase
    .target Den'chulu
    .xp <8,1
step << Hunter Cata
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hai'zan|r
    .train 2973 >> Aprende tus hechizos de clase
    .target Hai'zan
    .xp <6,1
    .xp >8,1
step << Hunter Cata
    .goto 1411,55.72,73.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hai'zan|r
    .train 5116 >> Aprende tus hechizos de clase
    .target Hai'zan
    .xp <8,1
step << Warrior Cata
    .goto 1411,56.70,73.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yeniss|r
    .train 772 >> Aprende tus hechizos de clase
    .target Yeniss
    .xp <7,1
step << Mage Cata
    .goto 1411,56.37,73.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bomsanchu|r arriba
    .train 96089 >> Aprende tus hechizos de clase
    .target Bomsanchu
    .xp <7,1
step << Priest Cata
    .goto 1411,56.41,73.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Parata|r arriba
    .train 588 >> Aprende tus hechizos de clase
    .target Parata
    .xp <8,1
step << Warlock Cata
    .goto 1411,56.31,73.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gusini|r arriba
    .train 687 >> Aprende tus hechizos de clase
    .target Gusini
    .xp <8,1
step << cata
    #completewith RazorVisit1
    .goto 1411,55.26,74.66
    .gossipoption 112084 >> Habla con |cRXP_FRIENDLY_Jhash|r
    >>|cRXP_WARN_Toma la montura hacia Razor Hill|r
    .timer 67,Montando en RP
    .target Raider Jhash
    .isOnQuest 25171
step << !cata
    #completewith RazorVisit1
    .goto Durotar,55.38,73.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cuidador Marnlek|r
    .fly Razor Hill >>Vuela a Razor Hill
    .target Handler Marnlek
step
    .goto 1411,51.51,41.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grosk|r
    .home >> Establece tu Piedra de hogar en Cerrotajo
    .target Innkeeper Grosk
    .isQuestAvailable 2517
step
    .goto 1411,52.04,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'Thok|r en el piso superior
    .turnin 25171 >>Entrega la misión Dando una vuelta
    .accept 25173 >>Acepta la misión De mal en peor
    .target Gar'Thok
step
    #label RazorVisit1
    .goto 1411,53.03,43.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gail|r
    .accept 25176 >>Acepta la misión Aprovechando la situación
    .target Gail Nozzywig
step
    #label TravelToTiragarde
    #completewith Palliter
    .subzone 372>> Viaja al Fuerte de Tiragarde
step
    #completewith Palliter
    >>Mata a los |cRXP_ENEMY_Northwatch Marines|r y a los |cRXP_ENEMY_Northwatch Sharpshooters|r
    .complete 25173,1 --Northwatch Marine (6)
    .mob +Northwatch Marine
    .complete 25173,2 --Northwatch Sharpshooter (6)
    .mob +Northwatch Sharpshooter
step
    #completewith Palliter
    >>Despoja el |cRXP_LOOT_Kul Tiras Tesoro|r en el suelo
    .complete 25176,1 --Kul Tiras Treasure (6)
step
    #completewith next
    #requires TravelToTiragarde
    .goto 1411,59.48,58.82,8,0
    .goto 1411,59.81,58.44,8,0
    .goto 1411,59.58,57.88,8,0
    .goto 1411,59.31,57.88,8 >>Muévete hacia |cRXP_ENEMY_Teniente Palliter|r en el segundo piso de la fortaleza
step
    #label Palliter
    .goto 1411,59.75,58.31
    >>Mata al |cRXP_ENEMY_Teniente Palliter|r
    .complete 25173,3 --Lieutenant Palliter (1)
    .mob Lieutenant Palliter
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Northwatch Marines|r y a los |cRXP_ENEMY_Northwatch Sharpshooters|r
    .complete 25173,1 --Northwatch Marine (6)
    .mob +Northwatch Marine
    .complete 25173,2 --Northwatch Sharpshooter (6)
    .mob +Northwatch Sharpshooter
step
    #loop
    .goto 1411,59.84,58.12,0
    .goto 1411,57.93,58.57,15,0
    .goto 1411,57.17,56.21,15,0
    .goto 1411,58.23,55.44,15,0
    .goto 1411,59.44,56.13,15,0
    .goto 1411,59.32,58.03,8,0
    .goto 1411,59.84,58.12,15,0
    >>Despoja el |cRXP_LOOT_Kul Tiras Tesoro|r en el suelo
    .complete 25176,1 --Kul Tiras Treasure (6)
step
    #loop
    .goto 1411,59.02,57.24,0
    .goto 1411,58.50,58.88,40,0
    .goto 1411,57.67,58.53,40,0
    .goto 1411,57.87,57.50,40,0
    .goto 1411,57.34,56.57,40,0
    .goto 1411,58.41,56.40,40,0
    .goto 1411,59.02,57.24,40,0
    >>Mata a los |cRXP_ENEMY_Northwatch Marines|r y a los |cRXP_ENEMY_Northwatch Sharpshooters|r
    .complete 25173,1 --Northwatch Marine (6)
    .mob +Northwatch Marine
    .complete 25173,2 --Northwatch Sharpshooter (6)
    .mob +Northwatch Sharpshooter
step
    #completewith next
    .goto 1411,58.71,56.76,-1
    .goto 1411,58.56,54.00,-1
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    >>|cRXP_WARN_Asegúrate de morir cerca del punto de ruta o más al norte de la fortaleza|r
step
    .goto 1411,52.00,43.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 25173 >>Entrega la misión De mal en peor
    .accept 25177 >>Acepta la misión Arrasando las playas
    .target Gar'Thok
step << skip
    .goto 1411,50.70,42.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimtak|r
    .accept 6365 >>Acepta la misión Entrega de carne a Orgrimmar
    .target Grimtak
step
    .goto 1411,53.05,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gail|r
    .turnin 25176 >>Entrega la misión Aprovechando la situación
    .accept 25178 >>Acepta la misión Rastreando el naufragio
    .target Gail Nozzywig
step << skip
    .goto 1411,53.04,43.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burok|r
    .turnin 6365 >>Entrega la misión Entrega de carne a Orgrimmar
    .accept 6384 >>Acepta la misión Un viaje a Orgrimmar
    .target Burok
step << Rogue Cata
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r en el búnker en el piso superior
    .train 15087 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <8,1
step << Shaman Cata
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r adentro
    .train 324 >> Aprende tus hechizos de clase
    .target Swart
    .xp <8,1
step << Druid Cata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jabul|r
    .goto 1411,53.10,41.61
    .train 768 >> Aprende tus hechizos de clase
    .target Jabul
    .xp <8,1
step << Hunter Cata
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r en el búnker en el piso inferior
    .train 5116 >> Aprende tus hechizos de clase
    .target Thotar
    .xp <8,1
step << Warrior Cata
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r adentro
    .train 772 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <7,1
step << Mage Cata
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Un'Thuwa|r
    .train 122 >> Aprende tus hechizos de clase
    .target Un'Thuwa
    .xp <8,1
step << Priest Cata
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Parata|r adentro
    .train 588 >>Aprende tus hechizos de clase
    .target Tai'jin
    .xp <8,1
step << Warlock Cata
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ghugru|r afuera
    .train 687 >>Aprende tus hechizos de clase
    .target Ghugru Gorelust
    .xp <8,1
step
    #loop
    .goto 1411,58.98,46.57,0
    .goto 1411,57.91,45.11,10,0
    .goto 1411,57.91,45.11,10,0
    .goto 1411,58.41,43.50,10,0
    .goto 1411,59.02,43.37,10,0
    .goto 1411,59.84,44.31,10,0
    .goto 1411,59.34,41.92,10,0
    .goto 1411,59.71,41.51,10,0
    .goto 1411,58.98,46.57,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Tosco de Cerrotajo herido|r tumbado en el suelo
    .accept 25179 >>Acepta la misión Reducción de bajas
    .target Injured Razor Hill Grunt
step
    #completewith GnomishTools
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con los |cRXP_FRIENDLY_Injured Razor Hill Grunts|r
    .complete 25179,1 --Injured Razor Hill Grunt Rescued (4)
    .target Injured Razor Hill Grunt
    .skipgossip
step
    #completewith RazorGrunts
    >>Mata a los |cRXP_ENEMY_Foaming Sea Elementals|r
    .complete 25177,1 --Foaming Sea Elemental (11)
    .mob Foaming Sea Elemental
step
    #label GnomishTools
    #loop
    .goto 1411,59.850,43.579,0
    .goto 1411,59.522,51.990,0
    .waypoint 1411,57.918,44.936,50,0
    .waypoint 1411,59.850,43.579,50,0
    .waypoint 1411,59.228,47.383,50,0
    .waypoint 1411,59.531,49.920,50,0
    .waypoint 1411,59.522,51.990,50,0
    .waypoint 1411,57.824,49.763,50,0
    .waypoint 1411,57.986,46.174,50,0
    >>Despoja los |cRXP_PICK_Gnomish Toolboxes|r en el suelo
    .complete 25178,1 --Gnomish Tools (4)
step
    #label RazorGrunts
    #loop
    .goto 1411,58.98,46.57,0
    .goto 1411,57.91,45.11,10,0
    .goto 1411,58.41,43.50,10,0
    .goto 1411,59.02,43.37,10,0
    .goto 1411,59.84,44.31,10,0
    .goto 1411,59.34,41.92,10,0
    .goto 1411,59.71,41.51,10,0
    .goto 1411,58.98,46.57,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con los |cRXP_FRIENDLY_Injured Razor Hill Grunts|r
    .complete 25179,1 --Injured Razor Hill Grunt Rescued (4)
    .target Injured Razor Hill Grunt
    .skipgossip
step
    #loop
    .goto 1411,59.850,43.579,0
    .goto 1411,59.522,51.990,0
    .waypoint 1411,57.918,44.936,50,0
    .waypoint 1411,59.850,43.579,50,0
    .waypoint 1411,59.228,47.383,50,0
    .waypoint 1411,59.531,49.920,50,0
    .waypoint 1411,59.522,51.990,50,0
    .waypoint 1411,57.824,49.763,50,0
    .waypoint 1411,57.986,46.174,50,0
    >>Mata a los |cRXP_ENEMY_Foaming Sea Elementals|r
    .complete 25177,1 --Foaming Sea Elemental (11)
    .mob Foaming Sea Elemental
step
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto 1411,53.08,43.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gail|r
    .turnin 25178 >>Entrega la misión Rastreando el naufragio
    .accept 25227 >>Acepta la misión Thonk
    .target Gail Nozzywig
step
    .goto 1411,51.97,43.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'Thok|r en el piso superior
    .turnin 25177 >>Entrega la misión Arrasando las playas
    .turnin 25179 >>Entrega la misión Reducción de bajas
    .target Gar'Thok
step
    #xprate <1.2
    .goto 1411,52.25,43.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r
    .accept 25232 >>Acepta la misión El Filo Ardiente
    .target Orgnil Soulscar
step << Rogue Cata
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r en el búnker en el piso superior
    .train 15087 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <8,1
step << Shaman Cata
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r dentro
    .train 324 >> Aprende tus hechizos de clase
    .target Swart
    .xp <8,1
step << Druid Cata
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jabul|r
    .goto 1411,53.10,41.61
    .train 768 >> Aprende tus hechizos de clase
    .target Jabul
    .xp <8,1
step << Hunter Cata
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r en el búnker en el piso inferior
    .train 5116 >> Aprende tus hechizos de clase
    .target Thotar
    .xp <8,1
step << Warrior Cata
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r dentro
    .train 772 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <7,1
step << Mage Cata
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Un'Thuwa|r
    .train 122 >> Aprende tus hechizos de clase
    .target Un'Thuwa
    .xp <8,1
step << Priest Cata
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Parata|r dentro
    .train 588 >>Aprende tus hechizos de clase
    .target Tai'jin
    .xp <8,1
step << Warlock Cata
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ghugru|r afuera
    .train 687 >>Aprende tus hechizos de clase
    .target Ghugru Gorelust
    .xp <8,1
step
    .goto 1411,51.900,41.147
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    .vendor >> Vende la basura y repara
    .target Wuark
step
    #optional
    .maxlevel 9,FlyORG
step
    #completewith next
    .goto 1411,50.86,42.26,40,0
    .goto 1411,49.58,40.51,12 >> Viaja hacia la torre de vigilancia
step
    .goto 1411,49.60,40.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thonk|r encima de la torre de vigilancia
    .turnin 25227 >>Entrega a Thonk
    .accept 25187 >>Acepta la misión Perdidos en el desbordamiento
    .target Thonk
step
    .goto 1411,49.60,40.17
    >>|cRXP_WARN_Usa|r |T134441:0|t[Catalejo de Thonk] |cRXP_WARN_para encontrar|r |cRXP_FRIENDLY_Raggaran|r|cRXP_WARN_,|r |cRXP_FRIENDLY_Flooded hut|r|cRXP_WARN_,|r |cRXP_FRIENDLY_Misha|r|cRXP_WARN_, y|r |cRXP_FRIENDLY_Zen'Taji|r
    >>|cRXP_WARN_No puedes omitir esta cinemática|r
    .complete 25187,1 --Find Raggaran (1)
    .complete 25187,2 --Find flooded hut (1)
    .complete 25187,3 --Find Misha (1)
    .complete 25187,4 --Find Zen'Taji (1)
    .use 52514
step
    .goto 1411,49.60,40.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thonk|r
    .turnin 25187 >>Entrega la misión Perdidos en el desbordamiento
    .accept 25188 >>Acepta la misión La patrulla de la cuenca
    .target Thonk
step
    .goto 1411,43.38,30.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Misha|r
    .accept 25193 >>Acepta la misión Perdido, pero no olvidado
    .target Misha Tor'kren
step
    #completewith Screamlash
    >>Mata a los |cRXP_ENEMY_Dreadmaw Toothgnashers|r. Despójalos para obtener sus |cRXP_LOOT_Teeth|r
    .complete 25193,1 --Durotar Crocolisk Tooth (250)
    .mob Dreadmaw Toothgnasher
step
    #completewith next
    .goto 1411,35.84,41.38,30 >> Viaja hacia |cRXP_FRIENDLY_Zen'Taji|r
step
    .goto 1411,35.84,41.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zen'Taji|r
    .accept 25194 >>Acepta la misión Visitantes inesperados
    .target Zen'Taji
step
    #loop
    .goto 1411,35.26,39.70,0
    .goto 1411,35.26,39.70,50,0
    .goto 1411,34.96,36.71,50,0
    .goto 1411,34.90,35.09,50,0
    .goto 1411,34.96,32.48,50,0
    .goto 1411,35.05,30.18,50,0
    .goto 1411,35.23,28.96,50,0
    .goto 1411,34.79,43.39,50,0
    .goto 1411,34.64,44.87,50,0
    .goto 1411,35.37,46.05,50,0
    .goto 1411,35.26,39.70,50,0
    >>Ataca a los |cRXP_ENEMY_Wayward Plainstriders|r junto al río para que huyan hacia Los Baldíos
    .complete 25194,1 --Wayward Plainstrider Returned (3)
    .unitscan Wayward Plainstrider
step
    .goto 1411,35.84,41.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zen'Taji|r
    .turnin 25194 >>Entrega la misión Visitantes inesperados
    .accept 25195 >>Acepta la misión Este es el final de ese raptor
    .target Zen'Taji
step
    #loop
    .goto 1411,35.819,33.161,0
    .goto 1411,35.643,29.209,0
    .waypoint 1411,35.819,33.161,40,0
    .waypoint 1411,36.019,31.471,40,0
    .waypoint 1411,35.643,29.209,40,0
    >>Mata al |cRXP_ENEMY_Gritotajo|r
    .complete 25195,1 --Screamslash (1)
    .unitscan Screamslash
    --VV Coords
step
    #label Screamlash
    .goto 1411,35.83,41.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zen'Taji|r
    .turnin 25195 >>Entrega la misión Este es el final de ese raptor
    .complete 25188,4 --Help Zen'Taji (1)
    .target Zen'Taji
step
    #loop
    .goto 1411,42.441,35.524,0
    .goto 1411,39.455,34.623,0
    .waypoint 1411,43.839,34.132,40,0
    .waypoint 1411,42.441,35.524,40,0
    .waypoint 1411,41.548,35.852,40,0
    .waypoint 1411,40.731,36.627,40,0
    .waypoint 1411,39.455,34.623,40,0
    >>Mata a los |cRXP_ENEMY_Dreadmaw Toothgnashers|r. Despójalos para obtener sus |cRXP_LOOT_Teeth|r
    .complete 25193,1 --Durotar Crocolisk Tooth (250)
    .mob Dreadmaw Toothgnasher
step
    .goto 1411,43.45,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Misha|r
    .turnin 25193 >>Entrega la misión Perdido, pero no olvidado
    .complete 25188,3 --Help Misha Tor'kren (1)
    .target Misha Tor'kren
step
    .goto 1411,40.49,35.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tekla|r
    .accept 25189 >>Acepta la misión Alabados sean los espíritus
    .target Grandmatron Tekla
step
    .goto 1411,42.70,49.90
    >>Escolta a |cRXP_FRIENDLY_Tekla|r a |cRXP_FRIENDLY_Raggaran|r
    .complete 25189,1 --Escort Grandmatron Tekla to Raggaran
    --.complete 25188,1 --Help Grandmatron Tekla (1) --completes once quest 25189 is turned in
    .target Grandmatron Tekla
step
    .goto 1411,42.66,49.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raggaran|r
    .turnin 25189 >>Entrega la misión Licores Be Praised
    .accept 25190 >>Acepta la misión La ira de Raggaran
    .target Raggaran
step
    #loop
    .goto 1411,43.57,50.27,0
    .goto 1411,43.57,50.27,40,0
    .goto 1411,44.15,49.45,40,0
    .goto 1411,44.54,50.09,40,0
    .goto 1411,46.66,48.37,40,0
    .goto 1411,47.43,48.63,40,0
    .goto 1411,48.53,49.04,40,0
    .goto 1411,49.21,48.60,40,0
    .goto 1411,50.13,49.39,40,0
    .goto 1411,43.57,50.27,40,0
    >>Mata |cRXP_ENEMY_Jabaespín Crines de Acero|r y |cRXP_ENEMY_Exploradores Crines de Acero|r
    .complete 25190,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 25190,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    .goto 1411,42.75,49.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raggaran|r
    .turnin 25190 >>Entrega la misión La ira de Raggaran
    .accept 25192 >>Acepta la misión La furia de Raggaran
    .target Raggaran
step
#loop
	.line 1411,41.83,39.47,41.83,39.47,42.34,40.36,43.09,40.43,43.67,41.35,44.42,40.23,44.34,39.12,44.40,38.38,45.08,37.76,43.88,37.22,43.32,37.02,42.63,36.62,41.98,36.95
	.goto 1411,41.83,39.47,30,0
	.goto 1411,41.83,39.47,30,0
	.goto 1411,42.34,40.36,30,0
	.goto 1411,43.09,40.43,30,0
	.goto 1411,43.67,41.35,30,0
	.goto 1411,44.42,40.23,30,0
	.goto 1411,44.34,39.12,30,0
	.goto 1411,44.40,38.38,30,0
	.goto 1411,45.08,37.76,30,0
	.goto 1411,43.88,37.22,30,0
	.goto 1411,43.32,37.02,30,0
	.goto 1411,42.63,36.62,30,0
	.goto 1411,41.98,36.95,30,0
    >>Mata |cRXP_ENEMY_Polvoroso Crines de Acero|r y |cRXP_ENEMY_Guardias de batalla Crines de Acero|r
    .complete 25192,1 --Razormane Dustrunner (5)
    .mob +Razormane Dustrunner
    .complete 25192,2 --Razormane Battleguard (5)
    .mob +Razormane Battleguard
step
    .goto 1411,42.72,49.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raggaran|r
    .turnin 25192 >>Entrega la misión La furia de Raggaran
    .complete 25188,2 --Help Raggaran (1)
    .target Raggaran
step
    #xprate >1.19
    #completewith FlyORG
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .cooldown item,6948,>0,1
step
    #xprate >1.19
    #completewith FlyORG
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .cooldown item,6948,<0
step
    #xprate >1.19
    #completewith next
    .goto 1411,50.86,42.26,40,0
    .goto 1411,49.58,40.51,12 >> Viaja hacia la torre
step
    #xprate >1.19
    .goto 1411,49.60,40.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thonk|r
    .turnin 25188 >>Entrega la misión La patrulla de la cuenca
    .target Thonk
step
    #xprate <1.2
    #completewith DustwindCave
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Rogue Cata
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r en el búnker en el piso superior
    .train 61922 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <10,1
step << Shaman Cata
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r dentro
    .train 3599 >> Aprende tus hechizos de clase
    .target Swart
    .xp <10,1
step << Druid Cata
    .goto 1411,53.10,41.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jabul|r
    .train 5215 >> Aprende tus hechizos de clase
    .target Jabul
    .xp <10,1
step << Hunter Cata
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r en el búnker en el piso inferior
    .train 1978 >> Aprende tus hechizos de clase
    .target Thotar
    .xp <10,1
step << Warrior Cata
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r dentro
    .train 71 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Mage Cata
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Un'Thuwa|r
    .train 2139 >> Aprende tus hechizos de clase
    .target Un'Thuwa
    .xp <9,1
step << Priest Cata
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Parata|r dentro
    .train 8092 >> Aprende tus hechizos de clase
    .target Tai'jin
    .xp <9,1
step << Warlock Cata
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ghugru|r afuera
    .train 1120 >> Aprende tus hechizos de clase
    .target Ghugru Gorelust
    .xp <10,1
step
    #xprate <1.2
    #label DustwindCave
    #completewith next
    .goto 1411,52.82,28.88,40 >> Viaja dentro de la cueva
step
    #xprate <1.2
    #loop
    .goto 1411,52.66,29.15,0
    .goto 1411,52.66,29.15,15,0
    .goto 1411,53.04,29.18,15,0
    .goto 1411,52.75,28.40,15,0
    .goto 1411,53.02,27.87,15,0
    .goto 1411,53.14,27.29,15,0
    .goto 1411,53.44,26.94,15,0
    .goto 1411,52.77,26.67,15,0
    .goto 1411,52.20,26.90,15,0
    .goto 1411,51.90,26.06,15,0
    .goto 1411,52.20,24.46,15,0
    .goto 1411,52.66,29.15,15,0
    >>Mata a los |cRXP_ENEMY_Burning Blade Neophytes|r y a los |cRXP_ENEMY_Burning Blade Thugs|r. Despójalos para obtener sus |cRXP_LOOT_Spellscrolls|r
    .complete 25232,1 --Burning Blade Spellscroll (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
step
    #xprate <1.2
    #completewith next
    .goto 1411,54.36,29.18,70,0
    .goto 1411,56.13,28.06,70,0
    .goto 1411,56.30,24.76,70,0
    .goto 1411,56.11,21.96,40,0
    .goto 1411,56.21,20.23 >> Viaja a Vek'nag
step
    #xprate <1.2
    .goto 1411,56.21,20.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vek'nag|r
    .accept 25256 >>Acepta la misión Enviado a buscar ayuda
    .target Vek'nag
step
    #xprate <1.2
    .goto 1411,58.81,23.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dientepincho|r
    .turnin 25256 >>Entrega la misión Enviado a buscar ayuda
    .accept 25257 >>Acepta la misión Ghislania
    .accept 25258 >>Acepta la misión Griswold Hanniston
    .accept 25259 >>Acepta la misión Gaur Hielocuerno
    .target Spiketooth
step
    #xprate <1.2
    #completewith next
    .goto 1411,59.41,23.47
    +|cRXP_WARN_Habla con |cRXP_FRIENDLY_Gaur Hielocuerno|r para volverlo hostil|r
    .target Gaur Icehorn
    .skipgossip
step
    #xprate <1.2
    .goto 1411,59.41,23.47
    >>Mata a |cRXP_ENEMY_Gaur Hielocuerno|r
    .complete 25259,1 --Gaur defeated (1)
    .mob Gaur Icehorn
step
    #xprate <1.2
    #completewith next
    .goto 1411,59.68,22.63
    +|cRXP_WARN_Habla con |cRXP_FRIENDLY_Ghislania|r para volverla hostil|r
    .target Ghislania
    .skipgossip
step
    #xprate <1.2
    .goto 1411,59.68,22.63
    >>Mata a |cRXP_ENEMY_Ghislania|r
    .complete 25257,1 --Ghislania defeated (1)
    .mob Ghislania
step
    #xprate <1.2
    #completewith next
    .goto 1411,59.06,22.26
    +|cRXP_WARN_Habla con |cRXP_FRIENDLY_Griswold|r para volverlo hostil|r
    .target Griswold
    .skipgossip
step
    #xprate <1.2
    .goto 1411,59.06,22.26
    >>Mata a |cRXP_ENEMY_Griswold|r
    .complete 25258,1 --Griswold defeated (1)
    .mob Griswold
step
    #xprate <1.2
    .goto 1411,58.80,23.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dientepincho|r
    .turnin 25257 >>Entrega la misión Ghislania
    .turnin 25258 >>Entrega la misión Griswold Hanniston
    .turnin 25259 >>Entrega la misión Gaur Hielocuerno
    .target Spiketooth
step
    #xprate <1.2
    #completewith Orgnil
    .goto 1411,57.13,27.37,40,0
    .goto 1411,55.79,31.03,40,0
    .goto 1411,53.90,35.53,40,0
    .goto 1411,52.81,39.75,40 >> Corre de vuelta a Razor Hill
    .cooldown item,6948,<0
step
    #xprate <1.2
    #completewith Orgnil
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .cooldown item,6948,>0
step
    #xprate <1.2
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r
    .goto 1411,52.24,43.16
    .turnin 25232 >>Entrega la misión El Filo Ardiente
    .accept 25196 >>Acepta la misión El Bloqueo Dranosh'ar
    .target Orgnil Soulscar
    .maxlevel 9
step
    #xprate <1.2
    #label Orgnil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r
    .goto 1411,52.24,43.16
    .turnin 25232 >>Entrega la misión El Filo Ardiente
    .target Orgnil Soulscar
step << Rogue Cata
    #xprate <1.2
    .goto 1411,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r en el búnker en el piso superior
    .train 61922 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <10,1
step << Shaman Cata
    #xprate <1.2
    .goto 1411,54.42,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r adentro
    .train 3599 >> Aprende tus hechizos de clase
    .target Swart
    .xp <10,1
step << Druid Cata
    #xprate <1.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jabul|r
    .goto 1411,53.10,41.61
    .train 5215 >> Aprende tus hechizos de clase
    .target Jabul
    .xp <10,1
step << Hunter Cata
    #xprate <1.2
    .goto 1411,51.86,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r en el búnker en el piso inferior
    .train 1978 >> Aprende tus hechizos de clase
    .target Thotar
    .xp <10,1
step << Warrior Cata
    #xprate <1.2
    .goto 1411,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r adentro
    .train 71 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Mage Cata
    #xprate <1.2
    .goto 1411,53.04,41.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Un'Thuwa|r
    .train 2139 >> Aprende tus hechizos de clase
    .target Un'Thuwa
    .xp <9,1
step << Priest Cata
    #xprate <1.2
    .goto 1411,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Parata|r adentro
    .train 8092 >> Aprende tus hechizos de clase
    .target Tai'jin
    .xp <9,1
step << Warlock Cata
    #xprate <1.2
    .goto 1411,54.38,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ghugru|r afuera
    .train 1120 >> Aprende tus hechizos de clase
    .target Ghugru Gorelust
    .xp <10,1
step
    #xprate <1.2
    #completewith next
    .goto 1411,50.86,42.26,40,0
    .goto 1411,49.58,40.51,12 >> Viaja hacia la torre
step
    #xprate <1.2
    .goto 1411,49.60,40.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thonk|r
    .turnin 25188 >>Entrega la misión La patrulla de la cuenca
    .target Thonk
step
    #label FlyORG
    .goto 1411,53.04,43.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burok|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Burok
    .xp <10,1
step
    #optional
    .abandon 25227 >>Abandona la misión Thonk

    --Next section if user isn't lvl 10 yet

step
    #xprate <1.2
    #optional
    #completewith next
    .goto 1411,46.26,30.19
    >>|cRXP_WARN_Viaja al punto de ruta. No mueras hasta que llegues allí|r
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acepta la misión Las arpías Viento Seco
    .target Rezlak
    .maxlevel 9
step
    #xprate <1.2
    #optional
    .goto 1411,48.95,22.34,0
    .goto 1411,48.95,22.34,40,0
    .goto 1411,49.75,21.95,40,0
    .goto 1411,49.62,24.17,40,0
    .goto 1411,50.52,25.32,40,0
    .goto 1411,50.08,25.72,40,0
    .goto 1411,50.87,25.99,40,0
    .goto 1411,51.68,27.75,40,0
    .goto 1411,50.56,27.33,40,0
    .goto 1411,49.89,26.88,40,0
    .goto 1411,49.63,32.13,40,0
    .goto 1411,49.12,33.11,40,0
    .goto 1411,48.53,32.01,40,0
    .goto 1411,48.13,32.02,40,0
    .goto 1411,47.07,30.87,40,0
    .goto 1411,47.16,29.67,40,0
    .goto 1411,48.95,22.34,40,0
    >>Despoja el |cRXP_LOOT_Kul Saco of Suministros|r en el suelo
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entrega la misión Las arpías Viento Seco
    .accept 835 >>Acepta la misión Asegurar las rutas
    .target Rezlak
    .isQuestComplete 834
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .accept 835 >>Acepta la misión Asegurar las rutas
    .target Rezlak
    .isQuestTurnedIn 835
step
    #xprate <1.2
    #optional
    .goto 1411,49.76,28.04,0
    .goto 1411,48.86,22.10,40,0
    .goto 1411,49.76,23.27,40,0
    .goto 1411,50.13,25.15,40,0
    .goto 1411,50.76,25.90,40,0
    .goto 1411,51.34,27.16,40,0
    .goto 1411,51.89,27.45,40,0
    .goto 1411,54.08,27.34,40,0
    .goto 1411,54.05,23.47,40,0
    .goto 1411,51.98,20.78,40,0
    .goto 1411,52.88,24.14,40,0
    .goto 1411,51.26,23.79,40,0
    .goto 1411,49.76,28.04,40,0
    >>Mata a cualquier tipo de |cRXP_ENEMY_Arpía Viento Seco|r
    .complete 835,1 --Durotar Harpy (12)
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .isQuestTurnedIn 835
step
    #xprate <1.2
    #optional
    .goto 1411,46.371,22.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entrega la misión Asegurar las rutas
    .target Rezlak
    .isQuestComplete 835
step
    #xprate <1.2
    #optional
    #completewith Fizzled
    .goto 1411,45.11,13.65,30 >> Corre a |cRXP_FRIENDLY_Gor|r
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gor|r y |cRXP_FRIENDLY_Shin|r
    .turnin 25196 >>Entrega la misión El Bloqueo Dranosh'ar
    --.accept 25206 >>Accept Ignoring the Warnings
    .accept 25236 >>Acepta la misión Un trueno desde el fondo
    .accept 25260 >>Acepta la misión Fracasado
    --.accept 25648 >>Accept Beyond Durotar
    .goto 1411,45.01,14.78
    .accept 25205 >>Acepta la misión El lobo y el kodo
    .goto 1411,44.90,14.83
    .target Gor the Enforcer
    .target Shin Stonepillar
step
    #xprate <1.2
    #optional
    .goto 1411,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gor|r
    .turnin 25196 >>Entrega la misión El Bloqueo Dranosh'ar
    --.accept 25206 >>Accept Ignoring the Warnings
    .accept 25236 >>Acepta la misión Un trueno desde el fondo
    .accept 25260 >>Acepta la misión Fracasado
    --.accept 25648 >>Accept Beyond Durotar
    .target Gor the Enforcer
    .maxlevel 9
step
    #xprate <1.2
    #optional
    #label Fizzled
    .goto 1411,45.01,14.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gor|r
    .turnin 25196 >>Entrega la misión El Bloqueo Dranosh'ar
    --.accept 25206 >>Accept Ignoring the Warnings
    .accept 25236 >>Acepta la misión Un trueno desde el fondo
    .accept 25260 >>Acepta la misión Fracasado
    --.accept 25648 >>Accept Beyond Durotar
    .target Gor the Enforcer
    .maxlevel 9

    --BB Quest 25205 currently bugged on beta

step << skip
    .goto 1411,44.90,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shin|r
    .gossipoption 112089 >> Habla con |cRXP_FRIENDLY_Shin|r
    .target Shin Stonepillar
step << skip
    .goto 1411,52.47,16.47
    >>Viaja a |cRXP_FRIENDLY_The Kodos|r
    >>|cRXP_WARN_Usar|r |T132120:0|t[Carrerilla] |cRXP_WARN_cada vez que esté disponible|r
    .complete 25205,1 --Listen to the shaman's fable (1)
    .unitscan The Kodo
step << skip
    .goto 1411,44.89,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shin|r
    .turnin 25205 >>Entrega la misión El lobo y el kodo
    .target Shin Stonepillar
    .skipgossip
step << skip
    #loop
    .goto 1411,38.041,16.299,0
    .waypoint 1411,40.401,15.857,40,0
    .waypoint 1411,38.041,16.299,40,0
    .waypoint 1411,38.738,18.791,40,0
    .waypoint 1411,40.108,17.593,40,0
    >>Mata a los |cRXP_ENEMY_Teeming Waterguards|r y a los |cRXP_ENEMY_Furious Earthguards|r
    .complete 25206,1 --Warring Elemental (12)
    .mob Teeming Waterguard
    .mob Furious Earthguard
step
    #xprate <1.2
    #optional
    #completewith next
    >>Haz clic en los |cRXP_FRIENDLY_Drowned Trueno Lagarto|r bajo el agua
    .complete 25236,1 --Drowned Thunder Lizard removed (8)
    .target Drowned Thunder Lizard
    .isOnQuest 25236
step
    #xprate <1.2
    #optional
    #label Fizzle
    .goto 1411,42.11,26.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el cadáver de Crepitación bajo el agua. |cRXP_FRIENDLY_Despojar|rlo para obtener su |cRXP_PICK_Orb|r
    .complete 25260,1 --Fizzle's Orb (1)
    .skipgossip 3203,1,1
    .target Fizzle Darkclaw
    .isOnQuest 25260
    --BB Bugged on beta
step
    #xprate <1.2
    #optional
    #loop
    .goto 1411,41.22,24.55,0
    .goto 1411,39.29,28.19,0
    .waypoint 1411,41.65,25.09,40,0
    .waypoint 1411,41.22,24.55,40,0
    .waypoint 1411,40.54,24.19,40,0
    .waypoint 1411,39.57,23.63,40,0
    .waypoint 1411,39.53,24.99,40,0
    .waypoint 1411,38.97,25.05,40,0
    .waypoint 1411,39.01,26.25,40,0
    .waypoint 1411,39.49,26.96,40,0
    .waypoint 1411,38.97,27.69,40,0
    .waypoint 1411,39.29,28.19,40,0
    .waypoint 1411,39.73,27.97,40,0
    .waypoint 1411,40.25,28.09,40,0
    .waypoint 1411,40.52,29.77,40,0
    .waypoint 1411,39.15,29.74,40,0
    .waypoint 1411,41.93,23.95,40,0
    >>Haz clic en los |cRXP_FRIENDLY_Drowned Trueno Lagarto|r
    .complete 25236,1 --Drowned Thunder Lizard removed (8)
    .target Drowned Thunder Lizard
    .isOnQuest 25236
step
    #xprate <1.2
    #optional
    #completewith FizzledTurnin
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 25236
step
    #xprate <1.2
    #optional
    .goto 1411,44.97,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gor|r
    --.turnin 25206 >>Turn in Ignoring the Warnings
    .turnin 25236 >>Entrega la misión Un trueno desde el fondo
    .turnin 25260 >>Entrega la misión Fracasado
    .target Gor the Enforcer
    .isQuestComplete 25236
    .isQuestComplete 25260
step
    #xprate <1.2
    #optional
    .goto 1411,44.97,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gor|r
    --.turnin 25206 >>Turn in Ignoring the Warnings
    .turnin 25260 >>Entrega la misión Fracasado
    .target Gor the Enforcer
    .isQuestComplete 25260
step
    #xprate <1.2
    #optional
    #label FizzledTurnin
    .goto 1411,44.97,14.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gor|r
    --.turnin 25206 >>Turn in Ignoring the Warnings
    .turnin 25236 >>Entrega la misión Un trueno desde el fondo
    .target Gor the Enforcer
    .isQuestComplete 25236
step
    #xprate <1.2
    #optional
    .goto 1411,45.506,11.949,30,0
    .zone Orgrimmar >>Entra en Orgrimmar
    .isQuestTurnedIn 25196
step << skip
    .goto 1454,54.083,74.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entrega la misión Un viaje a Orgrimmar
    .target Innkeeper Gryshka

    ]])
