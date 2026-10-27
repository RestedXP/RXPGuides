if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Human Mage
#name 1-10 ADV Bosque de Elwynn Humano Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none Human Mage
#next 10-11 ADV Dun Morogh Humano Mago AoE


step << !Human Mage
    #season 2
    #completewith next
    +En Season of Discovery, NO deberías empezar fuera de la zona de inicio de tu raza como Mago, ya que no podrás obtener tu primera runa aquí (|T133816:0|t[Grabar guantes - Lanza de hielo])
step
    #completewith next
    +Has seleccionado la guía Avanzada. Esta es la guía más rápida para la clase más rápida del juego (Mago Alianza). Por ello, habrá muchas mecánicas específicas, así como pulleos AoE muy difíciles. ¡Persevera mientras aprendes! ¡Buena suerte!
step
    #completewith next
    .goto 1429/0,-146.20,-8999.660,50,0
    +|cRXP_WARN_Mata |cRXP_ENEMY_Lobos jóvenes|r. Despójalos hasta que tengas 10 cobres en objetos para vender|r
    .mob Young Wolf
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Willem|r
    .accept 783 >> Acepta la misión Una amenaza interna
    .target Deputy Willem
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danil|r
    .vendor >> Vende la basura hasta que tengas 10+ cobres
    .target Brother Danil
step
    .goto 1429/0,-139.61,-8910.09,15,0
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_McBride|r en el interior
    .turnin 783 >> Entrega la misión Una amenaza interna
    .accept 7 >> Acepta la misión La limpieza del campamento kóbold
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Salta de las escaleras a la barandilla
    .goto 1429/0,-188.20,-8851.76,10 >>Viaja hacia |cRXP_FRIENDLY_Khelden|r arriba
step
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden|r
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Viaja hacia |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Willem|r
    .accept 5261 >> Acepta la misión Eagan Desollapelambres
    .target Deputy Willem
step
    #completewith next
    .goto 1429/0,-64.64,-8924.9,70,0
    .goto 1429/0,-81.64,-8850.37
    +|cRXP_WARN_Mata |cRXP_ENEMY_Lobos jóvenes|r. Despójalos hasta que tengas 50 cobres en objetos para vender (incluyendo tu armadura)|r
    .mob Young Wolf
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan|r
    .turnin 5261 >> Entrega la misión Eagan Desollapelambres
    .accept 33 >> Acepta la misión Lobos en la frontera
    .target Eagan Peltskinner
step
    #completewith next
    >>Mata |cRXP_LOOT_Lobos jóvenes|r y |cRXP_LOOT_Lobos grises|r. Despójalos para obtener su |cRXP_LOOT_Carne de lobo dura|r
    >>Enfócate en los |cRXP_LOOT_Lobos jóvenes|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
#loop
	.line Elwynn Forest,47.01,35.68,47.70,35.04,49.81,35.14,49.82,36.23,49.18,37.16,47.01,35.68
	.goto 1429/0,-96.22,-8765.43,35,0
	.goto 1429/0,-120.17,-8750.61,35,0
	.goto 1429/0,-193.41,-8752.93,35,0
	.goto 1429/0,-193.75,-8778.16,35,0
	.goto 1429/0,-171.54,-8799.68,35,0
	.goto 1429/0,-96.22,-8765.43,35,0
    >>Mata |cRXP_ENEMY_Alimaña kóbold|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Alimaña kóbold|r de nivel 1 si es posible|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    >>Mata |cRXP_LOOT_Lobos jóvenes|r y |cRXP_LOOT_Lobos grises|r. Despójalos para obtener su |cRXP_LOOT_Carne de lobo dura|r
    >>Enfócate en los |cRXP_LOOT_Lobos jóvenes|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eagan|r
    .turnin 33,1 >> Entrega la misión Lobos en la frontera
    .target Eagan Peltskinner
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danil|r
    |cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Vende la Basura
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_McBride|r en el interior
    .turnin 7 >> Entrega la misión La limpieza del campamento kóbold
    .accept 15 >> Acepta la misión Investiga la Mina del Eco
    .accept 3104 >> Acepta la misión Una carta glífica
    .target Marshal McBride
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto 1429/0,-104.55,-8782.32,35,0
	.goto 1429/0,-109.41,-8767.51,35,0
	.goto 1429/0,-108.02,-8727.93,35,0
	.goto 1429/0,-71.23,-8689.97,35,0
	.goto 1429/0,-121.91,-8698.07,35,0
	.goto 1429/0,-203.82,-8749.22,35,0
	.goto 1429/0,-104.55,-8782.32,35,0
    >>Mata |cRXP_ENEMY_Trabajadores kóbold|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    .xp 3+1110 >> Mata enemigos hasta alcanzar 1110+/1400 xp
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .vendor >>Vende la Basura
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_McBride|r en el interior
    .turnin 15 >> Entrega la misión Investiga la Mina del Eco
    .accept 21 >> Acepta la misión Refriega en el Eco
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Salta de las escaleras a la barandilla
    .goto 1429/0,-188.20,-8851.76,10 >>Viaja hacia |cRXP_FRIENDLY_Khelden|r arriba
step
    #season 0
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden|r
    .turnin 3104 >> Entrega la misión Una carta glífica
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Khelden Bremen
step
    #season 2
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden|r
    .accept 77620 >> Acepta la misión Investigación sobre hechizos << Human
    .turnin 3104 >> Entrega la misión Una carta glífica
    .train 116 >> Aprende |T135846:0|t[Descarga de Escarcha]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Viaja hacia |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Willem|r
    .accept 18 >> Acepta la misión Hermandad de ladrones
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener las |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r
    >>|cRXP_WARN_NOTA: No podrás aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo] |cRXP_WARN_aquí porque solo puedes obtener un|r |T133736:0|t[Manual de comprensiónr] |cRXP_WARN_en la zona de inicio de tu raza|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #season 2
    #requires CALEENCI
    #completewith RedBurlapBandana
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #loop
    #label RedBurlapBandana
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto 1429/0,-239.57,-9080.44,35,0
	.goto 1429/0,-288.51,-9067.94,35,0
	.goto 1429/0,-332.24,-9052.67,35,0
	.goto 1429/0,-358.96,-9074.19,35,0
	.goto 1429/0,-378.75,-9047.34,35,0
	.goto 1429/0,-365.21,-9003.37,35,0
	.goto 1429/0,-332.24,-8976.29,35,0
	.goto 1429/0,-239.57,-9080.44,35,0
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener |cRXP_LOOT_Pañuelos de arpillera roja|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,50,0
    .goto 1429/0,-335.02,-9108.91,50,0
    .goto 1429/0,-376.67,-9073.73,50,0
    .goto 1429/0,-388.47,-9001.28,50,0
    .goto 1429/0,-333.97,-9028.59,50,0
    >>Mata |cRXP_ENEMY_Matones Defias|r. Despójalos para obtener las |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r
    >>|cRXP_WARN_NOTA: No podrás aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo] |cRXP_WARN_aquí porque solo puedes obtener un|r |T133736:0|t[Manual de comprensiónr] |cRXP_WARN_en la zona de inicio de tu raza|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #optional
    #season 2
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Willem|r
    .turnin 18,5 >> Entrega la misión Hermandad de ladrones
    .accept 6 >> Acepta la misión La recompensa por Garrick Piesuaves
    .accept 3903 >> Acepta la misión Milly Osworth
    .target Deputy Willem
step
    #completewith Laborer
    +Equipa la |T135145:0|t[Lanza larga de intendente de milicia]
    .use 1159
    .itemcount 1159,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.7
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto 1429/0,-122.25,-8671.45,40 >>Entra en la mina
step
    #label Laborer
    .goto 1429/0,-130.24,-8649.23,40,0
    .goto 1429/0,-141.69,-8607.11,40,0
    .goto 1429/0,-150.71,-8554.57,40,0
    .goto 1429/0,-198.26,-8535.36,40,0
    .goto 1429/0,-209.37,-8560.59
    >>Mata |cRXP_ENEMY_Obreros kóbold|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >> Entrega la misión Milly Osworth
    .accept 3904 >> Acepta la misión La cosecha de Milly
    .target Milly Osworth
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >> Mata enemigos hasta alcanzar 1175+/2800xp
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Despoja los |cRXP_PICK_Cubos de uvas|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-461.01,-9056.37
    >>Mata a |cRXP_ENEMY_Garrick Piesuaves|r. Despójalo para obtener |cRXP_LOOT_Cabeza de Garrick|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Despoja los |cRXP_PICK_Cubos de uvas|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >> Mata enemigos hasta alcanzar 1175+/2800xp
    .mob Defias Thug
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>Entrega la misión La cosecha de Milly
    .accept 3905 >>Acepta la misión Informe de la vendimia
    .target Milly Osworth
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Willem|r
    .turnin 6,1 >> Entrega la misión La recompensa por Garrick Piesuaves
    .target Deputy Willem
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_McBride|r en el interior
    .turnin 21,3 >> Entrega la misión Refriega en el Eco
    .accept 54 >> Acepta la misión Informa en Villadorada
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-171.54,-8908.00,10,0
    .goto 1429/0,-184.38,-8901.52,10,0
    .goto 1429/0,-178.83,-8888.10,10,0
    .goto 1429/0,-164.60,-8892.50,10,0
    .goto 1429/0,-172.23,-8907.31,10,0
    .goto 1429/0,-185.08,-8899.21,10,0
    .goto 1429/0,-176.75,-8886.94,10,0
    >>Sube las escaleras
    .goto 1429/0,-181.64,-8902.13,10 >> Viaja hacia |cRXP_FRIENDLY_Neals|r
step
    .goto 1429/0,-181.64,-8902.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neals|r
    .turnin 3905,1 >>Entrega la misión Informe de la vendimia
    .target Brother Neals
step << Human
    #season 2
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
    .goto 1429/0,-188.23,-8851.58,12 >>Baja las escaleras, luego viaja hacia |cRXP_FRIENDLY_Khelden Bremen|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto 1429/0,-188.23,-8851.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Khelden Bremen|r dentro
    .turnin 77620 >> Entrega la misión Investigación sobre hechizos
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto 1429/0,-45.90,-9044.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falkhaan|r
    .accept 2158 >> Acepta la misión Descanso y relajación
    .target Falkhaan Isenstrider
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dughan|r
    .turnin 54 >> Entrega la misión Informa en Villadorada
    .accept 62 >> Acepta la misión La Mina Abisal
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William|r a través de la pared mientras entras en la Posada
    .accept 60 >> Acepta la misión Las velas de los kóbolds
    .target William Pestle
step
    #completewith next
    .home >> Establece tu Piedra de hogar en Villadorada
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Farley|r
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Farley|r
    .turnin 2158,2 >> Entrega la misión Descanso y relajación
    .vendor 295 >> Vende la Basura. |cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_hasta que te queden 2 de plata|r
    .target Innkeeper Farley
step
    .goto 1429/0,34.28,-9472.99
    >>Salta a la lámpara de araña del piso de abajo
    >>Habla con |cRXP_FRIENDLY_Zaldimar|r a través de la pared
    .trainer >> Aprende los hechizos de tu clase (Bola de Fuego R2, Explosión de Fuego)
	.target Zaldimar Wefhellt
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy|r
    .accept 47 >> Acepta la misión Intercambio de polvo de oro
    .target Remy "Two Times"
step
    #completewith BoarMeat1
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bernice|r y |cRXP_FRIENDLY_La vieja|r
    .accept 85 >> Acepta la misión El collar perdido
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.69
    .accept 88 >> Acepta la misión ¡Princesa debe morir!
	.goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r. Despójalos para obtener |cRXP_LOOT_Polvo de oro|r y |cRXP_LOOT_Velas de los kóbolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy|r
    .turnin 85 >> Entrega la misión El collar perdido
    .accept 86 >> Acepta la misión Un pastel para Billy
    .target Billy Maclure
step
    #label BoarMeat1
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell|r dentro
    .accept 106 >> Acepta la misión Jóvenes enamorados
    .target Maybell Maclure
step
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como puedas permitirte|r
    .vendor 258 >>Vende la Basura
    .target Joshua Maclure
step
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tommy|r
    .turnin 106 >> Entrega la misión Jóvenes enamorados
    .accept 111 >> Acepta la misión Habla con la abuelita
    .target Tommy Joe Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    >>Mata |cRXP_ENEMY_Jabalíes Colmipétreo|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bernice|r y luego con la |cRXP_FRIENDLY_Abuela|r dentro
    .turnin 86 >> Entrega la misión Un pastel para Billy
    .accept 84 >> Acepta la misión Vuelve con Billy
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.69
    .turnin 111 >> Entrega la misión Habla con la abuelita
    .accept 107 >> Acepta la misión Una nota para William
    .target +Gramma Stonefield
    .goto 1429/0,322.71,-9880.59
step
    #completewith next
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r. Despójalos para obtener |cRXP_LOOT_Polvo de oro|r y |cRXP_LOOT_Velas de los kóbolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Billy|r
    .turnin 84 >> Entrega la misión Vuelve con Billy
    .accept 87 >> Acepta la misión Dientes de Oro
    .target Billy Maclure
step
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compra tanta|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_como puedas permitirte|r
    .vendor 258 >>Vende la Basura
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto 1429/0,181.79,-9843.79,15 >>Entra en la Mina Abisal
step
    #completewith Goldtooth
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener |cRXP_LOOT_Polvo de oro|r y |cRXP_LOOT_Velas de los kóbolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto 1429/0,179.36,-9811.39,12,0
    .goto 1429/0,157.15,-9789.40
    >>Entra en uno de los espacios abiertos más grandes de la Mina Abisal
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto 1429/0,148.82,-9763.71,12,0
    .goto 1429/0,132.16,-9752.60,12,0
    .goto 1429/0,87.04,-9745.65,40 >>Viaja hacia |cRXP_ENEMY_Dientes de Oro|r
step
    #label Goldtooth
    .goto 1429/0,87.04,-9745.65
    >>Mata a |cRXP_ENEMY_Dientes de Oro|r. Despójalo para obtener |cRXP_LOOT_Collar de Bernice|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto 1429/0,176.93,-9857.68,35,0
	.goto 1429/0,176.24,-9902.12,35,0
	.goto 1429/0,223.09,-9916.240,35,0
	.goto 1429/0,259.54,-9865.09,35,0
	.goto 1429/0,215.81,-9830.600,35,0
	.goto 1429/0,176.93,-9857.68,35,0
    >>Mata |cRXP_ENEMY_Tuneladores kóbold|r y |cRXP_ENEMY_Mineros kóbold|r. Despójalos para obtener |cRXP_LOOT_Polvo de oro|r y |cRXP_LOOT_Velas de los kóbolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #completewith next
    .goto 1429/0,102.31,-9787.78,-1
    .goto 1429/0,86.34,-9756.30,-1
    .goto 1429/0,80.79,-9740.56,-1
    .goto 1429/0,141.88,-9794.03,-1
    .goto 1429/0,150.55,-9825.04,-1
    .goto 1429/0,117.23,-9819.95,-1
    .goto 1429/0,135.98,-9775.28,-1
    .goto 1429/0,171.38,-9339.44,30 >>|cRXP_WARN_Realiza un logout skip dentro de la cueva saltando encima de una trituradora, troncos flotantes, cajas o la luz de la vagoneta de la mina; luego desconecta y vuelve a entrar|r
    >>|cRXP_WARN_Alternativamente, corre de vuelta a Villadorada|r
    >>|cRXP_WARN_NOTA: El addon Itemrack actualmente puede causar problemas después de realizar el logout skip, congelando tu interfaz de juego. Asegúrate de desactivar el addon o crea una macro /reload que puedas hacer clic cuando suceda|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_HAZ CLIC AQUÍ para aprender a hacer logout skip|r
step
    #completewith next
    .subzone 87 >> Regresa a Villadorada
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Remy|r
    .turnin 47 >> Entrega la misión Intercambio de polvo de oro
    .accept 40 >> Acepta la misión Un peligro con olor a pescado
    .target Remy "Two Times"
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dughan|r
    .turnin 40 >> Entrega la misión Un peligro con olor a pescado
    .accept 35 >> Acepta la misión Más preocupaciones
    .turnin 62 >> Acepta la misión La Mina Abisal
    .accept 76 >> Acepta la misión La Cantera de Jaspe
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William|r a través de la pared mientras entras en la Posada
    .turnin 60 >> Entrega la misión Las velas de los kóbolds
    .accept 61 >> Acepta la misión Un envío para Ventormenta
    .turnin 107 >> Entrega la misión Una nota para William
    .accept 112 >> Acepta la misión La recolección de algas
    .target William Pestle
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Compra 35|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .vendor >>Vende la Basura
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Compra una|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_a este vendedor|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto 1429/0,34.63,-9466.28,10,0
    .goto 1429/0,47.12,-9456.10,12 >> Sal de la Posada
step
    .goto 1429/0,-215.62,-9390.60,50,0
    .goto 1429/0,-237.83,-9438.28,50,0
    .goto 1429/0,-292.32,-9442.91,50,0
    .goto 1429/0,-342.3,-9391.75,50,0
    .goto 1429/0,-459.62,-9402.63,50,0
    .goto 1429/0,-421.09,-9478.780
    >>Mata |cRXP_ENEMY_Correcorrientes múrloc|r y |cRXP_ENEMY_Múrlocs|r. Despójalos para obtener |cRXP_LOOT_Hoja de alga de cristal|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Correcorrientes múrloc|r tienen|r |T132307:0|t[Velocidad de movimiento aumentada]
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto 1429/0,-604.70,-9188.53,12 >>Entra en la Cantera de Jaspe
step
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-560.97,-9100.58
    >>Sigue el camino del medio de la cueva
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Geománticos kóbold|r lanzan|r |T135812:0|t[Bola de Fuego] |cRXP_WARN_(Lanzamiento a Distancia: Causa unos 30 de daño)|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-609.91,-9186.91,15 >>Sal de la Cantera de Jaspe
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thomas|r
    .turnin 35 >> Entrega la misión Más preocupaciones
    .accept 37 >> Acepta la misión Encuentra a los guardias perdidos
    .accept 52 >> Acepta la misión Proteger la frontera
    .target Guard Thomas
step
    #completewith next
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-984.06,-9457.950,45,0
    .goto 1429/0,-950.05,-9347.31,50,0
    >>Mata a todos los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas y a los |cRXP_ENEMY_Merodeadores|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-986.14,-9335.97
	>>Haz clic en el |cRXP_PICK_cadáver medio comido|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .turnin 37 >> Entrega la misión Encuentra a los guardias perdidos
    .accept 45 >> Acepta la misión Descubre el destino de Rolf
step
    #completewith Bears
    .goto 1429/0,-1198.91,-9350.09,70,0
    >>Mata a todos los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas y a los |cRXP_ENEMY_Merodeadores|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raelen|r
    .accept 5545 >> Acepta la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
    #completewith next
    >>Despoja los |cRXP_PICK_Fardos de madera|r en la base de los árboles
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1233.96,-9224.41,45 >> Viaja hacia el |cRXP_PICK_Cadáver de Rolf|r
    .isOnQuest 45
step
    .goto 1429/0,-1233.96,-9224.41
    >>Mata |cRXP_ENEMY_Rondadores múrloc|r y |cRXP_ENEMY_Batidores múrloc|r que custodian el |cRXP_PICK_Cadáver de Rolf|r
    >>|cRXP_WARN_Es posible que tengas que matar uno y luego reiniciar|r
    >>Ten cuidado ya que los |cRXP_ENEMY_Rondadores múrloc|r lanzan |T132090:0|t[Puñalada] |cRXP_WARN_(Instantáneo Cuerpo a cuerpo: Causa el doble de daño desde atrás) y los |cRXP_ENEMY_Batidores múrloc|r lanzan|r |T135915:0|t[Beber poción menor] |cRXP_WARN_(Lanzamiento sobre sí mismo: Cura aproximadamente 65 de daño)|r
	>>Haz clic en el |cRXP_PICK_Cadáver de Rolf|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .turnin 45 >> Entrega la misión Descubre el destino de Rolf
    .accept 71 >> Acepta la misión Informa a Thomas
step
#loop
	.line Elwynn Forest,80.48,55.18,80.88,53.88,79.68,52.31,80.86,52.17,80.88,53.88,80.48,55.18,79.76,56.70,80.15,60.03,80.24,61.46,81.27,61.59,81.58,62.64,82.79,60.12,83.25,61.12,83.48,59.19,81.77,59.17,80.48,55.18
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1230.14,-9150.34,35,0
	.goto 1429/0,-1271.10,-9147.10,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1232.92,-9251.950,35,0
	.goto 1429/0,-1246.46,-9329.03,35,0
	.goto 1429/0,-1249.58,-9362.13,35,0
	.goto 1429/0,-1285.33,-9365.14,35,0
	.goto 1429/0,-1296.09,-9389.44,35,0
	.goto 1429/0,-1338.09,-9331.11,35,0
	.goto 1429/0,-1354.05,-9354.26,35,0
	.goto 1429/0,-1362.03,-9309.59,35,0
	.goto 1429/0,-1302.68,-9309.12,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
    >>Despoja los |cRXP_PICK_Fardos de madera|r en la base de los árboles
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raelen|r
    .turnin 5545 >> Entrega la misión El cumplimiento del plazo
    .target Supervisor Raelen
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara|r
    .accept 83 >> Acepta la misión Artículos rojos de lino
    .target Sara Timberlain
step
    .goto 1429/0,-1069.44,-9618.58,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34,45,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34
    >>Mata a todos los |cRXP_ENEMY_Osos del bosque jóvenes|r que veas y a los |cRXP_ENEMY_Merodeadores|r
    >>|cRXP_WARN_Haz un 51%+ de daño a los |cRXP_ENEMY_Osos del bosque jóvenes|r y |cRXP_ENEMY_Merodeadores|r, luego atráelos hacia el |cRXP_FRIENDLY_Guardia de Ventormenta|r para matarlos más eficientemente|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan Young Forest Bear
    .mob Prowler
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
    .target Guard Thomas
    .xp <9,1
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thomas|r
    .turnin 52 >> Entrega la misión Proteger la frontera
    .turnin 71 >> Entrega la misión Informa a Thomas
    .accept 39 >> Acepta la misión Entrega el informe de Thomas
    .target Guard Thomas
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto 1429/0,-909.79,-9720.42,40,0
	.goto 1429/0,-848.35,-9714.64,40,0
	.goto 1429/0,-832.73,-9739.87,40,0
	.goto 1429/0,-817.81,-9808.84,40,0
	.goto 1429/0,-841.76,-9853.28,40,0
	.goto 1429/0,-918.81,-9825.51,40,0
	.goto 1429/0,-916.03,-9806.53,40,0
	.goto 1429/0,-946.58,-9767.18,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-942.06,-9716.49,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-909.79,-9720.42,40,0
    >>Mata |cRXP_ENEMY_Bandidos Defias|r. Despójalos para obtener |cRXP_LOOT_Pañuelos de lino rojo|r y las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r]
    >>|cRXP_WARN_Usa las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] para iniciar la misión|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 1972,1,184,1 --Collect Westfall Deed (x1)
    .disablecheckbox
	.mob Defias Bandit
    .isOnQuest 83
step
    #label Deed
    >>|cRXP_WARN_Usa las |T134939:0|t[|cRXP_LOOT_Escrituras de los Páramos de Poniente|r] para iniciar la misión|r
    .accept 184 >> Acepta la misión Las escrituras de Cejade
    .itemcount 1972,1
step
    .goto 1429/0,-890.35,-9780.14
    >>Mata a |cRXP_ENEMY_Princesa|r. Despójala para obtener la |cRXP_LOOT_Collera de latón|r
    >>|cRXP_WARN_Recuerda kitearla usando la valla|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sara|r
    .turnin 83 >> Entrega la misión Artículos rojos de lino
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto 1433/0,-1779.67,-9608.23
    .zone Redridge Mountains >> Viaja hacia las Montañas Crestagrana
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_Sigue cuidadosamente el camino hacia |cRXP_FRIENDLY_Ariena|r. Evita a las |cRXP_ENEMY_Tarántulas|r y a las |cRXP_ENEMY_Crías de dragón Negro|r por el camino|r
    .mob Black Dragon Whelp
    .mob Tarantula
step << skip
    .goto 1433/0,-2234.89,-9435.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
    .target Ariena Stormfeather
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_William|r
    .turnin 112 >> Entrega la misión La recolección de algas
    .accept 114 >> Acepta la misión La fuga
    .target William Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dughan|r y |cRXP_FRIENDLY_Argus|r
    .turnin 39 >> Entrega la misión Entrega el informe de Thomas
    .turnin 76 >> Entrega la misión La Cantera de Jaspe
    .accept 239 >> Acepta la misión El Cuartel de Arroyoeste necesita ayuda
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
    .target +Marshal Dughan
    .goto 1429/0,74.02,-9465.52
    .accept 1097 >> Acepta la misión La tarea de Elmore
    .target +Smith Argus
    .goto 1429/0,87.87,-9456.65
step
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maybell|r dentro
    .turnin 114 >> Entrega la misión La fuga
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_La vieja|r y |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >> Entrega la misión ¡Princesa debe morir!
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .turnin 87 >> Entrega la misión Dientes de Oro
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >> Mata enemigos hasta alcanzar 4225+/6500xp
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >> Mata enemigos hasta alcanzar 4825+/6500xp
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto 1429/0,694.43,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rainer|r
    .turnin 239 >> Entrega la misión El Cuartel de Arroyoeste necesita ayuda
    .target Deputy Rainer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .turnin 184 >> Entrega la misión Las escrituras de Cejade
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .target +Verna Furlbrow
    .goto 1436/0,919.82,-9852.90
step
    #completewith next
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener |cRXP_LOOT_Puñados de avena|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Granjero Saldean|r y luego con |cRXP_FRIENDLY_Salma|r en el interior
    .accept 9 >>Acepta la misión Campos de la muerte
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 22 >> Acepta la misión Pastel de hígado de dentosangre
    .target +Salma Saldean
    .goto 1436/0,1041.97,-10112.13
step
    #completewith next
    >>|cRXP_WARN_Ten MUCHO cuidado con los |cRXP_ENEMY_Vigías de la cosecha|r y los |cRXP_ENEMY_Gólems de la cosecha|r por el camino|r
    .goto 1436/0,1045.12,-10508.80,20 >>Viaja hacia |cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gryan|r, |cRXP_FRIENDLY_Danuvin|r, y luego con |cRXP_FRIENDLY_Lewis|r dentro
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio
    .accept 12 >> Acepta la misión La Milicia Popular
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente
    .target +Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 6181 >> Acepta la misión Mensajero a toda prisa
    .goto 1436/0,1021.60,-10500.61
    .target +Quartermaster Lewis
step
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >> Entrega la misión Mensajero a toda prisa
    .accept 6281 >> Acepta la misión Prosigue hasta Ventormenta
    .target Thor
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
	.target Thor
step
    #completewith next
    .goto 1453/0,532.74,-8863.09,20,0
    .goto 1453/0,599.55,-8811.28,20,0
    .goto 1453/0,613.93,-8833.07,20,0
    .goto 1453/0,620.79,-8859.6,12,0
    .goto 1453/0,625.49,-8857.89,12 >>Viaja hacia |cRXP_FRIENDLY_Morgan|r
step
    .goto 1453/0,625.49,-8857.890
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morgan|r
    .turnin 61,1 >> Entrega la misión Un envío para Ventormenta
    .target Morgan Pestle
step
    .goto 1453/0,635.44,-8863.81
    >>Habla con |cRXP_FRIENDLY_Keldric|r
    .vendor 1257 >> |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Keldric Señalo
step << skip
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Salta encima de la antorcha y déjate caer para meterte debajo de Ventormenta|r
    >>|cRXP_WARN_Con los gráficos de las sombras en "Bueno" o "Bajo", colócate en el medio de los pies de Derek el Dinosaurio (la parte más clara de la tierra) justo antes del vacío azul, luego camina recto hacia adelante|r
    .goto 1453/0,861.95,-8990.47,10 >>Viaja hacia |cRXP_FRIENDLY_Jennea|r
step << skip
    .goto 1453/0,861.95,-8990.47
    >>Habla con |cRXP_FRIENDLY_Jennea|r
    .trainer >> Aprende tus hechizos de clase (Armadura de Escarcha r2, Nova de hielo, Polimorfia, Crear agua r1 y r2)
    >>Coste total: 15 platas
    >>Recuerda que podrías necesitar dinero para Pociones de Sanación (3 platas cada una), Tubo de bronce (8 platas cada uno), y comida de nivel 5 (20 cobres por 5)
    .target Jennea Cannon
step << skip
    #completewith next
    .goto 1453/0,893.0,-9021.93,6 >>Atraviesa el portal verde
step
    #completewith next
    .goto 1453/0,610.44,-8809.04,10,0
    .goto 1453/0,599.01,-8797.84,12,0
    .goto 1453/0,603.85,-8769.42,12,0
    .goto 1453/0,573.74,-8741.37,12,0
    .goto 1453/0,473.05,-8699.06,12,0
    .goto 1453/0,426.4,-8714.66,12,0
    .goto 1453/0,382.04,-8702.11,12 >>Viaja hacia |cRXP_FRIENDLY_Osric|r
step
    .goto 1453/0,382.04,-8702.11
    >>Habla con |cRXP_FRIENDLY_Osric|r
    .turnin 6281 >> Entrega la misión Prosigue hasta Ventormenta
    .accept 6261 >> Acepta la misión Dungar Tragolargo
    .target Osric Strang
step
    #completewith next
    .goto 1453/0,450.74,-8644.11,15,0
    .goto 1453/0,479.91,-8639.81,15,0
    .goto 1453/0,514.05,-8608.26,15,0
    .goto 1453/0,507.6,-8541.66,15,0
    .goto 1453/0,683.43,-8397.08,12,0
    .goto 1453/0,685.18,-8387.13,12 >>Viaja hacia |cRXP_FRIENDLY_Grimand|r
step
    .goto 1453/0,685.18,-8387.13
    >>Habla con |cRXP_FRIENDLY_Grimand|r
    .turnin 1097 >> Entrega la misión La tarea de Elmore
    .accept 353 >> Acepta la misión Una entrega a Pico Tormenta
    .target Grimand Elmore
step
    .goto 1453/0,638.26,-8342.22
    >>Habla con |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >> Viaja al Tranvía Subterráneo
step
    #completewith next
    +|cRXP_WARN_Monta en el Tranvia Subterráneo mientras lanzas repetidamente|r |T132794:0|t[Crear agua r2]
step
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
    >>Habla con |cRXP_FRIENDLY_Monty|r después de tomar el tranvía
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step
    >>Usa la |T133942:0|t[Flauta cazarratas] en las |cRXP_FRIENDLY_Ratas del subterráneo|r en el Tranvía Subterráneo
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Habla con |cRXP_FRIENDLY_Monty|r
--  >>|cRXP_WARN_Wait out the RP|r
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo
    .target Monty
    .zoneskip Stormwind City
step
    .zone Ironforge >> Entra en Forjaz
    .isQuestAvailable 314
step
    .goto 1455/0,-1249.87,-4793.31
    >>Habla con |cRXP_FRIENDLY_Volopiñón|r
    .vendor 5175 >>|cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1455/0,-1266.48,-4749.31,30,0
    .goto 1455/0,-1211.92,-4728.00,30,0
    .goto 1455/0,-1170.41,-4754.48,30,0
    .goto 1455/0,-1152.31,-4821.12,10 >>Viaja hacia |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Habla con |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >> Consigue la ruta de vuelo de Forjaz
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Viaja hacia |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Habla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase (Armadura de Escarcha r2, Nova de hielo, Polimorfia, Crear agua r1 y r2)
    >>Coste total: 15 platas
    >>Recuerda que podrías necesitar dinero para Pociones de Sanación (3 platas cada una), Tubo de bronce (8 platas cada uno), y comida de nivel 5 (20 cobres por 5)
    .target Dink
step
    #completewith next
    .goto 1455/0,-929.04,-4636.72,20,0
    .goto 1455/0,-892.19,-4770.42,20,0
    .goto 1455/0,-874.88,-4849.87,20,0
    >>Entra en el edificio
    .goto 1455/0,-857.01,-4840.69,10 >>Viaja hacia |cRXP_FRIENDLY_Brebefuego|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Habla con |cRXP_FRIENDLY_Brebefuego|r
    .home >> Establece tu Piedra de hogar en Forjaz
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto 1455/0,-974.89,-4902.21,20,0
    .goto 1455/0,-997.66,-4886.49,30 >>Entra en el Banco de Forjaz
step
    .goto 1455/0,-997.66,-4886.49
    >>Habla con |cRXP_FRIENDLY_Bailey|r
    .bankdeposit 4371,16115 >> Deposita los siguientes objetos en el banco:
    >>|T133024:0|t[Tubo de bronce]
    >>|T132763:0|t[Cajón de Osric]
    .target Bailey Stonemantle
step << skip
    .goto 1455/0,-1000.98,-4874.62
    .goto 1426/0,-809.64,-5049.56,10 >>|cRXP_WARN_Súbete a la parte superior de los laterales de la cámara acorazada. Haz logout skip a Dun Morogh|r
    .isQuestAvailable 314
step
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >> Sal de Forjaz
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Human Mage
#name 10-11 ADV Dun Morogh Humano Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none Human Mage
#next 10-12 ADV Costa Oscura 1 Mago AoE

step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Sube por el camino de tierra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_HAZ CLIC AQUÍ si estás teniendo dificultades|r
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Habla con |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Acepta la misión La protección del rebaño
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener el |cRXP_LOOT_Colmillo de Vagash|r
    >>|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia el |cRXP_FRIENDLY_Montaraz de Dun Morogh|r al sur del rancho. Asegúrate de hacerle un 51%+ de daño|r
    >>|cRXP_WARN_Recuerda obtener la experiencia de exploración de Colinas Tundra y atrae al |cRXP_ENEMY_Leopardo de las nieves|r al |cRXP_FRIENDLY_Montaraz de Dun Morogh|r si es conveniente|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Habla con |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Entrega la misión La protección del rebaño
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_Recuerda guardar los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que consigas para subir de nivel|r |T133971:0|t[Cocina] |cRXP_WARN_a 50 después|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Kitea al |cRXP_ENEMY_Oso zarpahelada|r al |cRXP_FRIENDLY_Montaraz de Forjaz|r (asegúrate de causarle un 51%+ de daño para obtener crédito)|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135853:0|t[Garra de hielo] |cRXP_WARN_(Instantáneo Cuerpo a cuerpo: Causa 4 daño adicional cuerpo a cuerpo)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Habla con |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Habla con |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compra 15|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Habla con |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compra 10|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Habla con |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compra 5|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Habla con |cRXP_FRIENDLY_Mehr|r y |cRXP_FRIENDLY_Petrocejas|r
    .accept 433 >> Acepta la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >> Acepta la misión ¡Malditos troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r
    >>|cRXP_WARN_No te desvíes para matarlos|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Entra en la cueva
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Mata |cRXP_ENEMY_Cascahuesos Comepiedras|r dentro de la cueva
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132154:0|t[Derribo] |cRXP_WARN_(Instantáneo Cuerpo a cuerpo: Aturde durante 2 segundos)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Habla con |cRXP_FRIENDLY_Frast|r
    .vendor >> Vende la Basura
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Habla con |cRXP_FRIENDLY_Petrocejas|r y |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Entrega la misión El servidor público
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Habla con |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_HAZ CLIC AQUÍ si tienes dificultades|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Toma el atajo que sube detrás de |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Kitea a los |cRXP_ENEMY_Emboscadores Comepiedras|r cercanos a los |cRXP_FRIENDLY_Montaraces de Forjaz|r que patrullan el camino (asegúrate de hacerles 51%+ de daño para recibir el crédito)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Kitea al |cRXP_ENEMY_Jabalí del risco cicatríceo|r a través del túnel
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Habla con |cRXP_FRIENDLY_Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r del suelo
    >>|cRXP_WARN_ASEGÚRATE de tener un espacio libre en el inventario. |cRXP_ENEMY_Sarnagarra|r no bajará si no aceptas la siguiente misión|r
    >>|cRXP_WARN_RECUERDA Ve kiteando a |cRXP_ENEMY_Sarnagarra|r de vuelta hacia |cRXP_FRIENDLY_Podomartillo|r
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener la |cRXP_LOOT_Garra sarnosa|r
    >>|cRXP_WARN_Kitéalo todo el camino hasta |cRXP_FRIENDLY_Podomartillo|r (asegúrate de hacerle 51%+ de daño para recibir el crédito)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Habla con |cRXP_FRIENDLY_Podomartillo|r
    .turnin 417,1 >> Entrega la misión Vengar al piloto
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Regresa a través del túnel
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Kitea al |cRXP_ENEMY_Jabalí del risco cicatríceo|r por el camino
    .goto 1426/0,-2347.72,-5483.62,20 >>Haz el atajo de la montaña. Recuerda caer con cuidado
    .mob Scarred Crag Boar
step
    .goto 1432/0,-2518.11,-5625.83
    >>Kitea al |cRXP_ENEMY_Jabalí del risco cicatríceo|r a través del túnel
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .zone Loch Modan >> Viaja a través del túnel hacia Loch Modan
    .mob Scarred Crag Boar
step
    #completewith Rugelfuss
    +|cRXP_WARN_Intenta kitear a un |cRXP_ENEMY_Oso negro mayor|r o a una |cRXP_ENEMY_Rondadora del bosque|r cercana al Búnker contigo (recuerda infligir 51%+ de daño para obtener crédito)|r
    >>|cRXP_WARN_Despoja los |cRXP_ENEMY_Osos negros mayores|r para obtener su|r |T134027:0|t[|cRXP_LOOT_Carne de oso|r]
    >>|cRXP_WARN_Despoja a las |cRXP_ENEMY_Rondadoras del bosque|r para obtener su|r |T134437:0|t[|cRXP_LOOT_Icor de araña|r]
    >>|cRXP_FRIENDLY_Pedernal|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravagau|r, y |cRXP_FRIENDLY_Muroplof|r no te asistirán|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    >>Habla con |cRXP_FRIENDLY_Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entra en el Búnker. Ve al piso superior
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Habla con |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Acepta la misión La amenaza trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Vuelve a entrar al túnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_HAZ CLIC AQUÍ si tienes problemas|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Logout skip saltando del brasero del túnel a Thelsamar|r
    .isOnQuest 267
step
    #completewith next
    .subzone 144 >> Viaja a Thelsamar
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Habla con |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrulla a lo largo del camino principal de Thelsamar|r
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Habla con |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
step
    .zone Ironforge >> Viaja a Forjaz
    .isOnQuest 416
step << skip
    #completewith next
    .goto 1455/0,-1060.12,-4883.59,20,0
    .goto 1455/0,-1016.16,-4946.11,20,0
    .goto 1455/0,-980.03,-4971.49,10 >>|cRXP_WARN_Viaja hacia el punto del Logout Skip|r
step << skip
    .goto 1455/0,-980.03,-4971.49
    .zone Dun Morogh >>|cRXP_WARN_Posiciona tu personaje hasta que parezca que está flotando en el borde de la barandilla de metal. Logout skip a Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Gnome Mage
#name 1-10 ADV Dun Morogh Gnomo Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none Gnome Mage
#next 10-12 ADV Costa Oscura 1 Mago AoE


step << !Gnome Mage
    #season 2
    #completewith next
    +En Season of Discovery, NO deberías empezar fuera de la zona de inicio de tu raza como Mago, ya que no podrás obtener tu primera runa aquí (|T133816:0|t[Grabar guantes - Lanza de hielo])
step
    #completewith next
    +Has seleccionado la guía Avanzada. Esta es la guía más rápida para la clase más rápida del juego (Mago Alianza). Por ello, habrá muchas mecánicas específicas, así como pulleos AoE muy difíciles. ¡Persevera mientras aprendes! ¡Buena suerte!
step
    #completewith Adlin
	.destroy 6948 >> Elimina la |T134414:0|t[Piedra de hogar] de tus bolsas, ya que ya no se necesita
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .accept 179 >> Acepta la misión Los enanos modistos
    .target Sten Stoutarm
step
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
    >>Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r. Despójalos para obtener su |cRXP_LOOT_Carne de lobo dura|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #season 0
    #sticky
    #label Adlin
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r extra si no tienes suficiente dinero|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Adlin Rumborgullo|r
    >>Vende la Basura
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Lobos jóvenes pulgosos|r extra si no tienes suficiente dinero|r
    >>|cRXP_WARN_Asegúrate de guardar 10 cobres para después|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r y |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 179,3 >> Entrega la misión Los enanos modistos
    .accept 233 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .accept 3114 >> Acepta la misión Memorándum glífico
    .target +Sten Stoutarm
    .goto 1426/0,328.18,-6214.85
    .accept 170 >> Acepta la misión Una nueva amenaza
    .goto 1426/0,338.87,-6216.46
    .target +Balir Frosthammer
step
    #xprate >1.09
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sten Brazorrecio|r
    .turnin 179,3 >> Entrega la misión Los enanos modistos
    .accept 233 >> Acepta la misión Entrega de correo en el Valle de Crestanevada
    .accept 3114 >> Acepta la misión Memorándum glífico
    .target Sten Stoutarm
step
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
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
    .isOnQuest 170
step
    #season 2
    .goto 1426/0,485.48,-6259.21
    >>Abre el |cRXP_PICK_Baúl Comepiedras|r del suelo. Despójalo para obtener las |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r
    >>|cRXP_WARN_NOTA: No podrás aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo] |cRXP_WARN_aquí porque solo puedes obtener un|r |T133736:0|t[Manual de comprensiónr] |cRXP_WARN_en la zona de inicio de tu raza|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << Gnome
    #season 2
    .train 401760 >>|cRXP_WARN_Usa las|r |T134939:0|t|cRXP_LOOT_[Notas de hechizo: ALZO EN HIELAD]|r |cRXP_WARN_para aprender|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >> Entra en Yunquemar
step
    #season 2
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marryk Nurribit|r en el interior
    .turnin 3114 >> Entrega la misión Memorándum glífico << Gnome
    .accept 77667 >> Acepta la misión Investigación sobre hechizos << Gnome
    .turnin 77667 >> Entrega la misión Investigación sobre hechizos << Gnome
    .train 1459 >> Aprende |T135932:0|t[Intelecto Arcano]
    .target Marryk Nurribit
step << Gnome
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >> |cRXP_WARN_Equipa los|r |T132961:0|t[Guantes de paño andrajoso]
    .use 711
    .train 401760,1
step << Gnome
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Graba tus|r |T132961:0|t[Guantes de paño andrajoso] con|r |T133816:0|t[Grabar guantes - Lanza de hielo]
    .train 401760,1
step
    #season 2
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >> Sal de Yunquemar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
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
    .isOnQuest 170
step
    #label Talin
    .goto 1426/0,688.98,-6222.47
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
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talin Ojo Ávido|r
    .turnin 183 >> Entrega la misión Cazador de jabalíes
    .target Talin Keeneye
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    .turnin 234 >> Entrega la misión Entrega de correo en el Valle de Crestanevada
    .accept 182 >> Acepta la misión La cueva de los trols
    .target Grelin Whitebeard
step
    #completewith next
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,485.63,-6494.56,30 >>Entra en la cueva
    .isOnQuest 182
step
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarch|r dentro de la cueva
    >>|cRXP_WARN_Despeja el camino hasta justo antes de la sala del Lago Congelado|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,408.80,-6498.83,50,0
    .goto 1426/0,457.56,-6531.66,40,0
    .goto 1426/0,532.42,-6448.26,40,0
    .goto 1426/0,466.42,-6460.41,40,0
    .goto 1426/0,524.05,-6516.56,40,0
    .goto 1426/0,532.42,-6448.26
    >>Mata |cRXP_ENEMY_Crías de trol Peloescarcha|r en el camino de regreso a |cRXP_FRIENDLY_Grelin Barbablanca|r
    .complete 182,1--Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << skip
    #completewith next
    +|cRXP_WARN_Si no sabes cómo hacer un logout skip, mira este vídeo primero|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_HAZ CLIC AQUÍ para aprender a hacer logout skip|r
step << skip
    >>Habla con |cRXP_FRIENDLY_Grelin Barbablanca|r y |cRXP_FRIENDLY_Nori Rumborgullo|r
    >>|cRXP_WARN_Ten en cuenta que la misión "Entrega una infusión de albaza hirviendo" tiene un temporizador de 5 minutos|r
    >>|cRXP_WARN_Asegúrate de que tienes 3 espacios libres en el inventario para estas entregas/aceptaciones de misiones|r
    .turnin 182,4 >> Entrega la misión La cueva de los trols
    .accept 218 >> Acepta la misión El diario robado
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    >>Habla con |cRXP_FRIENDLY_Grelin Barbablanca|r
    >>|cRXP_WARN_Asegúrate de que tienes 3 espacios libres en el inventario para estas entregas/aceptaciones de misiones|r
    .turnin 182,4 >> Entrega la misión La cueva de los trols
    .accept 218 >> Acepta la misión El diario robado
    .goto 1426/0,567.09,-6362.99
    .target +Grelin Whitebeard
step
    .goto 1426/0,485.63,-6494.56,40,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,340.84,-6493.24,10 >>|cRXP_WARN_Entra en la Cueva. Corre a través del camino que despejaste (sin pelear si es posible) hacia el Lago Congelado|r
    .isOnQuest 218
step
    .goto 1426/0,300.94,-6509.00
    >>|cRXP_WARN_Mata a la |cRXP_ENEMY_Cría de trol Peloescarcha|r que está enfrente de ti|r
    >>Mata a |cRXP_ENEMY_Grik'nir el Frío|r. Despójalo para obtener el |cRXP_LOOT_Diario de Grelin Barbablanca|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T135849:0|t[Choque de Escarcha] |cRXP_WARN_(A distancia Instantáneo: Causa 10 daño de Escarcha y reduce la velocidad de movimiento un 50% durante 8 segundos)|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << skip
    #completewith Rybrad
    #label LogoutSkip1
    .goto 1426/0,342.81,-6487.330
    .goto 1426/0,336.40,-6164.25,30 >>|cRXP_WARN_Posiciona tu personaje hasta que parezca que estás flotando en el borde del acantilado sobre el Lago Congelado, luego haz un logout skip de vuelta a Yunquemar|r
    .isOnQuest 218
step
    >>Habla con |cRXP_FRIENDLY_Grelin Barbablanca|r y |cRXP_FRIENDLY_Nori Rumborgullo|r
    .turnin 218 >> Entrega la misión El diario robado
    .accept 282 >> Acepta la misión Las observaciones de Senir
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >> Acepta la misión Entrega una infusión de albaza hirviendo
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto 1426/0,384.18,-6143.90,20,0
    .goto 1426/0,392.06,-6123.87,10 >>Entra en Yunquemar
    .isOnQuest 218,3364
step
    #label Rybrad
    .goto 1426/0,390.58,-6101.21
    >>Habla con |cRXP_FRIENDLY_Rybrad Riberahiel|r
    .vendor >> Vende la Basura
    .target Rybrad Coldbank
    .isOnQuest 218,3364
step
    >>Habla con |cRXP_FRIENDLY_Durnan Cortapieles|r y |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3364 >> Entrega la misión Entrega una infusión de albaza hirviendo
    .accept 3365 >> Acepta la misión Devuelve la taza
    .goto 1426/0,385.16,-6056.23
    .target +Durnan Furcutter
    .turnin 3114 >> Entrega la misión Memorándum glífico
    .trainer >> Aprende los hechizos de tu clase (Intelecto Arcano, Descarga de Escarcha)
    .goto 1426/0,388.17,-6056.10
    .target +Marryk Nurribit
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto 1426/0,338.87,-6216.46
    >>Habla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170,3 >> Entrega la misión Una nueva amenaza
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .waypoint 1426,27.858,76.482,50,0
    .waypoint 1426,28.946,77.153,50,0
    .waypoint 1426,29.716,77.605,50,0
    .waypoint 1426,30.727,76.831,50,0
    .waypoint 1426,32.814,75.221,50,0
    .waypoint 1426,31.138,74.048,50,0
    .waypoint 1426,30.077,74.479,50,0
    .waypoint 1426,29.280,75.500,50,0
    >>|cRXP_WARN_Mata a TODOS los |cRXP_ENEMY_Troggs Comepiedras|r que veas y a los|r |cRXP_ENEMY_Troggs Comepiedras fornidos|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label StolenJ
    >>Habla con |cRXP_FRIENDLY_Nori Rumborgullo|r
    -- >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r and |cRXP_FRIENDLY_Nori Pridedrift|r
    -- .turnin 218,2 >> Turn in The Stolen Journal
    -- .accept 282 >> Accept Senir's Observations
    -- .goto 1426/0,567.09,-6362.99
    -- .target +Grelin Whitebeard
    .turnin 3365 >> Entrega la misión Devuelve la taza
    .goto 1426/0,571.82,-6371.10
    .target +Nori Pridedrift
step
    #xprate <1.1
    #requires TroggEnd
    .goto 1426/0,338.87,-6216.46
    >>Habla con |cRXP_FRIENDLY_Balir Martilloescarcha|r
    .turnin 170,3 >> Entrega la misión Una nueva amenaza
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #requires TroggEnd
    #label Observations
    >>Habla con el |cRXP_FRIENDLY_Montaraz Thalos|r y |cRXP_FRIENDLY_Manit Piñomuelle|r
    .turnin 282 >> Entrega la misión Las observaciones de Senir
    .accept 420 >> Acepta la misión Las observaciones de Senir
    .goto 1426/0,153.00,-6235.86
    .target +Mountaineer Thalos
    .accept 2160 >> Acepta la misión Suministros para Tannok
    .goto 1426/0,134.97,-6248.96
    .target +Hands Springsprocket
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >> Abandona la misión Una nueva amenaza
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >> Atraviesa el Desfiladero de Crestanevada
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto 1426/0,3.97,-5943.61,40,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-70 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto 1426/0,-67.94,-5908.48,30,0
    .goto 1426/0,-162.50,-5822.79,45 >> |cRXP_WARN_Causa 51%+ daño a los |cRXP_ENEMY_Leopardos de las nieves juveniles|r y a los |cRXP_ENEMY_Osos negros jóvenes|r cercanos, luego atráelos hacia el |cRXP_FRIENDLY_Montaraz de Forjaz|r para matarlos más eficientemente|r
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto 1426/0,-337.34,-5703.93,50,0
    .goto 1426/0,-371.81,-5605.43,50,0
    .goto 1426/0,-464.45,-5573.78,20 >>Viaja hacia |cRXP_FRIENDLY_Tharek|r
step
    .goto 1426/0,-464.45,-5573.78
    >>Habla con |cRXP_FRIENDLY_Tharek|r
    .accept 400 >> Acepta la misión Herramientas para Brasacerada
    .target Tharek Blackstone
step
    #label StockingJ
    .goto 1426/0,-632.15,-5466.540
    >>Kitea |cRXP_ENEMY_Osos negros jóvenes|r por el camino |cRXP_WARN_(asegúrate de causar 51%+ daño para obtener crédito)|r
    >>Habla con |cRXP_FRIENDLY_Bramiz|r
    .accept 317 >> Acepta la misión Los suministros del reactor a vapor
    .mob Young Black Bear
    .target Pilot Bellowfiz
step
    >>Habla con |cRXP_FRIENDLY_Roscapiedra|r, |cRXP_FRIENDLY_Beldin|r, y |cRXP_FRIENDLY_Loslor|r
    >>|cRXP_WARN_Kitea a los |cRXP_ENEMY_Osos negros jóvenes|r hacia el |cRXP_FRIENDLY_Montaraz de Forjaz|r si atraes alguno (asegúrate de hacer 51%+ de daño para obtener crédito)|r
    .accept 313 >> Acepta la misión El Cubil Pardo
    .target +Pilot Stonegear
    .goto 1426/0,-641.80,-5473.18
    .turnin 400 >> Entrega la misión Herramientas para Brasacerada
    .target +Beldin Steelgrill
    .goto 1426/0,-682.58,-5488.87
    .accept 5541 >> Acepta la misión Municiones para Estruendo
    .vendor >> Vende la Basura
    .goto 1426/0,-664.55,-5499.710
    .target +Loslor Rudge
    .isQuestAvailable 312
step
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-70 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56
    >>Mata |cRXP_ENEMY_Osos negros jóvenes|r y |cRXP_ENEMY_Osos zarpahelada|r. Despójalos para obtener su |cRXP_LOOT_Pelaje de oso grueso|r
    >>|cRXP_WARN_Kitea a los |cRXP_ENEMY_Osos negros jóvenes|r y |cRXP_ENEMY_Osos zarpahelada|r hacia los |cRXP_FRIENDLY_Montaraces de Forjaz|r (asegúrate de hacer 51%+ de daño para obtener crédito)|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135853:0|t[Garra de hielo] |cRXP_WARN_(Instantáneo Cuerpo a cuerpo: Causa 4 daño adicional cuerpo a cuerpo)|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
    .mob Ice Claw Bear
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Jabalíes del risco grandes|r. Despójalos para obtener |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r y |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-70 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-632.15,-5466.540
    >>Habla con |cRXP_FRIENDLY_Bramiz|r
    .turnin 317 >> Entrega la misión Los suministros del reactor a vapor
    .accept 318 >> Acepta la misión La tajada
    .target Pilot Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
    .xp 5+2690 >> Mata enemigos hasta alcanzar 2690+/2800xp
    .mob Young Black Bear
    .mob Crag Boar
step
    #completewith InnLS1
    +|cRXP_WARN_Desequipa tu actual|r |T135148:0|t[Bastón]
    -- +|cRXP_WARN_Remember the Inn Logout Skip soon. Unequip your current|r |T135148:0|t[Staff]
    -- >>|cRXP_WARN_NOTE: Itemrack currently can cause problems after logout skipping where your ingame UI freezes. Make sure to disable the addon or make a /reload command you can click when/if that happens|r
step
    #completewith Tannok
    .cast 1459 >> Renueva |T135932:0|t[Intelecto Arcano]
    .cast 168 >> Renueva |T135843:0|t[Armadura de Escarcha]
step
    .goto 1426/0,-504.29,-5596.24
    >>Habla con |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >> Acepta la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Entra
step
    .goto 1426/0,-523.35,-5590.82
    >>Habla con |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Entrega la misión Suministros para Tannok
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Entra
step
    #sticky
    #label Tannok
    .goto 1426/0,-523.35,-5590.82,0,0
    >>Habla con |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >> Entrega la misión Suministros para Tannok
    .target Tannok Frosthammer
step
    .goto 1426/0,-537.29,-5587.04
    >>Habla con |cRXP_FRIENDLY_Magis|r en el piso de arriba
    .trainer >> Aprende los hechizos de tu clase (Bola de Fuego R2, Explosión de Fuego)
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    .home >> Establece tu Piedra de hogar en Destilería Cebatruenos
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto 1426/0,-504.29,-5596.24
    >>Habla con |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra 20|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra 15|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra 10|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra 5|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra 20|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra 15|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra 10|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra 5|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a este vendedor|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step << skip
    #completewith SenirO
    .goto 1426/0,-535.32,-5604.120,-1
    .goto 1426/0,-519.07,-5679.96,35 >>|cRXP_WARN_Salta encima de los barriles en la pared detrás de |cRXP_FRIENDLY_Belm|r. Haz logout skip a Kharanos|r
step
    #sticky
    #label Golorn
    .goto 1426/0,-501.34,-5640.89,-1
    >>Habla con |cRXP_FRIENDLY_Golorn|r
    >>|cRXP_BUY_Compra un|r |T135637:0|t[Cuchillo para desollar] |cRXP_BUY_a este vendedor|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto 1426/0,-499.17,-5644.37,-1
    >>Habla con |cRXP_FRIENDLY_Senir|r
    .turnin 420 >> Entrega la misión Las observaciones de Senir
    .target Senir Whitebeard
step
    #completewith next
    #requires Golorn
    +Equipa el |T135637:0|t[Cuchillo para desollar]
    .use 7005
    .itemcount 7005,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.2
step
    #requires Golorn
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto 1426/0,-294.49,-5676.350,10,0
	.goto 1426/0,-261.00,-5666.83,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-261.98,-5565.70,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-294.49,-5676.350,10,0
    >>Mata |cRXP_ENEMY_Wendigos jóvenes|r y |cRXP_ENEMY_Wendigos|r. Despójalos para obtener sus |cRXP_LOOT_Crines de Wendigo|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135848:0|t[Aliento de Escarcha] |cRXP_WARN_(Lanzamiento Cuerpo a cuerpo : Causa 6-10 daño de Escarcha) y tienen aumentada la|r |T135849:0|t[Resistencia a la Escarcha]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto 1426/0,-371.32,-5746.94
    >>Abre el |cRXP_PICK_Cajón de munición|r del suelo. Despójalo para obtener la |cRXP_LOOT_Munición de Estruendo|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Leopardos de las nieves juveniles|r por el camino
    >>Despoja a los |cRXP_ENEMY_Jabalíes del risco|r para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes del risco|r lanzan|r |T132337:0|t[Carga] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-70 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto 1426/0,-201.51,-6015.520,20 >>Viaja hacia |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Mata |cRXP_ENEMY_Jabalíes del risco|r y |cRXP_ENEMY_Leopardos de las nieves juveniles|r por el camino
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes del risco|r lanzan|r |T132337:0|t[Carga] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-70 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .goto 1426/0,-201.51,-6015.520,20 >>Viaja hacia |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto 1426/0,-197.47,-5920.63,45,0
    .goto 1426/0,-201.51,-6015.520,20 >>Viaja hacia |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto 1426/0,-201.51,-6015.520
    >>Habla con |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >> Entrega la misión Municiones para Estruendo
    .vendor >> Vende la Basura
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
    >>|cRXP_WARN_Causa 51%+ daño a los |cRXP_ENEMY_Leopardos de las nieves juveniles|r y a los |cRXP_ENEMY_Osos negros jóvenes|r cercanos, luego atráelos hacia el |cRXP_FRIENDLY_Montaraz de Forjaz|r para matarlos más eficientemente|r
    >>Mata |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco|r por el camino. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco|r lanzan|r |T132337:0|t[Carga] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-70 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .xp 7 >> Mata enemigos hasta subir al Nivel 7 de camino hacia |cRXP_FRIENDLY_Tundra|r antes de hablar con él
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestAvailable 384
step
    #completewith next
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
    >>|cRXP_WARN_Causa 51%+ daño a los |cRXP_ENEMY_Leopardos de las nieves juveniles|r y a los |cRXP_ENEMY_Osos negros jóvenes|r cercanos, luego atráelos hacia el |cRXP_FRIENDLY_Montaraz de Forjaz|r para matarlos más eficientemente|r
    >>Mata |cRXP_ENEMY_Jabalíes del risco grande|r y |cRXP_ENEMY_Jabalíes del risco|r de camino
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco|r lanzan|r |T132337:0|t[Carga] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-70 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .xp 7 >> Mata enemigos hasta subir al Nivel 7 de camino hacia |cRXP_FRIENDLY_Tundra|r antes de hablar con él
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestTurnedIn 384
step
    #label TundraOne
    .goto 1426/0,99.51,-5573.25
    >>Habla con |cRXP_FRIENDLY_Tundra|r
    .accept 312 >> Acepta la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    +|cRXP_WARN_Kitea al |cRXP_ENEMY_Oso zarpahelada|r hacia|r |cRXP_FRIENDLY_Rejold|r
    >>|cRXP_WARN_Intenta aceptar la misión antes de que el |cRXP_ENEMY_Oso zarpahelada|r muera para obtener crédito de misión|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135853:0|t[Garra de hielo] |cRXP_WARN_(Instantáneo Cuerpo a cuerpo: Causa 4 daño adicional cuerpo a cuerpo)|r
    >>|cRXP_WARN_Asegúrate de causar 51%+ de daño para recibir crédito|r
    .mob Ice Claw Bear
step
    >>Habla con |cRXP_FRIENDLY_Rejold|r y |cRXP_FRIENDLY_Marleth|r
    .turnin 318 >> Entrega la misión La tajada
    .accept 319 >> Acepta la misión Un favor a cambio de un barril de tajada
    .accept 315 >> Acepta la misión La cerveza perfecta
    .target +Rejold Barleybrew
    .goto 1426/0,315.23,-5378.55
    .accept 310 >> Acepta la misión Rivales acérrimos
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step
    .goto 1426/0,302.42,-5387.74,0,0
    >>Habla con |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compra hasta 10 más|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto 1426/0,302.42,-5387.74,0,0
    >>Habla con |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compra hasta 5 más|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .itemcount 1179,5
    .money <0.0225
    .isOnQuest 319
step
    #completewith CaveLS
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r de camino hacia la Cueva. Despoja a los |cRXP_ENEMY_Jabalíes del risco ancianos|r para obtener |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Enfócate en los|r |cRXP_ENEMY_Leopardos de las nieves|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Osos zarpahelada|r lanzan|r |T135853:0|t[Garra de hielo] |cRXP_WARN_(Cuerpo a cuerpo Instantáneo: Causa 4 puntos de daño cuerpo a cuerpo adicionales), y los |cRXP_ENEMY_Jabalíes del risco ancianos|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Instantáneo sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-70 puntos de daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .mob +Elder Crag Boar
    .isQuestAvailable 384
step
    #completewith CaveLS
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r de camino a la Cueva
    >>|cRXP_WARN_Enfócate en los|r |cRXP_ENEMY_Leopardos de las nieves|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Osos zarpahelada|r lanzan|r |T135853:0|t[Garra de hielo] |cRXP_WARN_(Cuerpo a cuerpo Instantáneo: Causa 4 puntos de daño cuerpo a cuerpo adicionales), y los |cRXP_ENEMY_Jabalíes del risco ancianos|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Instantáneo sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-70 puntos de daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step << skip
    #completewith next
    .goto 1426/0,-69.42,-5281.36,30 >> Entra en la cueva
    .isOnQuest 319
step << skip
    #label CaveLS
    .goto 1426/0,-85.18,-5300.74
    .goto 1426/0,-519.07,-5679.96,30 >> |cRXP_WARN_Haz un logout skip dentro de la cueva para teletransportarte de vuelta a Kharanos|r
    .isOnQuest 319
step
    .goto 1426/0,-499.17,-5644.37
    >>Habla con |cRXP_FRIENDLY_Senir|r
    .accept 287 >> Acepta la misión Poblado Peloescarcha
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-522.02,-5585.07,12 >>Entra
step
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_y una|r |T132800:0|t[Cerveza del Trueno] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Cerveza del Trueno] |cRXP_BUY_a este vendedor|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto 1426/0,-537.29,-5597.55,8,0
    .goto 1426/0,-548.13,-5598.54,8 >>Baja las escaleras
step
    #completewith next
    .goto 1426/0,-544.68,-5606.09
    >>Habla con |cRXP_FRIENDLY_Jarven|r abajo
    .turnin 308 >> Entrega la misión Distraer a Jarven
    .target Jarven Thunderbrew
step
    .goto 1426/0,-548.13,-5607.400
    >>Pasa el ratón continuamente sobre la |cRXP_PICK_Barrica de Cerveza del Trueno custodiada|r en el piso de abajo. Espera a que la |cRXP_PICK_Barrica de Cerveza del Trueno custodiada|r pase a estar sin Custodia
    >>Haz clic en la |cRXP_PICK_Barrica de Cerveza del Trueno sin vigilar|r
    .turnin 310 >> Entrega la misión Rivales acérrimos
    .accept 311 >> Acepta la misión Regresa junto a Marleth
step
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra hasta 10 más|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra hasta 5 más|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto 1426/0,-522.02,-5585.07,12,0
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-504.29,-5596.24,20 >>Sal de la Posada
    .isOnQuest 287
step
    .goto 1426/0,-504.29,-5596.24
    >>Habla con |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto 1426/0,-495.43,-5434.04,40,0
    +|cRXP_WARN_Inflige 51%+ de daño a los |cRXP_ENEMY_Lobos rastreadores de las nieves|r, |cRXP_ENEMY_Lobos invernales|r y |cRXP_ENEMY_Osos negros jóvenes|r cercanos. Atráelos al |cRXP_FRIENDLY_Montaraz de Forjaz|r para matarlos más eficientemente|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Lobos rastreadores de las nieves|r tienen|r |T132150:0|t[Rango de amenaza aumentado] |cRXP_WARN_(El rango de amenaza aumenta unos 8 metros)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob Young Black Bear
    .target Ironforge Mountaineer
step
    .goto 1426/0,-311.23,-5360.16,25,0
    .goto 1426/0,-282.18,-5363.45,45 >> Sube por la rampa hacia los |cRXP_ENEMY_Videntes Peloescarcha|r
    .isOnQuest 315
step
    #requires SeerRamp
    #completewith next
    >>Mata al |cRXP_ENEMY_Rebanacabezas Peloescarcha|r que patrulla
    >>|cRXP_WARN_Ten cuidado, ya que patrulla entre todos los|r |cRXP_ENEMY_Videntes Peloescarcha|r estáticos
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(A distancia: Causa 8-15 de daño)|r
    .complete 287,1 --Kill Frostmane Headhunters (5)
    .mob Frostmane Headhunter
step
    #label ShimmerB
    .goto 1426/0,-269.86,-5370.34,40,0
    .goto 1426/0,-271.83,-5342.43,40,0
    .goto 1426/0,-250.16,-5306.32,40,0
    .goto 1426/0,-230.46,-5333.90,20,0
    .goto 1426/0,-240.81,-5354.91,30,0
    .goto 1426/0,-221.11,-5349.99,30,0
    .goto 1426/0,-224.06,-5372.31,40,0
    .goto 1426/0,-184.66,-5283.66,40,0
    .goto 1426/0,-151.66,-5186.15,20,0
    .goto 1426/0,-164.96,-5114.900,20,0
    .goto 1426/0,-258.54,-5046.93
    >>Mata |cRXP_ENEMY_Videntes Peloescarcha|r. Despójalos para obtener sus |cRXP_LOOT_Cardaluz|r
    >>Abre las |cRXP_PICK_Cestas de Cardaluz|r en el suelo. Despójalas para obtener |cRXP_LOOT_Cardaluz|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T136048:0|t[Descarga de relámpagos] |cRXP_WARN_(Lanzamiento a distancia: Inflige 15-30 daño de Naturaleza)|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    #completewith IBCave
    >>Mata |cRXP_ENEMY_Jabalíes del risco grandes|r y |cRXP_ENEMY_Jabalíes del risco ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Large Crag Boar
    .mob Elder Crag Boar
step
    #completewith next
    .goto 1426/0,-190.08,-5427.80,40,0
    .goto 1426/0,-55.63,-5580.48,40,0
    >>Mata a los dos |cRXP_ENEMY_Jabalíes del risco anciano|r de camino hacia la cueva (si están)
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 25-85 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob Elder Crag Boar
step
    #label IBCave
    .goto 1426/0,-62.03,-5640.56,50 >>Viaja hacia la Cueva
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_Tras despojarlo, recuerda hacer saltos con giro frente a sus ataques para evitar el Atontamiento y salta al tronco del árbol para evadirlo temporalmente|r
step
    .goto 1426/0,-94.53,-5647.79
    >>|cRXP_WARN_Si el |cRXP_ENEMY_Viejo Barbahielo|r está en la cueva, kitéalo por el lado de la cueva, luego todo el camino hacia arriba. Espera a que se acerque, luego salta hacia atrás hacia abajo, entonces ve hacia el fondo de la cueva|r
    >>Abre la |cRXP_PICK_Estantería de carne de MacGrann|r del suelo. Despójala para obtener las |cRXP_LOOT_Carnes curadas de MacGrann|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_HAZ CLIC AQUÍ Si tienes dificultades|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto 1426/0,99.51,-5573.25
    >>Habla con |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >> Entrega la misión La reserva robada de Tundra MacGrann
    .target Tundra MacGrann
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r. Despoja a los |cRXP_ENEMY_Jabalíes del risco ancianos|r para obtener |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Recuerda kitear un |cRXP_ENEMY_Oso zarpahelada|r o un |cRXP_ENEMY_Leopardo de las nieves|r de regreso al PNJ de la misión si es posible|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Osos zarpahelada|r lanzan|r |T135853:0|t[Garra de hielo] |cRXP_WARN_(Cuerpo a cuerpo Instantáneo: Causa 4 puntos de daño cuerpo a cuerpo adicionales), y los |cRXP_ENEMY_Jabalíes del risco ancianos|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Instantáneo sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 35-85 puntos de daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .mob Elder Crag Boar
    .isQuestAvailable 384
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Mata |cRXP_ENEMY_Osos zarpahelada|r, |cRXP_ENEMY_Jabalíes del risco ancianos|r y |cRXP_ENEMY_Leopardos de las nieves|r
    >>|cRXP_WARN_Recuerda kitear un |cRXP_ENEMY_Oso zarpahelada|r o un |cRXP_ENEMY_Leopardo de las nieves|r de regreso al PNJ de la misión si es posible|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Osos zarpahelada|r lanzan|r |T135853:0|t[Garra de hielo] |cRXP_WARN_(Cuerpo a cuerpo Instantáneo: Causa 4 puntos de daño cuerpo a cuerpo adicionales), y los |cRXP_ENEMY_Jabalíes del risco ancianos|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Instantáneo sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 35-85 puntos de daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    >>Habla con |cRXP_FRIENDLY_Rejold|r y |cRXP_FRIENDLY_Marleth|r
    .turnin 315,1 >> Entrega la misión La cerveza perfecta
    .accept 413 >> Acepta la misión Cerveza negra Brillante
    .turnin 319 >> Entrega la misión Un favor a cambio de un barril de tajada
    .accept 320 >> Acepta la misión Regresa junto a Bramiz
    .goto 1426/0,315.28,-5378.39
    .turnin 311 >> Entrega la misión Regresa junto a Marleth
    .goto 1426/0,315.42,-5372.02
    .target Rejold Barleybrew
step
    .goto 1426/0,302.42,-5387.74
    >>Habla con |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compra hasta 10 más|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto 1426/0,302.42,-5387.74
    >>Habla con |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compra hasta 5 más|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Mata |cRXP_ENEMY_Jabalíes del risco ancianos|r. Despójalos para obtener sus |cRXP_LOOT_Costillas de jabalí del risco|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 35-85 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Elder Crag Boar
step
    #completewith Explore
    .goto 1426/0,564.92,-5503.65,35,0
    .goto 1426/0,573.79,-5538.78,12 >>Entra en la cueva por el lado norte
step
    .goto 1426/0,605.80,-5545.020,40,0
    .goto 1426/0,654.07,-5563.40
    >>Mata |cRXP_ENEMY_Rebanacabezas Peloescarcha|r dentro de la cueva
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(A distancia: Causa 8-15 de daño)|r
    >>|cRXP_WARN_Ten cuidado con el |cRXP_ENEMY_Rebanacabezas Peloescarcha|r que patrulla en el interior|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto 1426/0,668.84,-5585.73,8,0
    .goto 1426/0,674.26,-5587.37
    >>|cRXP_WARN_Baja CAMINANDO con cuidado al saliente de abajo (NO te caigas). Camina con cuidado por el saliente hasta que te dé el crédito|r
    >>|cRXP_WARN_Ten cuidado con el |cRXP_ENEMY_Desollador Peloescarcha|r abajo, ya que es posible que pueda atacarte en el pequeño saliente si está cerca|r
    >>|cRXP_WARN_Prepárate para lanzar|r |T134414:0|t[Piedra de hogar]
    .link https://youtu.be/Zg4FNWw-P5k?t=3619 >>|cRXP_WARN_HAZ CLIC AQUÍ si estás teniendo dificultades|r
    .complete 287,2 --Fully explore Frostmane Hold
step << skip
    #completewith next
    +|cRXP_WARN_¡Recuerda hacer el Logout Skip de la posada pronto!|r
step
    #completewith Senir2
    .hs >> Usa tu Piedra de hogar para ir a Kharanos
step
    .goto 1426/0,-531.38,-5601.49
    >>Habla con |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compra una|r |T132800:0|t[Malta rapsódica] |cRXP_BUY_a este vendedor|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto 1426/0,-537.29,-5587.04
    >>Habla con |cRXP_FRIENDLY_Magis|r en el piso de arriba
    .trainer >> Aprende tus hechizos de clase (Descarga de Escarcha r2, Polimorfia)
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_Recuerda guardar los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que consigas para subir de nivel|r |T133971:0|t[Cocina] |cRXP_WARN_a 50 después|r
step
    .goto 1426/0,-504.29,-5596.24
    >>Habla con |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >> Entrega la misión Costillas de jabalí a la cerveza
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto 1426/0,-499.17,-5644.37
    >>Habla con |cRXP_FRIENDLY_Senir|r
    .turnin 287,2 >> Entrega la misión Poblado Peloescarcha
    .accept 291 >> Acepta la misión Los informes
    .target Senir Whitebeard
step
    #completewith next
    .cast 1459 >> Renueva |T135932:0|t[Intelecto Arcano]
    .cast 168 >> Renueva |T135843:0|t[Armadura de Escarcha]
step
    >>Habla con |cRXP_FRIENDLY_Bramiz|r y |cRXP_FRIENDLY_Roscapiedra|r
    .turnin 320,2 >> Entrega la misión Regresa junto a Bramiz
    .target +Pilot Bellowfiz
    .goto 1426/0,-632.15,-5466.540
    .turnin 313 >> Entrega la misión El Cubil Pardo
    .goto 1426/0,-641.80,-5473.18
    .target +Pilot Stonegear
step
    #completewith next
    +|cRXP_WARN_Inflige 51%+ de daño a los |cRXP_ENEMY_Lobos invernales|r cercanos, luego atraelos a los |cRXP_FRIENDLY_Montaraces de Forjaz|r que PUEDEN estar patrullando el camino para matarlos más eficientemente|r
    >>|cRXP_WARN_Si no ves a los |cRXP_FRIENDLY_Montaraces de Forjaz|r, omite este paso|r
    .mob Winter Wolf
    .target Ironforge Mountaineer
step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Sube por el camino de tierra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_HAZ CLIC AQUÍ si estás teniendo dificultades|r
    +|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia|r |cRXP_FRIENDLY_Rudra|r
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Habla con |cRXP_FRIENDLY_Rudra|r
    .accept 314 >> Acepta la misión La protección del rebaño
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Mata a |cRXP_ENEMY_Vagash|r. Despójalo para obtener el |cRXP_LOOT_Colmillo de Vagash|r
    >>|cRXP_WARN_Kitea a |cRXP_ENEMY_Vagash|r hacia el |cRXP_FRIENDLY_Montaraz de Dun Morogh|r al sur del rancho. Asegúrate de hacerle un 51%+ de daño|r
    >>|cRXP_WARN_Recuerda obtener la experiencia de exploración de Colinas Tundra y atrae al |cRXP_ENEMY_Leopardo de las nieves|r al |cRXP_FRIENDLY_Montaraz de Dun Morogh|r si es conveniente|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_HAZ CLIC AQUÍ si estás teniendo dificultades|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Habla con |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >> Entrega la misión La protección del rebaño
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_Recuerda guardar los|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_WARN_que consigas para subir de nivel|r |T133971:0|t[Cocina] |cRXP_WARN_a 50 después|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Kitea al |cRXP_ENEMY_Oso zarpahelada|r al |cRXP_FRIENDLY_Montaraz de Forjaz|r (asegúrate de causarle un 51%+ de daño para obtener crédito)|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135853:0|t[Garra de hielo] |cRXP_WARN_(Instantáneo Cuerpo a cuerpo: Causa 4 daño adicional cuerpo a cuerpo)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Habla con |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >> Aprende |T133971:0|t[Cocina]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Habla con |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compra 15|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Habla con |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compra 10|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Habla con |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compra 5|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Habla con |cRXP_FRIENDLY_Mehr|r y |cRXP_FRIENDLY_Petrocejas|r
    .accept 433 >> Acepta la misión El servidor público
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >> Acepta la misión ¡Malditos troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r
    >>|cRXP_WARN_No te desvíes para matarlos|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Entra en la cueva
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Mata |cRXP_ENEMY_Cascahuesos Comepiedras|r dentro de la cueva
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132154:0|t[Derribo] |cRXP_WARN_(Instantáneo Cuerpo a cuerpo: Aturde durante 2 segundos)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Mata |cRXP_ENEMY_Aplastacráneos Comepiedras|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Habla con |cRXP_FRIENDLY_Frast|r
    .vendor >> Vende la Basura
    .target Frast Dokner
step
    >>Habla con |cRXP_FRIENDLY_Petrocejas|r y |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >> Entrega la misión ¡Malditos troggs!
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >> Entrega la misión El servidor público
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Habla con |cRXP_FRIENDLY_Dank|r
    .train 2575 >> Aprende |T136248:0|t[Minería]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_HAZ CLIC AQUÍ si tienes dificultades|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Toma el atajo que sube detrás de |cRXP_FRIENDLY_Dank|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Kitea a los |cRXP_ENEMY_Emboscadores Comepiedras|r cercanos a los |cRXP_FRIENDLY_Montaraces de Forjaz|r que patrullan el camino (asegúrate de hacerles 51%+ de daño para recibir el crédito)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Kitea al |cRXP_ENEMY_Jabalí del risco cicatríceo|r a través del túnel
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Habla con |cRXP_FRIENDLY_Podomartillo|r
    .accept 419 >> Acepta la misión El piloto perdido
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Haz clic en el |cRXP_PICK_Cadáver de enano|r del suelo
    >>|cRXP_WARN_ASEGÚRATE de tener 1 hueco libre en el inventario para esta entrega|r
    >>|cRXP_WARN_Recuerda que vas a kitear a |cRXP_ENEMY_Sarnagarra|r de vuelta a |cRXP_FRIENDLY_Podomartillo|r
    .turnin 419 >> Entrega la misión El piloto perdido
    .accept 417 >> Acepta la misión Vengar al piloto
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Mata a |cRXP_ENEMY_Sarnagarra|r. Despójalo para obtener la |cRXP_LOOT_Garra sarnosa|r
    >>|cRXP_WARN_Kitéalo todo el camino hasta |cRXP_FRIENDLY_Podomartillo|r (asegúrate de hacerle 51%+ de daño para recibir el crédito)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Habla con |cRXP_FRIENDLY_Podomartillo|r
    .turnin 417,1 >> Entrega la misión Vengar al piloto
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Regresa a través del túnel
step
    .goto 1426/0,-2075.37,-5511.20
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes del risco cicatríceo|r y |cRXP_ENEMY_Jabalíes del risco anciano|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Instantáneo a sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, infligiendo 40-100 daño de cuerpo a cuerpo al impactar. Solo lanzable a distancia), y |cRXP_ENEMY_Osos zarpahelada|r lanzan|r |T135853:0|t[Garra de hielo] |cRXP_WARN_(Instantáneo Cuerpo a cuerpo : Inflige 4 de daño cuerpo a cuerpo adicional)|r
    .xp 9+5450 >> Mata enemigos hasta alcanzar 5450+/6500xp
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Kitea al |cRXP_ENEMY_Jabalí del risco cicatríceo|r por el camino
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .goto 1426/0,-2347.72,-5483.62,20 >>Haz el atajo de la montaña. Recuerda caer con cuidado
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes del risco cicatríceo|r lanzan|r |T132337:0|t[Carga] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .xp 9+5990 >> Mata enemigos hasta alcanzar 5990+/6500xp
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto 1426/0,-2447.11,-5479.74
    >>Habla con |cRXP_FRIENDLY_Cebadiz|r
    .turnin 413 >> Entrega la misión Cerveza negra Brillante
    .accept 414 >> Acepta la misión Cerveza negra para Kadrell
    .target Mountaineer Barleybrew
step
    .goto 1426/0,-2469.86,-5504.96,40,0
    .goto 1426/0,-2451.15,-5432.07
    .xp 9+6320 >> Mata enemigos hasta alcanzar 6320+/6500xp
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes del risco cicatríceo|r lanzan|r |T132337:0|t[Carga] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto 1432/0,-2447.50,-5564.39,20,0
    .goto 1432/0,-2534.11,-5642.02,30 >>Kitea al |cRXP_ENEMY_Jabalí del risco cicatríceo|r a través del túnel
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto 1432/0,-2576.86,-5805.01,35,0
	.goto 1432/0,-2519.49,-5875.65,35,0
	.goto 1432/0,-2570.52,-5916.30,35,0
	.goto 1432/0,-2576.86,-5805.01,35,0
    .xp 10 >> Mata enemigos hasta subir al nivel 10
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #requires CragB1
    #completewith Rugelfuss
    +|cRXP_WARN_Intenta kitear a un |cRXP_ENEMY_Oso negro mayor|r o a una |cRXP_ENEMY_Rondadora del bosque|r cercana al Búnker contigo (recuerda infligir 51%+ de daño para obtener crédito)|r
    >>|cRXP_WARN_Despoja los |cRXP_ENEMY_Osos negros mayores|r para obtener su|r |T134027:0|t[|cRXP_LOOT_Carne de oso|r]
    >>|cRXP_WARN_Despoja a las |cRXP_ENEMY_Rondadoras del bosque|r para obtener su|r |T134437:0|t[|cRXP_LOOT_Icor de araña|r]
    >>|cRXP_FRIENDLY_Pedernal|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravagau|r, y |cRXP_FRIENDLY_Muroplof|r no te asistirán|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    >>Habla con |cRXP_FRIENDLY_Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entra en el Búnker. Ve al piso superior
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Habla con |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Acepta la misión La amenaza trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Vuelve a entrar al túnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_HAZ CLIC AQUÍ si tienes problemas|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Logout skip saltando del brasero del túnel a Thelsamar|r
    .isOnQuest 414
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Habla con |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrulla a lo largo del camino principal de Thelsamar|r
    .turnin 414 >>Entrega la misión Cerveza negra para Kadrell
    .accept 416 >> Acepta la misión Mata ratas
    .accept 1339 >> Acepta la misión La tarea del montaraz Pico Tormenta
    .target Mountaineer Kadrell
step
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Habla con |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Puede estar dentro o fuera del edificio|r
    .accept 6387 >>Acepta la misión Estudiantes de honor
    .target Brock Stoneseeker
step
    .goto 1432/0,-2929.93,-5424.95
    >>Habla con |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >> Consigue la ruta de vuelo de Thelsamar
    .turnin 6387 >>Entrega la misión Estudiantes de honor
    .accept 6391 >>Acepta la misión Vuela a Forjaz
    .target Thorgrum Borrelson
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Habla con |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >> Viaja a Forjaz
    .isOnQuest 6391
step
    #completewith next
    .goto 1455/0,-1154.84,-4771.58,30,0
    .goto 1455/0,-1123.37,-4726.31,15,0
    .goto 1455/0,-1106.29,-4718.18,12,0
    >>Entra en el edificio
    .goto 1455/0,-1121.08,-4708.000,10 >>Viaja hacia |cRXP_FRIENDLY_Golnir|r
step
    .goto 1455/0,-1121.08,-4708.000
    >>Habla con |cRXP_FRIENDLY_Golnir|r
    .turnin 6391 >>Entrega la misión Vuela a Forjaz
    .accept 6388 >>Acepta la misión Gryth Thurden
    .vendor >> Vende la Basura
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto 1455/0,-1106.29,-4718.18,12,0
    .goto 1455/0,-1154.84,-4771.58,30,0
    >>Sal del edificio
    .goto 1455/0,-1152.31,-4821.12,10 >>Viaja hacia |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Habla con |cRXP_FRIENDLY_Gryth|r
    .turnin 6388 >>Entrega la misión Gryth Thurden
--   .accept 6392 >>Accept Return to Brock
-- .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1148.99,-4840.22,30,0
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1082.58,-4836.00,20,0
    .goto 1455/0,-1062.42,-4835.00,20,0
    .goto 1455/0,-1026.28,-4872.56,10 >>Viaja hacia |cRXP_FRIENDLY_Barin|r
step
    .goto 1455/0,-1026.28,-4872.56
    >>Habla con |cRXP_FRIENDLY_Barin|r
    .turnin 291 >>Entrega la misión Los informes
    .target Senator Barin Redstone
step
    #completewith next
    .goto 1455/0,-1064.87,-4828.19,20,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Viaja hacia |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Habla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase (Armadura de Escarcha r2, Nova de hielo, Polimorfia, Crear agua r1 y r2)
    >>Coste total: 15 platas
    >>Recuerda que podrías necesitar dinero para Pociones de Sanación (3 platas cada una), Tubo de bronce (8 platas cada uno), y comida de nivel 5 (20 cobres por 5)
    .target Dink
step << skip
    #completewith IFHS
    +|cRXP_WARN_Recuerda hacer el Logout Skip sobre las Velas tras fijar tu|r |T134414:0|t[Piedra de hogar]
step
    #completewith next
    --.goto 1455/0,-929.04,-4636.72,20,0
    --.goto 1455/0,-892.19,-4770.42,20,0
    --.goto Ironforge,20.40,53.19,20,0
    >>Entra en el edificio
    .goto 1455/0,-857.01,-4840.69,10 >>Viaja hacia |cRXP_FRIENDLY_Brebefuego|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Habla con |cRXP_FRIENDLY_Brebefuego|r
    .home >> Establece tu Piedra de hogar en Forjaz
    .target Innkeeper Firebrew
step << skip
    .goto 1455/0,-864.68,-4847.820
    .zone Dun Morogh >>|cRXP_WARN_Salta sobre la vela que hay en la mesa. Logout Skip a Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 10-12 ADV Costa Oscura 1 Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none Mage
#next 12-14 ADV Loch Modan Mago AoE

step
    #completewith DeathlessSkip
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >> Sal de Forjaz
step
    #completewith next
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >> Viaja hasta el punto de skip. Ve pegado al lado izquierdo de la montaña durante el trayecto
step
    #label DeathlessSkip
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>|cRXP_WARN_Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales|r
    >>|cRXP_WARN_Come hasta llenar la salud tras cada caída si no te sientes seguro|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_HAZ CLIC AQUÍ para ver la referencia (se recomienda ENCARECIDAMENTE hacerlo)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Desciende cuidadosamente por la ladera de la montaña
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>|cRXP_WARN_Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales|r
    >>|cRXP_WARN_Ten cuidado con |cRXP_ENEMY_Barrosín|r (raro) antes de que bajes hacia la costa (si ha aparecido)|r
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Asaltantes Branquiazul|r al oeste cuando llegues al mar|r
    >>|cRXP_WARN_Evita a los |cRXP_ENEMY_Crocoliscos jóvenes de Los Humedales|r cuando cruces el mar. Espera a que se alejen patrullando|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_HAZ CLIC AQUÍ para ver la referencia (se recomienda ENCARECIDAMENTE hacerlo)|r
    .goto 1437/0,-914.37,-3828.40,15 >> Viaja al Puerto de Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Entra en la Posada
step
    .goto 1437/0,-823.8,-3807.180
    >>Salta a la lámpara de araña del piso de abajo
    >>Habla con |cRXP_FRIENDLY_Samor|r a través de la pared
    >>|cRXP_WARN_NOTA: Para hacer esto, asigna "Interactuar con objetivo" en Experiencia de Juego -> Atajos de Teclado en el menú de Opciones|r
    >>|cRXP_WARN_Si el Barco acaba de llegar, omite este paso|r
    .vendor 1457 >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Habla con |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_Si el Barco acaba de llegar, omite este paso|r
    +|cRXP_WARN_Cocina cualquier|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_que tengas desde fuera (hay una hoguera dentro)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Habla con |cRXP_FRIENDLY_Dewin|r a través de la pared
    >>|cRXP_WARN_Si el Barco acaba de llegar, omite este paso|r
    .vendor 1453 >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Viaja hacia el Barco de Costa Oscura
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Empieza a lanzar repetidamente|r |T132794:0|t[Crear agua r2] |cRXP_WARN_para crear tanta agua como sea posible|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >> Toma el barco hacia Costa Oscura
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Salta del barco cuando estés lo más cerca posible de la orilla
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Kitea 2-3 |cRXP_ENEMY_Reptadores de marea pigmeo|r hacia |cRXP_FRIENDLY_Maniveo|r (Recuerda usar|r |T135848:0|t[Nova de Escarcha]|cRXP_WARN_) Mátalos cuando aceptes la misión|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 20|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Sube al piso superior
    .goto 1439/1,519.48,6405.89,8 >>Viaja hacia |cRXP_FRIENDLY_Maniveo|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
    >>Habla con |cRXP_FRIENDLY_Maniveo|r
    .accept 983 >>Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Reptadores de marea pigmeo|r que kiteaste. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Viaja hacia |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Habla con |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Compra tantas|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_como necesites/puedas|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
    >>Habla con |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>Acepta la misión Bashal'Aran
    .accept 958 >>Acepta la misión Las herramientas de los Altonato
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Habla con |cRXP_FRIENDLY_Thundris|r y |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Acepta la misión Bashal'Aran
    .accept 958 >>Acepta la misión Las herramientas de los Altonato
    .target +Thundris Windweaver
    .goto 1439/1,492.62,6580.99
    .accept 2178 >>Acepta la misión Guiso de zancudo
    .goto 1439/1,472.97,6557.85
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Viaja hacia |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>Habla con |cRXP_FRIENDLY_Terenthis|r y |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Acepta la misión La extensión de la amenaza
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 2118 >>Acepta la misión Tierras apestadas
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
 step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 20|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto 1439/1,437.60,6025.99,75,0
    >>|cRXP_WARN_Usa|r |T134335:0|t[Esperanza de Tharnariun] |cRXP_WARN_en un |cRXP_ENEMY_Oso cardo rabioso|r. Tiene un rango de 50 yardas|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_(Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,393.72,5993.24
    >>Corre hacia el Campamento Fúrbolg
    >>|cRXP_WARN_No intentes luchar contra el|r |cRXP_ENEMY_Soplaviento Bosque Negro|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,411.40,5873.15,60,0
    .goto 1439/1,400.27,5788.0,60,0
    .goto 1439/1,427.78,5680.58,60,0
    .goto 1439/1,415.33,5434.30
    >>|cRXP_WARN_Usa|r |T134335:0|t[Esperanza de Tharnariun] |cRXP_WARN_en un |cRXP_ENEMY_Oso cardo rabioso|r. Tiene un rango de 50 yardas|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_(Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,302.02,5726.433
    >>Habla con |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Relics
    +|cRXP_WARN_Evita pullear a |cRXP_ENEMY_Lady Miraluna|r (raro) si ha aparecido|r
    .unitscan Lady Moongazer
step
    #completewith Fall
    >>Mata |cRXP_ENEMY_Altonatos malditos|r y |cRXP_ENEMY_Altonatos en pena|r. Despójalos para obtener |cRXP_LOOT_Reliquias de Altonato|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Altonatos gemebundas|r solo si se interponen en tu camino|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,148.09,5575.78
    >>Haz clic en |cRXP_PICK_La Caída de Ameth'Aran|r en el suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Haz clic en |cRXP_PICK_La instauración de Ameth'Aran|r en el suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Habla con |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Entrega la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
    >>Mata |cRXP_ENEMY_Altonatos malditos|r y |cRXP_ENEMY_Altonatos en pena|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Altonatos gemebundas|r solo si se interponen en tu camino|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #completewith next
    +|cRXP_WARN_Kitea 2-3 |cRXP_ENEMY_Duendes viles|r hacia |cRXP_FRIENDLY_Asterion|r (Recuerda usar|r |T135848:0|t[Nova de Escarcha]|cRXP_WARN_) Mátalos cuando aceptes la misión|r
    .mob Vile Sprite
step
    .goto 1439/1,48.53,6748.67
    >>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Entrega la misión Bashal'Aran
    .accept 955 >> Acepta la misión Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Ten cuidado porque |cRXP_ENEMY_Licillin|r (raro) puede estar presente|r
    >>|cRXP_WARN_Lanza|r |T136197:0|t[Descarga de las Sombras] |cRXP_WARN_(Hechizo a distancia: Causa 55-70 de daño de Sombra)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Mata |cRXP_ENEMY_Duendes viles|r y |cRXP_ENEMY_Grells salvajes|r. Despójalos para obtener sus |cRXP_LOOT_Pendientes grell|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Duendes viles|r lanzan|r |T136016:0|t[Veneno] |cRXP_WARN_(Cuerpo a cuerpo Instantáneo: Causa 3 de daño cada 3 segundos durante 15 segundos) y los |cRXP_ENEMY_Grells salvajes|r lanzan|r |T136215:0|t[Enloquecido] |cRXP_WARN_(Instantáneo: Aumenta la velocidad de ataque en un 20% al tener <20% de salud)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Entrega la misión Bashal'Aran
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Mata |cRXP_ENEMY_Sátiros Deth'ryll|r. Despójalos para obtener el |cRXP_LOOT_Sello de piedra lunar antiguo|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(A distancia: Causa 15-25 de daño)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    .xp 11+1100 >> Mata enemigos hasta alcanzar 1100+/8800xp
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (Turnins starting from Bashal Seal turnin)
--675+975 = 1650 (Turtle turnins)
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Entrega la misión Bashal'Aran
    .accept 957 >> Acepta la misión Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Habla con |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vende la Basura
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Habla con |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Entrega la misión Las herramientas de los Altonato
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
    >>Habla con |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    >>Habla con |cRXP_FRIENDLY_Terenthis|r y |cRXP_FRIENDLY_Tharnariun|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
    .accept 985 >> Acepta la misión La extensión de la amenaza
    .accept 4761 >> Acepta la misión Thundris Tejevientos
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .turnin 2118 >> Entrega la misión Tierras apestadas
    .accept 2138 >> Acepta la misión La limpieza de la infección
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
step
    #sticky
    #label Gwennyth
    .goto 1439/1,543.06,6342.57
    >>Habla con |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Habla con |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r y |cRXP_ENEMY_Reptadores de arrecife jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Guarda los|r |T133884:0|t[Ojos de Múrloc] |cRXP_WARN_que despojes de los |cRXP_ENEMY_Correcostas Brumagris|r y de los|r |cRXP_ENEMY_Asaltantes Brumagris|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto 1439/1,558.78,6111.57
    >>Despoja la |cRXP_LOOT_Criatura marina varada|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Correcostas Brumagris|r cercanos tienen|r |T132307:0|t[Velocidad de movimiento aumentada]
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r y |cRXP_ENEMY_Reptadores de arrecife jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto 1439/1,541.75,6313.31
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r
    .turnin 983 >>Entrega la misión La caja mecánica 827
    .accept 1001 >>Acepta la misión La caja mecánica 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Habla con |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Entrega la misión Varado
    .accept 4681 >>Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 40|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Habla con |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Acepta la misión Un amor eterno
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Mata |cRXP_ENEMY_Trilladores de Costa Oscura|r
    >>|cRXP_WARN_NO te desvíes por estos|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >> Corre a lo largo del muelle hacia los |cRXP_LOOT_Restos de tortuga marina|r
step
    .goto 1439/1,854.84,6310.26
    >>Nada bajo el agua
    >>Despoja los |cRXP_LOOT_Restos de tortuga marina|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >> Mata enemigos hasta alcanzar 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
    >>Habla con |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >> Entrega la misión Varado
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Equípate tus nuevas botas (Equípate las |T132537:0|t[Botas de Peinarenas])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===PRESTA ATENCIÓN===|r
    >>|cRXP_WARN_Habla con|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Si es la primera vez que haces un Hearthstone Batch, mira la guía a continuación|r
    >>|cRXP_WARN_Abre el menú "Fijar piedra de hogar" , luego lanza|r |T134414:0|t[Piedra de hogar]
    .hs >> |cRXP_WARN_Hearthstone BATCH de Auberdine a Forjaz|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_HAZ CLIC AQUÍ (es MUY recomendable que lo hagas). Asegúrate de que hayas configurado y probado el Tamaño de tu Ventana de Batching antes para reducir el riesgo de fallo|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Habla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase (Bola de Fuego r3, Atenuar magia)
    >>Coste Total: 12 platas
    >>Recuerda que es posible que quieras dinero para un |T133024:0|t[Tubo de bronce] (8 platas cada uno) y vuelo a Thelsamar (1 plata 10 cobres)
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >> Realiza logout skip sobre el pilar encima de |cRXP_FRIENDLY_Dink|r para revisar si |cRXP_FRIENDLY_Volopiñón|r tiene un |T133024:0|t[Tubo de bronce] si lo deseas
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Empieza a lanzar repetidamente|r |T132794:0|t[Crear agua r2] |cRXP_WARN_para crear tanta agua como sea posible antes de tomar el vuelo|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Habla con |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Acepta la misión Regresa con Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Habla con |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Vuela a Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 10-12 LAUNCH ADV Costa Oscura 1 Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none none
#next 12-14 ADV Loch Modan Mago AoE

--VV Make this an alternative route that must be manually selected
step
    #completewith next
    +|cRXP_WARN_NOTA: La ruta de lanzamiento contiene misiones que son MUY difíciles de hacer en solitario. Esto es específicamente para servidores muy concurridos donde puedas agruparte para las misiones más difíciles, O jugar con una clase capaz de atacar primero al objetivo (mob tag)|r
step
    #completewith next
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >> Viaja hasta el punto de skip. Ve pegado al lado izquierdo de la montaña durante el trayecto
step
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>|cRXP_WARN_Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales|r
    >>|cRXP_WARN_Come hasta llenar la salud tras cada caída si no te sientes seguro|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_HAZ CLIC AQUÍ para ver la referencia (se recomienda ENCARECIDAMENTE hacerlo)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Desciende cuidadosamente por la ladera de la montaña
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>|cRXP_WARN_Realiza el atajo (skip) sin morir de Dun Morogh a Los Humedales|r
    >>|cRXP_WARN_Ten cuidado con |cRXP_ENEMY_Barrosín|r (raro) antes de que bajes hacia la costa (si ha aparecido)|r
    >>|cRXP_WARN_Ten cuidado con los |cRXP_ENEMY_Asaltantes Branquiazul|r al oeste cuando llegues al mar|r
    >>|cRXP_WARN_Evita a los |cRXP_ENEMY_Crocoliscos jóvenes de Los Humedales|r cuando cruces el mar. Espera a que se alejen patrullando|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_HAZ CLIC AQUÍ para ver la referencia (se recomienda ENCARECIDAMENTE hacerlo)|r
    .goto 1437/0,-914.37,-3828.40,15 >> Viaja al Puerto de Menethil
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Entra en la Posada
step
    .goto 1437/0,-823.8,-3807.180
    >>Salta a la lámpara de araña del piso de abajo
    >>Habla con |cRXP_FRIENDLY_Samor|r a través de la pared
    >>|cRXP_WARN_NOTA: Para hacer esto, asigna "Interactuar con objetivo" en Experiencia de Juego -> Atajos de Teclado en el menú de Opciones|r
    >>|cRXP_WARN_Si el Barco acaba de llegar, omite este paso|r
    .vendor 1457 >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Habla con |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >> Consigue la ruta de vuelo del Puerto de Menethil
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_Si el Barco acaba de llegar, omite este paso|r
    +|cRXP_WARN_Cocina cualquier|r |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r |cRXP_WARN_que tengas desde fuera (hay una hoguera dentro)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Habla con |cRXP_FRIENDLY_Dewin|r a través de la pared
    >>|cRXP_WARN_Si el Barco acaba de llegar, omite este paso|r
    .vendor 1453 >> |cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Viaja hacia el Barco de Costa Oscura
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Empieza a lanzar repetidamente|r |T132794:0|t[Crear agua r2] |cRXP_WARN_para crear tanta agua como sea posible|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >> Toma el barco hacia Costa Oscura
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Salta del barco cuando estés lo más cerca posible de la orilla
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Kitea 2-3 |cRXP_ENEMY_Reptadores de marea pigmeo|r hacia |cRXP_FRIENDLY_Maniveo|r (Recuerda usar|r |T135848:0|t[Nova de Escarcha]|cRXP_WARN_) Mátalos cuando aceptes la misión|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 20|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Sube al piso superior
    .goto 1439/1,519.48,6405.89,8 >>Viaja hacia |cRXP_FRIENDLY_Maniveo|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
    >>Habla con |cRXP_FRIENDLY_Maniveo|r
    .accept 983 >>Acepta la misión La caja mecánica 827
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>Mata a los |cRXP_ENEMY_Reptadores de marea pigmeo|r que kiteaste. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 20|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Viaja hacia |cRXP_FRIENDLY_Terenthis|r
step
    >>Habla con |cRXP_FRIENDLY_Terenthis|r y |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Acepta la misión La extensión de la amenaza
    .target +Terenthis
    .goto 1439/1,362.93,6434.27,-1
    .accept 2118 >>Acepta la misión Tierras apestadas
    .goto 1439/1,397.65,6437.76,-1
    .target +Tharnariun Treetender
step << skip
    #completewith next
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Viaja hacia |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Habla con |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Compra tantas|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_como necesites/puedas|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
    >>Habla con |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>Acepta la misión Bashal'Aran
    .accept 958 >>Acepta la misión Las herramientas de los Altonato
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Habla con |cRXP_FRIENDLY_Thundris|r y |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Acepta la misión Bashal'Aran
    .accept 958 >>Acepta la misión Las herramientas de los Altonato
    .target +Thundris Windweaver
    .goto 1439/1,492.62,6580.99,-1
    .accept 2178 >>Acepta la misión Guiso de zancudo
    .goto 1439/1,472.97,6557.85,-1
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto 1439/1,-117.84,6820.72
    >>|cRXP_WARN_Si encuentras un |cRXP_ENEMY_Oso cardo rabioso|r, usa|r |T134335:0|t[Esperanza de Tharnariun] |cRXP_WARN_y luego atráelo|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_(Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    #completewith next
    +|cRXP_WARN_Kitea 2-3 |cRXP_ENEMY_Duendes viles|r hacia |cRXP_FRIENDLY_Asterion|r (Recuerda usar|r |T135848:0|t[Nova de Escarcha]|cRXP_WARN_) Mátalos cuando aceptes la misión|r
    .mob Vile Sprite
step
    #label Bash1
    .goto 1439/1,48.53,6748.67
    >>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 954 >> Entrega la misión Bashal'Aran
    .accept 955 >> Acepta la misión Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Ten cuidado porque |cRXP_ENEMY_Licillin|r (raro) puede estar presente|r
    >>|cRXP_WARN_Lanza|r |T136197:0|t[Descarga de las Sombras] |cRXP_WARN_(Hechizo a distancia: Causa 55-70 de daño de Sombra)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Mata |cRXP_ENEMY_Duendes viles|r y |cRXP_ENEMY_Grells salvajes|r. Despójalos para obtener sus |cRXP_LOOT_Pendientes grell|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Duendes viles|r lanzan|r |T136016:0|t[Veneno] |cRXP_WARN_(Cuerpo a cuerpo Instantáneo: Causa 3 de daño cada 3 segundos durante 15 segundos) y los |cRXP_ENEMY_Grells salvajes|r lanzan|r |T136215:0|t[Enloquecido] |cRXP_WARN_(Instantáneo: Aumenta la velocidad de ataque en un 20% al tener <20% de salud)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 955 >> Entrega la misión Bashal'Aran
    .accept 956 >> Acepta la misión Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Mata |cRXP_ENEMY_Sátiros Deth'ryll|r. Despójalos para obtener el |cRXP_LOOT_Sello de piedra lunar antiguo|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T132222:0|t[Disparar] |cRXP_WARN_(A distancia: Causa 15-25 de daño)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 956 >> Entrega la misión Bashal'Aran
    .accept 957 >> Acepta la misión Bashal'Aran
    .target Asterion
step
    .goto 1439/1,397.65,6437.76
    .xp 10+6625 >> Mata enemigos por el camino hasta alcanzar 6625+/7600xp de regreso hacia |cRXP_FRIENDLY_Tharnariun|r
step
    .goto 1439/1,397.65,6437.76
    >>Habla con |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2118 >> Entrega la misión Tierras apestadas
    .accept 2138 >> Acepta la misión La limpieza de la infección
    .target Tharnariun Treetender
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Habla con |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Acepta la misión Un amor eterno
    .target Cerellean Whiteclaw
step
    #completewith next
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #sticky
    #label Gwennyth
    .goto 1439/1,543.06,6342.57
    >>Habla con |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Habla con |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >> Consigue la ruta de vuelo de Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r y |cRXP_ENEMY_Reptadores de arrecife jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Guarda los|r |T133884:0|t[Ojos de Múrloc] |cRXP_WARN_que despojes de los |cRXP_ENEMY_Correcostas Brumagris|r y de los|r |cRXP_ENEMY_Asaltantes Brumagris|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto 1439/1,558.78,6111.57
    >>Despoja la |cRXP_LOOT_Criatura marina varada|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Correcostas Brumagris|r cercanos tienen|r |T132307:0|t[Velocidad de movimiento aumentada]
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Mata |cRXP_ENEMY_Reptadores de marea pigmeo|r y |cRXP_ENEMY_Reptadores de arrecife jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Patas de reptador|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto 1439/1,393.72,5993.24
    >>Corre hacia el Campamento Fúrbolg
    >>|cRXP_WARN_No intentes luchar contra el|r |cRXP_ENEMY_Soplaviento Bosque Negro|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,302.02,5726.433
    >>Habla con |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Acepta la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_Evita pullear a |cRXP_ENEMY_Lady Miraluna|r (raro) si ha aparecido|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto 1439/1,161.19,5684.51,0
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener |cRXP_LOOT_Colgante de Anaia|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith Fall
    >>Mata |cRXP_ENEMY_Altonatos malditos|r y |cRXP_ENEMY_Altonatos en pena|r. Despójalos para obtener |cRXP_LOOT_Reliquias de Altonato|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Altonatos gemebundas|r solo si se interponen en tu camino|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,166.43,5633.86
    >>Haz clic en la |cRXP_PICK_Llama antigua|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,148.09,5575.78
    >>Haz clic en |cRXP_PICK_La Caída de Ameth'Aran|r en el suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Haz clic en |cRXP_PICK_La instauración de Ameth'Aran|r en el suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Habla con |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Entrega la misión La caída de Ameth'Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
    >>Mata |cRXP_ENEMY_Altonatos malditos|r y |cRXP_ENEMY_Altonatos en pena|r
    >>|cRXP_WARN_Mata |cRXP_ENEMY_Altonatos gemebundas|r solo si se interponen en tu camino|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #label Anaya
    .goto 1439/1,161.19,5684.51
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener |cRXP_LOOT_Colgante de Anaia|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto 1439/1,-22.21,5999.79,30 >>Entra en la cueva
    >>|cRXP_WARN_Evita a los |cRXP_ENEMY_Osos cardo|r, |cRXP_ENEMY_Lechúcicos lunares|r, y |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r por el camino (si es posible)|r
    .isOnQuest 958
step
    .goto 1439/1,-54.96,6015.51
    .goto 1439/1,210.32,6739.501,30 >>|cRXP_WARN_Mata al |cRXP_ENEMY_Oráculo lechúcico lunar|r dentro de la cueva --, then drink Logout Skip by logging out on top of the Mushroom at the back of the cave|r
    >>|cRXP_WARN_Ten cuidado ya que lanza|r |T136006:0|t[Cólera] |cRXP_WARN_(Ataque a distancia: Inflige 30-45 daño de Naturaleza),|r |T136096:0|t[Fuego lunar] |cRXP_WARN_(Instantáneo a distancia: Inflige 20-30 daño de Naturaleza, luego 44 daño de Naturaleza durante 12 segundos), y|r |T136085:0|t[Recrecimiento] |cRXP_WARN_(Lanzamiento sobre sí mismo: Cura aproximadamente 150 de vida. Raro, pero corre si sucede esto)|r
    >>|cRXP_WARN_Puedes esquivar su|r |T136006:0|t[Cólera] |cRXP_WARN_rompiendo la visión detrás de las rocas dentro de la entrada de la cueva|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto 1439/1,47.88,6748.67
    >>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Entrega la misión Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Habla con |cRXP_FRIENDLY_Dalmond|r
    .vendor >> Vende la Basura
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Habla con |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Entrega la misión Las herramientas de los Altonato
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
    >>Habla con |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto 1439/1,362.93,6434.27
    >>Habla con |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >> Entrega la misión La extensión de la amenaza
    .accept 985 >> Acepta la misión La extensión de la amenaza
    .accept 4761 >> Acepta la misión Thundris Tejevientos
    .target Terenthis
step
    .goto 1439/1,541.75,6313.31
    >>Haz clic en la |cRXP_PICK_Caja mecánica 827|r
    .turnin 983 >>Entrega la misión La caja mecánica 827
    .accept 1001 >>Acepta la misión La caja mecánica 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Habla con |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Entrega la misión Varado
    .accept 4681 >>Acepta la misión Varado
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 40|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Habla con |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Mata |cRXP_ENEMY_Trilladores de Costa Oscura|r
    >>|cRXP_WARN_NO te desvíes por estos|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >> Corre a lo largo del muelle hacia los |cRXP_LOOT_Restos de tortuga marina|r
step
    .goto 1439/1,854.84,6310.26
    >>Nada bajo el agua
    >>Despoja los |cRXP_LOOT_Restos de tortuga marina|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >> Mata enemigos hasta alcanzar 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
    >>Habla con |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >> Entrega la misión Varado
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Equípate tus nuevas botas (Equípate las |T132537:0|t[Botas de Peinarenas])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===PRESTA ATENCIÓN===|r
    >>|cRXP_WARN_Habla con|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Si es la primera vez que haces un Hearthstone Batch, mira la guía a continuación|r
    >>|cRXP_WARN_Abre el menú "Fijar piedra de hogar" , luego lanza|r |T134414:0|t[Piedra de hogar]
    .hs >> |cRXP_WARN_Hearthstone BATCH de Auberdine a Forjaz|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_HAZ CLIC AQUÍ (es MUY recomendable que lo hagas). Asegúrate de que hayas configurado y probado el Tamaño de tu Ventana de Batching antes para reducir el riesgo de fallo|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Habla con |cRXP_FRIENDLY_Dink|r
    .trainer >> Aprende tus hechizos de clase (Bola de Fuego r3, Atenuar magia)
    >>Coste Total: 12 platas
    >>Recuerda que es posible que quieras dinero para un |T133024:0|t[Tubo de bronce] (8 platas cada uno) y vuelo a Thelsamar (1 plata 10 cobres)
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >> Realiza logout skip sobre el pilar encima de |cRXP_FRIENDLY_Dink|r para revisar si |cRXP_FRIENDLY_Volopiñón|r tiene un |T133024:0|t[Tubo de bronce] si lo deseas
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Empieza a lanzar repetidamente|r |T132794:0|t[Crear agua r2] |cRXP_WARN_para crear tanta agua como sea posible antes de tomar el vuelo|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Habla con |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Acepta la misión Regresa con Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Habla con |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >> Vuela a Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 12-14 ADV Loch Modan Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none Mage
#next 14-16 ADV Costa Oscura 2 Mago AoE
step
    #completewith next
    +|cRXP_WARN_Mientras haces misiones en Loch Modan, guarda TODOS los |T133970:0|t[|cRXP_LOOT_Trozos de carne de jabalí]|r que consigas para después|r
step
    .zone Loch Modan >> Vuela a Loch Modan
    .isOnQuest 6392 << Gnome
step
    .goto 1432/0,-2602.54,-5832.73
    >>Habla con |cRXP_FRIENDLY_Pedernal|r
    .accept 224 >> Acepta la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entra en el Búnker. Ve al piso superior
step
    .goto 1432/0,-2634.59,-5842.81
    >>Habla con |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >> Acepta la misión La amenaza trogg
    .target Captain Rugelfuss
step
    #completewith Rugel2
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    >>|cRXP_WARN_Recuerda kitearlos hacia los |cRXP_FRIENDLY_Montaraces|rsi es necesario|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes monteses|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2729.40,-5534.96
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
    .goto 1432/0,-2602.54,-5832.73
    >>Habla con |cRXP_FRIENDLY_Pedernal|r
    .turnin 224 >> Entrega la misión En defensa de las tierras del rey
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >> Entra en el Búnker. Ve al piso superior
step
    #label Rugel2
    .goto 1432/0,-2634.59,-5842.81
    >>Habla con |cRXP_FRIENDLY_Rugelfuss|r
    .turnin 267 >> Entrega la misión La amenaza trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Vuelve a entrar al túnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .goto 1432/0,-2881.66,-5351.18,30 >>Logout skip saltando del brasero del túnel a Thelsamar
    .isOnQuest 1339
step
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    >>|cRXP_WARN_Recuerda kitearlos hacia los |cRXP_FRIENDLY_Montaraces|rsi es necesario|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes monteses|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2643.89,-4817.34,30 >>Viaja a la Estación de Algaz
    .isOnQuest 1339
step
    .goto 1432/0,-2659.34,-4822.300
    >>Habla con |cRXP_FRIENDLY_Gothor|r
    .vendor >>Vende la Basura
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto 1432/0,-2676.82,-4825.93
    >>Sube las escaleras
    >>Habla con |cRXP_FRIENDLY_Pico Tormenta|r
    .turnin 353 >> Entrega la misión Una entrega a Pico Tormenta << Human
    .turnin 1339 >> Entrega la misión La tarea del montaraz Pico Tormenta
    .accept 1338 >> Acepta la misión Un pedido de Pico Tormenta
    .accept 307 >> Acepta la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
    #completewith Entrance
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    >>|cRXP_WARN_Recuerda kitearlos hacia los |cRXP_FRIENDLY_Montaraces|rsi es necesario|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes monteses|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith Exit
    >>Mata |cRXP_ENEMY_Ratatúneles|r. Despójalas para obtener sus |cRXP_LOOT_Orejas de rata de túnel|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
step
    #label Entrance
    .goto 1432/0,-2972.13,-4836.10,40 >>Viaja a la entrada de Mina
    .isOnQuest 307
step
    #label Gear
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37,12,0
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37
    >>Despoja el |cRXP_LOOT_Equipamiento de minero|r del suelo. |cRXP_WARN_Comparten puntos de reaparición|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Geománticos Ratatúnel|r lanzan|r |T135824:0|t[Guarda de llama presurosa] |cRXP_WARN_(Lanzamiento sobre sí mismo: Otorga inmunidad al fuego durante 10 segundos) y|r |T135824:0|t[Explosión de Fuego] |cRXP_WARN_(Ataque a distancia instantáneo: Causa 20-30 daño de fuego)
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto 1432/0,-2972.13,-4836.10,40 >>Sal de la Mina
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto 1432/0,-2942.06,-4812.55,40,0
	.goto 1432/0,-2971.30,-4769.69,40,0
	.goto 1432/0,-3018.47,-4681.21,40,0
	.goto 1432/0,-3079.98,-4688.38,40,0
	.goto 1432/0,-3054.60,-4752.95,40,0
	.goto 1432/0,-3087.98,-4820.83,40,0
	.goto 1432/0,-3092.67,-4944.27,40,0
	.goto 1432/0,-3023.71,-4980.88,40,0
	.goto 1432/0,-3018.47,-4938.75,40,0
	.goto 1432/0,-3065.36,-4878.41,40,0
	.goto 1432/0,-3038.88,-4834.81,40,0
	.goto 1432/0,-2942.06,-4812.55,40,0
    >>Mata |cRXP_ENEMY_Exploradores Ratatúnel|r, |cRXP_ENEMY_Alimañas Ratatúnel|r, |cRXP_ENEMY_Kóbolds Ratatúnel|r, y |cRXP_ENEMY_Batidores Ratatúnel|r. Despójalos para obtener sus |cRXP_LOOT_Orejas de rata de túnel|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Kóbolds Ratatúnel|r lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
step
    #completewith next
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    >>|cRXP_WARN_Recuerda kitearlos hacia los |cRXP_FRIENDLY_Montaraces|rsi es necesario|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes monteses|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2643.89,-4817.34,30 >>Viaja a la Estación de Algaz
    .isOnQuest 307
step
    .goto 1432/0,-2659.34,-4822.300
    >>Habla con |cRXP_FRIENDLY_Gothor|r
    .vendor >>Vende la Basura
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto 1432/0,-2676.82,-4825.93
    >>Sube las escaleras
    >>Habla con |cRXP_FRIENDLY_Pico Tormenta|r
    .turnin 307,2 >> Entrega la misión Zarpas asquerosas
    .target Mountaineer Stormpike
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,35,0
	.goto 1432/0,-2895.45,-5014.91,35,0
	.goto 1432/0,-2957.24,-5067.89,35,0
	.goto 1432/0,-3008.26,-5098.06,35,0
	.goto 1432/0,-3087.43,-5091.25,35,0
	.goto 1432/0,-3046.05,-5189.48,35,0
	.goto 1432/0,-2918.62,-5233.08,35,0
	.goto 1432/0,-2817.66,-5471.86,35,0
	.goto 1432/0,-2809.66,-5343.64,35,0
	.goto 1432/0,-2819.87,-5220.39,35,0
	.goto 1432/0,-2740.98,-5225.170,35,0
	.goto 1432/0,-2794.49,-5102.66,35,0
	.goto 1432/0,-2743.74,-5021.16,35,0
	.goto 1432/0,-2704.57,-4958.430,35,0
	.goto 1432/0,-2645.82,-4895.890,35,0
	.goto 1432/0,-2849.11,-4944.45,35,0
    >>Mata |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Rondadoras del bosque|r. Despójalos para obtener su |cRXP_LOOT_Icor de araña|r
    >>|cRXP_WARN_Recuerda kitearlos hacia los |cRXP_FRIENDLY_Montaraces|rsi es necesario|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes monteses|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .xp <13+5500,1 << Gnome
step
    #completewith Boast
    >>Mata |cRXP_ENEMY_Jabalíes monteses sarnosos|r y |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Osos negros grisáceos|r y |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Rondadores del risco|r y |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor de araña|r
    >>|cRXP_WARN_Recuerda kitearlos hacia los |cRXP_FRIENDLY_Montaraces|rsi es necesario|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes monteses|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
    .xp >13+5500,1 << Gnome
step
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Habla con |cRXP_FRIENDLY_Brock|r y |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Pueden estar dentro o fuera del edificio|r
    .turnin 6392 >>Entrega la misión Regresa con Brock << Gnome
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 436 >> Acepta la misión La excavación de Vetaferro
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto 1432/0,-3020.68,-5358.91
    >>Habla con |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Puede estar dentro o fuera del edificio|r
    .accept 436 >> Acepta la misión La excavación de Vetaferro
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+8675 >> Mata enemigos hasta alcanzar 8675+/11400xp
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6545 >> Mata enemigos hasta alcanzar 6545+/11400xp
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto 1432/0,-3266.44,-5656.19,50,0
    .goto 1432/0,-3354.99,-5726.64,50,0
    .goto 1432/0,-3425.60,-5738.42,50,0
    .goto 1432/0,-3781.98,-5702.54,20 >>Viaja hacia |cRXP_FRIENDLY_Aldren|r
step << Gnome
    #completewith Boast
    .goto 1432/0,-3781.98,-5702.54
    >>Habla con |cRXP_FRIENDLY_Aldren|r
    .vendor 1214 >> |cRXP_BUY_Cómprale el |r |T132491:0|t[Cinturón de hombre sabio] |cRXP_BUY_(si está disponible)|r
    .isQuestAvailable 298
step << Gnome
    >>Habla con |cRXP_FRIENDLY_Vetaferro|r y con |cRXP_FRIENDLY_Magmar|r
    .accept 298 >> Acepta la misión Un informe sobre el avance de la excavación
    .target +Prospector Ironband
    .goto 1432/0,-3812.59,-5694.63
    .turnin 436 >> Entrega la misión La excavación de Vetaferro
    .goto 1432/0,-3783.63,-5713.77
    .target +Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto 1432/0,-3812.59,-5694.63
    >>Habla con |cRXP_FRIENDLY_Vetaferro|r
    .accept 298 >> Acepta la misión Un informe sobre el avance de la excavación
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto 1432/0,-3816.18,-5786.250,30,0
    .goto 1432/0,-4013.68,-5791.58,40,0
    .goto 1432/0,-4124.56,-5742.100,40,0
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Viaja a |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto 1432/0,-4296.41,-5694.63
    >>Habla con |cRXP_FRIENDLY_Daryl|r
    .accept 257 >> Acepta la misión La fanfarronada de un cazador
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto 1432/0,-4197.38,-5699.97,45,0
	.goto 1432/0,-4109.39,-5856.89,45,0
	.goto 1432/0,-4055.33,-5760.68,45,0
	.goto 1432/0,-4118.49,-5601.37,45,0
	.goto 1432/0,-4092.57,-5553.35,45,0
	.goto 1432/0,-4128.42,-5517.30,45,0
	.goto 1432/0,-4190.21,-5588.49,45,0
	.goto 1432/0,-4197.38,-5699.97,45,0
    >>Mata |cRXP_ENEMY_Águilas ratoneras montesas|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Viaja a |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto 1432/0,-4296.41,-5694.63
    >>Habla con |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >> Entrega la misión La fanfarronada de un cazador
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    >>Mata |cRXP_ENEMY_Jabalíes monteses sarnosos|r y |cRXP_ENEMY_Jabalíes monteses|r. Despójalos para obtener sus |cRXP_LOOT_Intestinos de jabalí|r
    >>Mata |cRXP_ENEMY_Osos negros grisáceos|r y |cRXP_ENEMY_Osos negros mayores|r. Despójalos para obtener su |cRXP_LOOT_Carne de oso|r
    >>Mata |cRXP_ENEMY_Rondadores del risco|r y |cRXP_ENEMY_Rondadoras del bosque|r. Despójalas para obtener su |cRXP_LOOT_Icor de araña|r
    >>|cRXP_WARN_Recuerda kitearlos hacia los |cRXP_FRIENDLY_Montaraces|rsi es necesario|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Jabalíes monteses|r lanzan|r |T132337:0|t[Cargar] |cRXP_WARN_(Lanzamiento sobre sí mismo: Aumenta la velocidad de movimiento durante 3 segundos, causando 40-100 daño cuerpo a cuerpo al golpear. Solo se puede lanzar a distancia)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6780 >> Mata enemigos hasta alcanzar 6780+/11400xp
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Habla con |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrulla a lo largo del camino principal de Thelsamar|r
    .turnin 416,2 >> Entrega la misión Mata ratas
    .target Mountaineer Kadrell
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Habla con |cRXP_FRIENDLY_Brock|r y |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Pueden estar dentro o fuera del edificio|r
    .turnin 6392 >>Entrega la misión Regresa con Brock
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .turnin 298 >> Entrega la misión Un informe sobre el avance de la excavación
    .accept 301 >> Acepta la misión Informe a Forjaz
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Habla con |cRXP_FRIENDLY_Brock|r y |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Pueden estar dentro o fuera del edificio|r
    .turnin 6392 >>Entrega la misión Regresa con Brock
    .target Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 301 >> Acepta la misión Informe a Forjaz
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Habla con |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Puede estar dentro o fuera del edificio|r
    .turnin 6392 >>Entrega la misión Regresa con Brock
    .target Brock Stoneseeker
step
    #completewith next
    .goto 1432/0,-2966.06,-5365.72,12,0
    .goto 1432/0,-2969.92,-5377.12,12,0
    >>Entra en la Posada
    .goto 1432/0,-2954.42,-5394.10,10 >>Viaja hacia |cRXP_FRIENDLY_Vidra|r
step
    .goto 1432/0,-2954.42,-5394.10
    >>Habla con |cRXP_FRIENDLY_Vidra|r
    .accept 418 >> Acepta la misión Morcillas de Thelsamar
    .turnin 418 >> Entrega la misión Morcillas de Thelsamar
    .target Vidra Hearthstove
step
    .goto 1432/0,-2952.55,-5381.91
    >>|cRXP_WARN_NO te deshagas de ninguno de tus sobrantes|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .skill cooking,10 >> Cocina |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r para hacer |T133974:0|t[Carne de jabalí asada] hasta que tu habilidad de |T133971:0|t[Cocina] llegue a 10
step
    .goto 1432/0,-2952.55,-5381.91
    >>Habla con |cRXP_FRIENDLY_Yanni|r
    >>|cRXP_BUY_Compra tantas|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_como necesites/puedas|r
    >>|cRXP_WARN_NO te quedes por debajo de 45 Platas|r
    .vendor >> Vende la Basura
    .isOnQuest 1338
step
    #completewith next
    #requires Kadrell
    +|cRXP_WARN_Empieza a lanzar repetidamente|r |T132794:0|t[Crear agua r2] |cRXP_WARN_para crear tanta agua como sea posible antes de tomar el vuelo|r
step
    #requires Kadrell
    .goto 1432/0,-2929.93,-5424.95
    >>Habla con |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >> Vuela a Forjaz
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto 1455/0,-1303.71,-4631.08
    >>Habla con |cRXP_FRIENDLY_Pico Tormenta|r
    .turnin 301 >> Entrega la misión Informe a Forjaz
    .target Prospector Stormpike
    .isOnQuest 301
step << skip
    #completewith Monty
    .goto 1455/0,-1305.14,-4615.09,-1
    .goto 1455/0,-1158.00,-4816.48,-1
    .goto 1455/0,-1317.71,-4839.48,30 >>Haz logout skip para salir del Tranvía Subterráneo
step
    .goto 1455/0,-1249.87,-4793.31
    >>Habla con |cRXP_FRIENDLY_Volopiñón|r
    .vendor 5175 >>|cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
    >>Entra al Tranvía Subterráneo
    >>Habla con |cRXP_FRIENDLY_Monty|r
    .accept 6661 >> Acepta la misión A por las ratas del tranvía subterráneo
    .target Monty
step << Gnome
    >>Usa la |T133942:0|t[Flauta cazarratas] en las |cRXP_FRIENDLY_Ratas del subterráneo|r en el Tranvía Subterráneo
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Habla con |cRXP_FRIENDLY_Monty|r
    >>|cRXP_WARN_Espera al Roleplay|r << Gnome
    .turnin 6661 >> Entrega la misión A por las ratas del tranvía subterráneo << Gnome
    .timer 13,A por las ratas del tranvía subterráneo RP << Gnome
    .accept 6662 >> Acepta la misión Mi hermano Niblis
    .target Monty
    .zoneskip Stormwind City
step
    >>|cRXP_WARN_Monta en el Tranvia Subterráneo mientras lanzas repetidamente|r |T132794:0|t[Crear agua r2]
    >>Habla con |cRXP_FRIENDLY_Niblis|r en el otro lado del Tranvía Subterráneo
    .turnin 6662 >> Entrega la misión Mi hermano Niblis
    .target Nipsy
    .isOnQuest 6662
step
    #label Monty << Human
    .zone Stormwind City >> Entra en la Ciudad de Ventormenta
    .isOnQuest 1338
step
    #completewith next
    .goto 1453/0,574.95,-8388.30,20,0
    .goto 1453/0,614.33,-8380.77,20,0
    .goto 1453/0,638.26,-8342.22,15 >>Viaja hacia |cRXP_FRIENDLY_Billibub|r
step
    .goto 1453/0,638.26,-8342.22
    >>Habla con |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto 1453/0,600.08,-8427.20
    >>Habla con |cRXP_FRIENDLY_Furen|r
    .turnin 1338 >> Entrega la misión Un pedido de Pico Tormenta
    .target Furen Longbeard
step
    #completewith next
    .goto 1453/0,663.94,-8451.76,20,0
    .goto 1453/0,686.79,-8473.27,20,0
    .goto 1453/0,678.86,-8562.64,20,0
    .goto 1453/0,711.26,-8587.38,20,0
    .goto 1453/0,737.60,-8557.89,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Viaja hacia |cRXP_FRIENDLY_Baros|r
step
    .goto 1453/0,719.86,-8550.36
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Baros|r
    .accept 399 >> Acepta la misión Principios humildes
    .target Baros Alexston
step
    #completewith next
    .goto 1453/0,739.49,-8661.68,15,0
    .goto 1453/0,720.67,-8699.06,15,0
    .goto 1453/0,728.33,-8718.06,15,0
    .goto 1453/0,699.16,-8743.88,15,0
    .goto 1453/0,674.29,-8775.79,15,0
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Salta encima de la antorcha y déjate caer para meterte debajo de Ventormenta|r
    >>|cRXP_WARN_Con los gráficos de las sombras en "Bueno" o "Bajo", colócate en el medio de los pies de Derek el Dinosaurio (la parte más clara de la tierra) justo antes del vacío azul, luego camina recto hacia adelante|r
    >>|cRXP_WARN_NOTA: Hay una pequeña probabilidad de morir usando este método. También puedes caminar a la Torre de los Magos normalmente si lo deseas|r
    .link https://youtu.be/gV8-wgQEomc >> HAZ CLIC AQUÍ para ver una guía
    .goto 1453/0,861.95,-8990.47,10 >>Viaja hacia |cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Habla con |cRXP_FRIENDLY_Jennea|r
    .accept 1861 >> Acepta la misión Lago Espejo << Gnome
    .trainer >> Aprende tus hechizos de clase (Explosión de Fuego r2, Intelecto Arcano r2, Deflagración Arcana)
    >>Coste Total: 27 platas
    >>Ten en cuenta que es posible que debas reservar algo de dinero para comprar Pociones (1-3 platas cada una) y Pergaminos (50 cobres-3 platas cada uno)
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Sal de la Torre de los Magos
    .goto 1453/0,948.65,-8994.50,10 >>Viaja hacia |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferior] |cRXP_BUY_y|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .money <0.0120
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Viaja hacia |cRXP_FRIENDLY_Adair|r
    .money <0.0090
step
    .goto 1453/0,822.16,-8865.60
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Cómprale|r |T134943:0|t[Pergaminos] |cRXP_BUY_que no sean de intelecto (si están disponibles)|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Viaja hacia |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto 1453/0,681.28,-8888.01
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compra un|r |T132620:0|t[Tonel de Merlot] |cRXP_BUY_a este vendedor|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Viaja hacia |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto 1453/0,635.44,-8863.81
    >>Habla con |cRXP_FRIENDLY_Keldric|r a través de la pared
    .vendor 1257 >> |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_(si están disponibles)|r
    .money <0.01
    .target Keldric Señalo
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Entra en el Banco de Ventormenta
step
    .goto 1453/0,614.33,-8932.92
    >>Habla con |cRXP_FRIENDLY_Newton|r
    .bankdeposit 769,4371,730,7207,1941,1711,1478,1712,3012,1180,1181,3013,6889 >> Deposita los siguientes objetos en el banco:
    >>|T133970:0|t[Trozos de carne de jabalí]
    >>|T133024:0|t[Tubo de bronce]
    >>|T133884:0|t[Ojos de múrloc]
    >>|T132788:0|t[Frasco de Jennea]
    >>|T132620:0|t[Tonel de Merlot]
    >>|T134943:0|t[Pergaminos]
    >>|T132832:0|t[Huevo pequeño]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,4371,7207 >> Deposita los siguientes objetos en el banco:
    >>|T133970:0|t[Trozos de carne de jabalí]
    >>|T133024:0|t[Tubo de bronce]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,730,7207 >> Deposita los siguientes objetos en el banco:
    >>|T133970:0|t[Trozos de carne de jabalí]
    >>|T133884:0|t[Ojos de múrloc]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,730,7207 >> Deposita los siguientes objetos en el banco:
    >>|T133024:0|t[Tubo de bronce]
    >>|T133884:0|t[Ojos de múrloc]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,7207 >> Deposita los siguientes objetos en el banco:
    >>|T133970:0|t[Trozos de carne de jabalí]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,7207 >> Deposita los siguientes objetos en el banco:
    >>|T133024:0|t[Tubo de bronce]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 730,7207 >> Deposita los siguientes objetos en el banco:
    >>|T133884:0|t[Ojos de múrloc]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 7207 >> Deposita el siguiente objeto en el banco:
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto 1453/0,662.46,-8860.76,10,0
    >>Entra en la Posada
    .goto 1453/0,673.75,-8867.93,10 >>Viaja hacia |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===PRESTA ATENCIÓN===|r
    >>|cRXP_WARN_Habla con|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Abre el menú "Fijar piedra de hogar" , luego lanza|r |T134414:0|t[Piedra de hogar]
    .hs >> |cRXP_WARN_Hearthstone BATCH de Ventormenta a Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 14-16 ADV Costa Oscura 2 Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none Mage
#next 16-18 ADV Páramos de Poniente Mago AoE


step
    #completewith DeepO
    +|cRXP_WARN_Guarda las |T132917:0|t[Plumas ligeras] que consigas para después|r
step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 20|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>Habla con |cRXP_FRIENDLY_Barithras|r y |cRXP_FRIENDLY_Glynda|r
    .accept 947 >>Acepta la misión La cueva de las setas
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4811 >>Acepta la misión El cristal rojo
    .goto 1439/1,473.63,6439.07
    .target +Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Habla con |cRXP_FRIENDLY_Gorbold|r
    .accept 982 >> Acepta la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step
    .goto 1439/1,492.62,6580.99
    >>Habla con |cRXP_FRIENDLY_Thundris|r
    .turnin 4761 >> Entrega la misión Thundris Tejevientos
    .accept 4762 >> Acepta la misión El Río Fonroca
    .target Thundris Windweaver
step
    #completewith MistV
    .goto 1439/1,592.18,6666.14,50,0
    .goto 1439/1,565.33,6925.96,50,0
    .goto 1439/1,478.21,6985.78,50,0
    >>Mata |cRXP_ENEMY_Trilladores de Costa Oscura|r en el agua. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto 1439/1,438.91,7077.48
--  .goto 1439/1,437.60,7076.17
    >>Despoja el |cRXP_LOOT_Arcón del Amanecer de Plata|r a través de la pared del barco
    >>|cRXP_WARN_Usa tu atajo de teclado "Interactuar con objetivo" bajo el agua junto a la ubicación de la flecha|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto 1439/1,349.18,7133.81
--  .goto 1439/1,345.90,7134.68
   >>Despoja el |cRXP_LOOT_Arcón del Halo de bruma|r a través de la pared del barco
   >>|cRXP_WARN_Usa tu atajo de teclado "Interactuar con objetivo" bajo el agua junto a la ubicación de la flecha|r
   >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78,50,0
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78
   >>Mata |cRXP_ENEMY_Trilladores de Costa Oscura|r en el agua. Despójalos para obtener sus |cRXP_LOOT_Ojos de trillador|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_Guarda los|r |T133884:0|t[Ojos de Múrloc] |cRXP_WARN_que despojes de los|r |cRXP_ENEMY_Correcostas Brumagris|r |cRXP_WARN_y de los|r |cRXP_ENEMY_Videntes Brumagris|r
step
   .goto 1439/1,196.56,6958.71
   >>Despoja la |cRXP_LOOT_Criatura marina varada|r del suelo
   >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
   .accept 4723 >> Acepta la misión Criatura marina varada
step
   .goto 1439/1,193.29,7084.03
   >>Haz clic en la |cRXP_PICK_Caja mecánica 411|r
   .turnin 1001 >> Entrega la misión La caja mecánica 411
   .accept 1002 >> Acepta la misión La caja mecánica 323
step
    #completewith SeaTurtle1
    .goto 1439/1,81.28,7118.96,50,0
    >>Mata con AoE a los |cRXP_ENEMY_Volantones zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith SeaTurtle1
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_(Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label SeaTurtle1
    .goto 1439/1,46.57,7433.8,80 >>Viaja hacia la |cRXP_LOOT_Tortuga marina varada|r
    .isQuestAvailable 4725
step
    #completewith next
    +Guarda los |T133884:0|t[Ojos de Múrloc] que despojes de los |cRXP_ENEMY_Guerreros Brumagris|r y de los |cRXP_ENEMY_Enredadores Brumagris|r
step
    .goto 1439/1,46.57,7433.800
    >>Despoja la |cRXP_LOOT_Tortuga marina varada|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4725 >> Acepta la misión Tortuga marina varada
step
    #completewith River
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith River
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith RedC
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_(Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label River
    .goto 1439/1,-383.77,7222.89
    >>Usa el |T134865:0|t[Tubo de ensayo vacío] en el agua
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #completewith RedC
    >>Mata a los |cRXP_ENEMY_Zancudos del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider
step
    #completewith RedC
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #label RedC
    .goto 1439/1,-144.04,6209.82,400 >>Viaja hacia la |cRXP_PICK_El cristal rojo|r
    .isOnQuest 4811
step
    #completewith Bash
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith Bash
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
    .goto 1439/1,-144.04,6209.82
    >>Corre hacia la |cRXP_PICK_El cristal rojo|r
    >>|cRXP_WARN_Recuerda pullear a los |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r que están vinculados|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto 1439/1,166.43,5633.86,175 >>Viaja hacia la |cRXP_PICK_Llama antigua|r
    .isOnQuest 957
step
    #completewith next
    .goto 1439/1,161.19,5684.51,0
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener |cRXP_LOOT_Colgante de Anaia|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto 1439/1,166.43,5633.86
    >>Haz clic en la |cRXP_PICK_Llama antigua|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10
    >>Mata a |cRXP_ENEMY_Anaia Correalba|r. Despójala para obtener |cRXP_LOOT_Colgante de Anaia|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith RBears
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith RBears
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    +Guarda los |T133884:0|t[Ojos de Múrloc] que despojes de los |cRXP_ENEMY_Correcostas Brumagris|r y de los |cRXP_ENEMY_Videntes Brumagris|r
step
    #label BeachedST
    .goto 1439/1,511.62,5618.58
    >>Haz clic en la |cRXP_PICK_Tortuga marina varada|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4722 >> Acepta la misión Tortuga marina varada
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto 1439/1,404.20,5796.300,45,0
	.goto 1439/1,327.56,5778.830,45,0
	.goto 1439/1,372.10,5556.130,45,0
	.goto 1439/1,330.18,5437.80,45,0
	.goto 1439/1,322.98,5252.65,45,0
	.goto 1439/1,491.97,5274.48,45,0
	.goto 1439/1,411.40,5376.23,45,0
	.goto 1439/1,419.92,5550.46,45,0
	.goto 1439/1,404.20,5796.300,45,0
    >>Mata a los |cRXP_ENEMY_Osos cardo rabiosos|r
    >>|cRXP_WARN_Ten cuidado ya que lanzan|r |T135914:0|t[Rabia animal] |cRXP_WARN_(Golpe instantáneo Cuerpo a cuerpo: Reduce TODA la regeneración de vida un 50% durante 10 minutos)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label RBears
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto 1439/1,370.14,5856.56,50,0
	.goto 1439/1,307.91,5877.96,50,0
	.goto 1439/1,324.29,5922.06,50,0
	.goto 1439/1,328.22,5958.74,50,0
	.goto 1439/1,305.95,5998.48,50,0
	.goto 1439/1,373.41,6018.56,50,0
	.goto 1439/1,328.22,5958.74,50,0
    >>Mata |cRXP_ENEMY_Abrecaminos Bosque Negro|r y |cRXP_ENEMY_Soplavientos Bosque Negro|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Abrecaminos Bosque Negro|r lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos), y los |cRXP_ENEMY_Soplavientos Bosque Negro|r lanzan|r |T136022:0|t[Racha de viento] |cRXP_WARN_(aturdimiento aoe cuerpo a cuerpo)|r
    .complete 985,1 --Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 --Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith Auberdine
    >>Mata |cRXP_ENEMY_Cachorro Acechalunas|r Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
#loop
	.line Darkshore,38.63,51.25,38.33,50.00,38.18,48.42,38.73,47.62,39.49,47.65,41.40,47.13,41.67,49.47,41.45,50.84,38.63,51.25
	.goto 1439/1,411.40,6095.42,50,0
	.goto 1439/1,431.05,6150.00,50,0
	.goto 1439/1,440.88,6218.99,50,0
	.goto 1439/1,404.85,6253.93,50,0
	.goto 1439/1,355.07,6252.62,50,0
	.goto 1439/1,229.97,6275.32,50,0
	.goto 1439/1,212.28,6173.14,50,0
	.goto 1439/1,226.69,6113.32,50,0
	.goto 1439/1,411.40,6095.42,50,0
    >>Mata |cRXP_ENEMY_Volantones zancudo del bosque|r. Despójalos para obtener su |cRXP_LOOT_Carne de zancudo|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto 1439/1,543.06,6342.57,150 >>Viaja hacia |cRXP_FRIENDLY_Gwennyth|r
    .isOnQuest 982
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Habla con |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4722 >> Entrega la misión Tortuga marina varada
    .turnin 4723 >> Entrega la misión Criatura marina varada
    .turnin 4725 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 20|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .vendor >> Vende la Basura
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Habla con |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Entrega la misión Un amor eterno
    .target Cerellean Whiteclaw
step
    #completewith CliffRi
    +Equipa la |T134797:0|t[Lágrima de dolor]
    .use 5611
    .itemcount 5611,1
    .itemStat 17,LEVEL,<16
step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compra 15|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compra 10|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compra 5|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto 1439/1,488.69,6451.300,20,0
    .goto 1439/1,487.38,6481.870,20,0
    .goto 1439/1,489.35,6506.32,15 >>Viaja hacia |cRXP_FRIENDLY_Hollee|r
step
    .goto 1439/1,489.35,6506.32
    >>Habla con |cRXP_FRIENDLY_Hollee|r
    .accept 729 >>Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    .goto 1439/1,488.69,6564.830
    >>Habla con |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Compra tantas|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_como necesites/puedas|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto 1439/1,488.69,6564.830
    >>Habla con |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Compra una|r |T133634:0|t[Cartera de cuero marrón] |cRXP_BUY_a este vendedor|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto 1439/1,492.62,6580.99
    >>Habla con |cRXP_FRIENDLY_Thundris|r
    .turnin 4762 >> Entrega la misión El Río Fonroca
    .accept 4763 >> Acepta la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .goto 1439/1,472.97,6557.85
    >>Habla con |cRXP_FRIENDLY_Alanndarian|r
    .accept 2178 >>Acepta la misión Guiso de zancudo
    .turnin 2178 >>Entrega la misión Guiso de zancudo
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Habla con |cRXP_FRIENDLY_Gorbold|r
    .turnin 982,2 >> Entrega la misión Profundo océano, mar inmenso
    .target Gorbold Steelhand
step
    #completewith next
    .goto 1439/1,476.25,6479.25,15,0
    .goto 1439/1,478.21,6446.50,15,0
    .goto 1439/1,473.63,6439.07,20 >>Viaja hacia Glynda
step
    .goto 1439/1,473.63,6439.07
    >>Habla con |cRXP_FRIENDLY_Glynda|r
    .turnin 4811 >>Entrega la misión El cristal rojo
    .accept 4812 >>Acepta la misión Agua en cascada
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,465.11,6416.80
    >>Usa el |T133748:0|t[Cuenco de purificación vacío] y el |T134865:0|t[Tubo de agua vacío] en la Poza de la Luna
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .collect 14339,1,4812,1 --Moonwell Water Tube (1)
    .use 12346
    .use 14338
step
    >>Habla con |cRXP_FRIENDLY_Tharnariun|r, |cRXP_FRIENDLY_Terenthis|r y luego con |cRXP_FRIENDLY_Elissa|r arriba
    .turnin 2138 >>Entrega la misión La limpieza de la infección
    .accept 2139 >>Acepta la misión La esperanza de Tharnariun
    .target +Tharnariun Treetender
    .goto 1439/1,397.65,6437.33
    .turnin 985 >> Entrega la misión La extensión de la amenaza
    .accept 986 >> Acepta la misión El maestro perdido
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 965 >>Acepta la misión La Torre de Althalaxx
    .goto 1439/1,369.48,6449.99,8,0
    .goto 1439/1,384.55,6431.65
    .target +Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +Equipa el |T132491:0|t[Cinturón de hombre sabio]
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto 1439/1,-157.79,6206.770
    >>Haz clic en |cRXP_PICK_El cristal rojo|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    >>|cRXP_WARN_Recuerda pullear a los |cRXP_ENEMY_Lechúcicos lunares enfurecidos|r que están vinculados|r
    .turnin 4812 >> Entrega la misión Agua en cascada
    .accept 4813 >> Acepta la misión Los trozos del interior
step
    #completewith GrainSample
    >>Mata |cRXP_ENEMY_Cachorros Acechalunas|r y |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .goto 1439/1,47.88,6748.67
    >>Habla con |cRXP_FRIENDLY_Asterion|r
    .turnin 957,3 >>Entrega la misión Bashal'Aran
    .target Asterion
step
    #label GrainSample
    .goto 1439/1,-376.56,6805.87
    >>Abre las |cRXP_PICK_Provisiones de grano de los Bosque Negro|r. Despójalas para obtener la |cRXP_LOOT_Muestra de grano Bosque Negro|r
    >>|cRXP_WARN_Atrae a los enemigos que lo protegen, lanza|r |T135848:0|t[Nova de escarcha]|cRXP_WARN_, despoja la |cRXP_LOOT_Muestra de grano Bosque Negro|r, luego corre hacia la |cRXP_ENEMY_Madre del cubil|r alejándote de los enemigos que aparecen|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .collect 12342,1,4673,1 --Blackwood Grain Sample (1)
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    #completewith DenM
    .goto 1439/1,-485.95,6763.95,20,0
    .goto 1439/1,-489.88,6724.22,20,0
    .goto 1439/1,-436.82,6694.96,30 >>Viaja hacia la |cRXP_ENEMY_Madre del cubil|r
step
    .goto 1439/1,-432.24,6664.39
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r
    >>|cRXP_WARN_Ten cuidado porque la |cRXP_ENEMY_Madre del cubil|r y sus |cRXP_ENEMY_Cachorros cardo|r lanzan|r |T132141:0|t[Devastar] |cRXP_WARN_(2 segundos de aturdimiento)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto 1439/1,-432.24,6664.39
    >>Mata a la |cRXP_ENEMY_Madre del cubil|r
    >>|cRXP_WARN_Ten cuidado porque la |cRXP_ENEMY_Madre del cubil|r y sus |cRXP_ENEMY_Cachorros cardo|r lanzan|r |T132141:0|t[Devastar] |cRXP_WARN_(2 segundos de aturdimiento)|r
    >>|cRXP_WARN_Haz "Split Pull" |cRXP_ENEMY_Madre del cubil|r con tu|r |T133714:0|t[Dinamita férrea]
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,1
step
    #completewith Talisman
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-451.23,6870.06
    >>Abre las |cRXP_PICK_Provisiones de nueces de los Bosque Negro|r. Despójalas para obtener la |cRXP_LOOT_Muestra de nuez Bosque Negro|r :3
    >>|cRXP_WARN_Atrae a los enemigos que la protegen, lanza|r |T135848:0|t[Nova de escarcha]|cRXP_WARN_, despoja la |cRXP_LOOT_Muestra de nuez Bosque Negro|r, luego corre al norte|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto 1439/1,-520.01,6873.99
    >>Abre las |cRXP_PICK_Provisiones de fruta de los Bosque Negro|r. Despójalas para obtener la |cRXP_LOOT_Muestra de fruta Bosque Negro|r
    >>Mata a los |cRXP_ENEMY_Guerreros Bosque Negro|r que te ataquen
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto 1439/1,-497.74,6887.53
    .cast 16072 >>Usa el |T134712:0|t[Cuenco de purificación lleno] cerca de la hoguera para invocar a |cRXP_ENEMY_Xabraxxis|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .timer 20,La corrupción de los Bosque Negro RP
    .use 12347
step
    #label Talisman
    .goto 1439/1,-480.05,6888.84
    >>|cRXP_WARN_Espera al Roleplay|r
    >>Mata a |cRXP_ENEMY_Xabraxxis|r
    >>Despoja la |cRXP_PICK_Bolsa demoníaca de Xabraxxis|r que cae al suelo. Obtén el |cRXP_LOOT_Dije de corrupción|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto 1439/1,-417.83,7262.19
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
    .isQuestComplete 1002
step
    .goto 1439/1,-417.83,7262.19
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r
    .accept 1003 >> Acepta la misión La caja mecánica 525
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-537.04,7542.970
    >>Despoja la |cRXP_LOOT_Tortuga marina varada|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4727 >>Acepta la misión Tortuga marina varada
step
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02
    >>Mata a los |cRXP_ENEMY_Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos de Acechalunas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-417.83,7262.19
    >>Haz clic en la |cRXP_PICK_Caja mecánica 323|r
    .turnin 1002 >> Entrega la misión La Caja Mecánica 323
    .accept 1003 >> Acepta la misión La caja mecánica 525
step
    .goto 1439/1,-658.87,7246.47
    >>Habla con |cRXP_FRIENDLY_Balthule|r
    .turnin 965 >>Entrega la misión La Torre de Althalaxx
    .accept 966 >>Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90,50,0
    .goto 1439/1,-875.02,7228.570,50,0
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90
    >>Mata |cRXP_ENEMY_Fanáticas de la Facción Oscura|r. Despójalas para obtener |cRXP_LOOT_Papiros desgastados|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439/1,-658.87,7246.47
    >>Habla con |cRXP_FRIENDLY_Balthule|r
    .turnin 966 >>Entrega la misión La Torre de Althalaxx
    .accept 967 >>Acepta la misión La Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto 1439/1,-660.83,6873.99,30 >>Entra en la cueva
step << skip
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_Recuerda hacer el Logout Skip de la Cueva pronto|r
step
    #completewith next
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    >>Despoja los azules |cRXP_LOOT_Boletos rudos|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Quédate en el nivel superior de la cueva. Baja si no hay una |cRXP_LOOT_Oronja verde|r en el nivel superior
    >>Despoja la |cRXP_LOOT_Oronja verde|r naranja del suelo al final del caminito superior de la cueva
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67
    >>Despoja los primeros |cRXP_LOOT_Boletos rudos|r en la entrada de la cueva después de despojar la |cRXP_LOOT_Oronja verde|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 947,1 --Scaber Stalk (5)
step << skip
    .goto 1439/1,-658.21,6825.96
    .goto 1439/1,210.32,6739.501,30 >> |cRXP_WARN_Haz un Logout Skip dentro de la cueva|r
    .isOnQuest 4763
step
    #completewith next
    .subzone 442 >> Viaja a Auberdine
    .isOnQuest 4763
step
    .goto 1439/1,492.62,6580.99
    >>Habla con |cRXP_FRIENDLY_Thundris|r
    .turnin 4763,1 >> Entrega la misión La corrupción de los Bosque Negro
    .target Thundris Windweaver
step
    .goto 1439/1,488.69,6564.830
    >>Habla con |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >> |cRXP_BUY_Compra una|r |T133634:0|t[Cartera de cuero marrón] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_NO dejes que tu dinero baje de 30 monedas de plata|r
    .target Dalmond
step
    .goto 1439/1,397.65,6437.33
    >>Habla con |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2139,1 >>Entrega la misión La esperanza de Tharnariun
    .target Tharnariun Treetender
step
    >>Habla con |cRXP_FRIENDLY_Glynda|r, |cRXP_FRIENDLY_Barithras|r, y el |cRXP_PICK_Cartel de Se busca|r
    .turnin 4813,2 >>Entrega la misión Los trozos del interior
    .target +Sentinel Glynda Nal'Shea
    .goto 1439/1,473.63,6439.07
    .turnin 947 >>Entrega la misión La Cueva de las Setas
    .accept 948 >>Acepta la misión Onus
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 40|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,543.06,6342.57
    >>Habla con |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4727 >> Entrega la misión Tortuga marina varada
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===PRESTA ATENCIÓN===|r
    >>|cRXP_WARN_Habla con|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Abre el menú "Fijar piedra de hogar" , luego lanza|r |T134414:0|t[Piedra de hogar]
    .hs >> |cRXP_WARN_Hearthstone BATCH de Auberdine a Ventormenta|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 16-18 ADV Páramos de Poniente Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none Mage
#next 18-20 ADV Costa Oscura 3 Mago AoE

step
    #completewith JenneaT
    +|cRXP_WARN_NOTA: Necesitas 12 stacks de cada tela (|r|T132911:0|t[Paño de lana]|cRXP_WARN_,|r |T132905:0|t[Paño de seda]|cRXP_WARN_,|r |T132892:0|t[Paño de tejido mágico]|cRXP_WARN_,|r y |T132903:0|t[Paño rúnico]|cRXP_WARN_) para las entregas de tela más adelante. Las obtendrás naturalmente conforme subes de nivel|r
step << skip
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Viaja hacia |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto 1453/0,681.28,-8888.01
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compra un|r |T132620:0|t[Tonel de Merlot] |cRXP_BUY_a este vendedor|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #sticky
    #label Bank2
    >>Habla con |cRXP_FRIENDLY_Newton|r
    .bankdeposit 17056,5354,2592,6889 >> Deposita los siguientes objetos en el banco:
    >>|T132917:0|t[Pluma ligera]
    >>|T133469:0|t[Carta para Delgren]
    >>|T132911:0|t[Paño de lana]
    >>|T132832:0|t[Huevo pequeño]
    .target Newton Burnside
step
    .goto 1453/0,614.33,-8932.92
    >>Habla con |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 730,7207 >> Retira los siguientes artículos de tu banco: << Gnome
    .bankwithdraw 730,16115 >> Retira los siguientes artículos de tu banco: << Human
    >>|T133884:0|t[Ojos de múrloc]
    >>|T132788:0|t[Frasco de Jennea] << Gnome
    >>|T132763:0|t[Cajón de Osric] << Human
    .target Newton Burnside
step
    #requires Bank2
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Salta encima de la antorcha y déjate caer para meterte debajo de Ventormenta|r
    >>|cRXP_WARN_Con los gráficos de las sombras en "Bueno" o "Bajo", colócate en el medio de los pies de Derek el Dinosaurio (la parte más clara de la tierra) justo antes del vacío azul, luego camina recto hacia adelante|r
    >>|cRXP_WARN_NOTA: Hay una pequeña probabilidad de morir usando este método. También puedes caminar a la Torre de los Magos normalmente si lo deseas|r
    .link https://youtu.be/gV8-wgQEomc >> HAZ CLIC AQUÍ para ver una guía
    .goto 1453/0,861.95,-8990.47,10 >>Viaja hacia |cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto 1453/0,861.95,-8990.47
    >>Habla con |cRXP_FRIENDLY_Jennea|r
    .trainer >> Aprende tus hechizos de clase (Fogonazo)
    >>Coste total: 15 platas
    .target Jennea Cannon
step
    .goto 1453/0,635.44,-8863.81
    >>Habla con |cRXP_FRIENDLY_Keldric|r a través de la pared
    .vendor 1257 >> |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Keldric Señalo
    .money <0.14
step
    #completewith next
    .goto 1453/0,618.90,-8796.58,12,0
    .goto 1453/0,612.99,-8795.96,10 >>Viaja hacia |cRXP_FRIENDLY_Woo Ping|r
step
    .goto 1453/0,612.99,-8795.96
    >>Habla con |cRXP_FRIENDLY_Woo Ping|r
    .train 1180 >> Aprende |T132321:0|t[Dagas]
    .target Woo Ping
step
    #completewith next
    .goto 1453/0,612.45,-8806.18,12,0
    .goto 1453/0,528.43,-8850.28,20,0
    .goto 1453/0,532.20,-8863.72,15,0
    .goto 1453/0,490.12,-8835.67,10 >>Viaja hacia |cRXP_FRIENDLY_Dungar|r
step << Human
    .goto 1453/0,490.12,-8835.67
    >>Habla con |cRXP_FRIENDLY_Dungar|r
    .turnin 6261 >> Entrega la misión Dungar Tragolargo
    .accept 6285 >> Acepta la misión Regresa junto a Lewis
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto 1453/0,490.12,-8835.67
    >>Habla con |cRXP_FRIENDLY_Dungar|r
    .fp Stormwind City >> Consigue la ruta de vuelo de la Ciudad de Ventormenta << Gnome
    .fly Westfall >> Vuela a Páramos de Poniente << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Déjate caer hasta el saliente de abajo de |cRXP_FRIENDLY_Dungar|r
step << Gnome
    #completewith next
    .goto 1429/0,421.28,-9104.28,40 >>Sal de Ventormenta
step << skip
    #completewith next
    #requires Stormwind1
    .goto 1429/0,44.35,-9458.41,30 >>Viaja hacia la Posada de Villadorada
step << skip
    #label GoldshireTrain
    .goto 1429/0,34.28,-9472.99
    >>Salta a la lámpara de araña del piso de abajo si no tienes que entrenar habilidades; de lo contrario, salta desde la Silla
    >>Habla con |cRXP_FRIENDLY_Zaldimar|r a través de la pared
    .accept 1919 >> Acepta la misión Preséntate ante Jennea
    .trainer >> Aprende tus hechizos de clase (Fogonazo)
    >>Coste total: 15 platas
step << skip
    .goto 1429/0,8.25,-9460.03
    >>Habla con |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Compra un|r |T132794:0|t[Odre de ron dulce] |cRXP_BUY_a este vendedor|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto 1429/0,16.23,-9462.580
    >>Habla con |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Compra 45|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto 1429/0,529.57,-9363.050
    >>Usa |T132788:0|t[Frasco de Jennea] en la cascada
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>Habla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna|r
    .accept 64 >> Acepta la misión La reliquia olvidada
    .accept 109 >> Acepta la misión Habla con Gryan Mantorrecio
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 151 >> Acepta la misión La pobre y vieja Blanchy
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
step << Gnome
    #completewith Gryan
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener |cRXP_LOOT_Puñados de avena|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    >>Habla con el |cRXP_FRIENDLY_Granjero Saldean|r y luego con |cRXP_FRIENDLY_Salma|r dentro
    .accept 9 >> Acepta la misión Campos de la muerte
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >> Entrega la misión Estofado de los Páramos de Poniente
    .accept 38 >> Acepta la misión Estofado de los Páramos de Poniente
    .accept 22 >> Acepta la misión Pastel de hígado de dentosangre
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step << Gnome
    #completewith Gryan
    .goto 1436/0,1142.77,-10140.13,60,0
    >>Mata con AoE Vigías de la cosecha y Gólems de la cosecha. Despoja a los |cRXP_ENEMY_Vigías de la cosecha|r y a los |cRXP_ENEMY_Gólems de la cosecha|r para obtener sus |cRXP_LOOT_Frascos de aceite|r y sus |cRXP_LOOT_Lúpulos|r
    >>|cRXP_WARN_Recuerda hacer AoE con|r |T135826:0|t[Fogonazo]|cRXP_WARN_/|r|T136116:0|t[Deflagración Arcana] |cRXP_WARN_ahora|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step << Gnome
    #completewith next
    >>Mata con AoE a los |cRXP_ENEMY_Dentosangres jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Hígados de Dentosangre|r y |cRXP_LOOT_Morros de dentosangre|r
    >>Mata con AoE a los |cRXP_ENEMY_Desgarradores jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Carne fibrosa de buitre|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
step
    #label Gryan << Gnome
	>> Habla con |cRXP_FRIENDLY_Gryan|r y |cRXP_FRIENDLY_Danuvin|r << Gnome
	>> Habla con |cRXP_FRIENDLY_Gryan|r y luego con |cRXP_FRIENDLY_Lewis|r dentro << Human
    .turnin 109 >> Entrega la misión Habla con Gryan Mantorrecio << Gnome
    .accept 65 >> Acepta la misión La hermandad de los Defias
    .accept 12 >> Acepta la misión La Milicia Popular << Gnome
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 6285 >> Entrega la misión Regresa junto a Lewis << Human
    .goto 1436/0,1021.60,-10500.61 << Human
    .accept 102 >> Acepta la misión En patrulla por los Páramos de Poniente << Gnome
    .goto 1436/0,1041.97,-10511.13 << Gnome
	.target +Captain Danuvin << Gnome
    .target +Quartermaster Lewis << Human
step
    .goto 1436/0,1127.37,-10636.43
	>>Habla con |cRXP_FRIENDLY_Galiaan|r
    .accept 153 >> Acepta la misión Pañuelos rojos de cuero
	.target Scout Galiaan
step
    .goto 1436/0,1166.57,-10653.47
	>>Habla con |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compra 45|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto 1436/0,1166.57,-10653.47
	>>Habla con |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compra 40|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto 1436/0,1166.57,-10653.47
	>>Habla con |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compra 35|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto 1436/0,1166.57,-10653.47
	>>Habla con |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compra 30|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto 1436/0,1166.57,-10653.47
	>>Habla con |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compra 25|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto 1436/0,1166.57,-10653.47
	>>Habla con |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compra 20|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto 1436/0,1166.57,-10653.47
	>>Habla con |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compra 15|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto 1436/0,1166.57,-10653.47
	>>Habla con |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compra 10|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto 1436/0,1166.57,-10653.47
	>>Habla con |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compra 5|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a esta vendedora|r
    .collect 1205,5,64,1 --Melon Juice (5)
	.target Innkeeper Heather
    .money <0.05
step
    #completewith Grayson
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener |cRXP_LOOT_Puñados de avena|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith Oil
    >>Mata con AoE a los |cRXP_ENEMY_Dentosangres|r. Despójalos para obtener sus |cRXP_LOOT_Hígados de Dentosangre|r y |cRXP_LOOT_Morros de dentosangre|r
    >>Mata con AoE a los |cRXP_ENEMY_Desgarradores|r. Despójalos para obtener su |cRXP_LOOT_Carne fibrosa de buitre|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith Compass
    .goto 1436/0,1635.92,-10621.27,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Vigías de la cosecha|r. Despójalos para obtener sus |cRXP_LOOT_Frascos de aceite|r y |cRXP_LOOT_Lúpulos|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
step
    #completewith Oil
    >>Mata con AoE a los |cRXP_ENEMY_Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de cuero rojo|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Smuggler
    .mob Defias Trapper
    .mob Defias Looter
    .mob Defias Pillager
step
    #label Compass
    .goto 1436/0,1748.27,-10672.13
    >>Abre el |cRXP_PICK_Cofre de Alexston|r. Despójalo para obtener |cRXP_LOOT_Una sencilla brújula|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27,60,0
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27
    >>Mata con AoE Vigías de la cosecha y Gólems de la cosecha. Despoja a los |cRXP_ENEMY_Vigías de la cosecha|r y a los |cRXP_ENEMY_Gólems de la cosecha|r para obtener sus |cRXP_LOOT_Frascos de aceite|r y sus |cRXP_LOOT_Lúpulos|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step
    #completewith next
    +|cRXP_WARN_Atento al |cRXP_ENEMY_Viejo Ojosombrío|r. Intenta mantenerte cerca del borde de la cresta para no perderlo|r
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1952.67,-10751.7,60,0
    .goto 1436/0,1991.52,-10927.40,60,0
    .goto 1436/0,1874.97,-10996.000,60,0
    .goto 1436/0,1929.22,-11019.80,60,0
    .goto 1436/0,1917.67,-11086.77,30 >> Limpia los campamentos de gnolls con AoE
    >>Mata con AoE a los |cRXP_ENEMY_Herboristas Zarparrío|r, |cRXP_ENEMY_Bastardos Zarparrío|r y |cRXP_ENEMY_Toscos Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Garras gnoll|r
    >>Si encuentras al |cRXP_ENEMY_Viejo Ojosombrío|r, salta este paso
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Herbalist
    .mob Riverpaw Mongrel
    .mob Riverpaw Brute
step
    #completewith next
    +|cRXP_WARN_Encuentra al |cRXP_ENEMY_Viejo Ojosombrío|r. Kitéalo hacia|r |cRXP_FRIENDLY_Grisillo|r
    .unitscan Old Murk-Eye
step
    #label Grayson
    .goto 1436/0,1965.97,-11407.13
    >>Habla con |cRXP_FRIENDLY_Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .target Captain Grayson
step
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40
    >>Mata con AoE al |cRXP_ENEMY_Viejo Ojosombrío|r. Despójalo para obtener la |cRXP_LOOT_Escama de Viejo Ojosombrío|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1965.97,-11407.13
    >>Habla con |cRXP_FRIENDLY_Grisillo|r
    .accept 103 >> Acepta la misión Guardián de la Llama
    .turnin 103,1 >> Entrega la misión Guardián de la Llama
    .turnin 104,3 >> Entrega la misión La amenaza costera
    .target Captain Grayson
step
    #completewith next
    >>Mata con AoE a los |cRXP_ENEMY_Nudillos Defias|r y |cRXP_ENEMY_Bandoleros Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de cuero rojo|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Bandoleros Defias|r lanzan|r |T132090:0|t[Puñalada] |cRXP_WARN_(inflige el doble de daño desde atrás)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto 1436/0,1454.97,-11272.73
    >>Habla con |cRXP_FRIENDLY_Tragoamargo|r
    .accept 117 >> Acepta la misión Cebatruenos
    .turnin 117 >> Entrega la misión Cebatruenos
    .target Grimbooze Thunderbrew
step
    #completewith next
    .goto 1436/0,1309.72,-11213.000,60,0
    .goto 1436/0,1206.12,-11142.30,60,0
    .goto 1436/0,1177.07,-11100.30,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Nudillos Defias|r y |cRXP_ENEMY_Bandoleros Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos de cuero rojo|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Bandoleros Defias|r lanzan|r |T132090:0|t[Puñalada] |cRXP_WARN_(inflige el doble de daño desde atrás)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto 1436/0,1193.87,-11078.60,60 >> Viaja hacia el final de las Colinas Afiladas
    .isOnQuest 153
step
    #completewith Footpads
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener |cRXP_LOOT_Puñados de avena|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith AoE1
    >>Mata con AoE a los |cRXP_ENEMY_Dentosangres|r. Despójalos para obtener sus |cRXP_LOOT_Hígados de Dentosangre|r y |cRXP_LOOT_Morros de dentosangre|r
    >>Mata con AoE a los |cRXP_ENEMY_Desgarradores|r. Despójalos para obtener su |cRXP_LOOT_Carne fibrosa de buitre|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith next
    >>Mata con AoE a los |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos rojos de cuero|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Tramperos Defias|r lanzan|r |T132090:0|t[Puñalada] |cRXP_WARN_(inflige el doble de daño desde atrás) y|r |T132149:0|t[Red] |cRXP_WARN_(Inmoviliza durante 9 segundos)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label AoE1
    .goto 1436/0,1383.92,-10636.43,60,0
    .goto 1436/0,1328.97,-10454.90,60,0
    .goto 1436/0,1414.72,-10314.43,60,0
    .goto 1436/0,1389.52,-10270.330,60,0
    .goto 1436/0,1457.77,-10209.90,150 >> Viaja hacia la Granja de Molsen
    .isOnQuest 153
step
    #completewith Watch
    .goto 1436/0,1457.77,-10209.90,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Vigías de la cosecha|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    #completewith Furlbrows
    >>Mata con AoE a los |cRXP_ENEMY_Dentosangres jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Hígados de Dentosangre|r y |cRXP_LOOT_Morros de dentosangre|r
    >>Mata con AoE a los |cRXP_ENEMY_Desgarradores|r y |cRXP_ENEMY_Desgarradores jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Carne fibrosa de buitre|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto 1436/0,1471.77,-10022.07,60,0
    .goto 1436/0,1402.12,-10018.80,60,0
    .goto 1436/0,1310.77,-9885.10
    >>Mata con AoE a los |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos rojos de cuero|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Tramperos Defias|r lanzan|r |T132090:0|t[Puñalada] |cRXP_WARN_y|r |T132149:0|t[Red]
    >>|cRXP_WARN_Omite este paso si no tienes al menos 10/15 en ambos |cRXP_ENEMY_Tramperos Defias|r y|r |cRXP_ENEMY_Contrabandistas Defias|r
    .complete 153,1,1 --Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
    .complete 12,1 --Defias Trapper (15)
    .mob +Defias Trapper
    .complete 12,2 --Defias Smuggler (15)
    .mob +Defias Smuggler
step
    #completewith next
    .goto 1436/0,1310.77,-9885.10,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Tramperos Defias|r y |cRXP_ENEMY_Contrabandistas Defias|r. Despójalos para obtener sus |cRXP_LOOT_Pañuelos rojos de cuero|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Tramperos Defias|r lanzan|r |T132090:0|t[Puñalada] |cRXP_WARN_y|r |T132149:0|t[Red]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto 1436/0,1290.12,-9849.40
    >>Abre el |cRXP_PICK_Guardarropa de Cejade|r. Despoja el |cRXP_LOOT_Reloj de bolsillo de Cejade|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto 1436/0,1249.17,-9898.87,60,0
    .goto 1436/0,1207.17,-9940.4,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Vigías de la cosecha|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1195.97,-9750.00,60,0
    .goto 1436/0,1024.12,-9697.50
    >>Mata con AoE a los |cRXP_ENEMY_Exploradores Zarparrío|r y |cRXP_ENEMY_Gnolls Zarparrío|r. Despójalos para obtener sus |cRXP_LOOT_Garras gnoll|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto 1436/0,1184.07,-9623.77,60,0
    .goto 1436/0,1133.67,-9649.43,60,0
    .goto 1436/0,1058.07,-9591.80
    >>Mata con AoE a los |cRXP_ENEMY_Correcostas múrloc|r y |cRXP_ENEMY_Asaltantes múrloc|r. Despójalos para obtener sus |cRXP_LOOT_Ojos de múrloc|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto 1436/0,1037.07,-9849.17
    >>Mata con AoE a los |cRXP_ENEMY_Asaltantes de caminos Defias|r Despójalos para obtener sus |cRXP_LOOT_Pañuelos de cuero rojo|r
    >>|cRXP_WARN_Ten cuidado porque los |cRXP_ENEMY_Asaltantes de caminos Defias|r lanzan|r |T132090:0|t[Puñalada]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto 1436/0,1037.07,-9849.17
    >>Abre los |cRXP_PICK_Sacos de avena|r del suelo. Despójalos para obtener |cRXP_LOOT_Puñados de avena|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>Habla con el |cRXP_FRIENDLY_Granjero Cejade|r y |cRXP_FRIENDLY_Verna|r
    .turnin 64 >> Entrega la misión La reliquia olvidada
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >> Entrega la misión La pobre y vieja Blanchy
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
step
    .goto 1436/0,926.47,-10207.80,80,0
    .goto 1436/0,908.27,-10506.000
    >>Mata con AoE a los |cRXP_ENEMY_Dentosangres|r y |cRXP_ENEMY_Dentosangres jóvenes|r. Despójalos para obtener sus |cRXP_LOOT_Hígados de Dentosangre|r y |cRXP_LOOT_Morros de dentosangre|r
    >>Mata con AoE a los |cRXP_ENEMY_Desgarradores|r y |cRXP_ENEMY_Desgarradores jóvenes|r. Despójalos para obtener su |cRXP_LOOT_Carne fibrosa de buitre|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto 1436/0,1167.27,-10110.73,60,0
    .goto 1436/0,1207.17,-9940.40
    >>Mata con AoE a los |cRXP_ENEMY_Vigías de la cosecha|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1207.17,-9940.40
    .xp 17+11890 >> Mata enemigos hasta alcanzar 11890+/17700xp
    .isQuestComplete 12
step
    .goto 1436/0,1207.17,-9940.40
    >>|cRXP_WARN_Omite este paso si ya has completado el objetivo de la misión La Milicia Popular|r
    .xp 17+12800 >> Mata enemigos hasta alcanzar 12800+/17700xp
step
    >>Habla con el |cRXP_FRIENDLY_Granjero Saldean|r y luego con |cRXP_FRIENDLY_Salma|r dentro
    .turnin 9,1 >> Entrega la misión Campos de la muerte
    .vendor >> Vende la Basura
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 22 >> Entrega la misión Pastel de hígado de dentosangre
    .turnin 38 >> Entrega la misión Estofado de los Páramos de Poniente
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step
	>> Habla con |cRXP_FRIENDLY_Gryan|r y |cRXP_FRIENDLY_Danuvin|r
    .turnin 12 >> Entrega la misión La Milicia Popular
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 102,1 >> Entrega la misión En patrulla por los Páramos de Poniente
    .goto 1436/0,1041.97,-10511.13
	.target +Captain Danuvin
    .isQuestComplete 12
step
    .goto 1436/0,1041.97,-10511.13
	>> Habla con |cRXP_FRIENDLY_Danuvin|r
    .turnin 102,1 >> Entrega la misión En patrulla por los Páramos de Poniente
	.target Captain Danuvin
step
    .goto 1436/0,1127.37,-10636.43
	>>Habla con |cRXP_FRIENDLY_Galiaan|r
    .turnin 153,2 >> Entrega la misión Pañuelos rojos de cuero
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_Empieza a lanzar repetidamente|r |T132794:0|t[Crear agua r2] |cRXP_WARN_para crear tanta agua como sea posible antes de tomar el vuelo|r
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
	>>Habla con |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >> Vuela a Ventormenta
	.target Thor
step
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Salta encima de la antorcha y déjate caer para meterte debajo de Ventormenta|r
    >>|cRXP_WARN_Con los gráficos de las sombras en "Bueno" o "Bajo", colócate en el medio de los pies de Derek el Dinosaurio (la parte más clara de la tierra) justo antes del vacío azul, luego camina recto hacia adelante|r
    >>|cRXP_WARN_NOTA: Hay una pequeña probabilidad de morir usando este método. También puedes caminar a la Torre de los Magos normalmente si lo deseas|r
    .link https://youtu.be/gV8-wgQEomc >> HAZ CLIC AQUÍ para ver una guía
    .goto 1453/0,861.95,-8990.47,10 >>Viaja hacia |cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Habla con |cRXP_FRIENDLY_Jennea|r
    .turnin 1861,1 >> Entrega la misión Lago Espejo
--   .turnin 1919 >> Turn in Report to Jennea
    .trainer >> Aprende tus hechizos de clase (Bola de Fuego r4)
    >>Coste Total: 18 platas
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Sal de la Torre de los Magos
    .goto 1453/0,948.65,-8994.50,10 >>Viaja hacia |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >> |cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferior] |cRXP_BUY_y|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,958.74,-8987.870,20,0
    .goto 1453/0,941.80,-8918.49,20,0
    .goto 1453/0,916.79,-8891.960,20,0
    .goto 1453/0,948.65,-8816.30,20,0
    .goto 1453/0,946.64,-8803.31,20,0
    .goto 1453/0,970.57,-8772.740,20,0
    .goto 1453/0,1030.92,-8747.20,20,0
    .goto 1453/0,1049.34,-8750.330,20,0
    .goto 1453/0,1093.16,-8779.020,10 >>Viaja hacia |cRXP_FRIENDLY_Argos|r
step
    .goto 1453/0,1093.16,-8779.020
    >>Habla con |cRXP_FRIENDLY_Argos|r
    .accept 3765 >> Acepta la misión Lejana corrupción
    .target Argos Nightwhisper
step
    .goto 1453/0,822.16,-8865.60
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Cómprale|r |T134943:0|t[Pergaminos] |cRXP_BUY_que no sean de intelecto (si están disponibles)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Viaja hacia |cRXP_FRIENDLY_Roberto|r
step
    .goto 1453/0,681.28,-8888.01
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compra un|r |T132620:0|t[Tonel de Merlot] |cRXP_BUY_a este vendedor|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Viaja hacia |cRXP_FRIENDLY_Keldric|r
step
    .goto 1453/0,635.44,-8863.81
    >>Habla con |cRXP_FRIENDLY_Keldric|r a través de la pared
    .vendor 1257 >> |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Keldric Señalo
step
    #completewith Bank3
    .goto 1453/0,637.59,-8889.81,10 >>Entra en el Banco de Ventormenta
step
    #sticky
    #label Bank4
    .goto 1453/0,614.33,-8932.92
    >>Habla con |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 769,5354,6889 >> Retira los siguientes artículos de tu banco:
    >>|T133970:0|t[Trozos de carne de jabalí]
    >>|T133469:0|t[Carta para Delgren]
    >>|T132832:0|t[Huevo pequeño]
step
    #label Bank3
    .goto 1453/0,614.33,-8932.92
    >>Habla con |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_NOTA: Necesitas 12 stacks de cada tela (|r|T132911:0|t[Paño de lana]|cRXP_WARN_,|r |T132905:0|t[Paño de seda]|cRXP_WARN_,|r |T132892:0|t[Paño de tejido mágico]|cRXP_WARN_,|r y |T132903:0|t[Paño rúnico]|cRXP_WARN_) para las entregas de tela más adelante. Las obtendrás naturalmente conforme subes de nivel|r
    .bankdeposit 2998,4371,1711,1478,1712,3012,1180,1181,3013,17056,2592,2998,1941 >> Deposita los siguientes objetos en el banco:
    >>|T133024:0|t[Tubo de bronce]
    >>|T134943:0|t[Pergaminos]
    >>|T132917:0|t[Pluma ligera]
    >>|T132911:0|t[Paño de lana]
    >>|T134377:0|t[Una sencilla brújula]
    >>|T132620:0|t[Tonel de Merlot]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step
    #completewith next
    .goto 1453/0,662.46,-8860.76,10,0
    >>Entra en la Posada
    .goto 1453/0,673.75,-8867.93,10 >>Viaja hacia |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===PRESTA ATENCIÓN===|r
    >>|cRXP_WARN_Habla con|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Abre el menú "Fijar piedra de hogar" , luego lanza|r |T134414:0|t[Piedra de hogar]
    .hs >> |cRXP_WARN_Hearthstone BATCH de Ventormenta a Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 18-20 ADV Costa Oscura 3 Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none Mage
#next 20-22 ADV Montañas Crestagrana 1 Mago AoE

step
    .goto 1439/1,529.30,6415.93
    >>Habla con |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compra 45|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto 1439/1,529.30,6415.93
    >>Habla con |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compra 40|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto 1439/1,529.30,6415.93
    >>Habla con |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compra 35|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto 1439/1,529.30,6415.93
    >>Habla con |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compra 30|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto 1439/1,529.30,6415.93
    >>Habla con |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compra 25|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto 1439/1,529.30,6415.93
    >>Habla con |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compra 20|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto 1439/1,529.30,6415.93
    >>Habla con |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compra 15|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto 1439/1,529.30,6415.93
    >>Habla con |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compra 10|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto 1439/1,529.30,6415.93
    >>Habla con |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compra 5|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto 1439/1,533.23,6399.77
    >>Habla con |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compra hasta 40|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>ELIMINA ESTE PASO MÁS TARDE
    .accept 4740 >> Acepta la misión SE BUSCA: ¡Viscoso!
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,577.77,6371.39
    >>Habla con |cRXP_FRIENDLY_Gubber|r
    .accept 1138 >>Acepta la misión Rico marisco
    .target Gubber Blump
step
    .goto 1439/1,89.14,5002.00
    >>Habla con |cRXP_FRIENDLY_Onus|r
    .turnin 948 >> Entrega la misión Onus
    .accept 944 >> Acepta la misión La Espada del Maestro
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Habla con |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Kerlonian|r no está ahí, omite este paso|r
    .accept 5321 >>Acepta la misión El despertar
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |cRXP_LOOT_Cuerno de Despertar|r
    >>|cRXP_WARN_Usa el|r |T134229:0|t[|cRXP_LOOT_Cuerno de Despertar|r] |cRXP_WARN_en |cRXP_FRIENDLY_Kerlonian|r cuando se duerma|r
    >>|cRXP_WARN_Ambos tienen un tiempo de lanzamiento de 5 segundos|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith Glaive1
    >>Mata con AoE a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres de Acechalunas refinada|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r comparten apariciones con los |cRXP_ENEMY_Osos cardo grisáceos|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
   .complete 986,1 --Fine Moonstalker Pelt (5)
   .mob Moonstalker Sire
   .use 13536
   .isOnQuest 5321
step
    #completewith next
    >>Mata con AoE a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludo grisáceo|r
    >>|cRXP_ENEMY_Osos cardo grisáceos|r comparten puntos de aparición con |cRXP_ENEMY_Patriarcas Acechalunas|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
   .complete 1003,1 --Grizzled Scalp (4)
   .mob Grizzled Thistle Bear
   .use 13536
   .isOnQuest 5321
step
    #label Glaive1
   .goto 1439/1,410.09,4519.49
    >>Viaja a La Espada del Maestro
   .complete 944,1 --Enter the Master's Glaive (1)
   .use 13536
   .isOnQuest 5321
step
    #completewith Therylune1
    >>Mata con AoE a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .mob Twilight Disciple
    .mob Twilight Thug
    .use 13536
    .isOnQuest 5321
step
    #completewith next
    .goto 1439/1,410.09,4519.49
    >>Coloca la |T134715:0|t[Ampolla de adivinación] en el suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    >>Haz clic en la |cRXP_PICK_Ampolla de adivinación|r del suelo
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto 1439/1,410.09,4519.49
    >>Habla con |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Therylune|r no está ahí, mata con AoE a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] hasta que reaparezca|r
   .accept 945 >> Acepta la misión La fuga de Therylune
   .target Therylune
   .use 13536
   .isOnQuest 5321
step
    #completewith Tome1
    >>Escolta a |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
    .isOnQuest 5321
step
   .goto 1439/1,416.64,4576.69
   >>Coloca la |T134715:0|t[Ampolla de adivinación] en el suelo
   >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
   >>Haz clic en la |cRXP_PICK_Ampolla de adivinación|r del suelo
   .turnin 944 >> Entrega la misión La Espada del Maestro
   .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
   .use 13536
   .use 5251
   .isOnQuest 5321
step
    #label Tome1
   .goto 1439/1,416.64,4576.69
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r
   .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
   .accept 950 >> Acepta la misión Regresa junto a Onus
   .use 13536
   .isOnQuest 5321
step
   #label Therylune1
   >>Escolta a |cRXP_FRIENDLY_Therylune|r
   >>|cRXP_WARN_Asegúrate de que |cRXP_FRIENDLY_Therylune|r permanezca en tu rango de visión o fracasarás en la misión|r
   .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
   .use 13536
   .target Therylune
   .isOnQuest 950
step
    #completewith Remtravel1
    >>Mata con AoE a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres de Acechalunas refinada|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r comparten apariciones con los |cRXP_ENEMY_Osos cardo grisáceos|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith next
    >>Mata con AoE a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludo grisáceo|r
    >>|cRXP_ENEMY_Osos cardo grisáceos|r comparten puntos de aparición con |cRXP_ENEMY_Patriarcas Acechalunas|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #label Remtravel1
    .goto 1439/1,602.01,4678.87
    >>Habla con |cRXP_FRIENDLY_Tripirrem|r para iniciar la escolta
    .turnin 729 >> Entrega la misión El prospector despistado
    .accept 731 >> Acepta la misión El prospector despistado
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,892.83,4517.30
    >>Escolta a |cRXP_FRIENDLY_Tripirrem|r
    >>Cuando aparezca el |cRXP_ENEMY_Partehuesos Gravacal|r y el |cRXP_ENEMY_Geomántico Gravacal|r, deja que el |cRXP_ENEMY_Geomántico Gravacal|r lance |T135812:0|t[Bola de Fuego] a |cRXP_FRIENDLY_Tripirrem|r, luego lánzale |T136071:0|t[Polimorfia] . Mata al |cRXP_ENEMY_Partehuesos Gravacal|r y luego al |cRXP_ENEMY_Geomántico Gravacal|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>Mata con AoE a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres de Acechalunas refinada|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r comparten apariciones con los |cRXP_ENEMY_Osos cardo grisáceos|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>Mata con AoE a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludo grisáceo|r
    >>|cRXP_ENEMY_Osos cardo grisáceos|r comparten puntos de aparición con |cRXP_ENEMY_Patriarcas Acechalunas|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #completewith next
    +No vuelvas a despertar a |cRXP_FRIENDLY_Kerlonian|r de ahora en adelante
    >>Mantente atento a |cRXP_ENEMY_Zancador Madrezarpa|r
    .unitscan Strider Clutchmother
    .isOnQuest 950
step
    #label SeaC
    .goto 1439/1,892.83,4517.30
    >>Despoja la |cRXP_LOOT_Criatura marina varada|r del suelo
    >>|cRXP_WARN_Despójalo en la parte del cuello|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4733 >>Acepta la misión Criatura marina varada
    .isOnQuest 950
step
    #completewith next
    .abandon 5321 >> Abandona la misión El despertar
    .isOnQuest 950
step
    .goto 1439/1,896.76,4597.21
    >>Despoja la |cRXP_LOOT_Tortuga marina varada|r del suelo
    >>|cRXP_WARN_El Caparazón de tortuga bloquea la línea de visión (LoS)|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4732 >>Acepta la misión Tortuga marina varada
    .isOnQuest 950
step
    #completewith SeaCreature
    >>Mata con AoE a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Encrusted Tide Crawler
   .isOnQuest 950
step
    .goto 1439/1,865.32,4678.432
    >>Despoja la |cRXP_LOOT_Tortuga marina varada|r del suelo
    >>|cRXP_WARN_El Caparazón de tortuga bloquea la línea de visión (LoS)|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4731 >>Acepta la misión Tortuga marina varada
    .isOnQuest 950
step
    #label SeaCreature
    .goto 1439/1,799.82,4808.12
    >>Despoja la |cRXP_LOOT_Criatura marina varada|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4730 >>Acepta la misión Criatura marina varada
    .isOnQuest 950
step
    #completewith next
    >>Mata con AoE a los |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Reef Crawler
   .isOnQuest 950
step
   .goto 1439/1,549.61,4990.65
   >>Despeja el Campamento Múrloc sin moverte al centro del campamento
   >>Una vez que despejes todo, muévete al centro del campamento para convocar 3 oleadas (3 Correcostas, 2 Guerreros, Viscoso y un Cazador)
   >>|cRXP_WARN_Si tienes suerte, |cRXP_ENEMY_Viscoso|r podría estar ya allí a unos 30 metros de la costa hacia el oeste (si alguien murió contra él antes)|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,621.66,5210.29,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto 1439/1,585.63,5237.370
    >>Despoja la |cRXP_LOOT_Criatura marina varada|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4728 >>Acepta la misión Criatura marina varada
    .isOnQuest 950
step
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00
    >>Mata con AoE a los |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    #completewith SeaCreatureGiga
    >>Mata con AoE a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres de Acechalunas refinada|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r comparten apariciones con los |cRXP_ENEMY_Osos cardo grisáceos|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith SeaCreatureGiga
    >>Mata con AoE a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludo grisáceo|r
    >>|cRXP_ENEMY_Osos cardo grisáceos|r comparten puntos de aparición con |cRXP_ENEMY_Patriarcas Acechalunas|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label Onu2
    .goto 1439/1,89.14,5002.00
    >>Habla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto 1439/1,585.63,5237.370
    >>Despoja la |cRXP_LOOT_Criatura marina varada|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4728 >>Acepta la misión Criatura marina varada
step
    #completewith next
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,549.61,4990.65
    >>Despeja el Campamento Múrloc sin moverte al centro del campamento
    >>Una vez que despejes todo, muévete al centro del campamento para convocar 3 oleadas (3 Correcostas, 2 Guerreros, Viscoso y un Cazador)
    >>|cRXP_WARN_Si tienes suerte, |cRXP_ENEMY_Viscoso|r podría estar ya allí a unos 30 metros de la costa hacia el oeste (si alguien murió contra él antes)|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Reptadores de arrecife|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,799.82,4808.12
    >>Despoja la |cRXP_LOOT_Criatura marina varada|r del suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4730 >>Acepta la misión Criatura marina varada
step
    .goto 1439/1,793.27,4764.89,60,0
    .goto 1439/1,840.43,4696.77
    >>Mata con AoE a los |cRXP_ENEMY_Reptadores de marea escamados|r. Despójalos para obtener sus |cRXP_LOOT_Trozos de cangrejo de gran calidad|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,865.32,4678.432
    >>Despoja la |cRXP_LOOT_Tortuga marina varada|r del suelo
    >>|cRXP_WARN_El Caparazón de tortuga bloquea la línea de visión (LoS)|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4731 >>Acepta la misión Tortuga marina varada
step
    .goto 1439/1,896.76,4597.21
    >>Despoja la |cRXP_LOOT_Tortuga marina varada|r del suelo
    >>|cRXP_WARN_El Caparazón de tortuga bloquea la línea de visión (LoS)|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4732 >>Acepta la misión Tortuga marina varada
step
    .goto 1439/1,892.83,4517.30
    >>Despoja la |cRXP_LOOT_Criatura marina varada|r del suelo
    >>|cRXP_WARN_Despójalo en la parte del cuello|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .accept 4733 >>Acepta la misión Criatura marina varada
step
    #completewith Remtravel3
    >>Mata con AoE a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres de Acechalunas refinada|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r comparten apariciones con los |cRXP_ENEMY_Osos cardo grisáceos|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith Remtravel3
    >>Mata con AoE a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludo grisáceo|r
    >>|cRXP_ENEMY_Osos cardo grisáceos|r comparten puntos de aparición con |cRXP_ENEMY_Patriarcas Acechalunas|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #completewith next
    +No vuelvas a despertar a |cRXP_FRIENDLY_Kerlonian|r de ahora en adelante
    >>Mantente atento a |cRXP_ENEMY_Zancador Madrezarpa|r
    .unitscan Strider Clutchmother
 step
    #label Remtravel3
    .goto 1439/1,602.01,4678.87
    >>Habla con |cRXP_FRIENDLY_Tripirrem|r para iniciar la escolta
    .turnin 729 >> Entrega la misión El prospector despistado
    .accept 731 >> Acepta la misión El prospector despistado
    .target Prospector Remtravel
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,410.09,4519.49
    >>Escolta a |cRXP_FRIENDLY_Tripirrem|r
    >>Cuando aparezca el |cRXP_ENEMY_Partehuesos Gravacal|r y el |cRXP_ENEMY_Geomántico Gravacal|r, deja que el |cRXP_ENEMY_Geomántico Gravacal|r lance |T135812:0|t[Bola de Fuego] a |cRXP_FRIENDLY_Tripirrem|r, luego lánzale |T136071:0|t[Polimorfia] . Mata al |cRXP_ENEMY_Partehuesos Gravacal|r y luego al |cRXP_ENEMY_Geomántico Gravacal|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
step
    #completewith Glaive2
    >>Mata con AoE a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres de Acechalunas refinada|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r comparten apariciones con los |cRXP_ENEMY_Osos cardo grisáceos|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith next
    >>Mata con AoE a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludo grisáceo|r
    >>|cRXP_ENEMY_Osos cardo grisáceos|r comparten puntos de aparición con |cRXP_ENEMY_Patriarcas Acechalunas|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #label Glaive2
   .goto 1439/1,410.09,4519.49
    >>Viaja a La Espada del Maestro
   .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith Therylune2
    >>Mata con AoE a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r. Despójalos para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r]
    >>|cRXP_WARN_Usa el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] para comenzar la misión|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >> Acepta la misión Los Poderes Subyacentes
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #completewith next
    .goto 1439/1,410.09,4519.49
    >>Coloca la |T134715:0|t[Ampolla de adivinación] en el suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    >>Haz clic en la |cRXP_PICK_Ampolla de adivinación|r del suelo
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    .goto 1439/1,410.09,4519.49
    >>Habla con |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Therylune|r no está ahí, mata con AoE a los |cRXP_ENEMY_Discípulos Crepuscular|r y a los |cRXP_ENEMY_Matones Crepuscular|r para obtener el |T133743:0|t[|cRXP_LOOT_Libro: Los Poderes inferiores|r] hasta que reaparezca|r
    .accept 945 >> Acepta la misión La fuga de Therylune
    .target Therylune
step
    #completewith Tome2
    >>Escolta a |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .target Therylune
step
    .goto 1439/1,416.64,4576.69
    >>Coloca la |T134715:0|t[Ampolla de adivinación] en el suelo
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    >>Haz clic en la |cRXP_PICK_Ampolla de adivinación|r del suelo
    .turnin 944 >> Entrega la misión La Espada del Maestro
    .accept 949 >> Acepta la misión El campamento del Martillo Crepuscular
    .use 5251
step
    #label Tome2
    .goto 1439/1,416.64,4576.69
    >>Haz clic en el |cRXP_PICK_Libro del Crepúsculo|r
    .turnin 949 >> Entrega la misión El campamento del Martillo Crepuscular
    .accept 950 >> Acepta la misión Regresa junto a Onus
    .use 13536
step
    #label Therylune2
    >>Escolta a |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Asegúrate de que |cRXP_FRIENDLY_Therylune|r permanezca en tu rango de visión o fracasarás en la misión|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
step
    #completewith Onu3
    >>Mata con AoE a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres de Acechalunas refinada|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r comparten apariciones con los |cRXP_ENEMY_Osos cardo grisáceos|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith Onu3
    #label Scalps2
    >>Mata con AoE a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludo grisáceo|r
    >>|cRXP_ENEMY_Osos cardo grisáceos|r comparten puntos de aparición con |cRXP_ENEMY_Patriarcas Acechalunas|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #requires Scalps2
    #completewith next
    .goto 1439/1,229.97,4815.55,-1
    >>Haz clic en |cRXP_PICK_Caja mecánica 525|r
    .turnin 1003 >> Entrega la misión La caja mecánica 525
step
    #label Onu3
    .goto 1439/1,89.14,5002.00,-1
    >>Habla con |cRXP_FRIENDLY_Onus|r
    .turnin 950 >> Entrega la misión Regresa junto a Onus
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Habla con |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Si |cRXP_FRIENDLY_Kerlonian|r no está ahí, omite este paso|r
    .accept 5321 >>Acepta la misión El despertar
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
    >>Abre el |cRXP_PICK_Cofre de Kerlonian|r. Despójalo para obtener el |cRXP_LOOT_Cuerno de Despertar|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith 525
    >>Mata con AoE a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres de Acechalunas refinada|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r comparten apariciones con los |cRXP_ENEMY_Osos cardo grisáceos|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11,60,0
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11
    >>Mata con AoE a los |cRXP_ENEMY_Osos cardo grisáceos|r. Despójalos para obtener sus |cRXP_LOOT_Cueros cabelludo grisáceo|r
    >>|cRXP_ENEMY_Osos cardo grisáceos|r comparten puntos de aparición con |cRXP_ENEMY_Patriarcas Acechalunas|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label 525
    .goto 1439/1,229.97,4815.55
    >>Haz clic en |cRXP_PICK_Caja mecánica 525|r
    .turnin 1003 >> Entrega la misión La caja mecánica 525
    .use 13536
step
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02,70,0
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02
    >>Mata con AoE a las |cRXP_ENEMY_Matriarcas Acechalunas|r y a los |cRXP_ENEMY_Patriarcas Acechalunas|r. Despójalos para obtener sus |cRXP_LOOT_Pelambres de Acechalunas refinada|r
    >>|cRXP_ENEMY_Patriarcas Acechalunas|r comparten apariciones con los |cRXP_ENEMY_Osos cardo grisáceos|r y |cRXP_ENEMY_Zancudos del bosque gigantes|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .unitscan Moonstalker Matriarch
    .use 13536
step
    #completewith Sleeper
    .xp 19+4635 >> Mata enemigos hasta alcanzar 4635+/21300xp
    .isOnQuest 5321
step
    #completewith Delgren
    >>Mata con AoE a los |cRXP_ENEMY_Corredores Garraespectro|r. Despójalos para obtener sus |cRXP_LOOT_Costillares de lobo magro|r
    .collect 1015,10,90,1 --Lean Wolf Flank (10)
    .mob Ghostpaw Runner
step
    #label Sleeper
    .goto 1440/1,128.01,3305.31
    >>Habla con |cRXP_FRIENDLY_Liladris|r
    .turnin 5321,1 >>Entrega la misión El despertar
    .target Liladris Moonriver
    .use 13536
    .isOnQuest 5321
step
    #label Delgren
    .goto 1440/1,189.71,3185.390
    >>Habla con |cRXP_FRIENDLY_Delgren|r
    .turnin 967 >>Entrega la misión La Torre de Althalaxx
    .target Delgren the Purifier
step
    .goto 1440/1,394.43,2677.63
    >>Habla con |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entrega la misión La fuga de Therylune
    .target Therysil
step
    .goto 1440/1,-284.31,2828.30
    .xp 19+8720 >> Mata enemigos hasta alcanzar 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_Empieza a lanzar repetidamente|r |T132794:0|t[Crear agua r2] |cRXP_WARN_para crear tanta agua como sea posible antes de tomar el vuelo|r
step
    #completewith next
    .goto 1440/1,-284.31,2828.30
    >>Habla con |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >> Vuela a Auberdine
    .target Daelyshia
step
    >>Habla con |cRXP_FRIENDLY_Gwennyth|r y |cRXP_FRIENDLY_Gubber|r
    .turnin 4728 >>Entrega la misión Criatura marina varada
    .turnin 4730 >>Entrega la misión Criatura marina varada
    .turnin 4731 >>Entrega la misión Tortuga marina varada
    .turnin 4732 >>Entrega la misión Tortuga marina varada
    .turnin 4733 >>Entrega la misión Criatura marina varada
    .target +Gwennyth Bly'Leggonde
    .goto 1439/1,543.06,6342.130
    .turnin 1138,2 >>Entrega la misión Rico marisco
    .goto 1439/1,577.77,6371.39
    .target +Gubber Blump
step
    .goto 1439/1,470.35,6439.07
    >>Habla con |cRXP_FRIENDLY_Glynda|r
    .turnin 4740 >>Entrega la misión SE BUSCA: ¡Viscoso!
    .target Sentinel Glynda Nal'Shea
step
    >>Habla con |cRXP_FRIENDLY_Terenthis|r y |cRXP_FRIENDLY_Gershala|r
    .turnin 986 >>Entrega la misión El maestro perdido
    --.accept 993 >>Accept A Lost Master
    .target +Terenthis
    .goto 1439/1,362.93,6434.71
    .turnin 3765 >> Entrega la misión Lejana corrupción
    .goto 1439/1,431.71,6453.92
    .target +Gershala Nightwhisper
step
    .goto 1439/1,445.46,6536.01
    >>Habla con |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compra 20|r |T134059:0|t[Especias suaves] |cRXP_BUY_a este vendedor|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Habla con |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compra 15|r |T134059:0|t[Especias suaves] |cRXP_BUY_a este vendedor|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Habla con |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compra 10|r |T134059:0|t[Especias suaves] |cRXP_BUY_a este vendedor|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Habla con |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compra 5|r |T134059:0|t[Especias suaves] |cRXP_BUY_a este vendedor|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto 1439/1,488.69,6564.830
    >>Habla con |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a este vendedor|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto 1439/1,489.35,6506.32
    >>Habla con |cRXP_FRIENDLY_Hollee|r
    .turnin 731 >> Entrega la misión El prospector despistado
    .accept 741 >> Acepta la misión El prospector despistado
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto 1439/1,487.38,6479.68,20,0
    .goto 1439/1,489.35,6454.36,20,0
    .goto 1439/1,527.99,6409.82,20,0
    .goto 1439/1,782.79,6504.57,20,0
    .goto 1439/1,765.10,6590.60,50 >>Dirígete hacia el Barco de Darnassus
step
    #completewith Teldrassil
    #requires BoatT
    .cast 818 >> Lanza |T135805:0|t[Hoguera básica] en el Barco (o muelle si el barco aún no es visible)
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .skill cooking,50,1
step
    #completewith Teldrassil
    #requires BoatT
    #label BoarM
    +Cocina cualquier |T133970:0|t|cRXP_LOOT_[Trozo de carne de jabalí]|r para hacer |T133974:0|t[Carne de jabalí asada]
    .itemcount 769,1
    .skill cooking,50,1
step
    #completewith next
    #requires BoarM
    +|cRXP_WARN_Empieza a lanzar repetidamente|r |T132794:0|t[Crear agua r2] |cRXP_WARN_para crear tanta agua como sea posible|r
step
    #label Teldrassil
    .goto 1438/1,1018.75,8564.77,100 >> Toma el Barco a Teldrassil
step
    #completewith next
    .goto 1438/1,987.69,8651.99,60,0
    .goto 1438/1,922.52,8678.46,40,0
    .goto 1438/1,888.40,8676.08,20,0
    .goto 1438/1,841.05,8641.121,20 >>Viaja hacia |cRXP_FRIENDLY_Vesprystus|r
step
    .goto 1438/1,841.05,8641.121
    >>Habla con |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >> Consigue la ruta de vuelo de Aldea Rut'theran
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >> Atraviesa el portal morado hacia Darnassus
step
    #completewith next
    .goto 1457/1,2536.83,9898.58,30,0
    .goto 1457/1,2534.08,9772.82,30,0
    .goto 1457/1,2549.00,9727.09,30,0
    .goto 1457/1,2607.74,9642.04,20 >>Viaja hacia |cRXP_FRIENDLY_Mostachogris|r
step
    .goto 1457/1,2607.74,9642.04
    >>Habla con |cRXP_FRIENDLY_Mostachogris|r
    .turnin 741,3 >>Entrega la misión El prospector despistado
    .accept 942 >>Acepta la misión El prospector despistado
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Alliance Mage
#name 20-22 ADV Montañas Crestagrana 1 Mago AoE
#version 2
#group RestedXP ADV AoE Alianza Mago
#defaultfor none Mage
#next 22-26 ADV Los Humedales 1 Mago AoE

step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Ventormenta
    .zoneskip Stormwind City
step
    .goto 1453/0,635.44,-8863.81
    >>Habla con |cRXP_FRIENDLY_Keldric|r a través de la pared
    .vendor 1257 >> Vende la basura. |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_(si están disponibles)|r
    .target Keldric Señalo
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Entra en el Banco de Ventormenta
step
    #sticky
    #label Bank1
    .goto 1453/0,614.33,-8932.92
    >>Habla con |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >> Retira los siguientes artículos de tu banco:
    >>|T133024:0|t[Tubo de bronce]
    >>|T134943:0|t[Pergaminos]
    >>|T132620:0|t[Tonel de Merlot]
    >>|T134377:0|t[Una sencilla brújula]
    .target Newton Burnside
step
    #label Bank
    .goto 1453/0,614.33,-8932.92
    >>Habla con |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_NOTA: Necesitas 12 stacks de cada tela (|r|T132911:0|t[Paño de lana]|cRXP_WARN_,|r |T132905:0|t[Paño de seda]|cRXP_WARN_,|r |T132892:0|t[Paño de tejido mágico]|cRXP_WARN_,|r y |T132903:0|t[Paño rúnico]|cRXP_WARN_) para las entregas de tela más adelante. Las obtendrás naturalmente conforme subes de nivel|r
    .bankdeposit 17056,2592,1015,4654 >> Deposita los siguientes objetos en el banco:
    >>|T132917:0|t[Pluma ligera]
    >>|T132911:0|t[Paño de lana]
    >>|T133970:0|t[Costillar de lobo magro]
    >>|T134431:0|t[Fósil misterioso]
    .target Newton Burnside
step
    #completewith next
    #requires Bank1
    .goto 1453/0,679.80,-8829.57,12,0
    .goto 1453/0,716.77,-8847.23,12,0
    .goto 1453/0,693.24,-8891.33,12 >>Viaja hacia |cRXP_FRIENDLY_Roberto|r
step
    #requires Bank1
    .goto 1453/0,681.28,-8888.01
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compra un|r |T132620:0|t[Tonel de Merlot] |cRXP_BUY_a este vendedor|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Salta encima de la antorcha y déjate caer para meterte debajo de Ventormenta|r
    >>|cRXP_WARN_Con los gráficos de las sombras en "Bueno" o "Bajo", colócate en el medio de los pies de Derek el Dinosaurio (la parte más clara de la tierra) justo antes del vacío azul, luego camina recto hacia adelante|r
    >>|cRXP_WARN_NOTA: Hay una pequeña probabilidad de morir usando este método. También puedes caminar a la Torre de los Magos normalmente si lo deseas|r
    .link https://youtu.be/gV8-wgQEomc >> HAZ CLIC AQUÍ para ver una guía
    .goto 1453/0,861.95,-8990.47,10 >>Viaja hacia |cRXP_FRIENDLY_Larimaine|r
step
    #requires Bank1
    .goto 1453/0,847.43,-8991.99
    >>Habla con |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >> Aprende |T135763:0|t[Teletransporte a: Ventormenta]
    >>Coste Total: 20 platas
    .target Larimaine Purdue
step
    .goto 1453/0,861.95,-8990.47
    >>Habla con |cRXP_FRIENDLY_Jennea|r
    .trainer >> Aprende tus hechizos de clase (Traslación, Evocación, Armadura de Escarcha r3, Escudo de maná, Crear agua r3)
    >>|cRXP_WARN_NO aprendas Ventisca todavía|r
    >>Costoe Total: 1 oro
    .target Jennea Cannon
step
    #completewith Charys
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Sal de la Torre de los Magos
    .goto 1453/0,948.65,-8994.50,10 >>Viaja hacia |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Cómprale 2|r |T134419:0|t[Runas de teletransporte]|cRXP_BUY_,|r |T134851:0|t[Pociones de maná inferiores]|cRXP_BUY_,|r |T134831:0|t[Pociones de Sanación]|cRXP_BUY_, y un|r |T132515:0|t[Cinturón de Paño] |cRXP_BUY_(si están disponibles)|r
    >>|cRXP_WARN_NO dejes que tu dinero baje de 18 platas y 31 cobres|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,1
step
    #label Charys
    .goto 1453/0,948.65,-8994.50
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Cómprale dos|r |T134419:0|t[Runas de teletransporte]|cRXP_BUY_,|r |T134851:0|t[Pociones de maná inferiores]|cRXP_BUY_,|r |T134831:0|t[Pociones de Sanación]|cRXP_BUY_, y un|r |T132515:0|t[Cinturón de Paño] |cRXP_BUY_(si están disponibles)|r
    >>|cRXP_WARN_NO dejes que tu dinero baje de 26 platas y 31 cobres|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Charys Yserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Viaja hacia |cRXP_FRIENDLY_Adair|r
step
    .goto 1453/0,822.16,-8865.60
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Cómprale|r |T134943:0|t[Pergaminos] |cRXP_BUY_que no sean de intelecto (si están disponibles)|r
    >>|cRXP_WARN_NO dejes que tu dinero baje de 18 platas y 31 cobres|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto 1453/0,822.16,-8865.60
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Cómprale|r |T134943:0|t[Pergaminos] |cRXP_BUY_que no sean de intelecto (si están disponibles)|r
    >>|cRXP_WARN_NO dejes que tu dinero baje de 26 platas y 31 cobres|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Sube corriendo por el borde de la pared en lugar de rodearla
step
    .goto 1453/0,766.64,-8623.23
    >>Habla con |cRXP_FRIENDLY_Kristoff|r
    .accept 343 >> Acepta la misión Hablando de entereza
    .target Brother Kristoff
step
    #completewith next
    .goto 1453/0,737.74,-8571.69,15,0
    .goto 1453/0,736.26,-8558.06,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Viaja hacia |cRXP_FRIENDLY_Baros|r
step
    .goto 1453/0,719.86,-8550.36
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Baros|r
    .turnin 399 >> Entrega la misión Principios humildes
    .target Baros Alexston
step
    .goto 1453/0,638.26,-8342.22
    >>Habla con |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto 1453/0,453.16,-8533.33,30,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,383.66,-8345.63,12 >>Viaja hacia |cRXP_FRIENDLY_Milton|r
step
    .goto 1453/0,383.66,-8345.63
    >>Habla con |cRXP_FRIENDLY_Milton|r
    .turnin 343 >> Entrega la misión Hablando de entereza
    .accept 344 >> Acepta la misión Hermano Paxton
    .target Milton Sheaf
step
    #completewith next
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,450.74,-8539.51,30,0
    .goto 1453/0,551.02,-8658.37,20,0
    .goto 1453/0,509.88,-8819.71,12,0
    .goto 1453/0,518.35,-8822.040,12 >>Viaja hacia |cRXP_FRIENDLY_Felicia|r
step
    .goto 1453/0,518.35,-8822.040
    >>Habla con |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_Compra las|r |T133849:0|t[Hierbas aromáticas de Ventormenta] |cRXP_BUY_a esta vendedora|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto 1453/0,508.41,-8803.04,30,0
    .goto 1453/0,575.62,-8741.370,30,0
    .goto 1453/0,603.58,-8771.67,30,0
    .goto 1453/0,530.45,-8847.41,20,0
    .goto 1453/0,532.33,-8863.54,20,0
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Déjate caer hasta el saliente de abajo de |cRXP_FRIENDLY_Dungar|r
step
    #completewith next
    .goto 1429/0,44.35,-9458.41,30 >>Viaja hacia la Posada de Villadorada
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto 1429/0,398.72,-9085.76,50,0
    .goto 1429/0,125.22,-9079.98,20,0
    .goto 1429/0,-139.95,-8910.09,50,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    >>Toma el Camino de Montaña hacia |cRXP_FRIENDLY_Paxton|r
    .goto 1429/0,-186.46,-8874.91,10 >>Viaja hacia |cRXP_FRIENDLY_Paxton|r
step
    .goto 1429/0,8.25,-9460.03
    >>Habla con |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Compra un|r |T132794:0|t[Odre de ron dulce] |cRXP_BUY_a este vendedor|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto 1429/0,16.23,-9462.580,0,0
    >>Habla con |cRXP_FRIENDLY_Farley|r
    .home >> Establece tu Piedra de hogar en Villadorada
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Viaja hacia |cRXP_FRIENDLY_Paxton|r
step
    #requires FarleyHome
    .goto 1429/0,-186.46,-8874.91
    >>Habla con |cRXP_FRIENDLY_Paxton|r
    .turnin 344 >> Entrega la misión Hermano Paxton
    .accept 345 >> Acepta la misión Suministros de tinta
    .target Brother Paxton
step
    #completewith Theo
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-140.30,-8916.57,10,0
    .goto 1429/0,-464.48,-9142.47,30,0
    .goto 1429/0,-701.54,-9538.960,15 >>Toma el Camino de Montaña hacia la Torre de Azora
step
    #sticky
    #label Dawn
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Habla con |cRXP_FRIENDLY_Alba|r arriba
    .vendor 958 >> |cRXP_BUY_Cómprale|r |T134943:0|t[Pergaminos]|cRXP_BUY_que no sean de intelecto,|r |T134850:0|t[Pociones de maná menores]|cRXP_BUY_, y|r |T134830:0|t[Pociones de sanación inferiores] |cRXP_BUY_(si están disponibles)|r
    >>|cRXP_WARN_NO dejes que tu dinero baje de 11 platas 38 cobres|r
    .money <0.1138
    .target Alba Estrellaclara
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Habla con |cRXP_FRIENDLY_Alba|r arriba
    .vendor 958 >> |cRXP_BUY_Cómprale|r |T134943:0|t[Pergaminos]|cRXP_BUY_que no sean de intelecto,|r |T134850:0|t[Pociones de maná menores]|cRXP_BUY_, y|r |T134830:0|t[Pociones de sanación inferiores] |cRXP_BUY_(si están disponibles)|r
    >>|cRXP_WARN_NO dejes que tu dinero baje de 19 platas 38 cobres|r
    .money <0.1938
    .target Alba Estrellaclara
    .itemcount 4371,<1
step
    #label Theo
    .goto 1429/0,-728.26,-9553.08
    >>Sube las escaleras
    >>Habla con |cRXP_FRIENDLY_Theocritus|r
    .accept 94 >> Acepta la misión Un ojo vigilante
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto 1431/0,-1159.00,-10544.31,20,0
    .goto 1431/0,-1164.94,-10533.15,10 >>Entra en la Posada
step
    #requires Dawn2
    .goto 1431/0,-1159.54,-10509.03
    >>Habla con |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_Compra la|r |T132798:0|t[Botella de licor] |cRXP_BUY_a este vendedor|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto 1431/0,-1164.94,-10533.15,10,0
    .goto 1431/0,-1159.00,-10544.31,10 >>Sal de la Posada
step
    #completewith next
    .goto 1431/0,-1197.61,-10585.35,12 >>Entra en el edificio
step
    .goto 1431/0,-1200.85,-10593.99
    >>Habla con |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>Acepta la misión Cerro del Cuervo
    .accept 164 >>Acepta la misión Entrega a Sven
    .accept 165 >>Acepta la misión El ermitaño
    .target Elaine Carevin
step
    .goto 1431/0,-1272.67,-10586.073
    >>Habla con |cRXP_FRIENDLY_Herble|r
    .vendor 3133 >>|cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto 1431/0,-1320.73,-10581.75
    >>Habla con |cRXP_FRIENDLY_Viktori|r
    .accept 174 >> Acepta la misión Mira las estrellas
    .turnin 174 >> Entrega la misión Mira las estrellas
    .accept 175 >> Acepta la misión Mira las estrellas
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto 1431/0,-1320.73,-10581.75
    >>Habla con |cRXP_FRIENDLY_Viktori|r
    .accept 175 >> Acepta la misión Mira las estrellas
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1366.09,-10779.03
    >>Habla con |cRXP_FRIENDLY_Mary|r
    .turnin 175 >> Entrega la misión Mira las estrellas
    .accept 177 >> Acepta la misión Mira las estrellas
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1258.63,-10513.89
    >>Habla con |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >> Consigue la ruta de vuelo de Bosque del Ocaso
    .target Felicia Mane
step
    #completewith Kzixx
    .goto 1431/0,-1236.49,-10139.49,60,0
    .goto 1431/0,-1375.81,-10072.35,20 >>Viaja hacia |cRXP_FRIENDLY_Kzixx|r
step
    .goto 1431/0,-1375.81,-10072.35
    >>Habla con |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferior] |cRXP_BUY_y|r  |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Habla con |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferior] |cRXP_BUY_y|r  |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Habla con |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferior] |cRXP_BUY_y|r  |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto 1431/0,-1375.81,-10072.35
    >>Habla con |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferiores]|cRXP_BUY_,|r |T134831:0|t[Pociones de Sanación]|cRXP_BUY_, y un|r |T132515:0|t[Cinturón de Paño] |cRXP_BUY_(si están disponibles, y si las necesitas)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Kzixx
step
    #completewith Gnolls
    >>Mata con AoE a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener |cRXP_LOOT_Carne de araña crujiente|r
    >>Mata con AoE a los |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r y |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls
    >>Mata con AoE a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener |cRXP_LOOT_Carne de araña crujiente|r
    >>Mata con AoE |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Habla con |cRXP_FRIENDLY_Parker|r
    .accept 244 >>Acepta la misión Gnolls invasores
    .target Guard Parker
step << skip
    #label AoE1
    .goto 1433/0,-1912.31,-9479.51,60 >>Mata con AoE a los |cRXP_ENEMY_Bastardos de Crestagrana|r y a los |cRXP_ENEMY_Descarnadores de Crestagrana|r
    .isOnQuest 244
step << skip
    #completewith Gnolls
    >>Mata con AoE a los |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r y |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step << skip
    #completewith next
    >>Mata con AoE |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,50
step
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
    >>Habla con |cRXP_FRIENDLY_Feldon|r
    .turnin 244 >>Entrega la misión Gnolls invasores
    .accept 246 >>Acepta la misión Evaluar la amenaza
    .target Deputy Feldon
step
    .goto 1433/0,-2234.89,-9435.060
    >>Habla con |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >> Consigue la ruta de vuelo de Montañas Crestagrana
step
    >>Habla con |cRXP_FRIENDLY_Marris|r y |cRXP_FRIENDLY_Olento|r
    .accept 20 >>Acepta la misión La amenaza de los Roca Negra
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .accept 125 >>Acepta la misión Las herramientas perdidas
    .turnin 345 >>Entrega la misión Suministros de tinta
    .accept 347 >>Acepta la misión La mena de Rethban
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2219.70,-9260.73
    >>Habla con |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_Compra un|r |T134708:0|t[Pico de minero] |cRXP_BUY_a esta vendedora|r
    >>|cRXP_WARN_Lo necesitarás más tarde|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>Habla con |cRXP_FRIENDLY_Conacher|r
--  .accept 120 >>Accept Messenger to Stormwind
--  .goto 1433/0,-2221.87,-9218.60
    .accept 91 >>Acepta la misión Ley de Solomon
    .goto 1433/0,-2216.00,-9215.85
--  .target Magistrate Solomon
    .target Bailiff Conacher
step
    >>Habla con |cRXP_FRIENDLY_Baren|r y el |cRXP_PICK_Cartel de Se busca|r
    .accept 127 >>Acepta la misión Pescado a la venta
    .goto 1433/0,-2172.59,-9261.02
    .accept 180 >>Acepta la misión Se busca: Teniente Fangore
    .goto 1433/0,-2151.53,-9247.12
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto 1433/0,-2155.22,-9225.84,0,0
    >>Entra en la Posada
    >>Habla con |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Acepta la misión Una comida gratis
    .target Darcy
step
    .goto 1433/0,-2145.89,-9211.36
    >>Dentro de la posada
    >>Habla con |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>Acepta la misión Tiempos de sequía
    .turnin 116 >>Entrega la misión Tiempos de sequía
    .target Barkeep Daniels
step
    .goto 1433/0,-2145.45,-9231.34
    >>Dentro de la posada
    >>Habla con |cRXP_FRIENDLY_Wiley|r saltando desde la barandilla hacia abajo
    .turnin 65 >>Entrega la misión La hermandad de los Defias
--  .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto 1433/0,-2207.32,-9351.66
    >>Habla con |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Acepta la misión El collar de Hilary
    .target Shawn
step
    .goto 1433/0,-2250.09,-9360.78,90,0
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97
    >>|cRXP_WARN_Nada bajo el agua y comprueba los puntos de aparición. Hay 8 ubicaciones en total, con 2 apariciones activas a la vez|r
    >>Abre el |cRXP_PICK_Barro centelleante|r. Despójalo para obtener el |cRXP_LOOT_Collar de Hilary|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto 1433/0,-2205.58,-9351.52
    >>Habla con |cRXP_FRIENDLY_Hilary|r
    .turnin 3741 >>Entrega la misión El collar de Hilary
    .target Hilary
step
    #completewith Gnolls2
    >>Mata con AoE a los |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r y |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step
    #completewith next
    >>Mata con AoE |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,<50,1
step
    #label Gnolls2
    .goto 1433/0,-1912.31,-9479.51
    >>Mata con AoE a los |cRXP_ENEMY_Bastardos de Crestagrana|r y a los |cRXP_ENEMY_Descarnadores de Crestagrana|r
    .complete 246,1,1 --Redridge Mongrel (1)
    .mob Redridge Mongrel
    .mob Redridge Thrasher
step
    #completewith Gnolls3
    >>Mata con AoE a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener |cRXP_LOOT_Carne de araña crujiente|r
    >>Mata con AoE a los |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r y |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls3
    >>Mata con AoE a las |cRXP_ENEMY_Tarántulas|r. Despójalas para obtener |cRXP_LOOT_Carne de araña crujiente|r
    >>Mata con AoE |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Habla con |cRXP_FRIENDLY_Parker|r
    .turnin 129 >>Entrega la misión Una comida gratis
    .accept 130 >>Acepta la misión Una visita al herborista
    .target Guard Parker
step
    #label Gnolls3
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17,60,0
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17
    >>Mata con AoE a los |cRXP_ENEMY_Bastardos de Crestagrana|r, |cRXP_ENEMY_Descarnadores de Crestagrana|r, y |cRXP_ENEMY_Furtivos de Crestagrana|r
    >>|cRXP_WARN_Recuerda aprovechar la zona muerta contra los|r |cRXP_ENEMY_Furtivos de Crestagrana|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
    .mob +Redridge Poacher
step
    .goto 1433/0,-2238.15,-9443.60
    >>Habla con |cRXP_FRIENDLY_Feldon|r
    .turnin 246 >>Entrega la misión Evaluar la amenaza
    .target Deputy Feldon
step
    .goto 1433/0,-2472.16,-9366.72,-1
    >>Sumérgete bajo el agua
    >>Abre el |cRXP_PICK_Cofre sumergido|r. Despójalo para obtener la |cRXP_LOOT_Caja de herramientas de Olento|r
    >>|cRXP_WARN_Esto tiene un tiempo de lanzamiento de 5 segundos|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto 1433/0,-2445.68,-9240.75,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Comecarnes múrloc|r y |cRXP_ENEMY_Exploradores múrloc|r. Despójalos para obtener algún |cRXP_LOOT_Pez luna moteado|r y |cRXP_LOOT_Aletas de múrloc|r
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 1433/0,-2268.54,-9279.12
    >>Habla con |cRXP_FRIENDLY_Olento|r
    .turnin 125 >>Entrega la misión Las herramientas perdidas
    .accept 89 >>Acepta la misión El puente sempiterno
    .target Foreman Oslow
step
    .goto 1433/0,-2240.10,-9248.14
    >>Habla con |cRXP_FRIENDLY_Dorin|r
    .vendor >> Vende la Basura
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto 1433/0,-2205.58,-9232.350,10,0
    .goto 1433/0,-2197.99,-9224.68,8 >>Entra en el Ayuntamiento
step
    .goto 1433/0,-2377.51,-9229.460,60,0
    .goto 1433/0,-2403.56,-9173.57,60,0
    .goto 1433/0,-2415.07,-9034.28,60,0
    .goto 1433/0,-2509.72,-9067.73,60,0
    .goto 1433/0,-2599.16,-9078.44,60,0
    .goto 1433/0,-2772.39,-9226.85,60,0
    .goto 1433/0,-2808.64,-9313.58,60,0
    .goto 1433/0,-2791.71,-9355.86,60,0
    .goto 1433/0,-2838.17,-9350.50,60,0
    .goto 1433/0,-2840.12,-9220.92,60,0
    .goto 1433/0,-2854.01,-9211.65,60,0
    .goto 1433/0,-2867.69,-9183.27,60,0
    .goto 1433/0,-2924.13,-9179.65,60,0
    .goto 1433/0,-2928.91,-9231.77,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Avanzados Roca Negra|r, |cRXP_ENEMY_Renegados Roca Negra|r y |cRXP_ENEMY_Brutos Roca Negra|r. Despójalos para obtener sus |cRXP_LOOT_Hachas desgastadas por la batalla|r
    >>Mata con AoE a los |cRXP_ENEMY_Clamamareas múrloc|r y |cRXP_ENEMY_Exploradores múrloc|r. Despójalos para obtener su |cRXP_LOOT_Pez luna moteado|r y |cRXP_LOOT_Aletas de múrloc|r
    >>Mata con AoE |cRXP_ENEMY_Cóndors temibles|r. Despójalos para obtener su |cRXP_LOOT_Carne de cóndor dura|r
    >>Mata con AoE a las |cRXP_ENEMY_Tarántulas superiores|r. Despójalas para obtener su |cRXP_LOOT_Carne de araña crujiente|r
    >>Mata con AoE |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r
    >>Mata con AoE a los |cRXP_ENEMY_Místicos de Crestagrana|r y |cRXP_ENEMY_Toscos de Crestagrana|r Despójalos para obtener sus |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r
    >>|cRXP_WARN_Ten cuidado ya que los |cRXP_ENEMY_Avanzados Roca Negra|r lanzan|r |T132149:0|t[Red]|cRXP_WARN_, los |cRXP_ENEMY_Cóndores temibles|r lanzan|r |T132154:0|t[Derribo]
    .complete 20,1 --Blackrock Axe (10)
#loop
	.line Redridge Mountains,37.16,45.20,38.36,41.34,40.09,40.64,42.89,39.26,59.36,44.56,59.79,42.05,62.58,41.46,62.57,45.48,59.36,44.56
	.goto 1433/0,-2377.51,-9229.460,30,0
	.goto 1433/0,-2403.56,-9173.57,30,0
	.goto 1433/0,-2441.12,-9163.43,30,0
	.goto 1433/0,-2501.90,-9143.45,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
	.goto 1433/0,-2868.77,-9183.85,30,0
	.goto 1433/0,-2929.34,-9175.31,30,0
	.goto 1433/0,-2929.12,-9233.51,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto 1433/0,-2831.22,-9328.06,40,0
    .goto 1433/0,-2809.95,-9313.87,40,0
    .goto 1433/0,-2789.11,-9350.36,40,0
    .goto 1433/0,-2831.22,-9328.06
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto 1433/0,-2509.72,-9067.73,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2655.60,-9061.500,30,0
	.goto 1433/0,-2697.5,-9150.55,30,0
	.goto 1433/0,-2760.67,-9163.72,30,0
	.goto 1433/0,-2758.28,-9225.55,30,0
	.goto 1433/0,-2821.88,-9247.99,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto 1433/0,-2705.31,-9104.36,30,0
	.goto 1433/0,-2744.82,-9129.26,30,0
	.goto 1433/0,-2764.36,-9158.65,30,0
	.goto 1433/0,-2803.65,-9173.86,30,0
	.goto 1433/0,-2813.85,-9264.210,30,0
	.goto 1433/0,-2759.58,-9234.96,30,0
	.goto 1433/0,-2714.21,-9193.69,30,0
	.goto 1433/0,-2667.1,-9176.61,30,0
	.goto 1433/0,-2705.31,-9104.36,30,0
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto 1433/0,-2415.07,-9034.28
    .mob Blackrock Outrunner
    .mob Blackrock Grunt
    .mob Blackrock Renegade
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .mob Dire Condor
    .mob Greater Tarantula
    .mob Great Goretusk
    .mob Redridge Mystic
    .mob Redridge Brute
step
    #completewith Herbalist
    .goto 1433/0,-2366.23,-9110.87,60,0
    .goto 1433/0,-2270.06,-9155.47,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Místicos de Crestagrana|r y |cRXP_ENEMY_Toscos de Crestagrana|r Despójalos para obtener sus |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-2063.18,-9209.62
    >>Entra
    >>Habla con |cRXP_FRIENDLY_Breanna|r
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .target Chef Breanna
    .itemcount 1080,5
    .itemcount 1081,5
    .itemcount 2296,5
step
    #label Herbalist
    .goto 1433/0,-2045.38,-9245.82
    >>Habla con |cRXP_FRIENDLY_Martie|r
    .turnin 130 >>Entrega la misión Una visita al herborista
    .accept 131 >>Acepta la misión Un ramo de narcisos
    .accept 34 >>Acepta la misión Una visita poco grata
    .target Martie Jainrose
step
    #completewith next
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    >>Mata con AoE |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto 1433/0,-1910.79,-9288.97
    >>Mata a |cRXP_ENEMY_Panzallena|r
    >>|cRXP_WARN_Kitéalo hacia la valla al norte de |cRXP_FRIENDLY_Lamar|r. Salta de un lado a otro para atacarle desde una zona segura sin recibir daño|r
    >>Ten cuidado ya que |cRXP_ENEMY_Panzallena|r lanza |T132337:0|t[Cargar] y |T136025:0|t[Temblor]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto 1433/0,-2045.38,-9245.82
    >>Habla con |cRXP_FRIENDLY_Martie|r
    .turnin 34 >>Entrega la misión Una visita poco grata
    .target Martie Jainrose
step
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55
    >>Mata con AoE |cRXP_ENEMY_Gran dentosangres|r. Despójalos para obtener |cRXP_LOOT_Morros de gran Dentosangre|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    #completewith next
    .goto 1433/0,-2034.31,-9101.17,60,0
    >>Mata con AoE a los |cRXP_ENEMY_Místicos de Crestagrana|r y |cRXP_ENEMY_Toscos de Crestagrana|r Despójalos para obtener sus |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-1994.15,-9037.03,60,0
    .goto 1433/0,-2017.59,-8984.62,40 >>Viaja a las Cavernas de Rethban
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    >>Mata con AoE a los |cRXP_ENEMY_Braceros de Crestagrana|r. Despójalos para obtener sus |cRXP_LOOT_Menas de Rethban|r, |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r
    >>Mata con AoE a los |cRXP_ENEMY_Partecaras de Crestagrana|r. Despójalos para obtener sus |cRXP_LOOT_Picas de hierro|r y |cRXP_LOOT_Remaches de hierro|r
    >>Mina los |cRXP_PICK_Filones de cobre|r en la cueva. Despójalos para obtener la |cRXP_LOOT_Mena de Rethban|r
    .complete 347,1 --Rethban Ore (5)
    .mob +Redridge Drudger
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Basher
    .complete 89,2 --Iron Rivet (5)
    .mob +Redridge Basher
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+14365 >> Mata enemigos hasta alcanzar 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+15715 >> Mata enemigos hasta alcanzar 15715+/25200xp
    .isQuestTurnedIn 92
step << skip
    #completewith next
    .goto 1433/0,-1978.73,-8775.39,-1
    .goto 1433/0,-2049.28,-8823.17,-1
    .goto 1433/0,-1970.27,-8924.38,-1
    .goto 1433/0,-2033.00,-8923.37,-1
    .goto 1433/0,-1930.76,-8878.63,-1
    .goto 1433/0,-2305.01,-9271.01,30 >>Haz Logout Skip fuera de la cueva (por el lado ESTE) para regresar a Villa del Lago
step
    #completewith next
    .subzone 69 >> Regresa a Villa del Lago
step
    >>Habla con |cRXP_FRIENDLY_Marris|r y |cRXP_FRIENDLY_Olento|r
    .turnin 20 >>Entrega la misión La amenaza de los Roca Negra
    .accept 19 >>Acepta la misión Tharil'zun
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .turnin 89,1 >>Entrega la misión El puente sempiterno
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2242.49,-9259.00
    >>Habla con |cRXP_FRIENDLY_Verner|r
    .accept 118 >>Acepta la misión El precio de unas herraduras
    .target Verner Osgood
step
    .goto 1433/0,-2172.59,-9261.02
    >>Habla con |cRXP_FRIENDLY_Baren|r
    .turnin 127 >> Entrega la misión Pescado a la venta
    .accept 150 >> Acepta la misión Cazadores furtivos
    .turnin 150 >> Entrega la misión Cazadores furtivos
    .goto 1433/0,-2172.59,-9261.02
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto 1433/0,-2158.69,-9234.38,0,0
    .vendor >> Vende la Basura. Ahora puedes vender el |T134708:0|t[Pico de minero] si lo deseas
    .target Kimberly Hiett
step
    .goto 1433/0,-2155.22,-9225.84
    >>Entra en la Posada
    >>Habla con |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Entrega la misión Un ramo de narcisos
    .target Darcy
step
    #completewith next
    .goto 1433/0,-2146.54,-9246.54,12,0
    .goto 1433/0,-2067.09,-9220.34,12,0
    >>Viaja hacia |cRXP_FRIENDLY_Breanna|r
step
    .goto 1433/0,-2063.18,-9209.62
    >>Entra
    >>Habla con |cRXP_FRIENDLY_Breanna|r
    .accept 92 >> Acepta la misión Estofado Crestagrana
    .turnin 92 >> Entrega la misión Estofado Crestagrana
    .target Chef Breanna
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Villadorada
step
    .goto 1429/0,87.73,-9456.79
    >>Habla con |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>Entrega la misión El precio de unas herraduras
    .accept 119 >>Acepta la misión Regresa junto a Verner
    .target Smith Argus
step
    #completewith next
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Viaja hacia |cRXP_FRIENDLY_Paxton|r
step
    .goto 1429/0,-186.46,-8874.91
    >>Habla con |cRXP_FRIENDLY_Paxton|r
    .turnin 347 >> Entrega la misión La mena de Rethban
    .accept 346 >> Acepta la misión Regresa junto a Kristoff
    .target Brother Paxton
step
    #completewith CharysEnd
    .cast 3561 >> Lanza |T135763:0|t[Teletransporte a: Ventormenta]
    .zoneskip Stormwind City
step
    #completewith CharysEnd
    >>|cRXP_WARN_===PRESTA ATENCIÓN===|r
    +|cRXP_WARN_Reinicia talentos a la rama Escarcha AoE|r
    .xp <22,1
step
    .goto 1453/0,867.06,-9012.61
    >>Habla con |cRXP_FRIENDLY_Dumas|r
    .train 10 >> Aprende Ventisca
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Sal de la Torre de los Magos
    .goto 1453/0,948.65,-8994.50,10 >>Viaja hacia |cRXP_FRIENDLY_Charys|r
step
    #completewith BankDeposit
    +|cRXP_WARN_NO dejes que tu dinero baje de 1 oro 43 platas y 30 cobres|r
    .xp >22,1
step
    .goto 1453/0,948.65,-8994.50
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferior] |cRXP_BUY_y|r  |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .itemcount 4827,1
    .target Charys Yserian
step
    .goto 1453/0,948.65,-8994.50
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferior] |cRXP_BUY_y|r  |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .itemcount 4828,1
    .target Charys Yserian
step
    .goto 1453/0,948.65,-8994.50
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferior] |cRXP_BUY_y|r  |T134831:0|t[Pociones de sanación] |cRXP_BUY_(si están disponibles)|r
    .itemcount 4829,1
    .target Charys Yserian
step
    #label CharysEnd
    .goto 1453/0,948.65,-8994.50
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Cómprale|r |T134851:0|t[Pociones de maná inferiores]|cRXP_BUY_,|r |T134831:0|t[Pociones de Sanación]|cRXP_BUY_, y un|r |T132515:0|t[Cinturón de Paño] |cRXP_BUY_(si están disponibles, y si las necesitas)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Charys Yserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Viaja hacia |cRXP_FRIENDLY_Adair|r
step
    #label AdairX
    .goto 1453/0,822.16,-8865.60
    >>Entra en el edificio
    >>Habla con |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >> |cRXP_BUY_Cómprale|r |T134943:0|t[Pergaminos] |cRXP_BUY_que no sean de intelecto (si están disponibles)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Sube corriendo por el borde de la pared en lugar de rodearla
step
    .goto 1453/0,766.64,-8623.23
    >>Habla con |cRXP_FRIENDLY_Kristoff|r
    .turnin 346 >> Entrega la misión Regresa junto a Kristoff
    .target Brother Kristoff
step
    .goto 1453/0,638.26,-8342.22
    >>Habla con |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >> Viaja al Tranvía Subterráneo
step
    #completewith next
    +|cRXP_WARN_Monta en el Tranvia Subterráneo mientras lanzas repetidamente|r |T132816:0|t[Crear agua r3]
step
    .zone Ironforge >> Toma el Tranvía Subterráneo a Forjaz
step
    .goto 1455/0,-1249.87,-4793.31
    >>Habla con |cRXP_FRIENDLY_Volopiñón|r
    .vendor 5175>>|cRXP_BUY_Cómprale un|r |T133024:0|t[Tubo de bronce] |cRXP_BUY_si está disponible|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto 1455/0,-977.98,-4904.59,30 >>Entra en el Banco de Forjaz
step
    .goto 1455/0,-997.66,-4886.49
    >>Habla con |cRXP_FRIENDLY_Bailey|r
    >>|cRXP_WARN_NOTA: Necesitas 12 stacks de cada tela (|r|T132911:0|t[Paño de lana]|cRXP_WARN_,|r |T132905:0|t[Paño de seda]|cRXP_WARN_,|r |T132892:0|t[Paño de tejido mágico]|cRXP_WARN_,|r y |T132903:0|t[Paño rúnico]|cRXP_WARN_) para las entregas de tela más adelante. Las obtendrás naturalmente conforme subes de nivel|r
    .bankdeposit 17056,2592,1015,1083,2665,1922,1284 >> Deposita los siguientes objetos en el banco:
    >>|T132917:0|t[Pluma ligera]
    >>|T132911:0|t[Paño de lana]
    >>|T133970:0|t[Costillar de lobo magro]
    >>|T133277:0|t[Glifo de Azora]
    >>|T133849:0|t[Hierbas aromáticas de Ventormenta]
    >>|T133629:0|t[Suministros para Sven]
    >>|T132761:0|t[Cajón de herraduras]
    .target Bailey Stonemantle
step
    #label BankDeposit
    .goto 1455/0,-997.66,-4886.49
    .bankwithdraw 4654 >> Retira los siguientes artículos de tu banco:
    >>|T134431:0|t[Fósil misterioso]
    .target Bailey Stonemantle
step
    .goto 1455/0,-915.2,-4606.38
    >>Habla con |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >> Aprende |T135757:0|t[Teletransporte a: Forjaz]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===PRESTA ATENCIÓN===|r
    +|cRXP_WARN_Reinicia talentos a la rama Escarcha AoE|r
step
    .goto 1455/0,-928.48,-4614.620
    >>Habla con |cRXP_FRIENDLY_Dink|r
    .train 10 >> Aprende Ventisca
    .target Dink
step
    #completewith next
    +|cRXP_WARN_Empieza a lanzar repetidamente|r |T132816:0|t[Crear agua r3] |cRXP_WARN_para crear tanta agua como sea posible antes de tomar el vuelo|r
step
    #completewith next
    #label FlyMene
    .goto 1455/0,-1152.39,-4820.914
    >>Habla con |cRXP_FRIENDLY_Gryth|r
    .fly Menethil >> Vuela al Puerto de Menethil
    .target Gryth Thurden
step
    .zone Wetlands >> Viaja a Los Humedales
]])
