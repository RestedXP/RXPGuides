if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 13-15 Bosque de Argénteos
#version 1
#group RestedXP Guía de Supervivencia (H)
#subgroup RXP Guía de Supervivencia 1-20
#next 15-19 Los Baldíos

step << Undead Rogue
    #sticky
    #completewith RotHideCluesTurnIn
    >>|cRXP_WARN_Si ves a|r |cRXP_FRIENDLY_Astor|r|cRXP_WARN_, habla con él y mátalo. Despójalo para obtener la carta. Patrulla el camino entre Rémol y El Sepulcro|r
    .complete 1886,1 --Astor's Letter of Introduction (1)
    .unitscan Astor Hadren
step
    #label WorgHearts
    #completewith next
    >>Mata |cRXP_ENEMY_Huargos|r mientras viajas hacia |cRXP_FRIENDLY_Erland|r. Despójalos para obtener sus |cRXP_LOOT_Corazones|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.18,9.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Erland|r
    >>|cRXP_WARN_¡Asegúrate de tener vida y maná al máximo antes de comenzar esta misión!|r
    .accept 435 >>Acepta la misión Escolta a Erland
    .target Deathstalker Erland
step
    #completewith next
    >>Mata |cRXP_ENEMY_Huargos|r. Despójalos para obtener sus |cRXP_LOOT_Corazones|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    .goto Silverpine Forest,56.25,10.27,30,0
    .goto Silverpine Forest,56.25,11.43,30,0
    .goto Silverpine Forest,56.17,12.62,30,0
    .goto Silverpine Forest,53.46,13.45
    >>Escolta a |cRXP_FRIENDLY_Erland|r de forma segura hasta |cRXP_FRIENDLY_Rane Yorick|r
    >>|cRXP_WARN_¡Ten cuidado! Los|r |cRXP_ENEMY_Huargos|r |cRXP_WARN_pueden aparecer unos encima de otros, come y bebe cada vez que puedas|r
    .complete 435,1 --Erland must reach Rane Yorick (1)
    .mob Worg
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 435 >>Entrega la misión Escolta a Erland
    .accept 429 >>Acepta la misión Corazones salvajes
    .accept 449 >>Acepta la misión El informe de los Mortacechadores
    .target Rane Yorick
step
    #loop
    .goto Silverpine Forest,57.72,10.07,0
    .goto Silverpine Forest,55.96,16.18,50,0
    .goto Silverpine Forest,58.37,15.56,50,0
    .goto Silverpine Forest,59.40,13.58,50,0
    .goto Silverpine Forest,60.11,10.51,50,0
    .goto Silverpine Forest,57.72,10.07,50,0
    >>Mata |cRXP_ENEMY_Huargos|r. Despójalos para obtener sus |cRXP_LOOT_Corazones|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .mob Worg
    .mob Mottled Worg
    .unitscan Gorefang
step
    #completewith next
    .goto Silverpine Forest,49.77,28.66,50,0
    .goto Silverpine Forest,49.77,33.05,50,0
    .goto Silverpine Forest,49.64,37.84,100,0
    .goto Silverpine Forest,45.51,41.26,100 >> Viaja a El Sepulcro
    .subzoneskip 228
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .accept 421 >>Acepta la misión Demuestra tu valía
    .target Dalar Dawnweaver
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwyn|r
    .vendor >> |cRXP_BUY_Compra|r |T134532:0|t[Champiñón con motas rojas] |cRXP_BUY_a este vendedor|r
    .collect 4605,20,421,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
    .money <0.05
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_si están disponibles|r
    .collect 1179,20,421,1 << Mage/Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
    .money <0.05 << Mage/Warlock/Priest/Shaman/Druid
step << Undead
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r y |cRXP_FRIENDLY_Podrig|r
    .accept 477 >>Acepta la misión Pasa la frontera
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .accept 6321 >>Acepta la misión Suministros para el Sepulcro
    .target +Deathguard Podrig
    .goto Silverpine Forest,43.43,41.67
step
    #label BorderCrossings
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r
    .accept 477 >>Acepta la misión Pasa la frontera
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entra en la cripta
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadrec|r en la cripta
    .turnin 449 >>Entrega la misión El informe de los Mortacechadores
    .accept 3221 >>Acepta la misión Habla con Renferrel
    .accept 437 >>Acepta la misión El Campo Muerto
    .target High Executor Hadrec
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renferrel|r
    .turnin 429 >>Entrega la misión Corazones salvajes
    .turnin 445 >>Entrega la misión Entrega a Bosque de Argénteos
    .turnin 3221 >>Entrega la misión Habla con Renferrel
    .accept 1359 >>Acepta la misión Una entrega de Zinge
    .accept 447 >>Acepta la misión Una fórmula mortal
    .accept 430 >>Acepta la misión Regresa junto a Quinn
    .target Apothecary Renferrel
    .addquestitem 3164,429
step
    #loop
    .goto Silverpine Forest,49.12,36.72,0
    .goto Silverpine Forest,50.32,39.22,50,0
    .goto Silverpine Forest,51.86,41.56,50,0
    .goto Silverpine Forest,51.53,43.06,50,0
    .goto Silverpine Forest,51.62,44.85,50,0
    .goto Silverpine Forest,51.80,46.60,50,0
    .goto Silverpine Forest,50.83,47.74,50,0
    .goto Silverpine Forest,49.12,36.72,50,0
    >>Mata |cRXP_ENEMY_Canosos Furia Lunar|r
    .complete 421,1 --Moonrage Whitescalp (5)
    .mob Moonrage Whitescalp
    .unitscan Son of Arugal
step
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .target Dalar Dawnweaver
    .turnin 421 >>Entrega la misión Demuestra tu valía
    .accept 422 >>Acepta la misión La locura de Arugal
step
    #completewith Remedy
    .goto Silverpine Forest,52.74,27.70,80 >> Viaja al Campo de Valgan
step
    #label Remedy
    .goto Silverpine Forest,52.74,27.70,8,0
    .goto Silverpine Forest,53.13,27.92,8,0
    .goto Silverpine Forest,52.94,27.88,8,0
    .goto Silverpine Forest,52.83,28.56
    >>Entra en la casa y ve al segundo piso. Despoja los |cRXP_PICK_Libros de hechizos polvorientos|r del suelo
    .complete 422,1 --Remedy of Arugal (1)
step
    #completewith next
    .goto Silverpine Forest,53.39,13.32,80 >> Viaja a Los Dominios de Ivar
step
    #label QuinnYorick
    .goto Silverpine Forest,53.39,13.32,8,0
    .goto Silverpine Forest,53.08,13.11,8,0
    .goto Silverpine Forest,53.27,13.16,8,0
    .goto Silverpine Forest,53.43,12.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quinn Yorick|r en el segundo piso de la casa
    .turnin 430 >>Entrega la misión Regresa junto a Quinn
    .target Quinn Yorick
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rane Yorick|r fuera
    .accept 425 >>Acepta la misión Ivar el Hediondo
    .target Rane Yorick
step
    .goto Silverpine Forest,52.01,14.02,6,0
    .goto Silverpine Forest,51.89,13.82,6,0
    .goto Silverpine Forest,51.54,13.91
    >>Mata a |cRXP_ENEMY_Ivar el Hediondo|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_¡Ten cuidado! Despeja toda la zona delantera del granero y atrae a los|r |cRXP_ENEMY_Esclavos Corvozarpas|r |cRXP_WARN_fuera, uno por uno.|r
    >>|cRXP_WARN_Ivar está protegido por dos|r |cRXP_ENEMY_Esclavos Corvozarpa|r |cRXP_WARN_dentro del granero. Puedes atraer a uno de ellos cuando patrulle hacia adelante.|r
    >>|cRXP_WARN_¡Son inmunes al miedo!|r << Priest/Warlock
    .complete 425,1 --Ivar's Head (1)
    .target Ivar the Foul
    .mob Ravenclaw Slave
step
    .goto Silverpine Forest,53.46,13.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rane Yorick|r
    .turnin 425 >>Entrega la misión Ivar el Hediondo
    .target Rane Yorick
step
    #completewith ArugalTurnin
    +|cRXP_WARN_¡Ten cuidado! ¡Puede haber un|r |cRXP_ENEMY_Hijo de Arugal|r |cRXP_WARN_en la zona! Este es un élite nivel 25, ¡aléjate de él!|r
    .unitscan Son of Arugal
step
    #completewith Nightlash
    >>Mata |cRXP_ENEMY_Osos|r. Despójalos para obtener sus|cRXP_LOOT_Corazones|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
step
    #label Nightlash
    .goto Silverpine Forest,45.44,21.01
    >>Mata |cRXP_ENEMY_Gnolls Putrepellejo|r alrededor de El Campo Muerto hasta que aparezca |cRXP_ENEMY_Latipesadilla|r. Mátala y despójala para obtener su |cRXP_LOOT_Esencia|r
    >>|cRXP_WARN_¡Son inmunes al miedo!|r << Priest/Warlock
    .complete 437,1 --Enter the Dead Fields (1)
    .complete 437,2 --Essence of Nightlash (1)
    .unitscan Nightlash
    .mob Rot Hide Gladerunner
    .mob Rot Hide Mystic
step
    #completewith KillianVendor
    >>Mata |cRXP_ENEMY_Osos|r. Despójalos para obtener sus|cRXP_LOOT_Corazones|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    >>Mata |cRXP_ENEMY_Arañas|r. Despójalas para obtener su |cRXP_LOOT_Sangre|r
    >>|cRXP_WARN_¡Ten cuidado si|r |cRXP_ENEMY_Krethis Tejeumbra|r |cRXP_WARN_está viva!, ¡TE MATARÁ! Tiene un escudo de 130 de daño de 15s de enfriamiento y una habilidad de choque instantáneo de 110 de daño|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #label KillianVendor
    .goto Silverpine Forest,33.00,17.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Killian|r
    .vendor >> Vende la basura
    .target Killian Sanatha
    .isOnQuest 447
step
    #loop
	.goto Silverpine Forest,36.33,14.20,0
	.goto Silverpine Forest,37.25,15.99,50,0
	.goto Silverpine Forest,35.67,16.01,50,0
	.goto Silverpine Forest,34.96,16.34,50,0
	.goto Silverpine Forest,33.99,17.24,50,0
	.goto Silverpine Forest,34.14,15.26,50,0
	.goto Silverpine Forest,35.06,14.50,50,0
	.goto Silverpine Forest,35.85,13.83,50,0
	.goto Silverpine Forest,36.33,14.20,50,0
    >>Mata |cRXP_ENEMY_Arañas|r. Despójalas para obtener su |cRXP_LOOT_Sangre|r
    >>|cRXP_WARN_¡Ten cuidado si|r |cRXP_ENEMY_Krethis Tejeumbra|r |cRXP_WARN_está viva!, ¡TE MATARÁ! Tiene un escudo de 130 de daño de 15s de enfriamiento y una habilidad de choque instantáneo de 110 de daño|r
    .complete 447,2 --Skittering Blood (6)
    .mob Moss Stalker
    .unitscan Krethis Shadowspinner
    .unitscan Son of Arugal
step
    #loop
    .goto Silverpine Forest,41.60,21.65,0
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    >>Termina de matar a los |cRXP_ENEMY_Osos|r. Despójalos para obtener sus |cRXP_LOOT_Corazones|r
    .complete 447,1 --Grizzled Bear Heart (6)
    .mob Ferocious Grizzled Bear
    .mob Giant Grizzled Bear
    .unitscan Old VIcejaw
    .unitscan Son of Arugal
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >> Viaja de vuelta a El Sepulcro
    .subzoneskip 228
step
    #label ArugalTurnin
    .goto Silverpine Forest,44.20,39.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .turnin 422 >> Entrega la misión La locura de Arugal
    .accept 423 >> Acepta la misión La locura de Arugal
    .target Dalar Dawnweaver
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entra en la cripta
step
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadrec|r en la cripta
    .turnin 437 >> Entrega la misión El Campo Muerto
    .accept 438 >> Acepta la misión El Viejo Embarcadero
    .target High Executor Hadrec
step << !Mage !Priest
    .goto Silverpine Forest,44.05,39.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwyn|r
    >>|cRXP_BUY_Compra|r |T134532:0|t[Champiñones con motas rojas] |cRXP_BUY_a esta vendedora|r
    .vendor >> Vende la basura
    .collect 4605,20,423,1 --Red-speckled Mushroom (20)
    .target Gwyn Farrow
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Edwin|r
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Warlock/Priest/Shaman/Druid
    .vendor >> |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_si están disponibles|r
    .collect 1179,20,421,1 << Warlock/Priest/Shaman/Druid --Ice Cold Milk (20)
    .target Edwin Harly
step << Warlock/Mage/Priest
    .goto Silverpine Forest,44.80,39.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andrea|r
    .vendor >> Cómprale |T132491:0|t[|cRXP_FRIENDLY_Cinturón de hombre sabio|r] si está disponible
    .target Andrea Boynton
    .money <0.1400
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nadia|r
    >>Cómprale un |T135490:0|t[|cRXP_FRIENDLY_Arco largo refinado|r] si está disponible
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
step << Hunter/Rogue
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alexandre|r
    .vendor >> Cómprale |T132539:0|t[|cRXP_FRIENDLY_Botas de agilidad|r] si están disponibles
    .target Alexandre Lefevre
    .money <0.2633
step << Shaman/Warrior/Druid
    .goto Silverpine Forest,44.61,39.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alexandre|r
    .vendor >> Cómprale|T132539:0|t[|cRXP_FRIENDLY_Botas de agilidad|r] o |T132537:0|t[|cRXP_FRIENDLY_Botas de establo|r] si alguna de ellas está disponible
    .target Alexandre Lefevre
    .money <0.2000
step << Warlock/Mage/Priest
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipa el|r |T132491:0|t[|cRXP_FRIENDLY_Cinturón de hombre sabio|r]
    .use 4786
    .itemcount 4786,1
    .xp <15,1
    .equip 6,4786
step << Hunter
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipa el|r |T135490:0|t[|cRXP_FRIENDLY_Arco largo refinado|r]
    .use 11304
    .itemcount 11304,1
    .xp <14,1
    .equip 18,11304
step << Hunter/Rogue
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipa las|r |T132539:0|t[|cRXP_FRIENDLY_Botas de agilidad|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipa las|r |T132539:0|t[|cRXP_FRIENDLY_Botas de agilidad|r]
    .use 4788
    .itemcount 4788,1
    .xp <15,1
    .equip 8,4788
step << Shaman/Warrior/Druid
    #optional
    #completewith Shackles
    +|cRXP_WARN_Equipa las|r |T132537:0|t[|cRXP_FRIENDLY_Botas de establo|r]
    .use 4789
    .itemcount 4789,1
    .equip 8,4789
step
    #completewith Shackles
    .goto Silverpine Forest,44.20,38.17,15,0
    .goto Silverpine Forest,44.46,36.65,15,0
    .goto Silverpine Forest,44.91,33.14,30 >> Baja por la colina
step
    #completewith DecrepitFerry
    +|cRXP_WARN_¡Ten cuidado! ¡Puede haber un|r |cRXP_ENEMY_Hijo de Arugal|r |cRXP_WARN_en la zona! Este es un élite nivel 25, ¡aléjate de él!|r
    .unitscan Son of Arugal
step
    #label Shackles
    #loop
	.goto Silverpine Forest,43.83,31.00,0
	.goto Silverpine Forest,44.22,31.55,50,0
	.goto Silverpine Forest,43.51,32.38,50,0
	.goto Silverpine Forest,42.61,31.12,50,0
	.goto Silverpine Forest,41.28,30.25,50,0
	.goto Silverpine Forest,39.70,30.24,50,0
	.goto Silverpine Forest,38.96,29.15,50,0
	.goto Silverpine Forest,38.28,27.10,50,0
	.goto Silverpine Forest,37.60,24.16,50,0
	.goto Silverpine Forest,38.07,23.13,50,0
	.goto Silverpine Forest,38.56,21.93,50,0
	.goto Silverpine Forest,39.73,23.26,50,0
	.goto Silverpine Forest,41.49,23.51,50,0
	.goto Silverpine Forest,41.14,25.50,50,0
	.goto Silverpine Forest,41.17,28.26,50,0
	.goto Silverpine Forest,42.01,29.27,50,0
	.goto Silverpine Forest,43.83,31.00,50,0
    >>Mata |cRXP_ENEMY_Glotones Furia Lunar|r y |cRXP_ENEMY_Almanegras Furia Lunar|r. Despójalos para obtener sus |cRXP_LOOT_Grilletes|r
    >>|cRXP_WARN_¡Ten cuidado! Los|r |cRXP_ENEMY_Almanegras Furia Lunar|r |cRXP_WARN_se enfurecen cuando están por debajo del 25% de salud. Mátalos rápidamente cuando están débiles|r
    .complete 423,1 --Glutton Shackle (6)
    .mob +Moonrage Glutton
    .complete 423,2 --Darksoul Shackle (3)
    .mob +Moonrage Darksoul
    .unitscan Son of Arugal
step
    #label DecrepitFerry
    .goto Silverpine Forest,58.39,34.79
    >>Haz clic en el |cRXP_PICK_Bote|r al lado de los muelles
    >>|cRXP_WARN_¡Ten cuidado! Las|r |cRXP_ENEMY_Manos de Corvozarpa|r |cRXP_WARN_son de hasta nivel 16 y tienen una habilidad de aturdimiento cuerpo a cuerpo de 5 segundos|r
    .turnin 438 >>Entrega la misión El Viejo Embarcadero
    .accept 439 >>Acepta la misión Pistas de Putrepellejos
step
    .goto Silverpine Forest,49.89,60.33
    >>Haz clic en el |cRXP_PICK_Cajón|r en el campamento
    >>|cRXP_WARN_¡Ten cuidado! Estos enemigos lanzan|r |T135846:0|t[Descarga de Escarcha] |cRXP_WARN_y huyen con poca salud. Atráelos hacia atrás y mátalos uno a uno hasta que puedas hacer clic en el cajón de forma segura|r
    .turnin 477 >>Entrega la misión Pasa la frontera
    .accept 478 >>Acepta la misión Mapas y runas
    .mob Dalaran Apprentice
step
    #completewith next
    .goto Silverpine Forest,45.51,41.26,100 >> Viaja de vuelta a El Sepulcro
    .subzoneskip 228
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r y |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Entrega la misión Mapas y runas
    .accept 481 >>Acepta la misión El análisis de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Entrega la misión La locura de Arugal
    .turnin 481 >>Entrega la misión El análisis de Dalar
    .accept 482 >>Acepta la misión Las intenciones de los Dalaran
    .accept 424 >>Acepta la misión La locura de Arugal
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r y |cRXP_FRIENDLY_Dalar|r
    .turnin 478 >>Entrega la misión Mapas y runas
    .accept 481 >>Acepta la misión El análisis de Dalar
    .target +Shadow Priest Allister
    .goto Silverpine Forest,43.98,40.93
    .turnin 423 >>Entrega la misión La locura de Arugal
    .turnin 481 >>Entrega la misión El análisis de Dalar
    .accept 482 >>Acepta la misión Las intenciones de los Dalaran
    .target +Dalar Dawnweaver
    .goto Silverpine Forest,44.20,39.73
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Entrega la misión Las intenciones de los Dalaran
    .target Shadow Priest Allister
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r
    .accept 479 >>Acepta la misión Las investigaciones de Molino Ámbar
    .target Shadow Priest Allister
    .group
step
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r
    .turnin 482 >>Entrega la misión Las intenciones de los Dalaran
    .target Shadow Priest Allister
step
    #completewith next
    .goto Silverpine Forest,43.09,41.33,8,0
    .goto Silverpine Forest,42.75,41.30,8,0
    .goto Silverpine Forest,42.76,40.90,8,0
    .goto Silverpine Forest,43.43,40.87,2 >> Entra en la cripta
step
    #label RotHideCluesTurnIn
    .goto Silverpine Forest,43.43,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadrec|r en la cripta
    .turnin 439 >>Entrega la misión Pistas de Putrepellejos
    .accept 440 >>Acepta la misión El anillo grabado
    .target High Executor Hadrec
step << Undead
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karos|r
    .turnin 6321 >>Entrega la misión Suministros para el Sepulcro
    .accept 6323 >>Acepta la misión Vuela a Entrañas
    .target Karos Razok
step
    #completewith ZingeAndFaranell
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >> Consigue la ruta de vuelo de El Sepulcro << !Undead
    .fly Undercity >> Vuela a Entrañas
    .target Karos Razok
    .zoneskip Undercity
step << Undead
    .goto Undercity,61.48,41.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gordon|r
    .turnin 6323 >> Entrega la misión Vuela a Entrañas
    .accept 6322 >> Acepta la misión Michael Garrett
    .target Gordon Wendham
step << Troll Warrior/Undead Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compra un|r |T135147:0|t[Bastón nudoso] |cRXP_BUY_a este vendedor|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #completewith PyrewoodAmbush
    +Equipa el |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compra una|r |T132394:0|t[Hacha barbada] |cRXP_BUY_a este vendedor|r
    .collect 2025,1,479,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #completewith PyrewoodAmbush
    +Equipa el |T132394:0|t[Hacha barbada]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compra un|r |T133046:0|t[Martillo de roca] |cRXP_BUY_a este vendedor|r
    .collect 2026,1,479,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_Equipa el|r |T133046:0|t[Martillo de roca] |cRXP_WARN_cuando estés en el nivel 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compra un|r |T135147:0|t[Bastón nudoso] |cRXP_BUY_a este vendedor|r
    .collect 2030,1,479,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Louis Warren
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_Equipa el|r |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Louis|r|cRXP_BUY_. Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor.|r
    .collect 2027,1,479,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Louis Warren
step << Rogue
    #optional
    #completewith PyrewoodAmbush
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #completewith ZingeAndFaranell
    .goto Undercity,47.20,59.69,0
    .goto Undercity,47.20,59.69,12,0
    .goto Undercity,43.55,68.11,12,0
    .goto Undercity,45.20,71.67,12 >>Viaja hacia |cRXP_FRIENDLY_Zinge|r y |cRXP_FRIENDLY_Faranell|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faranell|r y |cRXP_FRIENDLY_Zinge|r en El Apothecarium
    .turnin 447 >>Entrega la misión Una fórmula mortal
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>Entrega la misión Una entrega de Zinge
    .accept 1358 >>Acepta la misión Muestra para Helbrim
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .solo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faranell|r y |cRXP_FRIENDLY_Zinge|r en El Apothecarium
    .turnin 447 >>Entrega la misión Una fórmula mortal
    .accept 450 >>Acepta la misión Una fórmula mortal
    .target +Master Apothecary Faranell
    .goto Undercity,48.84,69.25
    .turnin 1359 >>Entrega la misión Una entrega de Zinge
    .accept 1358 >>Acepta la misión Muestra para Helbrim
    .target +Apothecary Zinge
    .goto Undercity,50.16,67.97
    .group
step
    #optional
    #label ZingeAndFaranell
step << Mage
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r
    .train 2137 >> Aprende tus hechizos de clase
    .target Anastasia Hartwell
    .xp <14,1
    .xp >16,1
step << Mage
    #optional
    .goto Undercity,85.14,10.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anastasia|r
    .train 2120 >> Aprende tus hechizos de clase
    .target Anastasia Hartwell
    .xp <16,1
step << Rogue
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carolyn|r
    .train 1758 >> Aprende tus hechizos de clase
    .target Carolyn Ward
    .xp <14,1
    .xp >16,1
 step << Rogue
    #optional
    .goto Undercity,83.86,72.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Carolyn|r
    .train 6761 >> Aprende tus hechizos de clase
    .target Carolyn Ward
    .xp <16,1
step << Warlock
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Richard|r
    .train 6222 >> Aprende tus hechizos de clase
    .target Richard Kerwin
    .xp <14,1
    .xp >16,1
    .group
step << Warlock
    #optional
    .goto Undercity,88.93,15.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Richard|r
    .train 1455 >> Aprende tus hechizos de clase
    .target Richard Kerwin
    .xp <16,1
    .group
step << Priest/Mage/Warlock
    .goto Undercity,69.54,26.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zane|r|cRXP_BUY_. Compra una|r |T133718:0|t[Varita humeante] |cRXP_BUY_a este vendedor|r
    .collect 5208,1 --Smoldering Wand (1)
    .money <0.3515
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
	.target Zane Bradford
 step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1886 >>Entrega la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestComplete 1886
step << Undead Rogue
    .goto Undercity,83.52,69.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .accept 1898 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,54.84,76.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andron|r
    .turnin 1898 >>Entrega la misión Los mortacechadores
    .accept 1899 >>Acepta la misión Los mortacechadores
    .target Andron Gant
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,55.43,76.87
    >>Despoja la |cRXP_PICK_Estantería de Andron|r detrás de |cRXP_FRIENDLY_Andron|r
    .complete 1899,1 --Andron's Ledger (1)
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Undercity,83.53,69.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mennet|r
    .turnin 1899 >>Entrega la misión Los mortacechadores
    .accept 1978 >>Acepta la misión Los mortacechadores
    .target Mennet Carkad
    .isQuestTurnedIn 1886
step << Undead Rogue
    .goto Tirisfal Glades,58.86,78.76,40,0
    .goto Tirisfal Glades,59.75,84.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varimathras|r
    .turnin 1978 >>Entrega la misión Los mortacechadores
    .target Varimathras
    .isQuestTurnedIn 1886
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Mary|r
    .train 3276 >> Aprende |T133688:0|t[Venda de lino gruesa]
    .target Mary Edras
    .skill firstaid,<40,1
step
    .goto Undercity,73.19,55.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Mary|r
    .train 3274 >> Aprende Oficial de primeros auxilios
    .target Mary Edras
    .skill firstaid,<50,1
step << Warrior
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Angela|r
    .train 1160 >> Aprende tus hechizos de clase
    .target Angela Curthas
    .xp <14,1
    .xp >16,1
step << Warrior
    #optional
    .goto Undercity,48.32,15.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Angela|r
    .train 285 >> Aprende tus hechizos de clase
    .target Angela Curthas
    .xp <16,1
step << Priest
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lazarus|r
	.train 6074 >> Aprende tus hechizos de clase
    .target Father Lazarus
    .xp <14,1
    .xp >16,1
    .group
step << Priest
    #optional
    .goto Undercity,47.56,18.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lazarus|r
	.train 8102 >> Aprende tus hechizos de clase
    .target Father Lazarus
    .xp <16,1
    .group
step << Undead Rogue
    #optional
    #completewith GrimsonthePale
    .abandon 1886 >>Abandona la misión Los mortacechadores, ya no hay oportunidad de hacerlo
    .isOnQuest 1886
step
    .goto Undercity,56.2,96.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varimathras|r
    .accept 5725 >>Acepta la misión Poder destructivo
    .target Varimathras
    .dungeon RFC
step << Undead
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .turnin 6322 >>Entrega la misión Michael Garrett
    .accept 6324 >>Acepta la misión Regresa con Podrig
    .target Michael Garrett
step
    #completewith GrimsonthePale
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fly The Supulcher >> Vuela a El Sepulcro
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .group
step << Undead
    #completewith next
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael|r
    .fly The Supulcher >> Vuela a El Sepulcro
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .solo
step << Undead
    .goto Silverpine Forest,43.43,41.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Podrig|r
    .turnin 6324 >>Entrega la misión Regresa con Podrig
step
    .goto Silverpine Forest,43.98,39.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gwyn|r
    .vendor >> |cRXP_BUY_Cómprale|r |T134830:0|t[Pociones menores de sanación] |cRXP_BUY_si están disponibles|r
    .target Edwin Harly
    .group
step
    #completewith next
    .goto Silverpine Forest,56.48,45.94,10 >> Entra en la Mina
    .group
step
    #label GrimsonthePale
    .goto Silverpine Forest,58.56,44.85
    >>Mata a |cRXP_ENEMY_Grimson el Pálido|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 424,1 --Head of Grimson (1)
    .target Grimson the Pale
    .group 2
step << skip
    .goto Silverpine Forest,58.12,45.50
    .goto Silverpine Forest,44.29,41.09,30 >>|cRXP_WARN_Salta sobre la rueda de madera. Realiza un Logout Skip desconectando y volviendo a entrar. Si no consigues hacerlo, corre de vuelta a El Sepulcro|r
    .link https://www.youtube.com/watch?v=uD2CUb3rdQ0&ab >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .turnin 424 >>Entrega la misión La locura de Arugal
    .accept 99 >> La locura de Arugal
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .group
step
    #completewith next
    .goto Silverpine Forest,57.90,63.10,120,0
    .subzone 233 >> Viaja hacia Molino Ámbar
    .group
step
    #loop
	.goto Silverpine Forest,57.12,63.39,0
	.goto Silverpine Forest,57.91,62.48,50,0
	.goto Silverpine Forest,59.10,61.88,50,0
	.goto Silverpine Forest,59.79,63.08,50,0
	.goto Silverpine Forest,60.79,62.55,50,0
	.goto Silverpine Forest,61.98,62.56,50,0
	.goto Silverpine Forest,61.00,64.89,50,0
	.goto Silverpine Forest,60.10,65.93,50,0
	.goto Silverpine Forest,59.02,67.10,50,0
	.goto Silverpine Forest,57.56,67.57,50,0
	.goto Silverpine Forest,57.62,65.17,50,0
	.goto Silverpine Forest,57.12,63.39,50,0
    >>Mata |cRXP_ENEMY_Protectores de Dalaran|r y |cRXP_ENEMY_Magos de Dalaran|r. Despójalos para obtener sus |cRXP_LOOT_Colgantes|r
    .complete 479,1 --Dalaran Pendant (8)
    .mob Dalaran Mage
    .mob Dalaran Protector
    .group 2
step
    #completewith BerardsJournal
    .goto Silverpine Forest,48.20,71.94,50 >> Viaja a la Aldea Piroleña
    .isOnQuest 99
    .group
step
    #completewith PyrewoodAmbush
    >>Mata a los enemigos |cRXP_ENEMY_Piroleña|r. Despójalos para obtener sus |cRXP_LOOT_Grilletes|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith BerardsJournal
    .goto Silverpine Forest,43.97,73.23,10 >>Entra en la posada y ve al segundo piso
    .isOnQuest 450
    .group
step
    #label BerardsJournal
    .goto Silverpine Forest,42.98,73.22
    >>Mata al |cRXP_ENEMY_Boticario Berard|r. Despoja su |cRXP_LOOT_Libro|r ubicado en la estantería
    .complete 450,1 --Berard's Journal (1)
    .mob Apothecary Berard
    .isOnQuest 450
    .group 4
step
    #completewith next
    .goto Silverpine Forest,45.89,74.17,10 >> Entra en la Capilla
    .isOnQuest 99
    .group
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faerleia|r
    .accept 452 >>Acepta la misión La emboscada de Aldea Piroleña
    .mob Deathstalker Faerleia
    .isOnQuest 99
    .group 4
step
    #label PyrewoodAmbush
    .goto Silverpine Forest,46.48,74.10
    >>Mata al |cRXP_ENEMY_Consejero|r y al |cRXP_ENEMY_Lord Mayor Morrison|r que aparecen
    .complete 452,1 --Aid Faerleia in killing the Pyrewood Council
    .mob Councilman Smithers
    .mob Councilman Hendricks
    .mob Councilman Thatcher
    .mob Councilman Wilhelm
    .mob Councilman Hartin
    .mob Councilman Higarth
    .mob Councilman Brunswick
    .mob Councilman Cooper
    .mob Lord Mayor Morrison
    .isOnQuest 452
    .group 4
step
    .goto Silverpine Forest,46.50,74.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Faerleia|r
    .turnin 452 >>Entrega la misión La emboscada de Aldea Piroleña
    .mob Deathstalker Faerleia
    .isQuestComplete 452
    .group
step
    #loop
    .goto Silverpine Forest,45.48,73.43,0
    .goto Silverpine Forest,45.66,74.90,40,0
    .goto Silverpine Forest,44.11,73.50,40,0
    .goto Silverpine Forest,45.41,72.42,40,0
    .goto Silverpine Forest,46.61,73.00,40,0
    .goto Silverpine Forest,45.48,73.43,40,0
    >>Termina de matar a los enemigos |cRXP_ENEMY_Piroleña|r. Despójalos para obtener sus |cRXP_LOOT_Grilletes|r
    .complete 99,1 -- Pyrewood Shackle (6)
    .mob Pyrewood Watcher
    .mob Pyrewood Tailor
    .mob Pyrewood Sentry
    .mob Pyrewood Leatherworker
    .mob Pyrewood Elder
    .mob Pyrewood Armorer
    .isOnQuest 99
    .group 4
step
    #completewith AmbermillTurnin
    .goto Silverpine Forest,45.51,41.26,100 >> Viaja de vuelta a El Sepulcro
    .subzoneskip 228
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalar|r
    .turnin 99 >> Entrega la misión La locura de Arugal
    .goto Silverpine Forest,44.20,39.73
    .target Dalar Dawnweaver
    .isQuestComplete 99
    .group
step
    .goto Silverpine Forest,42.79,40.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Renferrel|r
    .turnin 450 >> Entrega la misión Una fórmula mortal
    .target Apothecary Renferrel
    .isQuestComplete 450
    .group
step
    #label AmbermillTurnin
    .goto Silverpine Forest,43.98,40.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Allister|r
    .turnin 479 >>Entrega la misión Las investigaciones de Molino Ámbar
    .target Shadow Priest Allister
    .isQuestComplete 479
    .group
step << Hunter
    .goto Silverpine Forest,45.01,39.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nadia|r
    >>Cómprale un |T135490:0|t[|cRXP_FRIENDLY_Arco largo refinado|r] si está disponible
    .collect 11304,1,438,1 --Fine Longbow (1)
    .collect 2515,1200,438,1 << Hunter --Sharp Arrow (1200)
    .target Nadia Vernon
    .money <0.2633
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.5
    .equip 18,2515
    .group
step << Druid
    #completewith next
    .cast 18960 >>Lanza |T135758:0|t[Teletransporte a: Claro de la Luna]
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .trainer >> Aprende tus hechizos de clase
    .target Loganaar
step
    #optional
    .abandon 424 >> Abandona la misión La locura de Arugal
    .isOnQuest 424
step
    #optional
    .abandon 479 >> Abandona la misión Las investigaciones de Molino Ámbar
    .isOnQuest 479
step
    #optional
    .abandon 99 >> Abandona la misión La locura de Arugal
    .isOnQuest 99
step
    #optional
    .abandon 450 >> Abandona la misión Una fórmula mortal
    .isOnQuest 450
step
    #optional
    .abandon 452 >> Abandona la misión La emboscada de Aldea Piroleña
    .isOnQuest 452
step << Tauren/Shaman/Hunter
    .hs >> Usa tu Piedra de hogar para ir a El Cruce
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step << !Tauren !Shaman !Hunter
    .hs >> Usa tu Piedra de hogar para ir a Cerrotajo
    .use 6948
    .bindlocation 362,1
    .subzoneskip 362

    ]])
