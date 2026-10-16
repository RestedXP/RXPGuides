if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 1-6 Villanorte
#version 1
#group RestedXP Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#defaultfor Human
#next 6-11 Bosque de Elwynn; 6-13 Bosque de Elwynn
step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +Has seleccionado una guía destinada a Humanos. Deberías elegir la misma zona inicial en la que comienzas
step << Warlock
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dane Winslow|r
    .vendor >> |cRXP_WARN_Vende tu Armadura, Camisa, Pantalones y Botas junto con la Comida y el Agua de tus bolsas. Necesitas 10c en total|r
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >> Acepta la misión El libro robado
    .train 348 >> Aprende |T135817:0|t[Inmolar]
    .target Drusilla La Salle
step << Warlock
    #hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Entra en la tienda del campamento Defias|r
    >>Abre los |cRXP_PICK_Libros robados|r. Despójalos para obtener los |cRXP_LOOT_Poderes del Vacío|r
    >>|cRXP_WARN_¡Puedes despojar los |cRXP_LOOT_Poderes del Vacío|r de forma segura mientras estés dentro de la Tienda! Observa el video sobre cómo hacerlo|r
    .link https://youtu.be/3qQwsJhAZIk >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_Permanece dentro de la Tienda para que los |cRXP_ENEMY_Matones Defias|r no puedan golpearte|r
    .hs >> Usa tu Piedra de hogar para ir al Valle de Villanorte
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >> Entrega la misión El libro robado
    .target Drusilla La Salle
step << Warlock
    #completewith next
    .cast 688 >> |cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >> Acepta la misión Una amenaza interna
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Mata |cRXP_ENEMY_Lobos jóvenes|r hasta que tengas 10 cobres o más en basura para vender
    >>|cRXP_WARN_Aprenderás|r |T132333:0|t[Grito de batalla] |cRXP_WARN_lo que aumenta la velocidad al subir de nivel al principio|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >> Entrega la misión Una amenaza interna
    .accept 7 >> Acepta la misión La limpieza del campamento kóbold
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >> Acepta la misión Eagan Desollapelambres
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.941,40.166
    .turnin 5261 >> Entrega la misión Eagan Desollapelambres
    .accept 33 >> Acepta la misión Lobos en la frontera
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    .vendor >> |cRXP_WARN_Cuando tengas objetos para vender por valor de 50 cobres, compra 10|r |T132794:0|t[Agua de manantial refrescante]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    #completewith next
    >>Mata |cRXP_ENEMY_Lobos jóvenes|r y |cRXP_ENEMY_Lobos grises|r. Despójalos para obtener su |cRXP_LOOT_Carne|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.6,35.9,40,0
    .goto Elwynn Forest,49.6,35.8,40,0
    .goto Elwynn Forest,51.6,37.0,40,0
    .goto Elwynn Forest,49.6,35.8
    >>Mata |cRXP_ENEMY_Alimañas kóbold|r
	.mob Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,46.41,41.94,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,51.91,37.85,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,46.41,41.94
    >>Mata |cRXP_ENEMY_Lobos jóvenes|r y |cRXP_ENEMY_Lobos grises|r. Despójalos para obtener su |cRXP_LOOT_Carne|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .target Eagan Peltskinner
    .turnin 33,2 >> Entrega la misión Lobos en la frontera << Warrior/Paladin/Rogue
    .turnin 33,1 >> Entrega la misión Lobos en la frontera << !Warrior !Paladin !Rogue
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    .vendor >>|cRXP_WARN_Vende la basura|r
    >>|cRXP_WARN_Compra 10|r |T132794:0|t[Agua de manantial refrescante]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.691,41.417
    .vendor >>|cRXP_WARN_Vende la basura|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Janos|r
    .goto Elwynn Forest,47.240,41.900
    .vendor >>|cRXP_BUY_Compra una|r |T135650:0|t[Puntilla]
    .target Janos Hammerknuckle
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135650:0|t[Puntilla]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.3
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 7 >> Entrega la misión La limpieza del campamento kóbold
    .accept 15 >> Acepta la misión Investiga la Mina del Eco
    .accept 3100 >> Acepta la misión Una carta simple << Warrior
    .accept 3101 >> Acepta la misión Una carta consagrada << Paladin
    .accept 3102 >> Acepta la misión Una carta cifrada << Rogue
    .accept 3103 >> Acepta la misión Una carta sacralizada << Priest
    .accept 3104 >> Acepta la misión Una carta glífica << Mage
    .accept 3105 >> Acepta la misión Una carta manchada << Warlock
step
    .xp 3 >> Mata enemigos hasta el nivel 3
step
    .goto Elwynn Forest,47.2,35.1,40,0
    .goto Elwynn Forest,48.9,32.8,40,0
    .goto Elwynn Forest,51.7,37.7,40,0
    .goto Elwynn Forest,47.2,35.1
    >>Mata |cRXP_ENEMY_Trabajadores kóbold|r
	.mob Kobold Worker
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>Mata enemigos hasta alcanzar 1110+/1400xp de regreso
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .vendor >> |cRXP_WARN_Vende la basura|r
--N need SoM xp note
step
    #requires xp3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 15 >> Entrega la misión Investiga la Mina del Eco
    .accept 21 >> Acepta la misión Refriega en el Eco
step << Priest/Mage
    #completewith next
    .goto Elwynn Forest,49.52,39.99,10 >> Sube por las escaleras << Mage
    .goto Elwynn Forest,49.3,40.7,15 >> Viaja hacia la |cRXP_FRIENDLY_Sacerdotisa Anetta|r << Priest
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden Bremen|r
    .target Khelden Bremen
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >> Entrega la misión Una carta glífica
    .trainer >> Aprende tus hechizos de clase
step << Priest
    #completewith next
    .goto Elwynn Forest,49.8,40.2,10 >> Pasa por la puerta
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >> Entrega la misión Una carta sacralizada
    .trainer >> Aprende tus hechizos de clase
step << Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >> Viaja hacia |cRXP_FRIENDLY_Llane Beshere|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Viaja hacia el |cRXP_FRIENDLY_Hermano Sammuel|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >> Entrega la misión Una carta simple
    .trainer >> Aprende tus hechizos de clase
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Sammuel|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >> Entrega la misión Una carta consagrada
    .trainer >> Aprende tus hechizos de clase
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >> Acepta la misión Hermandad de ladrones
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >> Entrega la misión Una carta manchada
    .xp 4 >> Mata enemigos hasta el nivel 4
    .trainer >>Aprende |T136118:0|t[Corrupción]
step
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
	.mob Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >> Mata enemigos hasta el nivel 4
step
    #completewith next
    #softcore
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >> Entrega la misión Hermandad de ladrones << Paladin
    .turnin 18,1 >> Entrega la misión Hermandad de ladrones << Rogue/Warlock
    .turnin 18,5 >> Entrega la misión Hermandad de ladrones << Mage
    .turnin 18,2 >> Entrega la misión Hermandad de ladrones << Priest
    .turnin 18,3 >> Entrega la misión Hermandad de ladrones << Warrior
    .turnin 18 >> Entrega la misión Hermandad de ladrones << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >> Acepta la misión La recompensa por Garrick Piesuaves
    .accept 3903 >> Acepta la misión Milly Osworth
step << Paladin
    #completewith next
    +Equipa el |T133052:0|t[Martillo de guerra de milicia]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Godric Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.7,41.4
    .vendor >> Vende la basura, repara
step
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Entra en la Mina del Eco
step
    .goto Elwynn Forest,48.61,27.63
    >>Mata |cRXP_ENEMY_Obreros kóbold|r
	.mob Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >> Mata enemigos hasta el nivel 5
step << !Priest !Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3903 >> Entrega la misión Milly Osworth
    >>|cRXP_WARN_Omite la continuación|r
    .target Milly Osworth
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3903 >> Entrega la misión Milly Osworth
    .accept 3904 >> Acepta la misión La cosecha de Milly
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorik Kerridan|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    .turnin 3102 >> Entrega la misión Una carta cifrada
    >>|cRXP_WARN_No necesitas entrenar ningún hechizo|r
step << Priest/Mage
    >>Despoja la |cRXP_PICK_Cosecha de Milly|r del suelo
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Mata a |cRXP_ENEMY_Garrick Piesuaves|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
	.mob Garrick Padfoot
    .complete 6,1 --Collect Garrick's Head (x1)
step << !Priest !Mage
    #sticky
    .abandon 3904 >> Abandona la misión La cosecha de Milly
step << !Priest !Mage
    .xp 5+1715 >> Mata enemigos de regreso hasta alcanzar 1715+/2800xp
    .goto Elwynn Forest,48.171,42.943
--N SoM xp values
step << Priest/Mage
    .xp 5+1175 >> Mata enemigos de camino de vuelta hasta alcanzar 1175+/2800xp
    .goto Elwynn Forest,50.7,39.2
step
    #completewith next
    #softcore
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly Osworth|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3904 >> Entrega la misión La cosecha de Milly
    .accept 3905 >>Acepta la misión Informe de la vendimia
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 6,2 >> Entrega la misión La recompensa por Garrick Piesuaves << Warrior/Rogue/Paladin
    .turnin 6,1 >> Entrega la misión La recompensa por Garrick Piesuaves << !Warrior !Rogue !Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r dentro de la Abadía
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,1 >> Entrega la misión Refriega en el Eco << Rogue
    .turnin 21,2 >> Entrega la misión Refriega en el Eco << Warrior/Paladin
    .turnin 21,3 >> Entrega la misión Refriega en el Eco << !Warrior !Paladin
    .accept 54 >> Acepta la misión Informa en Villadorada
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Sube por las escaleras
step << Priest/Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Neals|r subiendo las escaleras
    .target Brother Neals
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905,1 >>Entrega la misión Informe de la vendimia
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >> Acepta la misión Al servicio de la Luz
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falkhaan Isenzancas|r
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.563,47.742
    .accept 2158 >> Acepta la misión Descanso y relajación
]])


RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som
<< Alliance
#name 6-11 Bosque de Elwynn
#version 1
#group RestedXP Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#defaultfor Human
#next 11-13 Loch Modan
step
    #completewith next
    .subzone 87 >> Viaja a Villadorada
step
    #hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Entrega la misión Informa en Villadorada
    .accept 62 >> Acepta la misión La Mina Abisal
step << Warrior/Rogue/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .trainer >> Aprende |T136241:0|t[Herrería]
    >>|cRXP_WARN_Esto te permitirá crear |T135248:0|t[Piedras de afilar férreas] que aumentan los golpes cuerpo a cuerpo en +2 Daño. Es una mejora significativa en los niveles iniciales|r << Warrior/Rogue
    >>|cRXP_WARN_Esto te permitirá crear |T135255:0|t[Contrapesos férreos] que aumentan los golpes cuerpo a cuerpo en +2 Daño. Es una mejora significativa en los niveles iniciales|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    >>|cRXP_WARN_Compra y equipa un|r |T135321:0|t[Gladius]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    >>|cRXP_WARN_Compra y equipa un|r |T135641:0|t[Estilete]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    >>|cRXP_WARN_Compra y equipa una|r |T133053:0|t[Marra de madera]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Mage/Priest/Warlock
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andrew Krighton|r
    .target Andrew Krighton
    .goto Elwynn Forest,41.706,65.786
    .vendor >> |cRXP_WARN_Vende la basura|r
step
    #label Goldshire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >> Entrega la misión Informa en Villadorada
    .accept 62 >> Acepta la misión La Mina Abisal
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >> Acepta la misión Las velas de los kóbolds
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .target Innkeeper Farley
    .turnin 2158,1 >> Entrega la misión Descanso y relajación << Rogue/Warrior
    .turnin 2158,2 >> Entrega la misión Descanso y relajación << !Rogue !Warrior
    .home >> Establece tu Piedra de hogar en Villadorada
step
    .xp 6 >> Mata enemigos hasta el nivel 6
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brog Patosar|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >>|cRXP_WARN_Compra una|r |T135641:0|t[Daga arrojadiza equilibrada] |cRXP_WARN_y equípala|r
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Baja las escaleras
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    .vendor >> |cRXP_WARN_Compra el|r |T133738:0|t[Grimorio Pacto de sangre (Rango 1)] |cRXP_WARN_si puedes permitírtelo. Si no, lo comprarás más tarde|r
    .target Cylina Darkheart
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >> Entrega la misión Al servicio de la Luz
    .accept 5624 >> Acepta la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Aprende tus hechizos de clase
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r subiendo las escaleras
    .target Michelle Belle
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .vendor >> |cRXP_BUY_Compra|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_hasta que te quede solo 1 Plata|r << Warrior
    .vendor >> |cRXP_BUY_Compra hasta 20|r |T133995:0|t[Pincho de Dalaran] << Rogue
    .target Innkeeper Farley
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Aprende tus hechizos de clase
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Aprende tus hechizos de clase
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
step << Priest
    >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior (Rango 2)] |cRXP_WARN_y|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_en el|r |cRXP_FRIENDLY_Guardia Roberts|r
    .target Guard Roberts
    .goto Elwynn Forest,48.148,68.046
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r y |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .accept 85 >> Acepta la misión El collar perdido
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >> Acepta la misión ¡Princesa debe morir!
    .target +Ma Stonefield
	.goto Elwynn Forest,34.660,84.482
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
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
    #completewith next
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua Maclure|r
    .target Joshua Maclure
    .vendor >>|cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_WARN_como puedas permitirte|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Vende la basura|r << !Priest !Warlock !Mage
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label BoarMeat1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tommy Joe Pedregosa|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >> Entrega la misión Jóvenes enamorados
    .accept 111 >> Acepta la misión Habla con la abuelita
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,32.5,85.5
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >> Entrega la misión Un pastel para Billy
    .accept 84 >> Acepta la misión Vuelve con Billy
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Abuela Pedregosa|r
    .target Gramma Stonefield
    .goto 1429,34.945,83.855
    .turnin 111 >> Entrega la misión Habla con la abuelita
    .accept 107 >> Acepta la misión Una nota para William
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 84 >> Entrega la misión Vuelve con Billy
    .accept 87 >> Acepta la misión Dientes de Oro
step
    #completewith KillGoldtooth
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>Explora la Mina Abisal
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #label KillGoldtooth
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r. Despójalo para obtener |cRXP_LOOT_Collar de Bernice|r
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>Explora la Mina Abisal
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Velas|r y su |cRXP_LOOT_Polvo|r
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    >>|cRXP_WARN_Si despojas algunas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_conviértelas en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Warrior
    #completewith Goldtooth
    +|cRXP_WARN_Intenta guardar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_a partir de ahora porque la necesitarás para el Cadáver de Rolf más tarde|r
step << Warrior/Rogue
    >>|cRXP_WARN_Recuerda hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_si recogiste unas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r
    .xp 7+1600 >>Mata enemigos hasta alcanzar 1600+/4500xp
step << Paladin
    >>|cRXP_WARN_Recuerda hacer|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_si recogiste unas|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r
    .xp 7+1600 >>Mata enemigos hasta alcanzar 1600+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+1600 >>Mata enemigos hasta alcanzar 1600+/4500xp
step << Priest
    .xp 7+1260 >>Mata enemigos hasta alcanzar 1260+/4500xp
step
    #label Goldtooth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >> Entrega la misión Dientes de Oro
step
    .xp 7+2690 >>Mata enemigos hasta alcanzar 2690+/4500xp << !Priest
    .xp 7+2350 >>Mata enemigos hasta alcanzar 2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >> Viaja a Villadorada
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
    >>|cRXP_WARN_NO vendas la recompensa|r |T133581:0|t[Bolsa de canicas] |cRXP_WARN_. Es un objeto increíblemente valioso hasta el nivel 60|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .goto Elwynn Forest,41.529,65.900
    .vendor >>|cRXP_WARN_Vende la basura|r
    .target Corina Steele
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    >>|cRXP_WARN_Compra y equipa un|r |T135321:0|t[Gladius]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    >>|cRXP_WARN_Compra y equipa un|r |T135641:0|t[Estilete]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    >>|cRXP_WARN_Compra y equipa una|r |T133053:0|t[Marra de madera]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .accept 61 >> Acepta la misión Un envío para Ventormenta
    .turnin 107 >> Entrega la misión Una nota para William
    .accept 112 >> Acepta la misión La recolección de algas
step
    .xp 8 >> Mata enemigos hasta el nivel 8
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >> Aprende tus hechizos de clase
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Baja por las escaleras de la Posada
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    .vendor >> |cRXP_WARN_Compra el|r |T133738:0|t[Grimorio Descarga de Fuego (Rango 2)] |cRXP_WARN_si puedes permitírtelo. Si no, lo comprarás más tarde|r
    .target Cylina Darkheart
step << Mage/Priest/Rogue/Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Entrega la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Aprende tus hechizos de clase
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
step
    .money <0.1250
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brog Patosar|r
    .vendor >> |cRXP_WARN_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_WARN_si es necesario|r
	.target Brog Hamfist
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .vendor >> |cRXP_WARN_Compra hasta 40|r |T132815:0|t[Leche fría como el hielo] << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_WARN_Compra hasta 40|r |T133995:0|t[Pincho de Dalaran] << Warrior/Rogue
    .vendor >> |cRXP_WARN_Compra hasta 10|r |T133995:0|t[Pincho de Dalaran] |cRXP_WARN_y 10|r |T132815:0|t[Leche fría como el hielo] << Paladin
    .target Innkeeper Farley
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
    .accept 37 >> Acepta la misión Encuentra a los guardias perdidos
    .accept 52 >> Acepta la misión Proteger la frontera
step
    #completewith AcceptBundle
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    >>Haz clic en |cRXP_PICK_Un cadáver medio comido|r en el suelo
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >> Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >> Acepta la misión Descubre el destino de Rolf
step
    #label AcceptBundle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rallic Finn|r
    .target Rallic Finn
    .goto Elwynn Forest,83.283,66.089
    .vendor >> |cRXP_WARN_Vende la basura|r
    .zoneskip Elwynn Forest,1
step
    #completewith Prowlers
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #completewith Bundles
    >>Despoja el |cRXP_LOOT_Fardo de madera|r en el suelo. |cRXP_WARN_Se encuentran debajo de los árboles|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Haz clic en el |cRXP_PICK_Cadáver de Rolf|r en el suelo
    >>|cRXP_ENEMY_Batidores múrloc|r |cRXP_WARN_lanzarán|r |T135915:0|t[Beber poción menor] |cRXP_WARN_que les cura a sí mismos por 61-68|r
    >>|cRXP_WARN_Lanza|r |T135953:0|t[Renovar] |cRXP_WARN_y|r |T135940:0|t[Palabra de poder: escudo] |cRXP_WARN_y luego recupera todo el maná. Atrae a los 2 |cRXP_ENEMY_Múrlocs|r frente a las chozas, aléjate y luego aniquila a uno. Huye cuando mates a uno, luego mata al otro|r << Priest
    >>|cRXP_WARN_Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las cabañas, aléjate y usa|r |T136071:0|t[Polimorfia] |cRXP_WARN_a uno mientras matas al otro. Mata al|r |T136071:0|tPolimorfado |cRXP_WARN_después|r << Mage
    >>|cRXP_WARN_Acumula 100 de Ira. Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las chozas, aléjate y mantén|r |T132316:0|t[Seccionar] |cRXP_WARN_en uno mientras matas al otro. También usa|r |T133581:0|t[Bolsa de canicas] |cRXP_WARN_en el que estés matando. Huye y reinicia al que estés kiteando con|r |T132316:0|t[Seccionar] |cRXP_WARN_después de haber matado uno|r << Warrior
    >>|cRXP_WARN_Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las chozas, aléjate y enfócate en matar uno de ellos. Usa|r |T136205:0|t[Evasión] |cRXP_WARN_una vez que ambos te estén atacando. Esta es una buena oportunidad para usar|r |T133581:0|t[Bolsa de canicas]|cRXP_WARN_. Huye y reinicia una vez que hayas matado uno|r << Rogue
    >>|cRXP_WARN_Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las chozas, aléjate y lanza|r |T136183:0|t[Miedo] |cRXP_WARN_sobre uno de ellos constantemente, e intenta mantener DoTs en ambos|r << Warlock
    >>|cRXP_WARN_Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las chozas, aléjate y aniquila a uno de ellos rápido. Usa|r |T135954:0|t[Protección divina] |cRXP_WARN_y tus curaciones según sea necesario. Esta es una buena oportunidad para usar|r |T133581:0|t[Bolsa de canicas]|cRXP_WARN_. Huye y reinicia una vez que hayas matado uno|r << Paladin
    >>|cRXP_WARN_Recuerda que durante|r |T135954:0|t[Protección divina] |cRXP_WARN_no puedes atacar|r << Paladin
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step
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
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Despoja el |cRXP_LOOT_Fardo de madera|r en el suelo. |cRXP_WARN_Se encuentran debajo de los árboles|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
step
	.goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    .xp 9 >> Mata enemigos hasta el nivel 9
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >> Acepta la misión Artículos rojos de lino
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
    .xp <9,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
step
    #era
    #completewith next
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    .goto Elwynn Forest,69.3,79.0
    >>Mata a |cRXP_ENEMY_Princesa|r. Despójala para obtener su |cRXP_LOOT_Collera|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_vendrá con ambos de sus|r |cRXP_ENEMY_Séquitos porcinos|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_también lanzará|r |T132368:0|t[Carga impetuosa] |cRXP_WARN_que inflige mucho daño|r
    >>|cRXP_WARN_Acumula 100 Ira antes de atacar a|r |cRXP_ENEMY_Princesa|r << Warrior
    >>Asegúrate de que|cRXP_WARN_ |T136205:0|t[Evasión] |cRXP_WARN_esté lista. Si te cuesta, puedes usar la valla con armas arrojadizas para aprovechar el "pathing" y ganar tiempo|r << Rogue
    >>|cRXP_WARN_Prepárate para usar una|r |T134830:0|t[Poción de sanación inferior]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r << !Warrior
    .complete 88,1
    .mob Princess
step
    #completewith Level9Grind
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
    .isOnQuest 83
step
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3400 >> Mata enemigos hasta alcanzar 3400+/6500xp
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .isQuestComplete 83
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >> Mata enemigos hasta alcanzar 4475+/6500xp
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step << !Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410
    >>|cRXP_WARN_MANTENTE EN EL CAMINO PRINCIPAL Y EVITA CUALQUIER ENEMIGO CERCANO DURANTE EL TRAYECTO|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >> Entrega la misión La recolección de algas
    .accept 114 >> Acepta la misión La fuga
    .target William Pestle
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
    .accept 239 >> Acepta la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 59 >> Acepta la misión Armadura de paño y cuero << Warlock
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .accept 1097 >> Acepta la misión La tarea de Elmore
step
    .xp 10 >> Mata enemigos hasta el nivel 10
step
    #softcore
    .goto Elwynn Forest,41.7,65.9
    .vendor >>vende la basura, repara
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .target Ilsa Corbin
    .target Lyria Du Lac
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa Corbin|r
    .accept 1638 >> Acepta la misión Instrucción de guerrero
    .trainer >> Aprende tus hechizos de clase
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Baja por las escaleras de la Posada
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    .goto Elwynn Forest,44.485,66.268
    .target Remen Marcot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remen Marcot|r
    .accept 1685 >> Acepta la misión La invocación de Gakin
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Sube las escaleras
step << Priest
    .goto Elwynn Forest,43.283,65.721
    .target Priestess Josetta
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
    .accept 5635 >> Acepta la misión Oración desesperada
    .trainer >> Aprende tus hechizos de clase
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
    >>|cRXP_WARN_Aprende|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_y|r |T132307:0|t[Sprint] |cRXP_WARN_como mínimo. No aprendas habilidades innecesarias. Ahorra tu dinero|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
step << Rogue
    #som
    .goto Elwynn Forest,41.7,65.9
    .money >0.3197
    .vendor >>No tienes suficiente dinero, así que compra un Estilete para tu mano izquierda
step << Rogue
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    >>|cRXP_WARN_Compra y equipa un|r |T135641:0|t[Estilete] |cRXP_WARN_para tu mano izquierda|r
    .target Corina Steele
    .money >0.3152
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >> Viaja a los Viñedos de Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Entrega la misión La fuga
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .turnin 88,1 >> Entrega la misión ¡Princesa debe morir! << Rogue/Hunter
    .turnin 88,2 >> Entrega la misión ¡Princesa debe morir! << Warrior/Paladin
    .turnin 88,3 >> Entrega la misión ¡Princesa debe morir! << !Rogue !Hunter !Warrior !Paladin
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
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
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
step << Warlock
    #completewith next
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Bandas|r
    .complete 11,1 -- Painted Gnoll Armband (8)
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
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warrior
    .money >0.3129
    #era
    >>Mata |cRXP_ENEMY_Cachorros Zarparrío|r y |cRXP_ENEMY_Avanzados Zarparrío|r
    >>|cRXP_WARN_Mata enemigos hasta que tengas 31 platas 29 cobres o más de objetos vendibles/dinero. Esto es para aprender el uso de Armas Arrojadizas, Mazas a 2 manos y Espadas a 2 manos. También es para comprar un Arma Arrojadiza de nivel 3, y volar a Ventormenta pronto|r
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
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .isQuestComplete 176
step << !Warlock
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
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .target Salma Saldean
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 22 >>Acepta la misión Pastel de hígado de dentosangre
step
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .target Gryan Stoutmantle
    .accept 12 >> Acepta la misión La Milicia Popular
step
    #era
    .goto Westfall,56.421,47.623
    .target Captain Danuvin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Danuvin|r
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente
step << Human
    .goto Westfall,57.002,47.169
    .target Quartermaster Lewis
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .accept 6181 >> Acepta la misión Mensajero a toda prisa
    .vendor >>|cRXP_WARN_Vende la basura|r
step << Rogue
    #era
    .money >0.3152
    +|cRXP_WARN_Mata enemigos hasta que tengas 31 platas 52 cobres en objetos vendibles/dinero|r
step << Rogue
    #som
    .money >0.3197
    +Mata enemigos hasta que tengas 31 platas 97 cobres en objetos vendibles/dinero
    --Not taking into account Shipment q turnin money so its insurance money
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Entrega la misión Mensajero a toda prisa
    .accept 6281 >> Acepta la misión Prosigue hasta Ventormenta
    .target Thor
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step << Rogue
    #som
    >>Entra en el edificio
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.37,61.69
    .vendor >> Compra el arma arrojadiza nivel 11 de Thurman. Equípala cuando seas nivel 11
step << Rogue
    #era
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Mullby|r
    .vendor >> |cRXP_WARN_Compra una|r |T135641:0|t[Daga arrojadiza equilibrada]|cRXP_WARN_. Equípala|r
    .target Thurman Mullby
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morgan Mortero|r
    .turnin 61,1 >> Entrega la misión Un envío para Ventormenta
    >>|cRXP_WARN_Elegimos el|r |T132383:0|t[Cohete explosivo] |cRXP_WARN_como recompensa. Causa daño decente y puede usarse para "Split pulling" que es increíblemente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Haz clic aquí para ver un vídeo sobre el "Split pulling". Es un vídeo corto y muy útil para aprender|r
    .target Morgan Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Aprende Espadas de 1 mano << Rogue
    .trainer >>Aprende el uso de Bastones << Warlock/Priest
    .trainer >>Aprende Espadas de 2 manos << Warrior/Paladin
    >>|cRXP_WARN_Aprende Espadas de 2 manos si tienes suficiente dinero. Tienes que ahorrar 20 platas para más tarde|r << Warrior
    >>|cRXP_WARN_Aprende Espadas de 1 mano también si todavía tienes dinero|r << Mage/Warlock
step << Rogue
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    .target Gunther Weller
    .vendor >> |cRXP_WARN_Compra un|r |T135346:0|t[Alfanje] |cRXP_WARN_y equípalo en tu Mano Principal|r
step
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la ciudad de Ventormenta
    .target Innkeeper Allison
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1685 >> Entrega la misión La invocación de Gakin
    .target Gakin the Darkbinder
    .accept 1688 >> Acepta la misión Surena Caledon
step << Warlock
    #softcore
    .deathskip >> Muere y resucita en el Ángel de la Resurrección usando Transfusión de vida y poniéndote sobre la fogata que tienes al lado
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >> Sal de Ventormenta. Viaja a Villorada
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 176 >> Entrega la misión Se busca: Hogger
    >>|cRXP_WARN_Elige el|r |T135145:0|t[|cRXP_FRIENDLY_Palo de lucha equilibrado|r] |cRXP_WARN_como tu recompensa. Equípalo|r
    .turnin 123 >> Entrega la misión El Coleccionista
    .accept 147 >> Acepta la misión La persecución
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 176 >> Entrega la misión Se busca: Hogger
    >>|cRXP_WARN_Elige el|r |T135145:0|t[|cRXP_FRIENDLY_Palo de lucha equilibrado|r] |cRXP_WARN_como tu recompensa. Equípalo|r
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .accept 147 >> Acepta la misión La persecución
step << Warlock
    .xp 11 >> Mata enemigos hasta el nivel 11
step << Warlock
    #completewith LockVW
    .goto Elwynn Forest,71.0,80.8,150 >> Viaja a la Plantación de Calabazas de Brackwell
    >>|cRXP_WARN_Mata enemigos de camino. Intenta subir tu habilidad con Bastones para después|r
step << Warlock
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
    #label LockVW
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    .goto Elwynn Forest,79.457,68.789
    .target Sara Timberlain
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Entrega la misión Armadura de paño y cuero
step << Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    >>|cRXP_WARN_Mata enemigos de camino. Asegúrate de tener al menos 2|r |T134075:0|t[Fragmentos de alma] |cRXP_WARN_usando|r |T136163:0|t[Drenar alma]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >> Acepta la misión Gnolls invasores
step << Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    >>|cRXP_WARN_MANTENTE EN EL CAMINO PRINCIPAL Y EVITA CUALQUIER ENEMIGO CERCANO DURANTE EL TRAYECTO|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
step << Warlock
    .isQuestComplete 147
    #completewith next
    .goto Elwynn Forest,42.105,65.927,100 >> Sal de Ventormenta. Viaja a Villorada
step << Warlock
    .isQuestComplete 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 147 >> Entrega la misión La persecución
step << Warlock
    #completewith TravelIF
    .isQuestTurnedIn 147
    .goto StormwindClassic,70.07,86.82
    .zone Stormwind City >> Viaja a la Ciudad de Ventormenta
    .zoneskip Elwynn Forest,1
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >> Entrega la misión El vínculo
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Entrega la misión Prosigue hasta Ventormenta
    .target Osric Strang
    .accept 6261 >> Acepta la misión Dungar Tragolargo
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
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >> Aprende tus hechizos de clase
    .turnin 5635 >> Entrega la misión Oración desesperada
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .train 13908 >> Aprende |T135954:0|t[Rezo desesperado]
    .target High Priestess Laurena
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Entrega la misión La tarea de Elmore
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
step << Warrior
    #completewith next
    +|cRXP_WARN_Pon|r |T132363:0|t[Hender armadura] |cRXP_WARN_en tu barra de acciones y asegúrate de usarla constantemente. Es más efectivo que usar|r |T132282:0|t[Golpe heroico]
step << Warrior/Paladin/Rogue
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaita Forjahonda|r
    .vendor >>|cRXP_WARN_Compra un|r |T134708:0|t[Pico de minero]|cRXP_WARN_. Aprenderás|r |T134708:0|t[Minería] |cRXP_WARN_muy pronto|r
    .target Kaita Deepforge
step
    #label TravelIF
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >> Entra en el Tranvía Subterráneo. Toma el tranvía a Forjaz
    >>|cRXP_WARN_Sube de nivel tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_si es necesario mientras esperas el tranvía|r
step
    >>|cRXP_WARN_Sube al Tranvía una vez que llegue. Baja en el otro lado y busca a |cRXP_FRIENDLY_Monty|r en el andén central|r
    >>|cRXP_WARN_Lanza|r |T136221:0|t[Invocar abisario] |cRXP_WARN_y|r |T135230:0|t[Crear piedra de salud] |cRXP_WARN_mientras esperas|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    .use 17117 >>|cRXP_WARN_Usa la|r |T133942:0|t[Flauta cazarratase] |cRXP_WARN_en las|r |cRXP_ENEMY_Ratas del subterráneo|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    .target Monty
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
step
    .zone Ironforge >>Entra en Forjaz
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r y |cRXP_FRIENDLY_Buliwyf Petramano|r
    .train 2567 >> Aprende el uso de Arrojadizas
    .target +Bixi Wobblebonk
    .goto Ironforge,62.237,89.628
    .train 199 >> Aprende Mazas de 2 manos
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    .vendor >>|cRXP_WARN_Compra una|r |T135641:0|t[Daga arrojadiza equilibrada] |cRXP_WARN_y equípala|r
    .target Brenwyn Wintersteel
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>Compra los siguientes objetos para entregas de misiones más rápidas en Loch Modan pronto
    >>Esto te ahorrará tiempo ya que no necesitarás correr buscando enemigos para matar. Omite este paso si prefieres no comprar nada
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler

step << skip
    #sticky
    #som
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Sal de Forjaz
    >>Equipa tu arma arrojadiza de nivel 11 << Warrior
step << skip
    #sticky
    #era
    #completewith next
    .goto Dun Morogh,53.5,34.9,100 >>Sal de Forjaz
    >>Equipa tu arma arrojadiza de nivel 3 << Warrior

step
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.251,37.592,150 >> Sal de Forjaz
step
    #completewith next
    .goto Dun Morogh,46.005,48.637,50 >> Viaja a Kharanos
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Razzle Engranágil|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >> Acepta la misión Operación Recombobulación
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Senir Barbablanca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >> Acepta la misión Poblado Peloescarcha
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.578,57.732,100,0
    .goto Dun Morogh,36.654,51.906,40,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
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
step
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
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >> Entra en el Poblado Peloescarcha
step
    #completewith next
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    >>|cRXP_WARN_Baja hasta esta ubicación para explorar el Poblado Peloescarcha. Si hay enemigos abajo, limpia los alrededores con normalidad y NO bajes|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
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
step
    #completewith next
    .goto Dun Morogh,45.846,49.365,150 >> Viaja a Kharanos
step
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
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >> Entrega la misión La protección del rebaño
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cocinero Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.614,54.643
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
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dank Cortefiel|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Aprende |T134708:0|t[Minería]
step << Warrior/Paladin/Rogue
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r y |cRXP_ENEMY_Cascahuesos Comepiedras|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step << !Warlock
    .xp 10+6350 >>Mata enemigos hasta alcanzar 6350+/7600
step << Warlock
    .xp 12
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r y el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >> Entrega la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_WARN_Vende la basura|r << !Priest !Warlock !Mage
    .vendor >> |cRXP_BUY_Compra 20|r |T132815:0|t[Leche fría como el hielo] << Priest/Warlock/Mage
    .target Kazan Mogosh
step << !Warlock
    .xp 11
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
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
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>Elige la daga, úsala en la mano izquierda hasta que obtengas una espada de vendedor << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .turnin 417 >> Entrega la misión Vengar al piloto
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    >>|cRXP_WARN_Elige la|r |T135641:0|t[|cRXP_FRIENDLY_Daga de artesano|r] |cRXP_WARN_como tu recompensa. Equípala en tu mano secundaria|r << Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >> Entrega la misión Vengar al piloto
step
    .goto Dun Morogh,84.4,31.1,25 >> Vuela a Loch Modan
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
#era/som--h
<< Alliance
#name 11-13 Loch Modan
#version 1
#group RestedXP Guía de Supervivencia (A)
#subgroup RXP Guía de Supervivencia 1-20
#defaultfor Human
#next 13-15 Páramos de Poniente

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vende y repara si es necesario|r
    .target Gothor Brumn
step
.group
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta
    .target Mountaineer Stormpike
    .accept 307 >> Acepta la misión Zarpas asquerosas
    >>|cRXP_WARN_NO aceptes la misión Un pedido de Pico Tormenta todavía|r
step
.solo
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta
    .target Mountaineer Stormpike
    >>|cRXP_WARN_NO aceptes la misión Un pedido de Pico Tormenta todavía|r
step
    #completewith ThelsamarFirst
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
step
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >> Viaja a Thelsamar
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    .target Vidra Hearthstove
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
step
    #completewith StormpikeO
    .abandon 1338 >> Abandona la misión Un pedido de Pico Tormenta. Esto desbloquea la misión La tarea del montaraz Pico Tormenta que te dará 550xp gratuitos al entregar
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor >> |cRXP_WARN_Compra 1 o 2|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_WARN_si es necesario|r
    .target Yanni Stoutheart
step
    #label StormpikeO
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r
    .vendor 6734 >> |cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado]|cRXP_BUY_. Procura tener unos 20|r << Warrior/Rogue
    .vendor 6734 >> |cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y|r |T132815:0|t[Leche fría como el hielo]|cRXP_BUY_. Procura tener unos 10|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y 20|r |T132815:0|t[Leche fría como el hielo] << !Warrior !Rogue
    .target Innkeeper Hearthstove
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
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
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
    >>|cRXP_WARN_Asegúrate de tener 10|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu próxima misión de clase del Paladín|r << Paladin
    >>|cRXP_ENEMY_Ratatúneles|r |cRXP_WARN_pueden aparecer por todo Loch Modan. Revisa tu Mapa del Mundo para localizar sus ubicaciones|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
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
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
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
    >>|cRXP_WARN_Compra un|r |T135237:0|t[Sílex y yesca] |cRXP_WARN_junto con 2|r |T135435:0|t[Madera simple]|cRXP_WARN_. Compra|r|T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_WARN_si es necesario|r
    .collect 4470,2 --Simple Wood (2)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .target Thorgrum Borrelson
step
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r en el búnker
    .target Captain Rugelfuss
    .accept 267 >> Acepta la misión La amenaza trogg
step
    #completewith next
    .goto Loch Modan,29.9,68.2,45,0
    .goto Loch Modan,30.76,69.97,20 >> Viaja al Valle Rompecantos
step
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58,45,0
    .goto Loch Modan,27.01,48.74,40,0
    .goto Loch Modan,27.68,56.83,40,0
    .goto Loch Modan,33.35,71.59,50,0
    .goto Loch Modan,31.54,74.96,45,0
    .goto Loch Modan,33.88,76.58
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes|r
    >>|cRXP_WARN_Asegúrate de tener 10|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu próxima misión de clase del Paladín|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .collect 2589,10,1644,1,1 << Paladin -- Linen Cloth (10)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << Warlock
    #completewith TroggT
    .money >0.7579
    .goto Loch Modan,32.7,76.5,0
    +Grindea |cRXP_ENEMY_Troggs|r hasta que tengas 75 platas y 79 cobres en basura para vender o dinero
step << Warlock
    #era
    .goto Loch Modan,32.7,76.5,0
    .xp 13+9600 >>Mata enemigos hasta alcanzar 9600+/11400 xp
step << Warlock
    #som--xpgate
    .xp 14-2520 >> Mata enemigos hasta tener 8880xp en el nivel 13
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
step
    #label TroggT
    .goto Loch Modan,23.233,73.675
    .target Captain Rugelfuss
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r
    .turnin 267 >> Entrega la misión La amenaza trogg
step << Warlock
    .xp 14 >> Mata enemigos hasta el nivel 14
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
step << Warlock/Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Compra una|r |T135468:0|t[Varita humeante]|cRXP_BUY_. Equípala cuando llegues al nivel 15|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
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
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Spackle Zarzamora|r
    .vendor >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorio Consumir Sombras (Rango 1)] |cRXP_BUY_y|r |T133738:0|t[Grimorio Sacrificio (Rango 1)] |cRXP_BUY_si puedes permitírtelo|r
    .target Spackle Thornberry
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >> Viaja a la Catedral de Ventormenta
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Acepta la misión Escrito sobre divinidad
    .turnin 1641 >> Entrega la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    .use 6775>>|cRXP_WARN_Usa el |T133739:0|t[|cRXP_LOOT_Escrito sobre divinidad|r] para iniciar la misión|r
    .accept 1642 >>Acepta la misión Escrito sobre divinidad
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Entrega la misión Escrito sobre divinidad
    .accept 1643 >>Acepta la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step
    .goto StormwindClassic,58.091,16.552
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Entrega la misión Escrito sobre divinidad
    .target Stephanie Turner
    .accept 1644 >> Acepta la misión Escrito sobre divinidad
    .turnin 1644 >> Entrega la misión Escrito sobre divinidad
    --.accept 1780 >> Accept The Tome of Divinity
step
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .turnin 6261 >> Entrega la misión Dungar Tragolargo
    .target Dungar Longdrink
    .accept 6285 >> Acepta la misión Regresa junto a Lewis
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
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Westfall >> Vuela a Páramos de Poniente
    .target Dungar Longdrink
]])
