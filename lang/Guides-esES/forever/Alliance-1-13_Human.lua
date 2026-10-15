if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Villanorte
#version 1
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11 Bosque de Elwynn


step << !Human
    #completewith next
    +Has seleccionado una guía destinada a Humanos. Deberías elegir la misma zona inicial en la que comienzas
step << Mage
    #completewith next
    +Ten en cuenta que has seleccionado la guía de Mago para un solo objetivo. El daño a un solo objetivo es mucho más seguro que el de Mago a AoE, pero MUCHO más lento
step << !Human Mage
    #season 2
    #completewith next
    +En la Temporada de Descubrimiento, NO deberías comenzar fuera de tu zona de inicio de raza como Mago, ya que serás incapaz de obtener tu primera runa aquí (|T135844:0|t[Lanza de hielo])
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >> Elimina la |T134414:0|t[Piedra de hogar] de tus bolsas, ya que ya no se necesita
step
    .goto 1429/0,-136.48,-8933.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 783 >> Acepta la misión Una amenaza interna
    .target Deputy Willem
step << Warrior
    .goto 1429/0,-75.05,-8872.36,35,0
    >>Mata |cRXP_ENEMY_Lobos jóvenes|r hasta que tengas 10 cobres o más en basura para vender
    >>|cRXP_WARN_Aprenderás|r |T132333:0|t[Grito de batalla] |cRXP_WARN_lo que aumenta la velocidad al subir de nivel al principio|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target +Brother Danil
    .goto 1429/0,-112.74,-8901.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .target +Llane Beshere
    .goto 1429/0,-208.40,-8918.35
    .mob Young Wolf
step
    #label Within
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 783 >> Entrega la misión Una amenaza interna
    .accept 7 >> Acepta la misión La limpieza del campamento kóbold
    .target Marshal McBride
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .accept 5261 >> Acepta la misión Eagan Desollapelambres
    .target Deputy Willem
step
    #label EaganWolves
    .goto 1429/0,-163.24,-8869.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 5261 >> Entrega la misión Eagan Desollapelambres
    .accept 33 >> Acepta la misión Lobos en la frontera
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    #completewith next
    .goto 1429/0,-68.11,-8874.67,40,0
    .goto 1429/0,-112.74,-8901.66
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
    >>Mata |cRXP_ENEMY_Alimañas kóbold|r. Despójalas para obtener el |T133736:0|t[|cRXP_LOOT_Libro mordisqueado|r]
    .use 247834 >> |cRXP_WARN_Usa el|r |T133736:0|t[|cRXP_LOOT_Libro mordisqueado|r] |cRXP_WARN_para comenzar la misión|r
    >>|cRXP_WARN_Es importante entregar esta misión en cuanto consigas el botín del|r |T133736:0|t[|cRXP_LOOT_Libro mordisqueado|r] |cRXP_WARN_|r
    .collect 247834,1,91741,1 -- Nibbled-On Book (1)
    .accept 91741 >> Acepta la misión El libro mordisqueado
    .complete 7,1 --Kill Kobold Vermin (x10)
    .disablecheckbox
    .mob Kobold Vermin
step
    #completewith next
    .goto 1429/0,-136.900,-8913.800,10,0
    .goto 1429/0,-176.000,-8880.900,10 >> |cRXP_WARN_Viaja hacia el |cRXP_FRIENDLY_Hermano Paxton|r en la Abadía de Villanorte. No te preocupes por completar las |cRXP_ENEMY_Alimañas|r o los |cRXP_ENEMY_Lobos|r de inmediato|r
step
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Paxton|r
    .turnin 91741 >> Entrega la misión El libro mordisqueado
    .accept 92124 >> Acepta la misión Inventario de libros
    .target Brother Paxton
step
    .goto 1429/0,-182.65,-8881.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Daniel|r
    .turnin 92124 >> Entrega la misión Inventario de libros
    .target Daniel
step
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Paxton|r
    .accept 91743 >> Acepta la misión Roedores traviesos
    .target Brother Paxton
step
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
    >>Mata |cRXP_ENEMY_Alimañas kóbold|r. Despójalas para obtener sus |cRXP_LOOT_Libros robados|r
    >>|cRXP_WARN_No te desvíes de tu camino para despojar todos los |cRXP_LOOT_Libros robados|r todavía|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .complete 91743,1 -- Stolen Book (8)
    .disablecheckbox
    .mob Kobold Vermin
step
    #requires WolfMeatEnd
    .goto 1429/0,-163.24,-8869.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan Desollapelambres|r
    .turnin 33,2 >> Entrega la misión Lobos en la frontera << Warrior/Paladin/Rogue
    .turnin 33,1 >> Entrega la misión Lobos en la frontera << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto 1429/0,-112.74,-8901.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 10 más|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Asegúrate de guardar 10 cobres o más para después|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto 1429/0,-119.86,-8898.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >>Vende la Basura
    .target Godric Rothgar
step << Rogue
    #season 0,1
    .goto 1429/0,-104.21,-8909.39--c:Elwynn Forest,47.240,41.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Janos Nudillomartillo|r
    .vendor 78 >>|cRXP_BUY_Cómprale una|r |T135650:0|t[Puntilla] |cRXP_BUY_o un|r |T132410:0|t[Hacha de mano] |cRXP_BUY_si puedes pagarlo|r
    --.collect 2139,1 -- Dirk (1)
    --.disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step << Rogue
    #season 0,1
    #completewith CleanupEnd
    +|cRXP_WARN_Equipa la|r |T135650:0|t[Puntilla]
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step << Rogue
    #season 0,1
    #completewith CleanupEnd
    +|cRXP_WARN_Equipa el|r |T132410:0|t[Hacha de mano]
    .use 2134
    .itemcount 2134,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step
    #label CleanupEnd
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 7 >> Entrega la misión La limpieza del campamento kóbold
    .accept 15 >> Acepta la misión Investiga la Mina del Eco
    .accept 3100 >> Acepta la misión Una carta simple << Human Warrior
    .accept 3101 >> Acepta la misión Una carta consagrada << Human Paladin
    .accept 3102 >> Acepta la misión Una carta cifrada << Human Rogue
    .accept 3103 >> Acepta la misión Una carta sacralizada << Human Priest
    .accept 3104 >> Acepta la misión Una carta glífica << Human Mage
    .accept 3105 >> Acepta la misión Una carta manchada << Human Warlock
    .accept 92479 >>Acepta la misión Una carta garabateada << Human Hunter
    .target Marshal McBride

step << Warlock
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r fuera
    .accept 18 >> Acepta la misión Hermandad de ladrones
    .target Deputy Willem
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >> Entrega la misión Una carta manchada
    .accept 1598 >> Acepta la misión El libro robado
    .train 348 >> Aprende |T135817:0|t[Inmolar]
    .target Drusilla La Salle


step << Warlock
    #hardcore
--   .goto 1429/0,-300.65,-8964.94,60,0
    .goto 1429/0,-432.55,-8958.00
    >>Abre los |cRXP_PICK_Libros robados|r. Despójalos para obtener los |cRXP_LOOT_Poderes del Vacío|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
--  .goto 1429/0,-300.65,-8964.94,60,0
    .goto 1429/0,-432.55,-8958.00
    >>Abre los |cRXP_PICK_Libros robados|r. Despójalos para obtener los |cRXP_LOOT_Poderes del Vacío|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    >>|cRXP_WARN_Si no hay ningún |cRXP_ENEMY_Defias|r cerca, vuelve corriendo en su lugar|r
    .target Ángel de la Resurrección
step << Warlock
    #season 0,1
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >> Entrega la misión El libro robado
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith next
    .cast 688 >> |cRXP_WARN_Lanza|r |T136218:0|t[Invocar diablillo]
    .usespell 688

step
    #completewith next
    >>Mata |cRXP_ENEMY_Kóbolds|r. Despójalos para obtener sus |cRXP_LOOT_Libros robados|r
    .complete 91743,1 -- Stolen Book (8)
step
    #season 0,1 << Priest/Warrior
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

----Start of 1x train section----




step
    #label xp3
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
    .xp 3+1110 >>|cRXP_WARN_Mata enemigos hasta alcanzar 1110+/1400xp|r
    >>Mata |cRXP_ENEMY_Trabajadores kóbold|r para obtener los |cRXP_LOOT_Libros robados|r si todavía los necesitas
    .complete 91743,1 -- Stolen Book (8)
    .disablecheckbox
    .mob Kobold Worker
step << !Hunter
    #season 0,1 << Warrior
    #completewith next
    .goto 1429/0,-119.86,-8898.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Godric Rothgar|r
    .vendor >> |cRXP_WARN_Vende la basura|r
    .target Godric Rothgar
step << Hunter
    .goto 1429/0,-112.800,-8901.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Danil|r
    .vendor >> |cRXP_BUY_Compra 2 montones de|r |T132382:0|t[Flechas férreas]
    .target Brother Danil
step
    #requires xp3
    #label Investigate
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r
    .turnin 15 >> Entrega la misión Investiga la Mina del Eco
    .accept 21 >> Acepta la misión Refriega en el Eco
    .target Marshal McBride

step
    .isQuestComplete 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Paxton|r
    .turnin 91743 >> Entrega la misión Roedores traviesos
    .accept 91745 >>Acepta la misión Asesores de minería
    .target Brother Paxton
step
    .isQuestTurnedIn 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Paxton|r
    .accept 91745 >>Acepta la misión Asesores de minería
    .target Brother Paxton

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
    .goto 1429/0,-188.23,-8851.58,12 >>Viaja hacia |cRXP_FRIENDLY_Khelden Bremen|r subiendo las escaleras
step << Mage
    #season 0,1
    .goto 1429/0,-188.23,-8851.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden Bremen|r en el piso de arriba
    .turnin 3104 >> Entrega la misión Una carta glífica
    .trainer >> Aprende tus hechizos de clase
    .target Khelden Bremen
step << Priest
    #optional
    #completewith next
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-193.06,-8870.05,10 >> Viaja hacia la |cRXP_FRIENDLY_Sacerdotisa Anetta|r en el piso de abajo
step << Priest
    .goto 1429/0,-193.34,-8853.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r abajo
    .turnin 3103 >> Entrega la misión Una carta sacralizada
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Anetta
step << Warrior/Paladin
    #optional
    #completewith next
    .goto 1429/0,-186.12,-8907.08,15 >> Viaja hacia |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo << Warrior
    .goto 1429/0,-186.12,-8907.08,15 >> Viaja hacia el |cRXP_FRIENDLY_Hermano Sammuel|r en el piso de abajo << Paladin
step << Warrior
    #season 0,1
    .goto 1429/0,-208.40,-8918.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Llane Beshere|r en el piso de abajo
    .turnin 3100 >> Entrega la misión Una carta simple
    .trainer >> Aprende tus hechizos de clase
    .target Llane Beshere
step << Paladin
    #season 0,1
    .goto 1429/0,-215.03,-8914.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Sammuel|r
    .turnin 3101 >> Entrega la misión Una carta consagrada
    .trainer >> Aprende tus hechizos de clase
    .target Brother Sammuel
step
    #season 0,1 << Warrior
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r fuera
    .accept 18 >> Acepta la misión Hermandad de ladrones
    .target Deputy Willem
step << Hunter
    .goto 1429/0,-242.100,-8884.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tordrin Filosevero::248415|r
    .target Tordrin Sternblade::248415
    .turnin 92479 >>Entrega la misión Una carta garabateada
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drusilla La Salle|r
    .train 172 >>Aprende |T136118:0|t[Corrupción]
    .target Drusilla La Salle



----End of 1x train section----




step
    #season 0,1
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de arpillera roja|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob Defias Thug
step << Rogue
    #optional
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 4 >> Mata enemigos hasta subir al nivel 4
step
    #season 0,1
    .goto 1429/0,-136.48,-8933.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 18,1 >> Entrega la misión Hermandad de ladrones << Rogue/Warlock
    .turnin 18,2 >> Entrega la misión Hermandad de ladrones << Priest
    .turnin 18,3 >> Entrega la misión Hermandad de ladrones << Warrior
    .turnin 18,4 >> Entrega la misión Hermandad de ladrones << Paladin
    .turnin 18,5 >> Entrega la misión Hermandad de ladrones << Mage
    .turnin 18 >> Entrega la misión Hermandad de ladrones << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 3903 >> Acepta la misión Milly Osworth
    .accept 6 >> Acepta la misión La recompensa por Garrick Piesuaves
    .target Deputy Willem
step << Paladin
    #season 0,1
    #completewith RestandR
    .equip 16,5579 >> |cRXP_WARN_Equipa el|r |T133052:0|t[Martillo de guerra de milicia]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #season 0,1
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
    #optional
    .isOnQuest 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kelsey Abisal::247226|r
    .target Kelsey Fargo::247226
    .turnin 91745 >>Entrega la misión Asesores de minería
    .accept 91752 >>Acepta la misión La situación en su conjunto
step
    #optional
    .isQuestTurnedIn 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kelsey Abisal::247226|r
    .target Kelsey Fargo::247226
    .accept 91752 >>Acepta la misión La situación en su conjunto
step
    #optional
    #completewith KoboldLaborers
    .goto 1429/0,-117.74,-8681.87,20 >> Entra en la Mina del Eco
step
    #completewith KoboldLaborers
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>Mata al |cRXP_ENEMY_Buscabrillantes Narf|r. Despójalo para obtener el |cRXP_LOOT_Saco de libros "ilustrados"|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf
step
    #completewith KoboldLaborers
    .isOnQuest 91743
    >>Mata |cRXP_ENEMY_Obreros kóbold|r y |cRXP_ENEMY_Trabajadores kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Libros robados|r
    .complete 91743,1 -- Stolen Book (8)
step
    #label KoboldLaborers
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
    .isOnQuest 91743
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
    >>Mata |cRXP_ENEMY_Obreros kóbold|r y |cRXP_ENEMY_Trabajadores kóbold|r. Despójalos para obtener sus |cRXP_LOOT_Libros robados|r
    .complete 91743,1 -- Stolen Book (8)
    .mob Kobold Laborer
    .mob Kobold Worker
step
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>Mata al |cRXP_ENEMY_Buscabrillantes Narf|r. Despójalo para obtener el |cRXP_LOOT_Saco de libros "ilustrados"|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf

step
    .goto 1429/0,-224.02,-8850.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly Osworth|r
    >>|cRXP_WARN_Omite la continuación|r << !Priest !Mage
    .turnin 3903 >> Entrega la misión Milly Osworth
    .accept 3904 >> Acepta la misión La cosecha de Milly << Priest/Mage
    .target Milly Osworth
step << Rogue
    #season 0,1
    .goto 1429/0,-210.90,-8863.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorik Kerridan|r
    .turnin 3102 >> Entrega la misión Una carta cifrada
    .train 1784 >>Aprende |T132320:0|t[Sigilo]
    .train 921 >>Aprende |T133644:0|t[Robar]
    .target Jorik Kerridan
step << Priest/Mage
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    >>Despoja la |cRXP_PICK_Cosecha de Milly|r del suelo
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429,57.518,48.253
    >>Mata a |cRXP_ENEMY_Garrick Piesuaves|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step
    #requires CuttyNote << Rogue --Season 2
    #optional
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 5 >> Mata enemigos hasta subir al nivel 5
    .mob Defias Thug
    --no need for extra grinding. being level 5 and doing the kobold quest chain will get you 6 once you arrive in goldshire
step
    #optional
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
-- .subzoneskip 59,1
step << Priest/Mage
    .goto 1429/0,-224.02,-8850.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly Osworth|r
    .turnin 3904 >>Entrega la misión La cosecha de Milly
    .accept 3905 >>Acepta la misión Informe de la vendimia
    .target Milly Osworth
step
    .goto 1429/0,-136.48,-8933.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Willem|r
    .turnin 6,2 >> Entrega la misión La recompensa por Garrick Piesuaves << Warrior/Rogue/Paladin
    .turnin 6,1 >> Entrega la misión La recompensa por Garrick Piesuaves << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r adentro
    .turnin 91752 >>Entrega la misión La situación en su conjunto
    .accept 91758 >>Acepta la misión ¡Sigue a ese kóbold!
    .target Marshal McBride
    .isOnQuest 91752
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r adentro
    .accept 91758 >>Acepta la misión ¡Sigue a ese kóbold!
    .target Marshal McBride
    .isQuestTurnedIn 91752
step
    #label RestandR
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r adentro
    .turnin 21,1 >> Entrega la misión Refriega en el Eco << Rogue
    .turnin 21,2 >> Entrega la misión Refriega en el Eco << Warrior/Paladin
    .turnin 21,3 >> Entrega la misión Refriega en el Eco << !Warrior !Paladin !Rogue
    .accept 54 >> Acepta la misión Informa en Villadorada
    .accept 96627 >> Acepta la misión El aventurero
    .target Marshal McBride
step
    #optional
    .isQuestComplete 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Paxton|r
    .turnin 91743 >> Entrega la misión Roedores traviesos
    .accept 91745 >>Acepta la misión Asesores de minería
    .target Brother Paxton
step
    #optional
    .isQuestTurnedIn 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Paxton|r
    .accept 91745 >>Acepta la misión Asesores de minería
    .target Brother Paxton
step << Priest/Mage
    #optional
    #completewith next
    .goto 1429/0,-186.12,-8902.45,15,0
    .goto 1429/0,-161.82,-8895.51,10 >>Sube por las escaleras
step << Priest/Mage
    .goto 1429/0,-181.64,-8902.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Neals|r subiendo las escaleras
    .turnin 3905,1 >>Entrega la misión Informe de la vendimia
    .target Brother Neals
step << Priest
    #season 0,1
    .goto 1429/0,-193.34,-8853.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Anetta|r dentro
    .accept 5623 >> Acepta la misión Al servicio de la Luz
    .target Priestess Anetta
step
    #optional
    .isOnQuest 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kelsey Abisal::247226|r
    .target Kelsey Fargo::247226
    .turnin 91745 >>Entrega la misión Asesores de minería
    .accept 91752 >>Acepta la misión La situación en su conjunto
step
    #optional
    .isQuestTurnedIn 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kelsey Abisal::247226|r
    .target Kelsey Fargo::247226
    .accept 91752 >>Acepta la misión La situación en su conjunto
step
    #optional
    #completewith KoboldLaborers
    .goto 1429/0,-117.74,-8681.87,20 >> Entra en la Mina del Eco
step
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>Mata al |cRXP_ENEMY_Buscabrillantes Narf|r. Despójalo para obtener el |cRXP_LOOT_Saco de libros "ilustrados"|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf
step
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r adentro
    .turnin 91752 >>Entrega la misión La situación en su conjunto
    .accept 91758 >>Acepta la misión ¡Sigue a ese kóbold!
    .target Marshal McBride
    .isOnQuest 91752
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil McBride|r adentro
    .accept 91758 >>Acepta la misión ¡Sigue a ese kóbold!
    .target Marshal McBride
    .isQuestTurnedIn 91752
step
    .isOnQuest 91758
    .goto 1429/0,-242.000,-8884.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tordrin Filosevero::248415|r fuera de la Abadía
    .target Tordrin Sternblade::248415
    .turnin 91758 >>Entrega la misión ¡Sigue a ese kóbold!
    .accept 91772 >>Acepta la misión ¡Shhh! Aquí se cazan kóbolds
step
    .isQuestTurnedIn 91758
    .goto 1429/0,-242.000,-8884.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tordrin Filosevero::248415|r fuera de la Abadía
    .target Tordrin Sternblade::248415
    .accept 91772 >>Acepta la misión ¡Shhh! Aquí se cazan kóbolds
step
    #completewith RnR
    .cast 1246031 >> |cRXP_WARN_Usa el|r |T132995:0|t[Equipo de rastreo kóbold] |cRXP_WARN_para ver las |cRXP_PICK_huellas de kóbolds|r en tu minimapa|r
    .use 247970
step
    #completewith RnR
    .isOnQuest 91772
    .goto 1429/0,-46.00,-9044.61,5 >>Haz clic en las |cRXP_PICK_Huellas de kóbold|r del suelo mientras te diriges hacia Villadorada
    .use 247970 
    .complete 91772,1 -- Followed Kobold Tracks 6/6
    .disablecheckbox
step
    #label RnR
    .goto 1429/0,-46.00,-9044.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falkhaan Isenzancas|r
    .accept 2158 >> Acepta la misión Descanso y relajación
    .target Falkhaan Isenstrider
]])


RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#name 6-11 Bosque de Elwynn
#displayname 6-13 Bosque de Elwynn << SoD
#next 11-13 Loch Modan
#defaultfor Human

step << skip -- removing for now for camp fire buff/questline
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .subzoneskip 87

step
    #completewith CampQuest
    .isOnQuest 91772
    >>Haz clic en las |cRXP_PICK_Huellas de kóbold|r del suelo mientras te diriges hacia Villadorada
    .use 247970 >> |cRXP_WARN_Usa el|r |T132995:0|t[Equipo de rastreo kóbold] |cRXP_WARN_para rastrearlas en tu minimapa|r
    .complete 91772,1 -- Followed Kobold Tracks 6/6
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_Usa la|r |T4624731:0|t[Cosecha salvaje] |cRXP_WARN_para subir tu habilidad de|r |T136065:0|t[Herboristería] |cRXP_WARN_en 2 o para aprender|r |T136065:0|t[Herboristería] |cRXP_WARN_si aún no tienes dos profesiones|r
    .itemcount 247841,1 -- Wild Harvest
    .use 247841
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_Usa la|r |T4625106:0|t[Recolección de pelambres para principiantes] |cRXP_WARN_para subir tu habilidad de|r |T134366:0|t[Desuello] |cRXP_WARN_en 2 o para aprender|r |T134366:0|t[Desuello] |cRXP_WARN_si aún no tienes dos profesiones|r
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .use 247846
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_Usa la|r |T4625105:0|t[Minería para torpes] |cRXP_WARN_para subir tu habilidad de|r |T136248:0|t[Minería] |cRXP_WARN_en 2 o para aprender|r |T136248:0|t[Minería] |cRXP_WARN_si aún no tienes dos profesiones|r
    .itemcount 247840,1 -- Mining for Dummies
    .use 247840

step
    #label CampQuest
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 96627 >> Entrega la misión El aventurero
    .accept 95998 >> Acepta la misión Bendita naturaleza
    .target Sam Sarsaparilla
step
    .goto 1429/0,-22.99,-9402.40
    >>|cRXP_WARN_Escribe "/sit" (sentarse) en el chat y espera un minuto alrededor de la hoguera|r
    .complete 95998,1 -- /sit emote in chat 1/1
    .complete 95998,2 -- Gain boosted rest buff 1/1

step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 95998 >> Entrega la misión Bendita naturaleza
    .accept 96626 >> Acepta la misión Campamento básico: Cocina
    .accept 97924 >> Acepta la misión Campamento básico: Desuello
    .target Sam Sarsaparilla
    .skill skinning,<1,1 -- shows if skinning is >1
step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 95998 >> Entrega la misión Bendita naturaleza
    .accept 96626 >> Acepta la misión Campamento básico: Cocina
    .accept 97921 >> Acepta la misión Campamento básico: Herboristería
    .target Sam Sarsaparilla
    .skill herbalism,<1,1 -- shows if herbalism is >1
step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 95998 >> Entrega la misión Bendita naturaleza
    .accept 96626 >> Acepta la misión Campamento básico: Cocina
    .accept 97923 >> Acepta la misión Campamento básico: Minería
    .target Sam Sarsaparilla
    .skill mining,<1,1 -- shows if mining is >1

--Add turnins for skinning/herb/mining later

step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 95998 >> Entrega la misión Bendita naturaleza
    .accept 96626 >> Acepta la misión Campamento básico: Cocina
    .target Sam Sarsaparilla


step
    .isOnQuest 91772
    #loop
    .goto 1429/0,-77.600,-9140.900,55,0
    .goto 1429/0,-44.100,-9246.500,55,0
    .goto 1429/0,8.800,-9327.900,55,0
    .goto 1429/0,66.000,-9374.000,55,0
    >>Haz clic en las |cRXP_PICK_Huellas de kóbolds|r del suelo
    .use 247970 >> |cRXP_WARN_Usa el|r |T132995:0|t[Equipo de rastreo kóbold] |cRXP_WARN_para rastrearlas en tu minimapa|r
    .complete 91772,1 -- Followed Kobold Tracks 6/6

step << Warrior/Rogue/Paladin
    .goto 1429/0,87.87,-9456.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Warrior/Rogue
    >>|cRXP_WARN_Esto te permitirá hacer|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_que aumentan tu daño cuerpo a cuerpo en 2|r << Paladin
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .train 2018 >> Aprende |T136241:0|t[Herrería]
    .target Smith Argus
step << Warrior
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135321:0|t[Gladius] |cRXP_BUY_si puedes permitírtelo|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipa el|r |T135321:0|t[Gladius]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135421:0|t[Tomahawk] |cRXP_BUY_o|r |T135641:0|t[Estilete] |cRXP_BUY_si te lo puedes permitir|r
    .target Corina Steele
--  .money <0.0540
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #label RogueTomahawk
    #completewith GSHS
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto 1429/0,94.01,-9464.8900
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
    .goto 1429/0,87.87,-9462.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andrew Krighton|r
    .vendor >> Vende la Basura
    .target Andrew Krighton
--  .money >1.0
step
    .isOnQuest 91772
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 54 >> Entrega la misión Informa en Villadorada
    .turnin 91772 >>Entrega la misión ¡Shhh! Aquí se cazan kóbolds
    .accept 62 >> Acepta la misión La Mina Abisal
    .accept 91775 >>Acepta la misión Devolución de libros
    .target Marshal Dughan
step
    .isQuestTurnedIn 91772
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 54 >> Entrega la misión Informa en Villadorada
    .accept 62 >> Acepta la misión La Mina Abisal
    .accept 91775 >>Acepta la misión Devolución de libros
    .target Marshal Dughan
step
    #label Goldshire
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 54 >> Entrega la misión Informa en Villadorada
    .accept 62 >> Acepta la misión La Mina Abisal
    .target Marshal Dughan
step
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .accept 60 >> Acepta la misión Las velas de los kóbolds
    .target William Pestle
step
    #label GSHS
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .turnin 2158,1 >> Entrega la misión Descanso y relajación << Rogue/Warrior
    .turnin 2158,2 >> Entrega la misión Descanso y relajación << !Rogue !Warrior
    .home >> Establece tu Piedra de hogar en Villadorada
    .target Innkeeper Farley

step
    .goto 1429/0,-5.63,-9467.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tomas|r
    >>|cRXP_WARN_Omite este paso si no tienes 1 de plata, o si lo quieres hacer más tarde|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .turnin 96626 >> Entrega la misión Campamento básico: Cocina
    .target Tomas
    .money <0.0100
step
    #optional
    .isQuestComplete 96626
    .goto 1429/0,-5.63,-9467.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tomas|r
    .turnin 96626 >> Entrega la misión Campamento básico: Cocina
    .target Tomas
step
    #optional
    .xp 6 >> Mata enemigos hasta el nivel 6
step << Rogue
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brog Patosar|r
    .vendor 151 >>|cRXP_BUY_Cómprale la|r |T135641:0|t[Daga arrojadiza equilibrada] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .disablecheckbox
    .target Brog Hamfist
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
    .destroy 2947 >> |cRXP_WARN_Destruye el|r |T135426:0|t[Cuchillo arrojadizo pequeño] |cRXP_WARN_de tu mochila, ya no es necesario|r
    .itemcount 2946,1
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,-5.63,-9460.26,5 >> Baja las escaleras
step << Warlock
    .goto 1429/0,-5.36,-9472.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r abajo
    .trainer >> Aprende tus hechizos de clase
    .target Maximillian Crowe
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    .vendor 6374 >> |cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio Pacto de sangre (Rango 1)] |cRXP_BUY_si te lo puedes permitir. Si no, puedes comprarlo más tarde|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Sube al piso de arriba de la Posada
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >> Aprende tus hechizos de clase
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
	.target Priestess Josetta
    .goto 1429/0,33.14,-9460.75
    .turnin 5623 >> Entrega la misión Al servicio de la Luz
    .accept 5624 >> Acepta la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Aprende tus hechizos de clase
step << Warrior/Rogue
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .vendor 295 >> |cRXP_BUY_Cómprale|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_hasta que te quede solo 1 Plata|r << Warrior
    .vendor 295 >> |cRXP_BUY_Cómprale hasta 20|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_si puedes permitírtelo|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
step
    #requires DeleteOldDaggers << Rogue
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
    .target Remy "Two Times"
step << Hunter
    .goto 1429/0,75.400,-9480.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nordun Mirafirme|r
    >>|cRXP_BUY_Compra y equipa un|r |T135499:0|t[Arco corvo de madera de cuerno]
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que tu Carcaj esté lleno|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Nordun Steadysight
    .money <0.0281
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeena Plumarco|r
    .vendor >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que tu Carcaj esté lleno|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    .equip 18,2506 >> |cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo de madera de cuerno]
    .use 2506
    .itemcount 2506,1 --Hornwood Recurve Bow (1)
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josephine Carson|r
    .trainer >> Aprende tus hechizos de clase
    .target Josephine Carson
step << Priest
    .goto 1429/0,-135.72,-9514.56
    >>|cRXP_WARN_Lanza|r |T135929:0|t[Sanación inferior (Rango 2)] |cRXP_WARN_y|r |T135987:0|t[Palabra de poder: entereza] |cRXP_WARN_en el|r |cRXP_FRIENDLY_Guardia Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    .waypoint 1429/0,454.25,-9915.31,40,0
    .waypoint 1429/0,387.26,-9944.94,40,0
    .waypoint 1429/0,372.34,-9912.07,40,0
    .waypoint 1429/0,418.85,-9881.06,40,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step
    #optional
    #requires BoarMeatQuest
    #label BoarMeatCooking1
    #completewith Pie
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 10 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Auberdine más tarde|r
    .collect 769,10,86,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatCooking1
    #completewith Pie
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde.|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,86,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r y |cRXP_FRIENDLY_La vieja Pedregosa|r
    .accept 85 >> Acepta la misión El collar perdido
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
    .accept 88 >> Acepta la misión ¡Princesa debe morir!
	.goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
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
    .isNotOnQuest 91775
    #optional
    #completewith NecklaceStart
    .goto 1429/0,223.09,-9916.240,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener las |cRXP_LOOT_Velas de los kóbolds|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .isOnQuest 91775
    #optional
    #completewith NecklaceStart
    .goto 1429/0,223.09,-9916.240,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener |cRXP_LOOT_Velas kóbolds|r, |cRXP_LOOT_Polvo de oro|r y |cRXP_LOOT_Libros perdidos|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 85 >> Entrega la misión El collar perdido
    .accept 86 >> Acepta la misión Un pastel para Billy
    .target Billy Maclure
step
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r
    .accept 106 >> Acepta la misión Jóvenes enamorados
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto 1429/0,65.28,-10008.20
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
    .isNotOnQuest 91775
    #optional
    #completewith Lovers
    .goto 1429/0,223.09,-9916.240,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener las |cRXP_LOOT_Velas de los kóbolds|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .isOnQuest 91775
    #optional
    #completewith Lovers
    .goto 1429/0,223.09,-9916.240,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener |cRXP_LOOT_Velas kóbolds|r, |cRXP_LOOT_Polvo de oro|r y |cRXP_LOOT_Libros perdidos|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tommy Joe Pedregosa|r
    .turnin 106 >> Entrega la misión Jóvenes enamorados
    .accept 111 >> Acepta la misión Habla con la abuelita
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    #label Pie
    .goto 1429/0,338.47,-9889.69
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
    .isNotOnQuest 91775
    #sticky
    #label KoboldEnd1
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .waypoint 1429/0,176.93,-9857.68,35,0
    .waypoint 1429/0,176.24,-9902.12,35,0
    .waypoint 1429/0,223.09,-9916.240,35,0
    .waypoint 1429/0,259.54,-9865.09,35,0
    .waypoint 1429/0,215.81,-9830.600,35,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener las |cRXP_LOOT_Velas de los kóbolds|r y |cRXP_LOOT_Polvo de oro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .isOnQuest 91775
    #sticky
    #label KoboldEnd2
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .waypoint 1429/0,176.93,-9857.68,35,0
    .waypoint 1429/0,176.24,-9902.12,35,0
    .waypoint 1429/0,223.09,-9916.240,35,0
    .waypoint 1429/0,259.54,-9865.09,35,0
    .waypoint 1429/0,215.81,-9830.600,35,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener |cRXP_LOOT_Velas kóbolds|r, |cRXP_LOOT_Polvo de oro|r y |cRXP_LOOT_Libros perdidos|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy Maclure|r
    .turnin 84 >> Entrega la misión Vuelve con Billy
    .accept 87 >> Acepta la misión Dientes de Oro
    .target Billy Maclure
step
    .goto 1429/0,181.44,-9842.170,15,0
    .goto 1429/0,149.86,-9793.80
    >>Entra en uno de los espacios abiertos más grandes de la Mina Abisal
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 0,1
    .goto 1429,41.732,78.024
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r. Despójalo para obtener |cRXP_LOOT_Collar de Bernice|r
    >>|cRXP_WARN_Ten cuidado porque generalmente atrae también al |cRXP_ENEMY_Minero kóbold|r que está junto a él|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step
    .isOnQuest 91775
    .goto 1429/0,91.200,-9788.500
    >>Mata a |cRXP_ENEMY_Nimsy|r dentro de la Mina Abisal. Despójalo para obtener el |cRXP_LOOT_Libro de ilustraciones: Diversión con los elementales|r
    >>|cRXP_WARN_Intenta encontrar un grupo para este paso. Los |cRXP_ENEMY_Kóbolds|r reaparecen muy rápido en la cueva|r
    >>|cRXP_WARN_También invocará un |cRXP_ENEMY_Estruendor|r de esbirro. Ten cuidado si intentas hacer esto en solitario. Omite este paso si no puedes matarlo|r
    .complete 91775,1 --|1/1 Picture Book: Fun with Elementals
    .mob Nimsy
step << Warrior
    #optional
    #completewith Exchange
    +|cRXP_WARN_Intenta guardar una|r |T134829:0|t[Poción de sanación menor] |cRXP_WARN_a partir de ahora porque la necesitarás para el Cadáver de Rolf más tarde|r
    .subzoneskip 87 --Goldshire
step
    #requires KoboldEnd1
step
    #requires KoboldEnd2
step
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.240,35,0
    .goto 1429/0,259.54,-9865.09,35,0
    .goto 1429/0,215.81,-9830.600,35,0
    .xp 7+1140 >>Mata enemigos hasta alcanzar 1140+/4500 xp
    .mob Kobold Tunneler
    .mob Kobold Miner
    .isQuestComplete 91775 -- elite quest
step
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.240,35,0
    .goto 1429/0,259.54,-9865.09,35,0
    .goto 1429/0,215.81,-9830.600,35,0
    .xp 7+1815 >>Mata enemigos hasta alcanzar 1815+/4500xp
    .mob Kobold Tunneler
    .mob Kobold Miner
    .isQuestNotComplete 91775 -- elite quest
step
    #label Goldtooth
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_"Tita" Bernice Pedregosa|r
    .turnin 87 >> Entrega la misión Dientes de Oro
    .target "Auntie" Bernice Stonefield
step
    #optional
    #label BoarMeatCooking2
    #completewith Exchange
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 57 --Fargodeep Mine
step
    #optional
    #requires BoarMeatCooking2
    #completewith Exchange
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 57 --Fargodeep Mine
step
    #hardcore
    #optional
    #completewith Exchange
    .goto 1429/0,72.81,-9496.23,125 >> Regresa a Villadorada--c:Elwynn Forest,42.140,67.254
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
step
    #label Exchange
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    >>|cRXP_WARN_NO vendas la recompensa|r |T133581:0|t[Bolsa de canicas] |cRXP_WARN_. Es un objeto increíblemente valioso hasta el nivel 60|r
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
    .target Remy "Two Times"
step
    .isQuestComplete 91775
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 91775 >>Entrega la misión Devolución de libros
    .accept 91777 >>Acepta la misión Libros poco comunes
    .target Marshal Dughan
step
    .isQuestTurnedIn 91775
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .accept 91777 >>Acepta la misión Libros poco comunes
    .target Marshal Dughan
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor >>Vende la Basura
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto 1429/0,94.01,-9464.8900
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
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135421:0|t[Tomahawk] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2490,1 --Collect Tomahawk (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0540
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #label RogueTomahawk2
    +|cRXP_WARN_Equipa el|r |T135421:0|t[Tomahawk]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #requires RogueTomahawk2
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor 54 >>|cRXP_BUY_Cómprale un|r |T135641:0|t[Estilete] |cRXP_BUY_si te lo puedes permitir|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Equipa el |T135641:0|t[Estilete]|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto 1429/0,94.01,-9464.8900
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
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .accept 61 >> Acepta la misión Un envío para Ventormenta
    .turnin 107 >> Entrega la misión Una nota para William
    .accept 112 >> Acepta la misión La recolección de algas
    .target William Pestle
step
    #optional
    .xp 8 >> Mata enemigos hasta el nivel 8
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josephine Carson|r
    .trainer >> Aprende tus hechizos de clase
    .target Josephine Carson
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
step << Paladin
    #season 0,1
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,4.78,-9467.21,10 >> Baja por las escaleras de la Posada
step << Warlock
    .goto 1429/0,-5.36,-9472.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >> Aprende tus hechizos de clase
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cilina Negrozón|r
    .vendor >> |cRXP_BUY_Cómprale el|r |T133738:0|t[Grimorio de Descarga de Fuego (Rango 2)] |cRXP_BUY_si puedes permitírtelo. Si no, puedes comprarlo más tarde|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >> Sube al piso de arriba de la Posada
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >> Aprende tus hechizos de clase
step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
	.target Priestess Josetta
    .turnin 5624 >> Entrega la misión Las prendas de la Luz
    .trainer >> Aprende tus hechizos de clase
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >> Aprende tus hechizos de clase
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto 1429/0,29.35,-9456.790
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
step
    #label GoldshireEnd << Priest --Season 2
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brog Patosar|r
    .vendor >> |cRXP_WARN_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_WARN_si es necesario|r
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Farley|r
    .vendor >> |cRXP_BUY_Cómprale hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si puedes permitírtelo|r << !Warrior !Rogue !Paladin !Hunter
    .vendor >> |cRXP_BUY_Cómprale hasta 20|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_si puedes permitírtelo|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Cómprale hasta 10|r |T133995:0|t[Pincho de Dalaran] |cRXP_BUY_y 10|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si puedes permitírtelo|r << Paladin/Hunter
    .target Innkeeper Farley
step
    #optional
    #label WolfMeatCooking1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>Mata |cRXP_ENEMY_Lobos sarnosos|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Mangy Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 54
step
    #optional
    #requires WolfMeatCooking1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>Mata |cRXP_ENEMY_Lobos sarnosos|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Mangy Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 54


step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jason Mathers|r
    .accept 99127 >> Acepta la misión A Red Disaster
    .target Jason Mathers
step
    #softcore
    .goto 1429,47.6,62.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lee Moreno|r
    .accept 99143 >> Acepta la misión Bottles and Baubles
    .target Lee Brown
step
    #loop
    .goto 1429,48.5,58.3,40,0
    .goto 1429,47.7,65.9,40,0
    .goto 1429,49.9,66.5,40,0
    >>Despoja las |cRXP_PICK_Redes de pesca|r en el agua para obtener el |cRXP_LOOT_Pescado a medio comer|r
    >>|cRXP_WARN_Pueden ser difíciles de ver|r
    .complete 99127,1 -- Half-Eaten Fish (7)
step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jason Mathers|r
    .turnin 99127 >> Entrega la misión A Red Disaster
    .accept 99128 >> Acepta la misión Amenaza Babosa
    .target Jason Mathers
step
    #softcore
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
    >>Despoja los |cRXP_PICK_Montones de chatarra|r del suelo para obtener |cRXP_LOOT_Chatarra brillante|r. |cRXP_WARN_Si no puedes despojarlos debido a que hay demasiados |cRXP_ENEMY_Múrlocs|r, omite este objetivo|r
    .complete 99128,2 -- Murloc slain (7)
    .mob +Murloc
    .complete 99128,1 -- Murloc Streamrunners slain (4)
    .mob +Murloc Streamrunner
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob +Murloc
    .mob +Murloc Streamrunner
    .complete 99143,1 -- Shiny Junk (6)
    .disablecheckbox
step
    #hardcore
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
    .complete 99128,2 -- Murloc slain (7)
    .mob +Murloc
    .complete 99128,1 -- Murloc Streamrunners slain (4)
    .mob +Murloc Streamrunner
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob +Murloc
    .mob +Murloc Streamrunner
step
    #softcore
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
    >>Despoja los |cRXP_PICK_Montones de chatarra|r del suelo para obtener |cRXP_LOOT_Chatarra brillante|r
    >>|cRXP_WARN_Si no puedes despojarlos debido a que hay demasiados |cRXP_ENEMY_Múrlocs|r, omite este paso|r
    .complete 99143,1 -- Shiny Junk (6)
step
    .isQuestComplete 99143
    .goto 1429,47.6,62.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lee Moreno|r
    .turnin 99143 >> Entrega la misión Bottles and Baubles
    .target Lee Brown
--xx abandon if didnt complete/check routing for potential later turnin
step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jason Mathers|r
    .turnin 99128 >> Entrega la misión Amenaza Babosa
    .accept 99129 >> Acepta la misión A Man About a Múrloc
    .target Jason Mathers

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
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto 1429/0,-604.49,-9180.39,15 >> Entra en la Cantera de Jaspe
step
    #label JasperlodeExplore
    .goto 1429/0,-588.73,-9130.67,15,0
    .goto 1429/0,-572.07,-9116.55,15,0
    .goto 1429/0,-560.62,-9100.58
    >>Sigue el camino por el centro para explorar la Cantera de Jaspe
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .isOnQuest 91777
    .goto 1429/0,-595.100,-9072.200
    >>Mata al |cRXP_ENEMY_Geoescultor Yip|r. Despójalo para obtener la |cRXP_LOOT_Geomancia para jóvenes hechiceros curiosos|r
    >>|cRXP_WARN_Invocará tres |cRXP_ENEMY_Estruendores|r. Omite este paso si no puedes matarlo|r
    .complete 91777,1 --|1/1 Geomancy for Curious Young Wizards
    .mob Geosculptor Yip
step
    .isOnQuest 91777
    .goto 1429/0,-620.200,-9050.800
    >>Mata a la |cRXP_ENEMY_Madre Colmillo|r. Despójala para obtener el |cRXP_LOOT_Volumen arcano: Conceptos mágicos en pocas palabras|r
    >>|cRXP_WARN_Lanza redes y envenena. Salta este paso si no puedes matarla|r
    .complete 91777,2 --|1/1 Arcane Explainer: Magical Stuff in Simple Words
    .mob Mother Fang
step
    .isQuestComplete 91777
    #completewith next
    .goto 1429/0,-590.300,-9208.101,10,0
    .goto 1429/0,-508.400,-9249.101,10,0
    .goto 1429/0,-493.900,-9208.000,10,0
    .goto 1429/0,-493.000,-9157.400,18 >> |cRXP_WARN_Sigue la flecha con atención para regresar a Villanorte y entregar la misión que acabas de completar a cambio de un arma de recompensa|r
step
    .isQuestComplete 91777
    .goto 1429/0,-135.800,-8913.700,10,0
    .goto 1429/0,-186.200,-8874.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Paxton::951|r
    .target Brother Paxton::951
    .turnin 91777 >>Entrega la misión Libros poco comunes
step
    .isQuestTurnedIn 91777
    #completewith Find
    .goto 1429/0,-439.500,-9118.500,25,0
    .goto 1429/0,-468.400,-9147.200,10,0
    .goto 1429/0,-497.100,-9173.000,20 >>|cRXP_WARN_Regresa a las colinas por las que acabas de pasar para tomar un atajo hacia el este de Bosque de Elwynn|r
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
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >> Sal de la Cantera de Jaspe
    .subzoneskip 54,1
step
    #optional
    #requires ExitJasperlode
    #label WolfMeatCooking2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>Mata |cRXP_ENEMY_Lobo grisáceo del bosque|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>Mata |cRXP_ENEMY_Lobo grisáceo del bosque|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #completewith Find
    +|cRXP_WARN_Kitea a un |cRXP_ENEMY_Oso del bosque joven|r hacia el|r |cRXP_FRIENDLY_Guardia Thomas|r
    >>|cRXP_WARN_Intenta hablar con el |cRXP_FRIENDLY_Guardia Thomas|r antes de que el |cRXP_ENEMY_Oso del bosque joven|r muera a manos de los |cRXP_FRIENDLY_Guardias de Ventormenta|r y obtengas crédito de la misión|r
    >>|cRXP_WARN_Asegúrate de causar 51%+ de daño para recibir crédito|r
    .mob Young Forest Bear
step
    #label Find
    #requires JasperlodeRune << Mage --Season 2
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .turnin 35 >> Entrega la misión Más preocupaciones
    .accept 37 >> Acepta la misión Encuentra a los guardias perdidos
    .accept 52 >> Acepta la misión Proteger la frontera
    .target Guard Thomas
step
    #season 0,1 << Rogue/Priest
    #completewith AcceptBundle
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    >>|cRXP_WARN_Prioriza matar a los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #optional
    #label WolfMeatCooking3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata |cRXP_ENEMY_Lobos grisáceos del bosque|r y |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata |cRXP_ENEMY_Lobos grisáceos del bosque|r y |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #label LostGuards
    .goto 1429/0,-986.35,-9336.06
    >>Haz clic en |cRXP_PICK_Un cadáver medio comido|r en el suelo
    .turnin 37 >> Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >> Acepta la misión Descubre el destino de Rolf
step
    #optional
    #label WolfMeatCooking4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 88 --Eastvale Logging Camp
step
    #optional
    #requires WolfMeatCooking4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 88 --Eastvale Logging Camp
step
    #label AcceptBundle
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
    #season 0,1 << Rogue
    #optional
    .goto 1429/0,-1355.20,-9469.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rallic Finn|r
    .vendor >> Vende la basura
    .target Rallic Finn
    .subzoneskip 88,1
step
    #optional
    #label WolfMeatCooking5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 86 --Stone Cairn Lake
step
    #optional
    #requires WolfMeatCooking5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 86 --Stone Cairn Lake
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
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    >>Despoja los |cRXP_LOOT_Fardos de madera|r en el suelo en la base de los árboles
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #softcore
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>|cRXP_WARN_Corre encima de |cRXP_PICK_Cadáver de Rolf|r, luego usa|r |T135954:0|t[Protección divina] |cRXP_WARN_y luego haz clic inmediatamente en|r |cRXP_PICK_Cadáver de Rolf|r
    >>|cRXP_WARN_Huye y reinicia a los |cRXP_ENEMY_Múrlocs|r después de completar la misión|r
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step << Paladin
    #hardcore
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>Haz clic en el |cRXP_PICK_Cadáver de Rolf|r en el suelo
    >>|cRXP_WARN_Ten cuidado, los |cRXP_ENEMY_Batidores múrloc|r lanzarán|r |T135915:0|t[Beber poción menor] |cRXP_WARN_que los cura entre 61 y 68 puntos de salud|r
    >>|cRXP_WARN_Atrae a los 2|r |cRXP_ENEMY_Múrlocs|r |cRXP_WARN_frente a las chozas, aléjate y aniquila a uno de ellos rápido. Usa|r |T135954:0|t[Protección divina] |cRXP_WARN_y tus curaciones según sea necesario. Esta es una buena oportunidad para usar|r |T133581:0|t[Bolsa de canicas]|cRXP_WARN_. Huye y reinicia una vez que hayas matado uno|r << Paladin
    >>|cRXP_WARN_Recuerda que durante|r |T135954:0|t[Protección divina] |cRXP_WARN_no puedes atacar|r << Paladin
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step << !Paladin
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
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
    #optional
    #label WolfMeatCooking6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
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
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1230.14,-9150.34,40,0
    .goto 1429/0,-1271.10,-9147.10,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1232.92,-9251.950,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1249.58,-9362.13,40,0
    .goto 1429/0,-1285.33,-9365.14,40,0
    .goto 1429/0,-1296.09,-9389.44,40,0
    .goto 1429/0,-1338.09,-9331.11,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    .goto 1429/0,-1302.68,-9309.12,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>Despoja los |cRXP_LOOT_Fardos de madera|r en el suelo en la base de los árboles
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Supervisora Raelen|r
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
    #xprate <1.5 << !Warlock
    .goto 1429/0,-1222.40,-9531.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .accept 83 >> Acepta la misión Artículos rojos de lino
    .target Sara Timberlain
step
    #optional
    #label WolfMeatCooking7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith WaterloggedToolbox
    >>Mata |cRXP_ENEMY_Merodeador|r y |cRXP_ENEMY_Osos del bosque jóvenes|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear

step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormin Pelford|r
    .accept 91733 >> Acepta la misión Río abajo
    .target Ormin Pelford
step
    >>Despoja la |cRXP_PICK_Sierra calada|r del suelo
    .complete 91733,2 -- Waterlogged Saw 1/1
    .goto 1429,74.3,76.4
step
    >>Despoja el |cRXP_PICK_Hacha calada|r del suelo
    .complete 91733,1 -- Waterlogged Axe 1/1
    .goto 1429,76.7,82.5
step
    #label WaterloggedToolbox
    >>Despoja la |cRXP_PICK_Caja de herramientas calada|r del suelo
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
step
    .group 3
    .goto 1429/0,-1119.800,-9931.300
    >>Mata a |cRXP_ENEMY_Croaky|r. Despójalo para obtener la |T134169:0|t[|cRXP_LOOT_Cabeza de Croaky|r]
    .use 247826 >> |cRXP_WARN_Usa la|r |T134169:0|t[|cRXP_LOOT_Cabeza de Croaky|r] |cRXP_WARN_para iniciar la misión|r
    >>|cRXP_WARN_Es un enemigo élite de nivel 11. Omite este paso si no puedes matarlo|r
    .collect 247826,1,91740,1 -- Croaky's Head (1)
    .accept 91740 >>Acepta la misión Croaky's Cabeza
    .mob Croaky
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
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith DefiasBandits << !Warlock !Warrior !Rogue
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r]
    .use 1972>>|cRXP_WARN_Usa las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] para iniciar la misión|r
    >>|cRXP_WARN_Las|r |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] |cRXP_WARN_es un botín muy raro. Ignora este paso si no lo obtienes|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acepta la misión Las escrituras de Cejade
step
    #xprate <1.5 << !Warlock
    #completewith next
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de lino rojo|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label PrincessC
    .goto 1429/0,-869.87,-9768.10
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
    #label DefiasBandits
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de lino rojo|r
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-869.87,-9768.10
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
    .xp <9,1
step
    #label DeliverStart
    .goto 1429/0,-1032.06,-9610.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Thomas|r
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
    .target Guard Thomas
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >> Entrega la misión Río abajo
    .target Ormin Pelford
step << Warlock/Warrior/Rogue/Hunter
    .isQuestNotComplete 91740
	.goto 1429/0,-877.85,-9778.98
    .xp 9+3510 >> Mata enemigos hasta alcanzar 3510+/6500xp << Warlock/Hunter
    .xp 9+3420 >> Mata enemigos hasta alcanzar 3420+/6500xp << Warrior/Rogue
step << Warlock/Warrior/Rogue/Hunter
    .isQuestComplete 91740
    #label Level9Grind
	.goto 1429/0,-877.85,-9778.98
    .xp 9+2670 >> Mata enemigos hasta alcanzar 2670+/6500 xp << Warlock/Hunter
    .xp 9+2580 >> Mata enemigos hasta alcanzar 2580+/6500xp << Warrior/Rogue
step << !Warlock
    #season 0,1 << Rogue
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .zoneskip Redridge Mountains
    .xp >10,1 -- shows to 9 and under
--XX not worth deathskipping as a warlock due to having to resumm pet
step
    #xprate <1.5 << !Warlock
    #optional << Warlock
    .goto 1429/0,-1222.40,-9531.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .target Sara Timberlain
    .isQuestComplete 83
step
    #optional
    #completewith next
    .subzone 798 >> Viaja a Torre de la Peña
step
    #optional
    .isQuestComplete 91740
    .goto 1429/0,-1406.200,-9775.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Merell Ross::248277|r
    .target Merell Ross::248277
    .turnin 91740 >>Entrega la misión Cabeza de Croaky
step << !Warlock
    #optional
    #label WolfMeatCooking8
    #requires EVDeathskip
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << !Warlock
    #optional
    #requires WolfMeatCooking8
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << !Warlock
    #label RedridgeS
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step << !Warlock
    #optional
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
    .xp <11,1
step << !Warlock
    #softcore
    #completewith RRFP
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .target Ángel de la Resurrección
    .xp >10,1 -- shows to 9 and under
step << !Warlock
    #hardcore
    #optional
    #completewith RRFP
    .goto 1433/0,-1974.20,-9577.07,15,0
    .goto 1433/0,-2077.18,-9608.42,25,0
    .goto 1433/0,-2212.64,-9558.570,25 >>|cRXP_WARN_CUIDADO: Mantente en la carretera principal y evita cualquier enemigo cercano por el camino|r
step << !Warlock
    #optional
    .goto 1433/0,-2237.93,-9443.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
step << !Warlock
    #season 0,1 << Paladin
    #label RRFP
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
step
    #optional
    #completewith CollectKelp
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
step << Warrior/Rogue
    #optional
    #completewith Escape
    +|cRXP_WARN_Ten cuidado con tu dinero, ya que deberías intentar guardar 32 platas 8 cobres para Ventormenta más tarde|r << Rogue
    +|cRXP_WARN_Ten cuidado con tu dinero, ya que necesitas guardar 31 platas 85 cobres para Ventormenta y Forjaz más tarde|r << Warrior
    >>|cRXP_WARN_Recibirás 16 platas 50 cobres de las entregas hasta entonces|r << Rogue
    >>|cRXP_WARN_Recibirás 18 platas 25 cobres de las entregas hasta entonces|r << Warrior
    .money >0.50
--XX 1s 10c flight to SW, 20s 23c cutlass, 10s 1h sword, 30c/75c level 3/11 thrown - Rogue
--XX 1s 10c flight to SW, 10s 2h sword, 10s 2h mace, 10s thrown, 30c/75c level 3/11 thrown, 81c mining pick - Warrior
--XX 7s from 39, 3.5s from 76, 3.5s from 61, 2.5s from 109, 1.75 from 6281 (warrior)
step
    #label CollectKelp
    .goto 1429/0,31.92,-9460.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William Mortero|r
    .turnin 112 >> Entrega la misión La recolección de algas
    .timer 9,La recolección de algas RP
    .accept 114 >> Acepta la misión La fuga
    .target William Pestle
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto 1429/0,12.52,-9479.85,9 >> Sube al piso de arriba de la Posada
step << Warrior/Rogue
    .goto 1429/0,29.35,-9456.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >> Aprende |T135966:0|t[Primeros auxilios]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto 1429/0,12.69,-9465.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Solo entrena|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_y|r |T132307:0|t[Sprint]|cRXP_WARN_. No entrenes otros hechizos para ahorrar tu dinero para más tarde|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto 1429/0,74.02,-9465.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
    .accept 239 >> Acepta la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 59 >> Acepta la misión Armadura de paño y cuero << Warlock
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
    .target Marshal Dughan
step
    #sticky
    #label GoldshireVendor
    .goto 1429/0,94.01,-9464.8900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corina Aceral|r
    .vendor >> Vende la Basura
    .target Corina Steele
    .money >0.75
step
    .goto 1429/0,87.87,-9456.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Herrero Argus|r
    .accept 1097 >> Acepta la misión La tarea de Elmore
    .target Smith Argus
step
    #optional
    #completewith RoughWolfPelts
    .goto 1429/0,-81.900,-9381.800,5 >> Viaja hacia |cRXP_FRIENDLY_Helene Desollapelambres|r en la casa
step
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 91746
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helene Desollapelambres|r
    .turnin 91746 >> Entrega la misión Elmpaw's Cabeza
    .target Helene Peltskinner
step
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 97924
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helene Desollapelambres|r
    .turnin 97924 >> Entrega la misión Campamento básico: Desuello
    .target Helene Peltskinner
step
    #label RoughWolfPelts
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 91751
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helene Desollapelambres|r
    .turnin 91751 >> Entrega la misión Pieles de lobo toscas
    .target Helene Peltskinner
step << Warlock/Warrior/Hunter
    #requires GoldshireVendor
    #optional
    .xp 10 >> Mata enemigos hasta el nivel 10
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josephine Carson::251507|r
    .target Josephine Carson::251507
    .accept 94792 >>Acepta la misión Domesticar la bestia
    .trainer >> Aprende tus hechizos de clase
step << Hunter
    #loop
    .goto 1429/0,28.100,-9768.101,40,0
    .goto 1429/0,-36.100,-9814.500,40,0
    .use 266158 >> |cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Jabalí Pielroca|r
    .complete 94792,1 -- Tame a Rockhide Boar (1)
    .mob Rockhide Boar
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josephine Carson::251507|r
    .target Josephine Carson::251507
    .turnin 94792 >>Entrega la misión Domesticar la bestia
    .accept 94863 >>Acepta la misión Domesticar la bestia
step << Hunter
    #loop
    .goto 1429/0,-556.600,-9524.300,40,0
    .goto 1429/0,-626.200,-9430.800,40,0
    .use 266253 >> |cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Lobo grisáceo del bosque|r
    >>|cRXP_WARN_Asegúrate de haber retirado a tu anterior|r |cRXP_ENEMY_Jabalí Pielroca|r
    .complete 94863,1 -- Tame a Gray Forest Wolf (1)
    .mob Gray Forest Wolf
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josephine Carson::251507|r
    .target Josephine Carson::251507
    .turnin 94863 >>Entrega la misión Domesticar la bestia
    .accept 94864 >>Acepta la misión Domesticar la bestia
step << Hunter
    #loop
    .goto 1429/0,-14.600,-9797.800,40,0
    .goto 1429/0,-146.800,-9784.500,40,0
    .goto 1429/0,-325.300,-9844.300,40,0
    .use 266254 >> |cRXP_WARN_Usa la|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Oso del bosque joven|r
    >>|cRXP_WARN_Asegúrate de haber retirado tu anterior|r |cRXP_ENEMY_Lobo grisáceo del bosque|r
    .complete 94864,1 -- Tame a Young Forest Bear (1)
    .mob Young Forest Bear
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Josephine Carson::251507|r
    .target Josephine Carson::251507
    .turnin 94864 >>Entrega la misión Domesticar la bestia
    .accept 94793 >>Acepta la misión Domesticar la bestia
step << Hunter
    .goto 1429/0,85.000,-9475.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Isaac Chan::258930|r
    .target Isaac Chan::258930
    .turnin 94793 >>Entrega la misión Domesticar la bestia
    .trainer >> Entrena los hechizos de tu mascota
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    .accept 1638 >> Acepta la misión Instrucción de guerrero
    .trainer >> Aprende tus hechizos de clase
    .target Lyria Du Lac
    .money <0.5
step << Warrior
    #optional
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_No aprendas habilidades, ya que necesitas ahorrar dinero para más adelante|r
    .accept 1638 >> Acepta la misión Instrucción de guerrero
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hermano Wilhelm|r
    .accept 2998 >> Acepta la misión Escrito sobre divinidad
    .trainer >> Aprende tus hechizos de clase
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,4.78,-9467.21,10 >> Baja por las escaleras de la Posada
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maximillian Crowe|r y |cRXP_FRIENDLY_Remen Marcot|r
    .trainer >> Aprende tus hechizos de clase
    .goto 1429/0,-5.36,-9472.760
    .target +Maximillian Crowe
    .accept 1685 >> Acepta la misión La invocación de Gakin
    .goto 1429/0,-8.58,-9473.41
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto 1429/0,18.66,-9476.47,10 >>Sube las escaleras
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Sacerdotisa Josetta|r
    .accept 5635 >> Acepta la misión Oración desesperada
    .trainer >> Aprende tus hechizos de clase
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto 1429/0,34.28,-9471.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >> Aprende tus hechizos de clase
    .target Zaldimar Wefhellt
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto 1429/0,12.69,-9465.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Keryn Sylvius|r
    >>|cRXP_WARN_Solo entrena|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_y|r |T132307:0|t[Sprint]|cRXP_WARN_. No entrenes otros hechizos para ahorrar tu dinero para más tarde|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .target Keryn Sylvius
--XX skip quest, not worth going inside for
step << !Warlock
    #completewith PrincessFinish
    #optional
    .abandon 59 >> Abandona la misión Armadura de paño y cuero

step
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .turnin 99129 >> Entrega la misión A Man About a Múrloc
    --.accept 99130 >> Accept An Enticing Offer
    .target Remy "Two Times"
    --skipping the follow up. terrible drop rates/respawn times

step << skip
    >>Despoja los |cRXP_PICK_Pétalos de floraocaso|r en las granjas de Bosque de Elwynn
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreos|r. Despójalos para obtener sus |cRXP_LOOT_Viales de sangre animal|r
    .complete 99130,1 -- Duskweed Petal 18/18
    .complete 99130,2 -- Vial of Animal Blood 6/6
    .mob +Stonetusk Boar
step << skip
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy "Dos Veces"|r
    .turnin 99130 >> Entrega la misión An Tentador Offer
    .accept 99131 >> Acepta la misión Baited for Éxito
    .target Remy "Two Times"
sstep << skip
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jason Mathers|r
    .turnin 99131 >> Entrega la misión Baited for Éxito
    .target Jason Mathers



step
    #optional
    #label BoarMeatCooking3
    #completewith Garrison
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatCooking3
    #completewith Garrison
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto 1429/0,37.61,-10014.03,50 >> Viaja a los Viñedos de Maclure
step
    #label Escape
    #requires GoldshireVendor
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell Maclure|r
    .turnin 114 >> Entrega la misión La fuga
    .target Maybell Maclure
step
    #label PrincessFinish
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja Pedregosa|r
    .turnin 88,1 >> Entrega la misión ¡Princesa debe morir! << Rogue/Hunter
    .turnin 88,2 >> Entrega la misión ¡Princesa debe morir! << Warrior/Paladin
    .turnin 88,3 >> Entrega la misión ¡Princesa debe morir! << !Rogue !Hunter !Warrior !Paladin
    .target Ma Stonefield
step << !Warrior !Warlock
    #optional
    #completewith Garrison
    .xp 9+4510 >> Mata enemigos por el camino hasta alcanzar 4510+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #optional
    #completewith Garrison
    .xp 9+5110 >> Mata enemigos por el camino hasta 5110+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step
    #optional
    #completewith Garrison
    .goto 1429/0,673.96,-9704.45,80 >> Viaja al Cuartel de Arroyoeste
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 11 >> Acepta la misión Recompensas por los gnolls Zarparrío << Warlock
    .goto 1429/0,694.29,-9662.790
    .target +Deputy Rainer
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r << Warlock
    .accept 176 >> Acepta la misión Se busca: Hogger << Warlock
    .goto 1429/0,683.40,-9667.93 << Warlock
step << Warlock
    #completewith GnollEnd
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener la |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r]
    .use 1307 >>|cRXP_WARN_Usa la |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] para comenzar la misión|r
    >>|cRXP_WARN_La|r |T134939:0|t[|cRXP_LOOT_Planificación de recogida de oro|r] |cRXP_WARN_es un objeto muy raro. Ignora este paso si no lo obtienes|r
    >>|cRXP_ENEMY_Bronco Mordeveloz|r |cRXP_WARN_es un enemigo raro, tiene un 100% de probabilidad de botín|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >> Acepta la misión El Coleccionista
    .unitscan Gruff Swiftbite
step << Warlock
    #completewith next
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Bandas|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>Mata a |cRXP_ENEMY_Hogger|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_puede aparecer en múltiples ubicaciones|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_a |cRXP_ENEMY_Hogger|r continuamente y usa tus "DoTs" normales para matarlo|r
    >>|cRXP_WARN_Kitéalo de vuelta a la torre del guardia si es necesario, asegurándote de causarle al menos 50% de daño|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    #label GnollEnd
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>Mata a los |cRXP_ENEMY_Cachorros Zarparrío|r y a los |cRXP_ENEMY_Avanzados Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Bandas|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
step << Warlock
    .goto 1429/0,694.29,-9662.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Rainer|r
    .turnin 11 >> Entrega la misión Recompensas por los gnolls Zarparrío
    .target Deputy Rainer
step << !Warrior !Warlock !Hunter
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+4575 >> Mata enemigos por el camino hasta 4575+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock !Hunter
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+5175 >> Mata enemigos por el camino hasta 5175+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >> Abandona la misión El Coleccionista
step << !Hunter
    #completewith WestEntry
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >> Viaja a Páramos de Poniente
step << !Hunter
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .goto 1436/0,918.42,-9851.50
    .target +Farmer Furlbrow
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step << !Hunter
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna Cejade|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .goto 1436/0,918.42,-9851.50
    .target +Farmer Furlbrow
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
step << !Hunter
    #optional
    #completewith next
    +|cRXP_WARN_No despojes ninguno de los|r |T134059:0|t[|cRXP_PICK_Sacos de avena|r] |cRXP_WARN_todavía a menos que hayas adquirido bolsas de gran capacidad ya que necesitarás espacio libre en tu inventario para el próximo segmento|r
    .isOnQuest 151
step << !Hunter
    #sticky
    #label Fields
    .goto 1436/0,1055.27,-10128.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r
    .accept 9 >> Acepta la misión Campos de la muerte
    .target Farmer Saldean
step << !Hunter
    .goto 1436/0,1042.11,-10112.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salma Saldean|r dentro
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 22 >>Acepta la misión Pastel de hígado de dentosangre
    .target Salma Saldean
step << !Hunter
    #requires Fields
    .goto 1436/0,1045.22,-10508.800
    .xp 9+5775 >> Mata enemigos hasta alcanzar 5775+/6500xp
    .subzoneskip 108
step << !Hunter
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto 1436/0,1045.22,-10508.800
    .xp 9+5410 >> Mata enemigos hasta alcanzar 5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >> Mata enemigos hasta alcanzar 5360+/8800xp
--XX 625+210+85+800 = 1720 x2 = 3440
step << skip
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el Ángel de la Resurrección
    .target Ángel de la Resurrección
-- .subzoneskip 108
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r y el |cRXP_FRIENDLY_Capitán Danuvin|r << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan Mantorrecio|r << Hunter
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .accept 12 >> Acepta la misión La Milicia Popular << !Hunter
    .goto 1436/0,1045.22,-10508.800
    .target +Gryan Stoutmantle
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente << !Hunter
    .goto 1436/0,1041.93,-10511.20 << !Hunter
    .target +Captain Danuvin << !Hunter
step << Human
    #optional
    .goto 1436/0,1055.27,-10128.70
    .xp 10 >> Mata enemigos hasta subir al nivel 10
step
    .goto 1436/0,1021.60,-10500.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Intendente Lewis|r
    .accept 6181 >> Acepta la misión Mensajero a toda prisa << Human
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
step << Human
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Entrega la misión Mensajero a toda prisa
    .accept 6281 >> Acepta la misión Prosigue hasta Ventormenta
    .target Thor
step
    #label FlySW
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thor
step
    #season 0,1 << Paladin
    .goto 1453/0,625.48,-8857.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morgan Mortero|r
    .turnin 61,1 >> Entrega la misión Un envío para Ventormenta
    >>|cRXP_WARN_Elegimos el|r |T132383:0|t[Cohete explosivo] |cRXP_WARN_como recompensa. Causa daño decente y puede usarse para "Split pulling" que es increíblemente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Haz clic aquí para ver un vídeo sobre el "Split pulling". Es un vídeo corto y muy útil para aprender|r
    .target Morgan Pestle
step << Rogue
    .goto 1453/0,596.43,-8831.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Compra los|r |T135425:0|t[Cuchillos arrojadizo cortantes] |cRXP_BUY_a este vendedor|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Thurman Mullby
    .xp <10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Rogue
    .goto 1453/0,596.43,-8831.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a este vendedor|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Thurman Mullby
    .xp >10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga arrojadiza equilibrada]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #optional << Warlock/Mage/Warrior/Rogue
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Aprende Espadas de 1 mano y Bastones << Warlock/Mage
    .trainer >>Aprende Espadas de 1 mano << Rogue
    .trainer >>Aprende el uso de Bastones << Priest
    .trainer >>Aprende Espadas de 2 manos << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
    .money <0.55 << Rogue
step << Warlock/Mage
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Aprende el uso de Bastones
    .target Woo Ping
step << Priest/Mage/Warlock
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_WARN_Compra lo siguiente si puedes permitírtelo:|r
    >>|T134711:0|t[Aceite de zahorí menor] |cRXP_WARN_y|r |T133906:0|t[Sabiola ahumada]
    >>|cRXP_WARN_También busca mejoras de DPS altas|r |T132317:0|t[Varita] |cRXP_WARN_que puedas usar ahora/pronto|r
    >>|cRXP_WARN_Estos proporcionarán un aumento de DPS alto en los primeros niveles. Si no quieres hacerlo o no puedes, omite este paso|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Jaxon
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra una|r |T132402:0|t[Hachuela] |cRXP_BUY_de él. Equípala más tarde cuando llegues al nivel 11|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .money <0.2490
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .xp >11,1
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra una|r |T132402:0|t[Hachuela] |cRXP_BUY_de él|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .money <0.2490
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .xp <11,1
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra una|r |T132402:0|t[Hachuela] |cRXP_BUY_de él. Equípala más tarde cuando llegues al nivel 11|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    >>|cRXP_WARN_Asegúrate de guardar 6 de plata para aprender facultades después|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp >11,1
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gunther Pozador|r
    >>|cRXP_BUY_Compra una|r |T132402:0|t[Hachuela] |cRXP_BUY_de él|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    >>|cRXP_WARN_Asegúrate de guardar 6 platas para aprender facultades después|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equipa la|r |T132402:0|t[Hachuela]
    .use 853
    .itemcount 853,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp <11,1
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Allison|r
    .home >> Establece tu Piedra de hogar en la ciudad de Ventormenta
    .target Innkeeper Allison
    .bindlocation 16509
step << Hunter
    .goto 1453/0,702.700,-8791.800
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lina Hornillos|r
    >>|cRXP_BUY_Compra y equipa un|r |T135489:0|t[Arco corvo laminado]
    .collect 2507,1
    .target Lina Stover
    .money <0.1664
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto 1453/0,702.700,-8791.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lina Hornillos|r
	.vendor >>Compra 6 montones (stacks) de |T132382:0|t[Flechas afiladas] |cRXP_BUY_y destruye las|r |T132382:0|t[Flechas férreas] |cRXP_BUY_restantes|r
    .target Lina Stover
step << Hunter
    #completewith next
    .equip 18,2507 >> |cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1 --Hornwood Recurve Bow (1)


----Warlock Elwynn Voidwalker Section Start----
step << Warlock
    #optional
    #completewith GakinStart
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    #xprate >1.59
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1685 >> Entrega la misión La invocación de Gakin
    .accept 1688 >> Acepta la misión Surena Caledon
    .target Gakin the Darkbinder
step << Warlock skip
    #softcore
    .deathskip >> Muere y resucita en el |cRXP_FRIENDLY_Ángel de la Resurrección|r usando |T136126:0|t[Transfusión de vida] y poniéndote sobre la fogata que tienes al lado
    .target Ángel de la Resurrección
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >> Sal de Ventormenta
step << Warlock
    #completewith WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    .subzone 87 >> Viaja a Villadorada
step << Warlock
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    -->>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
    .turnin 176 >> Entrega la misión Se busca: Hogger
    .turnin 123 >> Entrega la misión El Coleccionista
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Dughan|r
    -->>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
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
    #label BoarMeatCooking4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Mata |cRXP_ENEMY_Jabalíes Pielroca|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Rockhide Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #requires BoarMeatCooking4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Mata |cRXP_ENEMY_Jabalíes Pielroca|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Rockhide Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #completewith SChoker
    .subzone 62 >> Viaja a la Plantación de Calabazas de Brackwell
    .isOnQuest 1688
step << Warlock
    #optional
    #completewith SChoker
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r]
    .use 1972>>|cRXP_WARN_Usa las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] para iniciar la misión|r
    >>|cRXP_WARN_Las|r |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] |cRXP_WARN_es un botín muy raro. Ignora este paso si no lo obtienes|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >> Acepta la misión Las escrituras de Cejade
step << Warlock
    #sticky
    #label WLBandanaEnd
    #loop
    .goto 1429/0,-911.52,-9735.70,0
    .goto 1429/0,-921.93,-9812.08,0
    .waypoint 1429/0,-911.52,-9735.70,60,0
    .waypoint 1429/0,-828.22,-9733.39,60,0
    .waypoint 1429/0,-831.69,-9823.65,60,0
    .waypoint 1429/0,-921.93,-9812.08,60,0
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de lino rojo|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    #label SChoker
    .goto 1429/0,-932.35,-9806.53
    >>Mata a |cRXP_ENEMY_Surena Caledon|r. Despójala para obtener su |cRXP_LOOT_Gargantilla|r
    >>|cRXP_WARN_Enfócate en matar a |cRXP_ENEMY_Surena Caledon|r muy rápidamente|r
    >>|cRXP_WARN_Lanza|r |T136183:0|t[Miedo] |cRXP_WARN_en |cRXP_ENEMY_Morgan el Coleccionista|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WolfMeatCooking9
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Warlock
    #optional
    #requires WolfMeatCooking8
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mata a los |cRXP_ENEMY_Merodeadores|r. Despójalos para obtener su |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los lobos que encuentres|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
    .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << Warlock
    #requires WLBandanaEnd
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Entrega la misión Armadura de paño y cuero
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara Timberlain|r
    .turnin 59 >> Entrega la misión Armadura de paño y cuero
    .target Sara Timberlain
step << Warlock
    #optional
    #completewith Gnolls
    #label SoulShards
    >>|cRXP_WARN_Mata enemigos por el camino. Asegúrate de tener al menos 2|r |T134075:0|t[|cRXP_LOOT_Fragmentos de alma|r] antes de llegar a Crestagrana |cRXP_WARN_usando|r |T136163:0|t[|cRXP_FRIENDLY_Drenar alma|r] mientras los enemigos están a punto de morir
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
step << Warlock
    #label Gnolls
    #requires SoulShards
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Parker|r
    .accept 244 >> Acepta la misión Gnolls invasores
    .target Guard Parker
step << Warlock
    .goto 1433/0,-1974.20,-9577.07,15,0
    .goto 1433/0,-2077.18,-9608.42,25,0
    .goto 1433/0,-2212.64,-9558.570,25,0
    .goto 1433/0,-2238.00,-9443.69,25 >> Viaja hacia Villa del Lago
    >>|cRXP_WARN_MANTENTE EN EL CAMINO PRINCIPAL Y EVITA CUALQUIER ENEMIGO CERCANO DURANTE EL TRAYECTO|r
    .target Deputy Feldon
step << Warlock
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ayudante de alguacil Feldon|r
    .turnin 244 >> Entrega la misión Gnolls invasores
step << Warlock
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .fly Stormwind >> Vuela a Ventormenta
    .target Ariena Stormfeather
step << Warlock
    #completewith TheBinding
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    #optional
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
    .xp <12,1
step << Warlock
    #label TheBinding
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .turnin 1688 >> Entrega la misión Surena Caledon
    .accept 1689 >> Acepta la misión El vínculo
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto 1453/0,1042.22,-9002.21,18,0
    .goto 1453/0,1069.1,-8991.45,18,0
    .goto 1453/0,1027.43,-8991.45,18,0
    .goto 1453/0,1042.83,-8972.68
    >>|cRXP_WARN_Viaja a la parte inferior de El Cordero Degollado|r
    .cast 7728 >> |cRXP_WARN_Usa|r la |T133292:0|t[Gargantilla de sangrita] |cRXP_WARN_para invocar a un|r |cRXP_ENEMY_Abisario invocado|r
    .use 6928
step << Warlock
    .goto 1453/0,1042.83,-8972.68
    .use 6928 >> Mata al |cRXP_ENEMY_Abisario invocado|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gakin el Presotenebra|r
    .target Gakin the Darkbinder
    .goto 1453/0,1041.54,-8983.29
    .turnin 1689 >> Entrega la misión El vínculo


----Warlock Elwynn Voidwalker Section End----

step << Rogue
    #xprate <1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    >>|cRXP_WARN_Solo entrena|r |T132147:0|t[Doble empuñadura] |cRXP_WARN_y|r |T132307:0|t[Sprint]
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .target Osborne the Night Man
step << Rogue
    #xprate >1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    .train 674 >> Aprende |T132147:0|t[Doble empuñadura]
    .train 2983 >> Aprende |T132307:0|t[Sprint]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    .train 1766 >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <12,1
    .xp >14,1
step << Rogue
    #xprate >1.59
    #optional
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne el Nocturno|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
    .xp <14,1
step << Rogue
    #optional
    #label StilettoDW
    #completewith Continue
    +|cRXP_WARN_Equipa el|r |T135346:0|t[Estilete] |cRXP_WARN_en tu mano izquierda|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>6.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #requires StilettoDW
    #completewith Continue
    +|cRXP_WARN_No te preocupes si todavía no estás|r |T132147:0|t[Empuñando dos armas] |cRXP_WARN_en este momento, comprarás un arma más tarde cuando sea necesario|r
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
step << Human
    #label Continue
    .goto 1453/0,382.02,-8702.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osric Strang|r
    .turnin 6281 >> Entrega la misión Prosigue hasta Ventormenta
    .accept 6261 >> Acepta la misión Dungar Tragolargo << !Hunter
    .target Osric Strang
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1638 >> Entrega la misión Instrucción de guerrero
    .accept 1639 >> Acepta la misión Bartleby, el borracho
    .target Harry Burlguard
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .turnin 1639 >> Entrega la misión Bartleby, el borracho
    .accept 1640 >> Acepta la misión Vence a Bartleby
    .target Bartleby
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>Ataca a |cRXP_ENEMY_Bartleby|r. Se rendirá al 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bartleby|r
    .target Bartleby
    .goto 1453/0,389.07,-8604.43
    .turnin 1640 >> Entrega la misión Vence a Bartleby
    .accept 1665 >> Acepta la misión La jarra de Bartleby
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Harry Burlguard|r
    .turnin 1665 >> Entrega la misión La jarra de Bartleby
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto 1453/0,809.52,-8579.22,20 >> Entra en la Catedral de Ventormenta
step << Priest
    #optional
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .turnin 5635 >> Entrega la misión Oración desesperada
    .train 8092 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .isOnQuest 5635
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .turnin 5634 >> Entrega la misión Oración desesperada
    .train 8092 >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Suma sacerdotisa Laurena|r
    .trainer >> Aprende tus hechizos de clase
    .target High Priestess Laurena
    .train 13908,3
step
    .goto 1453/0,685.22,-8387.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >> Entrega la misión La tarea de Elmore
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
    .target Grimand Elmore
step << Warrior
    #season 0,1
    #optional
    #completewith DeeprunEnter
    +|cRXP_WARN_Pon|r |T132363:0|t[Hender armadura] |cRXP_WARN_en tu barra de acciones y asegúrate de usarla constantemente. Es más efectivo que usar|r |T132282:0|t[Golpe heroico]
step << Warrior/Paladin/Rogue
    #optional
    .goto 1453/0,624.15,-8431.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaita Forjahonda|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_WARN_Aprenderás|r |T134708:0|t[Minería] |cRXP_WARN_más tarde|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entra en el Tranvía Subterráneo
    .zoneskip Ironforge
step << skip
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_En el tranvía cuando llegue:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_En el tranvía cuando llegue:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_En el tranvía cuando llegue:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en la pestaña General de tu Libro de Hechizos)|r
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << skip
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << skip
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #label TramEnd
    >>|cRXP_WARN_Toma el Tranvía Subterráneo hacia el lado de Forjaz|r
    >>|cRXP_WARN_Sube de nivel|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el Tranvía a Forjaz si es necesario|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Necesitarás tus|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_en 80 para una misión de nivel 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Lanza|r |T136221:0|t[Invocar abisario] |cRXP_WARN_y|r |T135230:0|t[Crear piedra de salud] |cRXP_WARN_mientras esperas el Tranvía a Forjaz si es necesario|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r en el andén central del lado de Forjaz del Tranvía Subterráneo
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    #xprate <1.59
    >>|cRXP_WARN_Usa la|r |T133942:0|t[Flauta cazarratas] |cRXP_WARN_en las |cRXP_ENEMY_Rata del subterráneo|r dentro del Tranvía Subterráneo|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Monty|r dentro del Tranvía Subterráneo
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    .zone Ironforge >>Entra en Forjaz
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >> Viaja hacia |cRXP_FRIENDLY_Bilban Cálculo|r
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    >>|cRXP_WARN_Asegúrate de guardar 20 platas 70 cobres para después|r
    .train 2687 >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >> Entra en el edificio Armas Mil Maderas
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r y |cRXP_FRIENDLY_Buliwyf Petramano|r
    .train 2567 >> Aprende el uso de Arrojadizas
    .goto 1455/0,-1205.65,-5042.12
    .target +Bixi Wobblebonk
    .train 199 >> Aprende Mazas de 2 manos
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Warrior
    .goto 1455/0,-1206.74,-5037.12
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
    .goto 1455/0,-1206.74,-5037.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brenwyn Ventacerado|r bajando las escaleras
    >>|cRXP_BUY_Compra las|r |T135641:0|t[Dagas arrojadizas equilibradas] |cRXP_BUY_a esta vendedora|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
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
    #completewith next
    .goto 1455,61.356,88.398,6 >> Sal del edificio Armas Mil Maderas
step
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryth Thurden|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step << Mage/Paladin
    #optional
    #completewith next
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-928.40,-4635.61,20,0 << Paladin
    .goto 1455/0,-931.8,-4627.59,20,0 << Mage
    .goto 1455/0,-928.40,-4614.51,12 >>Viaja hacia |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-896.47,-4601.65,12 >>Viaja hacia |cRXP_FRIENDLY_Brandur Martiyerro|r << Paladin
step << Mage
    .goto 1455/0,-928.40,-4614.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dink|r dentro
    .train 122 >> Aprende tus hechizos de clase
    .target Dink
step << Paladin
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brandur Martiyerro|r dentro
    .train 633 >> Aprende tus hechizos de clase
    .target Brandur Ironhammer
step << skip -- for dungeon route only
    .goto 1455/0,-856.69,-4841.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Brebefuego|r
    .home >> Establece tu Piedra de hogar en Forjaz
    .target Innkeeper Firebrew
    .bindlocation 1537
step
    #ah
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan pronto y para subir tu nivel de|r |T133971:0|t[Cocina] |cRXP_BUY_con:|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    >>|T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con un |cRXP_FRIENDLY_Subastador de Forjaz|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Loch Modan pronto:|r
    >>|T134342:0|t[Intestinos de jabalí]
    >>|T134027:0|t[Carne de oso]
    >>|T134437:0|t[Icor de araña]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    .goto 1426,53.47,35.02
    >>Sal de Forjaz
    .zone Dun Morogh >> Viaja a Dun Morogh
--logout skip - remove if logout skips re-added
step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Beldin Brasacerada::1376|r 
    .target Beldin Steelgrill::1376
    .accept 96408 >>Acepta la misión A Visitor to Dun Morogh
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Mata a los |cRXP_ENEMY_Jabalíes del risco anciano|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 10 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Auberdine más tarde|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Mata a los |cRXP_ENEMY_Jabalíes del risco anciano|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #label Dirt
    #completewith Rudra
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Sube por el camino de tierra
    .isQuestAvailable 314
step
    #completewith VagashEnd
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_HAZ CLIC AQUÍ si estás teniendo dificultades|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Haz clic aquí para ver un vídeo de referencia|r << !Mage
    .mob Vagash
step << Warrior/Rogue
    #optional
    #requires Dirt
    #completewith VagashEnd
    +|cRXP_WARN_Equípate con el|r |T135425:0|t[Cuchillo arrojadizo cortante]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
    #label Rudra
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .accept 314 >> Acepta la misión La protección del rebaño
    .target Rudra Amberstill
step
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
    .goto 1426/0,-1304.71,-5513.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rudra Semperámbar|r
    .turnin 314 >> Entrega la misión La protección del rebaño
    .target Rudra Amberstill
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
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco grande|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin -96408 >> Entrega la misión A Visitor to Dun Morogh
    .accept 96392 >> Acepta la misión Farsen's Observar
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >> Habla con |cRXP_FRIENDLY_Earthseer Farsen|r para ver su vista lejana
    >>|cRXP_WARN_Puedes cancelar la Vista lejana cuando se completa el objetivo|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >> |cRXP_WARN_Presiona ESC para cancelar la Vista lejana|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Puedes cancelar la Vista lejana cuando se completa el objetivo|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Presiona ESC para cancelar la Vista lejana|r
    .turnin 96392 >> Entrega la misión Farsen's Observar
    .accept 96390 >> Acepta la misión Nip 'Em in the Compa
    .target Earthseer Farsen
step
    #optional
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cocinero Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
step << !Human
    .goto 1426/0,-1577.16,-5671.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_si es necesario|r << Warrior/Rogue
    .vendor >> |cRXP_BUY_Compra|r |T133968:0|t[Pan recién horneado] |cRXP_BUY_y|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_si es necesario|r << !Warrior !Rogue
    .target Kazan Mogosh
    .xp >15,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r y el |cRXP_FRIENDLY_Supervisor Petrocejas|r
    .accept 433 >> Acepta la misión El servidor público
    .goto 1426/0,-1579.96,-5714.73
    .target +Senator Mehr Stonehallow
    .accept 432 >> Acepta la misión ¡Malditos troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
    .goto 1426/0,-1612.12,-5697.89
    #requires RogueWep << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dank Cortefiel|r
    .train 2575 >>Aprende |T134708:0|t[Minería]
    >>|cRXP_WARN_Esto se usa en conjunto con|r |T136241:0|t[Herrería] |cRXP_WARN_para hacer|r |T135248:0|t[Piedras de afilar férreas] |cRXP_WARN_y|r |T135255:0|t[Contrapesos férreos] |cRXP_WARN_para aumentar el daño de tu arma|r
    >>|cRXP_WARN_Si no quieres hacerlo, omite este paso|r
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >> |cRXP_WARN_Lanza|r |T136025:0|t[Buscar minerales]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
    .goto 1426/0,-1679.89,-5728.88,40,0
    .goto 1426/0,-1675.95,-5597.22,25,0
    .goto 1426/0,-1679.89,-5728.88
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r y |cRXP_ENEMY_Cascahuesos Comepiedras|r dentro de la cueva
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Supervisor Petrocejas|r y el |cRXP_FRIENDLY_Senador Mehr Piedrasanta|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
    .turnin 433 >> Entrega la misión El servidor público
    .goto 1426/0,-1579.96,-5714.73
    .target +Senator Mehr Stonehallow
step << !Warrior !Rogue !Paladin !Hunter
    .goto 1426/0,-1577.16,-5671.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_BUY_Compra hasta 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .target Kazan Mogosh
    .xp >15,1
step
    #completewith OII
    >>Mata |cRXP_ENEMY_Emboscadores Comepiedras|r. Despójalos para obtener el |T132621:0|t[|cRXP_LOOT_Tonel de pólvora vacío|r]
    .use 268548 >> |cRXP_WARN_Usa el|r |T132621:0|t[|cRXP_LOOT_Tonel de pólvora vacío|r] |cRXP_WARN_para iniciar la misión|r
    >>|cRXP_WARN_NOTA: Este objeto tiene una baja probabilidad de caída. Omite este paso si no lo encuentras para cuando hayas terminado con los|r |cRXP_ENEMY_Espías Hierro Negro|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >> Acepta la misión Stolen Reventar Powder
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Mata |cRXP_ENEMY_Espías Hierro Negro|r. Despójalos para obtener el |T237385:0|t[|cRXP_LOOT_Mapa de Hierro Negro|r]
    .use 274268 >>|cRXP_WARN_Usa el|r |T237385:0|t[|cRXP_LOOT_Mapa de Hierro Negro|r] |cRXP_WARN_para iniciar la misión|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >> Acepta la misión Mapa subterráneo
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >> Entrega la misión Nip 'Em in the Compa
    .turnin 96391 >> Entrega la misión Subterráneo Mapa
    .accept 96393 >> Acepta la misión Old Ironforge Incursion
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capataz de cantera Thesten|r
    .turnin 95213 >> Entrega la misión Stolen Reventar Powder
    .accept 95214 >> Acepta la misión Stolen Reventar Powder
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capataz de cantera Thesten|r
    .accept 95214 >> Acepta la misión Stolen Reventar Powder
    .target Quarrymaster Thesten
step
    .isOnQuest 95214
    #loop
    .goto 1426/0,-1881.82,-5735.45,50,0
    .goto 1426/0,-1832.57,-5571.28,50,0
    .goto 1426/0,-1724.22,-5636.95,50,0
    .goto 1426/0,-1881.82,-5735.45,0
    .goto 1426/0,-1832.57,-5571.28,0
    .goto 1426/0,-1724.22,-5636.95,0
    >>Mata |cRXP_ENEMY_Emboscadores Comepiedras|r. Despójalos para obtener su |cRXP_LOOT_Pólvora explosiva robada|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capataz de cantera Thesten|r
    .turnin 95214 >> Entrega la misión Stolen Reventar Powder
    .target Quarrymaster Thesten
step
    .goto 1426/0,-2197.02,-5279.07,45,0
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2121.76,-5064.70
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r del suelo
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    .goto 1426/0,-2087.19,-5096.51
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener su |cRXP_LOOT_Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    #label Revenge
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Piloto Podomartillo|r
    .turnin 417,1 >> Entrega la misión Vengar al piloto << Rogue
    .turnin 417 >> Entrega la misión Vengar al piloto << !Rogue
    .target Pilot Hammerfoot
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135641:0|t[Daga de artesano] |cRXP_WARN_en tu mano izquierda|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step
    #label enterloch
    .goto 1426/0,-2354.62,-4898.20,25 >>Atraviesa el túnel hacia Loch Modan
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group RestedXP Guía Forever (A)
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan
#displayname 13-15 Loch Modan << SoD
#next 13-15 Páramos de Poniente << !Hunter
#next 14-16 Costa Oscura << Hunter
#defaultfor Human

step -- dont delete
    #label NormalRouteStart
step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Vende y Repara
    .target Gothor Brumn
step
    .goto 1432/0,-2676.82,-4825.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    >>|cRXP_WARN_NO aceptes la misión Un pedido de Pico Tormenta todavía|r
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 10 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Auberdine más tarde|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
step
    #optional
    #requires BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    >>|cRXP_WARN_Esto se usará para subir tu|r |T133971:0|t[Cocina] |cRXP_WARN_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144
step
    #optional
    #completewith ThelsamarFirst
    >>Mata a los |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |T134027:0|t|cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T134342:0|t|cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |T134437:0|t|cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 144
step
    #optional
    #completewith next
    #label Thelsamar
    .subzone 144 >> Viaja a Thelsamar
    .isQuestAvailable 1339
step
    #requires Thelsamar
    #completewith next
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grenhild Garfaoscura|r
    .accept 86667 >> Acepta la misión Bajo nieve
    .target Grenhild Darktalon
step
    #label ThelsamarFirst
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    #optional
    #completewith StormpikeO
    .abandon 1338 >> Abandona la misión Un pedido de Pico Tormenta. Esto desbloquea la misión La tarea del montaraz Pico Tormenta que te dará 550xp gratuitos al entregar
step
    #completewith next
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >> |cRXP_BUY_Cómprale hasta 2|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_si es necesario|r
    .target Yanni Stoutheart
step << !Warrior !Rogue !Hunter
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Hogartufa|r
    .vendor 6734 >> |cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo]|cRXP_BUY_. Intenta tener alrededor de 20|r
    .target Innkeeper Hearthstove
    .xp >15,1
step
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .target Thorgrum Borrelson
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> |cRXP_WARN_Sube por el camino de tierra y luego déjate caer dentro del búnker|r
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r en el búnker
    .accept 267 >> Acepta la misión La amenaza trogg
    .target Captain Rugelfuss
step
    #label DefenseStart
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2534.38,-5648.28,5 >>Viaja a la zona nevada del suelo justo a la salida del túnel del Paso de la Puerta Sur
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >> |cRXP_WARN_Usa el|r |T1387609:0|t[Tarro de cerámica] |cRXP_WARN_mientras estás colocado sobre la zona nevada para recoger el|r |T1387609:0|t[Tarro de nieve]
    .complete 86667,1 -- Jar of Snow 1/1
step
    #optional
    #label BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #sticky
    #label BoarBearSpider
    >>Mata a los |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |T134027:0|t|cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T134342:0|t|cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |T134437:0|t|cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #completewith MinerGear
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalos para obtener sus |T133854:0|t|cRXP_LOOT_Orejas de rata de túnel|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    .goto 1432/0,-3146.73,-4837.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Norric Lochthane|r
    .turnin 86667 >> Entrega la misión Bajo nieve
    .target Norric Lochthane
step
    #requires BoarBearSpider
    #label SilverStream
    #completewith MinerGear
    .goto 1432/0,-2972.96,-4835.187,20 >> Entra en la Mina de Fuenteplata, mata |cRXP_ENEMY_Kóbolds|r para obtener |T133854:0|t[|cRXP_LOOT_Orejas|r] por el camino
step
    #label MinerGear
    .goto 1432/0,-2984.82,-4902.33
    >>Abre los |cRXP_PICK_Cajones de la Liga de Mineros|r. Despójalos para obtener el |cRXP_LOOT_Equipamiento de minero|r
    >>|cRXP_WARN_Los |cRXP_PICK_Cajones de la Liga de Mineros|r se pueden encontrar por toda la Mina|r
    >>|cRXP_WARN_Podrás completar esta misión a un nivel más alto si deseas dejarla por ahora|r
    .complete 307,1 -- Miners' Gear (4)
step << Paladin/Warrior
    #label BuyMace
    .goto 1432/0,-3176.16,-4669.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Cómprale la|r |T133476:0|t[Maza con pinchos pesada] |cRXP_BUY_O la|r |T133053:0|t[Gran maza de maderaférrea] |cRXP_BUY_(si están disponibles)|r
    >>|cRXP_WARN_Si no puedes pagarlo, entonces obtén dinero de los cercanos |cRXP_ENEMY_Ratatúneles|r hasta que tengas suficiente|r
    >>|cRXP_WARN_Hazlo rápidamente ya que otro jugador podría comprarlo antes que tú|r
    >>|cRXP_WARN_Si no deseas hacer esto, omite este paso|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_Equipa la|r |T133476:0|t[Maza con pinchos pesada]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_Equipa la|r |T133053:0|t[Gran maza de maderaférrea]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalos para obtener sus |T133854:0|t|cRXP_LOOT_Orejas|r
    >>|cRXP_WARN_Asegúrate de tener 10|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu próxima misión de clase del Paladín|r << Paladin
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #completewith StormpikeDelivery
    >>Mata a los |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |T134027:0|t|cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T134342:0|t|cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |T134437:0|t|cRXP_LOOT_Icor de araña|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vende y repara si es necesario|r
    .target Gothor Brumn
step << Human
    #label StormpikeDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pico Tormenta|r
    .turnin 307 >> Entrega la misión Zarpas asquerosas
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch3
    #completewith FlintTinder
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch3
    #completewith FlintTinder
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mata a los |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r
    >>|cRXP_WARN_No te desvíes para farmear esto ahora. Simplemente mata y despoja todos los jabalíes que encuentres|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
    .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #loop
    >>Mata a los |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |T134027:0|t|cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |T134342:0|t|cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |T134437:0|t|cRXP_LOOT_Icor de araña|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .goto 1432/0,-2735.74,-4684.34,0
    .goto 1432/0,-2782.63,-4770.80,0
    .goto 1432/0,-3080.53,-5100.08,0
    .waypoint 1432/0,-2735.74,-4684.34,90,0
    .waypoint 1432/0,-2846.07,-4682.50,90,0
    .waypoint 1432/0,-2782.63,-4770.80,90,0
    .waypoint 1432/0,-2835.04,-4976.83,90,0
    .waypoint 1432/0,-2915.03,-5044.89,90,0
    .waypoint 1432/0,-3080.53,-5100.08,90,0
    .mob +Elder Black Bear
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .goto 1432/0,-3041.92,-5129.51,0
    .goto 1432/0,-2815.73,-5147.91,0
    .goto 1432/0,-2782.63,-4903.25,0
    .waypoint 1432/0,-3041.92,-5129.51,90,0
    .waypoint 1432/0,-3017.09,-5219.65,90,0
    .waypoint 1432/0,-2815.73,-5147.91,90,0
    .waypoint 1432/0,-2757.81,-4952.91,90,0
    .waypoint 1432/0,-2782.63,-4903.25,90,0
    .mob +Mountain Boar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .goto 1432/0,-2873.66,-4789.19,0
    .goto 1432/0,-2926.07,-5232.53,0
    .goto 1432/0,-3069.5,-5078.01,0
    .waypoint 1432/0,-2873.66,-4789.19,90,0
    .waypoint 1432/0,-2766.08,-4866.45,90,0
    .waypoint 1432/0,-2926.07,-5232.53,90,0
    .waypoint 1432/0,-2992.27,-5055.93,90,0
    .waypoint 1432/0,-3069.5,-5078.01,90,0
    .mob +Forest Lurker
step
    #completewith FlintTinder
    .subzone 144 >> Regresa a Thelsamar
step
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
    .isQuestComplete 416
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >> Entra en la Pensión La Cebada
step
    .isQuestComplete 418
    #label FlintTinder
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vidra Hogartufa|r
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Kadrell|r
    >>|cRXP_FRIENDLY_Montaraz Kadrell|r |cRXP_WARN_patrulla la carretera que cruza Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >> Entrega la misión Mata ratas
    .isQuestComplete 416
step
    .goto 1432/0,-2747.60,-5530.540
    >>Mata |cRXP_ENEMY_Troggs Rompecantos|r y |cRXP_ENEMY_Exploradores Rompecantos|r. Despójalos para obtener sus |cRXP_LOOT_Dientes|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Exploradores Rompecantos|r lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(Lanzamiento a distancia: Inflige 14-20 de daño)|r
    >>|cRXP_WARN_Esta es una zona de reaparición rápida. No deberías necesitar moverte de aquí|r
    >>|cRXP_WARN_Asegúrate de tener 10|r |T132889:0|t[Paño de lino] |cRXP_WARN_para tu próxima misión de clase del Paladín|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >> |cRXP_WARN_Sube por el camino de tierra y luego déjate caer dentro del búnker|r
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Rugelfuss|r
    .turnin 267 >> Entrega la misión La amenaza trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Montaraz Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
    .isQuestComplete 224

step << Warlock
    #optional
    #completewith next
    .goto 1432/0,-2747.60,-5530.540,0
    +Grindea |cRXP_ENEMY_Troggs|r hasta que tengas 75 platas y 79 cobres en basura para vender o dinero
    .money >0.7579
step << Warlock
    #optional
    .goto 1432/0,-2747.60,-5530.540
    .xp 14 >>Mata enemigos hasta el nivel 14
    >>|cRXP_WARN_Vuela a Forjaz y omite este paso si planeas hacer la mazmorra El Salón de Señores Feudales en Forjaz|r

step << !Warrior
    #optional
    .goto 1432/0,-2747.60,-5530.540
    +Continúa matando |cRXP_ENEMY_Troggs|r hasta que tu |T134414:0|t[Piedra de hogar] esté lista
    .cooldown item,6948,<1
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout

step << Human Warrior -- flying IF to train thrown before going westfall/darkshore
    #completewith next
    #optional
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Human Warrior
    #optional
    .goto 1455/0,-1203.78,-5041.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bixi Tambaleapié|r
    .train 2567 >>Aprende el uso de Arrojadizas
    .target Bixi Wobblebonk
step << Human Warrior
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bilban Cálculo|r
    .goto 1455/0,-1234.65,-5035.67
    .trainer >> Aprende tus hechizos de clase
    .target Bilban Tosslespanner
    .zoneskip Ironforge,1

step -- dont delete
    #label NormalRouteEnd

step
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .zoneskip Stormwind City
    .zoneskip Darkshore
    .zoneskip Westfall

step << Hunter
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Mullby|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Esto se usa para hacer|r |T135805:0|t[Hogueras básicas] |cRXP_WARN_en Barcos para subir tu habilidad de|r |T133971:0|t[Cocina] |cRXP_WARN_sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << Hunter
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura pronto:|r
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
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Subastadora Jaxon|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura pronto:|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Warlock/Mage/Rogue/Priest/Warrior/Paladin
    #optional
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Aprende Espadas de 1 mano y Bastones << Warlock/Mage
    .trainer >>Aprende Espadas de 1 mano << Rogue
    .trainer >>Aprende el uso de Bastones << Priest
    .trainer >>Aprende Espadas de 2 manos << Warrior/Paladin
    .target Woo Ping
step
    .isOnQuest 6261
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .turnin 6261 >> Entrega la misión Dungar Tragolargo
    .target Dungar Longdrink
    .xp <15,1
step << Warlock/Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Compra una|r |T135468:0|t[Varita humeante] |cRXP_BUY_a esta vendedora|r
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
step << Warlock/Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ardwyn Cailen|r
    >>|cRXP_BUY_Cómprale una|r |T135468:0|t[Varita humeante] |cRXP_BUY_o busca en la Casa de Subastas una|r |T135144:0|t[Varita mágica superior]
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest
    #optional
    #completewith next
    +|cRXP_WARN_Equipa la|r |T135468:0|t[Varita humeante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest
    #optional
    #completewith next
    +|cRXP_WARN_Recuerda equipar la|r |T135468:0|t[Varita humeante] |cRXP_WARN_más tarde cuando llegues al nivel 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >> Viaja a El Cordero Degollad y baja las escaleras
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >> Aprende tus hechizos de clase
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1035.96,-8974.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Spackle Zarzamora|r
    .vendor >> |cRXP_BUY_Compra|r |T133738:0|t[Grimorio Consumir Sombras (Rango 1)] |cRXP_BUY_y|r |T133738:0|t[Grimorio Sacrificio (Rango 1)] |cRXP_BUY_si te los puedes permitir. Si no, puedes comprarlos más tarde|r
    .target Spackle Thornberry
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >> Viaja a la Torre de los Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elsharin|r
    .trainer >> Aprende tus hechizos de clase
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >> Viaja a la Catedral de Ventormenta
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .accept 1641 >> Acepta la misión Escrito sobre divinidad
    .turnin 1641 >> Entrega la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|cRXP_WARN_Usa el |T133739:0|t[|cRXP_LOOT_Escrito sobre divinidad|r] para iniciar la misión|r
    .accept 1642 >>Acepta la misión Escrito sobre divinidad
    .use 6775
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Duthorian Rall|r
    .turnin 1642 >>Entrega la misión Escrito sobre divinidad
    .accept 1643 >>Acepta la misión Escrito sobre divinidad
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arthur el Leal|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >> Aprende tus hechizos de clase
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Hermano Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >> Aprende tus hechizos de clase
    .target Brother Joshua
step << !Hunter
    #label HumbleBeginnings
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Baros Alexston|r
    .accept 399 >> Acepta la misión Principios humildes
    .target Baros Alexston
    .xp >15,1 -- shows to 14 and under
step
    .goto 1453/0,600.07,-8427.22
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Furen Barbalarga|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Einris Lanza Reluciente|r
    .trainer >> Aprende tus hechizos de clase
    .target Einris Brightspear
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >> Entrena los hechizos de tu mascota
    .target Karrina Mekenda
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Osborne|r
    .trainer >> Aprende tus hechizos de clase
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Wu|r o |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >> Aprende tus hechizos de clase
    .target Wu Shen
    .target Ilsa Corbin
step << Human Paladin
    .goto 1453/0,613.66,-8832.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >> Entrega la misión Escrito sobre divinidad
    .target Stephanie Turner
    .accept 1644 >> Acepta la misión Escrito sobre divinidad
    .turnin 1644 >> Entrega la misión Escrito sobre divinidad
    .accept 1780 >> Acepta la misión Escrito sobre divinidad
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Cómprale hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo, o puedes comprar algo mejor/más barato de la Casa de Subastas|r
    >>|cRXP_WARN_Equipa ambas cuando llegues al nivel 14|r
    .collect 2027,2 --Scimitar
    .target Marda Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Cómprale hasta 2|r |T135343:0|t[Cimitarras] |cRXP_BUY_si puedes permitírtelo|r
    >>|cRXP_WARN_Equipa ambas cuando llegues al nivel 14|r
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
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1

--Hunter going Darkshore, rest Westfall
step << Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Catherine Leland|r
    >>|cRXP_BUY_Compra uno|r |T134335:0|t[Adorno lustroso] |cRXP_BUY_y tres|r |T134324:0|t[Reptadores nocturnos] |cRXP_BUY_de ella. Esto es para una misión de 900 xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilbert Gris::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acepta la misión Fishin' Tiempo
    .turnin 95065 >>Entrega la misión Fishin' Tiempo
step << Hunter
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en tu Libro de Profesiones)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en tu Libro de Profesiones)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Hoguera básica] |cRXP_WARN_(en tu Libro de Profesiones)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_los siguientes objetos:|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_la|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_WARN_en|r |T133974:0|t[Carne de lobo carbonizada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    >>|T133971:0|t[Cocina] |cRXP_WARN_el|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_en|r |T133974:0|t[Carne de jabalí asada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura si es necesario|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Toma el barco hacia Costa Oscura
]])
