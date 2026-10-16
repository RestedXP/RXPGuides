if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Supervivencia (H)
<< Horde
#name 1-6 Durotar
#version 7
#subgroup RXP TBC Survival Guide 1-30
#defaultfor Orc/Troll
#next 6-10 Durotar

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía para Orcos y Trols. Deberías elegir la misma zona inicial donde empiezas|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Acepta la misión Tu lugar en el mundo
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_Mata a los |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas 35 cobres en objetos para vender (incluyendo tu armadura)|r << Warlock
    +|cRXP_WARN_Mata a los |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas 10 cobres en objetos para vender (incluyendo tu armadura)|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Acepta la misión Familiares viles
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vende la Basura
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Entrega la misión Tu lugar en el mundo
    .accept 788 >>Acepta la misión Dientes afilados
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla] << Warrior
    .train 8017 >>Aprende |T136086:0|t[Arma Muerdepiedras] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Viaja hacia |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vende la Basura
    .target Hraug
    .money >0.01
step << Warlock
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Viaja hacia |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Aprende |T135817:0|t[Inmolar]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << !Hunter !Shaman
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,35,0
    >>Mata a los |cRXP_ENEMY_Jabalíes jaspeados|r en el camino hacia el Aquelarre del Filo Ardiente
    >>|cRXP_WARN_Intenta llegar al nivel 2 antes de llegar allí|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >> Viaja hacia el Aquelarre del Filo Ardiente
    .isOnQuest 1485
step << Warlock
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>Mata a los |cRXP_ENEMY_Familiares viles|r. Despójalos para obtener las |cRXP_LOOT_Cabezas de familiar vil|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>Mata |cRXP_ENEMY_Jabalíes jaspeados|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Acepta la misión Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Mata a |cRXP_ENEMY_Sarkoth|r. Despójalo para obtener la |cRXP_LOOT_Garra destrozada de Sarkoth|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Entrega la misión Sarkoth
    .accept 804 >>Acepta la misión Sarkoth
    .target Hana'zua
step
    #loop
    .goto Durotar,41.30,65.03,0
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    >>Mata |cRXP_ENEMY_Jabalíes jaspeados|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #loop
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    .xp 3+850 >> Mata enemigos hasta alcanzar 850+/1400xp de camino de vuelta al pueblo
    .mob Mottled Boar
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata|r
    .mob Mottled Boar
	.money >0.01
step << Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vende la Basura
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Entrega la misión Familiares viles
    .accept 1499 >>Acepta la misión Familiares viles
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 1499 >>Entrega la misión Familiares viles
    .accept 794 >>Acepta la misión El medallón del Filo Ardiente
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Entrega la misión Dientes afilados << Shaman
    .turnin 788 >>Entrega la misión Dientes afilados << !Shaman
    .accept 789 >>Acepta la misión Aguijón de escórpido
    .accept 2383 >>Acepta la misión Papiro simple << Orc Warrior
    .accept 3065 >>Acepta la misión Tablilla simple << Troll Warrior
    .accept 3082 >>Acepta la misión Tablilla con grabados << Troll Hunter
    .accept 3083 >>Acepta la misión Tablilla encriptada << Troll Rogue
    .accept 3084 >>Acepta la misión La tablilla con runas grabadas << Troll Shaman
    .accept 3085 >>Acepta la misión Tablilla sacralizada << Troll Priest
    .accept 3086 >>Acepta la misión Tablilla glífica << Troll Mage
    .accept 3087 >>Acepta la misión Papiro con grabados << Orc Hunter
    .accept 3088 >>Acepta la misión Papiro encriptado << Orc Rogue
    .accept 3089 >>Acepta la misión El papiro con runas grabadas << Orc Shaman
    .accept 3090 >>Acepta la misión Papiro corrupto << Orc Warlock
    .turnin 804,1 >>Entrega la misión Sarkoth << Shaman
    .turnin 804 >>Entrega la misión Sarkoth << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Viaja hacia |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entrega la misión Tablilla encriptada << Troll Rogue
    .turnin 3088 >>Entrega la misión Papiro encriptado << Orc Rogue
    .train 53 >> Aprende |T132090:0|t[Puñalada]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entrega la misión Tablilla encriptada << Troll Rogue
    .turnin 3088 >>Entrega la misión Papiro encriptado << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Viaja hacia |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Viaja hacia |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vende la Basura
    .target Hraug
    .money >0.01
step << Warlock
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entrega la misión Papiro corrupto
    .train 172 >> Aprende |T136118:0|t[Corrupción]
    .target Nartok
step
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Acepta la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
step << !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vende la Basura
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entrega la misión La tablilla con runas grabadas << Troll
    .turnin 3089 >>Entrega la misión El papiro con runas grabadas << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entrega la misión Tablilla glífica << Troll
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .target Mai'ah
step << Hunter
    #requires Galgar
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .target Jen'shan
step << Warrior
    #requires Galgar
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .target Frang
step << Priest
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .target Ken'jai
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Acepta la misión Familiares viles
    .target Zureetha Fargaze
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Acepta la misión Peones vagos
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Despoja las |cRXP_LOOT_Manzanas de Cactus|r cerca de los cactus
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,45,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Mata |cRXP_ENEMY_Escórpidos obreros|r. Despójalos para obtener |cRXP_LOOT_Colas de escórpidos obreros|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>Mata |cRXP_ENEMY_Familiares viles|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
	.goto Durotar,43.26,58.28,0
	.goto Durotar,43.26,58.28,35,0
	.goto Durotar,42.81,58.41,35,0
	.goto Durotar,41.90,58.35,35,0
	.goto Durotar,41.97,59.20,35,0
	.goto Durotar,41.36,60.35,35,0
	.goto Durotar,40.66,61.27,35,0
	.goto Durotar,40.07,61.35,35,0
	.goto Durotar,39.42,61.29,35,0
	.goto Durotar,39.46,62.17,35,0
	.goto Durotar,39.55,63.10,35,0
	.goto Durotar,40.13,64.04,35,0
	.goto Durotar,40.84,64.06,35,0
	.goto Durotar,40.74,65.86,35,0
	.goto Durotar,39.93,66.03,35,0
	.goto Durotar,40.04,66.99,35,0
	.goto Durotar,40.09,67.66,35,0
	.goto Durotar,40.13,68.50,35,0
	.goto Durotar,40.72,68.55,35,0
	.goto Durotar,41.30,67.84,35,0
	.goto Durotar,41.37,66.72,35,0
	.goto Durotar,41.89,66.05,35,0
	.goto Durotar,41.27,65.71,35,0
	.goto Durotar,41.36,64.07,35,0
	.goto Durotar,41.33,63.12,35,0
	.goto Durotar,41.35,61.98,35,0
	.goto Durotar,41.49,61.25,35,0
	.goto Durotar,41.90,60.24,35,0
	.goto Durotar,42.51,59.34,35,0
	.goto Durotar,43.08,59.62,35,0
	.goto Durotar,43.91,59.33,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.85,60.34,35,0
	.goto Durotar,46.46,61.11,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.14,64.08,35,0
	.goto Durotar,47.58,64.04,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,46.90,61.15,35,0
	.goto Durotar,46.98,60.18,35,0
	.goto Durotar,47.07,59.34,35,0
	.goto Durotar,46.47,58.28,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,43.91,59.33,35,0
    >>Mata |cRXP_ENEMY_Escórpidos obreros|r. Despójalos para obtener |cRXP_LOOT_Colas de escórpidos obreros|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,45.64,65.70,35,0
	.goto Durotar,47.37,65.67,35,0
	.goto Durotar,46.74,60.66,35,0
	.goto Durotar,47.09,57.90,35,0
	.goto Durotar,43.90,57.79,35,0
	.goto Durotar,42.70,57.25,35,0
	.goto Durotar,41.27,58.95,35,0
	.goto Durotar,40.91,60.41,35,0
	.goto Durotar,38.83,61.84,35,0
	.goto Durotar,44.98,69.13,35,0
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #loop
	.goto Durotar,41.30,65.03,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
	.goto Durotar,41.30,65.03,35,0
    .xp 4 >> Mata enemigos hasta subir al nivel 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entrega la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vende la Basura
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 789 >>Entrega la misión Aguijón de escórpido
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Aprende |T136026:0|t[Choque de tierra]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acepta la misión La llamada de la tierra
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Entrega la misión Familiares viles
    .accept 794 >>Acepta la misión El medallón del Filo Ardiente
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Entrega la misión Peones vagos
    .accept 6394 >>Acepta la misión Pico de Thazz'ril
    .target Foreman Thazz'ril
step
    #completewith next
    .xp 4+1720 >> Mata enemigos hasta alcanzar 1720+/2100xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    #loop
	.goto Durotar,44.67,64.92,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.82,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>Despoja las |cRXP_LOOT_Manzanas de Cactus|r cerca de los cactus
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #optional
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 4+1720 >> Mata enemigos hasta alcanzar 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 5 >> Mata enemigos hasta subir al nivel 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>Entra en la cueva
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>Viaja hacia el |cRXP_LOOT_Pico de Thazz'ril|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Mata a los |cRXP_ENEMY_Acechadores viles|r. Despójalos para obtener las |cRXP_LOOT_Pezuña de acechador vil|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>Despoja el |cRXP_LOOT_Pico de Thazz'ril|r junto a la pared
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>Mata a |cRXP_ENEMY_Yarrog Sombrarruina|r. Despójalo para obtener el |cRXP_LOOT_Medallón del Filo Ardiente|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    >>Mata a los |cRXP_ENEMY_Acechadores viles|r. Despójalos para obtener las |cRXP_LOOT_Pezuña de acechador vil|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1680 >> Mata enemigos hasta alcanzar 1680+/2800xp << !Shaman
    .xp 5+690 >> Mata enemigos hasta alcanzar 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1300 >> Mata enemigos hasta alcanzar 1300+/2800xp << !Shaman
    .xp 5+310 >> Mata enemigos hasta alcanzar 310+/2800xp << Shaman
    .isOnQuest 4402
step << Orc/Troll
    #completewith BurningBladeTurnin
    .hs >>Usa tu Piedra de Hogar para ir a Valley of Trials
step << !Orc !Troll
    #completewith BurningBladeTurnin
    .goto Durotar,44.63,68.65,120 >>Viaja de vuelta a Valley of Trials
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Entrega la misión Pico de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entrega la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vende la Basura
    .target Duokna
    .money >0.03
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Entrega la misión El medallón del Filo Ardiente
    .accept 805 >>Acepta la misión Preséntate en el Poblado Sen'jin
    .target Zureetha Fargaze
step << !Shaman
    .xp 6 >> Mata enemigos hasta subir al nivel 6
    #loop
    .goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acepta la misión Al servicio de la espiritualidad
	.train 591 >>Aprende |T135924:0|t[Punición]
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Aprende |T135812:0|t[Bola de Fuego]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Aprende |T136052:0|t[Ola de sanación]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Entrega la misión La llamada de la tierra
    .accept 1517 >>Acepta la misión La llamada de la tierra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Entrega la misión La llamada de la tierra
    .accept 1517 >>Acepta la misión La llamada de la tierra
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Aprende |T132212:0|t[Marca del cazador]
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .train 6343 >>Aprende |T136105:0|t[Atronar]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Viaja hacia |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .train 1776 >> Aprende |T132155:0|t[Gubia]
    .target Rwag
    .money <0.02
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Viaja hacia |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Pacto de sangre] |cRXP_BUY_a este vendedor|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Vende la Basura
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>Viaja hacia el |cRXP_PICK_Santuario chamán|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Usa la|r |T134743:0|t[Sapta de tierra]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Manifestación|r
    .turnin 1517 >>Entrega la misión La llamada de la tierra
    .accept 1518 >>Acepta la misión La llamada de la tierra
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>Entrega la misión La llamada de la tierra
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Aprende |T136052:0|t[Ola de sanación]
    .target Shikrik
step
    #xprate >1.49
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Entrega la misión Pico de Thazz'ril
    .target Foreman Thazz'ril
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>Sal del Valle de los Retos
    .isOnQuest 805

]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Supervivencia (H)
<< Horde
#name 6-10 Durotar
#version 7
#subgroup RXP TBC Survival Guide 1-30
#defaultfor Orc/Troll
#next 10-12 Bosque de Canción Eterna

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acepta la misión Un cargamento de peón
    .target Ukor
step
    #completewith SenjinPickups
    .subzone 367 >>Viaja al Poblado Sen'jin
step
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r. Patrulla un poco
    .accept 786 >>Acepta la misión Frustrar los planes kolkar
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r y |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acepta la misión Presa práctica
    .goto Durotar,55.95,73.93
    .target +Vel'rin Fang
    .accept 818 >>Acepta la misión Un espíritu responsable
    .goto Durotar,55.94,74.40
    .target +Master Vornal
    .turnin 805 >>Entrega la misión Preséntate en el Poblado Sen'jin
    .accept 808 >>Acepta la misión La calavera de Minshina
    .accept 826 >>Acepta la misión Zalazane
    .accept 823 >>Acepta la misión Informa a Orgnil
    .goto Durotar,55.94,74.72
    .target +Master Gadrin
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Entra en la gran cabaña
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compra |r |T132414:0|t[Hacha arrojadiza pesada] |cRXP_BUY_a esta vendedora|r
    .collect 29007,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (5 platas 04 cobres). Volverás más tarde si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .target Trayexir
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (4 platas 01 cobre). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T132401:0|t[Hacha grande] (4 platas 84 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_a este vendedor|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135421:0|t[Tomahawk] (5 platas 40 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135421:0|t[Tomahawk] |cRXP_BUY_a este vendedor|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135499:0|t[Arco corvo de madera de cuerno] (2 platas 83 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_a este vendedor|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >> Aprende |T135812:0|t[Bola de Fuego]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .target Un'Thuwa
step
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Corre por la playa. Mata a los |cRXP_ENEMY_Reptadores|r y a los |cRXP_ENEMY_Makruras|r. Despójalos para obtener |cRXP_LOOT_Mucosidades|r y |cRXP_LOOT_Ojos|r. No tienes que terminar este paso aquí.
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,52.20,83.00,75 >> Llega al final de la playa
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,30 >>Entra en la base Kolkar
    .isOnQuest 786
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Ten cuidado si|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_ha aparecido, es un raro de nivel 9. Es posible que tengas que usar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes|r
    .unitscan Warlord Kolkanis
step
    .goto Durotar,49.81,81.29
    >>Quema el |cRXP_PICK_Plan de ataque|r dentro de la tienda en el suelo
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Quema el |cRXP_PICK_Plan de ataque|r en el suelo
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Quema el |cRXP_PICK_Plan de ataque|r en el suelo
    .goto Durotar,46.23,78.94
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith TurninKolkar
    .goto Durotar,50.95,79.14,30 >>Abandona la base Kolkar
    .isQuestComplete 786
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (5 platas 04 cobres). Volverás más tarde si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .target Trayexir
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (4 platas 01 cobre). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T132401:0|t[Hacha grande] (4 platas 84 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_a este vendedor|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135421:0|t[Tomahawk] (5 platas 40 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135421:0|t[Tomahawk] |cRXP_BUY_a este vendedor|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135499:0|t[Arco corvo de madera de cuerno] (2 platas 83 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_a este vendedor|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Entrega la misión Un espíritu responsable
    .target Master Vornal
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r
    .vendor >> Vende la basura
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #label TurninKolkar
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r. Patrulla un poco
    .turnin 786 >>Entrega la misión Frustrar los planes Kolkar
    .target Lar Prowltusk
step
    #completewith next
    +|cRXP_WARN_Asigna a tus barras de acción|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_y|r |T134712:0|t[Pegamento muy pegajoso]|cRXP_WARN_. Guárdalos para situaciones de emergencia|r
step
    #label RazorHill1
    #completewith next
    .subzone 362 >>Viaja a Cerrotajo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r y |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entrega la misión Informa a Orgnil
    --.accept 806 >>Accept Dark Storms
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Acepta la misión Vencer a los traidores
    .accept 837 >>Acepta la misión Invasión
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Acepta la misión Romper huevos
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Viaja hacia la torre
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Sube por la torre hacia Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acepta la misión Asume tu responsabilidad
    .target Furl Scornbrow
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Krunn
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_de|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (5 platas 04 cobres). Volverás más tarde si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,784,1 --Collect Walking Stick (1)
    .target Uhgar
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (4 platas 01 cobre). Volverás más adelante si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,784,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T132401:0|t[Hacha grande] (4 platas 84 cobres). Volverás más adelante si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_a este vendedor|r
    .collect 2491,1,784,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135421:0|t[Tomahawk] (5 platas 40 cobres). Volverás más adelante si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra un|r |T135421:0|t[Tomahawk] |cRXP_BUY_a este vendedor|r
    .collect 2490,1,784,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaw|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135499:0|t[Arco corvo de madera de cuerno] (2 platas 83 cobres). Volverás más adelante si aún no tienes suficiente
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_a este vendedor|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target Ghrawt
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a este vendedor|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    >>|cRXP_WARN_¡Guarda 4 monedas de plata para tus hechizos de clase!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_¡Guarda 2 monedas de plata para tus hechizos de clase!|r << Priest
    .vendor >> Vende la Basura
    .home >> Establece tu Piedra de hogar en Cerrotajo
    .turnin 2161 >>Entrega la misión Un cargamento de peón
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
    .bindlocation 362
    .xp <8,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    .vendor >> Vende la Basura
    .home >> Establece tu Piedra de hogar en Cerrotajo
    .turnin 2161 >>Entrega la misión Un cargamento de peón
    .target Innkeeper Grosk
    .bindlocation 362
    .xp >8,1
step << !Mage !Hunter !Druid !Paladin
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    .vendor >> Vende la Basura
    .home >> Establece tu Piedra de hogar en Cerrotajo
    .turnin 2161 >>Entrega la misión Un cargamento de peón
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
    .bindlocation 362
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <8,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Aprende tus hechizos de clase
    .target Swart
    .xp <8,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
    .xp <8,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,784,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .xp <8,1
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .train 5116 >> Aprende tus hechizos de clase
    .target Thotar
    .xp <8,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Aprende tus hechizos de clase
    .target Kaplak
    .xp <8,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >> Entrega la misión Al servicio de la espiritualidad
    .accept 5648 >> Acepta la misión Prendas de espiritualidad
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior Rango 2]
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Lanza |T135929:0|t[Sanación inferior] y |T135987:0|t[Palabra de poder: entereza] sobre |cRXP_FRIENDLY_Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Entrega la misión Prendas de espiritualidad
    .trainer >> Aprende tus hechizos de clase
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 4496,1,784,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Rogue/Paladin
    #completewith TiragardeArrive
    +|cRXP_WARN_Usa|r |T136025:0|t[Buscar minerales] |cRXP_WARN_y extrae cualquier filón de cobre que encuentres para obtener|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r|cRXP_WARN_. Crea|r |T135248:0|t[Piedras de afilar ] |cRXP_WARN_con ellas|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>Viaja al Fuerte de Tiragarde
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Ten cuidado si el|r |cRXP_ENEMY_Comandante de vigilancia Zalafil|r |cRXP_WARN_ha aparecido, es un raro de nivel 9. Es posible que tengas que usar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si tienes una|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Ve al segundo piso del castillo
step
    #completewith AgedEnvelope
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de retal|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Mata al |cRXP_ENEMY_Teniente Benedict|r. Despójalo para obtener su |cRXP_LOOT_Llave|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>|cRXP_WARN_Sube las escaleras en el castillo|r
    >>Abre el |cRXP_PICK_Cofre de Benedict|r. Despójalo para obtener el |T133471:0|t[|cRXP_LOOT_Sobre viejo|r]
    >>Usa el |T133471:0|t[|cRXP_LOOT_Sobre viejo|r] para iniciar la misión
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Acepta la misión Las órdenes del almirante
    .use 4881
step
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de retal|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #optional
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de retal|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Mage
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2610 >> Farmea hasta 2610+/4500xp
step
    #completewith next
    .goto Durotar,52.38,43.77,120 >> Viaja a Cerrotajo
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Puedes hablar con él desde afuera o en lo alto del búnker|r
    .turnin 784 >>Entrega la misión Vencer a los traidores
    .turnin 830 >>Entrega la misión Las órdenes del almirante
    .accept 825 >>Acepta la misión Los restos del naufragio...
    .accept 831 >>Acepta la misión Las órdenes del almirante
    .accept 837 >>Acepta la misión Invasión
    .target Gar'thok
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Viaja hacia la torre
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Sube por la torre hacia Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Entrega la misión Asume tu responsabilidad
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_de|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (5 platas 04 cobres). Volverás más tarde si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .target Uhgar
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (4 platas 01 cobre). Volverás más adelante si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T132401:0|t[Hacha grande] (4 platas 84 cobres). Volverás más adelante si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_a este vendedor|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uhgar|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135421:0|t[Tomahawk] (5 platas 40 cobres). Volverás más adelante si aún no tienes suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compra un|r |T135421:0|t[Tomahawk] |cRXP_BUY_a este vendedor|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shaw|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135499:0|t[Arco corvo de madera de cuerno] (2 platas 83 cobres). Volverás más adelante si aún no tienes suficiente
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_a este vendedor|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target Ghrawt
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a este vendedor|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8044 >> Aprende tus hechizos de clase
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    #completewith Tools
    .train 20270 >> |cRXP_WARN_Usa el|r |T133738:0|t[Grimorio Descarga de Fuego Rango 2]
    .use 16302
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .train 5116 >> Aprende tus hechizos de clase
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >> Aprende tus hechizos de clase
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .train 139 >> Aprende tus hechizos de clase
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    .vendor >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman
    .vendor >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    .target Innkeeper Grosk
    .isOnQuest 825 --From the Wreckage
    .money <0.0125
step << Warrior/Rogue/Paladin
    #completewith Tools
    +|cRXP_WARN_Usa|r |T136025:0|t[Buscar minerales] |cRXP_WARN_y extrae cualquier filón de cobre que encuentres para obtener|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r|cRXP_WARN_. Crea|r |T135248:0|t[Piedras de afilar ] |cRXP_WARN_con ellas|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto Durotar,62.25,56.34,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    >>Despoja las |cRXP_PICK_Cajas de herramientas gnoma|r dentro y alrededor de los barcos
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Nada a la Isla
step
    #completewith MinshinasSkull
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TaillasherEggs
    #loop
    .goto Durotar,67.04,71.40,0
    .goto Durotar,70.23,70.84,0
    .goto Durotar,67.04,71.40,40,0
    .goto Durotar,67.66,73.86,40,0
    .goto Durotar,68.67,74.47,40,0
    .goto Durotar,69.76,74.69,40,0
    .goto Durotar,70.29,73.31,40,0
    .goto Durotar,70.23,70.84,40,0
    .goto Durotar,69.69,70.35,40,0
    .goto Durotar,69.21,69.69,40,0
    .goto Durotar,67.74,69.86,40,0
    >>Despoja los |cRXP_PICK_Huevos de colazote|r del suelo
    >>|cRXP_WARN_Generalmente están protegidos por un|r |cRXP_ENEMY_Colazote Garrasangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>Mata |cRXP_ENEMY_Reptadores|r y |cRXP_ENEMY_Makruras|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r y sus |cRXP_LOOT_Ojos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>Nada a la isla principal
    .isOnQuest 826
step
    #completewith MinshinasSkull
    >>Mata |cRXP_ENEMY_Trols embrujados|r y |cRXP_ENEMY_Trols vudú|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Guarda tu|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Shaman
    >>|cRXP_WARN_Guarda tu|r |T132155:0|t[Gubia] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Despoja una de los |cRXP_LOOT_Calaveras|r del suelo
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Guarda tu|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Shaman
    >>|cRXP_WARN_Guarda tu|r |T132155:0|t[Gubia] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
	.goto Durotar,67.23,88.00,0
	.goto Durotar,67.23,88.76,40,0
	.goto Durotar,66.52,87.74,40,0
	.goto Durotar,65.94,86.72,40,0
	.goto Durotar,65.90,84.04,40,0
	.goto Durotar,65.88,82.85,40,0
	.goto Durotar,67.38,82.61,40,0
	.goto Durotar,68.42,82.43,40,0
	.goto Durotar,68.50,84.32,40,0
	.goto Durotar,68.47,86.77,40,0
	.goto Durotar,67.23,88.00,40,0
    >>Mata |cRXP_ENEMY_Trols embrujados|r y |cRXP_ENEMY_Trols vudú|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto Durotar,65.27,87.86,0
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44,50,0
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >> Viaja al Poblado Sen'jin
    .subzoneskip 367
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Salta a la cabaña|r
    .vendor >> Vende la basura y repara
    .target Trayexir
    .isOnQuest 808
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >> Aprende tus hechizos de clase
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r y |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Entrega la misión La calavera de Minshina
    .turnin 826 >>Entrega la misión Zalazane
    .goto Durotar,55.95,74.73
    .target +Master Gadrin
    .turnin 818 >>Entrega la misión Un espíritu responsable
    .goto Durotar,55.95,74.39
    .target +Master Vornal
    .turnin 817 >>Entrega la misión Presa práctica
    .goto Durotar,55.95,73.93
    .target +Vel'rin Fang
step
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .subzone 362 >>Viaja a Cerrotajo
    .cooldown item,6948,<0
step
    #completewith RazorHill3
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>2,1
step
    #label RazorHill3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Gar'Thok|r y |cRXP_FRIENDLY_Torka|r
    .turnin 825 >>Entrega la misión Los restos del naufragio...
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .turnin 815 >>Entrega la misión Romper huevos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
step
    #loop
    .goto Durotar,50.21,50.78,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>Mata |cRXP_ENEMY_Jabaespín Crines de Acero|r y |cRXP_ENEMY_Exploradores Crines de Acero|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    >>Mata |cRXP_ENEMY_Polvoroso Crines de Acero|r y |cRXP_ENEMY_Guardias de batalla Crines de Acero|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+5870 >>Combate hasta llegar a 5870+/6500xp
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Entrega la misión Invasión
    .target Gar'Thok
step
    #optional
    #loop
	.goto Durotar,41.94,40.46,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 10 >>Mata enemigos hasta el nivel 10
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Aprende tus hechizos de clase
    .accept 2983 >>Acepta la misión La llamada del fuego
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    --.accept 1505 >>Accept Veteran Uzzek
    .trainer >>Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    --Warrior will do def stance q in Brill
step << Orc Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>Acepta la misión Las invocaciones de Gan'rul
    .train 1120 >>Aprende tus hechizos de clase
    .target Dhugru Gorelust
step << Warlock
    #completewith next
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,1501,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
step << Warlock
    .train 20270 >> |cRXP_WARN_Usa el|r |T133738:0|t[Grimorio Descarga de Fuego Rango 2]
    .use 16302
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .train 8092 >> Aprende tus hechizos de clase
    .target Tai'jin
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Aprende tus hechizos de clase
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6062 >>Acepta la misión Domesticar la bestia
    .trainer >>Aprende tus hechizos de clase
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a este vendedor|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    .money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51,40,0
    .use 15917 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí jaspeado temible|r |cRXP_WARN_a rango máximo|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6062 >>Entrega la misión Domesticar la bestia
    .accept 6083 >>Acepta la misión Domesticar la bestia
    .target Thotar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6083 >>Acepta la misión Domesticar la bestia
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Retira tu |cRXP_ENEMY_Jabalí jaspeado temible|r haciendo clic derecho en su marco de unidad y haciendo clic en Retirar, de lo contrario no podrás domesticar un|r |cRXP_ENEMY_Reptador de espuma|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38,40,0
    >>|cRXP_WARN_No mates a los|r |cRXP_ENEMY_Escórpidos acorazados|r |cRXP_WARN_que ves. Los necesitarás más tarde|r
    .use 15919 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Reptador de espuma|r |cRXP_WARN_a rango máximo|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6083 >>Entrega la misión Domesticar la bestia
    .accept 6082 >>Acepta la misión Domesticar la bestia
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Retira tu |cRXP_ENEMY_Reptador de espuma|r haciendo clic derecho en su marco de unidad y haciendo clic en Retirar, de lo contrario no podrás domesticar a un|r |cRXP_ENEMY_Escórpido acorazado|r
step << Hunter
    #loop
    .goto Durotar,54.84,36.94,0
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .use 15920 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Escórpido acorazado|r |cRXP_WARN_a rango máximo|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6082 >>Entrega la misión Domesticar la bestia
    .accept 6081 >>Acepta la misión Domesticar la bestia
    .target Thotar
step << Hunter
    #completewith ConscriptH
    +|cRXP_WARN_Pon|r |T132164:0|t[Domesticar bestia]|cRXP_WARN_,|r |T136095:0|t[Retirar mascota]|cRXP_WARN_, y|r |T132161:0|t[Llamar a mascota] |cRXP_WARN_en tu barra de acciones|r
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Compra|r |T133972:0|t[Cecina dura] |cRXP_BUY_al vendedor|r. |cRXP_BUY_Usarás esto para alimentar a tu mascota más tarde|r
    .vendor >> Vende la Basura
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestAvailable 834 --Winds in the Desert
step << !Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimtak|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Grimtak
step
    #label ConscriptH
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entrega la misión La llamada del fuego
    .accept 1524 >>Acepta la misión La llamada del fuego
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >> Regresa a Durotar
    .zoneskip Durotar
step << Shaman
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Sigue el camino subiendo la montaña hasta |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Ten cuidado de no caer de la montaña, el camino es muy estrecho. Podrías morir si caes|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entrega la misión La llamada del fuego
    .accept 1525 >>Acepta la misión La llamada del fuego
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >> Recorre el camino de regreso bajando la montaña
    >>|cRXP_WARN_Ten cuidado de no caer de la montaña, el camino es muy estrecho. Podrías morir si caes|r
step << Shaman
    #completewith next
    .zone The Barrens >> Viaja de regreso a Los Baldíos
    .zoneskip The Barrens
step << Shaman
    #loop
    .goto The Barrens,53.57,25.51,0
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51,50,0
    >>Mata a un |cRXP_ENEMY_Buscaqua Crines de Acero|r o a un |cRXP_ENEMY_Tejespina Crines de Acero|r. Despójalos para obtener un |cRXP_LOOT_Alquitrán|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #completewith FlyOrg
    .subzone 380 >>Viaja a El Cruce
step << Orc/Troll
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acepta la misión Entrega de carne a Orgrimmar
    .target Zargh
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >>Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
step << Orc/Troll
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entrega la misión Entrega de carne a Orgrimmar
    .accept 6384 >>Acepta la misión Un viaje a Orgrimmar
    .target Devrak
step
    #label FlyOrg
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 831 >>Entrega la misión Las órdenes del almirante
    .target Vol'Jin
step << Orc Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Viaja al Valle del Honor
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Entrega la misión Domesticar la bestia
    .target Ormak Grimshot
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Entrena los hechizos de tu mascota
    .target Xao'tsu
step << Hunter
    #completewith ZeptoUC1
    +|cRXP_WARN_Pon|r |T132162:0|t[Adiestramiento de bestias]|cRXP_WARN_(bajo la pestaña General),|r |T132163:0|t[Revivir mascota]|cRXP_WARN_, y|r |T132165:0|t[Alimentar mascota] |cRXP_WARN_en tus Barras de acciones|r
    >>|cRXP_WARN_Recuerda entrenar a tu mascota siempre que obtenga Puntos de entrenamiento mediante|r |T132162:0|t[Adiestramiento de bestias]
step << Orc/Troll
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entrega la misión Un viaje a Orgrimmar
    .accept 6385 >>Acepta la misión Doras, maestro de jinetes del viento
    .target Innkeeper Gryshka
step << Orc/Troll
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Entrega la misión Doras, maestro de jinetes del viento
    .accept 6386 >> Acepta la misión Regresar a El Cruce
    .target Doras
step << skip --Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Acepta la misión Mano Destrozada
    .target Therzok
    --can't do this if ghostlands rogue q is done instead
step << Orc Warlock
    #completewith SkullRockWarlock
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
step << Orc Warlock
    #label SkullRockWarlock
    .goto Durotar,54.95,9.61
    .subzone 817 >>Viaja a Roca del Cráneo
    .isOnQuest 1501
step << Orc Warlock
    #completewith VergaTablet
    >>Mata a |cRXP_ENEMY_Gazz'uz|r si ha aparecido. Despójalo para obtener |T134085:0|t[|cRXP_LOOT_Ojo de la Sombra ardiente|r]. Úsalo para iniciar la misión
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Acepta la misión Sombras Ardientes
    .unitscan Gazz'uz
step << Orc Warlock
    #completewith next
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener una |cRXP_LOOT_Insignia de Teniente|r
    >>|cRXP_WARN_Omite esto si tienes mala suerte con el botín|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Orc Warlock
    #label VergaTablet
    .goto Durotar,54.16,8.95,15,0
    .goto Durotar,51.62,9.76
    >>Despoja el |cRXP_PICK_Alijo del Filo Ardiente|r en el fondo de la cueva para obtener una |cRXP_LOOT_Tablilla de Vergua|r
    .complete 1501,1 --Tablet of Verga (1)
step << Orc Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Espíritu Ángel de la Resurrección|r
    .isQuestComplete 1501
step << Orc Warlock
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
    .zoneskip Orgrimmar
    .isQuestComplete 1501
step << Orc Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entrega la misión Enemigos ocultos
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5726
step << Orc Warlock
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5726
step << Orc Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul Ojosangre|r
    .turnin 1501 >>Entrega la misión Criatura Abisal
    .accept 1504 >>Acepta la misión El vínculo
    .target Gan'rul Bloodeye
step << Orc Warlock
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .accept 832 >>Acepta la misión Sombras Ardientes
    .turnin 832 >>Entrega la misión Sombras Ardientes
    .target Neeru Fireblade
    .skipgossip
    .itemcount 4903,1
step << Orc Warlock
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isQuestTurnedIn 5726
step << Orc Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Usa los|r |T134416:0|t[Glifos de Invocación] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6284
step << Orc Warlock
    .goto Orgrimmar,49.45,50.02
    >>Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1504,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Orc Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul Ojosangre|r
    .turnin 1504 >>Entrega la misión El vínculo
    .target Gan'rul Bloodeye
step << Orc Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entrega la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5726
step << Orc Warlock
    #optional
    .abandon 5726 >>Abandona la misión Enemigos ocultos
step << Orc Warlock
    #optional
    .destroy 14544 >>|cRXP_WARN_Destruye la|r |T134417:0|t[Insignia de Teniente] |cRXP_WARN_ya que ya no la necesitas|r
step
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>Sal de Orgrimmar
step << Shaman
    #completewith next
    .goto Durotar,53.18,29.15,50 >> Viaja hacia la Cueva Viento Seco
step << Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Mata a los |cRXP_ENEMY_Cultores|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Sube a la Torre del Zepelín
    .zone Tirisfal Glades >>Toma el zepelín hacia los Claros de Tirisfal
    .zoneskip Tirisfal Glades
step << Warrior
    #completewith WarDefStance
    .goto Tirisfal Glades,61.52,53.20,80 >> Viaja a Rémol
    .subzoneskip 159
step << Warrior
    #optional
    .abandon 1505 >>Abandona la misión Uzzek, el veterano
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandona la misión Camino de defensa
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .accept 1818 >> Acepta la misión Habla con Dillinger
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Entrega la misión Habla con Dillinger
    .accept 1819 >> Acepta la misión Ulag el Cuchilla
    .target Deathguard Dillinger
    .isOnQuest 1818
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Haz clic en el|r |cRXP_WARN_Disparador del Mausoleo|r |cRXP_WARN_del suelo. Esto invocará a|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mátalo|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Entrega la misión Ulag el Cuchilla
    .accept 1820 >> Acepta la misión Habla con Coleman
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step << Warrior
    #label WarDefStance
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r dentro de la posada
    .turnin 1820 >>Entrega la misión Habla con Coleman
    .isQuestTurnedIn 1819
step
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
step
    #completewith RFCPowerPickup
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
    .dungeon RFC
step
    #completewith next
    .goto Undercity,51.99,64.54,10,0
    .goto Undercity,46.25,73.22,10,0
    .goto Undercity,45.32,78.32,10,0
    .goto Undercity,46.26,83.91,10,0
    .goto Undercity,49.03,87.92,10,0
    .goto Undercity,52.94,89.60,10 >>Entra en el Barrio Real
    .dungeon RFC
step
    #label RFCPowerPickup
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varimathras|r
    .accept 5725 >>Acepta la misión Poder destructivo
    .target Varimathras
    .dungeon RFC
step
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Take the elevator back to the upper level and the go up the stairs toward the |cRXP_PICK_Orbe de traslado|r
    .dungeon RFC
step
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Sube las escaleras
    .dungeon !RFC
step
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Use the |cRXP_PICK_Orbe de traslado|r
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ithelis|r u |cRXP_FRIENDLY_Osselan|r
    .trainer >>Aprende tus hechizos de clase
	.target Ithelis
	.target Osselan

]])
