if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#name 1-11 Bosque de Elwynn
#subgroup RestedXP Alianza 1-20
#defaultfor Human
#next 12-14 Loch Modan;12-14 Costa Oscura << Warlock
#next 11-12 Loch Modan;12-14 Costa Oscura << !Warlock

step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.2,42.9
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
--  .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Entra en la tienda del campamento Defias|r
    >>Abre los |cRXP_PICK_Libros robados|r. Despójalos para obtener los |cRXP_LOOT_Poderes del Vacío|r
    >>|cRXP_WARN_¡Puedes despojar los |cRXP_LOOT_Poderes del Vacío|r de forma segura mientras estés dentro de la Tienda! Observa el video sobre cómo hacerlo|r
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >> Entrega la misión El libro robado
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith ATW
    .cast 688 >> |cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
    .usespell 688
step << Warlock
    #optional
    #completewith ATW
    .cast 687 >> |cRXP_WARN_Lanza|r |T136185:0|t[Piel de demonio]
    .usespell 687
    .aura 687
step
    #completewith DeleteHS
	.destroy 6948 >> Destruye tu |T134414:0|t[Piedra de hogar] de tus bolsas porque no lo necesitas aún
step
    #label ATW
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 783 >> Acepta la misión Una amenaza interna
    .target Deputy Willem
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Mata |cRXP_ENEMY_Lobos jóvenes|r hasta que tengas 10 cobres o más en basura para vender
    >>|cRXP_WARN_Aprenderás|r |T132333:0|t[Grito de batalla] |cRXP_WARN_lo que aumenta la velocidad al subir de nivel al principio|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 783 >> Entrega la misión Una amenaza interna
    .accept 7 >> Acepta la misión La limpieza del campamento kóbold
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 5261 >> Acepta la misión Eagan Desollapelambres
    .target Deputy Willem
step
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 5261 >> Entrega la misión Eagan Desollapelambres
    .accept 33 >> Acepta la misión Lobos en la frontera
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_Una vez que tengas 50 cobres en basura para vender:|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>Mata |cRXP_ENEMY_Lobos jóvenes|r y |cRXP_ENEMY_Lobos grises|r. Despójalos para obtener su |cRXP_LOOT_Carne de lobo dura|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step
    #label DeleteHS
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Mata |cRXP_ENEMY_Alimañas kóbold|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 33,2 >> Entrega la misión Lobos en la frontera << Warrior/Paladin/Rogue
    .turnin 33,1 >> Entrega la misión Lobos en la frontera << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 10 más|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Asegúrate de guardar 10 cobres o más para después|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Vende la Basura
    .target Godric Rothgar
step << Rogue
    .goto Elwynn Forest,47.240,41.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Janos Nudillomartillo|r
    .vendor 78 >>|cRXP_BUY_Cómprale una|r |T135650:0|t[Puntilla] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2139,1 -- Dirk (1)
    .disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135650:0|t[Puntilla]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 7 >> Entrega la misión La limpieza del campamento kóbold
    .accept 15 >> Acepta la misión Investiga la Mina del Eco
    .accept 3100 >> Acepta la misión Una carta simple << Warrior
    .accept 3101 >> Acepta la misión Una carta consagrada << Paladin
    .accept 3102 >> Acepta la misión Una carta cifrada << Rogue
    .accept 3103 >> Acepta la misión Una carta sacralizada << Priest
    .accept 3104 >> Acepta la misión Una carta glífica << Mage
    .accept 3105 >> Acepta la misión Una carta manchada << Warlock
    .target Marshal McBride
step
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>Mata |cRXP_ENEMY_Trabajadores kóbold|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step
    #sticky
    #label xp3
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .goto 1429,46.465,38.272,45,0
    .goto 1429,45.896,38.013,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,49.052,38.270,45,0
    .goto 1429,48.362,37.582,45,0
    .goto 1429,47.136,37.636,45,0
    .goto 1429,46.870,36.906,45,0
    .goto 1429,46.476,37.034,45,0
    .xp 3+1110 >>Mata enemigos hasta alcanzar 1110+/1400 xp
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Godric Rothgar
step
    #requires xp3
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 15 >> Entrega la misión Investiga la Mina del Eco
    .accept 21 >> Acepta la misión Refriega en el Eco
    .target Marshal McBride
step << Mage
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Viaja hacia |cRXP_FRIENDLY_Khelden Bremen|r subiendo las escaleras
step << Mage
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden Bremen|r en el piso de arriba
    .turnin 3104 >> Entrega la misión Una carta glífica
    .trainer >> Aprende tus hechizos de clase
    .target Khelden Bremen
step << Priest
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >> Viaja hacia la |cRXP_FRIENDLY_Sacerdotisa Anetta|r en el piso de abajo
step << Priest
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r abajo
    .turnin 3103 >> Entrega la misión Una carta sacralizada
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Anetta
step << Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >> Viaja hacia |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >> Viaja hacia el |cRXP_FRIENDLY_Hermano Sammuel|r en el piso de abajo << Paladin
step << Warrior
    .goto Elwynn Forest,50.242,42.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo
    .turnin 3100 >> Entrega la misión Una carta simple
    .trainer >> Aprende tus hechizos de clase
    .target Llane Beshere
step << Paladin
    .goto Elwynn Forest,50.433,42.124
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Sammuel|r
    .turnin 3101 >> Entrega la misión Una carta consagrada
    .trainer >> Aprende tus hechizos de clase
    .target Brother Sammuel
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r fuera
    .accept 18 >> Acepta la misión Hermandad de ladrones
    .target Deputy Willem
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Entrega la misión Una carta manchada
    .train 172 >>Aprende |T136118:0|t[Corrupción]
    .target Drusilla La Salle
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de arpillera roja|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob Defias Thug
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 18,1 >> Entrega la misión Hermandad de ladrones << Rogue/Warlock
    .turnin 18,2 >> Entrega la misión Hermandad de ladrones << Priest
    .turnin 18,3 >> Entrega la misión Hermandad de ladrones << Warrior
    .turnin 18,4 >> Entrega la misión Hermandad de ladrones << Paladin
    .turnin 18,5 >> Entrega la misión Hermandad de ladrones << Mage
    .turnin 18 >> Entrega la misión Hermandad de ladrones
    .accept 3903 >> Acepta la misión Milly Osworth
    .accept 6 >> Acepta la misión La recompensa por Garrick Piesuaves
    .target Deputy Willem
step << Paladin
    #completewith RestandR
    .equip 16,5579 >> |cRXP_WARN_Equipa el|r |T133052:0|t[Martillo de guerra de milicia]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #completewith RestandR
    .equip 16,2224 >> Equipa la |T135641:0|t[Daga de milicia]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Warrior
    #completewith RestandR
    .equip 16,1161 >> Equipa la |T135274:0|t[Espada corta de milicia]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Godric Rothgar
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >> Entra en la Mina del Eco
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>Mata |cRXP_ENEMY_Obreros kóbold|r dentro de la Mina del Eco
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
    .xp 5 >> Mata enemigos hasta el nivel 5
step
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly Osworth|r
    >>|cRXP_WARN_Omite la continuación|r << !Priest !Mage
    .turnin 3903 >> Entrega la misión Milly Osworth
    .accept 3904 >> Acepta la misión La cosecha de Milly << Priest/Mage
    .target Milly Osworth
step << Rogue
    .goto Elwynn Forest,50.314,39.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Entrega la misión Una carta cifrada
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .train 921 >>Aprende |T133644:0|t[Robar]
    .target Jorik Kerridan
step << Priest/Mage
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Despoja la |cRXP_PICK_Cosecha de Milly|r del suelo
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429,57.518,48.253
    >>Mata a |cRXP_ENEMY_Garrick Piesuaves|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step << !Priest !Mage
    #sticky
    .abandon 3904 >> Abandona la misión La cosecha de Milly
step
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1735 >> Mata enemigos hasta alcanzar 1735+/2800 xp << Paladin/Warrior/Rogue/Warlock
    .xp 5+1625 >> Mata enemigos hasta alcanzar 1195+/2800xp << Mage
    .xp 5+1085 >> Mata enemigos hasta alcanzar 1085+/2800 xp << Priest
    .mob Defias Thug
step << Priest/Mage
    .goto Elwynn Forest,50.692,39.347
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >>Entrega la misión La cosecha de Milly
    .accept 3905 >>Acepta la misión Informe de la vendimia
    .target Milly Osworth
step
    .goto Elwynn Forest,48.17,42.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 6,2 >> Entrega la misión La recompensa por Garrick Piesuaves << Warrior/Rogue/Paladin
    .turnin 6,1 >> Entrega la misión La recompensa por Garrick Piesuaves << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r adentro
    .turnin 21,1 >> Entrega la misión Refriega en el Eco << Rogue
    .turnin 21,2 >> Entrega la misión Refriega en el Eco << Warrior/Paladin
    .turnin 21,3 >> Entrega la misión Refriega en el Eco << !Warrior !Paladin !Rogue
    .accept 54 >> Acepta la misión Informa en Villadorada
    .target Marshal McBride
step << Priest/Mage
    #optional
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Sube por las escaleras
step << Priest/Mage
    .goto Elwynn Forest,49.471,41.586
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Neals|r subiendo las escaleras
    .turnin 3905,1 >>Entrega la misión Informe de la vendimia
    .target Brother Neals
step
    .goto Elwynn Forest,45.563,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falkhaan Isenzancas|r
    .accept 2158 >> Acepta la misión Descanso y relajación
    .target Falkhaan Isenstrider
step
    #completewith Goldshire
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .subzoneskip 87
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Paladin
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Smith Argus
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135321:0|t[Gladius] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135641:0|t[Estilete] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_WARN_Cómprale una|r |T133053:0|t[Marra de madera] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Vende la Basura
    .target Andrew Krighton
--  .money >1.0
step
    #label Goldshire
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 54 >> Entrega la misión Informa en Villadorada
    .accept 62 >> Acepta la misión La Mina Abisal
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .accept 60 >> Acepta la misión Las velas de los kóbolds
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .turnin 2158,1 >> Entrega la misión Descanso y relajación << Rogue/Warrior
    .turnin 2158,2 >> Entrega la misión Descanso y relajación << !Rogue !Warrior
    .home >> Establece tu Piedra de hogar en Villadorada
    .target Innkeeper Farley
    --xx subzone not found. check ptr
step
    #optional
    .xp 6 >> Mata enemigos hasta el nivel 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brog Patosar|r
    .vendor 151 >>|cRXP_BUY_Cómprale la|r |T135641:0|t[Daga arrojadiza equilibrada] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >> Baja las escaleras
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >> Aprende tus hechizos de clase
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    .vendor 6374 >> |cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio Pacto de sangre (Rango 1)] |cRXP_BUY_si te lo puedes permitir. Si no, puedes comprarlo más tarde|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
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
    .turnin -5623 >> Entrega la misión Al servicio de la Luz
    .accept 5624 >> Acepta la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >> Aprende tus hechizos de clase
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .vendor 295 >> |cRXP_BUY_Cómprale|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_hasta que te quede solo 1 Plata|r << Warrior
    .vendor 295 >> |cRXP_BUY_Compra hasta 20|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_a este vendedor|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
step
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior (Rango 2)] |cRXP_WARN_y|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_en el|r |cRXP_FRIENDLY_Guardia Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r y |cRXP_FRIENDLY_La vieja Pedregosa|r
    .accept 85 >> Acepta la misión El collar perdido
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Acepta la misión ¡Princesa debe morir!
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener las |cRXP_LOOT_Velas de los kóbolds|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Entrega la misión El collar perdido
    .accept 86 >> Acepta la misión Un pastel para Billy
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acepta la misión Jóvenes enamorados
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua Maclure|r
    .vendor >>|cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_WARN_como puedas permitirte|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Vende la basura|r << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener las |cRXP_LOOT_Velas de los kóbolds|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tommy Joe Pedregosa|r
    .turnin 106 >> Entrega la misión Jóvenes enamorados
    .accept 111 >> Acepta la misión Habla con la abuelita
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .turnin 86 >> Entrega la misión Un pastel para Billy
    .accept 84 >> Acepta la misión Vuelve con Billy
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Abuela Pedregosa|r dentro
    .turnin 111 >> Entrega la misión Habla con la abuelita
    .accept 107 >> Acepta la misión Una nota para William
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step
    #sticky
    #label KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener las |cRXP_LOOT_Velas de los kóbolds|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Entrega la misión Vuelve con Billy
    .accept 87 >> Acepta la misión Dientes de Oro
    .target Billy Maclure
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>Entra en uno de los espacios abiertos más grandes de la Mina Abisal
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto 1429,41.732,78.024
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r. Despójalo para obtener |cRXP_LOOT_Collar de Bernice|r
    >>|cRXP_WARN_Ten cuidado porque generalmente atrae también al |cRXP_ENEMY_Minero kóbold|r que está junto a él|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step << Warrior
    #optional
    #completewith Exchange
    +|cRXP_WARN_Intenta guardar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_a partir de ahora porque la necesitarás para el Cadáver de Rolf más tarde|r
    .subzoneskip 87 --Goldshire
step
    .isQuestTurnedIn 5624 << Priest
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1800 >>Mata enemigos hasta alcanzar 1800+/4500 xp
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Priest
    .isOnQuest 5624
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1460 >>Mata enemigos hasta alcanzar 1460+/4500 xp << Priest
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .turnin 87 >> Entrega la misión Dientes de Oro
    .target "Auntie" Bernice Stonefield
step
    #completewith Exchange
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    >>|cRXP_WARN_NO vendas el|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Es un objeto sumamente valioso hasta el nivel 70|r
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor >>Vende la Basura
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135321:0|t[Gladius] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135641:0|t[Estilete] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale una|r |T133053:0|t[Marra de madera] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Marra de madera]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #optional
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
    .xp <8,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
    .xp <8,1
step
    #label CandlesEnd
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .accept 61 >> Acepta la misión Un envío para Ventormenta
    .turnin 107 >> Entrega la misión Una nota para William
    .accept 112 >> Acepta la misión La recolección de algas
    .target William Pestle
step
    .xp 8 >> Mata enemigos hasta el nivel 8
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
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
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
step << Warlock
    #optional
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
    .vendor >> |cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio de Descarga de Fuego (Rango 2)] |cRXP_BUY_si puedes permitírtelo. Si no, puedes comprarlo más tarde|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brog Patosar|r
    .vendor >> |cRXP_WARN_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_WARN_si es necesario|r
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .vendor >> |cRXP_BUY_Cómprale hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si puedes permitírtelo|r << !Warrior !Rogue !Paladin
    .vendor >> |cRXP_BUY_Cómprale hasta 20|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_si puedes permitírtelo|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Cómprale hasta 10|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_y 10|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si puedes permitírtelo|r << Paladin
    .target Innkeeper Farley
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
    .train 853,1
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Mata |cRXP_ENEMY_Múrlocs|r y |cRXP_ENEMY_Correcorrientes múrloc|r. Despójalos para obtener |cRXP_LOOT_Hojas de alga de cristal|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Mata a los |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >> Entra en la Cantera de Jaspe
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Sigue el camino por el centro para explorar la Cantera de Jaspe
    .complete 76,1 --Scout through the Jasperlode Mine
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Mata a los |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r << Warrior/Rogue
    >>Mata |cRXP_ENEMY_Mineros kóbold|r. Abre los |cRXP_PICK_Cofres maltrechos|r. Despójalos para obtener sus |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r y |T132889:0|t|cRXP_LOOT_[Paño de lino]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_en|r |T135248:0|t[Piedras de afilar férreas] << Warrior/Rogue
    +|T136241:0|tConvierte con [Herrería] |cRXP_WARN_las|r |T135232:0|t|cRXP_LOOT_[Piedras férreas]|r |cRXP_WARN_y|r |T132889:0|t|cRXP_LOOT_[Paño de lino]|r |cRXP_WARN_en|r |T135255:0|t[Contrapesos férreos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>|cRXP_WARN_Usa la|r |T135248:0|t[Piedra de afilar férrea] |cRXP_WARN_en tu arma actual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Usa el|r |T135255:0|t[Contrapeso férreo] |cRXP_WARN_en tu arma actual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Sal de la Cantera de Jaspe
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    +|cRXP_WARN_Kitea a un |cRXP_ENEMY_Oso del bosque joven|r hacia el|r |cRXP_FRIENDLY_Guardia Thomas|r
    >>|cRXP_WARN_Intenta hablar con el |cRXP_FRIENDLY_Guardia Thomas|r antes de que el |cRXP_ENEMY_Oso del bosque joven|r muera a manos de los |cRXP_FRIENDLY_Guardias de Ventormenta|r y obtengas crédito de la misión|r
    >>|cRXP_WARN_Asegúrate de causar 51%+ de daño para recibir crédito|r
    .mob Young Forest Bear
step
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .turnin 35 >> Entrega la misión Más preocupaciones
    .accept 37 >> Acepta la misión Encuentra a los guardias perdidos
    .accept 52 >> Acepta la misión Proteger la frontera
    .target Guard Thomas
step
    #completewith AcceptBundle
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,72.656,60.334
    >>Haz clic en |cRXP_PICK_Un cadáver medio comido|r en el suelo
    .turnin 37 >> Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >> Acepta la misión Descubre el destino de Rolf
step
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vende la basura
    .target Rallic Finn
    .subzoneskip 88,1
step
    #completewith Prowlers
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>Despoja los |cRXP_LOOT_Fardos de madera|r en el suelo en la base de los árboles
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>|cRXP_WARN_Corre encima de |cRXP_PICK_Cadáver de Rolf|r, luego usa|r |T135954:0|t[Protección divina] |cRXP_WARN_y luego haz clic inmediatamente en|r |cRXP_PICK_Cadáver de Rolf|r
    >>|cRXP_WARN_Huye y reinicia a los |cRXP_ENEMY_Múrlocs|r después de completar la misión|r
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step << !Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Haz clic en el |cRXP_PICK_Cadáver de Rolf|r en el suelo
    >>|cRXP_WARN_Ten cuidado, los |cRXP_ENEMY_Batidores múrloc|r lanzarán|r |T135915:0|t[Beber poción menor] |cRXP_WARN_que los cura entre 61 y 68 puntos de salud|r
    >>|cRXP_WARN_Lanza|r |T135953:0|t[Renovar] |cRXP_WARN_y|r |T135940:0|t[Palabra de poder: escudo] |cRXP_WARN_y luego recupera todo el maná. Atrae a los 2 |cRXP_ENEMY_Múrlocs|r frente a las chozas, aléjate y luego aniquila a uno. Huye cuando mates a uno, luego mata al otro|r << Priest
    >>|cRXP_WARN_Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las cabañas, aléjate y usa|r |T136071:0|t[Polimorfia] |cRXP_WARN_a uno mientras matas al otro. Mata al|r |T136071:0|t[Polimorfado] |cRXP_WARN_después|r << Mage
    >>|cRXP_WARN_Acumula 100 de Ira. Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las chozas, aléjate y mantén|r |T132316:0|t[Seccionar] |cRXP_WARN_en uno mientras matas al otro. También usa|r |T133581:0|t[Bolsa de canicas] |cRXP_WARN_en el que estés matando. Huye y reinicia al que estés kiteando con|r |T132316:0|t[Seccionar] |cRXP_WARN_después de haber matado uno|r << Warrior
    >>|cRXP_WARN_Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las chozas, aléjate y enfócate en matar uno de ellos. Usa|r |T136205:0|t[Evasión] |cRXP_WARN_una vez que ambos te estén atacando. Esta es una buena oportunidad para usar|r |T133581:0|t[Bolsa de canicas]|cRXP_WARN_. Huye y reinicia una vez que hayas matado uno|r << Rogue
    >>|cRXP_WARN_Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las chozas, aléjate y lanza|r |T136183:0|t[Miedo] |cRXP_WARN_sobre uno de ellos constantemente, e intenta mantener DoTs en ambos|r << Warlock
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step
    #completewith BundleOT
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
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
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acepta la misión Artículos rojos de lino
    .target Sara Timberlain
step
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
    #completewith Deed << !Warlock
    #completewith WarlockPrincess << Warlock
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r]
    .use 1972>>|cRXP_WARN_Usa las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] para iniciar la misión|r
    >>|cRXP_WARN_Las|r |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] |cRXP_WARN_es un botín muy raro. Ignora este paso si no lo obtienes|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acepta la misión Las escrituras de Cejade
step
    #completewith next
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de lino rojo|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label WarlockPrincess << Warlock
    .goto Elwynn Forest,69.3,79.0
    >>Mata a |cRXP_ENEMY_Princesa|r. Despójala para obtener su |cRXP_LOOT_Collera|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_vendrá con ambos de sus|r |cRXP_ENEMY_Séquitos porcinos|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_también lanzará|r |T132368:0|t[Carga impetuosa] |cRXP_WARN_que inflige mucho daño|r
    >>|cRXP_WARN_Acumula 100 Ira antes de atacar a|r |cRXP_ENEMY_Princesa|r << Warrior
    >>Asegúrate de que|cRXP_WARN_ |T136205:0|t[Evasión] |cRXP_WARN_esté lista. Si te cuesta, puedes usar la valla con armas arrojadizas para aprovechar el "pathing" y ganar tiempo|r << Rogue
    >>|cRXP_WARN_Prepárate para usar una|r |T134830:0|t[Poción de sanación inferior]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    #label Deed << !Warlock
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de lino rojo|r
    >>|cRXP_WARN_No tienes que completar este paso ahora. Omite este paso si deseas ya que volverás aquí de nuevo en breve|r << Warlock
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
step << !Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .target Sara Timberlain
    .isQuestComplete 83
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step << !Warlock
    .goto Redridge Mountains,10.76,77.64,0
    .goto Redridge Mountains,10.76,77.64,40,0
    .goto Redridge Mountains,15.79,64.37
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
step
    #completewith ElmoresTask
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
step
    .goto Elwynn Forest,43.318,65.705
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 112 >> Entrega la misión La recolección de algas
    .timer 9,La recolección de algas RP
    .accept 114 >> Acepta la misión La fuga
    .target William Pestle
step << Paladin/Warrior/Rogue
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
step << Rogue
    #optional
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Solo entrena|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_y|r |T132307:0|t[Sprint]|cRXP_WARN_. No entrenes otros hechizos para ahorrar tu dinero para más tarde|r
    >>|cRXP_WARN_No te preocupes si aún no tienes una segunda arma, la obtendrás muy pronto|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
    .accept 239 >> Acepta la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 59 >> Acepta la misión Armadura de paño y cuero << Warlock
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
    .target Marshal Dughan
step
    #label ElmoresTask
    .goto Elwynn Forest,41.706,65.544
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
    .accept 1097 >> Acepta la misión La tarea de Elmore
    .target Smith Argus
step << Warlock
    #optional
    #completewith WarlockTraining
    .goto Elwynn Forest,44.1,66.0,10 >> Baja por las escaleras de la Posada
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r y |cRXP_FRIENDLY_Remen Marcot|r
    .train 980 >> |T136139:0|t[Maldición de agonía]
    .train 5782 >> |T136183:0|t[Miedo]
    .train 6201 >> |T135230:0|t[Crear piedra de salud (menor)]
    .train 696 >> |T136185:0|t[Piel de demonio (Rango 2)]
    .train 1120 >> |T136163:0|t[Drenar alma]
    .train 707 >> |T135817:0|t[Inmolar (Rango 2)]
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >> Acepta la misión La invocación de Gakin
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
    .xp <10,1
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 980 >> |T136139:0|t[Maldición de agonía]
    .train 5782 >> |T136183:0|t[Miedo]
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .xp <8,1
step << Warlock
    #optional
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    >>|cRXP_BUY_Compra|r |T133738:0|t[Grimorio of Descarga de Fuego (Rank 2)] |cRXP_BUY_y|r |T133738:0|t[Grimorio of Pacto de sangre (Rank 1)] |cRXP_BUY_de ella si puedes permitírtelo. Si no puedes, puedes comprarlo después|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    >>|cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio de Descarga de Fuego (Rango 2)] |cRXP_BUY_si puedes permitírtelo. Si no, puedes comprarlo más tarde|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Elwynn Forest,44.397,65.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    >>|cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio Pacto de sangre (Rango 1)] |cRXP_BUY_si te lo puedes permitir. Si no, puedes comprarlo más tarde|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >> Sube al piso de arriba de la Posada
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >> Aprende tus hechizos de clase
step << Priest
    #optional
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
    .accept 5635 >> Acepta la misión Oración desesperada << Human/Dwarf
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Josetta
    .xp <10,1
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
	.target Priestess Josetta
    .trainer >> Aprende tus hechizos de clase
    .xp >10,1
    .xp <9,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .money >1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_NO entrenes|r |T132277:0|t[Ira sangrienta] |cRXP_WARN_aún, necesitas ahorrar algo de tu dinero para más entrenamiento pronto|r
    .trainer >> Aprende tus hechizos de clase
    .accept 1638 >> Instrucción de guerrero
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <10,1
step << Warrior
    #optional
    .money <1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .accept 1638 >> Instrucción de guerrero
    .target Lyria Du Lac
    .xp <10,1
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Entrega la misión La fuga
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .turnin 88 >> Entrega la misión ¡Princesa debe morir!
    .target Ma Stonefield
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 11 >> Acepta la misión Recompensas por los gnolls Zarparrío
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 176 >> Acepta la misión Se busca: Hogger
    .goto Elwynn Forest,24.548,74.672,-1
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 11 >> Acepta la misión Recompensas por los gnolls Zarparrío
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .xp 9.65,1
step << Rogue/Warrior
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 11 >> Acepta la misión Recompensas por los gnolls Zarparrío
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .money >0.2600
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
step << !Warlock
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 11 >> Acepta la misión Recompensas por los gnolls Zarparrío
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 176 >> Acepta la misión Se busca: Hogger
    .goto Elwynn Forest,24.548,74.672,-1
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
    .isOnQuest 11
    #completewith next
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Bandas|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
    .group
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
    >>|cRXP_WARN_Puedes llevarlo de vuelta a la torre de guarda, asegúrate de causar al menos el 51% del daño|r
    >>|cRXP_WARN_Esta misión es difícil. Busca un grupo para él si es necesario. Omite este paso si no puedes encontrar un grupo o derrotarlo en solitario|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    .isOnQuest 11
    #completewith next
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Bandas|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
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
    .isOnQuest 11
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
step << Warrior/Rogue
    .money >0.2600
    +Mata |cRXP_ENEMY_Cachorros Zarparrío|r y |cRXP_ENEMY_Avanzados Zarparrío|r
    >>|cRXP_WARN_Farmea hasta tener 26 plata en vendibles/dinero. Esto es para entrenar Arrojadizas, Maza de 2 manos y Espada de 2 manos. También es para comprar un Arma de Lanzamiento de nivel 3 y para volar a Ventormenta pronto|r
    >>|cRXP_WARN_Omite manualmente este paso una vez que tengas suficiente dinero|r
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
    >>|cRXP_WARN_Choose the|r |T134583:0|t[|cRXP_FRIENDLY_Leotardos de guardia de Ventormenta|r] |cRXP_WARN_as your reward. You will get a 2H Mace very soon|r << Warrior
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
    .isQuestComplete 11
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    >>|cRXP_WARN_No aceptes las otras misiones|r
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Verna Cejade|r
    >>|cRXP_WARN_No aceptes las otras misiones|r
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r dentro
    >>|cRXP_WARN_No aceptes las otras misiones|r
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .target Salma Saldean
step
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .target Gryan Stoutmantle
step << Human
    #optional
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .accept 6181 >> Acepta la misión Mensajero a toda prisa
    .target Quartermaster Lewis
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Heather|r
    >>|cRXP_BUY_Compra hasta 20|r los |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_de ella|r
    .collect 4592,20 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
    .zoneskip Westfall,1
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
    #optional
    .abandon 123 >>Abandona la misión El Coleccionista
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morgan Mortero|r
    .turnin 61,1 >> Entrega la misión Un envío para Ventormenta
    >>|cRXP_WARN_Elegimos el|r |T132383:0|t[Cohete explosivo] |cRXP_WARN_como recompensa. Causa daño decente y puede usarse para "Split pulling" que es increíblemente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Haz clic aquí para ver un vídeo sobre el "Split pulling". Es un vídeo corto y muy útil para aprender|r
    .target Morgan Pestle
step
    #optional << Warlock/Mage/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Aprende Espadas de 1 mano y Bastones << Warlock/Mage
    .trainer >>Aprende Espadas de 1 mano << Rogue
    .trainer >>Aprende el uso de Bastones << Priest
    .trainer >>Aprende Espadas de 2 manos << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    >>|cRXP_WARN_Asegúrate de guardar 6 platas para aprender facultades después|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
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
    .train 2983,3 --Sprint Trained
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra un|r |T135346:0|t[Alfanje] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Asegúrate de guardar 6 platas para aprender facultades después|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
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
    .train 2983,3 --Sprint Trained
step << Rogue
    #optional
    .equip 16,851 >> |cRXP_WARN_Equipa el|r |T135346:0|t[Alfanje] |cRXP_WARN_en tu mano principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2494 >> |cRXP_WARN_Equipa el|r |T135641:0|t[Estilete] |cRXP_WARN_en tu mano izquierda|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .isOnQuest 1685
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1685 >> Entrega la misión La invocación de Gakin
    .accept 1688 >> Acepta la misión Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .accept 1688 >> Acepta la misión Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #completewith WLHoggerEnd
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r usando |T136126:0|t[Transfusión de vida] y poniéndote sobre la fogata que tienes al lado
    .zoneskip Stormwind City,1
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >> Viaja a Villadorada
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    >>|cRXP_WARN_Elige el|r |T135145:0|t[Palo de lucha equilibrado]
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .turnin 123 >> Entrega la misión El Coleccionista
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    >>|cRXP_WARN_Elige el|r |T135145:0|t[Palo de lucha equilibrado]
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .target Marshal Dughan
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +Equipa el|cRXP_WARN_ |T135145:0|t[Palo de lucha equilibrado]|r
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #optional
    .subzone 62 >> Viaja a la Plantación de Calabazas de Brackwell
    .isOnQuest 1688
step << Warlock
    #sticky
    #label WLBandanaEnd
    #loop
    .goto Elwynn Forest,70.5,77.6,0
    .goto Elwynn Forest,70.8,80.9,0
    .waypoint Elwynn Forest,70.5,77.6,60,0
    .waypoint Elwynn Forest,68.1,77.5,60,0
    .waypoint Elwynn Forest,68.2,81.4,60,0
    .waypoint Elwynn Forest,70.8,80.9,60,0
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de lino rojo|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Entrega la misión Armadura de paño y cuero
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Entrega la misión Armadura de paño y cuero
    .target Sara Timberlain
step << Warlock
    #optional
    #completewith TheBinding
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    >>|cRXP_WARN_Mata enemigos de camino. Asegúrate de tener al menos 2|r |T134075:0|t[Fragmentos de alma] |cRXP_WARN_usando|r |T136163:0|t[Drenar alma]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    >>|cRXP_WARN_Ten cuidado con los enemigos durante el trayecto|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
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
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ilsa Corbin|r escaleras arriba
    >>|cRXP_WARN_Debes ahorrar 20s para entrenamiento de 2H Maza y entrenamiento de Arrojadizas en Forjaz|r
    .trainer >> Aprende tus hechizos de clase
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .accept 1638 >> Acepta la misión Instrucción de guerrero
    .target Ilsa Corbin
    .train 6546,1
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Osric Strang|r
    .turnin 6281 >> Entrega la misión Prosigue hasta Ventormenta
    .target Osric Strang
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Entrega la misión Instrucción de guerrero
    .accept 1639 >> Acepta la misión Bartleby, el borracho
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Entrega la misión Bartleby, el borracho
    .accept 1640 >> Acepta la misión Vence a Bartleby
    .target Bartleby
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
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >> Entra en la Catedral de Ventormenta
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .turnin 5635 >> Entrega la misión Oración desesperada
    .train 8092 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .isOnQuest 5635
step << Human Priest/Dwarf Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .turnin 5634 >> Entrega la misión Oración desesperada
    .train 8092 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .trainer >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .train 13908,3
step << Warrior/Paladin/Rogue
    .goto Stormwind City,51.192,17.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gelman Petramano|r
    .train 2575 >>Aprende |T134708:0|t[Minería]
    >>|cRXP_WARN_Esto se usa en conjunto con|r |T136241:0|t[Herrería] |cRXP_WARN_para hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_y|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_para aumentar el daño de tu arma|r
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .target Gelman Stonehand
    .train 2018,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step << Warrior/Paladin/Rogue
    #optional
    #completewith EnterIF
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << Warrior/Paladin/Rogue
    #optional
    .goto Stormwind City,51.021,16.862
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brooke Petratrenza|r
    .collect 2901,1 >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a esta vendedora|r
    .target Brooke Stonebraid
    .train 2575,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Entrega la misión La tarea de Elmore
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
    .target Grimand Elmore
step
    #completewith EnterIF
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Ironforge
step
    #optional
    >>|cRXP_WARN_Toma el Tranvía Subterráneo hacia el lado de Forjaz|r
    >>|cRXP_WARN_Sube de nivel|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el Tranvía a Forjaz si es necesario|r
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Lanza|r |T136221:0|t[Invocar abisario] |cRXP_WARN_y|r |T135230:0|t[Crear piedra de salud] |cRXP_WARN_mientras esperas el Tranvía a Forjaz si es necesario|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del lado de Forjaz del Tranvía Subterráneo
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
    .skill firstaid,<1,1
step
    #optional
    >>|cRXP_WARN_Toma el Tranvía Subterráneo hacia el lado de Forjaz|r
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Lanza|r |T136221:0|t[Invocar abisario] |cRXP_WARN_y|r |T135230:0|t[Crear piedra de salud] |cRXP_WARN_mientras esperas el Tranvía a Forjaz si es necesario|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del lado de Forjaz del Tranvía Subterráneo
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    .use 17117 >>|cRXP_WARN_Usa la|r |T133942:0|t[Flauta cazarratas] |cRXP_WARN_en las |cRXP_ENEMY_Rata del subterráneo|r dentro del Tranvía Subterráneo|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r dentro del Tranvía Subterráneo
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    #label EnterIF
    .zone Ironforge >>Entra en Forjaz
step << skip
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >> Clin aquí para omitir logout dentro del tren
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Entra en Forjaz
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Entra en el edificio Armas Mil Maderas
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r y |cRXP_FRIENDLY_Buliwyf Petramano|r
    .train 2567 >> Aprende el uso de Arrojadizas
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >> Aprende Mazas de 2 manos
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a esta vendedora|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizos cortantes] |cRXP_BUY_a esta vendedora|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a esta vendedora|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    .goto 1455,61.356,88.398,6 >> Sal del edificio Armas Mil Maderas
step << Warrior
    .money <0.06
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    >>|cRXP_WARN_Si no tienes suficiente dinero no es gran cosa|r
    .train 6546 >> Aprende |T132155:0|t[Desgarrar (Rango 2)]
    .train 2687 >> Aprende |T132277:0|t[Ira sangrienta]
    .target Bilban Tosslespanner
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step
#xprate <1.5
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan en breve:|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .isQuestAvailable 418
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step
#xprate >1.49
    .goto Ironforge,60.072,36.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daryl Riknussun|r
    .target Daryl Riknussun
    .train 2550 >> Aprende |T133971:0|t[Cocina]
step << Warrior/Paladin/Rogue
#xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Geofram Bouldertoe|r downstairs in the building (NOT TRANSLATED IN :esMX YET)
    .goto Ironforge,51.8,29.5,15,0
    .goto Ironforge,49.6,28.2,12,0
    .goto Ironforge,49.9,26.3
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Geofram Bouldertoe
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
#xprate >1.49
    #optional
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
#xprate >1.49
#ah
    #sticky
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
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
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#xprate >1.49
#ah
    #sticky
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)

--
--

step
#xprate <1.5
    .goto Ironforge,18.14,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Brebefuego|r
    .home >> Establece tu Piedra de hogar en Forjaz
    .target Innkeeper Firebrew
    .bindlocation 1537
step
#xprate <1.5
    #optional
    #completewith Dirt
    .goto 1426,53.47,35.02
    >>Sal de Forjaz
    .zone Dun Morogh >> Viaja a Dun Morogh
step
#xprate <1.5
    #optional
    #label Dirt
    #completewith Rudra
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Sube por el camino de tierra
    .isQuestAvailable 314
step
#xprate <1.5
    #completewith VagashEnd
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_HAZ CLIC AQUÍ si estás teniendo dificultades|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .mob Vagash
step << Warrior/Rogue
#xprate <1.5
    #optional
    #requires Dirt
    #completewith VagashEnd
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
#xprate <1.5
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
    .target Rudra Amberstill
step
#xprate <1.5
    #label VagashEnd
    .goto 1426,62.778,54.591,0
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_Kitéalo hacia el guardia al sur del rancho. Asegúrate de infligirle 51%+ de daño|r
    >>|cRXP_WARN_Mira el video de abajo antes de intentar matar a |cRXP_ENEMY_Vagash|r. Se puede completar en solitario con cualquier clase|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >> |cRXP_WARN_Haz clic aquí para ver el video de referencia|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
#xprate <1.5
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .turnin 314 >> Entrega la misión La protección del rebaño
    .target Rudra Amberstill
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cFF00FF25Senador Mehr Piedrasanta|r and |cFF00FF25Supervisor Petrocejas|r
    .accept 433 >> Acepta la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >> Acepta la misión ¡Malditos troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cFF00FF25Dank Cortefiel|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Aprende |T134708:0|t[Minería]
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
#xprate <1.5
    #optional
    #completewith QuarryEnd
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
#xprate <1.5
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r y |cRXP_ENEMY_Cascahuesos Comepiedras|r dentro de la cueva
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
#xprate <1.5
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r y el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
    .turnin 433 >> Entrega la misión El servidor público
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step << !Warrior !Rogue !Paladin
#xprate <1.5
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Compra hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .target Kazan Mogosh
    .xp >15,1
step
#xprate <1.5
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cFF00FF25Cocinero Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
step
#xprate <1.5
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
    .target Pilot Hammerfoot
step
#xprate <1.5
    .goto Dun Morogh,79.672,36.171
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r del suelo
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
#xprate <1.5
    .goto Dun Morogh,78.97,37.14
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
#xprate <1.5
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .turnin 417,1 >> Entrega la misión Vengar al piloto << Rogue
    .turnin 417 >> Entrega la misión Vengar al piloto << !Rogue
    .target Pilot Hammerfoot
step
#xprate <1.5
    .goto Dun Morogh,84.4,31.1,25 >>Atraviesa el túnel hacia Loch Modan
    .zoneskip Loch Modan

--
--

step
#xprate >1.49
    .goto 1426,53.042,35.383
    .zone Dun Morogh >> Sal de Forjaz
step
#xprate >1.49
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Ve al deathskip de Dun Morogh -> Los Humedales
step
#xprate >1.49
    .goto Dun Morogh,31.51,29.99,20,0
    .goto Dun Morogh,32.4,29.1,20 >> Continúa por la montaña hasta la ubicación del deathskip
step
#xprate >1.49
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Corre recto hacia el borde al norte y cae. Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
#xprate >1.49
    #completewith next
    .goto Wetlands,11.95,50.24,80 >> Nada hacia la orilla en dirección al Puerto de Menethil
    .subzoneskip 150 --Menethil Harbor
step
#xprate >1.49
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
#xprate >1.49
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >> Sal del Castillo de Menethil
    .subzoneskip 2103,1 --Menethil Keep
step
#xprate >1.49
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r fuera
    .fp Wetlands >> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dewin Brillalba|r dentro
    .vendor 1453 >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Dewin Shimmerdawn
step
#xprate >1.49
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >> Viaja al muelle para tomar el barco hacia Auberdine
    .zoneskip Darkshore
step
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
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
#xprate >1.49
    #optional
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
#xprate >1.49
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >> Toma el barco hacia Costa Oscura
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance
#xprate <1.5
#name 11-12 Loch Modan << !Warlock
#name 12-14 Loch Modan << Warlock
#subgroup RestedXP Alianza 1-20
#defaultfor Human
#next 14-14 Costa Oscura << Warlock
#next 12-14 Costa Oscura << !Warlock

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vende y repara si es necesario|r
    .target Gothor Brumn
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas << Warlock/Mage/Rogue
    .target Mountaineer Stormpike
step << !Warlock !Mage !Rogue
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Warlock/Mage/Rogue
    #optional
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
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
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    .abandon 1338 >> Abandona la misión Un pedido de Pico Tormenta. Esto desbloquea la misión La tarea del montaraz Pico Tormenta que te dará 550xp gratuitos al entregar
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Guarda los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_para subir de nivel|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    .subzoneskip 144
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    .subzone 144 >> Viaja a Thelsamar
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >> |cRXP_BUY_Cómprale hasta 2|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_si es necesario|r
    .target Yanni Stoutheart
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r
    .vendor 6734 >> |cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado]|cRXP_BUY_. Procura tener unos 20|r << Rogue
    .vendor 6734 >> |cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y|r |T132815:0|t[Leche fría como el hielo]|cRXP_BUY_. Procura tener unos 10|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y 20|r |T132815:0|t[Leche fría como el hielo] << Mage/Warlock
    .target Innkeeper Hearthstove
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    #label StormpikeO
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
step << Warlock/Mage/Rogue
    #optional
    #completewith SilverStream
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
step << Warlock/Mage/Rogue
    #completewith SilverStream
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas de rata de túnel|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Warlock/Mage/Rogue
    #label SilverStream
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >> Entra en la Mina de Fuenteplata
step << Warlock/Mage/Rogue
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    >>|cRXP_WARN_Los |cRXP_PICK_Cajones de la Liga de Mineros|r se pueden encontrar por toda la Mina|r
    .complete 307,1 -- Miners' Gear (4)
step << Warlock/Mage/Rogue
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
step << Warlock/Mage/Rogue
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
step << Warlock/Mage/Rogue
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vende y repara si es necesario|r
    .target Gothor Brumn
step << Warlock/Mage/Rogue
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Stormpike
step << Warlock/Mage/Rogue
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
step << Warlock/Mage/Rogue
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
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos o Tranvías para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- step only displays if skill is 1 or higher
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r fuera
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .target Thorgrum Borrelson
step << !Warlock
    .hs >> Usa tu Piedra de hogar para ir a Forjaz
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << !Warlock
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r fuera
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Sube por el camino de tierra y luego déjate caer dentro del búnker
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r en el búnker
    .accept 267 >> Acepta la misión La amenaza trogg
    .target Captain Rugelfuss
step << Warlock
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step << Warlock
    .goto Loch Modan,27.33,56.70
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << Warlock
    #completewith TroggT
    .money >0.7150
    .goto Loch Modan,27.33,56.70
    +Farmea a los |cRXP_ENEMY_Troggs|r hasta que tengas 71s 50c de dinero o basura de vendedor, luego entrega las misiones
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 13+9600 >>Mata enemigos hasta alcanzar 9600+/11400 xp
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >> Sube por el camino de tierra y luego déjate caer dentro del búnker
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r
    .turnin 267 >> Entrega la misión La amenaza trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step << Warlock
    #label TroggT
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 14 >> Mata enemigos hasta el nivel 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .hs >> Usa tu Piedra de hogar para ir a Forjaz
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << Warlock
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r fuera
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Paladin
    #optional
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r dentro
    .trainer >> Aprende tus hechizos de clase
    .target Brandur Ironhammer
    .xp <12,1
step << Rogue
    #optional
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenthwick|r
    .trainer >> Aprende tus hechizos de clase
    .target Fenthwick
    .xp <12,1
step << Warrior
    #optional
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
    .xp <12,1
step << Mage/Priest/Warlock
#ah
    #sticky
    #label AH1
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_si cuesta menos de 30s 6c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7579 << Warlock/Mage
step
#ah
    #sticky
    #label AH2
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
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
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#ah
    #sticky
    #label AH3
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Costa Oscura pronto:|r
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #requires AH1
step
    #requires AH2
step
    #requires AH3
step << Mage/Priest/Warlock
    #optional
    +|cRXP_WARN_Equipa la|r |T135144:0|t[Varita mágica superior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp <13,1
step << Priest/Warlock/Mage
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harick Tamborroca|r abajo
    >>|cRXP_BUY_Compra una|r |T135468:0|t[Varita humeante] |cRXP_BUY_a este vendedor|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7579 << Warlock
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135468:0|t[Varita humeante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +|cRXP_WARN_Recuerda equipar la|r |T135468:0|t[Varita humeante] |cRXP_WARN_más tarde cuando llegues al nivel 15|r
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
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
step << Priest
    #optional
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Toldren Acerhondo|r
    .trainer >> Aprende tus hechizos de clase
    .target Toldren Deepiron
    .xp <12,1
step << Mage
    #optional
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase
    .target Dink
    .xp <12,1
step
    .goto 1426,53.042,35.383
    .zone Dun Morogh >> Sal de Forjaz
step
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >> Ve al deathskip de Dun Morogh -> Los Humedales
step
    .goto Dun Morogh,31.51,29.99,20,0
    .goto Dun Morogh,32.4,29.1,20 >> Continúa por la montaña hasta la ubicación del deathskip
step
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >> Corre recto hacia el borde al norte y cae. Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step
    #completewith next
    .goto Wetlands,11.95,50.24,80 >> Nada hacia la orilla en dirección al Puerto de Menethil
    .subzoneskip 150 --Menethil Harbor
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
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >> Sal del Castillo de Menethil
    .subzoneskip 2103,1 --Menethil Keep
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shellei|r fuera
    .fp Wetlands >> Consigue la ruta de vuelo de Los Humedales
    .target Shellei Brondir
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
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group RestedXP Guía TBC (A)
<< Alliance Warlock
#xprate <1.5
#name 14-14 Costa Oscura
#subgroup RestedXP Alianza 1-20
#defaultfor Human Warlock
#next 14-20 Bloodmyst

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
