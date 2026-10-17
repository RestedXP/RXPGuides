if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 1-6 Durotar
#version 11
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía para Orcos y Trols. Deberías elegir la misma zona inicial donde empiezas|r
step << !Troll Mage
    #season 2
    #completewith next
    +En Season of Discovery, NO deberías empezar fuera de la zona de inicio de tu raza como Mago, ya que no podrás obtener tu primera runa aquí (|T133816:0|t[Grabar guantes - Lanza de hielo])
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
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
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
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Viaja hacia |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Viaja hacia |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Viaja hacia |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vende la Basura
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vende la Basura
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Acepta la misión Poder robado
    .train 348 >>Aprende |T135817:0|t[Inmolar]
    .target Nartok
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Aprende |T135817:0|t[Inmolar]
    .target Nartok
step << !Warrior !Rogue
    #softcore
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
    .goto Durotar,43.57,67.28,25,0
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
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
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
    #season 2
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Mata a |cRXP_ENEMY_Sarkoth|r. Despójalo para obtener la |cRXP_LOOT_Garra destrozada de Sarkoth|r << !Hunter !Warrior
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    #season 0
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
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    >>Mata |cRXP_ENEMY_Jabalíes jaspeados|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    .xp 3+325 >> Mata enemigos hasta alcanzar 325+/1400xp << Warlock
    .xp 3+925 >> Mata enemigos hasta alcanzar 925+/1400xp << Warrior/Shaman/Hunter
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    .xp 3+685 >> Mata enemigos hasta alcanzar 685+/1400xp
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 2 platas|r << Warrior
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata y 75 cobres|r << Warlock
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata y 10 cobres|r << Hunter
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
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
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Viaja hacia |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entrega la misión Tablilla encriptada << Troll Rogue
    .turnin 3088 >>Entrega la misión Papiro encriptado << Orc Rogue
    .train 53 >> Aprende |T132090:0|t[Puñalada]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
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
    #season 2
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entrega la misión Papiro corrupto
    .accept 77586 >>Acepta la misión Poder robado
    .target Nartok
step << Warlock
    #season 0
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
    #xprate <1.5
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
step << !Rogue
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Duokna|r
    >>|cFF0E8312Compra|r |T132794:0|t[Agua de manantial refrescante] |cFF0E8312a esta vendedora|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Compra|r |T132382:0|t[Flechas férreas] |cFF0E8312a esta vendedora|r << Hunter
    >>|cRXP_WARN_Guarda 10 cobres para aprender|r |T135932:0|t[Intelecto Arcano] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vende la Basura
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Vende la Basura
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Vende la Basura
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Entrega la misión La tablilla con runas grabadas << Troll
    .turnin 3089 >>Entrega la misión El papiro con runas grabadas << Orc
    .accept 77587 >>Acepta la misión Iconos de poder << Troll Shaman
    .accept 77585 >>Acepta la misión Iconos de poder << Orc Shaman
    .train 8042 >>Aprende |T136026:0|t[Choque de tierra]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acepta la misión La llamada de la tierra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entrega la misión La tablilla con runas grabadas << Troll
    .turnin 3089 >>Entrega la misión El papiro con runas grabadas << Orc
    .accept 77587 >>Acepta la misión Iconos de poder << Troll Shaman
    .accept 77585 >>Acepta la misión Iconos de poder << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entrega la misión La tablilla con runas grabadas << Troll
    .turnin 3089 >>Entrega la misión El papiro con runas grabadas << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entrega la misión Tablilla glífica << Troll
    .accept 77643 >>Acepta la misión Investigación sobre hechizos << Troll Mage
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entrega la misión Tablilla glífica << Troll
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Acepta la misión Familiares viles
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .accept 77590 >>Acepta la misión Terreno escabroso << Troll Hunter
    .accept 77584 >>Acepta la misión Cacería por la runa << Orc Hunter
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .target Jen'shan
    .money <0.01
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .accept 77590 >>Acepta la misión Terreno escabroso << Troll Hunter
    .accept 77584 >>Acepta la misión Cacería por la runa << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .accept 77590 >>Acepta la misión Terreno escabroso << Troll Hunter
    .accept 77584 >>Acepta la misión Cacería por la runa << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .target Jen'shan
    .money <0.01
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .target Jen'shan
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .accept 77588 >>Acepta la misión Una prueba de aptitud << Troll
    .accept 77582 >>Acepta la misión Una prueba de aptitud << Orc
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .accept 77588 >>Acepta la misión Una prueba de aptitud << Troll
    .accept 77582 >>Acepta la misión Una prueba de aptitud << Orc
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .accept 77588 >>Acepta la misión Una prueba de aptitud << Troll
    .accept 77582 >>Acepta la misión Una prueba de aptitud << Orc
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .accept 77642 >>Acepta la misión Sabiduría de los loa
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kzan|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Acepta la misión Peones vagos
    .target Foreman Thazz'ril
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>Viaja a la estatua |cRXP_FRIENDLY_Loa serpiente|r en el Poblado Sen'jin y escribe /kneel
    .use 205951 >>Habla con |cRXP_FRIENDLY_Loa serpiente|r cuando aparezca, luego usa |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Entrega la misión Sabiduría de los loa
    .target Ken'jai
step
    #completewith Sting
    >>Despoja las |cRXP_LOOT_Manzanas de Cactus|r cerca de los cactus
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
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
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Mata |cRXP_ENEMY_Familiares viles|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << Shaman
    #season 2
    #loop
	.goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Mata a los |cRXP_ENEMY_Escórpidos obreros|r. Despójalos para obtener |T134918:0|t[|cRXP_FRIENDLY_Ícono diádico|r]
    .collect 206381,1,77587,1 << Troll Shaman --Dyadic Icon (1)
    .collect 206381,1,77585,1 << Orc Shaman --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
step << Shaman
    #season 2
    .equip 18,206381 >> |cRXP_WARN_Equipa el|r |T134918:0|t|cRXP_LOOT_[Ícono diádico]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step << Shaman
    #season 2
    #loop
	.goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    .aura 408828 >>Continúa matando a los |cRXP_ENEMY_Escórpidos obreros|r y obtén 10 acumulaciones de |T237556:0|t[Proceso de inspiración] mientras te infligen daño de naturaleza
    .mob Scorpid Worker
    .train 410094,1
    --User must be level 3 to be able to use item!
step << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Mata |cRXP_ENEMY_Familiares viles|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << !Warlock
    #label Imps
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Mata |cRXP_ENEMY_Familiares viles|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Mata |cRXP_ENEMY_Escórpidos obreros|r. Despójalos para obtener |cRXP_LOOT_Colas de escórpidos obreros|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
    #loop
    .goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
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
    .turnin 789,2 >>Entrega la misión Aguijón de escórpido << Shaman
    .turnin 789 >>Entrega la misión Aguijón de escórpido << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Aprende |T136026:0|t[Choque de tierra]
    .turnin 77587 >>Entrega la misión Iconos de poder << Troll Shaman
    .turnin 77585 >>Entrega la misión Iconos de poder << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acepta la misión La llamada de la tierra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Aprende |T136026:0|t[Choque de tierra]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acepta la misión La llamada de la tierra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende tus hechizos de clase
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Entrega la misión Familiares viles
    .accept 794 >>Acepta la misión El medallón del Filo Ardiente
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .turnin 77590 >>Entrega la misión Terreno escabroso << Troll Hunter
    .turnin 77584 >>Entrega la misión Cacería por la runa << Orc Hunter
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Entrega la misión Terreno escabroso << Troll Hunter
    .turnin 77584 >>Entrega la misión Cacería por la runa << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
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
    #xprate <1.5
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
    #xprate <1.5
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    .xp 4+1720 >> Mata enemigos hasta alcanzar 1720+/2100xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
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
	.goto Durotar,42.70,52.99,25,0
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
    >>Mata a los |cRXP_ENEMY_Acechadores viles|r. Despójalos para obtener las |cRXP_LOOT_Pezuña de acechador vil|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #xprate <1.5
    #loop
	.goto Durotar,42.70,52.99,25,0
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
    .xp 5+1680 >> Mata enemigos hasta alcanzar 1680+/2800xp << !Shaman
    .xp 5+690 >> Mata enemigos hasta alcanzar 690+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,42.70,52.99,25,0
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
    .xp 5+1300 >> Mata enemigos hasta alcanzar 1300+/2800xp << !Shaman
    .xp 5+310 >> Mata enemigos hasta alcanzar 310+/2800xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Realiza un Logout Skip posicionando a tu personaje en el borde de la roca hasta que parezca que flota, luego desconecta y vuelve a entrar|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> HAZ CLIC AQUÍ para un ejemplo
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >> |cRXP_WARN_Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r cerca de la flecha|r
    .target Ángel de la Resurrección
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Puedes hablar con él desde afuera o en lo alto del búnker|r
    .accept 784 >>Acepta la misión Vencer a los traidores
    .target Gar'thok
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Viaja hacia la torre
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Sube por la torre hacia Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acepta la misión Asume tu responsabilidad
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith next
    .hs >>Usa tu Piedra de hogar para ir al Valle de los Retos
    .use 6948
step
    #xprate <1.5
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
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Entrega la misión El medallón del Filo Ardiente
    .accept 805 >>Acepta la misión Preséntate en el Poblado Sen'jin
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acepta la misión Al servicio de la espiritualidad
	.train 591 >>Aprende |T135924:0|t[Punición]
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Ken'jai
step << Mage
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Aprende |T135812:0|t[Bola de Fuego]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .turnin 77643 >> Entrega la misión Investigación sobre hechizos
    .target Mai'ah
    .isQuestComplete 77643
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Aprende |T135812:0|t[Bola de Fuego]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Aprende |T136052:0|t[Ola de sanación]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Entrega la misión La llamada de la tierra
    .accept 1517 >>Acepta la misión La llamada de la tierra
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
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
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .target Rwag
    .xp <6,1
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
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .train 1454 >> Aprende |T136126:0|t[Transfusión de vida]
    .turnin 77586 >>Entrega la misión Poder robado
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .turnin 77586 >>Entrega la misión Poder robado
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .train 1454 >> Aprende |T136126:0|t[Transfusión de vida]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .target Nartok
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
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-10 Durotar
#version 11
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acepta la misión Un cargamento de peón
    .target Ukor
step
    #completewith next
    .subzone 367 >>Viaja al Poblado Sen'jin
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r. Patrulla un poco
    .accept 786 >>Acepta la misión Frustrar los planes kolkar
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r y |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acepta la misión Presa práctica
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Acepta la misión Un espíritu responsable
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .turnin 805 >>Entrega la misión Preséntate en el Poblado Sen'jin
    .accept 808 >>Acepta la misión La calavera de Minshina
    .accept 826 >>Acepta la misión Zalazane
    .accept 823 >>Acepta la misión Informa a Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Entra en la gran cabaña
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compra |r |T132414:0|t[Hacha arrojadiza pesada] |cRXP_BUY_a esta vendedora|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
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
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
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
step << Warrior/Rogue
    #softcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Usa|r |T136025:0|t[Buscar minerales] |cRXP_WARN_y extrae cualquier filón de cobre que encuentres para obtener|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r|cRXP_WARN_. Crea|r |T135248:0|t[Piedras de afilar ] |cRXP_WARN_con ellas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Corre por la playa. Mata a los |cRXP_ENEMY_Reptadores|r y a los |cRXP_ENEMY_Makruras|r. Despójalos para obtener |cRXP_LOOT_Mucosidades|r y |cRXP_LOOT_Ojos|r. No tienes que terminar este paso aquí.
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #xprate >1.49
    .goto Durotar,54.17,82.60,75 >> Llega al final de la playa
step
    #xprate <1.5
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
    #xprate <1.5
    .goto Durotar,52.20,83.00,75 >> Llega al final de la playa
    .isOnQuest 818
step
    #xprate <1.5
    #completewith Bonfire
    >>Mata a los |cRXP_ENEMY_Braceros Kolkar|r y a las |cRXP_ENEMY_Avanzadas Kolkar|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de retal|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>Entra en la base Kolkar
    .isOnQuest 786
step << Priest
    #xprate <1.5
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Empieza a reunir 3 montones de|r |T132889:0|t[Paño de lino] |cRXP_WARN_mientras haces misiones por Durotar. Los usarás para hacer tu varita más adelante|r
    >>|cRXP_WARN_Omite este paso si ya has comprado una varita o puedes obtener una barata de la Casa de Subastas.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #xprate <1.5
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Empieza a reunir 3 montones de|r |T132889:0|t[Paño de lino] |cRXP_WARN_mientras haces misiones por Durotar. Los usarás para hacer tu varita más adelante|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #xprate <1.5
    #completewith Bonfire
    +|cRXP_WARN_Ten cuidado si|r |cRXP_ENEMY_Kolkanis|r |cRXP_WARN_ha aparecido, es un raro de nivel 9. Es posible que tengas que usar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes|r
    .unitscan Warlord Kolkanis
step << Warrior
    #xprate <1.5
    #season 2
    #completewith Bonfire
    >>Mata |cRXP_ENEMY_Braceros Kolkar|r y |cRXP_ENEMY_Avanzadas Kolkar|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de centauro cortada|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    .goto Durotar,49.81,81.29
    >>Quema el |cRXP_PICK_Plan de ataque|r dentro de la tienda en el suelo
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    #xprate <1.5
    >>Quema el |cRXP_PICK_Plan de ataque|r en el suelo
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #xprate <1.5
    #label Bonfire
    >>Quema el |cRXP_PICK_Plan de ataque|r en el suelo
    .goto Durotar,46.23,78.94
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step << Warrior
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    >>Mata |cRXP_ENEMY_Braceros Kolkar|r y |cRXP_ENEMY_Avanzadas Kolkar|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de centauro cortada|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    #softcore
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >> Muere en la Fogata y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Abandona la base Kolkar
    .isQuestComplete 786
step
    #hardcore
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r. Patrulla un poco
    .turnin 786,1 >>Entrega la misión Frustrar los planes Kolkar << Shaman
    .turnin 786 >>Entrega la misión Frustrar los planes Kolkar << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (5 platas 04 cobres). Volverás más tarde si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135641:0|t[Estilete] (4 platas 01 cobre). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135641:0|t[Estilete] |cRXP_BUY_a este vendedor|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T132401:0|t[Hacha grande] (4 platas 84 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T132401:0|t[Hacha grande] |cRXP_BUY_a este vendedor|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135421:0|t[Tomahawk] (5 platas 40 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135421:0|t[Tomahawk] |cRXP_BUY_a este vendedor|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135499:0|t[Arco corvo de madera de cuerno] (2 platas 83 cobres). Volverás más adelante si aún no tienes suficiente
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo de madera de cuerno] |cRXP_BUY_a este vendedor|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #xprate <1.5
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vornal|r
    .turnin 818 >>Entrega la misión Un espíritu responsable
    .target Master Vornal
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    #xprate <1.5
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r
    .vendor >> Vende la basura
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #softcore
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r. Patrulla un poco
    .turnin 786,1 >>Entrega la misión Frustrar los planes Kolkar << Shaman
    .turnin 786 >>Entrega la misión Frustrar los planes Kolkar << !Shaman
    .target Lar Prowltusk
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ba'so|r para recibir |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    >>|cRXP_WARN_¡Está en sigilo!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Viaja a Cerrotajo
step
    #hardcore
    #label Betrayers
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r y |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entrega la misión Informa a Orgnil
    .accept 806 >>Acepta la misión Oscuras tormentas
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
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Viaja hacia la torre
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Sube por la torre hacia Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acepta la misión Asume tu responsabilidad
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #hardcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Usa|r |T136025:0|t[Buscar minerales] |cRXP_WARN_y extrae cualquier filón de cobre que encuentres para obtener|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r|cRXP_WARN_. Crea|r |T135248:0|t[Piedras de afilar ] |cRXP_WARN_con ellas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #softcore
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .subzone 372 >> Viaja al Fuerte de Tiragarde
    >>|cRXP_WARN_Mata enemigos por el camino|r
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >> Viaja al Fuerte de Tiragarde
    >>|cRXP_WARN_Mata enemigos por el camino|r
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Ten cuidado si el|r |cRXP_ENEMY_Comandante de vigilancia Zalafil|r |cRXP_WARN_ha aparecido, es un raro de nivel 9. Es posible que tengas que usar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si tienes una|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Ve al segundo piso del castillo
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Mata a los |cRXP_ENEMY_Navegantes|r y a los |cRXP_ENEMY_Marinos|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
step
    #completewith AgedEnvelope
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de retal|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Mata al |cRXP_ENEMY_Teniente Benedict|r. Despójalo para obtener su |cRXP_LOOT_Llave|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
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
step << Priest
    #season 2
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mata a los |cRXP_ENEMY_Navegantes|r y a los |cRXP_ENEMY_Marinos|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2520 >> Mata enemigos hasta alcanzar 2520+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2200 >> Mata enemigos hasta alcanzar 2200+/4500 exp
    .isOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1530 >> Mata enemigos hasta alcanzar 1530+/4500xp
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1050 >> Mata enemigos hasta alcanzar 1050+/4500xp
    .isOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2070 >> Mata enemigos hasta alcanzar 2070+/4500xp
    .isNotOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1750 >> Mata enemigos hasta alcanzar 1750+/4500 exp
    .isOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+855 >> Mata enemigos hasta alcanzar 855+/4500xp
    .isNotOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+375 >> Mata enemigos hasta alcanzar 375+/4500xp
    .isOnQuest 823
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >> Muere en la torre norte fuera del Fuerte de Tiragarde y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #hardcore
    #completewith next
    .subzone 362 >>Viaja a Cerrotajo
step
    #softcore
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r y |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entrega la misión Informa a Orgnil
    .accept 806 >>Acepta la misión Oscuras tormentas
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Entrega la misión Vencer a los traidores
    .turnin 830 >>Entrega la misión Las órdenes del almirante
    .accept 825 >>Acepta la misión Los restos del naufragio...
    .accept 831 >>Acepta la misión Las órdenes del almirante
    .accept 837 >>Acepta la misión Invasión
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Acepta la misión Romper huevos
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #hardcore
    #label RazorTurnins1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Entrega la misión Vencer a los traidores
    .turnin 830 >>Entrega la misión Las órdenes del almirante
    .accept 825 >>Acepta la misión Los restos del naufragio...
    .accept 831 >>Acepta la misión Las órdenes del almirante
    .target +Gar'Thok
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
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
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
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
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
    .itemcount 2512,<800 << Hunter
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid
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
step << !Mage !Hunter !Druid
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
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
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
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
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
    .goto Durotar,61.96,55.46,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34,20,0
    >>Despoja las |cRXP_PICK_Cajas de herramientas gnoma|r dentro y alrededor de los barcos
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >> Nada a la Isla
step
    #completewith MinshinasSkull
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    -->>This does not need to be finished now
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
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
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
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
step << Priest
    #season 2
    #completewith Fur
    >>Mata a los |cRXP_ENEMY_Trols vudú|r. Despójalos para obtener |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step << Mage
    #season 2
    #completewith ZalazaneKill
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
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
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos de Escarcha]
    .use 203753
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
    .goto Durotar,67.23,88.76,0
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
step << Priest
    #season 2
    #loop
    .goto Durotar,67.23,88.76,0
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
    >>Mata a los |cRXP_ENEMY_Trols vudú|r. Despójalos para obtener |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
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
    #loop
    .goto Durotar,59.79,83.44,0
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
    #softcore
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r, o corre de vuelta
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Viaja al Poblado Sen'jin
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
    .turnin 826,2 >>Entrega la misión Zalazane << Shaman
    .turnin 826 >>Entrega la misión Zalazane << !Shaman
    .target +Master Gadrin
    .goto Durotar,55.95,74.73
    .turnin 818 >>Entrega la misión Un espíritu responsable
    .target +Master Vornal
    .goto Durotar,55.95,74.39
    .turnin 817 >>Entrega la misión Presa práctica
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
    .train 402852,1
step << Priest
    #season 2
    #completewith QuilboarsScouts
    .aura 418459 >>|cRXP_WARN_Ahora tienes que encontrar un Sacerdote no-muerto con un buff de Loa. Tienes que arrodillarte ante él y él tiene que usar /pray contigo.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una Ciudadela Profanada|r] |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
    .itemcount 205947,1
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Asigna a tus barras de acción|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_y|r |T134712:0|t[Pegamento muy pegajoso]|cRXP_WARN_. Guárdalos para situaciones de emergencia|r
step << Warrior
    #season 2
    #loop
    .goto Durotar,49.22,48.96,0
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
    >>Mata a los |cRXP_ENEMY_Jabaespines Crines de Acero|r y a los |cRXP_ENEMY_Exploradores Crines de Acero|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de jabaespín cortada|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step
    #label QuilboarsScouts
    #loop
    .goto Durotar,49.22,48.96,0
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
    #xprate <1.5
    #loop
    .goto Durotar,44.45,39.74,0
    .goto Durotar,44.45,39.74,50,0
    .goto Durotar,44.49,37.47,50,0
    .goto Durotar,43.30,37.32,50,0
    .goto Durotar,41.70,37.09,50,0
    .goto Durotar,41.64,38.27,50,0
    .goto Durotar,41.94,40.46,50,0
    .goto Durotar,43.30,40.40,50,0
    >>Mata |cRXP_ENEMY_Polvoroso Crines de Acero|r y |cRXP_ENEMY_Guardias de batalla Crines de Acero|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Hunter
    #optional
    #xprate <1.5
    #loop
	.goto Durotar,47.52,48.67,0
	.goto Durotar,47.52,48.67,50,0
	.goto Durotar,46.12,45.47,50,0
	.goto Durotar,43.65,43.91,50,0
	.goto Durotar,41.68,44.69,50,0
	.goto Durotar,41.00,46.13,50,0
	.goto Durotar,42.47,48.50,50,0
	.goto Durotar,44.21,49.68,50,0
	.goto Durotar,47.17,49.44,50,0
    .xp 9+4470 >> Mata enemigos hasta alcanzar 4470+/6500 xp
step
    #optional
    #xprate >1.49
    #loop
    .goto Durotar,49.14,48.89,0
    .goto Durotar,49.14,48.89,30,0
    .goto Durotar,47.43,49.18,30,0
    .xp 9+4400 >> Mata enemigos hasta alcanzar 4400+/6500xp
step
    #xprate >1.49 << !Hunter
    #softcore
    #completewith RazorTurnins015
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r, o corre a Cerrotajo
step
    #xprate >1.49 << !Hunter
    #hardcore
    #completewith RazorTurnins015
    .goto Durotar,51.95,43.50,100 >>Corre a Cerrotajo
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .accept 2983 >>Acepta la misión La llamada del fuego
    .target Swart
    .isNotOnQuest 1522
    .xp <10,1
step << Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r y |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entrega la misión Romper huevos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Entrega la misión Los restos del naufragio...
    .turnin 837 >>Entrega la misión Invasión
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step
    #xprate >1.49
    #label RazorTurnins015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r y |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entrega la misión Romper huevos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Entrega la misión Los restos del naufragio...
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Aprende tus hechizos de clase
    .accept 2983 >>Acepta la misión La llamada del fuego
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Acepta la misión Uzzek, el veterano
    .trainer >>Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Aprende tus hechizos de clase
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acepta la misión Maleficio de Debilidad << Troll
    .accept 5660 >> Acepta la misión Toque de debilidad << Undead
    .trainer >> Aprende tus hechizos de clase
    .target Tai'jin
step << Rogue
    #xprate >1.49
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Aprende tus hechizos de clase
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6062 >>Acepta la misión Domesticar la bestia
    .trainer >> Aprende tus hechizos de clase
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a este vendedor|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
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
    .use 15917 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí jaspeado temible|r |cRXP_WARN_a rango máximo|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6062 >>Entrega la misión Domesticar la bestia
    .accept 6083 >>Acepta la misión Domesticar la bestia
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6083 >>Acepta la misión Domesticar la bestia
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Retira tu |cRXP_ENEMY_Jabalí jaspeado temible|r haciendo clic derecho en su marco de unidad y haciendo clic en Retirar, de lo contrario no podrás domesticar un|r |cRXP_ENEMY_Reptador de espuma|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    >>|cRXP_WARN_No mates a los|r |cRXP_ENEMY_Escórpidos acorazados|r |cRXP_WARN_que ves. Los necesitarás más tarde|r
    .use 15919 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Reptador de espuma|r |cRXP_WARN_a rango máximo|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6083 >>Entrega la misión Domesticar la bestia
    .accept 6082 >>Acepta la misión Domesticar la bestia
    .target Thotar
    .isQuestTurnedIn 6062
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
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6082 >>Entrega la misión Domesticar la bestia
    .accept 6081 >>Acepta la misión Domesticar la bestia
    .target Thotar
    .isQuestTurnedIn 6062
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
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step
    #label ConscriptH
    #xprate >1.49 << !Hunter
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step
    #xprate >1.49
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Mata |cRXP_ENEMY_Polvoroso Crines de Acero|r y |cRXP_ENEMY_Guardias de batalla Crines de Acero|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Entrega la misión Uzzek, el veterano
    .accept 1498 >>Acepta la misión Camino de defensa
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entrega la misión La llamada del fuego
    .accept 1524 >>Acepta la misión La llamada del fuego
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    .goto Durotar,39.16,58.56,10 >> Sigue el camino montaña arriba hacia |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Ten cuidado de no caer de la montaña, el camino es muy estrecho. Podrías morir si caes|r
step << Shaman
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entrega la misión La llamada del fuego
    .accept 1525 >>Acepta la misión La llamada del fuego
    .target Telf Joolam
step << Hunter/Shaman/Warrior
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Acepta la misión Perdido, pero no olvidado
    .target Misha Tor'kren
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Entra en Monte del Trueno y mata a los |cRXP_ENEMY_Lomorrayos|r. Despójalos para obtener sus |cRXP_ENEMY_Escamas|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Salta a Monte del Trueno
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,42.13,26.67
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r y despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ten cuidado. Mata al|r |cRXP_ENEMY_Fanático Filo Ardiente|r que patrulla |cRXP_WARN_y a los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_en la parte trasera antes de atraerlo|r
    >>|cRXP_WARN_Atráelo hacia atrás, hacia los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_que acabas de matar. De lo contrario, podrías traer enemigos Filo Ardiente adicionales|r
    >>|cRXP_WARN_No tengas miedo de morir por la |cRXP_LOOT_Garra|r ya que resucitarás en el |cRXP_FRIENDLY_Ángel de la Resurrección|r después|r
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Rogue
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T136026:0|t[Choque de tierra] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Shaman
    >>|cRXP_WARN_Puedes lanzar|r |T136071:0|t[Polimorfia] |cRXP_WARN_sobre|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_y matar al|r |cRXP_ENEMY_Diablillo|r |cRXP_WARN_primero|r << Mage
    >>|cRXP_WARN_Mata al diablillo primero|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << !Warlock
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor], |T133728:0|t[Piedra de salud menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,42.13,26.67
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r y despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ten cuidado. Mata al|r |cRXP_ENEMY_Fanático Filo Ardiente|r que patrulla |cRXP_WARN_y a los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_en la parte trasera antes de atraerlo|r
    >>|cRXP_WARN_Atráelo hacia atrás, hacia los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_que acabas de matar. De lo contrario, podrías traer enemigos Filo Ardiente adicionales|r
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Rogue
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T136026:0|t[Choque de tierra] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Shaman
    >>|cRXP_WARN_Puedes lanzar|r |T136071:0|t[Polimorfia] |cRXP_WARN_sobre|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_y matar al|r |cRXP_ENEMY_Diablillo|r |cRXP_WARN_primero|r << Mage
    >>|cRXP_WARN_Mata al diablillo primero|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << !Warlock
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor], |T133728:0|t[Piedra de salud menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 806
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Ábrete paso luchando para salir de Monte del Trueno
    .isQuestComplete 806
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Viaja a Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acepta la misión Las arpías Viento Seco
    .target Rezlak
step << Warrior
    #season 2
    #completewith next
    >>Mata |cRXP_ENEMY_Arpías Viento Seco|r. Despójalas para obtener una |cRXP_LOOT_Cabeza de arpía cortada|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Despoja los |cRXP_PICK_Sacos de provisiones robado|r del suelo
    .complete 834,1 --Sack of Supplies (5)
step << Warrior
    #season 2
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Mata |cRXP_ENEMY_Arpías Viento Seco|r. Despójalas para obtener una |cRXP_LOOT_Cabeza de arpía cortada|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entrega la misión Las arpías Viento Seco
    .accept 835 >>Acepta la misión Asegurar las rutas
    .target Rezlak
step
    #xprate >1.49
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entrega la misión Las arpías Viento Seco
    .target Rezlak
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Viaja hacia la Cueva Viento Seco
    >>|cRXP_WARN_Viaja al este alrededor de las colinas para alcanzar la cueva. Sigue la flecha|r
step << Shaman
    #xprate >1.49
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mata |cRXP_ENEMY_Cultores Filo Ardiente|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step
    #xprate <1.5 << Shaman/Warrior
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>Salta a Monte del Trueno << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Retira tu|r |T136218:0|t[Diablillo] |cRXP_WARN_haciendo clic derecho en su marco de unidad y seleccionando retirar|r << Warlock
    .cast 2641 >> |cRXP_WARN_Usa|r |T136095:0|t[Retirar mascota] |cRXP_WARN_y después salta dentro de Monte del Trueno|r << Hunter
step
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,42.13,26.67
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r y despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ten cuidado. Mata al|r |cRXP_ENEMY_Fanático Filo Ardiente|r que patrulla |cRXP_WARN_y a los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_en la parte trasera antes de atraerlo|r
    >>|cRXP_WARN_Atráelo hacia atrás, hacia los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_que acabas de matar. De lo contrario, podrías traer enemigos Filo Ardiente adicionales|r
    >>|cRXP_WARN_No tengas miedo de morir por la |cRXP_LOOT_Garra|r ya que resucitarás en el |cRXP_FRIENDLY_Ángel de la Resurrección|r después|r
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Rogue
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T136026:0|t[Choque de tierra] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Shaman
    >>|cRXP_WARN_Puedes lanzar|r |T136071:0|t[Polimorfia] |cRXP_WARN_sobre|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_y matar al|r |cRXP_ENEMY_Diablillo|r |cRXP_WARN_primero|r << Mage
    >>|cRXP_WARN_Mata al diablillo primero|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << !Warlock
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor], |T133728:0|t[Piedra de salud menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,42.13,26.67
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r y despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ten cuidado. Mata al|r |cRXP_ENEMY_Fanático Filo Ardiente|r que patrulla |cRXP_WARN_y a los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_en la parte trasera antes de atraerlo|r
    >>|cRXP_WARN_Atráelo hacia atrás, hacia los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_que acabas de matar. De lo contrario, podrías traer enemigos Filo Ardiente adicionales|r
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Rogue
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T136026:0|t[Choque de tierra] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Shaman
    >>|cRXP_WARN_Puedes lanzar|r |T136071:0|t[Polimorfia] |cRXP_WARN_sobre|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_y matar al|r |cRXP_ENEMY_Diablillo|r |cRXP_WARN_primero|r << Mage
    >>|cRXP_WARN_Mata al diablillo primero|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << !Warlock
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor], |T133728:0|t[Piedra de salud menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Ábrete paso luchando para salir de Monte del Trueno
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Ábrete paso luchando para salir de Monte del Trueno
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Esto iniciará un temporizador de 45 minutos para la misión. NO te vayas AFK ni desconectes durante los próximos 5 minutos|r
    .accept 812 >>Acepta la misión Se necesita un remedio
    .target Rhinag
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    .xp 9+2930 >>Mata criaturas hasta alcanzar 2930+/6500 para subir al nivel 9
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    +Mata monstruos hasta que tu recarga de piedra de hogar sea menor de 5 minutos
    .cooldown item,6948,<0
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    #label EnterOrg
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
    .zoneskip Orgrimmar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entrega la misión Las órdenes del almirante
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
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
    #completewith FindAntidote
    +|cRXP_WARN_Pon|r |T132162:0|t[Adiestramiento de bestias]|cRXP_WARN_(bajo la pestaña General),|r |T132163:0|t[Revivir mascota]|cRXP_WARN_, y|r |T132165:0|t[Alimentar mascota] |cRXP_WARN_en tus Barras de acciones|r
    >>|cRXP_WARN_Recuerda entrenar a tu mascota siempre que obtenga Puntos de entrenamiento mediante|r |T132162:0|t[Adiestramiento de bestias]
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo laminado] |cRXP_BUY_a este vendedor|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado] |cRXP_WARN_cuando alcances el nivel 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #label FindAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'ghan|r en el Circo de las Sombras
    .accept 813 >>Acepta la misión En busca del antídoto
    .target Kor'ghan
    .isOnQuest 812
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #completewith RazorTurnins2
    #label NeedACure
    >>|cRXP_WARN_Abandona la misión Se necesita un remedio. Esto eliminará el temporizador de la misión pero seguirás pudiendo hacerla|r
    .abandon 812 >>Abandona la misión Se necesita un remedio
    .isOnQuest 812
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamja|r y |cRXP_FRIENDLY_Gru'ark|r
    +Mata a |cRXP_ENEMY_Gru'ark|r cuando se vuelva hostil
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamja|r
    >>Recibe de ella la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .use 204716
    .itemcount 204716,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #completewith RazorTurnins2
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #requires NeedACure
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    .vendor >> Vende la Basura
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vahi|r
    >>Entrega las |cRXP_LOOT_Cabezas|r que has recogido a cambio de |T134455:0|t[Fragmentos de runas]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #season 2
    .use 204688 >>Usa los |T134455:0|t[Fragmentos de runas] para crear |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1
step << Hunter
    #xprate <1.5
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Entrega la misión Oscuras tormentas
    .accept 828 >>Acepta la misión Margoz
    .target Orgnil Soulscar
step << !Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r y |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entrega la misión Romper huevos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 806 >>Entrega la misión Oscuras tormentas
    .accept 828 >>Acepta la misión Margoz
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 825 >>Entrega la misión Los restos del naufragio...
    .turnin 837 >>Entrega la misión Invasión
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Hunter/Shaman/Warrior
    #xprate >1.49
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r y |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Entrega la misión Oscuras tormentas
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 837 >>Entrega la misión Invasión
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Aprende tus hechizos de clase
    .accept 1505 >>Acepta la misión Uzzek, el veterano
    .target Tarshaw Jaggedscar
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .accept 2983 >>Acepta la misión La llamada del fuego
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .target Swart
step << Warlock
    #xprate <1.5
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
step << Warlock
    #xprate <1.5
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate <1.5
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acepta la misión Maleficio de Debilidad << Troll
    .accept 5660 >> Acepta la misión Toque de debilidad << Undead
    .trainer >> Aprende tus hechizos de clase
    .target Tai'jin
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .train 13549 >> Aprende tus hechizos de clase
    .target Thotar
step << Rogue
    #xprate <1.5
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Aprende tus hechizos de clase
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 10-12 Durotar
#version 11
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal << Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-17 Los Baldíos << Troll !Rogue !Mage !Priest/Orc !Rogue !Warlock


step << Warrior/Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step << Warrior/Shaman
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step << Warrior/Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << Warrior
    #xprate <1.5
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Entrega la misión Uzzek, el veterano
    .accept 1498 >>Acepta la misión Camino de defensa
    .target Uzzek
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entrega la misión Camino de defensa
    .accept 1502 >>Acepta la misión Thun'grim Vistafuego
    .target Uzzek
step << Shaman
    #xprate <1.5
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entrega la misión La llamada del fuego
    .accept 1524 >>Acepta la misión La llamada del fuego
    .target Kranal Fiss
step << Warrior/Shaman
    #hardcore
    #completewith PoolsPickup
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >> Viaja a El Cruce
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Warrior/Shaman
    #label PoolsPickup
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acepta la misión Las Charcas del Olvido
    .target Tonga Runetotem
step << Warrior/Shaman
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
    .target Sergra Darkthorn
step << Warrior/Shaman
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acepta la misión Entrega de carne a Orgrimmar
    .target Zargh
step << Warrior/Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acepta la misión Raptores ladrones
    .target Gazrog
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >>Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step << Warrior/Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acepta la misión Interrupción de los ataques
    .accept 5041 >>Acepta la misión Suministros para El Cruce
    .target Thork
step << Warrior/Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_¡NO vueles a Orgrimmar!|r
    .fp The Crossroads >> Consigue la ruta de vuelo de El Cruce
    .turnin 6365 >>Entrega la misión Entrega de carne a Orgrimmar
    .accept 6384 >>Acepta la misión Un viaje a Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Warrior/Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Acepta la misión Esporas de hongos
    .accept 1492 >>Acepta la misión Maestro de muelles Vertipeluca
    .target Apothecary Helbrim
step << Warrior/Shaman
    #completewith next
    >>Recoge |cRXP_LOOT_Champiñones cargados|r alrededor de Las Charcas del Olvido
    >>|cRXP_WARN_Mantén la máxima distancia con los|cRXP_ENEMY_ Kolkar|r |cRXP_WARN_mientras recoges las setas. Son de nivel 12-14|r
    >>|cRXP_WARN_La siguiente misión tiene el poderoso |cRXP_FRIENDLY_Cucharón de caldera|r |cRXP_WARN_como recompensa. Puedes omitir esta misión por ahora si no tienes intención de usarlo|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    .goto The Barrens,45.06,22.54
    >>Sumérgete bajo el agua hacia la |cRXP_PICK_Fisura burbujeante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << Warrior/Shaman
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>Recoge |cRXP_LOOT_Champiñones cargados|r alrededor de Las Charcas del Olvido
    >>|cRXP_WARN_Mantente a distancia máxima de los |cRXP_ENEMY_Kolkar|r |cRXP_WARN_de la zona. Son de nivel 12-14|r
    >>|cRXP_WARN_La siguiente misión tiene el poderoso |cRXP_FRIENDLY_Cucharón de caldera|r |cRXP_WARN_como recompensa. Puedes omitir esta misión por ahora si no tienes intención de usarlo|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    #hardcore
    #completewith FungalSporesComplete
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >> Viaja a El Cruce
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Warrior/Shaman
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Espera a que termine el roleplay|r
    >>|cRXP_WARN_Esta es una misión cronometrada de 45 minutos|r
    .turnin 848 >> Entrega la misión Esporas de hongos
    .timer 7,Esporas de hongos RP
    .accept 853 >> Acepta la misión Boticaria Zamah
    .target Apothecary Helbrim
step << Warrior/Shaman
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compra una o más|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Shaman
    #sticky
    #completewith ZamahTurnin2
    +|cRXP_WARN_Estás en una misión con tiempo, no te quedes AFK. Se entregará unos 30 minutos después de haberla aceptado|r
    .isOnQuest 853
step << Warrior/Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Entrega la misión Las Charcas del Olvido
    .target Tonga Runetotem
step << Warrior/Shaman
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>Viaja al sur por el camino hacia Campamento Taurajo
step << Warrior/Shaman
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Consigue la ruta de vuelo del Campamento Taurajo
    .target Omusa Thunderhorn
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Patrulla a lo largo del camino oriental|r
    .accept 749 >>Acepta la misión La Caravana Devastada
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.715,59.325
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harken|r
    .accept 761 >>Acepta la misión La caza de los aguilones
    .target Harken Windtotem
step << Warrior/Shaman
    .goto Mulgore,47.513,60.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baine|r
    .accept 767 >>Acepta la misión Rito de la Visión
    .accept 746 >>Acepta la misión Una excavación de los enanos
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.3,62.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Acepta la misión Las Viento Furioso son un peligro
    .target Ruul Eagletalon
step << Warrior/Shaman
    .goto Mulgore,47.8,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarlman|r
    .turnin 767 >>Entrega la misión Rito de la Visión
    .accept 771 >>Acepta la misión Rito de la Visión
    .target Zarlman Two-Moons
step << Warrior/Shaman
    .goto Mulgore,47.0,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Acepta la misión Mazzranache
    .target Maur Raincaller
step << Warrior/Shaman
    #xprate <1.5
    #completewith EnterTB
    >>Mata |cRXP_ENEMY_Lobos|r, |cRXP_ENEMY_Pumas|r, |cRXP_ENEMY_Zancudos de llanura|r y |cRXP_ENEMY_Aguilones|r mientras completas misiones en la zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith EnterTB
    >>Mata |cRXP_ENEMY_Lobos|r, |cRXP_ENEMY_Pumas|r, |cRXP_ENEMY_Zancudos de llanura|r y |cRXP_ENEMY_Aguilones|r mientras completas misiones en la zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith EnterTB
    >>Mantente atento a |cRXP_ENEMY_Aullido Fantasma|r. Despójalo para obtener su |T134358:0|t[|cRXP_LOOT_Capa con marca de demonio|r]. Úsala para iniciar la misión
    >>|cRXP_WARN_No aceptes la misión todavía|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .use 4854
    .unitscan Ghost Howl
step << Warrior/Shaman
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Recoge las |cRXP_PICK_Bellotas ámbar|r. Se pueden encontrar bajo los árboles en el suelo
    .complete 771,2 --Ambercorn (2)
step << Warrior/Shaman
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Recoge las |cRXP_PICK_Piedras de pozo|r alrededor del Pozo
    .complete 771,1 --Well Stone (2)
step << Warrior/Shaman
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_No sigas al lobo que aparece|r
    .turnin 771 >>Entrega la misión Rito de la Visión
    .accept 772 >>Acepta la misión Rito de la Visión
    .target Zarlman Two-Moons
step << Warrior/Shaman
    #label EnterTB
    #completewith ZamahTurnin2
    .goto Thunder Bluff,32.0,66.9,60,0
    .zone Thunder Bluff >> Viaja a Cima del Trueno
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Aprende el uso de Bastones
    .train 199 >>Aprende el uso de Mazas de dos manos
    .target Ansekhwa
    .money <0.020
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Aprende el uso de Bastones
    .target Ansekhwa
    .money <0.010
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo]
    .accept 76156 >>Acepta la misión Acechanzas con la Madre Tierra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >> Consigue la ruta de vuelo de Cima del Trueno << !Tauren
    .target Tal
step << Warrior/Shaman
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >> Viaja al Alto de los Espíritus y entra en las pozas de las visiones
step << Warrior/Shaman
    #label ZamahTurnin2
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Entrega la misión Boticaria Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step << Warrior/Shaman
    #optional
    #completewith RiteofWisdomTurnin
    +|cRXP_WARN_Equipa el|r |T135145:0|t[Cucharón de caldera]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior/Shaman
    #completewith RiteofWisdomTurnin
    .goto Thunder Bluff,29.04,37.68,55,0
    .goto Mulgore,33.48,36.68,40 >> Sal corriendo de la cueva y, después, abandona Cima del Trueno saltando hacia abajo en algún punto situado debajo del puente
    .zoneskip Mulgore
step << Warrior/Shaman
    #xprate <1.5
    #completewith SacredBurialTurnIn
    >>Mata |cRXP_ENEMY_Lobos|r, |cRXP_ENEMY_Pumas|r, |cRXP_ENEMY_Zancudos de llanura|r y |cRXP_ENEMY_Aguilones|r mientras completas misiones en la zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith SacredBurialTurnIn
    >>Mata |cRXP_ENEMY_Lobos|r, |cRXP_ENEMY_Pumas|r, |cRXP_ENEMY_Zancudos de llanura|r y |cRXP_ENEMY_Aguilones|r mientras completas misiones en la zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith SacredBurialTurnIn
    >>Mantén un ojo en |cRXP_ENEMY_Aullido Fantasma|r. Despójalo para obtener su |T134358:0|t[|cRXP_LOOT_Capa con marca de demonio|r]
    >>|cRXP_WARN_No aceptes la misión todavía|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .unitscan Ghost Howl
step << Warrior/Shaman
    #label RiteofWisdomTurnin
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vidente Corredor Sabio|r
    >>|cRXP_WARN_Está ubicado en la cueva al suroeste de Cima del Trueno|r
    .turnin 772 >>Entrega la misión Rito de la Visión
    .accept 773 >>Acepta la misión Rito de la Sabiduría
    .target Seer Wiserunner
step << Warrior/Shaman
    #completewith next
    .destroy 4823 >>Destruye |T134712:0|t[Agua de los Videntes] ya que no la necesitarás
step << Warrior/Shaman
    #loop
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>Mata |cRXP_ENEMY_Ventobrujas Viento Furioso|r y |cRXP_ENEMY_Arpías Viento Furioso|r. Despójalas para obtener sus |cRXP_LOOT_Garfas|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step << Shaman
    #season 2
    #completewith next
    >>Mata |cRXP_ENEMY_Cavadores de Bael'dun|r y |cRXP_ENEMY_Tasadores de Bael'dun|r. Despójalos para obtener la |cRXP_LOOT_Llave del depósito de artefactos|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    .goto Mulgore,31.27,49.87
    >>Mata |cRXP_ENEMY_Cavadores de Bael'dun|r y |cRXP_ENEMY_Tasadores de Bael'dun|r. Despójalos para obtener sus |cRXP_LOOT_Picos de prospector|r
    .use 4702 >> Machaca los |T134707:0|t[Picos] en la Forja
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,33.10,47.69,0
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Mata |cRXP_ENEMY_Cavadores de Bael'dun|r y |cRXP_ENEMY_Tasadores de Bael'dun|r. Despójalos para obtener la |cRXP_LOOT_Llave del depósito de artefactos|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Tasadores de Bael'duns|r lanzan|r |T135929:0|t[Sanación inferior] |cRXP_WARN_(Lanzamiento a distancia: Sanan a sí mismos o a una criatura cercana por debajo de 50% de salud por aproximadamente 75 de salud)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>Abre el |cRXP_PICK_Depósito de Artefactos|r. Despójalo para obtener el |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .equip 18,206388 >> |cRXP_WARN_Equipa el|r |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith SacredBurialTurnIn
    .aura 408828 >>|cRXP_WARN_Mata a los enemigos usando|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para infligirles daño al menos una vez. Haz esto 10 veces para obtener el|r |T136116:0|t[Inspirado] |cRXP_WARN_beneficio|r
    >>|cRXP_WARN_NOTA: Debes hacer esto en enemigos que puedan proporcionar experiencia para ganar acumulaciones|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior/Shaman
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tótem de Lluvia|r
    .accept 833 >>Acepta la misión Cementerio sagrado
    .target Lorekeeper Raintotem
step << Warrior/Shaman
    #completewith next
    >>Mata |cRXP_ENEMY_Intrusos Erizapúas|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu Ancestral|r
    .turnin 773 >>Entrega la misión Rito de la Sabiduría
    .target Ancestral Spirit
step << Warrior/Shaman
    #loop
	.goto Mulgore,61.12,22.88,0
	.goto Mulgore,59.85,25.62,40,0
	.goto Mulgore,61.14,22.93,40,0
	.goto Mulgore,61.77,22.49,40,0
	.goto Mulgore,62.18,22.05,40,0
	.goto Mulgore,62.32,20.89,40,0
	.goto Mulgore,61.62,19.50,40,0
	.goto Mulgore,60.44,19.50,40,0
	.goto Mulgore,60.16,21.06,40,0
	.goto Mulgore,60.41,21.96,40,0
	.goto Mulgore,61.12,22.88,40,0
    >>Mata |cRXP_ENEMY_Intrusos Erizapúas|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    #label SacredBurialTurnIn
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tótem de Lluvia|r
    .turnin 833 >>Entrega la misión Cementerio sagrado
    .target Lorekeeper Raintotem
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Usa el|r |T134918:0|t|cRXP_LOOT_[Ícono sulfúrico]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes: Explosión de arrabio]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    >>Mata |cRXP_ENEMY_Lobos|r, |cRXP_ENEMY_Pumas|r, |cRXP_ENEMY_Zancudos de llanura|r y |cRXP_ENEMY_Aguilones|r mientras completas misiones en la zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith next
    >>Mata |cRXP_ENEMY_Lobos|r, |cRXP_ENEMY_Pumas|r, |cRXP_ENEMY_Zancudos de llanura|r y |cRXP_ENEMY_Aguilones|r mientras completas misiones en la zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
    .goto Mulgore,53.74,48.17
    >>Haz clic en el |cRXP_PICK_Cajón de suministros sellado|r
    .turnin 749 >>Entrega la misión La Caravana Devastada
    .accept 751 >>Acepta la misión La Caravana Devastada
step << Warrior/Shaman
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entrega la misión Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior/Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Skorn|r
    .accept 770 >>Acepta la misión La capa del demonio marcado
    .turnin 770 >>Entrega la misión La capa del demonio marcado
    .target Skorn
    .target Skorn Whitecloud
    .use 4854
    .itemcount 4854,1
step << Warrior/Shaman
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baine|r
    .turnin 746 >>Entrega la misión Una excavación de los enanos
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.35,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>Entrega la misión Las Viento Furioso son un peligro
    .target Ruul Eagletalon
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Entrega la misión La caza de los aguilones
    .target Harken Windtotem
    .isQuestComplete 761
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narm|r
    .train 547 >> Aprende tus hechizos de clase
    .target Narm Skychaser
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Aprende tus hechizos de clase
    .target Krang Stonehoof
    .xp <12,1
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Patrulla a lo largo del camino oriental|r
    .turnin 751 >> Entrega la misión La Caravana Devastada
    .accept 764 >> Acepta la misión Los Ventura y Cía.
    .accept 765 >> Acepta la misión Supervisor Saltatuercas
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >> Viaja a la Mina de los Ventura y Cía.
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>Abre los |cRXP_PICK_Suministros explosivos|r dentro de la mina y fuera en el otro lado. Despójalos para obtener las |cRXP_LOOT_Cargas mineras de seforio|r
    >>|cRXP_WARN_Permanece en los niveles superiores de la cueva si es posible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #completewith next
    >>Mata a los |cRXP_ENEMY_Trabajadores de Ventura y Cía.|r y a los |cRXP_ENEMY_Controladores de Ventura y Cía.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Warrior/Shaman
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Entra en la mina y pégate al lado derecho/este. Mata al |cRXP_ENEMY_Supervisor Saltatuercas|r. Despójalo para obtener su |cRXP_LOOT_Sujetapapeles|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Saltatuercas
step << Warrior/Shaman
    #label VentureCoKills
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Mata a los |cRXP_ENEMY_Trabajadores de Ventura y Cía.|r y a los |cRXP_ENEMY_Controladores de Ventura y Cía.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Shaman
    #season 2
    #loop
    .goto Mulgore,61.72,35.15,0
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Abre los |cRXP_PICK_Suministros explosivos|r dentro de la mina y fuera en el otro lado. Despójalos para obtener las |cRXP_LOOT_Cargas mineras de seforio|r
    >>|cRXP_WARN_Permanece en los niveles superiores de la cueva si es posible|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >> Mata enemigos hasta alcanzar 7150+/8700 de experiencia
step << Warrior/Shaman
    #optional
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+6375 >> Mata enemigos hasta alcanzar 6375+/8700 de experiencia
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Patrulla a lo largo del camino oriental|r
    .turnin 764 >>Entrega la misión Los Ventura y Cía.
    .turnin 765 >>Entrega la misión Supervisor Saltatuercas
	.unitscan Morin Cloudstalker
step << Warrior
    #xprate >1.49
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krang|r
    .train 7384 >> Aprende tus hechizos de clase
    .target Krang Stonehoof
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >> Viaja a Cima del Trueno
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo]
    .turnin 76156 >>Entrega la misión Acechanzas con la Madre Tierra
    .accept 76160 >>Acepta la misión Acechanzas con la Madre Tierra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Acepta la misión Preparación para la ceremonia
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    #completewith next
    .zone Mulgore >>Toma el elevador del norte hasta Mulgore
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #completewith next
    >>Mata |cRXP_ENEMY_Hechiceras Viento Furioso|r. Despójalas para obtener sus |cRXP_LOOT_Plumas azur|r
    >>Mata |cRXP_ENEMY_Matriarcas Viento Furioso|r. Despójalas para obtener sus |cRXP_LOOT_Plumas de bronce|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    #loop
    .goto Mulgore,30.89,22.41,0
    .goto Mulgore,30.89,22.41,20,0
    .goto Mulgore,29.57,23.43,20,0
    .goto Mulgore,29.63,26.32,20,0
    >>Despoja los |cRXP_LOOT_Conos de viento furioso|r del suelo
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #loop
    .goto Mulgore,31.7,28.2,0
    .goto Mulgore,30.2,19.5,0
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    >>Mata |cRXP_ENEMY_Hechiceras Viento Furioso|r. Despójalas para obtener sus |cRXP_LOOT_Plumas azur|r
    >>Mata |cRXP_ENEMY_Matriarcas Viento Furioso|r. Despójalas para obtener sus |cRXP_LOOT_Plumas de bronce|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    >>Usa el |T133748:0|t[Mortero y majadero] para crear |T133213:0|t[Bálsamo de pino]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Entrega la misión Preparación para la ceremonia
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo]
    .turnin 76160 >>Entrega la misión Acechanzas con la Madre Tierra
    .accept 76240 >>Acepta la misión Acechanzas con la Madre Tierra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Stampi|r
    >>|cRXP_BUY_Compra un|r |T133894:0|t[Pececito luminoso crudo] |cRXP_BUY_en la Casa de Subastas|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Viaja hacia |cRXP_FRIENDLY_Seua Correbruma|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kah Correbruma|r
    .train 7734 >>Aprende |T136245:0|t[Pesca]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seua Correbruma|r
    >>|cRXP_BUY_Compra una|r |T132932:0|t[Caña de pescar] |cRXP_BUY_y|r |T134335:0|t[Adorno lustroso] |cRXP_BUY_a esta vendedora|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >> |cRXP_WARN_Equipa la|r |T132932:0|t[Caña de pescar]
    .use 6256
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >> |cRXP_WARN_Pon el|r |T134335:0|t[Adorno lustroso] |cRXP_WARN_a tu|r |T132932:0|t[Caña de pescar]
    .use 6529
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Pesca en el estanque hasta que obtengas un |T133894:0|t[|cRXP_LOOT_Pececito luminoso crudo|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    >>Usa el |T132147:0|t[Conjunto de cuchillos] para crear |T134007:0|t[Trozos de pescado]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo]
    .turnin 76240 >>Entrega la misión Acechanzas con la Madre Tierra
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    .abandon 766 >> Abandona la misión Mazzranache
step << Warrior/Shaman
    #xprate >1.49
    .hs >> Usa tu Piedra de hogar para ir a El Cruce
    .subzoneskip 380
    .bindlocation 380,1
    .use 6948
step << Warrior/Shaman
    #xprate <1.5
    #completewith MargozTurnIn
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .subzoneskip 362
    .bindlocation 362,1
    .use 6948
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .target Swart
    .xp <12,1
step << Shaman
    #xprate <1.5
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
    .goto Durotar,39.16,58.56,10 >> Sigue el camino montaña arriba hacia |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Ten cuidado de no caer de la montaña, el camino es muy estrecho. Podrías morir si caes|r
step << Shaman
    #xprate <1.5
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entrega la misión La llamada del fuego
    .accept 1525 >>Acepta la misión La llamada del fuego
    .target Telf Joolam
step << Warrior
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jark|r
    .vendor >>|cRXP_BUY_Compra|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .target Jark
step << Hunter
    #completewith MargozTurnIn
    +Domestica a un |cRXP_ENEMY_Escórpido Venocola|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate <1.5
    #completewith next
    .subzone 371 >>Viaja hacia la Cueva Viento Seco
step << Shaman
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mata |cRXP_ENEMY_Cultores Filo Ardiente|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step
    #xprate <1.5 << !Hunter
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Viaja hasta |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step
    #xprate <1.5 << !Hunter
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entrega la misión Margoz
    .accept 827 >>Acepta la misión Roca del Cráneo
    .target Margoz
    .isQuestTurnedIn 806
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Viaja hacia la Cueva Viento Seco
    .isQuestTurnedIn 828
step << Mage
    #xprate <1.5
    #season 2
    #completewith next
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r dentro de la Cueva Roca del Cráneo. Despójalos para obtener la |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .train 401768,1
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Mata |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener sus |cRXP_LOOT_Collares|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step << Mage
    #season 2
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r dentro de la Cueva Roca del Cráneo. Despójalos para obtener la |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate <1.5
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401768 >>|cRXP_WARN_Usa|r|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
    .itemcount 203752,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    .goto Durotar,55.12,10.10,60 >> Viaja hacia Roca del Cráneo
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    >>Mata |cRXP_ENEMY_Escórpidos Venocola|r. Despójalos para obtener sus |cRXP_LOOT_Glándulas de veneno|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>Mata |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener sus |cRXP_LOOT_Collares|r y una |cRXP_LOOT_Insignia de Teniente|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Mata a |cRXP_ENEMY_Gazz'uz|r. Despójalo para obtener su |T134085:0|t[|cRXP_LOOT_Ojo de la Sombra ardiente|r]
    >>|cRXP_WARN_Usa el |T134085:0|t[|cRXP_LOOT_Ojo de la Sombra ardiente|r] para empezar la misión|r
    >>|cRXP_WARN_Usa tu|r |T134712:0|t[Pegamento muy pegajoso] |cRXP_WARN_en el|r |cRXP_ENEMY_Abisario|r |cRXP_WARN_para evitar ser golpeado, y|r |T134829:0|t[Pociones de sanación] |cRXP_WARN_para recuperar vida. Usa LoS (línea de visión) para evitar|r |cRXP_ENEMY_las Descargas de las Sombras|r de |cRXP_WARN_Gazz'uz|r
    >>|cRXP_WARN_Puedes correr hacia las zonas de agua que hay dentro de la cueva para evadir al|r |cRXP_ENEMY_Abisario|r |cRXP_WARN_después de matar a|r |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Ten cuidado, ya que es MUY difícil. Puedes saltarte esta misión si lo necesitas|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Acepta la misión Sombras Ardientes
    .use 4903
	.unitscan Gazz'uz
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #loop
    .goto Durotar,53.77,8.87,0
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    .goto Durotar,53.77,8.87,15,0
    >>Mata |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener sus |cRXP_LOOT_Collares|r y una |cRXP_LOOT_Insignia de Teniente|r
    >>|cRXP_WARN_Omite la|r |cRXP_LOOT_Insignia de Teniente|r |cRXP_WARN_si no tienes suerte con el botín|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Ravine
    >>Mata |cRXP_ENEMY_Escórpidos Venocola|r. Despójalos para obtener sus |cRXP_LOOT_Glándulas de veneno|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << !Hunter
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Entrega la misión Roca del Cráneo
    .accept 829 >>Acepta la misión Neeru Hojafuego
    .target Margoz
    .isQuestTurnedIn 806
step
    #xprate <1.5
    #label Ravine
    #completewith next
    .subzone 370 >> Baja saltando al Barranco Árido
step
    #xprate <1.5
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Mata |cRXP_ENEMY_Salvajes Viento Seco|r y |cRXP_ENEMY_Brujas de la Tormenta Viento Seco|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step
    #xprate <1.5
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 813 << Warrior/Shaman/Hunter
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >> Viaja por la cueva hacia |cRXP_FRIENDLY_Rezlak|r
step
    #xprate <1.5
    #label SecuringLinesTurnIn
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entrega la misión Asegurar las rutas
    .target Rezlak
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #loop
    .goto Durotar,38.73,22.04,0
    .goto Durotar,42.64,20.45,60,0
    .goto Durotar,40.43,19.72,60,0
    .goto Durotar,40.59,16.41,60,0
    .goto Durotar,38.79,17.00,60,0
    .goto Durotar,38.73,22.04,60,0
    >>Termina de matar |cRXP_ENEMY_Escórpidos Venocola|r. Despójalos para obtener sus |cRXP_LOOT_Glándulas de veneno|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << Warrior/Shaman/Hunter
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
step << !Rogue
    #xprate <1.5 << Shaman/Warrior
    .goto Orgrimmar,47.21,70.27,15,0
    .goto Orgrimmar,47.55,68.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Urtharo|r
    .vendor >> Vende y Repara
    .target Urtharo
step << Shaman/Warrior
    #xprate <1.5
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entrega la misión Un viaje a Orgrimmar
    .accept 6385 >>Acepta la misión Doras, maestro de jinetes del viento
    .target Innkeeper Gryshka
step << Shaman/Warrior
    #xprate <1.5
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Entrega la misión Doras, maestro de jinetes del viento
    .accept 6386 >> Acepta la misión Regresar a El Cruce
    .target Doras
step << Shaman
    #xprate <1.5
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8050 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compra un |r |T135419:0|t[Hacha arrojadiza afilada] |cRXP_BUY_a este vendedor|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .vendor >> Vende tu basura
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Hacha arrojadiza afilada] |cRXP_WARN_cuando tengas nivel 11|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >> Entrega la misión Maleficio de Debilidad
    .trainer >> Aprende tus hechizos de clase
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >> Entrega la misión Maleficio de Debilidad
    .trainer >> Aprende tus hechizos de clase
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pephredo|r
    .train 122 >> Aprende tus hechizos de clase
    .target Pephredo
step << Warrior
    #xprate <1.5
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >> Viaja al Valle del Honor
step << Warrior
    #xprate <1.5
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 6546 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
step << !Warrior !Shaman !Hunter
    #label Admiralorders1
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entrega la misión Las órdenes del almirante
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entrega la misión Enemigos ocultos
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entrega la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Acepta la misión Mano Destrozada << Orc Rogue/Troll Rogue
    .target Therzok
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Entrega la misión En busca del antídoto
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1120 >> Aprende tus hechizos de clase
    .target Mirket
step
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entrega la misión Neeru Hojafuego
    .turnin 832 >>Entrega la misión Sombras Ardientes
    .accept 809 >>Acepta la misión Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #xprate <1.5 << !Hunter
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entrega la misión Neeru Hojafuego
    .accept 809 >>Acepta la misión Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Despoja el |cRXP_PICK_Cofre polvoriento|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    >>|cRXP_WARN_Se encuentra en La Calle Mayor en el piso superior|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Entra en Sima Ígnea
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Durotar,47.05,17.58
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Espíritu Ángel de la Resurrección|r
step << !Warrior !Shaman !Hunter
    #hardcore
    #completewith ZeptoUC1
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Entra en Sima Ígnea
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Espíritu Ángel de la Resurrección|r
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Acepta la misión Se necesita un remedio
    .turnin 812 >>Entrega la misión Se necesita un remedio
    .target Rhinag
step << Warrior
    #xprate <1.5 << !Hunter
    .goto Durotar,42.01,24.33,90,0
    .goto Durotar,39.18,31.65
    >>Salta hacia abajo dentro de Monte del Trueno y mata a |cRXP_ENEMY_Lomorrayos|r. Despójalos para obtener sus |cRXP_ENEMY_Escamas|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,34.80,32.84,50,0 << !Warrior
    .goto Durotar,34.81,37.02,50,0 << !Warrior
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Viaja al sur junto al río hacia la Avanzada del Puente
    >>Mata a los |cRXP_ENEMY_Crocoliscos Fauzatroz|r en el camino. Despójalos para obtener |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Omite y abandona esta misión si no cae|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Entrega la misión Perdido, pero no olvidado
    .target Misha Tor'kren
    .isQuestComplete 816
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entrega la misión Ak'Zeloth
    .accept 924 >>Acepta la misión La Semilla del Demonio
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Despoja la|r |T134095:0|t[Piedra de energía con imperfecciones] |cRXP_WARN_junto a|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. Este objeto tiene un temporizador de 30 minutos, así que date prisa|r
    .turnin 926 >>Entrega la misión La piedra de energía con imperfecciones
    .isOnQuest 924
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entrega la misión Camino de defensa
    .accept 1502 >>Acepta la misión Thun'grim Vistafuego
    .target Uzzek
step << Mage
    #xprate >1.49
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r dentro de la Cueva Roca del Cráneo. Despójalos para obtener la |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate >1.49
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto.
    .train 401768 >>|cRXP_WARN_Usa|r|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r] |cRXP_WARN_para aprender|r |T135820:0|t[Llama viva]
    .use 203752
    .itemcount 203752,1
step << Rogue/Mage/Priest/Warlock
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Sube a la Torre del Zepelín
    .zone Tirisfal Glades >>Toma el zepelín hacia los Claros de Tirisfal
    >>|cRXP_WARN_Crea agua mientras esperas|r << Mage
    .zoneskip Tirisfal Glades
step
    #optional
    .abandon 816 >>Abandona la misión Perdido, pero no olvidado
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate <1.99
#name 10-12 Tirisfal
#version 11
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-14 Bosque de Argénteos << Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest

step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
    .money <0.3023
step << Orc Rogue/Troll Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >> Consigue la ruta de vuelo de Entrañas
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Archibald|r en el Barrio de la Guerra
    .train 201 >>Aprende Espadas de 1 mano
    .target Archibald
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass1
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass1
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #optional
    #completewith KillDevlin
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra seis|r |T134339:0|t[Corazones de huargo descoloridos] |cRXP_BUY_de la Casa de Subastas|r
    >>|cRXP_WARN_Omitir esto si quieres, es solo un pequeño ahorro de tiempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << skip --Orc Rogue/Troll Rogue
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Haz un Logout Skip en el Barrio de la Magia colocando a tu personaje en la parte más alta de la escalera más baja hasta que parezca que flota, luego desconecta y vuelve a entrar|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
step
    #completewith next
    .zone Tirisfal Glades >>Sal de Entrañas
    .zoneskip Undercity,1
step
    #completewith DeliverytoSPF
    .goto Tirisfal Glades,61.52,53.20,80 >> Viaja a Rémol
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r y |cRXP_FRIENDLY_Gretchen|r en la posada
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está en el segundo piso|r
    .accept 354 >>Acepta la misión Muertes en la familia
    .accept 362 >>Acepta la misión Los molinos fantasma
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Acepta la misión El frío de la muerte
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
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
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ageron|r dentro de la posada
    .accept 1478 >> Acepta la misión Las invocaciones de Halgar
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r dentro de la posada
    .accept 1885 >>Acepta la misión Mennet Carkad
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r dentro de la posada
    .accept 1881 >> Acepta la misión Habla con Anastasia
    .target Cain Firesong
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r <<Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock
    .vendor >> Vende la Basura
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sra. Winters|r
    >>|cRXP_BUY_Compra una o más|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_FRIENDLY_esta vendedora|r
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #season 0,1
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #season 2
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
    .maxlevel 10 << !Warlock !Rogue
    .maxlevel 11 << Warlock
    .train 400095,1 << Rogue
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
    .maxlevel 10
step
    #season 0,1
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cartel de Se busca|r
    .accept 398 >>Acepta la misión Se busca: Ojo de cresa
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
step
    #season 2
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cartel de Se busca|r
    .accept 398 >>Acepta la misión Se busca: Ojo de cresa
    .maxlevel 11 << !Warrior !Warlock !Rogue
    .maxlevel 12 << Warlock/Rogue
    .maxlevel 13 << Warrior
    .train 400095,1 << Rogue
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sevren|r dentro del edificio
    .accept 358 >>Acepta la misión Profanadores
    .target Magistrate Sevren
    .maxlevel 10
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Acepta la misión Entrega a Bosque de Argénteos
    .accept 367 >>Acepta la misión Una nueva Peste
    .target Apothecary Johaan
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #label DeliverytoSPF
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Acepta la misión Entrega a Bosque de Argénteos
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Acepta la misión Una tarea pútrida
    .target Deathguard Dillinger
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Entrega la misión Habla con Dillinger
    .accept 1819 >> Acepta la misión Ulag el Cuchilla
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Haz clic en el|r |cRXP_WARN_Disparador del Mausoleo|r |cRXP_WARN_del suelo. Esto invocará a|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mátalo|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Entrega la misión Ulag el Cuchilla
    .accept 1820 >> Acepta la misión Habla con Coleman
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step
    #optional
    #completewith Pumpkins
    >>Mata a cualquier |cRXP_ENEMY_Can oscuro|r que veas. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    >>|cRXP_WARN_Recibirás|r |T133849:0|t[Arena de sueño] |cRXP_WARN_de la continuación de esta misión|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
    .isOnQuest 367
step
    #optional
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Mata |cRXP_ENEMY_Muertos en podredumbre|r y |cRXP_ENEMY_Cuerpos devastados|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .isOnQuest 404
step
    #optional
    #completewith Pumpkins
    >>Mata a los |cRXP_ENEMY_Murciumbrío|r que veas. Despójalos de sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Pumpkins
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Acepta la misión Campos de pena
    .target Deathguard Simmer
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Simmer|r
    .accept 365 >>Acepta la misión Campos de pena
    .target Deathguard Simmer
    .maxlevel 10
step << Mage
    #season 2
    #completewith next
    .goto Tirisfal Glades,36.72,50.94,0
    .goto Tirisfal Glades,34.78,51.24,0
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Despoja las |cRXP_LOOT_Calabazas|r encontradas en el campo.
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step
    #optional
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Mata |cRXP_ENEMY_Guerreros Escarlata|r.
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Murciumbrío|r que veas. Despójalos de sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Darkhounds1
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    >>Mata a cualquier |cRXP_ENEMY_Can oscuro|r que veas. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step
    #optional
    #softcore
    #completewith ProofofDemiseTurnin
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 427
step
    #optional
    #hardcore
    #completewith ProofofDemiseTurnin
    .goto Tirisfal Glades,58.20,51.43,120 >> Viaja de vuelta a Rémol
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 404 >>Entrega la misión Una tarea pútrida
    .accept 426 >>Acepta la misión La invasión de los molinos
    .isQuestComplete 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .accept 426 >>Acepta la misión La invasión de los molinos
    .isQuestTurnedIn 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entrega la misión Una nueva Peste
    .accept 368 >>Acepta la misión Una nueva Peste
    .isQuestComplete 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 368 >>Acepta la misión Una nueva Peste
    .isQuestTurnedIn 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 365 >> Entrega la misión Campos de pena
    .accept 407 >> Acepta la misión Campos de pena
    .isQuestComplete 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 407 >> Acepta la misión Campos de pena
    .isQuestTurnedIn 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 427 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 370 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .accept 370 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
    .isQuestTurnedIn 427
step
    #optional
    #label ProofofDemiseTurnin
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r
    .accept 374 >>Acepta la misión Prueba de defunción
    .target Deathguard Burgess
    .isQuestTurnedIn 427
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
step << Warlock/Mage
    #label UCflightpath1
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la ruta de vuelo de Entrañas
    .target Michael Garrett
step << Warlock/Mage
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra seis|r |T134339:0|t[Corazones de huargo descoloridos] |cRXP_BUY_de la Casa de Subastas|r
    >>|cRXP_WARN_Omitir esto si quieres, es solo un pequeño ahorro de tiempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r en el Barrio de la Magia
    .turnin 1478 >> Entrega la misión Las invocaciones de Halgar
    .accept 1473 >> Acepta la misión Criatura Abisal
    .isQuestAvailable 1504
step << Mage
    #optional
    .abandon 1883 >> Abandona la misión Habla con Un'thuwa, de lo contrario, no podrás aceptar la siguiente misión
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r en el Barrio de la Magia
    .turnin 1881 >> Entrega la misión Habla con Anastasia
    .accept 1882 >> Acepta la misión La Hacienda Balnir
    .target Anastasia Hartwell
step << Undead Priest
    #completewith TouchofWeakness
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
step << Undead Priest
    #completewith TouchofWeakness
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
step << Undead Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra seis|r |T134339:0|t[Corazones de huargo descoloridos] |cRXP_BUY_de la Casa de Subastas|r
    >>|cRXP_WARN_Omitir esto si quieres, es solo un pequeño ahorro de tiempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Undead Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >> Entrega la misión Toque de debilidad
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    #label TouchofWeakness
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >> Acepta la misión Toque de debilidad
    .turnin 5658 >> Entrega la misión Toque de debilidad
    .target Aelthalyste
step << Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >> Consigue la ruta de vuelo de Entrañas
    .target Michael Garrett
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass2
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass2
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Entrega la misión Mennet Carkad
    .accept 1886 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .zoneskip Undercity,1
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Archibald|r en el Barrio de la Guerra
    .train 201 >>Aprende Espadas de 1 mano
    .target Archibald
    .money <0.1
    .zoneskip Undercity,1
step << Rogue
    #optional
    #completewith KillDevlin
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra seis|r |T134339:0|t[Corazones de huargo descoloridos] |cRXP_BUY_de la Casa de Subastas|r
    >>|cRXP_WARN_Omitir esto si quieres, es solo un pequeño ahorro de tiempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock/Mage/Rogue
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Tirisfal Glades
step << Undead Priest
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith ScarletCrusade1
    >>Recoge |cRXP_LOOT_Anillo con la insignia Escarlata|r
    >>|cRXP_WARN_No tienes que completar este paso ahora|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step << Warlock
    #optional
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Despoja |cRXP_PICK_Cofre de Perrine|r para obtener |T133733:0|t[Grimorio Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step
    #optional
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,51.03,69.55,0
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Mata al |cRXP_ENEMY_Capitán Perrine|r, a los |cRXP_ENEMY_Zelotes|r y a los |cRXP_ENEMY_Misioneros|r.
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .isOnQuest 370
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Despoja |cRXP_PICK_Cofre de Perrine|r del suelo para obtener |T133733:0|t[Grimorio Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >> Viaja de vuelta a Entrañas a través de las cloacas
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r en el Barrio de la Magia
    .turnin 1473 >> Entrega la misión Criatura Abisal
    .accept 1471 >> Acepta la misión El vínculo
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>|cRXP_WARN_Usa las|r |T134416:0|t[Runas de Invocación] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carendin|r
    .turnin 1471 >>Entrega la misión El vínculo
    .target Carendin Halgar
    .isQuestAvailable 1504
step << skip --Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Haz un Logout Skip colocando a tu personaje en la parte más alta de la escalera más baja hasta que parezca que flota, luego desconecta y vuelve a entrar|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    >>|cRXP_WARN_Si no puedes hacer esto, simplemente sal de Entrañas de forma normal|r
    .zoneskip Undercity,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >> Sal de Entrañas
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Murciumbrío|r que veas. Despójalos de sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,47.60,44.03,150 >> Viaja al noroeste hacia los Molinos de Agamand
    .isOnQuest 362
step
    #optional
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Carta de Thurman|r] |cRXP_WARN_puede caer de estos enemigos. Acepta la misión si lo hace|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >> Acepta la misión Una carta sin entregar
    .use 2839
step
    #completewith ThurmanGregor
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Calaveras|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #optional
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Mata a |cRXP_ENEMY_Devlin|r. Despójalo para obtener sus |cRXP_LOOT_Restos|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    #optional
    .goto Tirisfal Glades,49.34,36.02
    >>Mata a |cRXP_ENEMY_Nissa|r. Despójala para obtener sus |cRXP_LOOT_Restos|r. Puede estar dentro del edificio
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
    .isOnQuest 354
step
    #optional
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mata a |cRXP_ENEMY_Thurman|r y a |cRXP_ENEMY_Gregor|r. Despójalos para obtener sus |cRXP_LOOT_Restos|r. Pueden estar patrullando la zona
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
    .isOnQuest 354
step
    #loop
    #label MillsOverun
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mata |cRXP_ENEMY_Soldados|r y |cRXP_ENEMY_Tirahuesos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas|r y |cRXP_LOOT_Calaveras|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #requires MillsOverun
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >> Baja por las colinas.
    >>|cRXP_WARN_Ten cuidado. No tomes demasiado daño de caída. Sigue la ruta marcada por seguridad|r
    .isQuestComplete 354
step
    #optional
    #requires MillsOverun
    #completewith next
    >>Mata a los |cRXP_ENEMY_Gnolls|r y a los |cRXP_ENEMY_Bastardos|r. Despójalos para obtener sus |cRXP_LOOT_Icor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
    .isOnQuest 358
step
    #optional
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Mata a |cRXP_ENEMY_Ojo de cresa|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #optional
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    >>Mata |cRXP_ENEMY_Múrlocs|r. Despójalos para obtener sus |cRXP_LOOT_Escamas|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    #optional
    #completewith RotHideGnolls
    >>Mata a los |cRXP_ENEMY_Murciumbrío|r que veas. Despójalos de sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #season 2
    #optional
    #completewith RotHideGnolls
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    #label RotHideGnolls
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    >>Mata a los |cRXP_ENEMY_Bastardos|r y a los |cRXP_ENEMY_Asaltatumbas|r. Despójalos para obtener sus |cRXP_LOOT_Icor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    #softcore
    #completewith MillsTurnin
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #optional
    #hardcore
    #completewith MillsTurnin
    .subzone 159 >> Viaja a Rémol
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Entrega la misión La invasión de los molinos
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Entrega la misión Una nueva Peste
    .accept 369 >>Acepta la misión Una nueva Peste
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 369 >>Acepta la misión Una nueva Peste
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Entrega la misión Se busca: Ojo de cresa
    .turnin 370 >>Entrega la misión En guerra con la Cruzada Escarlata
    .accept 371 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
    .isQuestComplete 370
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>Usa el |T133385:0|t[|cRXP_LOOT_Sello de teniente Escarlata|r] para crear |T134328:0|t[|cRXP_LOOT_Memorándum Escarlata falsificado|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jamie Nore|r para recibir |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Entrega la misión Se busca: Ojo de cresa
    .accept 371 >>Acepta la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Entrega la misión Se busca: Ojo de cresa
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sevren|r
    .turnin 358 >>Entrega la misión Profanadores
    .accept 359 >>Acepta la misión Las obligaciones de los Renegados
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sevren|r
    .accept 359 >>Acepta la misión Las obligaciones de los Renegados
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a|r |cRXP_FRIENDLY_esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,61.58,52.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yvette|r
    .turnin 361 >>Entrega la misión Una carta sin entregar
    .target Yvette Farthing
    .isOnQuest 361
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .accept 355 >>Acepta la misión Habla con Sevren
    .target Coleman Farthing
    .isQuestComplete 354
step
    #optional
    #label MillsTurnin
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 354 >>Entrega la misión Muertes en la familia
    .turnin 362 >>Entrega la misión Los molinos fantasma
    .accept 355 >>Acepta la misión Habla con Sevren
    .target Coleman Farthing
    .isQuestComplete 362
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .accept 355 >>Acepta la misión Habla con Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Entrega la misión Habla con Coleman << Warrior
    .accept 1821 >>Acepta la misión Reliquias Agamand << Warrior
    .accept 355 >>Acepta la misión Habla con Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 1819
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r en el segundo piso de la posada
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 588 >>Aprende |T135926:0|t[Fuego interno]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 145 >> Aprende |T135812:0|t[Bola de Fuego Rango 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprende |T132223:0|t[Abrumar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1766 >> Aprende |T132219:0|t[Patada]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 755 >> Aprende |T136168:0|t[Cauce de salud]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Renee|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñón con motas rojas] |cRXP_BUY_a esta vendedora|r <<Warrior/Rogue
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_y|r |T134532:0|t[Champiñón con motas rojas] |cRXP_BUY_a esta vendedora|r << Warlock/Hunter
    .vendor >> Vende la Basura
    .collect 1179,20,359,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,359,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,359,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,359,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .turnin 359 >>Entrega la misión Las obligaciones de los Renegados
    .accept 360 >>Acepta la misión Regresa junto al magistrado
    .accept 356 >>Acepta la misión Patrulla de la retaguardia
    .target Deathguard Linnea
    .isQuestTurnedIn 358
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .accept 356 >>Acepta la misión Patrulla de la retaguardia
    .target Deathguard Linnea
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    #completewith HorrorsandSpirits
    >>Mata a los |cRXP_ENEMY_Murciumbrío|r que veas. Despójalos de sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Horrores sangrantes|r y |cRXP_ENEMY_Espíritus deambulantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #completewith HorrorsandSpirits
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Despoja cualquiera de las plantas en el suelo para obtener |cRXP_PICK_Bocas de dragón de Balnir|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #optional
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Mata |cRXP_ENEMY_Horrores sangrantes|r y |cRXP_ENEMY_Espíritus deambulantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Mage
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Lanza |T136071:0|t[Polimorfia] sobre los |cRXP_ENEMY_Melones extraños|r
    >>Despoja las |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r del suelo
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>Usa la |T134332:0|t|cRXP_LOOT_[Notas de boticario]|r para crear |T134332:0|t|cRXP_LOOT_[Notas de hechizo: Esclarecimiento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_Usa las|r |T134332:0|t|cRXP_LOOT_[Notas de hechizo: Esclarecimiento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Grabar pechera - Esclarecimiento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Priest
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_Reúne 3 montones de|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu Varita mágica inferior. Esta es tu última oportunidad para obtener suficientes antes de ir a Bosque de Argénteos|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Recoge |cRXP_LOOT_Anillo con la insignia Escarlata|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    #optional
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,78.82,56.14,20,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mata al |cRXP_ENEMY_Capitán Vachon|r y a los |cRXP_ENEMY_Frailes Escarlata|r
    >>|cRXP_WARN_¡Ten cuidado!|r |cRXP_ENEMY_Los Frailes Escarlata|r |cRXP_WARN_pueden lanzar|r |T135929:0|t[Sanación inferior]
    .complete 371,1 --Captain Vachon (1)
    .mob +Captain Vachon
    .complete 371,2 --Scarlet Friar (5)
    .mob +Scarlet Friar
    .isOnQuest 371
step
    #optional
    #label ScarletRings
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Recoge |cRXP_LOOT_Anillo con la insignia Escarlata|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Reúne 3 montones de|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu Varita mágica inferior. Esta es tu última oportunidad para obtener suficientes antes de ir a Bosque de Argénteos|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Murciumbrío|r que veas. Despójalos de sus |cRXP_LOOT_Pelambres|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #loop
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Mata |cRXP_ENEMY_Nocturácnidas sañosas|r. Despójalas para obtener su |cRXP_LOOT_Veneno|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
    .isOnQuest 369
step
    #optional
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >> Viaja de vuelta hacia |cRXP_FRIENDLY_Linnea|r
step
    #optional
    #completewith next
    >>Termina de matar a los |cRXP_ENEMY_Murciumbríos|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    >>|cRXP_WARN_Puedes omitir esta misión si tu suerte ha sido mala|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Linnea|r
    .turnin 356 >>Entrega la misión Patrulla de la retaguardia
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compra un|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a|r |cRXP_FRIENDLY_esta vendedora|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entrega la misión Prueba de defunción
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 371 >>Entrega la misión En guerra con la Cruzada Escarlata
    .target Executor Zygand
    .isQuestComplete 371
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sevren|r
    .turnin 360 >>Entrega la misión Regresa junto al magistrado
    .target Magistrate Sevren
    .isQuestTurnedIn 359
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sevren|r
    .turnin 355 >>Entrega la misión Habla con Sevren
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sevren|r
    .turnin 355 >>Entrega la misión Habla con Sevren
    .accept 408 >>Acepta la misión La Cripta de la Familia
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step
    #optional
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entrega la misión Una nueva Peste
    .accept 492 >>Acepta la misión Una nueva Peste
    .accept 445 >>Acepta la misión Entrega a Bosque de Argénteos
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Acepta la misión Entrega a Bosque de Argénteos
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gretchen|r arriba
    .turnin 375 >>Entrega la misión El frío de la muerte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 588,1 >>Aprende |T135926:0|t[Fuego interno]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 145,1 >> Aprende |T135812:0|t[Bola de Fuego Rango 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Aprende |T132223:0|t[Abrumar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1766,1 >> Aprende |T132219:0|t[Patada]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Aprende |T136168:0|t[Cauce de salud]
    .target Rupert Boch
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >> Viaja a la cripta en los Molinos de Agamand
    .isOnQuest 1821
step << Warrior
    #completewith CaptainDargol
    >>Despoja los |cRXP_PICK_Expositores de armas de Agamand|r del suelo
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #completewith next
    >>Mata |cRXP_ENEMY_Antepasados gemebundos|r y |cRXP_ENEMY_Ancestros en podredumbre|r
    >>|cRXP_WARN_¡Ten cuidado! Los enemigos en esta cripta reaparecen dinámicamente|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Mata al |cRXP_ENEMY_Capitán Dargol|r. Despójalo para obtener su |cRXP_LOOT_Calavera|r. Se encuentra en lo más profundo de la cripta
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
step << Warrior
    #completewith next
    >>Despoja los |cRXP_PICK_Expositores de armas de Agamand|r del suelo
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #loop
	.goto Tirisfal Glades,51.90,26.87,0
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Mata |cRXP_ENEMY_Antepasados gemebundos|r y |cRXP_ENEMY_Ancestros en podredumbre|r
    >>|cRXP_WARN_¡Ten cuidado! Los enemigos en esta cripta reaparecen dinámicamente|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #loop
    .goto Tirisfal Glades,52.66,25.87,0
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87,12,0
    >>Despoja los |cRXP_PICK_Expositores de armas de Agamand|r del suelo
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << skip --Warrior
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Salta a uno de los estantes de armas. Haz un Logout Skip desconectando y volviendo a entrar|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    .isQuestComplete 408
step << Warrior
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Warrior
    #hardcore
    #completewith next
    .subzone 159 >>Viaja a Rémol
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sevren|r
    .turnin 408 >>Entrega la misión La Cripta de la Familia
    .target Magistrate Sevren
    .isQuestComplete 408
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r dentro de la posada
    .turnin 1821 >>Entrega la misión Reliquias Agamand
    .target Coleman Farthing
    .isQuestComplete 1821
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r dentro de la posada
    .turnin 1822 >>Arma reliquia
    .target Coleman Farthing
    .isQuestTurnedIn 1821
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Zelote Escarlata capturado|r abajo al fondo de la posada
    .turnin 407 >>Entrega la misión Campos de pena
    .target Captured Scarlet Zealot
    .isQuestTurnedIn 365
step
    #optional
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz capturado|r abajo al fondo de la posada
    .turnin 492 >> Entrega la misión Una nueva Peste
    .target Captured Mountaineer
    .isOnQuest 492
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 588,1 >>Aprende |T135926:0|t[Fuego interno]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beryl|r en el segundo piso
	.train 6074 >> Aprende tus hechizos de clase
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 145,1 >> Aprende |T135812:0|t[Bola de Fuego Rango 3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cain|r en el segundo piso
    .train 2137 >> Aprende tus hechizos de clase
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Aprende |T132223:0|t[Abrumar]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 1160 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1766,1 >> Aprende |T132219:0|t[Patada]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marion|r en el segundo piso
    .train 1758 >> Aprende tus hechizos de clase
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 755,1 >> Aprende |T136168:0|t[Cauce de salud]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rupert|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r en el Barrio de la Magia
    .turnin 1882 >>Entrega la misión La Hacienda Balnir
    .target Anastasia Hartwell
step << Rogue
    #completewith Swordtraining3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
step << !Undead
    #label UCflightpath3
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fp Undercity >> Consigue la ruta de vuelo de Entrañas
    >>|cRXP_WARN_¡Omite este paso si ya tomaste la ruta de vuelo!|r
    .target Michael Garrett
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass3
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass3
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Louis Warren|r en el Barrio del Comercio
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1885 >>Entrega la misión Mennet Carkad
    .accept 1886 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining3
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Archibald|r en el Barrio de la Guerra
    .train 201 >>Aprende Espadas de 1 mano
    .target Archibald
    .money <0.1
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 201,1
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Compra un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_a este vendedor|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Benijah Fenner
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Rhyker|r
    >>|cRXP_BUY_Compra seis|r |T134339:0|t[Corazones de huargo descoloridos] |cRXP_BUY_de la Casa de Subastas|r
    >>|cRXP_WARN_Omitir esto si quieres, es solo un pequeño ahorro de tiempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >> Aprende |T136244:0|t[Encantamiento]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.77,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josef|r
    .train 3908 >> Aprende |T136249:0|t[Sastrería]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Convierte todos tus|r |T132889:0|t[Paño de lino] |cRXP_WARN_en|r |T132890:0|t[Madeja de paño de lino]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josef|r
    .train 7623 >> Aprende |T132662:0|t[Toga de lino marrón]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Compra|r |T132891:0|t[Hilo burdo] |cRXP_BUY_a esta vendedora|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Crea tantas|r |T132662:0|t[Togas de lino marrón] |cRXP_WARN_como puedas|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Thaddeus|r|cRXP_BUY_. Compra una|r |T133942:0|t[Vara de cobre] |cRXP_BUY_y|r |T135435:0|t[Madera simple] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Desencanta todas las|r |T132662:0|t[Togas de lino marrón] |cRXP_WARN_que hiciste y crea una|r |T135225:0|t[Vara rúnica de cobre]
    >>|cRXP_WARN_Si no obtuviste una|r |T132867:0|t[Esencia mágica inferior] |cRXP_WARN_entonces compra una de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_si hay una disponible. De lo contrario termina este paso más tarde|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malcomb|r
    .train 14293 >> Aprende |T135139:0|t[Varita mágica inferior]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Crea una|r |T135139:0|t[Varita mágica inferior]
    >>|cRXP_WARN_Si no obtuviste una|r |T132867:0|t[Esencia mágica inferior] |cRXP_WARN_entonces compra una de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_si hay una disponible. De lo contrario termina este paso más tarde|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipa la|r |T135139:0|t[Varita mágica inferior]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <1.5
    #optional
    .abandon 806 >> Abandona la misión Oscuras tormentas
step
    #optional
    .abandon 408 >> Abandona la misión La Cripta de la Familia
step << Warrior
    #optional
    .abandon 1821 >> Abandona la misión Reliquias Agamand
step
    #optional
    #xprate >1.49
    .abandon 830 >> Abandona la misión Las órdenes del almirante
step
    #label LeaveUndercity3
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >> Viaja al Bosque de Argénteos
    .zoneskip Silverpine Forest
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 1-7 Durotar
#version 1
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 7-13 Durotar


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Has seleccionado una guía para Orcos y Trols. Deberías elegir la misma zona inicial donde empiezas|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Acepta la misión Tu lugar en el mundo
    .target Kaltunk
step
    #season 2
    .xp 2 >> Mata a cuatro |cRXP_ENEMY_Jabalíes jaspeados|r para alcanzar el nivel 2
    >>Despoja hasta que tengas 15 monedas de cobre en objetos vendibles|cRXP_WARN_ << !Warlock !Priest
    >>Despoja hasta que tengas 30 monedas de cobre en objetos vendibles|cRXP_WARN_ << Warlock/Priest
    .goto Durotar,44.32,71.16
    .mob Mottled Boar
step
    #season 2
    .goto Durotar,42.73,68.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    >>|cRXP_BUY_Vende la basura y compra la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r] y la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] << Orc Warrior
    >>|cRXP_BUY_Vende la basura y compra la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r] << Troll Warrior
    >>|cRXP_BUY_Vende la basura y compra el|r |T134920:0|t[|cRXP_FRIENDLY_Ícono kajárico|r] |cRXP_BUY_e|r |T134918:0|t[|cRXP_FRIENDLY_Ícono diádico|r] << Shaman
    >>|cRXP_BUY_Vende la basura y compra todas las runas clave de Daño en Área (AoE)|r << Mage
    >>|cRXP_BUY_Vende la basura y compra todas las siguientes runas:|r << Hunter/Warlock/Rogue/Priest
    .collect 206387,1 << Shaman --Kajaric Icon
    .collect 206381,1 << Shaman --Dyadic Icon
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204716,1 << Orc Warrior --Rune of Frenzied Assault
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    >> Lanza de hielo solo es útil para poder entregar una misión después << Mage
    >>|cRXP_WARN_Obtendrás el resto de tus runas más tarde|r
    .target Rune Broker
    .skipgossip
step
    #season 2
    .train 403470 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque de la victoria|r] para aprender |T132342:0|t[Ataque de la victoria]<< Warrior
    .train 415936 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Bomba viva|r] para aprender |T236220:0|t[Bomba viva] << Mage
    .train 401759 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Incendio|r] para aprender |T236207:0|t[Incendio] << Mage
    .train 440858 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Orbe congelado|r] para aprender |T135851:0|t[Orbe congelado] << Mage
    .train 401760 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Lanza de hielo|r] para aprender |T135844:0|t[Lanza de hielo] << Mage
    .train 401768 >> Usa las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Llama viva|r] para aprender |T135820:0|t[Llama viva]  << Mage
    .train 410121 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de la quimera|r] para aprender |T236176:0|t[Disparo de quimera] << Hunter
    .train 410122 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Lobo solitario|r] para aprender |T132266:0|t[Lobo solitario] << Hunter
    .train 416086 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Combate cuerpo a cuerpo|r] para aprender |T132394:0|t[Especialista cuerpo a cuerpo] << Hunter
    .train 440563 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Guerrilla|r] para aprender |T132171:0|t[Doble tenebroso] << Hunter
    .train 415423 >> Usa el |T133739:0|t[|cRXP_FRIENDLY_Tratado sobre Aspecto de la víbora|r] para aprender |T132160:0|t[Aspecto de la víbora]|r] << Hunter
    .train 416009 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Tácticas|r] para aprender |T136150:0|t[Tácticas demoníacas] << Warlock
    .train 425476 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del pacto|r] para aprender |T237562:0|t[Pacto demoníaco] << Warlock
    .train 416015 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Incineración|r] para aprender |T135789:0|t[Incinerar] << Warlock
    .train 403919 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Posesión|r] para aprender |T236298:0|t[Poseer] << Warlock
    .train 403619 >> Usa el |T133733:0|t[|cRXP_FRIENDLY_Grimorio de Armadura vil|r] para aprender |T136156:0|t[Armadura vil] |cRXP_WARN_úsalo como tu hechizo de armadura principal|r << Warlock
    .train 402852 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r] para aprender |T237570:0|t[Homúnculos] << Priest
    .train 425447 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r] para aprender |T236317:0|t[Asalto frenético] << Orc Warrior
    .train 410111 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Matar|r] para aprender |T236174:0|t[Disparo mortal] << Hunter
    .train 409580 >> Usa el |T133739:0|t[|cRXP_FRIENDLY_Tratado sobre Corazón del león|r] para aprender |T132185:0|t[Corazón del león] << Hunter
    .train 400101 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Paso de las sombras|r] para aprender |T132303:0|t[Paso de las Sombras] << Rogue
    .train 432301 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Juego sucio|r] para aprender |T236285:0|t[Ventaja injusta] << Rogue
    .train 400105 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpesombra|r] para entrenar |T132323:0|t[Golpesombra] << Rogue
    .train 424984 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Sablazo|r] para aprender |T132375:0|t[Sablazo] << Rogue
    .train 415922 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa del Espadachín|r] para aprender |T134538:0|t[Trabuco] << Rogue
    .equip 18 >> Equipa el |T134920:0|t[|cRXP_FRIENDLY_Ícono kajárico|r], puedes usarlo después de 30 segundos para aprender |T237582:0|t[Ráfaga de lava] << Shaman
    .train 431663 >> Usa la |T135791:0|t[|cRXP_FRIENDLY_Epifanía psicosófica|r] para aprender |T136181:0|t[Púa mental] << Priest
    .train 425216 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] para aprender |T237514:0|t[Plaga del Vacío] << Priest
    .train 402862 >> Usa el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un acólito atribulado|r] para aprender |T237545:0|t[Penitencia] << Priest
    .train 402849 >> Usa la |T135975:0|t[|cRXP_FRIENDLY_Profecía de la muerte de un rey|r] para aprender |T136149:0|t[Palabra de las Sombras: muerte] << Priest
    .use 206387 << Shaman --Kajaric Icon
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 203745 << Mage --Spell Notes: Ice Lance
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 206168 << Hunter --Rune of the Chimera
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
step << Warlock
    #optional
    #sticky
    .aura 403619 >> Recuerda activar tu |T136156:0|t[Armadura vil]
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Acepta la misión Familiares viles
    .target Ruzan
step << Shaman
    #season 2
    #optional
    #label LavaBurst
    #sticky
    .train 410095 >> Usa el |T134920:0|t[|cRXP_FRIENDLY_Ícono kajárico|r] desde tu panel de personaje para aprender |T237582:0|t[Ráfaga de lava]
step << Shaman
    #season 2
    #optional
    #requires LavaBurst
    #label Overload
    #sticky
    .equip 18,206381 >> Equipa el |T134918:0|t[|cRXP_FRIENDLY_Ícono diádico|r]
    .train 410094 >> Úsalo después de 30 segundos para aprender |T136050:0|t[Sobrecarga]
    .use 206381
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Entrega la misión Tu lugar en el mundo
    .accept 788 >>Acepta la misión Dientes afilados
    .target Gornek
step << Priest
    #season 2
    .goto Durotar,40.61,67.81
    >>|cRXP_WARN_Adéntrate más en la guarida|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Vende la basura. Compra un|r |T132513:0|t[Cinturón de paño andrajoso] |cRXP_BUY_para grabar una runa en él|r
    .collect 3595,1 --Tattered Cloth Belt
    .target Huklah
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .accept 77642 >>Acepta la misión Sabiduría de los loa
    .turnin 77642 >>Entrega la misión Sabiduría de los loa
    .target Ken'jai
step << Priest
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .equip 6,3595 >> |cRXP_WARN_Equipa el|r |T132513:0|t[Cinturón de paño andrajoso]
    .use 711
    .use 3595
    .engrave 6 >> Graba |T136181:0|t[Púa mental] en tu cinturón
    .engrave 10 >> Graba |T136149:0|t[Palabra de las Sombras: muerte] en tus guantes
    .engrave 7 >> Graba |T237570:0|t[Homúnculos] en tus pantalones
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Acepta la misión Investigación sobre hechizos << Troll Mage
    .turnin 77643 >>Entrega la misión Investigación sobre hechizos << Troll Mage
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .target Mai'ah
step << Mage
    #season 2
    #optional
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .use 711
    .engrave 10 >>|cRXP_WARN_Graba tus|r guantes con |T236220:0|t[Bomba viva]
    .engrave 7 >>|cRXP_WARN_Graba tus pantalones con|r |T135820:0|t[Llama viva]
    .engrave 5 >>|cRXP_WARN_Graba tu pecho con|r |T236207:0|t[Incendio]
step << Mage
    #season 2
    #optional
    #sticky
    .engrave 15 >> Mantente atento a cualquier capa que caiga. Una vez que tengas una, graba el |T135851:0|t[Orbe congelado] en ella
    >>|cRXP_WARN_Este hechizo está extremadamente roto|r
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .accept 77590 >>Acepta la misión Terreno escabroso << Troll Hunter
    .accept 77584 >>Acepta la misión Cacería por la runa << Orc Hunter
    .turnin 77590 >>Entrega la misión Terreno escabroso << Troll Hunter
    .turnin 77584 >>Entrega la misión Cacería por la runa << Orc Hunter
    .target Jen'shan
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r dentro
    .accept 77592 >>Acepta la misión En la cima de los riscos << Troll Rogue
    .accept 77583 >>Acepta la misión En la cima de los riscos << Orc Rogue
    .turnin 77592 >>Entrega la misión En la cima de los riscos << Troll Rogue
    .turnin 77583 >>Entrega la misión En la cima de los riscos << Orc Rogue
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .target Rwag
step << Rogue
    #season 2
    #optional
    .equip 10 >> Equipa los |T132952:0|t[Guantes de cuero rajado]
    .engrave 10 >> Graba |T132375:0|t[Sablazo] en tus guantes
    .use 2125 --Cracked Leather Gloves
step << Warrior/Shaman
    #season 0
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla] << Warrior
    .train 8017 >>Aprende |T136086:0|t[Arma Muerdepiedras] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior/Shaman
    #season 2
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla] << Warrior
    .train 8017 >>Aprende |T136086:0|t[Arma Muerdepiedras] << Shaman
    .accept 77588 >>Acepta la misión Una prueba de aptitud << Troll Warrior
    .accept 77582 >>Acepta la misión Una prueba de aptitud << Orc Warrior
    .turnin 77588 >>Entrega la misión Una prueba de aptitud << Troll Warrior
    .turnin 77582 >>Acepta la misión Una prueba de aptitud << Orc Warrior
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior
    #season 2
    .equip 10 >> Equipa los |T132938:0|t[Guantes de anillas deslustradas] << Warrior
    .engrave 10 >> Graba |T132342:0|t[Ataque de la victoria] en tus guantes << Warrior
    .engrave 7 >> Graba |T236317:0|t[Asalto frenético] en tus pantalones << Orc Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Viaja hacia |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Viaja hacia |cRXP_FRIENDLY_Nartok|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Viaja hacia |cRXP_FRIENDLY_Nartok|r
step << Warlock
    #softcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vende la Basura
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hraug|r
    .vendor >>Vende la Basura
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Acepta la misión Poder robado
    .turnin 77586 >>Entrega la misión Poder robado
    .target Nartok
step << Warlock
    #season 2
    .goto Durotar,40.61,67.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Vende la basura. Compra un par de|r [Brazales de paño andrajoso] |cRXP_BUY_para grabar una runa en ellos|r
    .collect 3596,1 --Tattered Cloth Bracers
    .target Huklah
step << Warlock
    #season 2
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .equip 9,3596 >> |cRXP_ENEMY_Equipa los|r |T132606:0|t[Brazales de paño andrajoso]
    .use 711
    .use 3596
    .engrave 10 >>|cRXP_WARN_Graba tus|r guantes con |T133816:0|t[Poseer] << Warlock
    .engrave 9 >> |cRXP_WARN_Graba tus|r brazales con |T135789:0|t[Incinerar]
    .engrave 7 >> |cRXP_WARN_Graba tus pantalones con |T237562:0|t[Pacto demoníaco]
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Aprende |T135817:0|t[Inmolar]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << !Hunter !Shaman
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
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
    .goto Durotar,43.57,67.28,25,0
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
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Mata a los |cRXP_ENEMY_Familiares viles|r. Despójalos para obtener las |cRXP_LOOT_Cabezas de familiar vil|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step << Hunter
    #season 2
    #optional
    #completewith sarkoth
    .equip 10 >> Equipa los |T132952:0|t[Guantes de cuero rajado]
    .engrave 7 >> Graba |T236174:0|t[Disparo mortal] en tus pantalones
    .engrave 10 >> Graba |T236176:0|t[Disparo de quimera] en tus guantes
    .aura 409583 >> Recuerda activar tu |T132185:0|t[Corazón del león]
    .use 2125 --Cracked Leather Gloves
step << Hunter
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Mantente atento a cualquier|r Pechera/Cinturón/Capa|cRXP_WARN_que caiga|r|cRXP_WARN_. Equípalos y graba las runas respectivas|r
    .engrave 5 >> Graba la |T132266:0|t[Lobo solitario] en tu |T132724:0|t[Pechera]
    .engrave 6 >> Graba |T132394:0|t[Especialista cuerpo a cuerpo] en tu |T132513:0|t[Cinturón]
    .engrave 15 >> Graba |T132171:0|t[Doble tenebroso] en tu |T133771:0|t[Capa]
step << Rogue
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Mantente atento a cualquier|r Cinturón/Capa/Brazalete |cRXP_WARN_que caiga|r|cRXP_WARN_. Equípalos y graba las runas respectivas|r
    .engrave 6 >> Graba |T132303:0|t[Paso de las Sombras] en tu |T132513:0|t[Cinturón]
    .engrave 15 >> Graba |T134538:0|t[Trabuco] en tu |T133771:0|t[Capa]
    .engrave 9 >> Graba |T236285:0|t[Ventaja injusta] en tus |T133830:0|t[Brazales]
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
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    >>Mata |cRXP_ENEMY_Jabalíes jaspeados|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 2 platas|r << Warrior
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata y 75 cobres|r << Warlock
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata y 10 cobres|r << Hunter
	>>|cRXP_WARN_Grindea |cRXP_ENEMY_Jabalíes jaspeados|r. Despójalos hasta que tengas artículos vendibles por valor de 1 plata|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
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
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Viaja hacia |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entrega la misión Tablilla encriptada << Troll Rogue
    .turnin 3088 >>Entrega la misión Papiro encriptado << Orc Rogue
    .train 53 >> Aprende |T132090:0|t[Puñalada]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
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
    #season 2
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entrega la misión Papiro corrupto
    .target Nartok
step << Warlock
    #season 0
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
    .xp >4,1
step << !Rogue
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vende la Basura
    .target Duokna
    .money >0.01 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << !Rogue
    #xprate >1.49
    #season 0 << Mage
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Duokna|r
    >>|cFF0E8312Compra|r |T132794:0|t[Agua de manantial refrescante] |cFF0E8312a esta vendedora|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Compra|r |T132382:0|t[Flechas férreas] |cFF0E8312a esta vendedora|r << Hunter
    >>|cRXP_WARN_Guarda 10 cobres para aprender|r |T135932:0|t[Intelecto Arcano] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >> Vende la Basura
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >> Vende la Basura
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >> Vende la Basura
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Entrega la misión La tablilla con runas grabadas << Troll
    .turnin 3089 >>Entrega la misión El papiro con runas grabadas << Orc
    .accept 77587 >>Acepta la misión Iconos de poder << Troll Shaman
    .accept 77585 >>Acepta la misión Iconos de poder << Orc Shaman
    .train 8042 >>Aprende |T136026:0|t[Choque de tierra]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acepta la misión La llamada de la tierra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entrega la misión La tablilla con runas grabadas << Troll
    .turnin 3089 >>Entrega la misión El papiro con runas grabadas << Orc
    .accept 77587 >>Acepta la misión Iconos de poder << Troll Shaman
    .accept 77585 >>Acepta la misión Iconos de poder << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entrega la misión La tablilla con runas grabadas << Troll
    .turnin 3089 >>Entrega la misión El papiro con runas grabadas << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entrega la misión Tablilla glífica << Troll
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entrega la misión Tablilla glífica << Troll
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .accept 792 >>Acepta la misión Familiares viles
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entrega la misión Tablilla con grabados << Troll
    .turnin 3087 >>Entrega la misión Papiro con grabados << Orc
    .target Jen'sha
step << Warrior
    #xprate >1.49
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
    .money <0.02
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entrega la misión Papiro simple << Orc
    .turnin 3065 >>Entrega la misión Tablilla simple << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .accept 77642 >>Acepta la misión Sabiduría de los loa
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kzan|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Acepta la misión Peones vagos
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Despoja las |cRXP_LOOT_Manzanas de Cactus|r cerca de los cactus
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
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
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Mata |cRXP_ENEMY_Familiares viles|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Mata |cRXP_ENEMY_Familiares viles|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << !Warlock
    #label Imps
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Mata |cRXP_ENEMY_Familiares viles|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Mata |cRXP_ENEMY_Escórpidos obreros|r. Despójalos para obtener |cRXP_LOOT_Colas de escórpidos obreros|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
    >>|cRXP_WARN_Usa la|r |T133486:0|t[Porra de supervisor] |cRXP_WARN_en los |r|cRXP_FRIENDLY_Peones vagos|r adormilados
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
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
    .turnin 789,2 >>Entrega la misión Aguijón de escórpido << Shaman
    .turnin 789 >>Entrega la misión Aguijón de escórpido << !Shaman
    .target Gornek
step << Shaman
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Aprende |T136026:0|t[Choque de tierra]
    .turnin 77587 >>Entrega la misión Iconos de poder << Troll Shaman
    .turnin 77585 >>Entrega la misión Iconos de poder << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acepta la misión La llamada de la tierra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 8042 >> Aprende |T136026:0|t[Choque de tierra]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Acepta la misión La llamada de la tierra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende tus hechizos de clase
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende tus hechizos de clase
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >> Aprende |T136207:0|t[Palabra de las Sombras: dolor]
    .turnin 3085 >>Entrega la misión Tablilla sacralizada
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 792 >>Entrega la misión Familiares viles
    .accept 794 >>Acepta la misión El medallón del Filo Ardiente
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .turnin 77590 >>Entrega la misión Terreno escabroso << Troll Hunter
    .turnin 77584 >>Entrega la misión Cacería por la runa << Orc Hunter
    .target Jen'shan
    .xp <4,1
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Entrega la misión Terreno escabroso << Troll Hunter
    .turnin 77584 >>Entrega la misión Cacería por la runa << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >> Aprende |T132204:0|t[Picadura de serpiente]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Frang|r
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
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
    #loop
    .goto Durotar,44.67,64.92,0
    .goto Durotar,44.67,64.92,25,0
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
    >>Despoja las |cRXP_LOOT_Manzanas de Cactus|r cerca de los cactus
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
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
	.goto Durotar,42.70,52.99,25,0
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
    >>Mata a los |cRXP_ENEMY_Acechadores viles|r. Despójalos para obtener las |cRXP_LOOT_Pezuña de acechador vil|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Realiza un Logout Skip posicionando a tu personaje en el borde de la roca hasta que parezca que flota, luego desconecta y vuelve a entrar|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> HAZ CLIC AQUÍ para un ejemplo
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >> |cRXP_WARN_Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r cerca de la flecha|r
    .target Ángel de la Resurrección
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Puedes hablar con él desde afuera o en lo alto del búnker|r
    .accept 784 >>Acepta la misión Vencer a los traidores
    .target Gar'thok
step
    #softcore
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r
    .accept 815 >>Acepta la misión Romper huevos
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Viaja hacia la torre
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Sube por la torre hacia Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acepta la misión Asume tu responsabilidad
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith BurningBladeTurnin
    .hs >>Usa tu Piedra de hogar para ir al Valle de los Retos
    .use 6948
step
    #xprate <1.5
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Entrega la misión Pico de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entrega la misión Sorpresa de manzanas de cactus de Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duokna|r
    .vendor >> Vende la Basura
    .target Duokna
    .money >0.03
step
    #season 2
    .goto Durotar,42.74,68.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Negociante de runas|r
    >>|cRXP_WARN_ASEGÚRATE DE NO VENDER EQUIPO QUE PUEDA EQUIPARSE|r
    .vendor >> |cRXP_BUY_Vende la basura y compra todas las |T134419:0|t|cRXP_WARN_[Runas]|r que necesites de él|r
    .target Rune Broker
    .skipgossip
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zureetha|r
    .turnin 794 >>Entrega la misión El medallón del Filo Ardiente
    .accept 805 >>Acepta la misión Preséntate en el Poblado Sen'jin
    .target Zureetha Fargaze
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acepta la misión Al servicio de la espiritualidad
	.train 591 >>Aprende |T135924:0|t[Punición]
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >> Acepta la misión Al servicio de la espiritualidad
    .train 17 >>Aprende |T135940:0|t[Palabra de poder: escudo]
    .target Ken'jai
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >> Aprende |T135812:0|t[Bola de Fuego]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shikrik|r y |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Aprende |T136052:0|t[Ola de sanación]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Entrega la misión La llamada de la tierra
    .accept 1517 >>Acepta la misión La llamada de la tierra
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Entrega la misión La llamada de la tierra
    .accept 1517 >>Acepta la misión La llamada de la tierra
    .target Canaga Earthcaller
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Aprende |T132212:0|t[Marca del cazador]
--    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
    .money <0.01
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
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rwag|r
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro]
    .target Rwag
    .xp <6,1
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
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .train 1454 >> Aprende |T136126:0|t[Transfusión de vida]
    .turnin 77586 >>Entrega la misión Poder robado
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .turnin 77586 >>Entrega la misión Poder robado
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .train 1454 >> Aprende |T136126:0|t[Transfusión de vida]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nartok|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras]
    .target Nartok
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
#classic
#tbc
#xprate >1.99
<< Horde
#name 7-13 Durotar
#version 1
#group RestedXP Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 13-20 Los Baldíos

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acepta la misión Un cargamento de peón
    .target Ukor
step
    #completewith next
    .subzone 367 >>Viaja al Poblado Sen'jin
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lar|r. Patrulla un poco
    .accept 786 >>Acepta la misión Frustrar los planes kolkar
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r y |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acepta la misión Presa práctica
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Acepta la misión Un espíritu responsable
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .turnin 805 >>Entrega la misión Preséntate en el Poblado Sen'jin
    .accept 808 >>Acepta la misión La calavera de Minshina
    .accept 826 >>Acepta la misión Zalazane
    .accept 823 >>Acepta la misión Informa a Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >> Entra en la gran cabaña
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compra |r |T132414:0|t[Hacha arrojadiza pesada] |cRXP_BUY_a esta vendedora|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
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
    .money >0.001
    .money <0.005
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
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
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
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +|cRXP_WARN_Usa|r |T136025:0|t[Buscar minerales] |cRXP_WARN_y extrae cualquier filón de cobre que encuentres para obtener|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r|cRXP_WARN_. Crea|r |T135248:0|t[Piedras de afilar ] |cRXP_WARN_con ellas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    >>Mata |cRXP_ENEMY_Braceros Kolkar|r y |cRXP_ENEMY_Avanzadas Kolkar|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de centauro cortada|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #completewith MainIsle
    >>Mata |cRXP_ENEMY_Reptadores|r y |cRXP_ENEMY_Makruras|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r y sus |cRXP_LOOT_Ojos|r
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith MainIsle
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #softcore
    #completewith MainIsle
    >>Despoja los |cRXP_PICK_Huevos de colazote|r del suelo
    >>|cRXP_WARN_Generalmente están protegidos por un|r |cRXP_ENEMY_Colazote Garrasangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label MainIsle
    .goto Durotar,66.94,84.41,150 >>Nada a la isla principal
    .isOnQuest 826
step
    #completewith ZalazaneKill1
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
    #label ZalazaneKill1
    .goto Durotar,67.4,87.8
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Guarda tu|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Shaman
    >>|cRXP_WARN_Guarda tu|r |T132155:0|t[Gubia] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>Necesitas un |T135933:0|t[Talismán de comprensión] de un |cRXP_FRIENDLY_Vendedor de componentes|r para usar el objeto
    .train 401765 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: DASCAC HEDED SEOR|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos de Escarcha]
    .use 203753
step
    #completewith TrollsDone
    >>Mata |cRXP_ENEMY_Tigres de Durotar|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith TigerFur
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith CrawlMakru
    >>Despoja los |cRXP_PICK_Huevos de colazote|r del suelo
    >>|cRXP_WARN_Generalmente están protegidos por un|r |cRXP_ENEMY_Colazote Garrasangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label TrollsDone
    #loop
    .goto Durotar,67.23,88.76,0
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
step << Priest
    #season 2
    #loop
    .goto Durotar,67.23,88.76,0
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
    >>Mata a los |cRXP_ENEMY_Trols vudú|r. Despójalos para obtener |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudadela profanada|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step
    #label TigerFur
    #loop
    .goto Durotar,59.79,83.44,0
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
    #label CrawlMakru
    #loop
    .goto Durotar,62.88,93.48,0
    .goto Durotar,59.48,86.33,0
    .goto Durotar,59.92,80.80,0
    .goto Durotar,57.90,78.13,0
    .goto Durotar,53.27,83.05,0
    .goto Durotar,62.88,93.48,50,0
    .goto Durotar,59.48,86.33,50,0
    .goto Durotar,59.92,80.80,50,0
    .goto Durotar,57.90,78.13,50,0
    .goto Durotar,53.27,83.05,50,0
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    .goto Durotar,59.86,89.64,0
    .goto Durotar,59.51,83.64,0
    .goto Durotar,60.94,78.75,0
    .goto Durotar,63.54,74.33,0
    .goto Durotar,67.04,71.40,0
    .goto Durotar,59.86,89.64,40,0
    .goto Durotar,59.51,83.64,40,0
    .goto Durotar,60.94,78.75,40,0
    .goto Durotar,63.54,74.33,40,0
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
    #softcore
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r, o corre de vuelta
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Viaja al Poblado Sen'jin
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
    .turnin 826,2 >>Entrega la misión Zalazane << Shaman
    .turnin 826 >>Entrega la misión Zalazane << !Shaman
    .target +Master Gadrin
    .goto Durotar,55.95,74.73
    .turnin 818 >>Entrega la misión Un espíritu responsable
    .target +Master Vornal
    .goto Durotar,55.95,74.39
    .turnin 817 >>Entrega la misión Presa práctica
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
    .train 402852,1
step << Priest
    #season 2
    #completewith TravelToTiragarde
    .aura 418459 >>|cRXP_WARN_Ahora tienes que encontrar un Sacerdote no-muerto con un buff de Loa. Tienes que arrodillarte ante él y él tiene que usar /pray contigo.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una Ciudadela Profanada|r] |cRXP_WARN_para aprender|r |T237570:0|t[Homúnculos]
    .itemcount 205947,1
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_Asigna a tus barras de acción|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_y|r |T134712:0|t[Pegamento muy pegajoso]|cRXP_WARN_. Guárdalos para situaciones de emergencia|r
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ba'so|r para recibir |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r]
    >>|cRXP_WARN_¡Está en sigilo!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilación|r] |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Viaja a Cerrotajo
step
    #hardcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Puedes hablar con él desde afuera o en lo alto del búnker|r
    .accept 784 >>Acepta la misión Vencer a los traidores
    .target Gar'thok
step
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Viaja hacia la torre
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Sube por la torre hacia Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acepta la misión Asume tu responsabilidad
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krunn|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    >>|cRXP_WARN_Esto te permitirá encontrar|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_de nodos para fabricar|r |T135248:0|t[Piedras de afilar] |cRXP_WARN_(+2 Daño con arma durante 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #softcore
    #xprate <1.5
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Viaja al Fuerte de Tiragarde
    >>|cRXP_WARN_Mata enemigos por el camino|r
    .isOnQuest 784
step
    #softcore
    #xprate >1.49
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >> Viaja al Fuerte de Tiragarde
    .isOnQuest 784
    .maxlevel 11
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Ten cuidado si el|r |cRXP_ENEMY_Comandante de vigilancia Zalafil|r |cRXP_WARN_ha aparecido, es un raro de nivel 9. Es posible que tengas que usar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si tienes una|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Ve al segundo piso del castillo
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Mata a los |cRXP_ENEMY_Navegantes|r y a los |cRXP_ENEMY_Marinos|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
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
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
    .maxlevel 11
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
    .maxlevel 11
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
    .maxlevel 11
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
    .maxlevel 11
step
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
    .maxlevel 11
step << Priest
    #season 2
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mata a los |cRXP_ENEMY_Navegantes|r y a los |cRXP_ENEMY_Marinos|r. Despójalos para obtener el |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .maxlevel 11
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Arrodíllate ante el |cRXP_PICK_Altar loa|r y habla con la |cRXP_FRIENDLY_Loa serpiente|r para obtener el buff |T136077:0|t[Meditaciones sobre los loa]
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Usa el|r |T136222:0|t[|cRXP_FRIENDLY_Recuerdo de un propósito oscuro|r] |cRXP_WARN_para aprender|r |T237514:0|t[Plaga del Vacío]
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >> Muere en la torre norte fuera del Fuerte de Tiragarde y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #hardcore
    #completewith next
    .subzone 362 >>Viaja a Cerrotajo
step
    #xprate <2.1
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Entrega la misión Informa a Orgnil
    .accept 806 >>Acepta la misión Oscuras tormentas
    .target Orgnil Soulscar
step
    #xprate >2.09
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Entrega la misión Informa a Orgnil
    .target Orgnil Soulscar
step
    #xprate <2.1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Entrega la misión Vencer a los traidores
    .turnin 830 >>Entrega la misión Las órdenes del almirante
    .accept 831 >>Acepta la misión Las órdenes del almirante << !Mage !Shaman
    .accept 837 >>Acepta la misión Invasión
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate <2.1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Acepta la misión Las órdenes del almirante << !Mage !Shaman
    .accept 837 >>Acepta la misión Invasión
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    #xprate >2.09
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Entrega la misión Vencer a los traidores
    .turnin 830 >>Entrega la misión Las órdenes del almirante
    .accept 831 >>Acepta la misión Las órdenes del almirante
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate >2.09
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Acepta la misión Las órdenes del almirante
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r
    .turnin 815 >>Entrega la misión Romper huevos
    .target Cook Torka
    .isQuestComplete 815
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
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el|r |T132414:0|t[Hacha arrojadiza pesada]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
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
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_y un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a este vendedor|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con |cRXP_FRIENDLY_Ghrawt|r. Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    .vendor >> Vende la Basura
    .home >> Establece tu Piedra de hogar en Cerrotajo
    .turnin 2161 >>Entrega la misión Un cargamento de peón
    .target Innkeeper Grosk
    .bindlocation 362
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
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .accept 2983 >>Acepta la misión La llamada del fuego
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Acepta la misión Uzzek, el veterano
    .trainer >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>Acepta la misión Las invocaciones de Gan'rul
    .trainer >> Aprende tus hechizos de clase
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kitha|r y compra |T133738:0|t[Descarga de Fuego Rango 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >> Acepta la misión Maleficio de Debilidad << Troll
    .accept 5660 >> Acepta la misión Toque de debilidad << Undead
    .trainer >> Aprende tus hechizos de clase
    .target Tai'jin
step << Rogue
    #xprate >1.49
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaplak|r
    .train 674 >> Aprende tus hechizos de clase
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>Ve dentro del búnker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6062 >>Acepta la misión Domesticar la bestia
    .trainer >> Aprende tus hechizos de clase
    .target Thotar
step << Hunter
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
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
    #xprate >1.49
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step
    #xprate <2.1
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Mata |cRXP_ENEMY_Polvoroso Crines de Acero|r y |cRXP_ENEMY_Guardias de batalla Crines de Acero|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Warrior
    #season 2
    #loop
    .goto Durotar,49.22,48.96,0
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
    >>Mata a los |cRXP_ENEMY_Jabaespines Crines de Acero|r y a los |cRXP_ENEMY_Exploradores Crines de Acero|r. Despójalos para obtener una |cRXP_LOOT_Cabeza de jabaespín cortada|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step << Warrior/Shaman
    #xprate <2.1
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step
    #xprate >2.09
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Entrega la misión Uzzek, el veterano
    .accept 1498 >>Acepta la misión Camino de defensa
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entrega la misión La llamada del fuego
    .accept 1524 >>Acepta la misión La llamada del fuego
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    .goto Durotar,39.16,58.56,10 >> Sigue el camino montaña arriba hacia |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Ten cuidado de no caer de la montaña, el camino es muy estrecho. Podrías morir si caes|r
step << Shaman
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entrega la misión La llamada del fuego
    .accept 1525 >>Acepta la misión La llamada del fuego
    .target Telf Joolam
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Entra en Monte del Trueno y mata a los |cRXP_ENEMY_Lomorrayos|r. Despójalos para obtener sus |cRXP_ENEMY_Escamas|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << !Warrior
    #xprate <2.1
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Salta a Monte del Trueno << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Retira tu|r |T136218:0|t[Diablillo] |cRXP_WARN_haciendo clic derecho en su marco de unidad y seleccionando retirar|r << Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Usa|r |T136095:0|t[Retirar mascota] |cRXP_WARN_y después salta dentro de Monte del Trueno|r << Hunter
step
    #xprate <2.1
    #softcore
    .goto Durotar,42.13,26.67
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r y despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ten cuidado. Mata al|r |cRXP_ENEMY_Fanático Filo Ardiente|r que patrulla |cRXP_WARN_y a los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_en la parte trasera antes de atraerlo|r
    >>|cRXP_WARN_Atráelo hacia atrás, hacia los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_que acabas de matar. De lo contrario, podrías traer enemigos Filo Ardiente adicionales|r
    >>|cRXP_WARN_No tengas miedo de morir por la |cRXP_LOOT_Garra|r ya que resucitarás en el |cRXP_FRIENDLY_Ángel de la Resurrección|r después|r
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Rogue
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T136026:0|t[Choque de tierra] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Shaman
    >>|cRXP_WARN_Puedes lanzar|r |T136071:0|t[Polimorfia] |cRXP_WARN_sobre|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_y matar al|r |cRXP_ENEMY_Diablillo|r |cRXP_WARN_primero|r << Mage
    >>|cRXP_WARN_Mata al diablillo primero|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << !Warlock
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor], |T133728:0|t[Piedra de salud menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #xprate <2.1
    #hardcore
    .goto Durotar,42.13,26.67
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r y despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ten cuidado. Mata al|r |cRXP_ENEMY_Fanático Filo Ardiente|r que patrulla |cRXP_WARN_y a los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_en la parte trasera antes de atraerlo|r
    >>|cRXP_WARN_Atráelo hacia atrás, hacia los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_que acabas de matar. De lo contrario, podrías traer enemigos Filo Ardiente adicionales|r
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Rogue
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T136026:0|t[Choque de tierra] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Shaman
    >>|cRXP_WARN_Puedes lanzar|r |T136071:0|t[Polimorfia] |cRXP_WARN_sobre|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_y matar al|r |cRXP_ENEMY_Diablillo|r |cRXP_WARN_primero|r << Mage
    >>|cRXP_WARN_Mata al diablillo primero|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << !Warlock
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor], |T133728:0|t[Piedra de salud menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step
    #xprate <2.1
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isQuestComplete 806
step
    #xprate <2.1
    #hardcore
    .goto Durotar,39.20,32.02,60 >> Ábrete paso luchando para salir de Monte del Trueno
    .isQuestComplete 806
step
    #xprate <2.1
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Viaja a Rezlak
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acepta la misión Las arpías Viento Seco
    .target Rezlak
step << Warrior
    #xprate <2.1
    #season 2
    #completewith next
    >>Mata |cRXP_ENEMY_Arpías Viento Seco|r. Despójalas para obtener una |cRXP_LOOT_Cabeza de arpía cortada|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Despoja los |cRXP_PICK_Sacos de provisiones robado|r del suelo
    .complete 834,1 --Sack of Supplies (5)
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Mata |cRXP_ENEMY_Arpías Viento Seco|r. Despójalas para obtener una |cRXP_LOOT_Cabeza de arpía cortada|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entrega la misión Las arpías Viento Seco
    .target Rezlak
step << Shaman
    #xprate <2.1
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Viaja hacia la Cueva Viento Seco
    >>|cRXP_WARN_Viaja al este alrededor de las colinas para alcanzar la cueva. Sigue la flecha|r
step << Shaman
    #xprate <2.1
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mata |cRXP_ENEMY_Cultores Filo Ardiente|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Mage
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r dentro de la Cueva Roca del Cráneo. Despójalos para obtener la |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step << Warrior/Shaman
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step << Warrior
    #xprate >2.09
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entrega la misión Camino de defensa
    .accept 1502 >>Acepta la misión Thun'grim Vistafuego
    .target Uzzek
step
    #xprate >2.09
    #softcore
    #completewith
    .goto The Barrens,50.72,32.61
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .subzoneskip 380
step
    #xprate >2.09
    #hardcore
    #completewith
    .goto The Barrens,52.34,29.27,150 >> Viaja a El Cruce
step
    #xprate >2.09
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acepta la misión Interrupción de los ataques
    .accept 5041 >>Acepta la misión Suministros para El Cruce
    .target Thork
step
    #xprate >2.09
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acepta la misión Entrega de carne a Orgrimmar
    .target Zargh
step
    #xprate >2.09
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >> Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >> Consigue la ruta de vuelo de El Cruce
    .turnin 6365 >>Entrega la misión Entrega de carne a Orgrimmar
    .accept 6384 >>Acepta la misión Un viaje a Orgrimmar
    .target Devrak
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar

    --Mage/Shaman dont need to go ORG 100% route
step
    #xprate >2.09
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entrega la misión Un viaje a Orgrimmar
    .accept 6385 >>Acepta la misión Doras, maestro de jinetes del viento
    .target Innkeeper Gryshka
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compra un |r |T135419:0|t[Hacha arrojadiza afilada] |cRXP_BUY_a este vendedor|r
    .collect 3135,200 --Sharp Throwing Axe (200)
    .vendor >> Vende tu basura
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith AdmiralTurnin
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Hacha arrojadiza afilada]
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step
    #xprate >2.09
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Entrega la misión Doras, maestro de jinetes del viento
    .accept 6386 >> Acepta la misión Regresar a El Cruce
    .target Doras
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #completewith AdmiralTurnin
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
    .zoneskip Orgrimmar
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >>Entrega la misión Maleficio de Debilidad
    .trainer >>Aprende tus hechizos de clase
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >>Entrega la misión Maleficio de Debilidad
    .trainer >>Aprende tus hechizos de clase
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >> Acepta la misión Mano Destrozada << Orc Rogue/Troll Rogue
    .target Therzok
step << Rogue
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Compra uno o dos|r |T135640:0|t[Jambiya] |cRXP_BUY_a este vendedor|r
    .collect 2207,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Kareth
step << Rogue
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equipa la|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Despoja el |cRXP_PICK_Cofre polvoriento|r para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r]
    >>|cRXP_WARN_Se encuentra en La Calle Mayor en el piso superior|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión|r] |cRXP_WARN_para aprender|r |T135610:0|t[Entre los ojos]
    .use 204174
    .itemcount 204174,1
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entrega la misión Las órdenes del almirante
    .target Nazgrel
step
    #xprate >2.09
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entrega la misión Las órdenes del almirante
    .target Nazgrel
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
step << Shaman/Hunter
    #season 2
    .goto Orgrimmar,38.923,38.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zor Árbol Solitario|r
    .train 409580 >>|cRXP_WARN_Compra y usa el|r |T133739:0|t|cRXP_LOOT_[Tratado sobre Corazón del león]|r |cRXP_WARN_para aprender|r |T132185:0|t[Corazón del león] << Hunter
    .train 425336 >>|cRXP_WARN_Compra y usa la|r |T133747:0|t|cRXP_LOOT_[Revelación de Ira del chamán]|r |cRXP_WARN_para aprender|r |T136088:0|t[Ira del chamán] << Shaman
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .target Zor Lonetree
    .xp <10,1
    .money <0.5
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamja|r y |cRXP_FRIENDLY_Gru'ark|r
    +Mata a |cRXP_ENEMY_Gru'ark|r cuando se vuelva hostil
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamja|r
    >>Recibe de ella la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Asalto frenético|r]
    .use 204716
    .itemcount 204716,1
step << Troll Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Aprende el uso de Bastones
    .target Hanashi
    .money <0.100
step << Troll Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un |r |T135154:0|t[Bastón de intendente] |cRXP_BUY_a este vendedor|r
    .collect 854,1,1502,1 --Collect Quarter Staff (1)
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Zendo'jian
    .train 227,3
step << Troll Warrior
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 227,3
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
    #season 0
    #completewith RazorTurnins2
    +|cRXP_WARN_Pon|r |T132162:0|t[Adiestramiento de bestias]|cRXP_WARN_(bajo la pestaña General),|r |T132163:0|t[Revivir mascota]|cRXP_WARN_, y|r |T132165:0|t[Alimentar mascota] |cRXP_WARN_en tus Barras de acciones|r
    >>|cRXP_WARN_Recuerda entrenar a tu mascota siempre que obtenga Puntos de entrenamiento mediante|r |T132162:0|t[Adiestramiento de bestias]
step << Hunter
    #season 2
    #completewith End
    +|cRXP_WARN_Pon|r |T132162:0|t[Adiestramiento de bestias]|cRXP_WARN_(bajo la pestaña General),|r |T132163:0|t[Revivir mascota]|cRXP_WARN_, y|r |T132165:0|t[Alimentar mascota] |cRXP_WARN_en tus Barras de acciones|r
    >>|cRXP_WARN_Recuerda entrenar a tu mascota siempre que obtenga Puntos de entrenamiento mediante|r |T132162:0|t[Adiestramiento de bestias]
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo laminado] |cRXP_BUY_a este vendedor|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado] |cRXP_WARN_cuando alcances el nivel 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul Ojosangre|r
    .turnin 1506 >>Entrega la misión Las invocaciones de Gan'rul
    .accept 1501 >>Acepta la misión Criatura Abisal
    .target Gan'rul Bloodeye
step << Warlock
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >> Entra en Sima Ígnea
step << Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Espíritu Ángel de la Resurrección|r
    .isOnQuest 1501
step << Warlock
    #hardcore
    #completewith SkullRockWarlock
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
step << Warlock
    #label SkullRockWarlock
    .goto Durotar,54.95,9.61
    .subzone 817 >>Viaja a Roca del Cráneo
    .isOnQuest 1501
step << Warlock
    #completewith VergaTablet
    >>Mata a |cRXP_ENEMY_Gazz'uz|r si ha aparecido. Despójalo para obtener |T134085:0|t[|cRXP_LOOT_Ojo de la Sombra ardiente|r]. Úsalo para iniciar la misión
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Acepta la misión Sombras Ardientes
    .unitscan Gazz'uz
step << Warlock
    #completewith next
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r. Despójalos para obtener una |cRXP_LOOT_Insignia de Teniente|r
    >>|cRXP_WARN_Omite esto si tienes mala suerte con el botín|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warlock
    #label VergaTablet
    .goto Durotar,54.16,8.95,15,0
    .goto Durotar,51.62,9.76
    >>Despoja el |cRXP_PICK_Alijo del Filo Ardiente|r en el fondo de la cueva para obtener una |cRXP_LOOT_Tablilla de Vergua|r
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Espíritu Ángel de la Resurrección|r
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
    .zoneskip Orgrimmar
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entrega la misión Enemigos ocultos
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5726
step << Warlock
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul Ojosangre|r
    .turnin 1501 >>Entrega la misión Criatura Abisal
    .accept 1504 >>Acepta la misión El vínculo
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .accept 832 >>Acepta la misión Sombras Ardientes
    .turnin 832 >>Entrega la misión Sombras Ardientes
    .target Neeru Fireblade
    .skipgossip
    .itemcount 4903,1
step << Warlock
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isQuestTurnedIn 5726
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_Usa los|r |T134416:0|t[Glifos de Invocación] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6284
step << Warlock
    .goto Orgrimmar,49.45,50.02
    >>Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1504,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul Ojosangre|r
    .turnin 1504 >>Entrega la misión El vínculo
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entrega la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    .destroy 14544 >>|cRXP_WARN_Destruye la|r |T134417:0|t[Insignia de Teniente] |cRXP_WARN_ya que ya no la necesitas|r
step << Shaman/Mage/Hunter
    #xprate >2.09
    #completewith next
    .goto Durotar,45.54,12.14
    .zone Durotar >>Sal de Orgrimmar
step << Hunter
    #xprate >2.09
    #completewith next
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>Domestica a un |cRXP_ENEMY_Escórpido Venocola|r
    >>|cRXP_WARN_Esto te permitirá aprender|r |T132140:0|t[Zarpa Rango 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate >2.09
    #completewith next
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Viaja hacia la Cueva Viento Seco
    >>|cRXP_WARN_Viaja al este alrededor de las colinas para alcanzar la cueva. Sigue la flecha|r
step << Shaman
    #xprate >2.09
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mata |cRXP_ENEMY_Cultores Filo Ardiente|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Mage
    #xprate >2.09
    #season 2
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Mata a los |cRXP_ENEMY_Orcos Filo Ardiente|r dentro de la Cueva Roca del Cráneo. Despójalos para obtener la |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: MALVA VALI|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step
    #xprate >2.09
    .hs >> Usa tu Piedra de hogar para ir a El Cruce
    .use 6948
    .subzoneskip 380
    .bindlocation 380,1
    .cooldown item,6948,>0
step
    #xprate >2.09
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >> Vuela a El Cruce
    .target Doras
    .subzoneskip 380
    .cooldown item,6948,<0
step
    #xprate <2.1
    #completewith RazorTurnins2
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <2.1
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    .vendor >> Vende la Basura
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #xprate <2.1
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vahi|r
    >>Entrega las |cRXP_LOOT_Cabezas|r que has recogido a cambio de |T134455:0|t[Fragmentos de runas]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .use 204688 >>Usa los |T134455:0|t[Fragmentos de runas] para crear |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .train 403475 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1
step
    #xprate <2.1
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r y |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Entrega la misión Oscuras tormentas
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 837 >>Entrega la misión Invasión
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Warrior
    #xprate <2.1
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <2.1
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 8050 >> Aprende tus hechizos de clase
    .target Swart
    .xp <12,1
step << Hunter
    #xprate <2.1
    #completewith next
    .goto Durotar,36.29,47.38,0
    .goto Durotar,36.29,52.09,0
    .goto Durotar,36.29,47.38,40,0
    +Domestica a un |cRXP_ENEMY_Escórpido Venocola|r
    >>|cRXP_WARN_Esto te permitirá aprender|r |T132140:0|t[Zarpa Rango 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step
    #xprate <2.1
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << Warrior
    #xprate <2.1
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entrega la misión Camino de defensa
    .accept 1502 >>Acepta la misión Thun'grim Vistafuego
    .target Uzzek
step
    #optional
    #label End
]])
