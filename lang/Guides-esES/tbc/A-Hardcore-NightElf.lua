if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor NightElf
#group RXP TBC Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#name 1-11 Teldrassil
#next 12-14 Costa Oscura

step << !NightElf
    #sticky
    #completewith next
    +Has seleccionado una guía diseñada para Elfos de la Noche. Deberías elegir la misma zona de inicio en la que comienzas
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .accept 456 >> Acepta la misión El equilibrio de la naturaleza
step
    #sticky
    #label balance1
    >>Mata a los |cRXP_ENEMY_Sables de la noche joven|r y a los |cRXP_ENEMY_Jabalíes cardo joven|r
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    .xp 2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r y |cRXP_FRIENDLY_Melithar Corzocelada|r
    .accept 4495 >> Acepta la misión Un buen amigo
    .goto Teldrassil,60.899,41.961
    .target +Dirania Silvershine
    .accept 458 >> Acepta la misión La protectora de los bosques
	.goto Teldrassil,59.924,42.474
    .target +Melithar Staghelm
step << Hunter
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Mata enemigos de camino hasta que te falten 610xp para el nivel 4 (790/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entrega la misión Un buen amigo
    .target Iverron
    .accept 3519 >> Acepta la misión Un amigo en apuros
step << Hunter
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a la Cañada Umbría
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Entrega la misión La protectora de los bosques
    .target Tarindrella
    .accept 459 >> Acepta la misión La protectora de los bosques
step << Druid/Priest
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Dellylah
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 456,1 >> Entrega la misión El equilibrio de la naturaleza << Hunter
    .turnin 456 >> Entrega la misión El equilibrio de la naturaleza << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Acepta la misión El equilibrio de la naturaleza
	.accept 3116 >> Acepta la misión El Sigilo Simple << Warrior
	.accept 3117 >> Acepta la misión El Sigilo con Grabados << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Acepta la misión Sigilo Sacralizado << Priest
	.accept 3120 >> Acepta la misión El Sigilo Verdeante << Druid
step << Warrior
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r
    .target Keina
step << Warrior
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Entrega la misión El Sigilo Simple
    .trainer >> Aprende tus hechizos de clase
step << !Hunter
    .goto Teldrassil,59.8,34.1
    >>Mata a los |cRXP_ENEMY_Sables de la noche sarnosos|r y a los |cRXP_ENEMY_Jabalíes Cardo|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entrega la misión Un buen amigo
    .target Iverron
    .accept 3519 >> Acepta la misión Un amigo en apuros
step << !Hunter
    #completewith next
    .hs >> Usa tu Piedra de Hogar para ir a la Cañada Umbría
step << !Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Entrega la misión La protectora de los bosques
    .target Tarindrella
    .accept 459 >> Acepta la misión La protectora de los bosques
step << !Hunter
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 457 >> Entrega la misión El equilibrio de la naturaleza
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r
    .turnin 3519 >> Entrega la misión Un Amigo en Apuros
    .target Dirania Silvershine
    .accept 3521 >> Acepta la misión Antídoto de Iverron
step
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_BUY_Compra 3 stacks de|r |T132382:0|t[Flechas férreas] << Hunter
	.vendor >> |cRXP_WARN_Vende la basura|r << !Hunter
    .target Keina
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .accept 916 >> Acepta la misión Veneno de tejemadera
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayanna Semprerguida|r
    .turnin 3117 >> Entrega la misión El Sigilo con Grabados
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .target Ayanna Everstride
step
    #loop
    .goto Teldrassil,58.21,36.40,0
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20,10,0
    >>Despoja los |cRXP_LOOT_Lirios alunados|r del suelo
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,56.8,31.7
    >>Mata a las |cRXP_ENEMY_Arañas Tejemadera|r. Despójalas para obtener su |cRXP_LOOT_Icor|r y sus |cRXP_LOOT_Glándulas venenosas|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>Mata a los |cRXP_ENEMY_Grell|r y a los |cRXP_ENEMY_Grellín|r. Despójalos para obtener sus |cRXP_LOOT_Champiñones|r y |cRXP_LOOT_Musgovil|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarindrella|r
    .turnin 459 >> Entrega la misión La protectora de los bosques
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dirania Brillargente|r
    .turnin 3521 >> Entrega la misión El antídoto de Iverron
    .target Dirania Silvershine
    .accept 3522 >> Acepta la misión Antídoto de Iverron
step << !Priest !Druid
    #completewith next
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Vende la basura|r << !Hunter
	.vendor >> |cRXP_BUY_Compra 3 o 4 montones de|r |T132382:0|t[Flechas férreas] << Hunter
    .target Keina
step << Druid
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dellylah|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Dellylah
step << Warrior
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alyissia|r
	.trainer >> Aprende tus hechizos de clase
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.89,41.67,10 >> Sube por la rampa
step << Priest
    .goto Teldrassil,59.521,40.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyrai|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Lyrai
step << Priest
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r escaleras arriba
	.turnin 3119 >> Entrega la misión Sigilo Sacralizado
	.trainer >> Aprende tus hechizos de clase
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .turnin 916 >> Entrega la misión Veneno de tejemadera
    .target Gilshalan Windwalker
    .accept 917 >> Acepta la misión Huevo de Tejemadera
step << Druid
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Sube al Árbol Aldrassil
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mardant Fuerterroble|r
	.turnin 3120 >> Entrega la misión El sigilo verdeante
    .train 8921 >> Aprende |T136096:0|t[Fuego lunar]
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iverron|r
    .turnin 3522 >> Entrega la misión El antídoto de Iverron
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Entra en la Gruta Narácnida
step
    .goto Teldrassil,57.0,26.4
    >>Despoja un |cRXP_LOOT_Huevo de Tejemadera|r del suelo al fondo de la cueva
    .complete 917,1 --Collect Webwood Egg (x1)
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilshalan Caminaviento|r
    .turnin 917 >> Entrega la misión Huevo de Tejemadera
    .target Gilshalan Windwalker
    .accept 920 >> Acepta la misión Las invocaciones de Tenaron
step
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tenaron Tormentagarre|r
    .turnin 920 >> Entrega la misión Las invocaciones de Tenaron
    .target Tenaron Stormgrip
    .accept 921 >> Acepta la misión La corona de la Tierra
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >> |cRXP_WARN_Usa la|r |T134776:0|t[Ampolla de cristal] |cRXP_WARN_en la Poza de la Luna|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>Mata a los |cRXP_ENEMY_Sables de la noche sarnosos|r y a los |cRXP_ENEMY_Jabalíes Cardo|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Conservador Ilthalaine|r
    .turnin 457,2 >> Entrega la misión El equilibrio de la naturaleza
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Acepta la misión Los caminos de Elune
step
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Sube al Árbol Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tenaron Tormentagarre|r
    .turnin 921 >> Entrega la misión La corona de la Tierra
    .target Tenaron Stormgrip
    .accept 928 >> Acepta la misión La corona de la Tierra
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Acepta la misión Paquete de Dolanaar
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .accept 488 >> Acepta la misión Las apuestas de Zenn
step
    #completewith DenlansEarth
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
	#completewith DenlansEarth
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label DenlansEarth
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    >>|cRXP_WARN_Asegúrate de tener 1 espacio libre en la bolsa antes de aceptar esta misión|r
    .accept 997 >> Acepta la misión Las tierras de Denalan
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r
    .accept 475 >> Acepta la misión Una brisa problemática
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    .turnin 5622 >> Entrega la misión Los caminos de Elune
    .target Laurna Morninglight
    .accept 5621 >> Acepta la misión Prendas de la luna
	.trainer >> Aprende tus hechizos de clase
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aldia|r escaleras arriba
    .vendor >> |cRXP_BUY_Compra y equipa un|r |T135426:0|t[Cuchillo arrojadizo pequeño]
    .target Aldia
step
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .accept 932 >> Acepta la misión Odio enraizado
    .accept 2438 >> Acepta la misión El atrapasueños esmeralda
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    >>|cRXP_BUY_Compra y equipa un|r |T135499:0|t[Arco corvo de madera de cuerno]
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que tu Carcaj esté lleno|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    .vendor >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que tu Carcaj esté lleno|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    .equip 18,2506 >>|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa un|r |T135321:0|t[Gladius] |cRXP_BUY_si puedes permitírtelo (5 platas 36 cobres), si no, omite este paso|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    .equip 16,2488 >>|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
	.trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa un|r |T135641:0|t[Estilete] |cRXP_BUY_si puedes permitírtelo (4 platas 1 cobre), si no, omite este paso|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    .equip 16,2494 >>|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava] |cRXP_BUY_si puedes permitírtelo (5 platas 4 cobre), si no, omite este paso|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    .equip 16,2495 >>|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Keldamyr|r
    .turnin 2159,2 >> Entrega la misión Paquete de Dolanaar << Hunter
    .turnin 2159 >> Entrega la misión Paquete de Dolanaar << !Hunter
    .vendor >>|cRXP_BUY_Compra 10 |T132815:0|t|cRXP_LOOT_Leche fría como el hielo|r o cuanto puedas permitirte << Priest
    .home >> Establece tu Piedra de hogar en Dolanaar
    .bindlocation 186
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Aprende tus hechizos de clase
    .target Dazalar
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
	.trainer >> Aprende tus hechizos de clase
    .target Kal
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 928 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 929 >> Acepta la misión La corona de la Tierra
step
    #completewith DenlanStart
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_¡Ten cuidado, ya que los|r |cRXP_ENEMY_Sable de la noche|r |cRXP_WARN_y las|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_se mueven muy rápido!|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_también atraerán a otras|r |cRXP_ENEMY_Lechuzas|r |cRXP_WARN_si te acercas corriendo a ellas mientras estás en combate con una|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
	#completewith DenlanStart
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step << Druid
#ah
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malorne Filohoja|r
    >>|T136065:0|t[Herboristería] |cRXP_WARN_es necesario para recolectar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    >>|cRXP_WARN_Si prefieres comprar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_de la Casa de Subastas después, omite este paso|r
    .train 2366 >> Aprende |T136065:0|t[Herboristería]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
#ssf
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malorne Filohoja|r
    >>|T136065:0|t[Herboristería] |cRXP_WARN_es necesario para recolectar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .train 2366 >> Aprende |T136065:0|t[Herboristería]
    .target Malorne Bladeleaf
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #optional
    #completewith end
    #label GatheringQ
    #season 0
    .skill herbalism,15 >>|cRXP_WARN_Sube tu|r |T136065:0|t[Herboristería] |cRXP_WARN_al 15 para poder recopilar 5|r |T134187:0|t[Raíz de tierra] |cRXP_WARN_para una misión de clase importante pronto. Puedes desaprenderla después|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .disablecheckbox
    .itemcount 2449,<5 --Earthroot (<5)
step << Druid
    #optional
    #completewith end
    #requires GatheringQ
    #season 0
    >>Recoge 5 |T134187:0|t[Raíz de tierra] mediante |T136065:0|t[Herboristería] |cRXP_WARN_y raramente en los|cRXP_PICK_ Cofres maltrechos|r para una misión de clase futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Selecciona como objetivo a la |cRXP_FRIENDLY_Centinela Shaya|r
    >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior (Rango 2)] |cRXP_WARN_y|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_en la|r |cRXP_FRIENDLY_Centinela Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    #label DenlanStart
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Entrega la misión Las tierras de Denalan
    .target Denalan
    .accept 918 >> Acepta la misión Semillas de Brezomadera
    .accept 919 >> Acepta la misión Brotes de Brezomadera
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Mata |cRXP_ENEMY_Brezomaderas|r. Despójalos para obtener sus |cRXP_LOOT_Semillas|r
    >>Despoja los |cRXP_LOOT_Brotes de Brezomadera|r del suelo
    .complete 918,1 --Collect Timberling Seed (x8)
    .mob +Timberling
    .complete 919,1 --Collect Timberling Sprout (x12)
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Entrega la misión Semillas de Brezomadera
    .target Denalan
    .accept 922 >> Acepta la misión Rellian Verdeguja
    .turnin 919 >> Entrega la misión Brotes de Brezomadera
step
    #completewith Starbreeze
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_¡Ten cuidado, ya que los|r |cRXP_ENEMY_Sable de la noche|r |cRXP_WARN_y las|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_se mueven muy rápido!|r |cRXP_ENEMY_Lechuzas estrígidas|r |cRXP_WARN_también atraerán a otras|r |cRXP_ENEMY_Lechuzas|r |cRXP_WARN_si te acercas corriendo a ellas mientras estás en combate con una|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
	#completewith Starbreeze
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #label Starbreeze
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> Viaja a la Aldea Brisaestelar
step
    .goto Teldrassil,68.02,59.66
    >>Abre el |cRXP_PICK_Vestidor de Tallonkai|r. Despójalo para obtener el |cRXP_LOOT_Atrapasueños esmeralda|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gaerolas Talvethren|r escaleras arriba
    .turnin 475 >> Entrega la misión Una brisa problemática
    .target Gaerolas Talvethren
    .accept 476 >> Acepta la misión Corrupción en Tuercepinos
step
    .goto Teldrassil,63.38,58.10
    .use 5619 >>|cRXP_WARN_Usa la|r |T134721:0|t[Ampolla de jade] |cRXP_WARN_en la Poza de la Luna de la Aldea Brisaestelar|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
	#completewith SeekRedemption
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    >>Mata |cRXP_ENEMY_Sables de la noche|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r
    >>Mata |cRXP_ENEMY_Lechuzas estrígidas|r. Despójalas para obtener sus |cRXP_LOOT_Plumas|r
    >>Mata |cRXP_ENEMY_Rondadores Tejemadera|r. Despójalos para obtener su |cRXP_LOOT_Seda|r
    >>|cRXP_WARN_Guarda cualquier|r |T132832:0|t[Huevo pequeño] |cRXP_WARN_y|r |T134321:0|t[Pata de araña pequeña] |cRXP_WARN_para subir|r |T133971:0|t[Cocina] |cRXP_WARN_después|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 488 >> Entrega la misión Las apuestas de Zenn
step
    #loop
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91,50,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32,50,0
	.xp 7+3550 >> Farmea hasta que tengas +3520xp en el nivel 7 << !Priest
    .xp 7+3210 >> Farmea hasta que tengas +3210xp en el nivel 7 << Priest
step
    #label SeekRedemption
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syral Filohoja|r
    .accept 489 >> Acepta la misión ¡Búsqueda de redención!
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Athridas Manto de Oso|r
    .turnin 476 >> Entrega la misión Corrupción en Tuercepinos
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
    .turnin 5621 >> Entrega la misión Prendas de la luna
step << Priest
    #optional
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
	.trainer >> Aprende tus hechizos de clase
    .xp <8,1
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 2438 >> Entrega la misión El atrapasueños esmeralda
    .target Tallonkai Swiftroot
    .accept 2459 >> Acepta la misión Ferocitas el Comesueños
step << Priest
    #optional
    .train 139,1
    .train 586,1
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
	.trainer >> Aprende tus hechizos de clase
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    >>|cRXP_BUY_Compra y equipa un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_si puedes permitírtelo (2 platas 85 cobres), si no, omite este paso|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
	.vendor >>|cRXP_BUY_Compra hasta 800|r |T132382:0|t[Flechas férreas]
    .target Jeena Featherbow
step << Hunter
    #completewith next
    .equip 18,2506 >>|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Aprende tus hechizos de clase
    .target Dazalar
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .trainer >> Aprende tus hechizos de clase
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa un|r |T135321:0|t[Gladius] |cRXP_BUY_si puedes permitírtelo (5 platas 36 cobres), si no, omite este paso|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    .equip 16,2488 >>|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa un|r |T135641:0|t[Estilete] |cRXP_BUY_si puedes permitírtelo (4 platas 1 cobre), si no, omite este paso|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    .equip 16,2494 >>|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava] |cRXP_BUY_si puedes permitírtelo (5 platas 4 cobre), si no, omite este paso|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    .equip 16,2495 >>|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
step << Druid
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 929 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 933 >> Acepta la misión La corona de la Tierra
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kal|r
	.trainer >> Aprende tus hechizos de clase
    .target Kal
step
	#completewith jewel
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Junto a un árbol pequeño
    .goto 1438/1,822.200,9948.500,6 >>En la colina pequeña
    .goto 1438/1,809.800,9926.400,6 >>Junto al árbol enorme
    >>Despoja las 3 |cRXP_LOOT_Bellotas viles|r de las ubicaciones marcadas en tu mapa.
    >>|cRXP_WARN_Omite este paso si alguna de ellas no está allí y no puedes completar el objetivo|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 489 >> Entrega la misión ¡Búsqueda de redención!
    .itemcount 3418,3
    .isOnQuest 489
step
	#completewith jewel
    >>Despoja las |cRXP_LOOT_Bellotas viles|r del suelo
    >>|cRXP_WARN_Generalmente se encuentran junto a los troncos de árbol|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #completewith next
    >>Mata |cRXP_ENEMY_Místicos Tuercepinos|r
    >>|cRXP_WARN_Si no hay muchos |cRXP_ENEMY_Místicos Tuercepinos|r, es posible que tengas que matar a los |cRXP_ENEMY_Guerreros Tuercepinos|r para que aparezcan|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>Mata a |cRXP_ENEMY_Ferocitas el Comesueños|r. Despójale el |T133288:0|t[|cRXP_LOOT_Collar Tuercepinos|r]. |cRXP_WARN_Ten cuidado ya que puede usar|r |T132152:0|t[Vapulear] |cRXP_WARN_golpeándote hasta tres veces a la vez|r
    .use 8049 >>|cRXP_WARN_Usa el |T133288:0|t[|cRXP_LOOT_Collar Tuercepinos|r] para despojar la|r |cRXP_LOOT_Joya de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Mata |cRXP_ENEMY_Místicos Tuercepinos|r
    >>|cRXP_WARN_Si no hay muchos |cRXP_ENEMY_Místicos Tuercepinos|r, es posible que tengas que matar a los |cRXP_ENEMY_Guerreros Tuercepinos|r para que aparezcan|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #label jewel
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brannol Lunáguila|r
    .vendor >> |cRXP_BUY_Vende y repara si es necesario|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    #loop
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7,50,0
    >>Despoja las |cRXP_LOOT_Bellotas viles|r del suelo
    >>|cRXP_WARN_Generalmente se encuentran junto a los troncos de árbol|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zenn Nauseapezuña|r
    .turnin 489 >> Entrega la misión ¡Búsqueda de redención!
    .isOnQuest 489
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Viaja a Roca Mácula
step
    .goto Teldrassil,51.2,50.6
    >>Mata a |cRXP_ENEMY_Lord Melenas|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Lord Melenas|r puede estar ubicado en muchos lugares diferentes en Roca Mácula
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << !Druid
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 929 >> Entrega la misión La corona de la Tierra
    .accept 933 >> Acepta la misión La corona de la Tierra
step
	#completewith spiderLegs
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    >>|cRXP_WARN_Las necesitas para una misión posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> Viaja al suroeste de Teldrassil
step
	.goto Teldrassil,42.61,76.18
	>>Haz clic en la |cRXP_PICK_Planta con extraños frutos|r
	.accept 930 >> Acepta la misión El fruto resplandeciente
step
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> Viaja a los Estanques de Arlithrien
step
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_Usa la|r |T134765:0|t[Ampolla de turmalina] |cRXP_WARN_en la Poza de la Luna de los Estanques de Arlithrien|r
	.complete 933,1
step
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Mata a los |cRXP_ENEMY_Rondadores Tejemadera|r y a los |cRXP_ENEMY_Venolmillos Tejemadera|r. Despójalos para obtener las |cRXP_LOOT_Patas de araña pequeñas|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#completewith next
    .goto Teldrassil,56.142,61.714,150 >> Regresa a Dolanaar
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 933 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 7383 >> Acepta la misión La corona de la Tierra
step
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Aprende |T133971:0|t[Cocina]
    .accept 4161 >> Acepta la misión La receta de los kaldorei
    .turnin 4161 >> Entrega la misión La receta de los kaldorei
    .target Zarrin
step << Warrior/Rogue
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Byancie|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Byancie
step
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tallonkai Cruzarraíz|r en la cima del Árbol
    .turnin 932 >> Entrega la misión Odio enraizado
    .turnin 2459 >> Entrega la misión Ferocitas el Comesueños
step
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla el camino al oeste de Dolanaar. También puede estar ocupada luchando contra una emboscada fúrbolg, en cuyo caso tendrás que esperar a que termine|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .accept 487 >> Acepta la misión El camino a Darnassus
    .target Moon Priestess Amara
step
    .goto Teldrassil,46.6,53.0
    >>Mata |cRXP_ENEMY_Emboscadores Tuercepinos|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla el camino al oeste de Dolanaar. También puede estar ocupada luchando contra una emboscada fúrbolg, en cuyo caso tendrás que esperar a que termine|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .turnin 487 >> Entrega la misión El camino a Darnassus
    .target Moon Priestess Amara
step
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> Viaja al Claro del Oráculo
step
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .accept 937 >> Acepta la misión El claro encantado
step
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_Usa la|r |T134798:0|t[Ampolla de amatista] |cRXP_WARN_en la poza de la Luna del Claro del Oráculo |r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
    #completewith harpies
    >>Mata a las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para conseguir sus |cRXP_LOOT_Cinturones|r
    >>|cRXP_ENEMY_Matriarcas Sangrepluma|r |cRXP_WARN_lanzan|r |T136052:0|t[Ola de sanación] |cRXP_WARN_y|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_que hace mucho daño. Intenta derrotarlas rápidamente|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
    .goto Teldrassil,34.61,28.79
    >>Haz clic en la |cRXP_PICK_Planta con extrañas hojas|r
    .accept 931 >> Acepta la misión Fronda fulgurante
step
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta. Omitir esta misión si el PNJ no está allí|r
    .accept 938 >> Acepta la misión Niebla
    .target Mist
step
	#label harpies
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    >>|cRXP_WARN_Recuerda que esta es una misión cronometrada, necesitas entregarla dentro de 9 minutos de aceptarla|r
    .turnin 938 >> Entrega la misión Niebla
step
    .goto Teldrassil,33.619,29.819
    >>Mata a las |cRXP_ENEMY_Arpías Sangrepluma|r. Despójalas para conseguir sus |cRXP_LOOT_Cinturones|r
    >>|cRXP_ENEMY_Matriarcas Sangrepluma|r |cRXP_WARN_lanzan|r |T136052:0|t[Ola de sanación] |cRXP_WARN_y|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_que hace mucho daño. Intenta derrotarlas rápidamente|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    .turnin 937 >> Entrega la misión El claro encantado
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Acepta la misión Teldrassil
step
    .xp 10-760 >>Farmea hasta estar a 760 XP de nivel 10 (5740/6500) << Druid
    .xp 10-1420 >>Farmea hasta estar a 1420 XP de nivel 10 (5080/6500) << !Druid !Rogue
    .xp 10-2340 >>Farmea hasta estar a 2340 XP de nivel 10 (4160/6500) << Rogue
step << !Rogue
    #completewith next
    .goto 1438/1,1949.100,10033.300,100 >> Viaja a Darnassus
step << !Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 922 >> Entrega la misión Rellian Verdeguja
    .target Rellian Greenspyre
    .accept 923 >> Acepta la misión Tumores
step << !Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r en la cima del Árbol
    .turnin 940 >> Entrega la misión Teldrassil
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r en el nivel intermedio
    .accept 5921 >> Acepta la misión Claro de la Luna
	.trainer >> Aprende tus hechizos de clase
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .accept 2518 >> Acepta la misión Las lágrimas de la Luna
step << Druid
    #completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 5921 >> Entrega la misión Claro de la Luna
    .target Dendrite Starblaze
    .accept 5929 >> Acepta la misión Espíritu del gran oso
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu del gran oso|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >> |cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .usespell 18960
    >>|cRXP_WARN_Esto te hará regresar más rápido|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar|r subiendo las escaleras
    .turnin 5929 >> Entrega la misión Espíritu del gran oso
    .target Dendrite Starblaze
    .accept 5931 >> Acepta la misión El regreso a Darnassus
step << !Rogue
    .hs >> Usa tu Piedra de hogar para ir a Dolanaar
    .bindlocation 186,1
    .cooldown item,6948,>2,1
step << !Rogue
    #completewith next
    .subzone 186 >> Regresa a Dolanaar
step << !Rogue
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 7383 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 935 >> Acepta la misión La corona de la Tierra
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laurna Luzdelalba|r
	.trainer >> Aprende tus hechizos de clase
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kyra Espada del Viento|r
    .accept 1684 >> Acepta la misión Elanaria
	.trainer >> Aprende tus hechizos de clase
    .target Kyra Windblade
step << Hunter
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Acepta la misión Domesticar la bestia
	.trainer >> Aprende tus hechizos de clase
step << Hunter
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Rondador Tejemadera|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6101 >> Acepta la misión Domesticar la bestia
step << !Rogue
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Entrega la misión Fronda fulgurante
    .turnin 930 >> Entrega la misión El fruto resplandeciente
step << !Rogue
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .use 5179 >> |cRXP_WARN_Usa el|r |T134339:0|t[|cRXP_LOOT_Corazón musgoso|r] |cRXP_WARN_para iniciar la misión|r
    .accept 927 >> Acepta la misión El corazón musgoso
	.turnin 927 >> Entrega la misión El corazón musgoso
    .itemcount 5179,1
step << Hunter
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Acechador sable de la noche|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << !Rogue
    #completewith next
    .zone Darnassus >> Regresa a Darnassus
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6102 >> Acepta la misión Domesticar la bestia
step << Hunter
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Estridador estrígido|r
    >>|cRXP_WARN_Debes hacer clic derecho en el Marco de tu mascota y retirar tu mascota antes de poder domesticar a otra|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Entrega la misión Domesticar la bestia
    .target Dazalar
    .accept 6103 >> Acepta la misión Domesticar la bestia
    .train 1130 >> |cRXP_WARN_Asegúrate de haber aprendido Marca del cazador. La necesitarás para obtener una runa pronto|r
step << !Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla el camino al oeste de Dolanaar. También puede estar ocupada luchando contra una emboscada fúrbolg, en cuyo caso tendrás que esperar a que termine|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .turnin 487 >> Entrega la misión El camino a Darnassus
    .target Moon Priestess Amara
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Cazador estrígido|r para domesticarlo|r -- .tame 1997
    .train 2981 >> |cRXP_WARN_Ataca a enemigos con ella para aprender|r |T132140:0|t[Zarpa (Rango 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
	.unitscan Strigid Hunter
step << Rogue
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Dolanaar
    .bindlocation 186,1
step << Rogue
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corithras Furia Lunar|r
    .turnin 7383 >> Entrega la misión La corona de la Tierra
    .target Corithras Moonrage
    .accept 935 >> Acepta la misión La corona de la Tierra
step << Rogue
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Entrega la misión Fronda fulgurante
    .turnin 930 >> Entrega la misión El fruto resplandeciente
step << Rogue
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denalan|r
    .use 5179 >> |cRXP_WARN_Usa el|r |T134339:0|t[|cRXP_LOOT_Corazón musgoso|r] |cRXP_WARN_para iniciar la misión|r
    .accept 927 >> Acepta la misión El corazón musgoso
	.turnin 927 >> Entrega la misión El corazón musgoso
    .itemcount 5179,1
step << Rogue
    #completewith RogueRoad
    .zone Darnassus >> Viaja a Darnassus
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jannok Brisón|r
    .accept 2241 >> Acepta la misión Cuando cae la manzana
	.trainer >> Aprende tus hechizos de clase
    .train 5171 >> Aprende |T132306:0|t[Hacer picadillo]
    .train 921 >> Aprende |T133644:0|t[Robar] también, que se necesita para tu misión de Pícaro de nivel 10
    .target Jannok Breezesong
step << Rogue
    #label RogueRoad
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa Lunar Amara|r |cRXP_WARN_patrulla el camino al oeste de Dolanaar. También puede estar ocupada luchando contra una emboscada fúrbolg, en cuyo caso tendrás que esperar a que termine|r
    .line Teldrassil,50.4,54.2,50.4,55.4,50.4,55.6,50.6,56.2,51.2,56.6,52.2,56.4,52.4,56.6,52.8,57.0,53.4,57.6,54.4,58.4,55.2,58.6,55.4,58.4,55.6,58.4,55.8,58.6
    .turnin 487 >> Entrega la misión El camino a Darnassus
    .target Moon Priestess Amara
step << Rogue
    #completewith TotM
    .zone Darnassus >> Regresa a Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 922 >> Entrega la misión Rellian Verdeguja
    .target Rellian Greenspyre
    .accept 923 >> Acepta la misión Tumores
step << Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r en la cima del Árbol
    .turnin 940 >> Entrega la misión Teldrassil
    .turnin 935 >> Entrega la misión La corona de la Tierra
    .target Arch Druid Fandral Staghelm
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r
    >>|cRXP_WARN_Baja hacia el Cenarion Enclave|r
    .turnin 2241 >> Entrega la misión Cuando cae la manzana
    .target Syurna
    .accept 2242 >> Acepta la misión La llamada del destino
step << Rogue
    #label TotM
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .accept 2518 >> Acepta la misión Las lágrimas de la Luna
step
    #sticky
    #completewith next
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,43.80,26.03,0
	>>Mata a los |cRXP_ENEMY_Pisoteadores Brezomadera|r, a los |cRXP_ENEMY_Lodobestias Brezomadera|r y a los |cRXP_ENEMY_Brezomaderas ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Tumores|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
    #loop
    .goto Teldrassil,41.7,41.8,0
    .goto Teldrassil,48.0,25.2,0
    .goto Teldrassil,42.0,25.6,0
    .goto Teldrassil,39.6,25.6,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4,30,0
    .line Teldrassil,41.70,41.82,41.97,39.03,42.20,35.71,43.33,33.27,43.79,30.65,44.18,27.80,46.09,26.55,47.72,25.57,46.25,25.62,44.42,26.09,42.83,26.15,42.0,25.6,39.6,25.6
    >>Mata a la |cRXP_ENEMY_Lady Sathrah|r. Despójala para obtener sus |cRXP_LOOT_Hileras|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_puede aparecer en 3 ubicaciones diferentes, verifica tu mapa para ver una ruta recomendada|r
    >>|cRXP_WARN_Dirígete al norte por el río y verifica el punto de aparición más al este primero. Ve haciendo la misión de los|r |T134339:0|t[Tumores] |cRXP_WARN_mientras avanzas|r
    >>|cRXP_WARN_Si no está al este del río, completa la misión|r |T134339:0|t[Tumores] |cRXP_WARN_antes de dirigirte al oeste|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step
    #loop
    .goto Teldrassil,43.2,42.8,0
    .goto Teldrassil,43.2,32.8,0
    .goto Teldrassil,43.6,26.0,0
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
	>>Mata a los |cRXP_ENEMY_Pisoteadores Brezomadera|r, a los |cRXP_ENEMY_Lodobestias Brezomadera|r y a los |cRXP_ENEMY_Brezomaderas ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Tumores|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_Lanza|r |T133644:0|t[Robar] en |cRXP_ENEMY_Sethir el Ancestro|r
    >>|cRXP_WARN_Debes estar en|r |T132320:0|t[Sigilo] |cRXP_WARN_para usar|r |T133644:0|t[Robar]
    >>|cRXP_ENEMY_Sethir el Ancestro|r |cRXP_WARN_camina por la rama del árbol grande|r
    >>|cRXP_WARN_Evita luchar contra |cRXP_ENEMY_Sethir el Ancestro|r. Deja que pase de largo, luego entra en|r |T132320:0|t[Sigilo] |cRXP_WARN_y usa|r |T133644:0|t[Robar] |cRXP_WARN_cuando estés detrás de él|r
    .complete 2242,1
    .mob Sethir the Ancient
step
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niebla|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta. Omitir esta misión si el PNJ no está allí|r
    .accept 938 >> Acepta la misión Niebla
    .target Mist
step
	#label harpies
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Centinela Arynia Quiebranubes|r
    >>|cRXP_WARN_Recuerda que esta es una misión cronometrada, necesitas entregarla dentro de 9 minutos de aceptarla|r
    .turnin 938 >> Entrega la misión Niebla
step
    #completewith next
    .goto 1438/1,1949.100,10033.300,100 >> Regresa a Darnassus
    .zoneskip Darnassus
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Acepta la misión Nessa Cantosombrío
step
    #optional
	.abandon 927 >> Abandona la misión El corazón musgoso. Nunca tendrás la oportunidad de entregarla después de este punto
step << Warrior
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Entrega la misión Elanaria
    .target Elanaria
    .accept 1683 >> Acepta la misión Vorlus Pezuñavil
step << Warrior
    #completewith next
    .goto 1438/1,1355.300,9941.101,100,0
    .goto 1438/1,1321.500,9685.500,20,0
    .goto 1438/1,1315.000,9632.000,15 >> Viaja hacia |cRXP_ENEMY_Vorlus Pezuñavil|r
step << Warrior
    .goto Teldrassil,47.2,63.7
    >>Mata a |cRXP_ENEMY_Vorlus Pezuñavil|r. Despójalo para obtener su |cRXP_LOOT_Cuerno|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #completewith next
    .zone Darnassus >> Regresa a Darnassus
step << Warrior
    #completewith next
    .zone Darnassus >> Regresa a Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Entrega la misión Vorlus Pezuñavil
step << Hunter/Warrior/Priest
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilyenia Fuegolunar|r
    .skipgossip 11866,1
    .train 227 >>Aprende el uso de Bastones
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    .equip 16,2495 >>|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
step << Hunter
#ah
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra y equipa un|r |T135489:0|t[Arco corvo laminado] |cRXP_BUY_o revisa la Casa de Subastas para algo mejor o más barato|r
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
#ssf
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra y equipa un|r |T135489:0|t[Arco corvo laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
	.vendor >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas]
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    .equip 18,2507 >> |cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135147:0|t[Bastón nudoso]|cRXP_BUY_. Equipalo al nivel 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
#ah
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135154:0|t[Bastón de intendente]|cRXP_BUY_ o revisa la Casa de Subastas por algo mejor o más barato. Equipalo en el nivel 11|r
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
#ssf
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
    >>|cRXP_BUY_Compra un|r |T135154:0|t[Bastón de intendente]|cRXP_BUY_. Equipalo al nivel 11|r
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
#ah
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
	>>|cRXP_BUY_Compra y equipa un|r |T135346:0|t[Alfanje] |cRXP_BUY_si no puedes permitirte un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_o|r revisa la Casa de Subastas por algo mejor o más barato|r
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
#ssf
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariyell Cielosombra|r
	>>|cRXP_BUY_Compra y equipa un|r |T135346:0|t[Alfanje] |cRXP_BUY_si no puedes permitirte un|r |T135154:0|t[Bastón de intendente]
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #sticky
    .equip 16,851 >> |cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
step << Warrior
    #sticky
    #optional
    .equip 16,854 >> |cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
    .xp <11,1
step << Rogue
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r en el segundo piso
    >>|cRXP_BUY_Compra una|r |T135641:0|t[Daga arrojadiza equilibrada]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador de Darnassus|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T134187:0|t[Raíz de tierra] << Druid
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador de Darnassus|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T134187:0|t[Raíz de tierra] << Druid
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tBusca a |cRXP_FRIENDLY_Jaeana|r, ella patrulla alrededor del Bancal de los Mercaderes
    >>|cRXP_BUY_Compra un lote de|r |T133972:0|t[Fortalecer Jerky] |cRXP_BUY_de ella|r
    >>|cRXP_WARN_La necesitarás para alimentar a tu |cRXP_FRIENDLY_Owl|r, que solo come carne y no hay vendedor de carne en Costa Oscura|r
    .collect 117,15
    .target Jaeana
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mathrengyl Garroso|r en el nivel intermedio
    .turnin 5931 >> Entrega la misión El regreso a Darnassus
    .target Mathrengyl Bearwalker
    .accept 6001 >> Acepta la misión Cuerpo y corazón
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Entrega la misión Domesticar la bestia
step << Hunter
    >>|cRXP_WARN_Subepor la rampa a la derecha de|r |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Entrena los hechizos de tu mascota
    .target Silvaria
step << !Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Archidruida Fandral Corzocelada|r en la cima del Árbol
    .turnin 935 >> Entrega la misión La corona de la Tierra
    .target Arch Druid Fandral Staghelm
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syurna|r
    >>|cRXP_WARN_Baja hacia el Cenarion Enclave|r
    .turnin 2242 >> Entrega la misión La llamada del destino
step
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rellian Verdeguja|r
    .turnin 923 >> Entrega la misión Tumores
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2518 >> Entrega la misión Las lágrimas de la Luna
    .target Priestess A'moora
    .accept 2520 >> Acepta la misión El Sacrificio de Sathrah
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Usa el|r |T135652:0|t[Sacrificio de Sathrah] |cRXP_WARN_en la fuente|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa A'moora|r
    .turnin 2520 >> Entrega la misión El Sacrificio de Sathrah
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >> Viaja por el portal morado a la Aldea Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6344 >> Entrega la misión Nessa Cantosombrío
    .target Nessa Shadowsong
    .accept 6341 >> Acepta la misión Las presas de Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nessa Cantosombrío|r
    .turnin 6343 >> Entrega la misión Regreso a Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Entrega la misión Las presas de Teldrassil
    .target Vesprystus
    .accept 6342 >> Acepta la misión Vuelo a Auberdine
step << Warrior
    #sticky
    #optional
    .equip 16,854 >> |cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
    .xp <11,1
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Vuela a Costa Oscura
    .target Vesprystus
]])
