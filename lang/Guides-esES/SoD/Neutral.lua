if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.GetSeason() ~= 2 then return end
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas << Warrior
#subgroup Pechera << Hunter
#name Runas de Carrodin
#displayname Consumido por la ira - 25 (Los Humedales) << Warrior
#displayname Matacobras - 25 (Los Humedales) << Hunter
#title Consumido por la ira << Warrior
#title Matacobras << Hunter

step
    #season 2
    #completewith next
    .zone Wetlands >>Viaja a Los Humedales
step
    #season 2
    #completewith next
    .goto Wetlands,51.914,62.692,30 >> Entra a la cueva de Roca Thelgen
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step
    #season 2
    .goto Wetlands,47.24,65.34
    >>Mata a |cRXP_ENEMY_Carrodin|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ira acuciante|r] << Warrior
    >>Mata a |cRXP_ENEMY_Carrodin|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Matacobras|r] << Hunter
    .collect 210573,1 << Warrior --Rune of Consuming Rage (1)
    .collect 211205,1 << Hunter --Rune of Aspect of Cobra Slayer (1)
    .mob Carrodin
    .train 425446,1 << Warrior
    .train 410115,1 << Hunter
step << Warrior
    #season 2
    .train 425446 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ira acuciante|r] |cRXP_WARN_para aprender|r |T136088:0|t[Consumido por la ira]
    .use 210573
    .itemcount 210573,1
step << Hunter
    #season 2
    .train 410115 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Matacobras|r] |cRXP_WARN_para aprender|r |T136040:0|t[Matacobras]
    .use 211205
    .itemcount 211205,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Envenenar - 25 (Laderas de Trabalomas)
#title Envenenar


    --Rune of Envenom

step
    #season 2
    #completewith next
	.goto Hillsbrad Foothills,76.72,46.22,60 >> Viaja al Castillo de Durnholde
step
    #season 2
    .goto Hillsbrad Foothills,80.2,39.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kris Legace|r
    >>|cRXP_BUY_Compra|r |T133469:0|t[Información valiosa] |cRXP_BUY_a esta vendedora|r
    .collect 210330,1 --Hot Tip (1)
    .target Kris Legace
    .train 400102,1
step
    #season 2
    .use 210330 >>Abre la |T133469:0|t[Información valiosa]
    .collect 210323,1 --Safe Combination (1)
    .collect 210329,1 --Hillsbrad Treasure Map (1)
    .train 400102,1
step
    #completewith next
    .zone Western Plaguelands >>Viaja a Tierras de la Peste del Oeste
step
    #season 2
    .goto Western Plaguelands,59.4,84.5
    >>Abre la |cRXP_PICK_Caja fuerte oxidada|r en el agua para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Veneno|r]
    .collect 210322,1 --Rune of Venom (1)
    .train 400102,1
step
    #season 2
    .train 400102 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Veneno|r]
    .use 210322
    .itemcount 210322,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Degollador - 25 (Bosque del Ocaso)
#title Degollador

step
    #season 2
    .goto Duskwood,81.24,71.86
    >>Abre la |cRXP_PICK_Caja de ofrendas|r en el Cementerio del Jardín Sereno para obtener un |T133343:0|t[|cRXP_LOOT_Anillo de plata con inscripción|r]
    .collect 210251,1 --Engraved Silver Ring (1)
    .train 424988,1
step
    #season 2
    .goto Duskwood,48.5,79.9
    >>Usa |T133644:0|t[Robar] en los |cRXP_ENEMY_Rondanoches Defias|r para un obtener un |T133345:0|t[|cRXP_LOOT_Anillo de oro con inscripción|r]
    .collect 210250,1 --Engraved Gold Ring (1)
    .mob Defias Night Runner
    .train 424988,1
step
    #season 2
    #completewith next
    .goto Duskwood,19.9,44.6,60,0 >>Viaja a la Estatua del Cerro del Cuervo
step
    #season 2
    .goto Duskwood,19.9,44.6
    .use 210250 >> Equipa ambos anillos y escribe /kneel (arrodillarse) en la Estatua para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Puyazo|r]
    .use 210251
    .collect 210252,1 --Rune of Shiving (1)
    .train 424988,1
step
    #season 2
    .train 424988 >>Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Puyazo|r] para aprender |T236280:0|t[Degollador]
    .use 210252
    .itemcount 210252,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Golpes feroces - 14 (Sierra Espolón)
#title Golpes feroces

step << Druid
    .goto Stonetalon Mountains,80.2,90.6,60,0
    .goto Stonetalon Mountains,83.2,87.0,60,0
    .goto Stonetalon Mountains,71.6,86.6,60,0
    .goto Stonetalon Mountains,76.6,91.0,60,0
    .goto Stonetalon Mountains,80.2,90.6
    >>Mata |cRXP_ENEMY_Tótems Siniestros|r. Despójalos para obtener el |T134233:0|t[|cRXP_FRIENDLY_Ídolo de las fieras|r]
    .collect 210534,1 -- Idol of the Wild (1)
    .mob Grimtotem Mercenary
    .mob Grimtotem Brute
    .mob Grimtotem Sorcerer
    .mob Grimtotem Ruffian
    .train 410021,1
step << Druid
    .equip 18,210534 >> |cRXP_WARN_Equipa el|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo de las fieras|r]
    .use 210534
    .itemcount 210534,1
    .train 410021,1
step << Druid
    >>|cRXP_WARN_Lanza|r |T136085:0|t[Recrecimiento] |cRXP_WARN_o|r |T136041:0|t[Toque de sanación] |cRXP_WARN_en 10 Bestias amistosas diferentes tales como mascotas de Cazador/Druidas en Forma de oso/Chamanes en Lobo fantasmal|r << Horde
    >>|cRXP_WARN_Lanza|r |T136085:0|t[Recrecimiento] |cRXP_WARN_o|r |T136041:0|t[Toque de sanación] |cRXP_WARN_en 10 diferentes Bestias amistosas como Mascotas de Cazador o Druidas en Oso|r << Alliance
    .train 410021 >> |cRXP_WARN_Usa el|r |T134233:0|t[|cRXP_FRIENDLY_Ídolo de las fieras|r] |cRXP_WARN_para aprender|r |T132143:0|t[Golpes feroces]
    .itemcount 210534,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Oleada de estrellas - 25 (Los Humedales)
#title Oleada de estrellas

step << Druid
    #completewith next
    +|cRXP_WARN_Es posible hacer esto al nivel 1 pero tendrás que morir muchas veces para ello|r
    .train 424718,1
step << Druid
    .goto Wetlands,36.941,15.157
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grugimdern|r
    >>|cRXP_WARN_Te dará un|r |T134052:0|t[|cRXP_LOOT_Champiñón de pantano|r]
    .collect 210499,1 -- Marshroom (1)
    .skipgossip
    .target Grugimdern
    .train 424718,1
step << Druid
    #completewith next
    .goto Wetlands,31.187,18.328
    .cast 426019 >>|cRXP_WARN_Usa el|r |T134052:0|t[|cRXP_LOOT_Champiñón de pantano|r] |cRXP_WARN_para comerlo|r
    .use 210499
    .train 424718,1
step << Druid
    .goto Wetlands,31.187,18.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vodyanoi|r
    .collect 210500,1 -- Rune of the Stars (1)
    .skipgossip
    .target Vodyanoi
    .train 424718,1
step << Druid
    .train 424718 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de las estrellas|r] |cRXP_WARN_para aprender|r |T135730:0|t[Oleada de estrellas]
    .use 210500
    .itemcount 210500,1
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera << Priest/Hunter/Druid/Warrior/Shaman
#subgroup Piernas << Warlock/Paladin
#subgroup Guantes << Rogue
#subgroup Brazales << Mage
#name Runas de Grizzby
#displayname Serendipia - 25 (Los Baldíos) << Priest
#displayname Lobo solitario - 25 (Los Baldíos) << Hunter
#displayname Supervivencia del más fuerte - 25 (Los Baldíos) << Druid
#displayname Belisario - 25 (Los Baldíos) << Warrior
#displayname Especialización en doble empuñadura - 25 (Los Baldíos) << Shaman
#displayname Pacto demoníaco - 25 (Los Baldíos) << Warlock
#displayname Sacrificio divino - 25 (Los Baldíos) << Paladin
#displayname Retroceder en el tiempo - 25 (Los Baldíos) << Mage
#displayname Daga de guardamano - 25 (Los Baldíos) << Rogue
#next Golpe de cruzado - 4 (Bosque de Elwynn) << Human Paladin
#next Golpe de cruzado - 4 (Dun Morogh) << Dwarf Paladin
#next Ráfaga de lava - 25 (Laderas de Trabalomas) << Shaman
#title Serendipia << Priest
#title Lobo solitario << Hunter
#title Supervivencia del más fuerte << Druid
#title Belisario << Warrior
#title Especialización en doble empuñadura << Shaman
#title Pacto demoníaco << Warlock
#title Sacrificio divino << Paladin
#title Retroceder en el tiempo << Mage
#title Daga de guardamano << Rogue

<< SoD

step
    #completewith next
    .zone The Barrens >>Viaja a Trinquete en Los Baldíos. |cRXP_WARN_Necesitarás 3 de oro para comprar la runa|r
step
    .goto The Barrens,61.8,39.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grizzby|r en la posada
    .use 210822 << Priest
    .use 210820 << Paladin
    .use 210654 << Mage
    .use 210818 << Hunter
    .use 210817 << Druid
    .use 210825 << Warrior
    .use 210824 << Warlock
    .use 210653 << Rogue
    .use 210823 << Shaman
    .train 415995 >>|cRXP_WARN_Compra y usa la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía armoniosa|r] |cRXP_WARN_para aprender|r |T237549:0|t[Serendipia] << Priest
    .train 410010 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sacrificio|r] |cRXP_WARN_para aprender|r |T134596:0|t[Grabar pantalones - Mano de sacrificio] << Paladin
    .train 401761 >>|cRXP_WARN_Compra y usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Retroceder el tiempo|r] |cRXP_WARN_para aprender|r |T237538:0|t[Retroceder en el tiempo] << Mage
    .train 410122 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lobo solitario|r] |cRXP_WARN_para aprender|r |T132266:0|t[Lobo solitario] << Hunter
    .train 416042 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Supervivencia|r] |cRXP_WARN_para aprender|r |T132126:0|t[Supervivencia del más fuerte] << Druid
    .train 425445 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Belisario|r] |cRXP_WARN_para aprender|r |T236319:0|t[Belisario] << Warrior
    .train 425476 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del pacto|r] |cRXP_WARN_para aprender|r |T237562:0|t[Pacto demoníaco] << Warlock
    .train 424990 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Guardamano|r] |cRXP_WARN_para aprender|r |T237531:0|t[Daga de guardamano] << Rogue
    .train 410096 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en doble empuñadura|r] |cRXP_WARN_para aprender|r |T132686:0|t[Grabar pechera - Especialización en doble empuñadura] << Shaman
    .target Grizzby
]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Pechera << Shaman/Rogue
#subgroup Piernas << Mage/Warlock/Hunter
#subgroup Guantes << Paladin/Warrior/Priest/Druid
#name Runas de Suministros faltantes
#displayname Abrasamiento mental - 25 (Reputación) << Priest
#displayname Propagación serpentina - 25 (Reputación) << Hunter
#displayname Testarazo - 25 (Reputación) << Druid
#displayname Furia enfilada - 25 (Reputación) << Warrior
#displayname Lluvia de sanación - 25 (Reputación) << Shaman
#displayname Aflicción eterna - 25 (Reputación) << Warlock
#displayname Señal de la Luz - 25 (Reputación) << Paladin
#displayname Oleada arcana - 25 (Reputación) << Mage
#displayname Heridas superficiales - 25 (Reputación) << Rogue
#next Sacrificio divino - 25 (Azeroth) << Paladin
#title Abrasamiento mental << Priest
#title Propagación serpentina << Hunter
#title Testarazo << Druid
#title Furia enfilada << Warrior
#title Lluvia de sanación << Shaman
#title Aflicción eterna << Warlock
#title Señal de la Luz << Paladin
#title Oleada arcana << Mage
#title Heridas superficiales << Rogue

<< SoD

--VV if (Reputation) name formatting removed, change in Paladin guide too

step
    >>Sal y encuentra |T132765:0|t[Suministros faltantes]. Luego regresa a una ciudad capital y entrégalos. Si quieres obtener la reputación más rápidamente, compra los objetos requeridos en la Casa de Subastas para mejorarlos.
    *|cRXP_WARN_Puedes "farmear" enemigos de menor nivel hasta alcanzar Amistoso. Después tienes que "farmear" enemigos de mayor nivel (>=17).|r Los cofres en el mundo abierto tienen un 90%+ de probabilidad de soltar uno de esos objetos.
    .reputation 2587,friendly << Horde
    .reputation 2586,friendly << Alliance
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Oficial de suministros|r en la ciudad más cercana
    .goto Orgrimmar,51.6,64.6,-1 << Horde
    .goto Thunder Bluff,39.8,53.4,-1 << Horde
    .goto Undercity,64.6,38.2,-1 << Horde
    .goto Stormwind City,55.0,61.6,-1 << Alliance
    .goto Ironforge,24.6,67.2,-1 << Alliance
    .goto Darnassus,60.0,56.4,-1 << Alliance
    .use 211386 << Mage
    .use 211387 << Paladin
    .use 211392 << Warlock
    .use 211391 << Shaman
    .use 211385 << Hunter
    .use 211393 << Warrior
    .use 206002 << Druid
    .use 211390 << Rogue
    .use 205950 << Priest
    .train 415996 >>|cRXP_WARN_Compra y usa la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía tenebrosa|r] |cRXP_WARN_para aprender|r |T237565:0|t[Abrasamiento mental] << Priest
    .train 409999 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Luz de conocimiento|r] |cRXP_WARN_para aprender|r |T236247:0|t[Señal de la Luz] << Paladin
    .train 425171 >>|cRXP_WARN_Compra y usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizos: Oleada Arcana|r] |cRXP_WARN_para aprender|r |T135734:0|t[Oleada arcana] << Mage
    .train 425760 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Propagación serpentina|r] |cRXP_WARN_para aprender|r |T132209:0|t[Propagación serpentina] << Hunter
    .train 416046 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Testarazo|r] |cRXP_WARN_para aprender|r |T133732:0|t[Testarazo] << Druid
    .train 416003 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Furia enfilada|r] |cRXP_WARN_para aprender|r |T134919:0|t[Furia enfilada] << Warrior
    .train 416008 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Aflicción eterna|r] |cRXP_WARN_para aprender|r |T236296:0|t[Aflicción eterna] << Warlock
    .train 400082 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Heridas superficiales|r] |cRXP_WARN_para aprender|r |T132284:0|t[Heridas superficiales] << Rogue
    .train 416057 >>|cRXP_WARN_Compra y usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lluvia de sanación|r] |cRXP_WARN_para aprender|r |T136107:0|t[Lluvia de sanación] << Shaman
    .target Elaine Compton << Alliance
    .target Tamelyn Aldridge << Alliance
    .target Macry Baker << Alliance
    .target Jornah << Horde
    .target Dokimi << Horde
    .target Gishah << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Crecimiento salvaje - 25 (Varias zonas)
#title Crecimiento salvaje

step << Druid
    #completewith next
    .zone Ashenvale >> Viaja a Vallefresno
step << Druid
    .goto Ashenvale,86.963,43.159
    >>Haz clic en la |cRXP_PICK_Estatua de búho|r para comenzar el evento
    >>|cRXP_WARN_Necesitarás derrotar 3 oleadas de 2 enemigos a la vez de niveles entre 23 -25|r
    >>|cRXP_WARN_Asegúrate de que el |cRXP_FRIENDLY_Fuego fatuo invocado|r no muera. No es posible curarlo, sin embargo se curará completamente entre oleadas|r
    >>Después de derrotar todas las oleadas, despoja el |cRXP_PICK_Don del fuego fatuo|r del suelo
    .collect 210044,1 -- Symbol of the First Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .goto Duskwood,46.91,58.76,50,0
    .goto Duskwood,45.13,58.26,25,0
    .goto Duskwood,49.520,33.851
    .subzone 856 >> Viaja a la Arboleda del Crepúsculo en Bosque del Ocaso
    .train 410028,1
step << Druid
    .goto Duskwood,49.520,33.851
    .aura 424310 >> Haz clic en la |cRXP_PICK_Estatua de búho|r para obtener el "buff" |T132150:0|t[Ojos del búho]
    .train 410028,1
step << Druid
    .goto Duskwood,45.13,58.26
    #completewith next
    +Sal de la Arboleda del Crepúsculo
    .subzoneskip 856,1
    .train 410028,1
step << Druid
    .goto Duskwood,65.2,34.8,65,0
    .goto Duskwood,60.6,25.8,65,0
    .goto Duskwood,66.0,23.6,65,0
    .goto Duskwood,68.0,31.6,65,0
    .goto Duskwood,65.2,34.8
    >>Mata a |cRXP_ENEMY_Agon|r. Despójalo para obtener el |cRXP_LOOT_Símbolo del segundo búho|r
    >>|cRXP_ENEMY_Agon|r |cRXP_WARN_patrulla un poco por los alrededores|r
    >>|cRXP_WARN_Debes tener el "buff"|r |T132150:0|t[Ojos del búho] |cRXP_WARN_para ver a|r |cRXP_ENEMY_Agon|r
    .collect 210043,2 -- Symbol of the Second Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Hillsbrad Foothills >> Viaja a Laderas de Trabalomas
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,36.914,76.142
    .goto Hillsbrad Foothills,54.424,82.016,0
    +Haz clic en la |cRXP_PICK_Estatua de búho gemelo|r para obtener el "buff" |T237178:0|t[Aura de búho gemelo]
    >>|cRXP_WARN_Tienes 1 min 40 seg para llegar a la otra isla pequeña y hacer clic en la otra|r |cRXP_PICK_Estatua de búho gemelo|r
    >>|cRXP_WARN_Asegúrate de usar|r |T132112:0|t[Forma acuática]
    >>|cRXP_WARN_La otra isla está marcada en tu mapa|r
    .aura 424181
    .aura 424182
    .train 410028,1
step << Druid
    .goto Hillsbrad Foothills,54.424,82.016
    >>Nada a la otra isla. Haz clic en la |cRXP_PICK_Estatua de búho gemelo|r en 1 min 40 seg
    >>|cRXP_WARN_Asegúrate de usar|r |T132112:0|t[Forma acuática]
    >>|cRXP_WARN_Si fallas y pierdes el "buff", haz clic en esta |cRXP_PICK_Estatua de búho gemelo|r y regresa a la isla de la que vienes|r
    .collect 210026,3 -- Symbol of the Third Owl (1)
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >> Teletranspórtate a Claro de la Luna
    .train 410028,1
step << Druid
    #completewith next
    .zone Moonglade >> Teletranspórtate a Claro de la Luna
    .train 410028,1
step << Druid
    .goto Moonglade,52.53,40.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .accept 78229 >> Acepta la misión La prueba de los búhos
    .turnin 78229 >> Entrega la misión La prueba de los búhos
    .target Loganaar
    .train 410028,1
step << Druid
    .train 410028 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Crecimiento salvaje|r] |cRXP_WARN_para aprender|r |T236153:0|t[Crecimiento salvaje]
    .use 210137
    .itemcount 210137,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Mage SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera << Warrior
#subgroup Piernas << Mage
#name Runas del Exánime de Bosque del Ocaso
#displayname Flagelación - 25 (Bosque del Ocaso) << Warrior
#displayname Regeneración en masa - 25 (Bosque del Ocaso) << Mage
#title Flagelación << Warrior
#title Regeneración en masa << Mage

step << Warrior/Mage
    #completewith next
    .goto Duskwood,23.630,34.888,15 >> Entra en la cripta del noreste
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,26.115,30.863
    >>Abre el |cRXP_PICK_Cofre sucio|r. Despójalo para obtener la |T252996:0|t[|cRXP_LOOT_Filacteria decrépita|r]
    .collect 210568,1 -- Decrepit Phylactery (1)
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,15.602,38.621,15 >> Sal de esta cripta y dirígete a la cripta occidental
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    #completewith next
    .goto Duskwood,18.140,37.940
    .cast 426182 >> Haz clic en los |cRXP_PICK_Huesos dormientes|r en el pequeño trono|r
    >>|cRXP_WARN_Esto invocará a un|r Exánime despierto|cRXP_ENEMY_ élite de nivel 25|r
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior/Mage
    .goto Duskwood,18.140,37.940
    >>Mata al |cRXP_ENEMY_Exánime despierto|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Flagelación|r] << Warrior
    >>Mata al |cRXP_ENEMY_Exánime despierto|r. Despójalo para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Regeneración en masa|r] << Mage
    >>|cRXP_WARN_Si alguien más está allí matando al |cRXP_ENEMY_Exánime despierto|r, también puedes ayudarlo y aún podrás despojarlo|r
    .collect 210569,1 << Warrior -- Rune of Flagellation (1)
    .collect 211514,1 << Mage -- Spell Notes: Mass Regeneration (1)
    .mob Awakened Lich
    .train 403480,1 << Warrior
    .train 415939,1 << Mage
step << Warrior
    .train 416050 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flagelación|r] |cRXP_WARN_para aprender|r |T133495:0|t[Flagelación]
    .use 210569
    .itemcount 210569,1
    .train 403480,1
step << Mage
    .train 416050 >> |cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Regeneración en masa|r] |cRXP_WARN_para aprender|r |T132870:0|t[Regeneración en masa]
    .use 211514
    .itemcount 211514,1
    .train 415939,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Arremetida enfurecida - 25 (Varias Zonas)
#title Arremetida enfurecida

step << Warrior
    #completewith next
    .goto Wetlands,49.40,16.98
    .subzone 205 >> Viaja a Dun Modr en Los Humedales
    .train 425444,1
step << Warrior
    .goto Wetlands,46.92,17.53,15,0
    .goto Wetlands,46.553,18.369
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Emprendedor Hierro Negro|r dentro del edificio
    >>|cRXP_WARN_Es posible que tengas que correr hacia tu cadáver un par de veces para llegar hasta él|r
    >>|cRXP_BUY_Compra una|r |T135130:0|t[Lanza de matadragones] |cRXP_BUY_cuesta 75 de plata|r
    .collect 209874,1,78134,1 -- Dragonslayer's Lance (1)
    .target Emprendedor Hierro Negro
    .train 425444,1
step << Warrior
    #completewith next
    .goto Redridge Mountains,69.928,55.814
    .subzone 2099 >> Viaja al Fuerte de Petravista en Montañas Crestagrana
    .train 425444,1
step << Warrior
    .goto Redridge Mountains,69.928,55.814
    >>Haz clic en el |cRXP_PICK_Escudo montado en la pared|r. Despójalo para obtener el |cRXP_LOOT_Escudo de matadragones|r
    >>|cRXP_WARN_Esto está dentro del castillo principal arriba, detrás de |cRXP_ENEMY_Gath'Ilzogg|r que es un élite de nivel 26|r
    >>|cRXP_WARN_Necesitarás matar a |cRXP_ENEMY_Gath'Ilzogg|r o hacer que alguien lo ataque para poder despojarlo. Asegúrate de tener un grupo antes de entrar|r
    .collect 209873,1,78133,1 -- Dragonslayer's Shield (1)
    .train 425444,1
step << Warrior
    #completewith next
    .subzone 209,2 >> Busca un grupo y entra en Castillo de Colmillo Oscuro
step << Warrior
    >>Abre el |cRXP_PICK_Yelmo desechado|r. Despójalo para obtener el |cRXP_LOOT_Yelmo de matadragones|r
    >>|cRXP_WARN_Esto se encuentra en un banco detrás del|r |cRXP_ENEMY_Comandante Vallefont|r
    .collect 209872,1,78132,1 -- Dragonslayer's Helm (1)
    .train 425444,1
step << Warrior
    #completewith next
    .zone Ashenvale >> Viaja a Vallefresno
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonso|r
    .accept 78132 >> Acepta la misión Yelmo de matadragones
    .accept 78134 >> Acepta la misión Lanza de matadragones
    .accept 78133 >> Acepta la misión Escudo de matadragones
    .turnin 78132 >> Entrega la misión Yelmo de matadragones
    .turnin 78134 >> Entrega la misión Lanza de matadragones
    .turnin 78133 >> Entrega la misión Escudo de matadragones
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,43.513,70.463
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonso|r
    .accept 78144 >> Acepta la misión Alonso, el matadragones
    .target Alonso
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.029,68.999
    >>Mata a la |cRXP_ENEMY_Cría de dragón Verde|r
    .complete 78144,1 -- Accompany Alonso to slay the dragon.
    .target Alonso
    .mob Green Dragon Whelp
    .train 425444,1
step << Warrior
    .goto Ashenvale,42.053,69.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alonso|r
    .turnin 78144 >> Entrega la misión Alonso, el matadragones
    .target Alonso
    .train 425444,1
step << Warrior
    .train 425444 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Arremetida enfurecida|r] |cRXP_WARN_para aprender|r |T132215:0|t[Arremetida enfurecida]
    .use 210015
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Fuerza del alma - 22 (Vallefresno)
#title Fuerza del alma

step << Priest
    .goto Ashenvale,32.0,43.0,65,0
    .goto Ashenvale,33.6,38.8,65,0
    .goto Ashenvale,37.6,34.0
    >>Mata |cRXP_ENEMY_Totémicos Piel de Cardo|r y |cRXP_ENEMY_Chamanes Piel de Cardo|r. Despójalos para obtener la |T135736:0|t[Perspicacia primigenia]
    .collect 211534,1 -- Primal Insight (1)
    .mob Thistlefur Totemic
    .mob Thistlefur Shaman
    .train 415997,1
step << Priest
    .goto Ashenvale,38.002,29.528,40,0
    .goto Ashenvale,37.938,27.958,30,0
    .goto Ashenvale,38.819,27.160,30,0
    .goto Ashenvale,38.804,26.558
    >>|cRXP_WARN_Sube por el árbol gigante junto a la entrada de la cueva. Sigue la flecha con cuidado|r
    .use 211534 >>|cRXP_WARN_Usa la|r |T135736:0|t[Perspicacia primigenia] |cRXP_WARN_cuando estés junto a los dos atrapasueños en el árbol para crear la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de los siete visitantes]|r
    .collect 211531,1 -- Prophecy of Seven Visitors (1)
    .train 415997,1
step << Priest
    >>Debes obtener dos "buffs" de |T135934:0|t|T136057:0|t[Meditaciones] << Alliance
    >>Debes obtener ahora dos "buffs" de |T237569:0|t|T136077:0|t[Meditación] << Horde
    >>Debes hacer /kneel (arrodillarte) en uno de los siguientes lugares: Abadía de Villanorte, Catedral de Ventormenta, Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz << Human/Dwarf
    >>Debes usar /kneel (arrodillarse) dentro de uno de los siguientes lugares: una poza de la luna, como la que hay en Ventormenta o en Darnassus << NightElf
    >>Debes usar /kneel (arrodillarse) en cualquier cementerio << Undead
    >>Debes usar /kneel (arrodillarse) en cualquier Altar Loa, como el que hay en el Poblado Sen'jin o en El Cruce en Los Baldíos << Troll
    >>Para recibir tu segundo "buff" de |T135934:0|t|T136057:0|t[Meditación] debes hacer /kneel frente a un Sacerdote que tenga una |T135934:0|t|T136057:0|t[Meditación] diferente al tuyo, y ellos deben hacer /pray mientras te seleccionan como objetivo << Alliance
    >>Para recibir tu segundo "buff" de |T237569:0|t|T136077:0|t[Meditación] debes hacer /kneel (arrodillarse) frente a un Sacerdote que tenga una |T135934:0|t|T136057:0|t[Meditación] diferente al tuyo, y ellos deben hacer /pray (rezar) mientras te seleccionan como objetivo << Horde
    .train 415997 >> |cRXP_WARN_Una vez que tengas ambos "buffs" de|r |T135934:0|t|T136057:0|t[Meditaciones] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de los siete visitantes]|r |cRXP_WARN_para aprender|r |T135911:0|t[Fuerza del alma] << Alliance
    .train 415997 >> |cRXP_WARN_Una vez que tengas ambos "buffs" de|r |T237569:0|t|T136077:0|t[Meditaciones] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de los siete visitantes]|r |cRXP_WARN_para aprender|r |T135911:0|t[Fuerza del alma] << Horde
    .use 211531
    .itemcount 211531,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Brazales
#name Palabra de poder: barrera - 22 (Montañas Crestagrana)
#title Palabra de poder: barrera

step << Priest
    #completewith next
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .train 425213,1
step << Priest
    .goto Redridge Mountains,67.2,53.6
    .goto Redridge Mountains,68.8,57.4
    >>Mata |cRXP_ENEMY_Taumaturgos umbríos Roca Negra|r. Despójalos para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudad cautivada|r]
    >>Los |cRXP_ENEMY_Taumaturgos umbríos Roca Negra|r |cRXP_WARN_son élites de nivel 22-23. Busca un grupo para esto|r
    .collect 211530,1 -- Prophecy of a City Enthralled (1)
    .mob Blackrock Shadowcaster
    .train 425213,1
step << Priest
    >>Debes obtener dos "buffs" de |T135934:0|t|T136057:0|t[Meditaciones] << Alliance
    >>Debes obtener ahora dos "buffs" de |T237569:0|t|T136077:0|t[Meditación] << Horde
    >>Debes hacer /kneel (arrodillarte) en uno de los siguientes lugares: Abadía de Villanorte, Catedral de Ventormenta, Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz << Human/Dwarf
    >>Debes usar /kneel (arrodillarse) dentro de uno de los siguientes lugares: una poza de la luna, como la que hay en Ventormenta o en Darnassus << NightElf
    >>Debes usar /kneel (arrodillarse) en cualquier cementerio << Undead
    >>Debes usar /kneel (arrodillarse) en cualquier Altar Loa, como el que hay en el Poblado Sen'jin o en El Cruce en Los Baldíos << Troll
    >>Para recibir tu segundo "buff" de |T135934:0|t|T136057:0|t[Meditación] debes hacer /kneel frente a un Sacerdote que tenga una |T135934:0|t|T136057:0|t[Meditación] diferente al tuyo, y ellos deben hacer /pray mientras te seleccionan como objetivo << Alliance
    >>Para recibir tu segundo "buff" de |T237569:0|t|T136077:0|t[Meditación] debes hacer /kneel (arrodillarse) frente a un Sacerdote que tenga una |T135934:0|t|T136057:0|t[Meditación] diferente al tuyo, y ellos deben hacer /pray (rezar) mientras te seleccionan como objetivo << Horde
    .train 425213 >> |cRXP_WARN_Una vez que tengas los dos "buffs" de|r |T135934:0|t|T136057:0|t[Meditaciones] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudad cautivada|r] |cRXP_WARN_para aprender|r |T253400:0|t[Palabra de poder: barrera] << Alliance
    .train 425213 >> |cRXP_WARN_Una vez que tengas los dos "buffs" de|r |T237569:0|t|T136077:0|t[Meditaciones] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de una ciudad cautivada|r] |cRXP_WARN_para aprender|r |T253400:0|t[Palabra de poder: barrera] << Horde
    .use 211530
    .itemcount 211530,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Guantes
#name Círculo de sanación - 25 (Bosque del Ocaso)
#title Círculo de sanación

step << Priest
    .goto Duskwood,50.4,70.8,60,0
    .goto Duskwood,50.2,76.4
    >>Mata |cRXP_ENEMY_Rondanoches Defias|r, |cRXP_ENEMY_Filonocturnos Defias|r y |cRXP_ENEMY_Encantadores Defias|r. Despójalos para obtener la |T135736:0|t[|cRXP_LOOT_Perspicacia oscura|r]
    .collect 211528,1 -- Dark Insight (1)
    .mob Defias Night Runner
    .mob Defias Night Blade
    .mob Defias Night Enchanter
    .train 402859,1
step << Priest
    .goto Duskwood,91.11,30.58
    .use 211528 >> |cRXP_WARN_Usa la|r |T135736:0|t[|cRXP_LOOT_Perspicacia oscura|r] |cRXP_WARN_en la Tumba Solitaria detrás de la torre para recibir la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de las mil luces|r]
    .collect 211490,1 -- Prophecy of a Thousand Lights (1)
    .train 402859,1
step << Priest
    >>Debes obtener dos "buffs" de |T135934:0|t|T136057:0|t[Meditaciones] << Alliance
    >>Debes obtener ahora dos "buffs" de |T237569:0|t|T136077:0|t[Meditación] << Horde
    >>Debes hacer /kneel (arrodillarte) en uno de los siguientes lugares: Abadía de Villanorte, Catedral de Ventormenta, Altares de la Luz en Yunquemar, Loch Modan o la Sala Mística en Forjaz << Human/Dwarf
    >>Debes usar /kneel (arrodillarse) dentro de uno de los siguientes lugares: una poza de la luna, como la que hay en Ventormenta o en Darnassus << NightElf
    >>Debes usar /kneel (arrodillarse) en cualquier cementerio << Undead
    >>Debes usar /kneel (arrodillarse) en cualquier Altar Loa, como el que hay en el Poblado Sen'jin o en El Cruce en Los Baldíos << Troll
    >>Para recibir tu segundo "buff" de |T135934:0|t|T136057:0|t[Meditación] debes hacer /kneel frente a un Sacerdote que tenga una |T135934:0|t|T136057:0|t[Meditación] diferente al tuyo, y ellos deben hacer /pray mientras te seleccionan como objetivo << Alliance
    >>Para recibir tu segundo "buff" de |T237569:0|t|T136077:0|t[Meditación] debes hacer /kneel (arrodillarse) frente a un Sacerdote que tenga una |T135934:0|t|T136057:0|t[Meditación] diferente al tuyo, y ellos deben hacer /pray (rezar) mientras te seleccionan como objetivo << Horde
    .train 402859 >> |cRXP_WARN_Una vez que tengas los dos "buffs" de|r |T135934:0|t|T136057:0|t[Meditaciones] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de las mil luces]|r |cRXP_WARN_para aprender|r |T135887:0|t[Círculo de sanación] << Alliance
    .train 402859 >> |cRXP_WARN_Una vez que tengas los dos "buffs" de|r |T237569:0|t|T136077:0|t[Meditaciones] |cRXP_WARN_usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía de las mil luces]|r |cRXP_WARN_para aprender|r |T135887:0|t[Círculo de sanación] << Horde
    .use 211490
    .itemcount 211490,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Pechera
#name Golpes de cobra - 25 (Laderas de Trabalomas)
#title Golpes de cobra


    --Rune of Cobra Strikes

step
    #season 2
    #completewith next
    .zone Hillsbrad Foothills >>Viaja a Laderas de Trabalomas (p.ej. desde Entrañas a través de Bosque de Argénteos) << Horde
    .zone Hillsbrad Foothills >>Viaja a Laderas de Trabalomas (p.ej. dirígete al norte desde Los Humedales) << Alliance
step
    #season 2
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Busca a |cRXP_FRIENDLY_Zixil|r. Patrulla entre Tarren Molino y Costasur. Cómprale el |T134041:0|t[Freshwater Mordedor Cebo]
    .collect 210410,1 --Freshwater Snapper Bait (1)
    .target Zixil
    .train 425759,1
step
    #season 2
    .goto Hillsbrad Foothills,61.05,33.36
    .use 210410 >>Usa el |T134041:0|t[Cebo de mordedor de agua fresca] en el bote en el centro del estanque
    >>Mata a |cRXP_ENEMY_Koartul|r (élite nivel 25) cuando aparezca. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpes de cobra|r]
    .collect 210596,1 --Rune of Cobra Strikes (1)
    .mob Koartul
    .train 425759,1
step
    #season 2
    .train 425759 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpes de cobra|r] |cRXP_WARN_para aprender|r |T236177:0|t[Golpes de cobra]
    .use 210596
    .itemcount 210596,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Piernas
#name Disparo mortal - 25 (Varias zonas)
#title Disparo mortal

step
    #completewith WyvernWrangling
    >>|cRXP_BUY_Compra una|r |T135144:0|t[Varita mágica superior] |cRXP_BUY_en la casa de subastas|r
    .collect 11288,1 --Greater Magic Wand (1)
    .train 410111,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Empieza a buscar un grupo para Cuevas de los Lamentos|r
step
    #season 2
    #completewith next
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.18
    .zone 279 >> Entra en Cuevas de los Lamentos
step
    #season 2
    >>Mata a |cRXP_ENEMY_Mutanus el Devorador|r. Despójalo para obtener |T132775:0|t[|cRXP_LOOT_Cristal hipnótico|r]
    .collect 209838,1 --Hypnotic Crystal (1)
    .mob Mutanus the Devourer
    .train 410111,1
step
    #season 2
    #completewith next
    .zone Ashenvale >>Viaja a Vallefresno
step
    #season 2
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    .goto Ashenvale,35.75,32.01
    >>Mata |cRXP_ENEMY_Chamanes Piel de Cardo|r. Despójalos para obtener |T237004:0|t[|cRXP_LOOT_Esencia de magia salvaje|r]
    .collect 209841,1 --Wild Magic Essence (1)
    .mob Thistlefur Shaman
    .train 410111,1
step
    #season 2
    .use 209841 >>Usa la |T237004:0|t[|cRXP_LOOT_Esencia de magia salvaje|r] para crear |T237489:0|t[|cRXP_LOOT_Varita de magia silvestre nudosa|r]
    .collect 209840,1 --Gnarled Wand of Wild Magic (1)
    .train 410111,1
step
    #season 2
    #completewith WyvernWrangling
    .zone Stonetalon Mountains >>Viaja a Sierra Espolón
step
    #season 2
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jixo Coheteloco|r en Sierra Espolón
    .accept 78114 >>Acepta la misión Cuidado con el dracoleón
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    #label WyvernWrangling
    .goto Stonetalon Mountains,60.71,62.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jixo Coheteloco|r
    .turnin 78114 >>Entrega la misión Cuidado con el dracoleón
    .accept 78121 >>Acepta la misión Festival de doma del dracoleón
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .goto Stonetalon Mountains,60.70,62.33
    >>Quédate con |cRXP_FRIENDLY_Jixo Coheteloco|r y mira cómo domestica un |cRXP_ENEMY_Dracoleón|r
    .turnin 78121 >>Entrega la misión Festival de doma del dracoleón
    .target Jixo Madrocket
    .train 410111,1
step
    #season 2
    .train 410111 >>|cRXP_WARN_Usar la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Matar|r] |cRXP_WARN_para aprender|r |T236174:0|t[Disparo mortal]
    .use 209852
    .itemcount 209852,1


]])

RXPGuides.RegisterGuide([[
#classic
#group RestedXP Guía de Runas y Libros
<< SoD
#subgroup Pechera << Shaman
#subgroup Cinturón << Warrior/Hunter/Mage/Paladin
#subgroup Botas << Warlock/Priest/Rogue/Druid
#name Runas del Jinete oscuro
#displayname Espíritu del redentor - 40 (Azeroth) << Priest
#displayname Especialista cuerpo a cuerpo - 40 (Azeroth) << Hunter
#displayname Rey de la selva - 40 (Azeroth) << Druid
#displayname Tiempo preciso - 40 (Azeroth) << Warrior
#displayname Maestría en dos manos - 40 (Azeroth) << Shaman
#displayname Conocimiento demoníaco - 40 (Azeroth) << Warlock
#displayname Infusión de Luz - 40 (Azeroth) << Paladin
#displayname Tromba de misiles - 40 (Azeroth) << Mage
#displayname Acecho - 40 (Azeroth) << Rogue
#title Espíritu del redentor << Priest
#title Especialista cuerpo a cuerpo << Hunter
#title Rey de la selva << Druid
#title Tiempo preciso << Warrior
#title Maestría en dos manos << Shaman
#title Conocimiento demoníaco << Warlock
#title Infusión de Luz << Paladin
#title Tromba de misiles << Mage
#title Acecho << Rogue

step
    #completewith Sigil
    +|cRXP_WARN_Antes de intentar adquirir esta runa, se recomienda encarecidamente que busques un grupo. Debes matar a un élite de nivel 41 un total de 7 veces|r
step
    #completewith next
    .zone Deadwind Pass >>Viaja al Paso de la Muerte
step
    #label Sigil
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente Dalaran|r para recibir el |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r]
    .skipgossip 218920,1
    .collect 216941,1
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .equip 13 >> |cRXP_WARN_Equipa el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r]
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    .aura 438288 >> |cRXP_WARN_Viaja a la ubicación de la flecha. A medida que te acerques recibirás el "buff"|r |T237534:0|t[Presencia oscura] |cRXP_WARN_|r
    >>|cRXP_WARN_¡TAMBIÉN DEBES ESTAR DESMONTADO PARA RECIBIR EL "BUFF"!|r
    >>|cRXP_WARN_Asegúrate de que tienes el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216945,<1
step
    #completewith next
    .goto Deadwind Pass,45.04,28.88
    .cast 438305 >> |cRXP_WARN_Usa el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_para revelar al|r |cRXP_ENEMY_Jinete oscuro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,45.04,28.88
    >>Mata al |cRXP_ENEMY_Jinete oscuro|r. Despójalo para obtener la |cRXP_LOOT_Reliquia de Dalaran curiosa|r
    .use 216941
    .collect 216945,1
    .mob Dark Rider
step
    #completewith next
    .zone Swamp of Sorrows >>Viaja al Pantano de las Penas
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    .aura 438288 >> |cRXP_WARN_Viaja a la ubicación de la flecha. A medida que te acerques recibirás el "buff"|r |T237534:0|t[Presencia oscura] |cRXP_WARN_|r
    >>|cRXP_WARN_¡TAMBIÉN DEBES ESTAR DESMONTADO PARA RECIBIR EL "BUFF"!|r
    >>|cRXP_WARN_Asegúrate de que tienes el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216948,<1
step
    #completewith next
    .goto Swamp of Sorrows,69,28
    .cast 438305 >> |cRXP_WARN_Usa el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_para revelar al|r |cRXP_ENEMY_Jinete oscuro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Swamp of Sorrows,69,28
    >>Mata al |cRXP_ENEMY_Jinete oscuro|r. Despójalo para obtener la |cRXP_LOOT_Reliquia de Dalaran vieja|r
    .use 216941
    .collect 216948,1
    .mob Dark Rider
step
    #completewith next
    .zone Duskwood >>Viaja a Bosque del Ocaso
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    .aura 438288 >> |cRXP_WARN_Viaja a la ubicación de la flecha. A medida que te acerques recibirás el "buff"|r |T237534:0|t[Presencia oscura] |cRXP_WARN_|r
    >>|cRXP_WARN_¡TAMBIÉN DEBES ESTAR DESMONTADO PARA RECIBIR EL "BUFF"!|r
    >>|cRXP_WARN_Asegúrate de que tienes el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216946,<1
step
    #completewith next
    .goto Duskwood,23,47
    .cast 438305 >> |cRXP_WARN_Usa el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_para revelar al|r |cRXP_ENEMY_Jinete oscuro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Duskwood,23,47
    >>Mata al |cRXP_ENEMY_Jinete oscuro|r. Despójalo para obtener la |cRXP_LOOT_Reliquia de Dalaran resplandeciente|r
    .use 216941
    .collect 216946,1
    .mob Dark Rider
step
    #completewith next
    .zone Badlands >>Viaja a Tierras Inhóspitas
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    .aura 438288 >> |cRXP_WARN_Viaja a la ubicación de la flecha. A medida que te acerques recibirás el "buff"|r |T237534:0|t[Presencia oscura] |cRXP_WARN_|r
    >>|cRXP_WARN_¡TAMBIÉN DEBES ESTAR DESMONTADO PARA RECIBIR EL "BUFF"!|r
    >>|cRXP_WARN_Asegúrate de que tienes el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216951,<1
step
    #completewith next
    .goto Badlands,58,54
    .cast 438305 >> |cRXP_WARN_Usa el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_para revelar al|r |cRXP_ENEMY_Jinete oscuro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Badlands,58,54
    >>Mata al |cRXP_ENEMY_Jinete oscuro|r. Despójalo para obtener la |cRXP_LOOT_Reliquia de Dalaran resbaladiza|r
    .use 216941
    .collect 216951,1
    .mob Dark Rider
step
    #completewith next
    .zone Arathi Highlands >>Viaja a las Tierras Altas de Arathi
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    .aura 438288 >> |cRXP_WARN_Viaja a la ubicación de la flecha. A medida que te acerques recibirás el "buff"|r |T237534:0|t[Presencia oscura] |cRXP_WARN_|r
    >>|cRXP_WARN_¡TAMBIÉN DEBES ESTAR DESMONTADO PARA RECIBIR EL "BUFF"!|r
    >>|cRXP_WARN_Asegúrate de que tienes el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216947,<1
step
    #completewith next
    .goto Arathi Highlands,60,40
    .cast 438305 >> |cRXP_WARN_Usa el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_para revelar al|r |cRXP_ENEMY_Jinete oscuro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Arathi Highlands,60,40
    >>Mata al |cRXP_ENEMY_Jinete oscuro|r. Despójalo para obtener la |cRXP_LOOT_Reliquia de Dalaran zumbante|r
    .use 216941
    .collect 216947,1
    .mob Dark Rider
step
    #completewith next
    .zone The Barrens >>Viaja a Los Baldíos
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    .aura 438288 >> |cRXP_WARN_Viaja a la ubicación de la flecha. A medida que te acerques recibirás el "buff"|r |T237534:0|t[Presencia oscura] |cRXP_WARN_|r
    >>|cRXP_WARN_¡TAMBIÉN DEBES ESTAR DESMONTADO PARA RECIBIR EL "BUFF"!|r
    >>|cRXP_WARN_Asegúrate de que tienes el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216949,<1
step
    #completewith next
    .goto The Barrens,52,36
    .cast 438305 >> |cRXP_WARN_Usa el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_para revelar al|r |cRXP_ENEMY_Jinete oscuro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto The Barrens,52,36
    >>Mata al |cRXP_ENEMY_Jinete oscuro|r. Despójalo para obtener la |cRXP_LOOT_Reliquia de Dalaran pesada|r
    .use 216941
    .collect 216949,1
    .mob Dark Rider
step
    #completewith next
    .zone Desolace >>Viaja a Desolace
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    .aura 438288 >> |cRXP_WARN_Viaja a la ubicación de la flecha. A medida que te acerques recibirás el "buff"|r |T237534:0|t[Presencia oscura] |cRXP_WARN_|r
    >>|cRXP_WARN_¡TAMBIÉN DEBES ESTAR DESMONTADO PARA RECIBIR EL "BUFF"!|r
    >>|cRXP_WARN_Asegúrate de que tienes el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_equipado|r
    .use 216941
    .itemcount 216950,<1
step
    #completewith next
    .goto Desolace,65,25
    .cast 438305 >> |cRXP_WARN_Usa el|r |T338784:0|t[|cRXP_FRIENDLY_Sigilo de Ariden|r] |cRXP_WARN_para revelar al|r |cRXP_ENEMY_Jinete oscuro|r
    .use 216941
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Desolace,65,25
    >>Mata al |cRXP_ENEMY_Jinete oscuro|r. Despójalo para obtener la |cRXP_LOOT_Reliquia de Dalaran espeluznante|r
    .use 216941
    .collect 216950,1
    .mob Dark Rider
step
    #completewith next
    .zone Deadwind Pass >>Viaja al Paso de la Muerte
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    .goto Deadwind Pass,52.095,34.119
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Agente de Dalaran|r
    .turnin 80147 >>Entrega la misión Reliquia de Dalaran curiosa
    .turnin 80149 >>Entrega la misión Reliquia de Dalaran curiosa
    .turnin 80098 >>Entrega la misión Reliquia de Dalaran curiosa
    .turnin 80152 >>Entrega la misión Reliquia de Dalaran curiosa
    .turnin 80148 >>Entrega la misión Reliquia de Dalaran curiosa
    .turnin 80150 >>Entrega la misión Reliquia de Dalaran curiosa
    .turnin 80151 >>Entrega la misión Reliquia de Dalaran curiosa
    .turnin 80120 >>Entrega la misión Una asistencia a Dalaran
    .target Dalaran Agent
step
    .train 425312,1 << Priest
    .train 426180,1 << Paladin
    .train 401763,1 << Mage
    .train 416086,1 << Hunter
    .train 424765,1 << Druid
    .train 416005,1 << Warrior
    .train 416014,1 << Warlock
    .train 415926,1 << Rogue
    .train 436368,1 << Shaman
    >>Abre la |T133666:0|t[|cRXP_FRIENDLY_Bolsa de suministros|r] para recibir la |T135791:0|t[|cRXP_FRIENDLY_Epifanía luminosa|r] << Priest
    >>Abre la |T133666:0|t[|cRXP_FRIENDLY_Bolsa de suministros|r] para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Infusiones|r] << Paladin
    >>Abre la |T133666:0|t[|cRXP_FRIENDLY_Bolsa de suministros|r] para recibir las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Tromba de misiles|r] << Mage
    >>Abre la |T133666:0|t[|cRXP_FRIENDLY_Bolsa de suministros|r] para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Combate cuerpo a cuerpo|r] << Hunter
    >>Abre la |T133666:0|t[|cRXP_FRIENDLY_Bolsa de suministros|r] para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa del Rey de la selva|r] << Druid
    >>Abre la |T133666:0|t[|cRXP_FRIENDLY_Bolsa de suministros|r] para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión brutal|r] << Warrior
    >>Abre la |T133666:0|t[|cRXP_FRIENDLY_Bolsa de suministros|r] para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Conocimiento prohibido|r] << Warlock
    >>Abre la |T133666:0|t[|cRXP_FRIENDLY_Bolsa de suministros|r] para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Atacante|r] << Rogue
    >>Abre la |T133666:0|t[|cRXP_FRIENDLY_Bolsa de suministros|r] para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría en dos manos|r] << Shaman
    .use 217014
    .collect 213144,1 << Priest
    .collect 213130,1 << Paladin
    .collect 213112,1 << Mage
    .collect 213124,1 << Hunter
    .collect 213118,1 << Druid
    .collect 213104,1 << Warrior
    .collect 213100,1 << Warlock
    .collect 213137,1 << Rogue
    .collect 216606,1 << Shaman
step
    .itemcount 213144,1 << Priest
    .itemcount 213130,1 << Paladin
    .itemcount 213112,1 << Mage
    .itemcount 213124,1 << Hunter
    .itemcount 213118,1 << Druid
    .itemcount 213104,1 << Warrior
    .itemcount 213100,1 << Warlock
    .itemcount 213137,1 << Rogue
    .itemcount 216606,1 << Shaman
    .use 213144 << Priest
    .use 213130 << Paladin
    .use 213112 << Mage
    .use 213124 << Hunter
    .use 213118 << Druid
    .use 213104 << Warrior
    .use 213100 << Warlock
    .use 213137 << Rogue
    .use 216606 << Shaman
    .train 425312 >>|cRXP_WARN_Usa la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía luminosa|r] |cRXP_WARN_para aprender|r |T132864:0|t[Espíritu del redentor] << Priest
    .train 426180 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Infusiones|r] |cRXP_WARN_para aprender|r |T236254:0|t[Infusión de Luz] << Paladin
    .train 401763 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Tromba de misiles|r] |cRXP_WARN_para aprender|r |T236221:0|t[Tromba de misiles] << Mage
    .train 416086 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Combate cuerpo a cuerpo|r] |cRXP_WARN_para aprender|r |T132394:0|t[Especialista cuerpo a cuerpo] << Hunter
    .train 424765 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Rey de la selva|r] |cRXP_WARN_para aprender|r |T236159:0|t[Rey de la selva] << Druid
    .train 416005 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisión brutal|r] |cRXP_WARN_para aprender|r |T134377:0|t[Tiempo preciso] << Warrior
    .train 416014 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Conocimiento prohibido|r] |cRXP_WARN_para aprender|r |T136172:0|t[Conocimiento demoníaco] << Warlock
    .train 415926 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Atacante|r] |cRXP_WARN_para aprender|r |T236286:0|t[Acecho] << Rogue
    .train 436368 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maestría en dos manos|r] |cRXP_WARN_para aprender|r |T135145:0|t[Maestría en dos manos] << Shaman
]])

RXPGuides.RegisterGuide([[

#classic
<< SoD
#group RestedXP Guía de Runas y Libros
#subgroup Cinturón << Druid/Priest/Rogue/Warlock
#subgroup Botas << Mage/Shaman/Hunter/Paladin/Warrior
#name Cadena de Runas de Desolace
#displayname Púa mental - 35 (Azeroth) << Priest
#displayname Lanzador de trampas - 35 (Azeroth) << Hunter
#displayname Eclipse - 35 (Azeroth) << Druid
#displayname Regeneración iracunda - 35 (Azeroth) << Warrior
#displayname Despertar ancestral - 35 (Azeroth) << Shaman
#displayname Sombras y llamas - 35 (Azeroth) << Warlock
#displayname El arte de la guerra - 35 (Azeroth) << Paladin
#displayname Congelación cerebral - 35 (Azeroth) << Mage
#displayname Cuchillo envenenado - 35 (Azeroth) << Rogue
#title Púa mental << Priest
#title Lanzador de trampas << Hunter
#title Eclipse << Druid
#title Regeneración iracunda << Warrior
#title Despertar ancestral << Shaman
#title Sombras y llamas << Warlock
#title El arte de la guerra << Paladin
#title Congelación cerebral << Mage
#title Cuchillo envenenado << Rogue

step
    #completewith next
    .zone Desolace >>Viaja a Desolace
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Haz clic en la |cRXP_PICK_Hoguera apagada|r
    .goto Desolace,47.532,54.605
    .accept 79229 >>Acepta la misión Saqueo sangriento
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bibbly F'utzhebilla|r
    .goto Desolace,62.314,38.965
    .turnin 79229 >>Entrega la misión Saqueo sangriento
    .accept 79235 >>Acepta la misión Prófugos
    .target Bibbly F'utzbuckle
step
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina |cRXP_WARN_(Bahía del Botín)|r
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79235 >>Entrega la misión Prófugos
    .accept 79236 >>Acepta la misión Secretos de cereza
    .target Tokal
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nixxrax Vasolleno|r
    >>|cRXP_BUY_Compra un|r |T132790:0|t[Grog de cereza]
    .goto Stranglethorn Vale,27.039,77.168
    .collect 4600,1,79236,1
    .target Nixxrax Fillamug
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tokal|r
    .goto Stranglethorn Vale,26.988,77.284
    .turnin 79236 >>Entrega la misión Secretos de cereza
    .accept 79242 >>Acepta la misión Sin honor entre ladrones
    .target Tokal
step
    #completewith next
    .zone Wetlands >>Viaja a la frontera de Tierras Altas de Arathi/Los Humedales
step
    .goto Wetlands,58.320,6.927
    .cast 6477 >>Entra en el |cRXP_PICK_Bote de remos|r en el agua
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .subzoneskip 308
step << NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illari Plumaocaso|r para recibir la |cRXP_LOOT_Llave de Illari|r
    .complete 79242,1 --Found Illari Duskfeather
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,2
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    #completewith next
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illari Plumaocaso|r. Tendrás que luchar contra ella después
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip 215655,1,1,1
    .target Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>Mata a |cRXP_ENEMY_Illari Plumaocaso|r. Abre la |cRXP_PICK_Bolsa extraviada|r que deja caer al suelo. Despójala para obtener la |cRXP_LOOT_Llave de Illari|r
    .collect 212347,1,79242,1 --Illari's Key
    .skipgossip 215655,1,1,1
    .mob Illari Duskfeather
step << !NightElf
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    .goto Arathi Highlands,93.90,71.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illari Plumaocaso|r
    .complete 79242,1 --Found Illari Duskfeather
    .skipgossip
    .target Illari Duskfeather
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Haz clic en el |cRXP_PICK_Alijo de botín de Illari|r del suelo
    .goto Arathi Highlands,94.154,69.266
    .turnin 79242 >>Entrega la misión Sin honor entre ladrones
step
    .train 431663,1 << Priest
    .train 416031,1 << Paladin
    .train 401752,1 << Mage
    .train 410118,1 << Hunter
    .train 410029,1 << Druid
    .train 403467,1 << Warrior
    .train 426452,1 << Warlock
    .train 425102,1 << Rogue
    .train 425883,1 << Shaman
    >>Abre la |T133876:0|t[|cRXP_LOOT_Caja con incrustaciones de joyas|r] para obtener la |T135791:0|t[|cRXP_FRIENDLY_Epifanía psicosófica|r] << Priest
    >>Abre la |T133876:0|t[|cRXP_LOOT_Caja con incrustaciones de joyas|r] para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de la Guerra|r] << Paladin
    >>Abre la |T133876:0|t[|cRXP_LOOT_Caja con incrustaciones de joyas|r] para obtener las |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Congelación cerebral|r] << Mage
    >>Abre la |T133876:0|t[|cRXP_LOOT_Caja con incrustaciones de joyas|r] para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Trampero|r] << Hunter
    >>Abre la |T133876:0|t[|cRXP_LOOT_Caja con incrustaciones de joyas|r] para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Eclipse|r] << Druid
    >>Abre la |T133876:0|t[|cRXP_LOOT_Caja con incrustaciones de joyas|r] para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Ira curativa|r] << Warrior
    >>Abre la |T133876:0|t[|cRXP_LOOT_Caja con incrustaciones de joyas|r] para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Oscuridad ardiente|r] << Warlock
    >>Abre la |T133876:0|t[|cRXP_LOOT_Caja con incrustaciones de joyas|r] para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de la Hoja envenenada|r] << Rogue
    >>Abre la |T133876:0|t[|cRXP_LOOT_Caja con incrustaciones de joyas|r] para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Despertar ancestral|r] << Shaman
    .collect 212552,1 << Priest
    .collect 212551,1 << Paladin
    .collect 208853,1 << Mage
    .collect 212549,1 << Hunter
    .collect 212548,1 << Druid
    .collect 212562,1 << Warrior
    .collect 212561,1 << Warlock
    .collect 212559,1 << Rogue
    .collect 212560,1 << Shaman
    .use 212553 --Jewel-Encrusted Box (1)
step
    .train 431663 >>|cRXP_WARN_Usa la|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía psicosófica|r] |cRXP_WARN_para aprender|r |T136181:0|t[Púa mental] << Priest
    .train 416031 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de la Guerra|r] |cRXP_WARN_para aprender|r |T236246:0|t[El arte de la guerra] << Paladin
    .train 401752 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de hechizo: Congelación cerebral|r] |cRXP_WARN_para aprender|r |T236206:0|t[Congelación cerebral] << Mage
    .train 410118 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Trampero|r] |cRXP_WARN_para aprender|r |T133882:0|t[Lanzador de trampas] << Hunter
    .train 410029 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Eclipse|r] |cRXP_WARN_para aprender|r |T236151:0|t[Eclipse] << Druid
    .train 403467 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ira curativa|r] |cRXP_WARN_para aprender|r |T132345:0|t[Regeneración iracunda] << Warrior
    .train 426452 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Oscuridad ardiente|r] |cRXP_WARN_para aprender|r |T135823:0|t[Sombras y llamas] << Warlock
    .train 425102 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Hoja envenenada|r] |cRXP_WARN_para entrenar|r |T236270:0|t[Cuchillo envenenado] << Rogue
    .train 425883 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Despertar ancestral|r] |cRXP_WARN_para aprender|r |T237571:0|t[Despertar ancestral] << Shaman
    .use 212552 << Priest
    .use 212551 << Paladin
    .use 208853 << Mage
    .use 212549 << Hunter
    .use 212548 << Druid
    .use 212562 << Warrior
    .use 212561 << Warlock
    .use 212559 << Rogue
    .use 212560 << Shaman
    .itemcount 212552,1 << Priest
    .itemcount 212551,1 << Paladin
    .itemcount 208853,1 << Mage
    .itemcount 212549,1 << Hunter
    .itemcount 212548,1 << Druid
    .itemcount 212562,1 << Warrior
    .itemcount 212561,1 << Warlock
    .itemcount 212559,1 << Rogue
    .itemcount 212560,1 << Shaman
step
    .goto 1417,89.536,78.149
    .cast 6477 >>Entra en el |cRXP_PICK_Bote de remos|r en el agua para regresar a Arathi
    .subzoneskip 308,1
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Guía de Runas y Libros
#subgroup Libros de Hechizos
#name Runas de Libros de hechizos

#displayname Intelecto expandido (Ventormenta) << Alliance Mage
#displayname Intelecto expandido (Orgrimmar) << Horde Mage
#title Intelecto expandido << Mage
#displayname Aspecto de la víbora/Corazón del león (Ventormenta) << Alliance Hunter
#displayname Aspecto de la víbora/Corazón del león (Orgrimmar) << Horde Hunter
#title Aspecto de la víbora/Corazón del león << Hunter
#displayname Cosecha de almas/Portal de invocación/Armadura vil (Ventormenta) << Alliance Warlock
#displayname Cosecha de almas/Portal de invocación/Armadura vil (Orgrimmar) << Horde Warlock
#title Cosecha de almas/Portal de invocación/Armadura vil << Warlock
#displayname Redirigir/Veneno oculto/Veneno entumecedor/Veneno sebáceo/Veneno atrófico (Ventormenta) << Alliance Rogue
#displayname Redirigir/Veneno oculto/Veneno entumecedor/Veneno sebáceo/Veneno atrófico (Orgrimmar) << Horde Rogue
#title Redirigir/Veneno oculto/Veneno entumecedor/Veneno sebáceo/Veneno atrófico << Rogue
#displayname Maligno de las Sombras/Entereza aumentada (Ventormenta) << Alliance Priest
#displayname Maligno de las Sombras/Entereza aumentada (Orgrimmar) << Horde Priest
#title Maligno de las Sombras/Entereza aumentada << Priest
#displayname Restauración mejorada/Revivir/Salvajismo dominante (Ventormenta) << Alliance Druid
#displayname Restauración mejorada/Revivir/Salvajismo dominante (Orgrimmar) << Horde Druid
#title Restauración mejorada/Revivir/Salvajismo dominante << Druid
#displayname Grito de orden/Gancho (Ventormenta) << Alliance Warrior
#displayname Grito de orden/Gancho (Orgrimmar) << Horde Warrior
#title Grito de orden/Gancho << Warrior
#displayname Testamento del Exorcista/Bendiciones potenciadas (Ventormenta) << Paladin
#title Testamento del Exorcista/Bendiciones potenciadas << Paladin
#displayname Proyección totémica/Ira del chamán (Orgrimmar) << Shaman
#title Proyección totémica/Ira del chamán << Shaman

step
    #completewith BuyBook
    >>|cRXP_WARN_Los Libros de Habilidades ahora se pueden comprar con oro en Ventormenta en lugar de tener que ir a Monasterio Escarlata a buscarlos.|r << Alliance
    >>|cRXP_WARN_Los Libros de Habilidades ahora se pueden comprar con oro en Orgrimmar en lugar de tener que ir a Monasterio Escarlata a buscarlos.|r << Horde
    .zone Stormwind City >> Viaja a Ventormenta << Alliance
    .zone Orgrimmar >> Viaja a Orgrimmar << Horde
step << Alliance
    #optional
    #completewith next
    .goto Stormwind City,70.347,27.208,15,0
    .goto Stormwind City,72.005,21.542,20 >> Viaja al Castillo de Ventormenta
step
    #label BuyBook
    .goto Stormwind City,74.182,7.465 << Alliance
    .goto Orgrimmar,38.923,38.398 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Milton Gavilla|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zor Árbol Solitario|r << Horde
    >>|cRXP_WARN_Nota: |T133736:0|t|cRXP_LOOT_[Tomo de Intelecto expandido]|r requiere nivel 25 para usarse|r << Mage
    >>|cRXP_WARN_Nota: |T133733:0|t|cRXP_LOOT_[Grimorio de Cosecha de almas]|r y |T133733:0|t|cRXP_LOOT_[Grimorio de Portal de invocación]|r requieren nivel 25 para usarse|r << Warlock
    >>|cRXP_WARN_Nota: |T133733:0|t|cRXP_LOOT_[Grimorio de Armadura vil]|r requiere nivel 50 para usarse|r << Warlock
    >>|cRXP_WARN_Nota: |T133745:0|t|cRXP_LOOT_[Testamento del Exorcista]|r y |T133745:0|t|cRXP_LOOT_[Testamento de Martirio]|r requieren nivel 10 para usarse|r << Paladin
    >>|cRXP_WARN_Nota: |T133745:0|t|cRXP_LOOT_[Testamento de Bendiciones potenciadas]|r requiere nivel 25 para usarse|r << Paladin
    >>|cRXP_WARN_Nota: |T133739:0|t|cRXP_LOOT_[Tratado sobre el Corazón del león]|r requiere nivel 10 para usarse|r << Hunter
    >>|cRXP_WARN_Nota: |T133739:0|t|cRXP_LOOT_[Tratado sobre Aspecto de la víbora]|r requiere nivel 25 para usarse|r << Hunter
    >>|cRXP_WARN_Nota: |T133735:0|t|cRXP_LOOT_[Manual de Redirigir]|r requiere nivel 25 para usarse|r << Rogue
    >>|cRXP_WARN_Nota: |T133735:0|t|cRXP_LOOT_[Manual de Veneno oculto]|r requiere nivel 54 para usarse|r << Rogue
    >>|cRXP_WARN_Nota: |T133735:0|t|cRXP_LOOT_[Manual de Veneno entumecedor]|r, |cRXP_LOOT_[Manual de Veneno sebáceo]|r y |cRXP_LOOT_[Manual de Veneno atrófico]|r requieren nivel 60 para usarse|r << Rogue
    >>|cRXP_WARN_Nota: |T237162:0|t|cRXP_LOOT_[Pergamino de Maligno de las Sombras]|r y |T237162:0|t|cRXP_LOOT_[Pergamino de Entereza aumentada]|r requieren nivel 25 para usarse|r << Priest
    >>|cRXP_WARN_Nota: |T134914:0|t|cRXP_LOOT_[Panfleto de Salvajismo dominante]|r|cRXP_WARN_,|r |T134914:0|t|cRXP_LOOT_[Panfleto de Restauración mejorada]|r |cRXP_WARN_y |T134914:0|t|cRXP_LOOT_[Panfleto de Revivir]|r requieren nivel 25 para usarse|r << Druid
    >>|cRXP_WARN_Nota: |T133741:0|t|cRXP_LOOT_[Vademécum de Grito de orden]|r requiere nivel 25 para usarse|r << Warrior
    >>|cRXP_WARN_Nota: |T133741:0|t|cRXP_LOOT_[Vademécum de Gancho]|r requiere nivel 40 para usarse|r << Warrior
    >>|cRXP_WARN_Nota: |T133747:0|t|cRXP_LOOT_[Revelación de Ira del chamán]|r requiere nivel 10 para usarse|r << Shaman
    >>|cRXP_WARN_Nota: |T133747:0|t|cRXP_LOOT_[Revelación de Proyección totémica]|r requiere nivel 25 para usarse|r << Shaman
    .train 438040 >>|cRXP_WARN_Compra y usa el|r |T133735:0|t|cRXP_LOOT_[Manual de Redirigir]|r |cRXP_WARN_para aprender|r |T135425:0|t[Redirigir] << Rogue
    .train 458822 >>|cRXP_WARN_Compra y usa el|r |T133735:0|t|cRXP_LOOT_[Manual de Veneno oculto]|r |cRXP_WARN_para aprender|r |T135935:0|t[Veneno oculto I] << Rogue
    .train 438040 >>|cRXP_WARN_Compra y usa el|r |T133735:0|t|cRXP_LOOT_[Manual de Veneno entumecedor]|r |cRXP_WARN_para aprender|r |T132098:0|t[Veneno entumecedor] << Rogue
    .train 439500 >>|cRXP_WARN_Compra y usa el|r |T133735:0|t|cRXP_LOOT_[Manual de Veneno sebáceo]|r |cRXP_WARN_para aprender|r |T132108:0|t[Veneno sebáceo] << Rogue
    .train 438040 >>|cRXP_WARN_Compra y usa el|r |T133735:0|t|cRXP_LOOT_[Manual de Veneno atrófico]|r |cRXP_WARN_para aprender|r |T132100:0|t[Veneno atrófico] << Rogue
    .train 436949 >>|cRXP_WARN_Compra y usa el|r |T133736:0|t|cRXP_LOOT_[Tomo de Intelecto expandido]|r |cRXP_WARN_para aprender|r |T236513:0|t[Intelecto expandido] << Mage
    .train 436956 >>|cRXP_WARN_Compra y usa el|r |T134914:0|t|cRXP_LOOT_[Panfleto de Salvajismo dominante]|r |cRXP_WARN_para aprender|r |T132124:0|t[Salvajismo dominante] << Druid
    .train 417123 >>|cRXP_WARN_Compra y usa el|r |T134914:0|t|cRXP_LOOT_[Panfleto de Restauración mejorada]|r |cRXP_WARN_para aprender|r |T136073:0|t[Restauración mejorada] << Druid
    .train 437138 >>|cRXP_WARN_Compra y usa el|r |T134914:0|t|cRXP_LOOT_[Panfleto de Revivir]|r |cRXP_WARN_para aprender|r |T132132:0|t[Revivir] << Druid
    .train 409580 >>|cRXP_WARN_Compra y usa el|r |T133739:0|t|cRXP_LOOT_[Tratado sobre Corazón del león]|r |cRXP_WARN_para aprender|r |T132185:0|t[Corazón del león] << Hunter
    .train 415423 >>|cRXP_WARN_Compra y usa el|r |T133739:0|t|cRXP_LOOT_[Tratado sobre Aspecto de la víbora]|r |cRXP_WARN_para aprender|r |T132160:0|t[Aspecto de la víbora] << Hunter
    .train 415076 >>|cRXP_WARN_Compra y usa el|r |T133745:0|t|cRXP_LOOT_[Testamento del Exorcista]|r |cRXP_WARN_para aprender|r |T135956:0|t[Exorcista] << Paladin
    .train 407798 >>|cRXP_WARN_Compra y usa el|r |T133745:0|t|cRXP_LOOT_[Testamento de Martirio]|r |cRXP_WARN_para aprender|r |T135961:0|t[Sello de martirio] << Paladin
    .train 435984 >>|cRXP_WARN_Compra y usa el|r |T133745:0|t|cRXP_LOOT_[Testamento de Bendiciones potenciadas]|r |cRXP_WARN_para aprender|r |T236248:0|t[Bendiciones potenciadas] << Paladin
    .train 401977 >>|cRXP_WARN_Compra y usa el|r |T237162:0|t|cRXP_LOOT_[Pergamino de Maligno de las Sombras]|r |cRXP_WARN_para aprender|r |T136199:0|t[Maligno de las Sombras] << Priest
    .train 436951 >>|cRXP_WARN_Compra y usa el|r |T237162:0|t|cRXP_LOOT_[Pergamino de Entereza aumentada]|r |cRXP_WARN_para aprender|r |T237543:0|t[Entereza aumentada] << Priest
    .train 437032 >>|cRXP_WARN_Compra y usa el|r |T133733:0|t|cRXP_LOOT_[Grimorio de Cosecha de almas]|r |cRXP_WARN_para aprender|r |T132851:0|t[Cosecha de almas] << Warlock
    .train 437169 >>|cRXP_WARN_Compra y usa el|r |T133733:0|t|cRXP_LOOT_[Grimorio de Portal de invocación]|r |cRXP_WARN_para aprender|r |T134423:0|t[Portal de invocación] << Warlock
    .train 403619 >>|cRXP_WARN_Compra y usa el|r |T133733:0|t|cRXP_LOOT_[Grimorio de Armadura vil]|r |cRXP_WARN_para aprender|r |T136156:0|t[Armadura vil] << Warlock
    .train 403215 >>|cRXP_WARN_Compra y usa el|r |T133741:0|t|cRXP_LOOT_[Vademécum de Grito de orden]|r |cRXP_WARN_para aprender|r |T132351:0|t[Grito de orden] << Warrior
    .train 403228 >>|cRXP_WARN_Compra y usa el|r |T133741:0|t|cRXP_LOOT_[Vademécum de Gancho]|r |cRXP_WARN_para aprender|r |T132507:0|t[Gancho] << Warrior
    .train 425336 >>|cRXP_WARN_Compra y usa la|r |T133747:0|t|cRXP_LOOT_[Revelación de Ira del chamán]|r |cRXP_WARN_para aprender|r |T136088:0|t[Ira del chamán] << Shaman
    .train 437009 >>|cRXP_WARN_Compra y usa la|r |T133747:0|t|cRXP_LOOT_[Revelación de Proyección totémica]|r |cRXP_WARN_para aprender|r |T310733:0|t[Proyección totémica] << Shaman
    .use 216738 << Rogue -- Manual of Redirect
    .use 226396 << Rogue -- Manual of Occult Poison
    .use 226394 << Rogue -- Manual of Atrophic Poison
    .use 226397 << Rogue -- Manual of Sebacious Poison
    .use 226395 << Rogue -- Manual of Numbing Poison
    .use 216740 << Mage -- Tome of Expanded Intellect
    .use 216744 << Priest -- Scroll of Increased Fortitude
    .use 216745 << Priest -- Scroll of Shadowfiend
    .use 216746 << Warrior -- Handbook of Commanding Shout
    .use 226403 << Warrior -- Handbook of Meathook
    .use 216747 << Warlock -- Grimoire of Soul Harvesting
    .use 216748 << Warlock -- Grimoire of Portal of Summoning
    .use 403619 << Warlock -- Grimoire of Fel Armor
    .use 216764 << Druid -- Leaflet of Deeper Wilds
    .use 216767 << Druid -- Leaflet of Revive
    .use 216768 << Paladin -- Testament of Enhanced Blessings
    .use 226400 << Paladin -- Testament of the Exorcist
    .use 226398 << Paladin -- Testament of Martyrdom
    .use 216769 << Shaman -- Revelation of Totemic Projection
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .use 216770 << Hunter -- Treatise on Aspect of the Viper
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 216771 << Druid -- Leaflet of Enhanced Restoration
    .target Milton Sheaf << Alliance
    .target Zor Lonetree << Horde
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Botas
#name Runas de Cazador de insectos
#displayname Golpe de dracoleón - 35 (Azeroth) << Hunter
#displayname Instintos de supervivencia - 35 (Azeroth) << Druid
#title Golpe de dracoleón << Hunter
#title Instintos de supervivencia << Druid

step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Viaja al Pantano de las Penas
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Amaryllis Webb|r
    >>|cRXP_BUY_Compra un|r |T133653:0|t[Kit inicial para entomología]
    .collect 213565,1 --Entomology Starter Kit (1x)
    .target Amaryllis Webb
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    >>Abre el |T133653:0|t[Kit inicial para entomología]
    .use 213565
    .collect 213562,1 --Bug Catching Net (1x)
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Stranglethorn Vale >>Viaja a Vega de Tuercespina
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    >>|cRXP_WARN_Usa la|r |T134325:0|t[Red para cazar insectos] |cRXP_WARN_en una|r |cRXP_ENEMY_Tarántula arbórea|r
    >>|cRXP_WARN_Se encuentran encima de los tocones de árboles|r
    .use 213562
    .collect 213566,1 --Arbor Tarantula Specimen (1x)
    .mob Arbor Tarantula
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Arathi Highlands >>Viaja a las Tierras Altas de Arathi
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Arathi Highlands,54.0,38.6,0
    .goto Arathi Highlands,57.0,39.8,0
    .goto Arathi Highlands,59.6,57.0,0
    .goto Arathi Highlands,61.2,55.6,0
    .goto Arathi Highlands,54.0,38.6,20,0
    .goto Arathi Highlands,57.0,39.8,20,0
    .goto Arathi Highlands,59.6,57.0,20,0
    .goto Arathi Highlands,61.2,55.6,20,0
    .goto Arathi Highlands,62.6,56.0,20,0
    >>|cRXP_WARN_Usa la|r |T134325:0|t[Red para cazar insectos] |cRXP_WARN_en una|r |cRXP_ENEMY_Gorgojo de heno|r
    >>|cRXP_WARN_Se pueden encontrar en cualquiera de las granjas, incluso dentro de los graneros|r
    .use 213562
    .collect 213568,1 --Hay Weevil Specimen (1x)
    .mob Hay Weevil
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Desolace >>Viaja a Desolace
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #loop
    .goto Desolace,53.0,59.0,0
    .goto Desolace,50.0,55.8,30,0
    .goto Desolace,53.0,59.0,30,0
    .goto Desolace,54.0,62.6,30,0
    >>|cRXP_WARN_Usa la|r |T134325:0|t[Red para cazar insectos] |cRXP_WARN_en un|r |cRXP_ENEMY_Recolector de carne|r
    >>|cRXP_WARN_Se encuentran en el Cementerio de Kodos|r
    .use 213562
    .collect 213567,1 --Flesh Picker Specimen (1x)
    .mob Flesh Picker
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    #completewith next
    .zone Swamp of Sorrows >>Viaja al Pantano de las Penas
step
    .train 416089,1 << Hunter
    .train 410027,1 << Druid
    .goto Swamp of Sorrows,25.140,54.034
    >>Habla con |cRXP_FRIENDLY_Amaryllis Webb|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Vigorización|r] << Hunter
    >>Habla con |cRXP_FRIENDLY_Amaryllis Webb|r para recibir la |T134419:0|t[|cRXP_FRIENDLY_Runa de Instinto|r] << Druid
    .collect 213125,1 << Hunter --Rune of Invigoration (1x)
    .collect 213119,1 << Druid --Rune of Instinct (1x)
    .skipgossip 217412,1
    .target Amaryllis Webb
step
    .train 416089 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Vigorización|r] |cRXP_WARN_para aprender|r |T135125:0|t[Golpe de dracoleón] << Hunter
    .train 410027 >> |cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Instinto|r] |cRXP_WARN_para aprender|r |T132266:0|t[Instintos de supervivencia] << Druid
    .use 213125 << Hunter
    .use 213119 << Druid
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Guía de Runas y Libros
#subgroup Extras
#subweight -1
#name Bolsa de dormir acogedora - 14
#title Bolsa de dormir acogedora

step
    #optional
    +|cRXP_WARN_Debes ser nivel 14 como mínimo antes de poder aceptar la misión para la|r |T133662:0|t[|cRXP_LOOT_Bolsa de dormir acogedora|r]
    .xp >14,1
step << Alliance
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
step << Alliance
    .goto Westfall,37.413,50.701
    >>Haz clic en los |cRXP_PICK_Restos quemados|r en el suelo
    .accept 79008 >> Acepta la misión ... Y la nota que encontraste
step << Alliance
    #completewith next
    .zone The Barrens >> Viaja a Los Baldíos
step << Alliance
    .goto The Barrens,46.361,73.904
    >>Haz clic en los |cRXP_PICK_Restos quemados|r en el suelo
    .turnin 79008 >> Entrega la misión ... Y la nota que encontraste
    .accept 79192 >> Acepta la misión Tesoros rocosos
step << Horde
    #completewith next
    .zone The Barrens >> Viaja a Los Baldíos
step << Horde
    .goto The Barrens,46.361,73.904
    >>Haz clic en los |cRXP_PICK_Restos quemados|r en el suelo
    .accept 79007 >> Acepta la misión ... Y la nota que encontraste
step << Horde
    #completewith next
    .zone Westfall >> Viaja a Páramos de Poniente
step << Horde
    .goto Westfall,37.413,50.701
    >>Haz clic en los |cRXP_PICK_Restos quemados|r en el suelo
    .turnin 79007 >> Entrega la misión ... Y la nota que encontraste
    .accept 79192 >> Acepta la misión Tesoros rocosos
step
    #completewith next
    .zone Stonetalon Mountains >> Viaja a Sierra Espolón
step
    #completewith next
    .goto Stonetalon Mountains,50.29,52.94,25 >> Viaja subiendo por el camino de tierra al norte del Refugio Roca del Sol
step
    .goto Stonetalon Mountains,40.748,52.576
    >>Haz clic en la |cRXP_PICK_Basura de bolsillo|r en la caja
    .turnin 79192 >> Entrega la misión Tesoros rocosos
    .accept 79980 >> Acepta la misión A correr
step
    #completewith next
    .goto Stonetalon Mountains,40.19,50.80,15 >> Sigue el camino a través de las montañas
step
    .goto Stonetalon Mountains,39.614,49.783
    >>Haz clic en el |cRXP_PICK_Túmulo de barro|r del suelo
    .turnin 79980 >> Entrega la misión A correr
    .accept 79974 >> Acepta la misión Trabajo encubierto
step
    #completewith next
    .zone Loch Modan >> Vuela a Loch Modan
step
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,49.4,12.9,8 >> |cRXP_WARN_Sube al muro de la presa de Loch Modan y déjate caer con cuidado por el saliente del centro de la presa. Sigue la flecha|r
step
    .goto Loch Modan,49.421,12.917
    >>Haz clic en la |cRXP_PICK_Figurilla tallada|r en el saliente
    .turnin 79974 >> Entrega la misión Trabajo encubierto
    .accept 79975 >> Acepta la misión El puño del águila
step
    #completewith next
    .goto Hillsbrad Foothills,87.691,48.166,10 >> Viaja al Muro de Thoradin en la frontera entre Tierras Altas de Arathi y Laderas de Trabalomas
step
    #completewith next
    .goto Arathi Highlands,24.132,21.470,7 >> Sube al carro y avanza subiendo a lo largo de la muralla
step
    .goto Arathi Highlands,22.466,24.127
    >>Haz clic en el |cRXP_PICK_Bolso de mensajero|r colgado en la pared
    .turnin 79975 >> Entrega la misión El puño del águila
    .accept 79976 >> Acepta la misión Este debe de ser el lugar
step
    .goto Arathi Highlands,22.466,24.127
    >>Haz clic en la |cRXP_PICK_Cartera enrollada a las apuradas|r en el suelo
    .turnin 79976 >> Entrega la misión Este debe de ser el lugar
step
    +|cRXP_WARN_Se recomienda encarecidamente que guardes tu|r |T134057:0|t[|cRXP_LOOT_Vianda de estudiante|r] |cRXP_WARN_para niveles más altos antes de consumirlos. Cada uso de|r |T134057:0|t[|cRXP_LOOT_Vianda de estudiante|r] |cRXP_WARN_añade 20% de experiencia de descanso a tu personaje, por lo tanto es más eficiente usarlos en niveles más altos|r
]])

RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco <<Druid/Shaman/Warrior
#subgroup Brazales <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#name Runas de Celadores Esmeralda
#displayname Armadura de arrabio <<Mage
#displayname Cornada <<Druid
#displayname TNT <<Hunter
#displayname Martillo de cólera mejorado <<Paladin
#displayname Zona de vacío <<Priest
#displayname Acortar <<Rogue
#displayname Quemar <<Shaman
#displayname Aflicción inestable <<Warlock
#displayname Maestría con escudos <<Warrior

step
    +|cRXP_WARN_Ve a cualquiera de las zonas indicadas a continuación. En las ubicaciones marcadas de cada una de ellas encontrarás un PNJ de una nueva facción:|r |cRXP_FRIENDLY_Los Celadores Esmeralda|r.
    >>Bosque del Ocaso
    >>Vallefresno
    >>Feralas
    >>Tierras del Interior
    .zoneskip Duskwood
    .zoneskip Ashenvale
    .zoneskip Feralas
    .zoneskip The Hinterlands
step
    >>Busca un Intendente de los |cRXP_FRIENDLY_Celadores Esmeralda|r en el lugar marcado y cómprales tu runa
    .goto Duskwood,45.6,51.2,-1
    .goto Ashenvale,89.6,40.6,-1
    .goto Feralas,48.6,12.6,-1
    .goto The Hinterlands,61.4,34.6,-1
    .target Quartermaster Falinar
    .target Quartermaster Kyleen
    .target Quartermaster Valdane
    .target Quartermaster Alandra
    .collect 221480,1 << Mage --Spell Notes: Molten Armor
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 221482,1 << Warlock --Rune of Affliciton
    .collect 221483,1 << Shaman --Rune of Burn
    .collect 221511,1 << Warrior --Rune of the Protector
    .collect 221512,1 << Rogue --Rune of Alacrity
    .collect 221515,1 << Hunter --Rune of Detonation
    .collect 221517,1 << Druid --Rune of Bloodshed
    .collect 223288,1 << Paladin --Rune of the Hammer
step
    .train 431705 >>|cRXP_WARN_Usa la runa|r |T135791:0|t[|cRXP_FRIENDLY_Epifanía nihilista|r] |cRXP_WARN_para aprender|r |T132886:0|t[Zona de vacío] << Priest
    .train 429308 >>|cRXP_WARN_Usa las|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Hechizo: Armadura de arrabio|r] |cRXP_WARN_para aprender|r |T132221:0|t[Armadura de arrabio] << Mage
    .train 431747 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Aflicción|r] |cRXP_WARN_para aprender|r |T136228:0|t[Aflicción inestable] << Warlock
    .train 416066 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Quemar|r] |cRXP_WARN_para aprender|r |T135822:0|t[Quemar] << Shaman
    .train 410098 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Protector|r] |cRXP_WARN_para aprender|r |T132359:0|t[Maestría con escudos] << Warrior
    .train 432297 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Prontitud|r] |cRXP_WARN_para aprender|r |T236269:0|t[Acortar] << Rogue
    .train 431611 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Detonación|r] |cRXP_WARN_para aprender|r |T133713:0|t[TNT] << Hunter
    .train 431447 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Masacre|r] |cRXP_WARN_para aprender|r |T304501:0|t[Cornada] << Druid
    .train 429261 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa del Martillo|r] |cRXP_WARN_para aprender|r |T236262:0|t[Martillo de cólera mejorado] << Paladin
    .use 221480 << Mage -- Spell Notes: Molten Armor
    .use 221481 << Priest --Nihilist Epiphany
    .use 221482 << Warlock --Rune of Affliciton
    .use 221483 << Shaman --Rune of Burn
    .use 221511 << Warrior --Rune of the Protector
    .use 221512 << Rogue --Rune of Alacrity
    .use 221515 << Hunter --Rune of Detonation
    .use 221517 << Druid --Rune of Bloodshed
    .use 223288,1 << Paladin --Rune of the Hammer

]])


RXPGuides.RegisterGuide([[
#classic
<< SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco <<Mage/Hunter/Paladin/Priest/Rogue/Warlock
#subgroup Brazales <<Druid/Shaman/Warrior
#name Runas de Ofrenda Salvaje
#displayname Resguardo avanzado - 40 (Azeroth) <<Mage
#displayname Bloquear y cargar - 40 (Azeroth) <<Hunter
#displayname Santuario mejorado - 40 (Azeroth) <<Paladin
#displayname Égida divina - 40 (Azeroth) <<Priest
#displayname Potencia de combate - 40 (Azeroth) <<Rogue
#displayname Mareas Vivas - 40 (Azeroth) <<Shaman
#displayname Venganza - 40 (Azeroth) <<Warlock
#displayname Escudo y espada - 40 (Azeroth) <<Warrior
#displayname Regeneración frenética mejorada - 40 (Azeroth) <<Druid

step
    #completewith next
    .zone Felwood >>Viaja a Frondavil
step
    .goto Felwood,51.6,82.0
    >>Habla con la |cRXP_FRIENDLY_Emisaria diente oscuro|r cerca del Santuario Esmeralda
    .accept 82043 >>Acepta la misión Los dioses salvajes
    .target Shadowtooth Emissary
step
    #optional
    #completewith next
    .goto The Hinterlands,66.27,65.13,0
    >>|cRXP_WARN_Para completar esta misión necesitarás que una persona tenga un|r |T134799:0|t|cRXP_LOOT_Jarabe de susurro salvaje|r |cRXP_WARN_en sus bolsas. Se obtiene de los trols élite en Jintha'Alor, en Tierras del Interior. Solo consíguelo si nadie en tu grupo de Zahúrda Rajacieno lo tiene|r
    .collect 221261,1 --Wildwhisper Draught
step
    .goto The Barrens,45.5,92.4
    >>Busca un grupo para Zahúrda Rajacieno. Necesitarás limpiar el camino en espiral hasta el jefe final |cRXP_ENEMY_Amnennar el Gélido|r y matarlo. Después, una persona del grupo tiene que usar su |T134799:0|t|cRXP_LOOT_Jarabe de susurro salvaje|r para invocar a un |cRXP_FRIENDLY_Espíritu de Agamaggan|r. Habla con él para entregar la misión y aceptar la siguiente
    .turnin 82043 >>Entrega la misión Los dioses salvajes
    .accept 82044 >>Acepta la misión Los dioses salvajes
    .target Spirit of Agamaggan
    .mob Amnennar the Coldbringer
    .use 221261
step
    >>Ahora has recibido un |T237378:0|t|cRXP_LOOT_Rugido de Agamaggan|r. Este objeto puede usarse en áreas específicas en |cRXP_PICK_Profundidades de Roca Negra|r, |cRXP_PICK_Zul'farrak|r y |cRXP_PICK_Maraudon|r para invocar a un nuevo jefe, |cRXP_ENEMY_Anciana Delirante|r que siempre suelta una |T132119:0|t|cRXP_LOOT_Ofrenda Salvaje|r al matarlo. Reúne 3 de esas para completar la misión. Las |T132119:0|t|cRXP_LOOT_Ofrendas Salvajes|r también se usan como moneda para comprar objetos muy poderosos de la |cRXP_FRIENDLY_Emisaria Diente Oscuro|r, así que podrías querer "farmear" más que solo las 3 para tu runa
    >>|cRXP_WARN_En|r |cRXP_FRIENDLY_Zul'farrak|r |cRXP_WARN_mata a cualquiera de los 3 jefes y podrás hacer aparecer a una|r |cRXP_ENEMY_Anciana delirante|r |cRXP_WARN_cerca de la piscina de Ghaz'rilla|r
    >>|cRXP_WARN_En|r |cRXP_FRIENDLY_Maraudon|r |cRXP_WARN_mata a la|r |cRXP_ENEMY_Princesa Theradras|r |cRXP_WARN_y podrás hacer aparecer a una|r |cRXP_ENEMY_Anciana delirante|r |cRXP_WARN_en su arena|r
    >>|cRXP_WARN_En|r |cRXP_FRIENDLY_Profundidades de Roca Negra|r |cRXP_WARN_mata a la|r |cRXP_ENEMY_Alta interrogadora Gerstahn|r, |cRXP_ENEMY_Maestro de canes Grebmar|r |cRXP_WARN_y completa el evento de|r |cRXP_ENEMY_la Arena|r |cRXP_WARN_. Después podrás invocar a una|r |cRXP_ENEMY_Anciana delirante|r |cRXP_WARN_en La Ruta Hierro Negro (camino a Bael'gar)|r
    >>|cRXP_WARN_CONSEJO:|r Las ofrendas se pueden conseguir en una banda y puedes hacer la misma mazmorra repetidamente. Actualmente, la forma más rápida de "farmearlas" es |cRXP_WARN_unirse a una banda de 10 jugadores|r y repetir |cRXP_WARN_Princesa en Maraudon o Zul'Farrak|r
    .complete 82044,1 --Wild Offering 3/3
    .use 221418
    .mob Delirious Ancient
step
    #optional
    #completewith next
    .zone Felwood >>Regresa a Frondavil
step
    .goto Felwood,51.6,82.0
    >>Habla con la |cRXP_FRIENDLY_Emisaria diente oscuro|r cerca del Santuario Esmeralda
    .turnin 82044 >>Entrega la misión Los dioses salvajes
    .target Shadowtooth Emissary
step
    .train 431650 >>|cRXP_WARN_Usa la|r |T236160:0|t[|cRXP_FRIENDLY_Sabiduría de Hyjal|r] que recibiste |cRXP_WARN_para aprender|r |T237539:0|t[Égida divina] << Priest
    .train 431461 >>|cRXP_WARN_Usa la|r |T236160:0|t[|cRXP_FRIENDLY_Sabiduría de Hyjal|r] que recibiste |cRXP_WARN_para aprender|r |T132091:0|t[Regeneración frenética mejorada] << Druid
    .train 401754 >>|cRXP_WARN_Usa la|r |T236160:0|t[|cRXP_FRIENDLY_Sabiduría de Hyjal|r] que recibiste |cRXP_WARN_para aprender|r |T135733:0|t[Resguardo avanzado] << Mage
    .train 416085 >>|cRXP_WARN_Usa la|r |T236160:0|t[|cRXP_FRIENDLY_Sabiduría de Hyjal|r] que recibiste |cRXP_WARN_para aprender|r |T236185:0|t[Bloquear y cargar] << Hunter
    .train 429247 >>|cRXP_WARN_Usa la|r |T236160:0|t[|cRXP_FRIENDLY_Sabiduría de Hyjal|r] que recibiste |cRXP_WARN_para aprender|r |T135925:0|t[Santuario mejorado] << Paladin
    .train 432293 >>|cRXP_WARN_Usa la|r |T236160:0|t[|cRXP_FRIENDLY_Sabiduría de Hyjal|r] que recibiste |cRXP_WARN_para aprender|r |T135673:0|t[Potencia de combate] << Rogue
    .train 410105 >>|cRXP_WARN_Usa la|r |T236160:0|t[|cRXP_FRIENDLY_Sabiduría de Hyjal|r] que recibiste |cRXP_WARN_para aprender|r |T252995:0|t[Mareas Vivas] << Shaman
    .train 426470 >>|cRXP_WARN_Usa la|r |T236160:0|t[|cRXP_FRIENDLY_Sabiduría de Hyjal|r] que recibiste |cRXP_WARN_para aprender|r |T236299:0|t[Venganza] << Warlock
    .train 427082 >>|cRXP_WARN_Usa la|r |T236160:0|t[|cRXP_FRIENDLY_Sabiduría de Hyjal|r] que recibiste |cRXP_WARN_para aprender|r |T236315:0|t[Escudo y espada] << Warrior
    .use 222962 --Hyjal's Wisdom
]])

RXPGuides.RegisterGuide([[
<<Warlock/Priest/Mage/Paladin
<< SoD
#classic
#group RestedXP Guía de Runas y Libros
#subgroup Casco <<Warlock
#subgroup Brazales <<Paladin/Priest/Mage
#name Runas de Cristal Ley
#displayname Desplazamiento - 45 (Azeroth) <<Mage
#displayname Poder purificador - 45 (Azeroth) <<Paladin
#displayname Desesperación - 45 (Azeroth) <<Priest
#displayname Explosión de humo - 45 (Azeroth) <<Warlock

step
    #optional
    #completewith next
    >>|cRXP_WARN_Para encontrar esta runa, necesitarás obtener 4|r |T134938:0|t|cRXP_LOOT_Pergaminos de geomancia|r |cRXP_WARN_y canalizar uno en cuatro Cristales Ley en varias zonas del mundo para invocar a los|r |cRXP_ENEMY_Caminantes de ley enfurecidos|r. |cRXP_WARN_Alternativamente, puedes unirte en grupo con otros magos que tengan el pergamino o brujos con|r |T132842:0|t|cRXP_FRIENDLY_Fragmentos de núcleo del mundo|r << Mage
    >>|cRXP_WARN_Para encontrar esta runa, necesitarás obtener 4|r |T132842:0|t|cRXP_FRIENDLY_Fragmentos de núcleo del mundo|r |cRXP_WARN_de las expediciones de tu|r |T236294:0|t[|cRXP_FRIENDLY_Diablillo explorador|r] |cRXP_WARN_y canalizar uno en cuatro Cristales Ley en varias zonas del mundo para invocar a los|r |cRXP_ENEMY_Caminantes de ley enfurecidos|r. |cRXP_WARN_Alternativamente, puedes unirte en grupo con otros brujos que tengan el fragmento o magos con|r |T134938:0|t|cRXP_LOOT_Pergamino de geomancia|r << Warlock
    +|cRXP_WARN_Para encontrar esta runa necesitarás unirte en grupo con un brujo con|r |T132842:0|t|cRXP_FRIENDLY_Fragmentos de núcleo del mundo|r |cRXP_WARN_o un mago con|r |T134938:0|t|cRXP_LOOT_Pergaminos de geomancia|r |cRXP_WARN_para invocar a los enemigos necesarios. No puedes invocarlos por ti mismo|r << Priest/Paladin
    .collect 223171,4 << Mage
    .collect 223168,4 << Warlock

step
    >>Ve a cada uno de los Cristales Ley marcados en tu mapa y usa tu |T134938:0|t|cRXP_LOOT_Pergamino de geomancia|r en ellos o haz que alguien de tu grupo lo haga para invocar a un |cRXP_ENEMY_Caminante de ley enfurecido|r. Derrótalo y despójalo para obtener su |cRXP_LOOT_Leycryst|r. Esto se puede hacer en cualquier orden << Mage
    >>Ve a cada uno de los Cristales Ley marcados en tu mapa y usa tu |T132842:0|t|cRXP_FRIENDLY_Fragmento de núcleo del mundo|r en ellos o haz que alguien de tu grupo lo haga para invocar a un |cRXP_ENEMY_Caminante de ley enfurecido|r. Derrótalo y despójalo para obtener su |cRXP_LOOT_Leycryst|r. Esto se puede hacer en cualquier orden << Warlock
    >>Ve a cada uno de los Cristales Ley marcados en tu mapa y haz que el brujo o mago de tu grupo invoque a un |cRXP_ENEMY_Caminante de ley enfurecido|r. Derrótalo y despójalo para obtener su |cRXP_LOOT_Leycryst|r. Esto se puede hacer en cualquier orden << Priest/Paladin
    .goto Azshara,22.0,79.0,-1
    .goto Feralas,57.0,60.0,-1
    .goto The Hinterlands,48.0,59.0,-1
    .goto Searing Gorge,55,65,-1
    .collect 221318,1 >>|T237193:0|t|cRXP_LOOT_Leycrist de Azshara|r de |cRXP_PICK_Azshara|r cerca de la Loma Desolada
    .collect 221317,1 >>|T237189:0|t|cRXP_LOOT_Leycrist de Feralas|r de |cRXP_PICK_Feralas|r en Las Altas Tierras Salvajes
    .collect 221319,1 >>|T237192:0|t|cRXP_LOOT_Leycrist de Roca Negra|r del sur de |cRXP_PICK_La Garganta de Fuego|r
    .collect 221320,1 >>|T237191:0|t|cRXP_LOOT_Leycrist de las Tierras del Interior|r de |cRXP_PICK_Tierras del Interior|r al norte del Altar de Zul
    .mob Enraged Leywalker
    .train 429309,1 << Mage
    .train 431745,1 << Warlock
    .train 429255,1 << Paladin
    .train 431673,1 << Priest
step
    .train 429309 >> |cRXP_WARN_Usa cualquiera de los cuatro cristales que has reunido para combinarlos y aprender|r |T132171:0|t[Desplazamiento] << Mage
    .train 431745 >> |cRXP_WARN_Usa cualquiera de los cuatro cristales que has reunido para combinarlos y aprender|r |T236290:0|t[Explosión de humo] << Warlock
    .train 429255 >> |cRXP_WARN_Usa cualquiera de los cuatro cristales que has reunido para combinarlos y aprender|r |T135950:0|t[Poder purificador] << Paladin
    .train 431673 >> |cRXP_WARN_Usa cualquiera de los cuatro cristales que has reunido para combinarlos y aprender|r |T237555:0|t[Desesperación] << Priest
    .use 221318 --Azshara Leycryst
]])

RXPGuides.RegisterGuide([[
#classic
<< Shaman SoD/Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Casco
#title Maña mental << Shaman
#title Dolor y sufrimiento << Priest
#name Maña mental - 43 (Tanaris) << Shaman
#name Dolor y sufrimiento - 43 (Tanaris) << Priest

-- Mental Dexterity/Pain and Suffering
-- PERMOK: Needs better waypoints

step
    #completewith next
    .zone Tanaris >>Viaja a Tanaris
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    #completewith next
    >>Mata |cRXP_ENEMY_Magos oscuros Vagayermo|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Notas de brujo en clave|r]
    .collect 221547,1
    .mob Wastewander Shadow Mage
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,59.8,24.0,35,0
    .goto Tanaris,65.6,32.2,35,0
    .goto Tanaris,62.4,33.2,30,0
    >>Mata |cRXP_ENEMY_Ladrones Vagayermo|r. Despójalos para obtener el |T134329:0|t[|cRXP_LOOT_Códice de vagayermos|r]
    .collect 221549,1
    .mob Wastewander Thief
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    #loop
    .goto Tanaris,58.4,38.6,40,0
    .goto Tanaris,60.3,23.4,40,0
    .goto Tanaris,66.2,35.0,40,0
    >>Mata |cRXP_ENEMY_Magos oscuros Vagayermo|r. Despójalos para obtener las |T134939:0|t[|cRXP_LOOT_Notas de brujo en clave|r]
    .collect 221547,1
    .mob Wastewander Shadow Mage
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Usa el|r |T134329:0|t[Códice de vagayermos] |cRXP_WARN_para recibir|r |T237018:0|t[Notas de brujo descifradas]
    .goto Tanaris,58.0,36.0
    .use 221549
    .collect 221545,1
step
    .train 416055,1 << Shaman
    .train 415991,1 << Priest
    >>|cRXP_WARN_Sitúate sobre el|r "Pergamino críptico de invocación". |cRXP_WARN_Usa las|r |T237018:0|t[Notas de brujo descifradas] |cRXP_WARN_mientras estés en pie encima del pergamino|r.
    >>Mata al |cRXP_ENEMY_Abisario Enfurecido|r. Despójalo para obtener la |T134419:0|t[|cRXP_FRIENDLY_Runa de Maña mental|r] << Shaman
    >>Mata al |cRXP_ENEMY_Abisario Enfurecido|r. Despójalo para obtener la |T135975:0|t[|cRXP_FRIENDLY_Profecía del invierno glauco|r] << Priest
    .collect 220610,1 << Shaman
    .collect 221979,1 << Priest
step
    .itemcount 220610,1 << Shaman
    .itemcount 221979,1 << Priest
    .use 220610 << Shaman
    .use 221979 << Priest
    .train 416055 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Maña mental|r] |cRXP_WARN_para aprender|r |T136055:0|t[Maña mental] << Shaman
    .train 415991 >>|cRXP_WARN_Usa la|r |T135975:0|t[|cRXP_FRIENDLY_Profecía del invierno glauco|r] |cRXP_WARN_para aprender|r |T237567:0|t[Dolor y sufrimiento] << Priest
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Hunter SoD/Rogue SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en armas a distancia
#name Especialización en armas a distancia - 58 (Tierras de la Peste del Este)

step
    #completewith rangeSpec
    .zone Eastern Plaguelands >>Viaja a Tierras de la Peste del Este
step << Horde
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Despoja el libro rojo junto a |cRXP_FRIENDLY_Nathanos Clamañublo|r. Está fuera de la casa, a la izquierda de la puerta. Contiene la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en armas a distancia|r]
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step << Alliance
    #label rangeSpec
    .goto Eastern Plaguelands,26.0,74.0
    >>Despoja el libro rojo junto a |cRXP_ENEMY_Nathanos Clamañublo|r. Está fuera de la casa, a la izquierda de la puerta. Contiene la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en armas a distancia|r]
    >>|cRXP_WARN_Si hay alguien cerca, pídele que aleje a|r |cRXP_ENEMY_Nathanos Clamañublo|r |cRXP_WARN_por un momento mientras despojas la runa de forma segura|r
    >>|cRXP_WARN_Si no hay nadie cerca, puedes morir a manos de|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_y luego reaparecer quedándote dentro de la casa y fuera de su línea de visión. Después, despoja el libro desde el interior de la casa, ya sea usando la tecla de interactuar o ajustando el ángulo de tu cámara para poder hacer clic en él|r << Warrior/Rogue
    >>|cRXP_WARN_Si no hay nadie cerca, pon a tu mascota en|r |T136106:0|t[Quedarse] |cRXP_WARN_a una distancia prudente de|r |cRXP_ENEMY_Nathanos|r |cRXP_WARN_luego dale la orden de|r |T132152:0|t[Atacar] |cRXP_WARN_a tu mascota para atraer la atención del enemigo. Una vez que la tenga como objetivo, pon a tu mascota en|r |T132311:0|t[Pasivo], |cRXP_WARN_esto hará que tu mascota regrese a su posición de Quedarse. Acércate al libro y usa |T132293:0|t[Fingir muerte] para salir de combate y despojar la runa|r << Hunter
    .collect 226410,1 --Rune of Ranged Weapon Specialization
step
    .train 453692 >>|cRXP_WARN_Usa la|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en armas a distancia|r] |cRXP_WARN_para aprender|r |T135490:0|t[Especialización en armas a distancia]
    .use 226410
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD/Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización Sagrada
#name Especialización Sagrada - 60 (Tierras de la Peste del Este)

step
    #completewith next
    >>|cRXP_WARN_Conseguir esta runa requerirá que luches contra enemigos en una zona élite. Es posible hacerlo en solitario, pero si tienes un nivel más bajo o no vas muy equipado, considera buscar a alguien que te ayude|r
    .zone Eastern Plaguelands >> Viaja a Tierras de la Peste del Este
step
    >>|cRXP_WARN_Puedes conseguir esta runa al mismo tiempo que|r |T135883:0|t[|cRXP_FRIENDLY_Sanación conjunta|r] |cRXP_WARN_si avanzas en esa cadena de misiones primero. Ve a la guía de la runa de|r |T135883:0|t[|cRXP_FRIENDLY_Sanación conjunta|r] |cRXP_WARN_si prefieres conseguir ambas runas al mismo tiempo|r << Priest
    .goto Eastern Plaguelands,77.5,81.7,50 >> Viaja a Mano de Tyr, |cRXP_WARN_ten en cuenta que es un área élite|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Dirígete al ala de la biblioteca del edificio marcado en tu mapa y busca un libro ubicado en la parte superior de una estantería. Despójalo para obtener la runa. Ten en cuenta que no puedes despojarla en combate|r
    >>|cRXP_WARN_Puedes limpiar a todos los enemigos de la sala o morir junto al libro y revivir en un lugar que esté fuera de la línea de visión de los enemigos para despojar la runa sin tener que matar nada|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización Sagrada|r] para aprender |T237537:0|t[Especialización Sagrada]
    .train 453702,1
    .itemcount 226418,1
    .use 226418
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Druid SoD/Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en lo Arcano
#name Especialización en lo Arcano - 60 (Tierras de la Peste del Oeste)

step
    #completewith next
    >>|cRXP_WARN_Conseguir esta runa requerirá que luches contra enemigos en una zona élite. Es posible hacerlo en solitario, pero si tienes un nivel más bajo o no vas muy equipado, considera buscar a alguien que te ayude|r
    .zone Western Plaguelands >> Viaja a Tierras de la Peste del Oeste
step
    .goto Western Plaguelands,48.7,22.4,50 >> Viaja a ega del Ampar, |cRXP_WARN_ten en cuenta que es un área élite|r
step
    .goto Western Plaguelands,47.3,13.6
    >>|cRXP_WARN_Dirígete a lo alto de la torre marcada en tu mapa. Busca un libro rojo tirado en una esquina junto a una estantería, está custodiado por un|r |cRXP_ENEMY_Sacerdote Escarlata|r. |cRXP_WARN_Despójalo para obtener la runa|r
    .collect 226413,1 --Rune of Arcane Specialization
    .train 453702,1
step
    #completewith next
    .train 453695 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en lo Arcano|r] para aprender |T132849:0|t[Especialización en lo Arcano]
    .train 453695,1
    .itemcount 226413,1
    .use 226413
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Paladin SoD/Warrior SoD/Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en hachas
#name Especialización en hachas - 58 (Las Estepas Ardientes)

step
    #completewith next
    .zone Burning Steppes >> Viaja a Las Estepas Ardientes
step
    .goto Burning Steppes,40.3,34.9,100 >> Viaja al Bastión de Roca Negra
step
    .goto Burning Steppes,39.9,34.1
    >>|cRXP_WARN_Entra al Bastión de Roca Negra y busca un libro rojo tirado en la ubicación marcada en tu mapa. Despójalo para obtener la runa|r
    .collect 226407,1 --Rune of Axe Specialization
step
    #completewith next
    .train 453688 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en hachas|r] para aprender |T132394:0|t[Especialización en hachas]
    .itemcount 226407,1
    .use 226407
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Warrior SoD/Shaman SoD/Mage SoD/Priest SoD/Rogue SoD/Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en dagas
#name Especialización en dagas - 60 (Silithus)

step
    #completewith next
    .zone Burning Steppes >> Viaja a Silithus
step
    .goto Silithus,20,85,50 >> Viaja al sur de la zona a una tienda cerca de las puertas de Ahn'Qiraj
step
    .goto Silithus,20,85
    >>|cRXP_WARN_Entra en la tienda y busca un libro rojo tirado en la ubicación marcada en tu mapa. Despójalo para obtener la runa|r
    .collect 226409,1 --Rune of Dagger Specialization
step
    #completewith next
    .train 453690 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en dagas|r] para aprender |T135641:0|t[Especialización en dagas]
    .itemcount 226409,1
    .use 226409
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Warrior SoD/Shaman SoD/Rogue SoD/Warlock SoD/Paladin SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en defensa
#name Especialización en defensa - 60 (Montaña Roca Negra)

step
    #completewith next
    .zone 25 >> Viaja a Montaña Roca Negra ya sea por La Garganta de Fuego o por Las Estepas Ardientes
step
    .goto 1415/0,-1232.500,-7612.600,20 >> Viaja al lado este del círculo de lava fundida hasta que encuentres una puerta que conduzca hacia Cumbre de Roca Negra Inferior
step
    .goto 1415/0,-1294.200,-7574.700,5 >> Sube por el camino y entraena la primera sala lateral a tu derecha. |cRXP_WARN_Es posible que tengas que matar a los enemigos élites que se interpongan en tu camino, ya que no puedes despojar el libro mientras estás en combate|r
step
    .goto 1415/0,-1302.100,-7583.400
    >>|cRXP_WARN_Busca un libro rojo tirado en el suelo de esta habitación. Puede aparecer en varias ubicaciones. Despójalo para obtener la runa|r
    .collect 226694,1 --Rune of Defense Specialization
step
    #completewith next
    .train 459313 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en defensa|r] para aprender |T134952:0|t[Especialización en defensa]
    .itemcount 226694,1
    .use 226694
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en combate Feral
#name Especialización en combate Feral - 60 (Cuna del Invierno)

step
    #completewith next
    .zone Winterspring >> Viaja a Cuna del Invierno
step
    .goto Winterspring,49.0,8.0,50 >> Dirígete al norte hacia la Roca Sable de Hielo
step
    .goto Winterspring,49.0,8.0
    >>|cRXP_WARN_Busca un libro rojo en la ubicación marcada. Podría estar custodiado por dos|r |cRXP_ENEMY_Sables de hielo|r |cRXP_WARN_de nivel 55-56. Despójalo para obtener la runa|r
    .collect 226419,1 --Rune of Feral Combat Specialization
step
    #completewith next
    .train 453703 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en combate Feral|r] para aprender |T132116:0|t[Especialización en combate Feral]
    .itemcount 226419,1
    .use 226419
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Mage SoD/Shaman SoD/Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en Fuego
#name Especialización en Fuego - 52 (La Garganta de Fuego)

step
    #completewith next
    .zone Searing Gorge >> Viaja a La Garganta de Fuego
step
    .goto 1427/0,-1425.800,-6772.400,25 >> Entra en las Fosas de la Escoria por la entrada de la cueva marcada en tu mapa
step
    .goto 1427/0,-1306.900,-6642.800,25 >> Cruza el puente en dirección norte
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Busca un libro rojo en un banco detrás del|r |cRXP_ENEMY_Sobrestante Maltorius|r. |cRXP_WARN_Despójalo para obtener la runa. Ten en mente que no puedes hacerlo mientras estás en combate|r
    >>|cRXP_WARN_Si eres de nivel más alto puedes despojarlo sin atraer la atención del|r |cRXP_ENEMY_Sobrestante Maltorius|r |cRXP_WARN_si te pegas al borde de su balcón, si no puedes hacerlo intenta pedir a alguien que lo aleje mientras despojas el libro o mátalo a él y a sus guardias|r
    >>|cRXP_WARN_Como Cazador puedes alejarlo con tu mascota y luego lanzar|r |T132293:0|t[Fingir muerte] |cRXP_WARN_mientras estés junto al libro para dejar el combate y despojarlo. Asegúrate de alejar al Sobrestante a un lugar fuera de tu línea de visión o podría meterte de nuevo en combate|r << Hunter
    .collect 226414,1 --Rune of Fire Specialization
step
    #completewith next
    .train 453696 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en Fuego|r] para aprender |T132847:0|t[Especialización en Fuego]
    .itemcount 226414,1
    .use 226414
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Druid SoD/Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en armas de puño
#name Especialización en armas de puño - 60 (Silithus)

step
    #completewith next
    .zone Silithus >> Viaja a Silithus
step
    .goto 1427/0,-1225.300,-6623.600
    >>|cRXP_WARN_Busca un libro rojo en la ubicación marcada. Está envuelto por la penumbra y podría ser difícil de ver|r
    .collect 226411,1 --Rune of Fist Weapon Specialization
step
    #completewith next
    .train 453691 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en armas de puño|r] para aprender |T133832:0|t[Especialización en armas de puño]
    .itemcount 226411,1
    .use 226411
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD/Hunter SoD/Shaman SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en Escarcha
#name Especialización en Escarcha - 60 (Cuna del Invierno)

step
    #completewith next
    .zone Winterspring >> Viaja a Cuna del Invierno
step
    .goto Winterspring,59.0,59.0,50 >> Dirígete al sur hacia el campamento de lechubestias
step
    .goto Winterspring,59.0,59.0
    >>|cRXP_WARN_Busca un libro rojo en la ubicación marcada. Podría estar custodiado por un par de|r |cRXP_ENEMY_Lechubestias|r |cRXP_WARN_de nivel 57-58. Despójalo para obtener la runa|r
    .collect 226415,1 --Rune of Frost Specialization
step
    #completewith next
    .train 453697 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en Escarcha|r] para aprender |T132852:0|t[Especialización en Escarcha]
    .itemcount 226415,1
    .use 226415
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Rogue SoD/Shaman SoD/Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en Naturaleza
#name Especialización en Naturaleza - 56 (Frondavil)

step
    #completewith next
    .zone Felwood >> Viaja a Frondavil
step
    .goto Felwood,63.42,7.71,50 >> Dirígete al norte hacia el Poblado Zarpavil
step
    .goto Felwood,62.8,7.5
    >>|cRXP_WARN_Busca un libro rojo en la ubicación marcada. Está en un campamento junto a|r |cRXP_ENEMY_Cabecilla Sangrefauce|r |cRXP_WARN_Despójalo para obtener la runa|r
    .collect 226416,1 --Rune of Nature Specialization
step
    #completewith next
    .train 453698 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en Naturaleza|r] para aprender |T132848:0|t[Especialización en Naturaleza]
    .itemcount 226416,1
    .use 226416
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Rogue SoD/Shaman SoD/Paladin SoD/Priest SoD/Druid SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en mazas
#name Especialización en mazas - 60 (Los Humedales)

step
    #completewith next
    .zone Wetlands >> Viaja a Los Humedales
step
    .goto 1437/0,-3451.700,-3450.800,25 >> Dirígete al este hacia el inicio del camino a Grim Batol
step
    .goto 1437/0,-3582.500,-4138.200,25 >> Sigue el camino de subida hasta Grim Batol. |cRXP_WARN_No luches contra ninguno de los dracos rojos en el camino, puedes llegar allí sin tener que matar a ninguno de ellos|r
step
     .goto 1437/0,-3451.900,-4052.500
    >>|cRXP_WARN_Sube por el camino a la puerta de Grim Batol. Busca un libro rojo al lado derecho de la entrada. Despójalo para obtener la runa|r
    .collect 226408,1 --Rune of Mace Specialization
step
    #completewith next
    .train 453689 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en mazas|r] para aprender |T133038:0|t[Especialización en mazas]
    .itemcount 226408,1
    .use 226408
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD/Warlock SoD/Shaman SoD/Mage SoD/Priest SoD/Druid SoD/Hunter SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en armas de asta
#name Especialización en armas de asta - 60 (Azshara)

step
    #completewith next
    .zone Azshara >> Viaja a Azshara
step
    .goto Azshara,76.43,43.95,100 >> Cabeza al Templo de Arkkoran
step
    .goto Azshara,76.88,44.24
    >>|cRXP_WARN_Busca un libro rojo que sobre una poza de la luna dentro del templo. Despójalo para obtener la runa|r
    .collect 226412,1 --Rune of Pole Weapon Specialization
step
    #completewith next
    .train 453694 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en armas de asta|r] para aprender |T135145:0|t[Especialización en armas de asta]
    .itemcount 226412,1
    .use 226412
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD/Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en las Sombras
#name Especialización en las Sombras - 60 (Las Tierras Devastadas)

step
    #completewith next
    .zone Blasted Lands >> Viaja a Las Tierras Devastadas
step
    .goto Blasted Lands,45.19,55.29,100 >> Dirígete al sur hacia la Escara Impía. |cRXP_WARN_Tendrás que atravesar una zona de élites con muchos enemigos de nivel alto inmunes a control de masas (CC). Lo más probable es que tengas que avanzar corriendo como fantasma (deathrun) hasta la ubicación de la runa|r
step
    .goto Blasted Lands,33.0,48.0
    >>|cRXP_WARN_Busca un libro rojo sobre un altar marcado en tu mapa. Despójalo para obtener la runa|r
    .collect 226417,1 --Rune of Shadow Specialization
step
    #completewith next
    .train 453700 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en las Sombras|r] para aprender |T132851:0|t[Especialización en las Sombras]
    .itemcount 226417,1
    .use 226417
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Warrior SoD/Rogue SoD/Paladin SoD/Mage SoD/Warlock SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización en espadas
#name Especialización en espadas - 60 (Paso de la Muerte)

step
    #completewith next
    .zone Deadwind Pass >> Viaja a Paso de la Muerte
step
    .goto Deadwind Pass,47.40,75.50 >> Dirígete al sur hacia Karazhan
step
    .goto 1430/0,-2019.100,-11170.300,10 >> Entra en el Sótano del Maestro
step
    .goto Deadwind Pass,43.06,74.58
    >>|cRXP_WARN_Entra en el área de la cueva y busca un libro rojo en la ubicación marcada en tu mapa. Despójalo para obtener la runa|r
    .collect 226406,1 --Rune of Sword Specialization
step
    #completewith next
    .train 453635 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización en espadasa|r] para aprender |T132223:0|t[Especialización en espadas]
    .itemcount 226406,1
    .use 226406
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD/Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Warlock SoD/Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización de meditación
#name Especialización de meditación - 30 (Las Mil Agujas)

step
    #completewith next
    .zone Thousand Needles >> Viaja a El Desierto de Sal en Las Mil Agujas
    >>La ruta de vuelo más cercana a la ubicación de la runa es Gadgetzan
step
    .goto Thousand Needles,80,77,10 >> Entra en la cabaña marcada en tu mapa
step
    .goto Thousand Needles,80,77
    >>|cRXP_WARN_Entra a la cabaña y busca un |cRXP_WARN_libro gris|r en un estante dentro. Despójalo para obtener la runa|r
    .collect 231828,1 --Rune of Meditation Specialization
step
    .train 468763 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización de meditación|r] para aprender |T135913:0|t[Especialización de meditación]
    .itemcount 231828,1
    .use 231828
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD/Shaman SoD/Paladin SoD/Mage SoD/Priest SoD
#group RestedXP Guía de Runas y Libros
#subgroup Anillo
#title Especialización de sanación
#name Especialización de sanación - 40 (Tierras Altas de Arathi)

step
    #completewith next
    .zone Arathi Highlands >> Viaja a las Tierras Altas de Arathi
step
    .goto Arathi Highlands,21.98,79.75,40 >> Dirígete a la Cala de Faldir, sigue el camino entre las montañas y el muro sureste de Stromgarde
step
    .goto Arathi Highlands,35.2,79.1
    >>|cRXP_WARN_Dirígete a la hoguera junto al |cRXP_FRIENDLY_Profesor Fiseltor|r, busca un |cRXP_WARN_libro gris|r sobre una caja al lado de la hoguera. Despójalo para obtener la runa|r
    .collect 231829,1 --Rune of Healing Specialization
    .target Professor Phizzlethorpe
step
    .train 468761 >> Usa la |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialización de sanación|r] para aprender |T135913:0|t[Especialización de sanación]
    .itemcount 231829,1
    .use 231829
]])
