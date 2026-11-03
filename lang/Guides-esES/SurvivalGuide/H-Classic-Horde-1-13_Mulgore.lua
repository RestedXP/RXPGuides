if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Horde
#name 1-6 Tauren
#version 1
#group RestedXP Guía de Supervivencia (H)
#subgroup RXP Guía de Supervivencia 1-20
#defaultfor Tauren
#next 6-13 Tauren

step << !Tauren
    #completewith next
    .goto Mulgore,44.92,77.12
    +|cRXP_WARN_Has seleccionado una guía diseñada para Tauren. Esta zona NO te funcionará bien porque te faltará una de las cadenas de misiones principales que está restringida solo para Tauren. Se recomienda que elijas la misma zona de inicio en la que empiezas|r
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grull|r
    .accept 747 >>Acepta la misión Empieza la caza
    .target Grull Hawkwind
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Jefe Viento de Halcón|r
    .accept 752 >>Acepta la misión Una humilde contribución
    .target Chief Hawkwind
step << Warrior/Shaman
    #completewith next
    .goto Mulgore,46.05,75.32,30,0
    +|cRXP_WARN_Mata |cRXP_ENEMY_Zancudos de llanura|r. Despójalos hasta que tengas 10 cobres en valor de objetos para vender (incluyendo tu armadura)|r << Warrior/Shaman
    .mob Plainstrider
    .money >0.01
step << Warrior/Shaman
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vende la Basura
    .target Kawnie Softbreeze
    .money >0.01
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harutt|r
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target Harutt Thunderhorn
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meela|r
    .train 8017 >>Aprende |T136086:0|t[Arma Muerdepiedras]
    .target Meela Dawnstrider
step
    #completewith next
    >>Mata |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener su |cRXP_LOOT_Carne|r y |cRXP_LOOT_Plumas|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,50.03,81.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Abuela Viento de Halcón|r
    .turnin 752 >>Entrega la misión Una humilde contribución
    .accept 753 >>Acepta la misión Una humilde contribución
    .target Greatmother Hawkwind
step
    .goto Mulgore,50.22,81.37
    >>Despoja la |cRXP_LOOT_Jarra de agua|r sobre el pozo detrás de |cRXP_FRIENDLY_Viento de Halcón|r
    .complete 753,1 --Water Pitcher (1)
step
    #loop
    .goto Mulgore,47.36,83.05,0
    .goto Mulgore,50.23,79.38,50,0
    .goto Mulgore,51.02,78.68,50,0
    .goto Mulgore,50.85,75.68,50,0
    .goto Mulgore,48.43,77.18,50,0
    .goto Mulgore,47.10,76.54,50,0
    .goto Mulgore,45.77,80.39,50,0
    .goto Mulgore,45.56,82.39,50,0
    .goto Mulgore,47.36,83.05,50,0
    >>Mata |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener su |cRXP_LOOT_Carne|r y |cRXP_LOOT_Plumas|r
    .complete 747,1 --Plainstrider Meat (7)
    .complete 747,2 --Plainstrider Feather (7)
    .mob Plainstrider
step
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grull|r
    .turnin 747,1 >>Entrega la misión Empieza la caza << Druid
    .turnin 747 >>Entrega la misión Empieza la caza << !Druid
    .accept 3091 >>Acepta la misión La nota simple << Warrior
    .accept 3092 >>Acepta la misión La nota con grabados << Hunter
    .accept 3093 >>Acepta la misión La nota con runas grabadas << Shaman
    .accept 3094 >>Acepta la misión La nota verdeante << Druid
    .accept 750 >>Acepta la misión La caza sigue
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kawnie|r
    >>|cRXP_BUY_Compra|r |T132384:0|t[Perdigones ligeros] |cRXP_BUY_a esta vendedora|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .vendor >> Vende la Basura
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.18,76.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Jefe Viento de Halcón|r
    .turnin 753 >>Entrega la misión Una humilde contribución
    .accept 755 >>Acepta la misión Los ritos de la Madre Tierra
    .target Chief Hawkwind
step << Shaman
    .goto Mulgore,44.07,77.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Marjak|r|cRXP_BUY_. Compra un|r |T135139:0|t[Bastón corto] |cRXP_BUY_a este vendedor|r
    .collect 2132,1,750,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Marjak
step << Shaman
    #optional
    #completewith RitesoftheEarthmother
    +|cRXP_WARN_Equipa el|r |T135139:0|t[Bastón corto]
    .use 2132
    .itemcount 2132,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
step
    #completewith next
    >>Mata |cRXP_ENEMY_Puma monteses|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #label RitesoftheEarthmother
    .goto Mulgore,42.58,92.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vidente Lenguagris|r
    >>|cRXP_WARN_Mata enemigos por el camino|r
    .turnin 755 >>Entrega la misión Los ritos de la Madre Tierra
    .accept 757 >>Acepta la misión Rito de la fuerza
    .target Seer Graytongue
step
   #loop
    .goto Mulgore,44.60,90.86,0
    .goto Mulgore,43.21,89.26,50,0
    .goto Mulgore,44.64,91.58,50,0
    .goto Mulgore,45.82,90.52,50,0
    .goto Mulgore,46.35,91.45,50,0
    .goto Mulgore,48.05,91.83,50,0
    .goto Mulgore,49.25,90.69,50,0
    .goto Mulgore,50.98,90.37,50,0
    .goto Mulgore,49.10,89.50,50,0
    .goto Mulgore,47.06,88.64,50,0
    .goto Mulgore,45.06,89.89,50,0
    .goto Mulgore,44.60,90.86,50,0
    >>Mata |cRXP_ENEMY_Puma monteses|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres|r
    .complete 750,1 --Mountain Cougar Pelt (10)
    .mob Mountain Cougar
step
    #loop
	.goto Mulgore,45.56,87.95,40,0
	.goto Mulgore,46.92,87.84,40,0
	.goto Mulgore,48.67,86.83,40,0
	.goto Mulgore,50.65,85.87,40,0
	.goto Mulgore,51.01,83.71,40,0
	.goto Mulgore,52.06,81.53,40,0
	.goto Mulgore,51.87,79.58,40,0
	.goto Mulgore,51.67,77.39,40,0
	.goto Mulgore,51.95,75.16,40,0
	.goto Mulgore,50.32,76.33,40,0
	.goto Mulgore,48.85,75.82,40,0
	.goto Mulgore,47.41,75.30,40,0
	.goto Mulgore,46.80,78.21,40,0
	.goto Mulgore,45.84,80.41,40,0
	.goto Mulgore,45.03,82.15,40,0
	.goto Mulgore,44.09,83.89,40,0
	.goto Mulgore,43.90,86.08,40,0
    .xp 3+1150 >> Mata enemigos hasta alcanzar 1150+/1400xp
    .mob Plainstrider
step << Warrior/Druid
    #completewith GrullTurnin2
    +|cRXP_WARN_Mata |cRXP_ENEMY_Zancudos de llanura|r. Despójalos hasta que tengas 2 platas en valor de objetos para vender|r
    .mob Plainstrider
	.money >0.02
step << !Warrior !Druid
    #completewith next
    +|cRXP_WARN_Mata |cRXP_ENEMY_Zancudos de llanura|r. Despójalos hasta que tengas 1 plata en valor de objetos para vender|r
    .mob Plainstrider
    .money >0.01
step
    #label GrullTurnin2
    .goto Mulgore,44.92,77.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grull|r
    .turnin 750 >>Entrega la misión La caza sigue
    .accept 780 >>Acepta la misión Los jabaguerreros
    .target Grull Hawkwind
step
    .goto Mulgore,45.30,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kawnie|r
    .vendor >> Vende la Basura
    .target Kawnie Softbreeze
step
    .goto Mulgore,44.67,76.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valiente|r
    .accept 3376 >>Acepta la misión La cabeza de Cornapunta
    .target Brave Windfeather
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entrega la misión La nota simple
    .train 100 >>Aprende |T132337:0|t[Cargar]
    .train 772 >>Aprende |T132155:0|t[Desgarrar]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harutt|r
    .turnin 3091 >>Entrega la misión La nota simple
    .train 772 >>Aprende |T132155:0|t[Desgarrar]
    .target Harutt Thunderhorn
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanka|r
    .turnin 3092 >>Entrega la misión La nota con grabados
    .train 1978 >>Aprende |T132204:0|t[Picadura de serpiente]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gart|r
    .turnin 3094 >>Entrega la misión La nota verdeante
    .train 8921 >>Aprende |T136096:0|t[Fuego lunar]
    .target Gart Mistrunner
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pluma de Cuervo|r
    .accept 1519 >>Acepta la misión La llamada de la tierra
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meela|r
    .turnin 3093 >>Entrega la misión La nota con runas grabadas
    .train 8042 >>Aprende |T136026:0|t[Choque de tierra]
    .target Meela Dawnstrider
step
    #loop
    .goto Mulgore,55.99,85.46,0
    .goto Mulgore,52.70,79.32,50,0
    .goto Mulgore,54.19,79.83,50,0
    .goto Mulgore,55.73,80.28,50,0
    .goto Mulgore,56.48,81.67,50,0
    .goto Mulgore,55.63,83.86,50,0
    .goto Mulgore,56.03,85.53,50,0
    .goto Mulgore,55.80,87.71,50,0
    .goto Mulgore,56.72,89.27,50,0
    .goto Mulgore,57.92,89.27,50,0
    .goto Mulgore,57.69,86.77,50,0
    .goto Mulgore,57.31,85.39,50,0
    .goto Mulgore,55.99,85.46,50,0
    >>Mata |cRXP_ENEMY_Jabaguerreros|r. Despójalos para obtener sus |cRXP_LOOT_Costillares|r y |cRXP_LOOT_Hocicos|r
    .complete 780,2 --Battleboar Flank (8)
    .complete 780,1 --Battleboar Snout (8)
    .mob Battleboar
step
    #completewith next
    .goto Mulgore,59.67,83.33,30 >>Atraviesa la cueva
step
    #completewith DirtyMap
    >>Mata |cRXP_ENEMY_Jabaespines Erizapúas|r. Despójalos para obtener sus |cRXP_LOOT_Cinturones|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #completewith DirtyMap
    >>Mata |cRXP_ENEMY_Chamanes Erizapúas|r. Despójalos para obtener sus |cRXP_LOOT_Ungüentos|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    .goto Mulgore,60.54,81.04,35,0
    .goto Mulgore,62.35,81.27,35,0
    .goto Mulgore,62.49,78.78,35,0
    .goto Mulgore,64.71,77.67
    >>Mata al |cRXP_ENEMY_Jefe Cornapunta Mantospina|r dentro de la cabaña grande. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 3376,1 --Chief Sharptusk Thornmantle's Head (1)
    .mob Chief Sharptusk Thornmantle
step
    #label DirtyMap
    .goto Mulgore,63.24,82.70
    >>Viaja al interior de la cueva. Despoja el |T134269:0|t[|cRXP_PICK_Mapa manchado|r] del suelo y úsalo para iniciar la misión
    .collect 4851,1,781 --Collect Dirt-Stained Map
    .accept 781 >>Acepta la misión Ataque al Campamento Narache
    .use 4851
step << Shaman
    #completewith next
    >>Mata |cRXP_ENEMY_Chamanes Erizapúas|r. Despójalos para obtener sus |cRXP_LOOT_Ungüentos|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #loop
    .goto Mulgore,63.93,78.34,0
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34,40,0
    >>Mata |cRXP_ENEMY_Jabaespines Erizapúas|r. Despójalos para obtener sus |cRXP_LOOT_Cinturones|r
    .complete 757,1 --Bristleback Belt (12)
    .mob Bristleback Quilboar
step << Shaman
    #loop
    .goto Mulgore,63.86,80.14,0
    .goto Mulgore,63.74,81.18,40,0
    .goto Mulgore,63.86,79.97,40,0
    .goto Mulgore,65.00,78.60,40,0
    .goto Mulgore,66.05,77.83,40,0
    .goto Mulgore,65.93,77.10,40,0
    .goto Mulgore,63.57,76.25,40,0
    .goto Mulgore,63.86,80.14,40,0
    >>Mata |cRXP_ENEMY_Chamanes Erizapúas|r. Despójalos para obtener sus |cRXP_LOOT_Ungüentos|r
    .complete 1519,1 --Ritual Salve (2)
    .mob Bristleback Shaman
step
    #loop
    .goto Mulgore,62.27,82.03,0
    .goto Mulgore,63.98,80.08,40,0
    .goto Mulgore,64.31,78.29,40,0
    .goto Mulgore,63.67,76.18,40,0
    .goto Mulgore,62.67,76.10,40,0
    .goto Mulgore,61.34,77.13,40,0
    .goto Mulgore,61.72,78.98,40,0
    .goto Mulgore,62.29,81.53,40,0
    .goto Mulgore,60.82,80.81,40,0
    .goto Mulgore,60.08,81.93,40,0
    .goto Mulgore,61.03,82.32,40,0
    .goto Mulgore,62.27,82.03,40,0
    .xp 5+880 >> Mata enemigos hasta alcanzar 880+/2800xp << !Shaman
    .xp 5 >> Mata enemigos hasta subir al nivel 5 << Shaman
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir al Campamento Narache
    .use 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Valiente|r y |cRXP_FRIENDLY_Viento de Halcón|r << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grull|r, |cRXP_FRIENDLY_Valiente|r, |cRXP_FRIENDLY_Vidente|r y |cRXP_FRIENDLY_Viento de Halcón|r << Shaman
    .turnin 780 >>Entrega la misión Los jabaguerreros
    .target +Grull Hawkwind
    .goto Mulgore,44.92,77.12
    .turnin 3376 >>Entrega la misión La cabeza de Cornapunta
    .target +Brave Windfeather
    .goto Mulgore,44.67,76.68
    .turnin 1519 >>Entrega la misión La llamada de la tierra << Shaman
    .accept 1520 >>Acepta la misión La llamada de la tierra << Shaman
    .target +Seer Ravenfeather << Shaman
    .goto Mulgore,44.73,76.18 << Shaman
    .turnin 781 >>Entrega la misión Ataque al Campamento Narache
    .turnin 757 >>Entrega la misión Rito de la fuerza
    .accept 763 >>Acepta la misión Los ritos de la Madre Tierra
    .target +Chief Hawkwind
    .goto Mulgore,44.18,76.07
step << Shaman
    #completewith CallofEarth
    #label Rock
    .goto Mulgore,53.74,80.15,30 >> Viaja hacia la roca
step << Shaman
    #completewith next
    #requires Rock
    .cast 8202 >>|cRXP_WARN_Usa la|r |T134743:0|t[Sapta de tierra]
    .use 6635
step << Shaman
    .goto Mulgore,53.74,80.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Manifestación|r
    .turnin 1520 >>Entrega la misión La llamada de la tierra
    .accept 1521 >>Acepta la misión La llamada de la tierra
    .target Minor Manifestation of Earth
step << Shaman
    .goto Mulgore,44.73,76.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Canaga|r
    .turnin 1521 >>Entrega la misión La llamada de la tierra
    .target Seer Ravenfeather
step << Shaman
    .goto Mulgore,45.01,75.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Meela|r
    .train 332 >>Aprende |T136052:0|t[Ola de sanación]
    .target Shikrik
    .target Meela Dawnstrider
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanka|r
    .train 1130 >>Aprende |T132212:0|t[Marca del cazador]
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .target Lanka Farshot
    .money <0.02
step << Hunter
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lanka|r
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .target Lanka Farshot
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gart|r
    .train 467 >>Aprende |T136104:0|t[Espinas]
    .train 5177 >>Aprende |T136006:0|t[Cólera]
    .target Gart Mistrunner
    .money <0.02
step << Druid
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gart|r
    .train 5177 >>Aprende |T136006:0|t[Cólera]
    .target Gart Mistrunner
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .train 6343 >>Aprende |T136105:0|t[Atronar]
    .target Harutt Thunderhorn
    .money <0.02
step << Warrior
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harutt|r
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .target Harutt Thunderhorn
step
    .goto Mulgore,38.51,81.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antur|r
    .accept 1656 >>Acepta la misión Una tarea por terminar
    .target Antur Fallow
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Horde
#name 6-13 Tauren
#version 1
#group RestedXP Guía de Supervivencia (H)
#subgroup RXP Guía de Supervivencia 1-20
#defaultfor Tauren
#next 13-15 Bosque de Argénteos


step
	#completewith next
    .goto Mulgore,47.35,60.70,120 >> Corre al Poblado Pezuña de Sangre
    .subzoneskip 222
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ruul|r y |cRXP_FRIENDLY_Baine|r
    .accept 743 >>Acepta la misión Las Viento Furioso son un peligro
    .target +Ruul Eagletalon
    .goto Mulgore,47.36,62.01
    .turnin 763 >>Entrega la misión Los ritos de la Madre Tierra
    .accept 745 >>Acepta la misión Compartir la tierra
    .accept 767 >>Acepta la misión Rito de la Visión
    .accept 746 >>Acepta la misión Una excavación de los enanos
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step
    .goto Mulgore,46.63,61.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Kauth|r
    .turnin 1656 >>Entrega la misión Una tarea por terminar
    .home >>Establece tu Piedra de hogar en el Poblado Pezuña de Sangre
    .target Innkeeper Kauth
    .bindlocation 222
    .subzoneskip 222,1
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (5 platas 04 cobres). Volverás más tarde si aún no tienes suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,761,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T133053:0|t[Marra de madera] (7 platas 1 cobre). Volverás más tarde si aún no tienes suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compra una|r |T133053:0|t[Marra de madera] |cRXP_BUY_a este vendedor|r
    .collect 2493,1,761,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135611:0|t[Trabuco ornamentado] (4 platas 14 cobres). Volverás más tarde si aún no tienes suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compra un|r |T135611:0|t[Trabuco ornamentado] |cRXP_BUY_a este vendedor|r
    .collect 2509,1,761,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Compra|r |T132384:0|t[Perdigones ligeros] |cRXP_BUY_a este vendedor|r << Hunter
    .collect 2516,1000,750,1 << Hunter --Light Shot (1000)
    .target Kennah Hawkseye
step << Shaman/Druid
    #optional
    #completewith Well
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Well
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Well
    +|cRXP_WARN_Equipa el|r |T135611:0|t[Trabuco ornamentado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r, |cRXP_FRIENDLY_Harken|r y |cRXP_FRIENDLY_Mull|r
    .accept 766 >>Acepta la misión Mazzranache
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>Entrega la misión Rito de la Visión
    .accept 771 >>Acepta la misión Rito de la Visión
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>Acepta la misión La caza de los aguilones
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .accept 748 >>Acepta la misión Pozos envenenados
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r, |cRXP_FRIENDLY_Zarlman|r y |cRXP_FRIENDLY_Harken|r
    .accept 766 >>Acepta la misión Mazzranache
    .target +Maur Raincaller
    .goto Mulgore,46.97,57.07
    .turnin 767 >>Entrega la misión Rito de la Visión
    .accept 771 >>Acepta la misión Rito de la Visión
    .target +Zarlman Two-Moons
    .goto Mulgore,47.76,57.53
    .accept 761 >>Acepta la misión La caza de los aguilones
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
step
    #sticky
    #completewith Well
    >>|cRXP_WARN_Obtén los objetos para Mazzranache conforme completes misiones en toda la zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith next
    >>Mata |cRXP_ENEMY_Lobos de pradera|r y |cRXP_ENEMY_Zancudos de llanura adulto|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r y |cRXP_LOOT_Garfas|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Recoge las |cRXP_PICK_Bellotas ámbar|r. Se pueden encontrar bajo los árboles en el suelo
    .complete 771,2 --Ambercorn (2)
step << Tauren
    #loop
	.goto Mulgore,50.82,66.66,0
	.goto Mulgore,50.82,66.66,50,0
	.goto Mulgore,51.06,63.63,50,0
	.goto Mulgore,52.79,62.06,50,0
	.goto Mulgore,53.98,61.68,50,0
	.goto Mulgore,55.67,62.77,50,0
	.goto Mulgore,56.46,64.93,50,0
	.goto Mulgore,56.02,67.78,50,0
	.goto Mulgore,55.02,69.65,50,0
	.goto Mulgore,52.33,70.07,50,0
	.goto Mulgore,50.40,70.24,50,0
	.goto Mulgore,48.60,69.43,50,0
	.goto Mulgore,45.98,69.70,50,0
	.goto Mulgore,48.58,67.37,50,0
    >>Mata |cRXP_ENEMY_Lobos de pradera|r y |cRXP_ENEMY_Zancudos de llanura adulto|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r y |cRXP_LOOT_Garfas|r
    .complete 748,1 --Prairie Wolf Paw (6)
    .mob +Prairie Wolf
    .complete 748,2 --Plainstrider Talon (4)
    .mob +Adult Plainstrider
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r
    .turnin 748 >>Entrega la misión Pozos envenenados
    .timer 8,Pozos envenenados RP
    .accept 754 >>Acepta la misión La purificación de Pezuña Invernal
    .target Mull Thunderhorn
step << Tauren
    #completewith next
    >>Recoge las |cRXP_PICK_Piedras de pozo|r alrededor del Pozo
    .complete 771,1 --Well Stone (2)
step << Tauren
    #label Well
    .goto Mulgore,53.68,66.28
    >>|cRXP_WARN_Usa el|r |T135139:0|t[Tótem de limpieza Pezuña Invernal] |cRXP_WARN_en el Pozo|r
    .complete 754,1 --Cleanse the Winterhoof Water Well (1)
step
    #label Stones
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Recoge las |cRXP_PICK_Piedras de pozo|r alrededor del Pozo
    .complete 771,1 --Well Stone (2)
step
    #completewith next
    >>|cRXP_WARN_Obtén los objetos para Mazzranache conforme completes misiones en toda la zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #label Gnolls
    #loop
    .goto Mulgore,53.5,73.0,0
    .goto Mulgore,48.3,72.0,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    >>Ve de un lado a otro entre los dos campamentos. Mata |cRXP_ENEMY_Peleteros Crines Pálidas|r, |cRXP_ENEMY_Desolladores Crines Pálidas|r y |cRXP_ENEMY_Furtivos Crines Pálidas|r
    >>|cRXP_WARN_Ten cuidado con|r |cRXP_ENEMY_Jalalanza|r |cRXP_WARN_(Nivel 9 raro). Es demasiado difícil de matar.|r
    .complete 745,1 --Palemane Tanner (10)
    .mob +Palemane Tanner
    .complete 745,2 --Palemane Skinner (8)
    .mob +Palemane Skinner
    .complete 745,3 --Palemane Poacher (5)
    .mob +Palemane Poacher
    .unitscan Snagglespear
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Shaman/Druid
    >>|cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_a esta vendedora|r << Warrior
    .vendor >> Vende la basura
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Jhawna Oatwind
    .money <0.025
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r y |cRXP_FRIENDLY_Baine|r
    .turnin 754 >>Entrega la misión La purificación de Pezuña Invernal
    .accept 756 >>Acepta la misión El tótem de Tronacuerno
    .target +Mull Thunderhorn
    .goto Mulgore,48.53,60.40
    .turnin 745 >>Entrega la misión Compartir la tierra
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
step << !Tauren
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r y |cRXP_FRIENDLY_Baine|r
    .turnin 745 >>Entrega la misión Compartir la tierra
    .target Baine Bloodhoof
step
    .goto Mulgore,46.80,60.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vira|r
    .train 3273 >>Aprende |T135966:0|t[Primeros auxilios]
    .money <0.01
    .target Vira Younghoof
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (5 platas 04 cobres). Volverás más tarde si aún no tienes suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,749,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T133053:0|t[Marra de madera] (7 platas 1 cobre). Volverás más tarde si aún no tienes suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compra una|r |T133053:0|t[Marra de madera] |cRXP_BUY_a este vendedor|r
    .collect 2493,1,749,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135611:0|t[Trabuco ornamentado] (4 platas 14 cobres). Volverás más tarde si aún no tienes suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compra un|r |T135611:0|t[Trabuco ornamentado] |cRXP_BUY_a este vendedor|r
    .collect 2509,1,749,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Shaman/Druid
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith Clawsx
    +|cRXP_WARN_Equipa el|r |T135611:0|t[Trabuco ornamentado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #label Vision
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_No sigas al lobo que aparece|r
    .turnin 771 >>Entrega la misión Rito de la Visión
    .target Zarlman Two-Moons
    .accept 772 >>Acepta la misión Rito de la Visión
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Aprende tus hechizos de clase
    .target Yaw Sharpmane
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Aprende tus hechizos de clase
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krang|r
    .train 284 >> Aprende tus hechizos de clase
    .target Krang Stonehoof
    .xp <8,1
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Aprende tus hechizos de clase
    .target Narm Skychaser
    .xp <8,1
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Patrulla a lo largo del camino oriental|r
    .accept 749 >>Acepta la misión La Caravana Devastada
	.unitscan Morin Cloudstalker
step
    #completewith Clawsx
    >>|cRXP_WARN_Obtén los objetos para Mazzranache conforme completes misiones en toda la zona|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Tauren
    #completewith RavagedCaravan1
    >>Mata |cRXP_ENEMY_Acechadores|r y |cRXP_ENEMY_Pumas|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
	#completewith Clawsx
	>>Mata |cRXP_ENEMY_Aguilones|r por todo Mulgore. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step
    #label RavagedCaravan1
    .goto Mulgore,53.74,48.17
    >>Haz clic en el |cRXP_PICK_Cajón de suministros sellado|r
    .turnin 749 >>Entrega la misión La Caravana Devastada
    .accept 751 >>Acepta la misión La Caravana Devastada
step << Tauren
    #loop
    .goto Mulgore,58.1,48.6,0
    .goto Mulgore,58.1,48.6,60,0
    .goto Mulgore,54.5,40.1,60,0
    .goto Mulgore,46.4,50.7,60,0
    >>Mata |cRXP_ENEMY_Acechadores|r y |cRXP_ENEMY_Pumas|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r
    .complete 756,1 --Stalker Claws (6)
    .mob +Prairie Stalker
    .complete 756,2 --Cougar Claws (6)
    .mob +Flatland Cougar
step
    #optional
    #label Clawsx
step
    #completewith Thunderhorn
    .goto Mulgore,46.5,55.5,150 >> Regresa al Poblado Pezuña de Sangre
    .subzoneskip 222
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Aprende tus hechizos de clase
    .target Yaw Sharpmane
    .xp <8,1
step
    #label Mazzturnin
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entrega la misión Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T135145:0|t [Cachava] (5 platas 04 cobres). Volverás más tarde si aún no tienes suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman/Druid
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compra una|r |T135145:0|t[Cachava] |cRXP_BUY_a este vendedor|r
    .collect 2495,1,743,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahnott|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para una |T133053:0|t[Marra de madera] (7 platas 1 cobre). Volverás más tarde si aún no tienes suficiente
    .target Mahnott Roughwound
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Warrior
    .goto Mulgore,45.66,58.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Mahnott|r|cRXP_BUY_. Compra una|r |T133053:0|t[Marra de madera] |cRXP_BUY_a este vendedor|r
    .collect 2493,1,743,1 --Collect Wooden Mallet (1)
    .money <0.0701
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kennah|r
    .vendor >> Vende la basura. Vende tu arma si te da suficiente dinero para un |T135611:0|t[Trabuco ornamentado] (4 platas 14 cobres). Volverás más tarde si aún no tienes suficiente
    .target Kennah Hawkseye
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kennah|r|cRXP_BUY_. Compra un|r |T135611:0|t[Trabuco ornamentado] |cRXP_BUY_a este vendedor|r
    .collect 2509,1,743,1 --Collect Ornate Blunderbuss (1)
    .money <0.0414
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Hunter
    .goto Mulgore,45.86,57.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Moorat|r
    .collect 2516,1000,743,1 << Hunter --Light Shot (1000)
    .target Moorat Longstride
    .itemcount 2512,<800 << Hunter
step << Shaman/Druid
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipa la|r |T135145:0|t[Cachava]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << Hunter
    #optional
    #completewith ThunderhornCleanse
    +|cRXP_WARN_Equipa el|r |T135611:0|t[Trabuco ornamentado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #completewith Thunderhorn
    .goto Mulgore,45.90,58.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harant|r
    .vendor >> Vende la basura y repara
    .target Harant Ironbrace
step
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harken|r
    .turnin 761 >>Entrega la misión La caza de los aguilones
    .target Harken Windtotem
    .isQuestComplete 761
step << Tauren
    .goto Mulgore,48.53,60.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mull|r
    .turnin 756 >>Entrega la misión El tótem de Tronacuerno
    .timer 8,El tótem de Tronacuerno RP
    .accept 758 >>Acepta la misión La purificación de Tronacuerno
    .target Mull Thunderhorn
step
    #optional
    #label Thunderhorn
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narm|r
    .train 8044 >> Aprende tus hechizos de clase
    .target Narm Skychaser
    .xp <8,1
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gennia|r
    .train 5186 >>Aprende tus hechizos de clase
    .target Gennia Runetotem
    .xp <8,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krang|r
    .train 284 >> Aprende tus hechizos de clase
    .target Krang Stonehoof
    .xp <8,1
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .train 5116 >> Aprende tus hechizos de clase
    .target Yaw Sharpmane
    .xp <8,1
step
    .goto Mulgore,46.63,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Kauth|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Shaman/Druid
    >>|cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_a este vendedor|r << Warrior
    .vendor >> Vende la Basura
    .collect 1179,10,746,1 << Shaman/Druid --Ice Cold Milk (10)
    .collect 4541,10,746,1 << Warrior --Freshly Baked Bread (10)
    .target Innkeeper Kauth
    .money <0.025
step
    #completewith Burial
    >>|cRXP_WARN_Termina de conseguir los objetos para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith Burial
	>>Mata |cRXP_ENEMY_Aguilones|r por todo Mulgore. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
step << Tauren
    #label ThunderhornCleanse
    .goto Mulgore,44.49,45.36
    >>|cRXP_WARN_Usa el|r |T135139:0|t[Tótem de limpieza Tronacuerno] |cRXP_WARN_en el Pozo|r
    .complete 758,1 --Cleanse the Thunderhorn Water Well (1)
step
    .goto Mulgore,31.27,49.87
    >>Mata |cRXP_ENEMY_Cavadores de Bael'dun|r y |cRXP_ENEMY_Tasadores de Bael'dun|r. Despójalos para obtener sus |cRXP_LOOT_Picos de prospector|r
    .use 4702 >> |cRXP_WARN_Aplasta los|r |T134707:0|t[Picos] |cRXP_WARN_en la Forja|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Tasadores de Bael'duns|r lanzan|r |T135929:0|t[Sanación inferior] |cRXP_WARN_(Lanzamiento a distancia: Sanan a sí mismos o a una criatura cercana por debajo de 50% de salud por aproximadamente 75 de salud)|r
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step
    #loop
	.goto Mulgore,31.74,40.31,0
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
step
    #completewith next
    .goto Mulgore,33.37,36.52,50 >> Entra en la cueva justo al norte de las Arpías Viento Furioso
step
	#label Burial
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Vidente Corredor Sabio|r
    .turnin 772 >>Entrega la misión Rito de la Visión
    .accept 773 >>Acepta la misión Rito de la Sabiduría
    .target Seer Wiserunner
step
    #completewith SacredBurial
    .destroy 4823 >>|cRXP_WARN_Destruye|r |T134712:0|t[Agua de los Videntes] |cRXP_WARN_ya que no la necesitarás|r
step
    #completewith SacredBurial
    >>|cRXP_WARN_Termina de conseguir los objetos para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
	#completewith next
	>>Mata |cRXP_ENEMY_Aguilones|r por todo Mulgore. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tótem de Lluvia|r
    .accept 833 >>Acepta la misión Cementerio sagrado
    .target Lorekeeper Raintotem
step
    #completewith next
    >>Mata |cRXP_ENEMY_Intrusos Erizapúas|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu Ancestral|r
    .turnin 773 >>Entrega la misión Rito de la Sabiduría
    .accept 775 >>Acepta la misión Viaje a Cima del Trueno
    .target Ancestral Spirit
step
    #loop
	.goto Mulgore,59.85,25.62,0
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Mata |cRXP_ENEMY_Intrusos Erizapúas|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tótem de Lluvia|r
    .turnin 833 >>Entrega la misión Cementerio sagrado
    .target Lorekeeper Raintotem
step
    #completewith next
    >>|cRXP_WARN_Termina de conseguir los objetos para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step
    #loop
	.goto Mulgore,51.00,18.40,0
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	.goto Mulgore,59.52,23.36,60,0
	>>Mata |cRXP_ENEMY_Aguilones|r. Despójalos para obtener sus |cRXP_LOOT_Péñolas|r
    .complete 761,1 --Trophy Swoop Quill (8)
    .mob Wiry Swoop
    .mob Swoop
    .mob Taloned Swoop
step
    #loop
    .goto Mulgore,55.06,32.48,0
    .goto Mulgore,55.06,32.48,60,0
    .goto Mulgore,53.84,40.80,60,0
    .goto Mulgore,53.19,45.16,60,0
    .goto Mulgore,57.45,48.86,60,0
    .goto Mulgore,59.04,52.79,60,0
    .goto Mulgore,59.12,58.09,60,0
    .goto Mulgore,48.67,44.84,60,0
    >>|cRXP_WARN_Termina de conseguir los objetos para Mazzranache|r
    .complete 766,1 --Prairie Wolf Heart (1)
    .mob +Prairie Wolf Alpha
    .mob +Prairie Stalker
    .mob +Prairie Wolf Alpha
    .complete 766,2 --Flatland Cougar Femur (1)
    .mob +Flatland Cougar
    .complete 766,3 --Plainstrider Scale (1)
    .mob +Elder Plainstrider
    .mob +Adult Plainstrider
    .complete 766,4 --Swoop Gizzard (1)
    .mob +Taloned Swoop
    .mob +Swoop
    .mob +Wiry Swoop
step
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3020 >> Mata enemigos hasta alcanzar 3020+/6500xp
    .isQuestComplete 761
    .isQuestComplete 766
step
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3720 >> Mata enemigos hasta alcanzar 3720+/6500xp
    .isQuestComplete 761
step
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+3700 >> Mata enemigos hasta alcanzar 3700+/6500xp
    .isQuestComplete 766
step
    #optional
    #loop
	.goto Mulgore,59.52,23.36,60,0
	.goto Mulgore,57.51,19.08,60,0
	.goto Mulgore,55.21,18.67,60,0
	.goto Mulgore,52.99,17.34,60,0
	.goto Mulgore,51.00,18.40,60,0
	.goto Mulgore,49.84,20.74,60,0
	.goto Mulgore,49.82,23.69,60,0
	.goto Mulgore,49.52,26.10,60,0
	.goto Mulgore,49.72,28.14,60,0
	.goto Mulgore,50.79,29.37,60,0
	.goto Mulgore,52.24,30.07,60,0
	.goto Mulgore,54.21,30.43,60,0
	.goto Mulgore,56.15,30.35,60,0
	.goto Mulgore,57.77,30.48,60,0
	.goto Mulgore,58.79,28.52,60,0
	.goto Mulgore,60.56,25.88,60,0
	.goto Mulgore,59.52,23.36,60,0
    .xp 9+4400 >> Mata enemigos hasta alcanzar 4400+/6500xp
step << !Druid
    #completewith Bloodhooffinalturnins1
    .hs >>Usa tu Piedra de hogar para ir al Poblado Pezuña de Sangre
    .use 6948
    .bindlocation 222,1
    .subzoneskip 222
step << Druid
    #completewith Bloodhooffinalturnins1
    .goto Mulgore,47.33,57.17,120 >> Regresa al Poblado Pezuña de Sangre
    .subzoneskip 222
step
    .goto Mulgore,46.62,61.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Kauth|r
    .vendor >> Vende la basura
    .target Innkeeper Kauth
    .isQuestAvailable 870
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, |cRXP_FRIENDLY_Mull|r y |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entrega la misión Una excavación de los enanos
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entrega la misión Las Viento Furioso son un peligro
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entrega la misión La purificación de Tronacuerno
    .timer 8,La purificación de Tronacuerno RP
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
    .turnin 761 >>Entrega la misión La caza de los aguilones
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << Tauren
    #label Bloodhoofturnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r, y |cRXP_FRIENDLY_Mull|r
    .turnin 746 >>Entrega la misión Una excavación de los enanos
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entrega la misión Las Viento Furioso son un peligro
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 758 >>Entrega la misión La purificación de Tronacuerno
    .timer 8,La purificación de Tronacuerno RP
    .target +Mull Thunderhorn
    .goto Mulgore,48.54,60.38
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baine|r, |cRXP_FRIENDLY_Ruul|r y |cRXP_FRIENDLY_Harken|r
    .turnin 746 >>Entrega la misión Una excavación de los enanos
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entrega la misión Las Viento Furioso son un peligro
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
    .turnin 761 >>Entrega la misión La caza de los aguilones
    .target +Harken Windtotem
    .goto Mulgore,48.71,59.32
    .isQuestComplete 761
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baine|r y |cRXP_FRIENDLY_Ruul|r
    .turnin 746 >>Entrega la misión Una excavación de los enanos
    .target +Baine Bloodhoof
    .goto Mulgore,47.51,60.16
    .turnin 743 >>Entrega la misión Las Viento Furioso son un peligro
    .target +Ruul Eagletalon
    .goto Mulgore,47.35,62.02
step
    #optional
    #label Bloodhoofturnins1
step << Hunter
    .goto Mulgore,45.50,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kennah|r
    >>|cRXP_BUY_Compra|r |T132384:0|t[Perdigones pesados] |cRXP_BUY_a este vendedor|r << Hunter
    .collect 2519,1000,6061,1 << Hunter --Heavy Shot (1000)
    .target Kennah Hawkseye
step
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entrega la misión Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krang|r
    .train 6546 >>Aprende tus hechizos de clase
    .target Krang Stonehoof
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narm|r
    .accept 2984 >>Acepta la misión La llamada del fuego
    .trainer >>Aprende tus hechizos de clase
    .target Narm Skychaser
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .accept 6061 >>Acepta la misión Domesticar la bestia
    .trainer >>Aprende tus hechizos de clase
    .target Yaw Sharpmane
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gennia|r
    .trainer >>Aprende tus hechizos de clase
    .accept 5928 >>Acepta la misión Escucha la llamada
    .target Gennia Runetotem
    .isQuestAvailable 5928
step << Druid
    .goto Mulgore,48.48,59.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gennia|r
    .train 8924 >>Aprende tus hechizos de clase
    .target Gennia Runetotem
step << Hunter
    #loop
    .goto Mulgore,39.38,57.43,0
    .goto Mulgore,42.87,54.88,50,0
    .goto Mulgore,40.73,55.60,50,0
    .goto Mulgore,39.38,57.43,50,0
    .use 15914 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Zancudo de llanura adulto|r |cRXP_WARN_a la máxima distancia|r
    .complete 6061,1 --Tame an Adult Plainstrider (1)
    .mob Adult Plainstrider
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .turnin 6061 >>Entrega la misión Domesticar la bestia
    .accept 6087 >>Acepta la misión Domesticar la bestia
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,49.49,42.27,0
    .goto Mulgore,47.18,50.15,50,0
    .goto Mulgore,46.65,47.22,50,0
    .goto Mulgore,48.18,45.27,50,0
    .goto Mulgore,49.49,42.27,50,0
    .use 15915 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Acechador de pradera|r |cRXP_WARN_a la máxima distancia|r
    .complete 6087,1 --Tame a Prairie Stalker (1)
    .mob Prairie Stalker
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .turnin 6087 >>Entrega la misión Domesticar la bestia
    .accept 6088 >>Acepta la misión Domesticar la bestia
    .target Yaw Sharpmane
step << Hunter
    #loop
    .goto Mulgore,47.25,41.33,0
    .goto Mulgore,47.25,41.33,80,0
    .goto Mulgore,45.41,40.29,80,0
    .goto Mulgore,51.57,44.40,80,0
    .use 15916 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Aguilón|r |cRXP_WARN_a la máxima distancia y vuelve a lanzarlo inmediatamente si te derriban|r
    >>|cRXP_WARN_Si fallas y te quedas sin cargas de la Fusta de doma , abandona la misión, luego vuelve a aceptarla y regresa|r
    .complete 6088,1 --Tame a Swoop (1)
    .mob Swoop
step << Hunter
    .goto Mulgore,47.81,55.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yaw|r
    .turnin 6088 >>Entrega la misión Domesticar la bestia
    .accept 6089 >>Acepta la misión Domesticar la bestia
    .target Yaw Sharpmane
step
    .goto Mulgore,47.63,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jhawna|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Shaman/Druid
    >>|cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_a esta vendedora|r << Warrior
    .collect 1179,20,818,1 << Shaman/Druid --Ice Cold Milk (20)
    .collect 4541,20,818,1 << Warrior --Freshly Baked Bread (20)
    .target Innkeeper Grosk
    .money <0.05
    .target Jhawna Oatwind
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Patrulla a lo largo del camino oriental|r
    .turnin 751 >> Entrega la misión La Caravana Devastada
    .accept 764 >> Acepta la misión Los Ventura y Cía.
    .accept 765 >> Acepta la misión Supervisor Saltatuercas
	.unitscan Morin Cloudstalker
    .group
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Patrulla a lo largo del camino oriental|r
    .turnin 751 >> Entrega la misión La Caravana Devastada
	.unitscan Morin Cloudstalker
step
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >> Viaja a la Mina de los Ventura y Cía.
    .group
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Trabajadores de Ventura y Cía.|r y a los |cRXP_ENEMY_Controladores de Ventura y Cía.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
    .group 2
step
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Mata al |cRXP_ENEMY_Supervisor Saltatuercas|r. Despójalo para obtener su |cRXP_LOOT_Sujetapapeles|r
    >>|cRXP_WARN_Corre dentro de la mina y pégate al lado derecho/este para llegar a él|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Saltatuercas
    .group 2
step
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
    .group 2
step
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Patrulla a lo largo del camino oriental|r
    .turnin 764 >>Entrega la misión Los Ventura y Cía.
    .turnin 765 >>Entrega la misión Supervisor Saltatuercas
	.unitscan Morin Cloudstalker
    .group
step << Hunter
    #loop
    .goto Mulgore,67.19,63.78,0
    .goto Mulgore,67.19,63.78,50,0
    .goto Mulgore,66.34,67.01,50,0
    .goto Mulgore,63.86,66.31,50,0
    .goto Mulgore,61.81,65.52,50,0
    .goto Mulgore,61.61,61.32,50,0
    .goto Mulgore,63.58,60.51,50,0
    .goto Mulgore,65.56,59.37,50,0
    .goto Mulgore,67.62,59.06,50,0
    .goto Mulgore,66.34,67.01,50,0
    .cast 1515 >>Domestica al |cRXP_ENEMY_Lobo alfa de pradera|r
    >>|cRXP_WARN_Esto te permitirá aprender|r |T132278:0|t[Mordedura Rango 2]
    .mob Prairie Wolf Alpha
step
    #completewith next
    .goto Mulgore,69.6,60.4,100,0
    .zone The Barrens >> Entra en Los Baldíos
step
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Consigue la ruta de vuelo del Campamento Taurajo
    .target Omusa Thunderhorn
    .isQuestAvailable 5922
step << Tauren
    .goto The Barrens,44.9,58.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kirge Astadura|r
    .accept 854 >>Acepta la misión Viaja a El Cruce
    .target Kirge Sternhorn
step
    #completewith next
    .subzone 380 >>Viaja al norte hacia El Cruce
    >>|cRXP_WARN_Asegúrate de permanecer en el camino. De lo contrario, corres el riesgo de atraer a criaturas de nivel alto|r
 step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Gazrog|r |cRXP_FRIENDLY_Thork|r y |cRXP_FRIENDLY_Jahan|r
    .accept 870 >>Acepta la misión Las Charcas del Olvido
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.00
    .accept 869 >>Acepta la misión Raptores ladrones
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 854 >>Entrega la misión Viaja a El Cruce << Tauren
    .accept 871 >>Acepta la misión Interrupción de los ataques
    .accept 5041 >>Acepta la misión Suministros para El Cruce
    .target +Thork
    .goto The Barrens,51.50,30.87
    .accept 6361 >>Acepta la misión Un fardo de pellejos
    .target +Jahan Hawkwing
    .goto The Barrens,51.21,29.05
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .turnin 6361 >>Entrega la misión Un fardo de pellejos
    .accept 6362 >>Acepta la misión Un viaje a Cima del Trueno
    .target Devrak
step << Hunter/Druid
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Vuela a Cima del Trueno
    .target Devrak
    .zoneskip Thunder Bluff
step << Hunter/Druid
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Entrega la misión Un viaje a Cima del Trueno
    .accept 6363 >>Acepta la misión Tal, maestro de jinetes del viento
    .target Ahanu
step << Druid
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu Piedra de hogar en Cima del Trueno
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 5932
step << Hunter/Druid
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Entrega la misión Viaje a Cima del Trueno
    .target Cairne Bloodhoof
step << Hunter
	.goto Thunder Bluff,57.4,89.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Holt|r
	.turnin 6089 >> Entrega la misión Domesticar la bestia
    .target Holt Thunderhorn
step << Hunter
    .goto Thunder Bluff,54.08,84.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hesuwa|r
    .train 24547 >>Entrena los hechizos de tu mascota
    .target Hesuwa Thunderhorn
step << Hunter
    #completewith ReturntoJahan
    +|cRXP_WARN_Arrastra|r |T132162:0|t[Adiestramiento de bestias] |cRXP_WARN_a tus Barras de Acción. Enseña habilidades a tu mascota|r
step << Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak|r
    .goto Thunder Bluff,76.7,27.3
    .turnin 5928 >>Entrega la misión Escucha la llamada
    .accept 5922 >>Acepta la misión Claro de la Luna
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
    .isOnQuest 5928
step << Druid
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak|r
    .accept 5922 >>Acepta la misión Claro de la Luna
    .target Arch Druid Hamuul Runetotem
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lanza |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita|r
    .turnin 5922 >>Entrega la misión Claro de la Luna
    .accept 5930 >>Acepta la misión Espíritu del gran oso
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,39.2,27.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Espíritu del gran oso|r
    .complete 5930,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear. (1)
    .target Great Bear Spirit
    .skipgossip
step << Druid
    #completewith next
    .cast 18960 >>Lanza |T135758:0|t[Teletransporte a: Claro de la Luna]
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita|r
    .turnin 5930 >>Entrega la misión Espíritu del gran oso
    .accept 5932 >>Acepta la misión Vuelve a Cima del Trueno
    .target Dendrite Starblaze
step << Druid
    #completewith DruidBearForm
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 1638,1
step << Druid
    #completewith next
    .goto Moonglade,44.29,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Vuela a Cima del Trueno
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    #label DruidBearForm
    .goto Thunder Bluff,76.7,27.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak|r
    .turnin 5932 >>Entrega la misión Vuelve a Cima del Trueno
    .accept 6002 >>Acepta la misión Cuerpo y corazón
    .target Turak Runetotem
step << Druid/Hunter
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entrega la misión Tal, maestro de jinetes del viento
    .accept 6364 >>Acepta la misión Regresa con Jahan
    .target Tal
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.43,43.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mooranta|r
    >>|cRXP_WARN_Esto desbloqueará una misión fácil. Si ya tienes 2 profesiones, omite este paso|r
    .train 8613 >>Aprende |T134366:0|t[Desuello]
    .target Mooranta
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veren|r
    .accept 768 >> Acepta la misión Recolecta cuero
    .target Veren Tallstrider
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,40.39,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Subastador Stampi|r
    .collect 2318,12,768,1 >>|cRXP_BUY_Compra Doce|r |T134252:0|t[Cuero ligero] |cRXP_BUY_en la Casa de Subastas|r
    .target Auctioneer Stampi
    .skill skinning,1,1
step << Druid/Hunter
    #ah
    .goto Thunder Bluff,44.39,44.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veren|r
    .turnin 768 >> Entrega la misión Recolecta cuero
    .target Veren Tallstrider
    .skill skinning,1,1
step << Hunter
    #completewith ReturntoJahan
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Vuela a El Cruce
    .target Tal
    .zoneskip The Barrens
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
    .target Tal
    .zoneskip The Barrens
step << Druid
    .goto The Barrens,42.00,60.86
    .use 15710 >>|cRXP_WARN_Usa|r |T132857:0|t[Polvo de luna Cenarion] |cRXP_WARN_en la|r |cRXP_PICK_Piedra de lechúcico lunar|r
    >>Mata a |cRXP_ENEMY_Garraluna|r cuando aparezca. Habla con el |cRXP_FRIENDLY_Espíritu de Garraluna|r después
    >>|cRXP_WARN_¡Ten cuidado! |cRXP_ENEMY_Garraluna|r lanza|r |T132152:0|t[Vapulear] |cRXP_WARN_(Realiza 2 ataques extra cada 10 segundos)|r
    >>|cRXP_WARN_Aléjate de los|r |cRXP_ENEMY_Tronatestas|r |cRXP_WARN_de la zona|r
    .complete 6002,1 --Face Lunaclaw and earn the strength of body and heart it possesses. (1)
    .mob Lunaclaw
    .target Lunaclaw Spirit
    .skipgossip
step << Druid
    #completewith next
    .goto The Barrens,44.45,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >> Vuela a Cima del Trueno
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << Druid
    .goto Thunder Bluff,76.477,27.221
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak|r
    .turnin 6002 >>Entrega la misión Cuerpo y corazón
    .target Turak Runetotem
step << Druid
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Vuela a El Cruce
    .target Tal
    .zoneskip The Barrens
step << Hunter/Druid
    #label ReturntoJahan
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Entrega la misión Regresa con Jahan
    .target Jahan Hawkwing
step << Shaman/Druid
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Compra un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_a este vendedor|r
    .collect 854,1,784,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith FurlScornbrow
    +|cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente] |cRXP_WARN_cuando seas nivel 11|r
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Warrior
    .goto The Barrens,51.24,29.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Nargal|r|cRXP_BUY_. Compra|r |T133477:0|t[Maza gigante] |cRXP_BUY_a este vendedor|r
    .collect 1197,1,784,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Nargal Deatheye
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #optional
    #completewith FurlScornbrow
    +|cRXP_WARN_Equipa la|r |T133477:0|t[Maza gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r
    >>|cRXP_BUY_Compra muchos|r |T132384:0|t[Perdigones pesados] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_¡No podrás comprar más durante un tiempo!|r
    .collect 2519,1600,6061,1 --Heavy Shot (1600)
    .vendor >> Vende la basura
    .target Uthrok
    --Tauren Hunter gun not worth? Making them train bows in Org
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kranal|r
    .turnin 2984 >>Entrega la misión La llamada del fuego
    .accept 1524 >>Acepta la misión La llamada del fuego
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >> Viaja a Durotar
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
    .zone The Barrens >> Regresa a Los Baldíos
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
step << Shaman
    #completewith FurlScornbrow
    .zone Durotar >> Regresa a Durotar
step << !Shaman
    #completewith FurlScornbrow
    .zone Durotar >> Viaja a Durotar
step
    #optional
    .abandon 764 >>Abandona la misión Los Ventura y Cía.
    .abandon 765 >>Abandona la misión Supervisor Saltatuercas
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
    #label FurlScornbrow
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Acepta la misión Asume tu responsabilidad
    .target Furl Scornbrow
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    .vendor >> Vende la Basura
    .home >> Establece tu Piedra de hogar en Cerrotajo
    .bindlocation 362
    .isQuestAvailable 815
    .group
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torka|r
    .accept 815 >>Acepta la misión Romper huevos
    .target Cook Torka
step
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_Puedes hablar con él desde afuera o en lo alto del búnker|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'thok|r
    .accept 784 >>Acepta la misión Vencer a los traidores
    .accept 837 >>Acepta la misión Invasión
    .target Gar'thok
step
    #completewith Benedict
    .goto Durotar,58.08,57.13,120 >> Viaja al Fuerte de Tiragarde
 step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >> Ve al segundo piso del castillo
step
    #completewith AgedEnvelope
    >>Mata |cRXP_ENEMY_Navegantes Kul Tiras|r y |cRXP_ENEMY_Marineros Kul Tiras|r
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
    .collect 4882,1 --Collect Benedict's Key (1)
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
    .mob +Kul Tiras Sailor
    .mob +Kul Tiras Marine
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
step
    #completewith next
    .goto Durotar,52.06,68.30,50 >> Viaja hacia el Poblado Sen'jin
    .subzoneskip 367
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Acepta la misión Un cargamento de peón
    .target Ukor
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r y |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Acepta la misión Presa práctica
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Acepta la misión Un espíritu responsable
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .accept 808 >>Acepta la misión La calavera de Minshina
    .accept 826 >>Acepta la misión Zalazane
    .accept 823 >>Acepta la misión Informa a Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith TaillasherEggs
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tigres|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r. No es necesario terminar esto ahora
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    #label TaillasherEggs
    .goto Durotar,59.49,83.77,0
    .goto Durotar,60.28,80.02,60,0
    .goto Durotar,60.28,82.74,60,0
    .goto Durotar,59.62,84.76,60,0
    .goto Durotar,60.02,87.94,60,0
    .goto Durotar,59.06,90.71,60,0
    .goto Durotar,61.50,91.55,60,0
    .goto Durotar,61.88,95.43,60,0
    .goto Durotar,62.69,97.21,60,0
    .goto Durotar,63.00,94.40,60,0
    .goto Durotar,59.85,89.56,60,0
    .goto Durotar,59.49,83.77,60,0
    >>Despoja los |cRXP_PICK_Huevos de colazote|r del suelo
    >>|cRXP_WARN_Generalmente están protegidos por un|r |cRXP_ENEMY_Colazote Garrasangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith MinshinasSkull
    .goto Durotar,67.06,87.21,120 >>Nada a la isla principal
step
    #completewith MinshinasSkull
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith MinshinasSkull
    >>Mata |cRXP_ENEMY_Trols embrujados|r y |cRXP_ENEMY_Trols vudú|r.
    >>|cRXP_WARN_¡Ten cuidado!|r |cRXP_ENEMY_Trols vudú|r |cRXP_WARN_pueden lanzar|r |T136052:0|t[Ola de sanación]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Guarda tu|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Shaman
    >>|cRXP_WARN_Guarda tu|r |T132155:0|t[Gubia] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Rogue
    >>|cRXP_WARN_Ten cuidado. Puede lanzar|r |T136052:0|t[Ola de sanación]|cRXP_WARN_. Usa tu|r |T134829:0|t[Poción] |cRXP_WARN_si es necesario|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Despoja una de los |cRXP_LOOT_Calaveras|r del suelo
    .complete 808,1 --Minshina's Skull (1)
step
    .goto Durotar,67.4,87.8
    >>Mata a |cRXP_ENEMY_Zalazane|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Guarda tu|r |T136026:0|t[Choque de tierra] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Shaman
    >>|cRXP_WARN_Guarda tu|r |T132155:0|t[Gubia] |cRXP_WARN_para cuando lance|r |T136052:0|t[Ola de sanación] << Rogue
    >>|cRXP_WARN_Ten cuidado. Puede lanzar|r |T136052:0|t[Ola de sanación]|cRXP_WARN_. Usa tu|r |T134829:0|t[Poción] |cRXP_WARN_si es necesario|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tigres|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
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
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    >>|cRXP_WARN_Ve a las islas del sur si no estás a punto de terminar esta misión a estas alturas. Muchos|r |cRXP_ENEMY_Reptadores|r |cRXP_WARN_y|r |cRXP_ENEMY_Makruras|r |cRXP_WARN_se pueden encontrar allí|r
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
    >>Mata |cRXP_ENEMY_Tigres|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
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
    #completewith next
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Puedes hablar con él desde fuera de la cabaña|r
    .vendor >> Vende la basura y repara
    .target Trayexir
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
step
    #completewith Stolensupplies
    +|cRXP_WARN_Asigna a tus barras de acción|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_y|r |T134712:0|t[Pegamento muy pegajoso]|cRXP_WARN_. Guárdalos para situaciones de emergencia|r
step
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
    #label Encroachment
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r y |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entrega la misión Romper huevos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 823 >>Entrega la misión Informa a Orgnil
    .accept 806 >>Acepta la misión Oscuras tormentas
    .target +Orgnil Soulscar
    .goto Durotar,52.25,43.18
    .turnin 784 >>Entrega la misión Vencer a los traidores
    .turnin 837 >>Entrega la misión Invasión
    .turnin 830 >>Entrega la misión Las órdenes del almirante
    .accept 831 >>Acepta la misión Las órdenes del almirante
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r y |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entrega la misión Romper huevos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 823 >>Entrega la misión Informa a Orgnil
    .target +Orgnil Soulscar
    .goto Durotar,52.25,43.18
    .turnin 784 >>Entrega la misión Vencer a los traidores
    .turnin 837 >>Entrega la misión Invasión
    .turnin 830 >>Entrega la misión Las órdenes del almirante
    .accept 831 >>Acepta la misión Las órdenes del almirante
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r
    .train 14281 >> Aprende tus hechizos de clase
    .target Thotar
    .xp <12,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Tabernero Grosk|r
    .turnin 2161 >>Entrega la misión Un cargamento de peón
    .target Innkeeper Grosk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compra una o más|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a|r |cRXP_BUY_este vendedor|r
    .collect 4496,1,835,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 1535 >> Aprende tus hechizos de clase
    .target Swart
    .xp <12,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
    .xp <10,1
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
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Acepta la misión Perdido, pero no olvidado
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >> Viaja a Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Acepta la misión Las arpías Viento Seco
    .target Rezlak
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
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entrega la misión Las arpías Viento Seco
    .accept 835 >>Acepta la misión Asegurar las rutas
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >> Atraviesa la cueva
step
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
    >>|cRXP_WARN_Estos enemigos huyen. Cuidado de no atraer a más de uno|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step << Tauren Hunter
    #completewith next
    +|cRXP_WARN_Elige el|r |T135493:0|t[Arco corto de nogal] |cRXP_WARN_como recompensa de misión y guárdalo. Aprenderás el uso de Arcos en Orgrimmar|r
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entrega la misión Asegurar las rutas
    .target Rezlak
step
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Esto iniciará un temporizador de 45 minutos para la misión. NO te vayas AFK ni desconectes durante los próximos 15 minutos|r
    .accept 812 >>Acepta la misión Se necesita un remedio
    .target Rhinag
step
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Salta a Monte del Trueno << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_Usa|r |T136095:0|t[Retirar mascota] |cRXP_WARN_y después salta dentro de Monte del Trueno|r << Hunter
    +|cRXP_WARN_Retira tu diablillo y luego salta a Monte del Trueno|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>Mata a |cRXP_ENEMY_Fizzle Tormenta Oscura|r y despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ten mucho cuidado. Mata al|r |cRXP_ENEMY_Fanático Filo Ardiente|r que patrulla |cRXP_WARN_y a los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_en la parte trasera antes de atraerlo|r
    >>|cRXP_WARN_Atráelo hacia atrás, hacia los|r |cRXP_ENEMY_Lomorrayos|r |cRXP_WARN_que acabas de matar. De lo contrario, podrías traer enemigos Filo Ardiente adicionales|r
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Rogue
    >>|cRXP_WARN_Mata al diablillo primero. Usa|r |T136026:0|t[Choque de tierra] |cRXP_WARN_cuando lanza|r |T136169:0|t[Succión de alma] << Shaman
    >>|cRXP_WARN_Puedes lanzar|r |T136071:0|t[Polimorfia] |cRXP_WARN_sobre|r |cRXP_ENEMY_Fizzle|r |cRXP_WARN_y matar al|r |cRXP_ENEMY_Diablillo|r |cRXP_WARN_primero|r << Mage
    >>|cRXP_WARN_Mata al diablillo primero.|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << !Warlock
    >>|cRXP_WARN_Usa una|r |T134829:0|t[Poción de sanación menor], |T133728:0|t[Piedra de salud menor] |cRXP_WARN_si la tienes y tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_si es necesario|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step << Druid
    #completewith next
    .cast 18960 >>Lanza |T135758:0|t[Teletransporte a: Claro de la Luna]
    .xp <12,1
    .isQuestComplete 806
    .zoneskip Moonglade
    .group
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8936 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <12,1
    .isQuestComplete 806
    .group
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .cooldown item,6948,>0
    .isQuestComplete 806
    .use 6948
    .group
step << Shaman
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .cooldown item,6948,>0
    .use 6948
    .solo
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Grosk|r
    .vendor >> Vende la Basura
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Shaman/Druid
    >>|cRXP_BUY_Compra|r |T133974:0|t[Anca de carne] |cRXP_BUY_al vendedor|r << Warrior
    .collect 1179,20,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (20)
    .collect 2287,20,818,1 << Rogue/Warrior --Haunch of Meat (20)
    .target Innkeeper Grosk
    .money <0.05
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Entrega la misión Oscuras tormentas
    .accept 828 >>Acepta la misión Margoz
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Orgnil|r
    .accept 828 >>Acepta la misión Margoz
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Entrega la misión Invasión
    .target Gar'Thok
    .group
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thotar|r
    .train 14281 >> Aprende tus hechizos de clase
    .target Thotar
    .xp <12,1
    .group
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >> Aprende tus hechizos de clase
    .target Tarshaw Jaggedscar
    .xp <12,1
    .group
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Swart|r
    .train 1535 >> Aprende tus hechizos de clase
    .target Swart
    .xp <12,1
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >> Viaja hacia Margoz
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entrega la misión Margoz
    .accept 827 >>Acepta la misión Roca del Cráneo
    .target Margoz
    .isQuestTurnedIn 806
    .group
step << Shaman
    #completewith Collars1
    .goto Durotar,53.18,29.15,50 >> Viaja a la Cueva Viento Seco
    .solo
step
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >> Viaja a la Cueva Viento Seco
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mata |cRXP_ENEMY_Matones|r y |cRXP_ENEMY_Neófitos|r. Despójalos para obtener sus |cRXP_LOOT_Collares|r
    >>Mata a los |cRXP_ENEMY_Cultores|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 827,1 --Searing Collar (6)
    .mob +Burning Blade Thug
    .mob +Burning Blade Neophyte
    .complete 1525,2 --Reagent Pouch (1)
    .mob +Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << !Shaman
    #label Collars1
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mata |cRXP_ENEMY_ Matones Filo Ardiente|r, |cRXP_ENEMY_Neófitos|r y |cRXP_ENEMY_Cultores|r. Despójalos para obtener sus |cRXP_LOOT_Collares|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mata a los |cRXP_ENEMY_Cultores|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
    .solo
step << skip --logout skip Shaman
    .goto Durotar,53.03,26.82
    .goto Durotar,47.31,17.89,30 >>|cRXP_WARN_Salta sobre la roca. Realiza un Logout Skip posicionando a tu personaje hasta que parezca que flota, luego desconecta y vuelve a entrar|r
    .link https://www.youtube.com/watch?v=9A6LHcLZeTU&ab >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    .solo
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >> Viaja hacia Margoz
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Entrega la misión Roca del Cráneo
    .accept 829 >>Acepta la misión Neeru Hojafuego
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50 >> Entra en Orgrimmar
    .zoneskip Orgrimmar
step
    .goto Orgrimmar,45.13,63.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >> Consigue la ruta de vuelo de Orgrimmar
    .target Doras
    .isQuestAvailable 809
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entrega la misión Las órdenes del almirante
    .target Nazgrel
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 547 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <12,1
step
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Kor'ghan|r
    .accept 813 >>Acepta la misión En busca del antídoto
    .target Kor'ghan
    .isOnQuest 812
step
    #completewith FindingAntitode
    >>|cRXP_WARN_Abandona la misión Se necesita un remedio. Esto eliminará el temporizador de la misión pero seguirás pudiendo hacerla|r
    .abandon 812 >>Abandona la misión Se necesita un remedio
    .isOnQuest 812
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entrega la misión Neeru Hojafuego
    .accept 809 >>Acepta la misión Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Hunter
    #completewith HunterTraining
    .goto Orgrimmar,68.02,38.69,30 >> Viaja al Valle del Honor
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >>Entrena los hechizos de tu mascota
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14281 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Aprende el uso de Arcos
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo laminado] |cRXP_BUY_a este vendedor|r
    .collect 2507,1,813,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #label HunterTraining
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r
    .collect 2515,1600,828,1 << Hunter --Sharp Arrow (1600)
    .collect 5439,1,813,1 << Hunter --Small Quiver (1)
    .target Ghrawt
step << Hunter
    #optional
    #completewith FindingAntitode
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Compra una|r |T133477:0|t[Maza gigante] |cRXP_BUY_a este vendedor|r
    .collect 1197,1,813,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #optional
    #completewith FindingAntitode
    +|cRXP_WARN_Equipa la|r |T133477:0|t[Maza gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Compra un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_a este vendedor|r
    .collect 854,1,813,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith FindingAntitode
    +|cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #label LeaveOrg2
    #completewith Conscript
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
step
    #label FindingAntitode
    #loop
    .goto Durotar,38.89,16.91,0
    .goto Durotar,42.47,19.99,50,0
    .goto Durotar,41.07,19.85,50,0
    .goto Durotar,40.21,17.21,50,0
    .goto Durotar,38.89,16.91,50,0
    .goto Durotar,38.13,19.90,50,0
    .goto Durotar,38.67,22.13,50,0
    .goto Durotar,36.91,25.63,50,0
    .goto Durotar,36.64,28.18,50,0
    .goto Durotar,36.40,30.95,50,0
    >>Mata |cRXP_ENEMY_Escórpidos Venocola|r. Despójalos para obtener sus |cRXP_LOOT_Glándulas de veneno|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .isOnQuest 813
step << !Shaman
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Viaja al sur junto al río hacia la Avanzada del Puente
    >>Mata a los |cRXP_ENEMY_Crocoliscos Fauzatroz|r en el camino. Despójalos para obtener |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Omite y abandona esta misión si no cae|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith CallofFire3
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.51,51.48,50,0
    .goto Durotar,35.16,56.43,50,0
    >>Viaja hacia el sur bordeando el río. Mata a los |cRXP_ENEMY_Crocoliscos Fauzatroz|r en el camino. Despójalos para obtener |cRXP_LOOT_Amuleto de Kron|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
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
    .goto Durotar,39.16,58.56,10 >> Sigue el camino montaña arriba hacia |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Ten cuidado de no caer de la montaña, el camino es muy estrecho. Podrías morir si caes|r
step << Shaman
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entrega la misión La llamada del fuego
    .accept 1526 >>Acepta la misión La llamada del fuego
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Usa la|r |T134732:0|t[La sapta de fuego]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Mata a la |cRXP_ENEMY_Manifestación Menor de Fuego|r. Despójalo para obtener un |cRXP_LOOT_Ascua resplandeciente|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Haz clic en el |cRXP_PICK_Blandón|r del suelo
    .turnin 1526 >>Entrega la misión La llamada del fuego
    .accept 1527 >>Acepta la misión La llamada del fuego
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
    .goto Durotar,34.92,54.87,50,0
    .goto Durotar,34.58,51.64,50,0
    .goto Durotar,34.33,48.97,50,0
    .goto Durotar,34.31,44.24
    >>Mata |cRXP_ENEMY_Crocoliscos Fauzatroz|r. Despójalos para obtener |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Omite y abandona esta misión si no cae|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Entrega la misión Perdido, pero no olvidado
    .target Misha Tor'kren
    .isQuestComplete 816
step
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step
    #label Conscript
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entrega la misión Ak'Zeloth
    .accept 924 >>Acepta la misión La Semilla del Demonio
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step
    .goto The Barrens,62.34,20.03
    .turnin 926 >>Entrega la misión La piedra de energía con imperfecciones
    >>|cRXP_WARN_Despoja la|r |T134095:0|t[Piedra de energía con imperfecciones] |cRXP_WARN_junto a|r |cRXP_FRIENDLY_Ak'Zeloth|r
    >>|cRXP_WARN_Este objeto tiene un temporizador de 30 minutos, así que asegúrate de ser rápido|r
    .isOnQuest 924
    .group
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Entrega la misión La llamada del fuego
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> Despoja el |cRXP_PICK_Barril vacío de Chen|r del suelo e inicia la misión. Si no está disponible, lo obtendrás después
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
step
    #completewith DemonSeed
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Picos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >> Viaja a la cima de la montaña
    .isOnQuest 924
step
    #completewith next
    +|cRXP_WARN_Ten cuidado si|r |cRXP_ENEMY_Rathorian|r |cRXP_WARN_está vivo, es un raro de nivel 15. Prepárate para usar tu|r |T133728:0|t[Calavera con resplandor tenue] |cRXP_WARN_y|r |T134712:0|t[Pegamento muy pegajoso] |cRXP_WARN_si es necesario|r
    .unitscan Rathorian
step
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>Haz clic derecho en el |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Asegúrate de tener una|r |T134095:0|t[Piedra de energía con imperfecciones] |cRXP_WARN_(duración de 30 minutos) contigo|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >> Baja por la montaña por donde viniste
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Picos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Buscaqua|r, a los |cRXP_ENEMY_Tejespina|r y a los |cRXP_ENEMY_Cazadores|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >> Despoja el |cRXP_PICK_Barril Vacío de Chen|r del suelo y comienza la misión
    >>|cRXP_WARN_Si no está disponible, lo conseguirás más adelante|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
step
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,53.63,24.50,50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
    >>Mata a los |cRXP_ENEMY_Buscaqua|r, a los |cRXP_ENEMY_Tejespina|r y a los |cRXP_ENEMY_Cazadores|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    #loop
    .goto The Barrens,53.71,29.19,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Picos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r y |cRXP_FRIENDLY_Thork|r
    .turnin 844 >>Entrega la misión La amenaza de los zancudos de llanura
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce
    .accept 845 >>Acepta la misión La zhebra
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 871 >>Entrega la misión La perturbación termina
    .accept 872 >>Acepta la misión Interrupción de los ataques
    .target +Thork
    .goto The Barrens,51.50,30.87
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >>Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
step << Druid
    #completewith next
    .cast 18960 >>Lanza |T135758:0|t[Teletransporte a: Claro de la Luna]
    .xp <12,1
    .cooldown item,6948,>0
    .zoneskip Moonglade
    .solo
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8936 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <12,1
    .cooldown item,6948,>0
    .solo
step << Druid
    #completewith FlytoOrg
    .hs >> Usa tu Piedra de hogar para ir a El Cruce
    .cooldown item,6948,>0
    .xp <12,1
    .use 6948
    .solo
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Shaman/Warrior
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Vuela a Cima del Trueno
    .zoneskip Thunder Bluff
step << Shaman/Warrior
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Entrega la misión Un viaje a Cima del Trueno
    .accept 6363 >>Acepta la misión Tal, maestro de jinetes del viento
    .target Ahanu
step << Shaman/Warrior
    .goto Thunder Bluff,60.0,51.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cairne|r
    .turnin 775 >>Entrega la misión Viaje a Cima del Trueno
    .target Cairne Bloodhoof
step << Shaman/Warrior
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entrega la misión Tal, maestro de jinetes del viento
    .accept 6364 >>Acepta la misión Regresa con Jahan
    .target Tal
step << Shaman/Warrior
    #completewith ReturntoJahan2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Vuela a El Cruce
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
step << Shaman/Warrior
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a El Cruce
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 380,1
    .subzoneskip 380
step << Shaman/Warrior
    #label ReturntoJahan2
    .goto The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Entrega la misión Regresa con Jahan
    .target Jahan Hawkwing
step
    #label FlytoOrg
    #completewith SlumberSandPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8045 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <14,1
step
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Entrega la misión En busca del antídoto
    .target Kor'ghan
    .isQuestComplete 813
    .isQuestAvailable 812
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo laminado] |cRXP_BUY_a este vendedor|r
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #optional
    #completewith SlumberSandPickup
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Compra una|r |T133477:0|t[Maza gigante] |cRXP_BUY_a este vendedor|r
    .collect 1197,1,398,1 --Collect Giant Mace (1)
    .money <0.2666
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Tauren Warrior
    #optional
    #completewith SlumberSandPickup
    +|cRXP_WARN_Equipa la|r |T133477:0|t[Maza gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Shaman/Druid
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Compra un|r |T135154:0|t[Bastón de intendente] |cRXP_BUY_a este vendedor|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman/Druid
    #optional
    #completewith SlumberSandPickup
    +|cRXP_WARN_Equipa el|r |T135154:0|t[Bastón de intendente]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step
    #completewith SlumberSandPickup
    #label LeaveOrg3
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    .goto Durotar,41.6,18.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Acepta la misión Se necesita un remedio
    .turnin 812 >>Entrega la misión Se necesita un remedio
    .target Rhinag
step
    .goto Durotar,50.8,13.8,40 >>Sube a la Torre del Zepelín
    .zone Tirisfal Glades >>Toma el zepelín hacia los Claros de Tirisfal
    .zoneskip Tirisfal Glades
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r dentro de la posada
    .accept 1818 >> Acepta la misión Habla con Dillinger
    .target Austil de Mon
step
    #label SlumberSandPickup
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Acepta la misión Una nueva Peste
    .accept 445 >>Acepta la misión Entrega a Bosque de Argénteos
    .target Apothecary Johaan
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >> Entrega la misión Habla con Dillinger
    .accept 1819 >> Acepta la misión Ulag el Cuchilla
    .target Deathguard Dillinger
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Haz clic en la calavera del suelo. Esto invocará a|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mátalo|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >> Entrega la misión Ulag el Cuchilla
    .accept 1820 >> Acepta la misión Habla con Coleman
    .target Deathguard Dillinger
step
    #loop
    .goto Tirisfal Glades,43.58,61.39,0
    .goto Tirisfal Glades,56.77,59.83,60,0
    .goto Tirisfal Glades,57.41,61.92,60,0
    .goto Tirisfal Glades,55.03,63.17,60,0
    .goto Tirisfal Glades,54.24,65.34,60,0
    .goto Tirisfal Glades,50.74,62.38,60,0
    .goto Tirisfal Glades,49.92,61.17,60,0
    .goto Tirisfal Glades,47.92,60.42,60,0
    .goto Tirisfal Glades,46.61,59.75,60,0
    .goto Tirisfal Glades,44.02,60.11,60,0
    .goto Tirisfal Glades,43.58,61.39,60,0
    >>Mata |cRXP_ENEMY_Canes oscuros|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    >>|cRXP_WARN_Recibirás|r |T133849:0|t[Arena de sueño] |cRXP_WARN_de la continuación de esta misión, puedes saltarla si quieres|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
step
    .goto Tirisfal Glades,60.59,51.77
    >>|TInterface/GossipFrame/HealerGossipIcon:0|tHaz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 398 >>Acepta la misión Se busca: Ojo de cresa
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entrega la misión Una nueva Peste
    .accept 368 >>Acepta la misión Una nueva Peste
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestComplete 367
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .accept 368 >>Acepta la misión Una nueva Peste
    .goto Tirisfal Glades,59.45,52.40
    .target Apothecary Johaan
    .isQuestTurnedIn 367
step
    #completewith next
    .goto Tirisfal Glades,58.66,30.77
    >>Mata a |cRXP_ENEMY_Ojo de cresa|r de camino hacia la playa. Despoja su |cRXP_LOOT_Garra|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
step
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
    >>Mata |cRXP_ENEMY_Múrlocs|r en la playa. Despoja sus |cRXP_LOOT_Escamas|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    .goto Tirisfal Glades,58.66,30.77
    >>Mata a |cRXP_ENEMY_Ojo de cresa|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
    .isOnQuest 368
step
    #completewith MaggetEyeTurnIn
    .goto Tirisfal Glades,59.88,51.58,150 >> Viaja de vuelta a Rémol
    .subzoneskip 159
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Entrega la misión Una nueva Peste
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #label MaggetEyeTurnIn
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Entrega la misión Se busca: Ojo de cresa
    .target Executor Zygand
step
    #completewith UCflightpath2
    +|cRXP_WARN_Asigna una tecla a tu|r |T133849:0|t[Arena de sueño]|cRXP_WARN_. Guárdala para situaciones de emergencia|r
    .isQuestComplete 368
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coleman|r
    .turnin 1820 >>Entrega la misión Habla con Coleman
    .target Coleman Farthing
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Austil|r
    .train 1160 >> Aprende tus hechizos de clase
    .target Austil de Mon
    .xp <14,1
step
    #completewith UCflightpath2
    .goto Tirisfal Glades,61.80,65.06,20 >> Entra en Entrañas
    .zoneskip Undercity
    .zoneskip Undercity
step
    #completewith UCflightpath2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >> Toma el ascensor para bajar a Entrañas
step
    #label UCflightpath2
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    >>|cRXP_WARN_¡Omite este paso si ya tomaste la ruta de vuelo!|r
    .fp Undercity >> Consigue la ruta de vuelo de Entrañas
    .target Michael Garrett
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
step
    #optional
    .abandon 806 >> Abandona la misión Oscuras tormentas
    .isOnQuest 806
step
    #optional
    .abandon 408 >> Abandona la misión La Cripta de la Familia
    .isOnQuest 408
step << Warrior
    #optional
    .abandon 1821 >> Abandona la misión Reliquias Agamand
    .isOnQuest 1821
step
    #label LeaveUndercity3
    #completewith EscortErland
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50 >> Abandona Entrañas por las Cloacas
    .zoneskip Tirisfal Glades
    .zoneskip Tirisfal Glades
step
    #label Entersilverpine
    .zone Silverpine Forest >> Viaja al Bosque de Argénteos
    .zoneskip Silverpine Forest
    ]])

