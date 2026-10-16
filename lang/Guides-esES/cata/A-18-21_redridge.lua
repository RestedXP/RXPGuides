if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
local _,addon = ...
if addon.gameVersion < 40000 or addon.player.faction == 'Horde' then return end
RXPGuides.RegisterGuide([[

#version 1
#group RXP Cataclismo 1-80 (A) << cata
#group RXP MoP 1-80 (A) << mop
#cata
#mop
#name 15-20 Redridge
#displayname 18-21 Redridge
#next 20-25 Bosque del Ocaso
<<Alliance

--TODO: Figure out how flight paths work while leveling
--FPs from lower level zones are supposed to open up as you level: https://youtu.be/9Y_PE0Wb4IM?si=H5H-FVQ-5StEQUfI&t=929

step << NightElf/Draenei/Worgen
    .goto 62,51.716,17.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teldira Plumalunar|r
    .target Teldira Moonfeather
    .fly Rut'theran Village >>Vuela a la Aldea Rut'theran
    .zoneskip Darkshore,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Ve por el portal hacia Darnassus
    .train 33388,1
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Ve por el portal hacia Darnassus
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.497,32.595
    >>Habla con |cRXP_FRIENDLY_Lelanai|r
    +|cRXP_BUY_Compra un|r |T132267:0|t[Saber] |cRXP_BUY_montura, no podrás usarla hasta el nivel 20, guárdala en tus bolsas para después|r
    .target Lelanai
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.782,32.919
    >>Habla con |cRXP_FRIENDLY_Jartsam|r
    .train 33388 >> Aprende Equitadura de aprendiz
    .target Jartsam
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 89,36.547,50.413
    .zone 57 >>Ve de regreso por el portal hacia Aldea Rut'theran
    .zoneskip 89,1
step << Draenei
    .goto 57,52.30,89.50
    .zone Azuremyst Isle >> Toma el barco hacia la Isla Bruma Azur
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto Azuremyst Isle,81.497,51.456
    >>Habla con |cRXP_FRIENDLY_Torallius el Controlador de la Manada|r
    +Compra un Elekk, no podrás usarlo hasta el nivel 20, guárdalo en tus bolsas para después
    .target Torallius the Pack Handler
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto 89,81.348,52.623
    >>Habla con |cRXP_FRIENDLY_Aalun|r
    .train 33388 >> Aprende Equitadura de aprendiz
    .target Aalun
    .money <3.6000
    .xp <20,1
    .zoneskip Azuremyst Isle,1
step << Draenei
    .goto Azuremyst Isle,20.41,54.18
    .zone 57 >> Toma el barco de regreso a Aldea Rut'theran
    .zoneskip Azuremyst Isle,1
step << NightElf/Draenei/Worgen
    .goto 57,55.037,93.677,25,0
    .goto 57,55.037,93.677,0
    .zone Stormwind City >> Toma el barco hacia Ventormenta
step << Gnome/Dwarf
#completewith next
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Kharanos >> Vuela a Kharanos << Gnome
    .fly Gol'Bolar Quarry >> Vuela a Cantera Gol'Bolar << Dwarf
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Gnome
    .goto 1426/0,-618.400,-5451.100
    >>Habla con |cRXP_FRIENDLY_Milli Plumasilba|r
    +|cRXP_BUY_Compra un|r |T132247:0|t[Mecazancudo] |cRXP_BUY_montura, no podrás usarla hasta el nivel 20, guárdala en tus bolsas para después|r
    .target Milli Featherwhistle
    .mountcount 0-150,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Dwarf
    .goto 1426/0,-1322.500,-5539.800
    >>Habla con |cRXP_FRIENDLY_Veron Semperámbar|r
    +|cRXP_BUY_Compra un|r |T132248:0|t[Harrison Jones] |cRXP_BUY_montura, no podrás usarla hasta el nivel 20, guárdala en tus bolsas para después|r
    .target Veron Amberstill
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
step << Human/Dwarf/Gnome
    .goto 48,33.938,50.932,-1
    .goto 1426/0,-497.200,-5663.700,-1 << Gnome
    .goto 1426/0,-1578.000,-5718.000,-1 << Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Stormwind >> Vuela a Ventormenta
    .target Thorgrum Borrelson
    .target Brolan Galebeard << Gnome
    .target Dominic Galebeard << Dwarf
    .zoneskip Stormwind City
    .zoneskip Elwynn Forest
    .zoneskip Redridge Mountains
step
    .goto Stormwind City,62.875,71.490
    >>Haz clic en el |cRXP_PICK_Hero's Call Abordar|r
    .accept 28563 >>Acepta la misión Se busca héroe: ¡Montañas Crestagrana!
    >>|cRXP_WARN_Omitir este paso si no te ofrecen esta misión|r
    .isQuestAvailable 26504
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_BUY_a ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp <21,1
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra un|r |T135280:0|t[Dalle dacio] |cRXP_BUY_a ella. Equípalo cuando tengas nivel 21|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marda Weller
    .xp >21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra una|r |T135324:0|t[Tizona] |cRXP_BUY_a ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp <21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra una|r |T135324:0|t[Tizona] |cRXP_BUY_a ella. Equípala cuando tengas nivel 21|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marda Weller
    .xp >21,1
step << Shaman
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Marda Weller|r
    >>|cRXP_BUY_Compra un|r |T132415:0|t[Hacha doble] |cRXP_BUY_a ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 927,1 -- Double Axe (1)
    .money <0.5911
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marda Weller
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lina Hornillos|r
    >>|cRXP_BUY_Compra un|r |T135612:0|t[BKP 2700 "Agente"] |cRXP_BUY_a ella|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp <21,1
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lina Hornillos|r
    >>|cRXP_BUY_Compra un|r |T135612:0|t[BKP 2700 "Agente"] |cRXP_BUY_a ella. Equípalo cuando tengas nivel 21|r
    >>|cRXP_WARN_Alternativamente, busca en la Casa de subastas algo mejor o más barato|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp >21,1
step << Warrior/Paladin
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equipa el|r |T135280:0|t[Dalle dacio]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Rogue
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equipa la|r |T135324:0|t[Tizona]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Shaman
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equipa la|r |T132415:0|t[Hacha doble]
    .use 927
    .itemcount 927,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Hunter
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equipa el|r |T135612:0|t[BKP 2700 "Agente"]
    .use 3024
    .itemcount 3024,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
    #optional
    #completewith next
    .goto 84,64.55,70.61,15,0
    .goto 84,68.50,73.43,10,0
    .goto 84,68.54,74.89,10,0
    .goto 84,70.94,72.47,10 >> Viaja hacia |cRXP_FRIENDLY_Dungar Tragolargo|r
    .noflyable --Azeroth Flying
step
    #completewith EnterRR
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dungar Tragolargo|r
    .fly Eastvale Logging Camp >> Vuela a Campamento del Bosque de Eastvale
	.target Dungar Longdrink
    .zoneskip 49 --Redridge Mountains
step
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Randal Predatio|r
    .train 33388 >> Aprende Equitadura de aprendiz
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step << Human
    .train 33388,3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katie Cazadora|r
    +|cRXP_BUY_Compra un|r |T132261:0|t[Caballo] |cRXP_BUY_a ella|r
    .money <0.08
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    #label EnterRR
    .goto 49,11.78,64.40
    .zone Redridge Mountains >> Viaja a las Montañas Crestagrana
    .isQuestAvailable 26504
step
    #optional
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Lakeshire >> Aprende la ruta de vuelo hacia Lakeshire
    .target Ariena Stormfeather
    .xp <21,1
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 49,16.032,64.633
    >>Haz clic en el |cRXP_PICK_Cartel de Se busca|r
    .accept 26504 >>Acepta la misión SE BUSCA: Gnolls Crestagrana
step
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy Parker|r dentro
    .accept 26506 >>Acepta la misión La fabada
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán de la Avanzada Parker|r en la cima de Torre de la Vigía
    .turnin 28563 >>Entrega la misión Se busca héroe: ¡Montañas Crestagrana!
    .accept 26503 >>Acepta la misión Evaluando la amenaza todavía
    .target Watch Captain Parker
    .isOnQuest 28563
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán de la Avanzada Parker|r en la cima de Torre de la Vigía
    .accept 26503 >>Acepta la misión Evaluando la amenaza todavía
    .target Watch Captain Parker
step
    #optional
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,13.543,66.732,50,0
    .goto 49,12.566,69.384,50,0
    .goto 49,14.471,75.116,50,0
    .goto 49,15.220,73.203,50,0
    >>Mata a las |cRXP_ENEMY_Tarantulas|r. Despoja sus |cRXP_LOOT_Ojos de tarántula|r
    >>Mata a los |cRXP_ENEMY_Dire Condors|r que vuelan arriba o están posados. Despoja sus |cRXP_LOOT_Condor Giblets|r
    .complete 26506,1,2 --Tarantula Eyes (2/4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .disablecheckbox
    .unitscan Dire Condor
    .mob Tarantula
    .maxlevel 20
step
    #completewith GnollGuide
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    >>Mata a las |cRXP_ENEMY_Tarantulas|r. Despoja sus |cRXP_LOOT_Ojos de tarántula|r
    >>Mata a los |cRXP_ENEMY_Dire Condors|r que vuelan arriba o están posados. Despoja sus |cRXP_LOOT_Condor Giblets|r
    >>Mata a los |cRXP_ENEMY_Great Goretusks|r. Despoja los |cRXP_LOOT_Dentosangre Riñones|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .complete 26506,3 --Goretusk Kidney (4)
    .mob +Great Goretusk
    .maxlevel 20
step
    #completewith Kidneys
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>Mata a los |cRXP_ENEMY_Redridge Trituradores|r, a los |cRXP_ENEMY_Redridge Mestizos|r, y a los |cRXP_ENEMY_Redridge Brutos|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #optional
    #completewith next
    .goto 49,23.281,68.320,50,0
    .goto 49,28.028,74.887,30 >>Viaja hacia las |cRXP_PICK_Órdenes gnoll|r
    .noflyable --Azeroth Flying
step
    #label GnollOrders
    .goto 49,28.028,74.887
    >>Despoja las |cRXP_PICK_Órdenes gnoll|r en el barril
    .complete 26503,2 --Gnoll Orders (1)
step
    #label GnollGuide
    .goto 49,30.563,62.710
    >>Despoja la |cRXP_PICK_Gnoll Guía de estrategia|r en el suelo
    .complete 26503,3 --Gnoll Strategy Guide (1)
step
    #label Kidneys
    #loop
    .goto 49,27.403,59.815,0
    .goto 49,29.142,56.606,0
    .goto 49,32.433,54.249,0
    .goto 49,33.624,57.701,0
    .goto 49,35.378,64.225,0
    .goto 49,32.309,63.674,0
    .goto 49,29.952,64.571,0
    .goto 49,27.403,59.815,50,0
    .goto 49,29.142,56.606,50,0
    .goto 49,32.433,54.249,50,0
    .goto 49,33.624,57.701,50,0
    .goto 49,35.378,64.225,50,0
    .goto 49,32.309,63.674,50,0
    .goto 49,29.952,64.571,50,0
    >>Mata a los |cRXP_ENEMY_Great Goretusks|r. Despoja los |cRXP_LOOT_Dentosangre Riñones|r
    .complete 26506,3 --Goretusk Kidney (4)
    .mob Great Goretusk
    .maxlevel 20
step
    #optional
    #completewith RRGnolls
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    >>Mata a los |cRXP_ENEMY_Tarántulas|r. Despoja los |cRXP_LOOT_Tarántula Ojos|r
    >>Mata a los |cRXP_ENEMY_Temible Cóndores|r que vuelan arriba o descansan en perchas. Despoja los |cRXP_LOOT_Despojos de Cóndor|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob +Tarantula
    .complete 26506,2 --Condor Giblets (4)
    .unitscan +Dire Condor
    .maxlevel 20
step
    #optional
    #completewith next
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    >>Mata a los |cRXP_ENEMY_Redridge Trituradores|r, a los |cRXP_ENEMY_Redridge Mestizos|r, y a los |cRXP_ENEMY_Redridge Brutos|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #label GnollPlans
    .goto 49,16.203,55.263
    >>Despoja los |cRXP_PICK_Gnoll Planes de batalla|r en el suelo
    .complete 26503,1 --Gnoll Battle Plans (1)
step
    #label RRGnolls
    #loop
    .goto 49,28.028,74.887,0
    .goto 49,30.563,62.710,0
    .goto 49,25.600,57.889,0
    .goto 49,16.203,55.263,0
    .goto 49,16.188,59.307,50,0
    .goto 49,18.410,58.985,50,0
    .goto 49,17.988,55.657,50,0
    .goto 49,15.728,54.280,50,0
    .goto 49,16.049,56.984,50,0
    >>Mata a los |cRXP_ENEMY_Redridge Trituradores|r, a los |cRXP_ENEMY_Redridge Mestizos|r, y a los |cRXP_ENEMY_Redridge Brutos|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #sticky
    #label Eyes
    #loop
    .goto 49,13.543,66.732,0
    .goto 49,12.566,69.384,0
    .goto 49,14.471,75.116,0
    .goto 49,15.220,73.203,0
    .waypoint 49,13.543,66.732,40,0
    .waypoint 49,12.566,69.384,40,0
    .waypoint 49,14.471,75.116,40,0
    .waypoint 49,15.220,73.203,40,0
    >>Mata a los |cRXP_ENEMY_Tarántulas|r. Despoja los |cRXP_LOOT_Tarántula Ojos|r
    .complete 26506,1 --Tarantula Eyes (4)
    .mob Tarantula
    .maxlevel 20
step
    #loop
    .goto 49,16.461,54.587,0
    .goto 49,20.199,58.665,0
    .goto 49,20.881,65.321,0
    .goto 49,20.123,66.613,0
    .goto 49,16.993,63.436,0
    .goto 49,13.697,68.732,0
    .goto 49,13.265,62.483,0
    .goto 49,16.461,54.587,40,0
    .goto 49,20.199,58.665,40,0
    .goto 49,20.881,65.321,40,0
    .goto 49,20.123,66.613,40,0
    .goto 49,16.993,63.436,40,0
    .goto 49,13.697,68.732,40,0
    .goto 49,13.265,62.483,40,0
    >>Mata a los |cRXP_ENEMY_Temible Cóndores|r que vuelan arriba o descansan en perchas. Despoja los |cRXP_LOOT_Despojos de Cóndor|r
    .complete 26506,2 --Condor Giblets (4)
    .unitscan Dire Condor
    .maxlevel 20
step
    #requires Eyes
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Darcy Parker|r dentro
    .turnin 26506 >>Entrega la misión La fabada
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Capitán de la Avanzada Parker|r en la Torre de la Vigía
    .turnin 26504 >>Entrega la misión SE BUSCA: Gnolls Crestagrana
    .turnin 26503 >>Entrega la misión Evaluando la amenaza todavía
    .accept 26505 >>Acepta la misión El informe de Parker
    .target Watch Captain Parker
step
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fp Lakeshire >> Aprende la ruta de vuelo hacia Lakeshire
    .target Ariena Stormfeather
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #optional
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shawn|r
    .accept 26508 >>Acepta la misión El collar de Nida
    .target Shawn
    .flyable --Azeroth Flying
step
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shawn|r mientras estés en el muelle
    .accept 26508 >>Acepta la misión El collar de Nida
    .target Shawn
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entra en el Ayuntamiento de Villa del Lago
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alguacil Conacher|r y |cRXP_FRIENDLY_Magistrado Solomon|r dentro
    .accept 26511 >>Acepta la misión Limpieza del Lago Sempiterno
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26505 >>Entrega la misión El informe de Parker
    .accept 26510 >>Acepta la misión ¡Tenemos que prepararnos!
    .goto 49,28.910,41.111
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Sal del Ayuntamiento de Villa del Lago
step
    #sticky
    #label EverstillMurlocs
    #loop
    .goto 49,37.818,42.158,0
    .goto 49,39.626,46.404,0
    .waypoint 49,36.095,45.006,40,0
    .waypoint 49,36.580,43.202,40,0
    .waypoint 49,37.798,41.157,40,0
    .waypoint 49,38.840,41.673,40,0
    .waypoint 49,40.457,44.698,40,0
    .waypoint 49,42.557,47.125,40,0
    .waypoint 49,40.397,48.986,40,0
    .waypoint 49,36.943,50.290,40,0
    .waypoint 49,36.640,46.754,40,0
    >>Mata a los |cRXP_ENEMY_Múrloc Devoradores|r y a los |cRXP_ENEMY_Múrloc Exploradores|r
    .complete 26511,1 --Lake Everstill Murloc (10)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 49,37.818,42.158
    >>Despoja la |cRXP_PICK_Gnomograbadora|r en el suelo
    .complete 26510,1 --Gnomecorder (1)
step
    #optional
    #requires EverstillMurlocs
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entra en el Ayuntamiento de Villa del Lago
step
    #requires EverstillMurlocs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alguacil Conacher|r y |cRXP_FRIENDLY_Magistrado Solomon|r dentro
    .turnin 26511 >>Entrega la misión Limpieza del Lago Sempiterno
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26510 >>Entrega la misión ¡Tenemos que prepararnos!
    .accept 26512 >>Acepta la misión Sintonizando la gnomograbadora
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Sal del Ayuntamiento de Villa del Lago
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .accept 26513 >>Acepta la misión Como un pedo en el aire
    .target Marshal Marris
step
    .goto 49,32.330,39.544
	>>|cRXP_WARN_Viaja al cementerio de Lakeshire|r
    .complete 26512,1 --Test the Gnomecorder at the Lakeshire Graveyard
    .turnin 26512 >>Entrega la misión Sintonizando la gnomograbadora
    .accept 26514 >>Acepta la misión Diversión en los cañones
--TODO: Quest is an auto turnin/pickup from the quest log, research how to automate it
--XX     >>|cRXP_WARN_Click the pop-up in your questlog|r
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #sticky
    #label DirtScroll
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>Mata a los |cRXP_ENEMY_Redridge Gnolls|r. Despoja |T134944:0|t|cRXP_LOOT_[Pergamino manchado de tierra]|r
    >>|cRXP_WARN_Usa |T134944:0|t|cRXP_LOOT_[Pergamino manchado de tierra]|r para iniciar la misión|r
    .collect 58898,1,26519,1 --Dirt-Stained Scroll (1)
    .accept 26519 >>Acepta la misión Aquel que controla a los ettins
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .use 58898
step
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .goto 49,36.305,30.502,50,0
    .goto 49,32.496,24.909,50,0
    .goto 49,30.051,28.018,50,0
    .goto 49,27.453,27.292,50,0
    .goto 49,27.470,34.077,50,0
    .goto 49,21.637,34.274,50,0
    .goto 49,23.390,26.005,50,0
    >>Despoja los |cRXP_LOOT_Cajones de suministros de Redridge|r en el suelo
    >>Mata a los |cRXP_ENEMY_Redridge Jornaleros|r, a los |cRXP_ENEMY_Redridge Místicos|r, a los |cRXP_ENEMY_Redridge Golpeadores|r, a los |cRXP_ENEMY_Redridge Alfas|r, y a los |cRXP_ENEMY_Redridge Brutos|r. Despoja sus |cRXP_LOOT_Collares Gnoll de Redridge|r
    >>|cRXP_WARN_Evita atraer a los |cRXP_ENEMY_Canyon Ettins|r que patrullan la zona|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .disablecheckbox
    .complete 26514,1 --Redridge Gnoll Collar (10)
    .mob Redridge Drudger
    .mob Redridge Mystic
    .mob Redridge Basher
    .mob Redridge Alpha
    .mob Redridge Brute
    .unitscan Canyon Ettin
step
    .goto 49,20.431,26.655
    >>|cRXP_WARN_Haz clic en la ventana emergente en tu registro de misiones|r
    .turnin 26514 >>Entrega la misión Diversión en los cañones
    .accept 26544 >>Acepta la misión Se han vuelto más avispados...
--TODO: Auto turn in, research how to automate it
step
    #optional
    #completewith next
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    >>Despoja los |cRXP_LOOT_Cajones de suministros de Redridge|r en el suelo
    >>|cRXP_WARN_Evita atraer a los |cRXP_ENEMY_Canyon Ettins|r que patrullan la zona|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #completewith Ardo
    #requires DirtScroll
    .goto 49,20.431,26.655
    .subzone 98 >> Entra en las Cavernas de Rethban
    .isOnQuest 26544
step
    #sticky
    #requires DirtScroll
    #label Missive1
    #loop
    .goto 49,20.337,15.044,0
    .goto 49,22.424,17.323,0
    .goto 49,22.425,21.890,0
    .goto 49,21.588,23.647,0
    .goto 49,19.525,24.078,0
    .goto 49,20.141,21.509,0
    .goto 49,16.783,19.487,0
    .waypoint 49,20.337,15.044,20,0
    .waypoint 49,22.424,17.323,20,0
    .waypoint 49,22.425,21.890,20,0
    .waypoint 49,21.588,23.647,20,0
    .waypoint 49,19.525,24.078,20,0
    .waypoint 49,20.141,21.509,20,0
    .waypoint 49,16.783,19.487,20,0
    >>Mata a los |cRXP_ENEMY_Supervisores Blackrock|r dentro de las Cavernas de Rethban. Despoja la |cRXP_LOOT_Misiva de Orco Blackrock|r
    .complete 26544,1 --Blackrock Orc Missive (1)
    .mob *Blackrock Overseer
step
    #sticky
    #label Missive2
    #requires Missive1
    >>|cRXP_WARN_Haz clic en la ventana emergente en tu registro de misiones|r
    .turnin 26544 >>Entrega la misión Se han vuelto más avispados...
    .accept 26545 >>Acepta la misión ¡Ululante debe morir!
step
    #optional
    #completewith next
    #requires DirtScroll
    .goto 49,19.502,24.380,20,0
    .goto 49,18.121,22.037,20,0
    .goto 49,17.650,17.871,20,0
    .goto 49,19.884,17.025,15 >>Viaja hacia |cRXP_ENEMY_Ardo Patasoez|r dentro de las Cavernas de Rethban
step
    #requires DirtScroll
    #label Ardo
    >>Mata a |cRXP_ENEMY_Ardo Patasoez|r. Haz clic en el |cRXP_PICK_Orbe de control de ettin|r junto a él
    .complete 26519,1 --Ardo Dirtpaw (1)
    .goto 49,18.432,18.172
    .mob +Ardo Dirtpaw
    .turnin 26519 >>Entrega la misión Aquel que controla a los ettins
    .accept 26520 >>Acepta la misión Salvar al Supervisor Olento
    .goto 49,17.841,18.619
step
    #requires Missive1
    .goto 49,20.431,26.655,25,0
    .goto 49,21.318,27.426,40 >>Sal de las Cavernas de Rethban
    .isOnQuest 26520
    .zoneskip 49,1 --Redridge Mountains
step
    #sticky
    #label SupplyCrates
    #loop
    .goto 49,36.305,30.502,0
    .goto 49,32.496,24.909,0
    .goto 49,30.051,28.018,0
    .goto 49,27.453,27.292,0
    .goto 49,27.470,34.077,0
    .goto 49,21.637,34.274,0
    .goto 49,23.390,26.005,0
    .waypoint 49,36.305,30.502,50,0
    .waypoint 49,32.496,24.909,50,0
    .waypoint 49,30.051,28.018,50,0
    .waypoint 49,27.453,27.292,50,0
    .waypoint 49,27.470,34.077,50,0
    .waypoint 49,21.637,34.274,50,0
    .waypoint 49,23.390,26.005,50,0
    >>Despoja los |cRXP_LOOT_Cajones de suministros de Redridge|r en el suelo
    >>|cRXP_WARN_Evita atraer a los |cRXP_ENEMY_Canyon Ettins|r que patrullan la zona|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #requires Missive2
    .goto 49,26.870,21.977
    >>Mata al |cRXP_ENEMY_Ululante|r. Despoja la |cRXP_LOOT_Blackrock Invasión Plans|r
    .complete 26545,1 --Yowler (1)
    .complete 26545,2 --Blackrock Invasion Plans (1)
    .mob Yowler
step
    #completewith next
    #requires SupplyCrates
    #loop
    .goto 49,23.859,29.302,0
    .goto 49,22.766,34.745,0
    .goto 49,24.022,35.828,0
    .goto 49,28.492,36.235,0
    .goto 49,27.799,30.853,0
    .line 49,23.859,29.302,23.973,30.595,23.762,32.089,22.766,34.745,23.014,35.134,23.619,34.381,24.022,35.828,25.529,35.789,26.902,36.339,28.492,36.235,28.357,34.410,27.054,32.432,27.799,30.853,27.502,28.865,26.595,28.355,25.013,28.408
    .goto 49,23.859,29.302,50,0
    .goto 49,23.973,30.595,50,0
    .goto 49,23.762,32.089,50,0
    .goto 49,22.766,34.745,50,0
    .goto 49,23.014,35.134,50,0
    .goto 49,23.619,34.381,50,0
    .goto 49,24.022,35.828,50,0
    .goto 49,25.529,35.789,50,0
    .goto 49,26.902,36.339,50,0
    .goto 49,28.492,36.235,50,0
    .goto 49,28.357,34.410,50,0
    .goto 49,27.054,32.432,50,0
    .goto 49,27.799,30.853,50,0
    .goto 49,27.502,28.865,50,0
    .goto 49,26.595,28.355,50,0
    .goto 49,25.013,28.408,50,0
    .cast 80704 >> Mientras permaneces quieto, usa el |T332402:0|t[Orbe de control de ettin] en un |cRXP_ENEMY_Ettin de cañón|r
    .use 58895
    .unitscan Canyon Ettin
    .isOnQuest 26520
step
    #requires SupplyCrates
    .goto 49,31.480,44.344
    >>Viaja hacia |cRXP_FRIENDLY_Supervisor Olento|r. Usa el |T332402:0|t[Orbe de control de ettin] junto a él mientras controlas un |cRXP_FRIENDLY_Sometido Ettin de cañón|r
    .complete 26520,1 --Foreman Oslow Saved (1)
    .use 58895
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Marris|r
    .turnin 26513 >>Entrega la misión Como un pedo en el aire
    .target Marshal Marris
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entra en el Ayuntamiento de Villa del Lago
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magistrado Solomon|r y |cRXP_FRIENDLY_Coronel Troteman|r adentro
    .turnin 26545 >>Entrega la misión ¡Ululante debe morir!
    .turnin 26520 >>Entrega la misión Salvar al Supervisor Olento
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    .accept 26567 >>Acepta la misión John J. Keeshan
    .goto 49,28.659,40.744,5,0
    .goto 49,28.892,40.894,5,0
    .goto 49,28.659,40.744
    .target +Colonel Troteman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Alguacil Conacher|r
    >>|cRXP_WARN_Si ya aceptaste la misión Se busca héroe: ¡Bosque del Ocaso! anteriormente de Ventormenta, omite este paso|r
    .accept 26728 >>Acepta la misión Se busca héroe: ¡Bosque del Ocaso!
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alguacil Conacher|r y |cRXP_FRIENDLY_Magistrado Solomon|r dentro
    .accept 26728 >>Acepta la misión Se busca héroe: ¡Bosque del Ocaso!
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26545 >>Entrega la misión ¡Ululante debe morir!
    .turnin 26520 >>Entrega la misión Salvar al Supervisor Olento
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    --XX Level 19/20 xp gate needed? (Hero's Call req is 19)
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Sal del Ayuntamiento de Villa del Lago
------Skip/remove section if Keeshan added
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Acepta la misión Una visita poco grata
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Mata a la |cRXP_ENEMY_Panzallena|r. Despoja el |cRXP_LOOT_Colmillo de Panzallena|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Entrega la misión Una visita poco grata
    .target Martie Jainrose
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_Nada bajo el agua y verifica las ubicaciones de aparición. Hay 10 ubicaciones con 2 apariciones a la vez|r
    >>Abre el |cRXP_PICK_Glinting Mud|r. Despoja el |cRXP_LOOT_El collar de Nida|r
    .complete 26508,1 --Nida's Necklace (1)
step
    .train 33388,1
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ariena Tempespluma|r
    .fly Eastvale Logging Camp >> Vuela a Campamento del Bosque de Eastvale
	.target Ariena Stormfeather
step << Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katie Cazadora|r
    +|cRXP_BUY_Compra un|r |T132261:0|t[Caballo] |cRXP_BUY_a ella|r
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    .train 33388,1
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Randal Predatio|r
    .train 33388 >> Aprende Equitadura de aprendiz
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step
    .train 33388,3
    .goto 37,81.830,66.553
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Goss el Presto|r
    .fly Lakeshire, Redridge >> Vuela a Villa del Lago
	.target Goss the Swift
    .zoneskip 37,1
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Entrega la misión El collar de Nida
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nida|r mientras estés en el muelle
    .turnin 26508 >>Entrega la misión El collar de Nida
    .target Nida
    .noflyable --Azeroth Flying
------XX Optional Section
step
    #optional
    #completewith KeeshanStart
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >> Entra en la Posada de Villa del Lago
step
    .goto 49,26.393,41.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Tabernera Brianna|r
    .home >> Establece tu Piedra de hogar en Villa del Lago
    .target Innkeeper Brianna
    .isOnQuest 26567
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Entra a la trastienda, luego baja las escaleras hacia |cRXP_FRIENDLY_John J. Keeshan|r
step
    #label KeeshanStart
    .goto 49,26.297,40.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John J. Keeshan|r en el sótano de la posada de Lakeshire
    .turnin 26567 >>Entrega la misión John J. Keeshan
    .accept 26568 >>Acepta la misión Esta no es mi guerra
    .target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,25.990,42.754,10 >> Sal de la Posada de Villa del Lago --Exiting West (OPTIONAL SECTION)
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Acepta la misión Una visita poco grata
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Mata a |cRXP_ENEMY_Panzallena|r. Despójala para obtener |cRXP_LOOT_Colmillo de Panzallena|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Entrega la misión Una visita poco grata
    .target Martie Jainrose
step
    #loop
    .goto 49,19.760,47.282,0
    .goto 49,21.922,48.497,0
    .goto 49,23.938,49.802,0
    .goto 49,25.321,49.235,0
    .goto 49,25.985,46.815,0
    .goto 49,27.096,50.935,0
    .goto 49,29.752,49.376,0
    .goto 49,32.075,50.279,0
    .goto 49,34.767,49.432,0
    .goto 49,35.716,49.607,0
    .goto 49,19.760,47.282,40,0
    .goto 49,21.922,48.497,40,0
    .goto 49,23.938,49.802,40,0
    .goto 49,25.321,49.235,40,0
    .goto 49,25.985,46.815,40,0
    .goto 49,27.096,50.935,40,0
    .goto 49,29.752,49.376,40,0
    .goto 49,32.075,50.279,40,0
    .goto 49,34.767,49.432,40,0
    .goto 49,35.716,49.607,40,0
    >>|cRXP_WARN_Nada bajo el agua y verifica las ubicaciones de reaparición. Hay 10 ubicaciones con hasta 2 enemigos activos a la vez|r
    >>Abre el |cRXP_PICK_Glinting Mud|r. Despójalo para obtener el |cRXP_LOOT_Collar de Nida|r
    .complete 26508,1 --Nida's Necklace (1)
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Entrega la misión El collar de Nida
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nida|r mientras estés en el muelle
    .turnin 26508 >>Entrega la misión El collar de Nida
    .target Nida
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entra en el Ayuntamiento de Villa del Lago
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coronel Troteman|r dentro
    .turnin 26568 >>Entrega la misión Esta no es mi guerra
    .accept 26571 >>Acepta la misión Armas de guerra
    .accept 26586 >>Acepta la misión En busca de la Compañía Bravo
    .target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Sal del Ayuntamiento de Villa del Lago
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Supervisor Olento|r y |cRXP_FRIENDLY_Alguacil Marris|r
    .accept 26569 >>Acepta la misión Equipo de análisis
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .accept 26570 >>Acepta la misión El ejército de Render
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
	#completewith Render
    .goto 49,44.299,30.816,0
    .goto 49,41.458,35.639,0
    .goto 49,44.548,35.896,0
    .goto 49,47.950,33.981,0
    .goto 49,47.671,40.994,0
    .goto 49,51.823,42.459,0
    .goto 49,53.901,37.198,0
	>>Mata a los |cRXP_ENEMY_Blackrock Renegades|r y a los |cRXP_ENEMY_Blackrock Exploradores|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Scout
	.mob Blackrock Renegade
step
    #completewith Messner1
    .goto 49,39.751,37.234,50,0
    .goto 49,44.242,39.198,50,0
    .goto 49,47.119,41.138,15,0
    .goto 49,47.529,41.955,12 >>Viaja hacia |cRXP_FRIENDLY_Messner|r
    .noflyable --Azeroth Flying
step
    #label Messner1
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Messner|r en la jaula
    .turnin 26586 >>Entrega la misión En busca de la Compañía Bravo
    .accept 26587 >>Acepta la misión Huir es difícil
    .target Messner
step
	>>Mata a |cRXP_ENEMY_Murdunk|r y a |cRXP_ENEMY_Homurk|r. Despójalos para obtener el |cRXP_LOOT_Arco de Keeshan|r y el |cRXP_LOOT_Keeshan's Cuchillo de supervivencia|r
    .complete 26571,2 --Keeshan's Survival Knife (1)
    .goto 49,51.525,41.398
	.mob +Homurk
    .complete 26571,1 --Keeshan's Bow (1)
    .goto 49,51.681,41.330
	.mob +Murdunk
step
    #sticky
    #label Heart
    >>|cRXP_WARN_Haz clic en la ventana emergente en tu registro de misiones|r
    .turnin 26571 >>Entrega la misión Armas de guerra
    .accept 26573 >>Acepta la misión Tiene que poner el alma en ello
step
    .goto 49,49.234,38.005
    >>Abre la |cRXP_PICK_Blackrock Llave Pouch|r en el muñón. Despójala para obtener la |cRXP_LOOT_Llave de jaula de Messner|r
    >>|cRXP_WARN_Evita al |cRXP_ENEMY_Capitán de huargos Roca Negra|r y al |cRXP_ENEMY_Blackrock Batalla Worgs|r|r
    .complete 26587,1 --Messner's Cage Key (1)
	.unitscan Blackrock Worg Captain
    .mob Blackrock Battle Worg
step
    #requires Heart
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Messner|r en la jaula y cuando reaparece junto a ti
    .turnin 26587 >>Entrega la misión Huir es difícil
    .timer 3,Messner RP
    .accept 26560 >>Acepta la misión Jorgensen
	.target Messner
step
    #optional
    #label Render
    .goto 49,44.518,27.137,70 >>Viaja hacia las afueras del Campamento de Render
    .isOnQuest 26560
    .noflyable --Azeroth Flying
step
    #completewith Danforth
    #label Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>Mata a los |cRXP_ENEMY_Blackrock Summoners|r y a los |cRXP_ENEMY_Blackrock Rastreadores|r. Despoja a los |cRXP_ENEMY_Blackrock Rastreadores|r para obtener sus |cRXP_LOOT_Blackrock Spyglasses|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,<5 --Blackrock Spyglass (<5)
step
    #optional
    #completewith Danforth
    #requires Spyglass1
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    >>Mata a los |cRXP_ENEMY_Blackrock Summoners|r y a los |cRXP_ENEMY_Blackrock Rastreadores|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,5 --Blackrock Spyglass (5)
step
    .goto 49,43.546,10.819
    >>Mata a |cRXP_ENEMY_Utroka, la Maestra de llaves|r. Despójala para obtener la |cRXP_LOOT_Llave de jaula de Jorgensen|r
    .complete 26560,1 --Jorgensen's Cage Key (1)
	.mob Utroka the Keymistress
step
    #optional
    #completewith next
    .goto 49,37.338,15.299,40,0
    .goto 49,35.846,14.524,40,0
    .goto 49,33.538,11.867,15 >> Viaja hacia |cRXP_FRIENDLY_Jorgensen|r
    .noflyable --Azeroth Flying
step
    .goto 49,33.538,11.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Jorgensen|r en la jaula y cuando reaparece junto a ti
    .turnin 26560 >>Entrega la misión Jorgensen
    .timer 3,Jorgensen RP
    .accept 26561 >>Acepta la misión Krakauer
	.target Jorgensen
step
    #completewith BlackrockC
    #label RendersRock
    .goto 49,30.861,9.190,20 >> Entra en la Roca de Render
    .isOnQuest 265261
step
    #sticky
    #label Tarak
    #requires RendersRock
    .goto 49,26.057,10.450,0,0
    >>Mata al |cRXP_ENEMY_Ritualista Tarak|r dentro
    .complete 26561,1 --Ritualist Tarak (1)
	.mob +Ritualist Tarak
step
    #optional
	#completewith BlackrockC
    #requires RendersRock
    .goto 49,30.050,9.353,15,0
    .goto 49,29.150,10.594,15,0
    .goto 49,26.586,10.530,15 >>Viaja hacia la |cRXP_PICK_Blackrock Coffer|r dentro
step
	#label BlackrockC
    .goto 49,26.586,10.530
    >>Abre la |cRXP_PICK_Blackrock Coffer|r en el suelo dentro. Despójala para obtener la |cRXP_LOOT_Keeshan's Rojo Headband|r y el |cRXP_LOOT_Keeshan's Jade Amulet|r
    .complete 26573,1 --Keeshan's Red Headband (1)
    .complete 26573,2 --Keeshan's Jade Amulet (1)
step
    #requires Tarak
    .goto 49,25.906,10.487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Krakauer|r adentro en el altar y cuando reaparece junto a ti
    .turnin 26561 >>Entrega la misión Krakauer
    .timer 3,Krakauer RP
    .accept 26562 >>Acepta la misión Y por último, aunque no menos importante... Danforth
	.target Krakauer
step
    #optional
    #completewith next
    .goto 49,26.615,13.314,15,0
    .goto 49,25.552,14.772,15,0
    .goto 49,25.856,16.403,15,0
    .goto 49,27.634,18.155,15 >Travel toward |cRXP_ENEMY_Overlord Barbarius|r inside
step
    .goto 49,27.634,18.155
    >>Mata al |cRXP_ENEMY_Señor supremo Barbarius|r dentro. Despójalo para obtener la |cRXP_LOOT_Blackrock Palanca Llave|r
	>>|cRXP_WARN_Asegúrate de que tus Guardianes se teletransportan hacia abajo cuando saltas hacia abajo|r
    .complete 26562,1 --Overlord Barbarius (1)
    .complete 26562,2 --Blackrock Lever Key (1)
	.mob Overlord Barbarius
step
	#completewith next
    .goto 49,27.765,17.943
	.cast 80887 >>|cRXP_WARN_Haz clic en la |cRXP_PICK_Chain Palanca|r en el suelo dentro|r
	.isOnQuest 26562
step
    #label Danforth
    .goto 49,28.326,17.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danforth|r dentro del agua y cuando reaparezca junto a ti
    .turnin 26562 >>Entrega la misión Y por último, aunque no menos importante... Danforth
    .timer 3,Danforth RP
    .accept 26563 >>Acepta la misión El regreso de la Compañía Bravo
	.target Danforth
--ZXCV Logout Skip here (if it works) add solid Spyglass step
step
    #optional
	#completewith next
    .goto 49,30.100,15.657,15,0
    .goto 49,30.004,12.928,15,0
    .goto 49,29.820,10.349,15,0
    .goto 49,30.372,9.117,15,0
    .goto 49,31.635,9.630,30 >> Sal de la Roca de Render
step
    #optional
    #loop
    .goto 49,42.789,21.487,0
    .goto 49,43.357,17.991,0
    .goto 49,42.034,14.041,0
    .goto 49,36.291,15.982,0
    .goto 49,32.625,10.192,0
    .goto 49,45.155,23.968,55,0
    .goto 49,42.789,21.487,55,0
    .goto 49,41.185,20.004,55,0
    .goto 49,41.167,17.881,55,0
    .goto 49,43.357,17.991,55,0
    .goto 49,44.269,13.930,55,0
    .goto 49,41.899,12.146,55,0
    .goto 49,42.034,14.041,55,0
    .goto 49,40.282,16.319,55,0
    .goto 49,38.889,17.678,55,0
    .goto 49,36.291,15.982,55,0
    .goto 49,34.239,13.808,55,0
    .goto 49,34.298,11.938,55,0
    .goto 49,32.625,10.192,55,0
    >>Mata a los |cRXP_ENEMY_Blackrock Summoners|r y a los |cRXP_ENEMY_Blackrock Rastreadores|r. Despoja a los |cRXP_ENEMY_Blackrock Rastreadores|r para obtener sus |cRXP_LOOT_Blackrock Spyglasses|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
step
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Villa del Lago
step
    .goto 49,26.456,42.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kimberly Hiett|r en la Lakeshire Posada
    .vendor >>Vende y Repara
    .target Kimberly Hiett
	.isOnQuest 26573
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entra en el Ayuntamiento de Villa del Lago
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coronel Troteman|r
    .turnin 26563 >>Entrega la misión El regreso de la Compañía Bravo
    .turnin 26573 >>Entrega la misión Tiene que poner el alma en ello
    .accept 26607 >>Acepta la misión Ellos tiraron primero
	.target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >> Sal del Ayuntamiento de Villa del Lago
step
    #optional
    #completewith Keeshan2
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >> Entra en la Posada de Villa del Lago
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Entra en la trastienda, luego baja hacia |cRXP_FRIENDLY_John J. Keeshan|r
step
#questguide
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John J. Keeshan|r en el sótano de la Lakeshire Posada
    .turnin 26607 >>Entrega la misión Ellos tiraron primero
    .accept 26616 >>Acepta la misión No tiene fin
	.target John J. Keeshan
step
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John J. Keeshan|r en el sótano de la Lakeshire Posada
    .turnin 26607 >>Entrega la misión Ellos tiraron primero
	.target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.108,42.747,10 >> Sal de la Posada de Villa del Lago --East
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Supervisor Olento|r y |cRXP_FRIENDLY_Alguacil Marris|r
    .turnin 26569 >>Entrega la misión Equipo de análisis
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .turnin 26570 >>Entrega la misión El ejército de Render
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
#questguide
	#label Boat
    .goto 49,34.426,45.914
	.vehicle >> Sube al |cRXP_PICK_Barco de rueda de Keeshan|r
	.timer 43,No tiene fin RP
    .isOnQuest 26616
step
#questguide
    .goto 49,52.901,52.999
    >>Espera a que termine el RP
    >>|cRXP_WARN_Sal manualmente del barco cuando termine el temporizador|r
    .complete 26616,1 --Keeshan's Riverboat Ride Complete
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John J. Keeshan|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Messner|r y |cRXP_FRIENDLY_Danforth|r
    .turnin 26616 >>Entrega la misión No tiene fin
    .accept 26639 >>Acepta la misión Punto de contacto: Brubaker
    .goto 49,52.551,55.408
	.target +John J. Keeshan
    .accept 26636 >>Acepta la misión Paquete de campo de la Compañía Bravo: Camuflaje
    .goto 49,52.402,55.407
	.target +Krakauer
    .accept 26637 >>Acepta la misión Paquete de campo de la Compañía Bravo: Cloroformo
    .goto 49,52.432,55.541
	.target +Messner
    .accept 26638 >>Acepta la misión Cazar a los cazadores
    .goto 49,52.533,55.557
	.target +Danforth
step
#questguide
    #loop
    .goto 49,48.669,54.976,0
    .goto 49,46.956,56.688,0
    .goto 49,43.168,55.127,0
    .goto 49,39.453,57.087,0
    .goto 49,39.358,50.183,0
    .goto 49,45.014,49.280,0
    .goto 49,48.669,54.976,55,0
    .goto 49,48.798,57.741,55,0
    .goto 49,46.786,58.420,55,0
    .goto 49,46.956,56.688,55,0
    .goto 49,44.610,54.864,55,0
    .goto 49,44.320,52.796,55,0
    .goto 49,43.168,55.127,55,0
    .goto 49,41.915,53.874,55,0
    .goto 49,40.214,54.370,55,0
    .goto 49,39.453,57.087,55,0
    .goto 49,38.895,60.012,55,0
    .goto 49,38.064,52.309,55,0
    .goto 49,39.358,50.183,55,0
    .goto 49,40.550,47.338,55,0
    .goto 49,42.860,49.655,55,0
    .goto 49,45.014,49.280,55,0
    >>Mata a los |cRXP_ENEMY_Muckdwellers|r bajo el agua. Despójalos para obtener sus |cRXP_LOOT_Muckdweller Glands|r
    >>|cRXP_WARN_Evadir|r a |cRXP_ENEMY_Viejo Gummers|r
    .complete 26637,1 --Muckdweller Gland (8)
	.mob Muckdweller
	.unitscan Ol' Gummers
step
#questguide
    #sticky
    #label Hunters
    #loop
    .goto 49,55.822,66.568,0
    .goto 49,53.086,69.251,0
    .goto 49,50.922,65.688,0
    .goto 49,49.219,67.953,0
    .goto 49,47.151,66.384,0
    .goto 49,45.798,69.412,0
    .goto 49,43.679,70.878,0
    .goto 49,39.093,68.551,0
    .waypoint 49,55.822,66.568,20,0
    .waypoint 49,54.430,68.474,20,0
    .waypoint 49,53.627,69.824,20,0
    .waypoint 49,53.086,69.251,20,0
    .waypoint 49,52.089,69.305,20,0
    .waypoint 49,49.800,69.120,20,0
    .waypoint 49,50.922,65.688,20,0
    .waypoint 49,50.313,66.097,20,0
    .waypoint 49,49.024,66.516,20,0
    .waypoint 49,49.219,67.953,20,0
    .waypoint 49,48.006,68.721,20,0
    .waypoint 49,48.030,67.211,20,0
    .waypoint 49,47.151,66.384,20,0
    .waypoint 49,46.832,67.484,20,0
    .waypoint 49,45.871,66.825,20,0
    .waypoint 49,46.634,70.734,20,0
    .waypoint 49,45.798,69.412,20,0
    .waypoint 49,43.680,66.576,20,0
    .waypoint 49,43.679,70.878,20,0
    .waypoint 49,41.375,69.805,20,0
    .waypoint 49,39.093,68.551,20,0
    >>Mata a los |cRXP_ENEMY_Blackrock Hunters|r
    >>|cRXP_WARN_Ten cuidado porque están|r |T136041:0|t[Camouflaged]
    .complete 26638,1 --Blackrock Hunter (8)
	.mob Blackrock Hunter
step
#questguide
    .goto 49,39.080,69.773,0
    .goto 49,41.122,69.990,0
    .goto 49,42.532,70.274,0
    .goto 49,45.198,68.405,0
    .goto 49,47.075,66.697,0
    .goto 49,39.080,69.773,40,0
    .goto 49,39.687,69.959,40,0
    .goto 49,40.424,68.797,40,0
    .goto 49,41.122,69.990,40,0
    .goto 49,41.557,68.559,40,0
    .goto 49,42.280,69.740,40,0
    .goto 49,42.532,70.274,40,0
    .goto 49,44.090,70.194,40,0
    .goto 49,43.958,67.755,40,0
    .goto 49,45.198,68.405,40,0
    .goto 49,46.057,69.072,40,0
    .goto 49,47.075,66.697,40,0
	>>Despoja los |cRXP_LOOT_Piles of Leaves|r y el |cRXP_LOOT_Fox Poop|r en el suelo
    .complete 26636,1 --Pile of Leaves (5)
    .complete 26636,2 --Fox Poop (5)
step
#questguide
    .goto 49,53.052,67.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Brubaker|r
    .turnin 26639 >>Entrega la misión Punto de contacto: Brubaker
    .accept 26640 >>Acepta la misión Atrocidades indescriptibles
	.target Brubaker
step
#questguide
    #optional
    #questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r y |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26637 >>Entrega la misión Paquete de campo de la Compañía Bravo: Cloroformo
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Entrega la misión Paquete de campo de la Compañía Bravo: Camuflaje
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Entrega la misión Cazar a los cazadores
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Entrega la misión Atrocidades indescriptibles
    .accept 26646 >>Acepta la misión Prisioneros de guerra
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step
#questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r y |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26637 >>Entrega la misión Paquete de campo de la Compañía Bravo: Cloroformo
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Entrega la misión Paquete de campo de la Compañía Bravo: Camuflaje
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Entrega la misión Cazar a los cazadores
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Entrega la misión Atrocidades indescriptibles
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step << Human
#questguide
    #completewith next
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Eastvale Logging Camp >> Vuela a Campamento del Bosque de Eastvale
	.target Arlen Marsters
    .isQuestAvailable 26646 --Prisoners of War
    .skill riding,75,1
    .zoneskip 49,1
step << Human
#questguide
    .goto 37,84.321,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Randal Predatio|r
    .skill riding,75 >> Aprende |T136103:0|t[Aprendiz jinete] de él
    .target Randal Hunter
step << Human
#questguide
    .goto 37,84.150,65.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Katie Cazadora|r
    +|cRXP_BUY_Compra cualquier|r |T132261:0|t[Caballo] |cRXP_BUY_que te guste de ella|r
	.target Katie Hunter
    .itemcount 2414,<1 --Pinto Bridle
    .itemcount 5655,<1 --Chestnut Mare Bridle
    .itemcount 5656,<1 --Brown Horse Bridle
    .skill riding,<75,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Usa la |T132261:0|t[Pinto Bridle] para aprenderlo
    .use 2414
    .itemcount 2414,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Usa la |T132261:0|t[Yegua zaina Bridle] para aprenderlo
    .use 5655
    .itemcount 5655,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >> Usa la |T132261:0|t[Caballo marrón Bridle] para aprenderlo
    .use 5656
    .itemcount 5656,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Monturas|r
    >>|cRXP_WARN_Arrastra el|r |T132261:0|t[Pinto] |cRXP_WARN_a tus barras de acción|r
    .cast 472 >> Monta tu |T132261:0|t[Pinto]
    .train 472,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Monturas|r
    >>|cRXP_WARN_Arrastrar la|r |T132261:0|t[Yegua zaina] |cRXP_WARN_a tus barras de acción|r
    .cast 6648 >> Monta tu |T132261:0|t[Yegua zaina]
    .train 6648,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Presiona "Desfasaje+P" para abrir tu pestaña de Monturas|r
    >>|cRXP_WARN_Arrastra el|r |T132261:0|t[Caballo marrón] |cRXP_WARN_a tus barras de acción|r
    .cast 458 >> Monta tu |T132261:0|t[Caballo marrón]
    .train 458,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #label Goss
    #completewith Duskwood
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Goss el Presto|r
    .fly Darkshire >> Vuela a Villa Oscura
    .target Goss the Swift
    .zoneskip 37,1
step
#questguide
    #optional
    #completewith Duskwood
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Darkshire >> Vuela a Villa Oscura
	.target Arlen Marsters
    .isQuestAvailable 26646
    .skill riding,<75,1 << Human
    .zoneskip 49,1
------start of optional Keeshan questline
step
    #questguide
    #completewith SeaforiumD
    +|cRXP_WARN_Usa|r la |T133878:0|t[Paquete de campo de la Compañía Bravo] |cRXP_WARN_en|r |cRXP_WARN_Render's Valley|r
    >>|cRXP_WARN_Puedes montar con normalidad con el objeto, pero no puedes estar|r |T136041:0|t[Camuflado] << !Druid
    >>|cRXP_WARN_Puedes montar normalmente con el objeto y volar con|r |T132128:0|t[Forma de vuelo] |cRXP_WARN_mientras estás|r |T136041:0|t[Camouflaged] << Druid
    >>Lanza |T136074:0|t[Camuflaje] (1) para hacerte invisible|r
    >>Lanza |T132289:0|t[Distracción] (2) para hacer que los |cRXP_ENEMY_Blackrock Orcs|r se muevan
    >>Lanza |T136090:0|t[Cloroformo] (3) para adormecer a los |cRXP_ENEMY_Blackrock Wardens|r y a los |cRXP_ENEMY_Blackrock Guards|r. Esto no funciona contra los |cRXP_ENEMY_Blackrock Draco Riders|r
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .flyable << Druid --Azeroth Flying
step << Druid
    #questguide
    #optional
    #completewith SeaforiumD
    +|cRXP_WARN_Usa|r la |T133878:0|t[Paquete de campo de la Compañía Bravo] |cRXP_WARN_en|r |cRXP_WARN_Render's Valley|r
    >>|cRXP_WARN_Puedes montar con normalidad con el objeto, pero no puedes estar|r |T136041:0|t[Camuflado]
    >>Lanza |T136074:0|t[Camuflaje] (1) para hacerte invisible|r
    >>Lanza |T132289:0|t[Distracción] (2) para hacer que los |cRXP_ENEMY_Blackrock Orcs|r se muevan
    >>Lanza |T136090:0|t[Cloroformo] (3) para adormecer a los |cRXP_ENEMY_Blackrock Wardens|r y a los |cRXP_ENEMY_Blackrock Guards|r. Esto no funciona contra los |cRXP_ENEMY_Blackrock Draco Riders|r
    .use 60384
    .mob Blackrock Drake Rider
    .mob Blackrock Warden
    .mob Blackrock Guard
    .isOnQuest 26646
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #completewith next
    .goto 49,68.486,75.120,20 >> Entra en la cueva del Valle de Render
step
    #questguide
    .goto 49,69.525,76.315
    >>Abre la |cRXP_PICK_Blackrock Llave Pouch|r dentro. Despójala para obtener la |cRXP_LOOT_Blackrock Sujetar Pen Llave|r
    .collect 59261,1,26646,1 --Blackrock Holding Pen Key (1)
step
    #questguide
    .goto 49,69.805,59.125,-1
    .goto 49,68.970,60.132,-1
    >>Abre cualquiera de los |cRXP_PICK_Blackrock Sujetar Pens|r
    .complete 26646,1 --Prisoners of War Freed (1)
step
    #questguide
    #sticky
    #label Prisoners
    >>|cRXP_WARN_Haz clic en la ventana emergente en tu registro de misiones|r
    .turnin 26646 >>Entrega la misión Prisioneros de guerra
    .accept 26651 >>Acepta la misión Si quieres sobrevivir a una guerra, conviértete en guerra
step
    #questguide
    #optional
    #completewith next
    .goto 49,66.318,70.789,15 >>Entra en la torre
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,66.411,71.479
    >>Con el |T133878:0|t[Paquete de campo de la Compañía Bravo] equipado, lanza |T136173:0|t[Colocar seforio] (4) en el piso intermedio en el centro de la torre
    .complete 26651,2 --Seaforium Planted at Blackrock Tower (1)
step
    #questguide
    #label SeaforiumD
    .goto 49,64.112,70.826
    >>Con el |T133878:0|t[Paquete de campo de la Compañía Bravo] equipado, lanza |T136173:0|t[Colocar seforio] (4) en la pared exterior de la cabaña
    .complete 26651,1 --Seaforium Planted at Munitions Hut (1)
step
    #questguide
    #optional
    #label FieldKit
    #completewith War
    .aura -82587 >> |cRXP_WARN_Clin|r la |T133878:0|t[Paquete de campo de la Compañía Bravo] |cRXP_WARN_mejora|r
    .isOnQuest 26651
step
    #questguide
    #optional
    #requires FieldKit
    #completewith War
    >>|cRXP_WARN_Evita|cRXP_ENEMY_ a los |rBlackrock Wardens|cRXP_ENEMY_, a los |rBlackrock Guards|r, y a los |cRXP_ENEMY_Blackrock Draco Riders|r
    .goto 49,77.683,65.506,15 >> Viaja hacia |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #label War
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John J. Keeshan|r
	>>|cRXP_WARN_Presiona "Escapar" en tu teclado para omitir la cinemática|r
    .turnin 26651 >>Entrega la misión Si quieres sobrevivir a una guerra, conviértete en guerra
    .accept 26668 >>Acepta la misión Detonación
    .target John J. Keeshan
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John J. Keeshan|r y |cRXP_FRIENDLY_Danforth|r
    .turnin 26668 >>Entrega la misión Detonación
    .accept 26693 >>Acepta la misión La torre oscura
    .goto 49,77.683,65.506
    .target +John J. Keeshan
    .accept 26692 >>Acepta la misión Extinción de los Pielsombra
    .goto 49,77.628,65.341
    .target +Danforth
step
    #questguide
    #sticky
    #label Shadowhide
    .goto 49,73.167,48.650,0
    .goto 49,74.650,52.479,0
    .goto 49,72.277,51.252,0
    .goto 49,69.079,50.430,0
    .goto 49,67.317,43.754,0
    .goto 49,66.197,37.545,0
    .goto 49,71.332,33.267,0
    .goto 49,70.571,38.254,0
    .goto 49,73.004,43.909,0
    .waypoint 49,73.167,48.650,50,0
    .waypoint 49,73.795,49.819,50,0
    .waypoint 49,76.102,53.026,50,0
    .waypoint 49,74.650,52.479,50,0
    .waypoint 49,73.531,53.657,50,0
    .waypoint 49,73.185,50.399,50,0
    .waypoint 49,72.277,51.252,50,0
    .waypoint 49,71.567,50.196,50,0
    .waypoint 49,71.349,48.124,50,0
    .waypoint 49,69.079,50.430,50,0
    .waypoint 49,66.885,47.661,50,0
    .waypoint 49,67.015,45.857,50,0
    .waypoint 49,67.317,43.754,50,0
    .waypoint 49,65.054,40.527,50,0
    .waypoint 49,64.633,37.658,50,0
    .waypoint 49,66.197,37.545,50,0
    .waypoint 49,66.330,33.341,50,0
    .waypoint 49,68.025,35.534,50,0
    .waypoint 49,71.332,33.267,50,0
    .waypoint 49,72.209,34.231,50,0
    .waypoint 49,71.606,35.978,50,0
    .waypoint 49,70.571,38.254,50,0
    .waypoint 49,70.569,41.638,50,0
    .waypoint 49,73.004,43.909,50,0
    >>Mata a los |cRXP_ENEMY_Rabioso Shadowhide Gnolls|r, a los |cRXP_ENEMY_Shadowhide Darkweavers|r, a los |cRXP_ENEMY_Shadowhide Assassins|r, a los |cRXP_ENEMY_Shadowhide Warriors|r, a los |cRXP_ENEMY_Shadowhide Slayers|r, a los |cRXP_ENEMY_Shadowhide Brutes|r y a los |cRXP_ENEMY_Shadowhide Gnolls|r
    >>|cRXP_WARN_Ten cuidado porque los |cRXP_ENEMY_Shadowhide Assassins|r están|r |T132320:0|t[En sigilo]
    .complete 26692,1 --Shadowhide Gnoll (20)
    .mob Rabid Shadowhide Gnoll
    .mob *Shadowhide Darkweaver
    .mob *Shadowhide Assassins
    .mob *Shadowhide Warrior
    .mob *Shadowhide Slayer
    .mob *Shadowhide Brute
    .mob *Shadowhide Gnoll
step
    #questguide
    #sticky
    #requires Shadowhide
    #label Extinction
    >>|cRXP_WARN_Haz clic en la ventana emergente en tu registro de misiones|r
    .turnin 26692 >>Entrega la misión Extinción de los Pielsombra
step
    #questguide
    #optional
    #completewith next
    .goto 49,67.611,30.650 >>Entra en la cueva de |cRXP_ENEMY_General Fangore|r
step
    #questguide
    .goto 49,67.542,28.902
    >>Mata al |cRXP_ENEMY_General Fangore|r dentro. Despójalo para la |cRXP_LOOT_Key of Ilgalar|r
    .complete 26693,1 --Key of Ilgalar (1)
    .mob General Fangore
step
    #questguide
    >>|cRXP_WARN_Haz clic en la ventana emergente en tu registro de misiones|r
    .turnin 26693 >>Entrega la misión La torre oscura
    .accept 26694 >>Acepta la misión El gran mago Doane
step
    #questguide
    #optional
    #label Ilgalar1
    #completewith next
    .goto 49,72.538,44.629,20,0
    .goto 49,71.952,44.819,15 >>Ve hacia la entrada de la Torre de Ilgalar
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #label Ilgalar2
    #requires Ilgalar1
    #completewith next
    .goto 49,71.952,44.819
    .cast 81776 >> Haz clic en el |cRXP_PICK_Resguardo de Ilgalar|r en la base de la Torre de Ilgalar
    .isOnQuest 26694
step
    #questguide
    .goto 49,71.491,44.896,0
    .goto 49,71.256,45.402
    >>Derrota a |cRXP_ENEMY_Gran mago Doane|r en la cima de la Torre de Ilgalar
    .complete 26694,1 --Grand Magus Doane confronted (1)
    .mob Grand Magus Doane
step
    #questguide
    #optional
    #requires Extinction
    #completewith next
    .goto 49,76.973,52.844,40,0
    .goto 49,77.906,58.960,40,0
    .goto 49,77.683,65.506,15 >> Regresa a |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #requires Extinction
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26694 >>Entrega la misión El gran mago Doane
    .timer 29,El gran mago Doane RP
    .target John J. Keeshan
step
    #questguide
    .goto 49,77.204,65.923
    >>|cRXP_WARN_Espera al Roleplay|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coronel Troteman|r
    .accept 26708 >>Acepta la misión ¡AAAAAAAAAAAAH! ¡¡¡AAAAAAAAAAH!!!
    .target Colonel Troteman
step
    #questguide
    #completewith BlackrockInvaders
    #label BravoCompany
    .goto 49,76.916,66.133
    .vehicle >> Entra en el |cRXP_FRIENDLY_Tanque de asedio de la Compañía Bravo|r
    .target Bravo Company Siege Tank
    .isOnQuest 26708
step
    #questguide
    #optional
    #completewith BlackrockInvaders
    #requires BravoCompany
    .goto 49,77.906,58.960,40,0
    .goto 49,76.869,54.470,40 >>|cRXP_WARN_Mientras estés en el |cRXP_FRIENDLY_Tanque de asedio de la Compañía Bravo|r, regresa hacia el Valle de Galardell
    .isOnQuest 26708
step
    #questguide
    #label BlackrockInvaders
    .goto 49,75.045,50.854,0
    .goto 49,71.179,48.591,0
    .goto 49,67.150,44.692,0
    .goto 49,63.587,39.740,0
    .goto 49,63.587,39.740,50,0
    .goto 49,75.045,50.854,50,0
    .goto 49,60.660,36.666
    >>|cRXP_WARN_Mientras estés en el |cRXP_FRIENDLY_Tanque de asedio de la Compañía Bravo|r, conduce a través de los |cRXP_ENEMY_Blackrock Invaders|r hacia el Puesto de Keeshan, lanzando|r |T252187:0|t[Harrison Jones] (1) |cRXP_WARN_cada vez que esté disponible|r
    .complete 26708,1 --Blackrock Invader (200)
    .mob Blackrock Invader
step
    #questguide
    #optional
    #completewith next
    >>|cRXP_WARN_Sal|r del |cRXP_FRIENDLY_Tanque de asedio de la Compañía Bravo|r
    >>|cRXP_WARN_Esto te sacará inmediatamente de la fase con los |cRXP_ENEMY_Blackrock Invaders|r y de vuelta a la fase con los |cRXP_ENEMY_Shadowhide Gnolls|r
    .goto 49,60.660,36.666,15 >> Regresa a |cRXP_FRIENDLY_Coronel Troteman|r
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coronel Troteman|r
    .turnin 26708 >>Entrega la misión ¡AAAAAAAAAAAAH! ¡¡¡AAAAAAAAAAH!!!
    .accept 26713 >>Acepta la misión El momento decisivo en Petravista
    .target Colonel Troteman
step
    #questguide
    #optional
    #completewith Darkblaze
    +|cRXP_WARN_Asegúrate de que tu equipo está contigo antes de continuar. Deberían aparecer cuando te acerques al |cRXP_ENEMY_Tharil'zun|r. Si no lo hacen, desconéctate y vuelve a entrar|r
step
    #questguide
    .goto 49,60.307,47.402
    >>Mata al |cRXP_ENEMY_Tharil'zun|r
    .complete 26713,1 --Tharil'zun (1)
    .mob Tharil'zun
step
    #questguide
    #optional
    #completewith next
    .goto 49,60.307,47.402,40,0
    .goto 49,57.775,56.285,45 >>Viaja hacia |cRXP_ENEMY_Gath'Ilzogg|r
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,57.775,56.285
    >>Mata al |cRXP_ENEMY_Gath'Ilzogg|r
    .complete 26713,2 --Gath'Ilzogg (1)
    .mob Gath'Ilzogg
step
    #questguide
    >>|cRXP_WARN_Haz clic en la ventana emergente en tu registro de misiones|r
    .turnin 26713 >>Entrega la misión El momento decisivo en Petravista
    .goto 49,58.651,55.469
    .accept 26714 >>Acepta la misión Llamaoscura, linaje del Rompemundos
    .timer 25,Llamaoscura RP
    .goto 49,60.660,36.666
step
    #questguide
    #label Darkblaze
    .goto 49,58.651,55.469
    >>|cRXP_WARN_Espera a que termine la transformación de |cRXP_ENEMY_Gran mago Doane|r RP|r
    >>|cRXP_WARN_Derrota a |cRXP_ENEMY_Llamaoscura|r cuando termine el RP|r
    >>|cRXP_WARN_Si fracasas, usa el |cRXP_PICK_Horn of Invocando|r en el suelo para volver a invocar a|r |cRXP_ENEMY_Gran mago Doane|r
    .complete 26714,1 --Darkblaze Defeated (1)
    .mob Darkblaze
    .mob *Grand Magus Doane
--XX     .goto 49,58.608,55.390 Horn of Summoning
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coronel Troteman|r
    .turnin 26714 >>Entrega la misión Llamaoscura, linaje del Rompemundos
    .accept 26726 >>Acepta la misión Regreso triunfal
    .target Colonel Troteman
step
    #questguide
    #completewith next
    .hs >> Usa tu Piedra de hogar para ir a Villa del Lago
    .cooldown item,6948,>2
    .isOnQuest 26726
    .subzoneskip 69 --Yes that is Lakeshire's subzone id
step
    #questguide
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >> Entra en el Ayuntamiento de Villa del Lago
    .isOnQuest 26726
step
    #questguide
    .goto 49,28.971,41.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Magistrado Solomon|r dentro
    .turnin 26726 >>Entrega la misión Regreso triunfal
	.target Magistrate Solomon
------End of optional Keeshan questline
step
    #optional
    #label endOfTheGuide
]])
