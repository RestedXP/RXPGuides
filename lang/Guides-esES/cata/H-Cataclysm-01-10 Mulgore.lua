if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Alliance' then return end

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 1-6 Mulgore
#next 6-10 Mulgore
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000

step << !Tauren
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía pensada para Tauren. No recomendamos hacer esta zona debido a que hay misiones restringidas por raza solo para Tauren. Se recomienda que elijas la misma zona inicial en la que comienzas|r
step
    .goto 7,45.15,75.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Viento de Halcón|r
    .accept 14449 >>Acepta la misión El primer paso
    .target Chief Hawkwind
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grull|r
    .turnin 14449 >>Entrega la misión El primer paso
    .accept 14452 >>Acepta la misión Rito de la fuerza
    .target Grull Hawkwind
step
    .goto 7,49.20,78.98,30,0
    .goto 7,49.56,78.24,30,0
    .goto 7,49.33,77.59,30,0
    .goto 7,50.23,78.31,30,0
    .goto 7,50.92,78.32,30,0
    .goto 7,50.31,77.25,30,0
    .goto 7,49.56,78.24
    >>Mata a los |cRXP_ENEMY_Invasores Erizapúas|r
    .complete 14452,1 --Bristleback Invaders (6)
    .mob Bristleback Invader
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grull|r
    .turnin 14452 >>Entrega la misión Rito de la fuerza
    .accept 24852 >>Acepta la misión Nuestra tribu: prisionera
    .target Grull Hawkwind
step
    .goto 7,52.06,80.48,30,0
    .goto 7,52.15,79.93,30,0
    .goto 7,52.06,78.28,30,0
    .goto 7,52.17,77.75,30,0
    .goto 7,52.21,76.72,30,0
    .goto 7,52.57,74.81,30,0
    .goto 7,50.89,82.37,30,0
    .goto 7,50.67,83.12,30,0
    .goto 7,52.06,80.48
    >>Haz clic en las |cRXP_PICK_Jaulas|r para liberar a los |cRXP_FRIENDLY_Valientes capturados|r
    .complete 24852,1 --Braves Freed (4)
    .target Captured Brave
step
    .goto 7,48.95,78.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grull|r
    .turnin 24852 >>Entrega la misión Nuestra tribu: prisionera
    .accept 14458 >>Acepta la misión Ve con Adana
    .target Grull Hawkwind
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adana|r
    .turnin 14458 >>Entrega la misión Ve con Adana
    .accept 14455 >>Acepta la misión Detén a los clamaespinas
    .accept 14456 >>Acepta la misión Rito del Valor
    .target Adana Thunderhorn
step
    #loop
    .goto 7,46.72,87.92,0
    .goto 7,47.05,87.38,30,0
    .goto 7,46.72,87.92,30,0
    .goto 7,46.45,88.75,30,0
    .goto 7,47.33,89.49,30,0
    .goto 7,47.90,89.03,30,0
    .goto 7,47.90,88.05,30,0
    >>Mata a los |cRXP_ENEMY_Ladrones de rifles Erizapúas|r. Despójalos para obtener sus |cRXP_LOOT_Rifles|r
    >>Mata a los |cRXP_ENEMY_Llamaespinas Erizapúas|r
    .complete 14456,1 --Stolen Rifle (7)
    .mob +Bristleback Gun Thiefs
    .complete 14455,1 --Bristleback Thorncaller (7)
    .mob +Bristleback Thorncaller
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adana|r y |cRXP_FRIENDLY_Rohaku|r
    .turnin 14456 >>Entrega la misión Rito del Valor
    .turnin 14455 >>Entrega la misión Detén a los clamaespinas
    .accept 14459 >>Acepta la misión Los jabaguerreros
    .accept 14461 >>Acepta la misión Alimento maligno
    .goto 7,46.18,82.61
    .accept 31165 >>Acepta la misión Nota caligrafiada << Monk
    .accept 3092 >>Acepta la misión La nota con grabados << Hunter
    .accept 3091 >>Acepta la misión La nota simple << Warrior
    .accept 27015 >>Acepta la misión Nota consagrada << Paladin
    .accept 3094 >>Acepta la misión La nota verdeante << Druid
    .accept 3093 >>Acepta la misión La nota con runas grabadas << Shaman
    .accept 27014 >>Acepta la misión Nota sacralizada << Priest
    .goto 7,46.15,82.32
    .target Adana Thunderhorn
    .target Rohaku Stonehoof
step
    #completewith ThirdTrough
    >>Mata al |cRXP_ENEMY_Jabaguerrero acorazado|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,44.70,87.82
    >>|cRXP_WARN_Usa|r |T135432:0|t[Adana's Antorcha] |cRXP_WARN_junto al primer abrevadero|r
    .complete 14461,1 --First Trough (1)
    .use 49539
step
    .goto 7,44.32,88.71
    >>|cRXP_WARN_Usa|r |T135432:0|t[Adana's Antorcha] |cRXP_WARN_junto al segundo abrevadero|r
    .complete 14461,2 --Second Trough (1)
    .use 49539
step
    #label ThirdTrough
    .goto 1412/1,-265.00000,-3405.80005
    >>|cRXP_WARN_Usa|r |T135432:0|t[Adana's Antorcha] |cRXP_WARN_junto al tercer abrevadero|r
    .complete 14461,3 --Third Trough (1)
    .use 49539
step
#loop
	.line 7,45.73,88.52,44.76,89.60,44.23,88.74,44.22,87.98,44.72,87.69,45.20,87.83,45.73,88
	.goto 7,45.73,88.52,30,0
	.goto 7,44.76,89.60,30,0
	.goto 7,44.23,88.74,30,0
	.goto 7,44.22,87.98,30,0
	.goto 7,44.72,87.69,30,0
	.goto 7,45.20,87.83,30,0
	.goto 7,45.73,88.00,30,0
    >>Mata al |cRXP_ENEMY_Jabaguerrero acorazado|r
    .complete 14459,1 --Armored Battleboar (10)
    .mob Armored Battleboar
step
    .goto 7,46.18,82.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adana|r
    .turnin 14459 >>Entrega la misión Los jabaguerreros
    .turnin 14461 >>Entrega la misión Alimento maligno
    .accept 14460 >>Acepta la misión Rito del Honor
    .target Adana Thunderhorn
step
    .goto 7,41.08,81.42
    >>Mata a |cRXP_ENEMY_Chivato jefe Mantospina|r. Despójalo para obtener su |cRXP_LOOT_Mane|r
    .complete 14460,1 --Mane of Thornmantle (1)
    .mob Chief Squealer Thornmantle
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir al Campamento Narache
    .cooldown item,6948,>0
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hawkwind|r
    .turnin 14460 >>Entrega la misión Rito del Honor
    .accept 24861 >>Acepta la misión Últimos ritos, primeros ritos
    .target Chief Hawkwind
step
    .goto 7,45.11,75.39
    >>|cRXP_WARN_Usa el|r |T132813:0|t[Agua Pitcher]
    .complete 24861,1 --Offering Placed (1)
    .use 50465
step
    .goto 7,45.17,75.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hawkwind|r
    .turnin 24861 >>Entrega la misión Últimos ritos, primeros ritos
    .accept 23733 >>Acepta la misión Los ritos de la Madre Tierra
    .target Chief Hawkwind
step << Monk
    .goto 462/1,-260.800,-2910.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoyu|r
    .turnin 31165 >>Entrega la misión Nota caligrafiada
    .accept 31166 >>Acepta la misión Palma del tigre
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Entrega la misión La nota con grabados
    .accept 27021 >>Acepta la misión El camino del cazador
    .train 56641 >> Aprende |T132213:0|t[Vigía del pozo Solanian] << Cata
    .target Lanka Farshot
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entrega la misión La nota simple
    .accept 27020 >>Acepta la misión La primera lección
    .train 100 >> Aprende |T132337:0|t[Cargar] << Cata
    .target Harutt Thunderhorn
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helaku|r
    .turnin 27015 >>Entrega la misión Nota consagrada
    .accept 27023 >>Acepta la misión El camino de los caminasol
    .train 20271 >>Aprende |T135959:0|t[Sentencia] << Cata
    .train 20154 >>Aprende |T135960:0|t[Sello de rectitud] << Cata
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Entrega la misión La nota verdeante
    .accept 27067 >>Acepta la misión Toque de rejuvenecimiento
    .train 774 >>Aprende |T136081:0|t[Rejuvenecimiento] << Cata
    .target Gart Mistrunner
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Entrega la misión La nota verdeante
    .accept 27067 >>Acepta la misión Fuego lunar
    .target Gart Mistrunner
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Entrega la misión La nota con runas grabadas
    .accept 27027 >>Acepta la misión Golpe primigenio
    .train 73899 >>Aprende |T460956:0|t[Golpe primigenio] << Cata
    .target Meela Dawnstrider
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pluma de Cuervo|r
    .turnin 27014 >>Entrega la misión Nota sacralizada
    .accept 27066 >>Acepta la misión Sanación en un destello
    .train 2061 >>Aprende |T135907:0|t[Sanación relámpago] << Cata
    .target Seer Ravenfeather
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pluma de Cuervo|r
    .turnin 27014 >>Entrega la misión Nota sacralizada
    .accept 27066 >>Acepta la misión Ayudando a los heridos
    .target Seer Ravenfeather
step << Monk
    .goto 7,45.43,75.39
	>>Lanza |T606551:0|t[Palma del tigre] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
    .complete 31166,2 --|Practice Tiger Palm: 1/1
	.mob Training Dummy
step << Hunter
    .goto 7,45.43,75.39
	>>Lanza |T132213:0|t[Vigía del pozo Solanian] a un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 27021,2 << !Cata --Steady Shot (x3)
	.complete 27021,1 << Cata --Steady Shot (x3)
	.mob Training Dummy
step << Warrior
    .goto 7,45.43,75.39
	>>Lanza |T132337:0|t[Cargar] a un |cRXP_ENEMY_Muñeco de Entrenamiento|r
	.complete 27020,2 << !Cata --Cast Charge (x3)
	.complete 27020,1 << Cata --Cast Charge (x3)
	.mob Training Dummy
step << Paladin cata
    .goto 7,45.43,75.39
	>>Lanza |T135959:0|t[Sentencia] sobre un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 27023,1 --Cast Judgement (x3)
	.mob Training Dummy
step << Paladin !cata
    .goto 7,45.43,75.39
	>>Lanza |T135961:0|t[Sello de orden], luego ataca a un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 27023,2
    .mob Training Dummy
step << Druid cata
    .goto 7,45.65,75.35
	>>Lanza |T136081:0|t[Rejuvenecimiento] sobre un |cRXP_FRIENDLY_Valiente herido|r
	.complete 27067,1 << Cata --Cast Rejuvenation (x1)
	.target Wounded Brave
step << Druid !cata
    .goto 7,45.43,75.39
	>>Lanza |T136096:0|t[Fuego lunar] sobre un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 27067,2 --Cast Moonfire
	.mob Training Dummy
step << Shaman
    .goto 7,45.43,75.39
	>>Lanza |T460956:0|t[Golpe primigenio] sobre un |cRXP_ENEMY_Muñeco de entrenamiento|r
	.complete 27027,2 << !Cata --Cast Primal Strike (x3)
	.complete 27027,1 << Cata --Cast Primal Strike (x3)
	.mob Training Dummy
step << Priest
    .goto 7,45.65,75.35
	>>Lanza |T135907:0|t[Sanación relámpago] sobre un |cRXP_FRIENDLY_Valiente herido|r
	.complete 27066,2 << !Cata --Cast Flash Heal (x5)
	.complete 27066,1 << Cata --Cast Flash Heal (x5)
	.target Wounded Brave
step << Monk
    .goto 462/1,-261.100,-2910.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shoyu|r
    .turnin 31166 >>Entrega la misión Palma del tigre
    .target Shoyu
step << Hunter
    .goto 7,45.28,75.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanka|r
    .turnin 27021 >>Entrega la misión El camino del cazador
    .target Lanka Farshot
step << Warrior
    .goto 7,44.99,75.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harutt|r
    .turnin 27020 >>Entrega la misión La primera lección
    .target Harutt Thunderhorn
step << Paladin
    .goto 7,44.96,75.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helaku|r
    .turnin 27023 >>Entrega la misión El camino de los caminasol
    .target Sunwalker Helaku
step << Druid cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gart|r
    .turnin 27067 >>Entrega la misión Rejuveneciendo Toque
    .target Gart Mistrunner
step << Druid !cata
    .goto 7,45.22,75.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gart|r
    .turnin 27067 >>Entrega la misión Fuego lunar
    .target Gart Mistrunner
step << Shaman
    .goto 7,45.09,75.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meela|r
    .turnin 27027 >>Entrega la misión Golpe primigenio
    .target Meela Dawnstrider
step << Priest cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pluma de Cuervo|r
    .turnin 27066 >>Entrega la misión Sanación en un destello
    .target Seer Ravenfeather
step << Priest !cata
    .goto 7,44.99,75.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pluma de Cuervo|r
    .turnin 27066 >>Entrega la misión Aprender la palabra
    .target Seer Ravenfeather
step
    #completewith next
    .goto 1412/1,-114.60000,-2976.90015,12,0
    .goto 1412/1,-48.40000,-2907.10010,12,0
    .goto 1412/1,7.20000,-2900.60010,12,0
    .goto 1412/1,-42.80000,-2933.50000,30 >>Sigue el camino hasta la cima de la montaña
step
    .goto 1412/1,-42.80000,-2933.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dyami|r
    .turnin 23733 >>Entrega la misión Los ritos de la Madre Tierra
    .accept 24215 >>Acepta la misión Los ritos de los Vientos
    .target Dyami Windsoar
step
    #completewith next
    .goto 7,41.27,75.22,15,0
    .goto 7,41.36,74.10,15,0
    .deathskip >>Sigue la flecha saltando de la montaña. Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Acepta la misión ¡Kyle ha desaparecido!
    .target Ahab Wheathoof
    ]])

RXPGuides.RegisterGuide([[
#cata
#mop
<< Horde
#name 6-10 Mulgore
#next 10-22 Azshara
#version 1
--#group RXP Cataclysm (H) << cata

#defaultfor Tauren
#group RXP Cataclismo 1-80 (H) << cata
#group RXP MoP 1-80 (H) << mop
#subweight 10000


step
    .goto 7,48.35,53.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Acepta la misión ¡Kyle ha desaparecido!
    .target Ahab Wheathoof
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .train 2973 >> Aprende tus hechizos de clase
    .target Yaw Sharpmane
    .xp <6,1
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .accept 26188 >>Acepta la misión Mazzranache
    .target Maur Raincaller
    .xp <6,1
step << Tauren
    .goto 7,46.06,58.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varg|r
    .accept 6361 >>Acepta la misión Un fardo de pellejos
    .vendor >> Vende la basura y repara << Paladin/Priest
    .target Varg Windwhisper
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T133053:0|t[Marra de madera] (6 platas 66 cobres). Volverás más tarde si aún no tienes suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Habla con|r |cRXP_FRIENDLY_Mahnott|r
    >>|cFF0E8312Compra una|r |T133053:0|t[Marra de madera] |cFF0E8312de él|r
    .collect 2493,1,14438,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendedor sin valor. Vende tu arma si te proporciona suficiente dinero para un |T135611:0|t[Trabuco ornamentado] (3s 93c). Volverás más tarde si aún no tienes suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Habla con|r |cRXP_FRIENDLY_Kennah|r
    >>|cFF0E8312Compra un|r |T135611:0|t[Trabuco ornamentado] |cFF0E8312de él|r
    .collect 2509,1,14438,1 --Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith PalemaneGnolls
    +Equipa la |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith PalemaneGnolls
    +Equipa el |T135611:0|t[Trabuco ornamentado]
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Tauren
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tak|r
    .turnin 6361 >>Entrega la misión Un fardo de pellejos
    .accept 6362 >>Acepta la misión Un viaje a Cima del Trueno
    .target Tak
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Kauth|r
    .vendor >>|cRXP_BUY_Compra hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T133968:0|t[Pan recién horneado] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_Compra hasta 20|r |T133968:0|t[Pan recién horneado] << Warrior/Hunter
    .target Innkeeper Kauth
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahmo|r
    .turnin 24215 >>Entrega la misión Los ritos de los Vientos
    .accept 14438 >>Acepta la misión Compartir la tierra
    .target Ahmo Thunderhorn
step
    .goto 7,48.77,58.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Acepta la misión La caza de los aguilones
    .target Harken Windtotem
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarl|r
    .train 8042 >> Aprende tus hechizos de clase
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alsoomse|r
    .train 589 >> Aprende tus hechizos de clase
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gennia|r
    .train 8921 >> Aprende tus hechizos de clase
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iopi|r
    .train 465 >> Aprende tus hechizos de clase
    .target Sunwalker Iopi
step
    .goto 7,48.62,59.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r
    .accept 20440 >>Acepta la misión Pozos envenenados
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krang|r
    .train 34428 >> Aprende tus hechizos de clase
    .target Krang Stonehoof
step
    #completewith WCleansing1
    >>Mata |cRXP_ENEMY_Aguilones|r. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    >>|cRXP_WARN_No es necesario completar esta misión ahora|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Wolfs|r. Despoja los para obtener sus |cRXP_LOOT_Paws|r
    >>Mata a los |cRXP_ENEMY_Plainstriders|r. Despójalos para obtener sus |cRXP_LOOT_Garfas|r y |T134343:0|t[|cRXP_LOOT_Carne de zancudo tierna|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    #label PalemaneGnolls
#loop
	.line 7,47.96,69.82,47.20,70.68,47.71,71.57,48.37,71.84,48.83,72.00,49.84,70.48,49.24,70.24,48.87,69.80,47.96,69.82
	.goto 7,47.96,69.82,30,0
	.goto 7,47.20,70.68,30,0
	.goto 7,47.71,71.57,30,0
	.goto 7,48.37,71.84,30,0
	.goto 7,48.83,72.00,30,0
	.goto 7,49.84,70.48,30,0
	.goto 7,49.24,70.24,30,0
	.goto 7,48.87,69.80,30,0
	.goto 7,47.96,69.82,30,0
#loop
	.line 7,51.94,69.95,52.07,70.98,52.52,71.73,52.92,72.36,53.62,72.44,53.84,72.04,54.25,72.15,55.07,72.12,55.52,71.26,55.22,70.65,54.55,70.22,53.92,70.07,53.15,69.85,52.58,70.17,51.94,69
	.goto 7,51.94,69.95,30,0
	.goto 7,52.07,70.98,30,0
	.goto 7,52.52,71.73,30,0
	.goto 7,52.92,72.36,30,0
	.goto 7,53.62,72.44,30,0
	.goto 7,53.84,72.04,30,0
	.goto 7,54.25,72.15,30,0
	.goto 7,55.07,72.12,30,0
	.goto 7,55.52,71.26,30,0
	.goto 7,55.22,70.65,30,0
	.goto 7,54.55,70.22,30,0
	.goto 7,53.92,70.07,30,0
	.goto 7,53.15,69.85,30,0
	.goto 7,52.58,70.17,30,0
	.goto 7,51.94,69.00,30,0
    >>Mata a los |cRXP_ENEMY_Palemane Skinners|r, a los |cRXP_ENEMY_Palemane Poachers|r y a los |cRXP_ENEMY_Palemane Tanners|r
    .complete 14438,1 --Palemane Gnolls (15)
    .mob Palemane Skinner
    .mob Palemane Poacher
    .mob Palemane Tanner
step
    #loop
    .goto 7,48.25,67.61,0
    .goto 7,50.61,68.08,40,0
    .goto 7,50.23,66.00,40,0
    .goto 7,51.06,64.06,40,0
    .goto 7,52.38,63.49,40,0
    .goto 7,52.98,62.11,40,0
    .goto 7,54.02,61.22,40,0
    .goto 7,55.23,62.26,40,0
    .goto 7,56.63,62.25,40,0
    .goto 7,56.75,64.83,40,0
    .goto 7,56.06,67.30,40,0
    .goto 7,48.25,67.61,40,0
    >>Mata a los |cRXP_ENEMY_Wolfs|r. Despoja los para obtener sus |cRXP_LOOT_Paws|r
    >>Mata a los |cRXP_ENEMY_Plainstriders|r. Despójalos para obtener sus |cRXP_LOOT_Garfas|r y |T134343:0|t[|cRXP_LOOT_Carne de zancudo tierna|r]
    .complete 20440,1 --Prairie Wolf Paw (6)
    .complete 20440,2 --Plainstrider Talon (4)
    .collect 33009,1,11129,1 --Tender Strider Meat (1)
    .mob Prairie Wolf
    .mob Adult Plainstrider
step
    #completewith AcceptDangers
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Encuentra al |cRXP_FRIENDLY_Kyle|r. Usa la |T134343:0|t[|cRXP_LOOT_Carne de zancudo tierna|r] para alimentarlo
    >>|cRXP_WARN_Corre en círculos alrededor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #label WCleansing1
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r
    .turnin 20440 >>Entrega la misión Pozos envenenados
    .accept 24440 >>Acepta la misión La purificación de Pezuña Invernal
    .target Mull Thunderhorn
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Entrega la misión La caza de los aguilones
    .target Harken Windtotem
    .isQuestComplete 761
step
    .goto 1412/1,-392.89999,-2333.50000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahmo|r
    .turnin 14438 >>Entrega la misión Compartir la tierra
    .accept 14491 >>Acepta la misión La tierra inquieta
    .accept 24459 >>Acepta la misión Morin Acechanubes
    .target Maur Raincaller
step
    .goto 7,47.15,56.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .accept 26188 >>Acepta la misión Mazzranache
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .train 2973 >> Aprende tus hechizos de clase
    .target Yaw Sharpmane
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vendedor sin valor. Vende tu arma si te proporciona suficiente dinero para un |T133053:0|t[Marra de madera] (6s 65c). Volverás más tarde si aún no tienes suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    .goto 7,45.91,58.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Habla con|r |cRXP_FRIENDLY_Mahnott|r|cFF0E8312. Compra un|r |T133053:0|t[Marra de madera] |cFF0E8312de él|r
    .collect 2493,1,24440,1 --Collect Wooden Mallet (1)
    .money <0.0665
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vendedor sin valor. Vende tu arma si te proporciona suficiente dinero para un |T135611:0|t[Trabuco ornamentado] (3s 93c). Volverás más tarde si aún no tienes suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto 7,45.75,57.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cFF0E8312Habla con|r |cRXP_FRIENDLY_Kennah|r|cFF0E8312. Compra un|r |T135611:0|t[Trabuco ornamentado] |cFF0E8312de él|r
    .collect 2509,1,24440,1 --Ornate Blunderbuss (1)
    .target Kennah Hawkseye
    .money <0.0360
    .itemStat 18,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior/Shaman/Paladin
    #completewith WinterhoofWell
    +Equipa la |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #completewith WinterhoofWell
    +Equipa el |T135611:0|t[Trabuco ornamentado]
    .use 2509
    .itemcount 2509,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step
    #label AcceptDangers
    .goto 1412/1,-384.80002,-2397.00000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Acepta la misión Las Viento Furioso son un peligro
    .target Ruul Eagletalon
step
    #completewith next
    >>Mata |cRXP_ENEMY_Aguilones|r. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    >>|cRXP_WARN_No es necesario completar esta misión ahora|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #label WinterhoofWell
    .goto 7,53.46,65.34
    >>|cRXP_WARN_Usa el|r |T135139:0|t[La purificación de Pezuña Invernal Tótem] |cRXP_WARN_junto al pozo|r
    .use 5411
    .complete 24440,1 --Well Cleansed (1)
step
    #completewith next
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Encuentra al |cRXP_FRIENDLY_Kyle|r. Usa la |T134343:0|t[|cRXP_LOOT_Carne de zancudo tierna|r] para alimentarlo
    >>|cRXP_WARN_Corre en círculos alrededor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 7,48.62,59.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r
    .turnin 24440 >>Entrega la misión La purificación de Pezuña Invernal
    .accept 24441 >>Acepta la misión El tótem de Tronacuerno
    .target Mull Thunderhorn
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krang|r
    .train 84939 >> Aprende tus hechizos de clase
    .target Krang Stonehoof
    .xp <7,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarl|r
    .train 324 >> Aprende tus hechizos de clase
    .target Tarl Cloudsong
    .xp <8,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >> Aprende tus hechizos de clase
    .target Seer Alsoomse
    .xp <8,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gennia|r
    .train 768 >> Aprende tus hechizos de clase
    .target Gennia Runetotem
    .xp <8,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iopi|r
    .train 635 >> Aprende tus hechizos de clase
    .target Sunwalker Iopi
    .xp <7,1
step
    .goto 1412/1,-347.39999,-2365.30005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Kauth|r
    .vendor >>|cRXP_BUY_Compra hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T133968:0|t[Pan recién horneado] << !Warrior !Hunter
    .vendor >>|cRXP_BUY_Compra hasta 20|r |T133968:0|t[Pan recién horneado] << Warrior/Hunter
    .itemcount 1179,<20 << !Warrior !Hunter
    .itemcount 4541,<20
    .target Innkeeper Kauth
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Aprende tus hechizos de clase
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    .turnin 24459 >>Entrega la misión Morin Acechanubes
    .accept 749 >>Acepta la misión La Caravana Devastada
    .target Morin Cloudstalker
step
    #completewith VentureCoCave
    >>Mata a los |cRXP_ENEMY_Prairie Stalkers|r. Despoja los para obtener sus |cRXP_LOOT_Claws|r
    >>Mata a los |cRXP_ENEMY_Flatland Cougars|r. Despójalos para obtener sus |cRXP_LOOT_Claws|r y un |cRXP_LOOT_Fémur de puma de las estepas|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith VentureCoCave
    >>Mata |cRXP_ENEMY_Aguilones|r. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    .goto 7,53.52,48.29
    >>Haz clic en el |cRXP_PICK_Cajón de suministros sellado|r
    .turnin 749 >>Entrega la misión La Caravana Devastada
    .accept 751 >>Acepta la misión La Caravana Devastada
step
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    .turnin 751 >>Entrega la misión La Caravana Devastada
    .accept 26179 >>Acepta la misión Los Ventura y Cía.
    .accept 26180 >>Acepta la misión Supervisor Saltatuercas
    .target Morin Cloudstalker
step
    #label VentureCoCave
    #completewith FizsprocketKill
    .goto 7,60.86,47.47,10 >> Entra en la cueva
step
    #completewith FizsprocketKill
    >>Mata a los |cRXP_ENEMY_Venture Co. Workers|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #label FizsprocketKill
    .goto 7,61.21,46.29
    >>Mata a |cRXP_ENEMY_Fizsprocket|r. Despójalo para obtener su |cRXP_LOOT_Portapapeles|r
    .complete 26180,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Saltatuercas
step
    #loop
    .goto 7,59.30,48.85,0
    .goto 7,62.21,45.13,20,0
    .goto 7,61.81,44.74,20,0
    .goto 7,61.29,43.64,20,0
    .goto 7,60.73,48.13,40,0
    .goto 7,60.47,49.63,40,0
    .goto 7,59.30,48.85,40,0
    >>Mata a los |cRXP_ENEMY_Venture Co. Workers|r
    .complete 26179,1 --Venture Co. Worker (7)
    .mob Venture Co. Worker
step
    #completewith FizsprocketTurnin
    >>Mata a los |cRXP_ENEMY_Prairie Stalkers|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r
    >>Mata a los |cRXP_ENEMY_Flatland Cougars|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r y una |cRXP_LOOT_Puma de las estepas Fémur de puma de las estepas|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #completewith FizsprocketTurnin
    >>Mata |cRXP_ENEMY_Aguilones|r. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #label FizsprocketTurnin
    .goto 7,57.06,60.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    .turnin 26179 >>Entrega la misión Los Ventura y Cía.
    .turnin 26180 >>Entrega la misión Supervisor Saltatuercas
    .target Morin Cloudstalker
step
    #completewith next
    >>Mata |cRXP_ENEMY_Aguilones|r. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #loop
    .goto 7,56.14,57.59,0
    .goto 7,57.94,60.08,40,0
    .goto 7,58.60,58.93,40,0
    .goto 7,59.73,57.46,40,0
    .goto 7,60.31,56.44,40,0
    .goto 7,61.03,55.56,40,0
    .goto 7,59.21,54.50,40,0
    .goto 7,58.44,53.38,40,0
    .goto 7,57.87,50.87,40,0
    .goto 7,57.23,50.07,40,0
    .goto 7,56.00,51.41,40,0
    .goto 7,55.66,53.73,40,0
    .goto 7,55.60,55.55,40,0
    .goto 7,56.14,57.59,40,0
    >>Mata a los |cRXP_ENEMY_Prairie Stalkers|r. Despójalos para obtener sus |cRXP_LOOT_garras|r
    >>Mata a los |cRXP_ENEMY_Flatland Cougars|r. Despójalos para obtener sus |cRXP_LOOT_garras|r y una |cRXP_LOOT_Fémur|r
    .complete 24441,1 --Stalker Claws (6)
    .complete 24441,2 --Cougar Claws (6)
    .complete 26188,1 --Flatland Cougar Femur (1)
    .mob Flatland Cougar
    .mob Prairie Stalkers
step
    #loop
    .goto 7,54.70,67.69,0
    .goto 7,54.11,62.03,40,0
    .goto 7,51.77,66.37,40,0
    .goto 7,51.06,67.33,40,0
    .goto 7,50.01,68.11,40,0
    .goto 7,54.70,67.69,40,0
    >>Mata |cRXP_ENEMY_Aguilones|r. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Swoop
    .mob Wiry Swoop
step
    #xprate <1.2
    #completewith ThunderHornTotem
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Encuentra a |cRXP_FRIENDLY_Kyle|r. Usa la |T134343:0|t[|cRXP_LOOT_Tierno Strider Carne|r] para alimentarlo
    >>|cRXP_WARN_Corre en círculos alrededor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #xprate >1.19
    #completewith FlyTB
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .use 33009>> Encuentra a |cRXP_FRIENDLY_Kyle|r. Usa la |T134343:0|t[|cRXP_LOOT_Tierno Strider Carne|r] para alimentarlo
    >>|cRXP_WARN_Corre en círculos alrededor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    #label ThunderHornTurnin
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r
    .turnin 24441 >>Entrega la misión El tótem de Tronacuerno
    .accept 24456 >>Acepta la misión La purificación de Tronacuerno
    .target Mull Thunderhorn
step
    .goto 7,48.77,58.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Entrega la misión La caza de los aguilones
    .target Harken Windtotem
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krang|r
    .train 84939 >> Aprende tus hechizos de clase
    .target Krang Stonehoof
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarl|r
    .train 324 >> Aprende tus hechizos de clase
    .target Tarl Cloudsong
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alsoomse|r
    .train 588 >> Aprende tus hechizos de clase
    .target Seer Alsoomse
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gennia|r
    .train 768 >> Aprende tus hechizos de clase
    .target Gennia Runetotem
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iopi|r
    .train 635 >> Aprende tus hechizos de clase
    .target Sunwalker Iopi
step
    .goto 7,47.16,56.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .turnin 26188 >>Entrega la misión Mazzranache
    .target Maur Raincaller
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Aprende tus hechizos de clase
    .target Yaw Sharpmane
step
    #xprate <1.2
    #label ThunderHornTotem
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_Usa|r |T135139:0|t[La purificación de Tronacuerno Tótem] |cRXP_WARN_junto al pozo|r
    .complete 24456,1 --Well Cleansed (1)
step
    #xprate >1.19
    #label FlyTB
    #completewith next
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tak|r
    .fly Thunder Bluff >>Vuela a Cima del Trueno
    .target Tak
step << Tauren
    #xprate >1.19
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Entrega la misión Un viaje a Cima del Trueno
    .accept 6363 >>Acepta la misión Tal, maestro de jinetes del viento
    .target Ahanu
step << Tauren
    #xprate >1.19
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entrega la misión Tal, maestro de jinetes del viento
    .accept 6364 >>Acepta la misión Regresa junto a Varg
    .target Tal
step << skip
    #xprate >1.19
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu hogar en Cima del Trueno
    .target Innkeeper Pala
step
    #optional
    .maxlevel 9,MulgoreEnd
step
    #xprate >1.19
    #completewith next
    .goto 1456/1,183.30000,-1314.09998,20 >>Toma el ascensor para salir de Cima del Trueno
    .zoneskip Mulgore
step
    #loop
    .goto 7,35.869,42.670,0
    .waypoint 7,36.260,44.783,40,0
    .waypoint 7,35.869,42.670,40,0
    .waypoint 7,34.946,40.825,40,0
    .waypoint 7,33.934,41.928,40,0
    .waypoint 7,32.540,41.483,40,0
    .waypoint 7,33.616,43.231,40,0
    >>Mata |cRXP_ENEMY_Ventobrujas Viento Furioso|r y |cRXP_ENEMY_Arpías Viento Furioso|r. Despójalas para obtener sus |cRXP_LOOT_Garfas|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witches
    .mob Windfury Harpies
step
    #loop
    .goto 1412/1,416.10001,-1917.40002,0
    .goto 1412/1,377.89999,-1940.70007,20,0
    .goto 1412/1,416.10001,-1917.40002,20,0
    .goto 1412/1,447.89999,-1953.59998,20,0
    .goto 1412/1,414.30002,-1983.80005,20,0
    >>Usa el |T133841:0|t[Tambor de la Tierra apaciguada] en los |cRXP_ENEMY_espíritus de la tierra agitados|r
    >>|cRXP_WARN_Mátalos si te resisten y te atacan|r
    .complete 14491,1 --Spirits Calmed (6)
    .use 49647
    .mob Agitated Earth Spirit
step
    #xprate >1.19
    .goto 7,44.805,45.597
    .use 5415 >>|cRXP_WARN_Usa|r |T135139:0|t[La purificación de Tronacuerno Tótem] |cRXP_WARN_junto al pozo|r
    .complete 24456,1 --Well Cleansed (1)
step
    #completewith DangerTurnin
    .deathskip >>Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #loop
    .goto 1412/1,-354.10001,-2318.40015,0
    .goto 1412/1,-488.20001,-2347.90015,0
    .waypoint 1412/1,-368.10001,-2296.19995,30,0
    .waypoint 1412/1,-354.10001,-2318.40015,30,0
    .waypoint 1412/1,-378.39999,-2339.10010,30,0
    .waypoint 1412/1,-406.39999,-2348.90015,30,0
    .waypoint 1412/1,-437.50000,-2394.40015,30,0
    .waypoint 1412/1,-444.80002,-2440.80005,30,0
    .waypoint 1412/1,-483.70001,-2458.30005,30,0
    .waypoint 1412/1,-455.30002,-2395.69995,30,0
    .waypoint 1412/1,-488.20001,-2347.90015,30,0
    .waypoint 1412/1,-487.00000,-2295.30005,30,0
    .waypoint 1412/1,-452.50000,-2256.69995,30,0
    .waypoint 1412/1,-421.60001,-2256.00000,30,0
    .waypoint 1412/1,-377.10001,-2257.30005,30,0
    .waypoint 1412/1,-368.80002,-2275.90015,30,0
    .use 33009>> Encuentra a |cRXP_FRIENDLY_Kyle|r. Usa la |T134343:0|t[|cRXP_LOOT_Tierno Strider Carne|r] para alimentarlo
    >>|cRXP_WARN_Corre en círculos alrededor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
step
    .goto 7,48.34,53.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahab|r
    .turnin 11129 >>Entrega la misión ¡Kyle ha desaparecido!
    .target Ahab Wheathoof
step << Tauren
    #xprate >1.19
    .goto 7,46.06,58.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varg|r
    .turnin 6364 >>Entrega la misión Regresa junto a Varg
    .target Varg Windwhisper
step
    .goto 7,47.66,59.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahmo|r
    .turnin 14491 >>Entrega la misión La tierra inquieta
    .target Ahmo Thunderhorn
step
    #label DangerTurnin
    .goto 7,47.51,61.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>Entrega la misión Las Viento Furioso son un peligro
    .target Ruul Eagletalon
step
    #xprate <1.2
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r
    .turnin 24456 >>Entrega la misión La purificación de Tronacuerno
    .accept 24457 >>Acepta la misión Rito de la Visión
    .target Mull Thunderhorn
step
    #xprate >1.19
    .goto 7,48.60,59.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r
    .turnin 24456 >>Entrega la misión La purificación de Tronacuerno
    .target Mull Thunderhorn
step << Hunter Cata
    .goto 7,47.94,55.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .train 1978 >> Aprende tus hechizos de clase
    .target Yaw Sharpmane
    .xp <10,1
step << Warrior Cata
    .goto 7,49.55,59.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krang|r
    .train 71 >> Aprende tus hechizos de clase
    .target Krang Stonehoof
    .xp <10,1
step << Shaman Cata
    .goto 7,48.47,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarl|r
    .train 3599 >> Aprende tus hechizos de clase
    .target Tarl Cloudsong
    .xp <10,1
step << Priest Cata
    .goto 7,48.76,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alsoomse|r
    .train 8092 >> Aprende tus hechizos de clase
    .target Seer Alsoomse
    .xp <10,1
step << Druid Cata
    .goto 7,48.56,59.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gennia|r
    .train 5215 >> Aprende tus hechizos de clase
    .target Gennia Runetotem
    .xp <10,1
step << Paladin Cata
    .goto 7,48.78,58.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iopi|r
    .train 82242 >> Aprende tus hechizos de clase
    .target Sunwalker Iopi
    .xp <10,1
step
    #xprate <1.2
    .goto 7,47.889,57.097
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarlman|r
    .turnin 24457 >>Entrega la misión Rito de la Visión
    .accept 20441 >>Acepta la misión Rito de la Visión
    .target Zarlman Two-Moons
step
    #xprate <1.2
    .goto 7,47.850,56.961
    .use 49651 >>|cRXP_WARN_Usa|r |T134712:0|t[Agua de visión] |cRXP_WARN_en el fuego tribal|r
    .complete 20441,1 --Water of Vision consumed (1x)
    .timer 86,Rito de la Visión RP
step
    #xprate <1.2
    #completewith next.
    .subzone 4835 >>Espera hasta que llegues a Camp Sungraze
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Una|r
    .turnin 20441 >>Entrega la misión Rito de la Visión
    .accept 24523 >>Acepta la misión El tótem Ferocrín
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tradicionalista Tótem de Lluvia|r
    .accept 833 >>Acepta la misión Cementerio sagrado
    .accept 773 >>Acepta la misión Rito de la Sabiduría
    .target Lorekeeper Raintotem
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Skorn|r
    .accept 861 >>Acepta la misión Los hábitos del cazador
    .target Skorn Whitecloud
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Acepta la misión Preparación para la ceremonia
    .target Eyahn Eagletalon
step
    #xprate <1.2
    #completewith RedRocks
    >>Mata a los |cRXP_ENEMY_Prairie Lobo Alphas|r. Despójalos para obtener sus |cRXP_LOOT_Dientes|r
    >>Mata |cRXP_ENEMY_Merodeadores de las estepas|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    #loop
    .goto 7,52.476,8.126,0
    .waypoint 7,54.950,13.407,0
    .waypoint 7,51.782,11.187,50,0
    .waypoint 7,52.476,8.126,50,0
    .waypoint 7,53.252,12.366,50,0
    .waypoint 7,54.950,13.407,50,0
    .waypoint 7,55.939,16.542,50,0
    >>Mata a las |cRXP_ENEMY_Viento Furioso Hechiceras|r y a las |cRXP_ENEMY_Viento Furioso Matriarcas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    .complete 744,1 --Azure Feather (x6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (x6)
    .mob +Windfury Matriarch
step
    #xprate <1.2
    #label RedRocks
    .goto 7,60.828,22.737
    .subzone 225 >>Viaja a Rojo Rocas
    .isOnQuest 833
step
    #xprate <1.2
    #completewith next
    >>Mata a los |cRXP_ENEMY_Erizapúas Intrusos|r.
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob Bristleback Interloper
step
    #xprate <1.2
    .goto 7,60.787,22.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahanu|r
    .turnin 773 >>Entrega la misión Rito de la Sabiduría
    .target Ancestral Spirit
step
    #xprate <1.2
    #loop
    .goto 7,60.374,21.638,0
    .waypoint 7,61.344,24.848,50,0
    .waypoint 7,59.935,24.400,50,0
    .waypoint 7,59.122,22.210,50,0
    .waypoint 7,60.374,21.638,50,0
    >>Mata a los |cRXP_ENEMY_Erizapúas Intrusos|r.
    .complete 833,1 --Bristleback Interloper Slain (x8)
    .mob Bristleback Interloper
step
    #xprate <1.2
    #loop
    .goto 7,54.646,24.065,0
    .goto 7,46.777,18.984,0
    .waypoint 7,56.422,25.128,80,0
    .waypoint 7,54.646,24.065,80,0
    .waypoint 7,51.223,24.232,80,0
    .waypoint 7,49.326,21.378,80,0
    .waypoint 7,46.777,18.984,80,0
    .waypoint 7,47.051,13.915,80,0
    .waypoint 7,48.849,13.184,80,0
    >>Mata a los |cRXP_ENEMY_Prairie Lobo Alphas|r. Despójalos para obtener sus |cRXP_LOOT_Dientes|r
    >>Mata |cRXP_ENEMY_Merodeadores de las estepas|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r
    .complete 24523,1 --Prairie Alpha Tooth (x4)
    .mob +Prairie Wolf Alpha
    .complete 861,1 --Flatland Prowler Claw (x4)
    .mob +Flatland Prowler
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Una|r
    .turnin 24523 >>Entrega la misión El tótem Ferocrín
    .accept 24524 >>Acepta la misión La purificación de Ferocrín
    .target Una Wildmane
step
    #xprate <1.2
    .goto 7,49.523,17.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tradicionalista Tótem de Lluvia|r
    .turnin 833 >>Entrega la misión Cementerio sagrado
    .target Lorekeeper Raintotem
step
    #xprate <1.2
    .goto 7,49.685,17.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Skorn|r
    .turnin 861 >>Entrega la misión Los hábitos del cazador
    .target Skorn Whitecloud
step
    #xprate <1.2
    .goto 7,49.586,17.587
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Entrega la misión Preparación para la ceremonia
    .target Eyahn Eagletalon
step
    #xprate <1.2
    .goto 7,43.204,16.050
    .use 5416 >>|cRXP_WARN_Usa|r |T135139:0|t[Tótem de limpieza Bravacrín] |cRXP_WARN_junto al pozo|r
    .complete 24524,1 --Well Cleansed (1)
step
    #xprate <1.2
    .goto 7,49.370,17.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Una|r
    .turnin 24524 >>Entrega la misión La purificación de Ferocrín
    .accept 24550 >>Acepta la misión Viaje a Cima del Trueno
    .target Una Wildmane
step
    #xprate <1.2
    #completewith next
    .deathskip >>Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #xprate <1.2
    #completewith next
    .goto 88,54.766,26.571,15,0
    .goto 88,50.038,34.337,20 >>Toma el ascensor hacia Cima del Trueno
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baine|r
    .turnin 24550 >>Entrega la misión Viaje a Cima del Trueno
    .accept 24540 >>Acepta la misión Baile de guerra
    .target Baine Bloodhoof
step << Tauren
    #xprate <1.2
    .goto 88,45.77,55.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Entrega la misión Un viaje a Cima del Trueno
    .accept 6363 >>Acepta la misión Tal, maestro de jinetes del viento
    .target Ahanu
step
    #xprate <1.2
    .goto 88,45.822,64.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu hogar en Cima del Trueno
    .target Innkeeper Pala
    .isQuestAvailable 24540
step
    #xprate <1.2
    #completewith next
    .goto 88,51.937,26.573,15,0
    .goto 7,37.883,13.834,50 >>Toma el ascensor del norte para volver a Mulgore
    .zoneskip Mulgore
step
    #xprate <1.2
    .goto 7,36.975,11.910
    >>Ataca a |cRXP_ENEMY_Orno Tótem Siniestro|r
    >>|cRXP_WARN_La misión se completará cuando alcance el 90% de salud|r
    .complete 24540,1 --Orno Grimtotem Defeated (1x)
    .mob Orno Grimtotem
step
    #xprate <1.2
    #completewith next
    .hs >>Usa tu Piedra de hogar para ir a Cima del Trueno
    .use 6948
    .zoneskip Thunder Bluff
step
    #xprate <1.2
    .goto 88,60.330,51.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baine|r
    .turnin 24540 >>Entrega la misión Baile de guerra
    .accept 26397 >>Acepta la misión Caminar con la Madre Tierra
    .target Baine Bloodhoof
step << Tauren
    #xprate <1.2
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entrega la misión Tal, maestro de jinetes del viento
    .target Tal
    .zoneskip Orgrimmar
step
    #optional
    #label MulgoreEnd
step << !Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step << Tauren
    .goto 88,47.05,49.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .gossipoption 111516 >>Vuela a Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
step
    .goto 7,47.44,58.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tak|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Tak
    .zoneskip Mulgore,1
step
    #optional
    .abandon 743 >>Abandona la misión Los Vientos Furiosos son un peligro
step
    #optional
    .abandon 14491 >>Abandona la misión La tierra inquieta
step
    #optional
    .abandon 24456 >>Abandona la misión La purificación de Tronacuerno
step
    #optional
    .abandon 11129 >>Abandona la misión ¡Kyle ha desaparecido!
step
    #optional
    .abandon 6364 >>Abandona la misión Regresa junto a Varg
step
    #xprate <1.2
    #completewith next
    .goto 85,49.886,75.613,8 >>Entra en el Fuerte Grommash
step
    #xprate <1.2
    .goto 1454/1,-4343.10010,1669.20007
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Garrosh Grito Infernal|r
    .turnin 26397 >>Entrega la misión Caminar con la Madre Tierra
    .target Garrosh Hellscream
    .isOnQuest 26397
    ]])
