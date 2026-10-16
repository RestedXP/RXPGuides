if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guía de Supervivencia (H)
<< Horde
#name 14-16 Los Baldíos
#version 7
#subgroup RXP TBC Survival Guide 1-30
#next 16-18 Tierras Fantasma

step << BloodElf/Undead
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
step << BloodElf/Undead
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    .fp Orgrimmar >>Consigue la ruta de vuelo de Orgrimmar
    .target Doras
step << BloodElf/Undead
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Durotar >> Sal de Orgrimmar
step << BloodElf/Undead
    #completewith next
    .subzone 362 >>Viaja a Cerrotajo
step << BloodElf/Undead
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step << BloodElf/Undead
    .goto Durotar,55.94,74.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vornal|r
    >>|cRXP_WARN_Esta es una misión de bajo nivel que recompensa 10x|r |T134712:0|t[Superadhesivo] |cRXP_WARN_(raíz instantánea de 10 segundos en enemigo). ¡Esto es extremadamente valioso en situaciones peligrosas y podría salvarte la vida!|r
    >>|cRXP_WARN_Omitir este paso si no deseas obtenerlo|r
    .accept 818 >>Acepta la misión Un espíritu responsable
    .target Master Vornal
step << BloodElf/Undead
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Mata a los |cRXP_ENEMY_Reptadores de espuma pigmeo|r y a los |cRXP_ENEMY_Reptadores de espuma|r. Despójalos para obtener sus |cRXP_LOOT_Mucosidades|r
    >>Mata |cRXP_ENEMY_Caparapieles makrura|r y |cRXP_ENEMY_Pinzadores makrura|r. Despójalos para obtener sus |cRXP_LOOT_Ojos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
    .isOnQuest 818
step << BloodElf/Undead
    .goto Durotar,55.94,74.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vornal|r
    >>|cRXP_WARN_Omitir este paso si no deseas obtenerlo|r
    .turnin 818 >>Entrega la misión Un espíritu responsable
    .target Master Vornal
    .isQuestComplete 818
step << BloodElf/Undead
    #completewith next
    .goto The Barrens,62.26,19.38,40 >> Viaja a la Avanzada del Puente
    .zoneskip The Barrens
step << BloodElf/Undead
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << BloodElf/Undead
    #completewith CrossRoads1
    .subzone 380 >>Viaja a El Cruce
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acepta la misión Raptores ladrones
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acepta la misión Maestro de muelles Vertipeluca
    .accept 848 >>Acepta la misión Esporas de hongos
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acepta la misión Interrupción de los ataques
    .accept 5041 >>Acepta la misión Suministros para El Cruce
    .target Thork
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acepta la misión Las Charcas del Olvido
    .target Tonga Runetotem
step << Undead/BloodElf
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
    .target Sergra Darkthorn
step
    #label CrossRoads1
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acepta la misión Raptores ladrones
    .target Gazrog
step << Orc/Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Entrega la misión Regreso a El Cruce
    .target Zargh
step
    #completewith DisruptTheAttacks
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Picos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Buscaqua|r, a los |cRXP_ENEMY_Tejespina|r y a los |cRXP_ENEMY_Cazadores|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >> Despoja el |cRXP_PICK_Barril Vacío de Chen|r del suelo y comienza la misión
    >>|cRXP_WARN_Si no está disponible, lo conseguirás más adelante|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
step << Shaman
    #sticky
    #label FireTar2
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>Mata a un |cRXP_ENEMY_Buscaqua Crines de Acero|r o a un |cRXP_ENEMY_Tejespina Crines de Acero|r. Despójalos para obtener un |cRXP_LOOT_Alquitrán|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #label DisruptTheAttacks
	.goto The Barrens,53.63,24.50,25,0
	.goto The Barrens,54.26,24.64,25,0
	.goto The Barrens,54.81,25.19,25,0
	.goto The Barrens,55.50,25.61,25,0
	.goto The Barrens,55.86,26.30,25,0
	.goto The Barrens,55.83,27.15,25,0
	.goto The Barrens,55.41,27.41,25,0
	.goto The Barrens,54.50,26.97,25,0
	.goto The Barrens,54.05,26.11,25,0
	.goto The Barrens,53.51,25.24,25,0
	.goto The Barrens,53.63,24.50,25,0
    >>Mata a los |cRXP_ENEMY_Buscaqua|r, a los |cRXP_ENEMY_Tejespina|r y a los |cRXP_ENEMY_Cazadores|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    #optional
    #completewith next
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label PlainstriderBeaks
    #loop
    .goto The Barrens,53.71,29.19,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Picos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 844 >>Entrega la misión La amenaza de los zancudos de llanura
    .accept 845 >>Acepta la misión La zhebra
    .target Sergra Darkthorn
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entrega la misión Interrupción de los ataques
    .accept 872 >>Acepta la misión La perturbación termina
    .target Thork
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Despoja el |cRXP_PICK_Barril Vacío de Chen|r del suelo y comienza la misión
    >>|cRXP_WARN_Espera a la reaparición si no ha aparecido|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
step
    #optional
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mata a las |cRXP_ENEMY_Geománticas Crines de Acero|r y a los |cRXP_ENEMY_Defensores Crines de Acero|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #optional
    #completewith next
    >>Despoja los |cRXP_PICK_Cajones de suministro de El Cruce|r
    >>|cRXP_WARN_Tiene múltiples localizaciones de aparición|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Mata a |cRXP_ENEMY_Kreenig Gruñucico|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step
    #optional
    #completewith next
    .goto The Barrens,56.75,24.69,0
    .goto The Barrens,59.26,24.67,0
    >>Mata a las |cRXP_ENEMY_Geománticas Crines de Acero|r y a los |cRXP_ENEMY_Defensores Crines de Acero|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #loop
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58,30,0
    .goto The Barrens,58.38,27.01,0
    .goto The Barrens,59.46,24.58,0
    >>Despoja los |cRXP_PICK_Cajones de suministro de El Cruce|r
    >>|cRXP_WARN_Tiene múltiples localizaciones de aparición|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto The Barrens,58.90,25.37,0
	.goto The Barrens,59.37,25.38,50,0
	.goto The Barrens,59.63,24.46,50,0
	.goto The Barrens,59.63,23.88,50,0
	.goto The Barrens,59.06,23.89,50,0
	.goto The Barrens,58.62,23.98,50,0
	.goto The Barrens,57.83,24.28,50,0
	.goto The Barrens,56.87,24.55,50,0
	.goto The Barrens,56.74,25.37,50,0
	.goto The Barrens,57.25,25.46,50,0
	.goto The Barrens,57.52,25.63,50,0
	.goto The Barrens,57.65,25.08,50,0
	.goto The Barrens,58.24,24.98,50,0
	.goto The Barrens,58.90,25.37,50,0
    >>Mata a las |cRXP_ENEMY_Geománticas Crines de Acero|r y a los |cRXP_ENEMY_Defensores Crines de Acero|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Mata a cualquier |cRXP_ENEMY_Zhebra|r que veas. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto Durotar,36.74,57.78
    .zone Durotar >> Viaja hacia Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >> Sigue el camino montaña arriba hacia |cRXP_FRIENDLY_Telf|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entrega la misión La llamada del fuego
    .accept 1526 >>Acepta la misión La llamada del fuego
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Usa la|r |T134732:0|t[La sapta de fuego]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Mata a la |cRXP_ENEMY_Manifestación Menor de Fuego|r. Despójalo para obtener un |cRXP_LOOT_Ascua resplandeciente|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Haz clic en el |cRXP_PICK_Blandón|r del suelo
    .turnin 1526 >>Entrega la misión La llamada del fuego
    .accept 1527 >>Acepta la misión La llamada del fuego
step << Shaman
    #optional
    #completewith FireEnd
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith next
    >>Mata a cualquier |cRXP_ENEMY_Zhebra|r que veas. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
step << Shaman
    #label FireEnd
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Entrega la misión La llamada del fuego
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >> Despoja el |cRXP_PICK_Barril Vacío de Chen|r del suelo y comienza la misión
    >>|cRXP_WARN_Espera a la reaparición si no ha aparecido|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
step
    #optional
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Mata |cRXP_ENEMY_Galopadores zhebra|r. Despójalos para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Tauren
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >> Viaja a Trinquete
    .isOnQuest 845
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Acepta la misión Los filibusteros de los Mares del Sur
    .target Gazlowe
step
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Consigue la ruta de vuelo de Trinquete
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r y el |cRXP_FRIENDLY_Cartel de Se busca|r
    .accept 894 >>Acepta la misión El churumbele
    .goto The Barrens,62.98,37.22
    .accept 895 >>Acepta la misión SE BUSCA: Barón Longavera
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T135353:0|t[Espadón] |cRXP_BUY_a este vendedor|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T135353:0|t[Espadón] |cRXP_WARN_cuando alcances el nivel 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T135353:0|t[Espadón]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T135147:0|t[Bastón nudoso] |cRXP_BUY_a este vendedor|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra una|r |T132394:0|t[Hacha barbada] |cRXP_BUY_a este vendedor|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T132394:0|t[Hacha barbada]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T133046:0|t[Martillo de roca] |cRXP_BUY_a este vendedor|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T133046:0|t[Martillo de roca] |cRXP_WARN_cuando estés en el nivel 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T133046:0|t[Martillo de roca]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T135147:0|t[Bastón nudoso] |cRXP_BUY_a este vendedor|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Cómprale una segunda|r |T135343:0|t[Cimitarra] |cRXP_BUY_para tu mano izquierda|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa la segunda|r |T135343:0|t[Cimitarra] |cRXP_WARN_en tu mano izquierda|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Entrega la misión El barril vacío de Chen
    .accept 821 >>Acepta la misión El barril vacío de Chen
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Wiley|r
    >>|cRXP_BUY_Compra|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|t[Pargos de lodo boquilargo] |cRXP_WARN_son extremadamente baratos, compra tantos como quieras|r
    .home >>Establece tu Piedra de hogar en Trinquete << !BloodElf !Undead
    .vendor >> Vende la Basura
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .bindlocation 392 << !BloodElf !Undead
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Elimina el|r |T133735:0|t[Manual de instrucciones de la consola de control] |cRXP_WARN_de tus bolsas, ya que ya no se necesita|r
step
    #optional
    #completewith BaronLongshore
    >>Mata a los |cRXP_ENEMY_Salteadores de los Mares del Sur|r y a los |cRXP_ENEMY_Cañoneros de los Mares del Sur|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << skip --Orc Rogue/Troll Rogue
    #optional
	#completewith SouthSea
	>>Mata a |cRXP_ENEMY_Tazan|r. Despójalo para obtener su |cRXP_LOOT_Cartera|r
    >>|cRXP_WARN_Patrulla colina arriba y abajo|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,63.57,49.14,0
    .goto The Barrens,62.64,49.72,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Mata al |cRXP_ENEMY_Barón Longavera|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Se le puede encontrar en uno de los campamentos|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    #label SouthSea
    #loop
    .goto The Barrens,64.23,47.10,0
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10,50,0
    >>Mata a los |cRXP_ENEMY_Salteadores de los Mares del Sur|r y a los |cRXP_ENEMY_Cañoneros de los Mares del Sur|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << skip --Orc Rogue/Troll Rogue
    .goto The Barrens,63.70,44.32,50,0
    .goto The Barrens,62.70,44.07,50,0
    .goto The Barrens,62.18,44.47
	>>Mata a |cRXP_ENEMY_Tazan|r. Despójalo para obtener su |cRXP_LOOT_Cartera|r
    >>|cRXP_WARN_Patrulla colina arriba y abajo|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Entrega la misión Los filibusteros de los Mares del Sur
    .turnin 895 >>Entrega la misión SE BUSCA: Barón Longavera
    .accept 890 >>Acepta la misión El envío perdido
    .target Gazlowe
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vertipeluca|r
    .turnin 1492 >>Entrega la misión Maestro de muelles Vertipeluca
    .turnin 890 >>Entrega la misión El envío perdido
    .accept 892 >>Acepta la misión El envío perdido
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Entrega la misión El envío perdido
    --.accept 888 >>Accept Stolen Booty
    .target Gazlowe
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T135353:0|t[Espadón] |cRXP_BUY_a este vendedor|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T135353:0|t[Espadón] |cRXP_WARN_cuando alcances el nivel 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T135353:0|t[Espadón]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T135147:0|t[Bastón nudoso] |cRXP_BUY_a este vendedor|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra una|r |T132394:0|t[Hacha barbada] |cRXP_BUY_a este vendedor|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T132394:0|t[Hacha barbada]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T133046:0|t[Martillo de roca] |cRXP_BUY_a este vendedor|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T133046:0|t[Martillo de roca] |cRXP_WARN_cuando estés en el nivel 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T133046:0|t[Martillo de roca]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T135147:0|t[Bastón nudoso] |cRXP_BUY_a este vendedor|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Cómprale una segunda|r |T135343:0|t[Cimitarra] |cRXP_BUY_para tu mano izquierda|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Vuela a El Cruce
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,55.27,37.82,0
    .goto The Barrens,48.33,36.75,0
    .goto The Barrens,55.27,37.82,80,0
    .goto The Barrens,53.84,38.52,80,0
    .goto The Barrens,52.63,38.07,80,0
    .goto The Barrens,49.49,37.20,80,0
    .goto The Barrens,48.33,36.75,80,0
    >>Termina de matar |cRXP_ENEMY_Zhebras|r. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r y |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Entrega la misión Suministros para El Cruce
    .turnin 872 >>Entrega la misión La perturbación termina
    .target +Thork
    .goto The Barrens,51.50,30.87
    .turnin 845 >>Entrega la misión La zhebra
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce << Tauren
    .accept 903 >>Acepta la misión Merodeadores en Los Baldíos
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Barg|r
    .vendor >>|cRXP_BUY_Compra|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_o|r |T132384:0|t[Heavy Shots] |cRXP_BUY_de él|r
    .target Barg
step
    #completewith RegtharDeathgate1
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .maxlevel 16
step
    #completewith next
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acepta la misión Los jefes Kolkar
    .target Regthar Deathgate
step
    #completewith Barak
    >>Recoge |cRXP_LOOT_Champiñones cargados|r alrededor de Las Charcas del Olvido
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
    #completewith next
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    >>|cRXP_WARN_Esta misión no tiene que ser completada ahora|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,41.62,23.42,0
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    >>Mata |cRXP_ENEMY_Merodeadores de la sabana|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r y |cRXP_LOOT_Colmillos|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #loop
    .goto The Barrens,44.55,23.53,0
    .goto The Barrens,44.55,23.53,40,0
    .goto The Barrens,45.09,22.04,40,0
    .goto The Barrens,45.43,22.93,40,0
    .goto The Barrens,44.97,24.03,40,0
    >>Recoge |cRXP_LOOT_Champiñones cargados|r alrededor de Las Charcas del Olvido
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entrega la misión Los jefes Kolkar
    .accept 851 >>Acepta la misión Verog el Derviche
    .target Regthar Deathgate
step
    #completewith CrossRoads3
    .subzone 380 >> Viaja a El Cruce
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entrega la misión Esporas de hongos
    .target Apothecary Helbrim
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Entrega la misión Merodeadores en Los Baldíos
    .accept 881 >>Acepta la misión Echeyakee
    .target Sergra Darkthorn
step
    #label CrossRoads3
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >> Entrega la misión Las Charcas del Olvido
    .accept 877 >> Acepta la misión El Oasis Estancado
    .target Tonga Runetotem
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entrega la misión Raptores ladrones
    .accept 3281 >>Acepta la misión La plata robada
    .target Gazrog
    .isQuestComplete 869
step
    #completewith Samophlange
    >>Mata a los |cRXP_ENEMY_Raptores|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,55.80,17.03
    >>Usa el |T134227:0|t[Cuerno de Echeyakee] para invocar a |cRXP_ENEMY_Echeyakee|r
    >>Mata a |cRXP_ENEMY_Echeyakee|r. Despójalo para obtener |cRXP_LOOT_Pellejo de Echeyakee|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r no aparece después de usar el|r |T134227:0|t[Cuerno de Echeyakee]|cRXP_WARN_ o no le diste el primer golpe al aparecer, salta este paso|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #optional
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r no apareció después de usar el|r |T134227:0|t[Cuerno de Echeyakee]|cRXP_WARN_ o no le diste el primer golpe al aparecer, abandona la misión Echeyakee, luego regresa a la ciudad y acéptala de nuevo|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Acepta la misión Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>Usa el |T134227:0|t[Cuerno de Echeyakee] para invocar a |cRXP_ENEMY_Echeyakee|r
    >>Mata a |cRXP_ENEMY_Echeyakee|r. Despójalo para obtener |cRXP_LOOT_Pellejo de Echeyakee|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Haz clic en la |cRXP_PICK_Consola de control|r
    .turnin 894 >>Entrega la misión El churumbele
    .accept 900 >>Acepta la misión El churumbele
step
    .goto The Barrens,52.33,11.57
    >>Haz clic en la |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_¡Ten cuidado! Dos enemigos aparecerán después de que cierres la Válvula|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>Haz clic en la |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Un enemigo aparecerá después de que cierres la Válvula|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>Haz clic en la |cRXP_PICK_Válvula|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>Haz clic en la |cRXP_PICK_Consola de control|r
    .turnin 900 >>Entrega la misión El churumbele
    .accept 901 >>Acepta la misión El churumbele
step
    .goto The Barrens,52.84,10.40
    >>Mata a |cRXP_ENEMY_Manitas el Risitas|r en el edificio. Despójalo para obtener su |cRXP_LOOT_Llave de la consola|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >>Haz clic en la |cRXP_PICK_Consola de control|r
    .turnin 901 >>Entrega la misión El churumbele
    .accept 902 >>Acepta la misión El churumbele
step
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto The Barrens,54.3,12.3,0
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    >>Mata a los |cRXP_ENEMY_Raptores|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Ahora deberías buscar un grupo para Sima Ígnea
    .dungeon RFC
step << Druid
	#completewith DruidTrainB1
	.cast 18960 >> Lanza Teletransporte a: Claro de la Luna
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 783 >> Aprende tus hechizos de clase << wotlk
    .train 8925 >> Aprende tus hechizos de clase << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8938 >> Aprende tus hechizos de clase
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
    .xp >20,1
step << Druid
    #label DruidTrainB1
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 6756 >> Aprende tus hechizos de clase
	.target Loganaar
    .cooldown item,6948,>0
	.xp <20,1
step << !Undead !BloodElf
    #completewith SamuTurnin1
    .hs >>Usa tu Piedra de hogar para ir a Trinquete
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 392,1
step << !Undead !BloodElf
    #completewith SamuTurnin1
    .subzone 392 >>Viaja a Trinquete
    .cooldown item,6948,<0
step << !Undead !BloodElf
    #label SamuTurnin1
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .turnin 902 >> Entrega la misión El churumbele
    .accept 1483 >>Acepta la misión Ziz Fizziks
    .target Sputtervalve
step << !Undead !BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .accept 959 >>Acepta la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
step << !Undead !BloodElf
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acepta la misión Cuernos de raptor
    .accept 1069 >>Acepta la misión Huevos de araña musgondo
    .target Mebok Mizzyrix
step << !Undead !BloodElf
    #completewith EcheyakeeTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Vuela a El Cruce
    .target Bragok
    .subzoneskip 380
step << Undead/BloodElf
    #completewith EcheyakeeTurnin
    .subzone 380 >>Viaja a El Cruce
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entrega la misión Raptores ladrones
    .accept 3281 >>Acepta la misión La plata robada
    .target Gazrog
step
    #label EcheyakeeTurnin
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Entrega la misión Echeyakee
    .accept 905 >>Acepta la misión Los segadores furiosos
    .target Sergra Darkthorn
step
    #completewith BarrensEnd
    .destroy 10327 >>|cRXP_WARN_Destruye el|r |T134227:0|t[Cuerno de Echeyakee] |cRXP_WARN_ya que ya no lo necesitas|r
step << Undead/BloodElf
    #completewith SamuTurnin2
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Vuela a Trinquete
    .target Devrak
    .subzoneskip 392
step << Undead/BloodElf
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .turnin 902 >> Entrega la misión El churumbele
    .accept 1483 >> Acepta la misión Ziz Fizziks
    .target Sputtervalve
step << Undead/BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .accept 959 >>Acepta la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
step << Undead/BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .accept 959 >>Acepta la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
step << Undead/BloodElf
    #label SamuTurnin2
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acepta la misión Cuernos de raptor
    .accept 1069 >>Acepta la misión Huevos de araña musgondo
    .target Mebok Mizzyrix
step << !BloodElf/Undead
    #completewith BarrensEnd
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Undead/BloodElf
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Crea|r |T133685:0|t[Vendas de lino] |cRXP_WARN_hasta que tu habilidad sea 40 o superior|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Omitir este paso si no tuviste suficiente|r |T132889:0|t[Paño de lino] |cRXP_WARN_para llegar a 40 de habilidad|r
    .train 3276 >> Aprende |T133688:0|t[Venda de lino gruesa]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >> |cRXP_WARN_Crea|r |T133688:0|t[Vendas de lino gruesas] |cRXP_WARN_hasta que tu habilidad sea 50 o superior|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Omite este paso si no tuviste suficiente|r |T132889:0|t[Paño de lino] |cRXP_WARN_para alcanzar a 50 de habilidad|r
    .train 3274 >> Aprende Oficial de primeros auxilios
    .target Arnok
    .skill firstaid,<40,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <18,1
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .train 6761 >>Aprende tus hechizos de clase
    .target Shenthul
step << skip --Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .train 6761 >>Aprende tus hechizos de clase
    .accept 2379 >>Acepta la misión Zando'Zan
    .target Shenthul
step << skip --Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Entrega la misión Zando'zan
    .accept 2382 >>Acepta la misión Desdio de Trinquete
    .target Zando'zan
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r y compra |T133738:0|t[Grimorio Sacrificio]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r y compra |T133738:0|t[Grimorio Descarga de Fuego (Rango 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Entrena los hechizos de tu mascota
    .target Xao'tsu
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Aprende el uso de Bastones
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Aprende el uso de Arcos
    .target Hanashi
step << Troll Warrior/Tauren Warrior/Undead Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprende el uso de Hachas de dos manos
    .train 227 >>Aprende el uso de Bastones
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un|r |T135490:0|t[Arco reforzado] |cRXP_BUY_a este vendedor|r
    .collect 3026,1,3281,1 --Collect Reinforced Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equipa el|r |T135490:0|t[Arco reforzado]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r (NOT TRANSLATED IN :esMX YET)
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step
    #completewith next
    .zone Durotar >>Sal de Orgrimmar
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>Mata a los |cRXP_ENEMY_Filo Ardiente|r en Roca del Cráneo hasta que obtengas una |cRXP_LOOT_Insignia de Teniente|r
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r (NOT TRANSLATED IN :esMX YET)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .isOnQuest 5726
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entrega la misión Enemigos ocultos
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5726
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .accept 5761 >>Acepta la misión Matar a la bestia
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isOnQuest 5727
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entrega la misión Enemigos ocultos
    .accept 5728 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5727
    .dungeon RFC
step
    #optional
    #label OrgPickups
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5728 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5727
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destruye la|r |T134417:0|t[Insignia de Teniente] |cRXP_WARN_ya que ya no la necesitas|r
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437,2 >> Entra por el portal de la instancia a Sima Ígnea. Entra en la mazmorra
    .dungeon RFC
step
    >>|cRXP_WARN_Si es posible, haz que los miembros del grupo compartan las siguientes misiones|r
    >>|cRXP_WARN_Skip this step if nobody has these quests|r (NOT TRANSLATED IN :esMX YET)
    .accept 5722 >>Acepta la misión Buscando la cartera perdida
    .accept 5723 >>Acepta la misión Midiendo fuerzas con el enemigo
    .dungeon RFC
step
    #completewith next
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>Entrega la misión Buscando la cartera perdida
    .accept 5724 >>Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step
    #label TroggsShamans
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    >>Mata a |cRXP_ENEMY_Taragaman el Hambriento|r. Despójalo para obtener su |cRXP_LOOT_Corazón|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>Mata a |cRXP_ENEMY_Bazzalan|r y a |cRXP_ENEMY_Jergosh el Convocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5761 >>Entrega la misión Matar a la bestia
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >>Entrega la misión Enemigos ocultos
    .accept 5729 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5729 >>Entrega la misión Enemigos ocultos
    .accept 5730 >>Acepta la misión Enemigos ocultos
    .target Neeru Fireblade
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >>Entrega la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    #optional
    #label BarrensEnd
step << Undead !Rogue/BloodElf !Rogue
    .hs >>Usa tu Piedra de hogar para ir a Tranquillien
    .bindlocation 3488,1
    .subzoneskip 3488
step << BloodElf Rogue/Undead Rogue
    .hs >>Usa tu Piedra de hogar para ir a Ciudad de Lunargenta
    .bindlocation 3487,1
    .subzoneskip 3487
step << !Undead !BloodElf
    #completewith ZeptoUC2
    .goto Durotar,45.54,12.14
    .zone Durotar >>Sal de Orgrimmar
step << !Undead !BloodElf
    #label ZeptoUC2
    .goto Durotar,50.8,13.8,40 >>Sube a la Torre del Zepelín
    .zone Tirisfal Glades >>Toma el zepelín hacia los Claros de Tirisfal
    .zoneskip Tirisfal Glades
step << !Undead !BloodElf
    #completewith PorttoSilvermoon2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >> Entra en Entrañas
    .zoneskip Undercity
step << !Undead !BloodElf
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Sube las escaleras
step << !Undead !BloodElf
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Use the |cRXP_PICK_Orbe de traslado|r
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Asegúrate de que has entrenado|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_para una misión después|r
    .accept 10372 >> Acepta la misión Una investigación discreta
    .train 6761 >>Aprende tus hechizos de clase
    .target Zelanis
    .xp <16,1
step << !BloodElf !Undead
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Sal de Lunargenta
    .zoneskip Silvermoon City,1
step << !BloodElf !Undead
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >> Vuela a Tranquillien
    .target Skymistress Gloaming
    .zoneskip Ghostlands
step << BloodElf Rogue/Undead Rogue
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Sal de Lunargenta
    .zoneskip Silvermoon City,1
step << BloodElf Rogue/Undead Rogue
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >> Vuela a Tranquillien
    .target Skymistress Gloaming
    .zoneskip Ghostlands

]])
