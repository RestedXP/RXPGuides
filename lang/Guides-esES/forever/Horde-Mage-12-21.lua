if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde Mage
#name 12-17 Los Baldíos AoE
#version 1
#group RestedXP Horda Mago AoE

#defaultfor none Horde Mage
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
    .goto 1413/1,-2666.68,-481.94--??
.target Tonga Runetotem
>>Habla con |cRXP_FRIENDLY_Tonga Tótem de Runa|r
    .accept 870 >>Acepta la misión Las Charcas del Olvido
step
    .goto 1413/1,-2666.68,-481.94
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce
.target Sergra Darkthorn
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
step << Troll Mage
    .goto 1413/1,-2697.08,-400.86
.target Zargh
>>Habla con |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acepta la misión Entrega de carne a Orgrimmar
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Habla con |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acepta la misión Raptores ladrones
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >> Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Habla con |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acepta la misión Interrupción de los ataques
    .accept 5041 >>Acepta la misión Suministros para El Cruce
step
    .goto 1413/1,-2595.75,-441.40
    .fp The Crossroads >> Consigue la ruta de vuelo de El Cruce
step << Troll Mage
    >>NO vayas a Orgrimmar
    .goto 1413/1,-2595.75,-434.64
>>Habla con |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entrega la misión Entrega de carne a Orgrimmar
.target Devrak
    .accept 6384 >>Acepta la misión Un viaje a Orgrimmar
step
    .goto 1413/1,-2595.75,-421.13
.target Apothecary Helbrim
>>Habla con el |cRXP_FRIENDLY_Boticario Helbrim|r
    .accept 848 >>Acepta la misión Esporas de hongos
    .accept 1492 >>Acepta la misión Maestro de muelles Vertipeluca
step
    #sticky
    #completewith next
    >>Revisa esta ubicación en busca de El barril vacío de Chen. Despójalo e inicia la misión, de lo contrario lo obtendrás más tarde
    .goto 1413/1,-3021.35,-231.96
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
step
    .goto 1413/1,-3011.22,-184.66
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
    .goto 1413/1,-2484.28,126.12,20 >>Sube corriendo la montaña por aquí
step << !Undead
    #label BeakCave
    .goto 1413/1,-2200.55,315.3,20 >>Ve a la cueva rodeada de orcos Filo Ardiente
step << !Undead
    >>Haz clic derecho en el Altar
    .goto 1413/1,-2241.08,322.06
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Mata a los Raptores que veas. Despójalos para obtener algunas Cabezas de raptor - obtendrás más después
    .complete 869,1 --Raptor Head (12)
step
    >>Mata Zancudos de llanura. Despójalos para obtener Picos
    .goto 1413/1,-2524.82,-556.26
    .complete 844,1 --Plainstrider Beak (7)
step
    >>En lo alto de la torre
    .goto 1413/1,-2595.75,-475.18
>>Habla con |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entrega la misión Interrupción de los ataques
.target Thork
    .accept 872 >>Acepta la misión La perturbación termina
.target Darsok Swiftdagger
>>Habla con |cRXP_FRIENDLY_Darsok Movedaga|r
    .accept 867 >>Acepta la misión Arpías saqueadoras
step
    .goto 1413/1,-2666.68,-481.94
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
    .goto 1413/1,-3315.22,-218.44
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto 1413/1,-3305.08,-231.96,40,0
    .goto 1413/1,-3294.95,-211.69,40,0
    .goto 1413/1,-3305.08,-130.61,40,0
    .goto 1413/1,-3396.28,-63.05,40,0
    >>Despoja las cajas marrones que se encuentran en la zona
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto 1413/1,-3122.68,-96.83
    >>Termina de matar a los Crines de Acero
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Mata a las Zhebras que veas. Despójalas para obtener sus Pezuñas
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto 1413/1,-3690.15,254.49
.target Ak'Zeloth
>>Habla con |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entrega la misión La Semilla del Demonio
step
    >>Mata a las Zhebras que veas. Despójalas para obtener sus Pezuñas. Asegúrate de tener 4 antes de entrar en Trinquete
    .goto 1413/1,-3257.46,277.46,150,0 << Undead
    .goto 1413/1,-3852.28,-806.24
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Planta superior del edificio
    .goto 1413/1,-3730.68,-840.02
.target Gazlowe
>>Habla con |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Acepta la misión Los filibusteros de los Mares del Sur
step
    .goto 1413/1,-3771.22,-894.07
    .fp Ratchet >> Consigue la ruta de vuelo de Trinquete
step
    .goto 1413/1,-3761.08,-900.83
.target Sputtervalve
>>Habla con |cRXP_FRIENDLY_Petardol|r
    .accept 894 >>Acepta la misión El churumbele
step
    >>Haz clic en el Cartel de Se busca. También puedes usar el banco aquí si quieres
    .goto 1413/1,-3720.55,-921.09
    .accept 895 >>Acepta la misión SE BUSCA: Barón Longavera
step
    .goto 1413/1,-3700.28,-934.61
.target Mebok Mizzyrix
>>Habla con |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 865 >>Acepta la misión Cuernos de raptor
step
    .goto 1413/1,-3690.15,-981.90
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
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    >>Mata al Barón Longavera. Despójalo para obtener su Cabeza
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto 1413/1,-3730.68,-840.02
>>Habla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Entrega la misión Los filibusteros de los Mares del Sur
.target Gazlowe
    .accept 890 >>Acepta la misión El envío perdido
    .turnin 895 >>Entrega la misión SE BUSCA: Barón Longavera
step
    .goto 1413/1,-3791.48,-981.90
>>Habla con el |cRXP_FRIENDLY_Maestro de muelles Vertipeluca|r
    .turnin 1492 >>Entrega la misión Maestro de muelles Vertipeluca
    .turnin 890 >>Entrega la misión El envío perdido
.target Wharfmaster Dizzywig
    .accept 892 >>Acepta la misión El envío perdido
    .accept 896 >>Acepta la misión La fortuna de un minero
step
    .goto 1413/1,-3730.68,-840.02
>>Habla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Entrega la misión El envío perdido
.target Gazlowe
    .accept 888 >>Acepta la misión Botín robado
step
    .goto 1413/1,-3769.19,-898.12
    .fly Crossroads >> Vuela a El Cruce
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Habla con |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Entrega la misión Suministros para El Cruce
    .turnin 872 >>Entrega la misión La perturbación termina
step
    .goto 1413/1,-2666.68,-481.94
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
    .goto 1413/1,-1972.55,-306.95
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
    .goto 1413/1,-1943.16,89.64
    >>Sumérgete bajo el agua hacia la |cRXP_PICK_Fisura burbujeante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>Mata a |cRXP_ENEMY_Barak Aterrakodos|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Ten cuidado ya que los golpes de |cRXP_ENEMY_Barak Aterrakodos|r causan MUCHO daño y está protegido por un |cRXP_ENEMY_Retador Kolkar|r. Pueden atraparte con una red y dispararte desde la distancia|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entrega la misión Los jefes Kolkar
    .accept 851 >>Acepta la misión Verog el Derviche
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
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
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
	>>No te centres en conseguirlos todos ahora
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>Mata Merodeadores. Despójalos para obtener sus Garras y Colmillos
    .goto 1413/1,-1572.28,-42.78
    .complete 903,1 --Prowler Claws (7)
step
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Mata Arpías. Despójalas para obtener sus Garras
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto 1413/1,-1815.48,788.24
    >> Si todavía no tienes la Maza con pinchos pesada, considera comprarla a Vrang Sangrevaje << Druid/Warrior
    .vendor >> Ve a venderle a este tipo si es necesario
step
    #sticky
    #completewith next
    >>Mata a los Zancudos de llanura. Despójalos para obtener sus Riñones
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Mata Raptores. Despójalos para obtener sus cabezas
    .complete 869,1 --Raptor Head (12)
step
    >>Haz clic en la Consola de control
    .goto 1413/1,-2686.95,828.77
    .turnin 894 >>Entrega la misión El churumbele
    .accept 900 >>Acepta la misión El churumbele
step
    >>Haz clic en la Válvula
    .goto 1413/1,-2686.95,842.29
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Haz clic en la Válvula. Los enemigos aparecerán cuando hagas clic en cualquiera de ellas
    .goto 1413/1,-2676.82,842.29
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto 1413/1,-2676.82,828.77
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Haz clic en la Consola de control
    .goto 1413/1,-2686.95,828.77
    .turnin 900 >>Entrega la misión El churumbele
    .accept 901 >>Acepta la misión El churumbele
step
    >>Mata a Manitas el Risitas en el edificio. Despoja a Manitas el Risitas para obtener la Llave de Consola
    .goto 1413/1,-2727.48,909.85
    .complete 901,1 --Console Key (1)
step
    .goto 1413/1,-2686.95,828.77
    .turnin 901 >>Entrega la misión El churumbele
    .accept 902 >>Acepta la misión El churumbele
step
    >>Acepta la misión La llave de contacto del Machacador
    .goto 1413/1,-3102.42,1105.78
.target Wizzlecrank's Shredder
>>Habla con el |cRXP_FRIENDLY_Machacador de Rabiaire|r
    .accept 858 >>Acepta la misión La llave de contacto
step
    >>Sube al nivel 16 aquí matando enemigos, es importante, porque las próximas 3 misiones son bastante difíciles.
	.xp 16 >> Mata enemigos hasta el nivel 16
step
    >>Mata al Supervisor Palarrastre (Patrulla por toda la torre). Despójalo para obtener la Llave de ignición
	.goto 1413/1,-3082.15,1031.46
    .complete 858,1 --Ignition Key (1)
step
    >>Esto iniciará una escolta
    .goto 1413/1,-3102.42,1105.78
>>Habla con el |cRXP_FRIENDLY_Machacador de Rabiaire|r
    .turnin 858 >>Entrega la misión La llave de contacto
.target Wizzlecrank's Shredder
    .accept 863 >>Acepta la misión La fuga
step
    #label Slugs
    >>2 enemigos aparecerán en algún momento. Mátalos y luego espera al evento Roleplay del final
    .goto 1413/1,-2980.82,1085.51
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Mata enemigos en la zona. Despójalos hasta que caiga Esmeralda ojo de gato
    .goto 1413/1,-3609.08,1321.98
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto 1454/1,-3841.9,1647.15,40 >>Corre a la entrada oeste de Orgrimmar
step
    .goto 1454/1,-4224.67,1472.41
    .trainer >> Aprende tus hechizos de clase
step << Troll Mage
    .goto 1454/1,-4440.81,1632.18
>>Habla con la |cRXP_FRIENDLY_Tabernera Gryshka|r
    .turnin 6384 >>Entrega la misión Un viaje a Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >>Acepta la misión Doras, maestro de jinetes del viento
step
    >>Corre hasta el Maestro de Vuelo. NO vueles a ningún lado
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    .fp Orgrimmar >> Consigue la ruta de vuelo de Orgrimmar << Undead
>>Habla con |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >>Entrega la misión Doras, maestro de jinetes del viento << Troll Mage
.target Doras
    .accept 6386 >>Acepta la misión Regresar a El Cruce << Troll Mage
step
    >>Corre al Fuerte Grommash
    .goto 1454/1,-4229.02,1917.48
.target Zor Lonetree
>>Habla con |cRXP_FRIENDLY_Zor Árbol Solitario|r
    .accept 1061 >>Acepta la misión Los espíritus del Espolón
step
    #completewith next
    .hs >>Usa tu Piedra de hogar para ir a El Cruce
step << Troll Mage
    .goto 1413/1,-2707.22,-407.62
.target Zargh
>>Habla con |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Entrega la misión Regreso a El Cruce.
step
    .goto 1413/1,-2636.28,-434.64
>>Habla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entrega la misión Raptores ladrones
.target Gazrog
    .accept 3281 >>Acepta la misión La plata robada
step
    .goto 1413/1,-2676.82,-481.94
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 903 >>Entrega la misión Merodeadores en Los Baldíos
.target Sergra Darkthorn
    .accept 881 >>Acepta la misión Echeyakee
step
    >>Usa el Cuerno de Echeyakee en tu inventario para invocar a Echeyakee. Mata a Echeyakee y despójalo para obtener su Pellejo
    .goto 1413/1,-3001.08,443.67
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto 1413/1,-2666.68,-481.94
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 881 >>Entrega la misión Echeyakee
.target Sergra Darkthorn
    .accept 905 >>Acepta la misión Los segadores furiosos
step
    .goto 1413/1,-2666.68,-481.94
>>Habla con |cRXP_FRIENDLY_Tonga Tótem de Runa|r
    .turnin 870 >> Entrega la misión Las Charcas del Olvido
.target Tonga Runetotem
    .accept 877 >> Acepta la misión El Oasis Estancado
step
    .goto 1413/1,-2646.42,-522.480
.target Mankrik
>>Habla con |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >> Acepta la misión Consumido por el odio
    .accept 4921 >> Acepta la misión Perdida en la batalla
step
    >>En lo alto de la torre
    .goto 1413/1,-2605.88,-475.18
>>Habla con |cRXP_FRIENDLY_Darsok Movedaga|r
    .turnin 867 >>Entrega la misión Arpías saqueadoras
.target Darsok Swiftdagger
    .accept 875 >>Acepta la misión Las tenientes arpías
step
    .goto 1413/1,-2595.75,-427.890
.target Apothecary Helbrim
>>Habla con el |cRXP_FRIENDLY_Boticario Helbrim|r
    .turnin 848 >> Entrega la misión Esporas de hongos
step
    .goto 1413/1,-2595.75,-434.64
    .fly Ratchet >>Vuela a Trinquete
step
    .goto 1413/1,-3761.08,-900.83
>>Habla con |cRXP_FRIENDLY_Petardol|r
    .turnin 902 >>Entrega la misión El churumbele
    .turnin 863 >> Entrega la misión La fuga
.target Sputtervalve
    .accept 1483 >> Acepta la misión Ziz Fizziks
step
    .goto 1413/1,-3791.48,-981.900
.target Wharfmaster Dizzywig
>>Habla con el |cRXP_FRIENDLY_Maestro de muelles Vertipeluca|r
    .turnin 896 >> Entrega la misión La fortuna de un minero
step
    .goto 1413/1,-3700.28,-934.610
.target Mebok Mizzyrix
>>Habla con |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .accept 1069 >> Acepta la misión Huevos de araña musgondo
step
    >>Despoja la caja
    .goto 1413/1,-3821.88,-1711.58
    .complete 888,2 --Telescopic Lens (1)
step
    >>Despoja la caja
    .goto 1413/1,-3720.55,-1738.60
step
    #sticky
    #completewith Nest
    >>Mata a cualquier Raptor que veas. Despójalos para obtener sus Cuernos y Plumas. Ten cuidado ya que tiene vapulear (2 ataques extras)
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Despoja el cofre para obtener la plata robada
    >>Guarda cualquier Pluma de Solescama que obtengas para después
    .goto 1413/1,-3193.62,-1927.77,90,0
    .goto 1413/1,-3254.42,-2029.12
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Recoge los |cRXP_LOOT_Champiñones cargados|r alrededor de El Oasis Estancado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Haz clic en la Fisura burbujeante bajo el agua
    .goto 1413/1,-3011.22,-1272.42
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Mata Centauros. Despójalos para obtener sus brazales
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >> Mata a los Centauros del lago hasta que aparezca Verog (verás un Grito en el chat cuando aparezca)
    .goto 1413/1,-2742.68,-1209.59
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto 1413/1,-3023.38,-1234.58,25,0
	.goto 1413/1,-3000.07,-1208.23,25,0
	.goto 1413/1,-2959.54,-1196.75,25,0
	.goto 1413/1,-2953.46,-1241.34,25,0
	.goto 1413/1,-2977.78,-1304.17,25,0
	.goto 1413/1,-3029.46,-1324.44,25,0
	.goto 1413/1,-3066.95,-1311.61,25,0
	.goto 1413/1,-3059.86,-1264.31,25,0
	.goto 1413/1,-3023.38,-1234.58,25,0
    >>Recoge los |cRXP_LOOT_Champiñones cargados|r alrededor de El Oasis Estancado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Haz clic en el huevo. Necesitas las Plumas de Solescama de los raptores
    .goto 1413/1,-2707.22,-1508.89
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Haz clic en el huevo. Necesitas las Plumas de Solescama de los raptores
    .goto 1413/1,-2697.08,-1535.91
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Haz clic en el huevo. Necesitas las Plumas de Solescama de los raptores
    .goto 1413/1,-2646.42,-1529.16
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    >>Termina de matar a los Raptores. Despójalos para obtener sus Cuernos
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Habla con la Esposa de Mankrik
    .goto 1413/1,-2372.82,-1792.65
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto 1413/1,-1997.88,-2373.69
    .home >>Establece tu Piedra de hogar en el Campamento Taurajo
step
    .goto 1413/1,-1886.42,-2387.20
.target Mangletooth
>>Habla con |cRXP_FRIENDLY_Quebrantadientes|r
    .accept 878 >>Acepta la misión Tribus en guerra
step
    .goto 1413/1,-1886.42,-2387.20
    .fp Camp Taurajo >> Consigue la ruta de vuelo del Campamento Taurajo
    .fly Crossroads >>Vuela a El Cruce
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Habla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Entrega la misión La plata robada
step
    .goto 1413/1,-2666.68,-481.94
>>Habla con |cRXP_FRIENDLY_Sergra Espinoscura|r
    .turnin 905 >>Entrega la misión Los segadores furiosos
.target Sergra Darkthorn
    .accept 3261 >>Acepta la misión Jorn Vidente del Cielo
step
    .goto 1413/1,-2666.68,-481.94--??
>>Habla con |cRXP_FRIENDLY_Tonga Tótem de Runa|r
    .turnin 877 >>Entrega la misión El Oasis Estancado
.target Tonga Runetotem
    .accept 880 >>Acepta la misión Seres alterados
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Habla con |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Entrega la misión Perdida en la batalla
step
    #sticky
	#completewith next
    >>Mata a los Zancudos de llanura. Despójalos para obtener sus Riñones
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-1976.6,-308.30
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .turnin 851 >>Entrega la misión Verog el Derviche
.target Regthar Deathgate
    .accept 852 >>Acepta la misión Hezrul Marcasangre
step
    .goto 1413/1,-1976.6,-308.30
.target Regthar Deathgate
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .turnin 855 >> Entrega la misión Los brazales centauro
    .isQuestComplete 855
step
    .goto 1413/1,-1976.6,-308.30
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
    .goto 1413/1,-2025.24,-1144.050
    >> Hezrul patrulla alrededor del lago grande de las Cuevas de los Lamentos
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .turnin 852 >>Entrega la misión Hezrul Marcasangre
    .turnin 855 >> Entrega la misión Los brazales centauro
step
    .goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .accept 4021 >>Acepta la misión ¡Contraataca!
step
    >> Esta misión puede ser muy difícil de hacer en solitario, si no tienes grupo, busca a alguien o kitea cerca de la casa del PNJ que te entrega la misión.
    >> Omite esto si es demasiado difícil
    .goto 1413/1,-1869.19,-288.71
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto 1413/1,-1976.6,-308.98
.target Regthar Deathgate
>>Habla con |cRXP_FRIENDLY_Regthar Portamorta|r
    .turnin 4021 >>Entrega la misión ¡Contraataca!
step
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67
    >>Mata a las Destripadoras Alabruja. Despójalas para obtener sus Anillos de teniente arpía
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto 1413/1,-1572.28,-42.78
    >>Mata Merodeador de la sabana en el área. Despójalos para obtener sus Colmillos
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto 1413/1,-954.15,-272.49
>>Habla con |cRXP_FRIENDLY_Seereth Petrajada|r
    .turnin 1061 >> Entrega la misión Los espíritus del Espolón
.target Seereth Stonebreak
    .accept 1062 >> Acepta la misión Los invasores goblin
.target Makaba Flathoof
>>Habla con |cRXP_FRIENDLY_Makaba Pezuña Plana|r
    .accept 6548 >> Acepta la misión Venga mi aldea
]])

RXPGuides.RegisterGuide([[
#forever
#disabledungeons
<< Horde Mage
#name 17-21 Espolón/Baldíos AoE
#version 1
#group RestedXP Horda Mago AoE

#defaultfor none Horde Mage
#next 21-30 Argénteos/Laderas de Trabalomas AoE

step
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96,50,0
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96,50,0
    >>Mata a los Tótem Siniestro del área
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto 1413/1,-943.1,-265.13
>>Habla con |cRXP_FRIENDLY_Makaba Pezuña Plana|r
    .turnin 6548 >> Entrega la misión Venga mi aldea
.target Makaba Flathoof
    .accept 6629 >> Acepta la misión Mata a Grundig Nube Negra
step
    >>Entra al pueblo a través del camino occidental. Asegúrate de matar a los 6 toscos antes de comenzar la misión en el interior. Mata a Grundig frente a la tienda principal
    .goto 1442/1,-255.52,93.5,60,0
    .goto 1442/1,-367.83,109.78
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Inicia la Escolta de Kaya
    .goto 1442/1,-343.42,122.80
.target Kaya Flathoof
>>Habla con |cRXP_FRIENDLY_Kaya Pezuña Plana|r
    .accept 6523 >> Acepta la misión Protege a Kaya
step
     >>Escolta a Kaya y mantente cerca de ella. 3 Tótem Siniestro aparecerán en la hoguera. Come/bebe antes de que llegue al campamento
    .goto 1442/1,-455.73,-59.55
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto 1442/1,-240.87,-180.03
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
    .goto 1442/1,437.92,435.4,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto 1442/1,365.2,878.29
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
    .goto 1442/1,179.10,1168.06,40,0
    .goto 1442/1,232.82,1239.70,40,0
    .goto 1442/1,-16.23,1441.59,40,0
    .goto 1442/1,-255.52,1291.80,40,0
    .goto 1442/1,-382.48,1135.50,40,0
    .goto 1442/1,179.10,1168.06,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Termina de matar a los Madereros
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto 1442/1,365.2,878.29
>>Habla con |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1093 >> Entrega la misión Súper Segadora 6000
.target Ziz Fizziks
    .accept 1094 >> Acepta la misión Más instrucciones
step
    .hs >> Usa tu Piedra de hogar para ir al Campamento Taurajo
step
    .goto 1413/1,-1926.95,-2380.44
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
	.goto 1413/1,-2443.75,-1975.07,0
    .goto 1413/1,-2038.42,-1711.58,0
    .goto 1413/1,-1967.48,-1934.53,0
    .goto 1413/1,-1937.08,-1887.24,0
	>>Busca y mata a Lakota'mani (Kodo gris) alrededor del área. Despójalo para obtener su Pezuña. Si no lo encuentras, omite esta misión.
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acepta la misión Lakota'Mani
step
    >>Mata a MUCHOS Jabaespines. Despójalos para obtener sus Colmillos. Guarda las Esquirla de sangre que consigas
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
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
	.goto 1413/1,-3001.08,-1265.66
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Mata a una Zhebra en la zona. Despójala para obtener un Cadáver
	.goto 1413/1,-3558.42,-563.01
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Usa el Cadáver reciente de zhebra en el árbol muerto para invocar a Ishamuhale. Mátalo y despójalo para obtener su Colmillo
	.goto 1413/1,-3446.95,-441.40
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Mata a los Zancudos de llanura. Despójalos para obtener sus Riñones
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto 1413/1,-3730.68,-840.02
    >>Vuelve a Trinquete
.target Gazlowe
>>Habla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Entrega la misión Botín robado
step
    .goto 1413/1,-3761.08,-900.83
>>Habla con |cRXP_FRIENDLY_Petardol|r
    .turnin 1094 >>Entrega la misión Más instrucciones
.target Sputtervalve
    .accept 1095 >>Acepta la misión Más instrucciones
step
    .goto 1413/1,-3700.28,-927.85
.target Mebok Mizzyrix
>>Habla con |cRXP_FRIENDLY_Mebok Mizzyrix|r
    .turnin 865 >>Entrega la misión Cuernos de raptor
    .turnin 1069 >>Entrega la misión Huevos de araña musgondo
step
    .goto 1413/1,-3690.15,-981.90
.target Brewmaster Drohn
>>Habla con el |cRXP_FRIENDLY_Maestro cervecero Drohn|r
    .turnin 821 >>Entrega la misión El barril vacío de Chen
step
    .goto 1413/1,-3771.22,-894.07
    .fly Crossroads >>Vuela a El Cruce
step
    .goto 1413/1,-2666.68,-481.94--??
>>Habla con |cRXP_FRIENDLY_Tonga Tótem de Runa|r
    .turnin 880 >>Entrega la misión Seres alterados
.target Tonga Runetotem
    .accept 1489 >>Acepta la misión Hamuul Tótem de Runa
    .accept 3301 >>Acepta la misión Mura Tótem de Runa
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Habla con |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Entrega la misión Consumido por el odio
step
    >>En lo alto de la torre
    .goto 1413/1,-2605.88,-475.180
>>Habla con |cRXP_FRIENDLY_Darsok Movedaga|r
    .turnin 875 >> Entrega la misión Las tenientes arpías
.target Darsok Swiftdagger
    .accept 876 >> Acepta la misión Serena Sangrepluma
step
    >>Esto inicia una misión con tiempo limitado
    .goto 1413/1,-2585.62,-427.89
>>Habla con el |cRXP_FRIENDLY_Boticario Helbrim|r
    .turnin 848 >>Entrega la misión Esporas de hongos
.target Apothecary Helbrim
    .accept 853 >>Acepta la misión Boticaria Zamah
step
    .goto 1413/1,-2595.75,-434.64
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
step
    .goto 1413/1,-2747.75,-1907.51
    >>Mata Jabaespines para obtener una Esquirla de sangre
    .collect 5075 --Blood Shard (1)
step
    .goto 1413/1,-1896.55,-2387.20
>>Habla con |cRXP_FRIENDLY_Quebrantadientes|r
    .turnin 878 >>Entrega la misión Tribus en guerra
.target Mangletooth
    .accept 5052 >>Acepta la misión Esquirlas de sangre de Agamaggan
    .turnin 5052 >>Entrega la misión Esquirlas de sangre de Agamaggan
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto 1413/1,-1916.82,-2380.44
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .accept 1130 >>Acepta la misión Melor manda saludos
step
    .goto 1413/1,-1916.82,-2380.44
    .isOnQuest 883
.target Jorn Skyseer
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 883 >>Entrega la misión Lakota'mani
step
    .goto 1413/1,-1916.82,-2380.44
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .accept 1130 >>Acepta la misión Melor manda saludos
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto 1413/1,-1856.02,-2583.13,0
    .goto 1413/1,-2362.68,-2616.91,0
    .goto 1413/1,-2403.22,-2441.25,0
    >>Busca a Owatanka (Lagarto Trueno Azul) en esta zona. Si lo encuentras, despójalo para obtener su Punta de cola e inicia la misión. Si no puedes encontrarlo, omite esta misión
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Acepta la misión Owatanka
step
    .goto 1413/1,-1683.75,-2461.52,30,0
    .goto 1413/1,-2149.88,-2691.23,30,0
    .goto 1413/1,-2443.75,-2515.57,30,0
    >>Mata Truenagartso. Despójalos para obtener su sangre
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto 1413/1,-1926.95,-2380.44
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
.target Jorn Skyseer
    .accept 913 >>Acepta la misión El chillido del halcón trueno
step
    .goto 1413/1,-1926.95,-2380.44
.target Jorn Skyseer
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 884 >>Entrega la misión Owatanka
    .isOnQuest 884
step
    .goto 1413/1,-1926.95,-2380.44
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
.target Jorn Skyseer
    .accept 913 >>Acepta la misión El chillido del halcón trueno
step
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    >>Mata a un Halcón Trueno. Despójalo para obtener sus Alas
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto 1413/1,-1916.82,-2380.44
.target Jorn Skyseer
>>Habla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 913 >>Entrega la misión El chillido del halcón trueno
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto 1413/1,-1890.47,-2391.93
    >>Entrega tus Esquirla de sangre para obtener el buff de El espíritu del viento de Quebrantadientes. Si accidentalmente vendiste alguna esquirla, omite este paso
.target Mangletooth
>>Habla con |cRXP_FRIENDLY_Quebrantadientes|r
    .turnin 889 >> Entrega la misión El espíritu del viento
step
    .goto 1456/1,182.67,-1315.51,60 >>Corre hacia el ascensor y úsalo para entrar en Cima del Trueno
step
    .goto 1456/1,38.48,-1300.28
    .home >>Establece tu Piedra de hogar en Cima del Trueno
step
    .goto 1456/1,-125.64,-1413.06
>>Habla con |cRXP_FRIENDLY_Melor Pezuña Pétrea|r
    .turnin 1130 >>Entrega la misión Melor manda saludos
.target Melor Stonehoof
    .accept 1131 >>Acepta la misión Metaleador
step
 	>>Entra en las Pozas de las Visiones
	.goto 1456/1,202.5,-1058.75,30,0
	.goto 1456/1,276.6,-996.120
.target Apothecary Zamah
>>Habla con la |cRXP_FRIENDLY_Boticaria Zamah|r
    .turnin 853 >> Entrega la misión Boticaria Zamah
step
    .goto 1456/1,254.06,-995.78
    .trainer >> Aprende tus hechizos de clase
	>>No cambies a talentos de daño en área (AoE) todavía (si vas en Fuego)
step
    .goto 1456/1,220.24,-1042.75
.target Clarice Foster
>>Habla con |cRXP_FRIENDLY_Clarice Foster|r
    .accept 264 >>Acepta la misión Hasta que la muerte nos separe
step
	.goto 1456/1,26.07,-1196.75
    .fp Thunder Bluff >> Consigue la ruta de vuelo de Cima del Trueno
    .fly Crossroads >>Vuela a El Cruce
step
    >>Mata a Serena Sangrepluma. Despójala para obtener su Cabeza
	.goto 1413/1,-1349.35,788.24
    .complete 876,1 --Serena's Head (1)
step
    .goto 1413/1,-954.15,-272.49
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
    .goto 1442/1,-235.98,-180.03
.target Xen'Zilla
>>Habla con |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entrega la misión Chupasangres
step
    .goto 1442/1,365.2,878.29
.target Ziz Fizziks
>>Habla con |cRXP_FRIENDLY_Ziz Fizziks|r
    .turnin 1095 >>Entrega la misión Más instrucciones
step
    .goto 1442/1,926.25,1015.02
.target Tammra Windfield
>>Habla con |cRXP_FRIENDLY_Tammra Campo de Viento|r
    .turnin 6401 >>Entrega la misión Kaya está viva
step
    .goto 1442/1,1042.47,968.13
    .fp Sun Rock>> Consigue la ruta de vuelo del Refugio Roca del Sol
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
step
    .goto 1456/1,-213.96,-1065.010
>>Habla con |cRXP_FRIENDLY_Magatha Tótem siniestro|r
    .turnin 1063 >> Entrega la misión La bruja anciana
.target Magatha Grimtotem
    .accept 1064 >> Acepta la misión La ayuda de los Renegados
step
    .goto 1456/1,-303.93,-1048.73
>>Habla con el |cRXP_FRIENDLY_Archidruida Hamuul Tótem de Runa|r
    .turnin 1489 >> Entrega la misión Hamuul Tótem de Runa
.target Arch Druid Hamuul Runetotem
    .accept 1490 >> Acepta la misión Nara Ferocrín
step
    .goto 1456/1,-272.93,-1070.02
.target Nara Wildmane
>>Habla con |cRXP_FRIENDLY_Nara Ferocrín|r
    .turnin 1490 >> Entrega la misión Nara Ferocrín
step
    .goto 1456/1,276.6,-996.12
>>Habla con la |cRXP_FRIENDLY_Boticaria Zamah|r
    .turnin 1064 >> Entrega la misión La ayuda de los Renegados
.target Apothecary Zamah
    .accept 1065 >> Acepta la misión Viaje a Molino Tarren
step
    .goto 1456/1,254.06,-995.78
    .trainer >> Aprende tus hechizos de clase si es necesario
	>>Cambia tu especialización a Escarcha AoE si no lo has hecho
step
    .goto 1456/1,28.19,-1197.92
    .fly The Crossroads >>Vuela a El Cruce
step
    .goto 1413/1,-2605.88,-475.180
	>>Sube las escaleras
.target Darsok Swiftdagger
>>Habla con |cRXP_FRIENDLY_Darsok Movedaga|r
    .turnin 876 >> Entrega la misión Serena Sangrepluma
step
    .goto 1413/1,-2595.75,-437.35
    .fly Orgrimmar >> Vuela a Orgrimmar
]])
