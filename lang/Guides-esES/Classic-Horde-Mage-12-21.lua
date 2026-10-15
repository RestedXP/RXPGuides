if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 12-17 Los Baldíos AoE
#version 1
#group RestedXP Horda Mago AoE
#defaultfor Horde Mage
#next 17-21 Espolón/Baldíos AoE

step << Mage
	#era/som
    #completewith next
	+Ten en cuenta que has seleccionado la guía de AoE. Suele ser mucho más difícil que el de mago a un solo objetivo, pero es MUCHO más rápido
step << Mage
	#som
	#phase 3-6
    #completewith next
	+Ten en cuenta que has seleccionado la guía de AoE. Subir en AoE suele ser mucho más difícil que jugar con un mago a un solo objetivo, y también es más lento debido a los recientes cambios que aumentan al 100 % la experiencia de las misiones en SoM
step
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>Habla con |cRXP_FRIENDLY_Tonga Tótem de Runa|r
    .accept 870 >>Acepta la misión Las Charcas del Olvido
step
    .goto The Barrens,52.2,31.0
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce
.target Sergra Darkthorn
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
step << Troll Mage
    .goto The Barrens,52.5,29.8
.target Zargh
>>Habla con |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acepta la misión Entrega de carne a Orgrimmar
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Habla con |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acepta la misión Raptores ladrones
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >> Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Habla con |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acepta la misión Interrupción de los ataques
    .accept 5041 >>Acepta la misión Suministros para El Cruce
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >> Consigue la ruta de vuelo de El Cruce
step << Troll Mage
    >>NO vayas a Orgrimmar
    .goto The Barrens,51.5,30.3
>>Habla con |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entrega la misión Entrega de carne a Orgrimmar
.target Devrak
    .accept 6384 >>Acepta la misión Un viaje a Orgrimmar
step
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Habla con el |cRXP_FRIENDLY_Boticario Helbrim|r
    .accept 848 >>Acepta la misión Esporas de hongos
    .accept 1492 >>Acepta la misión Maestro de muelles Vertipeluca
step
    #sticky
    #completewith next
    >>Revisa esta ubicación en busca de El barril vacío de Chen. Despójalo e inicia la misión, de lo contrario lo obtendrás más tarde
    .goto The Barrens,55.7,27.3
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
step
    .goto The Barrens,55.6,26.6
    >>Mata a los Jabaespines de la zona
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,3 --Razormane Hunter (3)
step << !Undead
    #sticky
    #completewith next
    >>Si la Piedra de energía con imperfecciones en tu inventario tiene menos de 10 minutos restantes, tírala, luego regresa y despoja la Piedra Morada junto a Ak'Zeloth de nuevo
    .turnin 926 >>Entrega la misión La piedra de energía con imperfecciones
step << !Undead
    #sticky
    #completewith BeakCave
    >>Mata a algunos Zancudos de llanura por el camino si tienes tiempo mientras realizas la misión de la piedra de energía con imperfecciones. Despójalos para obtener Picos
    .complete 844,1 --Plainstrider Beak (7)
step << !Undead
    .goto The Barrens,50.4,22.0,20 >>Sube corriendo la montaña por aquí
step << !Undead
    #label BeakCave
    .goto The Barrens,47.6,19.2,20 >>Ve a la cueva rodeada de orcos Filo Ardiente
step << !Undead
    >>Haz clic derecho en el Altar
    .goto The Barrens,48.0,19.1
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Mata a los Raptores que veas. Despójalos para obtener algunas Cabezas de raptor - obtendrás más después
    .complete 869,1 --Raptor Head (12)
step
    >>Mata Zancudos de llanura. Despójalos para obtener Picos
    .goto The Barrens,50.8,32.1
    .complete 844,1 --Plainstrider Beak (7)
step
    >>En lo alto de la torre
    .goto The Barrens,51.5,30.9
>>Habla con |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entrega la misión Interrupción de los ataques
.target Thork
    .accept 872 >>Acepta la misión La perturbación termina
.target Darsok Swiftdagger
>>Habla con |cRXP_FRIENDLY_Darsok Movedaga|r
    .accept 867 >>Acepta la misión Arpías saqueadoras
step
    .goto The Barrens,52.2,31.0
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 844 >>Entrega la misión La amenaza de los zancudos de llanura
.target Sergra Darkthorn
    .accept 845 >>Acepta la misión La zhebra
step
    #sticky
    #completewith Crates
    >>Mata a los Crines de Acero mientras obtienes los Cajones y matas a Kreenig
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith next
    >>Despoja las cajas marrones que se encuentran en la zona
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
    >>Mata a Kreenig Gruñucico. Despójalo para obtener su Colmillo
    .goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8,40,0
    >>Despoja las cajas marrones que se encuentran en la zona
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto The Barrens,56.7,25.3
    >>Termina de matar a los Crines de Acero
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Mata a las Zhebras que veas. Despójalas para obtener sus Pezuñas
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto The Barrens,62.3,20.1
.target Ak'Zeloth
>>Habla con |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entrega la misión La Semilla del Demonio
step
    >>Mata a las Zhebras que veas. Despójalas para obtener sus Pezuñas. Asegúrate de tener 4 antes de entrar en Trinquete
    .goto The Barrens,58.03,19.76,150,0 << Undead
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Planta superior del edificio
    .goto The Barrens,62.7,36.3
.target Gazlowe
>>Habla con |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Acepta la misión Los filibusteros de los Mares del Sur
step
    .goto The Barrens,63.1,37.1
    .fp Ratchet >> Consigue la ruta de vuelo de Trinquete
step
    .goto The Barrens,63.0,37.2
.target Sputtervalve
>>Habla con |cRXP_FRIENDLY_Petardol|r
    .accept 894 >>Acepta la misión El churumbele
step
    >>Haz clic en el Cartel de Se busca. También puedes usar el banco aquí si quieres
    .goto The Barrens,62.6,37.5
    .accept 895 >>Acepta la misión SE BUSCA: Barón Longavera
step
    .goto The Barrens,62.4,37.7
.target Mebok Mizzyrix
>>Habla con |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Acepta la misión Cuernos de raptor
step
    .goto The Barrens,62.3,38.4
>>Habla con el |cRXP_FRIENDLY_Maestro cervecero Drohn|r
    .turnin 819 >>Entrega la misión El barril vacío de Chen
.target Brewmaster Drohn
    .accept 821 >>Acepta la misión El barril vacío de Chen
step
    #sticky
    #label Southsea
    >>Mata a los enemigos Mares del Sur de la zona
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    >>Mata al Barón Longavera. Despójalo para obtener su Cabeza
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto The Barrens,62.7,36.3
>>Habla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Entrega la misión Los filibusteros de los Mares del Sur
.target Gazlowe
    .accept 890 >>Acepta la misión El envío perdido
    .turnin 895 >>Entrega la misión SE BUSCA: Barón Longavera
step
    .goto The Barrens,63.3,38.4
>>Habla con el |cRXP_FRIENDLY_Maestro de muelles Vertipeluca|r
    .turnin 1492 >>Entrega la misión Maestro de muelles Vertipeluca
    .turnin 890 >>Entrega la misión El envío perdido
.target Wharfmaster Dizzywig
    .accept 892 >>Acepta la misión El envío perdido
    .accept 896 >>Acepta la misión La fortuna de un minero
step
    .goto The Barrens,62.7,36.3
>>Habla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Entrega la misión El envío perdido
.target Gazlowe
    .accept 888 >>Acepta la misión Botín robado
step
    .goto The Barrens,63.08,37.16
    .fly Crossroads >> Vuela a El Cruce
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Habla con |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Entrega la misión Suministros para El Cruce
    .turnin 872 >>Entrega la misión La perturbación termina
step
    .goto The Barrens,52.2,31.0
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 845 >>Entrega la misión La zhebra
.target Sergra Darkthorn
    .accept 903 >>Acepta la misión Merodeadores en Los Baldíos
step
    #sticky
    #completewith next
    >>Mata a los Zancudos de llanura. Despójalos para obtener sus Riñones
    .complete 821,2 --Plainstrider Kidney (5)
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acepta la misión Los jefes Kolkar
    .accept 855 >> Acepta la misión Los brazales centauro
    .target Regthar Deathgate
step
    #completewith KodobaneTurnin
    >>Mata |cRXP_ENEMY_Retadores Kolkar|r y |cRXP_ENEMY_Agitadoras Kolkar|r. Despójalos para obtener sus |cRXP_LOOT_Brazales|r
    >>|cRXP_WARN_Esta misión no tiene que ser completada ahora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith Barak
    >>Recoge |cRXP_LOOT_Champiñones cargados|r alrededor de Las Charcas del Olvido
    >>|cRXP_WARN_Esta misión no tiene que ser completada ahora|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Sumérgete bajo el agua hacia la |cRXP_PICK_Fisura burbujeante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Mata a |cRXP_ENEMY_Barak Aterrakodos|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Ten cuidado ya que los golpes de |cRXP_ENEMY_Barak Aterrakodos|r causan MUCHO daño y está protegido por un |cRXP_ENEMY_Retador Kolkar|r. Pueden atraparte con una red y dispararte desde la distancia|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entrega la misión Los jefes Kolkar
    .accept 851 >>Acepta la misión Verog el Derviche
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entrega la misión Los jefes Kolkar
    .accept 851 >>Acepta la misión Verog el Derviche
    .target Regthar Deathgate
step
    #sticky
    #completewith Claws
    >>Mata a los Raptores que veas. Despójalos para obtener algunas Cabezas de raptor - obtendrás más después
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith next
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
	>>No te centres en conseguirlos todos ahora
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>Mata Merodeadores. Despójalos para obtener sus Garras y Colmillos
    .goto The Barrens,41.4,24.5
    .complete 903,1 --Prowler Claws (7)
step
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>Mata Arpías. Despójalas para obtener sus Garras
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto The Barrens,43.8,12.2
    >> Si todavía no tienes la Maza con pinchos pesada, considera comprarla a Vrang Sangrevaje << Druid/Warrior
    .vendor >> Ve a venderle a este tipo si es necesario
step
    #sticky
    #completewith next
    >>Mata a los Zancudos de llanura. Despójalos para obtener sus Riñones
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>Mata Raptores. Despójalos para obtener sus cabezas
    .complete 869,1 --Raptor Head (12)
step
    >>Haz clic en la Consola de control
    .goto The Barrens,52.4,11.6
    .turnin 894 >>Entrega la misión El churumbele
    .accept 900 >>Acepta la misión El churumbele
step
    >>Haz clic en la Válvula
    .goto The Barrens,52.4,11.4
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Haz clic en la Válvula. Los enemigos aparecerán cuando hagas clic en cualquiera de ellas
    .goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto The Barrens,52.3,11.6
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Haz clic en la Consola de control
    .goto The Barrens,52.4,11.6
    .turnin 900 >>Entrega la misión El churumbele
    .accept 901 >>Acepta la misión El churumbele
step
    >>Mata a Manitas el Risitas en el edificio. Despoja a Manitas el Risitas para obtener la Llave de Consola
    .goto The Barrens,52.8,10.4
    .complete 901,1 --Console Key (1)
step
    .goto The Barrens,52.4,11.6
    .turnin 901 >>Entrega la misión El churumbele
    .accept 902 >>Acepta la misión El churumbele
step
    >>Acepta la misión La llave de contacto del Machacador
    .goto The Barrens,56.5,7.5
.target Wizzlecrank's Shredder
>>Habla con el |cRXP_FRIENDLY_Machacador de Rabiaire|r
    .accept 858 >>Acepta la misión La llave de contacto
step
    >>Sube al nivel 16 aquí matando enemigos, es importante, porque las próximas 3 misiones son bastante difíciles.
	.xp 16 >> Mata enemigos hasta el nivel 16
step
    >>Mata al Supervisor Palarrastre (Patrulla por toda la torre). Despójalo para obtener la Llave de ignición
	.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
step
    >>Esto iniciará una escolta
    .goto The Barrens,56.5,7.5
>>Habla con el |cRXP_FRIENDLY_Machacador de Rabiaire|r
    .turnin 858 >>Entrega la misión La llave de contacto
.target Wizzlecrank's Shredder
    .accept 863 >>Acepta la misión La fuga
step
    #label Slugs
    >>2 enemigos aparecerán en algún momento. Mátalos y luego espera al evento Roleplay del final
    .goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Mata enemigos en la zona. Despójalos hasta que caiga Esmeralda ojo de gato
    .goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto Orgrimmar,11.5,67.0,40 >>Corre a la entrada oeste de Orgrimmar
step
    .goto Orgrimmar,38.79,85.68
    .trainer >> Aprende tus hechizos de clase
step << Troll Mage
    .goto Orgrimmar,54.2,68.6
>>Habla con la |cRXP_FRIENDLY_Tabernera Gryshka|r
    .turnin 6384 >>Entrega la misión Un viaje a Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >>Acepta la misión Doras, maestro de jinetes del viento
step
    >>Corre hasta el Maestro de Vuelo. NO vueles a ningún lado
    .goto Orgrimmar,45.120,63.889
    .fp Orgrimmar >> Consigue la ruta de vuelo de Orgrimmar << Undead
>>Habla con |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >>Entrega la misión Doras, maestro de jinetes del viento << Troll Mage
.target Doras
    .accept 6386 >>Acepta la misión Regresar a El Cruce << Troll Mage
step
    >>Corre al Fuerte Grommash
    .goto Orgrimmar,39.1,38.1
.target Zor Lonetree
>>Habla con |cRXP_FRIENDLY_Zor Árbol Solitario|r
    .accept 1061 >>Acepta la misión Los espíritus del Espolón
step
    #completewith next
    .hs >>Usa tu Piedra de hogar para ir a El Cruce
step << Troll Mage
    .goto The Barrens,52.6,29.9
.target Zargh
>>Habla con |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Entrega la misión Regreso a El Cruce.
step
    .goto The Barrens,51.9,30.3
>>Habla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entrega la misión Raptores ladrones
.target Gazrog
    .accept 3281 >>Acepta la misión La plata robada
step
    .goto The Barrens,52.3,31.0
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 903 >>Entrega la misión Merodeadores en Los Baldíos
.target Sergra Darkthorn
    .accept 881 >>Acepta la misión Echeyakee
step
    >>Usa el Cuerno de Echeyakee en tu inventario para invocar a Echeyakee. Mata a Echeyakee y despójalo para obtener su Pellejo
    .goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto The Barrens,52.2,31.0
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 881 >>Entrega la misión Echeyakee
.target Sergra Darkthorn
    .accept 905 >>Acepta la misión Los segadores furiosos
step
    .goto The Barrens,52.20,31.90
>>Habla con |cRXP_FRIENDLY_Tonga Tótem de Runa|r
    .turnin 870 >> Entrega la misión Las Charcas del Olvido
.target Tonga Runetotem
    .accept 877 >> Acepta la misión El Oasis Estancado
step
    .goto The Barrens,52.00,31.60
.target Mankrik
>>Habla con |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >> Acepta la misión Consumido por el odio
    .accept 4921 >> Acepta la misión Perdida en la batalla
step
    >>En lo alto de la torre
    .goto The Barrens,51.6,30.9
>>Habla con |cRXP_FRIENDLY_Darsok Movedaga|r
    .turnin 867 >>Entrega la misión Arpías saqueadoras
.target Darsok Swiftdagger
    .accept 875 >>Acepta la misión Las tenientes arpías
step
    .goto The Barrens,51.50,30.20
.target Apothecary Helbrim
>>Habla con el |cRXP_FRIENDLY_Boticario Helbrim|r
    .turnin 848 >> Entrega la misión Esporas de hongos
step
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>Vuela a Trinquete
step
    .goto The Barrens,63.0,37.2
>>Habla con |cRXP_FRIENDLY_Petardol|r
    .turnin 902 >>Entrega la misión El churumbele
    .turnin 863 >> Entrega la misión La fuga
.target Sputtervalve
    .accept 1483 >> Acepta la misión Ziz Fizziks
step
    .goto The Barrens,63.30,38.40
.target Wharfmaster Dizzywig
>>Habla con el |cRXP_FRIENDLY_Maestro de muelles Vertipeluca|r
    .turnin 896 >> Entrega la misión La fortuna de un minero
step
    .goto The Barrens,62.40,37.70
.target Mebok Mizzyrix
>>Habla con |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1069 >> Acepta la misión Huevos de araña musgondo
step
    >>Despoja la caja
    .goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>Despoja la caja
    .goto The Barrens,62.6,49.6
step
    #sticky
    #completewith Nest
    >>Mata a cualquier Raptor que veas. Despójalos para obtener sus Cuernos y Plumas. Ten cuidado ya que tiene vapulear (2 ataques extras)
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Despoja el cofre para obtener la plata robada
    >>Guarda cualquier Pluma de Solescama que obtengas para después
    .goto The Barrens,57.4,52.4,90,0
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Recoge los |cRXP_LOOT_Champiñones cargados|r alrededor de El Oasis Estancado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Haz clic en la Fisura burbujeante bajo el agua
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Mata Centauros. Despójalos para obtener sus brazales
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >> Mata a los Centauros del lago hasta que aparezca Verog (verás un Grito en el chat cuando aparezca)
    .goto The Barrens,52.95,41.77
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto The Barrens,55.72,42.14,25,0
	.goto The Barrens,55.49,41.75,25,0
	.goto The Barrens,55.09,41.58,25,0
	.goto The Barrens,55.03,42.24,25,0
	.goto The Barrens,55.27,43.17,25,0
	.goto The Barrens,55.78,43.47,25,0
	.goto The Barrens,56.15,43.28,25,0
	.goto The Barrens,56.08,42.58,25,0
	.goto The Barrens,55.72,42.14,25,0
    >>Recoge los |cRXP_LOOT_Champiñones cargados|r alrededor de El Oasis Estancado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Haz clic en el huevo. Necesitas las Plumas de Solescama de los raptores
    .goto The Barrens,52.6,46.2
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Haz clic en el huevo. Necesitas las Plumas de Solescama de los raptores
    .goto The Barrens,52.5,46.6
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Haz clic en el huevo. Necesitas las Plumas de Solescama de los raptores
    .goto The Barrens,52.0,46.5
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    >>Termina de matar a los Raptores. Despójalos para obtener sus Cuernos
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Habla con la Esposa de Mankrik
    .goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto The Barrens,45.6,59.0
    .home >>Establece tu Piedra de hogar en el Campamento Taurajo
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>Habla con |cRXP_FRIENDLY_Quebrantadientes|r
    .accept 878 >>Acepta la misión Tribus en guerra
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >> Consigue la ruta de vuelo del Campamento Taurajo
    .fly Crossroads >>Vuela a El Cruce
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Habla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Entrega la misión La plata robada
step
    .goto The Barrens,52.2,31.0
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 905 >>Entrega la misión Los segadores furiosos
.target Sergra Darkthorn
    .accept 3261 >>Acepta la misión Jorn Vidente del Cielo
step
    .goto The Barrens,52.2,31.9
>>Habla con |cRXP_FRIENDLY_Tonga Tótem de Runa|r
    .turnin 877 >>Entrega la misión El Oasis Estancado
.target Tonga Runetotem
    .accept 880 >>Acepta la misión Seres alterados
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Habla con |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Entrega la misión Perdida en la batalla
step
    #sticky
	#completewith next
    >>Mata a los Zancudos de llanura. Despójalos para obtener sus Riñones
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.39,28.43
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .turnin 851 >>Entrega la misión Verog el Derviche
.target Regthar Deathgate
    .accept 852 >>Acepta la misión Hezrul Marcasangre
step
    .goto The Barrens,45.39,28.43
.target Regthar Deathgate
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .turnin 855 >> Entrega la misión Los brazales centauro
    .isQuestComplete 855
step
    .goto The Barrens,45.39,28.43
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .turnin 851 >>Entrega la misión Verog el Derviche
.target Regthar Deathgate
    .accept 852 >>Acepta la misión Hezrul Marcasangre
step
    #sticky
	#label CeBracers
    >>Mata Centauros. Despójalos para obtener sus brazales
    .complete 855,1 --Centaur Bracers (15)
step
    .goto The Barrens,45.87,40.80
    >> Hezrul patrulla alrededor del lago grande de las Cuevas de los Lamentos
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .turnin 852 >>Entrega la misión Hezrul Marcasangre
    .turnin 855 >> Entrega la misión Los brazales centauro
step
    .goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .accept 4021 >>Acepta la misión ¡Contraataca!
step
    >> Esta misión puede ser muy difícil de hacer en solitario, si no tienes grupo, busca a alguien o kitea cerca de la casa del PNJ que te entrega la misión.
    >> Omite esto si es demasiado difícil
    .goto The Barrens,44.33,28.14
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto The Barrens,45.39,28.44
.target Regthar Deathgate
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .turnin 4021 >>Entrega la misión ¡Contraataca!
step
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3
    >>Mata a las Destripadoras Alabruja. Despójalas para obtener sus Anillos de teniente arpía
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto The Barrens,41.4,24.5
    >>Mata Merodeador de la sabana en el área. Despójalos para obtener sus Colmillos
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto The Barrens,35.3,27.9
>>Habla con |cRXP_FRIENDLY_Seereth Petrajada|r
    .turnin 1061 >> Entrega la misión Los espíritus del Espolón
.target Seereth Stonebreak
    .accept 1062 >> Acepta la misión Los invasores goblin
.target Makaba Flathoof
>>Habla con |cRXP_FRIENDLY_Makaba Pezuña Plana|r
    .accept 6548 >> Acepta la misión Venga mi aldea
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 17-21 Espolón/Baldíos AoE
#version 1
#group RestedXP Horda Mago AoE
#defaultfor Horde Mage
#next 21-30 Argénteos/Laderas de Trabalomas AoE

step
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    >>Mata a los Tótem Siniestro del área
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto The Barrens,35.191,27.791
>>Habla con |cRXP_FRIENDLY_Makaba Pezuña Plana|r
    .turnin 6548 >> Entrega la misión Venga mi aldea
.target Makaba Flathoof
    .accept 6629 >> Acepta la misión Mata a Grundig Nube Negra
step
    >>Entra al pueblo a través del camino occidental. Asegúrate de matar a los 6 toscos antes de comenzar la misión en el interior. Mata a Grundig frente a la tienda principal
    .goto Stonetalon Mountains,71.7,86.7,60,0
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Inicia la Escolta de Kaya
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>Habla con |cRXP_FRIENDLY_Kaya Pezuña Plana|r
    .accept 6523 >> Acepta la misión Protege a Kaya
step
     >>Escolta a Kaya y mantente cerca de ella. 3 Tótem Siniestro aparecerán en la hoguera. Come/bebe antes de que llegue al campamento
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto Stonetalon Mountains,71.4,95.1
.target Xen'Zilla
>>Habla con |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Acepta la misión Chupasangres
step
    #sticky
    #label deepmossegg
    >>Haz clic en los huevos de araña cerca de los árboles
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    >>Mata a las Arañas Musgondo de la zona
    .goto Stonetalon Mountains,57.5,76.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto Stonetalon Mountains,58.989,62.599
>>Habla con |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1483 >> Entrega la misión Ziz Fizziks
.target Ziz Fizziks
    .accept 1093 >> Acepta la misión Súper Segadora 6000
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>Mata Maderero mientras buscas Operadores para obtener los Planos
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>Mata Operadores de Ventura y Cía. hasta que obtengas los Planos
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Termina de matar a los Madereros
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto Stonetalon Mountains,58.989,62.599
>>Habla con |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >> Entrega la misión Súper Segadora 6000
.target Ziz Fizziks
    .accept 1094 >> Acepta la misión Más instrucciones
step
    .hs >> Usa tu Piedra de hogar para ir al Campamento Taurajo
step
    .goto The Barrens,44.9,59.1
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 3261 >>Entrega la misión Jorn Vidente del Cielo
.target Jorn Skyseer
    .accept 882 >>Acepta la misión Ishamuhale
step
    #sticky
    #label Lizard
    >>Mata Morrotormentas. Despójalos para obtener un Cuerno
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
    .goto The Barrens,45.0,51.8,0
	>>Busca y mata a Lakota'mani (Kodo gris) alrededor del área. Despójalo para obtener su Pezuña. Si no lo encuentras, omite esta misión.
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acepta la misión Lakota'Mani
step
    >>Mata a MUCHOS Jabaespines. Despójalos para obtener sus Colmillos. Guarda las Esquirla de sangre que consigas
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #sticky
    #completewith Ishamuhale
    >>Mata a los Zancudos de llanura. Despójalos para obtener sus Riñones
    .complete 821,2 --Plainstrider Kidney (5)
step
    #requires Lizard
    >>Rodea el lago y mata Tortugas con AoE. Despójalas para obtener sus Caparazones
	.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Mata a una Zhebra en la zona. Despójala para obtener un Cadáver
	.goto The Barrens,61.0,32.2
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Usa el Cadáver reciente de zhebra en el árbol muerto para invocar a Ishamuhale. Mátalo y despójalo para obtener su Colmillo
	.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Mata a los Zancudos de llanura. Despójalos para obtener sus Riñones
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto The Barrens,62.7,36.3
    >>Vuelve a Trinquete
.target Gazlowe
>>Habla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Entrega la misión Botín robado
step
    .goto The Barrens,63.0,37.2
>>Habla con |cRXP_FRIENDLY_Petardol|r
    .turnin 1094 >>Entrega la misión Más instrucciones
.target Sputtervalve
    .accept 1095 >>Acepta la misión Más instrucciones
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Habla con |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Entrega la misión Cuernos de raptor
    .turnin 1069 >>Entrega la misión Huevos de araña musgondo
step
    .goto The Barrens,62.3,38.4
.target Brewmaster Drohn
>>Habla con el |cRXP_FRIENDLY_Maestro cervecero Drohn|r
    .turnin 821 >>Entrega la misión El barril vacío de Chen
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>Vuela a El Cruce
step
    .goto The Barrens,52.2,31.9
>>Habla con |cRXP_FRIENDLY_Tonga Tótem de Runa|r
    .turnin 880 >>Entrega la misión Seres alterados
.target Tonga Runetotem
    .accept 1489 >>Acepta la misión Hamuul Tótem de Runa
    .accept 3301 >>Acepta la misión Mura Tótem de Runa
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Habla con |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Entrega la misión Consumido por el odio
step
    >>En lo alto de la torre
    .goto The Barrens,51.60,30.90
>>Habla con |cRXP_FRIENDLY_Darsok Movedaga|r
    .turnin 875 >> Entrega la misión Las tenientes arpías
.target Darsok Swiftdagger
    .accept 876 >> Acepta la misión Serena Sangrepluma
step
    >>Esto inicia una misión con tiempo limitado
    .goto The Barrens,51.4,30.2
>>Habla con el |cRXP_FRIENDLY_Boticario Helbrim|r
    .turnin 848 >>Entrega la misión Esporas de hongos
.target Apothecary Helbrim
    .accept 853 >>Acepta la misión Boticaria Zamah
step
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
step
    .goto The Barrens,53.0,52.1
    >>Mata Jabaespines para obtener una Esquirla de sangre
    .collect 5075 --Blood Shard (1)
step
    .goto The Barrens,44.6,59.2
>>Habla con |cRXP_FRIENDLY_Quebrantadientes|r
    .turnin 878 >>Entrega la misión Tribus en guerra
.target Mangletooth
    .accept 5052 >>Acepta la misión Esquirlas de sangre de Agamaggan
    .turnin 5052 >>Entrega la misión Esquirlas de sangre de Agamaggan
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto The Barrens,44.8,59.1
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .accept 1130 >>Acepta la misión Melor manda saludos
step
    .goto The Barrens,44.8,59.1
    .isOnQuest 883
.target Jorn Skyseer
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 883 >>Entrega la misión Lakota'mani
step
    .goto The Barrens,44.8,59.1
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .accept 1130 >>Acepta la misión Melor manda saludos
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto The Barrens,44.2,62.1,0
    .goto The Barrens,49.2,62.6,0
    .goto The Barrens,49.6,60.0,0
    >>Busca a Owatanka (Lagarto Trueno Azul) en esta zona. Si lo encuentras, despójalo para obtener su Punta de cola e inicia la misión. Si no puedes encontrarlo, omite esta misión
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Acepta la misión Owatanka
step
    .goto The Barrens,42.5,60.3,30,0
    .goto The Barrens,47.1,63.7,30,0
    .goto The Barrens,50.0,61.1,30,0
    >>Mata Truenagartso. Despójalos para obtener su sangre
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto The Barrens,44.9,59.1
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
.target Jorn Skyseer
    .accept 913 >>Acepta la misión El chillido del halcón trueno
step
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 884 >>Entrega la misión Owatanka
    .isOnQuest 884
step
    .goto The Barrens,44.9,59.1
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
.target Jorn Skyseer
    .accept 913 >>Acepta la misión El chillido del halcón trueno
step
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    >>Mata a un Halcón Trueno. Despójalo para obtener sus Alas
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
.target Jorn Skyseer
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 913 >>Entrega la misión El chillido del halcón trueno
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto The Barrens,44.54,59.27
    >>Entrega tus Esquirla de sangre para obtener el buff de El espíritu del viento de Quebrantadientes. Si accidentalmente vendiste alguna esquirla, omite este paso
.target Mangletooth
>>Habla con |cRXP_FRIENDLY_Quebrantadientes|r
    .turnin 889 >> Entrega la misión El espíritu del viento
step
    .goto Thunder Bluff,32.0,66.9,60 >>Corre hacia el ascensor y úsalo para entrar en Cima del Trueno
step
    .goto Thunder Bluff,45.814,64.711
    .home >>Establece tu Piedra de hogar en Cima del Trueno
step
    .goto Thunder Bluff,61.538,80.919
>>Habla con |cRXP_FRIENDLY_Melor Pezuña Pétrea|r
    .turnin 1130 >>Entrega la misión Melor manda saludos
.target Melor Stonehoof
    .accept 1131 >>Acepta la misión Metaleador
step
 	>>Entra en las Pozas de las Visiones
	.goto Thunder Bluff,30.1,30.0,30,0
	.goto Thunder Bluff,23.00,21.00
.target Apothecary Zamah
>>Habla con la |cRXP_FRIENDLY_Boticaria Zamah|r
    .turnin 853 >> Entrega la misión Boticaria Zamah
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >> Aprende tus hechizos de clase
	>>No cambies a talentos de daño en área (AoE) todavía (si vas en Fuego)
step
    .goto Thunder Bluff,28.4,27.7
.target Clarice Foster
>>Habla con |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Acepta la misión Hasta que la muerte nos separe
step
	.goto Thunder Bluff,47.003,49.832
    .fp Thunder Bluff >> Consigue la ruta de vuelo de Cima del Trueno
    .fly Crossroads >>Vuela a El Cruce
step
    >>Mata a Serena Sangrepluma. Despójala para obtener su Cabeza
	.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
>>Habla con |cRXP_FRIENDLY_Seereth Petrajada|r
    .turnin 1062 >>Entrega la misión Los invasores goblin
>>Habla con |cRXP_FRIENDLY_Makaba Pezuña Plana|r
    .turnin 6629 >>Entrega la misión Mata a Grundig Nube Negra
    .turnin 6523 >>Entrega la misión Protege a Kaya
.target Makaba Flathoof
    .accept 6401 >>Acepta la misión Kaya está viva
.target Seereth Stonebreak
    .accept 1063 >>Acepta la misión La bruja anciana
--    .accept 1068 >> Accept Shredding Machines
step
    .goto Stonetalon Mountains,71.3,95.1
.target Xen'Zilla
>>Habla con |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entrega la misión Chupasangres
step
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Habla con |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >>Entrega la misión Más instrucciones
step
    .goto Stonetalon Mountains,47.5,58.4
.target Tammra Windfield
>>Habla con |cRXP_FRIENDLY_Tammra Campo de Viento|r
    .turnin 6401 >>Entrega la misión Kaya está viva
step
    .goto Stonetalon Mountains,45.12,59.84
    .fp Sun Rock>> Consigue la ruta de vuelo del Refugio Roca del Sol
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
step
    .goto Thunder Bluff,70.00,30.90
>>Habla con |cRXP_FRIENDLY_Magatha Tótem siniestro|r
    .turnin 1063 >> Entrega la misión La bruja anciana
.target Magatha Grimtotem
    .accept 1064 >> Acepta la misión La ayuda de los Renegados
step
    .goto Thunder Bluff,78.62,28.56
>>Habla con el |cRXP_FRIENDLY_Archidruida Hamuul Tótem de Runa|r
    .turnin 1489 >> Entrega la misión Hamuul Tótem de Runa
.target Arch Druid Hamuul Runetotem
    .accept 1490 >> Acepta la misión Nara Ferocrín
step
    .goto Thunder Bluff,75.65,31.62
.target Nara Wildmane
>>Habla con |cRXP_FRIENDLY_Nara Ferocrín|r
    .turnin 1490 >> Entrega la misión Nara Ferocrín
step
    .goto Thunder Bluff,23.00,21.0
>>Habla con la |cRXP_FRIENDLY_Boticaria Zamah|r
    .turnin 1064 >> Entrega la misión La ayuda de los Renegados
.target Apothecary Zamah
    .accept 1065 >> Acepta la misión Viaje a Molino Tarren
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >> Aprende tus hechizos de clase si es necesario
	>>Cambia tu especialización a Escarcha AoE si no lo has hecho
step
    .goto Thunder Bluff,46.8,50.0
    .fly The Crossroads >>Vuela a El Cruce
step
    .goto The Barrens,51.60,30.90
	>>Sube las escaleras
.target Darsok Swiftdagger
>>Habla con |cRXP_FRIENDLY_Darsok Movedaga|r
    .turnin 876 >> Entrega la misión Serena Sangrepluma
step
    .goto The Barrens,51.50,30.34
    .fly Orgrimmar >> Vuela a Orgrimmar
]])
