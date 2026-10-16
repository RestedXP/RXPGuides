if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#name 1-6 Dun Morogh
#subgroup RestedXP Alianza 1-20
#defaultfor Gnome/Dwarf
#next 6-11 Dun Morogh << !Hunter
#next 6-10 Dun Morogh (Cazador) << Hunter

step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.9,71.2
    +Has seleccionado una guía destinada para Gnomos y Enanos. Deberías elegir la misma zona inicial en la que comienzas
step << !Warrior !Warlock
    #completewith WolfMeat
	.destroy 6948 >> Elimina la |T134414:0|t[Piedra de hogar] de tus bolsas, ya que ya no se necesita
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .accept 179 >> Acepta la misión Los enanos modistos
    .target Sten Stoutarm
step << Warrior/Warlock
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_Mata y despoja |cRXP_ENEMY_Lobos jóvenes pulgosos|r hasta que tengas 10 cobres o más de basura para vender|r
    >>|cRXP_WARN_Desequipa tu|r |T132665:0|t[Toga de acólito]|cRXP_WARN_,|r |T135005:0|t[Camisa de acólito]|cRXP_WARN_,|r |T134581:0|t[Pantalones de acólito]|cRXP_WARN_, y|r |T132535:0|t[Zapatos de acólito] |cRXP_WARN_para que puedas venderlos por 4 cobres|r << Warlock
    >>|cRXP_WARN_Desequipa tu|r |T135009:0|t[Camisa de recluta]|cRXP_WARN_,|r |T134582:0|t[Pantalones de recluta]|cRXP_WARN_, y|r |T132540:0|t[Botas de recluta] |cRXP_WARN_para que puedas venderlos por 3 cobres|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar
step << Warrior/Warlock
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grundel Harkin|r dentro
    .vendor >> Vende la Basura
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
step << Warrior
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r en el interior
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target Thran Khorman
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r dentro
    .train 348 >> Aprende |T135817:0|t[Inmolar]
    .accept 1599 >> Acepta la misión Novato
    .target Alamar Grimm
step << Warrior/Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >> Usa tu Piedra de hogar para ir a Valle de Crestanevada
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >> Elimina la |T134414:0|t[Piedra de hogar] de tus bolsas, ya que ya no se necesita
step << Warlock
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >> Sal de Yunquemar
    .subzoneskip 77,1
step
    #label WolfMeat
    #loop
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r y |cRXP_ENEMY_Lobos grises pulgosos|r. Despójalos para obtener su |cRXP_LOOT_Carne de lobo dura|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >> Mata enemigos hasta subir al nivel 2
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    .vendor >>|cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 600|r |T132384:0|t[Perdigones ligeros] |cRXP_BUY_a este vendedor|r << Hunter
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r << Priest/Mage/Warlock
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r extra si no tienes suficiente dinero|r << Priest/Mage/Warlock
    .collect 159,15 << Priest/Mage/Warlock --Collect Refreshing Spring Water (x15)
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .turnin 179 >> Entrega la misión Los enanos modistos
    .accept 233 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .accept 3106 >> Acepta la misión Runa simple << Dwarf Warrior
    .accept 3107 >> Acepta la misión Runa consagrada << Dwarf Paladin
    .accept 3108 >> Acepta la misión Runa con grabados << Dwarf Hunter
    .accept 3109 >> Acepta la misión Runa codificada << Dwarf Rogue
    .accept 3110 >> Acepta la misión Runa sacralizada << Dwarf Priest
    .accept 3112 >> Acepta la misión Memorándum simple << Gnome Warrior
    .accept 3113 >> Acepta la misión Memorándum encriptado << Gnome Rogue
    .accept 3114 >> Acepta la misión Memorándum glífico << Gnome Mage
    .accept 3115 >> Acepta la misión Memorándum corrupto << Gnome Warlock
    .target Sten Stoutarm
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Acepta la misión Una nueva amenaza
    .target Balir Frosthammer
--Warlock Imp quest
step << Warlock
#xprate <1.5
    #completewith next
    .goto 1426,30.146,74.521,0
    .goto 1426,28.322,77.854,0
    .goto 1426,28.747,74.380,0
    .goto 1426,27.018,77.305,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r, |cRXP_ENEMY_Troggs Comepiedras fornidos|r, |cRXP_ENEMY_Lobos jóvenes pulgosos|r, y |cRXP_ENEMY_Lobos grises pulgosos|r por el camino
    >>|cRXP_WARN_Trata de evitar a las|r |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step << Warlock
    #optional
    #label FrostmaneC
    #completewith Feathers
    .goto Dun Morogh,26.85,79.83,20 >> Entra en la Cueva Peloescarcha
step << Warlock
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >> Viaja hacia los |cRXP_ENEMY_Novicios Peloescarcha|r del interior
step << Warlock
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Mata a los |cRXP_ENEMY_Novicios Peloescarcha|r dentro. Despójalos para obtener los |cRXP_LOOT_Talismanes de plumas|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << Warlock
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar
step << Warlock
    #label BeginningsEnd
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r en el piso de arriba
    .turnin 1599 >> Entrega la misión Novato
    .turnin 3115 >> Entrega la misión Memorándum corrupto
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal
step
#xprate <1.5
    #completewith Rockjaw << !Paladin !Warlock !Hunter
    #completewith Talin << Paladin/Warlock/Hunter
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 233 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 183 >> Acepta la misión Cazador de jabalíes
    .accept 234 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .target Talin Keeneye
step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Mata |cRXP_ENEMY_Jabalies del risco pequeño|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 183 >> Entrega la misión Cazador de jabalíes
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
#xprate <1.5
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Warlock
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >> Mata enemigos hasta alcanzar 1130+/1400xp
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 234 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 182 >> Acepta la misión La cueva de los trols
    .target Grelin Whitebeard
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r
    >>|cRXP_WARN_Omite este paso una vez que llegues al nivel 4. Lo completarás pronto|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >> Mata enemigos hasta subir al nivel 4
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    >>|cRXP_WARN_Esto iniciará un temporizador de 5 minutos para la misión. NO te vayas AFK ni te desconectes durante los próximos 5 minutos|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Tienes 5 minutos para volver a Yunquemar antes de que la|r |T132791:0|t[Infusión de albaza hirviendo de Durnan] |cRXP_WARN_expire|r
    .goto 1426,28.939,68.387,12 >> Entra en Yunquemar
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r en el interior
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entrega la misión Runa con grabados << Dwarf
    .train 1978 >>Aprende |T132204:0|t[Picadura de serpiente]
step << Paladin
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bromos Grummner|r en el interior
    .turnin 3107 >> Entrega la misión Runa consagrada << Dwarf
    .train 19740 >> Aprende |T135906:0|t[Bendición de poderío]
    .train 20271 >> Aprende |T135959:0|t[Sentencia]
    .target Bromos Grummner
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r en el piso de arriba
    .train 172 >>Aprende |T136118:0|t[Corrupción]
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >> Sal de Yunquemar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
#xprate <1.5
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170 >> Entrega la misión Una nueva amenaza
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Warlock !Hunter
#xprate <1.5
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 182 >> Entrega la misión La cueva de los trols
    .accept 218 >> Acepta la misión El diario robado
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .turnin 3365 >> Entrega la misión Devuelve la taza
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    >>|cRXP_WARN_Esto iniciará un temporizador de 5 minutos para la misión. NO te vayas AFK ni te desconectes durante los próximos 5 minutos|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #completewith next
    +|cRXP_WARN_Tienes 5 minutos para obtener el |cRXP_LOOT_Diario de Grelin Barbablanca|r y regresar a Yunquemar antes de que la|r |T132791:0|t[Infusión de albaza hirviendo de Durnan] |cRXP_WARN_expire|r
    >>|cRXP_WARN_Si fallas la misión, no te preocupes, porque puedes obtenerla de nuevo más tarde|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >> Entra en la Cueva Peloescarcha
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >> Viaja hacia |cRXP_ENEMY_Grik'nir el Frío|r en el interior
step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Mata a |cRXP_ENEMY_Grik'nir el Frío|r dentro. Despójalo para obtener el |cRXP_LOOT_Diario de Grelin Barbablanca|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.298,79.836,20,0
    .goto 1426,27.098,80.707,20 >> Sal de la Cueva Peloescarcha
step << !Paladin !Warlock !Hunter
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    >>|cRXP_WARN_Si fallaste la misión, omite este paso|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .accept 3365 >> Acepta la misión Devuelve la taza
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
step << !Paladin !Warlock !Hunter
    #sticky
    .abandon 3364 >> Abandona la misión Entrega una infusión de albaza hirviendo. La recogerás de nuevo ahora
step << !Paladin !Warlock !Hunter
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r y |cRXP_FRIENDLY_Grelin Barbablanca|r
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .target Durnan Furcutter
step << Mage
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Marryk Nurribit
step << Rogue
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >> Entrega la misión Memorándum encriptado << Gnome
    .turnin 3109 >> Entrega la misión Runa codificada << Dwarf
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .target Solm Hargrin
step << Priest
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r
    >>|cRXP_WARN_Aprende|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_y|r |T135929:0|t[Sanación inferior] (Rango 2) |cRXP_WARN_porque los necesitarás para una misión de clase pronto|r << Dwarf
    .turnin 3110 >> Entrega la misión Runa sacralizada << Dwarf
    .accept 5626 >> Acepta la misión Al servicio de la Luz << Dwarf
    .train 1243 >> Aprende |T135987:0|t[Palabra de poder: entereza]
    .train 2052 >> Aprende |T135929:0|t[Sanación inferior] (Rango 2) << Dwarf
    .trainer >> Aprende tus hechizos de clase
    .target Branstock Khalder
step << Warrior
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >> Entrega la misión Runa simple << Dwarf
    .turnin 3112 >> Entrega la misión Memorándum simple << Gnome
    .train 100 >> Aprende |T132337:0|t[Cargar]
    .train 772 >> Aprende |T132155:0|t[Desgarrar]
    .target Thran Khorman
step << !Paladin !Warlock !Hunter
    #optional
    #completewith next
    .goto 1426,28.831,68.698,12 >> Sal de Yunquemar
    .subzoneskip 77,1
step
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .turnin 3365 >> Entrega la misión Devuelve la taza
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
#xprate <1.5
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170 >> Entrega la misión Una nueva amenaza
    .target Balir Frosthammer
step << Priest/Mage/Warlock
    #optional
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>|cRXP_BUY_Compra 5|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Thalos|r y |cRXP_FRIENDLY_Manit Piñomuelle|r
    .turnin 282 >> Entrega la misión Las observaciones de Senir
    .accept 420 >> Acepta la misión Las observaciones de Senir
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >> Acepta la misión Suministros para Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Atraviesa el Desfiladero de Crestanevada
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (A)
<< Alliance !Hunter
#name 6-11 Dun Morogh << !Hunter
#displayname 6-12 Dun Morogh << Mage
#next 12-14 Costa Oscura << !Warlock
#next 11-14 Elwynn Forest/Loch Modan << Warlock
#subgroup RestedXP Alianza 1-20
#defaultfor Gnome/Dwarf

step
    #optional
    #completewith SenirEnd
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que obtienes para la misión Los suministros del reactor a vapor y luego para subir de nivel tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Necesitas 10 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Auberdine más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Viaja a Kharanos. Grindea hasta 2145+/2800xp matando |cRXP_ENEMY_Jabalíes del risco|r por el camino << Priest
    .xp 5+2415 >> Viaja a Kharanos. Grindea hasta 2415+/2800xp matando |cRXP_ENEMY_Jabalíes del risco|r por el camino << !Priest
    .mob Crag Boar
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #completewith next
    >>|cRXP_WARN_Asegúrate de que tu subzona NO es el Desfiladero de Crestanevada|r
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .subzoneskip 131
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 420 >> Entrega la misión Las observaciones de Senir
    .target Senir Whitebeard
step
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2690 >> Mata enemigos hasta alcanzar 2690+/2800xp << !Warlock !Priest
    .xp 5+2350 >> Mata enemigos hasta alcanzar 2350+/2800xp << Priest
    .xp 6 << Warlock
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gimrizz Molaro|r
    .train 695 >> Aprende |T136197:0|t[Descarga de las Sombras (Rank 2)]
    .train 1454 >> Aprende |T136126:0|t[Transfusión de vida]
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannie Efervescentix|r
    .vendor 6328 >> |cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Pacto de sangre (Rango 1)] |cRXP_BUY_si puedes permitírtelo. Si no, puedes comprarlo después|r
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .accept 384 >> Acepta la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannok Martilloescarcha|r
    .turnin 2160,1 >> Entrega la misión Suministros para Tannok << Warrior/Rogue
    .turnin 2160,2 >> Entrega la misión Suministros para Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >> Elimina el |T135426:0|t[Cuchillo arrojadizo pequeño] de tus bolsas, ya que ya no los necesitas
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .trainer >> Aprende tus hechizos de clase
    .target Hogral Bakkan
    .xp <6,1
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magis Chispamanto|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .turnin -5626 >> Turn In In Favor of the Light (NOT TRANSLATED IN :esMX YET) << Dwarf
    .accept 5625 >> Acepta la misión Las prendas de la Luz
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior] (Rango 2) |cRXP_WARN_y luego|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_al |cRXP_FRIENDLY_Montaraz Dolf|r que está fuera|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .turnin 5625 >> Entrega la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .home >> Establece tu Piedra de hogar en Destilería Cebatruenos
    .vendor >> |cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como te puedas permitir|r << Priest/Mage/Warlock
    .target Innkeeper Belm
    .bindlocation 2102
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entra en la Herrería
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>Compra un|cRXP_BUY_ |T135641:0|t[Estilete]|r
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra una |T133053:0|t[Marra de madera]|r
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tognus Fuegosílex|r
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Paladin
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharek Piedranegra|r
    .accept 400 >> Acepta la misión Herramientas para Brasacerada
    .target Tharek Blackstone
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r y el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    >>|cRXP_WARN_No mates a ningún |cRXP_ENEMY_Oso negro joven|r por el camino|r
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
    .goto Dun Morogh,49.426,48.410
    .target Pilot Bellowfiz
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .accept 313 >> Acepta la misión El Cubil Pardo
    .goto Dun Morogh,49.622,48.612
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldin Brasacerada|r y |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_WARN_Si no puedes pagarlo, omite este paso|r
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acepta la misión Municiones para Estruendo
    .collect 2901,1 --Mining Pick (1)
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
    .train 2018,3 --Blacksmithing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldin Brasacerada|r y |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acepta la misión Municiones para Estruendo
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yarr Martillal|r en el interior, abajo
    >>|cRXP_WARN_Si no puedes pagarlo, omite este paso|r
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith BearFur
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje de oso grueso|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << !Warrior !Paladin !Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje de oso grueso|r
    >>Mata |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Large Crag Boar
    .mob +Crag Boar
step << !Paladin !Warrior !Rogue
    #optional
    #completewith EvershineEnd
    >>Mata |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
    .target Pilot Bellowfiz
step << Paladin/Warrior/Rogue
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entra en la Herrería
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>Compra un|cRXP_BUY_ |T135641:0|t[Estilete]|r
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra una |T133053:0|t[Marra de madera]|r
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #optional
    #completewith BBBR
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Priest/Mage/Warlock
    #optional
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 >> |cRXP_BUY_Cómprale tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como puedas permitirte|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step
    #label BBBR
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
#xprate <1.5
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >> Viaja a El Cubil Pardo
    .isOnQuest 313
step
#xprate <1.5
    #optional << Warrior/Paladin/Rogue
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Mata |cRXP_ENEMY_Wendigos|r y |cRXP_ENEMY_Wendigos jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Crines de Wendigo|r
    >>|cRXP_WARN_Recuerda estar atento a los|r |T134566:0|t[Filones de cobre] |cRXP_WARN_que dan|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_para poder fabricar|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    >>|cRXP_WARN_Recuerda estar atento a los|r |T134566:0|t[Filones de cobre] |cRXP_WARN_que dan|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_para poder fabricar|r |T135255:0|t[Contrapesos férreos] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,3 << Warrior/Paladin/Rogue --Blacksmithing Trained
step << Warrior/Paladin/Rogue
#xprate <1.5
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Mata |cRXP_ENEMY_Wendigos|r y |cRXP_ENEMY_Wendigos jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Crines de Wendigo|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,1 << Warrior/Paladin/Rogue --Blacksmithing Not Trained
step
    .goto Dun Morogh,44.13,56.95
    >>Abre el |cRXP_PICK_Cajón de munición|r. Despójalo para obtener la |cRXP_LOOT_Munición de Estruendo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Viaja hacia |cRXP_FRIENDLY_Hegnar Estruendo|r
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
    .target Hegnar Rumbleshot
step << Warrior/Paladin/Rogue
    #loop
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Crag Boar
    .mob +Large Crag Boar
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob +Young Black Bear
step << Warrior/Paladin/Rogue
    #completewith Ribs
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .turnin 313 >> Entrega la misión El Cubil Pardo
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a este vendedor|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yarr Martillal|r en el interior, abajo
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << !Warrior !Paladin !Rogue
    #optional
    #loop
    .goto 1426,38.874,61.932,0
    .goto 1426,38.783,60.304,0
    .goto 1426,36.237,60.316,0
    .goto 1426,38.874,61.932,45,0
    .goto 1426,38.783,60.304,45,0
    .goto 1426,36.237,60.316,45,0
    .xp 7 >> Mata enemigos hasta subir al nivel 7
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .mob Crag Boar
step << Warrior/Paladin/Rogue
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 7 >> Mata enemigos hasta subir al nivel 7
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >> Entra en la Herrería
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith Tundra
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith Tundra
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>Compra un|cRXP_BUY_ |T135641:0|t[Estilete]|r
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith Tundra
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra una |T133053:0|t[Marra de madera]|r
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith Tundra
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >> Entra en la Destilería Cebatruenos
step << Warrior/Rogue
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 > |cRXP_BUY_Buy up to 15|r |T133968:0|t[Freshly Baked Bread] |cRXP_BUY_from him if you can afford|r
    .target Innkeeper Belm
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,41.054,47.492
    .subzone 801 >> Viaja al Valle Escalofrío
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >> Viaja hacia |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >> Viaja a Las Birras
step << !Mage !Priest !Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    >>|cRXP_BUY_Compra hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r y |cRXP_FRIENDLY_Marleth Cebadiz|r
    .turnin 318 >> Entrega la misión La tajada
    .accept 319 >> Acepta la misión Un favor a cambio de un barril de tajada
    .accept 315 >> Acepta la misión La cerveza perfecta
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Acepta la misión Rivales acérrimos
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestAvailable 384
step
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    .goto Dun Morogh,30.189,45.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .turnin 319 >> Entrega la misión Un favor a cambio de un barril de tajada
    .accept 320 >> Acepta la misión Regresa junto a Bramiz
    .target Rejold Barleybrew
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3735 >>Mata enemigos hasta alcanzar 3735+/4500xp
    .isQuestAvailable 384
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4360 >>Mata enemigos hasta alcanzar 4360+/4500xp
    .isQuestTurnedIn 384
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>|cRXP_WARN_Haz el deathskip Dun Morogh -> Los Humedales. Sigue la flecha de cerca|r
    >>|cRXP_WARN_NO saltes de ninguna altura todavía|r
    .zone Wetlands >>|cRXP_WARN_Sube la montaña, luego baja más allá del patrón dentado hasta que tu subzona cambie a Los Humedales|r
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Salta de la montaña hacia el norte o noroeste|r
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r de la Bahía de Baradin
    .isQuestAvailable 983
    .target Ángel de la Resurrección
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Nada hacia la orilla en dirección al Puerto de Menethil
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_y una|r |T132800:0|t[Cerveza del Trueno] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Cerveza del Trueno] |cRXP_BUY_a este vendedor|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarven Cebatruenos|r en el piso de abajo
    .turnin 308 >> Entrega la misión Distraer a Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Haz clic en la |cRXP_PICK_Barrica de Cerveza del Trueno sin vigilar|r
    .turnin 310 >> Entrega la misión Rivales acérrimos
    .accept 311 >> Acepta la misión Regresa junto a Marleth
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gimrizz Molaro|r
    .train 980 >> Train |T136139:0|t[Curse of Agony] (NOT TRANSLATED IN :esMX YET)
    .train 5782 >> Aprende |T136183:0|t[Miedo]
    .goto Dun Morogh,47.327,53.693
    .target +Gimrizz Shadowcog
    .xp <8,1
step << Warlock
    #optional
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannie Efervescentix|r
    >>|cRXP_BUY_Compra|r |T133738:0|t[Grimorio of Descarga de Fuego (Rank 2)] |cRXP_BUY_y|r |T133738:0|t[Grimorio of Pacto de sangre (Rank 1)] |cRXP_BUY_de ella si puedes permitírtelo. Si no puedes, puedes comprarlo después|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannie Efervescentix|r
    >>|cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio de Descarga de Fuego (Rango 2)] |cRXP_BUY_si puedes permitírtelo. Si no, puedes comprarlo más tarde|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannie Efervescentix|r
    >>|cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio Pacto de sangre (Rango 1)] |cRXP_BUY_si te lo puedes permitir. Si no, puedes comprarlo más tarde|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .trainer >> Aprende tus hechizos de clase
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .trainer >> Aprende tus hechizos de clase
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magis Chispamanto|r en el piso superior
    .train 118 >> Aprende |T136071:0|t[Polimorfia]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Maxan Anvol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T132401:0|t[Hacha grande]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa una|r |T133053:0|t[Marra de madera]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 >> |cRXP_BUY_Compra hasta 20|r |T133968:0|t[Pan recién horneado]|cRXP_BUY_ de él si puedes permitírtelo|r << Warrior/Rogue
    .vendor 1247 >> |cRXP_BUY_Cómprale 5|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si te lo puedes permitir|r << Paladin
    .money <0.0125 << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor 1247 >> |cRXP_BUY_Cómprale hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si puedes permitírtelo|r
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .accept 287 >> Acepta la misión Poblado Peloescarcha
    .target Senir Whitebeard
step << !Rogue !Warrior !Paladin
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .turnin 313 >> Entrega la misión El Cubil Pardo
    .target Pilot Stonegear
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    >>|cRXP_WARN_Elige el|r |T135637:0|t[Cuchillo de acampada]|cRXP_WARN_. Guárdalo para después|r << Rogue
    .turnin 320 >> Entrega la misión Regresa junto a Bramiz << !Rogue
    .turnin 320,3 >> Entrega la misión Regresa junto a Bramiz << Rogue
    .target Pilot Bellowfiz
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r en el interior
    .accept 412 >> Acepta la misión Operación Recombobulación
    .target Razzle Sprysprocket
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Sube por la rampa hacia Monte Luz
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener sus |cRXP_LOOT_Cardaluz|r
    >>Abre las |cRXP_PICK_Cestas de Cardaluz|r en el suelo. Despójalas para obtener |cRXP_LOOT_Cardaluz|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Lanza|r |T136071:0|t[Polimorfia] |cRXP_WARN_en el|r |cRXP_ENEMY_Viejo Barbahielo|r << Mage
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en el|r |cRXP_ENEMY_Viejo Barbahielo|r << Warlock
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    >>|cRXP_WARN_Espera hasta que el |cRXP_ENEMY_Viejo Barbahielo|r patrulle fuera de la Cueva. Una vez que patrulle fuera de la Cueva, puedes entrar y despojar la|r |cRXP_PICK_Estantería de carne de MacGrann|r << !Mage !Warlock
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r << !Mage !Warlock
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r y |cRXP_FRIENDLY_Marleth Cebadiz|r
    .turnin 315 >> Entrega la misión La cerveza perfecta
    .accept 413 >> Acepta la misión Cerveza negra Brillante
    .goto Dun Morogh,30.189,45.725
    .target +Rejold Barleybrew
    .turnin 311 >> Entrega la misión Regresa junto a Marleth
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
#xprate <1.5
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener sus |cRXP_LOOT_Engranajes giromecánicos|r y |cRXP_LOOT_Piñones de estabilización|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r dentro de la cueva
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Sube corriendo por el lateral de la entrada de la cueva. Salta abajo hacia el Poblado Peloescarcha
    .isOnQuest 287
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Cae hacia la pequeña sala sin salida de la cueva|r
    >>|cRXP_WARN_No te preocupes por morir para hacer esto, ya que estás a punto de hacer un deathskip de vuelta a Kharanos|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 287 >> Entrega la misión Poblado Peloescarcha
    .accept 291 >> Acepta la misión Los informes
    .target Senir Whitebeard
step << Rogue
    #optional
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .accept 2218 >> Acepta la misión El camino hacia la salvación
    .target Hogral Bakkan
    .xp <10,1
step
    #optional
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Thamner Pol
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r en el interior
    .turnin 412 >> Entrega la misión Operación Recombobulación
    .target Razzle Sprysprocket
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Mata enemigos hasta tener 10 platas 30 cobres en objetos para vender|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Viaja a Forjaz
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r o |cRXP_FRIENDLY_Buliwyf Petramano|r
    .trainer >> Si estás en un grupo o tienes a alguien que te ayude a matar |cRXP_ENEMY_Vagash|r ahora, aprende Mazas de 2 manos de |cRXP_FRIENDLY_Buliwyf Petramano|r, si no aprende Arrojadizas de |cRXP_FRIENDLY_Bixi Tambaleapié|r. Si no estás seguro de cuál aprender, solo aprende Arrojadizas
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r escaleras abajo
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a esta vendedora|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    .isQuestAvailable 1339
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >> Sal de Forjaz
    .zoneskip Ironforge,1
step << skip --logout skip << Warrior
    #optional
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_Camina sobre borde del suelo de metal sobre la flecha de la ruta marcada|r
    .zone Dun Morogh >>|cRXP_WARN_Coloca a tu personaje hasta que parezca que flota, luego haz un Logout Skip cerrando sesión y volviendo a entrar|r
    .zoneskip Ironforge,1
step
    #optional
    #completewith next
    .goto 1426,57.936,50.787,0
    >>Mata a los |cRXP_ENEMY_Jabalíes del risco anciano|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 10 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Auberdine más tarde|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Sube por el camino de tierra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_HAZ CLIC AQUÍ Si tienes dificultades|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_Kitéalo hacia el guardia al sur del rancho. Asegúrate de infligirle 51%+ de daño|r
    >>|cRXP_WARN_Mira el video de abajo antes de intentar matar a |cRXP_ENEMY_Vagash|r. Se puede completar en solitario con cualquier clase|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .turnin 314 >> Entrega la misión La protección del rebaño
    .target Rudra Amberstill
step << Warrior/Paladin
    #sticky
    #optional
    .equip 16,3103 >> |cRXP_WARN_Equip the|r |T133052:0|t[|cRXP_FRIENDLY_Martillo Crestanevada|r]
    .use 3103
    .itemcount 3103,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.3
    .train 199,3
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco grande|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >> Viaja a la Cantera de Gol'Bolar
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cocinero Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
    .money <0.0100
step
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >> |cRXP_BUY_Cómprale hasta 10|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si es necesario|r << Warrior/Rogue
    .vendor 1237 >> |cRXP_BUY_Cómprale hasta 5|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si es necesario|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r y el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 433 >> Acepta la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acepta la misión ¡Malditos troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r dentro o fuera de la mina
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Entra a la Mina de la Cantera Gol'Bolar
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Mata |cRXP_ENEMY_Cascahuesos Comepiedras|r dentro de la mina
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r y el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Entrega la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cocinero Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
step
    #optional
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.073,57.030,45,0
    .goto 1426,69.223,58.242,45,0
    .goto 1426,68.533,58.372,45,0
    .goto 1426,67.687,60.059,45,0
    .goto 1426,68.958,59.357,45,0
    .goto 1426,70.475,59.420,45,0
    .xp 10 >> Mata enemigos hasta subir al nivel 10
    .mob Rockjaw Skullthumper
step << Priest/Rogue
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .subzoneskip 131
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .trainer >> Aprende tus hechizos de clase
    .target Maxan Anvol
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .accept 2218 >> Acepta la misión El camino hacia la salvación
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .target Hogral Bakkan
step
    #optional
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco cicatríceo|r y |cRXP_ENEMY_Jabalíes del risco anciano|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    .collect 769,40,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<10,1 -- shows if cooking is >10
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >> Viaja hacia el |cRXP_FRIENDLY_Piloto Podomartillo|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r del suelo
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    .goto Dun Morogh,78.97,37.14
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    >>|cRXP_WARN_Elige la|r |T135641:0|t[Daga de artesano] << Rogue
    .turnin 417 >> Entrega la misión Vengar al piloto << !Rogue
    .turnin 417,1 >> Entrega la misión Vengar al piloto << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de artesano] |cRXP_WARN_en tu mano principal|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #optional
    #completewith next
    .goto 1426,82.988,40.387,40,0
    .goto 1426,81.220,42.798,40,0
    .goto 1426,79.556,50.096,30,0
    .goto Dun Morogh,86.278,48.812,20 >> Viaja hacia el |cRXP_FRIENDLY_Montaraz Cebadiz|r
step
    #label ShimmerStoutEnd
    .goto Dun Morogh,86.278,48.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Cebadiz|r
    .turnin 413 >> Entrega la misión Cerveza negra Brillante
    .accept 414 >> Acepta la misión Cerveza negra para Kadrell
    .target Mountaineer Barleybrew
step
    #optional
    #label LochEnter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >> Viaja a Loch Modan a través del Paso de la Puerta Sur << !Rogue !Warrior
    .zone Loch Modan >> Viaja a través de Puerta Pasar del Sur en Loch Modan << Rogue/Warrior
step << !Rogue !Warrior
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step << !Rogue !Warrior
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >> Entra en el Búnker. Ve al piso superior
step << !Rogue !Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r dentro del búnker
    .accept 267 >> Acepta la misión La amenaza trogg
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,26.67,56.94
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes de trogg de piedra|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Exploradores Rompecantos|r lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(Lanzamiento a distancia: Inflige 14-20 de daño)|r
    >>|cRXP_WARN_Esta es una zona de reaparición rápida. No deberías necesitar moverte de aquí|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << Mage
#xprate >1.49
    .goto Loch Modan,26.67,56.94
    .xp 12-3675 >> Grind until you are 3675xp away from level 12 (NOT TRANSLATED IN :esMX YET)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << !Rogue !Warrior !Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Sube por el camino de tierra y luego déjate caer dentro del búnker
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r dentro del búnker
    .turnin 267 >> Entrega la misión La amenaza trogg
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step
    #optional
    .isQuestAvailable 3524
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >> Viaja a Thelsamar
step
#xprate <1.5
    #sticky
    #label StouttoKadrell
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .turnin 414 >> Entrega la misión Cerveza negra para Kadrell
    .accept 416 >> Acepta la misión Mata ratas << Mage/Warlock
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
#xprate >1.49
    #sticky
    #label StouttoKadrell
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .turnin 414 >> Entrega la misión Cerveza negra para Kadrell
    .accept 416 >> Acepta la misión Mata ratas << Warlock
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta << Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #completewith Cooking1 << !Mage !Rogue !Warrior !Warlock
    #completewith Hearthstove << Mage/Rogue/Warrior/Warlock
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entra en la Pensión La Cebada
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << !Mage !Rogue !Warrior !Warlock
    #label Cooking1
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_BUY_Cómprale también una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_si es necesario|r << !Rogue
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Mage/Rogue/Warrior/Warlock
    #label Hearthstove
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r en el interior
    .home >> Establece tu Piedra de hogar en Thelsamar << Rogue/Warrior/Warlock
    .vendor >>|cRXP_BUY_Compra hasta 40|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_de él|r << !Rogue !Warrior
    .collect 1179,35 << Mage/Warlock
    .target Innkeeper Hearthstove
    .bindlocation 2101
step << Mage/Warlock
#xprate <1.5 << !Warlock
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >> |cRXP_BUY_Cómprale|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_si es necesario|r
    .target Yanni Stoutheart
step << Rogue/Warrior/Warlock
    #optional
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_BUY_Cómprale también una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_si es necesario|r
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
    .money <1 -- don't want them buying etc, unless rich alts, money too tight later
step << skip
    #loop
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .turnin 414 >> Entrega la misión Cerveza negra para Kadrell
    .accept 416 >> Acepta la misión Mata ratas << Mage/Warlock
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #requires StouttoKadrell
step << Mage/Warlock
#xprate <1.5 << !Warlock
    #optional
    #completewith Algaz
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_Guarda los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_para subir de nivel |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Viaja a la Estación de Algaz
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto Loch Modan,24.13,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor|r
    .vendor >>|cRXP_WARN_Vendor Basura|r
    .target Gothor Brumn
    .isOnQuest 1339
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r dentro del búnker
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta << Rogue/Warrior/Warlock
    .accept 307 >> Acepta la misión Zarpas asquerosas << Mage/Warlock
    .target Mountaineer Stormpike
step << Mage
#xprate <1.5
    #optional
    #completewith ESSM
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step << Mage
#xprate <1.5
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
#xprate <1.5
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Entra en la Mina de Fuenteplata
step << Mage
#xprate <1.5
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    >>|cRXP_WARN_Los |cRXP_PICK_Cajones de la Liga de Mineros|r se pueden encontrar por toda la Mina|r
    .complete 307,1 -- Miners' Gear (4)
step << Mage
#xprate <1.5
    #optional
    #completewith FilthyMountaineer
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Mage
#xprate <1.5
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
#xprate <1.5
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vende y repara si es necesario|r
    .target Gothor Brumn
step << Mage
#xprate <1.5
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step << Mage
#xprate <1.5
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
step << Rogue/Warrior
    #completewith FlytoIF
    +Farmea enemigos hasta que tengas al menos 30 Plateado y objetos para vender << Rogue
    +Farmea enemigos hasta que tengas al menos 10 Plateado y objetos para vender << Warrior
    .money >0.3000 << Rogue
    .money >0.1000 << Warrior
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #completewith FlytoIF
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .subzoneskip 144
step << Mage
#xprate <1.5
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
step << Mage
#xprate <1.5
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_BUY_Cómprale también una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_si es necesario|r << !Rogue
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .accept 6387 >> Acepta la misión Estudiantes de honor
    .target Brock Stoneseeker
step << Mage
    .goto Loch Modan,26.67,56.94
    .xp 12 >> Mata enemigos hasta el nivel 12
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Gnome/Dwarf
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >> Entrega la misión Estudiantes de honor
    .accept 6391 >> Acepta la misión Vuela a Forjaz
    .target Thorgrum Borrelson
step
    #label FlytoIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Vuela a Forjaz
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Golnir Dedorroca|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Entrega la misión Vuela a Forjaz
    .accept 6388 >> Acepta la misión Gryth Thurden
step << Rogue
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hulfdan Barbanegra|r abajo
    .turnin -2218 >> Entrega la misión El camino hacia la salvación
    .target Hulfdan Blackbeard
step << Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r
    .trainer >> Aprende tus hechizos de clase
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Entrega la misión Los informes
    .isOnQuest 291
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Entrega la misión Gryth Thurden
    .accept 6392 >> Acepta la misión Regresa con Brock
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r y |cRXP_FRIENDLY_Buliwyf Petramano|r
    .train 2567 >> Aprende el uso de Arrojadizas
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Aprende Mazas de 2 manos
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
-- Warrior training Def stance in SW. Really long/bad to do in Dun Morogh. Can also train Swords while in SW for potential early 2h swords
step << Warrior skip
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muren Pico Tormenta|r
    .accept 1678 >>Acepta la misión Vejrek
    .target Muren Stormpike
step << Warrior skip
    #optional
    #completewith next
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >> |cRXP_WARN_Salir de Forjaz|r
step << Warrior skip
    .goto Dun Morogh,27.8,58.0
    >>Kill |cRXP_ENEMY_Vejrek|r. Loot him for his |cRXP_LOOT_Cabeza|r
    .complete 1678,1 --Vejrek's Head (1)
    .mob Vejrek
step << Warrior skip
    #optional
    #completewith next
    .zone Ironforge >> Viaja a Forjaz
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muren Pico Tormenta|r
    .turnin 1678 >>Entrega la misión Vejrek
    .accept 1680 >>Acepta la misión Tormus Forjahonda
    .target Muren Stormpike
step << Warrior skip
    .goto Ironforge,48.650,42.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tormus Forjahonda|r
    .turnin 1680 >> Entrega la misión Tormus Forjahonda
    .target Tormus Deepforge
--
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra los siguientes objetos para completar las misiones más rápidamente en Costa Oscura en breve|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133912:0|t[Mero de Costa Oscura]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas rápidas en Costa Oscura pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << !Rogue !Warrior !Warlock
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >> Entrega la misión Gryth Thurden
    .fly Menethil >> Vuela al Puerto de Menethil
    .target Gryth Thurden
step << Rogue/Warrior/Warlock
    #completewith EnterSW
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central
    .target Monty
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
step << Rogue/Warrior/Warlock
    .use 17117 >>|cRXP_WARN_Usa la|r |T133942:0|t[Flauta cazarratase] |cRXP_WARN_en las|r |cRXP_ENEMY_Ratas del subterráneo|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .timer 11,A por las ratas del tranvía subterráneo RP
    .accept 6662 >> Acepta la misión Mi hermano Niblis
step << Rogue/Warrior/Warlock
    #completewith next
    .zone Stormwind City >> Toma el Tranvía hacia Ventormenta
    >>|cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras esperas el Tranvía|r
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niblis|r cuando bajes del Tranvía
    >>|cRXP_FRIENDLY_Niblis|r |cRXP_WARN_está en el andén central|r
    .turnin 6662 >> Entrega la misión Mi hermano Niblis
    .target Nipsy
step << Rogue/Warrior/Warlock
    #label EnterSW
    .zone Stormwind City >> Entra en Ventormenta
step << Warlock
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
    .target Grimand Elmore
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
step << Warrior
    #optional
    #sticky
    .abandon 1678 >> Abandona la misión Vejrek. Completarás la misión Actitud defensiva en TBC Entidades en su lugar
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,73.33,52.43,20,0
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .trainer >> Aprende tus hechizos de clase
    .accept 1638 >> Acepta la misión Instrucción de guerrero
    .target Ilsa Corbin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >> Entrega la misión Instrucción de guerrero
    .accept 1639 >> Acepta la misión Bartleby, el borracho
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >> Entrega la misión Bartleby, el borracho
    .accept 1640 >> Acepta la misión Vence a Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Ataca a |cRXP_ENEMY_Bartleby|r. Se rendirá al 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >> Entrega la misión Vence a Bartleby
    .accept 1665 >> Acepta la misión La jarra de Bartleby
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Entrega la misión La jarra de Bartleby
    .target Harry Burlguard
step << Rogue/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Aprende Espadas de 1 mano << Rogue
    .trainer >>Aprende Espadas de 2 manos << Warrior
    .target Woo Ping
    .money <0.1000 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 16,851 >> |cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje] |cRXP_WARN_en tu mano principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2218 >> |cRXP_WARN_Equip the|r |T135641:0|t[|cRXP_FRIENDLY_Daga de artesano|r] |cRXP_WARN_in your offhand|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra una|r |T133477:0|t[Maza gigante] |cRXP_BUY_de él|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra una|r |T133477:0|t[Maza gigante] |cRXP_BUY_de él|r
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
    #optional
    +Equipa la |T133477:0|t[Maza gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra los siguientes objetos para completar las misiones más rápidamente en Costa Oscura en breve|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133912:0|t[Mero de Costa Oscura]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra los siguientes objetos para completar las misiones más rápidamente en Loch Modan y Costa Oscura en breve|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    >>|T133912:0|t[Mero de Costa Oscura]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas rápidas en Costa Oscura pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan y Costa Oscura en breve:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
    #completewith FlyMene
    .hs >> Usa tu Piedra de Hogar para ir a Thelsamar
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step << Rogue/Warrior
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << Rogue/Warrior
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_BUY_Cómprale también una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_si es necesario|r << !Rogue
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Rogue/Warrior
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .turnin 6392 >> Entrega la misión Regresa con Brock
    .target Brock Stoneseeker
step << Rogue/Warrior
    #label FlyMene
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Menethil >> Vuela al Puerto de Menethil
    .target Thorgrum Borrelson
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (A)
<< Alliance Warlock
#name 11-14 Elwynn Forest/Loch Modan
#next 14-20 Bloodmyst
#subgroup RestedXP Alianza 1-20
#defaultfor Gnome Warlock

step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta
    .target Dungar Longdrink
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Aprende el uso de Bastones
    .train 201 >>Aprende Espadas de 1 mano
    .target Woo Ping
    .money <0.3040
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Aprende el uso de Bastones
    .target Woo Ping
    .money <0.2090
step
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1688 >> Acepta la misión Surena Caledon
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 1120 >> Aprende |T136163:0|t[Drenar alma]
    .train 6201 >> Aprende |T135230:0|t[Crear piedra de salud (menor)]
    .train 696 >> Aprende |T136185:0|t[Piel de demonio (Rango 2)]
    .train 707 >> Aprende |T135817:0|t[Inmolar (Rango 2)]
    .target Ursula Deline
step
    #completewith GoldshireQuests
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r usando |T136126:0|t[Transfusión de vida] y poniéndote sobre la fogata que tienes al lado
    .zoneskip Stormwind City,1
step
    #completewith GoldshireQuests
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Viaja a Villadorada
step
#xprate <1.5
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .accept 62 >> Acepta la misión La Mina Abisal
    .target Marshal Dughan
step
#xprate <1.5
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .accept 60 >> Acepta la misión Las velas de los kóbolds
    .target William Pestle
step
#xprate <1.5
    #label GoldshireQuests
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
    .target Remy "Two Times"
step
#xprate >1.49
    #label GoldshireQuests
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
    .target Remy "Two Times"
step
    #optional
    #sticky
    .abandon 109 >> Abandona la misión Habla con Gryan Mantorrecio
step
#xprate <1.5
    #completewith next
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Algunos enemigos pueden volverse grises durante esta misión. Complétala de todas formas ya que necesitas completar esta misión para desbloquear la siguiente|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
#xprate <1.5
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Entra y explora la Mina Abisal|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
#xprate <1.5
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Algunos enemigos pueden volverse grises durante esta misión. Complétala de todas formas ya que necesitas completar esta misión para desbloquear la siguiente|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .accept 88 >> Acepta la misión ¡Princesa debe morir!
	.goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
step
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 176 >> Acepta la misión Se busca: Hogger
    .goto Elwynn Forest,24.548,74.672
step
    .isOnQuest 176
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mata a |cRXP_ENEMY_Hogger|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_puede aparecer en múltiples ubicaciones|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_a |cRXP_ENEMY_Hogger|r continuamente y usa tus "DoTs" normales para matarlo|r
    >>|cRXP_WARN_Puedes llevarlo de vuelta a la torre de guarda, asegúrate de causar al menos el 51% del daño|r
    >>|cRXP_WARN_Esta misión es difícil. Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo en solitario|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #optional
    .use 1307 >>|cRXP_WARN_Usa la |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] para comenzar la misión|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acepta la misión El Coleccionista
    .itemcount 1307,1
step
    #completewith HoggerTurnin
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
#xprate <1.5
    #optional
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    >>|cRXP_WARN_Elige el|r |T135145:0|t[Palo de lucha equilibrado] |cRXP_WARN_recompensa de Hogger|r
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .turnin 123 >> Entrega la misión El Coleccionista
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
    .target Marshal Dughan
    .isOnQuest 123
step
#xprate <1.5
    #label HoggerTurnin
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    >>|cRXP_WARN_Elige el|r |T135145:0|t[Palo de lucha equilibrado] |cRXP_WARN_recompensa de Hogger|r
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
    .target Marshal Dughan
step
#xprate >1.49
    #optional
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    >>|cRXP_WARN_Elige el|r |T135145:0|t[Palo de lucha equilibrado] |cRXP_WARN_recompensa de Hogger|r
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .turnin 123 >> Entrega la misión El Coleccionista
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .target Marshal Dughan
    .isOnQuest 123
step
#xprate >1.49
    #label HoggerTurnin
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    >>|cRXP_WARN_Elige el|r |T135145:0|t[Palo de lucha equilibrado] |cRXP_WARN_recompensa de Hogger|r
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .target Marshal Dughan
step
#xprate <1.5
    #optional
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .accept 147 >> Acepta la misión La persecución
    .target Marshal Dughan
step
#xprate <1.5
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    >>|cRXP_WARN_NO vendas el|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Es un objeto sumamente valioso hasta el nivel 70|r
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
    .target Remy "Two Times"
step
#xprate <1.5
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .accept 61 >> Acepta la misión Un envío para Ventormenta
    .target William Pestle
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Baja por las escaleras de la Posada
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 755 >>Aprende |T136168:0|t[Cauce de salud]
    .train 705 >>Aprende |T136197:0|t[Descarga de las Sombras (Rank 3)]
    .target Maximillian Crowe
    .xp <12,1
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    >>|cRXP_BUY_Compra hasta 10|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_de él si puedes permitírtelo|r
    .collect 1179,10
    .target Innkeeper Farley
    .subzoneskip 87,1
step
#xprate <1.5
    #optional
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> Entra en la Cantera de Jaspe
step
#xprate <1.5
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Sigue el camino por el centro para explorar la Cantera de Jaspe
    .complete 76,1 --Scout through the Jasperlode Mine
step
#xprate <1.5
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Sal de la Cantera de Jaspe
    .subzoneskip 54,1
step
#xprate <1.5
    #optional
    #completewith Find
    +|cRXP_WARN_Kitea a un |cRXP_ENEMY_Oso del bosque joven|r hacia el|r |cRXP_FRIENDLY_Guardia Thomas|r
    >>|cRXP_WARN_Intenta hablar con el |cRXP_FRIENDLY_Guardia Thomas|r antes de que el |cRXP_ENEMY_Oso del bosque joven|r muera a manos de los |cRXP_FRIENDLY_Guardias de Ventormenta|r y obtengas crédito de la misión|r
    >>|cRXP_WARN_Asegúrate de causar 51%+ de daño para recibir crédito|r
    .mob Young Forest Bear
step
#xprate <1.5
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .turnin 35 >> Entrega la misión Más preocupaciones
    .accept 37 >> Acepta la misión Encuentra a los guardias perdidos
    .accept 52 >> Acepta la misión Proteger la frontera
    .target Guard Thomas
step
#xprate >1.49
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .turnin 35 >> Entrega la misión Más preocupaciones
    .target Guard Thomas
step
#xprate <1.5
    #completewith AcceptBundle
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
    .goto Elwynn Forest,72.656,60.334
    >>Haz clic en |cRXP_PICK_Un cadáver medio comido|r en el suelo
    .turnin 37 >> Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >> Acepta la misión Descubre el destino de Rolf
step
#xprate <1.5
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
#xprate <1.5
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vende la basura
    .target Rallic Finn
    .subzoneskip 88,1
step
#xprate <1.5
    #completewith Prowlers
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
#xprate <1.5
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>Despoja los |cRXP_LOOT_Fardos de madera|r en el suelo en la base de los árboles
    .complete 5545,1 -- Bundle of Wood (8)
step
#xprate <1.5
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Haz clic en el |cRXP_PICK_Cadáver de Rolf|r en el suelo
    >>|cRXP_WARN_Ten cuidado, los |cRXP_ENEMY_Batidores múrloc|r lanzarán|r |T135915:0|t[Beber poción menor] |cRXP_WARN_que los cura entre 61 y 68 puntos de salud|r
    >>|cRXP_WARN_Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las chozas, aléjate y lanza|r |T136183:0|t[Miedo] |cRXP_WARN_sobre uno de ellos constantemente, e intenta mantener DoTs en ambos|r << Warlock
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step
#xprate <1.5
    #completewith BundleOT
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
    #loop
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,79.68,52.31,40,0
    .goto Elwynn Forest,80.86,52.17,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,79.76,56.70,40,0
    .goto Elwynn Forest,80.15,60.03,40,0
    .goto Elwynn Forest,80.24,61.46,40,0
    .goto Elwynn Forest,81.27,61.59,40,0
    .goto Elwynn Forest,81.58,62.64,40,0
    .goto Elwynn Forest,82.79,60.12,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    .goto Elwynn Forest,81.77,59.17,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    >>Despoja los |cRXP_LOOT_Fardos de madera|r en el suelo en la base de los árboles
    .complete 5545,1 -- Bundle of Wood (8)
step
#xprate <1.5
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
#xprate <1.5
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acepta la misión Artículos rojos de lino
    .target Sara Timberlain
step
#xprate <1.5
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
step
#xprate <1.5
    #completewith PrincessCollar
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
#xprate <1.5
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>Mata a |cRXP_ENEMY_Morgan el Coleccionista|r. Despójalo para obtener el |cRXP_LOOT_El anillo del coleccionista|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #label PrincessCollar
    .goto Elwynn Forest,69.3,79.0
    >>Mata a |cRXP_ENEMY_Princesa|r. Despójala para obtener su |cRXP_LOOT_Collera|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_vendrá con ambos de sus|r |cRXP_ENEMY_Séquitos porcinos|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_también lanzará|r |T132368:0|t[Carga impetuosa] |cRXP_WARN_que inflige mucho daño|r
    .complete 88,1
    .mob Princess
step
#xprate <1.5
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
#xprate <1.5
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .target Sara Timberlain
    .isQuestComplete 83
step
    #optional
    #sticky
    .abandon 109 >> Abandona la misión Informe a Gryan Mantorrecio. No necesitas entregarla
step
    #optional
    #sticky
    .abandon 184 >> Abandona la misión La escritura de los Furlbrow. No necesitas entregarla
step
    #optional
    #label SoulShards
    #completewith EncroachingGnolls
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .disablecheckbox
    >>|cRXP_WARN_Asegúrate de tener al menos 2|r |T136163:0|t[Fragmentos de alma] |cRXP_WARN_antes de llegar a Montañas Crestagrana|r
    .collect 6265,2
step
    #completewith EncroachingGnolls
    #requires SoulShards
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Acepta la misión Gnolls invasores
step
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    >>|cRXP_WARN_Ten cuidado con los enemigos de alto nivel en el camino|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
step
#xprate <1.5
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morgan Mortero|r
    .turnin 61,1 >> Entrega la misión Un envío para Ventormenta
    >>|cRXP_WARN_Elegimos el|r |T132383:0|t[Cohete explosivo] |cRXP_WARN_como recompensa. Causa daño decente y puede usarse para "Split pulling" que es increíblemente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Haz clic aquí para ver un vídeo sobre el "Split pulling". Es un vídeo corto y muy útil para aprender|r
    .target Morgan Pestle
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra los siguientes objetos para completar las misiones más rápidamente en Costa Oscura en breve|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133912:0|t[Mero de Costa Oscura]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra los siguientes objetos para completar las misiones más rápidamente en Loch Modan y Costa Oscura en breve|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    >>|T133912:0|t[Mero de Costa Oscura]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan y Costa Oscura en breve:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Warlock
    #completewith SurenaCaledon
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 755 >>Aprende |T136168:0|t[Cauce de salud]
    .train 705 >>Aprende |T136197:0|t[Descarga de las Sombras (Rank 3)]
    .target Ursula Deline
    .xp <12,1
step << Warlock
    #label SurenaCaledon
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1688 >> Entrega la misión Surena Caledon
    .accept 1689 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>|cRXP_WARN_Viaja a la parte inferior de El Cordero Degollado|r
    .cast 7728 >> |cRXP_WARN_Usa|r la |T133292:0|t[Gargantilla de sangrita] |cRXP_WARN_para invocar a un|r |cRXP_ENEMY_Abisario invocado|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >> Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #completewith next
    +|cRXP_WARN_Empieza a lanzar|r |T136126:0|t[Transfusión de vida] |cRXP_WARN_de camino de vuelta hacia |cRXP_FRIENDLY_Gakin el Presotenebra|r ya que realizarás un "deathskip" pronto|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Entrega la misión El vínculo
step
    #completewith GoldshireTurnins
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r usando |T136126:0|t[Transfusión de vida] y poniéndote sobre la fogata que tienes al lado
    .zoneskip Stormwind City,1
step
    #completewith GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Viaja a Villadorada
step << Warlock
#xprate <1.5
    #optional
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 147 >> Entrega la misión La persecución
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
step << Warlock
#xprate <1.5
    #label GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Baja por las escaleras de la Posada
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 755 >>Aprende |T136168:0|t[Cauce de salud]
    .train 705 >>Aprende |T136197:0|t[Descarga de las Sombras (Rank 3)]
    .target Maximillian Crowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .target Ma Stonefield
    .turnin 88 >> Entrega la misión ¡Princesa debe morir!
    .goto Elwynn Forest,34.660,84.483
step
    #optional
    #sticky
    .abandon 59 >> Abandona la misión Armadura de paño y cuero. No completarás esta misión
step
    #completewith FlyIF
    .hs >> Usa tu Piedra de hogar para ir a Loch Modan
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_BUY_Cómprale también una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_si es necesario|r
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    .isQuestComplete 418
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    #completewith ESSM
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
    .skill cooking,<1,1 -- shows if cooking is >1
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith ESSM
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Entra en la Mina de Fuenteplata
step
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    >>|cRXP_WARN_Los |cRXP_PICK_Cajones de la Liga de Mineros|r se pueden encontrar por toda la Mina|r
    .complete 307,1 -- Miners' Gear (4)
step
    #optional
    #completewith FilthyMountaineer
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vende y repara si es necesario|r
    .target Gothor Brumn
step
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta
    .target Mountaineer Stormpike
step
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
step
    #sticky
    #label RatCatching
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .turnin 6392 >> Entrega la misión Regresa con Brock
    .target Brock Stoneseeker
step
    #optional
    #requires RatCatching
step
    .goto Loch Modan,26.67,56.94
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes de trogg de piedra|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Exploradores Rompecantos|r lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(Lanzamiento a distancia: Inflige 14-20 de daño)|r
    >>|cRXP_WARN_Esta es una zona de reaparición rápida. No deberías necesitar moverte de aquí|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
#xprate <1.5
    .goto Loch Modan,26.67,56.94
    .xp 14-1800 >>Farmea hasta estar a 1800xp del nivel 14 (9200/11000)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
#xprate >1.49
    .goto Loch Modan,26.67,56.94
    .xp 14-2700 >>Grind until you are 2700xp away from level 14 (8300/11000) (NOT TRANSLATED IN :esMX YET)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Sube por el camino de tierra y luego déjate caer dentro del búnker
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r dentro del búnker
    .turnin 267 >> Entrega la misión La amenaza trogg
    .target Captain Rugelfuss
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step
    #completewith FlyIF
    .goto Loch Modan,26.67,56.94
    +Farmea hasta tener 45p en vendibles y dinero, luego omite este paso
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .money >0.4500
step
    .goto Loch Modan,26.67,56.94
    .xp 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Vuela a Forjaz
    .target Thorgrum Borrelson
step << Warlock
#ah
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_si cuesta menos de 33 platas 40 cobres|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7900
--Drain Life r1 - 9s
--Corruption r2 - 9s
--Grimoire of Consume Shadows -- 15s
--Grimoire of Sacrifice -- 12s
--burning wand 33s 40c
step << Warlock
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harick Tamborroca|r abajo
    >>|cRXP_BUY_Compra una|r |T135468:0|t[Varita humeante] |cRXP_BUY_a este vendedor|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7900
step << Warlock
    #optional
    +|cRXP_WARN_Equipa la|r |T135468:0|t[Varita humeante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r
    .train 6222 >>Aprende |T136118:0|t[Vigía del pozo Solanian (Rank 2)]
    .train 689 >>Aprende |T136169:0|t[Drenar vida]
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorio Consumir Sombras (Rango 1)] |cRXP_BUY_y|r |T133738:0|t[Grimorio Sacrificio (Rango 1)] |cRXP_BUY_si puedes permitírtelo|r
    .target Jubahl Corpseseeker
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .turnin 6388 >> Entrega la misión Gryth Thurden
    .fly Menethil >> Vuela al Puerto de Menethil
step
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neal Allen|r en la planta baja del cuartel
    .vendor 1448 >> |cRXP_WARN_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r dentro
    .vendor 1453 >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Dewin Shimmerdawn
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Viaja al muelle para tomar el barco hacia Auberdine
    .zoneskip Darkshore
step
    #optional
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Toma el barco hacia Costa Oscura
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >> Acepta la misión La familia y la caña de pescar
    .turnin 1141 >> Entrega la misión La familia y la caña de pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #completewith BuzzBox1
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_WARN_Compra hasta 20|r |T133918:0|t[Pargo de lodo boquilargo] |cRXP_WARN_a este vendedor|r
    .collect 4592,15 --Longjaw Mud Snapper (40)
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >> Viaja escaleras arriba hacia |cRXP_FRIENDLY_Maniveo Zumbang|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maniveo Zumbang|r arriba
    .accept 983 >> Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .accept 2118 >> Acepta la misión Tierras apestadas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >> Acepta la misión La extensión de la amenaza
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alanndarian Arrullanoche|r
    .accept 2178 >> Acepta la misión Guiso de zancudo
    .turnin 2178 >> Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >> Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Caylais Plumalunar|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r y |cRXP_ENEMY_Reptadores de arrecife jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    >>|cRXP_WARN_Puede que necesites entrar al agua para encontrarlos|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Abre la |cRXP_PICK_Criatura marina varada|r. Despójala para obtener los |cRXP_LOOT_Huesos de criatura marina|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Usar|r |T134335:0|t[Tharnariun's Hope] |cRXP_WARN_on a |cRXP_ENEMY_Oso cardo rabioso|r. It can be used from any range as long as you have one targeted|r
    >>|cRXP_WARN_==NO USES EL OBJETO DE MISIÓN SI NO HAY OSO CERCA==|r
    >>|cRXP_WARN_¡Puedes desperdiciar la trampa y hacer que la misión sea imposible de completar! Si eso te sucede, tienes que volver a quien te dio la misión y pedirle otra trampa|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>Corre hacia el borde del Campamento Fúrbolg
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r del suelo
    .turnin 983 >> Entrega la misión La caja mecánica 827
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >> Entrega la misión Varado
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharnariun Espinarbolado|r
    .turnin 2118 >> Entrega la misión Tierras apestadas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
    .target Terenthis
step
    #optional
    #sticky
    .abandon 1001 >> Abandona la misión La caja mecánica 411. No completarás esta misión
step
    #optional
    #sticky
    .abandon 4681 >> Abandona la misión Varado. No completarás esta misión
step
    #optional
    .goto Darkshore,30.749,40.995
    >>|cRXP_WARN_Nivel tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco hacia Azuremyst Isle|r
    .zone Azuremyst Isle >> Toma el barco hacia la Isla Bruma Azur
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >> Toma el barco hacia la Isla Bruma Azur
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (A)
<< Alliance Hunter
#name 6-10 Dun Morogh (Cazador)
#next 12-14 Costa Oscura
#subgroup RestedXP Alianza 1-20
#defaultfor Dwarf Hunter

step
    #optional
    #completewith SenirEnd
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Guarda todos los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que obtienes para la misión Los suministros del reactor a vapor y luego para subir de nivel tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_más adelante|r
    >>|cRXP_WARN_Necesitas 10 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Auberdine más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #completewith next
    >>|cRXP_WARN_Asegúrate de que tu subzona NO es el Desfiladero de Crestanevada|r
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .subzoneskip 131
step
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .subzone 131 >> Viaja a Kharanos
    .mob Crag Boar
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 420 >> Entrega la misión Las observaciones de Senir
    .target Senir Whitebeard
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .accept 384 >> Acepta la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannok Martilloescarcha|r
    .turnin 2160 >> Entrega la misión Suministros para Tannok
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .home >> Establece tu Piedra de hogar en Destilería Cebatruenos
    .target Innkeeper Belm
    .bindlocation 2102
step
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharek Piedranegra|r
    .accept 400 >> Acepta la misión Herramientas para Brasacerada
    .target Tharek Blackstone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r y el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    >>|cRXP_WARN_No mates a ningún |cRXP_ENEMY_Oso negro joven|r por el camino|r
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
    .goto Dun Morogh,49.426,48.410
    .target Pilot Bellowfiz
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .accept 313 >> Acepta la misión El Cubil Pardo
    .goto Dun Morogh,49.622,48.612
    .target Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldin Brasacerada|r y |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >> Acepta la misión Municiones para Estruendo
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << !Paladin !Warrior !Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step
    #completewith Level8
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #loop
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .xp 5+2125 >> Farmea hasta 2125+/2800xp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    .xp 6
step
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .target Grif Wildheart
step
    .goto Dun Morogh,44.13,56.95
    >>Abre el |cRXP_PICK_Cajón de munición|r. Despójalo para obtener la |cRXP_LOOT_Munición de Estruendo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
step
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    >>|cRXP_BUY_Compra y equipa un|r |T135611:0|t[Trabuco ornamentado]|cRXP_BUY_. Omite este paso si no te lo puedes permitir|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135611:0|t[Trabuco ornamentado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.94
step
#xprate <1.5
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Mata |cRXP_ENEMY_Wendigos|r y |cRXP_ENEMY_Wendigos jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Crines de Wendigo|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    .xp 7
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    >>|cRXP_WARN_Espera hasta que el |cRXP_ENEMY_Viejo Barbahielo|r patrulle fuera de la Cueva. Una vez que patrulle fuera de la Cueva, puedes entrar y despojar la|r |cRXP_PICK_Estantería de carne de MacGrann|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r y |cRXP_FRIENDLY_Marleth Cebadiz|r
    .turnin 318 >> Entrega la misión La tajada
    .accept 319 >> Acepta la misión Un favor a cambio de un barril de tajada
    .accept 315 >> Acepta la misión La cerveza perfecta
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >> Acepta la misión Rivales acérrimos
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #completewith Level8
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    >>|cRXP_WARN_Omitir este paso una vez que hayas alcanzado el umbral de XP. Lo completarás más tarde|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 7+3020 >>Sube a 3020+/4500xp
    .isQuestAvailable 384
step
    #optional
    #label Level8
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 7+3645 >>Sube a 3645+/4500xp
    .isQuestTurnedIn 384
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r y |cRXP_ENEMY_Leopardos de las nieves|r
    >>|cRXP_WARN_Prioriza |cRXP_ENEMY_Jabalíes|r por sus|r |cRXP_LOOT_Costillas|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .mob +Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .disablecheckbox
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .disablecheckbox
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .disablecheckbox
    .mob +Snow Leopard
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>|cRXP_WARN_Haz el deathskip Dun Morogh -> Los Humedales. Sigue la flecha de cerca|r
    >>|cRXP_WARN_NO saltes de ninguna altura todavía|r
    .zone Wetlands >>|cRXP_WARN_Sube la montaña, luego baja más allá del patrón dentado hasta que tu subzona cambie a Los Humedales|r
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Salta de la montaña hacia el norte o noroeste|r
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r de la Bahía de Baradin
    .isQuestAvailable 983
    .target Ángel de la Resurrección
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >> Nada hacia la orilla en dirección al Puerto de Menethil
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei Brondir|r
    .fp Wetlands >> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102,1
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_y una|r |T132800:0|t[Cerveza del Trueno] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Cerveza del Trueno] |cRXP_BUY_a este vendedor|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jarven Cebatruenos|r en el piso de abajo
    .turnin 308 >> Entrega la misión Distraer a Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Haz clic en la |cRXP_PICK_Barrica de Cerveza del Trueno sin vigilar|r
    .turnin 310 >> Entrega la misión Rivales acérrimos
    .accept 311 >> Acepta la misión Regresa junto a Marleth
step << Hunter
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Compra 5 pilas de|r |T132384:0|t[Disparos de Luz]
    .collect 2516,800 --Light Shot
    .target Kreg Bilmn
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .accept 287 >> Acepta la misión Poblado Peloescarcha
    .target Senir Whitebeard
step
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .turnin 313 >> Entrega la misión El Cubil Pardo
    .target Pilot Stonegear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .target Grif Wildheart
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Sube por el camino de tierra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_HAZ CLIC AQUÍ Si tienes dificultades|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_Kitéalo hacia el guardia al sur del rancho. Asegúrate de infligirle 51%+ de daño|r
    >>|cRXP_WARN_Mira el video de abajo antes de intentar matar a |cRXP_ENEMY_Vagash|r. Se puede completar en solitario con cualquier clase|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .turnin 314 >> Entrega la misión La protección del rebaño
    .target Rudra Amberstill
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith QuarryStart
    .goto Dun Morogh,68.379,54.492,60 >> Viaja a la Cantera de Gol'Bolar
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cocinero Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
    .money <0.0100
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 432 >> Acepta la misión ¡Malditos troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r dentro o fuera de la mina
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
    #optional
    .isQuestComplete 433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 433 >> Entrega la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >> Viaja hacia el |cRXP_FRIENDLY_Piloto Podomartillo|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r del suelo
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    .goto Dun Morogh,78.97,37.14
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .turnin 417 >> Entrega la misión Vengar al piloto
    .target Pilot Hammerfoot
step
    #completewith ShimmerweedCollect
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Acepta la misión Operación Recombobulación
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >> Sube por la rampa hacia Monte Luz
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener sus |cRXP_LOOT_Cardaluz|r
    >>Abre las |cRXP_PICK_Cestas de Cardaluz|r en el suelo. Despójalas para obtener |cRXP_LOOT_Cardaluz|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mata a los |cRXP_ENEMY_Elder Crag Boars|r, a los |cRXP_ENEMY_Ice Zarpa Osos|r y a los |cRXP_ENEMY_Snow Leopards|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Entrega la misión Un favor a cambio de un barril de tajada
    .accept 320 >> Acepta la misión Regresa junto a Bramiz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Entrega la misión La cerveza perfecta
    --.accept 413 >> Accept Shimmer Stout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marleth Cebadiz|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Entrega la misión Regresa junto a Marleth
step
#xprate <1.5
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener sus |cRXP_LOOT_Engranajes giromecánicos|r y |cRXP_LOOT_Piñones de estabilización|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #sticky
    #label xp10
    .xp 9+4175 >>Farmea hasta 4175+/6500xp
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r dentro de la cueva
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >> Sube corriendo por el lateral de la entrada de la cueva. Salta abajo hacia el Poblado Peloescarcha
    .isOnQuest 287
step
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Cae hacia la pequeña sala sin salida de la cueva|r
    >>|cRXP_WARN_No te preocupes por morir para hacer esto, ya que estás a punto de hacer un deathskip de vuelta a Kharanos|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #requires xp10
step
    #optional
    #requires Headhunters
step
    #completewith AcceptTaming
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 287 >> Entrega la misión Poblado Peloescarcha
    .accept 291 >> Acepta la misión Los informes
    .target Senir Whitebeard
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r en el interior
    .turnin 412 >> Entrega la misión Operación Recombobulación
    .target Razzle Sprysprocket
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .turnin 320 >> Entrega la misión Regresa junto a Bramiz
    .target Pilot Bellowfiz
step
    .xp 10
step << Hunter
    #label AcceptTaming
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .accept 6064 >>Acepta la misión Domesticar la bestia
step << Hunter
    .goto Dun Morogh,48.3,56.9
    .use 15911 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí del risco grande|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6064 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6084 >>Acepta la misión Domesticar la bestia
step << Hunter
    .goto Dun Morogh,49.4,59.4
    .use 15913 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Leopardo de las nieves|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6084 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6085 >>Acepta la misión Domesticar la bestia
step << Hunter
    .goto Dun Morogh,50.4,59.7
    .use 15908 >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso zarpahelada|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6085 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6086 >>Acepta la misión Domesticar la bestia
step << Hunter
    #completewith next
    .goto Dun Morogh,49.0,44.6,30,0
    .goto Dun Morogh,45.7,42.2,30,0
    +|cRXP_WARN_Cast|r |T132164:0|t[Tame Beast] |cRXP_WARN_on an |cRXP_ENEMY_Ice Claw Bear|r or |cRXP_ENEMY_Lobo invernal|r to tame it on the way to Ironforge|r
    >>|cRXP_WARN_No importa cuál domes, ya que conseguirás una mascota nueva pronto en Costa Oscura. Omite este paso una vez que hayas domesticado una mascota|r
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
	.unitscan Ice Claw Bear
    .unitscan Winter Wolf
    .subzoneskip 809 --gates of IF
    .usespell 1515
step << Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Viaja a Forjaz
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thalgus Tronapuño|r bajando las escaleras
    >>|cRXP_BUY_Compra una|r |T135613:0|t[Bocarda de cazador] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2511,1
    .money <0.1324
    .target Thalgus Tronapuño
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135613:0|t[Bocarda de cazador]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belia Tronagranito|r
    .trainer >> Entrena los hechizos de tu mascota
    .turnin 6086 >> Entrega la misión Domesticar la bestia
    .target Belia Thundergranite
step
    #completewith next
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entra en el Tranvía Subterráneo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central
    .target Monty
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
step
    .use 17117 >>|cRXP_WARN_Usa la|r |T133942:0|t[Flauta cazarratase] |cRXP_WARN_en las|r |cRXP_ENEMY_Ratas del subterráneo|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
step
    .zone Ironforge >> Vuelve a Forjaz
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra los siguientes objetos para completar las misiones más rápidamente en Costa Oscura en breve|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133912:0|t[Mero de Costa Oscura]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas rápidas en Costa Oscura pronto:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
    .target Senator Barin Redstone
    .turnin 291 >> Entrega la misión Los informes
step
    #label FlyMenethil
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fly Menethil >> Vuela al Puerto de Menethil
    .target Gryth Thurden
]])
