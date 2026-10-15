if GetLocale() ~= "esES" and GetLocale() ~= "esMX" then return end
--Main 1-14 Skyborne leveling guide
RXPGuides.RegisterGuide([[
#forever
#version 1
#name 1-14 Isla de Zephras
#displayname 1-13 Cielonato << Alliance
#displayname 1-12 Cielonato << Horde
#group RestedXP Guía Forever (A) << Alliance
#group RestedXP Guía Forever (H) << Horde
#subgroup Guía de subida rápida de nivel (Speedrun) 1-20 << Alliance
#subgroup Guía de subida rápida de nivel (Speedrun) 1-22 << Horde
#defaultfor Skyborne
#next 13-15 Páramos de Poniente << Alliance !Hunter
#next 14-16 Costa Oscura << Alliance Hunter
#next 12-14 Bosque de Argénteos << Horde !Hunter
#next 12-17 Los Baldíos << Horde Hunter

step
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ailee Corazón Lejano::251362|r.
    .accept 92460 >>Acepta la misión La edad adulta
    .target Ailee Farheart::251362
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rorian, el Buscadías::251361|r.
    .turnin 92460 >>Entrega la misión La edad adulta
    .target Rorian the Dayseeker::251361
    .accept 92461 >>Acepta la misión Armonía en equilibrio
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elatrell Plumaligera::251368|r.
    .accept 92462 >>Acepta la misión Investigación de la plaga
    .target Elatrell Featherlight::251368
step << Alliance/!Shaman
    #hidewindow
    #completewith Juvenile Vuldren
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step << Horde Shaman
    #hidewindow
    #completewith Juvenile Vuldren Grind
    #loop
    .goto 2521,44.23,26,40,0
    .goto 2521,45.24,25.9,40,0
    .goto 2521,46.06,25.33,40,0
    .goto 2521,46.77,27.83,40,0
    .goto 2521,45.27,28.36,40,0
    .goto 2521,43.84,28.39,40,0
    .goto 2521,42.88,27.52,40,0
    +1
step
    #completewith next
    >>Mata |cRXP_ENEMY_Vuldren joven::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step
    >>Mata |cRXP_ENEMY_Cirrovuelo molesto::251169|r.
    *|cRXP_WARN_Priorízalos|r
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly::251169
step
    #label Juvenile Vuldren
    >>Mata |cRXP_ENEMY_Vuldren joven::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step << Horde Shaman
    #label Juvenile Vuldren Grind
    .xp 2+480 >>Sube al nivel 3 (480+/900XP) después de completar las entregas para la misión del tótem.
step
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elatrell Plumaligera::251368|r.
    *|cRXP_WARN_No uses |r|T132845:0|t[Camina en el aire] |cRXP_WARN_ya que lo necesitamos pronto|r.
    .turnin 92462 >>Entrega la misión Investigación de la plaga
    .accept 92463 >>Acepta la misión La reina cirrovuelo
    .target Elatrell Featherlight::251368
step << Warrior
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Maestra del acero Ren::251964|r.
    .train 6673 >>Aprende |T132333:0|t[Grito de batalla]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.0010
    .xp <1,1
    .train 5242,1 -- Battle Shout (Rank 2) Not Trained
step
    .goto 2521,43.53,24.34,20,0
    .goto 2521,43.83,24.13,10,0
    .goto 2521,43.78,24.38,5,0
    .goto 2521,43.66,24.25,5,0
    .goto 2521,43.75,24.09,5,0
    .goto 2521,43.84,24.3,5,0
    .goto 2521,43.66,24.23,5,0
    .goto 2521,43.83,24.18,5,0
    .goto 2521,43.83,24.32,8,0
    .goto 2521,43.80,24.05
    >>Sube la escalera de caracol, luego |Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Halaan Ojo de halcón::257554|r en la cima de la torre.
    .accept 94414 >>Acepta la misión The Anchors of Zephras
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Halaan Ojo de halcón::257554|r.
    *|cRXP_WARN_Mover o presiona ESC para cancelar|r.
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 137720,1
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Halaan Ojo de halcón::257554|r.
    *|cRXP_WARN_Mover o presiona ESC para cancelar|r.
    .turnin 94414 >>Entrega la misión Las anclas de Zephras
    .target Halaan Hawk-Eye::257554
step << Skyborne
    .goto 2521,43.53,24.34,20,0
    .goto 2521,43.83,24.13,10,0
    .goto 2521,43.78,24.38,5,0
    .goto 2521,43.66,24.25,5,0
    .goto 2521,43.75,24.09,5,0
    .goto 2521,43.84,24.3,5,0
    .goto 2521,43.66,24.23,5,0
    .goto 2521,43.83,24.18,5,0
    .goto 2521,43.83,24.32,8,0
    .goto 2521,43.64,24.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Myriaal Brotaniebla::263113|r.
    .accept 92474 >>Acepta la misión Caer con estilo
    .target Myriaal Mistwake::263113
step << Skyborne
    #completewith next
    #label Harmony in Balance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rorian, el Buscadías::251361|r.
    .turnin 92461,1 >>Entrega la misión Armonía en equilibrio
    .target Rorian the Dayseeker::251361
step << Skyborne
    #completewith Harmony in Balance
    .goto 2521,42.06,23.48
    >>Mientras caes desde la torre, usa |T132845:0|t[Caminar en el aire] y apunta hacia quien da la misión.
    *También puedes simplemente saltar y presionar el botón en el suelo.
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>Caminar en el aire
    -- .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Skyborne
    #requires Harmony in Balance
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rorian, el Buscadías::251361|r.
    .turnin 92461,1 >>Entrega la misión Armonía en equilibrio
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Entrega la misión Caer con estilo
    .accept 92464 >>Acepta la misión Agitación elemental
    .accept 92481 >>Acepta la misión A Student of the Arcano << Mage
    .accept 92483 >>Acepta la misión At Home in the Sombras << Rogue
    .accept 92482 >>Acepta la misión The Way of the Cazador << Hunter
    .accept 92484 >>Acepta la misión Conexión elemental << Shaman
    .accept 92532 >>Acepta la misión The Warrior's Camino << Warrior
    .accept 92485 >>Acepta la misión A Student of Nature << Druid
step << !Skyborne
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rorian, el Buscadías::251361|r.
    .turnin 92461,1 >>Entrega la misión Armonía en equilibrio
    .target Rorian the Dayseeker::251361
    .accept 92464 >>Acepta la misión Agitación elemental
    .accept 92481 >>Acepta la misión A Student of the Arcano << Alliance Mage
    .accept 92483 >>Acepta la misión At Home in the Sombras << Rogue
    .accept 92482 >>Acepta la misión The Way of the Cazador << Hunter
    .accept 92484 >>Acepta la misión Conexión elemental << Horde Shaman
    .accept 92532 >>Acepta la misión The Warrior's Camino << Warrior
    .accept 92485 >>Acepta la misión A Student of Nature << Druid
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xyton Ventargento::251373|r.
    .turnin 92485 >>Entrega la misión Un Estudiante de la Naturaleza
    .target Xyton Silverwind::251373
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xyton Ventargento::251373|r.
    .train 1126 >>Aprende |T136078:0|t[Marca de lo Salvaje]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
    .money <0.0010
    .xp <1,1
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorii Susurro Alegre::251379|r.
    .turnin 92481 >>Entrega la misión A Student of the Arcano
    .target Dorii Brightwhisper::251379
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorii Susurro Alegre::251379|r.
    .train 1459 >>Aprende |T135932:0|t[Intelecto Arcano]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.0010
    .xp <1,1
step << Horde Shaman
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Formavientos Boro ::251374|r
    .target Windshaper Boro::251374
    .turnin 92484 >>Entrega la misión Conexión elemental
    .accept 92466 >>Acepta la misión La llamada de la tierra
step << Horde Shaman
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Formavientos Boro ::251374|r.
    .train 8017 >>Aprende |T136086:0|t[Arma Muerdepiedras]
    .target Windshaper Boro::251374
    .money <0.0010
    .skipgossipid 136811
    .xp <1,1
step << Hunter
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'ree Vistadista::251376|r.
    .turnin 92482 >>Entrega la misión The Way of the Cazador
    .target Tai'ree Farsight::251376
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ventaari Deseoalegre::251487|r.
    .accept 92598 >>Acepta la misión El don de la vista celeste
    .target Ventaari Brightwish::251487
step << !Warrior !Rogue 
    .itemcount 159,<20 << Mage/Shaman/Priest/Warlock/Paladin -- Refreshing Spring Water
    .itemcount 2512,<1000 << Hunter -- Rough Arrow
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uualia Crestasol::251537|r
    >>|cRXP_BUY_Compra|r |T132794:0|t[Agua de manantial refrescante] |cRXP_BUY_a esta vendedora|r << !Hunter !Shaman
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_a esta vendedora|r << Hunter
    .vendor 251537 >>|cRXP_WARN_Vende la basura|r
    *No vendas |T133970:0|t[Carne fibrosa] << Alliance
    .collect 159,20 << !Hunter !Shaman --Refreshing Spring Water (20)
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Uualia Suncrest::251537
    -- .money <0.0050 << !Hunter !Shaman
    -- .money <0.0040 << Hunter
    .subzoneskip 16635,1 -- Thendal Village
    .isNotOnQuest 93552 -- Harvesting Windstones
    .isQuestAvailable 93552 -- Harvesting Windstones
step << Horde
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalia, la Coleccionista::251363|r.
    .accept 93552 >>Acepta la misión Recolectar piedras de viento
    .target Dalia the Collector::251363
step << Horde
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Rogue/Horde Warrior
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92463 -- The Cirrusfly Queen
    .isQuestNotComplete 92463 -- The Cirrusfly Queen
    .goto 2521,43.41,23.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalia, la Coleccionista::251363|r.
    *|cRXP_WARN_Omite si no puedes pagarlo|r
    .collect 2131,1 >>Compra y equipa una |T135274:0|t[Espada corta] << Rogue
    .collect 1194,1 >>Compra y equipa una |T135276:0|t[Espada bastarda] << Warrior
    .target Dalia the Collector::251363
    -- .money <0.0054 << Rogue
    -- .money <0.0104 << Warrior
step << Alliance !Hunter !Mage !Druid
    #completewith next
    #label Harvesting Windstones
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalia, la Coleccionista::251363|r.
    .accept 93552 >>Acepta la misión Recolectar piedras de viento
    .target Dalia the Collector::251363
step << Alliance Rogue/Alliance Warrior
    .goto 2521,43.41,23.51
    #completewith Harvesting Windstones
    .collect 2131,1 >>Compra y equipa una |T135274:0|t[Espada corta] << Rogue
    .collect 1194,1 >>Compra y equipa una |T135276:0|t[Espada bastarda] << Warrior
    -- .money <0.0054 << Rogue
    -- .money <0.0104 << Warrior
step << Alliance !Hunter !Mage !Druid
    #completewith Harvesting Windstones
    .goto 2521,43.41,23.51
    .vendor 251364 >>|cRXP_WARN_Vende la basura|r
    *No vendas |T133970:0|t[Carne fibrosa]. << Alliance
    .target Destin Thriceforged::251364
step << Alliance !Hunter !Mage !Druid
    #requires Harvesting Windstones
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalia, la Coleccionista::251363|r.
    .accept 93552 >>Acepta la misión Recolectar piedras de viento
    .target Dalia the Collector::251363
step << Alliance Hunter/Alliance Mage/Alliance Druid
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalia, la Coleccionista::251363|r.
    .accept 93552 >>Acepta la misión Recolectar piedras de viento
    .target Dalia the Collector::251363
step << Alliance
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falorne Ventocaída::251371|r.
    .accept 92597 >>Acepta la misión Lectura de líneas ley
    .target Falorne Fallwind::251371
step << Horde Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yala Vigía del Viento::249363|r.
    .turnin 92464 >>Entrega la misión Agitación elemental
    .accept 92465 >>Acepta la misión Agitadores
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    >>Mata |cRXP_ENEMY_Converso Al'Aketh::251160|r y |cRXP_ENEMY_Vientos turbios::251143|r.
    *|cRXP_WARN_Prioriza los |cRXP_ENEMY_Vientos turbios::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Horde Shaman
    .goto 2521,48.4,20.4
    >>Usa |T1029587:0|t[Vista celeste] cerca de la |cRXP_PICK_Convergencia elemental|r.
    *|cRXP_WARN_Se encuentra en toda la zona. Usa la |T1029587:0|t[Vista celeste] cerca de uno para obtener 10% de velocidad de movimiento durante 15 min en lugar de 15 seg|r.
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>Vista celeste
step << Horde Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    *|cRXP_WARN_Cuenta con romper unas 10 piedras, pero podrías necesitar hasta 15|r.
    *|cRXP_WARN_Si el área está anormalmente llena, quédate en un punto de reaparición o rota entre piedras cercanas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    >>Mata |cRXP_ENEMY_Converso Al'Aketh::251160|r y |cRXP_ENEMY_Vientos turbios::251143|r.
    *Despoja el |T1020384:0|t[Sello de Akir] << Shaman
    *|cRXP_WARN_Prioriza los |cRXP_ENEMY_Vientos turbios::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 --|1/1 Signet of Akir
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yala Vigía del Viento::249363|r.
    .turnin 92465 >>Entrega la misión Agitadores
    .accept 92469 >>Acepta la misión Vuelve con Rorian
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    .subzoneskip 16622,1 -- Thendal Grove
    .hs >>Usa tu Piedra de Hogar para ir al Poblado Thendal
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Formavientos Boro ::251374|r
    .turnin 92466 >>Entrega la misión La llamada de la tierra
    .accept 92467 >>Acepta la misión La llamada de la tierra
    .target Windshaper Boro::251374
step
    #completewith next
    .goto 2521,43.82,25.41,20,0
    .goto 2521,44.23,24.96,20,0
    .goto 2521,44.28,27.32,25,0
    .goto 2521,45.33,29.15,30,0
    .goto 2521,46.77,27.96,30,0
    .goto 2521,48.14,29.31,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    *|cRXP_WARN_Cuenta con romper unas 10 piedras, pero podrías necesitar hasta 15|r.
    *|cRXP_WARN_Si el área está anormalmente llena, quédate en un punto de reaparición o rota entre piedras cercanas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,48.41,28.37
    >>Mata a la |cRXP_ENEMY_Reina cirrovuelo::251404|r.
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen::251404
step << Alliance/!Shaman
    #completewith next
    .goto 2521,47.41,26.43,30,0
    .goto 2521,46.62,24.61,30,0
    .goto 2521,48.3,25.67,30,0
    .goto 2521,47.19,23.57,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    *|cRXP_WARN_Cuenta con romper unas 10 piedras, pero podrías necesitar hasta 15|r.
    *|cRXP_WARN_Si el área está anormalmente llena, quédate en un punto de reaparición o rota entre piedras cercanas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yala Vigía del Viento::249363|r.
    .turnin 92464 >>Entrega la misión Agitación elemental
    .accept 92465 >>Acepta la misión Agitadores
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith UseRacialAbility
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    *|cRXP_WARN_Cuenta con romper unas 10 piedras, pero podrías necesitar hasta 15|r.
    *|cRXP_WARN_Si el área está anormalmente llena, quédate en un punto de reaparición o rota entre piedras cercanas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #completewith UseRacialAbility
    >>Mata |cRXP_ENEMY_Converso Al'Aketh::251160|r y |cRXP_ENEMY_Vientos turbios::251143|r.
    *|cRXP_WARN_Prioriza los |cRXP_ENEMY_Vientos turbios::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Alliance
    #label UseRacialAbility
    .goto 2521,47.8,21.02,30,0
    .goto 2521,46.9,20.82,30,0
    .goto 2521,46.41,18.21
    >>Usa |T236219:0|t[Leer Línea ley] cerca de la |cRXP_WARN_Falla azul|r del suelo
    *|cRXP_WARN_Se encuentra en toda la zona|r |cRXP_WARN_Usar|r |T236219:0|t[Leer línea ley] |cRXP_WARN_cerca de uno para obtener 100% regeneración de Maná y Salud durante 15 min en lugar de 15 seg|r.
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .usespell 1259705 << Alliance
step << Horde !Shaman
    #label UseRacialAbility
    .goto 2521,48.4,20.4
    >>Usa |T1029587:0|t[Vista celeste] cerca de la |cRXP_PICK_Convergencia elemental|r.
    *|cRXP_WARN_Se encuentra en toda la zona. Usa la |T1029587:0|t[Vista celeste] cerca de uno para obtener 10% de velocidad de movimiento durante 15 min en lugar de 15 seg|r.
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>Vista celeste
step << Horde Shaman
    .goto 2521,47.241,25.244,25,0
    .goto 2521,48.802,25.869,30,0
    .goto 2521,49.677,23.806
    >>Usa la |T134743:0|t[Sapta de tierra].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Manifestación de tierra menor::251166|r
    .turnin 92467 >>Entrega la misión La llamada de la tierra
    .accept 92468 >>Acepta la misión La llamada de la tierra
    .target Minor Manifestation of Earth::251166
    .use 6635
step << Horde Shaman
    .isQuestComplete 93552 -- Harvesting Windstones
    .goto 2521,49.32,23.18,15,0
    .goto 2521,48.88,21.52
    .subzone 16635 >>Salta de la montaña y resucita en el Cementerio.
step << Horde Shaman
    #ignorecorpse
    .isQuestComplete 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .showwhiledead
    .goto 2521,41.06,22.32
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ángel de la Resurrección::6491|r.
    .target Spirit Healer::6491
step << Horde Shaman
    #loop
    .goto 2521,48.290,25.694,20,0
    .goto 2521,47.173,23.545,20,0
    .goto 2521,46.945,20.927,20,0
    .goto 2521,44.186,22.288,20,0
    .goto 2521,42.832,22.274,20,0
    .goto 2521,43.473,23.845,20,0
    .goto 2521,43.809,25.423,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #hidewindow
    #completewith Windstone Cluster
    #loop
    .goto 2521,46.85,17.68,30,0
    .goto 2521,47.22,19,30,0
    .goto 2521,48.3,19.06,50,0
    .goto 2521,47.55,21.06,35,0
    .goto 2521,46.74,20.49,35,0
    .goto 2521,48.97,20.86,40,0
    .goto 2521,47.41,21.14,30,0
    .goto 2521,45.82,19.09,40,0
    .goto 2521,47.19,23.55,30,0
    .goto 2521,46.6,24.62,30,0
    +1
step << Alliance/!Shaman
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    *|cRXP_WARN_Cuenta con romper unas 10 piedras, pero podrías necesitar hasta 15|r.
    *|cRXP_WARN_Si el área está anormalmente llena, quédate en un punto de reaparición o rota entre piedras cercanas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    >>Mata |cRXP_ENEMY_Converso Al'Aketh::251160|r y |cRXP_ENEMY_Vientos turbios::251143|r.
    *Despoja el |T1020384:0|t[Sello de Akir] << Shaman
    *|cRXP_WARN_Prioriza los |cRXP_ENEMY_Vientos turbios::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 << Shaman --|1/1 Signet of Akir
step << Alliance/!Shaman
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    *|cRXP_WARN_Cuenta con romper unas 10 piedras, pero podrías necesitar hasta 15|r.
    *|cRXP_WARN_Si el área está anormalmente llena, quédate en un punto de reaparición o rota entre piedras cercanas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #label Windstone Cluster
    .xp 3+300 >>Mata enemigos hasta alcanzar 300+/1400xp
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yala Vigía del Viento::249363|r.
    .turnin 92465 >>Entrega la misión Agitadores
    .accept 92469 >>Acepta la misión Vuelve con Rorian
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith next
    .hs >>Usa tu Piedra de Hogar para ir al Poblado Thendal
    .cooldown item,6948,>0
step
    #completewith next
    #label Harvesting Windstones2
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalia, la Coleccionista::251363|r.
    *|cRXP_WARN_Elige entre Minería, Herboristería o Desuello|r.
    .turnin 93552 >>Entrega la misión Recolectar piedras de viento
    .target Dalia the Collector::251363
step
    #completewith Harvesting Windstones2
    #hidewindow
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dalia, la Coleccionista::251363|r.
    *|cRXP_WARN_Elige entre Minería, Herboristería o Desuello|r.
    .turnin 93552 >>Entrega la misión Recolectar piedras de viento
    .target Dalia the Collector::251363
step
    .goto 2521,43.44,24.80
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>Usa |T4625105:0|t[Minería para torpes] |cRXP_WARN_mientras caminas hacia quien da la misión|r.
    .use 247840
step
    .goto 2521,43.44,24.80
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>Usa |T4624731:0|t[Cosecha salvaje] |cRXP_WARN_mientras caminas hacia quien da la misión|r.
    .use 247841
step
    .goto 2521,43.44,24.80
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>Usa |T4624731:0|t[Recolección de pelambres para principiantes] |cRXP_WARN_mientras caminas hacia quien da la misión|r.
    .use 247846
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Akeri Duskblade::251389|r.
    .turnin 92483 >>Entrega la misión Como en casa en las sombras
    .target Akeri Duskblade::251389
step << Warrior
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Maestra del acero Ren::251964|r.
    .train 100 >>Aprende |T132337:0|t[Cargar]
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .train 772 >>Aprende |T132155:0|t[Desgarrar]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.02
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Maestra del acero Ren::251964|r.
    .turnin 92532 >>Entrega la misión El camino del guerrero
    .xp <4,1
    .target Blademaster Ren::251964
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elatrell Plumaligera::251368|r.
    .turnin 92463,3 >>Entrega la misión La reina cirrovuelo
    .target Elatrell Featherlight::251368
step << Alliance
    #arrowtext Habla con\n|cRXP_FRIENDLY_Falorne Ventocaída::251371|r
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falorne Ventocaída::251371|r.
    .turnin 92597 >>Entrega la misión Lectura de líneas ley
    .target Falorne Fallwind::251371
-- These steps are duplicated because lag can prevent the first batch from appearing.
step
    #arrowtext Usa\n|T4625105:0|t[Minería para torpes]
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>Usa |T4625105:0|t[Minería para torpes].
    .use 247840
step
    #arrowtext Usa\n|T4624731:0|t[Cosecha salvaje]
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>Usa |T4624731:0|t[Cosecha salvaje].
    .use 247841
step
    #arrowtext Usa\n|T4624731:0|t[Recolección de pelambres para principiantes]
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>Usa |T4624731:0|t[Recolección de pelambres para principiantes].
    .use 247846
step << Warrior
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Maestra del acero Ren::251964|r.
    .train 100 >>Aprende |T132337:0|t[Cargar]
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .train 772 >>Aprende |T132155:0|t[Desgarrar]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
    .money <0.02
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Maestra del acero Ren::251964|r.
    .turnin 92532 >>Entrega la misión The Guerrero's Camino
    .target Blademaster Ren::251964
step << Hunter Horde
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'ree Vistadista::251376|r
    .train 13163 >>Aprende |T132159:0|t[Aspecto del mono]
    .train 1978 >>Aprende |T132204:0|t[Picadura de serpiente]
    .skipgossipid 136808
    .xp <4,1
    .money <0.02
    .target Tai'ree Farsight::251376
step << Horde
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rorian, el Buscadías::251361|r.
    .turnin 92469,1 >>Entrega la misión Vuelve con Rorian
    .accept 92471 >>Acepta la misión Aetheen de los Vendavales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Druid Horde
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xyton Ventargento::251373|r.
    .train 8921 >>Aprende |T136096:0|t[Fuego lunar]
    .train 774 >>Aprende |T136081:0|t[Rejuvenecimiento]
    .skipgossipid 136805
    .xp <4,1
    .money <0.02
    .target Xyton Silverwind::251373
step << Horde
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aetheen de los Vendavales::251366|r.
    .turnin 92471 >>Entrega la misión Aetheen de los Vendavales
    .accept 92470 >>Acepta la misión Matriarca demoníaca
    .target Aetheen of the Gales::251366
step << Shaman
    .goto 2521,42.787,23.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Windshaper Boro::251374|r
    .turnin 92468 >>Entrega la misión La llamada de la tierra
    .target Windshaper Boro::251374
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Formavientos Boro ::251374|r.
    .train 8042 >>Aprende |T136026:0|t[Choque de tierra]
    .target Windshaper Boro::251374
    .money <0.01
    .xp <4,1
    .skipgossipid 136811
step << Horde
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ventaari Deseoalegre::251487|r
    .turnin 92598 >>Entrega la misión El don de la vista celeste
    .target Ventaari Brightwish::251487
step << Hunter Alliance
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tai'ree Vistadista::251376|r
    .train 13163 >>Aprende |T132159:0|t[Aspecto del mono]
    .train 1978 >>Aprende |T132204:0|t[Picadura de serpiente]
    .skipgossipid 136808
    .xp <4,1
    .money <0.02
    .target Tai'ree Farsight::251376
step << Alliance
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rorian the Dayseeker::251361|r.
    .turnin 92469,1 >>Entrega la misión Vuelve con Rorian
    .accept 92471 >>Acepta la misión Aetheen de los Vendavales -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Druid Alliance
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xyton Ventargento::251373|r.
    .train 8921 >>Aprende |T136096:0|t[Fuego lunar]
    .train 774 >>Aprende |T136081:0|t[Rejuvenecimiento]
    .skipgossipid 136805
    .xp <4,1
    .money <0.02
    .target Xyton Silverwind::251373
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 116 >>Aprende |T135846:0|t[Descarga de Escarcha]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.01
    .xp <4,1
step << Alliance
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aetheen de los Vendavales::251366|r.
    .turnin 92471 >>Entrega la misión Aetheen de los Vendavales
    .accept 92470 >>Acepta la misión Matriarca demoníaca
    .target Aetheen of the Gales::251366
step
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valreaa Vallevento::257551|r.
    .accept 92473 >>Acepta la misión Invasión agresiva
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment
    .train 2366,3 -- Herbalism Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uualia Crestasol::251537|r
    .collect 277113,1 >>Compra una |T133637:0|t[Faltriquera de hierbas de aprendiz]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 2575,3 -- Mining Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uualia Crestasol::251537|r
    .collect 2901,1 >>Compra un |T134708:0|t[Pico de minero]
    .collect 277115,1 >>Compra un |T133635:0|t[Paquete de aprendiz de minería]
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 8613,3 -- Skinning Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Uualia Crestasol::251537|r
    .collect 7005,1 >>Compra un |T135637:0|t[Cuchillo para desollar]
    .collect 277114,1 >>Compra una |T133634:0|t[Cartera de aprendiz de desuello]
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor 251537 >>|cRXP_WARN_Vende la basura|r
    *No vendas |T133970:0|t[Stringy Carne] << Alliance
    .collect 159,20 >>Compra un |T132794:0|t[Agua de manantial refrescante] << Druid/Mage/Priest/Warlock/Paladin
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valreaa Vallevento::257551|r.
    .accept 92473 >>Acepta la misión Invasión agresiva
    .target Valreaa Valewind::257551
step
    #completewith Scrawny Usera
    +Arrastra manualmente la bolsa de componentes a la casilla para bolsa de componentes. Hacer clic derecho sobre ella la colocará en su lugar en una casilla vacía de bolsa general
step
    #completewith Scrawny Usera
    .train 2366,3 -- Herbalism Trained
    .cast 2383 >>Lanza |T133939:0|t[Buscar hierbas] para rastrear hierbas cercanas
    *|cRXP_WARN_Puedes recolectar hierbas por el camino para empezar a subir hacia 20 de Herboristería para una misión posterior. Esto es opcional, especialmente durante el lanzamiento, así que hazlo bajo tu propia responsabilidad|r
    .usespell 2383
step
    #completewith Scrawny Usera
    .train 2656,3 -- Smelting Trained
    .cast 2580 >>Lanza |T136025:0|t[Buscar minerales] para rastrear depósitos de mineral cercanos
    *|cRXP_WARN_Puedes picar menas por el camino para empezar a subir hacia 20 de Minería para una misión posterior. Esto es opcional, especialmente durante el lanzamiento, así que hazlo bajo tu propia responsabilidad|r
    .usespell 2580
step
    #completewith Scrawny Usera
    .train 8613,3 -- Skinning Trained
    +|cRXP_WARN_Puedes desollar por el camino para empezar a subir hacia 20 de Desuello para una misión posterior. Esto es opcional, especialmente durante el lanzamiento, así que hazlo bajo tu propia responsabilidad|r
step
    #label Scrawny Usera
    #loop
    .goto 2521,41.05,25.7,30,0
    .goto 2521,40.4,26.9,30,0
    .goto 2521,39.7,27.03,30,0
    .goto 2521,37.25,29.72,40,0
    .goto 2521,38.17,27.84,30,0
    .goto 2521,37.67,26.31,30,0
    .goto 2521,38.44,27.35,30,0
    >>Mata |cRXP_ENEMY_Osos::250926|r. Despójalos para obtener una |T132136:0|t[|cRXP_LOOT_Garra de ursera escuálida|r].
    .complete 92473,1 --6/6 Scrawny Ursera Claw
    .mob Scrawny Ursera::250926
step
    #completewith next
    >>Mata al |cRXP_ENEMY_Ursera Scavenger::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>Mata a |cRXP_ENEMY_Urs'anah::251115|r. Despójala para obtener la |T5840609:0|t[|cRXP_LOOT_Cabeza de Urs'anah|r].
    .complete 92470,2 --1/1 Head of Urs'anah
    .mob Urs'anah::251115
step
    #loop
    .goto 2521,36.2,25,30,0
    .goto 2521,36.39,23.79,30,0
    .goto 2521,37.33,24.26,30,0
    .goto 2521,36.9,24.54,30,0
    .goto 2521,37.34,25.13,30,0
    .goto 2521,38.12,27.71,30,0
    .goto 2521,37.7,29.46,30,0
    .goto 2521,40.79,26.64,30,0
    >>Mata |cRXP_ENEMY_Carroñero ursera::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .isQuestComplete 92470 -- Foul Matriarch
    .subzoneskip 16673,1 -- Thendal Cave
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .subzone 16635 >>Muere y reaparece en el Cementerio.
    *|cRXP_WARN_Usa la macro de sentarse en combate para morir más rápido|r.
    .macro Sit, >>Siéntate
    .target Spirit Healer::6491
step
    #completewith next
    #label Turn in Foul Matriarch
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aetheen de los Vendavales::251366|r.
    .turnin 92470,1 >>Entrega la misión Matriarca demoníaca << Warrior/Paladin
    .turnin 92470,2 >>Entrega la misión Matriarca demoníaca << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Entrega la misión Matriarca demoníaca << Mage
    .turnin 92470,4 >>Entrega la misión Matriarca demoníaca << Rogue
    .turnin 92470,5 >>Entrega la misión Matriarca demoníaca << Hunter
step
    #completewith Turn in Foul Matriarch
    #ignorecorpse
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    .goto 2521,41.06,22.31
    .showwhiledead
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ángel de la Resurrección::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aetheen de los Vendavales::251366|r.
    .turnin 92470,1 >>Entrega la misión Matriarca demoníaca << Warrior/Paladin
    .turnin 92470,2 >>Entrega la misión Matriarca demoníaca << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Entrega la misión Matriarca demoníaca << Mage
    .turnin 92470,4 >>Entrega la misión Matriarca demoníaca << Rogue
    .turnin 92470,5 >>Entrega la misión Matriarca demoníaca << Hunter
    .accept 92472 >>Acepta la misión El próximo paso
    .accept 96638 >>Acepta la misión El aventurero
    .target Aetheen of the Gales::251366
step
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valreaa Vallevento::257551|r.
    .turnin 92473,1 >>Entrega la misión Invasión agresiva
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor 251537 >>|cRXP_WARN_Vende la basura|r
    *No vendas |T133970:0|t[Carne fibrosa], |T132832:0|t[Huevos pequeños]. << Alliance
    *No vendas |T132832:0|t[Huevos pequeños]. << Horde
    *|cRXP_WARN_Los necesitaremos para Cocina después|r.
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valreaa Vallevento::257551|r.
    .turnin 92473,1 >>Entrega la misión Invasión agresiva
    .target Valreaa Valewind::257551
step
    #completewith next
    #label Al'Aketh Thugs
    *|cRXP_WARN_Equipa la|r |T135335:0|t[Espada magna desgastada] << Warrior/Paladin
    *|cRXP_WARN_Equipa la|r |T135145:0|t[Lanza larga de novato] << Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_Equipa la|r |T135650:0|t[Daga de explorador forestal] << Mage
    *|cRXP_WARN_Equipa el|r |T133057:0|t[Martillo piqueta de pacificador] << Rogue
    *|cRXP_WARN_Equipa el|r |T135503:0|t[Arco corto refinado] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .accept 92544 >>Acepta la misión Al'Aketh Thugs.
    .target Hanaa Nightwind::252095
step
    #completewith Al'Aketh Thugs
    .goto 2521,38.31,30.17,100 >>Mata enemigos por el camino si puedes hacerlo sin perder tiempo.
step
    #requires Al'Aketh Thugs
    .goto 2521,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .accept 92544 >>Acepta la misión Al'Aketh Thugs.
    .target Hanaa Nightwind::252095
step
    #completewith next
    >>Mata a |cRXP_ENEMY_Al'Aketh Bruto::251145|r y a |cRXP_ENEMY_Al'Aketh Neophyte::251448|r.
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #completewith next
    #label Malduko Cloudcrush
    .goto 2521,37.04,32.93,20,0
    >>Mata a |cRXP_ENEMY_Malduko Cloudcrush::256935|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    .goto 2521,36.032,33.545,50 >>Dirígete al nivel superior del templo
step
    #requires Malduko Cloudcrush
    .goto 2521,36.032,33.545
    >>Mata a |cRXP_ENEMY_Malduko Cloudcrush::256935|r en la cima del templo.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544 -- Al'Aketh Thugs
    .goto 2521,35.910,33.605
    .cast 1259686 >>Usa |T1029587:0|t[Vista celeste] para el aumento del 10% de velocidad de movimiento.
    .cooldown spell,1259686,>0,1
step << Alliance
    .isOnQuest 92544 -- Al'Aketh Thugs
    .goto 2521,35.57,33.84
    .cast 1259705 >>Usa |T236219:0|t[Leer Línea ley] para aumentar 100% la regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #hidewindow
    #completewith Grind6
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    +1
step
    #loop
    .goto 2521,35.33,34.19,30,0
    .goto 2521,36.34,31.56,40,0
    .goto 2521,37.3,32.89,40,0
    .goto 2521,37.16,34.72,40,0
    .goto 2521,38.08,35.01,40,0
    >>Mata a |cRXP_ENEMY_Al'Aketh Bruto::251145|r y a |cRXP_ENEMY_Al'Aketh Neophyte::251448|r.
    *|cRXP_WARN_Renueva|r |T236219:0|t[Leer Línea ley] |cRXP_WARN_cerca de la Línea Ley|r << Alliance
    .usespell 1259705
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
    .mob +Al'Aketh Ambusher::251451
step
    #label Grind6
    .xp 5+1740 >>Sube al nivel 6 (1740+/2800xp) después de completar las entregas en el siguiente pueblo para poder entrenar nuevos hechizos.
    -- Maybe only grind here if little XP is needed; otherwise, train abilities after the cave.
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hanaa Nightwind::252095|r.
    .turnin 92544 >>Entrega la misión Al'Aketh Thugs.
    .target Hanaa Nightwind::252095
step << !Mage
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Windstone crystals|r por el camino para restaurativos de salud y maná.
    *|cRXP_WARN_Si ves un Tornado, tócalo para obtener 40% de velocidad de movimiento. Causar daño elimina el efecto|r.
step
    .isOnQuest 92472 -- The Next Step
    #completewith VendorStep
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Agente Aonda::251523|r.
    .turnin 92472 >>Entrega la misión El próximo paso
    .target Constable Aonda::251523
step
    #completewith The Next Step
    >>Mata |cRXP_ENEMY_Zancavientos::251661|r por el camino. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Carne de zancudo|r] y |T132832:0|t[|cRXP_LOOT_Huevos pequeños|r]
    .collect 5469,8 -- Strider Meat
    .collect 6889,3 -- Small Egg
    -- .complete 92553,2 --8/8 Strider Meat
    -- .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << !Rogue !Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veena Vericloud::254358|r.
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a esta vendedora|r << Shaman/Druid/Priest/Warlock/Paladin/Mage
    >>|cRXP_WARN_¡Guarda 2 monedas de plata para tus hechizos de clase!|r << Shaman/Druid
    >>|cRXP_WARN_¡Guarda 2 monedas de plata para tus hechizos de clase!|r << Mage
    .vendor 254358 >>|cRXP_WARN_Vende la basura|r.
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitaremos para Cocina después|r.
step << Rogue/Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.67,45.19,10,0
    .goto 2521,44.78,45.05
    .vendor 254360 >>|cRXP_WARN_Vende la basura|r.
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitaremos para Cocina después|r.
    .target Belandiel Farflight::254360
step
    #requires The Next Step
    .isOnQuest 92472 -- The Next Step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Agente Aonda::251523|r.
    .turnin 92472 >>Entrega la misión El próximo paso
    .target Constable Aonda::251523
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Agente Aonda::251523|r.
    .accept 93461 >>Acepta la misión Welcome to Shen'dar Village << Alliance
    .accept 92514 >>Acepta la misión Welcome to Shen'dar Village << Horde
    .target Constable Aonda::251523
-- Level 6 class training is intentionally repeated during later Shen'dar Village visits for players who reach level 6 later.
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Aprende |T135812:0|t[Bola de Fuego (Rango 2)]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    -- .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    --  Comprehend Scroll early can be good,if you get scrolls and don't go polymorphed
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.03
    .xp <6,1
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorii Susurro Alegre::251379|r.
    .train 143 >>Aprende |T135812:0|t[Bola de Fuego (Rango 2)]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.02
    .xp <6,1
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathiril Lanzasol::251903|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>Acepta la misión The High Order
    .target Rathiril Sunlance::251903
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathiril Lanzasol::251903|r.
    .complete 92596,1 --1/1 Listen to Rathiril Sunlance
    .skipgossipid 136139 -- Can you tell me what is happening on Zephras Isle?
    .skipgossipid 136138 -- Do we know why..?
    .skipgossipid 136137 -- How do we solve this?
    .skipgossipid 136136 -- What about the Al'Aketh? Can they help?
    .skipgossipid 136135 -- What of this "Windlord"? Is Al'Akir real, or a creation of the cult?
    .skipgossipid 136134 -- How can you be so sure? If we've never dealt with the windlord directly, surely it's worth a try?
    .skipgossipid 136133 -- <Remain Silent>
step << Alliance
    .goto 2521,44.98,46.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathiril Lanzasol::251903|r.
    .turnin 92596 >>Entrega la misión The High Order
    .accept 94413 >>Acepta la misión A Magical Affront
    .target Rathiril Sunlance::251903
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illaya Ventámbar::251902|r.
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>Acepta la misión The Windshapers
    .target Illaya Amberwind::251902
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illaya Ventámbar::251902|r.
    .complete 92595,1 --1/1 Listen to Illaya
    .target Illaya Amberwind::251902
    .skipgossipid 135864
    .skipgossipid 135863
    .skipgossipid 135862
    .skipgossipid 135861
    .skipgossipid 135860
    .skipgossipid 135859
    .skipgossipid 135858
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illaya Ventámbar::251902|r.
    .turnin 92595 >>Entrega la misión The Windshapers
    .accept 94411 >>Acepta la misión Meddlesome Mages
    .target Illaya Amberwind::251902
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aarnor Ventinazo::254082|r
    .trainer >>Aprende tus hechizos de clase
    .target Aarnor Galestrike::254082
    .money <0.01
    .xp <6,1
    .skipgossipid 136811
step
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .complete 92514,2 << Horde --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Horde
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .home >>Establece tu hogar en la Aldea Shen'dar
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 1757 >>Aprende |T136189:0|t[Golpe siniestro (Rank 2)]
    .train 1776 >>Aprende |T132155:0|t[Gubia]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro (Rango 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 1757 >>Aprende |T136189:0|t[Golpe siniestro (Rango 2)]
    .train 1776 >>Aprende |T132155:0|t[Gubia]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,43.24,43.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r and buy any missing materials: |T133942:0|t[Copper Rod], |T132841:0|t[Mote of Magic] and |T135435:0|t[Simple Wood].
--     .collect 6217,1 -- Copper Rod
--     .collect 247786,3 -- Mote of Magic
--     .collect 4470,1 -- Simple Wood
--     .skipgossipid 137558
--     .target Nasalanna Windsinger::257020
--     .money <0.0172
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,43.24,43.18
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
--     .train 7411 >>Train |T136189:0|t[Enchanting] |cRXP_WARN_for immediate wand|r
--     .skipgossipid 137559
--     .target Nasalanna Windsinger::257020
-- step << Mage
--     .isOnQuest 93461 << Alliance -- Welcome to Shen'dar Village
--     .isOnQuest 92514 << Horde -- Welcome to Shen'dar Village
--     .train 7411,3 -- Enchanting Trained
--     >>Use the |T135225:0|t[Runed Copper Rod] macro below, then use the |T135645:0|t[Novice's Practice Wand] macro
--     *|cRXP_WARN_Afterward, enchant your bracers with Stamina if you have a pair equipped|r
--     .collect 6218,1 -- Runed Copper Rod
--     .collect 247789,1 -- Novice's Practice Wand
--     .macro Runed Copper Rod,135225 >>/cast Enchanting\n/run C_TradeSkillUI.CraftRecipe(7421,1)
--     .macro Novice's Practice Wand,135645 >>/run C_TradeSkillUI.CraftRecipe(1245321,1)
-- step << Mage
--     #completewith MageEnchanting
--     .train 7411,3 -- Enchanting Trained
--     +Abandon Enchanting or continue with it.
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .complete 93461,2 << Alliance --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Alliance
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Coriella Calmbreeze::254089|r.
    .home >>Establece tu hogar en la Aldea Shen'dar
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Warrior
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corsan Terrasar::254088|r
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.01
    .xp <6,1
step << Hunter
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elayaa Ventocalma::254084|r dentro de la casa.
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .train 1130 >>Aprende |T132212:0|t[Marca del cazador]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naeluna Sanapresto::254081|r dentro de la casa.
    .train 467 >>Aprende |T136104:0|t[Espinas]
    .train 5177 >>Aprende |T136006:0|t[Cólera (Rango 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step
    #label MageEnchanting
    .goto 2521,45.67,45.50
    -- *|cRXP_WARN_Equip the|r |T135645:0|t[Novice's Practice Wand] << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Agente Aonda::251523|r.
    .turnin 93461 >>Entrega la misión Welcome to Shen'dar Village << Alliance
    .turnin 92514 >>Entrega la misión Welcome to Shen'dar Village << Horde
    .accept 92517 >>Acepta la misión The Criminal Element
    .target Constable Aonda::251523
-- Intentional repeat of level 6 class training for players who reached level 6 after the earlier trainer visit.
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elayaa Ventocalma::254084|r.
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .train 1130 >>Aprende |T132212:0|t[Marca del cazador]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naeluna Sanapresto::254081|r
    .train 467 >>Aprende |T136104:0|t[Espinas]
    .train 5177 >>Aprende |T136006:0|t[Cólera (Rank 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step
    .isNotOnQuest 93319,92516 -- Pilfered Windstones / Hippogryph Harassment
    .isQuestAvailable 93319 -- Pilfered Windstones
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veena Vericloud::254358|r.
    .collect 1179,5 >>|cRXP_BUY_Compra 5|r |T132815:0|t[Leche fría como el hielo], |cRXP_BUY_u 10 si puedes permitírtelos|r << Druid/Priest/Warlock
    *No vendas |T133970:0|t[Carne fibrosa], |T132832:0|t[Huevos pequeños], ni |T133972:0|t[Carne de zancudo]. << Alliance
    *No vendas |T132832:0|t[Huevos pequeños] ni |T133972:0|t[Carne de zancudo]. << Horde
    *|cRXP_WARN_Los necesitaremos para Cocina después|r.
    .money <0.0125
step
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teeri Wellwind::251906|r.
    .accept 93319 >>Acepta la misión Saqueado Windstones
    .accept 92516 >>Acepta la misión Hipogrifo Harassment
    .target Teeri Wellwind::251906
step
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Indari Sunseam::251993|r.
    .accept 92515 >>Acepta la misión The Problem With Prideclaws
    .target Indari Sunseam::251993
step
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r.
    .accept 93951 >>Acepta la misión A Little Bella
    .target Taleen Shimmerthread::251991
step << Shaman
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Hunter
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tephri Tripleforja::257421|r
    >>|cRXP_BUY_Compra y equipa un|r |T135499:0|t[Arco corvo de madera de cuerno]
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] |cRXP_BUY_hasta que tu Carcaj esté lleno|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Warrior/Paladin
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    #arrowtext Habla con\n|cRXP_FRIENDLY_Tephri Tripleforja ::257421|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tephri Tripleforja ::257421|r y compra y equípate una |T133053:0|t[Marra de madera].
    .collect 2493,1 -- Wooden Mallet
    .money <0.0701
    .target Tephri Thriceforged::257421
step << Rogue
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tephri Tripleforja::257421|r y compra y equipa un |T135321:0|t[Gladius].
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421
    .money <0.0536

--here add thrwing Knife
--here add sharpening stone rogue
    
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Brisaleve::251905|r
    .accept 92553 >>Acepta la misión Reposición de existencias the Larders
    .addquestitem 6889,92553
    .addquestitem 5469,92553
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Brisaleve::251905|r
    .turnin 92553 >>Entrega la misión Reposición de existencias
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Brisaleve::251905|r
    .train 2550 >>Aprende |T133971:0|t[Cocina]
    .target Zerril Softbreeze::251905
    .money <0.01
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Usa la |T132834:0|t[Huevo a las finas hierbas] macro a continuación para elaborar tantos como sea posible.
    *|cRXP_WARN_La mayoría de la comida de mejora proporciona un 5% más de experiencia en combate durante 15 minutos. Intenta mantener esta mejora lo más tiempo posible mientras subes de nivel|r.
    .collect 2678,5 >>Compra 5 |T134059:0|t[Especias suaves].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Usa la |T132834:0|t[Huevo a las finas hierbas] macro a continuación para elaborar 1 para la mejora de experiencia.
    *|cRXP_WARN_La mayoría de la comida de mejora proporciona un 5% más de experiencia en combate durante 15 minutos. Intenta mantener esta mejora lo más tiempo posible mientras subes de nivel|r.
    .collect 2678,5 >>Compra 5 |T134059:0|t[Especias suaves].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Usa la |T132834:0|t[Huevo a las finas hierbas] macro a continuación para elaborar cada Huevo pequeño más allá de los 3 reservados para Reposición de existencias de las Despensas.
    *|cRXP_WARN_Guarda al menos 3 Pequeños Huevos para una misión posterior|r
    *|cRXP_WARN_La mayoría de la comida de mejora proporciona un 5% más de experiencia en combate durante 15 minutos. Intenta mantener esta mejora lo más tiempo posible mientras subes de nivel|r.
    .collect 2678,5 >>Compra 5 |T134059:0|t[Especias suaves].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
-- Intentional repeat of level 6 Rogue training for players who reached level 6 after the earlier trainer visit.
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 1757 >>Aprende |T136189:0|t[Golpe siniestro (Rango 2)]
    .train 1776 >>Aprende |T132155:0|t[Gubia]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Horde Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 1757 >>Aprende |T136189:0|t[Golpe siniestro (Rango 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 1757 >>Aprende |T136189:0|t[Golpe siniestro (Rango 2)]
    .train 1776 >>Aprende |T132155:0|t[Gubia]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Alliance Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 1757 >>Aprende |T136189:0|t[Golpe siniestro (Rango 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step
    #completewith BadwindBennicA
    >>Mata a los |cRXP_ENEMY_Prideclaws::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    *|cRXP_WARN_Priorízalos|r
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith BadwindBennicA
    >>Mata a los |cRXP_ENEMY_Galestrider::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Strider Carne|r] y |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    *|cRXP_WARN_Priorízalos|r
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #loop
    .goto 2521,46.13,39.79,25,0
    .goto 2521,46.9,38.84,25,0
    .goto 2521,46.37,37.85,25,0
    .goto 2521,45.76,39.31,25,0
    >>Mata a los |cRXP_ENEMY_High Order Apprentices::257521|r.
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step << Horde
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .goto 2521,46.597,38.121
    .cast 1259686 >>Usa |T1029587:0|t[Skysight] para el aumento del 10% de velocidad de movimiento.
    .cooldown spell,1259686,>0,1
step
    #completewith BadwindBennicB
    >>Mata a los |cRXP_ENEMY_Highlands Bandits::251918|r. Despoja los |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #completewith next
    #label BadwindBennicA
    >>Mata a |cRXP_ENEMY_"Badwind" Bennic::255534|r.
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith BadwindBennicA
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,15,0
    .goto 2521,49.537,34.325,70 >>Entra en la cueva
step
    #requires BadwindBennicA
    #label BadwindBennicB
    .goto 2521,49.8,36.03,20,0
    .goto 2521,49.97,35.19,20,0
    .goto 2521,49.59,34.3,20,0
    .goto 2521,50.4,33.49,30,0
    .goto 2521,50.680,34.214
    >>Mata a |cRXP_ENEMY_"Badwind" Bennic::255534|r.
    .usespell 1259705
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step << Alliance
    .isOnQuest 92517 -- The Criminal Element
    .subzoneskip 16674,1 -- Bandit Hideout
    #arrowtext Usa |T236219:0|t[Leer Línea ley]\ncerca de la Línea ley
    .goto 2521,50.59,33.51
    .cast 1259705 >>Usa |T236219:0|t[Leer línea ley] para 100% de aumento de regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #completewith OutCave
    >>Mata a los |cRXP_ENEMY_Galestrider::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Strider Carne|r] y |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith OutCave
    >>Mata a los |cRXP_ENEMY_Prideclaws::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label OutCave
    #loop
    .goto 2521,50.27,33.41,25,0
    .goto 2521,49.69,34.05,25,0
    .goto 2521,49.64,34.66,25,0
    .goto 2521,49.93,35.22,25,0
    .goto 2521,49.79,35.97,25,0
    .goto 2521,49.26,35.91,25,0
    .goto 2521,48.82,36.47,25,0
    .goto 2521,49.43,38.66,40,0
    .goto 2521,48.02,38.41,40,0
    .goto 2521,47.75,36.19,40,0
    .goto 2521,48.93,36.38,40,0
    >>Mata a los |cRXP_ENEMY_Highlands Bandits::251918|r. Despójalos para obtener |T5172975:0|t[|cRXP_LOOT_Pilfered Windstone|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #completewith To Shendalar
    >>Mata |cRXP_ENEMY_Zancavientos::251661|r |cRXP_WARN_por el camino|r.
    *Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Carne de zancudo|r] y |T132832:0|t[|cRXP_LOOT_Huevos pequeños|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith To Shendalar
    >>Mata |cRXP_ENEMY_Leozarpas::251245|r |cRXP_WARN_por el camino|r.
    *Despójalos para obtener |T237416:0|t[|cRXP_LOOT_Pelambres de leozarpa|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label To Shendalar
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Softbreeze::251905|r y compra 5 |T134059:0|t[Especias suaves].
    .vendor 251905 >>Vende la Basura
    .collect 2678,5 -- Mild Spices
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitaremos para Cocina después|r.
    .target Zerril Softbreeze::251905
    .skipgossipid 137550
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Brisaleve::251905|r 
    .train 2550 >>Aprende |T133971:0|t[Aprendiz cocinero]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Brisaleve::251905|r
    .turnin 92553 >>Entrega la misión Reposición de existencias
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Usa la |T132834:0|t[Huevo a las finas hierbas] macro a continuación para elaborar tantos como sea posible.
    *|cRXP_WARN_La mayoría de la comida de mejora proporciona un 5% más de experiencia en combate durante 15 minutos. Intenta mantener esta mejora lo más tiempo posible mientras subes de nivel|r.
    .collect 2678,10 >>Compra 10 |T134059:0|t[Especias suaves].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Usa la |T132834:0|t[Huevo a las finas hierbas] macro a continuación para elaborar 1 para la mejora de experiencia.
    *|cRXP_WARN_La mayoría de la comida de mejora proporciona un 5% más de experiencia en combate durante 15 minutos. Intenta mantener esta mejora lo más tiempo posible mientras subes de nivel|r.
    .collect 2678,10 >>Compra 10 |T134059:0|t[Especias suaves].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Usa la |T132834:0|t[Huevo a las finas hierbas] macro a continuación para elaborar cada Huevo pequeño más allá de los 3 reservados para Reposición de existencias de las Despensas.
    *|cRXP_WARN_Guarda al menos 3 Pequeños Huevos para una misión posterior|r
    *|cRXP_WARN_La mayoría de la comida de mejora proporciona un 5% más de experiencia en combate durante 15 minutos. Intenta mantener esta mejora lo más tiempo posible mientras subes de nivel|r.
    .collect 2678,10 >>Compra 10 |T134059:0|t[Especias suaves].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
-- Intentional repeat of level 6 class training for players who reached level 6 after the earlier trainer visit.
step << Mage
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dorii Brightwhisper::251379|r.
    .train 143 >>Aprende |T135812:0|t[Bola de Fuego (Rango 2)]
    .train 2136 >>Aprende |T135807:0|t[Explosión de Fuego]
    .train 1296017 >>Aprende |T8188276:0|t[Analizar pergamino]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
    .money <0.03
    .xp <6,1
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aarnor Ventinazo::254082|r
    .trainer >>Aprende tus hechizos de clase
    .target Aarnor Galestrike::254082
    .money <0.01
    .xp <6,1
step << Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 1757 >>Aprende |T136189:0|t[Golpe siniestro (Rango 2)]
    .train 1776 >>Aprende |T132155:0|t[Gubia]
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.02
    .xp <6,1
step << Rogue
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Mistblade::254087|r
    .train 1757 >> Aprende |T136189:0|t[Golpe siniestro (Rank 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.01
    .xp <6,1
step << Warrior
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corsan Terrasar::254088|r
    .train 3127 >> Aprende |T132269:0|t[Parar]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.01
    .xp <6,1
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elayaa Ventocalma::254084|r.
    .train 3044 >>Aprende |T132218:0|t[Disparo Arcano]
    .train 1130 >>Aprende |T132212:0|t[Marca del cazador]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.02
    .xp <6,1
step << Druid
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naeluna Sanapresto::254081|r
    .train 467 >>Aprende |T136104:0|t[Espinas]
    .train 5177 >>Aprende |T136006:0|t[Cólera (Rango 2)]
    .skipgossipid 136805
    .xp <6,1
    .money <0.02
    .target Naeluna Swiftmend::254081
step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aedi Thriceforged::251913|r.
    *|cRXP_WARN_Omitir esto si ya tienes dos profesiones|r.
    .train 2018 >>Aprende |T136241:0|t[Herrería]
    .target Aedi Thriceforged::251913
step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .train 2018,3 -- Blacksmithing Trained
    #completewith next
    +Abre |T136241:0|t[Herrería] y crea una |T135248:0|t[Piedra de afilar férrea] para tu arma cortante y aplícala. << Rogue
    +Abre |T136241:0|t[Herrería] y crea un |T135255:0|t[Contrapeso férreo] para tu arma contundente y aplícalo.  << Warrior/Paladin/Shaman
    .usespell 2018
step << Rogue/Warrior/Paladin/Shaman
    #completewith Turn in The Adventurer
    +Abandona la Herrería o continúa con ella.
step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teeri Wellwind::251906|r
    .target Teeri Wellwind::251906
    .turnin 93319 >>Entrega los Saqueado Windstones
step << Shaman
    .isQuestComplete 94411 -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tephri Tripleforja::257421|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestAvailable 96638 -- The Adventurer
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veena Verinube::254358|r
    .vendor 254358 >>|cRXP_BUY_Compra una|r |T133634:0|t[Pequeña Bolsa Marrón].
    *|cRXP_BUY_Compra como máximo 10|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_de ella|r << Mage/Druid/Shaman/Priest/Warlock/Paladin
    *|cRXP_WARN_Al equipar bolsas, asegúrate de que tu Bolsa de Reactivos esté en su ranura dedicada|r.
    .collect 2946,1 >>|cRXP_BUY_Compra una|r |T135641:0|t[Daga arrojadiza equilibrada]. << Rogue/Warrior
    *No vendas |T133970:0|t[Carne fibrosa], |T132832:0|t[Huevos pequeños], ni |T133972:0|t[Carne de zancudo]. << Alliance
    *No vendas |T132832:0|t[Huevos pequeños] ni |T133972:0|t[Carne de zancudo]. << Horde
    .target Veena Vericloud::254358
step << Horde
    .goto 2521,43.518,44.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Illaya Ventámbar::251902|r.
    .turnin 94411 >>Entrega la misión Meddlesome Mages
    .target Illaya Amberwind::251902
step
    .goto 2521,43.37,45.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Recompensa Disponible: Vulgara the Insaciable!|r
    .accept 93318 >>Acepta la misión SE BUSCA: Vulgara, la Insaciable
    .target Bounty Available: Vulgara the Insatiable!
step << Warrior/Rogue
    .goto 2521,43.073,46.306
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naleeia Sanandrajo::257018|r.
    .train 3273 >>Aprende Primeros auxilios
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step
    #label Turn in The Adventurer
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r.
    .turnin 96638 >>Entrega la misión El aventurero
    .target Raan Wildwind::263664
    .accept 96101 >>Acepta la misión Bendita naturaleza
step
    .goto 2521,41.67,44.79
    >>Haz clic en la macro en el "Marco de Objetos Utilizables" para sentarte.
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    -- .emote SIT,263664 -- Feels like this is breaking the quest completion 50% of the time
    .macro Sit,134400 >>Siéntate
    .timer 59, RP
    .target Raan Wildwind::263664
step
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    >>|cRXP_WARN_Quédate sentado hasta que recibas el "buff" Descanso mejorado|r.
    *|cRXP_WARN_Usar este tiempo para crear|r |T133685:0|t[Linen Bandages].
    *|cRXP_WARN_También puedes aplicar tus buffs nuevamente mientras esperas|r.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    >>|cRXP_WARN_Permanece sentado hasta que obtengas el buff Mejorado Descanso|r.
    *|cRXP_WARN_Puedes fabricar mientras esperas sin interrumpir el proceso|r.
    *|cRXP_WARN_También puedes aplicar tus buffs nuevamente mientras esperas|r.
    *|cRXP_WARN_Crea|r |T133974:0|t[Carne de lobo carbonizada] |cRXP_WARN_para aumentar tu habilidad de Cocina. No uses|r |T132832:0|t[Huevos pequeños] << Alliance
    *|cRXP_WARN_Si no recibes el buff, desconéctate y vuelve a conectarte, luego intenta de nuevo|r.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r.
    .turnin 96101 >>Entrega la misión Bendita naturaleza
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2575,3 -- Mining Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97970 >>Acepta la misión Campamento básico: Minería
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 8613,3 -- Skinning Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97971 >>Acepta la misión Campamento básico: Desuello
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 96646 >>Acepta la misión Campamento básico: Cocina
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2366,3 -- Herbalism Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97968 >>Acepta la misión Campamento básico: Herboristería
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3273,3 -- First Aid Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97965 >>Acepta la misión Campamento básico: Primeros auxilios
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7620,3 -- Fishing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97967 >>Acepta la misión Campamento básico: Pesca
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2259,3 -- Alchemy Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97963 >>Acepta la misión Campamento básico: Alquimia
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2018,3 -- Blacksmithing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97964 >>Acepta la misión Campamento básico: Herrería
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3908,3 -- Tailoring Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97973 >>Acepta la misión Campamento básico: Sastrería
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7411,3 -- Enchanting Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 98286 >>Acepta la misión Campamento básico: Encantamiento
    .target Raan Wildwind::263664
step
    .train 2108,3 -- Leatherworking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Raan Wildwind::263664|r
    .accept 97969 >>Acepta la misión Campamento básico: Peletería
    .target Raan Wildwind::263664
step << Horde
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,37,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step
    #completewith HippogryphHarassmentA
    >>Mata |cRXP_ENEMY_Leozarpas::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Pelambres de leozarpa|r].
    *|cRXP_WARN_Si hay un Tornado cerca, tócalo para obtener 40% de velocidad de movimiento aumentada durante 5 minutos. Causar daño elimina el efecto|r.
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith HippogryphHarassmentA
    >>Mata |cRXP_ENEMY_Zancavientos::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Carne de zancudo|r] y |T132832:0|t[|cRXP_LOOT_Huevos pequeños|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith next
    >>Mata al |cRXP_ENEMY_Windshaper Novice Seer::257532|r.
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step << Alliance
    .isOnQuest 94413 -- A Magical Affront
    .isQuestNotComplete 94413 -- A Magical Affront
    .goto 2521,39,47.37
    .cast 1259705 >>Usa |T236219:0|t[Leer línea ley] para 100% de aumento de regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #loop
    .goto 2521,37.96,46.86,40,0
    .goto 2521,38.75,48.72,40,0
    .goto 2521,38.99,47.24,40,0
    >>Mata al |cRXP_ENEMY_Windshaper Novice Seer::257532|r.
    *|cRXP_WARN_Revitalizar|r |T236219:0|t[Leer Línea ley] |cRXP_WARN_cerca de la Línea Ley|r << Alliance
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step
    .isOnQuest 92516 -- Hippogryph Harassment
    .isQuestNotComplete 92516 -- Hippogryph Harassment
    .subzoneskip 16623,1 -- Shen'dar Highlands
    #arrowtext Salta desde la montaña\nUsa |T132845:0|t[Caminar on Aire]
    .goto 2521,36.44,50.93
    .cast 1259416 >>Salta desde la montaña y usa |T132845:0|t[Caminar on Aire] para volar hacia el punto de ruta.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,45,0
    .goto 2521,34.52,52.76,40,0
    .goto 2521,35.12,54.08,38,0
    .goto 2521,35.86,53.01,40,0
    .goto 2521,36.02,54.28,40,0
    .goto 2521,35.71,55.57,40,0
    .goto 2521,35.63,57.34,30,0
    .goto 2521,34.6,57.11,35,0
    .goto 2521,35.51,58.08,40,0
    .goto 2521,36.61,58.64,40,0
    .goto 2521,37.13,56.6,40,0
    .goto 2521,38.61,56.89,40,0
    .goto 2521,39.88,57.56,40,0
    .goto 2521,39.1,55.85,40,0
    .goto 2521,33.1,54.67,40,0
    .goto 2521,34.7,52.68,40,0
    .goto 2521,34.25,51.19,40,0
    +1
step
    #completewith next
    >>Mata al |cRXP_ENEMY_Hippogryph Youth::251291|r, al |cRXP_ENEMY_Hippogryph Protector::251284|r y a la |cRXP_ENEMY_Hippogryph Matriarch::251261|r.
    *|cRXP_WARN_Estate atento a Windstones para recuperarte y Tornadoes para un aumento de velocidad de movimiento|r
    *|cRXP_WARN_Prioriza a la |cRXP_ENEMY_Matriarch::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Hipogrifo Downs|r.
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label HippogryphHarassmentA
    >>Mata al |cRXP_ENEMY_Hippogryph Youth::251291|r, al |cRXP_ENEMY_Hippogryph Protector::251284|r y a la |cRXP_ENEMY_Hippogryph Matriarch::251261|r.
    *|cRXP_WARN_Prioriza a la |cRXP_ENEMY_Matriarch::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    #completewith VulgarasHeadA
    >>Mata a los |cRXP_ENEMY_Galestrider::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Strider Carne|r] y |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #completewith VulgarasHeadA
    >>Mata a los |cRXP_ENEMY_Prideclaws::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label VulgarasHeadA
    .goto 2521,43.079,51.028,15,0
    .goto 2521,42.978,51.803,15,0
    .goto 2521,42.75,52.68
    >>Mata a |cRXP_ENEMY_Vulgara::254589|r |cRXP_WARN_(nivel 8 élite)|r en la montaña. Despójala para obtener |T4218759:0|t[|cRXP_LOOT_Cabeza de Vulgara|r].
    *|cRXP_WARN_Busca un grupo para matarla u omite la misión; las reapariciones tardan bastante|r.
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara::254589
step
    #completewith A Little Beauty
    >>Mata |cRXP_ENEMY_Zancavientos::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Carne de zancudo|r] y |T132832:0|t[|cRXP_LOOT_Huevos pequeños|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
-- step -- if you want to force finish here
--     #loop
--     .goto 2521,43.07,48.51,40,0
--     .goto 2521,37.56,43.24,40,0
--     .goto 2521,40.04,41.38,40,0
--     >>Kill |cRXP_ENEMY_Prideclaws::251245|r. Loot them for the |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
--     .complete 92515,1 --10/10 Prideclaw Pelt
--     .mob Prideclaw::251245
step
    #completewith A Little Beauty
    >>Mata |cRXP_ENEMY_Leozarpas::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Pelambres de leozarpa|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naleeia Sanandrajo::257018|r
    .turnin 97965 >>Entrega la misión Campamento básico: Primeros auxilios
    .target Naleeia Tattermend::257018
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nasalanna Vientocantor::257020|r
    .turnin 98286 >>Entrega la misión Campamento básico: Encantamiento
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mendalass Sanandrajo::257024|r
    .turnin 97971 >>Entrega la misión Campamento básico: Desuello
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Brisaleve::251905|r y compra 5 |T134059:0|t[Especias suaves]
    .vendor 251905 >>Vende la Basura
    *No vendas |T133970:0|t[Carne fibrosa], |T132832:0|t[Huevos pequeños], ni |T133972:0|t[Carne de zancudo]. << Alliance
    *No vendas |T132832:0|t[Huevos pequeños] ni |T133972:0|t[Carne de zancudo]. << Horde
    *|cRXP_WARN_Los necesitaremos para Cocina después|r.
    .collect 2678,5 -- Mild Spices
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Brisaleve::251905|r
    .turnin 92553 >>Entrega la misión Reposición de existencias de las Despensas
    .target Zerril Softbreeze::251905
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Entrega la misión Campamento básico: Cocina
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Usa la |T132834:0|t[Huevo a las finas hierbas] macro a continuación para elaborar tantos como sea posible.
    *|cRXP_WARN_La mayoría de la comida de mejora otorga 5% de experiencia aumentada por muertes durante 15 minutos. Intenta mantener un tiempo activo alto en esta mejora mientras subes de nivel|r.
    .collect 2678,20 >>Compra 20 |T134059:0|t[Especias suaves].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Usa la |T132834:0|t[Huevo a las finas hierbas] macro a continuación para elaborar 1 para la mejora de experiencia.
    *|cRXP_WARN_La mayoría de la comida de mejora proporciona un 5% más de experiencia en combate durante 15 minutos. Intenta mantener esta mejora lo más tiempo posible mientras subes de nivel|r.
    .collect 2678,20 >>Compra 20 |T134059:0|t[Especias suaves].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,>3 -- Small Egg
    .goto 2521,43.86,43.85
    +Usa la |T132834:0|t[Huevo a las finas hierbas] macro a continuación para elaborar cada Huevo pequeño más allá de los 3 reservados para Reposición de existencias de las Despensas.
    *|cRXP_WARN_Guarda al menos 3 Pequeños Huevos para una misión posterior|r
    *|cRXP_WARN_La mayoría de la comida de mejora proporciona un 5% más de experiencia en combate durante 15 minutos. Intenta mantener esta mejora lo más tiempo posible mientras subes de nivel|r.
    .collect 2678,20 >>Compra 20 |T134059:0|t[Especias suaves].
    .disablecheckbox
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyassa Swiftdraught::257019|r
    .turnin 97963 >>Entrega la misión Campamento 101: Alquimia
    .target Nyassa Swiftdraught::257019
step
    #label A Little Beauty
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>Entrega la misión A Little Bella
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Taleen Shimmerthread::251991|r
    .turnin 97973 >>Entrega la misión Campamento 101: Sastrería
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aedi Thriceforged::251913|r
    .turnin 97964 >>Entrega la misión Campamento 101: Herrería
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Messana Crestwind::257022|r
    .turnin 97970 >>Entrega la misión Campamento 101: Minería
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .isQuestAvailable 93319 -- Pilfered Windstones
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Indari Cosesoles::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Entrega la misión The Problem With Prideclaws
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Indari Cosesoles::251993|r
    .turnin 97969 >>Entrega la misión Campamento básico: Peletería
    .target Indari Sunseam::251993
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Teeri Bonovento::251906|r
    .target Teeri Wellwind::251906
    .turnin 92516 >>Entrega la misión Acoso de hipogrifos
    .turnin 93319 >>Entrega los Saqueado Windstones
step << Shaman/Druid
    .isQuestTurnedIn 92516 -- Hippogryph Harassment
    .isQuestTurnedIn 93319 -- Pilfered Windstones
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tephri Tripleforja::257421|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Warrior
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Corsan Terrasar::254088|r
    .train 284 >> Aprende |T132282:0|t[Golpe heroico (Rango 2)]
    .train 1715 >> Aprende |T132316:0|t[Seccionar]
    .train 7372,1 -- Hamstring (Rank 2) Not Trained
    .train 6343 >> Aprende |T136105:0|t[Atronar]
    .train 8198,1 -- Thunder Clap (Rank 2) Not Trained
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
    .money <0.05
    .xp <8,1
step
    .isQuestComplete 93318 -- WANTED: Vulgara the Insatiable
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danarii Velobramido::252172|r
    .target Danarii Bellowveil::252172
    .turnin 93318 >>Entrega la misión SE BUSCA: Vulgara, la Insaciable
step << Druid
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naeluna Sanapresto::254081|r.
    .train 339 >>Aprende |T136100:0|t[Raíces enredadoras]
    .train 5186 >>Aprende |T136041:0|t[Toque de sanación (Rango 2)]
    .skipgossipid 136805
    .xp <8,1
    .money <0.04
    .target Naeluna Swiftmend::254081
step << Hunter
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elayaa Ventocalma::254084|r.
    .train 5116 >>Aprende |T135860:0|t[Disparo de conmoción]
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .train 14260 >>Aprende |T132223:0|t[Golpe de raptor (Rango 2)]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
    .money <0.04
    .xp <8,1
step
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Agente Aonda::251523|r
    .target Constable Aonda::251523
    .turnin 92517,3 >>Entrega la misión El elemento criminal
    .accept 93036 >>Acepta la misión Infiltrándose en el culto
-- step << Hunter
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,45.263,44.236
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elayaa Easewind::254084|r.
--     .train 5116 >>Train |T135860:0|t[Concussive Shot]
--     .train 3127 >>Train |T132269:0|t[Parry]
--     .train 14260 >>Train |T132223:0|t[Raptor Strike (Rank 2)]
--     .skipgossipid 136808
--     .target Elayaa Easewind::254084
--     .money <0.06
--     .xp <8,1
-- step << Horde Druid Testing something 
--     .subzoneskip 16624,1 -- Shen'dar Village
--     .goto 2521,45.153,44.225
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naeluna Swiftmend::254081|r.
--     .trainer >>Train your spells
--     .target Naeluna Swiftmend::254081
--     .money <0.04
--     .xp <8,1
step
    .goto 2521,44.831,45.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sania Rioplata::251904|r
    .target Sania Silverstream::251904
    .turnin 93036 >>Entrega la misión Infiltrándose en el culto
    .accept 92529 >>Acepta la misión Aldea Falaath
step << Alliance/Horde !Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isOnQuest 94413 << Alliance -- Magical Affront
    .isQuestAvailable 92529 << Horde -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veena Verinube::254358|r
    .vendor 254358 >>|cRXP_BUY_Compra hasta tres|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_según sea necesario|r.
    >>|cRXP_BUY_Compra hasta 10|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_de él|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_WARN_Cuando equipas bolsas, asegúrate de que tu bolsa de reagentes esté en la ranura dedicada de la bolsa de reagentes|r.
    *No vendas |T133970:0|t[Carne fibrosa], |T132832:0|t[Huevos pequeños], ni |T133972:0|t[Carne de zancudo]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    .target Veena Vericloud::254358
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sania Rioplata::251904|r
    .skipgossipid 135874
step << Horde Shaman
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aarnor Ventinazo::254082|r
    .trainer >>Aprende tus hechizos de clase
    .target Aarnor Galestrike::254082
    .money <0.10
    .xp <8,1
step << Shaman/Druid
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tephri Thriceforged::257421|r
    >>|cRXP_BUY_Compra y equipa una|r |T135145:0|t[Cachava]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Horde Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestAvailable 92529 << Horde -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veena Verinube::254358|r
    .vendor 254358 >>|cRXP_BUY_Compra hasta tres|r |T133634:0|t[Faltriqueras marrones pequeñas] |cRXP_BUY_según sea necesario|r.
    >>|cRXP_BUY_Compra|r |T132815:0|t[Leche fría como el hielo] |cRXP_BUY_a este vendedor|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_WARN_Cuando equipas bolsas, asegúrate de que tu bolsa de reagentes esté en la ranura dedicada de la bolsa de reagentes|r.
    *No vendas |T132832:0|t[Huevos pequeños] ni |T133972:0|t[Carne de zancudo]. << Horde
    .target Veena Vericloud::254358
step << Mage
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenaan Spellwind::254086|r
    .train 5143 >> Aprende |T136096:0|t[Misiles Arcanos]
    .train 205 >> Aprende |T135846:0|t[Descarga de Escarcha (Rank 2)]
    .train 118 >> Aprende |T136071:0|t[Polimorfia]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
    .money <0.06
    .xp <8,1
step << Mage
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Shenaan Ventihechizo::254086|r
    .train 5143 >> Aprende |T136096:0|t[Misiles Arcanos]
    -- .train 205 >> Train |T135846:0|t[Frostbolt (Rank 2)]
    -- .train 118 >> Train |T136071:0|t[Polymorph]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
    .money <0.02
    .xp <8,1
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Rathiril Lanzasol::251903|r.
    .turnin 94413 >>Entrega la misión Una afrenta mágica
    .target Rathiril Sunlance::251903
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Entrega la misión Campamento básico: Pesca
    .target Fenn Fairweather::251992
step
    #completewith LivingLightningA
    >>Mata a los |cRXP_ENEMY_Galestrider::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Strider Carne|r] y |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #completewith LivingLightningA
    >>Mata a los |cRXP_ENEMY_Prideclaws::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #completewith Skypriest Aanders
    >>Mata a los |cRXP_ENEMY_Prideclaws::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.374,53.512,25,0
    .goto 2521,46.880,56.242
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar en el aire] para volar hacia el que entrega la misión.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
    .goto 2521,45.412,53.485,20,0
    .goto 2521,46.880,56.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Missionary Jasaan::257065|r
    .target Missionary Jasaan::257065
    .turnin 92529 >>Entrega la misión Falaath Village
    .accept 92528 >>Acepta la misión Among the Faithful
    .use 2454 << Warrior/Rogue
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16636,1 -- Falaath Village
    .goto 2521,46.89,56.24
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sania Rioplata::251904|r
    .skipgossipid 137586 -- I seem to have lost my mark of Akir. Would you please bestow it upon me once more?
step << Horde
    .isOnQuest 92528 -- Among the Faithful
    .goto 2521,48.497,55.827
    .cast 1259686 >>Usa |T1029587:0|t[Vista celeste] para el aumento del 10% de velocidad de movimiento.
    .cooldown spell,1259686,>0,1
step
    #completewith next
    #label plans
    .goto 2521,48.74,53.89,10,0
    .goto 2521,49.06,53.48,10,0
    .goto 2521,48.76,53.68,10,0
    >>Después de hacer clic en la Guardarropa, regresa a la ciudad.
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    #completewith plans
    .goto 2521,48.85,53.91
    .gossipoption 136768 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Wardrobe|r |cRXP_WARN_en el segundo piso|r.
    *|cRXP_WARN_Si alguien ya lo hizo, se completará igualmente|r
    .timer 14,RP
    .skipgossipid 136768
step
    #requires plans
    .goto 2521,48.6,54.69,30,0
    .goto 2521,46.44,51.34,30,0
    >>Regresa a la ciudad y espera al "roleplay".
    *|cRXP_WARN_Si ves un Tornado, úsalo para viajar más rápido|r.
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16624 -- Shen'dar Village
    .goto 2521,46.86,51.54,25,0
    .goto 2521,44.37,46.69
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar en el aire] para volar hacia el punto de ruta.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Rogue
    .isQuestAvailable 92528 -- Among the Faithful
    .goto 2521,44.37,46.69,30,0
    .goto 2521,43.15,43.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Miriaan Hojaniebla::254087|r
    .train 5277 >>Aprende |T136205:0|t[Evasión]
    .train 6760 >>Aprende |T132292:0|t[Eviscerar (Rango 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
    .money <0.04
    .xp <8,1
step
    .goto 2521,44.37,46.69,30,0 << !Rogue
    .goto 2521,44.49,45.95,30,0 << !Rogue
    .goto 2521,44.93,46.85,30,0 << !Rogue
    .goto 2521,45.21,46.63,30,0 << !Rogue
    .goto 2521,45.04,46.23,15,0 << !Rogue
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con la |cRXP_FRIENDLY_Agente Aonda::251523|r.
    .turnin 92528,1 >>Entrega la misión Among the Faithful << Mage/Druid/Shaman/Priest/Warlock
    .turnin 92528,2 >>Entrega la misión Among the Faithful << Warrior/Rogue/Paladin
    .turnin 92528,3 >>Entrega la misión Among the Faithful << Hunter
    .accept 92550 >>Acepta la misión Estragos in the Highlands
    .accept 93926 >>Acepta la misión The Western Observar
    .target Constable Aonda::251523
step
    .goto 2521,45.25,45.18
    *|cRXP_WARN_Equipa la|r |T454058:0|t[Daga ritual manchada] << Mage/Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_Equipa la|r |T7789512:0|t[Cimitarra curva] << Warrior/Rogue/Paladin
    *|cRXP_WARN_Equipa el|r |T135493:0|t[Arco corto azotado por el viento] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danarii Velobramido::252172|r.
    .accept 92551 >>Acepta la misión Suministros robados
    .target Danarii Bellowveil::252172
step
	.isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    -- .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.35,46.79,20,0
    .goto 2521,44.05,49.98,30,0
    .goto 2521,43.02,49.86
    .subzone 17674 >>Muere al suroeste de Shen'dar Village y reaparece en el |cRXP_FRIENDLY_Espíritu Sanador::6491|r
    .macro Sit,134400 >>Siéntate
step
    #completewith next
    #label Western Watchtower
    .isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    .subzoneskip 17674,1 -- West Pylon Watchtower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Peacekeeper Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
step
    #completewith Western Watchtower
    #ignorecorpse
    .isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .showwhiledead
    .goto 2521,40.23,63.83
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Ángel de la Resurrección::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Western Watchtower
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Peacekeeper Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.33,62.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Peacekeeper Vaaniel::252155|r
    .turnin 93926 >>Entrega la misión The Western Observar
    .accept 93927 >>Acepta la misión A Lento Request
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Bloody Nota|r.
    *|cRXP_WARN_Mantén una ranura de bolsa libre.|r
    .complete 93927,1 --1/1 Collect and read the note
step
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Arvensus Shadowsong|r\n |cRXP_WARN_desde lejos|r.
    *|cRXP_WARN_Mantén una ranura de bolsa libre.|r
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Raani Windgazer|r\n |cRXP_WARN_desde lejos|r.
    *|cRXP_WARN_Mantén un espacio de bolsa libre|r.
    .complete 93927,3 --1/1 Raani's Favorite Feather
step
    #label Skypriest Aanders
    .goto 2521,40.94,64.15,4,0
    .goto 2521,41.11,64.03,4,0
    .goto 2521,41.09,64.29,4,0
    .goto 2521,40.95,64.25,4,0
    .goto 2521,41.05,64.02,4,0
    .goto 2521,41.08,64.27,4,0
    .goto 2521,40.94,64.2,4,0
    .goto 2521,41.08,64.39
    >>Asciende la escalera de caracol, luego mata al |cRXP_ENEMY_Skypriest Aanders::256966|r en lo alto de la torre.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders::256966
step
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .isOnQuest 92551 -- Stolen Supplies
    .isQuestNotComplete 92551 -- Stolen Supplies
    .goto 2521,50.29,56.95
    .cast 1259416 >>Salta de la torre y usa |T132845:0|t[Caminar on Aire] para volar hacia el punto de ruta.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step  << Alliance
    #completewith NearCommander
    >>Mata al |cRXP_ENEMY_Al'Aketh Clamatormentas::252068|r. Despójalo para obtener |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Suministros|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tHaz clic en los |cRXP_PICK_Supply Alijos|r (bolsas pequeñas).
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step << Alliance
    #completewith NearCommander
    >>Mata |cRXP_ENEMY_Zancavientos::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Carne de zancudo|r] y |T132832:0|t[|cRXP_LOOT_Huevos pequeños|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith NearCommander
    >>Mata a los |cRXP_ENEMY_Prideclaws::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #label NearCommander
    .isQuestNotComplete 92550 -- Havoc in the Highlands
    .isOnQuest 92550 -- Havoc in the Highlands
    .goto 2521,45.48,58.73,30,0
    .goto 2521,48.36,58.49
    .cast 1259705 >>Usa |T236219:0|t[Leer línea ley] para 100% de aumento de regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #completewith CommanderCyclasHeadA
    >>Mata a los |cRXP_ENEMY_Galestrider::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Strider Carne|r] y |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #completewith CommanderCyclasHeadA
    >>Mata a los |cRXP_ENEMY_Prideclaws::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Prideclaw Pelts|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #completewith CommanderCyclasHeadA
    >>Mata al |cRXP_ENEMY_Living Relámpago::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    #completewith CommanderCyclasHeadA
    >>Mata al |cRXP_ENEMY_Al'Aketh Clamatormentas::252068|r. Despójalo para obtener |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Suministros|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tHaz clic en los |cRXP_PICK_Supply Alijos|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label CommanderCyclasHeadA
    .goto 2521,49.779,57.330,15,0
    .goto 2521,49.886,56.504,20,0
    .goto 2521,50.38,56.93
    >>Mata al |cRXP_ENEMY_Commander Cyclas::251966|r. Despójalo para obtener |T134161:0|t[|cRXP_LOOT_Commander Cyclas's Cabeza|r].
    .complete 92550,3 --1/1 Commander Cyclas's Head
    .mob Commander Cyclas::251966
step
    #completewith LivingLightningA
    #hidewindow
    #loop
    .goto 2521,49.877,56.539,25,0
    .goto 2521,49.629,54.728,25,0
    --.goto 2521,48.823,54.315,15,0
    .goto 2521,49.058,53.545,15,0
    .goto 2521,47.641,54.140,30,0
    .goto 2521,49.765,57.237,25,0
    .goto 2521,49.5,56.22,35,0
    .goto 2521,49.86,56.95,35,0
    .goto 2521,50.4,56.93,25,0
    +1
step
    #completewith next
    >>Mata al |cRXP_ENEMY_Living Relámpago::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    >>Mata al |cRXP_ENEMY_Al'Aketh Clamatormentas::252068|r. Despójalo para obtener |T133647:0|t[|cRXP_LOOT_Stolen Shen'dar Suministros|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tHaz clic en los |cRXP_PICK_Supply Alijos|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label LivingLightningA
    >>Mata a |cRXP_ENEMY_Living Relámpago::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step << Horde
    .isOnQuest 92550 -- Havoc in the Highlands
    .goto 2521,48.497,55.827
    .cast 1259686 >>Usa |T1029587:0|t[Skysight] para el aumento del 10% de velocidad de movimiento.
    .cooldown spell,1259686,>0,1
step
    #completewith RestockingTheLardersA
    #hidewindow
    #loop
    .goto 2521,47.34,51.69,35,0
    .goto 2521,45.9,53.93,35,0
    .goto 2521,42.65,49.07,35,0
    .goto 2521,41.44,53.14,35,0
    .goto 2521,39.77,56.4,35,0
    .goto 2521,40.9,50.64,35,0
    .goto 2521,37.56,43.24,40,0
    .goto 2521,40.04,41.38,40,0
    -- .goto 2521,45.95,53.76,35,0
    -- .goto 2521,42.885,63.422,35,0
    -- .goto 2521,42.97,49.81,35,0
    -- .goto 2521,44.12,50.46,35,0
    -- .goto 2521,38.283,42.288,35,0
    -- .goto 2521,42.055,40.938,35,0
    +1
step
    #completewith next
    >>Mata a los |cRXP_ENEMY_Galestrider::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Strider Carne|r] y |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    >>Mata |cRXP_ENEMY_Leozarpas::251245|r. Despójalos para obtener los |T237416:0|t[|cRXP_LOOT_Pelambres de leozarpa|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label RestockingTheLardersA
    >>Mata |cRXP_ENEMY_Zancavientos::251661|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Carne de zancudo|r] y |T132832:0|t[|cRXP_LOOT_Huevos pequeños|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fenn Fairweather::251992|r
    .turnin 97967 >>Entrega la misión Campamento 101: Pesca
    .target Fenn Fairweather::251992
-- step
--     --might cause issues when really unlucky with the pelt or strider quest
--     .isQuestAvailable 92551 -- Stolen Supplies
--     .isQuestNotComplete 97967 -- Camping 101: Fishing
--     .isQuestNotComplete 97965 -- Camping 101: First Aid
--     .isQuestNotComplete 97968 -- Camping 101: Herbalism
--     .isQuestNotComplete 98286 -- Camping 101: Enchanting
--     .isQuestNotComplete 97971 -- Camping 101: Skinning
--     .isQuestNotComplete 97963 -- Camping 101: Alchemy
--     .isQuestNotComplete 97973 -- Camping 101: Tailoring
--     .isQuestNotComplete 97964 -- Camping 101: Blacksmithing
--     .isQuestNotComplete 97970 -- Camping 101: Mining
--     .isQuestNotComplete 97969 -- Camping 101: Leatherworking
--     .goto 2521,44.111,45.843,40 >>Follow the way up the mountain.
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naleeia Sanandrajo::257018|r
    .turnin 97965 >>Entrega la misión Campamento básico: Primeros auxilios
    .target Naleeia Tattermend::257018
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nasalanna Vientocantor::257020|r
    .turnin 98286 >>Entrega la misión Campamento básico: Encantamiento
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Mendalass Sanandrajo::257024|r
    .turnin 97971 >>Entrega la misión Campamento básico: Desuello
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Brisaleve::251905|r y compra |T135237:0|t[Sílex y yesca].
    *|cRXP_WARN_Lo usarás con Simple Madera para crear hogueras básicas para Cocina más tarde|r.
    .collect 4471,1 -- Flint and Tinder
    .itemcount 4471,<1 -- Flint and Tinder
    .vendor 251905 >>Vende la Basura
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitamos para Cocina más tarde|r.
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Brisaleve::251905|r y compra 5 |T135435:0|t[Madera simple].
    .collect 4470,5 -- Simple Wood
    .itemcount 4470,<5 -- Simple Wood
    .vendor 251905 >>Vende la Basura
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitamos para Cocina más tarde|r.
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Softbreeze::251905|r y compra 5 |T134059:0|t[Especias suaves].
    .vendor 251905 >>Vende la Basura
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitamos para Cocina más tarde|r.
    .collect 2678,5 -- Mild Spices
    .itemcount 2678,<5 -- Mild Spices
    .skipgossipid 137550 -- I would like to buy from you.
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 92553 >>Entrega la misión Reposición de existencias
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92550 -- Havoc in the Highlands
    .itemcount 6889,1 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .goto 2521,43.86,43.85
    +Usa el |T132834:0|t[Huevo a las finas hierbas] macro siguiente para crear tantos como sea posible.
    *|cRXP_WARN_La mayoría de la comida de mejora otorga 5% de experiencia aumentada por muertes durante 15 minutos. Intenta mantener un tiempo activo alto en esta mejora mientras subes de nivel|r.
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zerril Softbreeze::251905|r
    .turnin 96646 >>Entrega la misión Campamento básico: Cocina
    .target Zerril Softbreeze::251905
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyassa Racharrauda::257019|r
    .turnin 97963 >>Entrega la misión Campamento básico: Alquimia
    .target Nyassa Swiftdraught::257019
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Taleen Paño Brillante::251991|r
    .turnin 97973 >>Entrega la misión Campamento básico: Sastrería
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aedi Tripleforja::251913|r
    .turnin 97964 >>Entrega la misión Campamento básico: Herrería
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Messana Crestavento::257022|r
    .turnin 97970 >>Entrega la misión Campamento básico: Minería
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Indari Cosesoles::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Entrega la misión The Problem With Prideclaws
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Indari Cosesoles::251993|r
    .turnin 97969 >>Entrega la misión Campamento básico: Peletería
    .target Indari Sunseam::251993
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Veena Vericloud::254358|r
    .vendor 254358 >>Basura de vendedor. |cRXP_BUY_Compra hasta tres|r |T133634:0|t[Faltriquera marrón pequeña] |cRXP_BUY_según sea necesario|r.
    -- *|cRXP_BUY_Buy|r |T132815:0|t[Ice Cold Milk] |cRXP_BUY_from him|r << Druid/Mage/Priest/Warlock/Paladin
    *|cRXP_BUY_Compra|r |T132382:0|t[Flechas férreas] y |T132382:0|t[Flechas afiladas] << Hunter
    *|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas] << Alliance Rogue
    *|cRXP_WARN_Cuando equipas bolsas, asegúrate de que tu bolsa de reagentes esté en la ranura dedicada de la bolsa de reagentes|r.
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    .collect 2512,600 << Hunter --Rough Arrow (600)
    .collect 2515,1000 << Hunter --Sharp Arrows (1000)
    .collect 2515,600 << Alliance Rogue --Sharp Arrows (600)
    .target Veena Vericloud::254358
step
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Danarii Velobramido::252172|r.
    .turnin 92551 >>Entrega la misión Suministros robados
    .target Danarii Bellowveil::252172
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Constable Aonda::251523|r.
    .turnin 92550,3 >>Entrega la misión Estragos en las Tierras altas
    .turnin 93927 >>Entrega la misión Una última petición
    .accept 92701 >>Acepta la misión Valanaar << Alliance
    .accept 92579 >>Acepta la misión Valanaar << Horde
    .accept 93948 >>Acepta la misión Entregar el Sello
    .target Constable Aonda::251523
--maybe duplicate trainer steps for low silver cases

step
    .isQuestAvailable 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,49.4,58.76
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar en el aire] para volar hacia el punto de ruta.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.4,58.76
    .subzone 16626 >>Muere en la ubicación exacta del punto de ruta
    *|cRXP_WARN_De lo contrario, podrías ser enviado a un cementerio diferente|r
    .macro Sit,134400 >>Siéntate
step
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con el |cRXP_FRIENDLY_Spirit Sanador::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Hunter
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Falfaan Halfwind::271465|r dentro de la casa.
    >>|cRXP_BUY_Compra y equipa un|r |T7810733:0|t[Zephrali Arco]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Vende basura y repara si es necesario.
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitamos para Cocina más tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
    .money <0.1345
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
step << Alliance
    .goto 2521,60.6,73.16,10,0
    .goto 2521,60.640,72.664
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyalah Brightfire::257006|r.
    *|cRXP_WARN_Si ves un Tornado, acércate a él para obtener velocidad de movimiento aumentada del 40% durante 5 minutos. El efecto termina si infliges daño.|r
    .target Nyalah Brightfire::257006
    .accept 93317 >>Acepta la misión Temporada de cangrejos
    .skipgossipid 96031
    .skipgossipid 98031
step
    .isOnQuest 93948 -- Deliver the Signet
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .itemcount 2678,1 -- Mild Spices
    .goto 2521,60.640,72.664
    +Usa el |T132834:0|t[Huevo a las finas hierbas] macro siguiente para crear tantos como sea posible.
    *|cRXP_WARN_La mayoría de la comida de mejora otorga 5% de experiencia aumentada por muertes durante 15 minutos. Intenta mantener un tiempo activo alto en esta mejora mientras subes de nivel|r.
    .macro Herb Baked Egg,132834 >>Huevo a las finas hierbas
step
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .home >>Establece tu Piedra de hogar en Valanaar
    .goto 2521,62.180,72.616
step
    .isNotOnQuest 92679 -- Blood Tithe
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Vende la basura
    *No vendas |T133970:0|t[Carne fibrosa], |T132832:0|t[Huevos pequeños], ni |T133972:0|t[Carne de zancudo]. << Alliance
    *No vendas |T132832:0|t[Huevos pequeños] ni |T133972:0|t[Carne de zancudo]. << Horde
    *|cRXP_WARN_Los necesitamos para Cocina más tarde|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
    .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
step
    #completewith next
    #label Accept Blood Tithe
    .goto 2521,61.95,72.84,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_en el segundo piso|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Acepta la misión Diezmo de sangre
step
    #completewith Accept Blood Tithe
    .goto 2521,62.096,73.339,20 >>Sube las escaleras
step
    #requires Accept Blood Tithe
    .goto 2521,62.096,73.339
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_en el segundo piso|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Acepta la misión Diezmo de sangre
-- TODO: Add Walk on Air
step
    .isNotOnQuest 94484 -- Unnerving Silence
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 93948 -- Deliver the Signet
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Cruza la montaña
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94484 >>Acepta la misión Silencio inquietante
    .target Lotheluum Starbreeze::252359
step << Horde
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .accept 94896 >>Acepta la misión Ayuda para los refugiados
    .accept 94897 >>Acepta la misión El destino de un ser querido
    .target Ealaane Nimbuswalker::259012
step
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 93948 >>Entrega la misión Deliver the Signet
    .target Talaanis Shadowsong::252476
step
    #completewith DeliverTheSignetA
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Sube la torre
step
    #requires DeliverTheSignetA
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 93948 >>Entrega la misión Entrega el sello
    .target Talaanis Shadowsong::252476
step
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92701 >>Entrega la misión To Valanaar << Alliance
    .turnin 92579,3 >>Entrega la misión To Valanaar << Horde
    .accept 92699 >>Acepta la misión The Supreme Magister << Alliance
    .accept 92700 >>Acepta la misión The Grand Skyseer << Horde
    .accept 93949 >>Acepta la misión Bugged << Alliance
    .target Valennia Stormfist::252383
-- step << Horde
--     #completewith LeavingValanaarA
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde
    .isOnQuest 92700 -- The Grand Skyseer
    .goto 2521,66.488,76.498,6,0
    .goto 2521,63.027,77.807 << Hunter
    .goto 2521,61.491,76.893 << !Hunter
    .cast 1259416 >>Salta de la torre y usa |T132845:0|t[Caminar en el aire] para volar hacia el que entrega la misión.
    *|cRXP_WARN_Si lo haces en el momento correcto, puedes cancelarlo en el aire para aterrizar en el edificio|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Cancela Caminar en el aire
step << Alliance
    .isOnQuest 92699 -- The Supreme Magister
    .goto 2521,66.47,76.68,10,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar on Aire] para volar hacia el dador de misiones.
    *|cRXP_WARN_Si lo haces en el momento correcto, puedes cancelarlo en el aire para aterrizar en el edificio|r
    .cooldown spell,1259416,>0,1
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Cancela Caminar en el aire
step << Alliance
    #completewith Unwelcome Visitors
    >>Mata a |cRXP_ENEMY_Skyhopper::251314|r.
    *|cRXP_WARN_Mientras el buff de velocidad de Tornado esté activo, evita matarlos|r.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92699 >>Entrega la misión The Supreme Magister
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dondallion Susurravientos::253204|r.
    .accept 92727 >>Acepta la misión The Missing Scholar
    .target Dondallion Whisperwind::253204
step << Alliance
    #label Unwelcome Visitors
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r.
    .accept 92741 >>Acepta la misión Unwelcome Visitantes
    .target Iaadaria Bitterwind::253004
step << Alliance
    .isOnQuest 92727 -- The Missing Scholar
    .goto 2521,67.41,80.46
    .subzoneskip 16638,1 -- Valanaar
    .subzone 16626 >>Salta del acantilado
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isOnQuest 92727 -- The Missing Scholar
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Spirit Sanador::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Horde Hunter
    .goto 2521,63.027,77.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
    >>|cRXP_BUY_Compra|r 600 |T132382:0|t[Rough Flechas]
    .collect 2512,600 << Hunter --Rough Arrow (600)
    .target Antelariaa Cloudgaze::252390
step << Horde
    .goto 2521,61.491,76.893,15,0
    .goto 2521,59.349,77.930,35,0
    .goto 2521,59.154,79.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 92700 >>Entrega la misión The Grand Skyseer
    .accept 92708 >>Acepta la misión A Grand Adventure
    .timer 75,Duración del Roleplay
    .accept 93735 >>Acepta la misión El ensamblaje averiado
    .target Ayessa Dawnsinger::251968
step << Horde
    .isOnQuest 92708 -- A Grand Adventure
    .goto 2521,59.154,79.783
    .cast 1259686 >>Usa |T1029587:0|t[Skysight] para el aumento del 10% de velocidad de movimiento.
    .cooldown spell,1259686,>0,1
-- step << Horde
--     .goto 2521,58.128,78.307
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
--     .accept 93736 >>Accept Unwelcome Spirits
--     .target Endaria Mistgaze::254344
step << Horde
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
    .target Syriel Nightrain::254345
    .turnin 97968 >>Entrega la misión Campamento 101: Herboristería
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .target Riaani Nightwind::256083
    .turnin 93735 >>Entrega la misión The Roto Ensamblaje
--     .accept 93737 >>Accept The Broken Construct
--     .complete 93737,1 --|1/1 Listen to what Riaani Nightwind has to say
-- step << Horde
--     .goto 2521,59.265,79.977
--     >>Wait for the roleplay. -- Probably skipping this quest.
--     .complete 92708,1 --|1/1 Listen to Ayessa
-- step << Horde
--     #label LeavingValanaarA
--     .goto 2521,59.150,79.790
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
--     .target Ayessa Dawnsinger::251968
--     .turnin 92708 >>Turn in A Grand Adventure
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #completewith next
--     #label BrokenConstructA
--     #hidewindow
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r |cRXP_WARN_inside the cave on the bottom floor|r.
--     .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
-- step << Horde
--     #completewith BrokenConstructA
--     .goto 2521,51.397,68.644,15 >>Enter the cave
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #requires BrokenConstructA
--     #loop
--     .goto 2521,51.434,67.603,15,0
--     .goto 2521,51.874,67.221,15,0
--     .goto 2521,52.933,66.084,15,0
--     .goto 2521,53.201,65.424,15,0
--     .goto 2521,52.752,64.732,15,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r |cRXP_WARN_inside the cave on the bottom floor|r.
--     .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
step << Alliance
    .goto 2521,53.33,72.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Bloodstained Satchel::581822|r
    .turnin 92727 >>Entrega la misión The Missing Scholar
    .accept 92849 >>Acepta la misión The Missing Scholar
    .target Bloodstained Satchel::581822
step << Alliance
    #label LeavingValanaarA
    .goto 2521,51.11,67.06,30,0
    .goto 2521,51.24,66.63,30,0
    .goto 2521,49.9,66.42,30,0
    .goto 2521,49.75,65.9,30,0
    .goto 2521,50.7,65.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r dentro de la cueva.
    *|cRXP_WARN_Estos pájaros tienen un radio de agresión más pequeño que la mayoría de enemigos|r.
    *|cRXP_WARN_No hagas clic en él mientras estés en combate con un pájaro, ya que hacerlo te teletransportará fuera de la cueva|r.
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .isOnQuest 92849 -- The Missing Scholar
    .isQuestNotComplete 92849 -- The Missing Scholar
    .goto 2521,50.7,65.36
    .aura 1258429 >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_FRIENDLY_Fillion Flamebreeze::253002|r dentro de la cueva.
    *|cRXP_WARN_Estos pájaros tienen un radio de agresión más pequeño que la mayoría de enemigos|r.
    .skipgossipid 136430
    .target Fillion Flamebreeze::253002
step << Alliance
    .goto 2521,50.71,66.38,20,0
    .goto 2521,52.04,66.66,15,0
    .goto 2521,51.44,66.25,15,0
    .goto 2521,51.03,67.15,15,0
    .goto 2521,51.55,69.2,35,0
    .goto 2521,52.08,69.41
    >>Lleva |cRXP_FRIENDLY_Fillion Flamebreeze::253281|r a un lugar seguro. |cRXP_WARN_Evadir enemigos por el camino|r.
    *|cRXP_WARN_Estos pájaros tienen un radio de agresión más pequeño que la mayoría de enemigos|r.
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
    .skipgossipid 136430
    .mob Shriekling Fledgling::253282
    .target Fillion Flamebreeze::253281
step << Alliance
    .goto 2521,52.064,69.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r.
    .target Fillion Flamebreeze::253284
    .turnin 92849 >>Entrega la misión The Missing Scholar
    .accept 92850 >>Acepta la misión The Missing Scholar
-- step << Alliance
--     #completewith next
--     #label Shriekling Matriarch
--     .goto 2521,51.39,68.2,20,0
--     >>Kill |cRXP_ENEMY_Shriekling Matriarch::253283|r. Loot it for |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's Head|r].
--     .complete 92850,1 --1/1 Shriekling Matriarch's Head
--     .mob Shriekling Matriarch::253283
step << Alliance
    -- #completewith Shriekling Matriarch
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .goto 2521,52.02,65.51,130 >>Entra en la cueva
step << Alliance
    .goto 2521,52.49,65.97
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,45.73,80.86
    .cast 1259705 >>Usa |T236219:0|t[Leer línea ley] para 100% de aumento de regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    .goto 2521,52.02,65.51
    >>Mata |cRXP_ENEMY_Shriekling Matriarch::253283|r. Despójala para obtener |T6119035:0|t[|cRXP_LOOT_Shriekling Matriarch's Cabeza|r].
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch::253283
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,52.37,66.5,15,0
    .goto 2521,51.75,66.33,15,0
    .goto 2521,51.05,66.66,15,0
    .goto 2521,51.16,67.53,15,0
    .goto 2521,51.5,69.11,25 >>Sal de la Cueva
step << Alliance
    #completewith FindAameliaWindfieldA
    >>Mata |cRXP_ENEMY_Windsong Crawlers::254588|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Windsong Reptador Carne|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
-- step << Horde
--     #completewith next
--     #label BrokenConstructB
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
--     *|cRXP_WARN_She may be moving between locations during a roleplay sequence. Wait at the waypoint location|r.
--     .complete 92679,1 --1/1 Find Aamelia Windfield
--     .target Aamelia Windfield::252800
-- step << Horde
--     #completewith BrokenConstructB
--     .goto 2521,51.397,68.644,15 >>Leave the cave
step
    #requires BrokenConstructB << Horde
    #label FindAameliaWindfieldA
    .goto 2521,46.71,81.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Puede estar moviéndose entre ubicaciones durante el Roleplay. Espera en el punto de ruta|r.
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step
    #loop
    .goto 2521,46.71,81.94,10,0
    .goto 2521,47.511,78.490,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Puede estar moviéndose entre ubicaciones durante el Roleplay. Espera en el punto de ruta|r.
    .turnin 92679 >>Entrega la misión Diezmo de sangre
    .accept 92682 >>Acepta la misión Haz algo útil
    .accept 92684 >>Acepta la misión Ornery Ornery Galestriders
    .accept 92683 >>Acepta la misión Flutterfly Polvo
    .target Aamelia Windfield::252800

-- step << Alliance
--     .isOnQuest 92682 -- Make Yourself Useful
--     .isQuestNotComplete 92682 -- Make Yourself Useful
--     .subzoneskip 16663,1 -- Windfield Orchard
--     .goto 2521,45.73,80.86
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step
    -- #label RipBanditsA
    #loop
    .goto 2521,46.164,78.043,30,0
    .goto 2521,48.920,84.441,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_LOOT_Ripe Stormapples|r
    >>Mata a los |cRXP_ENEMY_Hungry Bandits::252802|r |cRXP_WARN_(stealthed)|r.
    *Consejos del Cazador: Presiona tab repetidamente para apuntarlos rápido, usa Marca del cazador en ellos para poder alejarte y atacarlos desde más lejos. << Hunter
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob +Hungry Bandit::252802
step << Horde
    .isOnQuest 92684 -- Ornery Ornery Galestriders
    .goto 2521,48.416,80.537
    .cast 1259686 >>Usa |T1029587:0|t[Skysight] para el aumento del 10% de velocidad de movimiento.
    .cooldown spell,1259686,>0,1
step
    #completewith WhatIsMyPurposeA
    >>Mata |cRXP_ENEMY_Ornery Galestrider::251707|r. Despójalos para obtener |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #completewith WhatIsMyPurposeA
    >>Usa repetidamente el |T537768:0|t[Mataalabatientes] en los |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tHaz clic en el |cRXP_PICK_Flutterfly Polvo|r.
    *|cRXP_WARN_Si una Flutterfly no vuela, usa el swatter en ella de nuevo|r << !Mage
    *|cRXP_WARN_Puedes lanzar repetidamente|r |T136071:0|t[Polimorfia] |cRXP_WARN_en el mismo Flutterfly y usa el matamoscas para recolectar múltiples pilas de polvo de él|r. << Mage
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #label WhatIsMyPurposeA
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Malfunctioning Ciclón Ensamblaje::250929|r.
    .accept 92698 >>Acepta la misión What Is My Purpose?
    .target Malfunctioning Cyclone Construct::250929
step << Horde Shaman
    #completewith ShamanLevel10
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    +1
step << Horde Shaman
    #completewith next
    >>Mata |cRXP_ENEMY_Ornery Galestrider::251707|r. Despójalos para obtener |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #completewith ShamanLevel10
    #label ShamanFluterflyDustA
    >>Usa repetidamente el |T537768:0|t[Mataalabatientes] en los |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tHaz clic en el |cRXP_PICK_Flutterfly Polvo|r.
    *|cRXP_WARN_Si una Flutterfly no vuela, usa el swatter en ella de nuevo|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #requires ShamanFluterflyDustA
    #completewith ShamanLevel10
    >>Mata |cRXP_ENEMY_Ornery Galestrider::251707|r. Despójalos para obtener |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #hidewindow
    #label ShamanLevel10
    .xp 10 >>1
step << Horde Shaman
    #completewith next
    .hs >>Usa tu Piedra de Hogar para ir a Valanaar.
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .accept 97243 >>Acepta la misión La llamada del fuego
    .target Sessaria Skystride::252382
step << Horde Shaman
    .isQuestAvailable 97243
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .trainer >>Aprende tus hechizos de clase
    .target Sessaria Skystride::252382
    .money <0.12
    .xp <10,1
    .subzoneskip 16638,1
step << Horde Shaman
    #completewith CallOfFireA
    >>Usa repetidamente el |T537768:0|t[Mataalabatientes] en los |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tHaz clic en el |cRXP_PICK_Flutterfly Polvo|r.
    *|cRXP_WARN_Si una Flutterfly no vuela, usa el swatter en ella de nuevo|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #completewith CallOfFireA
    >>Mata |cRXP_ENEMY_Ornery Galestrider::251707|r. Despójalos para obtener |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label CallOfFireA
    .goto 2521,54.402,77.329,30,0
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .turnin 97243 >>Entrega la misión La llamada del fuego
    .accept 97244 >>Acepta la misión La llamada del fuego
    .target Olariaan Swiftburn::268592
-- step << Shaman
--     .isOnQuest 97244
--     .isQuestNotComplete 97244
--     .goto 2521,50.8,89.6
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    .goto 2521,64.380,63.586
    >>Mata al |cRXP_ENEMY_Skypriest Faladiel::268602|r. Despójalo para |T839910:0|t[|cRXP_LOOT_Faladiel's Corazón|r].
    .complete 97244,1 --|1/1 Faladiel's Heart
    .mob Skypriest Faladiel::268602
-- step << Shaman
--     .isOnQuest 97244
--     .goto 2521,62.384,64.393
-- -- #ignorecorpse
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Jump down to die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Shaman
    #completewith CallOfFireB
    >>Usa repetidamente el |T537768:0|t[Mataalabatientes] en los |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tHaz clic en el |cRXP_PICK_Flutterfly Polvo|r.
    *|cRXP_WARN_Si una Flutterfly no vuela, usa el swatter en ella de nuevo|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step << Horde Shaman
    #completewith CallOfFireB
    >>Mata |cRXP_ENEMY_Ornery Galestrider::251707|r. Despójalos para obtener |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step << Horde Shaman
    #label CallOfFireB
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>Entrega la misión La llamada del fuego
    .accept 97245 >>Acepta la misión La llamada del fuego
step
    #completewith GalestriderTenderloinA
    #hidewindow
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    .goto 2521,50.42,83.74,40,0
    .goto 2521,49.24,81.79,40,0
    +1
step
    #completewith next
    >>Mata |cRXP_ENEMY_Ornery Galestrider::251707|r. Despójalos para obtener |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    >>Usa repetidamente el |T537768:0|t[Mataalabatientes] en los |cRXP_ENEMY_Flutterflies::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tHaz clic en el |cRXP_PICK_Flutterfly Polvo|r.
    *|cRXP_WARN_Si una Flutterfly no vuela, usa el swatter en ella de nuevo|r
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666
step
    #label GalestriderTenderloinA
    >>Mata |cRXP_ENEMY_Ornery Galestrider::251707|r. Despójalos para obtener |T2066012:0|t[|cRXP_LOOT_Lowlands Galestrider Tenderloins|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,46.71,81.94,40,0
    .goto 2521,47.511,78.490,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Si hay un Tornado cerca, úsalo para viajar más rápido|r.
    *|cRXP_WARN_Puede estar moviéndose entre ubicaciones durante el Roleplay|r.
    *|cRXP_WARN_Búscala desde la distancia o sigue su diálogo; la flecha solo marca una ubicación aproximada|r.
    .turnin 92682 >>Entrega la misión Haz algo útil
    .turnin 92684,3 >>Entrega la misión Ornery Ornery Galestriders
    .turnin 92698 >>Entrega la misión What Is My Purpose?
    .turnin 92683 >>Entrega la misión Flutterfly Polvo
    .accept 92685 >>Acepta la misión The Hills Have Ojos << Alliance/Shaman
    .target Aamelia Windfield::252800
step << Alliance
    .isOnQuest 92685 -- The Hills Have Eyes
    .isQuestNotComplete 92685 -- The Hills Have Eyes
    .subzoneskip 16663,1 -- Windfield Orchard
    .goto 2521,45.73,80.86
    .cast 1259705 >>Usa |T236219:0|t[Leer línea ley] para 100% de aumento de regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance/Shaman
    #completewith next
    #label Bandit Highwaymen
    *|cRXP_WARN_Equipa el|r |T7791298:0|t[Flutterfly Swatter] << Rogue
    >>Mata a los |cRXP_ENEMY_Bandit Highwaymen::252820|r. Despójalos para obtener |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandido Masks|r].
    *|cRXP_WARN_Observa para detectar enemigos ocultos en la huerta de manzanas|r.
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Alliance/Shaman
    #completewith Bandit Highwaymen
    .goto 2521,44.81,74.4,30 >>Asciende la montaña
    *|cRXP_WARN_Si ves un Tornado, úsalo para viajar más rápido|r.
step << Alliance/Shaman
    #requires Bandit Highwaymen
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    -- .goto 2521,45.760,78.419,35,0
    >>Mata a los |cRXP_ENEMY_Bandit Highwaymen::252820|r. Despójalos para obtener |T133693:0|t[|cRXP_LOOT_Blood-Stained Bandido Masks|r].
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Horde Shaman
    .goto 2521,42.393,68.887
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Kuramaa's Stump|r.
    >>Mata a |cRXP_ENEMY_Kuramaa::268605|r. Despójalo para obtener |T3549050:0|t[|cRXP_LOOT_Kuramaa's Máscara|r].
    *|cRXP_WARN_Te golpea hacia atrás y recibe daño de fuego adicional|r.
    .complete 97245,1 --|1/1 Kuramaa's Mask
    .mob Kuramaa::268605
    .usespell 8024
step << Alliance
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Podría estar moviéndose entre ubicaciones durante una secuencia de Roleplay. Revisa ambos lugares.|r
    .turnin 92685 >>Entrega la misión The Hills Have Ojos
    .accept 92693 >>Acepta la misión De pie Our Ground
    .target Aamelia Windfield::252800
step << Alliance
    .isOnQuest 92685 -- The Hills Have Eyes
    -- .subzoneskip 16626,1 -- Gustberry Lowlands
    .goto 2521,43.84,75.53,30,0
    .goto 2521,44.06,76.19,15,0
    .goto 2521,47.511,78.490
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar on Aire] |cRXP_WARN_en el aire|r para volar hacia el punto de ruta.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance/Shaman
    #loop
    .goto 2521,47.511,78.490,30,0
    .goto 2521,46.71,81.94,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    *|cRXP_WARN_Podría estar moviéndose entre ubicaciones durante una secuencia de Roleplay. Revisa ambos lugares.|r
    *Puedes saltar de la montaña y usar |T132845:0|t[Caminar en el aire] |cRXP_WARN_en el aire|r para volar hacia la ubicación del punto de ruta.
    .turnin 92685 >>Entrega la misión The Hills Have Ojos
    .accept 92693 >>Acepta la misión De pie Our Ground
    .target Aamelia Windfield::252800
step << Alliance/Shaman
    .goto 2521,46.71,81.94
    >>Regresa a la ubicación principal de |cRXP_FRIENDLY_Aamelia Windfield::252800|r y habla con ella.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .timer 75,Duración del Roleplay
    .target Aamelia Windfield::252800
    .skipgossipid 136302
step << Alliance/Shaman
    .goto 2521,47.51,78.44
    >>Sigue a |cRXP_FRIENDLY_Aamelia Windfield::252800|r. Espera el Roleplay.
    *Cuando Aamelia se detiene, coloca una Hoguera si tienes una y ninguno está cerca. Inicia la cocción para aumentos de habilidad.
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
    .use 279981
step << Alliance/Shaman
    .goto 2521,47.51,78.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Aamelia Windfield::252800|r.
    .turnin 92693 >>Entrega la misión De pie Our Ground
    .accept 92703 >>Acepta la misión Deliver the News
    .target Aamelia Windfield::252800
-- step << Horde
--     .isOnQuest 92703 -- Deliver the News
--     .goto 2521,48.445,80.591
--     .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
--     .cooldown spell,1259686,>0,1
step << Alliance/!Shaman
    .isQuestAvailable 92703 -- Deliver the News
    .subzoneskip 16638 -- Valanaar
    .hs >>Usa tu Piedra de Hogar para ir a Valanaar.
step << Alliance/!Shaman
    .isQuestAvailable 92703 -- Deliver the News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Vende la basura
    .collect 1179,20 >>Compra |T132815:0|t[Leche fría como el hielo]. << Mage/Druid/Priest/Warlock/Paladin
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitamos para Cocina más tarde|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Horde Shaman
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Olariaan Swiftburn::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>Entrega la misión La llamada del fuego
    .accept 97257 >>Acepta la misión La llamada del fuego
    .timer 35,Duración del Roleplay
step << Horde Shaman
    .goto 2521,51.265,85.927
    >>Espera el Roleplay. Usa la |T135432:0|t[Antorcha of Llama eterna] en el |cRXP_PICK_Brazier of Ofreciendo|r.
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
    .use 277329
step << Horde Shaman
    .goto 2521,52.400,81.309,25,0
    .goto 2521,54.907,76.598,15,0
    .goto 2521,58.312,78.827
    >>Tienes aproximadamente 5 minutos para regresar.
    *|cRXP_WARN_Si hay un Tornado cerca, úsalo para viajar más rápido|r.
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
    .skipgossipid 140778
step << Horde Shaman
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
    .target Sessaria Skystride::252382
    .turnin 97257 >>Entrega la misión La llamada del fuego
-- step << Horde Shaman
--     #completewith next
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde Shaman
    .isQuestAvailable 92703 -- Deliver the News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Vende la basura
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitamos para Cocina más tarde|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Hunter
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 92703 -- Deliver the News
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    >>|cRXP_BUY_Compra|r |T134534:0|t[Forest Champiñón Cap] |cRXP_BUY_de él|r. |cRXP_BUY_Usarás esto para alimentar a tu mascota más tarde.|r
    .collect 4604,5 -- Forest Mushroom
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
step
    .isQuestComplete 92703 -- Deliver the News
    .goto 2521,61.94,72.8,10,0
    .goto 2521,62.05,73.09,8,0
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alvarion Windfield::252448|r |cRXP_WARN_en el segundo piso|r.
    .turnin 92703,1 >>Entrega la misión Deliver the News << Warrior/Shaman/Paladin
    .turnin 92703,2 >>Entrega la misión Deliver the News << Druid/Priest
    .turnin 92703,3 >>Entrega la misión Deliver the News << Rogue
    .turnin 92703 >>Entrega la misión Deliver the News << Hunter/Mage/Warlock
    .target Alvarion Windfield::252448
step
    #completewith next
    *|cRXP_WARN_Equipa la|r |T134435:0|t[Plantando la pala] << Warrior/Shaman/Paladin
    *|cRXP_WARN_Equipa el|r |T133057:0|t[Roofing Martillo] << Druid/Priest
    *|cRXP_WARN_Equipa el|r |T134520:0|t[Trusty Llave inglesa] << Rogue
step << Alliance
    #completewith Turn in The Missing Scholar
    >>Mata a |cRXP_ENEMY_Skyhopper::251314|r.
    *|cRXP_WARN_Mientras el buff de velocidad de Tornado esté activo, evita matarlos|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Mage
    .goto 2521,62.887,77.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belann Windwood::256507|r.
    .target Belann Windwood::256507
    .accept 93791 >>Acepta la misión Hablar con Belann
    .turnin 93791 >>Entrega la misión Hablar con Belann
    .accept 93797 >>Acepta la misión Ramas al viento
step << Warrior
    .goto 2521,59.889,72.869
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .accept 94003 >>Acepta la misión El Rompecielos Baluarte
step << Warrior
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 6546 >>Aprende |T132155:0|t[Desgarrar (Rango 2)]
    .train 2687 >>Aprende |T132277:0|t[Ira sangrienta]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.12
    .xp <10,1
-- step << Alliance Druid
--     .isQuestAvailable 92850 -- The Missing Scholar
--     #completewith next
--     .goto 2521,63.33,73.65,15,0
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
-- step << Alliance Druid
--     .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 92850 -- The Missing Scholar
--     #completewith next
--     .goto 2521,63.33,73.65,15,0
--     .goto 2521,63.973,75.095,25 >>Go over the mountain
--     .cooldown spell,1259705,<0,1
step << Druid
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Cruza la montaña
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .accept 94006 >>Acepta la misión The Great Ursera Espíritu
    .target Lotheluum Starbreeze::252359
step << Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .train 16689 >>Aprende |T136063:0|t[Trabazón con la Naturaleza]
    -- .train 99 >>Train |TInterface/Icons/Ability_Druid_DemoralizingRoar:0|t[Demoralizing Roar]
    .train 1058 >>Aprende |T136081:0|t[Rejuvenecimiento (Rango 2)]
    .train 5232 >>Aprende |T136078:0|t[Marca de lo Salvaje (Rango 2)]
    .train 8924 >>Aprende |T136096:0|t[Fuego lunar (Rank 2)]
    .skipgossipid 140781
    .target Lotheluum Starbreeze::252359
    .money <0.12
    .xp <10,1
step << Rogue
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    -- *|cRXP_WARN_You can interact with him through walls not sure if we want to add it|r
    .train 674 >>Aprende |T132147:0|t[Doble empuñadura]
    .train 6770 >>Aprende |T132310:0|t[Porrazo]
    .train 2070,1 -- Sap (Rank 2) Not Trained
    .train 5171 >>Aprende |T132306:0|t[Hacer picadillo]
    .train 6774,1 -- Slice and Dice (Rank 2) Not Trained
    .train 2983 >>Aprende |T132307:0|t[Sprint]
    .train 8696,1 -- Sprint (Rank 2) Not Trained
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.09
    .xp <10,1
step << Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .train 13165 >>Aprende |T136076:0|t[Aspecto del halcón]
    .train 13549 >>Aprende |T132204:0|t[Picadura de serpiente (Rank 2)]
    .skipgossipid 136808
    .target Quel'ana Quickgale::252389
    .money <0.08
    .xp <10,1
step << Hunter
    .goto 2521,59.572,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .accept 94978 >>Acepta la misión Domesticar la bestia
    .target Quel'ana Quickgale::252389
step << Hunter Alliance
    .goto 2521,63.023,77.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
    >>|cRXP_BUY_Compra|r |T132382:0|t[Flechas afiladas]
    .vendor 252390 >>Vende la basura
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *|cRXP_WARN_Los necesitamos para Cocina más tarde|r.
    .collect 2515,1000 -- Sharp Arrows
    .target Antelariaa Cloudgaze::252390
step << Mage
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r
    .train 168 >>Aprende |T135843:0|t[Armadura de Escarcha]
    .train 122 >>Aprende |T135848:0|t[Vigía del pozo Solanian]
    .train 5504 >>Aprende |T132794:0|t[Crear agua]
    -- .train 587 >>Train |T133952:0|t[Conjure Food]
    .train 5505 >>Aprende |T132794:0|t[Crear agua (Rank 2)]
    .skipgossipid 136807
    .money <0.08
    .xp <10,1
    .target Anathamaas Aetherwind::252373
step << Alliance
    #label Turn in The Missing Scholar
    *|cRXP_WARN_Empuña con dos manos el|r |T134520:0|t[Trusty Llave inglesa] |cRXP_WARN_y|r |T7791298:0|t[Flutterfly Swatter] << Rogue
    .goto 2521,66.26,79.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fillion Flamebreeze::253284|r.
    .turnin 92850 >>Entrega la misión The Missing Scholar
    .accept 99260 >>Acepta la misión Fillion's Mission
    .target Fillion Flamebreeze::253284

step << Alliance
    #completewith Protect the Index
    .subzone 16638,1 -- Valanaar
    >>Mata a |cRXP_ENEMY_Skyhopper::251314|r.
    *|cRXP_WARN_Mientras el buff de velocidad de Tornado esté activo, evita matarlos|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.627,79.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .target Elaadrin Evengale::252475
    .turnin 99260 >>Entrega la misión Fillion's Mission
    .accept 92840 >>Acepta la misión Búsqueda espiritual

-- Deathskip past 10; might need later
-- step << Alliance
--     .isOnQuest 92840
--     .isQuestNotComplete 92840
--     .goto 2521,67.41,80.46
-- -- #ignorecorpse
--     .deathskip >>Jump off the cliff
--     *|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r
--     .skipgossipid 96031
--     .skipgossipid 98031
--     -- .subzoneskip 16638,1 -- Valanaar
--     .target Spirit Healer::6491

step << Horde Hunter
    #loop
    .goto 2521,54.460,78.811,48,0
    .goto 2521,51.968,73.084,35,0
    .goto 2521,53.126,73.502,20,0
    .goto 2521,51.268,69.758,35,0
    .use 267272 >>|cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Windsong Reptador::254588|r |cRXP_WARN_al máximo alcance|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94978 >>Entrega la misión Domesticar la bestia
    .accept 94979 >>Acepta la misión Domesticar la bestia
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #completewith next
    +|cRXP_WARN_Retira tu |cRXP_ENEMY_Windsong Reptador::254588|r haciendo clic derecho en su marco de unidad y haciendo clic en Retirar, de lo contrario no podrás domesticar un|r |cRXP_ENEMY_Ornery Galestrider::251707|r
step << Horde Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_al rango máximo|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94979 >>Entrega la misión Domesticar la bestia
    .accept 94013 >>Acepta la misión Domesticar la bestia
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #completewith next
    +|cRXP_WARN_Retirar tu |cRXP_ENEMY_Ornery Galestrider::251707|r haciendo clic derecho en su marco de unidad y haciendo clic en retirar, de lo contrario no podrás capturar un|r |cRXP_ENEMY_Vuldren::250874|r
step << Horde Hunter
    #loop
    .goto 2521,56.946,67.887,35,0
    .goto 2521,54.080,74.719,35,0
    .goto 2521,52.625,77.864,25,0
    .goto 2521,53.021,81.568,25,0
    .goto 2521,51.647,80.140,25,0
    .goto 2521,48.981,82.669,35,0
    .use 264163 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_al rango máximo|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94013 >>Entrega la misión Domesticar la bestia
    .accept 94050 >>Acepta la misión Domesticar la bestia
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .turnin 94050 >>Entrega la misión Domesticar la bestia
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .train 4195 >>Aprende el |T136112:0|t[Gran aguante]
    .train 24547 >>Aprende el |T136094:0|t[Armadura natural]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
    .xp <10,1
step << Horde Hunter
    #sticky
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_Lanza|r |T132164:0|t[Domesticar bestia] |cRXP_WARN_en un |cRXP_ENEMY_Windsong Reptador::254588|r para domesticarlo|r -- .tame 1997
    *|cRXP_WARN_NOTE:|r Si todos los cangrejos están muertos, también puedes domesticar a un |cRXP_ENEMY_Ornery Galestrider::251707|r hasta que encuentres un cangrejo.
    .train 2981 >> |cRXP_WARN_Ataca a enemigos con ella para aprender|r |T132140:0|t[Zarpa (Rango 2)]
    .link https://www.wow-petopia.com/classic/training.php >> |cRXP_WARN_Haz clic aquí para más información sobre el entrenamiento de mascotas|r
	.mob Windsong Crawler::254588



step << Alliance Hunter
    #completewith next
    .goto 2521,51.56,71.28,40,0
    .goto 2521,50.94,69.46,40,0
    .use 267272 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Windsong Reptador::254588|r |cRXP_WARN_al máximo alcance|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance !Hunter
    #completewith next
    >>Mata |cRXP_ENEMY_Windsong Crawlers::254588|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Windsong Reptador Carne|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
step << Alliance
    #completewith next
    #label Protect the Index
    .goto 2521,50.06,72.96,30,0
    .goto 2521,48.83,73.54,30,0
    .goto 2521,47.16,72.34,30,0
    .goto 2521,46.55,71.7,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Alliance
    #completewith Protect the Index
    .goto 2521,46.52,70.33,30 >>Rodea la Montaña.
    *|cRXP_WARN_Si hay un Tornado cerca, tócalo para obtener 40% de aumento de velocidad de movimiento durante 5 minutos. Hacer daño elimina el efecto|r.
step << Alliance
    #requires Protect the Index
    #loop
    .goto 2521,47.77,70.04,20,0
    .goto 2521,47.32,68.68,30,0
    .goto 2521,48.25,69,20,0
    .goto 2521,48.68,69.06,20,0
    .goto 2521,48.13,70.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cristales|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Mage
    .goto 2521,48.59,67.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en la |cRXP_PICK_Rama|r.
    .complete 93797,1 --1/1 Wind-Infused Bough
step << Alliance Hunter
    .isOnQuest 94013 -- Taming the Beast
    .isQuestNotComplete 94013 -- Taming the Beast
    .goto 2521,49.47,65.13,40,0
    .goto 2521,50.07,67.39,40,0
    .goto 2521,50.98,69.45,40,0
    .goto 2521,52.05,71.71,40,0
    .goto 2521,51.82,72.95,40,0
    .goto 2521,52.81,75.82,40,0
    .use 267272 >>|cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en un|r |cRXP_ENEMY_Windsong Reptador::254588|r |cRXP_WARN_al máximo alcance|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance Hunter
    .subzone 16626,1
    .isQuestComplete 94013 -- Taming the Beast
    .isQuestComplete 92840 -- Catching Wind
    .subzoneskip 16638 -- Valanaar
    .goto 2521,50.57,68.18,30,0
    .goto 2521,52.73,71.12
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar on Aire] para volar hacia el dador de misiones.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance !Hunter
    .isQuestComplete 92840 -- Catching Wind
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.46,70.12,30,0
    .goto 2521,65.577,76.650
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar on Aire] para volar hacia el dador de misiones.
    .cooldown spell,1259416,>0,1
    .usespell 1259416

-- Deathskip past 10; might need later
-- step << Alliance --The correct step; the beta issue still needs to be fixed.
--     .subzoneskip 16638 -- Valanaar
--     .isOnQuest 92840
--     .isQuestComplete 92840
--     .goto 2521,48.37,70.01
-- -- #ignorecorpse
--     .deathskip >>Die to the monsters or jump off the cliff
--     *|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .subzoneskip 16638,1 -- Valanaar
--     .target Spirit Healer

step << Alliance Hunter
    #completewith next
    >>Mata a |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94978 >>Entrega la misión Domesticar la bestia
    .accept 94979 >>Acepta la misión Domesticar la bestia
    .target Quel'ana Quickgale::252389
step << Alliance
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    #completewith next
    >>Mata a |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Syriel Nightrain::254345|r.
    .turnin 97968 >>Entrega la misión Campamento 101: Herboristería
    .target Syriel Nightrain::254345
step << Mage
    #completewith next
    >>Mata a |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Mage
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belann Windwood::256507|r.
    .turnin 93797 >>Entrega la misión Boughs in the Viento
    .target Belann Windwood::256507
step << Mage
    #loop
    .goto 2521,62.71,77.75,15,0
    .goto 2521,63.06,77.3,20,0
    .goto 2521,62.67,76.59,25,0
    .goto 2521,62.16,75.12,30,0
    .goto 2521,63.03,74.51,30,0
    .goto 2521,63.72,76.13,30,0
    .goto 2521,64.18,78.18,30,0
    .goto 2521,63.19,79.17,30,0
    .goto 2521,64.36,80.69,30,0
    >>Mata a |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    #completewith next
    +|cRXP_WARN_Retira tu |cRXP_ENEMY_Windsong Reptador::254588|r haciendo clic derecho en su marco de unidad y haciendo clic en retirar, de lo contrario no podrás domesticar un|r |cRXP_ENEMY_Armored Escórpido::3126|r
step << Alliance Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >> |cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en|r |cRXP_ENEMY_Ornery Galestrider::251707|r |cRXP_WARN_al máximo alcance|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94979 >>Entrega la misión Domesticar la bestia
    .accept 94013 >>Acepta la misión Domesticar la bestia
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #completewith next
    >>Mata a |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    #loop
    .goto 2521,54.23,75,40,0
    .goto 2521,53.45,80.93,40,0
    .goto 2521,52.56,77.82,40,0
    .goto 2521,61.944,68.828,35,0
    .goto 2521,59.516,64.846,35,0
    .goto 2521,57.041,67.729,35,0
    .goto 2521,54.322,75.080,35,0
    .goto 2521,51.925,80.458,35,0
    .goto 2521,52.920,81.509,35,0
    .use 264163 >>|cRXP_WARN_Usa tu|r |T132164:0|t[Fusta de doma] |cRXP_WARN_en|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_al máximo alcance|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
    .mob Vuldren Alpha::250874
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .turnin 94013 >>Entrega la misión Domesticar la bestia
    .accept 94050 >>Acepta la misión Domesticar la bestia
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .turnin 94050 >>Entrega la misión Domesticar la bestia
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'dora Quickgale::254411|r.
    .train 4195 >>Aprende |T136112:0|t[Gran aguante]
    .train 24547 >>Aprende |T136094:0|t[Armadura natural]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
    .xp <10,1
step << Alliance !Mage
    #loop
    .goto 2521,58.85,75.49,30,0
    .goto 2521,59.05,76.35,30,0
    .goto 2521,59.8,75.68,30,0
    .goto 2521,61.4,74.76,40,0
    .goto 2521,62.61,76.14,40,0
    .goto 2521,63.1,77.59,20,0
    .goto 2521,62.67,77.77,15,0
    .goto 2521,63.13,77.32,15,0
    .goto 2521,62.97,76.91,15,0
    .goto 2521,63.8,78.01,30,0
    .goto 2521,63.16,78.97,30,0
    .goto 2521,65.37,78.53,40,0
    >>Mata a |cRXP_ENEMY_Skyhopper::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Horde
--     #loop
--     .goto 2521,63.1,77.59,20,0
--     .goto 2521,62.67,77.77,15,0
--     .goto 2521,63.13,77.32,15,0
--     .goto 2521,62.97,76.91,15,0
--     .goto 2521,63.8,78.01,30,0
--     .goto 2521,63.16,78.97,30,0
--     .goto 2521,65.37,78.53,40,0
--     .goto 2521,58.85,75.49,30,0
--     .goto 2521,59.05,76.35,30,0
--     .goto 2521,59.8,75.68,30,0
--     .goto 2521,61.4,74.76,40,0
--     .goto 2521,62.61,76.14,40,0
--     >>Kill |cRXP_ENEMY_Skyhopper::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92840 >>Entrega la misión Búsqueda espiritual
    .accept 92834 >>Acepta la misión Avenged Tenfold
    .accept 92860 >>Acepta la misión In Service of Zephras
    .target Elaadrin Evengale::252475
step << Alliance
    #completewith next
    #label Service of Zephras
    *|cRXP_WARN_Equipa el|r |T7810733:0|t[Arco of Hours] << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92860 >>Entrega la misión In Service of Zephras << Alliance
    .turnin 93949 >>Entrega la misión Bugged
    .accept 93320 >>Acepta la misión Defender las torres  << Alliance
    .disablecheckbox
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Service of Zephras
    .goto 2521,65.65,79.27,30,0 << Alliance
    .goto 2521,64.98,77.12,30,0 << Alliance
    .goto 2521,65.93,76.37,8,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Sube la torre
step << Alliance
    #requires Service of Zephras
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92860 >>Entrega la misión In Service of Zephras  << Alliance
    .turnin 93949 >>Entrega la misión Bugged
    .accept 93320 >>Acepta la misión Defender las torres << Alliance
    .target Valennia Stormfist::252383
step << Alliance !Druid
    .isNotOnQuest 94896 -- Aid For The Refugees
    .isOnQuest 93320 -- Tower Defense
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,66.47,76.64,10,0
    .goto 2521,65.36,71.79
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar en el aire] para volar hacia el punto de ruta.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .accept 94896 >>Acepta la misión Ayuda para los refugiados
    .accept 94897 >>Acepta la misión El destino de un ser querido
    .target Ealaane Nimbuswalker::259012
step << Alliance
    .isOnQuest 94897
    .isOnQuest 93320
    .goto 2521,64,74.06
    .cast 1259705 >>Usa |T236219:0|t[Leer línea ley] para 100% de aumento de regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    #completewith next
    >>Mata a |cRXP_ENEMY_Al'Aketh Brawler::270201|r.
    *Despojalos para obtener |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Healer::254596
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,63.59,73.6,25,0
    .goto 2521,64.4,73.23,30,0
    .goto 2521,65.36,71.79,30,0
    .goto 2521,65.76,68.4,30,0
    .goto 2521,69.64,67.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yorana Windyreed|r.
    *|cRXP_WARN_Si hay un Tornado cerca, úsalo para viajar más rápido|r.
    .turnin 93320 >>Entrega la misión Defender las torres
    .accept 92642 >>Acepta la misión Interrumpiendo Logistics
    .accept 92645 >>Acepta la misión Ruptura the Pepillo
    .target Yorana Windyreed::252378
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>Mata a los |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, a los |cRXP_ENEMY_Al'Aketh Preachers::253195|r y a los |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Despojalos para obtener |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>Mata a los |cRXP_ENEMY_Al'Aketh Healers|r y a los |cRXP_ENEMY_Al'Aketh Brawlers|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
step << Alliance !Druid
    #label Commander Belguilos2
    .goto 2521,65.71,65.59,30,0
    .goto 2521,65.84,65.02,15,0
    .goto 2521,65.58,65.63
    >>Mata a |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_en el segundo piso|r dentro de la casa.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance !Druid
    #completewith next
    >>Mata a los |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, a los |cRXP_ENEMY_Al'Aketh Preachers::253195|r, y a los |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Despojalos para obtener |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>Mata a |cRXP_ENEMY_Al'Aketh Brawler::270201|r y a |cRXP_ENEMY_Al'Aketh Sanador::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    .isOnQuest 92834 -- Avenged Tenfold
    .subzoneskip 17675,1 -- East Pylon Watchtower
    -- .subzone 16593
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar on Aire] para volar hacia el dador de misiones.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urs'endris|r.
    .target Urs'endris::255853
    .turnin 94006 >>Entrega la misión The Great Ursera Espíritu
    .accept 94638 >>Acepta la misión Fuerza and Clemencia
step << Alliance Druid
    #completewith Commander Belguilos Druid
    >>Mata a los |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, a los |cRXP_ENEMY_Al'Aketh Preachers::253195|r y a los |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Despojalos para obtener |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #completewith Commander Belguilos Druid
    >>Mata a los |cRXP_ENEMY_Al'Akeths|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    #completewith next
    #label Commander Belguilos Druid
    >>Mata a |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_en el segundo piso|r dentro de la casa.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith Commander Belguilos Druid
    .goto 2521,67.39,63.3,15 >>Cruza la montaña
step << Alliance Druid
    #requires Commander Belguilos Druid
    .goto 2521,65.31,65.33,20,0
    .goto 2521,65.58,65.63
    >>Mata a |cRXP_ENEMY_Commander Belguilos::252666|r |cRXP_WARN_en el segundo piso|r dentro de la casa.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith next
    >>Mata a los |cRXP_ENEMY_Al'Aketh Brawlers::270201|r, a los |cRXP_ENEMY_Al'Aketh Preachers::253195|r y a los |cRXP_ENEMY_Al'Aketh Pillagers::253511|r.
    *Despojalos para obtener |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #loop
    .goto 2521,65.34,65.79,40,0
    .goto 2521,65.43,64.53,40,0
    .goto 2521,64.46,66.11,40,0
    .goto 2521,64.71,67.65,40,0
    .goto 2521,66.59,67.5,40,0
    >>Mata a |cRXP_ENEMY_Al'Aketh Brawler::270201|r y a |cRXP_ENEMY_Al'Aketh Sanador::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yorana Windyreed::252378|r.
    .turnin 92645 >>Entrega la misión Ruptura the Pepillo
    .turnin 92642 >>Entrega la misión Interrumpiendo Logistics
    .accept 92880 >>Acepta la misión Regresar to Valanaar
    .target Yorana Windyreed::252378
step << Alliance
    #completewith next
    #label Return to Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Entrega la misión Regresar to Valanaar << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>Entrega la misión Regresar to Valanaar << Alliance Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Entrega la misión Regresar to Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>Acepta la misión The High Elder's Request
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Return to Valanaar
    .goto 2521,65.58,68.58,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Ve alrededor de la montaña y luego sube la torre
step << Alliance
    #requires Return to Valanaar
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92880,1 >>Entrega la misión Regresar to Valanaar << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>Entrega la misión Regresar to Valanaar << Alliance Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Entrega la misión Regresar to Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>Acepta la misión The High Elder's Request
    .target Valennia Stormfist::252383
step << Alliance
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92881 >>Entrega la misión The High Elder's Request
    .accept 92643 >>Acepta la misión The Turncoat
    .target Talaanis::252476
step << Alliance Paladin/Alliance Priest/Alliance Warlock/Alliance Mage/Alliance Rogue
    #completewith Al'Aketh Assassins Equip Reminder
    +|cRXP_WARN_Equipa el|r |T7792097:0|t[Gran martillo afilado] << Paladin
    +|cRXP_WARN_Equipa la|r |T7798447:0|t[Lanza larga equilibrada] << Priest/Warlock/Mage
    +|cRXP_WARN_Equipa la|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger] |cRXP_WARN_en tu mano secundaria|r. << Rogue
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,66.47,76.61,8,0
    .goto 2521,66.31,76.18,15,0
    .goto 2521,63.14,76.9
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar on Aire] para volar hacia el dador de misiones.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.14,76.9,20,0
    .goto 2521,62.9,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Belann Windwood::256507|r dentro de la casa.
    .vendor 256507 >>Vende basura y repara si es necesario.
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *|cRXP_WARN_Los necesitamos para Cocina más tarde|r.
    .target Belann Windwood::256507
    .skipgossipid 137530
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.96,74.15
    .cast 1259705 >>Usa |T236219:0|t[Leer línea ley] para 100% de aumento de regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
-- Deathskip past 10; might need later
-- step << Alliance
--     .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 98512
--     .isNotOnQuest 98512
--     -- *|cRXP_WARN_Equip the|r |T7792097:0|t[Honed Greathammer] << Alliance Warrior
--     -- *|cRXP_WARN_Equip the|r |T7798447:0|t[Balanced Quarterstaff] << Alliance Hunter/Alliance Mage/Alliance Druid
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Daeann Steelwind::252479|r outside the house.
--     .vendor 252479 >>Vendor trash and repair if needed
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .target Daeann Steelwind::252479
--     .goto 2521,65.4,80.22
--     .skipgossipid 137530
-- step << Alliance
--     -- .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 98512
--     .isNotOnQuest 98512
--     .goto 2521,66.42,83.48
-- -- #ignorecorpse
--     .deathskip >>Jump off the cliff
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
-- step << Horde
--     #completewith next
--     #label BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     #optional
--     #completewith BuggedHordeA
--     .goto 2521,65.93,76.37,8,0
--     .goto 2521,66.46,76.8,5,0
--     .goto 2521,66.43,76.58,5,0
--     .goto 2521,66.43,76.83,5,0
--     .goto 2521,66.31,77.08,5,0
--     .goto 2521,66,76.57,8,0
--     .goto 2521,66.19,76.22,8,0
--     .goto 2521,66.44,76.4,5 >>Climb the tower
-- step << Horde
--     #requires BuggedHordeA
--     #optional
--     .isOnQuest 93949
--     .isQuestComplete 93949
--     .goto 2521,66.18,76.66
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
--     .turnin 93949 >>Turn in Bugged
--     .target Valennia Stormfist::252383
-- step << Horde
--     .abandon 93949 >>Abandon Bugged
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,65.424,71.472,35,0
    .goto 2521,65.905,68.024
    .subzone 16626 >>Sigue la salida de Valanaar
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar on Aire] para volar hacia el dador de misiones.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urs'endris|r.
    .turnin 94006 >>Entrega la misión The Great Ursera Espíritu
    .accept 94638 >>Acepta la misión Fuerza and Clemencia
    .target Urs'endris::255853
-- step << Horde !Druid
--      -- Not sure yet if I want to do this. This saves "only" ~15 seconds
--     .isQuestAvailable 98512
--     .goto 2521,61.221,78.472
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
-- step << Horde Druid
--     .isOnQuest 94638
--     .goto 2521,62.384,64.393
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
step << Alliance
    #label Al'Aketh Assassins Equip Reminder
    .goto 2521,59.719,67.016,35,0 << Druid --Remove if we add deathskips again
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fendaal Windstone|r.
    *|cRXP_WARN_Si hay un Tornado cerca, tócalo para obtener 40% de aumento de velocidad de movimiento durante 5 minutos. Hacer daño elimina el efecto|r.
    .accept 98512 >>Acepta la misión Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Alliance
    #completewith Fendaal Windstone
    >>Mata al |cRXP_ENEMY_Al'Aketh Asesino::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.13,60.26
    >>Sigue la Flecha
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step << Alliance
    .goto 2521,56.05,58.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Dead Cultor|r.
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
    .target Dead Cultist::253372
step << Alliance
    #label Fendaal Windstone
    .goto 2521,56.043,58.785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Dead Cultor::253372|r.
    .target Dead Cultist::253372
    .turnin 92643 >>Entrega la misión The Turncoat
    .accept 92644 >>Acepta la misión Unfortunate News
step << Alliance
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>Mata al |cRXP_ENEMY_Al'Aketh Asesino::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Fendaal Windstone|r.
    .turnin 98512 >>Entrega la misión Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Druid
    .goto 2521,54.284,65.803
    >>Mata a |cRXP_ENEMY_Ur'endra|r.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .goto 2521,56.830,63.121,15,0
    .goto 2521,57.299,63.465,15,0
    .goto 2521,60.250,62.742,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>Salta de la |cRXP_WARN_montaña inferior (no la que ocupas)|r y usa |T132845:0|t[Caminar on Aire] para volar hacia el dador de misiones.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94638 >>Entrega la misión Fuerza and Clemencia
step << Alliance Druid
    #completewith next
    #label Windsong Crawler Meat Druid
    .goto 2521,59.59,66.7,30,0
    >>Mata |cRXP_ENEMY_Windsong Crawlers::254588|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Windsong Reptador Carne|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid
    .goto 2521,57.25,60.92,50 >>Ve alrededor de las montañas
step << Alliance Druid
    #requires Windsong Crawler Meat Druid
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Mata |cRXP_ENEMY_Windsong Crawlers::254588|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Windsong Reptador Carne|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
-- step << Horde Druid
--     #completewith next
--     #label CrawlerMeatDruidA
--     .goto 2521,59.59,66.7,30,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
-- step << Horde Druid
--     #completewith CrawlerMeatDruidA
--     .goto 2521,57.25,60.92,50 >>Go around the mountains
-- step << Horde
--     #requires CrawlerMeatDruidA << Druid
--     #loop
--     .goto 2521,53.56,59.17,35,0
--     .goto 2521,52.91,58.56,35,0
--     .goto 2521,52.08,59.23,35,0
--     .goto 2521,52.49,57.3,35,0
--     .goto 2521,53.55,55.55,35,0
--     .goto 2521,54.3,57.94,35,0
--     >>Kill |cRXP_ENEMY_Windsong Crawlers::254588|r. Loot them for |T133972:0|t[|cRXP_LOOT_Windsong Crawler Meat|r].
--     .complete 93317,1 --6/6 Windsong Crawler Meat
--     .mob Windsong Crawler::254588
step << Alliance
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Mata |cRXP_ENEMY_Windsong Crawlers::254588|r. Despójalos para obtener |T133972:0|t[|cRXP_LOOT_Windsong Reptador Carne|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
-- step << Horde
--     .isQuestAvailable 93159 -- The Strange Hermit
--     .goto 2521,52.790,57.628
--     .cast 1259686 >>Use |T1029587:0|t[Skysight] for the 10% movement speed buff.
--     .cooldown spell,1259686,>0,1
-- step << Horde
--     --@THIDDI: Not sure if worth it.
--     #loop
--     .goto 2521,53.029,51.423,35,0
--     .goto 2521,53.621,50.493,35,0
--     .goto 2521,52.878,49.641,35,0
--     .goto 2521,53.129,47.738,35,0
--     .goto 2521,52.528,45.922,35,0
--     .goto 2521,51.574,46.567,35,0
--     .goto 2521,49.511,45.931,35,0
--     .goto 2521,49.917,44.806,35,0
--     .goto 2521,50.642,44.296,35,0
--     >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Construct Parts|r.
--     .complete 93737,3 --|1/1 Obtain Enchanted Gyrozephyr from Windsong Lake
step << Alliance
    #completewith next
    .isQuestAvailable 93159 -- The Strange Hermit
    .goto 2521,55.89,56.12,40,0
    .goto 2521,57.17,55.26,40,0
    .goto 2521,57.86,54.69,40,0
    .goto 2521,58.61,52.77,30 >>Ve más allá de la cascada y alrededor de la montaña.
    *|cRXP_WARN_Si ves un Tornado, úsalo para viajar más rápido|r.
step << Horde
    .isQuestAvailable 93159 -- The Strange Hermit
    #completewith next
    .goto 2521,59.444,67.060,45,0 << Druid
    .goto 2521,58.72,52.77,30 >>Rodea las montañas y cruza el puente.
    *|cRXP_WARN_Si ves un Tornado, úsalo para viajar más rápido|r.
-- step
--     .isQuestAvailable 93159 -- The Strange Hermit
--     .subzoneskip 16631 -- Shadowgale Forest
--     .goto 2521,58.24,51.21,20,0
--     .goto 2521,57.77,52.06
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Brother Zendraas::272045|r.
--     .vendor 272045 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     .skipgossip 272045,1,1,1,2
--     .skipgossipid 141672
--     .target Brother Zendraas::272045
--     --1: I haven't met too many cultists that haven't immediately tried to kill me. What's your story?
--     --1: What trade would that be?
--     --1: I'll think about it. (This option returns no gossip ID and unlocks the vendor.)
--     --2: Show me what you have available for trade.
step << Warrior
    .goto 2521,56.56,50.36
    >>Mata |cRXP_ENEMY_Zaal Escudo de tormenta::257196|r. Despójalo para obtener el |T134959:0|t[|cRXP_LOOT_Skybreaker Baluarte|r].
    .complete 94003,1 --|1/1 Skybreaker Bulwark
    .mob Zaal Stormshield::257196
-- step << Alliance
--     .isQuestAvailable 92850
--     .subzoneskip -- Shadowgale Forest (subzone ID missing)
--     .goto 2521,55.12,50.55
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step << Alliance
    #completewith Learn
    >>Mata |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Despójales para obtener las |T1508517:0|t[|cRXP_LOOT_Shriekling Garfas|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    .goto 2521,58.81,46.74,30,0
    .goto 2521,58.81,43.57,40 >>Cruza el puente.
step
    #label Learn
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .accept 93159 >>Acepta la misión The Strange Hermit.
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .turnin 93159 >>Entrega la misión The Strange Hermit.
    .accept 93160 >>Acepta la misión The Forest's Recompensa.
    .accept 93172 >>Acepta la misión Liberar the Hollows.
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    .train 4036,3 -- Engineering Trained
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .accept 98285 >>Acepta la misión Campamento 101: Ingeniería
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    #completewith Abandoned Belongings1
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Seeds|r
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith Abandoned Belongings1
    >>Mata |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Despójales para obtener las |T1508517:0|t[|cRXP_LOOT_Shriekling Garfas|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    #hidewindow
    #label Abandoned Belongings1
    .complete 94896,1,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith Resaan's Heirloom
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Mata |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cajones|r
    .complete 94896,1 --8/8 Abandoned Belongings
step
    #label Resaan's Heirloom
    .goto 2521,56.83,33.99,30,0
    .goto 2521,56.75,33.3,25,0
    .goto 2521,57.25,33.37,25,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Resaan Nimbuswalker|r.
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker::259013
step << Alliance
    #completewith Abandoned BelongingsZ
    >>Mata |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #completewith Abandoned BelongingsZ
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cajones|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Abandoned BelongingsZ
    .subzoneskip 16833,1 -- Ruins of Ban'aethal
    .goto 2521,56.61,29.26,20,0
    .goto 2521,58.06,28.2,30,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.14,30.47,10,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.1,33.38
    .cast 1259705 >>Usa |T236219:0|t[Leer línea ley] para 100% de aumento de regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step
    #completewith Wind Hollow
    #hidewindow
    #loop
    .goto 2521,59.08,34.75,30,0
    .goto 2521,57.26,33.48,30,0
    .goto 2521,59.15,32.25,30,0
    .goto 2521,59.06,31.69,30,0
    .goto 2521,58.82,31.1,20,0
    .goto 2521,58.33,31.61,30,0
    .goto 2521,58.47,32.63,30,0
    .goto 2521,57.55,32.06,30,0
    .goto 2521,57.55,31.01,20,0
    .goto 2521,57.81,31.07,20,0
    .goto 2521,58.14,30.47,20,0
    .goto 2521,57.91,26.83,30,0
    .goto 2521,58.06,28.2,30,0
    .goto 2521,56.61,29.26,20,0
    +1
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith next
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Mata |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde--10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Cajones|r
    .complete 94896,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #label Wind Hollow
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Mata |cRXP_ENEMY_Wind Hollows::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step << Alliance
    #completewith Unnerving Silence
    >>Mata |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Despójales para obtener las |T1508517:0|t[|cRXP_LOOT_Shriekling Garfas|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Seeds|r |cRXP_WARN_especialmente alrededor de los árboles|r.
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .target Elegael Thornpaw::257944
    .turnin 94484 >>Entrega la misión Unnerving Silencio.
    .accept 94485 >>Acepta la misión Lágrimas of the Lady.
    .accept 94486 >>Acepta la misión Plumas for Lazo.
    .accept 94487 >>Acepta la misión Unwanted and Indigno.
step << Alliance
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Tear Moss|r |cRXP_WARN_en los árboles|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Alliance
    #completewith next
    >>Mata a los |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r y a los |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r.
    *Despójalos para obtener |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r] y |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r].
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step << Alliance
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vayn Moongaze::254151|r.
    .accept 93165 >>Acepta la misión Clemencia Falls on Deaf Orejas
    .target Vayn Moongaze::254151
step
    #label Unnerving Silence
    #loop
    .goto 2521,63.04,37.12,40,0
    .goto 2521,61.99,35.62,30,0
    .goto 2521,61.97,36.71,30,0
    .goto 2521,62.47,37.3,40,0
    .goto 2521,62.96,39.3,40,0
    .goto 2521,63.33,38.01,35,0
    .goto 2521,64.14,39.18,40,0
    .goto 2521,65.7,36.82,40,0
    .goto 2521,65.63,35.57,40,0
    >>Mata a los |cRXP_ENEMY_Al'Aketh Footsoldiers|r y a los |cRXP_ENEMY_Al'Aketh Trotatormentas|r.
    *Despójalos para obtener |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r], |T133856:0|t[|cRXP_LOOT_Al'Aketh Cultist's Orejas|r] y |T1379232:0|t[|cRXP_LOOT_Al'Aketh Windstone Charms|r]. << Alliance
    *Despójales para obtener los |T4622283:0|t[|cRXP_LOOT_Bloody Heirlooms|r]. << Horde
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 << Alliance --10/10 Al'Aketh Windstone Charm
    .complete 93165,1 << Alliance --10/10 Al'Aketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    #hidewindow
    #completewith ToHermit << Alliance
    #completewith ForestHollowsA << Horde
    #loop
    .goto 2521,62.83,38.25,35,0
    .goto 2521,62.08,36.7,35,0
    .goto 2521,61.17,35.44,35,0
    .goto 2521,60.82,37.23,35,0
    .goto 2521,60.33,37.46,35,0
    .goto 2521,60.9,38.88,35,0
    .goto 2521,59.79,38.95,35,0
    .goto 2521,59.9,40.38,35,0
    .goto 2521,58.53,39.85,35,0
    .goto 2521,57.94,39.99,35,0
    .goto 2521,57.36,40.86,35,0
    .goto 2521,57.24,42.8,35,0
    .goto 2521,55.38,42.17,35,0
    .goto 2521,54.55,42.17,35,0
    .goto 2521,55.59,39.23,35,0
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 93160,1 --8/8 Zephyrseed
    .complete 94485,1 --8/8 Lady's Tear Moss
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith ToHermit << Alliance
    #completewith ForestHollowsB << Horde
    >>Mata |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
    *Despójales para obtener las |T1508517:0|t[|cRXP_LOOT_Shriekling Garfas|r] y las |T132927:0|t[Pristine Shriekling Plumas]. << Alliance
    *Despójales para obtener las |T132927:0|t[Pristine Shriekling Plumas]. << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Semillas|r |cRXP_WARN_especialmente alrededor de los árboles|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Tear Moss|r |cRXP_WARN_en los árboles|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #completewith ForestHollowsB
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Tear Moss|r |cRXP_WARN_en los árboles|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #label ForestHollowsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en las |cRXP_PICK_Semillas|r |cRXP_WARN_especialmente alrededor de los árboles|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Horde
    #label ForestHollowsB
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 93160 >>Entrega la misión The Forest's Recompensa.
    .turnin 93172 >>Entrega la misión Liberar the Hollows.
    .target Strange Hermit::251684
-- step << Alliance
--     --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
--     #label Shadowgale Shrieklings
--     >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
--     *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[Pristine Shriekling Feathers].
--     .complete 92741,1 --8/8 Shriekling Talons
--     .complete 94486,1 --20/20 Pristine Shriekling Feathers
--     .mob +Shadowgale Shriekling::256092
step << Alliance
    #label ToHermit
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 93160 >>Entrega la misión The Forest's Recompensa.
    .turnin 93172 >>Entrega la misión Liberar the Hollows.
    .target Strange Hermit::251684
step
    .train 4036,3 -- Engineering Trained
    .isQuestComplete 98285 -- Camping 101: Engineering
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Strange Hermit::251684|r.
    .turnin 98285 >>Entrega la misión Campamento 101: Ingeniería.
    .target Strange Hermit::251684
step
    #hidewindow
    #completewith Pristine Shriekling Feathers
    #loop
    .goto 2521,54.93,38.11,40,0
    .goto 2521,55.92,36.83,40,0
    .goto 2521,57.49,37.79,40,0
    .goto 2521,58.93,37.91,40,0
    .goto 2521,60.27,38.12,40,0
    .goto 2521,61.61,36.4,40,0
    .goto 2521,61.41,39.14,40,0
    .goto 2521,59.67,40.26,40,0
    +1
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith next
    >>Mata |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Despójales para obtener las |T1508517:0|t[|cRXP_LOOT_Shriekling Garfas|r] y las |T132927:0|t[Pristine Shriekling Plumas]. << Alliance
    >>Mata |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Despójales para obtener las |T132927:0|t[Pristine Shriekling Plumas]. << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Tear Moss|r
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #label Pristine Shriekling Feathers
    >>Mata |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Despójales para obtener las |T1508517:0|t[|cRXP_LOOT_Shriekling Garfas|r] y las |T132927:0|t[Pristine Shriekling Plumas]. << Alliance
    >>Mata |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Despójales para obtener las |T132927:0|t[Pristine Shriekling Plumas]. << Horde
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94485 >>Entrega la misión Lágrimas of the Lady
    .turnin 94487 >>Entrega la misión Unwanted and Indigno
    .turnin 94486 >>Entrega la misión Plumas for Lazo
    .accept 94488 >>Acepta la misión The Ties That Vincular
    .accept 94489 >>Acepta la misión The Wounds of Traición
    .target Elegael Thornpaw::257944
step
    .isQuestAvailable 94490 -- Ripped Missive
    .goto 2521,65.54,36.3
    >>Mata a |cRXP_ENEMY_Commander Haalien::253622|r. Despójalo para obtener |T134161:0|t[|cRXP_LOOT_Severed Cabeza|r] y |T135332:0|t[Ripped Missive].
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
    .mob Commander Haalien::253622
    .collect 265476,1 -- Ripped Missive
step
    #completewith next
    >>Usa la |T134332:0|t[Ripped Missive] de tu inventario para comenzar la misión.
    .accept 94490 >>Acepta la misión Ripped Missive
    .use 265476
step << Alliance
    .goto 2521,63.75,36.44,30,0
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vayn Moongaze::254151|r en la entrada de la cueva.
    .turnin 93165 >>Entrega la misión Clemencia Falls on Deaf Orejas
    .target Vayn Moongaze::254151
step
    #loop
    .goto 2521,63.93,33.76,20,0
    .goto 2521,63.69,32.49,20,0
    .goto 2521,64,31.97,25,0
    .goto 2521,64.52,31.88,25,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Druids|r
    .complete 94489,1,2 --7/7 Injured Druids healed
    .target Neyasteel Mossmender::258275
    .target Bryaes Galechaser::258277
step
    #completewith next
    #hidewindow
    .goto 2521,64.703,30.067,20 >>1
step
    #loop
    .goto 2521,65.55,31.9,15,0
    .goto 2521,66.13,32.18,15,0
    .goto 2521,65.79,33,15,0
    .goto 2521,65.93,33.55,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Druidas|r.
    *|cRXP_WARN_No te muevas durante la interacción o podría no otorgarte crédito|r.
    .complete 94489,1,4 --7/7 Injured Druids healed
    .target Mithraless Sterngale::258288
    .target Baeo Sharpstrike::258289
step
    #loop
    .goto 2521,64.98,34.96,10,0
    .goto 2521,64.51,34.89,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en los |cRXP_PICK_Druids|r
    .complete 94489,1,7 --7/7 Injured Druids healed
    .target Nayeela Snarlfang::258138
    .target Telenos Leafwhisper::258137
    .target Naaleos Leafwhisper::258134
step
    .goto 2521,64.49,34.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en |cRXP_PICK_Jorel Windsinger|r dentro de la cueva.
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
    .target Jorel Windsinger::258130
step
    #completewith next
    #label Wounds of Betrayal
    .goto 2521,63.93,34.5,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94489 >>Entrega la misión The Wounds of Traición
    .target Elegael Thornpaw::257944
step
    #completewith Wounds of Betrayal
    .goto 2521,61.77,39.14,150 >>Sal de la cueva
step
    #requires Wounds of Betrayal
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elegael Thornpaw::257944|r.
    .turnin 94489 >>Entrega la misión The Wounds of Traición
    .turnin 94490 >>Entrega la misión Ripped Missive
    .turnin 94488 >>Entrega la misión The Ties That Vincular
    .accept 94491 >>Acepta la misión The Destino of the Den
    .target Elegael Thornpaw::257944
step
    .isOnQuest 94491 << Alliance -- The Fate of the Den
    .isOnQuest 94896 << Horde -- Aid For The Refugees
    .subzoneskip 16631,1 -- Shadowgale Forest
    .hs >>Usa tu Piedra de Hogar para ir a Valanaar.
    .use 6948
step
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 94896
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
    .vendor 255940 >>Vende la basura
    .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
    *No vendas |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeño Eggs] ni |T133972:0|t[Carne de Strider]. << Alliance
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Carne de Strider]. << Horde
    *|cRXP_WARN_Los necesitaremos para Cocina después|r.
    .skipgossipid 137078
    .target Donaal Downbreeze::255940
step << Warrior Alliance
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .target Seena Skybreaker::252377
    .turnin 94003 >>Entrega la misión El Rompecielos Baluarte
step << Warrior Alliance
    .isQuestAvailable 94491 -- The Fate of the Den
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 1160 >>Aprende |Tinterface/icons/ability_warrior_warcry.blp:0|t[Grito desmoralizador]
    .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
    .train 6572 >>Aprende |Tinterface/icons/ability_warrior_revenge.blp:0|t[Revancha]
    .train 6574,1 -- Revenge (Rank 2) Not Trained
    .train 1310185 >>Aprende |T136031:0|t[Maestría táctica]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.45
    .xp <14,1
-- step << Alliance Rogue
--     .goto 2521,59.9,72.48
--     *|cRXP_WARN_Use the Interact Key through the Wall|r
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
--     .train 1766 >>Train |T132219:0|t[Kick]
--     .train 3127 >>Train |T132269:0|t[Parry]
--     .skipgossipid 136810
--     .target Eltheen Nightbreeze::252379
--     .money <0.16
--     .xp <12,1
step << Alliance Rogue
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.91,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    .train 1766 >>Aprende |T132219:0|t[Patada]
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.16
    .xp <12,1
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
    .train 14281 >>Aprende |T132218:0|t[Disparo Arcano (Rank 2)]
    .target Quel'ana Quickgale::252389
    .money <0.08
    .xp <12,1
step << Alliance Warrior
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 5242 >>Aprende |T132333:0|t[Grito de batalla (Rank 2)]
    .train 7384 >>Aprende |T132223:0|t[Abrumar]
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 72 >>Aprende |T132357:0|t[Azote de escudo]
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.3
    .xp <12,1
step << Alliance
    .goto 2521,63.55,73.45,25,0
    .goto 2521,63.99,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .turnin 94491 >>Entrega la misión The Destino of the Den
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Naeluna Alivio presto::254081|r.
    .train 5229 >>Aprende |T132126:0|t[Enfurecer]
    .train 8936 >>Aprende |T136085:0|t[Recrecimiento]
    .target Naeluna Swiftmend::254081
    .money <0.16
    .xp <12,1
step
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94896 >>Entrega la misión Ayudar For The Refugees
    .turnin 94897 >>Entrega la misión The Destino of a Amado Uno
    .target Ealaane Nimbuswalker::259012
step << Alliance
    #completewith next
    #label Unfortunate News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92644 >>Entrega la misión Unfortunate News
    .accept 94568 >>Acepta la misión The Cult's True Plans
    .disablecheckbox
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Unfortunate News
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Sube la torre
step << Alliance
    #requires Unfortunate News
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .turnin 92644 >>Entrega la misión Unfortunate News
    .accept 94568 >>Acepta la misión The Cult's True Plans
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith next
    #label Talaanis Shadowsong
    >>|cRXP_WARN_Espera al Roleplay|r.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Talaanis Shadowsong
    .goto 2521,66.18,76.51
    .gossipoption 140111 >>Habla con |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r.
    .timer 50,RP
step << Alliance
    #requires Talaanis Shadowsong
    .goto 2521,66.17,76.52
    >>|cRXP_WARN_Espera al Roleplay|r.
    -- *Cook |T132834:0|t[Herb Baked Eggs] and |T133974:0|t[Charred Wolf Meat] if you have the required materials.
    -- *Otherwise, craft any items you can using your other professions.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Talaanis Shadowsong::252476|r |cRXP_WARN_junto a ti|r.
    .turnin 94568 >>Entrega la misión The Cult's True Plans
    .accept 92640 >>Acepta la misión Tiempos desesperados
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist::252383
    .skipgossipid 137096
    .skipgossipid 137095
step << Alliance
    .isOnQuest 92640 -- Desperate Times
    .isQuestNotComplete 92640 -- Desperate Times
    .goto 2521,66.49,76.64,8,0
    .goto 2521,63.33,78.16
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar en el aire] para volar hacia el punto de ruta.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .goto 2521,63.33,78.16,30,0
    .goto 2521,63.04,77.53,30,0
    .goto 2521,62.31,78.27,30,0
    .goto 2521,62.13,79.02,30,0
    .goto 2521,60.68,80.11,30,0
    .goto 2521,59.15,79.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .complete 92640,2 --1/1 Recruit the Windshapers
    .skipgossipid 136542
    .skipgossipid 136541
    .mob Ayessa Dawnsinger::251968
step << Alliance
    .goto 2521,59.94,77.92,30,0
    .goto 2521,61.45,77.15,30,0
    .goto 2521,62.13,76.85,30,0
    .goto 2521,63.35,78.58,30,0
    .goto 2521,66.34,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Iaadaria Bitterwind::253004|r.
    .turnin 92741 >>Entrega la misión Unwelcome Visitantes
    .target Iaadaria Bitterwind::253004
step << Alliance
    .goto 2521,66.54,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.628,79.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92834 >>Entrega la misión Avenged Tenfold
    .target Elaadrin Evengale::252475
step << Alliance Mage
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Anathamaas Aetherwind::252373|r.
    .train 145 >>Aprende |T135812:0|t[Bola de Fuego (Rank 3)]
    .train 604 >>Aprende |T136006:0|t[Atenuar magia]
    -- .train 597 >>Train |T133952:0|t[Conjure Food (Rank 2)]
    .train 130 >>Aprende |T135992:0|t[Caída lenta]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
    .money <0.24
    .xp <12,1
step << Alliance
    #completewith next
    #label Prepare for Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92640 >>Entrega la misión Tiempos desesperados
    .accept 93065 >>Acepta la misión Prepárate para la batalla
    .disablecheckbox
    .target Valennia Stormfist::252383
step << Alliance
    #completewith Prepare for Battle
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,5,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Sube la torre
step << Alliance
    #requires Prepare for Battle
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valennia Stormfist::252383|r.
    .turnin 92640 >>Entrega la misión Tiempos desesperados
    .accept 93065 >>Acepta la misión Prepárate para la batalla
    .target Valennia Stormfist::252383
step << Alliance
    .isQuestNotComplete 93065 -- Prepare for Battle
    .isOnQuest 93065 -- Prepare for Battle
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,66.49,76.64,8,0
    .goto 2521,66.39,76.26,10,0
    .goto 2521,63.9,74.16
    .cast 1259416 >>Salta de la montaña y usa |T132845:0|t[Caminar en el aire] para volar hacia el punto de ruta.
    .cooldown spell,1259416,>0,1
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93065 -- Prepare for Battle
    .goto 2521,63.9,74.16
    .cast 1259705 >>Usa |T236219:0|t[Leer línea ley] para 100% de aumento de regeneración pasiva de Maná y Salud.
    .cooldown spell,1259705,>0,1
    .usespell 1259705
step << Alliance
    .goto 2521,63.99,74.1,40,0
    .goto 2521,61.15,70.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Valennia Stormfist::253844|r.
    *|cRXP_WARN_Si hay un Tornado cerca, úsalo para viajar más rápido|r.
    .complete 93065,1 --|1/1 Find Valennia on the Road
    .turnin 93065 >>Entrega la misión Prepárate para la batalla
    .target Valennia Stormfist::253844
step << Alliance
    .goto 2521,60.95,73.17,15,0
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyalah Brightfire::257006|r dentro de la casa.
    .turnin 93317 >>Entrega la misión Cangrejo Season
    .target Nyalah Brightfire::257006

--Discovery Route
-- step << Alliance
--     .goto 2521,61.15,70.93
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist|r.
--     .accept 92947 >>Accept Making Our Move
--     .target Valennia Stormfist
-- step << Alliance
--     #completewith next
--     #label Al'Aketh Guardian
--     .goto 2521,59.58,66.41,30,0
--     .goto 2521,58.98,60.8,30,0
--     >>Kill |cRXP_ENEMY_Al'Aketh Guardian|r.
--     .complete 92947,1 --8/8 Al'Aketh Guardian slain
--     .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
--     .complete 92947,3 --8/8 Al'Aketh Blademaster slain
--     .mob Al'Aketh Guardian
-- step << Alliance
--     #completewith Al'Aketh Guardian
--     .goto 2521,59.1,52.83,80 >>Cross the bridge
-- step << Alliance
--     #requires Al'Aketh Guardian
--     #loop
--     .goto 2521,59.78,52.23,40,0
--     .goto 2521,60.08,51.67,40,0
--     .goto 2521,61.05,52.26,40,0
--     .goto 2521,62.75,52.56,40,0
--     .goto 2521,62.25,49.01,40,0
--     .goto 2521,63.14,48.55,40,0
--     .goto 2521,64.03,46.25,40,0
--     .goto 2521,59.91,49.6,40,0
--     >>Kill |cRXP_ENEMY_Al'Akeths|r.
--     *|cRXP_WARN_Prioritize the |cRXP_ENEMY_Guardians|r|r
--     .complete 92947,1 --8/8 Al'Aketh Guardian slain
--     .complete 92947,2 --8/8 Al'Aketh Spiritcaller slain
--     .complete 92947,3 --8/8 Al'Aketh Blademaster slain
--     .mob Al'Aketh Guardian
--     .mob Al'Aketh Blademaster
--     .mob Al'Aketh Spiritcaller
-- step << Alliance
--     #completewith next
--     #label Hyusaa Quickbreeze
--     .goto 2521,61.98,50.42,30,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
--     .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
--     .target Hyusaa Quickbreeze
-- step << Alliance
--     #completewith Hyusaa Quickbreeze
--     .goto 2521,63.79,50.55,80 >>Take the stairs to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r
-- step << Alliance
--     #requires Hyusaa Quickbreeze
--     .goto 2521,63.79,50.55
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Hyusaa Quickbreeze|r.
--     .complete 92947,4 --1/1 Report to Hyusaa Quickbreeze
--     .turnin 92947 >>Turn in Making Our Move
--     .accept 93958 >>Accept The Inner Sanctum
--     .target Hyusaa Quickbreeze
-- step << Alliance
--     .goto 2521,66.63,79.95
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93089 >>Turn in What Comes Next
--     .accept 94946 >>Accept The Magical City of Dalaran
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .accept 92709 >>Accept A Grand Adventure
--     .timer 70, Talk RP
--     .target Elaadrin Evengale
-- step << Alliance
--     *Return |cRXP_FRIENDLY_Elaadrin Evengale|r early enough to reach her before the timer ends.
--     .complete 92709,1 --1/1 Listen to Elaadrin
--     .mob skyhopper
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 92709 >>Turn in A Grand Adventure
--     .target Elaadrin Evengale
-- step << Alliance
--     #completewith next
--     #label The Inner Sanctum
--     .goto 2521,65.35,50.33,30,0
--     .goto 2521,66.91,50.05,30,0
--     .goto 2521,66.85,50.56,10,0
--     .goto 2521,66.83,49.89,15,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
--     .target Valennia Stormfist::253590
--     .turnin 93958 >>Turn in The Inner Sanctum
--     .accept 93835 >>Accept Confront Lorthuna
--     .disablecheckbox
-- step << Alliance
--     #completewith The Inner Sanctum
--     .goto 2521,66.14,49.15,30 >>Take the spiral staircase
-- step << Alliance
--     #requires The Inner Sanctum
--     .goto 2521,65.191,50.352
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Valennia Stormfist::253590|r.
--     .target Valennia Stormfist::253590
--     .turnin 93958 >>Turn in The Inner Sanctum
--     .accept 93835 >>Accept Confront Lorthuna
-- step << Alliance
--     .subzoneskip 16679,1
--     .goto 2521,65.55,50.35
--     .subzone 16630 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
-- step << Alliance
--     .subzoneskip 16630,1
--     .goto 2521,69.11,51.19,10,0
--     .goto 2521,69.6,51.64,10,0
--     .goto 2521,70.04,51.63,10,0
--     .goto 2521,71.24,51.04,10,0
--     .goto 2521,74.17,52.57,290 >>Go around the plateau and take the windstream to |cRXP_FRIENDLY_Elaadrin Evengale|r
--     *|cRXP_WARN_If the windstream is not active, wait for it to appear|r
-- step << Alliance
--     .subzoneskip 16630,1
--     #completewith next
--     .gossipoption 137230 >>Talk to |cRXP_FRIENDLY_Elaadrin Evengale|r to begin the event.
--     .timer 117,RP
--     *|cRXP_WARN_Another player may have already started it|r
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,74.16,52.54,25,0
--     .goto 2521,74.48,53.92,25,0
--     .goto 2521,75.07,53.15
--     >>Follow |cRXP_FRIENDLY_Elaadrin Evengale|r. Kill |cRXP_ENEMY_Baron Anvillaxx|r and the |cRXP_ENEMY_Malevolent Storms|r that attack.
--     .complete 93835,1 --1/1 Confront Lorthuna
--     .skipgossipid 137230
--     .mob Baron Anvillaxx
--     .mob Malevolent Storm
-- step << Alliance
--     .goto 2521,75.09,53.25
--     .subzoneskip 16630,1
--     .subzone 16638 >>|TInterface/cursor/crosshair/interact.blp:20|tClick on the |cRXP_PICK_Portal|r
-- step << Alliance
--     .goto 2521,66.63,79.93
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93835 >>Turn in Confront Lorthuna
--     .accept 94369 >>Accept The Fate of Zephras
--     .target Elaadrin Evengale
-- step << Alliance
--     #completewith next
--     #label Fate of Zephras
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
--     .complete 94369,1 --1/1 Speak with Talaanis Shadowsong
--     .turnin 94369 >>Turn in The Fate of Zephras
--     .accept 93089 >>Accept What Comes Next
--     .target Talaanis Shadowsong
-- step << Alliance
--     #completewith Fate of Zephras
--     .goto 2521,65.65,79.27,30,0
--     .goto 2521,64.98,77.12,30,0
--     .goto 2521,65.93,76.37,5,0
--     .goto 2521,66.46,76.8,5,0
--     .goto 2521,66.43,76.58,5,0
--     .goto 2521,66.43,76.83,5,0
--     .goto 2521,66.31,77.08,5,0
--     .goto 2521,66,76.57,8,0
--     .goto 2521,66.19,76.22,8,0
--     .goto 2521,66.44,76.4,5 >>Climb the tower
-- step << Alliance
--     #requires Fate of Zephras
--     .goto 2521,66.18,76.51
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Talaanis Shadowsong|r.
--     .complete 94369,1 --|1/1 Speak with Talaanis Shadowsong
--     .turnin 94369 >>Turn in The Fate of Zephras
--     .accept 93089 >>Accept What Comes Next
--     .target Talaanis Shadowsong
-- step << Alliance
--     .isOnQuest 93089
--     .goto 2521,66.47,76.66,8,0
--     .goto 2521,66.63,79.95
--     .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the questgiver.
--     .cooldown spell,1259416,>0,1
--     .usespell 1259416
-- step << Alliance
--     .goto 2521,66.63,79.95
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93089 >>Turn in What Comes Next
--     .accept 94946 >>Accept The Magical City of Dalaran
--     .target Elaadrin Evengale


-- step << Warrior
--     .goto 2521,59.89,72.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
--     .train 1160 >>Train your level 14 class spells
--     .skipgossipid 136813
--     .target Seena Skybreaker::252377
--     .xp <14,1
-- step << Rogue
--     .goto 2521,59.55,73.3,30,0
--     .goto 2521,59.91,72.48
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
--     .train 1758 >>Train your level 14 class spells
--     .skipgossipid 136810
--     .target Eltheen Nightbreeze::252379
--     .xp <14,1
-- step << Hunter
--     .goto 2521,59.571,72.639
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Quel'ana Quickgale::252389|r.
--     .train 1513 >>Train your level 14 class spells
--     .skipgossipid 136808
--     .target Quel'ana Quickgale::252389
--     .xp <14,1
-- step << Shaman
--     .goto 2521,58.313,78.499
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sessaria Skystride::252382|r.
--     .train 8045 >>Train your level 14 class spells
--     .skipgossipid 136811
--     .target Sessaria Skystride::252382
--     .xp <14,1
-- step << Druid
--     .goto 2521,63.99,75.09
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
--     .train 5178 >>Train your level 14 class spells
--     .skipgossipid 136805
--     .target Lotheluum Starbreeze::252359
--     .xp <14,1

step << Horde
    >>Abandona las misiones que falten de "Campamento 101".
    *Haz clic en la macro en el marco de objetos activos para abandonarlas todas a la vez.
    .abandon 97970 >>Abandona la misión Campamento 101: Minería
    .abandon 97971 >>Abandona la misión Campamento 101: Desollejo
    .abandon 96646 >>Abandona la misión Campamento 101: Cocina
    .abandon 97968 >>Abandona la misión Campamento 101: Herboristería
    .abandon 97965 >>Abandona la misión Campamento 101: Primeros auxilios
    .abandon 97967 >>Abandona la misión Campamento 101: Pesca
    .abandon 97963 >>Abandona la misión Campamento 101: Alquimia
    .abandon 97964 >>Abandona la misión Campamento 101: Herrería
    .abandon 97973 >>Abandona la misión Campamento 101: Sastrería
    .abandon 98286 >>Abandona la misión Campamento 101: Encantamiento
    .abandon 97969 >>Abandona la misión Campamento 101: Peletería
    .abandon 98285 >>Abandona la misión Campamento 101: Ingeniería
    .abandon 93318 >>Abandona la misión WANTED: Vulgara the Insaciable
    .macro Abandon 101,130722 >>Abandona 101
step << Alliance
    #completewith Magical City of Dalaran
    >>Abandona las misiones que falten de "Campamento 101".
    *Haz clic en la macro en Objetos Activos para abandonarlos todos a la vez.
    .abandon 97970 >>Abandona la misión Campamento 101: Minería
    .abandon 97971 >>Abandona la misión Campamento 101: Desollejo
    .abandon 96646 >>Abandona la misión Campamento 101: Cocina
    .abandon 97968 >>Abandona la misión Campamento 101: Herboristería
    .abandon 97965 >>Abandona la misión Campamento 101: Primeros auxilios
    .abandon 97967 >>Abandona la misión Campamento 101: Pesca
    .abandon 97963 >>Abandona la misión Campamento 101: Alquimia
    .abandon 97964 >>Abandona la misión Campamento 101: Herrería
    .abandon 97973 >>Abandona la misión Campamento 101: Sastrería
    .abandon 98286 >>Abandona la misión Campamento 101: Encantamiento
    .abandon 97969 >>Abandona la misión Campamento 101: Peletería
    .abandon 98285 >>Abandona la misión Campamento 101: Ingeniería
    .abandon 93318 >>Abandona la misión SE BUSCA: Vulgara, la Insaciable
    .macro Abandon 101,130722 >>Abandona la misión 101
--discovery
-- step << Alliance
--     .goto 2521,66.63,79.95
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 93089 >>Turn in What Comes Next
--     .accept 94946 >>Accept The Magical City of Dalaran
--     .target Elaadrin Evengale
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .accept 92709 >>Accept A Grand Adventure
--     .timer 70, Talk RP
--     .target Elaadrin Evengale
-- step << Alliance
--     *Return |cRXP_FRIENDLY_Elaadrin Evengale|r early enough to reach her before the timer ends.
--     .complete 92709,1 --1/1 Listen to Elaadrin
--     .mob skyhopper
-- step << Alliance
--     .goto 2521,66.63,79.94
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elaadrin Evengale|r.
--     .turnin 92709 >>Turn in A Grand Adventure
--     .target Elaadrin Evengale

step << Alliance
    #completewith next
    +|cRXP_WARN_El zepelín puede llegar en cualquier momento durante su ciclo de 6 minutos. Mientras esperas, completa lo siguiente:|r
    *Vende la basura y repara tu equipo.
    *Cocina comida y obtén beneficios de fogata para después.
    *Equipa mejoras y selecciona talentos.
step << Alliance
    #completewith next
    #label Magical City of Dalaran
    -- .goto 2521,65.82,81.18,15,0
    -- .goto 2521,65.44,80.46,15,0
    -- .goto 2521,65.25,81.64,25,0
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Acepta la misión Welcome to Azeroth
    .skipgossipid 137530
    .target Denaaris Stargale::259084
step << Alliance
    #completewith Magical City of Dalaran
    .goto 2521,65.81,83.44
    .zoneskip 1416
    .zone 1424 >>Toma el zepelín hacia Dalaran
step << Alliance
    #requires Magical City of Dalaran
    .goto 1416/0,438.93,448.88
    >>|cRXP_WARN_No saltes del zepelín demasiado pronto, ya que podrías ser empujado de la plataforma|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Denaaris Stargale::259084|r.
    .target Denaaris Stargale::259084
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Acepta la misión Welcome to Azeroth
step << Alliance Druid
    .goto 1416/0,385.700,385.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Archmage Ansirem Runeweaver::2543|r.
    .accept 94912 >>Acepta la misión Child of Nature
    .target Archmage Ansirem Runeweaver::2543
step << Alliance
    .goto 1416/0,445.93,450.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tHaz clic en el |cRXP_PICK_Portal|r
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
-- step << Alliance Druid
--     .goto 1453/0,1099.900,-8776.700
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Sheldras Moontree::5504|r.
--     .turnin 94912 >>Turn in Child of Nature
--     .accept 94914 >>Accept Moonglade
--     .target Sheldras Moontree::5504
-- step << Alliance Druid
--     .goto 1450/1,-2678.600,8020.000
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Dendrite Starblaze::11802|r.
--     .target Dendrite Starblaze::11802
--     .turnin 94914 >>Turn in Moonglade
step << Alliance Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Catherine Leland::5494|r
    >>|cRXP_BUY_Compra uno|r |T134335:0|t[Adorno lustroso] |cRXP_BUY_y tres|r |T134324:0|t[Reptadores nocturnos] |cRXP_BUY_de ella. Esto es para una misión de 900 xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland::5494
step << Alliance Hunter
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thurman Mullby::1285|r
    >>|cRXP_BUY_Compra una|r |T135435:0|t[Madera simple] |cRXP_BUY_y un|r |T135237:0|t[Sílex y yesca] |cRXP_BUY_a este vendedor|r
    >>|cRXP_WARN_Se usa para hacer|r |T135805:0|t[Basic Campfires] |cRXP_WARN_en Botes para mejorar tu|r |T133971:0|t[Cocina] |cRXP_WARN_habilidad sin perder tiempo|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Bosque del Ocaso más adelante|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby::1285
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << Alliance Hunter
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Auctioneer Jaxon::15659|r
    >>|cRXP_BUY_Compra|r |T133970:0|t|cRXP_LOOT_[Trozos de carne de jabalí]|r |cRXP_BUY_y/o|r |T133970:0|t|cRXP_LOOT_[Carne de lobo fibrosa]|r |cRXP_BUY_para subir tu|r |T133971:0|t[Cocina] |cRXP_BUY_más tarde|r
    >>|cRXP_WARN_Necesitas 50 de|r |T133971:0|t[Cocina] |cRXP_WARN_para una misión en Villa Oscura más tarde|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura en breve:|r
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
    .target Auctioneer Jaxon::15659
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Auctioneer Jaxon::15659|r
    >>|cRXP_WARN_Si no quieres o no puedes hacer esto, omite este paso|r
    >>|cRXP_BUY_Compra los siguientes objetos para entregas más rápidas en Páramos de Poniente y Costa Oscura en breve:|r
    >>|T133972:0|t[Carne de zancudo]
    >>|T133912:0|t[Mero de Costa Oscura]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon::15659
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Alliance
    .goto 1453,48.1,88.35,10,0
    .goto 1453,49.36,87.37,10,0
    .goto 1453,48.85,86.94,10,0
    .goto 1453,48.76,87.71,10,0
    .goto 1453,54.8,83.65,25,0
    .goto 1453,53.78,78.72,25,0
    .goto 1453,55.67,75.99,25,0
    .goto 1453,59.9,71.41,25,0
    .goto 1453/0,332.000,-8443.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Highlord Bolvar Fordragon::1748|r dentro del Keep.
    .target Highlord Bolvar Fordragon::1748
    .turnin 94947 >>Entrega la misión Welcome to Azeroth.
    .accept 93963 >>Acepta la misión Exploring the Alianza
    .accept 98021 >>Acepta la misión Journey to Centinela Hill << !Hunter
--step << Alliance
--    .goto 1453/0,350.200,-8516.200
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Emerson::275491|r inside the Keep.
--    .complete 93963,1 --1/1 Receive Instructions from Randal Emerson
--    .skipgossipid 142485
--    .target Randal Emerson::275491
step << Alliance Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Gilbert Gris::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Acepta la misión Fishin' Tiempo
    .turnin 95065 >>Entrega la misión Fishin' Tiempo
step << Alliance Hunter
    #optional
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crea una|r |T135805:0|t[Lumbre] |cRXP_WARN_(en tu libro de profesiones)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crear una|r |T135805:0|t[Lumbre] |cRXP_WARN_(en tu Libro de Profesión)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>|cRXP_WARN_En el barco si acaba de llegar o en el muelle si acaba de partir:|r
    .cast 818 >>|cRXP_WARN_Crear una|r |T135805:0|t[Lumbre] |cRXP_WARN_(en tu Libro de Profesión)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Alliance Hunter
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
step << Alliance Hunter
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
step << Alliance Hunter
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
step << Alliance Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Sube tu nivel de|r |T135966:0|t[Primeros auxilios] |cRXP_WARN_mientras esperas el barco a Costa Oscura si es necesario|r
    .zone Darkshore >> Toma el barco hacia Costa Oscura
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Alliance Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Toma el barco hacia Costa Oscura
step << Horde
    .goto 2521,63.989,75.090
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Lotheluum Starbreeze::252359|r.
    .target Lotheluum Starbreeze::252359
    .turnin 94491 >>Entrega la misión The Destino of the Den
step << Horde
    .isQuestComplete 93317 -- Crab Season
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nyalah Brightfire::257006|r dentro de la casa.
    .turnin 93317 >>Entrega la misión Cangrejo Season
    .target Nyalah Brightfire::257006
step << Warrior Horde
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .turnin 94003 >>Entrega la misión El Rompecielos Baluarte
    .target Seena Skybreaker::252377
step << Warrior Horde
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 5242 >>Aprende |T132333:0|t[Grito de batalla (Rank 2)]
    .train 7384 >>Aprende |T132223:0|t[Abrumar]
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 72 >>Aprende |T132357:0|t[Azote de escudo]
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.3
    .xp <12,1
step << Warrior Horde
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
    .train 1160 >>Aprende |Tinterface/icons/ability_warrior_warcry.blp:0|t[Grito desmoralizador]
    .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
    .train 6572 >>Aprende |Tinterface/icons/ability_warrior_revenge.blp:0|t[Revancha]
    .train 6574,1 -- Revenge (Rank 2) Not Trained
    .train 1310185 >>Aprende |T136031:0|t[Maestría táctica]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
    .money <0.45
    .xp <14,1
step << Horde Rogue
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Eltheen Nightbreeze::252379|r.
    .train 1766 >>Aprende |T132219:0|t[Patada]
    .train 3127 >>Aprende |T132269:0|t[Parar]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
    .money <0.16
    .xp <12,1
step << Horde
    .isQuestComplete 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .turnin 93737 >>Entrega la misión The Roto Ensamblaje
    .target Riaani Nightwind::256083
step << Horde
    .goto 2521,58.986,75.460
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Railee Thriceforged::257422|r.
    .vendor 257422 >>Chatarra de vendedor.
    *No vendas |T132832:0|t[Pequeño Eggs] y |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Los necesitaremos para Cocina después|r.
    .target Railee Thriceforged::257422
step << Horde
    .isQuestComplete 93736 -- Unwelcome Spirits
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
    .turnin 93736 >>Entrega la misión Unwelcome Licores.
    .target Endaria Mistgaze::254344
step << Horde
    .isQuestComplete 92708 -- A Grand Adventure
    .goto 2521,59.154,79.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ayessa Dawnsinger::251968|r.
    .turnin 92708 >>Entrega la misión A Grand Adventure.
    .target Ayessa Dawnsinger::251968
step << Horde
    .abandon 92708 >>Abandona la misión A Grand Adventure
step << Horde
    .zoneskip 2521,1
    .isQuestAvailable 95350 -- Welcome to Azeroth
    .goto 2521,57.921,80.781
    .zone 1412 >>Toma el barco aéreo hacia |cRXP_PICK_Mulgore|r.
step << Horde Druid Skyborne
    .goto 1412/1,423.400,-659.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Muln Furia térrea::259118|r.
    .target Muln Earthfury::259118
    .accept 94911 >>Acepta la misión Child of Nature.
step << Horde
    .goto 1412/1,426.100,-658.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Alaana Stormwalker::259119|r.
    .accept 95350 >>Acepta la misión Welcome to Azeroth
    .target Alaana Stormwalker::259119
-- step << Horde
--     .isOnQuest 95350
--     -- .subzoneskip 17045,1 -- Skywatcher Plateau
--     .goto 1412/1,323.300,-731.200
--     .deathskip >>Jump to die and ress at the |cRXP_PICK_Spirit Healer|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Horde Druid Skyborne
    #completewith ChildOfNatureC
    #label ChildOfNatureA
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Entrega la misión Child of Nature.
    .accept 94913 >>Acepta la misión Claro de la Luna
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #completewith ChildOfNatureA
    #label ChildOfNatureB
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Entra en Cima del Trueno.
step << Horde Druid Skyborne
    #requires ChildOfNatureB
    #completewith ChildOfNatureA
    #label ChildOfNatureC
    .goto 1456/1,-13.300,-1108.300,12,0
    .goto 1456/1,-46.900,-1092.900,12,0
    .goto 1456/1,-61.200,-1097.400,8,0
    .goto 1456/1,-198.000,-1046.500,12 >>Cruza el puente.
step << Horde Druid Skyborne
    #requires ChildOfNatureC
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .turnin 94911 >>Entrega la misión Child of Nature.
    .accept 94913 >>Acepta la misión Claro de la Luna
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #optional
    #requires ChildOfNatureA
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 8936 >>Aprende tus hechizos de clase
    .target Turak Runetotem::3033
    .xp <12,1
    .xp >14,1
step << Horde Druid Skyborne
    #requires ChildOfNatureA
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Turak Runetotem::3033|r.
    .train 5178 >>Aprende tus hechizos de clase
    .target Turak Runetotem::3033
    .xp <14,1
step << Horde !Druid
    #completewith next
    #label WelcomeToAzerothA
    #hidewindow
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Tal::2995
step << Horde !Druid
    #completewith WelcomeToAzerothA
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Entra en Cima del Trueno.
step << Horde
    #requires WelcomeToAzerothA << !Druid
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454
    .goto 1456/1,26.500,-1196.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Vuela a Orgrimmar
    .target Tal::2995
step << Horde
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Innkeeper Gryshka::6929|r
    .home >> Establece tu Piedra de hogar en Orgrimmar
	.target Innkeeper Gryshka::6929
    .bindlocation 1637
step << Horde
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thatog::268701|r
    >>|cRXP_WARN_Está arriba en el edificio|r
    .accept 97246 >>Acepta la misión Meal Appeal
    .target Thatog::268701
step << Horde
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Borstan::3368|r
    .turnin 97246 >>Entrega la misión Meal Appeal
    .accept 97249 >>Acepta la misión Favorite Comida
    .target Borstan::3368
step << Horde
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'geld::3348|r
    .accept 97242 >>Acepta la misión Yelmak's Medley
    .target Kor'geld::3348
step << Horde
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Viaja al Valle del Honor
step << Horde
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Despoja el |cRXP_PICK_Handful of Cattails|r y los |cRXP_PICK_Speargrass Cuttings|r en el agua
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Horde Hunter
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormak Grimshot::3352|r
    .train 13795 >> Aprende tus hechizos de clase
    .target Ormak Grimshot::3352
    .xp <12,1
step << Horde Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Xao'tsu::10088|r
    .train 24556 >> Entrena los hechizos de tu mascota
    .target Xao'tsu::10088
step << Horde Warrior
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 7384 >> Aprende tus hechizos de clase
    .target Grezz Ragefist::3353
    .xp <12,1
    .xp >14,1
step << Horde Warrior
    #optional
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Grezz Ragefist::3353|r
    .train 1160 >> Aprende tus hechizos de clase
    .target Grezz Ragefist::3353
    .xp <14,1
step << Horde
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kor'geld::3348|r
    .turnin 97242 >>Entrega la misión Yelmak's Medley
    .target Kor'geld::3348
step << Horde
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Yelmak::3347|r
    >>|cRXP_WARN_Puede que tengas que esperar aproximadamente 10 segundos antes de poder aceptar esta misión|r
    .accept 97275 >>Acepta la misión Whuut's the Carga
    .target Yelmak::3347
step << Horde
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Whuut::11046|r
    .turnin 97275 >>Entrega la misión Whuut's the Carga
    .target Whuut::11046
step << Horde
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Migi::268682|r
    .turnin 97249 >>Entrega la misión Favorite Comida
    .target Migi::268682
step << Horde
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thra::268684|r
    .accept 97326 >>Acepta la misión Rocas to Rests
    .target Thra::268684
step << Horde
    .goto 1454/1,-4293.600,1949.900
    >>Despoja las |cRXP_PICK_Rocks|r naranjas del suelo
    >>|cRXP_WARN_Omite esta misión si hay mucha competencia. No hay tantas |cRXP_PICK_Rocks|r y no reaparecen rápidamente|r
    .complete 97326,1 --|8/8 Smooth Boulder
    .isOnQuest 97326 -- Rocks to Rests
step << Horde
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thra::268684|r
    .turnin 97326 >>Entrega la misión Rocas to Rests
    .target Thra::268684
    .isQuestComplete 97326 -- Rocks to Rests
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Thrall::4949|r.
    .turnin 95350 >>Entrega la misión Welcome to Azeroth
    .accept 98024 >>Acepta la misión Viaja a El Cruce
    --.accept 93739 >>Accept Exploring the Horde
    --.accept 5726 >>Accept Hidden Enemies
    .target Thrall::4949
    --93739 will take too long, won't be able to fully complete and turnin until lvl 22/23 and at that point you get no xp
step << skip --Horde
    .goto 1454/1,-4133.400,1938.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Nazgrel::3230|r.
    .complete 93739,1 --|1/1 Obtain Instructions from Nazgrel
    .target Nazgrel::3230
    .skipgossipid 142489
step << skip --Horde
    .goto 1454/1,-4162.200,1933.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Vol'jin::10540|r.
    .complete 93739,2 --|1/1 Speak with Vol'jin
    .target Vol'jin::10540
step << Horde
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Zor Lonetree::4047|r
    .accept 1061 >>Acepta la misión Los espíritus del Espolón
    .target Zor Lonetree::4047
    .xp <13,1
step << Horde Shaman
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 408341 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker::3344
    .xp <12,1
    .xp >14,1
step << Horde Shaman
    #optional
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kardris Dreamseeker::3344|r
    .train 8045 >> Aprende tus hechizos de clase
    .target Kardris Dreamseeker::3344
    .xp <14,1
step << Horde Rogue
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormok::3328|r
    .train 1766 >> Aprende tus hechizos de clase
    .target Ormok::3328
    .xp <12,1
    .xp >14,1
step << Horde Rogue
    #optional
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Ormok::3328|r
    .train 1758 >> Aprende tus hechizos de clase
    .target Ormok::3328
    .xp <14,1
step << Horde Mage
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pephredo::5882|r
    .train 145 >> Aprende tus hechizos de clase
    .target Pephredo::5882
    .xp <12,1
    .xp >14,1
step << Horde Mage
    #optional
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Pephredo::5882|r
    .train 1449 >> Aprende tus hechizos de clase
    .target Pephredo::5882
    .xp <14,1
step << !Hunter
    #optional
    .maxlevel 13,Silverpineskip
step << Horde
    #completewith next
    .zone Durotar >> Sal de Orgrimmar
    .zoneskip Durotar
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step << Horde Hunter
    #completewith next
    .subzone 362 >> Viaja a Cerrotajo
step << Horde Hunter
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Takrin Pathseeker::3336|r
    .accept 840 >>Acepta la misión Nuevo recluta de la Horda
    .target Takrin Pathseeker::3336
step << Horde Hunter
    #completewith next
    .subzone 379 >> Viaja a la Avanzada del Puente
step << Horde Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Kargal Battlescar::3337|r
    .turnin 840 >>Entrega la misión Nuevo recluta de la Horda
    .accept 842 >>Acepta la misión Servicio militar en El Cruce
    .target Kargal Battlescar::3337
step << Horde !Hunter
    .goto 1411/1,-4648.55,1321.88,40 >>Sube a la Torre del Zepelín
    .zone Tirisfal Glades >>Toma el zepelín hacia los Claros de Tirisfal
    >>|cRXP_WARN_Crea agua mientras esperas|r << Mage
    .zoneskip Tirisfal Glades
step << Horde !Hunter
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Viaja a Rémol
step << Horde !Hunter
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Deathguard Terrence::1738|r
    .accept 96895 >>Acepta la misión The Argent Emisario
    .target Deathguard Terrence::1738
    .xp >13,1
step << Horde !Hunter
    #label DeliverytoSPF
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Apothecary Johaan::1518|r
    .accept 445 >>Acepta la misión Entrega a Bosque de Argénteos
    .target Apothecary Johaan::1518
    .xp >13,1
step << Horde !Hunter
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96895 >>Entrega la misión The Argent Emisario
    .accept 96897 >>Acepta la misión The Cult of the Maldito
    .accept 96898 >>Acepta la misión Remnants of Guerra
    .target Hadric Harlson::267009
    .xp >13,1
step << Horde !Hunter
    .goto 1420/0,-130.500,1907.800
    >>Mata a los |cRXP_ENEMY_Dark Enforcers|r y a los |cRXP_ENEMY_Dark Neophytes|r. Despójalos para obtener |cRXP_LOOT_Necrotic Fragmentos de cristal|r
    >>|cRXP_LOOT_Necrotic Fragmentos de cristal|r |cRXP_WARN_también pueden despojarse en el suelo|r
    >>|cRXP_WARN_¡Ten cuidado! Estos mobs golpean fuerte. |cRXP_ENEMY_Dark Enforcers|r también tienen una habilidad de lanzamiento instantáneo que causa 50-70 de daño|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
    .isOnQuest 96897,96898 -- The Cult of the Damned / Remnants of War
step << Horde !Hunter
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96897 >>Entrega la misión The Cult of the Maldito
    .turnin 96898 >>Entrega la misión Remnants of Guerra
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson::267009
    .isQuestComplete 96897 -- The Cult of the Damned
    .isQuestComplete 96898 -- Remnants of War
step << Horde !Hunter
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Toma el ascensor para bajar a Entrañas
step << Horde !Hunter
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Michael Garrett::4551|r
    .fp Undercity >> Consigue la ruta de vuelo de Entrañas
    .target Michael Garrett::4551
step << Horde !Hunter
    #ah
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tHabla con |cRXP_FRIENDLY_Auctioneer Cain::15682|r
    >>|cRXP_BUY_Compra tres|r |T133884:0|t[Múrloc Ojos] |cRXP_BUY_de la Casa de Subastas|r
    >>|cRXP_WARN_Omitir esto si quieres, es solo un pequeño ahorro de tiempo|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain::15682
    .zoneskip Undercity,1
step << Horde !Hunter
    .goto 1458/0,419.89,1627.54,50,0
    .goto 1458/0,428.52,1597.20,10,0
    .goto 1458/0,439.17,1626.06,10,0
    .goto 1458/0,476.78,1632.150,10,0
    .goto 1458/0,482.34,1660.63,10,0
    .goto 1458/0,539.33,1665.49,15,0
    .goto 1458/0,610.42,1684.44,35,0
    .goto 1458/0,663.19,1600.46,35,0
    .goto 1420/0,724.25,1682.66,50,0
    .zone Tirisfal Glades >> Abandona Entrañas por las Cloacas
    .zoneskip Silverpine Forest
step << Horde !Hunter
    #label Entersilverpine
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Viaja al Bosque de Argénteos
    .zoneskip Silverpine Forest
step << !Hunter
    #optional
    #label Silverpineskip

]])
