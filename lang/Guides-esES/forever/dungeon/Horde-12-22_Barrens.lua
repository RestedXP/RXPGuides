if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 12-16 Los Baldíos
#displayname 14-16 Los Baldíos << !Shaman !Hunter !Tauren
#displayname 15-16 Los Baldíos << Paladin
#version 11
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#next 16-17 Sima Ígnea


step << Tauren Shaman
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto 1411/1,-4834.14,418.07,30,0
    .goto 1411/1,-4754.3,796.66,20 >> Entra en la Cueva Viento Seco
step << Tauren Shaman
    #loop
    .goto 1411/1,-4706.71,902.41,0
    .goto 1411/1,-4774.39,780.80,20,0
    .goto 1411/1,-4749.01,822.39,12,0
    .goto 1411/1,-4767.52,825.92,12,0
    .goto 1411/1,-4772.28,848.12,12,0
    .goto 1411/1,-4756.41,863.630,12,0
    .goto 1411/1,-4715.70,861.87,12,0
    .goto 1411/1,-4706.71,902.41,12,0
    >>Mata a los |cRXP_ENEMY_Cultores|r. Despójalos para obtener una |cRXP_LOOT_Faltriquera de componentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar
step << Tauren Warrior
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Viaja a la cima de la montaña
step << Tauren Warrior
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1502 >>Entrega la misión Thun'grim Vistafuego
    .accept 1503 >>Acepta la misión Acero fundido
    .target Thun'grim Firegaze
step << Tauren Warrior
    .goto 1413/1,-2955.48,-188.04
    >>Despoja el |cRXP_PICK_Cofre de hierro robado|r para obtener sus |cRXP_LOOT_Barras de acero forjado|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Tauren Warrior
    #completewith next
    .goto 1413/1,-2902.79,-276.55,30,0
    .goto 1413/1,-3004.12,-298.17,30,0
    .goto 1413/1,-3110.52,-320.46,30 >>Viaja a la cima de la montaña
step << Tauren Warrior
    .goto 1413/1,-3176.39,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thun'grim|r
    .turnin 1503 >>Entrega la misión Acero fundido
    .target Thun'grim Firegaze
step << !Tauren
    #softcore
    #completewith ThievesPickup
    .goto 1413/1,-2516.71,-590.71
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
    .xp >15,1
step << !Tauren
    #softcore
    #completewith ThievesPickup
    .subzone 380 >> Viaja a El Cruce
    .xp <15,1
step << !Tauren
    #hardcore
    #completewith ThievesPickup
    .subzone 380 >> Viaja a El Cruce
step << !Tauren
    #softcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acepta la misión Las Charcas del Olvido
    .target Tonga Runetotem
step << Orc/Troll
    #hardcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acepta la misión Entrega de carne a Orgrimmar
    .target Zargh
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce << !Druid
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Tauren
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Acepta la misión La amenaza de los zancudos de llanura
    .target Sergra Darkthorn
step << !Tauren
    #hardcore
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Acepta la misión Las Charcas del Olvido
    .target Tonga Runetotem
step << !Tauren
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .turnin 98024 >>Entrega la misión Viaja a El Cruce << Skyborne
    .accept 871 >>Acepta la misión Interrupción de los ataques
    .accept 5041 >>Acepta la misión Suministros para El Cruce
    .target Thork
    .maxlevel 15
step << Skyborne
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .turnin 98024 >>Entrega la misión Viaja a El Cruce 
    .target Thork
    .maxlevel 15
step << Orc/Troll
    #hardcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_¡NO vueles a Orgrimmar!|r
    .turnin 6365 >>Entrega la misión Entrega de carne a Orgrimmar
    .accept 6384 >>Acepta la misión Un viaje a Orgrimmar
    .target Devrak
step << Undead/Skyborne
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fp >> Consigue la ruta de vuelo de El Cruce
    .target Devrak
    .isQuestAvailable 1492
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acepta la misión Maestro de muelles Vertipeluca
    .accept 848 >>Acepta la misión Esporas de hongos
    .turnin 1358 >>Entrega la misión Muestra para Helbrim
    .target Apothecary Helbrim
    .isOnQuest 1358
step << !Tauren
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Acepta la misión Maestro de muelles Vertipeluca
    .accept 848 >>Acepta la misión Esporas de hongos
    .target Apothecary Helbrim
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo laminado] |cRXP_BUY_a este vendedor|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipa el|r |T135499:0|t[Arco corvo laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compra una|r |T135613:0|t[Bocarda de cazador] |cRXP_BUY_a este vendedor|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Tauren Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipa la|r |T135613:0|t[Bocarda de cazador]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
step << !Tauren
    #label ThievesPickup
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Acepta la misión Raptores ladrones
    .target Gazrog
step << !Tauren
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >> Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1492
step << Orc/Troll
    #softcore
    .goto 1413/1,-2709.24,-403.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Acepta la misión Entrega de carne a Orgrimmar
    .target Zargh
step
    #optional
    #completewith DisruptTheAttacks
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #optional
    #completewith DisruptTheAttacks
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Picos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren !Undead !Skyborne
    #completewith DemonSeed
    #label DemonMountain
    .goto 1413/1,-2554.2,80.18,40,0
    .goto 1413/1,-2477.19,136.26,40,0
    .goto 1413/1,-2363.7,232.87,40,0
    .goto 1413/1,-2205.62,314.62,100 >> Viaja a la cima de la montaña
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #completewith next
    #requires DemonMountain
    .goto 1413/1,-2205.62,314.62,15 >> Entra en Cubil Calígine
    .isOnQuest 924
step << !Tauren !Undead !Skyborne
    #label DemonSeed
    .goto 1413/1,-2238.04,324.08
    >>Haz clic derecho en el |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Asegúrate de tener una|r |T134095:0|t[Piedra de energía con imperfecciones] |cRXP_WARN_(duración de 30 minutos) contigo|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #sticky
    #label FireTar2
    .goto 1413/1,-2947.38,-92.1,50,0
    .goto 1413/1,-2869.35,-49.54,50,0
    .goto 1413/1,-2805.51,-111.02
    >>Mata a un |cRXP_ENEMY_Buscaqua Crines de Acero|r o a un |cRXP_ENEMY_Tejespina Crines de Acero|r. Despójalos para obtener un |cRXP_LOOT_Alquitrán|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
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
    .isOnQuest 871
step
    .goto 1413/1,-3021.35,-231.960
    .use 4926 >> Despoja el |cRXP_PICK_Barril Vacío de Chen|r del suelo y comienza la misión
    >>|cRXP_WARN_Puedes conseguirlo más tarde si no está allí|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
    .isOnQuest 871
step
    #requires FireTar2 << Shaman
    #label DisruptTheAttacks
    #loop
	.goto 1413/1,-2811.59,-42.780,0
	.goto 1413/1,-2811.59,-42.780,50,0
	.goto 1413/1,-2875.43,-52.24,50,0
	.goto 1413/1,-2931.16,-89.40,50,0
	.goto 1413/1,-3001.08,-117.78,50,0
	.goto 1413/1,-3037.56,-164.390,50,0
	.goto 1413/1,-3034.52,-221.82,50,0
	.goto 1413/1,-2991.96,-239.39,50,0
	.goto 1413/1,-2899.75,-209.66,50,0
	.goto 1413/1,-2854.15,-151.56,50,0
	.goto 1413/1,-2799.43,-92.78,50,0
    >>Mata a los |cRXP_ENEMY_Buscaqua|r, a los |cRXP_ENEMY_Tejespina|r y a los |cRXP_ENEMY_Cazadores|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .isOnQuest 871
step
    #completewith next
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2819.70,-359.65,0
    .goto 1413/1,-2784.23,-163.04,80,0
    .goto 1413/1,-2771.06,-306.95,80,0
    .goto 1413/1,-2805.51,-386.00,80,0
    .goto 1413/1,-2738.63,-610.310,80,0
    .goto 1413/1,-2576.50,-610.98,80,0
    .goto 1413/1,-2494.42,-485.32,80,0
    .goto 1413/1,-2448.82,-398.84,80,0
    .goto 1413/1,-2537.99,-260.33,80,0
    .goto 1413/1,-2730.52,-273.17,80,0
    .goto 1413/1,-2819.70,-359.65,80,0
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Picos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entrega la misión Servicio militar en El Cruce << Tauren Shaman
    .turnin 844 >>Entrega la misión La amenaza de los zancudos de llanura
    .accept 845 >>Acepta la misión La zhebra
    .target Sergra Darkthorn
    .isOnQuest 842 << Tauren Shaman
step << Tauren Shaman
    #optional
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 844 >>Entrega la misión La amenaza de los zancudos de llanura
    .accept 845 >>Acepta la misión La zhebra
    .target Sergra Darkthorn
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entrega la misión Interrupción de los ataques
    .accept 872 >>Acepta la misión La perturbación termina
    .target Thork
    .isQuestComplete 871
step
    #optional
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .accept 872 >>Acepta la misión La perturbación termina
    .target Thork
    .isQuestTurnedIn 871
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Está en la cima de la torre|r
    .accept 867 >>Acepta la misión Arpías saqueadoras
    .target Darsok Swiftdagger
step << Orc/Troll
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_¡NO vueles a Orgrimmar!|r
    .turnin 6365 >>Entrega la misión Entrega de carne a Orgrimmar
    .accept 6384 >>Acepta la misión Un viaje a Orgrimmar
    .target Devrak
step << Orc Hunter/Troll Hunter/Skyborne Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compra un|r |T135499:0|t[Arco corvo laminado] |cRXP_BUY_a este vendedor|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Tauren Hunter
    #optional
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compra una|r |T135613:0|t[Bocarda de cazador] |cRXP_BUY_a este vendedor|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .money <0.1324
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step << Orc Warrior/Troll Warrior/Tauren Warrior/Skyborne Warrior
    #sticky
    #completewith KreenigSnarlsnout
    .goto 1413/1,-2697.08,-461.67,0
    .vendor >>|cRXP_WARN_Revisa si|r |cRXP_FRIENDLY_Lizzarik|r |cRXP_WARN_está en El Cruce. Vende pociones y|r |T133476:0|t[|cRXP_FRIENDLY_Maza con pinchos pesada|r] |cRXP_WARN_que es un objeto de suministro limitado|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .vendor >>Abastécete de comida y agua << !Rogue !Warrior
    .vendor >>Abastécete de comida << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isOnQuest 872,5041,845
step
    .goto 1413/1,-3021.35,-231.96,20,0
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Despoja el |cRXP_PICK_Barril Vacío de Chen|r del suelo y comienza la misión
    >>|cRXP_WARN_Espera a la reaparición si no ha aparecido|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
    .isOnQuest 872
step
    #optional
    #completewith KreenigSnarlsnout
    .goto 1413/1,-3127.75,-55.62,50,0
    .goto 1413/1,-3382.10,-54.27,50,0
    >>Mata a las |cRXP_ENEMY_Geománticas Crines de Acero|r y a los |cRXP_ENEMY_Defensores Crines de Acero|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #optional
    #completewith next
    >>Despoja los |cRXP_PICK_Cajones de suministro de El Cruce|r
    >>|cRXP_WARN_Tiene múltiples localizaciones de aparición|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #label KreenigSnarlsnout
    .goto 1413/1,-3324.34,-217.09
    >>Mata a |cRXP_ENEMY_Kreenig Gruñucico|r. Despójalo para obtener su |cRXP_LOOT_Colmillo|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .isOnQuest 872
step
    #optional
    #completewith next
    .goto 1413/1,-3127.75,-55.62,0
    .goto 1413/1,-3382.10,-54.27,0
    >>Mata a las |cRXP_ENEMY_Geománticas Crines de Acero|r y a los |cRXP_ENEMY_Defensores Crines de Acero|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #loop
    .goto 1413/1,-3292.92,-212.36,30,0
    .goto 1413/1,-3402.36,-48.19,30,0
    .goto 1413/1,-3292.92,-212.36,0
    .goto 1413/1,-3402.36,-48.19,0
    >>Despoja los |cRXP_PICK_Cajones de suministro de El Cruce|r
    >>|cRXP_WARN_Tiene múltiples localizaciones de aparición|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 872
step
    #loop
	.goto 1413/1,-3345.62,-101.56,0
	.goto 1413/1,-3393.24,-102.24,50,0
	.goto 1413/1,-3419.59,-40.08,50,0
	.goto 1413/1,-3419.59,-0.89,50,0
	.goto 1413/1,-3361.83,-1.57,50,0
	.goto 1413/1,-3317.24,-7.65,50,0
	.goto 1413/1,-3237.19,-27.92,50,0
	.goto 1413/1,-3139.91,-46.16,50,0
	.goto 1413/1,-3126.74,-101.56,50,0
	.goto 1413/1,-3178.42,-107.64,50,0
	.goto 1413/1,-3205.78,-119.13,50,0
	.goto 1413/1,-3218.95,-81.97,50,0
	.goto 1413/1,-3278.74,-75.21,50,0
	.goto 1413/1,-3345.62,-101.56,50,0
    >>Mata a las |cRXP_ENEMY_Geománticas Crines de Acero|r y a los |cRXP_ENEMY_Defensores Crines de Acero|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step << !Tauren !Undead !Skyborne
    #optional
    #completewith next
    >>Mata a cualquier |cRXP_ENEMY_Zhebra|r que veas. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren !Undead !Skyborne
    .goto 1413/1,-3694.2,256.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entrega la misión La Semilla del Demonio
    .target Ak'Zeloth
    .isQuestComplete 924
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith ShamanDurotar
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith ShamanDurotar
    >>Mata a cualquier |cRXP_ENEMY_Zhebra|r que veas. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto 1411/1,-3905.13,-228.41
    .zone Durotar >> Viaja hacia Durotar
    .isOnQuest 1525
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #requires ShamanDurotar
    #completewith next
    .goto 1411/1,-3905.13,-228.41,10,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3899.31,-241.45,8,0
    .goto 1411/1,-3906.71,-270.71,8,0
    .goto 1411/1,-3910.94,-247.45,8,0
    .goto 1411/1,-3931.56,-240.75,8,0
    .goto 1411/1,-3964.35,-242.51,8,0
    .goto 1411/1,-3974.39,-228.76,8,0
    .goto 1411/1,-4020.92,-219.95,8,0
    .goto 1411/1,-4034.67,-232.64,8,0
    .goto 1411/1,-4033.08,-255.91,10 >> Sigue el camino montaña arriba hacia |cRXP_FRIENDLY_Telf|r
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto 1411/1,-3999.24,-268.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entrega la misión La llamada del fuego
    .accept 1526 >>Acepta la misión La llamada del fuego
    .target Telf Joolam
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #completewith next
    .goto 1411/1,-3981.27,-256.61
    .cast 8898 >>|cRXP_WARN_Usa la|r |T134732:0|t[La sapta de fuego]
    .use 6636
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Mata a la |cRXP_ENEMY_Manifestación Menor de Fuego|r. Despójalo para obtener un |cRXP_LOOT_Ascua resplandeciente|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1411/1,-4022.51,-243.92
    >>Haz clic en el |cRXP_PICK_Blandón|r del suelo
    .turnin 1526 >>Entrega la misión La llamada del fuego
    .accept 1527 >>Acepta la misión La llamada del fuego
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith FireEnd
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #optional
    #completewith next
    >>Mata a cualquier |cRXP_ENEMY_Zhebra|r que veas. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Orc Shaman/Troll Shaman/Tauren Shaman
    #label FireEnd
    .goto 1413/1,-3037.56,264.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Entrega la misión La llamada del fuego
    .target Kranal Fiss
step << Orc Shaman/Troll Shaman/Tauren Shaman
    .goto 1413/1,-3029.46,261.25
    .use 4926 >> Despoja el |cRXP_PICK_Barril Vacío de Chen|r del suelo y comienza la misión
    >>|cRXP_WARN_Espera a la reaparición si no ha aparecido|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >> Acepta la misión El barril vacío de Chen
step 
    #completewith RatchetEnter
    >>Mata a los |cRXP_ENEMY_Raptores|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Screecher
step
    #optional
    #completewith next
    .goto 1413/1,-3851.27,-526.53,100,0
    >>Mata |cRXP_ENEMY_Galopadores zhebra|r. Despójalos para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isOnQuest 872
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Galopadores zhebra|r. Despójalos para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isNotOnQuest 872
step
    #label RatchetEnter
    .goto 1413/1,-3728.66,-835.29
    .subzone 392 >> Viaja a Trinquete
    .isOnQuest 845
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Desdio|r
    .accept 97253 >>Acepta la misión Partes y piezas
    .target Wrenix the Wretched
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .accept 887 >>Acepta la misión Los filibusteros de los Mares del Sur
    .target Gazlowe
step
    #completewith next
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >> Consigue la ruta de vuelo de Trinquete
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r y el |cRXP_FRIENDLY_Cartel de Se busca|r
    .accept 894 >>Acepta la misión El churumbele
    .goto 1413/1,-3759.06,-902.18
    .accept 895 >>Acepta la misión SE BUSCA: Barón Longavera
    .goto 1413/1,-3719.54,-919.07
    .target Sputtervalve
step << Undead Warrior/Skyborne Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T135353:0|t[Espadón] |cRXP_BUY_a este vendedor|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T135353:0|t[Espadón] |cRXP_WARN_cuando alcances el nivel 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipa el|r |T135353:0|t[Espadón]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Entrega la misión El barril vacío de Chen
    .accept 821 >>Acepta la misión El barril vacío de Chen
    .target Brewmaster Drohn
    .isOnQuest 819
step
    #optional
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drohn|r
    .accept 821 >>Acepta la misión El barril vacío de Chen
    .target Brewmaster Drohn
    .isQuestTurnedIn 819
step << Mage/Priest/Warlock/Shaman/Druid
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Wiley|r
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vende la Basura
    --.collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
    .xp <15,1
step
    #optional
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
step << Orc Rogue/Troll Rogue
    #optional
	#completewith SouthSea
	>>Mata a |cRXP_ENEMY_Tazan|r. Despójalo para obtener su |cRXP_LOOT_Cartera|r
    >>|cRXP_WARN_Aparece en el primer campamento y patrulla subiendo la colina|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto 1413/1,-3883.70,-1572.40,0
    .goto 1413/1,-3818.84,-1707.52,0
    .goto 1413/1,-3724.60,-1746.71,0
    .goto 1413/1,-3883.70,-1572.40,50,0
    .goto 1413/1,-3818.84,-1707.52,50,0
    .goto 1413/1,-3724.60,-1746.71,50,0
    >>Mata al |cRXP_ENEMY_Barón Longavera|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Se le puede encontrar en uno de los campamentos|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step
    #loop
    .goto 1413/1,-3885.72,-1569.690,0
    .goto 1413/1,-3902.95,-1366.33,50,0
    .goto 1413/1,-3823.91,-1512.94,50,0
    .goto 1413/1,-3885.72,-1569.690,50,0
    >>Mata a los |cRXP_ENEMY_Salteadores de los Mares del Sur|r y a los |cRXP_ENEMY_Cañoneros de los Mares del Sur|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step
    #label SouthSea
    #loop
    .goto 1413/1,-3657.700,-1435.500,0
    .goto 1413/1,-3675.100,-1364.100,40,0
    .goto 1413/1,-3598.900,-1378.800,40,0
    .goto 1413/1,-3657.700,-1435.500,40,0
    .goto 1413/1,-3654.900,-1482.400,40,0
    .goto 1413/1,-3680.100,-1593.000,40,0
    .goto 1413/1,-3614.800,-1632.800,40,0
    .goto 1413/1,-3611.500,-1692.500,40,0
    >>Despoja el |cRXP_PICK_Puñado de piezas complicadas|r del suelo
    .complete 97253,1 --|5/5 Handful of Complicated Parts
    .isOnQuest 97253
step << Orc Rogue/Troll Rogue
    #loop
    .goto 1413/1,-3895.600,-1365.000,0
    .goto 1413/1,-3677.99,-1392.00,50,0
    .goto 1413/1,-3895.600,-1365.000,50,0
    .goto 1413/1,-3826.300,-1487.300,50,0
	>>Mata a |cRXP_ENEMY_Tazan|r. Despójalo para obtener su |cRXP_LOOT_Cartera|r
    >>|cRXP_WARN_Aparece en el primer campamento y patrulla subiendo la colina|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 887 >>Entrega la misión Los filibusteros de los Mares del Sur
    .turnin 895 >>Entrega la misión SE BUSCA: Barón Longavera
    .accept 890 >>Acepta la misión El envío perdido
    .target Gazlowe
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Desdio|r
    .turnin 97253 >>Entrega la misión Parts and Pieces
    .target Wrenix the Wretched
    .isQuestComplete 97253
step
    .goto 1413/1,-3796.55,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vertipeluca|r
    .turnin 1492 >>Entrega la misión Maestro de muelles Vertipeluca
    .turnin 890 >>Entrega la misión El envío perdido
    .accept 892 >>Acepta la misión El envío perdido
    .accept 896 >>Acepta la misión La fortuna de un minero
    .target Wharfmaster Dizzywig
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 892 >>Entrega la misión El envío perdido
    .accept 888 >>Acepta la misión Botín robado
    .target Gazlowe
step << Undead Warrior/Skyborne Warrior
    .goto 1413/1,-3684.07,-919.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Ironzar|r|cRXP_BUY_. Compra un|r |T135353:0|t[Espadón] |cRXP_BUY_a este vendedor|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T135353:0|t[Espadón] |cRXP_WARN_cuando alcances el nivel 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior/Skyborne Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipa el|r |T135353:0|t[Espadón]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
    .goto 1413/1,-3684.07,-919.74
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
step << !Tauren
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Vuela a El Cruce
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #optional
    #completewith next
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-2977.78,-942.71,0
    .goto 1413/1,-2274.52,-870.42,0
    .goto 1413/1,-2977.78,-942.71,80,0
    .goto 1413/1,-2832.87,-990.01,80,0
    .goto 1413/1,-2710.26,-959.6,80,0
    .goto 1413/1,-2392.07,-900.83,80,0
    .goto 1413/1,-2274.52,-870.42,80,0
    >>Termina de matar |cRXP_ENEMY_Zhebras|r. Despójalas para obtener sus |cRXP_LOOT_Pezuñas|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Tauren Druid
    #completewith DruidTraining1
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Tauren Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 782 >> Aprende tus hechizos de clase
    .target Loganaar
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <14,1
    .xp >16,1
step << Tauren Druid
    #label DruidTraining1
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >> Aprende tus hechizos de clase
    .target Loganaar
    .bindlocation 1638,1
    .cooldown item,6948,>0
    .xp <16,1
step << Tauren
    #completewith FlyXroads2
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
    .use 6948
step << Tauren
    .goto Thunder Bluff,45.6,55.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ahanu|r
    .turnin 6362 >>Entrega la misión Un viaje a Cima del Trueno
    .accept 6363 >>Acepta la misión Tal, maestro de jinetes del viento
    .target Ahanu
step << Tauren Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 2645 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <14,1
    .xp >16,1
step << Tauren Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r
    .train 8498 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <16,1
step << Tauren Hunter/Tauren Warrior
    #completewith HunterTraining1 << Tauren Hunter
    #completewith WarriorTraining1 << Tauren Warrior
    .goto 1456/1,-123.26,-1394.49,60 >> Viaja al Alto de los Cazadores
step << Tauren Hunter
    #label HunterTraining1
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 13795 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <16,1
step << Tauren Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hesuwa|r
    .train 24556 >> Entrena los hechizos de tu mascota
    .target Hesuwa Thunderhorn
step << Tauren Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torm|r
    .train 1160 >>Aprende tus hechizos de clase
    .target Torm Ragetotem
    .xp <14,1
    .xp >16,1
step << Tauren Warrior
    #label WarriorTraining1
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torm|r
    .train 285 >>Aprende tus hechizos de clase
    .target Torm Ragetotem
    .xp <16,1
step << Tauren
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .turnin 6363 >>Entrega la misión Tal, maestro de jinetes del viento
    .accept 6364 >>Acepta la misión Regresa con Jahan
    .target Tal
step << Tauren
    #label FlyXroads2
    #completewith HidesTurnIn
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Vuela a El Cruce
    .target Tal
    .zoneskip The Barrens
step << Tauren
    .goto 1413/1,-2645.40,-406.94--c:The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >>Establece tu Piedra de hogar en El Cruce
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 903,850,867,901
step
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Entrega la misión Suministros para El Cruce
    .turnin 872 >>Entrega la misión La perturbación termina
    .target Thork
    .isQuestTurnedIn 871
step
    #label XroadsTurnins3
    .goto 1413/1,-2669.72,-481.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 845 >>Entrega la misión La zhebra
    .accept 903 >>Acepta la misión Merodeadores en Los Baldíos
    .target Sergra Darkthorn
step << Tauren
    #label HidesTurnIn
    .goto 1413/1,-2566.36,-350.19--c:The Barrens,51.21,29.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jahan|r
    .turnin 6364 >>Entrega la misión Regresa con Jahan
    .target Jahan Hawkwing
    .isOnQuest 6364
step << Troll Hunter/Orc Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compra|r |T132384:0|t[Perdigones pesados] |cRXP_BUY_a este vendedor|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter/Skyborne Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >> |cRXP_BUY_Cómprale un|r |T135490:0|t[|cRXP_FRIENDLY_Arco largo refinado|r] |cRXP_BUY_si está disponible y abastécete de flechas|r
    >>|cRXP_WARN_Si no está disponible, compra un|r |T135490:0|t[Arco reforzado] |cRXP_WARN_en su lugar|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compra una|r |T135613:0|t[Bocarda de cazador] |cRXP_BUY_a este vendedor|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #optional
    #completewith RegtharDeathgate1
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .isQuestTurnedIn 819
step
    #optional
    #completewith next
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acepta la misión Los jefes Kolkar
    .accept 855 >>Acepta la misión Los brazales centauro
    .target Regthar Deathgate
step
    #optional
    #label RegtharDeathgate1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Acepta la misión Los jefes Kolkar
    .target Regthar Deathgate
step
    #optional
    #completewith KodobaneTurnin
    >>Mata |cRXP_ENEMY_Retadores Kolkar|r y |cRXP_ENEMY_Agitadoras Kolkar|r. Despójalos para obtener sus |cRXP_LOOT_Brazales|r
    >>|cRXP_WARN_Esta misión no tiene que ser completada ahora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .isOnQuest 855
step
    #optional
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
    #optional
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Acepta la misión Verog el Derviche
    .target Regthar Deathgate
    .isQuestTurnedIn 850
step
    #optional
    #completewith HarpyTalons
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Mata |cRXP_ENEMY_Merodeadores de la sabana|r. Despójalos para obtener sus |cRXP_LOOT_Garras|r y |cRXP_LOOT_Colmillos|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .disablecheckbox
    .mob Savannah Prowler
    .isQuestTurnedIn 819
step
    #optional
    #loop
    .goto 1413/1,-1594.58,30.19,0
    .goto 1413/1,-1594.58,30.19,50,0
    .goto 1413/1,-1562.15,-29.94,50,0
    .goto 1413/1,-1483.11,66.67,50,0
    .goto 1413/1,-1531.75,180.85,50,0
    .goto 1413/1,-1462.84,214.63,50,0
    >>Mata a los |cRXP_ENEMY_Savannah Prowlers|r. Despójalos para obtener sus |cRXP_LOOT_Claws|r
    .complete 903,1 --Prowler Claws (7)
    .mob Savannah Prowler
    .isQuestAvailable 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-1616.87,611.90,0
    .goto 1413/1,-1583.43,322.73,60,0
    .goto 1413/1,-1513.51,380.84,60,0
    .goto 1413/1,-1526.68,477.450,60,0
    .goto 1413/1,-1555.06,545.69,60,0
    .goto 1413/1,-1553.03,615.95,60,0
    .goto 1413/1,-1616.87,611.90,60,0
    >>Mata |cRXP_ENEMY_Arpías Alabruja|r y |cRXP_ENEMY_Malaplumas Alabruja|r. Despójalas para obtener sus |cRXP_LOOT_Garras|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #optional
    #label HarpyTalons
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith Samophlange
    +|cRXP_WARN_Ten cuidado con los|r |cRXP_ENEMY_Segadores Solescama|r |cRXP_WARN_en la zona. Tienen hasta nivel 18 y pueden usar|r |T132152:0|t[Vapulear]
    .xp >17,1
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    #completewith Samophlange
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1812.500,790.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vrang|r
    .accept 95494 >>Acepta la misión El orgullo herido y la piel del león
    .accept 95507 >>Acepta la misión Las presas de Vrang
    .target Vrang Sangrevaje
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1815.48,786.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vrang|r
    >>|cRXP_FRIENDLY_Vrang|r |cRXP_WARN_vende|r |T133476:0|t[|cRXP_FRIENDLY_Maza con pinchos pesada|r] |cRXP_WARN_que es un objeto de suministro limitado|r << Tauren Warrior/Tauren Shaman/Druid
	.vendor	>> Vende la basura y repara
    .target Vrang Sangrevaje
    .isQuestAvailable 95494,95507
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    >>Despoja las |cRXP_PICK_Trampas activadas|r del suelo
    .complete 95507,1 --|8/8 Trapped Game
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Mata a los |cRXP_ENEMY_Savannah Patriarchs|r. Despójalos para obtener sus |cRXP_LOOT_Hides|r y |cRXP_LOOT_Tusks|r
    >>|cRXP_WARN_Si hay demasiada competencia y no puedes completar esta misión rápidamente, puedes omitir este paso|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .complete 821,1 --Savannah Lion Tusk (5)
    .disablecheckbox
    .mob Savannah Patriarch
    .isQuestTurnedIn 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    #loop
    .goto 1413/1,-1848.200,486.900,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Mata a los |cRXP_ENEMY_Savannah Patriarchs|r. Despójalos para obtener sus |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_Si hay demasiada competencia y no puedes completar esta misión rápidamente, puedes omitir este paso|r
    .complete 95494,1 --|6/6 Savannah Lion Hide
    .mob Savannah Patriarch
    .isQuestAvailable 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-1960.600,653.700,0
    .goto 1413/1,-1848.200,486.900,50,0
    .goto 1413/1,-1937.500,480.000,50,0
    .goto 1413/1,-1983.100,579.700,50,0
    .goto 1413/1,-1960.600,653.700,50,0
    .goto 1413/1,-1871.600,653.700,50,0
    .goto 1413/1,-1729.700,592.400,50,0
    >>Despoja las |cRXP_PICK_Trampas activadas|r del suelo
    .complete 95507,1 --|8/8 Trapped Game
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1812.600,789.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vrang Sangrevaje|r
    .turnin 95494 >>Entrega la misión El orgullo herido y la piel del león
    .turnin 95507 >>Entrega la misión Las presas de Vrang
    .accept 95495 >>Acepta la misión El peletero ermitaño
    .target Vrang Sangrevaje
    .isQuestComplete 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    .goto 1413/1,-1778.100,684.200,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>Sube por la montaña
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1635.400,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Walton|r
    .turnin 95495 >>Entrega la misión El peletero ermitaño
    .accept 95621 >>Acepta la misión Problemas en el valle
    .target Walton
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1611.500,549.000
    >>Mata al |cRXP_ENEMY_Cabo Adamore|r
    >>|cRXP_WARN_¡Ten cuidado! Podrías llamar la atención (aggro) de 2 o 3 bichos a la vez|r
    .complete 95621,1 --|1/1 Learn why the Kul Tirans are here
    .mob Corporal Adamore
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    .goto 1413/1,-1736.900,650.300,25,0
    .goto 1413/1,-1741.700,721.400,25,0
    .goto 1413/1,-1643.900,786.000,25,0
    .goto 1413/1,-1605.300,818.300,20 >>Sube por la montaña
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1635.500,838.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Walton|r
    .turnin 95621 >>Entrega la misión Problemas en el valle
    .accept 95508 >>Acepta la misión Huéspedes no deseados
    .timer 67,Huéspedes no deseados RP
    .target Walton
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1629.200,835.600
    >>Ponte detrás de la casa mientras esperas a que termine el RP para evitar llamar la atención (aggro) de todos los bichos a la vez
    >>|cRXP_WARN_En realidad no necesitas ayudar a |cRXP_FRIENDLY_Walton|r, sobrevivirá con la ayuda de|r |cRXP_FRIENDLY_Vrang Sangrevaje|r
    .complete 95508,1 --|1/1 Assist Walton
    .mob Terry Longdrink
    .isQuestTurnedIn 95494
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-1635.400,838.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Walton|r
    .turnin 95508 >>Entrega la misión Huéspedes no deseados
    .target Walton
    .isQuestTurnedIn 95494
step
    #completewith EcheyakeePickup
    .hs >> Usa tu Piedra de hogar para ir a El Cruce
    .cooldown item,6948,>0
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 901,881
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entrega la misión Raptores ladrones
    .accept 3281 >>Acepta la misión La plata robada
    .target Gazrog
    .isQuestComplete 869
step
    #optional
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .accept 3281 >>Acepta la misión La plata robada
    .target Gazrog
    .isQuestTurnedIn 869
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entrega la misión Esporas de hongos
    .target Apothecary Helbrim
    .isQuestComplete 848
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2607.91,-475.180
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darsok|r
    .turnin 867 >>Entrega la misión Arpías saqueadoras
    --.accept 875 >>Accept Harpy Lieutenants
    .target Darsok Swiftdagger
step
    .goto 1413/1,-2641.35,-521.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Acepta la misión Consumido por el odio
    .accept 4921 >>Acepta la misión Perdida en la batalla
    .target Mankrik
step
    .goto 1413/1,-2672.76,-544.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entrega la misión Las Charcas del Olvido
    .accept 877 >>Acepta la misión El Oasis Estancado
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Entrega la misión Merodeadores en Los Baldíos
    .accept 881 >>Acepta la misión Echeyakee
    .target Sergra Darkthorn
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith SamophlangeComplete
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3031.48,461.91
    >>Usa el |T134227:0|t[Cuerno de Echeyakee] para invocar a |cRXP_ENEMY_Echeyakee|r
    >>Mata a |cRXP_ENEMY_Echeyakee|r. Despójalo para obtener |cRXP_LOOT_Pellejo de Echeyakee|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r no aparece después de usar el|r |T134227:0|t[Cuerno de Echeyakee]|cRXP_WARN_ o no le diste el primer golpe al aparecer, salta este paso|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r no apareció después de usar el|r |T134227:0|t[Cuerno de Echeyakee]|cRXP_WARN_ o no le diste el primer golpe al aparecer, abandona la misión Echeyakee, luego regresa a la ciudad y acéptala de nuevo|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Acepta la misión Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3031.48,461.91
    >>Usa el |T134227:0|t[Cuerno de Echeyakee] para invocar a |cRXP_ENEMY_Echeyakee|r
    >>Mata a |cRXP_ENEMY_Echeyakee|r. Despójalo para obtener |cRXP_LOOT_Pellejo de Echeyakee|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step << Tauren/Hunter/Orc Shaman/Troll Shaman
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>Haz clic en la |cRXP_PICK_Consola de control|r
    .turnin 894 >>Entrega la misión El churumbele
    .accept 900 >>Acepta la misión El churumbele
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2686.95,842.290
    >>Haz clic en la |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_¡Ten cuidado! Dos enemigos aparecerán después de que cierres la Válvula|r
    .complete 900,1 --Shut off Main Control Valve (1)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2675.80,842.290
    >>Haz clic en la |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Un enemigo aparecerá después de que cierres la Válvula|r
    .complete 900,3 --Shut off Regulator Valve (1)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2679.86,830.80
    >>Haz clic en la |cRXP_PICK_Válvula|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2686.95,825.40
    >>Haz clic en la |cRXP_PICK_Consola de control|r
    .turnin 900 >>Entrega la misión El churumbele
    .accept 901 >>Acepta la misión El churumbele
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-2731.54,909.850
    >>Mata a |cRXP_ENEMY_Manitas el Risitas|r en el edificio. Despójalo para obtener su |cRXP_LOOT_Llave de la consola|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label SamophlangeComplete
    .goto 1413/1,-2686.95,825.40
    >>Haz clic en la |cRXP_PICK_Consola de control|r
    .turnin 901 >>Entrega la misión El churumbele
    .accept 902 >>Acepta la misión El churumbele
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-2666.500,719.600,90,0
    .goto 1413/1,-2965.400,1009.100,90,0
    >>Mata a los |cRXP_ENEMY_Raptores|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    .goto 1413/1,-3102.42,1105.78
    >>Sube al nivel 16 aquí matando enemigos, es importante, porque las próximas 3 misiones son bastante difíciles
	.xp 16
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Machacador de Rabiaire|r en el Fangal
    >>|cRXP_FRIENDLY_Machacador de Rabiaire|r |cRXP_WARN_tiene un tiempo de reaparición largo. Considera omitir esta misión si hay mucha competencia|r
    .accept 858 >>Acepta la misión La llave de contacto
    .target Wizzlecrank's Shredder
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith next
    +|cRXP_WARN_Ten cuidado si el|r |cRXP_ENEMY_Supervisor Asas|r |cRXP_WARN_o la|r |cRXP_ENEMY_Bestia de lodo|r |cRXP_WARN_están vivos. Son élites raros de nivel 19 muy fuertes|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>Mata al |cRXP_ENEMY_Supervisor Palarrastre|r. Despójalo para obtener su |cRXP_LOOT_Llave|r
    >>|cRXP_WARN_Patrulla subiendo y bajando la plataforma|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Machacador de Rabiaire|r
    >>|cRXP_FRIENDLY_Machacador de Rabiaire|r |cRXP_WARN_tiene un tiempo de reaparición largo. Considera omitir esta misión si hay mucha competencia|r
    >>|cRXP_WARN_Esto iniciará una escolta. Asegúrate de estar a plena salud|r
    .turnin 858 >>Entrega la misión La llave de contacto
    .accept 863,1 >>Acepta la misión La fuga
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Machacador de Rabiaire|r
    >>|cRXP_FRIENDLY_Machacador de Rabiaire|r |cRXP_WARN_tiene un tiempo de reaparición largo. Considera omitir esta misión si hay mucha competencia|r
    >>|cRXP_WARN_Esto iniciará una escolta. Asegúrate de estar a plena salud|r
    .accept 863,1 >>Acepta la misión La fuga
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>|cRXP_WARN_Dos|r |cRXP_ENEMY_Mercenarios de Ventura y Cía.|r |cRXP_WARN_aparecerán cuando la trituradora suba al terreno elevado. Mátalos y luego espera por su evento de RP al final|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #optional
    #completewith next
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #label CatsEye
    #loop
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Mata |cRXP_ENEMY_Déspotas de Ventura y Cía.|r y |cRXP_ENEMY_Sobrestantes de Ventura y Cía.|r. Despójalos para obtener la |cRXP_LOOT_Esmeralda ojo de gato|r
    >>|cRXP_WARN_Si no ha caído después de 25+ enemigos, puedes omitir esta misión|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #ssf
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Mata |cRXP_ENEMY_Sobrestantes de Ventura y Cía.|r. Despójalos para obtener su |T132794:0|t[|cRXP_LOOT_Frasco de aceite|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #ah
    .goto 1413/1,-3610.1,1313.2,0
    .goto 1413/1,-3605.03,1308.47,40,0
    .goto 1413/1,-3564.5,1367.25,40,0
    .goto 1413/1,-3622.26,1384.81,40,0
    .goto 1413/1,-3673.94,1374.68,40,0
    .goto 1413/1,-3653.67,1306.44,40,0
    .goto 1413/1,-3644.55,1249.69,40,0
    .goto 1413/1,-3603.0,1236.85,40,0
    .goto 1413/1,-3575.64,1271.31,40,0
    .goto 1413/1,-3610.1,1313.2,40,0
    >>Mata |cRXP_ENEMY_Sobrestantes de Ventura y Cía.|r. Despójalos para obtener su |T132794:0|t[|cRXP_LOOT_Frasco de aceite|r]
    >>|cRXP_WARN_También puedes comprarlos en la casa de subastas|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step << skip
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Salta a la viga de madera. Haz un Logout Skip desconectando y volviendo a entrar. Regresa a Orgrimmar si no lo logras|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    .zoneskip Orgrimmar

]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 16-17 Sima Ígnea
#version 11
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#next 17-18 Ruinas de Lordaeron

step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >> Ahora deberías buscar un grupo para Sima Ígnea
step
    #optional
    #completewith EnterRFC
    >>|cRXP_WARN_Si es posible, haz que los miembros del grupo compartan la siguiente misión|r
    >>|cRXP_WARN_Si es necesario, pide a alguien en Undercity que comparta la misión|r
    .accept 5725 >> Acepta la misión Poder destructivo
step
    #optional
    #completewith EnterRFC
    >>|cRXP_WARN_Si es posible, haz que los miembros del grupo compartan las siguientes misiones|r
    >>|cRXP_WARN_Si es necesario, pide a alguien en Trueno Engaño que comparta la misión|r
    .accept 5722 >> Acepta la misión Buscando la cartera perdida
    .accept 5723 >> Acepta la misión Midiendo fuerzas con el enemigo
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith EnterRFC
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Entra en Orgrimmar por la entrada occidental
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith EnterRFC
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step
    #completewith next
    .skill firstaid,40 >> |cRXP_WARN_Crea|r |T133685:0|t[Vendas de lino] |cRXP_WARN_hasta que tu habilidad sea 40 o superior|r
    .skill firstaid,<1,1
step
    .goto 1454/1,-4160.01,1483.17
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
    .goto 1454/1,-4160.01,1483.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Omite este paso si no tuviste suficiente|r |T132889:0|t[Paño de lino] |cRXP_WARN_para alcanzar a 50 de habilidad|r
    .train 3274 >> Aprende Oficial de primeros auxilios
    .target Arnok
    .skill firstaid,<40,1
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith EnterRFC
    +|cRXP_WARN_Asegúrate de no vender tu|r |T132794:0|t[|cRXP_LOOT_Frasco de aceite|r]
    .itemcount 814,5
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <18,1
step << Orc/Troll
    .goto 1454/1,-4439.37,1633.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entrega la misión Un viaje a Orgrimmar
    .accept 6385 >>Acepta la misión Doras, maestro de jinetes del viento
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << Orc/Troll
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Doras|r
    .turnin 6385 >> Entrega la misión Doras, maestro de jinetes del viento
    .accept 6386 >> Acepta la misión Regresar a El Cruce
    .target Doras
    .isOnQuest 6385
step << Orc/Troll
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Doras|r
    .accept 6386 >> Acepta la misión Regresar a El Cruce
    .target Doras
    .isQuestTurnedIn 6385
step << Tauren/Undead
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
    >>|cRXP_WARN_¡No vueles a ningún lado!|r
    .fp Orgrimmar >> Consigue la ruta de vuelo de Orgrimmar
    .target Doras
    .isQuestAvailable 4921
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 285 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 8198 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 13795 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 2643 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >> Entrena los hechizos de tu mascota
    .target Xao'tsu
    .xp <18,1
step << Troll Hunter/Orc Hunter/Priest
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Aprende el uso de Bastones
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Aprende el uso de Arcos
    .target Hanashi
step << Warrior !Skyborne
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprende el uso de Hachas de dos manos
    .train 227 >>Aprende el uso de Bastones
    .target Hanashi
    .money <0.020
step << Warrior/Paladin/Shaman !Skyborne
    #optional
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprende el uso de Hachas de dos manos
    .target Hanashi
    .money <0.010
step << Hunter
    .goto 1454/1,-4819.1,2099.05
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
step << Warrior
    .goto 1454/1,-4819.1,2099.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compra un|r |T135423:0|t[Hacha de batalla] |cRXP_BUY_a este vendedor|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equipa el|r |T135423:0|t[Hacha de batalla] |cRXP_WARN_cuando alcances nivel 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equipa el|r |T135423:0|t[Hacha de batalla]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8019 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 913 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <18,1
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Acepta la misión Enemigos ocultos
    .target Thrall
step
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Durotar >>Sal de Orgrimmar
step
    .goto Durotar,53.08,9.19,0
    >>Mata a los |cRXP_ENEMY_Filo Ardiente|r en Roca del Cráneo hasta que obtengas una |cRXP_LOOT_Insignia de Teniente|r
    .complete 5726,1 --Lieutenant's Insignia (1)
step
    #completewith next
    .goto 1454/1,-4367.46,1405.44,50,0
    .zone Orgrimmar >> Entra en Orgrimmar
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >> Entrega la misión Enemigos ocultos
    .accept 5727 >> Acepta la misión Enemigos ocultos
    .target Thrall
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >> Aprende |T136058:0|t[Forzar cerradura]
    .train 921 >> Aprende |T133644:0|t[Robar]
    .accept 2379 >> Acepta la misión Zando'Zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >> Entrega la misión Mano Destrozada
    .accept 1858 >> Acepta la misión Mano Destrozada
    .target Therzok
step << Rogue
    .goto 1454/1,-4279.79,1778.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Entrega la misión Zando'zan
    .accept 2382 >>Acepta la misión Desdio de Trinquete
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #optional
    #completewith next
    .goto 1454/1,-4271.1,1810.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Compra |r |T134065:0|t[Herramientas de ladrón] |cRXP_BUY_a este vendedor|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1773.24
    >>|cRXP_WARN_Usa|r |T136058:0|t[Forzar cerradura] |cRXP_WARN_para abrir la|r |T133626:0|t[Cartera de Tazan]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Entrega la misión Mano Destrozada
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4437.87,1637.33
    >>|cRXP_WARN_Usa|r |T133644:0|t[Robar] |cRXP_WARN_con|r |cRXP_ENEMY_Gamon|r |cRXP_WARN_en la Posada. Usa su llave para abrir la|r |T133626:0|t[Cartera de Tazan]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto 1454/1,-4280.07,1772.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Entrega la misión Mano Destrozada
    .target Therzok
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1455 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 1014 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r y compra |T133738:0|t[Grimorio Sacrificio]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r y compra |T133738:0|t[Grimorio Descarga de Fuego (Rango 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
    .target Kurgul
    .xp <18,1
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .accept 5761 >>Acepta la misión Matar a la bestia
    .target Neeru Fireblade
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
step
    #label HiddenEnemiesPickup
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >> Entrega la misión Enemigos ocultos
    .accept 5728 >> Acepta la misión Enemigos ocultos
    .target Thrall
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destruye la|r |T134417:0|t[Insignia de Teniente] |cRXP_WARN_ya que ya no la necesitas|r
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >> Entra por el portal de la instancia a Sima Ígnea. Entra en la mazmorra
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >> Entrega la misión Buscando la cartera perdida
    .accept 5724 >> Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isOnQuest 5722
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Maur|r
    .accept 5724 >> Acepta la misión La vuelta de la cartera perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
step
    #label TroggsShamans
    >>Mata |cRXP_ENEMY_Troggs Furia Ardiente|r y |cRXP_ENEMY_Chamanes Furia Ardiente|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
step
    #optional
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
step
    >>Mata a |cRXP_ENEMY_Taragaman el Hambriento|r. Despójalo para obtener su |cRXP_LOOT_Corazón|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
step
    #label BazzalanandJergosh
    >>Mata a |cRXP_ENEMY_Bazzalan|r y a |cRXP_ENEMY_Jergosh el Convocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
step
    >>Mata |cRXP_ENEMY_Cultores Hoja Abrasadora|r y |cRXP_ENEMY_Brujos Hoja Abrasadora|r. Despójalos para obtener los |cRXP_LOOT_Hechizos de las Sombras|r y los |cRXP_LOOT_Encantamientos desde el infierno|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5761 >>Entrega la misión Matar a la bestia
    .target Neeru Fireblade
    .isQuestComplete 5761
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >> Entrega la misión Enemigos ocultos
    .accept 5729 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestComplete 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >> Acepta la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Neeru Hojafuego|r
    .turnin 5729 >> Entrega la misión Enemigos ocultos
    .accept 5730 >> Acepta la misión Enemigos ocultos
    .target Neeru Fireblade
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >> Entrega la misión Enemigos ocultos
    .target Thrall
    .isQuestTurnedIn 5728

    ]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 17-18 Ruinas de Lordaeron
#version 11
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#next 18-21 Los Baldíos

step
    #sticky
    #completewith EnterRoL
    .subzone 16611 >> Ahora deberías buscar un grupo para Ruins of Lordaeron
step
    #completewith next
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step
    .goto 1411/1,-4648.55,1321.88,40 >>Sube a la Torre del Zepelín
    .zone Tirisfal Glades >>Toma el zepelín hacia los Claros de Tirisfal
    >>|cRXP_WARN_Crea agua mientras esperas|r << Mage
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step
    .goto 1420/0,84.900,2023.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deathguard Kristof::251001|r
    .accept 92422 >>Acepta la misión The Cólera of Rath'mael
    .target Deathguard Kristof::251001
step
    #completewith UCPickups
    >>|cRXP_WARN_Si es posible, haz que alguien en tu grupo comparta la siguiente misión|r
    .accept 92401 >>Acepta la misión A Terrorized Request
step
    #completewith UCPickups
    .goto 1420/0,240.75,1877.57
    .zone Undercity >>Viaja a Entrañas
step
    #completewith UCPickups
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15,0
    .goto 1458/0,266.300,1567.200,20 >>Toma el ascensor para bajar a Entrañas
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .goto 1458/0,266.300,1567.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fp Undercity >>Consigue la ruta de vuelo de Entrañas
    .target Michael Garrett::4551
step
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,428.400,1417.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theodore Griffs::11835|r
    .accept 95216 >>Acepta la misión La nueva peste
    .target Theodore Griffs::11835
step
    .goto 1458/0,415.400,1389.900,50,0
    .goto 1458/0,373.500,1362.200,50,0
    .goto 1458/0,341.400,1434.800,50,0
    .goto 1458/0,369.400,1467.800,50,0
    .goto 1458/0,427.900,1413.700,50,0
    .goto 1458/0,438.100,1352.900,50,0
    .goto 1458/0,396.100,1308.800,50,0
    .goto 1458/0,316.000,1304.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morbin Lightbane::266484|r
    .accept 92421 >>Acepta la misión Justicia de la Luz
    .target Morbin Lightbane::266484
step
    #label UCPickups
    .isQuestComplete 5725
    .goto 1458/0,334.02,1262.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Varimathras::2425|r
    .turnin 5725 >>Entrega la misión Poder destructivo
    .target Varimathras::2425
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .zoneskip Undercity,1
    .zoneskip Silverpine Forest
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >>Abandona Entrañas por las Cloacas
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .zoneskip Silverpine Forest
    .goto 1420/0,629.36,1553.42,50,0
    .goto 1421/0,1204.68,1290.07
    .zone Silverpine Forest >>Viaja al Bosque de Argénteos
step << Tauren/Hunter/Orc Shaman/Troll Shaman
    #completewith AFrightenedRequest
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .subzoneskip 228
    .goto 1421/0,1204.68,1290.07,50,0
    .goto 1421/0,1359.66,864.19,50,0
    .goto 1421/0,1359.66,741.27,50,0
    .goto 1421/0,1365.12,607.15,100,0
    .goto 1421/0,1538.58,511.39
    .subzone 228 >>Viaja a El Sepulcro
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith AFrightenedRequest
    .isQuestAvailable 92401
    .isNotOnQuest 92401
    .subzoneskip 228
    .goto 1458/0,266.300,1567.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fly Sepulcher >>Vuela a El Sepulcro
    .target Michael Garrett::4551
step
    #label AFrightenedRequest
    .goto 1421/0,1579.600,461.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tabitha Heartweaver::250686|r
    .accept 92401 >>Acepta la misión A Terrorized Request
    .target Tabitha Heartweaver::250686
step
    #completewith next
    .zoneskip Silverpine Forest,1
    .goto 1421/0,1533.96,474.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Karos Razok::2226|r
    .fly Undercity >>Vuela a Entrañas
    .target Karos Razok::2226
step
    #label EnterRoL
    .goto 1458/0,188.400,1804.500
    .subzone 16611 >>Entra en Ruins of Lordaeron
step
    #completewith RuinsRathma
    .isOnQuest 92421
    >>Mata a los |cRXP_ENEMY_No-muertos|r. Despójalos para obtener sus |T458717:0|t[|cRXP_LOOT_Intact Limbs|r]
    .complete 92421,1 --Intact Limbs (25)
    .mob Skeleton::250618
    --.mob Cadaver::250621
    --.mob Ragged Ghoul::250622
    --.mob Mangled Cadaver::250623
    --.mob Skeletal Mage::250624
    --.mob Skeletal Soldier::250626
    --.mob Ghoul::250627
    --.mob Plague Ghoul::250630
    .mob Fallen Berserker::250656
    --.mob Living Monstrosity::250689
    .mob Flesh Golem::255109
    .mob Fallen Necromancer::255964
step
    #completewith RuinsLimbs
    .isQuestAvailable 95204
    .isNotOnQuest 95204
    >>Despoja y usa la |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] para iniciar la misión
    >>|cRXP_WARN_Tiene 5 posibles ubicaciones de aparición|r
    .collect 275521,1,95204 --Crest of Lordaeron (1)
    .accept 95204 >>Acepta la misión Crest of Lordaeron
    .use 275521
step
    .isOnQuest 95216
    >>Mata a |cRXP_ENEMY_Witherfang::250483|r. Despójalo para obtener un |T132108:0|t[|cRXP_LOOT_Highly Tóxico Sufrimiento|r]
    .complete 95216,1 --Highly Toxic Strain (1)
    .mob Witherfang::250483
step
    .isQuestAvailable 97288
    .isNotOnQuest 97288
    >>Mata a |cRXP_ENEMY_The Barón::250660|r. Despoja y usa su |T2492254:0|t[|cRXP_LOOT_Abominable Cabeza|r] para iniciar la misión
    .collect 280438,1,97288 --Abominable Head (1)
    .accept 97288 >>Acepta la misión Tormento infinito
    .use 280438
    .mob The Baron::250660
step
    #label RuinsRathma
    .isOnQuest 92422
    >>Mata a |cRXP_ENEMY_Rath'mael::250657|r
    .complete 92422,1 --Rath'mael Slain (1)
    .mob Rath'mael::250657
    .target Edward Heartweaver::250842
step
    .isOnQuest 92401
    >>Acércate al cuerpo de |cRXP_FRIENDLY_Edward Heartweaver::250842|r cerca de |cRXP_ENEMY_Rath'mael::250657|r
    .complete 92401,1
    .target Edward Heartweaver::250842
step
    #label RuinsLimbs
    .isOnQuest 92421
    >>Mata a los |cRXP_ENEMY_No-muertos|r. Despójalos para obtener sus |T458717:0|t[|cRXP_LOOT_Intact Limbs|r]
    .complete 92421,1 --Intact Limbs (25)
    .mob Skeleton::250618
    --.mob Cadaver::250621
    --.mob Ragged Ghoul::250622
    --.mob Mangled Cadaver::250623
    --.mob Skeletal Mage::250624
    --.mob Skeletal Soldier::250626
    --.mob Ghoul::250627
    --.mob Plague Ghoul::250630
    .mob Fallen Berserker::250656
    --.mob Living Monstrosity::250689
    .mob Flesh Golem::255109
    .mob Fallen Necromancer::255964
step
    .isQuestAvailable 95204
    .isNotOnQuest 95204
    >>Despoja y usa la |T4504543:0|t[|cRXP_LOOT_Crest of Lordaeron|r] para iniciar la misión
    >>|cRXP_WARN_Tiene 5 posibles ubicaciones de aparición|r
    .collect 275521,1,95204 --Crest of Lordaeron (1)
    .accept 95204 >>Acepta la misión Crest of Lordaeron
    .use 275521
step
    .goto 1458/0,188.400,1804.500
    .zone Undercity >>Sal de Ruins of Lordaeron
step
    .isQuestComplete 92422
    .goto 1420/0,84.900,2023.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deathguard Kristof::251001|r
    .turnin 92422 >>Entrega la misión The Cólera of Rath'mael
    .target Deathguard Kristof::251001
step
    .goto 1420/0,240.75,1877.57
    .zone Undercity >>Regresa a Undercity
step
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15,0
    .goto 1458/0,266.300,1567.200,20 >>Toma el ascensor para bajar a Entrañas
step
    .isQuestComplete 95216
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,428.400,1417.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Theodore Griffs::11835|r
    .turnin 95216 >>Entrega la misión La nueva peste
    .target Theodore Griffs::11835
step
    .isOnQuest 97288
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .turnin 97288 >>Entrega la misión Tormento infinito
    .target Master Apothecary Faranell::2055
step
    .isQuestTurnedIn 97288
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .accept 97289 >>Acepta la misión Tormento infinito
    .target Master Apothecary Faranell::2055
step
    .isOnQuest 97289
    .goto 1458/0,433.300,1482.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Unfinished Abominación::271613|r
    .turnin 97289 >>Entrega la misión Tormento infinito
    .target Unfinished Abomination::271613
step
    .isQuestTurnedIn 97289
    .goto 1458/0,433.300,1482.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Unfinished Abominación::271613|r
    .accept 97290 >>Acepta la misión Tormento infinito
    .target Unfinished Abomination::271613
step
    .isOnQuest 97290
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .turnin 97290 >>Entrega la misión Infinite Tormento
    .target Master Apothecary Faranell::2055
step
    .isQuestTurnedIn 97290
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .accept 97291 >>Acepta la misión Tormento infinito
    .target Master Apothecary Faranell::2055
step
    .isQuestComplete 92421
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,371.600,1465.600,50,0
    .goto 1458/0,437.100,1399.300,50,0
    .goto 1458/0,430.600,1342.100,50,0
    .goto 1458/0,397.500,1311.400,50,0
    .goto 1458/0,315.800,1304.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Morbin Lightbane::266484|r
    .turnin 92421 >>Entrega la misión Justicia de la Luz
    *Elige |T133483:0|t[|cRXP_LOOT_The Stitcher|r] para una mejora de mano principal. Aprende Mazas si es necesario << Rogue
    .target Morbin Lightbane::266484
step
    .isOnQuest 97291
    .goto 1458/0,356.700,1563.500
    >>|cRXP_WARN_Despoja|r |T134181:0|t[|cRXP_LOOT_Blisterweed|r] |cRXP_WARN_del recipiente detrás|r |cRXP_FRIENDLY_Katrina Alliestar::4615|r
    .complete 97291,2 --Blisterweed (1)
step
    .isOnQuest 97291
    .goto 1458/0,151.500,1550.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ezekiel Tumbas::4585|r
    >>|cRXP_BUY_Compra una|r |T134799:0|t[|cRXP_LOOT_Essence of Agonía|r]
    .complete 97291,3 --Essence of Agony (1)
    .target Ezekiel Graves::4585
step
    .isOnQuest 95204
    .goto 1458/0,172.100,1667.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Oran Snakewrithe::7825|r
    .turnin 95204 >>Entrega la misión Crest of Lordaeron
    .target Oran Snakewrithe::7825
step
    .isOnQuest 97291
    .goto 1458/0,241.700,1633.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tawny Grisette::4554|r
    >>|cRXP_BUY_Compra una|r |T134522:0|t[|cRXP_LOOT_Toxic Champicráneo|r]
    .complete 97291,1 --Toxic Skullcap (1)
    .target Tawny Grisette::4554
step
    .isOnQuest 97291
    .goto 1458/0,344.000,1423.800,50,0
    .goto 1458/0,373.200,1362.100,50,0
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .turnin 97291 >>Entrega la misión Infinite Tormento
    .target Master Apothecary Faranell::2055
step
    .isQuestTurnedIn 97291
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .accept 97292 >>Acepta la misión Infinite Tormento
    .target Master Apothecary Faranell::2055
step
    .isOnQuest 97292
    .goto 1458/0,442.700,1419.600,50,0
    .goto 1458/0,458.900,1438.600,50,0
    .goto 1458/0,438.800,1468.700
    .use 281327 >>|cRXP_WARN_Usa|r |T134837:0|t[|cRXP_LOOT_Suero siseante|r] |cRXP_WARN_cerca del gusano de arriba|r
    .complete 97292,1
step
    .isQuestComplete 97292
    .goto 1458/0,404.800,1434.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Master Apothecary Faranell::2055|r
    .turnin 97292 >>Entrega la misión Tormento infinito
    .target Master Apothecary Faranell::2055
step << Rogue
    #completewith RuinsRogueTurnin
    #optional
    .isQuestComplete 92401
    .zoneskip Undercity,1
    .goto 1458/0,266.300,1567.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fly Sepulcher >>Vuela a Sepulcher si tienes la ruta de vuelo
    .target Michael Garrett::4551
step << Rogue
    #label RuinsRogueTurnin
    #optional
    .isQuestComplete 92401
    .goto 1421/0,1579.600,461.700
    >>|cRXP_WARN_Solo entrega ahora para una mejora de mano izquierda|r
    >>Toma las cloacas y sigue el camino a Sepulcher si no puedes volar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tabitha Heartweaver::250686|r
    .turnin 92401 >>Entrega la misión A Aterrorizado Request
    .target Tabitha Heartweaver::250686

    ]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 18-21 Los Baldíos
#version 11
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1
#next 21-22 Cuevas de los Lamentos

step
    #completewith FoodandWater2
    .hs >> Usa tu Piedra de hogar para ir a El Cruce
    .use 6948
    .bindlocation 380,1
    .zoneskip The Barrens
step
    #label FoodandWater2
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 3281,865,905
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith Ignition
    >>Mata a cada |cRXP_ENEMY_Raptor|r que veas. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3031.48,461.91
    >>Usa el |T134227:0|t[Cuerno de Echeyakee] para invocar a |cRXP_ENEMY_Echeyakee|r
    >>Mata a |cRXP_ENEMY_Echeyakee|r. Despójalo para obtener |cRXP_LOOT_Pellejo de Echeyakee|r
    >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r no aparece después de usar el|r |T134227:0|t[Cuerno de Echeyakee]|cRXP_WARN_ o no le diste el primer golpe al aparecer, salta este paso|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step << !Tauren !Hunter !Shaman/Skyborne
    #optional
    .goto 1413/1,-2669.72,-481.94
    .abandon 881 >>|cRXP_WARN_Si |cRXP_ENEMY_Echeyakee|r no apareció después de usar el|r |T134227:0|t[Cuerno de Echeyakee]|cRXP_WARN_ o no le diste el primer golpe al aparecer, abandona la misión Echeyakee, luego regresa a la ciudad y acéptala de nuevo|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Acepta la misión Echeyakee
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3031.48,461.91
    >>Usa el |T134227:0|t[Cuerno de Echeyakee] para invocar a |cRXP_ENEMY_Echeyakee|r
    >>Mata a |cRXP_ENEMY_Echeyakee|r. Despójalo para obtener |cRXP_LOOT_Pellejo de Echeyakee|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step << !Tauren !Hunter !Shaman/Skyborne
	#label Samophlange
    .goto 1413/1,-2686.95,825.40
    >>Haz clic en la |cRXP_PICK_Consola de control|r
    .turnin 894 >>Entrega la misión El churumbele
    .accept 900 >>Acepta la misión El churumbele
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2686.95,842.290
    >>Haz clic en la |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_¡Ten cuidado! Dos enemigos aparecerán después de que cierres la Válvula|r
    .complete 900,1 --Shut off Main Control Valve (1)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2675.80,842.290
    >>Haz clic en la |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Un enemigo aparecerá después de que cierres la Válvula|r
    .complete 900,3 --Shut off Regulator Valve (1)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2679.86,830.80
    >>Haz clic en la |cRXP_PICK_Válvula|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2686.95,825.40
    >>Haz clic en la |cRXP_PICK_Consola de control|r
    .turnin 900 >>Entrega la misión El churumbele
    .accept 901 >>Acepta la misión El churumbele
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-2731.54,909.850
    >>Mata a |cRXP_ENEMY_Manitas el Risitas|r en el edificio. Despójalo para obtener su |cRXP_LOOT_Llave de la consola|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step << !Tauren !Hunter !Shaman/Skyborne
    #label SamophlangeComplete
    .goto 1413/1,-2686.95,825.40
    >>Haz clic en la |cRXP_PICK_Consola de control|r
    .turnin 901 >>Entrega la misión El churumbele
    .accept 902 >>Acepta la misión El churumbele
step << !Tauren !Hunter !Shaman/Skyborne
    #label Ignition
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Machacador de Rabiaire|r en el Fangal
    >>|cRXP_FRIENDLY_Machacador de Rabiaire|r |cRXP_WARN_tiene un tiempo de reaparición largo. Considera omitir esta misión si hay mucha competencia|r
    .accept 858 >>Acepta la misión La llave de contacto
    .target Wizzlecrank's Shredder
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith next
    +|cRXP_WARN_Ten cuidado si el|r |cRXP_ENEMY_Supervisor Asas|r |cRXP_WARN_o la|r |cRXP_ENEMY_Bestia de lodo|r |cRXP_WARN_están vivos. Son élites raros de nivel 19 muy fuertes|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3104.44,1040.25,20,0
    .goto 1413/1,-3086.20,1055.78,12,0
    .goto 1413/1,-3063.91,1049.70,12,0
    .goto 1413/1,-3056.82,1038.89,12,0
    .goto 1413/1,-3064.92,1034.16,12,0
    .goto 1413/1,-3086.20,1055.78
    >>Mata al |cRXP_ENEMY_Supervisor Palarrastre|r. Despójalo para obtener su |cRXP_LOOT_Llave|r
    >>|cRXP_WARN_Patrulla subiendo y bajando la plataforma|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step << !Tauren !Hunter !Shaman/Skyborne
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Machacador de Rabiaire|r
    >>|cRXP_FRIENDLY_Machacador de Rabiaire|r |cRXP_WARN_tiene un tiempo de reaparición largo. Considera omitir esta misión si hay mucha competencia|r
    >>|cRXP_WARN_Esto iniciará una escolta. Asegúrate de estar a plena salud|r
    .turnin 858 >>Entrega la misión La llave de contacto
    .accept 863,1 >>Acepta la misión La fuga
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step << !Tauren !Hunter !Shaman/Skyborne
    #optional
    .goto 1413/1,-3104.44,1109.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Machacador de Rabiaire|r
    >>|cRXP_FRIENDLY_Machacador de Rabiaire|r |cRXP_WARN_tiene un tiempo de reaparición largo. Considera omitir esta misión si hay mucha competencia|r
    >>|cRXP_WARN_Esto iniciará una escolta. Asegúrate de estar a plena salud|r
    .accept 863,1 >>Acepta la misión La fuga
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step << !Tauren !Hunter !Shaman/Skyborne
    #label Slugs
    .goto 1413/1,-3031.48,1088.21,30,0
    .goto 1413/1,-3002.10,1130.78
    >>|cRXP_WARN_Dos|r |cRXP_ENEMY_Mercenarios de Ventura y Cía.|r |cRXP_WARN_aparecerán cuando la trituradora suba al terreno elevado. Mátalos y luego espera por su evento de RP al final|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step << !Tauren !Hunter !Shaman/Skyborne
    #loop
    .goto 1413/1,-2879.48,781.48,0
    .goto 1413/1,-2879.48,781.48,90,0
    .goto 1413/1,-2909.88,484.21,90,0
    .goto 1413/1,-2666.500,719.600,90,0
    .goto 1413/1,-2965.400,1009.100,90,0
    >>Mata a los |cRXP_ENEMY_Raptores|r. Despójalos para obtener sus |cRXP_LOOT_Cabezas|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step << !Tauren !Hunter !Shaman/Skyborne
    #completewith
    .subzone 380 >>Viaja a El Cruce
step
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entrega la misión Raptores ladrones
    .accept 3281 >>Acepta la misión La plata robada
    .target Gazrog
step
    .goto 1413/1,-2670.74,-482.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Entrega la misión Echeyakee
    .accept 905 >>Acepta la misión Los segadores furiosos
    .target Sergra Darkthorn
step
    #optional
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Destruye el|r |T134227:0|t[Cuerno de Echeyakee] |cRXP_WARN_ya que ya no lo necesitas|r
step << Hunter
    .goto 1413/1,-2612.98,-411.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a este vendedor|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Vuela a Trinquete
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Desdio|r
    .turnin 2382 >>Entrega la misión Desdio de Trinquete
    .accept 2381 >>Acepta la misión Saquear a los saqueadores
    .target Wrenix the Wretched
step << Rogue
    .goto 1413/1,-3773.24,-841.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Aparato Gizmotrónico de Wrenix|r
    >>Obtén un|cRXP_WARN_ |T134059:0|t[G.E.A.Q.] |ry una|cRXP_WARN_ |T134065:0|t[Herramientas de ladrón]|r
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r y |cRXP_FRIENDLY_Vertipeluca|r
    .turnin 902 >>Entrega la misión El churumbele
    .turnin 863 >> Entrega la misión La fuga
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> Entrega la misión La fortuna de un minero
    .target +Wharfmaster Dizzywig
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r y |cRXP_FRIENDLY_Vertipeluca|r
    .turnin 902 >>Entrega la misión El churumbele
    .target +Sputtervalve
    .goto 1413/1,-3759.06,-902.18
    .turnin 896 >> Entrega la misión La fortuna de un minero
    .target +Wharfmaster Dizzywig
    .goto 1413/1,-3796.55,-985.28
    .isQuestComplete 896
step
    #optional
    .goto 1413/1,-3759.06,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .turnin 863 >> Entrega la misión La fuga
    .target Sputtervalve
    .isQuestComplete 863
step
    #label RapHornsPickup
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Acepta la misión Cuernos de raptor
    .target Mebok Mizzyrix
step << skip
    .goto 1413/1,-3664.82,-1050.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Wiley|r
    -->>|cRXP_BUY_Buy|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Compra|r |T132796:0|t[Zumo de melón] |cRXP_BUY_a este vendedor|r << Mage/Warlock/Priest/Shaman/Druid
    -->>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_are extremely cheap, buy as many as you want|r
    .vendor >> Vende la Basura
    --.collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (10)
    .target Innkeeper Wiley
step << Rogue
	#completewith next
    .goto 1413/1,-3967.8,-1457.54
    +|cRXP_WARN_Salta al barco, baja al 2.º piso y sube tu habilidad de Forzar cerraduras al menos hasta 70|r
step << Rogue
    .goto 1413/1,-3958.68,-1457.54
    >>Cuando tengas Forzar cerraduras al 70, ve al piso inferior del barco y abre |cRXP_PICK_La joya de los Mares del Sur|r
    >>|cRXP_WARN_Usa el|r |T134059:0|t[G.E.A.Q.] |cRXP_WARN_con|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    #label LeaveRatchet
    .goto 1413/1,-3819.86,-1714.95
    >>Despoja el |cRXP_PICK_Cajón|r del suelo
    .complete 888,2 --Telescopic Lens (1)
step
    .goto 1413/1,-3723.59,-1741.30
    >>Despoja el |cRXP_PICK_Cajón|r del suelo
    .complete 888,1 --Shipment of Boots (1)
step
    #optional
    #completewith TestSeeds
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step
    #optional
    #completewith TestSeeds
    >>Mata a los |cRXP_ENEMY_Segadores Solescama|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r y sus |cRXP_LOOT_Plumas|r
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-3192.60,-1919.67,60,0
    .goto 1413/1,-3258.47,-2027.09
    >>Despoja la |cRXP_PICK_Plata robada|r del suelo
    .complete 3281,1 --Stolen Silver (1)
step
    #optional
    #completewith TestSeeds
    >>Mata a los |cRXP_ENEMY_Kolkar|r alrededor del oasis. Despójalos para obtener sus |cRXP_LOOT_Brazales|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #optional
    #completewith Verog
    >>Recoge los |cRXP_LOOT_Champiñones cargados|r alrededor de El Oasis Estancado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto 1413/1,-3012.23,-1275.80
    >>Haz clic en la |cRXP_PICK_Fisura burbujeante|r bajo el agua
    .complete 877,1 --Test the Dried Seeds (1)
step
    #optional
    #completewith next
    #loop
    .goto 1413/1,-3031.48,-1480.51,50,0
    .goto 1413/1,-3127.75,-1320.39,50,0
    .goto 1413/1,-3154.1,-1172.43,50,0
    .goto 1413/1,-2996.02,-1182.56,50,0
    .goto 1413/1,-2949.4,-1146.75,50,0
    .goto 1413/1,-2789.3,-1107.57,50,0
    .goto 1413/1,-2746.74,-1409.57,50,0
    .goto 1413/1,-2880.5,-1550.1,50,0
    >>Mata a los |cRXP_ENEMY_Kolkar|r alrededor del oasis. Despójalos para obtener sus |cRXP_LOOT_Brazales|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    .goto 1413/1,-2742.68,-1208.23
    >>Mata a |cRXP_ENEMY_Verog|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Tiene probabilidad de aparecer cada vez que un |cRXP_ENEMY_Kolkar|r muere|r
    >>|cRXP_WARN_En un servidor muy poblado o en un lanzamiento nuevo, tu mejor opción es acampar en su punto de aparición|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto 1413/1,-3023.38,-1234.58,0
    .goto 1413/1,-3023.38,-1234.58,30,0
    .goto 1413/1,-3000.07,-1208.23,30,0
    .goto 1413/1,-2959.54,-1196.75,30,0
    .goto 1413/1,-2953.46,-1241.34,30,0
    .goto 1413/1,-2977.78,-1304.17,30,0
    .goto 1413/1,-3029.46,-1324.44,30,0
    .goto 1413/1,-3066.95,-1311.61,30,0
    .goto 1413/1,-3059.86,-1264.31,30,0
    >>Recoge los |cRXP_LOOT_Champiñones cargados|r alrededor de El Oasis Estancado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #optional
    #completewith LakotaMani1
    >>Mata a los |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
    .isQuestTurnedIn 819
step
    .goto 1413/1,-2707.22,-1502.130
    >>Haz clic en el |cRXP_PICK_Nido de raptor azul|r. Mata a más |cRXP_ENEMY_Segadores Solescama|r si no tienes una |T132914:0|t[Pluma de Solescama]
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto 1413/1,-2692.02,-1533.89
    >>Haz clic en el |cRXP_PICK_Nido de raptor rojo|r. Mata a más |cRXP_ENEMY_Segadores Solescama|r si no tienes una |T132914:0|t[Pluma de Solescama]
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto 1413/1,-2648.44,-1527.13
    >>Haz clic en el |cRXP_PICK_Nido de raptor amarillo|r. Mata a más |cRXP_ENEMY_Segadores Solescama|r si no tienes una |T132914:0|t[Pluma de Solescama]
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Segadores Solescama|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto 1413/1,-2375.86,-1787.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Cadáver apaleado|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #optional
    #completewith CampTArrive
    >>Mata |cRXP_ENEMY_Morrotormentas|r. Despójalos para obtener un |cRXP_LOOT_Cuerno de truenagarto|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
	>>Mata a |cRXP_ENEMY_Lakota'mani|r. Despójalo para obtener la |T132318:0|t[|cRXP_LOOT_Pezuña de Lakota'mani|r]
    >>Usa la |T132318:0|t[|cRXP_WARN_Pezuña de Lakota'mani|cRXP_LOOT_] |rpara iniciar la misión|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    >>|cRXP_WARN_Omite este paso si no puedes encontrarlo o matarlo. Puedes volver a por él más tarde|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acepta la misión Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
    .xp <18,1
step
    #label CampTArrive
    #completewith next
    .goto 1413/1,-1960.39,-2333.83,120 >> Viaja al Campamento Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto 1413/1,-1995.86,-2376.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
    .home >>Establece tu Piedra de hogar en el Campamento Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 883 >>Entrega la misión Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .accept 878 >>Acepta la misión Tribus en guerra
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >> Consigue la ruta de vuelo del Campamento Taurajo << !Tauren
    .fly Crossroads >>Vuela a El Cruce
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .subzoneskip 380
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >> Entrega la misión Esporas de hongos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r y |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entrega la misión Perdida en la batalla
    .accept 95774 >>Acepta la misión Her Name Is Olgra
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 877 >>Entrega la misión El Oasis Estancado
    .accept 880 >>Acepta la misión Seres alterados
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
    .turnin 905 >>Entrega la misión Los segadores furiosos
    .accept 3261 >>Acepta la misión Jorn Vidente del Cielo
    .target +Sergra Darkthorn
    .goto 1413/1,-2670.74,-482.61
    .turnin 3281 >>Entrega la misión La plata robada
    .target +Gazrog
    .goto 1413/1,-2639.32,-436.00
step
    #optional
    #completewith Hezrul
    .destroy 5165 >>|cRXP_WARN_Elimina cualquier|r |T132914:0|t[Pluma de solescama] |cRXP_WARN_sobrante que aún tengas|r
    .itemcount 5165,1
step << Hunter
    .goto 1413/1,-2556.23,-351.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compra un|r |T134410:0|t[Carcaj medio] |cRXP_BUY_a este vendedor|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,2200,896,1 --Sharp Arrow (2200)
    .target Uthrok
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <18,1
    .xp >20,1
    .cooldown item,6948,>0
step << Druid
    #label DruidTraining2
    .goto 1450/1,-2593.82,7866.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Loganaar|r
    .train 768 >> Aprende tus hechizos de clase
    .target Loganaar
    .xp <20,1
    .cooldown item,6948,>0
step
    #completewith JornSkyseerTurnin
    .hs >> Usa tu Piedra de hogar para ir al Campamento Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
    .cooldown item,6948,>0
step
    #completewith JornSkyseerTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Vuela al Campamento Taurajo
    .subzoneskip 378
    .target Devrak
    .cooldown item,6948,<0
step
    .goto 1413/1,-1995.86,-2375.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Byula|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Byula
    .isOnQuest 3261
step
    #label JornSkyseerTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 3261 >>Entrega la misión Jorn Vidente del Cielo
    .accept 882 >>Acepta la misión Ishamuhale
    .target Jorn Skyseer
step
    #completewith LakotaMani2
    >>Mata a los |cRXP_ENEMY_Razormane Raiders|r. Despójalos para obtener los |cRXP_LOOT_Olgra's Adornments|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
	#completewith Adornments
    >>Mata |cRXP_ENEMY_Morrotormentas|r. Despójalos para obtener un |cRXP_LOOT_Cuerno|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
step
    #completewith Adornments
    >>Mata |cRXP_ENEMY_Jabaespines Erizapúas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r. Guarda las |T134128:0|t[|cRXP_LOOT_Esquirla de sangre|r] que obtengas
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
    #label LakotaMani2
    #loop
    .goto 1413/1,-1951.27,-1956.15,0
    .goto 1413/1,-2031.32,-1703.47,0
    .goto 1413/1,-2183.32,-1858.19,0
    .goto 1413/1,-2453.88,-1991.28,0
    .goto 1413/1,-1951.27,-1956.15,80,0
    .goto 1413/1,-2031.32,-1703.47,80,0
    .goto 1413/1,-2183.32,-1858.19,80,0
    .goto 1413/1,-2453.88,-1991.28,80,0
	>>Mata a |cRXP_ENEMY_Lakota'mani|r. Despójalo para obtener la |T132318:0|t[|cRXP_LOOT_Pezuña de Lakota'mani|r]
    >>Usa la |T132318:0|t[|cRXP_WARN_Pezuña de Lakota'mani|cRXP_LOOT_] |rpara iniciar la misión|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    >>|cRXP_WARN_Omite este paso si no puedes encontrarlo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Acepta la misión Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #label Adornments
    #loop
    .goto 1413/1,-2241.200,-1988.500,0
    .goto 1413/1,-2241.200,-1988.500,50,0
    .goto 1413/1,-2346.200,-1788.600,50,0
    .goto 1413/1,-2458.300,-1824.400,50,0
    .goto 1413/1,-2381.000,-2061.000,50,0
    >>Mata a los |cRXP_ENEMY_Razormane Raiders|r. Despójalos para obtener los |cRXP_LOOT_Olgra's Adornments|r
    .complete 95774,1 --|4/4 Olgra's Adornments
    .mob Razormane Raider
step
    #optional
    #completewith next
    >>Mata |cRXP_ENEMY_Morrotormentas|r. Despójalos para obtener un |cRXP_LOOT_Cuerno|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
step
    #loop
    .goto 1413/1,-2515.7,-2076.41,0
    .goto 1413/1,-2515.7,-2076.41,60,0
    .goto 1413/1,-2518.74,-2125.73,60,0
    .goto 1413/1,-2517.72,-2223.7,60,0
    .goto 1413/1,-2486.31,-2254.1,60,0
    .goto 1413/1,-2494.42,-2282.48,60,0
    .goto 1413/1,-2531.91,-2272.34,60,0
    .goto 1413/1,-2571.43,-2295.31,60,0
    .goto 1413/1,-2620.07,-2285.18,60,0
    .goto 1413/1,-2625.14,-2245.32,60,0
    .goto 1413/1,-2755.86,-2082.49,60,0
    .goto 1413/1,-2813.62,-2054.12,60,0
    .goto 1413/1,-2811.59,-2004.12,60,0
    .goto 1413/1,-2783.22,-1949.39,60,0
    .goto 1413/1,-2747.75,-1889.26,60,0
    .goto 1413/1,-2709.24,-1913.59,60,0
    .goto 1413/1,-2706.2,-1948.72,60,0
    .goto 1413/1,-2687.96,-1973.04,60,0
    .goto 1413/1,-2678.84,-2016.28,60,0
    .goto 1413/1,-2584.6,-2050.74,60,0
    >>Mata |cRXP_ENEMY_Jabaespines Erizapúas|r. Despójalos para obtener sus |cRXP_LOOT_Colmillos|r. Guarda las |T134128:0|t[|cRXP_LOOT_Esquirla de sangre|r] que obtengas
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
    #loop
	.goto 1413/1,-2515.7,-2076.41,60,0
	.goto 1413/1,-2518.74,-2125.73,60,0
	.goto 1413/1,-2517.72,-2223.7,60,0
	.goto 1413/1,-2486.31,-2254.1,60,0
	.goto 1413/1,-2494.42,-2282.48,60,0
	.goto 1413/1,-2531.91,-2272.34,60,0
	.goto 1413/1,-2571.43,-2295.31,60,0
	.goto 1413/1,-2620.07,-2285.18,60,0
	.goto 1413/1,-2625.14,-2245.32,60,0
	.goto 1413/1,-2755.86,-2082.49,60,0
	.goto 1413/1,-2813.62,-2054.12,60,0
	.goto 1413/1,-2811.59,-2004.12,60,0
	.goto 1413/1,-2783.22,-1949.39,60,0
	.goto 1413/1,-2747.75,-1889.26,60,0
	.goto 1413/1,-2709.24,-1913.59,60,0
	.goto 1413/1,-2706.2,-1948.72,60,0
	.goto 1413/1,-2687.96,-1973.04,60,0
	.goto 1413/1,-2678.84,-2016.28,60,0
	.goto 1413/1,-2584.6,-2050.74,60,0
    .xp 19+9500 >> Farmea hasta 9500+/21300 xp
step
    #loop
    .goto 1413/1,-2532.92,-1965.61,0
    .goto 1413/1,-2532.92,-1965.61,50,0
    .goto 1413/1,-2449.83,-1953.45,50,0
    .goto 1413/1,-2377.88,-2018.31,50,0
    .goto 1413/1,-2397.14,-2108.84,50,0
    .goto 1413/1,-2345.46,-2187.21,50,0
    .goto 1413/1,-2415.38,-2179.78,50,0
    >>Mata |cRXP_ENEMY_Morrotormentas|r. Despójalos para obtener un |cRXP_LOOT_Cuerno|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
    .isQuestTurnedIn 819
step
    #completewith next
    >>Mata |cRXP_ENEMY_Segadores Solescama|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #loop
    .goto 1413/1,-2847.06,-1879.13,0
    .goto 1413/1,-2847.06,-1879.13,50,0
    .goto 1413/1,-2859.22,-1804.81,50,0
    .goto 1413/1,-2833.88,-1749.41,50,0
    .goto 1413/1,-2881.51,-1723.74,50,0
    .goto 1413/1,-2932.18,-1698.06,50,0
    .goto 1413/1,-2973.72,-1627.8,50,0
    >>Termina de matar |cRXP_ENEMY_Zancudos de llanura|r. Despójalos para obtener sus |cRXP_LOOT_Riñones|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .isQuestTurnedIn 819
step
    #loop
    .goto 1413/1,-3183.48,-2015.61,0
    .goto 1413/1,-2646.42,-1529.16,0
    .goto 1413/1,-3183.48,-2015.61,90,0
    .goto 1413/1,-2646.42,-1529.16,90,0
    >>Termina de matar |cRXP_ENEMY_Segadores Solescama|r. Despójalos para obtener sus |cRXP_LOOT_Cuernos|r
    >>|cRXP_WARN_Ten cuidado, ya que lanzan|r |T132152:0|t[Vapulear] |cRXP_WARN_(Carga 2 ataques extra cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Mata cualquier |cRXP_ENEMY_Zhebra|r. Despójala para obtener un |cRXP_LOOT_Cadáver reciente de zhebra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #loop
    .goto 1413/1,-3010.20,-1319.04,0
    .goto 1413/1,-3010.20,-1319.04,40,0
    .goto 1413/1,-2959.54,-1292.69,40,0
    .goto 1413/1,-2953.46,-1239.31,40,0
    .goto 1413/1,-2998.04,-1192.02,40,0
    .goto 1413/1,-3050.74,-1225.13,40,0
    .goto 1413/1,-3066.95,-1260.93,40,0
    .goto 1413/1,-3052.76,-1319.710,40,0
    >>Mata |cRXP_ENEMY_Quijafortes de oasis|r en y alrededor del lago. Despójalos para obtener sus |cRXP_LOOT_Caparazones|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
step
    #completewith next
    >>Mata cualquier |cRXP_ENEMY_Zhebra|r. Despójala para obtener un |cRXP_LOOT_Cadáver reciente de zhebra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto 1413/1,-3427.70,-436.67
    .use 10338 >>Usa el |T134368:0|t[|cRXP_LOOT_Cadáver reciente de zhebra|r] en el árbol muerto para invocar a |cRXP_ENEMY_Ishamuhale|r. Mata y despójalo para obtener su |cRXP_LOOT_Colmillo|r
    >>|cRXP_WARN_¡El cadáver solo tiene una duración de 30 minutos!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .subzone 392 >> Viaja a Trinquete
step
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Desdio|r
    .turnin 2381 >>Entrega la misión Saquear a los saqueadores << Rogue
    .target Wrenix the Wretched
step << Rogue
    #optional
    .goto 1413/1,-3767.800,-842.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Desdio|r
    .turnin 2381 >>Entrega la misión Saquear a los saqueadores
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 888 >>Entrega la misión Botín robado
    .target Gazlowe
step
    .goto 1413/1,-3720.300,-920.000
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 92706 >>Acepta la misión WANTED: Bruuz
    .group << Rogue/Warrior
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .turnin 865 >>Entrega la misión Cuernos de raptor
    .accept 1491 >>Acepta la misión Bebidas de inteligencia
    .target Mebok Mizzyrix
step
    .goto 1413/1,-3687.11,-981.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Drohn|r
    .turnin 821 >>Entrega la misión El barril vacío de Chen
    .target Brewmaster Drohn
    .isQuestComplete 821
step << Warrior
    .goto 1413/1,-3680.02,-982.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grazlix|r
    .vendor >>Cómprale |T134583:0|t[|cRXP_FRIENDLY_Pantalones de anillas poderosos|r] si está disponible
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
    .isQuestTurnedIn 865
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto 1413/1,-3675.96,-985.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vexeje|r
    .vendor >> Cómprale |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r] si están disponibles
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
    .isQuestTurnedIn 865
step << Warrior
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipa los|r |T134583:0|t[|cRXP_FRIENDLY_Pantalones de anillas poderosos|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .isQuestTurnedIn 865
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipa los|r |T132603:0|t[|cRXP_FRIENDLY_Brazales de lobo|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isQuestTurnedIn 865
    .xp <20,1
    .equip 9,4794
step
    #loop
    .goto 1413/1,-3911.900,-1049.200
    .goto 1413/1,-3951.600,-1093.500
    .goto 1413/1,-4012.800,-1081.800
    .goto 1413/1,-3973.000,-1028.700
    >>Mata a |cRXP_PICK_Bruuz|r (nivel 20 élite) en el mar cerca de Ratchet
    >>|cRXP_WARN_¡Esto es difícil! Agrúpate si es posible|r << !Rogue !Warrior
    >>|cRXP_WARN_Intenta llevar al enemigo a Ratchet a los guardias que te ayudarán, ¡pero asegúrate de causarle al menos 50% de daño!|r
    .complete 92706,1 --Kill Bruuz
    .mob Bruuz
    .isOnQuest 92706
    .group << Rogue/Warrior
step
    .goto 1413/1,-3728.66,-835.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazlowe|r
    .turnin 92706 >>Entrega la misión WANTED: Bruuz
    .target Gazlowe
    .group << Rogue/Warrior
    .isQuestComplete 92706
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .accept 959 >>Acepta la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Vuela a El Cruce
    .target Bragok
    .subzoneskip 380
step << Hunter
    .goto 1413/1,-2595.75,-473.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thork|r
    .accept 6541 >>Acepta la misión Preséntate ante Kadrak
    .target Thork
step
    #label XroadsHS2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mankrik|r y |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Entrega la misión Consumido por el odio
    .turnin 95774 >>Entrega la misión Her Name Is Olgra
    .target +Mankrik
    .goto 1413/1,-2641.35,-521.12
    .turnin 880 >>Entrega la misión Seres alterados
    .accept 1489 >>Acepta la misión Hamuul Tótem de Runa
    .accept 3301 >>Acepta la misión Mura Tótem de Runa
    .target +Tonga Runetotem
    .goto 1413/1,-2672.76,-544.77
step
    #optional
    #completewith IshamuhaleTurnin
    .destroy 5085 >>|cRXP_WARN_Elimina los|r |T133721:0|t[Colmillos de jabaespín Erizapúas] |cRXP_WARN_sobrantes que aún puedas tener|r
    .itemcount 5085,1
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
    .home >>Establece tu Piedra de hogar en El Cruce
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .dungeon DM
step
    .goto 1413/1,-2555.22,-387.350
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Korran|r
    .accept 868 >> Acepta la misión ¡A cazar huevos!
    .target Korran
step << Warlock
    #completewith next
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul|r
    .trainer >> Aprende tus hechizos de clase
    .accept 1507 >>Acepta la misión Devoradora de almas
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4347.4,1836.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kurgul|r y compra |T133738:0|t[Grimorio Tormento (Rango 2)]
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto 1454/1,-4340.53,1839.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Entrega la misión Devoradora de almas
    .accept 1508 >>Acepta la misión Cazul, el ciego
    .target Cazul
step << Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_a esta vendedora|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto 1454/1,-4199.99,1717.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Entrega la misión Cazul, el ciego
    .accept 1509 >>Acepta la misión Noticias de Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >> Ahora deberías buscar un grupo para Las Minas de la Muerte
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8052 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 2645 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
	.train 14318 >>Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
	.train 14290 >>Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto 1454/1,-4610.95,2135.15
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
	.train 5118 >>Entrena los hechizos de tu mascota
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 845 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormok|r
    .train 1943 >> Aprende tus hechizos de clase
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Orgrimmar,47.98,45.93
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >> Aprende tus hechizos de clase
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Orgrimmar,47.98,45.93
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zevrost|r
    .train 706 >> Aprende tus hechizos de clase
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto 1454/1,-4460.31,1685.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Frasco de aceite] |cRXP_BUY_de la Casa de Subastas si es posible|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto 1411/1,-4648.55,1321.88,40 >>Sube a la Torre del Zepelín
    .zone Stranglethorn Vale >>Toma el Zepelín a Vega de Tuercespina
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto 1434/0,273.91,-12406.71,40,0
    .goto 1434/0,492.15,-12499.03,40,0
    .goto 1434/0,759.53,-12494.77,60,0
    .goto 1434/0,1004.57,-12317.37,60,0
    .goto 1434/0,1178.78,-12166.78,60,0
    .goto 1434/0,1360.0,-11978.74,60,0
    .goto 1436/0,1578.87,-11699.5,60,0
    .goto 1436/0,1718.17,-11480.4,40,0
    .goto 1436/0,1966.32,-11407.13,200 >> Nada directamente al oeste desde Grom'Gol hacia el Arrecife Mortal y luego nada al norte hacia Páramos de Poniente
    >>|cRXP_WARN_Evita la isla. ¡Sigue la ruta marcada por seguridad!|r
    .dungeon DM
step
    #completewith next
    .goto 1436/0,1966.32,-11407.13,40 >> Viaja al Faro de Poniente
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 103 >> Acepta la misión Guardián de la Llama
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .turnin 103 >> Entrega la misión Guardián de la Llama
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .accept 104 >> Acepta la misión La amenaza costera
    .target Captain Grayson
    .dungeon DM
step
    .goto 1436/0,1811.62,-11358.37
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mata a |cRXP_ENEMY_Viejo Ojosombrío|r. Despójalo para obtener su |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Viejo Ojosombrío|r |cRXP_WARN_patrulla de arriba a abajo por la Playa Larga. Si no lo ves a lo largo de Playa Larga, espera a que aparezca en el campamento |cRXP_ENEMY_Múrloc|r más al sur|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto 1436/0,1966.32,-11407.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Capitán Grisillo|r
    .turnin 104 >> Entrega la misión La amenaza costera
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >> Abandona la misión Guardián de la Llama
    .dungeon DM
step
    #label EnterDM
    .goto 1415/0,1596.2,-11768.97,8,0
    .goto 1415/0,1596.2,-11780.71,8,0
    .goto 1415/0,1606.76,-11797.13,8,0
    .goto 1415/0,1582.12,-11799.48,8,0
    .goto 1415/0,1596.2,-11813.56,15,0
    .goto 1415/0,1631.4,-11846.41,15,0
    .goto 1415/0,1649.0,-11898.04,15,0
    .goto 1415/0,1659.56,-11919.16,15,0
    .goto 1415/0,1698.28,-11891.0,15,0
    .goto 1415/0,1744.04,-11881.61
    .zone 291 >> Entra por el portal de la instancia a las Minas de la Muerte. Entra en la mazmorra
    .dungeon DM
step
    .hs >> Usa tu Piedra de hogar hacia Los Baldíos después de completar Minas de la Muerte
    .zone The Barrens >> Llega a Los Baldíos
    .use 6948
    .dungeon DM
step
    #optional
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Tabernero Boorand|r
	.vendor >>|cRXP_BUY_Vende la basura y luego reabastécete de comida y agua si es necesario|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vende tu basura, luego reabastécete de comida si es necesario|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #completewith TurninDogran
    .goto 1454/1,-4313.60,1676.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Doras|r
	.fly Crossroads >> Vuela a El Cruce
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto 1413/1,-2639.32,-436.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Entrega la misión Noticias de Dogran
    .accept 1510 >>Acepta la misión Noticias de Dogran
    .target Gazrog
step
    .goto 1413/1,-2589.67,-424.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Inicia una misión cronometrada de 45 minutos|r
    .accept 853 >> Acepta la misión Boticaria Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Estás en una misión cronometrada, no te vayas AFK. Se entregará 20-30 minutos después de aceptarla|r
    .isOnQuest 853
step
    #completewith TribesTurnin
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >> Vuela al Campamento Taurajo
    .target Devrak
step
    .goto 1413/1,-2515.7,-2076.41
    >>Mata |cRXP_ENEMY_Jabaespines Erizapúas|r. Despójalos para obtener una |T134128:0|t[|cRXP_LOOT_Esquirla de sangre|r]
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .turnin 878 >>Entrega la misión Tribus en guerra
    .accept 5052 >>Acepta la misión Esquirlas de sangre de Agamaggan
    .turnin 5052 >>Entrega la misión Esquirlas de sangre de Agamaggan
    .target Mangletooth
step
    #completewith IshamuhaleTurnin
    .goto 1413/1,-1891.48,-2391.93,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    +|cRXP_WARN_Usa tus|r |T134128:0|t[|cRXP_LOOT_Esquirlas sangrientas|r] |cRXP_WARN_para obtener buffs. Guarda al menos 4 de ellas para después|r << Tauren/Shaman/Orc Warrior/Troll Warrior
    +|cRXP_WARN_Usa tus|r |T134128:0|t[|cRXP_LOOT_Esquirlas sangrientas|r] |cRXP_WARN_para obtener buffs. Guarda al menos 4 de ellas para después|r << !Tauren !Shaman !Warrior/Undead
    +|cRXP_WARN_¡Asegúrate de desactivar cualquier función de autocompletar de addons como Questie o Leatrix Plus para esto!|r
    .target Mangletooth
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .turnin 883 >>Entrega la misión Lakota'mani
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 882 >>Entrega la misión Ishamuhale
    .accept 907 >>Acepta la misión Los truenagartos iracundos
    .target Jorn Skyseer
step
    #completewith SleepingBag1
    >>Mata a los |cRXP_ENEMY_Truenagartos|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    #completewith LizardBlood
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    >>Mata a |cRXP_ENEMY_Owatanka|r. Despójalo para obtener |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r]
    >>|cRXP_WARN_Usa la |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r] para iniciar la misión|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acepta la misión Owatanka
    .use 5102
    .unitscan Owatanka
step
    #label SleepingBag1
    .goto The Barrens,46.361,73.904
    >>Haz clic en los |cRXP_PICK_Restos quemados|r en el suelo
    .accept 79007 >> Acepta la misión ... Y la nota que encontraste
step
    #label LizardBlood
    #loop
    .goto 1413/1,-1868.18,-2498.00,0
    .goto 1413/1,-1868.18,-2498.00,60,0
    .goto 1413/1,-1861.08,-2561.51,60,0
    .goto 1413/1,-1842.84,-2618.94,60,0
    .goto 1413/1,-1888.44,-2650.690,60,0
    .goto 1413/1,-2004.98,-2683.80,60,0
    .goto 1413/1,-2133.67,-2590.56,60,0
    .goto 1413/1,-2182.31,-2479.76,60,0
    .goto 1413/1,-2232.98,-2478.41,60,0
    .goto 1413/1,-2273.51,-2456.79,60,0
    .goto 1413/1,-2356.60,-2513.54,60,0
    .goto 1413/1,-2428.55,-2517.60,60,0
    .goto 1413/1,-2406.26,-2424.36,60,0
    .goto 1413/1,-2363.70,-2395.98,60,0
    .goto 1413/1,-2253.24,-2345.99,60,0
    >>Mata a los |cRXP_ENEMY_Truenagartos|r. Despójalos para obtener su |cRXP_LOOT_Sangre|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn|r
    .turnin 884 >>Entrega la misión Owatanka
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
    .accept 913 >>Acepta la misión El chillido del halcón trueno
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label Thunderhawk
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn|r
    .turnin 907 >>Entrega la misión Los truenagartos iracundos
    .accept 913 >>Acepta la misión El chillido del halcón trueno
    .target Jorn Skyseer
step
    #completewith next
    .goto 1413/1,-1899.59,-2624.34,0
    .goto 1413/1,-2016.12,-2650.02,0
    .goto 1413/1,-2400.18,-2398.01,0
    .goto 1413/1,-2363.70,-2537.19,0
    .goto 1413/1,-1899.59,-2624.34,80,0
    .goto 1413/1,-2016.12,-2650.02,80,0
    .goto 1413/1,-2363.70,-2537.19,80,0
    .goto 1413/1,-2400.18,-2398.01,80,0
    >>Mata a |cRXP_ENEMY_Owatanka|r. Despójalo para obtener |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r]
    >>|cRXP_WARN_Usa la |T133723:0|t[|cRXP_LOOT_Punta de cola de Owatanka|r] para iniciar la misión|r
    >>|cRXP_WARN_Tiene 4 puntos de aparición (marcados en el mapa)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Acepta la misión Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto 1413/1,-1919.86,-2652.04,0
    .goto 1413/1,-1919.86,-2652.04,60,0
    .goto 1413/1,-2096.18,-2531.11,60,0
    .goto 1413/1,-2341.4,-2352.74,60,0
    .goto 1413/1,-1982.68,-2217.62,60,0
    .goto 1413/1,-1775.96,-2235.86,60,0
    >>Mata a una |cRXP_ENEMY_Prole de Halcón Trueno|r o a un |cRXP_ENEMY_Desechanube Halcón Trueno|r. Despójalo para obtener |cRXP_LOOT_Alas de halcón trueno|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 884 >>Entrega la misión Owatanka
    .turnin 913 >>Entrega la misión El chillido del halcón trueno
    .accept 874 >>Acepta la misión Mahren Vidente del Cielo
    .accept 6382 >>Acepta la misión La Caza de Vallefresno << Hunter
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto 1413/1,-1921.88,-2383.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorn Vidente del Cielo|r
    .turnin 913 >>Entrega la misión El chillido del halcón trueno
    .accept 874 >>Acepta la misión Mahren Vidente del Cielo
    .accept 6382 >>Acepta la misión La Caza de Vallefresno << Hunter
    .target Jorn Skyseer
step
    #optional
    .xp 20 >>Mata enemigos hasta subir al nivel 20
step << !Tauren !Skyborne
    .goto 1413/1,-1891.48,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quebrantadientes|r
    .aura 16618 >>|cRXP_WARN_Si te quedan 10|r |T134128:0|t[|cRXP_LOOT_Esquirlas de sangre|r |cRXP_WARN_, úsalas para obtener|r |T136022:0|t[Espíritu del viento] |cRXP_WARN_de|r |cRXP_FRIENDLY_Quebrantadientes|r
    >>|cRXP_WARN_Omite este paso si tienes la ruta de vuelo de Cima del Trueno|r
    .itemcount 5075,10
    .target Mangletooth
    .train 2645,1 << Shaman --skip if ghost wolf trained
    .train 5118,1 << Hunter --skip if cheetah trained
step << !Tauren !Skyborne
    #completewith next
    .goto 1412/1,-1480.52,-2339.56,120,0
    .zone Mulgore >>Viaja a Mulgore
step << !Tauren !Skyborne
    #completewith DeathDUPpickup
    .goto 1456/1,184.96,-1308.69
    .zone Thunder Bluff >>Toma el ascensor hacia Cima del Trueno
    >>|cRXP_WARN_Si tienes la ruta de vuelo de Cima del Trueno, vuela allí en su lugar|r
step << Tauren/Skyborne
    #completewith DeathDUPpickup
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Vuela a Cima del Trueno
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step << Undead Warrior/Orc Warrior/Troll Warrior/Troll Shaman/Orc Shaman
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Aprende el uso de Mazas de dos manos
    .train 227 >>Aprende el uso de Bastones
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Aprende el uso de Bastones
    .target Ansekhwa
step << Rogue !Skyborne
    .goto 1456/1,89.46,-1286.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Aprende el uso de Mazas
    .target Ansekhwa
step << Rogue
    .goto 1456/1,110.13,-1299.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Compra |r |T135423:0|t[Hacha arrojadiza mortal] |cRXP_BUY_a este vendedor|r
    .collect 3137,1,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step << Rogue
    #optional
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo] 
    .train 6761 >>Aprende tus hechizos de clase
    .target Boarton Shadetotem
    .xp <16,1
    .xp >20,1
step << Rogue
    .goto 1456/1,104.500,-1308.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Boarton Totemsombrío|r
    >>|cRXP_WARN_Está|r |T132320:0|t[En sigilo] 
    .train 1943 >>Aprende tus hechizos de clase
    .target Boarton Shadetotem
    .xp <20,1
step
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Deposita tus |T134128:0|t[Esquirlas de sangre]
    .bankdeposit 5059 >> Deposita tu |T132938:0|t[Garra de excavación]
    .target Chesmu
    .isOnQuest 868
step
    #optional
    .goto 1456/1,24.85,-1252.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >> Deposita tus |T134128:0|t[Esquirlas de sangre]
    .target Chesmu
    .isNotOnQuest 868
step
    .goto 1456/1,38.32,-1300.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Pala|r
    .home >>Establece tu Piedra de hogar en Cima del Trueno
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon !WC
step
    #completewith next
    .goto 1456/1,222.96,-1079.42,40,0
    .goto 1456/1,219.09,-1051.44,10 >> Viaja al Alto de los Espíritus y entra en las pozas de las visiones
step
    #sticky
    #completewith DeathDUPpickup
    .goto 1456/1,218.68,-1028.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Clarice|r
    .accept 264 >> Acepta la misión Hasta que la muerte nos separe
    .target Clarice Foster
step
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >> Entrega la misión Boticaria Zamah
    .accept 962 >> Acepta la misión Reptilia
    .target Apothecary Zamah
    .isOnQuest 853
step
    #label ZamahTurnin
    #optional
    .goto 1456/1,278.48,-995.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zamah|r
    .accept 962 >> Acepta la misión Reptilia
    .target Apothecary Zamah
step << Priest
    .goto 1456/1,252.49,-956.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miles|r
    .accept 5644 >> Acepta la misión Peste devoradora << Undead Priest
    .accept 5642 >> Acepta la misión Guardia de las Sombras << Troll Priest
    .trainer >> Aprende tus hechizos de clase
    .target Miles Welsh
step << Mage
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 12051 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto 1456/1,279.32,-950.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shymm|r
    .train 2138 >> Aprende tus hechizos de clase
    .target Archmage Shymm
    .xp <22,1
step << Paladin
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alodan|r
    .train 1866 >>Aprende tus hechizos de clase
    .target Alodan the Hopeful 
    .xp <20,1
    .xp >22,1
step << Paladin
    #optional
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alodan|r
    .train 1026 >>Aprende tus hechizos de clase
    .target Alodan the Hopeful 
    .xp <22,1
step
    #optional
    #label DeathDUPpickup
step << Shaman
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r |cRXP_WARN_afuera|r
    .train 2645 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto 1456/1,269.92,-980.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tigor|r |cRXP_WARN_afuera|r
    .train 8498 >> Aprende tus hechizos de clase
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
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
    .goto 1456/1,206.88,-997.45
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
    #completewith NaraWild
    .goto 1456/1,-212.71,-1065.010,80 >> Viaja al Alto de los Ancestros
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entrega la misión La vuelta de la cartera perdida
    .turnin 5723 >> Entrega la misión Midiendo fuerzas con el enemigo
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >> Entrega la misión La vuelta de la cartera perdida
    .target Rahauro
    .isOnQuest 5724
step
    #optional
    #label RFCTurninsTB1
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >> Entrega la misión Midiendo fuerzas con el enemigo
    .target Rahauro
    .isQuestComplete 5723
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >> Entrega la misión Hamuul Tótem de Runa
    .accept 1490 >> Acepta la misión Nara Ferocrín
    .target Arch Druid Hamuul Runetotem
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Entrega la misión Nara Ferocrín
    .accept 914 >> Acepta la misión Líderes del Colmillo
    .target Nara Wildmane
step
    #label NaraWild
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >> Entrega la misión Nara Ferocrín
    .target Nara Wildmane
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak|r
    .trainer >>Aprende tus hechizos de clase
    .accept 27 >>Acepta la misión Una lección que aprender
    .accept 98340 >>Acepta la misión El Gran espíritu felino
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.76,8019.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita|r
    .turnin 27 >>Entrega la misión Una lección que aprender
    .accept 28 >>Acepta la misión La prueba del lago
    .turnin 98340 >>Entrega la misión El Gran espíritu felino
    .accept 98341 >>Acepta la misión El gran espíritu felino del viento << Skyborne
    .accept 98405 >>Acepta la misión El Gran espíritu felino << !Skyborne
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto 1450/1,-2634.67,7634.43
    .collect 15877,1,28,1 >>Despoja el |cRXP_PICK_Adorno contenedor|r en el fondo del lago para un |T134125:0|t[Adorno de altar]
    >>|cRXP_WARN_NO te sumerjas hasta que estés justo encima del Adorno|r
step << Druid
    .goto 1450/1,-2221.48,7844.89
    .cast 19719 >> |cRXP_WARN_Usa el|r |T134125:0|t[Adorno de altar] |cRXP_WARN_en el Santuario de Remulos|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto 1450/1,-2224.25,7874.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tajarri|r
    .turnin 28 >> Entrega la misión La prueba del lago
    .accept 30 >> Acepta la misión La prueba del león marino
    .target Tajarri
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran espíritu felino|r
    .turnin 98405 >>Entrega la misión El Gran espíritu felino
    .accept 98342 >>Acepta la misión El Gran espíritu felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2352.700,7375.600,10,0
    .goto 1450/1,-2394.300,7361.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Avatar de Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98341 >>Entrega la misión El gran espíritu felino del viento
    .accept 98404 >>Acepta la misión El gran espíritu felino del viento
step << Druid
    #completewith next
    .goto 1450/1,-3046.700,7534.400
    --aura 1309054?
    .subzone 2363 >> Dirígete al Túmulo de Tempestira
step << Druid
    >>Ve al fondo de la cueva, cruza el puente, busca una estatua de gato dentro de un hueco y haz clic en el pequeño orbe junto a la estatua
    >>Despoja la |cRXP_LOOT_Reliquia de la garra|r
    .goto 1450/1,-3117.400,7455.300
    .complete 98404,2 << Skyborne --|1/1 Relic of the Claw
    .complete 98342,2 << !Skyborne --|1/1 Relic of the Claw
step << Druid
    >>Haz clic en el pequeño orbe junto a la estatua de gato
    >>Despoja la |cRXP_LOOT_Reliquia de la sombra silenciosa|r
    .goto 1450/1,-3099.200,7485.700
    .complete 98404,3  << Skyborne --|1/1 Relic of the Silent Shadow
    .complete 98342,3  << !Skyborne --|1/1 Relic of the Silent Shadow
step << Druid
    >>Haz clic en el pequeño orbe junto a la estatua de gato
    >>Despoja la |cRXP_LOOT_Reliquia del colmillo|r
    .goto 1450/1,-3054.100,7476.800
    .complete 98404,1  << Skyborne --|1/1 Relic of the Fang
    .complete 98342,1  << !Skyborne --|1/1 Relic of the Fang
step << Druid !Skyborne
    .goto 1450/1,-2640.000,7338.900
     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Gran espíritu felino|r
    .turnin 98342 >>Entrega la misión El Gran espíritu felino
    .accept 98739 >>Acepta la misión Bendiciones del Gran espíritu felino
    .target Great Cat Spirit
step << Druid Skyborne
    .goto 1450/1,-2395.400,7361.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Avatar de Saeyleenan::272054|r
    .target Avatar of Saeyleenan::272054
    .turnin 98404 >>Entrega la misión El gran espíritu felino del viento
    .accept 98738 >>Acepta la misión Bendiciones del gran espíritu felino del viento
step << Druid
    #completewith next
    .cast 18960 >>|cRXP_WARN_Lanza|r |T135758:0|t[Teletransporte a: Claro de la Luna]
    .zoneskip Moonglade
step << Druid
    .goto 1450/1,-2678.200,8021.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dendrita Rafagaestelar::11802|r
    .turnin 98738 >>Entrega la misión Bendiciones del gran espíritu felino del viento << Skyborne
    .turnin 98739 >>Entrega la misión Blessings of the Gran esp??ritu felino << !Skyborne
    .accept 98362 >>Acepta la misión To Trueno Engaño
    .target Dendrite Starblaze::11802
step << Druid
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    #completewith next
    .goto 1450/1,-2403.61,7785.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >> Vuela a Cima del Trueno
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .cooldown item,6948,<0
step << Druid
    .goto 1456/1,-281.59,-1039.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak|r
    .turnin 98362 >>Entrega la misión Trueno Engaño
    .target Turak Runetotem
step << Hunter
    #completewith HunterTraining2
    .goto 1456/1,-123.26,-1394.49,60 >> Viaja al Alto de los Cazadores
step << Hunter
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
    #optional
    .goto 1456/1,-100.50,-1454.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urek|r
    .train 5118 >> Aprende tus hechizos de clase
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto 1456/1,-47.69,-1434.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >> Entrena los hechizos de tu mascota
    .target Hesuwa Thunderhorn
step << Warrior
    #completewith next
    .goto 1456/1,-123.26,-1394.49,60 >> Viaja al Alto de los Cazadores
step << Warrior
    .goto 1456/1,-81.09,-1457.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Torm|r
    .train 845 >>Aprende tus hechizos de clase
    .accept 1823 >>Acepta la misión Habla con Ruga
    .target Torm Ragetotem
step << Rogue
    .goto 1456/1,-36.52,-1244.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compra una|r |T135324:0|t[Tizona] |cRXP_BUY_a este vendedor.|r
    .collect 923,1,493,1 --Collect Longsword (1)
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
    .xp <21,1
step << Warrior/Shaman
    #optional
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Si es más barato puedes comprar un arma verde de la casa de subastas en su lugar|r
step << Warrior
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Compra un|r |T135157:0|t[Bastón largo] |cRXP_BUY_a este vendedor|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equipa el|r |T135157:0|t[Bastón largo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Shaman
    .goto 1456/1,-38.71,-1255.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Compra un|r |T135157:0|t[Bastón largo] |cRXP_BUY_a este vendedor|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equipa el|r |T135157:0|t[Bastón largo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <21,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Compra un|r |T135489:0|t[Arco corvo pesado] |cRXP_BUY_a esta vendedora|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kuna Tronacuerno
step << Hunter
    #completewith KayaLives
    #optional
    +|cRXP_WARN_Equipa el|r |T135489:0|t[Arco corvo pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .xp <20,1
step << Hunter
    .goto 1456/1,26.31,-1167.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] |cRXP_BUY_a esta vendedora|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kuna Tronacuerno
step
    #completewith next
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Vuela a El Cruce
    .target Tal
    .zoneskip The Barrens
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Entrega la misión Verog el Derviche
    .accept 852 >>Acepta la misión Hezrul Marcasangre
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label Leaders
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Entrega la misión Verog el Derviche
    .accept 852 >>Acepta la misión Hezrul Marcasangre
    .target Regthar Deathgate
step << Warlock
    #label EnterSTM2
    #completewith DogranNews
    .zone Stonetalon Mountains >> Viaja a Sierra Espolón
    .zoneskip Stonetalon Mountains
step << Warlock
    #completewith DogranNews
    .goto 1442/1,-786.33,-294.97,60,0
    .goto 1442/1,-665.72,-280.97,40,0
    .goto 1442/1,-522.63,-294.32,40 >> Sigue el camino de la izquierda hacia arriba
step << Warlock
    #label DogranNews
    .goto 1442/1,-331.21,-181.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entrega la misión Noticias de Dogran
    .accept 1511 >>Acepta la misión Jarabe de Ken'zigla
    .target Ken'zigla

    ]])

RXPGuides.RegisterGuide([[
#forever
<< Horde
#name 21-22 Cuevas de los Lamentos
#next RestedXP Horda 22-30\22-24 Laderas de Trabalomas
#version 11
#group RestedXP Forever Guía de Mazmorras (H)
#subgroup Guía de mazmorras 1-22
--#groupid RXP-SRGCE-H1

step
    #sticky
    #completewith EnterWC
    .goto 1414/1,-2216.5,-742.43,30 >>Ahora debes buscar un grupo para Cuevas de los Lamentos
step << Warlock
    #completewith EnterWC
    .zone The Barrens >>Corre de vuelta a Barrens
step
    #completewith EnterWC
    .subzone 387 >> Viaja al Oasis Aguaverde
    .isQuestTurnedIn 851
step
    #loop
    #label Hezrul
    .goto 1413/1,-2001.94,-965.69,0
    .goto 1413/1,-2001.94,-965.69,50,0
    .goto 1413/1,-2022.20,-945.42,50,0
    .goto 1413/1,-2016.12,-915.01,50,0
    .goto 1413/1,-2033.35,-894.74,50,0
    .goto 1413/1,-2031.32,-881.23,50,0
    .goto 1413/1,-2052.60,-877.18,50,0
    .goto 1413/1,-2057.67,-879.21,50,0
    .goto 1413/1,-2066.79,-877.85,50,0
    .goto 1413/1,-2085.03,-898.80,50,0
    .goto 1413/1,-2097.19,-908.26,50,0
    .goto 1413/1,-2102.26,-950.15,50,0
    .goto 1413/1,-2114.42,-981.22,50,0
    .goto 1413/1,-2167.11,-1021.09,50,0
    .goto 1413/1,-2187.38,-1040.68,50,0
    .goto 1413/1,-2261.35,-1060.95,50,0
    .goto 1413/1,-2281.62,-1061.62,50,0
    .goto 1413/1,-2301.88,-1056.89,50,0
    .goto 1413/1,-2295.80,-1087.30,50,0
    .goto 1413/1,-2299.86,-1125.13,50,0
    .goto 1413/1,-2268.44,-1145.40,50,0
    .goto 1413/1,-2247.16,-1145.40,50,0
    .goto 1413/1,-2226.90,-1166.35,50,0
    .goto 1413/1,-2189.40,-1179.86,50,0
    .goto 1413/1,-2174.20,-1198.78,50,0
    .goto 1413/1,-2162.04,-1200.80,50,0
    .goto 1413/1,-2124.55,-1228.50,50,0
    .goto 1413/1,-2095.16,-1220.40,50,0
    .goto 1413/1,-2065.78,-1208.91,50,0
    .goto 1413/1,-2041.46,-1167.70,50,0
    .goto 1413/1,-2024.23,-1179.18,50,0
    .goto 1413/1,-2047.54,-1156.21,50,0
    .goto 1413/1,-2046.52,-1135.94,50,0
    .goto 1413/1,-2009.03,-1127.84,50,0
    .goto 1413/1,-2001.94,-965.69,50,0
    >>Encuentra y mata a |cRXP_ENEMY_Hezrul Marcasangre|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrulla alrededor del lago|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #completewith next
    .goto 1413/1,-2134.68,-764.35,0
    .goto 1413/1,-2134.68,-764.35,30,0
    .goto 1413/1,-2122.52,-734.62,20,0
    .goto 1414/1,-2061.94,-781.68,20,0
    .goto 1414/1,-2028.82,-828.29,10,0
    .goto 1414/1,-2021.46,-816.030,10 >>Sube por la montaña hasta la roca de encuentro de Las Cavernas de los Lamentos
    >>|cRXP_WARN_Sigue de cerca la flecha para llegar a la cueva oculta|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Se encuentran arriba de la entrada de las Cuevas de los Lamentos|r
    .accept 1486 >> Acepta la misión Pellejos descarriados
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .accept 1487 >> Acepta la misión Erradicación de descarriados
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
step
    #completewith EnterWC
    +|cRXP_WARN_Se recomienda dividir las misiones "Reptilia" y "Pellejos descarriados" si solo haces 1 pasada|r
    >>|cRXP_WARN_No habrá suficientes |cRXP_PICK_Reptilia|r y |cRXP_LOOT_Pellejos descarriados|r para todos|r
    .isOnQuest 962,1486
step
    #optional
    #completewith EnterWC
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Mata a todas los |cRXP_ENEMY_Bestias descarriadas|r que veas. Despójalas para obtener sus |cRXP_LOOT_Pellejos|r
    .complete 1486,1 --Deviate Hide (20)
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #label MadMagg
    #loop
    .goto 1414/1,-2058.26,-749.79,0
    .goto 1414/1,-2003.06,-659.01,0
    .goto 1414/1,-2072.98,-698.27,0
    .goto 1414/1,-2124.50,-730.16,0
    .goto 1414/1,-2058.26,-749.79,30,0
    .goto 1414/1,-2003.06,-659.01,30,0
    .goto 1414/1,-2072.98,-698.27,30,0
    .goto 1414/1,-2124.50,-730.16,30,0
    >>Mata al |cRXP_ENEMY_Loco Magglish|r. Despójalo para obtener el |cRXP_LOOT_Oporto con 99 años de antigüedad|r
    >>|cRXP_WARN_Tiene un tiempo de reaparición largo. Omite este paso si no puedes encontrarlo|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
step
    #label EnterWC
    .goto 1414/1,-2028.82,-636.93,20,0
    .goto 1414/1,-2050.90,-585.41,20,0
    .goto 1414/1,-2168.66,-607.49,30,0
    .goto 1414/1,-2216.5,-742.43,30 >> Entra por el portal de la instancia a las Cuevas de los Lamentos. Entra en la mazmorra
step
    #optional
    #completewith GlowingShard
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #optional
    #completewith GlowingShard
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #optional
    #completewith GlowingShard
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_LOOT_Pellejos |r |cRXP_WARN_para todos|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
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
    .isOnQuest 1487
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
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Discípulo de Naralex|r en la entrada de Cuevas de los Lamentos. Escóltalo a salvo hasta |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
step
    #label GlowingShard
    >>Una vez que hayas llegado a |cRXP_FRIENDLY_Naralex|r, serás atacado por dos oleadas de enemigos y finalmente por |cRXP_ENEMY_Mutanus el Devorador|r
    >>Mátalo y despójalo para obtener el |T135229:0|t[|cRXP_LOOT_Fragmento resplandeciente|r] y úsalo para iniciar la misión
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >> Acepta la misión El fragmento resplandeciente
    .use 10441
    .mob Mutanus the Devourer
step
    #optional
    #completewith DeviateRaptors
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
step
    #optional
    #completewith Ectoplasms
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #optional
    #completewith Ectoplasms
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #optional
    >>Mata |cRXP_ENEMY_Devastadores descarriado|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Arrastrapiés|r y |cRXP_ENEMY_Colminfernos|r. . Despójalos para obtener sus |cRXP_ENEMY_Pellejos|r
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
    .isOnQuest 1486
 step
    >>Mata |cRXP_ENEMY_Devastadores descarriados|r, |cRXP_ENEMY_Víboras|r, |cRXP_ENEMY_Arrastrapiés|r y |cRXP_ENEMY_Colminfernos|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .isOnQuest 1487
step
    #label DeviateRaptors
    >>Mata |cRXP_ENEMY_Raptores descarriados|r. Despójalos para obtener sus |cRXP_ENEMY_Pellejos|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
step
    #label Ectoplasms
    >>Mata a los |cRXP_ENEMY_Ectoplasmas|r. Despójalos para obtener su |cRXP_LOOT_Esencia|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
step
    #optional
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Lanza|r |T133939:0|t[Buscar hierbas] |cRXP_WARN_para verlas en tu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    >>Despoja la |cRXP_PICK_Reptilia|r del suelo
    >>|cRXP_WARN_Se recomienda que máximo 3 jugadores intenten completar esta misión si solo vas a hacerla 1 vez. No hay suficientes|r |cRXP_PICK_Reptilia|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith GShard
    .subzone 380 >>Abandona tu grupo mientras estés dentro de WC para ser teletransportado al cementerio de El Cruce (después de 1 minuto)
    .subzoneskip 392
step
    #completewith Cholaruk
    >>|cRXP_WARN_Revisa con tu grupo si les gustaría hacer la misión "Chol'aruk the Ravener"|r (nivel 20 élite)
    .isQuestAvailable 97003
step
    .goto 1413/1,-2711.800,-350.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gur'ak|r
    .accept 97003 >>Acepta la misión Chol'aruk, el Insaciable
    .target Gur'ak
step
    #completewith next
    .goto 1413/1,-3257.300,-113.100,15,0
    .goto 1413/1,-3217.100,-147.700,10,0
    .goto 1413/1,-3236.000,-178.100,10,0
    .goto 1413/1,-3259.700,-205.400,10,0
    .goto 1413/1,-3226.900,-237.900,10 >>Viaja a |cRXP_ENEMY_Chol'aruk the Ravener|r al fondo de la cueva
step
    #label Cholaruk
    .goto 1413/1,-3206.800,-220.200
    >>Mata a |cRXP_ENEMY_Chol'aruk the Ravener|r. Despójalo por su |cRXP_LOOT_Cabeza|r
    .complete 97003,1 --Chol'aruk's Head (x1)
    .mob Chol'aruk the Ravener
    .isOnQuest 97003
step
    #completewith GShard
    .subzone 392 >>Viaja a Trinquete
    .subzoneskip 1699,1 --Thorn Hill
step
    #completewith GShard
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >> Vuela a Trinquete
    .target Devrak
    .subzoneskip 392
    .subzoneskip 1699 --Thorn Hill
step
    .goto 1413/1,-3697.24,-929.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Entrega la misión Bebidas de inteligencia
    .accept 1221 >> Acepta la misión Los tubérculos hojazul
    .target Mebok Mizzyrix
    .isQuestComplete 1491
step
    #optional
    .goto The Barrens,62.370,37.615
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mebok|r
    .accept 1221 >> Acepta la misión Los tubérculos hojazul
    .target Mebok Mizzyrix
step
    .goto 1413/1,-3770.20,-928.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pelardo|r
    .turnin 959 >> Entrega la misión ¡A por la botella!
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
    #label GShard
    .goto 1413/1,-3760.07,-902.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Petardol|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
step << Shaman
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
step << Shaman
    #optional
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
step
    #optional << Shaman
    .goto 1413/1,-4048.87,-1350.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahren|r
    .turnin 874 >>Entrega la misión Mahren Vidente del Cielo
    .accept 873 >>Acepta la misión Isha Awak
    .target Mahren Skyseer
    .isOnQuest 874
step
    #optional
    .goto 1413/1,-4048.87,-1350.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahren|r
    .accept 873 >>Acepta la misión Isha Awak
    .target Mahren Skyseer
    .isQuestTurnedIn 874
step
    #loop
    .goto 1413/1,-4031.64,-1537.94,0
    .goto 1413/1,-3937.4,-1789.27,0
    .goto 1413/1,-3821.88,-2004.8,0
    .goto 1413/1,-4041.78,-1446.73,50,0
    .goto 1413/1,-4031.64,-1537.94,50,0
    .goto 1413/1,-3937.4,-1789.27,50,0
    .goto 1413/1,-3821.88,-2004.8,50,0
    >>Mata a |cRXP_ENEMY_Isha Awak|r. Despójalo para obtener el |cRXP_LOOT_Corazón de Isha Awak|r
    >>|cRXP_WARN_Él tiene cuatro ubicaciones de aparición diferentes a lo largo de la costa|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
    .isQuestTurnedIn 874
step
    .goto 1413/1,-4048.87,-1350.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mahren|r
    .turnin 873 >> Entrega la misión Isha Awak
    .target Mahren Skyseer
    .isQuestComplete 873
step
    #completewith TopofWCturnins
    .goto 1413/1,-3770.20,-898.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >> Vuela a El Cruce
    .target Bragok
    .subzoneskip 380
step
    .goto 1413/1,-2711.800,-350.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gur'ak|r
    .accept 97003 >>Acepta la misión Chol'aruk, el Insaciable
    .target Gur'ak
    .isQuestComplete 97003
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Entrega la misión Hezrul Marcasangre
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #completewith CounterattackTurnin2
    +|cRXP_WARN_La próxima misión es muy difícil y se recomienda formar un grupo. Puedes kitear al |cRXP_ENEMY_Señor de la guerra Krom'zar|r alrededor del edificio donde se encuentra el PNJ que da la misión|r
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Acepta la misión ¡Contraataca!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto 1413/1,-1884.39,-289.38
    >>Mata al |cRXP_ENEMY_Señor de la guerra Krom'zar|r una vez que aparece. Despoja el |cRXP_PICK_Estandarte|r que deja en el suelo
    >>|cRXP_WARN_¡Ten cuidado! Es un élite fuerte y está custodiado por al menos dos|r |cRXP_ENEMY_Kolkar|r |cRXP_WARN_enemigos|r
    >>|cRXP_WARN_Puede tardar hasta 3 minutos en reaparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isQuestTurnedIn 852
step
    #label CounterattackTurnin2
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Entrega la misión ¡Contraataca!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entrega la misión Los brazales centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #optional
    #completewith TopofWCturnins
    .abandon 855 >>Abandona la misión Los brazales centauro
step
    #completewith next
    .goto 1413/1,-2493.40,-708.95,20,0
    .goto 1413/1,-2404.23,-721.11,20,0
    .goto 1413/1,-2356.60,-685.98,20,0
    .goto 1413/1,-2259.32,-602.20,50 >> Sube por la montaña
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fala|r
    .turnin 6981 >> Entrega la misión El fragmento resplandeciente
    .accept 3369 >> Acepta la misión En las pesadillas
    .target Falla Sagewind
    .isOnQuest 6981
step
    .goto 1413/1,-2259.32,-602.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fala|r
    .accept 3369 >> Acepta la misión En las pesadillas
    .target Falla Sagewind
    .isQuestTurnedIn 6981
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r y |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Se encuentran arriba de la entrada de las Cuevas de los Lamentos|r
    .turnin 1486 >> Entrega la misión Pellejos descarriados
    .target +Nalpak
    .goto 1414/1,-2036.18,-796.40
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .target +Ebru
    .goto 1414/1,-2039.86,-801.31
    .isQuestComplete 1487
    .isQuestComplete 1486
step
    #optional
    .goto 1414/1,-2039.86,-801.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Se encuentra encima de la entrada de las Cuevas de los Lamentos|r
    .turnin 1487 >> Entrega la misión Erradicación de descarriados
    .target Ebru
    .isQuestComplete 1487
step
    #optional
    #label TopofWCturnins
    .goto 1414/1,-2036.18,-796.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Se encuentra encima de la entrada de las Cuevas de los Lamentos|r
    .turnin 1486 >> Entrega la misión Pellejos descarriados
    .target Nalpak
    .isQuestComplete 1486
step
    #completewith WCEnd
    .hs >> Usa tu Piedra de hogar para ir a Cima del Trueno
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
step
    .goto 1456/1,-272.93,-1069.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Entrega la misión Líderes del Colmillo
    .target Nara Wildmane
    .isQuestComplete 914
step
    .goto 1456/1,-303.83,-1048.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >> Entrega la misión En las pesadillas
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
step
    #completewith next
    .goto 1456/1,219.09,-1051.44,10 >> Viaja al Alto de los Espíritus y entra en las pozas de las visiones
    .isQuestComplete 962
step
    #label WCEnd
    .goto 1456/1,276.6,-996.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Boticaria Zamah|r
    .turnin 962 >>Entrega la misión Reptilia
    .target Apothecary Zamah
    .isQuestComplete 962
step << Paladin
    #optional
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alodan|r
    .train 1866 >>Aprende tus hechizos de clase
    .target Alodan the Hopeful 
    .xp <20,1
    .xp >22,1
step << Paladin
    .goto 1456/1,253.900,-950.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alodan|r
    .train 1026 >>Aprende tus hechizos de clase
    .target Alodan the Hopeful 
    .xp <22,1
step
    #optional
    .abandon 1486 >>Abandona la misión Pellejos descarriados
step
    #optional
    .abandon 1487 >>Abandona la misión Erradicación de descarriados
step
    #optional
    .abandon 1491 >>Abandona la misión Bebidas de inteligencia
step
    #optional
    .abandon 959 >>Abandona la misión ¡A por la botella!
step
    #optional
    .abandon 914 >>Abandona la misión Líderes del Colmillo
step
    #optional
    .abandon 962 >>Abandona la misión Reptilia
step << Warlock/Shaman
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Vuela al Campamento Taurajo
    .target Tal
    .zoneskip The Barrens
step << Warlock
    .goto 1413/1,-1898.58,-2391.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Entrega la misión Jarabe de Ken'zigla
    .accept 1515 >>Acepta la misión El cautiverio de Dogran
    .target Grunt Logmar
step << Warlock
    .goto 1413/1,-1765.83,-1622.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Entrega la misión El cautiverio de Dogran
    .accept 1512 >>Acepta la misión Un regalo de amor
    .target Grunt Dogran
step << Shaman
    #completewith CallofWater2
    .goto 1413/1,-1776.98,-3617.51,60>> Viaja al sur hacia |cRXP_FRIENDLY_Salmuera|r
step << Shaman
    #label CallofWater2
    .goto 1413/1,-1776.98,-3617.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Salmuera|r
    .turnin 1530 >>Entrega la misión La llamada del agua
    .accept 1535 >>Acepta la misión La llamada del agua
    .target Brine
step << Warlock/Shaman
    #completewith next
    .subzone 378 >>Viaja de vuelta hacia Campamento Taurajo
step << Warlock/Shaman
    .goto 1413/1,-1881.35,-2384.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Warlock
    .goto 1456/1,26.1,-1196.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Tal
    .zoneskip Orgrimmar
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Entrega la misión Un regalo de amor
    .accept 1513 >>Acepta la misión El vínculo
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_Usa el|r |T133290:0|t[Colgante de Dogran] |cRXP_WARN_en el Círculo de Invocación|r
    .use 6626
step << Warlock
    .goto 1454/1,-4377.13,1804.77
    >>Mata a la |cRXP_ENEMY_Súcubo invocada|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto 1454/1,-4357.36,1850.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Entrega la misión El vínculo
    .target Gan'rul Bloodeye
step << Warlock
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 6202 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto 1454/1,-4362.55,1834.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mirket|r
    .train 6223 >> Aprende tus hechizos de clase
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto 1454/1,-4320.75,1750.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Cómprale una|r |T135640:0|t[Jambiya] |cRXP_BUY_si no tienes una daga|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .train 921 >>Aprende |T133644:0|t[Robar]
    .train 8676 >>Aprende |T132282:0|t[Emboscada]
    .train 1943 >>Aprende |T132302:0|t[Ruptura]
    .train 1856 >>Aprende |T132331:0|t[Esfumarse]
    .train 1725 >>Aprende |T132289:0|t[Distraer]
    .train 1785 >>Aprende |T132320:0|t[Sigilo Rango 2]
    .accept 2460 >>Acepta la misión El saludo de los Mano Destrozada
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>Después de que |cRXP_FRIENDLY_Shenthul|r haga su saludo, escribe /Salute mientras lo tienes seleccionado como objetivo
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Entrega la misión El saludo de los Mano Destrozada
    .accept 2458 >>Acepta la misión Agente encubierto
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Compra |r |T134387:0|t[Pólvora cegadora] |cRXP_BUY_a este vendedor|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    .goto 1454/1,-4299.99,1820.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compra una|r |T135139:0|t[Varita ardiente] |cRXP_BUY_a esta vendedora|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >> Aprende tus hechizos de clase
    .target Pephredo
    .xp <24,1
step << Mage
    .goto 1454/1,-4222.85,1474.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con|r |cRXP_FRIENDLY_Thuul|r en lo alto de la cabaña
    .train 3567 >> Aprende |T135759:0|t[Teletransporte a: Orgrimmar]
    .target Thuul
step << Troll Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >> Entrega la misión Guardia de las Sombras
    .trainer >> Aprende tus hechizos de clase
    .target Ur'kyo
step << Undead Priest
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto 1454/1,-4179.79,1452.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >> Aprende tus hechizos de clase
    .target Ur'kyo
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1454/1,-4048.36,1697.85,80,0
    .goto 1454/1,-3900.25,1681.48,30,0
    .goto 1454/1,-3933.49,1707.86,50 >> Entra en Los Baldíos a través de la salida occidental
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto 1413/1,-3216.92,1107.13,120 >> Viaja hacia el Fangal
step << Druid
    .goto 1413/1,-3119.64,1050.38
    >>Despoja el |cRXP_PICK_Arcón extraño|r en el agua para obtener la |T133443:0|t[Medio colgante de Agilidad acuática]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
step << Rogue
    #completewith next
    .goto 1413/1,-3021.35,1214.56
	+Selecciona al |cRXP_FRIENDLY_Capataz Fizzule|r, luego usa tu |T134536:0|t[Pistola de bengalas] DOS VECES y escribe /Salute
    >>|cRXP_WARN_¡Ten cuidado! ¡NO te acerques a él hasta que se vuelva amistoso o te atacará!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto 1413/1,-2995.0,1236.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el|r |cRXP_FRIENDLY_Capataz Fizzule|r
    .turnin 2458 >>Entrega la misión Agente encubierto
    .accept 2478 >>Acepta la misión Misión: Posible, pero no probable
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto 1413/1,-2930.15,1209.15
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
    .goto 1413/1,-2922.04,1224.69
    >>Corre hacia la Torre del Pícaro y mata a los |cRXP_ENEMY_Zánganos|r, |cRXP_ENEMY_Patrullas|r y |cRXP_ENEMY_Oteadores|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>En la cima de la torre encontrarás a |cRXP_ENEMY_Gallywix|r. Despójalo para obtener su |cRXP_LOOT_Cabeza|r
    >>|cRXP_WARN_Usa|r |T132282:0|t[Emboscada] |cRXP_WARN_para reducir su vida a la mitad. Usa|r |T132155:0|t[Gubia] |cRXP_WARN_para restaurar energía y usa|r |T136205:0|t[Evasión]
	>>|cRXP_WARN_Recuerda usar una Poción y|r |T132819:0|t[Té de cardo] |cRXP_WARN_si es necesario|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
    --VV Video?
step << Rogue
    .goto 1413/1,-2927.11,1236.18
    >>Usa tu Forzar cerraduras para abrir el |cRXP_PICK_Arcón de Gallywix|r y despoja la |cRXP_LOOT_Mezcla|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << skip --Rogue/Druid
    #hardcore
    #completewith next
    .goto 1413/1,-3591.86,1328.06,120 >>Viaja hacia la Mina Pedrusco
step << skip --Rogue/Druid
    #hardcore
    .goto 1413/1,-3505.72,1358.46
    .goto 1454/1,-4242.34,1637.33,30 >>|cRXP_WARN_Salta a la viga de madera. Haz un Logout Skip desconectando y volviendo a entrar. Regresa a Orgrimmar si no lo logras|r
    .link https://www.youtube.com/watch?v=U7YfoaO-X8E&ab_channel=RestedXP >> |cRXP_WARN_HAZ CLIC AQUÍ para ver un ejemplo|r
    .zoneskip Orgrimmar
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >> Muere y reaparece en el |cRXP_FRIENDLY_Ángel de la Resurrección|r
step << Rogue/Druid
    #softcore
    .goto 1413/1,-2595.75,-437.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >> Vuela a Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Rogue/Druid
    #hardcore
    #completewith flytoORG
    .goto 1414/1,-3839.37,1644.65
    .zone Orgrimmar >>Entra en Orgrimmar por la entrada occidental
step << Rogue
    .goto 1454/1,-4284.42,1771.28
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Entrega la misión Misión: Posible, pero no probable
    .accept 2479 >>Acepta la misión La ayuda de Hinott
    .target Shenthul
step << Rogue
    .goto 1454/1,-4271.1,1810.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Rekkul|r|cRXP_BUY_. Compra|r |T133849:0|t[Polvo de Decadencia] |cRXP_BUY_y|r |T132793:0|t[Viales vacíos] |cRXP_BUY_a este vendedor|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .target Rekkul
step << Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 8498 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris|r
    .train 905 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker
    .xp <24,1
step << Troll Warrior/Undead Warrior/Tauren Warrior/Undead Paladin
    .goto 1454/1,-4824.00,2090.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprende el uso de Hachas de dos manos
    .target Hanashi
step << Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 6192 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz|r
    .train 5308 >> Aprende tus hechizos de clase
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14323 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak|r
    .train 14262 >> Aprende tus hechizos de clase
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >> Entrena los hechizos de tu mascota
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto 1454/1,-4355.53,1520.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Habla con|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compra|r |T135423:0|t[Hacha arrojadiza mortal] |cRXP_BUY_a este vendedor|r
    .collect 3137,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_Si tienes algún|r |T134437:0|t[Contraveneno]|cRXP_WARN_, úsalo para curarte del|r |T136230:0|t[Toque de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    #optional
    .destroy 8051 >> |cRXP_WARN_Borra la|r |T134536:0|t[Pistola de bengalas] |cRXP_WARN_de tu inventario, ya que ya no la necesitas|r
    .destroy 8066 >> |cRXP_WARN_Borra|r |T134374:0|t[Silbato de Fizzule] |cRXP_WARN_de tu inventario, ya que ya no lo necesitas|r
step
    #optional
    #label flytoORG
]])