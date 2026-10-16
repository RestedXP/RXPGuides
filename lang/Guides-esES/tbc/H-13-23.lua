if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (H)
<< Horde
#name 13-18 Los Baldíos
#subgroup RestedXP Horda 1-30
#defaultfor Shaman
#next 18-23 Stonetalon/The Barrens

step << Tauren Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >> Entra en la Cueva Viento Seco
step << Tauren Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mata a los |cRXP_ENEMY_Cultores|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << !Tauren
    #completewith DemonMountain
    +|cRXP_WARN_La|r |T134095:0|t[La piedra de energía con imperfecciones] |cRXP_WARN_tiene una duración de 30 minutos. No te desconectes hasta que hayas completado la misión 'La Semilla del Demonio'|r
    .isOnQuest 924
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Viaja a la cima de la montaña
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Entrega la misión Thun'grim Vistafuego
    .accept 1503 >>Acepta la misión Acero fundido
    .target Thun'grim Firegaze
step << Warrior
    .goto The Barrens,55.05,26.65
    >>Despoja el |cRXP_PICK_Cofre de hierro robado|r para obtener sus |cRXP_LOOT_Barras de acero forjado|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Viaja a la cima de la montaña
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Entrega la misión Acero fundido
    .target Thun'grim Firegaze
step << !Warrior !Shaman
    #hardcore
    #completewith Xroadspickups
    .subzone 380 >>Viaja a El Cruce
step << !Warrior !Shaman
    #softcore
    #completewith Xroadspickups
    .deathskip >>Muérete en El Cruce
    .subzoneskip 380
step << !Warrior !Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acepta la misión Las Charcas del Olvido
    .target Tonga Runetotem
step << !Warrior !Shaman
    #optional
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Warrior !Shaman
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
    .target Sergra Darkthorn
step << !Warrior !Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acepta la misión Raptores ladrones
    .target Gazrog
step << !Warrior !Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Acepta la misión Interrupción de los ataques
    .accept 5041 >>Acepta la misión Suministros para El Cruce
    .target Thork
step << !Warrior !Shaman
    #label Xroadspickups
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Acepta la misión Esporas de hongos
    .accept 1492 >>Acepta la misión Maestro de muelles Vertipeluca
    .target Apothecary Helbrim
step
    #completewith PlainstriderBeaks
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #completewith DisruptTheAttacks
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Picos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren
    #completewith next
    #label DemonMountain
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.65,19.21,100 >> Viaja a la cima de la montaña
    .isOnQuest 924
step << !Tauren
    #completewith next
    #requires DemonMountain
    .goto The Barrens,47.65,19.21,15 >> Entra en Cubil Calígine
    .isOnQuest 924
step << !Tauren
    #label DemonSeed
    .goto The Barrens,47.97,19.07
    >>Haz clic derecho en el |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Asegúrate de tener una|r |T134095:0|t[Piedra de energía con imperfecciones] |cRXP_WARN_(duración de 30 minutos) contigo|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman
    #completewith DisruptTheAttacks
    >>Mata a un |cRXP_ENEMY_Buscaqua Crines de Acero|r o a un |cRXP_ENEMY_Tejespina Crines de Acero|r. Despójalos para obtener un |cRXP_LOOT_Alquitrán|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
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
    .use 4926 >>Despoja el |cRXP_PICK_Barril Vacío de Chen|r del suelo y comienza la misión
    >>|cRXP_WARN_Si no está disponible, lo conseguirás más adelante|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Acepta la misión El barril vacío de Chen
step
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Mata a los |cRXP_ENEMY_Buscaqua|r, a los |cRXP_ENEMY_Tejespina|r y a los |cRXP_ENEMY_Cazadores|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Shaman
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Mata a un |cRXP_ENEMY_Buscaqua Crines de Acero|r o a un |cRXP_ENEMY_Tejespina Crines de Acero|r. Despójalos para obtener un |cRXP_LOOT_Alquitrán|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #label PlainstriderBeaks
    .goto The Barrens,53.36,26.28,0
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
step << Orc/Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >> Entrega la misión Regreso a El Cruce
    .target Zargh
    .isOnQuest 6386
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r y |cRXP_FRIENDLY_Thork|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce << Tauren Shaman
    .turnin 844 >>Entrega la misión La amenaza de los zancudos de llanura
    .accept 845 >>Acepta la misión La zhebra
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 871 >>Entrega la misión Interrupción de los ataques
    .accept 872 >>Acepta la misión La perturbación termina
    .target +Thork
    .goto The Barrens,51.50,30.87
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Está en la cima de la torre|r
    .accept 867 >>Acepta la misión Arpías saqueadoras
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acepta la misión Maestro de muelles Vertipeluca
    .target Apothecary Helbrim
step << !Hunter !Rogue !Warlock !Mage !Priest
    #completewith next
    .goto The Barrens,52.5,30.7,0
    .vendor >>Revisa si |cRXP_FRIENDLY_Lizzarik|r está en El Cruce
    >>|cRXP_WARN_He sells potions and|r |T133476:0|t[|cRXP_FRIENDLY_Maza con pinchos pesada|r] |cRXP_WARN_which is a limited supply item|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << !Tauren
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >>Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 894
    .bindlocation 380
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >> Despoja el |cRXP_PICK_Barril Vacío de Chen|r del suelo y comienza la misión
    >>|cRXP_WARN_Espera a la reaparición si no ha aparecido|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
step
    #completewith SupplyCrates
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mata a las |cRXP_ENEMY_Geománticas Crines de Acero|r y a los |cRXP_ENEMY_Defensores Crines de Acero|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #completewith next
    >>Despoja el |cRXP_PICK_Cajón de suministros de El Cruce|r. Tiene múltiples localizaciones de aparición
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Mata a |cRXP_ENEMY_Kreenig Gruñucico|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step
    #label SupplyCrates
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Despoja el |cRXP_PICK_Cajón de suministros de El Cruce|r. Tiene múltiples localizaciones de aparición
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto The Barrens,59.37,25.38,0
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
step << !Tauren
    #optional
    #completewith next
    >>Mata a cualquier |cRXP_ENEMY_Zhebra|r que veas. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entrega la misión La Semilla del Demonio
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #completewith ShamanDurotar
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith ShamanDurotar
    >>Mata a cualquier |cRXP_ENEMY_Zhebra|r que veas. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
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
    #completewith FireEnd
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith next
    >>Mata a cualquier |cRXP_ENEMY_Zhebra|r que veas. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
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
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Mata |cRXP_ENEMY_Galopadores zhebra|r. Despójalos para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
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
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Consigue la ruta de vuelo de Trinquete
    .target Bragok
    .isQuestAvailable 895
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .accept 894 >>Acepta la misión El churumbele
    .target Sputtervalve
step
    .goto The Barrens,62.59,37.47
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 895 >>Acepta la misión SE BUSCA: Barón Longavera
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acepta la misión Cuernos de raptor
    .target Mebok Mizzyrix
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
    +|cRXP_WARN_Equip the|r |T135353:0|t[Espadon] |cRXP_WARN_when you reach level 16|r (NOT TRANSLATED IN :esMX YET)
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
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :esMX YET)
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
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
    +|cRXP_WARN_Equip the|r |T132394:0|t[Bearded Axe] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :esMX YET)
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp >15,1
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T132394:0|t[Hacha barbada]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <15,1
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
    +|cRXP_WARN_Equip the|r |T133046:0|t[Rock Hammer] |cRXP_WARN_when you reach level 16|r (NOT TRANSLATED IN :esMX YET)
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
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :esMX YET)
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
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
    .vendor >> Vende la Basura
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #optional
    #completewith BaronLongshore
    .destroy 5088 >> |cRXP_WARN_Elimina el|r |T133735:0|t[Manual de instrucciones de la consola de control] |cRXP_WARN_de tus bolsas, ya que ya no se necesita|r
step
    #completewith BaronLongshore
    >>Mata a los |cRXP_ENEMY_Salteadores de los Mares del Sur|r y a los |cRXP_ENEMY_Cañoneros de los Mares del Sur|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Mata al |cRXP_ENEMY_Barón Longavera|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Se le puede encontrar en uno de los campamentos|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
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
    .accept 896 >>Acepta la misión La fortuna de un minero
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Entrega la misión El envío perdido
    .accept 888 >>Acepta la misión Botín robado
    .target Gazlowe
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
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135353:0|t[Espadon] |cRXP_WARN_when you reach level 16|r (NOT TRANSLATED IN :esMX YET)
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
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :esMX YET)
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
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
    +|cRXP_WARN_Equip the|r |T132394:0|t[Bearded Axe] |cRXP_WARN_once you reach level 15|r (NOT TRANSLATED IN :esMX YET)
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp >15,1
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T132394:0|t[Hacha barbada]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <15,1
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
    #completewith FlyToXroads1
    +|cRXP_WARN_Equip the|r |T135147:0|t[Gnarled Staff] once you reach level 15 (NOT TRANSLATED IN :esMX YET)
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Shaman
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T135147:0|t[Bastón nudoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra una|r |T135343:0|t[Cimitarra] |cRXP_BUY_a este vendedor.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Cómprale una segunda|r |T135343:0|t[Cimitarra] |cRXP_BUY_para tu mano izquierda.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa la|r |T135343:0|t[Cimitarra]
    .use 923
    .itemcount 923,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Vuela a El Cruce
    .target Bragok
    .isQuestComplete 845
    .subzoneskip 380
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
    >>|cRXP_ENEMY_Zhevras|r. Despójalos para obtener |cRXP_LOOT_Pezuñas|r
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
    .accept 903 >>Acepta la misión Merodeadores en Los Baldíos
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Acepta la misión Consumido por el odio
    .accept 4921 >>Acepta la misión Perdida en la batalla
    .target Mankrik
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compra|r |T132384:0|t[Perdigones pesados] |cRXP_BUY_a este vendedor|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T135490:0|t[|cRXP_FRIENDLY_Arco largo refinado|r] |cRXP_BUY_si está disponible y abastécete de flechas|r
    >>|cRXP_WARN_Si no está disponible, compra un|r |T135490:0|t[Arco reforzado] |cRXP_WARN_en su lugar|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compra una|r |T135613:0|t[Bocarda de cazador] |cRXP_BUY_a este vendedor|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #completewith KodobaneTurnin
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acepta la misión Los jefes Kolkar
    .accept 855 >>Acepta la misión Los brazales centauro
    .target Regthar Deathgate
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
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Acepta la misión Verog el Derviche
    .target Regthar Deathgate
    .isQuestTurnedIn 850
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
    .goto The Barrens,41.51,19.09,0
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81,60,0
    >>Mata |cRXP_ENEMY_Arpías Alabruja|r y |cRXP_ENEMY_Malaplumas Alabruja|r. Despójalas para obtener sus |cRXP_LOOT_Garras|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #completewith Samophlange
    +|cRXP_WARN_Ten cuidado con los|r |cRXP_ENEMY_Segadores Solescama|r |cRXP_WARN_en la zona. Tienen hasta nivel 18 y pueden usar|r |T132152:0|t[Vapulear]
    --.dungeon !RFC
    .xp >17,1
step
    #completewith Samophlange
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r |cRXP_WARN_vende|r |T133476:0|t[|cRXP_FRIENDLY_Maza con pinchos pesada|r] |cRXP_WARN_que es un objeto de suministro limitado|r << Orc Warrior/Troll Warrior/Tauren Warrior/Shaman
	.vendor	>> Vende la basura y repara
    .target Vrang Sangrevaje
    .isQuestAvailable 901
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
    #completewith Ignition
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    .goto The Barrens,54.3,12.3,0
    >>Mata a los |cRXP_ENEMY_Raptores|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #xprate <1.5
    #optional
    .goto The Barrens,56.5,7.5
    .xp 16 >>Mata enemigos hasta subir al nivel 16
    >>|cRXP_WARN_Esto es importante, porque las siguientes 3 misiones son bastante difíciles|r
step
    #label Ignition
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r in The Sludge Fen
    >>|cRXP_FRIENDLY_Machacador de Rabiaire|r |cRXP_WARN_tiene un tiempo de reaparición largo. Considera omitir esta misión si hay mucha competencia|r
    .accept 858 >>Acepta la misión La llave de contacto
    .target Wizzlecrank's Shredder
step
    #completewith next
    +|cRXP_WARN_Ten cuidado si el|r |cRXP_ENEMY_Supervisor Asas|r |cRXP_WARN_o la|r |cRXP_ENEMY_Bestia de lodo|r |cRXP_WARN_están vivos. Son élites raros de nivel 19 muy fuertes|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>Kill |cRXP_ENEMY_Supervisor Palarrastre|r. Loot him for his |cRXP_LOOT_Llave|r. He patrols up and down the platform
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Machacador de Rabiaire|r
    >>|cRXP_FRIENDLY_Machacador de Rabiaire|r |cRXP_WARN_tiene un tiempo de reaparición largo. Considera omitir esta misión si hay mucha competencia|r
    >>|cRXP_WARN_Esto iniciará una escolta. Asegúrate de estar a plena salud|r
    .turnin 858 >>Entrega la misión La llave de contacto
    .accept 863,1 >>Acepta la misión La fuga
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Machacador de Rabiaire|r
    >>|cRXP_FRIENDLY_Machacador de Rabiaire|r |cRXP_WARN_tiene un tiempo de reaparición largo. Considera omitir esta misión si hay mucha competencia|r
    >>|cRXP_WARN_Esto iniciará una escolta. Asegúrate de estar a plena salud|r
    .accept 863,1 >>Acepta la misión La fuga
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_Dos|r |cRXP_ENEMY_Mercenarios de Ventura y Cía.|r |cRXP_WARN_aparecerán cuando la trituradora suba al terreno elevado. Mátalos y luego espera por su evento de RP al final|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label CatsEye
    .goto The Barrens,61.46,4.50,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Mata |cRXP_ENEMY_Déspotas de Ventura y Cía.|r y |cRXP_ENEMY_Sobrestantes de Ventura y Cía.|r. Despójalos para obtener la |cRXP_LOOT_Esmeralda ojo de gato|r
    >>|cRXP_WARN_Si no ha caído después de 25+ enemigos, puedes omitir esta misión|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #completewith SpiritsPickup
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Entra en Orgrimmar por la entrada occidental
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
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <18,1
step << !Orc !Troll
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_¡No vueles a ningún lado!|r
    .fp Orgrimmar >> Consigue la ruta de vuelo de Orgrimmar
    .zoneskip The Barrens
    .target Doras
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <18,1
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Pyreanor|r
    .train 7294 >>Aprende tus hechizos de clase
    .target Master Pyreanor
    .xp <16,1
    .xp >18,1
step << Paladin
    #optional
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Maestro Pyreanor|r
    .train 5573 >>Aprende tus hechizos de clase
    .target Master Pyreanor
    .xp <18,1
step
    #label SpiritsPickup
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Acepta la misión Los espíritus del Espolón
    .target Zor Lonetree
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    >>|cRXP_WARN_This is a prerequisite quest for Ragefire Chasm. Skip this step if you do not wish to do it|r (NOT TRANSLATED IN :esMX YET)
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5726
    .dungeon RFC
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .train 921 >> Aprende |T133644:0|t[Robar]
    .accept 2379 >>Acepta la misión Zando'Zan
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Entrega la misión Zando'zan
    .accept 2382 >>Acepta la misión Desdio de Trinquete
    .target Zando'zan
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
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
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
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
step << Warrior/Shaman/Paladin
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprende el uso de Hachas de dos manos
    .train 227 >>Aprende el uso de Bastones << !Paladin !Shaman
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un|r |T135490:0|t[Arco reforzado] |cRXP_BUY_a este vendedor|r
    .collect 3026,1,3281,1 --Collect Laminated Recurve Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith EcheyakeePickup
    +|cRXP_WARN_Equipa el|r |T135490:0|t[Arco reforzado]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior/Paladin/Shaman
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un|r |T135423:0|t[Hacha de batalla] |cRXP_BUY_a este vendedor|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith EcheyakeePickup
    +|cRXP_WARN_Equip the|r |T135423:0|t[Battle Axe] |cRXP_WARN_when you reach level 20|r (NOT TRANSLATED IN :esMX YET)
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith EcheyakeePickup
    +|cRXP_WARN_Equipa el|r |T135423:0|t[Hacha de batalla]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
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
    #completewith EcheyakeePickup
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Doras|r
    .fly Crossroads >>Vuela a El Cruce
    .target Doras
    .subzoneskip 380
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entrega la misión Raptores ladrones
    .accept 3281 >>Acepta la misión La plata robada
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entrega la misión Esporas de hongos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Está en la cima de la torre|r
    .turnin 867 >>Entrega la misión Arpías saqueadoras
    .accept 875 >>Acepta la misión Las tenientes arpías
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entrega la misión Las Charcas del Olvido
    .accept 877 >>Acepta la misión El Oasis Estancado
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Entrega la misión Merodeadores en Los Baldíos
    .accept 881 >>Acepta la misión Echeyakee
    .target Sergra Darkthorn
step
    .goto The Barrens,55.80,17.03
    >>Usa el |T134227:0|t[Cuerno de Echeyakee] para invocar a |cRXP_ENEMY_Echeyakee|r
    >>Mata a |cRXP_ENEMY_Echeyakee|r. Despójalo para obtener |cRXP_LOOT_Pellejo de Echeyakee|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r no aparece después de usar el|r |T134227:0|t[Cuerno de Echeyakee]|cRXP_WARN_ o no le diste el primer golpe al aparecer, salta este paso|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
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
    #completewith next
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #loop
    .goto The Barrens,40.28,15.49,0
    .goto The Barrens,40.28,15.49,40,0
    .goto The Barrens,39.50,14.68,40,0
    .goto The Barrens,39.47,13.24,40,0
    .goto The Barrens,38.94,12.80,40,0
    .goto The Barrens,38.18,12.56,40,0
    .goto The Barrens,37.96,13.52,40,0
    .goto The Barrens,38.62,13.95,40,0
    .goto The Barrens,38.18,14.62,40,0
    .goto The Barrens,38.14,15.59,40,0
    .goto The Barrens,37.29,15.68,40,0
    .goto The Barrens,37.24,16.26,40,0
    .goto The Barrens,37.67,16.34,40,0
    .goto The Barrens,38.35,17.08,40,0
    .goto The Barrens,38.83,17.71,40,0
    .goto The Barrens,39.37,17.21,40,0
    .goto The Barrens,39.87,16.66,40,0
    .goto The Barrens,40.15,15.98,40,0
    >>Mata a las |cRXP_ENEMY_Destripadoras Alabruja|r. Despójalas para obtener sus |cRXP_LOOT_Anillos|r
    >>|cRXP_WARN_Ten cuidado ya que las |cRXP_ENEMY_Destripadoras Alabruja|r lanzan|r |T135358:0|t[Ejecutar] |cRXP_WARN_(causa MUCHO daño cuando estás por debajo del 20% de salud), y las |cRXP_ENEMY_Emboscadoras Alabruja|r están en|r |T132320:0|t[Sigilo] |cRXP_WARN_y patrullan alrededor|r
    >>|cRXP_WARN_Ten cuidado con las|r |cRXP_ENEMY_Emboscadoras Alabruja|r|cRXP_WARN_. Están en sigilo y patrullan la zona|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 6808 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a El Cruce
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Entrega la misión Echeyakee
    .accept 905 >>Acepta la misión Los segadores furiosos
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Destruye el|r |T134227:0|t[Cuerno de Echeyakee] |cRXP_WARN_ya que ya no lo necesitas|r
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Está en la cima de la torre|r
    .turnin 875 >>Entrega la misión Las tenientes arpías
    .accept 876 >>Acepta la misión Serena Sangrepluma
    .target Darsok Swiftdagger
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Vuela a Trinquete
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Desdio|r
    .turnin 2382 >>Entrega la misión Desdio de Trinquete
    .accept 2381 >>Acepta la misión Saquear a los saqueadores
    .target Wrenix the Wretched
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r y |cRXP_FRIENDLY_Vertipeluca|r
    .turnin 902 >>Entrega la misión El churumbele
    .turnin 863 >>Entrega la misión La fuga
    .accept 3921 >>Acepta la misión Wenikee Tuercasmil << Hunter
    .accept 1483 >>Acepta la misión Ziz Fizziks
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Entrega la misión La fortuna de un minero
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r y |cRXP_FRIENDLY_Vertipeluca|r
    .turnin 902 >>Entrega la misión El churumbele
    .accept 3921 >>Acepta la misión Wenikee Tuercasmil << Hunter
    .accept 1483 >>Acepta la misión Ziz Fizziks
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Entrega la misión La fortuna de un minero
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .turnin 863 >>Entrega la misión La fuga
    .accept 1483 >>Acepta la misión Ziz Fizziks
    .target Sputtervalve
    .isQuestComplete 863
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .accept 1483 >> Acepta la misión Ziz Fizziks
    .target Sputtervalve
step
    #label RapHornsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acepta la misión Cuernos de raptor
    .accept 1069 >>Acepta la misión Huevos de araña musgondo
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Wiley|r
    >>|cRXP_BUY_Compra|r |T133918:0|t[Pargos de lodo boquilargo] |cRXP_BUY_a este vendedor|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|t[Pargos de lodo boquilargo] |cRXP_WARN_son extremadamente baratos, compra tantos como quieras|r
    .vendor >> Vende la Basura
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isQuestAvailable 888,865,3281,877,848
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Salta al barco, baja al 2.º piso y sube tu habilidad de Forzar cerraduras al menos hasta 70|r
step << Rogue
    .goto The Barrens,64.95,45.44
    >>Cuando tengas Forzar cerraduras al 70, ve al piso inferior del barco y abre |cRXP_PICK_La joya de los Mares del Sur|r
    >>|cRXP_WARN_Usa el|r |T134059:0|t[G.E.A.Q.] |cRXP_WARN_con|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto The Barrens,63.58,49.25
    >>Despoja el |cRXP_PICK_Cajón|r del suelo
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>Despoja el |cRXP_PICK_Cajón|r del suelo
    .complete 888,1 --Shipment of Boots (1)
step
    #completewith TestSeeds
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>Mata a los |cRXP_ENEMY_Segadores Solescama|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r y sus |cRXP_LOOT_Plumas|r
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Despoja la |cRXP_PICK_Plata robada|r del suelo
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Recoge los |cRXP_LOOT_Champiñones cargados|r alrededor de El Oasis Estancado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Haz clic en la |cRXP_PICK_Fisura burbujeante|r bajo el agua
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    #loop
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Mata a los |cRXP_ENEMY_Kolkar|r alrededor del oasis. Despójalos para obtener sus |cRXP_LOOT_Brazales|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    .goto The Barrens,52.95,41.75
    >>Mata a |cRXP_ENEMY_Verog|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Tiene probabilidad de aparecer cada vez que un |cRXP_ENEMY_Kolkar|r muere|r
    >>|cRXP_WARN_En un servidor muy poblado o en un lanzamiento nuevo, tu mejor opción es acampar en su punto de aparición|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto The Barrens,55.72,42.14,0
    .goto The Barrens,55.72,42.14,30,0
    .goto The Barrens,55.49,41.75,30,0
    .goto The Barrens,55.09,41.58,30,0
    .goto The Barrens,55.03,42.24,30,0
    .goto The Barrens,55.27,43.17,30,0
    .goto The Barrens,55.78,43.47,30,0
    .goto The Barrens,56.15,43.28,30,0
    .goto The Barrens,56.08,42.58,30,0
    >>Recoge los |cRXP_LOOT_Champiñones cargados|r alrededor de El Oasis Estancado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LakotaMani
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,52.60,46.10
    >>Haz clic en el |cRXP_PICK_Nido de raptor azul|r. Mata a más |cRXP_ENEMY_Segadores Solescama|r si no tienes una |T132914:0|t[Pluma de Solescama]
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Haz clic en el |cRXP_PICK_Nido de raptor rojo|r. Mata a más |cRXP_ENEMY_Segadores Solescama|r si no tienes una |T132914:0|t[Pluma de Solescama]
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Haz clic en el |cRXP_PICK_Nido de raptor amarillo|r. Mata a más |cRXP_ENEMY_Segadores Solescama|r si no tienes una |T132914:0|t[Pluma de Solescama]
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Termina de matar |cRXP_ENEMY_Segadores Solescama|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cadáver apaleado|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>Mata |cRXP_ENEMY_Morrotormentas|r. Despójalos para obtener un |cRXP_LOOT_Cuerno de truenagarto|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Mata a |cRXP_ENEMY_Lakota'mani|r. Despójalo para obtener la |T132318:0|t[|cRXP_LOOT_Pezuña de Lakota'mani|r]
    >>Usa la |T132318:0|t[|cRXP_WARN_Pezuña de Lakota'mani|cRXP_LOOT_] |rpara iniciar la misión|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    >>|cRXP_WARN_Omite este paso si no puedes encontrarlo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acepta la misión Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith SetCampTaurajoHS
    >>Mata |cRXP_ENEMY_Morrotormentas|r. Despójalos para obtener un |cRXP_LOOT_Cuerno|r
    >>|cRXP_WARN_This does not have to be completed now|r (NOT TRANSLATED IN :esMX YET)
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .subzone 378 >>Viaja al Campamento Taurajo
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
    .home >>Establece tu Piedra de hogar en el Campamento Taurajo
    .target Innkeeper Byula
    .isQuestAvailable 878
    .bindlocation 378
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 883 >>Entrega la misión Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .accept 878 >>Acepta la misión Tribus en guerra
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Consigue la ruta de vuelo del Campamento Taurajo << !Tauren
    .fly Crossroads >>Vuela a El Cruce
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >>Entrega la misión Esporas de hongos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r y |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entrega la misión Perdida en la batalla
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Entrega la misión El Oasis Estancado
    .accept 880 >>Acepta la misión Seres alterados
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Entrega la misión Los segadores furiosos
    .accept 3261 >>Acepta la misión Jorn Vidente del Cielo
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Entrega la misión La plata robada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step
    #completewith StonetalonPickups
    .destroy 5165 >>|cRXP_WARN_Elimina cualquier|r |T132914:0|t[Pluma de solescama]|cRXP_WARN_ que aún tengas|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compra un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a este vendedor|r
    .collect 11362,1,876,1 --Medium Quiver (1)
    .collect 2515,2200,876,1 --Sharp Arrow (2200)
    .target Uthrok
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Entrega la misión Verog el Derviche
    .accept 852 >>Acepta la misión Hezrul Marcasangre
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Acepta la misión Hezrul Marcasangre
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith StonetalonPickups
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label Serena
    .goto The Barrens,39.16,12.16
    >>Mata a |cRXP_ENEMY_Serena Sangrepluma|r. Despójala para obtener su |cRXP_LOOT_Cabeza|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    .goto The Barrens,35.26,27.88,100 >>Viaja a Sierra Espolón
    .zoneskip Stonetalon Mountains

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RestedXP Guía TBC (H)
<< Horde
#name 18-23 Stonetalon/The Barrens
#subgroup RestedXP Horda 1-30
#defaultfor Shaman
#next 23-25 Laderas de Trabalomas

step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >>Viaja a Sierra Espolón
    .zoneskip Stonetalon Mountains
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seereth|r y |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Entrega la misión Los espíritus del Espolón
    .accept 1062 >>Acepta la misión Los invasores goblin
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Acepta la misión Venga mi aldea
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>Mata |cRXP_ENEMY_Rufianes Tótem Siniestro|r y |cRXP_ENEMY_Mercenarios Tótem Siniestro|r en la zona
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Makaba|r
    .turnin 6548 >> Entrega la misión Venga mi aldea
    .accept 6629 >> Acepta la misión Mata a Grundig Nube Negra
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Sube por el camino hacia la hoguera
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Mata a |cRXP_ENEMY_Grundig Nube Negra|r y a los |cRXP_ENEMY_Toscos Tótem Siniestro|r
    >>|cRXP_WARN_Asegúrate de matar a los seis|r |cRXP_ENEMY_Tosco Tótem Siniestro|r |cRXP_WARN_antes de iniciar la misión adentro|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kaya|r
    .accept 6523,1 >> Acepta la misión Protege a Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escolta a |cRXP_FRIENDLY_Kaya|r y permanece cerca de ella
    >>|cRXP_WARN_¡Ten cuidado! Tres|r |cRXP_ENEMY_Tótem Siniestro|r |cRXP_WARN_aparecerán cuando llegues a la hoguera en el Campamento Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >> Acepta la misión Chupasangres
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Mata a cada |cRXP_ENEMY_Trepador Musgondo|r que veas
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Haz clic en el |cRXP_FRIENDLY_Cartel de Se busca|r
    .accept 6284 >>Acepta la misión Aracnofobia
step
    #completewith Besseleth1
    >>Mata |cRXP_ENEMY_Escupetósigos Musgondo|r y |cRXP_ENEMY_Trepadores Musgondo|r
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
step
    #completewith next
    >>Despoja los |cRXP_PICK_Huevos de araña|r cerca de los árboles
    >>|cRXP_WARN_¡Ten cuidado! Las|r Proles de Musgondo|cRXP_ENEMY_ tienen probabilidad de invocar a una|r |cRXP_WARN_Matriarca Musgondo |r |cRXP_ENEMY_de nivel 22|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Mata a |cRXP_ENEMY_Besseleth|r. Despójala para obtener su |cRXP_LOOT_Colmillo|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    .goto Stonetalon Mountains,54.99,76.03
    >>Mata |cRXP_ENEMY_Trepadores Musgondo|r
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >> Viaja hacia |cRXP_FRIENDLY_Ziz|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >>Entrega la misión Ziz Fizziks
    .accept 1093 >>Acepta la misión Súper Segadora 6000
    .target Ziz Fizziks
step
    #completewith Windshear
    >>Despoja los |cRXP_PICK_Huevos de araña|r cerca de los árboles
    >>|cRXP_WARN_¡Ten cuidado! Las|r Proles de Musgondo|cRXP_ENEMY_ tienen probabilidad de invocar a una|r |cRXP_WARN_Matriarca Musgondo |r |cRXP_ENEMY_de nivel 22|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .goto Stonetalon Mountains,59.25,61.55,50,0
    .goto Stonetalon Mountains,60.37,60.10,50,0
    .goto Stonetalon Mountains,61.34,59.15,50,0
    .goto Stonetalon Mountains,61.15,57.85,50,0
    .goto Stonetalon Mountains,61.41,56.77,50,0
    .goto Stonetalon Mountains,62.21,58.55,50,0
    .goto Stonetalon Mountains,63.12,60.02,50,0
    .goto Stonetalon Mountains,64.69,60.03,50,0
    .goto Stonetalon Mountains,62.76,61.69,50,0
    .goto Stonetalon Mountains,62.50,62.92,50,0
    .goto Stonetalon Mountains,62.48,64.15,50,0
    .goto Stonetalon Mountains,61.85,66.07,50,0
    .goto Stonetalon Mountains,60.71,66.12,50,0
    .goto Stonetalon Mountains,60.96,63.99,50,0
    .goto Stonetalon Mountains,60.25,63.21,50,0
    >>Mata a los |cRXP_ENEMY_Escupetósigo Musgondo|r
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step
    #completewith BluePrints
    >>Mata a los |cRXP_ENEMY_Madereros de Ventura y Cía.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compra una|r |T135423:0|t[Hacha de batalla] |cRXP_BUY_a este vendedor|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #completewith BluePrints
    +|cRXP_WARN_Equipa el|r |T135423:0|t[Hacha de batalla]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipa la|r |T135423:0|t[Hacha de batalla] |cRXP_WARN_cuando seas nivel 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >19,1
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compra una|r |T135324:0|t[Tizona] |cRXP_BUY_a este vendedor|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona] |cRXP_WARN_cuando seas nivel 21|r
    --.use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >20,1
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Mata a los |cRXP_ENEMY_Operadores de Ventura y Cía.|r. Despójalos para obtener sus |cRXP_LOOT_Planos|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #label Windshear
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>Mata a los |cRXP_ENEMY_Madereros de Ventura y Cía.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>Despoja los |cRXP_PICK_Huevos de araña|r cerca de los árboles
    >>|cRXP_WARN_¡Ten cuidado! Las|r Proles de Musgondo|cRXP_ENEMY_ tienen probabilidad de invocar a una|r |cRXP_WARN_Matriarca Musgondo |r |cRXP_ENEMY_de nivel 22|r
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
	#completewith next
	+|cRXP_WARN_Si tienes más de 15 |cRXP_LOOT_Huevos de Musgondo|r|cRXP_WARN_, separa el montón de los que te sobren (shift + clic), y elimínalos|r
    .itemcount 5570,16
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >> Entrega la misión Súper Segadora 6000
    .accept 1094 >> Acepta la misión Más instrucciones
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Mata a los |cRXP_ENEMY_Trepadores Musgondo|r
    >>|cRXP_WARN_Guarda cualquier|r |T134339:0|t[Glándula de veneno pequeña] |cRXP_WARN_que despojes|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >>Aprende tus hechizos de clase
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Aprende tus hechizos de clase
    .target Loganaar
    .xp <20,1
step
    #completewith JornSkyseerTurnin
    .hs >>Usa tu Piedra de hogar para ir al Campamento Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Byula
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 3261 >>Entrega la misión Jorn Vidente del Cielo
    .accept 882 >>Acepta la misión Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>Mata |cRXP_ENEMY_Morrotormenta|r. Despójalos para obtener un |cRXP_LOOT_Cuerno|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Esquirlas sangrientas|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Find & kill |cRXP_ENEMY_Lakota'mani|r (Gray Kodo) around this area. Loot him for |T132318:0|t[|cRXP_LOOT_Pezuña de Lakota'mani|r]. Use it to start the quest
    >>|cRXP_WARN_Omite esta misión si no puedes encontrarlo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acepta la misión Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Mata |cRXP_ENEMY_Morrotormenta|r. Despójalos para obtener un |cRXP_LOOT_Cuerno|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,50.71,54.60,0
    .goto The Barrens,50.71,54.60,60,0
    .goto The Barrens,50.74,55.33,60,0
    .goto The Barrens,50.73,56.78,60,0
    .goto The Barrens,50.42,57.23,60,0
    .goto The Barrens,50.50,57.65,60,0
    .goto The Barrens,50.87,57.50,60,0
    .goto The Barrens,51.26,57.84,60,0
    .goto The Barrens,51.74,57.69,60,0
    .goto The Barrens,51.79,57.10,60,0
    .goto The Barrens,53.08,54.69,60,0
    .goto The Barrens,53.65,54.27,60,0
    .goto The Barrens,53.63,53.53,60,0
    .goto The Barrens,53.35,52.72,60,0
    .goto The Barrens,53.00,51.83,60,0
    .goto The Barrens,52.62,52.19,60,0
    .goto The Barrens,52.59,52.71,60,0
    .goto The Barrens,52.41,53.07,60,0
    .goto The Barrens,52.32,53.71,60,0
    .goto The Barrens,51.39,54.22,60,0
    >>Kill |cRXP_ENEMY_Bristleback Quilboars|r. Loot them for their |cRXP_LOOT_Tusks|r (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Save the|r |T134128:0|t[|cRXP_LOOT_Esquirlas sangrientas|r] |cRXP_WARN_you get|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step << Warlock
    #xprate <1.5
    #loop
	.goto The Barrens,50.71,54.60,0
	.goto The Barrens,50.71,54.60,50,0
	.goto The Barrens,50.74,55.33,50,0
	.goto The Barrens,50.73,56.78,50,0
	.goto The Barrens,50.42,57.23,50,0
	.goto The Barrens,50.50,57.65,50,0
	.goto The Barrens,50.87,57.50,50,0
	.goto The Barrens,51.26,57.84,50,0
	.goto The Barrens,51.74,57.69,50,0
	.goto The Barrens,51.79,57.10,50,0
	.goto The Barrens,53.08,54.69,50,0
	.goto The Barrens,53.65,54.27,50,0
	.goto The Barrens,53.63,53.53,50,0
	.goto The Barrens,53.35,52.72,50,0
	.goto The Barrens,53.00,51.83,50,0
	.goto The Barrens,52.62,52.19,50,0
	.goto The Barrens,52.59,52.71,50,0
	.goto The Barrens,52.41,53.07,50,0
	.goto The Barrens,52.32,53.71,50,0
	.goto The Barrens,51.39,54.22,50,0
    .xp 19+11000 >> Mata enemigos hasta alcanzar 11000+/21300 de experiencia
    --To ensure lvl 20 before ORG visit class q pickup
step << Warlock
    #xprate >1.49
    #loop
	.goto The Barrens,50.71,54.60,0
	.goto The Barrens,50.71,54.60,50,0
	.goto The Barrens,50.74,55.33,50,0
	.goto The Barrens,50.73,56.78,50,0
	.goto The Barrens,50.42,57.23,50,0
	.goto The Barrens,50.50,57.65,50,0
	.goto The Barrens,50.87,57.50,50,0
	.goto The Barrens,51.26,57.84,50,0
	.goto The Barrens,51.74,57.69,50,0
	.goto The Barrens,51.79,57.10,50,0
	.goto The Barrens,53.08,54.69,50,0
	.goto The Barrens,53.65,54.27,50,0
	.goto The Barrens,53.63,53.53,50,0
	.goto The Barrens,53.35,52.72,50,0
	.goto The Barrens,53.00,51.83,50,0
	.goto The Barrens,52.62,52.19,50,0
	.goto The Barrens,52.59,52.71,50,0
	.goto The Barrens,52.41,53.07,50,0
	.goto The Barrens,52.32,53.71,50,0
	.goto The Barrens,51.39,54.22,50,0
    .xp 19+700 >> Grind to 700+/21300 xp (NOT TRANSLATED IN :esMX YET)
    --To ensure lvl 20 before ORG visit class q pickup
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Mata |cRXP_ENEMY_Morrotormenta|r. Despójalos para obtener un |cRXP_LOOT_Cuerno|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>Termina de matar |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>Mata |cRXP_ENEMY_Quijafortes de oasis|r en y alrededor del lago. Despójalos para obtener sus |cRXP_LOOT_Caparazones|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #completewith next
    >>Mata cualquier |cRXP_ENEMY_Zhebra|r. Despójala para obtener un |cRXP_LOOT_Cadáver reciente de zhebra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    .goto The Barrens,59.87,30.41
    .use 10338 >>|cRXP_WARN_Usa la|r |T134368:0|t[|cRXP_LOOT_Cadáver reciente de zhebra|r] |cRXP_WARN_junto al árbol muerto|r
    >>Kill |cRXP_ENEMY_Ishamuhale|r as he spawns. Loot him for his |cRXP_LOOT_Colmillo|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.00,36.42,100 >> Corre hacia Ratchet
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Desdio|r
    .turnin 2381 >>Entrega la misión Saquear a los saqueadores
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Entrega la misión Botín robado
    .target Gazlowe
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r, |cRXP_FRIENDLY_Mebok|r y |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Entrega la misión Más instrucciones
    .accept 1095 >>Acepta la misión Más instrucciones
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entrega la misión Cuernos de raptor
    .turnin 1069 >>Entrega la misión Huevos de araña musgondo
    .accept 1491 >>Acepta la misión Bebidas de inteligencia
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entrega la misión El barril vacío de Chen
    --.accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step
    #xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r, |cRXP_FRIENDLY_Mebok|r y |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Entrega la misión Más instrucciones
    .accept 1095 >>Acepta la misión Más instrucciones
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entrega la misión Cuernos de raptor
    .turnin 1069 >>Entrega la misión Huevos de araña musgondo
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entrega la misión El barril vacío de Chen
    --.accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Wiley|r
    .home >>Establece tu Piedra de hogar en Trinquete
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Buy |T134583:0|t[|cRXP_FRIENDLY_Pantalones de anillas poderosos|r] from him if it's available
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vexeje|r
    .vendor >> Buy |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r] from him if they're available
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Warrior/Paladin
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipa los|r |T134583:0|t[|cRXP_FRIENDLY_Pantalones de anillas poderosos|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipa los|r |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    #xprate <1.5
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .accept 959 >>Acepta la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
step
    #xprate >1.49
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .accept 959 >>Acepta la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Vuela a El Cruce
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Está en la cima de la torre|r
    .turnin 876 >>Entrega la misión Serena Sangrepluma
    .accept 1060 >>Acepta la misión Una carta para Jin'Zil
    .target Darsok Swiftdagger
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r y |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Entrega la misión Consumido por el odio
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Entrega la misión Seres alterados
    .accept 1489 >>Acepta la misión Hamuul Tótem de Runa
    .accept 3301 >>Acepta la misión Mura Tótem de Runa
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
step
    #completewith TribesTurnin
    .destroy 5085 >>|cRXP_WARN_Elimina los|r |T133721:0|t[Colmillos de jabaespín Erizapúas] |cRXP_WARN_sobrantes que aún puedas tener|r
    .itemcount 5085,1
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul|r
    .trainer >> Aprende tus hechizos de clase
    .accept 1507 >>Acepta la misión Devoradora de almas
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r y compra |T133738:0|t[Grimorio Tormento (Rango 2)]
    .collect 16346,1,1509,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto Orgrimmar,47.05,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Entrega la misión Devoradora de almas
    .accept 1508 >>Acepta la misión Cazul, el ciego
    .target Cazul
step << Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_a esta vendedora|r
    .collect 5210,1,1509,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Entrega la misión Cazul, el ciego
    .accept 1509 >>Acepta la misión Noticias de Dogran
    .target Zankaja
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Vuela a El Cruce
    .zoneskip Orgrimmar,1
    .subzoneskip 380
    .target Doras
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Entrega la misión Noticias de Dogran
    .accept 1510 >>Acepta la misión Noticias de Dogran
    .target Gazrog
step << !Tauren !Warrior !Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Inicia una misión cronometrada de 45 minutos|r
    .accept 853 >> Acepta la misión Boticaria Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step << !Tauren !Warrior !Shaman
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Estás en una misión cronometrada, no te vayas AFK. Se entregará 20-30 minutos después de aceptarla|r
    .isOnQuest 853
step
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Vuela al Campamento Taurajo
    .target Devrak
    .subzoneskip 378
step
    .goto The Barrens,44.55,59.27
    >>Mata |cRXP_ENEMY_Jabaespines Erizapúas|r. Despójalos para obtener una |T134128:0|t[|cRXP_LOOT_Esquirla de sangre|r]
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .turnin 878 >>Entrega la misión Tribus en guerra
    .accept 5052 >>Acepta la misión Esquirlas de sangre de Agamaggan
    .turnin 5052 >>Entrega la misión Esquirlas de sangre de Agamaggan
    .target Mangletooth
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .turnin 883 >>Entrega la misión Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Mata a |cRXP_ENEMY_Owatanka|r. Despójalo para obtener |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r]
    >>|cRXP_WARN_Usa la |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r] para iniciar la misión|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acepta la misión Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    .goto The Barrens,44.32,60.84,60,0
    >>Mata a los |cRXP_ENEMY_Truenagartos|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Entrega la misión Owatanka
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
    .accept 913 >>Acepta la misión El chillido del halcón trueno
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
    .accept 913 >>Acepta la misión El chillido del halcón trueno
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Mata a |cRXP_ENEMY_Owatanka|r. Despójalo para obtener |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r]
    >>|cRXP_WARN_Use |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r] to start the quest|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acepta la misión Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Mata a una |cRXP_ENEMY_Prole de Halcón Trueno|r o a un |cRXP_ENEMY_Desechanube Halcón Trueno|r. Despójalo para obtener |cRXP_LOOT_Alas de halcón trueno|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 884 >>Entrega la misión Owatanka
    .turnin 913 >>Entrega la misión El chillido del halcón trueno
    .accept 874 >>Acepta la misión Mahren Vidente del Cielo
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 913 >>Entrega la misión El chillido del halcón trueno
    .accept 874 >>Acepta la misión Mahren Vidente del Cielo
    .accept 6382 >>Acepta la misión La Caza de Vallefresno
    .target Jorn Skyseer
step << !Tauren !Shaman
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .aura 16618 >>|cRXP_WARN_Si te quedan 10|r |T134128:0|t[|cRXP_LOOT_Esquirlas de sangre|r |cRXP_WARN_, úsalas para obtener|r |T136022:0|t[Espíritu del viento] |cRXP_WARN_de|r |cRXP_FRIENDLY_Quebrantadientes|r
    >>|cRXP_WARN_Omite este paso si tienes la ruta de vuelo de Cima del Trueno|r
    .itemcount 5075,10
    .train 5118,1 << Hunter --skips step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step << !Tauren !Shaman
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Viaja a Mulgore
step << !Tauren !Shaman
    #completewith ZamahTurnin
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Toma el ascensor hacia Cima del Trueno
    >>|cRXP_WARN_Si tienes la ruta de vuelo de Cima del Trueno, vuela allí en su lugar|r
step << Tauren/Shaman
    #completewith ZamahTurnin
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Vuela a Cima del Trueno
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu Piedra de hogar en Cima del Trueno
    .target Innkeeper Pala
    .dungeon !WC
    .bindlocation 1638
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >>Deposita tus |T134128:0|t[Esquirlas de sangre]
    --.bankdeposit 5059 >>Deposit your |T132938:0|t[Digging Claw]
    .target Chesmu
step << Warrior !Tauren/Shaman/Paladin
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Aprende el uso de Mazas de dos manos
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Aprende el uso de Bastones
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Aprende el uso de Mazas
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,38.95,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Compra |r |T135423:0|t[Hacha arrojadiza mortal] |cRXP_BUY_a este vendedor|r
    .collect 25875,1,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    #completewith ZamahTurnin
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Viaja al Alto de los Espíritus y entra en las pozas de las visiones
step
    #xprate <1.5
    #completewith ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_Patrulla por los alrededores|r
    .accept 264 >> Acepta la misión Hasta que la muerte nos separe
    .target Clarice Foster
step
    #xprate <1.5
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Entrega la misión Boticaria Zamah
    .accept 962 >> Acepta la misión Reptilia
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <1.5
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Acepta la misión Reptilia
    .target Apothecary Zamah
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Entrega la misión Boticaria Zamah
    .target Apothecary Zamah
    .isOnQuest 853
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .accept 5644 >> Acepta la misión Peste devoradora << Undead Priest
    .accept 5642 >> Acepta la misión Guardia de las Sombras << Troll Priest
    .trainer >> Aprende tus hechizos de clase
    .target Miles Welsh
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <22,1
step
    #xprate <1.5
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clarice|r
    >>|cRXP_WARN_Patrulla por los alrededores|r
    .accept 264 >> Acepta la misión Hasta que la muerte nos separe
    .target Clarice Foster
step
    #optional
    #label ZamahTurnin
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>Acepta la misión La llamada del agua
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >> |cRXP_WARN_Crea|r |T133688:0|t[Vendas de lino gruesa] |cRXP_WARN_hasta que tu habilidad sea 80 o superior|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Omite este paso si no tuviste suficiente|r |T132889:0|t[Paño de lino] |cRXP_WARN_para llegar a 80 de habilidad|r
    .train 3277 >> Aprende |T133684:0|t[Venda de lana]
    .train 7934 >> Aprende |T134437:0|t[Contraveneno] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Crea|r |T134437:0|t[Contraveneno] |cRXP_WARN_si encontraste alguna|r |T134339:0|t[Glándula de veneno pequeña]
    >>|cRXP_WARN_Guárdalos para más adelante|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step
    #completewith WCRFCTUrnins
    .goto Thunder Bluff,69.88,30.90,80 >> Viaja al Alto de los Ancestros
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entrega la misión La vuelta de la cartera perdida
    .turnin 5723 >>Entrega la misión Midiendo fuerzas con el enemigo
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entrega la misión La vuelta de la cartera perdida
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >>Entrega la misión Midiendo fuerzas con el enemigo
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Entrega la misión Hamuul Tótem de Runa
    .accept 1490 >> Acepta la misión Nara Ferocrín
    .target Arch Druid Hamuul Runetotem
    .dungeon WC << !Druid
step << Druid
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Entrega la misión Nara Ferocrín
    .target Nara Wildmane
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Entrega la misión Nara Ferocrín
    .accept 914 >> Acepta la misión Líderes del Colmillo
    .target Nara Wildmane
    .dungeon WC
step
    #optional
    #label WCRFCTUrnins
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak|r
    .trainer >> Aprende tus hechizos de clase
    .accept 27 >> Acepta la misión Una lección que aprender
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita|r
    .turnin 27 >> Entrega la misión Una lección que aprender
    .accept 28 >> Acepta la misión La prueba del lago
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>Loot the |cRXP_PICK_Adorno contenedor|r at the bottom of the lake for a |T134125:0|t[|cRXP_LOOT_Shrine Bauble|r]
    >>|cRXP_WARN_NO te sumerjas hasta que estés justo encima del Adorno|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >> |cRXP_WARN_Usa el|r |T134125:0|t[Adorno de altar] |cRXP_WARN_en el Santuario de Remulos|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Entrega la misión La prueba del lago
    .accept 30 >> Acepta la misión La prueba del león marino
    .target Tajarri
step << Druid
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
    .use 6948
    .cooldown item,6948,>0
    .zoneskip Moonglade,1
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Vuela a Cima del Trueno
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Moonglade,1
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >> Acepta la misión La llama sacra
    .target Zangen Stonehoof
step
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >> Viaja al Alto de los Cazadores
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>Acepta la misión Metaleador
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Entrena los hechizos de tu mascota
    .target Hesuwa Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torm|r
    .train 845 >> Aprende tus hechizos de clase
    .accept 1823 >> Acepta la misión Habla con Ruga
    .target Torm Ragetotem
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compra una|r |T135324:0|t[Tizona] |cRXP_BUY_a este vendedor.|r
    .collect 923,1,6562,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Warrior/Shaman/Paladin
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Si es más barato puedes comprar un arma verde de la casa de subastas en su lugar|r
step << Warrior/Paladin/Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Compra un|r |T135423:0|t[Hacha de batalla] |cRXP_BUY_a este vendedor|r
    .collect 926,1,6562,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Etu Ragetotem
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equipa el|r |T135423:0|t[Hacha de batalla]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_a esta vendedora|r
    .collect 3027,1,6562,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Tronacuerno
step << Hunter
    #completewith KayaLives
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a esta vendedora|r
    .collect 2515,1600,6562,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Tronacuerno
step
    #sticky
    #completewith EnterWC
    .subzone 718 >> Ahora debes buscar un grupo para Cuevas de los Lamentos
    .dungeon WC
step
    #completewith Hezrul
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Vuela a El Cruce
    .target Tal
    .subzoneskip 380
step
    #xprate <1.5
    .goto The Barrens,46.15,36.93,100 >> Viaja a Cuevas de los Lamentos
    .isOnQuest 1491
step
    #xprate >1.49
    .goto The Barrens,46.15,36.93,100 >> Viaja a Cuevas de los Lamentos
    .isOnQuest 1491
    .dungeon WC
step
    #xprate <1.5
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Sube por la montaña hasta la roca de encuentro de Las Cavernas de los Lamentos
    >>|cRXP_WARN_Sigue de cerca la flecha para llegar a la cueva oculta|r
step
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Se encuentra encima de la entrada de las Cuevas de los Lamentos|r
    .accept 1486 >>Acepta la misión Pellejos descarriados
    .target Nalpak
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Se encuentran arriba de la entrada de las Cuevas de los Lamentos|r
    .accept 1486 >> Acepta la misión Pellejos descarriados
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >> Acepta la misión Erradicación de descarriados
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #xprate <1.5
    #optional
    #completewith EnterWC
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Ocultar|r
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
step
    #xprate <1.5
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Mata al |cRXP_ENEMY_Loco Magglish|r. Despójalo para obtener el |cRXP_LOOT_Oporto con 99 años de antigüedad|r
    >>|cRXP_WARN_Está oculto y tiene múltiples ubicaciones de aparición|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición largo. Omite este paso si no puedes encontrarlo|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
step
    #xprate >1.49
    #optional
    #completewith EnterWC
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Ocultar|r
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .dungeon WC
step
    #xprate >1.49
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Mata al |cRXP_ENEMY_Loco Magglish|r. Despójalo para obtener el |cRXP_LOOT_Oporto con 99 años de antigüedad|r
    >>|cRXP_WARN_Está oculto y tiene múltiples ubicaciones de aparición|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición largo. Omite este paso si no puedes encontrarlo|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >> Entra por el portal de la instancia a las Cuevas de los Lamentos. Entra en la mazmorra
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #completewith GlowingShard
    >>Mata |cRXP_ENEMY_Devastadores descarriados|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Arrastrapiés|r y |cRXP_ENEMY_Colminfernos|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Mata a |cRXP_ENEMY_Lord Cobrahn|r, |cRXP_ENEMY_Lady Anacondra|r, |cRXP_ENEMY_Lord Pythas|r y a |cRXP_ENEMY_Lord Serpentis|r. Despójalos para obtener sus |cRXP_LOOT_Gemas|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Discípulo de Naralex|r en la entrada de Cuevas de los Lamentos. Escóltalo a salvo hasta |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Una vez que hayas llegado a |cRXP_FRIENDLY_Naralex|r, serás atacado por dos oleadas de enemigos y finalmente por |cRXP_ENEMY_Mutanus el Devorador|r
    >>Mátalo y despójalo para obtener el |T135229:0|t[|cRXP_LOOT_Fragmento resplandeciente|r] y úsalo para iniciar la misión
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Acepta la misión El fragmento resplandeciente
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #label DeviateRaptors
    >>Mata |cRXP_ENEMY_Devastadores descarriados|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Arrastrapiés|r y |cRXP_ENEMY_Colminfernos|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +|cRXP_WARN_El resto de estas misiones pueden completarse fuera de Cuevas de los Lamentos|r
    .dungeon WC
step
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #xprate <1.5
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Hides|r (NOT TRANSLATED IN :esMX YET)
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
step
    #xprate <1.5
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #xprate <1.5
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #xprate >1.49
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Kill |cRXP_ENEMY_Deviate Beasts|r. Loot them for their |cRXP_LOOT_Hides|r (NOT TRANSLATED IN :esMX YET)
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .dungeon WC
step
    #xprate >1.49
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #xprate >1.49
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Puedes omitir esta misión si hay demasiada competencia|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #completewith GShard
    .hs >> Usa tu Piedra de hogar para ir a Trinquete
    .use 6948
    .dungeon WC
    .bindlocation 392,1
    .subzoneskip 392
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Entrega la misión Bebidas de inteligencia
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .turnin 959 >> Entrega la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .turnin 1529 >>Entrega la misión La llamada del agua
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
    .dungeon WC
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .turnin 1528 >>Entrega la misión La llamada del agua
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
    .dungeon WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
    .dungeon WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Vuela a El Cruce
    .target Bragok
    .subzoneskip 392,1
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >> Sube por la montaña
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fala|r
    .turnin 6981 >> Entrega la misión El fragmento resplandeciente
    .accept 3369 >> Acepta la misión En las pesadillas
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fala|r
    .accept 3369 >> Acepta la misión En las pesadillas
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Se encuentra encima de la entrada de las Cuevas de los Lamentos|r
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Se encuentra encima de la entrada de las Cuevas de los Lamentos|r
    .turnin 1486 >>Entrega la misión Pellejos descarriados
    .target Nalpak
    .isQuestComplete 1486
step
    #xprate >1.49
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Se encuentra encima de la entrada de las Cuevas de los Lamentos|r
    .turnin 1486 >>Entrega la misión Pellejos descarriados
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step << skip
    #completewith next
    >>Mata a los |cRXP_ENEMY_Kolkar|r alrededor del oasis. Despójalos para obtener sus |cRXP_LOOT_Brazales|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
step
    #loop
    #label Hezrul
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    .goto The Barrens,45.64,38.16,50,0
    >>Encuentra y mata a |cRXP_ENEMY_Hezrul Marcasangre|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrulla alrededor del lago|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #completewith CounterattackComplete
    .abandon 855 >> Abandona la misión Los brazales centauro si no has despojado suficientes objetos anteriormente para que valga la pena terminarla
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Entrega la misión Hezrul Marcasangre
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Entrega la misión Hezrul Marcasangre
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #softcore
    #completewith CounterattackComplete
    +|cRXP_WARN_La próxima misión es muy difícil y se recomienda formar un grupo. Puedes kitear al |cRXP_ENEMY_Señor de la guerra Krom'zar|r alrededor del edificio donde se encuentra el PNJ que da la misión|r
    .isQuestTurnedIn 852
step
    #hardcore
    #completewith CounterattackComplete
    +|cRXP_WARN_La próxima misión es muy difícil y se recomienda formar un grupo. Puedes kitear al |cRXP_ENEMY_Señor de la guerra Krom'zar|r alrededor del edificio donde se encuentra el PNJ que da la misión|r
    >>|cRXP_WARN_Hay un alto riesgo de morir cuando estás solo y no estás familiarizado con esta misión|r
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acepta la misión ¡Contraataca!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Mata al |cRXP_ENEMY_Señor de la guerra Krom'zar|r una vez que aparece. Despoja el |cRXP_PICK_Estandarte|r que deja en el suelo
    >>|cRXP_WARN_¡Ten cuidado! Es un élite fuerte y está custodiado por al menos dos|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_enemigos|r
    >>|cRXP_WARN_Puede tardar hasta 3 minutos en reaparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Entrega la misión ¡Contraataca!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Entrega la misión ¡Contraataca!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #completewith next
    .zone Stonetalon Mountains >> Viaja a Sierra Espolón
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seereth|r y |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entrega la misión Los invasores goblin
    .timer 4,Los invasores goblin RP
    .accept 1063 >>Acepta la misión La bruja anciana
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Entrega la misión Mata a Grundig Nube Negra
    .turnin 6523 >>Entrega la misión Protege a Kaya
    .accept 6401 >>Acepta la misión Kaya está viva
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #completewith BloodFeedersTI
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >> Sigue el camino de la izquierda hacia arriba
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jin'Zil|r
    .turnin 1060 >> Entrega la misión Una carta para Jin'Zil
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entrega la misión Noticias de Dogran
    .accept 1511 >>Acepta la misión Jarabe de Ken'zigla
    .target Ken'zigla
step
    #label BloodFeedersTI
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entrega la misión Chupasangres
    .target Xen'Zilla
step
    #xprate >1.49
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Entrega la misión Más instrucciones
    .target Ziz Fizziks
    .dungeon !BFD
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Viaja al Refugio Roca del Sol
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Jayka|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jeeda|r en el segundo piso de la posada
    .vendor >>|cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_si están disponibles|r << !Warrior
    .vendor >>|cRXP_BUY_Cómprale|r |T134831:0|t[Pociones de sanación] |cRXP_BUY_y|r |T134413:0|t[Vidarraíz] |cRXP_BUY_si están disponibles|r << Warrior
    .target Jeeda
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Entrega la misión Aracnofobia
    .target Maggran Earthbinder
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Entrega la misión Kaya está viva
    .target Tammra Windfield
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Consigue la ruta de vuelo del Refugio Roca del Sol
    .target Tharm
    .subzoneskip 460,1
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Sube por el camino hacia la derecha
step
    #xprate <1.5
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Acepta la misión Problemas en las profundidades
    .target Tsunaman
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Entrega la misión Más instrucciones
    .target Ziz Fizziks
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Entra en El Paso del Espolón
step
    #xprate <1.5
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Viaja hacia la Avanzada de Zoram'gar
    .subzoneskip 2897
    >>|cRXP_WARN_Asegúrate de evitar a los guardias de Astranaar en el camino. Sigue la ruta marcada para mayor seguridad|r
    .unitscan Astranaar Sentinel
step
    #xprate <1.5
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Consigue la ruta de vuelo de la Avanzada de Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r y |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Entrega la misión Problemas en las profundidades
    .accept 6563 >>Acepta la misión La esencia de Aku'Mai
    .accept 6921 >>Acepta la misión Entre ruinas
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Acepta la misión Entre una roca y un Piel de Cardo
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Acepta la misión El talismán trol
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Acepta la misión Nagas en la Ensenada de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon BFD
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r y |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Entrega la misión Problemas en las profundidades
    .accept 6563 >>Acepta la misión La esencia de Aku'Mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Acepta la misión Entre una roca y un Piel de Cardo
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Acepta la misión El talismán trol
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Acepta la misión Nagas en la Ensenada de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon !BFD
step
    #xprate <1.5
    #softcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Esto iniciará una misión de escolta. Ten cuidado porque es difícil|r
    .accept 6641,1 >> Acepta la misión Vorsha la Azotadora
    .target Muglash
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_¡Esto iniciará una misión de escolta. ¡Ten mucho cuidado! |cRXP_ENEMY_Vorsha|r pega muy fuerte. Se recomienda agruparse|r
    .accept 6641,1 >> Acepta la misión Vorsha la Azotadora
    .target Muglash
step
    #xprate <1.5
    #completewith next
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #xprate <1.5
    #softcore
    .goto Ashenvale,9.63,27.63
    >>Haz clic en el |cRXP_PICK_Blandón|r cuando llegues allí
    >>|cRXP_WARN_Habrá olas de|r |cRXP_ENEMY_Naga|r |cRXP_WARN_que aparecen. Ten cuidado cuando|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_salga, pega muy fuerte|r
    >>|cRXP_WARN_Deja que|r Muglash|cRXP_FRIENDLY_ |ratraiga amenaza antes de atacar a|cRXP_WARN_ |cRXP_ENEMY_Vorsha|r!|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,9.63,27.63
    >>Haz clic en el |cRXP_PICK_Blandón|r cuando llegues allí
    >>|cRXP_WARN_Habrá olas de|r |cRXP_ENEMY_Naga|r |cRXP_WARN_que aparecen. Ten cuidado cuando|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_salga, pega muy fuerte|r
    >>|cRXP_WARN_Deja que|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_atraiga amenaza antes de pelear con él|r
    >>|cRXP_WARN_Prepárate para usar descansos y pociones, ya que|cRXP_ENEMY_ Vorsha|r puede hacerte un golpe crítico por daño alto|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Ahora deberías buscar un grupo para Cavernas de Brazanegra
    .dungeon BFD
step
    #xprate <1.5
    #loop
    .goto Ashenvale,10.86,26.99,0
    .goto Ashenvale,10.86,26.99,50,0
    .goto Ashenvale,11.23,25.73,50,0
    .goto Ashenvale,11.83,25.75,50,0
    .goto Ashenvale,12.51,24.09,50,0
    .goto Ashenvale,14.18,24.03,50,0
    .goto Ashenvale,14.85,23.08,50,0
    .goto Ashenvale,14.13,20.77,50,0
    .goto Ashenvale,14.73,19.56,50,0
    .goto Ashenvale,14.59,17.90,50,0
    .goto Ashenvale,13.38,16.39,50,0
    .goto Ashenvale,13.62,14.48,50,0
    .goto Ashenvale,14.15,15.31,50,0
    .goto Ashenvale,15.88,15.42,50,0
    .goto Ashenvale,15.40,16.96,50,0
    .goto Ashenvale,15.22,18.81,50,0
    .goto Ashenvale,15.33,20.78,50,0
    .goto Ashenvale,15.33,22.51,50,0
    .goto Ashenvale,15.32,24.90,50,0
    .goto Ashenvale,14.76,25.52,50,0
    .goto Ashenvale,14.62,26.49,50,0
    .goto Ashenvale,14.52,28.25,50,0
    .goto Ashenvale,13.55,29.36,50,0
    .goto Ashenvale,12.41,29.15,50,0
    .goto Ashenvale,11.22,31.04,50,0
    .goto Ashenvale,10.38,29.60,50,0
    .goto Ashenvale,11.01,28.57,50,0
    >>Mata |cRXP_ENEMY_Nagas Colafuria|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #xprate <1.5
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Viaja a la entrada de las Cavernas de Brazanegra
step
    #xprate <1.5
    #completewith next
    >>Despoja el |cRXP_LOOT_Zafiro de Aku'Mai|r de la pared
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #xprate <1.5
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Mata a las |cRXP_ENEMY_Sacerdotisas de las mareas Brazanegra|r. Despójalas para obtener una |T134332:0|t[|cRXP_LOOT_Nota mojada|r] y úsala para iniciar la misión
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Acepta la misión Lealtad a los dioses antiguos
    .mob Blackfathom Tide Priestess
    .use 16790
step
    #xprate <1.5
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionally talk to|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_back at Zoram'gar Outpost to get another BFD follow-up quest|r (NOT TRANSLATED IN :esMX YET)
    .turnin 6564 >>Entrega la misión Lealtad a los dioses antiguos
    .accept 6565 >>Acepta la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate <1.5
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Despoja el |cRXP_LOOT_Zafiro de Aku'Mai|r de la pared
    .complete 6563,1 --Sapphire of Aku'Mai (20
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >> Sube por el camino hacia la derecha
    .dungeon BFD
step
    #xprate >1.49
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tsunaman|r
    .accept 6562 >>Acepta la misión Problemas en las profundidades
    .target Tsunaman
    .dungeon BFD
step
    #xprate >1.49
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Entrega la misión Más instrucciones
    .target Ziz Fizziks
    .dungeon BFD
step
    #xprate >1.49
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >> Ahora deberías buscar un grupo para Cavernas de Brazanegra
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >> Entra en El Paso del Espolón
    .dungeon BFD
step
    #xprate >1.49
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Viaja hacia la Avanzada de Zoram'gar
    .subzoneskip 2897
    >>|cRXP_WARN_Asegúrate de evitar a los guardias de Astranaar en el camino. Sigue la ruta marcada para mayor seguridad|r
    .unitscan Astranaar Sentinel
    .dungeon BFD
step
    #xprate >1.49
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >> Consigue la ruta de vuelo de la Avanzada de Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
    .dungeon BFD
step
    #xprate >1.49
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Je'neu|r (NOT TRANSLATED IN :esMX YET)
    .turnin 6562 >>Entrega la misión Problemas en las profundidades
    .accept 6563 >>Acepta la misión La esencia de Aku'Mai
    .accept 6921 >>Acepta la misión Entre ruinas
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Viaja a la entrada de las Cavernas de Brazanegra
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    >>Despoja el |cRXP_LOOT_Zafiro de Aku'Mai|r de la pared
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
step
    #xprate >1.49
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Mata a las |cRXP_ENEMY_Sacerdotisas de las mareas Brazanegra|r. Despójalas para obtener una |T134332:0|t[|cRXP_LOOT_Nota mojada|r] y úsala para iniciar la misión
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >> Acepta la misión Lealtad a los dioses antiguos
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step
    #xprate >1.49
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_Optionally talk to|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_back at Zoram'gar Outpost to get another BFD follow-up quest|r (NOT TRANSLATED IN :esMX YET)
    .turnin 6564 >>Entrega la misión Lealtad a los dioses antiguos
    .accept 6565 >>Acepta la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Despoja el |cRXP_LOOT_Zafiro de Aku'Mai|r de la pared
    .complete 6563,1 --Sapphire of Aku'Mai (20
    .dungeon BFD
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >> Dirígete al portal de la instancia de Cavernas de Brazanegra. Entra en la instancia
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Guardia Argenta Thaelrid|r
    .accept 6561 >>Acepta la misión La vileza de Brazanegra
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Mata a |cRXP_ENEMY_Lorgus Jett|r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Despoja la |cRXP_PICK_Piedra de las profundidades|r en el suelo del agua para obtener el |cRXP_LOOT_Núcleo de las profundidades|r
    >>|cRXP_WARN_Despojando esto hará aparecer al|r |cRXP_ENEMY_Barón Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mata al |cRXP_ENEMY_Barón Aquanis|r. Despójalo para obtener un |T136222:0|t[|cRXP_LOOT_Globo de agua extraño|r]. Úsalo para aceptar la misión
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Acepta la misión Barón Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Despoja la |cRXP_PICK_Piedra de las profundidades|r en el suelo del agua para obtener el |cRXP_LOOT_Núcleo de las profundidades|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mata al |cRXP_ENEMY_Señor Crepuscular Kelris|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith BFDTurnins
    .zone Ashenvale >>Exit the dungeon (NOT TRANSLATED IN :esMX YET)
    >>|cRXP_WARN_Mata|r a |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_primero si quieres. Este es el jefe final de la mazmorra|r
    .dungeon BFD
step
    #xprate <1.5
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Travel to Zoram'gar Outpost (NOT TRANSLATED IN :esMX YET)
step
    #xprate >1.49
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Travel to Zoram'gar Outpost (NOT TRANSLATED IN :esMX YET)
    .dungeon BFD
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Corredor Grito de Guerra|r y |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >>Entrega la misión Vorsha la Azotadora
    .goto Ashenvale,12.22,34.21
    .target +Warsong Runner
    .turnin 6442 >>Entrega la misión Nagas en la Ensenada de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    #xprate <1.5
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entrega la misión La esencia de Aku'Mai
    .turnin 6564 >>Entrega la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Entrega la misión Lealtad a los dioses antiguos
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Entrega la misión Entre ruinas
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Entrega la misión Barón Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #optional
    #label ZoramTurnins
step << Druid
    #completewith DruidTraining3
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <20,1
    .xp >22,1
    .cooldown item,6948,>0
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <22,1
    .cooldown item,6948,>0
step
    #xprate <1.5
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Destroy your remaining|r |T134133:0|t[|cRXP_LOOT_Sapphire of Aku'Mai|r] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :esMX YET)
step
    #xprate >1.49
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Destroy your remaining|r |T134133:0|t[|cRXP_LOOT_Sapphire of Aku'Mai|r] |cRXP_WARN_as they're no longer needed|r (NOT TRANSLATED IN :esMX YET)
    .dungeon BFD
step
    #completewith JourneytoTM
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Vuela a Cima del Trueno
    .target Andruk
    .zoneskip Thunder Bluff
    .dungeon WC
    --WC users still have HS in Ratchet
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >> Viaja al Alto de los Ancestros
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>Entrega la misión La bruja anciana
    .timer 6,La bruja anciana RP
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >>Entrega la misión Hamuul Tótem de Runa
    .accept 1490 >>Acepta la misión Nara Ferocrín
    .target Arch Druid Hamuul Runetotem
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Entrega la misión Nara Ferocrín
    .target Nara Wildmane
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Entrega la misión Líderes del Colmillo
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >>Entrega la misión En las pesadillas
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magatha|r
    .accept 1064 >>Acepta la misión La ayuda de los Renegados
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bashana|r
    .turnin 6561 >>Entrega la misión La vileza de Brazanegra
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step
    #xprate <1.5
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r en los pozos de visión
    .turnin 1064 >>Entrega la misión La ayuda de los Renegados
    .accept 1065 >>Acepta la misión Viaje a Molino Tarren
    .turnin 962 >>Entrega la misión Reptilia
    .target Apothecary Zamah
    .isQuestComplete 962
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r en los pozos de visión
    .turnin 1064 >>Entrega la misión La ayuda de los Renegados
    .accept 1065 >>Acepta la misión Viaje a Molino Tarren
    .target Apothecary Zamah
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu Piedra de hogar en Cima del Trueno
    .target Innkeeper Pala
    .bindlocation 1638
    .dungeon WC
step << Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
    .subzoneskip 378
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Entrega la misión Jarabe de Ken'zigla
    .accept 1515 >>Acepta la misión El cautiverio de Dogran
    .target Grunt Logmar
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Entrega la misión El cautiverio de Dogran
    .accept 1512 >>Acepta la misión Un regalo de amor
    .target Grunt Dogran
step << !Warlock
    #xprate <1.5
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Vuela a Trinquete
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon !WC
step << Warlock
    #xprate <1.5
    #completewith DockTrouble
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Ratchet >>Vuela a Trinquete
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .dungeon !WC
step << Shaman
    #xprate >1.49
    #completewith CallofWater
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Vuela a Trinquete
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon !WC
step
    #xprate <1.5
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Entrega la misión Bebidas de inteligencia
    .target Mebok Mizzyrix
    .dungeon !WC
step
    #xprate <1.5
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .turnin 959 >> Entrega la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .turnin 1529 >>Entrega la misión La llamada del agua
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
    .dungeon !WC
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .turnin 1528 >>Entrega la misión La llamada del agua
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
    .dungeon !WC
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Islen|r y |cRXP_FRIENDLY_Mahren Vidente del Cielo|r
    .accept 1530 >>Acepta la misión La llamada del agua
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
    .dungeon !WC
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
    .target Bragok
    .subzoneskip 378
    .dungeon !WC
step << Shaman
    #completewith CallofWater
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step << Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
    .home >>Establece tu Piedra de hogar en el Campamento Taurajo
    .target Innkeeper Byula
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salmuera|r
    .turnin 1530 >>Entrega la misión La llamada del agua
    .accept 1535 >>Acepta la misión La llamada del agua
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >> |cRXP_WARN_Llena tu|r |T132825:0|t[Odre de agua marrón vacío] |cRXP_WARN_en la charca debajo de la cabaña de Salmuera|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salmuera|r
    .turnin 1535 >>Entrega la misión La llamada del agua
    .accept 1536 >>Acepta la misión La llamada del agua
    .target Brine
step << Shaman
    #optional
    #completewith FlyOrg
    .hs >> Usa tu Piedra de hogar para ir al Campamento Taurajo
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 378,1
    .subzoneskip 378
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Viaja de vuelta al Campamento Taurajo
    .cooldown item,6948,<0
    .subzoneskip 378
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Shaman !Druid
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    .dungeon !WC
step << !Shaman !Warlock
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step << Warlock
    #completewith BarrensEnd
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .dungeon WC
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Entrega la misión Un regalo de amor
    .accept 1513 >>Acepta la misión El vínculo
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_Usa el|r |T133290:0|t[Colgante de Dogran] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>Mata a la |cRXP_ENEMY_Súcubo invocada|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Entrega la misión El vínculo
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Cómprale una|r |T135640:0|t[Jambiya] |cRXP_BUY_si no tienes una daga|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .train 921 >> Aprende |T133644:0|t[Robar]
    .train 8676 >> Aprende |T132282:0|t[Emboscada]
    .train 1943 >> Aprende |T132302:0|t[Ruptura]
    .train 1856 >> Aprende |T132331:0|t[Esfumarse]
    .train 1725 >> Aprende |T132289:0|t[Distraer]
    .train 1785 >> Aprende |T132320:0|t[Sigilo Rango 2]
    .accept 2460 >>Acepta la misión El saludo de los Mano Destrozada
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>Después de que |cRXP_FRIENDLY_Shenthul|r haga su saludo, escribe /Salute mientras lo tienes seleccionado como objetivo
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Entrega la misión El saludo de los Mano Destrozada
    .accept 2458 >>Acepta la misión Agente encubierto
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Compra |r |T134387:0|t[Pólvora cegadora] |cRXP_BUY_a este vendedor|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_a esta vendedora|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Thuul|r en lo alto de la cabaña
    .train 3567 >> Aprende |T135759:0|t[Teletransporte a: Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Entrega la misión Guardia de las Sombras
    .trainer >> Aprende tus hechizos de clase
    .target Ur'kyo
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >> Entra en Los Baldíos a través de la salida occidental
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >> Travel to The Sludge Fen (NOT TRANSLATED IN :esMX YET)
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>Despoja el |cRXP_PICK_Arcón extraño|r en el agua para obtener la |T133443:0|t[Medio colgante de Agilidad acuática]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Selecciona al |cRXP_FRIENDLY_Capataz Fizzule|r, luego usa tu |T134536:0|t[Pistola de bengalas] DOS VECES y escribe /Salute
    >>|cRXP_WARN_¡Ten cuidado! ¡NO te acerques a él hasta que se vuelva amistoso o te atacará!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Capataz Fizzule|r
    .turnin 2458 >>Entrega la misión Agente encubierto
    .accept 2478 >>Acepta la misión Misión: Posible, pero no probable
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Usa |T133644:0|t[Robar] en el |cRXP_ENEMY_Supervisor Silixiz|r para obtener su |cRXP_LOOT_Llave de la torre|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Cada enemigo aquí recibirá más daño de ciertas habilidades|r
    >>Usa |T132282:0|t[Emboscada] sobre los |cRXP_ENEMY_Zánganos mutados de Ventura y Cía.|r
    >>Usa |T132302:0|t[Ruptura] sobre las |cRXP_ENEMY_Patrullas de Ventura y Cía.|r
    >>Usa |T132292:0|t[Eviscerar] sobre los |cRXP_ENEMY_Oteadores de Ventura y Cía.|r una vez (1 punto de combo)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Corre hacia la Torre del Pícaro y mata a los |cRXP_ENEMY_Zánganos|r, |cRXP_ENEMY_Patrullas|r y |cRXP_ENEMY_Oteadores|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>En la cima de la torre encontrarás a |cRXP_ENEMY_Gallywix|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Usa|r |T132282:0|t[Emboscada] |cRXP_WARN_para reducir su vida a la mitad. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_para restaurar energía y usa|r |T136205:0|t[Evasión]
	>>|cRXP_WARN_Recuerda usar una Poción y|r |T132819:0|t[Té de cardo] |cRXP_WARN_si es necesario|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Usa tu Forzar cerraduras para abrir el |cRXP_PICK_Arcón de Gallywix|r y despoja la |cRXP_LOOT_Mezcla|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #hardcore
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Viaja a Orgrimmar por la entrada occidental
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Entrega la misión Misión: Posible, pero no probable
    .accept 2479 >>Acepta la misión La ayuda de Hinott
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Compra|r |T133849:0|t[Polvo de Decadencia] |cRXP_BUY_y|r |T132793:0|t[Viales vacíos] |cRXP_BUY_a este vendedor|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprende el uso de Hachas de dos manos
    .target Hanashi
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Entrena los hechizos de tu mascota
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compra|r |T135423:0|t[Hacha arrojadiza mortal] |cRXP_BUY_a este vendedor|r
    .collect 25875,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_Si tienes algún|r |T134437:0|t[Contraveneno]|cRXP_WARN_, úsalo para curarte del|r |T136230:0|t[Toque de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >> |cRXP_WARN_Borra la|r |T134536:0|t[Pistola de bengalas] |cRXP_WARN_de tu inventario, ya que ya no la necesitas|r
    .destroy 8066 >> |cRXP_WARN_Borra|r |T134374:0|t[Silbato de Fizzule] |cRXP_WARN_de tu inventario, ya que ya no lo necesitas|r
step
    #label BarrensEnd
    .goto Orgrimmar,49.1,94.5,30 >>Sal de Orgrimmar
step
    #optional
    .abandon 1486 >>Abandona la misión Pellejos descarriados
step
    #optional
    .abandon 1487 >>Abandona la misión Erradicación de descarriados
step
    #optional
    .abandon 914 >>Abandona la misión Líderes del Colmillo
step
    #optional
    .abandon 855 >>Abandona la misión Los brazales centauro
step
    #optional
    .abandon 959 >>Abandona la misión ¡A por la botella!
step
    #optional
    .abandon 1491 >>Abandona la misión Bebidas de inteligencia
]])
