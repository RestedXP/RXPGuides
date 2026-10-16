if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Alliance
#name 1-6 Valle de Crestanevada
#version 1
#group RestedXP Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#defaultfor Dwarf/Gnome
#next 6-10 Dun Morogh
step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.927,71.201
    +Has seleccionado una guía destinada para Gnomos y Enanos. Deberías elegir la misma zona inicial en la que comienzas
step << !Warlock
    #completewith next
    .destroy 6948
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .goto Dun Morogh,29.927,71.201
    .accept 179 >> Acepta la misión Los enanos modistos
    .target Sten Stoutarm
step << Warrior
    .goto Dun Morogh,29.68,74.20,40,0
    >>Mata |cRXP_ENEMY_Lobo jóvenes pulgosos|r hasta que tengas 10 cobres o más en basura para vender
    >>|cRXP_WARN_Aprenderás|r |T132333:0|t[Grito de batalla] |cRXP_WARN_lo que aumenta la velocidad al subir de nivel al principio|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grundel Harkin|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target +Grundel Harkin
    .goto Dun Morogh,28.793,67.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target +Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step << Warlock
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Entra en Yunquemar
    >>|cRXP_WARN_Desequipa tu Pechera, Camisa, Pantalones y Botas mientras estás de camino. Los venderás|r
step << Warlock
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .vendor >> |cRXP_WARN_Vende tu Armadura, Camisa, Pantalones y Botas junto con la Comida y el Agua de tus bolsas. Necesitas 10c en total|r
    .target Durnan Furcutter
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r
    .train 348 >> Aprende |T135817:0|t[Inmolar]
    .accept 1599 >> Acepta la misión Novato
    .target Alamar Grimm
step
    .goto Dun Morogh,30.79,74.48,50,0
    .goto Dun Morogh,29.02,76.38,50,0
    .goto Dun Morogh,26.68,75.57
    >>Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r y |cRXP_ENEMY_Lobos grises pulgosos|r. Despójalos para obtener su |cRXP_LOOT_Carne de lobo dura|r
    >>|cRXP_WARN_Equipa cualquier Armadura de Tela que despojes de los|r |cRXP_ENEMY_Lobos jóvenes|r << Warlock
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .xp 2 >> Mata enemigos hasta el nivel 2
step << Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .turnin 179 >> Entrega la misión Los enanos modistos
    .accept 3115 >> Acepta la misión Memorándum corrupto << Gnome Warlock
    .accept 233 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .target Sten Stoutarm
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Acepta la misión Una nueva amenaza
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante]|cRXP_BUY_. Mata más |cRXP_ENEMY_Lobos jóvenes pulgosos|r si no tienes suficiente dinero|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Warlock
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Entra en la Cueva Peloescarcha
step << Warlock
    >>Mata |cRXP_ENEMY_Novicios Peloescarcha|r dentro de la cueva. Despójalos para obtener |cRXP_LOOT_Talismanes de plumas|r
    >>|cRXP_BUY_Equipa cualquier Armadura de Tela que despojes de los|r |cRXP_ENEMY_Peloescarcha|r
    .goto Dun Morogh,29.0,82.6,50,0
    .goto Dun Morogh,29.0,81.2,60,0
    .goto Dun Morogh,30.1,82.4
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #hardcore
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Valle de Crestanevada
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r
    .goto Dun Morogh,28.650,66.145
    .turnin 1599 >> Entrega la misión Novato
    .turnin 3115 >> Entrega la misión Memorándum corrupto << Gnome Warlock
    .target Alamar Grimm
step << Priest/Mage
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante]|cRXP_BUY_. Mata más |cRXP_ENEMY_Lobos jóvenes pulgosos|r si no tienes suficiente dinero|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Adlin Pridedrift
step << !Warlock
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .turnin 179 >> Entrega la misión Los enanos modistos
    .accept 233 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .accept 3106 >> Acepta la misión Runa simple << Dwarf Warrior
    .accept 3107 >> Acepta la misión Runa consagrada << Paladin
    .accept 3109 >> Acepta la misión Runa codificada << Dwarf Rogue
    .accept 3110 >> Acepta la misión Runa sacralizada << Priest
    .accept 3112 >> Acepta la misión Memorándum simple << Gnome Warrior
    .accept 3113 >> Acepta la misión Memorándum encriptado << Gnome Rogue
    .accept 3114 >> Acepta la misión Memorándum glífico << Mage
    .accept 3108 >>Acepta la misión Runa con grabados << Dwarf Hunter
    .target Sten Stoutarm
step << !Warlock
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >> Acepta la misión Una nueva amenaza
    .target Balir Frosthammer
step
    #era
    #completewith Rockjaw
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 233 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 183 >> Acepta la misión Cazador de jabalíes
    .accept 234 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
step
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.1,69.0,40,0
    .goto Dun Morogh,22.8,69.6,40,0
    .goto Dun Morogh,22.2,72.5,40,0
    .goto Dun Morogh,20.5,71.4,40,0
    .goto Dun Morogh,21.79,71.60
    >>Mata |cRXP_ENEMY_Jabalies del risco pequeño|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .target Talin Keeneye
    .goto Dun Morogh,22.601,71.433
    .turnin 183 >> Entrega la misión Cazador de jabalíes
step << Paladin/Mage/Warlock/Hunter
    #era
    .xp 3+1130 >> Mata enemigos hasta alcanzar 1130+/1400xp
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5,50,0
    .goto Dun Morogh,27.7,76.3,50,0
    .goto Dun Morogh,23.0,75.0,50,0
    .goto Dun Morogh,24.2,72.5
step
    #label Rockjaw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 234 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 182 >> Acepta la misión La cueva de los trols
step << Paladin/Mage/Warlock/Hunter
    .xp 4
step << Paladin/Mage/Warlock/Hunter
    #era
    .goto Dun Morogh,31.37,75.63
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
step << Paladin/Mage/Warlock/Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Viaja a Yunquemar
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entrega la misión Runa con grabados
    .train 1978 >> Aprende Picadura de Serpiente
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bromos Grummner|r
    .target Bromos Grummner
    .goto Dun Morogh,28.833,68.332
    .turnin 3107 >> Entrega la misión Runa consagrada
    .trainer >> Aprende tus hechizos de clase
step << Gnome Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r
    .target Marryk Nurribit
    .goto Dun Morogh,28.709,66.366
    .turnin 3114 >> Entrega la misión Memorándum glífico
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alamar Grimm|r
    .target Alamar Grimm
    .goto Dun Morogh,28.650,66.145
    .trainer >> Aprende Corrupción
step << Paladin/Mage/Warlock/Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Entrega la misión Una nueva amenaza
step << Hunter
    #completewith next
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_WARN_Compra 2 "stacks" de|r |T132384:0|t[Perdigones ligeros]
    .collect 2516,400 -- Light Shot (400)
    .target Adlin Pridedrift
step << Mage/Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante]|cRXP_BUY_. Mata más |cRXP_ENEMY_Lobos jóvenes pulgosos|r si no tienes suficiente dinero|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Mage !Warlock !Hunter
    #era
    #completewith next
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Mage/Warlock/Hunter
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << !Paladin !Mage
    #label TrollTroggs
    .goto Dun Morogh,28.7,77.5
    >>Mata |cRXP_ENEMY_Troggs Comepiedras|r y |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << !Paladin !Mage !Warlock !Hunter
    .xp 4 >> Mata enemigos hasta el nivel 4
step << !Paladin !Mage !Warlock !Hunter
    #era
    #requires TrollTroggs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Entrega la misión La cueva de los trols
    .accept 218 >> Acepta la misión El diario robado
step << !Paladin !Mage !Warlock !Hunter
    #som
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Entrega la misión La cueva de los trols
    .accept 218 >> Acepta la misión El diario robado
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.076,75.713
    .turnin 182 >> Entrega la misión La cueva de los trols
    .accept 218 >> Acepta la misión El diario robado
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Entrega la misión Devuelve la taza
step
    #completewith next
    .goto Dun Morogh,27.28,81.09,20 >> Entra en la Cueva Peloescarcha
step
    .goto Dun Morogh,26.8,79.9,30,0
    .goto Dun Morogh,29.0,79.0,15,0
    .goto Dun Morogh,30.6,80.3
    >>Mata a |cRXP_ENEMY_Grik'nir el Frío|r. Despójalo para obtener su |cRXP_LOOT_Diario|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
step << !Paladin !Mage !Warlock !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
step << !Paladin !Mage !Warlock !Hunter
    #completewith next
    .goto Dun Morogh,28.792,68.497,20 >> Viaja a Yunquemar
step << !Paladin !Mage !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Durnan Cortapieles|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .target Durnan Furcutter
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Solm Hargrin|r
    .target Solm Hargrin
    .goto Dun Morogh,28.4,67.5
    .turnin 3113 >> Entrega la misión Memorándum encriptado << Gnome Rogue
    .turnin 3109 >> Entrega la misión Runa codificada << Dwarf Rogue
step << Dwarf Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Silo Khalder|r
    .target Branstock Khalder
    .goto Dun Morogh,28.600,66.385
    .turnin 3110 >> Entrega la misión Runa sacralizada
    .trainer >> Aprende tus hechizos de clase
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thran Khorman|r
    .target Thran Khorman
    .goto Dun Morogh,28.832,67.242
    .turnin 3106 >> Entrega la misión Runa simple << Dwarf Warrior
    .turnin 3112 >> Entrega la misión Memorándum simple << Gnome Warrior
    .trainer >> Aprende tus hechizos de clase
step << !Paladin !Mage !Warlock !Hunter
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .target Balir Frosthammer
    .goto Dun Morogh,29.709,71.255
    .turnin 170 >> Entrega la misión Una nueva amenaza
step << Priest
    .money <0.0025
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante]
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << Paladin/Mage/Warlock/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .target Grelin Whitebeard
    .goto Dun Morogh,25.075,75.715
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
step << !Paladin !Mage !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    .target Nori Pridedrift
    .goto Dun Morogh,24.980,75.963
    .turnin 3365 >> Entrega la misión Devuelve la taza
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Thalos|r
    .target Mountaineer Thalos
    .goto Dun Morogh,33.484,71.841
    .turnin 282 >> Entrega la misión Las observaciones de Senir
    .accept 420 >> Acepta la misión Las observaciones de Senir
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Manit Piñomuelle|r
    .target Hands Springsprocket
    .goto Dun Morogh,33.847,72.236
    .accept 2160 >> Acepta la misión Suministros para Tannok
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >> Atraviesa el Desfiladero de Crestanevada
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som--h
#classic
#tbc
<< Alliance
#name 6-10 Dun Morogh
#version 1
#group RestedXP Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#defaultfor Dwarf/Gnome
#next 10-11 Elwynn (Enano/Gnomo)
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grande|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith BoarMeat44 << !Paladin !Warrior !Rogue
    #completewith BearFur << Paladin/Warrior/Rogue
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,36.4,62.9,45,0
    .goto Dun Morogh,37.7,60.5,45,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >> Viaja a Kharanos. Sube hasta alcanzar 2145/+2800xp matando a los |cRXP_ENEMY_Jabalíes del risco|r de camino << Priest
    .xp 5+2415 >> Viaja a Kharanos. Sube hasta alcanzar 2415/+2800xp matando a los |cRXP_ENEMY_Jabalíes del risco|r de camino << !Priest
    .mob Crag Boar
    .mob Large Crag Boar
step
    #completewith next
    .goto Dun Morogh,46.726,53.826,30 >> Viaja a Kharanos. Mata |cRXP_ENEMY_Jabalíes del risco|r de camino
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .turnin 420 >> Entrega la misión Las observaciones de Senir
    .target Senir Whitebeard
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gimrizz Molaro|r
    .trainer >> Aprende tus hechizos de clase
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.273,53.684
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dannie Efervescentix|r
    .vendor >> |cRXP_BUY_Compra el|r |T133738:0|t[Grimorio Pacto de sangre (Rango 1)] |cRXP_BUY_si puedes permitírtelo. Si no, lo comprarás después|r
    .target Dannie Fizzwizzle
step << !Priest
    .goto Dun Morogh,48.3,57.0
    .xp 6 >> Mata enemigos hasta el nivel 6
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .train 3044 >> Aprende Disparo Arcano
    .target Grif Wildheart
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .accept 384 >> Acepta la misión Costillas de jabalí a la cerveza
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tannok Martilloescarcha|r
    .target Tannok Frosthammer
    .goto Dun Morogh,47.217,52.195
    .turnin 2160 >> Entrega la misión Suministros para Tannok
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kreg Bilmn|r
    .vendor >> |cRXP_BUY_Compra y equipa un|r |T135426:0|t[Cuchillo arrojadizo pequeño]
    .target Kreg Bilmn
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Aprende tus hechizos de clase
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magis Chispamanto|r en el piso superior
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Aprende tus hechizos de clase
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Aprende tus hechizos de clase
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .accept 5625 >> Acepta la misión Las prendas de la Luz
step << Priest
    >>Usa Sanación Inferior Rango 2 y luego Palabra de Poder: Entereza en el |cRXP_FRIENDLY_Montaraz Dolf|r
    .target Mountaineer Dolf
    .goto Dun Morogh,45.805,54.568
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .turnin 5625 >> Entrega la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
step << Priest
    .xp 6 >> Mata enemigos hasta el nivel 6
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Establece tu Piedra de hogar en Destilería Cebatruenos
    .vendor >> |cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como te puedas permitir|r
step << !Mage !Priest !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .home >> Establece tu Piedra de hogar en Destilería Cebatruenos
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Aprende tus hechizos de clase
step << Paladin/Warrior
    #completewith next
    .goto Dun Morogh,45.8,51.8,20 >> Viaja a la Herrería
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa una|r |T133053:0|t[Marra de madera]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tognus Fuegosílex|r
    .target Tognus Flintfire
    .goto Dun Morogh,45.3,51.9
    .trainer >> Aprende |T136241:0|t[Herrería]
    >>|cRXP_WARN_Esto te permitirá crear |T135248:0|t[Piedras de afilar férreas] que aumentan los golpes cuerpo a cuerpo en +2 Daño. Es una mejora significativa en los niveles iniciales|r << Warrior/Rogue
    >>|cRXP_WARN_Esto te permitirá crear |T135255:0|t[Contrapesos férreos] que aumentan los golpes cuerpo a cuerpo en +2 Daño. Es una mejora significativa en los niveles iniciales|r << Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharek Piedranegra|r
    .target Tharek Blackstone
    .goto Dun Morogh,46.021,51.676
    .accept 400 >> Acepta la misión Herramientas para Brasacerada
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    >>|cRXP_WARN_No mates a ningún |cRXP_ENEMY_Oso negro joven|r por el camino|r
    .target Pilot Bellowfiz
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .accept 313 >> Acepta la misión El Cubil Pardo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldin Brasacerada|r
    .target Beldin Steelgrill
    .goto Dun Morogh,50.443,49.092
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
step
    #label BoarMeat44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loslor Rudge|r
    .target Loslor Rudge
    .goto Dun Morogh,50.084,49.420
    .accept 5541 >> Acepta la misión Municiones para Estruendo
step << Warrior/Paladin/Rogue
    #completewith next
    .money <0.0091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loslor Rudge|r
    .goto Dun Morogh,50.084,49.420
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_si aprendiste|r |T136241:0|t[Herrería]
    .collect 2901,1
    .target Loslor Rudge
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yarr Martillal|r
    .trainer >>Aprende |T134708:0|t[Minería]
    .target Yarr Hammerstone
step << Warrior/Paladin/Rogue
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
step << Paladin/Warrior/Rogue
    #completewith BearFur
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Pelaje|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
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
    .goto Dun Morogh,43.5,52.5
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
step << !Paladin !Warrior !Rogue
    #completewith Ribs
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
step << Warrior
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor >> |cRXP_BUY_Compra todo el|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_que puedas permitirte|r
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor >> |cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como te puedas permitir|r
    .target Innkeeper Belm
step
    #completewith next
    .goto Dun Morogh,42.38,55.28,40 >> Viaja a El Cubil Pardo
step
    .goto Dun Morogh,42.25,53.68,40,0
    .goto Dun Morogh,41.07,49.04,50,0
    .goto Dun Morogh,42.25,53.68
    >>Mata |cRXP_ENEMY_Wendigos|r y |cRXP_ENEMY_Wendigos jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Crines|r
    >>|cRXP_WARN_Recuerda estar atento a los|r |T134566:0|t[Filones de cobre] |cRXP_WARN_que dan|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_para poder fabricar|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    >>|cRXP_WARN_Recuerda estar atento a los|r |T134566:0|t[Filones de cobre] |cRXP_WARN_que dan|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_para poder fabricar|r |T135255:0|t[Contrapesos férreos] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Abre el |cRXP_PICK_Cajón de munición|r. Despójalo para obtener la |cRXP_LOOT_Munición de Estruendo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #label BearFur
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hegnar Estruendo|r
    .goto Dun Morogh,40.682,65.130
    >>|cRXP_BUY_Compra y equipa un|r |T135611:0|t[Trabuco ornamentado]|cRXP_BUY_. Omite este paso si no te lo puedes permitir|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
step << !Paladin !Warrior !Rogue
    .xp 7 >> Mata enemigos hasta el nivel 7
step << Paladin/Warrior/Rogue
    .goto Dun Morogh,51.4,50.4
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
step << Paladin/Warrior/Rogue
    #completewith Ribs
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Entrega la misión El Cubil Pardo
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,50.084,49.420
    .collect 2901,1 >> Compra un Pico de minero
step << Warrior/Paladin/Rogue
    #era
    .xp 7 >> Mata enemigos hasta el nivel 7
step << Warrior/Rogue
    #som
    .xp 8 >> Mata enemigos cercanos hasta el nivel 8
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Aprende tus hechizos de clase
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Aprende tus hechizos de clase
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Aprende tus hechizos de clase
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa una|r |T133053:0|t[Marra de madera]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .vendor >> |cRXP_BUY_Compra hasta 20|r |T133968:0|t[Pan recién horneado] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Compra hasta 10|r |T133968:0|t[Pan recién horneado] << Paladin
    .target Innkeeper Belm
step << Paladin/Warrior/Rogue
    #completewith next
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,37.9,50.8,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Viaja hacia |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Mata |cRXP_ENEMY_Jabalíes|r, |cRXP_ENEMY_Osos|r y |cRXP_ENEMY_Lobos|r de camino
step << Paladin/Warrior/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,43.0,47.4,60,0
    .goto Dun Morogh,39.6,48.9,60,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
step << !Paladin !Warrior !Rogue
    #completewith next
    .goto Dun Morogh,35.2,56.4,60,0
    .goto Dun Morogh,36.0,52.0,60,0
    .goto Dun Morogh,34.577,51.652,40 >> Viaja hacia |cRXP_FRIENDLY_Tundra MacGrann|r
    >>Mata |cRXP_ENEMY_Jabalíes|r, |cRXP_ENEMY_Osos|r y |cRXP_ENEMY_Lobos|r de camino
step << !Paladin !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,35.2,56.4,100,0
    .goto Dun Morogh,36.0,52.0,100,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.5,46.0,50 >> Viaja a Las Birras
step << !Mage !Priest
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .goto Dun Morogh,30.453,46.005
    .vendor >> |cRXP_BUY_Compra hasta 20|r |T132815:0|t[Leche fría como el hielo]
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.190,45.726
    .turnin 318 >> Entrega la misión La tajada
    .accept 319 >> Acepta la misión Un favor a cambio de un barril de tajada
    .accept 315 >> Acepta la misión La cerveza perfecta
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marleth Cebadiz|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .accept 310 >> Acepta la misión Rivales acérrimos
step
    #label Ribs
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    >>Mata |cRXP_ENEMY_Jabalíes del risco ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,28.7,43.7
    .complete 384,1 --Collect Crag Boar Rib (x6)
    .mob Elder Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >> Entrega la misión Un favor a cambio de un barril de tajada
    .accept 320 >> Acepta la misión Regresa junto a Bramiz
step
    .isQuestTurnedIn 384
    .xp 7+4360 >>Si ya has entregado la misión Costillas de jabalí a la cerveza, mata enemigos hasta alcanzar 4360+/4500xp
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
    .xp 7+3735 >>Mata enemigos hasta alcanzar 3735+/4500xp
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8,60,0
    .goto Dun Morogh,31.5,38.9,60,0
    .goto Dun Morogh,28.3,39.9,60,0
    .goto Dun Morogh,28.7,43.7,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,25.8,47.2,60,0
    .goto Dun Morogh,30.0,51.8
step
    #softcore
    .goto Dun Morogh,30.3,37.5,60 >> Corre hasta aquí.
step
    #softcore
    .goto Dun Morogh,30.9,33.1,15 >>Corre montaña arriba hacia el norte
step
    #softcore
    .goto Dun Morogh,32.4,29.1,15 >>Síguela hasta aquí
step
    #softcore
    .goto Dun Morogh,33.0,27.2,15,0
    .goto Dun Morogh,33.0,25.2,15,0
    .goto Wetlands,11.6,43.4,60,0
    .goto Wetlands,11.6,43.4,0
    .deathskip >>Sigue corriendo recto hacia el norte, salta hacia abajo y muere cuando entres en Los Humedales, luego resucita en el Puerto Menethil
step
    #softcore
    #completewith next
    .goto Wetlands,12.7,46.7,30 >> Nada hacia la orilla
step
    #softcore
    .goto Wetlands,9.5,59.7
    .fp Wetlands>> Consigue la ruta de vuelo del Puerto de Menethil
step
	#completewith next
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_y una|r |T132800:0|t[Cerveza del Trueno]
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
step
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ragnar Cebatruenos|r fuera
    .target Ragnar Thunderbrew
    .goto Dun Morogh,46.825,52.361
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
step << !Paladin !Rogue !Warrior
    .xp 8 >> Mata enemigos hasta el nivel 8
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .trainer >> Aprende tus hechizos de clase
    .train 5116>> Aprende Disparo de conmoción
    .target Grif Wildheart
step << Warlock
    .goto Dun Morogh,47.327,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gimrizz Molaro|r
    .target Gimrizz Shadowcog
    .trainer >> Aprende tus hechizos de clase
    .train 5782 >> Aprende |T136183:0|t[Miedo]
step << Warlock
    .goto Dun Morogh,47.273,53.658
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gimrizz Molaro|r
    .vendor >> |cRXP_BUY_Compra el|r |T133738:0|t[Grimorio de Descarga de Fuego (Rango 2)] |cRXP_BUY_si puedes permitírtelo. Si no, lo comprarás más tarde|r
    .target Gimrizz Shadowcog
step << Rogue
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .trainer >> Aprende tus hechizos de clase
step << Paladin
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Azar Martillopujante|r en el piso superior
    .target Azar Stronghammer
    .goto Dun Morogh,47.597,52.070
    .trainer >> Aprende tus hechizos de clase
step << Warrior
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Granis Hachaveloz|r en el interior
    .target Granis Swiftaxe
    .goto Dun Morogh,47.360,52.646
    .trainer >> Aprende tus hechizos de clase
step << Mage
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magis Chispamanto|r en el piso superior
    .target Magis Sparkmantle
    .goto Dun Morogh,47.498,52.076
    .trainer >> Aprende tus hechizos de clase
    .train 118 >> Aprende |T136071:0|t[Polimorfia]
step << Priest
    .xp <8,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maxan Anvol|r en el interior
    .target Maxan Anvol
    .goto Dun Morogh,47.342,52.190
    .trainer >> Aprende tus hechizos de clase
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Thamner Pol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135321:0|t[Gladius]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T132401:0|t[Hacha grande]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa un|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Graun Thromwyn|r
    >>|cRXP_BUY_Compra y equipa una|r |T133053:0|t[Marra de madera]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Compra hasta 30|r |T133968:0|t[Pan recién horneado] << Warrior/Rogue
    .vendor >> |cRXP_BUY_Compra hasta 15|r |T133968:0|t[Pan recién horneado] << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Belm|r en el interior
    .target Innkeeper Belm
    .goto Dun Morogh,47.377,52.523
    .vendor >> |cRXP_BUY_Compra hasta 30|r |T132815:0|t[Leche fría como el hielo]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Acepta la misión Poblado Peloescarcha
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Roscapiedra|r
    .target Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 313 >> Entrega la misión El Cubil Pardo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Bramiz|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    >>|cRXP_WARN_Elige el|r |T135637:0|t[Cuchillo de acampada] |cRXP_WARN_como recompensa. Guárdalo para después|r << Rogue
    .turnin 320 >> Entrega la misión Regresa junto a Bramiz
step
    #era << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Acepta la misión Operación Recombobulación
step
    #completewith next
    .goto Dun Morogh,43.1,45.0,20,0
    .goto Dun Morogh,42.1,45.4,20 >> Viaja a Monte Luz. Sigue la flecha y escala la montaña
step
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
    >>|cRXP_LOOT_Cardaluz|r también se puede despojar de las |cRXP_PICK_Cesta de cardaluz|r en el suelo
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    >>|cRXP_WARN_Espera hasta que el |cRXP_ENEMY_Viejo Barbahielo|r patrulle fuera de la Cueva. Una vez que patrulle fuera de la Cueva, puedes entrar y despojar la|r |cRXP_PICK_Estantería de carne de MacGrann|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Lanza|r |T136071:0|t[Polimorfia] |cRXP_WARN_en el|r |cRXP_ENEMY_Viejo Barbahielo|r << Mage
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en el|r |cRXP_ENEMY_Viejo Barbahielo|r << Warlock
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >> Entrega la misión La reserva robada de Tundra MacGrann
step << Mage/Priest/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_BUY_Compra hasta 10|r |T132815:0|t[Leche fría como el hielo] adicionales
    .target Keeg Gibn
step << Warrior/Paladin/Rogue
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keeg Gibn|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rejold Cebadiz|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >> Entrega la misión La cerveza perfecta
    .accept 413 >> Acepta la misión Cerveza negra Brillante
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marleth Cebadiz|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >> Entrega la misión Regresa junto a Marleth
step
    #era << Warlock
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Mata |cRXP_ENEMY_Gnomos parias|r. Despójalos para obtener sus |cRXP_LOOT_Engranajes|r y |cRXP_LOOT_Piñones|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #era
    .xp 9 >> Mata enemigos hasta el nivel 9
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Entra en el Poblado Peloescarcha
step
    #completewith next
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #hardcore
    >>|cRXP_WARN_Baja hasta esta ubicación para explorar el Poblado Peloescarcha. Si hay enemigos abajo, limpia los alrededores con normalidad y NO bajes|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step << Hunter
    #completewith next
    .xp 10-2325
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step << Hunter
    .xp 10-1400
step
    #hardcore
	#completewith next
	.hs >> Usa tu Piedra de hogar para ir a Kharanos
	.cooldown item,6948,>0,1
step
    #hardcore
    #completewith next
   .goto Dun Morogh,46.726,53.826,150 >> Viaja a Kharanos
step << Hunter
   .goto Dun Morogh,46.005,48.637,8,0
   .goto Dun Morogh,45.846,49.365
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r
   .target Razzle Sprysprocket
   .turnin 412 >> Entrega la misión Operación Recombobulación
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >> Entrega la misión Poblado Peloescarcha
    .accept 291 >> Acepta la misión Los informes
step << Rogue
    #level 10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hogral Bakkan|r en la trastienda
    .target Hogral Bakkan
    .goto Dun Morogh,47.563,52.608
    .accept 2218 >> Acepta la misión El camino hacia la salvación
step
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thamner Pol|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Thamner Pol
step << !Hunter
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .target Razzle Sprysprocket
    .turnin 412 >> Entrega la misión Operación Recombobulación
step << Hunter
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .accept 6064 >>Acepta la misión Domesticar la bestia
step << Hunter
    .goto Dun Morogh,48.3,56.9
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí del risco grande|r
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
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Leopardo de las nieves|r
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
    >>|cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso zarpahelada|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grif Corazón Salvaje|r
    .turnin 6085 >>Entrega la misión Domesticar la bestia
    .target Grif Wildheart
    .accept 6086 >>Acepta la misión Domesticar la bestia
step << Warrior
    #sticky
    #completewith next
    .money >0.1030
    +|cRXP_WARN_Mata enemigos hasta tener 10 platas 30 cobres, luego ve a Forjaz|r
step << Warrior/Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >> Viaja a Forjaz
step << Hunter
    .goto Ironforge,70.86,85.83
    .target Belia Thundergranite
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belia Tronagranito|r
    .turnin 6086 >> Entrega la misión Domesticar la bestia
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r
    .trainer >>Aprende el uso de Arrojadizas
    .target Bixi Wobblebonk
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>Compra una|cRXP_BUY_ |T135641:0|t[Daga arrojadiza equilibrada] |ry equípala|r
    .target Brenwyn Wintersteel
step << Warrior/Hunter
    #completewith next
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.90,35.62
    .zone Dun Morogh >> Sal de Forjaz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .target Rudra Amberstill
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >> Acepta la misión La protección del rebaño
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Sube esta parte de la montaña
step
    .goto Dun Morogh,62.6,46.1
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_Esta misión es difícil. Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo en solitario|r
    >>|cRXP_WARN_Mira el video de abajo antes de intentar matar a |cRXP_ENEMY_Vagash|r. Se puede completar en solitario con cualquier clase|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    >>|cRXP_WARN_Elige el|r |T133052:0|t[|cRXP_FRIENDLY_Martillo Crestanevada|r] |cRXP_WARN_como recompensa. No te preocupes si aún no puedes equiparlo, ¡aprenderás el uso de mazas de 2 manos muy pronto!|r << Warrior
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Entrega la misión La protección del rebaño
step
    #completewith next
    .goto Dun Morogh,68.5,54.6,60 >> Viaja a la Cantera de Gol'Bolar
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cocinero Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si es necesario|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si es necesario|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r y el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 433 >> Acepta la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acepta la misión ¡Malditos troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r y |cRXP_ENEMY_Cascahuesos Comepiedras|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r y el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Entrega la misión El servidor público
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step
    #era
    .goto Dun Morogh,67.1,59.7
    .xp 10 >> Mata enemigos hasta el nivel 10
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .accept 419 >> Acepta la misión El piloto perdido
step
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Entrega la misión Vengar al piloto
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Cebadiz|r
    .target Mountaineer Barleybrew
    .goto Dun Morogh,79.6,50.7,50,0
    .goto Dun Morogh,82.3,53.5,25,0
    .goto Dun Morogh,86.278,48.812
    .turnin 413 >> Entrega la misión Cerveza negra Brillante
    .accept 414 >> Acepta la misión Cerveza negra para Kadrell
step
    #completewith next
    .goto Dun Morogh,86.203,51.260,15,0
    .goto Loch Modan,22.071,73.127,200 >> Vuela a Loch Modan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r en el búnker
    .target Captain Rugelfuss
    .accept 267 >> Acepta la misión La amenaza trogg
step
    #completewith HonorStudents
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .turnin 414 >> Entrega la misión Cerveza negra para Kadrell
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor >> |cRXP_BUY_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_si lo necesitas|r
    .target Yanni Stoutheart
step << !Paladin
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r
    .home >> Establece tu Piedra de hogar en Thelsamar
    .target Innkeeper Hearthstove
step
    #label HonorStudents
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .accept 6387 >> Acepta la misión Estudiantes de honor
    .target Brock Stoneseeker
step
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
    .turnin 414 >> Entrega la misión Cerveza negra para Kadrell
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step << skip
    #sticky
    #completewith next
    +Mata enemigos hasta tener al menos 33 Platas entre dinero y objetos para vender
--N rogue money gate for cutlass+1h swords
step
    #completewith Thelsamar1
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarda los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_para subir de nivel |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_No te desvíes de tu camino para completar esto ahora. Volverás a Loch Modan pronto|r
step
    #completewith next
    .goto Loch Modan,23.85,17.92,100 >> Viaja al norte a la Estación de Algaz
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
.solo
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .target Mountaineer Stormpike
step
    #softcore
    #completewith next
    .deathskip >> Muere y resucita en Thelsamar
step
    .isQuestComplete 418
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
step
    #label Thelsamar1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .target Thorgrum Borrelson
    .goto Loch Modan,33.938,50.954
    .turnin 6387 >> Entrega la misión Estudiantes de honor
    .accept 6391 >> Acepta la misión Vuela a Forjaz
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Golnir Dedorroca|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >> Entrega la misión Vuela a Forjaz
    .accept 6388 >> Acepta la misión Gryth Thurden
step << Hunter
    >>|cRXP_WARN_NO vueles a ningún lado|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Entrega la misión Gryth Thurden
    .accept 6392 >> Acepta la misión Regresa con Brock
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Barin Rocarroja|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >> Entrega la misión Los informes
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Buliwyf Petramano|r
    >>|cRXP_WARN_Equipa el|r |T133052:0|t[|cRXP_FRIENDLY_Martillo Crestanevada|r] |cRXP_WARN_ahora si no lo hiciste antes|r
    .target Buliwyf Stonehand
    .goto Ironforge,61.181,89.514
    .trainer >>Aprende Mazas de 2 manos
step << !Hunter
    >>|cRXP_WARN_NO vueles a ningún lado|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >> Entrega la misión Gryth Thurden
    .accept 6392 >> Acepta la misión Regresa con Brock
step << !Hunter skip
    #completewith next
    +Realiza un Logout Skip saltando encima de una de las cabezas de grifo, desconectando y volviendo a entrar
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .zoneskip Ironforge,1
step
    .goto Ironforge,78.00,52.00,5,0
    >>|cRXP_WARN_Entra en el Tranvía Subterráneo|r
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
    .timer 11,A por las ratas del tranvía subterráneo RP
    .accept 6662 >> Acepta la misión Mi hermano Niblis
step
    #completewith next
    .zone Stormwind City >> Toma el Tranvía hacia Ventormenta
    >>|cRXP_WARN_Sube tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras esperas el Tranvía|r
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Niblis|r cuando bajes del Tranvía
    >>|cRXP_FRIENDLY_Niblis|r |cRXP_WARN_está en el andén central|r
    .turnin 6662 >> Entrega la misión Mi hermano Niblis
    .target Nipsy
step
    .zone Stormwind City >> Entra en Ventormenta
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .target Grimand Elmore
    .goto StormwindClassic,51.757,12.091
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> Aprende tus hechizos de clase
    .turnin 5634 >> Entrega la misión Oración desesperada
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .train 13908 >> Aprende Rezo desesperado
    .target High Priestess Laurena
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.503,45.712
    .trainer >> Aprende tus hechizos de clase
    .accept 1638 >> Acepta la misión Instrucción de guerrero
    .target Ilsa Corbin
step << Warrior
    #completewith next
    .goto StormwindClassic,72.878,51.582,17,0
    .goto StormwindClassic,71.7,39.9,12 >> Entra en la Taberna
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >> Entrega la misión La jarra de Bartleby
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1688 >> Acepta la misión Surena Caledon
    .target Gakin the Darkbinder
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Aprende Espadas de 1 mano << Rogue/Mage
    .trainer >>Aprende el uso de Bastones << Priest
    .trainer >>Aprende Espadas de 1 mano y Bastones << Warlock
    .trainer >>Aprende Espadas de 2 manos << Warrior/Paladin
step << Dwarf Paladin
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en Ventormenta
    .target Innkeeper Allison
step << Rogue
    .money <0.2000
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    .target Gunther Weller
    .vendor >> |cRXP_WARN_Compra un|r |T135346:0|t[Alfanje] |cRXP_WARN_y equípalo en tu Mano Principal. Equipa la|r |T135641:0|t[|cRXP_FRIENDLY_Daga de artesano|r] |cRXP_WARN_de antes en tu Mano Secundaria|r
step << Rogue
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Mullby|r
    .vendor >> |cRXP_BUY_Compra un|r |T135425:0|t[Cuchillo arrojadizo cortante]|cRXP_BUY_. Equípalo cuando seas nivel 11|r
    .target Thurman Mullby
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som--h
#classic
#tbc
<< Alliance
#name 10-11 Elwynn (Enano/Gnomo)
#version 1
#group RestedXP Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#defaultfor Gnome/Dwarf
#next 11-13 Loch Modan (Enano/Gnomo)

step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fp Stormwind >> Consigue la ruta de vuelo de la Ciudad de Ventormenta
    .target Dungar Longdrink
step
    #completewith next
    .goto Elwynn Forest,42.107,65.930,100 >> Viaja a Villadorada
step
    .goto Elwynn Forest,42.107,65.930
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .accept 62 >> Acepta la misión La Mina Abisal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Acepta la misión Las velas de los kóbolds
step << Mage/Rogue
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Aprende tus hechizos de clase
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r y |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .accept 88 >> Acepta la misión ¡Princesa debe morir!
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.483
    .accept 85 >> Acepta la misión El collar perdido
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.252
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >> Entrega la misión El collar perdido
    .accept 86 >> Acepta la misión Un pastel para Billy
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acepta la misión Jóvenes enamorados
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tommy Joe Pedregosa|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Entrega la misión Jóvenes enamorados
    .accept 111 >> Acepta la misión Habla con la abuelita
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,34.486,84.252
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    >>|cRXP_WARN_Omite la entrega por ahora si no tienes suficientes [Trozos de carne de jabalí]|r
    .turnin 86 >> Entrega la misión Un pastel para Billy
    .isQuestComplete 86
    .target "Auntie" Bernice Stonefield
step
    .goto Elwynn Forest,34.943,83.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Abuela Pedregosa|r
    .turnin 111 >> Entrega la misión Habla con la abuelita
    .accept 107 >> Acepta la misión Una nota para William
    .target Gramma Stonefield
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Los monstruos de nivel 5 pueden volverse grises durante esta misión. Aun así termínala porque necesitas completarla para desbloquear la siguiente|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Entra y explora la Mina Abisal|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Los monstruos de nivel 5 pueden volverse grises durante esta misión. Aun así termínala porque necesitas completarla para desbloquear la siguiente|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Viaja a Villadorada
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    >>|cRXP_WARN_NO vendas la recompensa|r |T133581:0|t[Bolsa de canicas] |cRXP_WARN_. Es un objeto increíblemente valioso hasta el nivel 60|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.108,65.928
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .accept 61 >> Acepta la misión Un envío para Ventormenta
    .turnin 107 >> Entrega la misión Una nota para William
    .accept 112 >> Acepta la misión La recolección de algas
step
    >>Mata |cRXP_ENEMY_Múrlocs|r y |cRXP_ENEMY_Correcorrientes múrloc|r. Despójalos para obtener |cRXP_LOOT_Hojas de alga|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >> Entra en la Cantera de Jaspe
step
    >>|cRXP_WARN_Sigue el camino por el centro para explorar la Cantera de Jaspe|r
    >>|cRXP_WARN_Sal de la Cantera de Jaspe tan pronto como se complete el objetivo|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >> Entrega la misión Más preocupaciones
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .accept 37 >> Acepta la misión Encuentra a los guardias perdidos
    .accept 52 >> Acepta la misión Proteger la frontera
step
    #era
    #completewith Prowlers
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #era
    >>Haz clic en |cRXP_PICK_Un cadáver medio comido|r en el suelo
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >> Acepta la misión Descubre el destino de Rolf
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
step
    #era
    #completewith Bundles
    >>Despoja el |cRXP_LOOT_Fardo de madera|r en el suelo. |cRXP_WARN_Se encuentran debajo de los árboles|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Haz clic en el |cRXP_PICK_Cadáver de Rolf|r en el suelo
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Múrlocs|r cercanos pueden atacarte cuando hagas clic en el|r |cRXP_PICK_Cadáver de Rolf|r
    >>|cRXP_ENEMY_Batidores múrloc|r |cRXP_WARN_lanzarán|r |T135915:0|t[Beber poción menor] |cRXP_WARN_que les cura a sí mismos por 61-68|r
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step
    #era
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob Young Forest Bear
step
    #era
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Despoja el |cRXP_LOOT_Fardo de madera|r en el suelo. |cRXP_WARN_Se encuentran debajo de los árboles|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
step
    #era
    #label Bears
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Acepta la misión Artículos rojos de lino
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #era
    #completewith next
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
step
    .goto Elwynn Forest,69.3,79.0
    >>Mata a |cRXP_ENEMY_Princesa|r. Despójala para obtener su |cRXP_LOOT_Collera|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_vendrá con ambos de sus|r |cRXP_ENEMY_Séquitos porcinos|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_también lanzará|r |T132368:0|t[Carga impetuosa] |cRXP_WARN_que inflige mucho daño|r
    .complete 88,1
    .mob Princess
step
    #completewith next
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r]
    .use 1972>>|cRXP_WARN_Usa las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] para iniciar la misión|r
    >>|cRXP_WARN_Las|r |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] |cRXP_WARN_es un botín muy raro. Ignora este paso si no lo obtienes|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acepta la misión Las escrituras de Cejade
step
    #era
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
step
    #era
    #softcore
    #sticky
    #completewith next
    .goto Elwynn Forest,83.6,69.7,120 >>Muere y resucita en el Ángel de la Resurrección si tienes poca vida, de lo contrario solo corre de regreso y entrega la misión
step
    #era
    #label Deed
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Entrega la misión Artículos rojos de lino
step
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Acepta la misión Gnolls invasores
step
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    >>|cRXP_WARN_MANTENTE EN EL CAMINO PRINCIPAL Y EVITA CUALQUIER ENEMIGO CERCANO DURANTE EL TRAYECTO|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra los siguientes objetos para entregas de misiones más rápidas en Loch Modan pronto
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>Compra |T134437:0|t[Trozo de carne de jabalí] adicionales, puede ser útil para subir |T133971:0|t[Cocina] al 50 de cara al futuro
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    >>|T134437:0|t[Trozo de carne de jabalí]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,4,86,1 -- Chunk of Boar Meat (4)
    .target Auctioneer Jaxon
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morgan Mortero|r
    .turnin 61,1 >> Entrega la misión Un envío para Ventormenta
    >>|cRXP_WARN_Elegimos el|r |T132383:0|t[Cohete explosivo] |cRXP_WARN_como recompensa. Causa daño decente y puede usarse para "Split pulling" que es increíblemente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Haz clic aquí para ver un vídeo sobre el "Split pulling". Es un vídeo corto y muy útil para aprender|r
    .target Morgan Pestle
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .trainer >> Aprende tus hechizos de clase
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
     #softcore
    >>Lanza Transfusión de vida en tu camino de regreso a |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.2,78.5
    .turnin 1689 >> Entrega la misión El vínculo
step << Warlock
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Entrega la misión El vínculo
step << Warlock
    #softcore
    #completewith next
    .goto StormwindClassic,25.2,78.5
    .deathskip >> Muere y resucita en el Ángel de la Resurrección usando Transfusión de vida y poniéndote sobre la fogata que tienes al lado
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Viaja a Villadorada
step << Warrior
    .goto Elwynn Forest,41.09,65.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .trainer >> Aprende tus hechizos de clase
step
    #era
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
    .accept 239 >> Acepta la misión El Cuartel de Arroyoeste necesita ayuda
    .target Marshal Dughan
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> Entrega la misión La recolección de algas
    .accept 114 >> Acepta la misión La fuga
    .target William Pestle
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Aprende tus hechizos de clase
step << Priest
    .goto Elwynn Forest,43.283,65.719
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
    .target Priestess Josetta
    .trainer >> Aprende tus hechizos de clase
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Viaja a los Viñedos de Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Entrega la misión La fuga
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .target Ma Stonefield
    .turnin 88 >> Entrega la misión ¡Princesa debe morir!
    .goto Elwynn Forest,34.660,84.483
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    >>|cRXP_WARN_Omite la entrega por ahora si no tienes suficientes [Trozos de carne de jabalí]|r
    .target "Auntie" Bernice Stonefield
    .turnin 86 >> Entrega la misión Un pastel para Billy
    .goto Elwynn Forest,34.486,84.252
    .isQuestComplete 86
step
    #sticky
    .abandon 86 >> Abandona la misión Un pastel para Billy
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >> Viaja al Cuartel de Arroyoeste
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 11 >> Acepta la misión Recompensas por los gnolls Zarparrío
    .goto Elwynn Forest,24.234,74.450
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 176 >> Acepta la misión Se busca: Hogger
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 11 >> Acepta la misión Recompensas por los gnolls Zarparrío
    .goto Elwynn Forest,24.234,74.450
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 176 >> Acepta la misión Se busca: Hogger
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .solo
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 11 >> Acepta la misión Recompensas por los gnolls Zarparrío
    .target Deputy Rainer
step
    #completewith GnollEnd
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener la |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r]
    .use 1307 >>|cRXP_WARN_Usa la |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] para comenzar la misión|r
    >>|cRXP_WARN_La|r |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] |cRXP_WARN_es un objeto muy raro. Ignora este paso si no lo obtienes|r
    >>|cRXP_ENEMY_Bronco Mordeveloz|r |cRXP_WARN_es un enemigo raro, tiene un 100% de probabilidad de botín|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acepta la misión El Coleccionista
    .unitscan Gruff Swiftbite
step << !Warlock
    .group
    #completewith next
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Bandas|r
    >>|cRXP_WARN_Asegúrate de tener 10|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu próxima misión de clase del Paladín|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    #completewith next
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Bandas|r
    >>|cRXP_WARN_Asegúrate de tener 10|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu próxima misión de clase del Paladín|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
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
    >>|cRXP_WARN_Esta misión es difícil. Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo en solitario|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    .group
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
    >>|cRXP_WARN_Esta misión es difícil. Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo en solitario|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #label GnollEnd
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
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Bandas|r
    >>|cRXP_WARN_Asegúrate de tener 10|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu próxima misión de clase del Paladín|r << Dwarf Paladin
    .complete 11,1 -- Painted Gnoll Armband (8)
    .collect 2589,10,1648,1,1 << Dwarf Paladin -- Linen Cloth (10)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .isQuestComplete 176
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >> Entrega la misión El Coleccionista
    .isOnQuest 123
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 11 >> Entrega la misión Recompensas por los gnolls Zarparrío
    .target Deputy Rainer
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >> Viaja a Páramos de Poniente
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .target Farmer Saldean
    .goto Westfall,56.04,31.23
    .accept 9 >> Acepta la misión Campos de la muerte
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .target Salma Saldean
    .goto Westfall,56.40,30.50
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 22 >> Acepta la misión Pastel de hígado de dentosangre
step
    #softcore
    #sticky
    #completewith next
    .deathskip >> Muere y resucita en el Ángel de la Resurrección, o corre a Colina del Centinela
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .target Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .accept 12 >> Acepta la misión La Milicia Popular
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
    .target Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Explorador Galiaan|r
    .target Scout Galiaan
    .goto Westfall,54.00,53.00
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >> Consigue la ruta de vuelo de Colina del Centinela
    .fly Stormwind >> Vuela a Ventormenta << Dwarf Paladin
    .target Thor
step << !Paladin
    .hs >> Usa tu Piedra de hogar para ir a Loch Modan
step << Dwarf Paladin
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entra en el Tranvía Subterráneo. Toma el tranvía a Forjaz
    --.link https://www.youtube.com/watch?v=M_tXROi9nMQ >> |cRXP_WARN_Do a logout skip inside the Tram. Click here for video reference|r
]])

RXPGuides.RegisterGuide([[
#hardcore
#era/som--h
#classic
#tbc
<< Alliance
#name 11-13 Loch Modan (Enano/Gnomo)
#version 1
#group RestedXP Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#defaultfor Gnome/Dwarf
#next 13-15 Páramos de Poniente

step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >>Acepta la misión Escrito sobre divinidad
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >> Viaja hacia |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso de arriba
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r
    .turnin 2999 >>Entrega la misión Escrito sobre divinidad
    .accept 1645 >>Acepta la misión Escrito sobre divinidad
    .turnin 1645 >>Entrega la misión Escrito sobre divinidad
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Usa el |T133739:0|t[|cRXP_LOOT_Escrito sobre divinidad|r] para iniciar la misión|r
    .accept 1646 >>Acepta la misión Escrito sobre divinidad
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r
    .turnin 1646 >>Entrega la misión Escrito sobre divinidad
    .accept 1647 >>Acepta la misión Escrito sobre divinidad
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John Turner|r
    >>|cRXP_FRIENDLY_John Turner|r |cRXP_WARN_patrulla el anillo exterior de Forjaz cerca de la Casa de Subastas|r
    .turnin 1647 >>Entrega la misión Escrito sobre divinidad
    .accept 1648 >>Acepta la misión Escrito sobre divinidad
    .turnin 1648 >>Entrega la misión Escrito sobre divinidad
    .accept 1778 >>Acepta la misión Escrito sobre divinidad
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tiza Forjabatalla|r en el piso superior
    .target Tiza Battleforge
    .turnin 1778 >>Entrega la misión Escrito sobre divinidad
    .accept 1779 >>Acepta la misión Escrito sobre divinidad
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muiredon Forjabatalla|r
    .target Muiredon Battleforge
    .turnin 1779 >>Entrega la misión Escrito sobre divinidad
    .accept 1783 >>Acepta la misión Escrito sobre divinidad
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .goto Ironforge,55.501,47.742
    .fly Loch Modan >> Vuela a Loch Modan
    .target Gryth Thurden
    .zoneskip Ironforge,1
step
    #optional
    .isQuestComplete 418
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
step
    #completewith RTB
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >> |cRXP_BUY_Compra|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_si es necesario|r
    .target Yanni Stoutheart
step
    #completewith RTB
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r
    .vendor 6734 >> |cRXP_BUY_Compra un poco de|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si es necesario|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Compra un poco de|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si es necesario|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
step
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brock Buscapiedras|r
    .turnin 6392 >> Entrega la misión Regresa con Brock
    .target Brock Stoneseeker
step << Hunter
    .goto Loch Modan,35.828,43.457
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vrok Rayobestial|r
    >>|cRXP_BUY_Compra una|r |T135613:0|t[Bocarda de cazador] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2511,1
    .money <0.1300
    .target Vrok Blunderblast
step
    .group
    #completewith BraveSoul
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .solo
    #completewith StormpikeStop
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .group
    #completewith MinerGear
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .group
    #label BraveSoul
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >> Entra en la Mina de Fuenteplata
step
    .group
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    >>|cRXP_WARN_Los |cRXP_PICK_Cajones de la Liga de Mineros|r se pueden encontrar por toda la Mina|r
    >>|cRXP_WARN_Podrás completar esta misión a un nivel más alto si deseas dejarla por ahora|r
    .complete 307,1 -- Miners' Gear (4)
step
    .group
    #completewith StormpikeStop
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Paladin/Warrior
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nillen Andemar|r
    .vendor >>|cRXP_FRIENDLY_Nillen Andemar|r |cRXP_WARN_vende|r |T133476:0|t[|cRXP_FRIENDLY_Maza con pinchos pesada|r] |cRXP_WARN_que es un artículo de suministro limitado|r
    >>|cRXP_WARN_Comprueba si está disponible y cómprala si puedes. Si no puedes pagarlo, entonces mata |cRXP_ENEMY_Ratatúneles|r hasta que tengas suficiente|r
    >>|cRXP_WARN_Hazlo rápidamente ya que otro jugador podría comprarlo antes que tú|r
    .target Nillen Andemar
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
    >>|cRXP_ENEMY_Ratatúneles|r |cRXP_WARN_pueden aparecer por todo Loch Modan. Revisa tu Mapa del Mundo para localizar sus ubicaciones|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vende y repara si es necesario|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
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
    .mob +Forest Lurker
step
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compra un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_junto con 2|r |T135435:0|t[Madera Simple]|cRXP_BUY_. Compra|r|T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_si es necesario|r
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,40,0
    .goto Loch Modan,31.54,74.96,40,0
    .goto Loch Modan,33.88,76.58
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    #era
    .goto Loch Modan,27.4,48.4
    .xp 13+9600 >> Mata enemigos hasta alcanzar 9600+/11400 xp
step
    #som--xpgate
    .goto Loch Modan,27.4,48.4
    .xp 14-2300 >> Mata enemigos hasta que te falten 2300xp para el nivel 14 (9100/11400)
step
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Sube por el camino de tierra y luego déjate caer dentro del búnker
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r
    .target Captain Rugelfuss
    .goto Loch Modan,23.233,73.675
    .turnin 267 >> Entrega la misión La amenaza trogg
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
step << !Dwarf/!Paladin
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>> Vuela a Forjaz
    .target Thorgrum Borrelson
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,86.09,51.15
    .zone Dun Morogh >> Viaja a Dun Morogh
step << Dwarf Paladin
    #completewith next
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>|cRXP_WARN_Usa el|r |T133439:0|t[Símbolo de la vida] |cRXP_WARN_en|r |cRXP_FRIENDLY_Narm Faulk|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Narm Faulk|r
    .use 6866
    .turnin 1783 >>Entrega la misión Escrito sobre divinidad
    .accept 1784 >>Acepta la misión Escrito sobre divinidad
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Mata |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener la |cRXP_LOOT_Misiva Hierro Negro|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
	#completewith next
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
step << Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Paladin
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Hunter
    .goto Ironforge,69.872,82.890
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regnus Tronagranito|r
    .trainer >> Aprende tus hechizos de clase
    .target Regnus Thundergranite
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
step << Mage/Priest/Warlock
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_si cuesta menos de 33 platas 40 cobres|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
step << Mage/Priest/Warlock
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harick Tamborroca|r abajo
    >>|cRXP_WARN_Si no puedes obtener una|r |T135144:0|t[Varita mágica superior] |cRXP_WARN_compra una|r |T135468:0|t[Varita humeante] |cRXP_WARN_y equípala cuando seas nivel 15|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
step << Warlock
    #softcore
    #requires Wand2
    .goto Ironforge,51.1,8.7,15,0 >> Entra en el edificio
    .goto Ironforge,50.4,6.3
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    #hardcore
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brezospina|r
    .trainer >> Aprende tus hechizos de clase
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jubahl Buscador de cadáveres|r
    .vendor >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorio Consumir Sombras (Rango 1)] |cRXP_BUY_y|r |T133738:0|t[Grimorio Sacrificio (Rango 1)] |cRXP_BUY_si puedes permitírtelo|r
    .target Jubahl Corpseseeker
step << Rogue
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hulfdan Barbanegra|r abajo
    .turnin -2218 >> Entrega la misión El camino hacia la salvación
    .target Hulfdan Blackbeard
step << Rogue
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Aprende tus hechizos de clase
    .target Fenthwick
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r
    .trainer >> Aprende tus hechizos de clase
    .target Toldren Deepiron
step << !Paladin !Warrior !Hunter !Warlock skip
    #completewith next
    +Realiza un Logout Skip saltando encima de una de las cabezas de grifo, desconectando y volviendo a entrar
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .zoneskip Ironforge,1
step << !Paladin
    .goto Ironforge,78.00,52.00,5,0
    .zone Stormwind City >> Entra en el Tranvía Subterráneo. Toma el Tranvía a la Ciudad de Ventormenta
    >>|cRXP_WARN_Sube tu|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_y|r |T133971:0|t[Cocina] |cRXP_WARN_si es necesario mientras esperas el tranvía|r
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
step
    #completewith Fly2WF
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billibub Volopiñón|r
    .vendor 5519 >> |cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_(si está disponible)|r
    >>|cRXP_WARN_Este es un objeto de suministro limitado. Omite este paso si |cRXP_FRIENDLY_Billibub Volopiñón|r no tiene uno|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Rogue
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra 1 o 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo o compra algo mejor en la Casa de Subastas|r
    .collect 2027,2 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra 1 o 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2027,2 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marda Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.69
    .xp <14,1
step
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>Compra los siguientes objetos para entregar misiones más rápido en Páramos de Poniente pronto 
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T133972:0|t[Carne fibrosa de buitre]
    >>|T133884:0|t[Ojo de múrloc]
    >>|T135997:0|t[Morro de dentrosangre]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Hígado de Dentosangre]
    >>|T132794:0|t[Frasco de aceite]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 814,5,103,1 -- Flask of Oil (5)
    .target Auctioneer Jaxon
step
    #label Fly2WF
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
]])
