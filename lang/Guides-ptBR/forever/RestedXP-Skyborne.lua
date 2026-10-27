if GetLocale() ~= "ptBR" then return end
--Skyborne leveling guide: Part 1
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
#name 1-9 Ilha de Zefras
#displayname 1-9 Celonato << Alliance
#displayname 1-9 Celonato << Horde
#group Guia RestedXP Forever (A) << Alliance
#group Guia RestedXP Forever (H) << Horde
#subgroup Guia Speedrun 1-20 << Alliance
#subgroup Guia Speedrun 1-22 << Horde
#next 9-13 Ilha de Zefras
#defaultfor Skyborne

step
    .goto 2521,42.82,23.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ailee Coralonge::251362|r.
    .accept 92460 >>Aceite A maturidade
    .target Ailee Farheart::251362
step
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rorian, o Caça-alva::251361|r.
    .turnin 92460 >>Entregue A maturidade
    .target Rorian the Dayseeker::251361
    .accept 92461 >>Aceite Harmonia em equilíbrio
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elatrell Penaleve::251368|r.
    .accept 92462 >>Aceite Investigação da infestação
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
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Vuldrens Juvenis::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step
    >>Mate |cRXP_ENEMY_Cirromoscas Irritantes::251169|r.
    *|cRXP_WARN_Priorize-os|r
    .complete 92462,1 --8/8 Pesky Cirrusfly slain
    .mob Pesky Cirrusfly::251169
step
    #label Juvenile Vuldren
    >>Mate |cRXP_ENEMY_Vuldrens Juvenis::250873|r.
    .complete 92461,1 --8/8 Juvenile Vuldren slain
    .mob Juvenile Vuldren::250873
step << Horde Shaman
    #label Juvenile Vuldren Grind
    .xp 2+480 >>Farme até atingir 480+/900 de EXP para chegar ao nível 3 após entregar as missões do totem.
step
    .goto 2521,43.44,24.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elatrell Penaleve::251368|r.
    *|cRXP_WARN_Não use |r|T132845:0|t[Andar no Ar] |cRXP_WARN_pois precisaremos dele em breve|r.
    .turnin 92462 >>Entregue Investigação da infestação
    .accept 92463 >>Aceite A rainha cirromosca
    .target Elatrell Featherlight::251368
step << Warrior
    .money <0.0010
    .xp <1,1
    .train 5242,1 -- Battle Shout (Rank 2) Not Trained
    .goto 2521,43.66,24.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Espadas Ren::251964|r.
    .train 6673 >>Aprenda |T132333:0|t[Brado de Batalha]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
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
    >>Suba a escada em espiral e então |Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Halaan Olho-de-Falcão::257554|r no topo da torre.
    .accept 94414 >>Aceite As âncoras de Zefras
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Halaan Olho-de-Falcão::257554|r.
    *|cRXP_WARN_Mova-se ou pressione ESC para cancelar|r.
    .complete 94414,1 --View the Anchor Pylon
    .skipgossipid 137720,1
    .target Halaan Hawk-Eye::257554
step
    .goto 2521,43.80,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Halaan Olho-de-Falcão::257554|r.
    *|cRXP_WARN_Mova-se ou pressione ESC para cancelar|r.
    .turnin 94414 >>Entregue As âncoras de Zefras
    .target Halaan Hawk-Eye::257554
step << Skyborne
    .goto 2521,43.65,24.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Myriaal Brumanhã::263113|r.
    .accept 92474 >>Aceite Caindo com estilo
    .target Myriaal Mistwake::263113
step << Skyborne
    #optional
    #completewith next
    #label Harmony in Balance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rorian, o Caça-alva::251361|r.
    .turnin 92461,1 >>Entregue Harmonia em equilíbrio
    .target Rorian the Dayseeker::251361
step << Skyborne
    #completewith Harmony in Balance
    .goto 2521,42.06,23.48
    >>Ao cair da torre, use |T132845:0|t[Andar no Ar] e vá em direção ao PNJ que oferece a missão.
    *Você também pode simplesmente pular e apertar o botão repetidamente no chão.
    *Se estiver em recarga, esta etapa será pulada ao entregar Harmonia em equilíbrio. Você pode concluí-la depois.
    .complete 92474,1 --Use Walk on Air
    .macro Walk on Air, 132845 >>Andar no Ar
    -- .macro Cancel Walk on Air,132745 >>/cancelaura Walk on Air
step << Skyborne
    #requires Harmony in Balance
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rorian, o Caça-alva::251361|r.
    .turnin 92461,1 >>Entregue Harmonia em equilíbrio
    .target Rorian the Dayseeker::251361
    .accept 92464 >>Aceite Agitação elemental
    .accept 92481 >>Aceite Estudante do arcano << Mage
    .accept 92483 >>Aceite Um lar nas sombras << Rogue
    .accept 92482 >>Aceite A senda do caçador << Hunter
    .accept 92484 >>Aceite Comunhão com os elementos << Shaman
    .accept 92532 >>Aceite O caminho do guerreiro << Warrior
    .accept 92485 >>Aceite Estudante da natureza << Druid
--Split so players can complete this later if they used Walk on Air early
step << Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rorian, o Caça-alva::251361|r.
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Entregue Caindo com estilo
step << !Skyborne
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rorian, o Caça-alva::251361|r.
    .turnin 92461,1 >>Entregue Harmonia em equilíbrio
    .target Rorian the Dayseeker::251361
    .accept 92464 >>Aceite Agitação elemental
    .accept 92481 >>Aceite Estudante do arcano << Alliance Mage
    .accept 92483 >>Aceite Um lar nas sombras << Rogue
    .accept 92482 >>Aceite A senda do caçador << Hunter
    .accept 92484 >>Aceite Comunhão com os elementos << Horde Shaman
    .accept 92532 >>Aceite O caminho do guerreiro << Warrior
    .accept 92485 >>Aceite Estudante da natureza << Druid
step << Druid
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xyton Brisaprata::251373|r.
    .turnin 92485 >>Entregue Estudante da natureza
    .target Xyton Silverwind::251373
step << Druid
    .money <0.0010
    .xp <1,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xyton Brisaprata::251373|r.
    .train 1126 >>Aprenda |T136078:0|t[Marca do Indomado]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Alliance Mage
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorii Soproluz::251379|r.
    .turnin 92481 >>Entregue Estudante do arcano
    .target Dorii Brightwhisper::251379
step << Alliance Mage
    .money <0.0010
    .xp <1,1
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorii Soproluz::251379|r.
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Horde Shaman
    .goto 2521,42.790,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moldavento::251374|r
    .target Windshaper Boro::251374
    .turnin 92484 >>Entregue Comunhão com os elementos
    .accept 92466 >>Aceite O chamado da terra
step << Horde Shaman
    .money <0.0010
    .xp <1,1
    .goto 2521,42.79,23.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moldavento::251374|r.
    .train 8017 >>Aprenda |T136086:0|t[Arma Trinca-pedra]
    .target Windshaper Boro::251374
    .skipgossipid 136811
step << Hunter
    .goto 2521,42.47,23.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'ree Fitalonge::251376|r.
    .turnin 92482 >>Entregue A senda do caçador
    .target Tai'ree Farsight::251376
step << Alliance Rogue/Alliance Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.15 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.17 << Warrior
    .isNotOnQuest 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92464 -- Elemental Unrest
    .goto 2521,43.42,23.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Destin Triforjado::251364|r.
    .collect 2131,1 >>Compre e equipe uma |T135274:0|t[Espada Curta] << Rogue
    .collect 1194,1 >>Compre e equipe uma |T135276:0|t[Espada Bastarda] << Warrior
    .vendor 251364 >>|cRXP_WARN_Venda os lixos|r
    *Não venda |T133970:0|t[Acém] nem |T132889:0|t[Linho].
    .target Destin Thriceforged::251364
step << Horde
    .goto 2521,42.60,24.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ventaari Desebrilho::251487|r.
    .accept 92598 >>Aceite O dom da visão do céu
    .target Ventaari Brightwish::251487
step << Horde !Warrior !Rogue/Alliance !Warrior !Rogue !Hunter
    .itemcount 159,<20 << Mage/Shaman/Priest/Warlock/Paladin -- Refreshing Spring Water
    .subzoneskip 16635,1 -- Thendal Village
    .isNotOnQuest 93552 -- Harvesting Windstones
    .isQuestAvailable 93552 -- Harvesting Windstones
    .goto 2521,42.749,24.496
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uualia Cristassol::251537|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Hunter !Shaman
    .vendor 251537 >>|cRXP_WARN_Venda os lixos|r
    *Não venda |T133970:0|t[Acém] nem |T132889:0|t[Linho]. << Alliance
    .collect 159,20 << !Hunter !Shaman --Refreshing Spring Water (20)
    .target Uualia Suncrest::251537
    -- .money <0.0050 << !Hunter !Shaman
    -- .money <0.0040 << Hunter
step
    .goto 2521,43.37,23.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalia, a Colecionadora::251363|r.
    .accept 93552 >>Aceite Coleta de pedras eólicas
    .target Dalia the Collector::251363
step
    #completewith next
    .goto 2521,43.53,23.83,7,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance Hunter/Horde Rogue/Horde Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.17 << Hunter/Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.15 << Rogue
    .subzoneskip 16635,1 -- Thendal Village
    .isOnQuest 92464 -- Elemental Unrest
    .goto 2521,43.41,23.51
    .collect 1194,1 >>Compre e equipe uma |T135276:0|t[Espada Bastarda] << Hunter/Horde Warrior
    .collect 2131,1 >>Compre e equipe uma |T135274:0|t[Espada Curta] << Horde Rogue
    .vendor 251364 >>|cRXP_WARN_Venda os itens de lixo|r
    *Não venda |T133970:0|t[Acém] nem |T132889:0|t[Linho].
    .target Destin Thriceforged::251364
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falorne Ventoutono::251371|r.
    .accept 92597 >>Aceite Leitura dos meridianos
    .target Falorne Fallwind::251371

-- ============================================================================
-- Horde Shaman Branch
-- ============================================================================

step << Horde Shaman
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    .complete 93552,1 --15/15 Windstone Cluster
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yala Vigivento::249363|r.
    .turnin 92464 >>Entregue Agitação elemental
    .accept 92465 >>Aceite Agitadores
    .target Yala Windwatcher::249363
step << Horde Shaman
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Convertidos Al'Aketh::251160|r e |cRXP_ENEMY_Ventos Turbulentos::251143|r.
    *|cRXP_WARN_Priorize |cRXP_ENEMY_Ventos Turbulentos::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Horde Shaman
    .goto 2521,48.4,20.4
    >>Use |T1029587:0|t[Visão do Céu] perto da |cRXP_PICK_Convergência Elemental|r.
    *|cRXP_WARN_Encontradas por toda a área. Use |T1029587:0|t[Visão do Céu] perto de uma para ganhar 10% de velocidade de movimento por 15 min em vez de 15 s|r.
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>Visão do Céu
step << Horde Shaman
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Pegue pelo menos 10 pedras, mas esteja preparado para pegar até 15|r.
    *|cRXP_WARN_Se a área estiver muito lotada, espere em um ponto de surgimento ou alterne entre pedras próximas|r.
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
    >>Mate |cRXP_ENEMY_Convertidos Al'Aketh::251160|r e |cRXP_ENEMY_Ventos Turbulentos::251143|r.
    *Pegue deles o |T1020384:0|t[Sinete de Akir]
    *|cRXP_WARN_Priorize |cRXP_ENEMY_Ventos Turbulentos::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 --|1/1 Signet of Akir
step << Horde Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yala Vigivento::249363|r.
    .turnin 92465 >>Entregue Agitadores
    .accept 92469 >>Aceite Fale novamente com Rorian
    .target Yala Windwatcher::249363
step << Horde Shaman
    #completewith next
    .subzoneskip 16622,1 -- Thendal Grove
    .hs >>Use a Pedra de Regresso para voltar à Aldeia Thendal
    .cooldown item,6948,>0 --Hearthstone
step << Horde Shaman
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moldavento::251374|r
    .turnin 92466 >>Entregue O chamado da terra
    .accept 92467 >>Aceite O chamado da terra
    .target Windshaper Boro::251374

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================

step
    #completewith next
    .goto 2521,43.82,25.41,20,0
    .goto 2521,44.23,24.96,20,0
    .goto 2521,44.28,27.32,25,0
    .goto 2521,45.33,29.15,30,0
    .goto 2521,46.77,27.96,30,0
    .goto 2521,48.14,29.31,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Pegue pelo menos 10 pedras, mas esteja preparado para pegar até 15|r.
    *|cRXP_WARN_Se a área estiver muito lotada, espere em um ponto de surgimento ou alterne entre pedras próximas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step
    .goto 2521,48.41,28.37
    >>Mate |cRXP_ENEMY_Rainha Cirromosca::251404|r.
    .complete 92463,1 --1/1 Cirrusfly Queen slain
    .mob Cirrusfly Queen::251404

-- ============================================================================
-- Horde Shaman Branch
-- ============================================================================

step << Horde Shaman
    .goto 2521,47.241,25.244,25,0
    .goto 2521,48.802,25.869,30,0
    .goto 2521,49.677,23.806
    >>Use o |T134743:0|t[Sapta da Terra].
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Manifestação Menor de Terra::251166|r
    .turnin 92467 >>Entregue O chamado da terra
    .accept 92468 >>Aceite O chamado da terra
    .target Minor Manifestation of Earth::251166
    .use 6635 -- Earth Sapta
step << Horde Shaman
    .isQuestComplete 93552 -- Harvesting Windstones
    .goto 2521,49.32,23.18,15,0
    .goto 2521,48.88,21.52
    .subzone 16635 >>Pule da montanha e ressuscite no cemitério.
step << Horde Shaman
    #ignorecorpse
    .isQuestComplete 93552 -- Harvesting Windstones
    .subzoneskip 16635,1 -- Thendal Village
    .showwhiledead
    .goto 2521,41.06,22.32
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anjo da Cura::6491|r.
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    .complete 93552,1 --15/15 Windstone Cluster

-- ============================================================================
-- Alliance and Non-Horde-Shaman Branch
-- ============================================================================

step << Alliance/!Shaman
    #optional
    #completewith next
    .goto 2521,47.41,26.43,30,0
    .goto 2521,46.62,24.61,30,0
    .goto 2521,48.3,25.67,30,0
    .goto 2521,47.19,23.57,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Pegue pelo menos 10 pedras, mas esteja preparado para pegar até 15|r.
    *|cRXP_WARN_Se a área estiver muito lotada, espere em um ponto de surgimento ou alterne entre pedras próximas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yala Vigivento::249363|r.
    .turnin 92464 >>Entregue Agitação elemental
    .accept 92465 >>Aceite Agitadores
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #optional
    #completewith UseRacialAbility
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Pegue pelo menos 10 pedras, mas esteja preparado para pegar até 15|r.
    *|cRXP_WARN_Se a área estiver muito lotada, espere em um ponto de surgimento ou alterne entre pedras próximas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #optional
    #completewith UseRacialAbility
    >>Mate |cRXP_ENEMY_Convertidos Al'Aketh::251160|r e |cRXP_ENEMY_Ventos Turbulentos::251143|r.
    *|cRXP_WARN_Priorize |cRXP_ENEMY_Ventos Turbulentos::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
step << Alliance
    #label UseRacialAbility
    .goto 2521,47.8,21.02,30,0
    .goto 2521,46.9,20.82,30,0
    .goto 2521,46.41,18.21
    >>Use |T236219:0|t[Ler Mediridano] perto da |cRXP_WARN_Linha de Meridiano|r no chão
    *|cRXP_WARN_Encontradas por toda a área|r |cRXP_WARN_Use|r |T236219:0|t[Ler Meridiano] |cRXP_WARN_perto de uma para aumentar em 100% a regeneração de mana e vida por 15 min em vez de 15 s|r.
    .complete 92597,1 --Use your Read Ley Line ability near the Thendal Grove Ley Line
    .usespell 1259705
step << Horde !Shaman
    #label UseRacialAbility
    .goto 2521,48.4,20.4
    >>Use |T1029587:0|t[Visão do Céu] perto da |cRXP_PICK_Convergência Elemental|r.
    *|cRXP_WARN_Encontradas por toda a área. Use |T1029587:0|t[Visão do Céu] perto de uma para ganhar 10% de velocidade de movimento por 15 min em vez de 15 s|r.
    .complete 92598,1 --Use your Skysight ability near the Elemental Convergence
    .macro Skysight,1029587 >>Visão do Céu
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
    #optional
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Pegue pelo menos 10 pedras, mas esteja preparado para pegar até 15|r.
    *|cRXP_WARN_Se a área estiver muito lotada, espere em um ponto de surgimento ou alterne entre pedras próximas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    >>Mate |cRXP_ENEMY_Convertidos Al'Aketh::251160|r e |cRXP_ENEMY_Ventos Turbulentos::251143|r.
    *Pegue deles o |T1020384:0|t[Sinete de Akir] << Shaman
    *|cRXP_WARN_Priorize |cRXP_ENEMY_Ventos Turbulentos::251143|r|r
    .complete 92465,1 --7/7 Al'Aketh Convert slain
    .mob +Al'Aketh Convert::251160
    .complete 92465,2 --6/6 Roiling Winds destroyed
    .mob +Roiling Winds::251143
    .complete 92466,1 << Shaman --|1/1 Signet of Akir
step << Alliance/!Shaman
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Pegue pelo menos 10 pedras, mas esteja preparado para pegar até 15|r.
    *|cRXP_WARN_Se a área estiver muito lotada, espere em um ponto de surgimento ou alterne entre pedras próximas|r.
    .complete 93552,1 --15/15 Windstone Cluster
step << Alliance/!Shaman
    #label Windstone Cluster
    .xp 3+300 >>Farme até atingir 300+/1400 de EXP
step << Alliance/!Shaman
    .goto 2521,47.29,21.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yala Vigivento::249363|r.
    .turnin 92465 >>Entregue Agitadores
    .accept 92469 >>Aceite Fale novamente com Rorian
    .target Yala Windwatcher::249363
step << Alliance/!Shaman
    #completewith next
    .hs >>Use a Pedra de Regresso para voltar à Aldeia Thendal
    .cooldown item,6948,>0 --Hearthstone
step << !Shaman
    #completewith next
    #label Harvesting Windstones2
    #optional
    .goto 2521,43.89,22.27,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalia, a Colecionadora::251363|r.
    *|cRXP_WARN_Escolha entre Mineração, Herborismo ou Esfolamento|r.
    .turnin 93552 >>Entregue Coleta de pedras eólicas
    .target Dalia the Collector::251363
step << !Shaman
    #completewith Harvesting Windstones2
    #hidewindow
    .goto 2521,43.37,23.98,60 >>1
step
    #requires Harvesting Windstones2
    .goto 2521,43.37,23.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalia, a Colecionadora::251363|r.
    *|cRXP_WARN_Escolha entre Mineração, Herborismo ou Esfolamento|r.
    .turnin 93552 >>Entregue Coleta de pedras eólicas
    .target Dalia the Collector::251363
step << Rogue
    .goto 2521,43.74,24.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Akeri Gumúmbrio::251389|r.
    .turnin 92483 >>Entregue Um lar nas sombras
    .target Akeri Duskblade::251389
step << Warrior
    .money <0.02
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Espadas Ren::251964|r.
    .train 100 >>Aprenda |T132337:0|t[Investida]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step << Warrior
    .xp <4,1
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Espadas Ren::251964|r.
    .turnin 92532 >>Entregue O caminho do guerreiro
    .target Blademaster Ren::251964
step
    .goto 2521,43.44,24.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elatrell Penaleve::251368|r.
    .turnin 92463,3 >>Entregue A rainha cirromosca
    .target Elatrell Featherlight::251368
step << Alliance
    .goto 2521,43.33,24.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falorne Ventoutono::251371|r.
    .turnin 92597 >>Entregue Leitura dos meridianos
    .target Falorne Fallwind::251371
step
    #completewith Turn in Return to Rorian
    .itemcount 247840,1 -- Mining for Dummies
    .train 2575 >>Use |T4625105:0|t[Mineração para Leigos] |cRXP_WARN_enquanto caminha até o PNJ que oferece a missão|r.
    .use 247840 -- Mining for Dummies
step
    #completewith Turn in Return to Rorian
    .itemcount 247841,1 -- Wild Harvest
    .train 2366 >>Use |T4624731:0|t[Colheita Silvestre] |cRXP_WARN_enquanto caminha até o PNJ que oferece a missão|r.
    .use 247841 -- Wild Harvest
step
    #completewith Turn in Return to Rorian
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .train 8613 >>Use |T4624731:0|t[Coleta de Peles para Iniciantes] |cRXP_WARN_enquanto caminha até o PNJ que oferece a missão|r.
    .use 247846 -- Pelt Collecting for Beginners
step << Warrior
    .money <0.02
    .train 6546,1 -- Rend (Rank 2) Not Trained
    .train 6178,1 -- Charge (Rank 2) Not Trained
    .xp <4,1
    .isOnQuest 92469 -- Return to Rorian
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Espadas Ren::251964|r.
    .train 100 >>Aprenda |T132337:0|t[Investida]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .skipgossipid 136813,1
    .target Blademaster Ren::251964
step << Warrior
    .goto 2521,43.66,24.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Espadas Ren::251964|r.
    .turnin 92532 >>Entregue O caminho do guerreiro
    .target Blademaster Ren::251964
step << Horde Hunter
    .money <0.02
    .xp <4,1
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'ree Fitalonge::251376|r
    .train 13163 >>Aprenda |T132159:0|t[Aspecto do Macaco]
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .skipgossipid 136808
    .target Tai'ree Farsight::251376
step << Horde
    #label Turn in Return to Rorian
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rorian, o Caça-alva::251361|r.
    .turnin 92469,1 >>Entregue Fale novamente com Rorian
    .accept 92471 >>Aceite Aetheen das Ventanias -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Horde Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rorian, o Caça-alva::251361|r.
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Entregue Caindo com estilo
step << Horde Druid
    .money <0.02
    .xp <4,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xyton Brisaprata::251373|r.
    .train 8921 >>Aprenda |T136096:0|t[Fogo Lunar]
    .train 774 >>Aprenda |T136081:0|t[Rejuvenescer]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Horde
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aetheen das Ventanias::251366|r.
    .turnin 92471 >>Entregue Aetheen das Ventanias
    .accept 92470 >>Aceite Má-triarca
    .target Aetheen of the Gales::251366
step << Shaman
    .goto 2521,42.787,23.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moldavento::251374|r
    .turnin 92468 >>Entregue O chamado da terra
    .target Windshaper Boro::251374
step << Horde Shaman
    .money <0.01
    .xp <4,1
    .goto 2521,42.788,23.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moldavento::251374|r.
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .target Windshaper Boro::251374
    .skipgossipid 136811
step << Horde
    .goto 2521,42.607,24.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ventaari Desebrilho::251487|r
    .turnin 92598 >>Entregue O dom da visão do céu
    .target Ventaari Brightwish::251487
step << Alliance Hunter
    .money <0.02
    .xp <4,1
    .goto 2521,42.467,23.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'ree Fitalonge::251376|r
    .train 13163 >>Aprenda |T132159:0|t[Aspecto do Macaco]
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .skipgossipid 136808
    .target Tai'ree Farsight::251376
step << Alliance
    #label Turn in Return to Rorian
    .goto 2521,42.07,23.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rorian, o Caça-alva::251361|r.
    .turnin 92469,1 >>Entregue Fale novamente com Rorian
    .accept 92471 >>Aceite Aetheen das Ventanias -- Unlocks at 4
    .target Rorian the Dayseeker::251361
step << Alliance Skyborne
    .isQuestComplete 92474 --Falling With Style
    .goto 2521,42.06,23.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rorian, o Caça-alva::251361|r.
    .target Rorian the Dayseeker::251361
    .turnin 92474 >>Entregue Caindo com estilo
step << Alliance Druid
    .money <0.02
    .xp <4,1
    .goto 2521,41.653,23.337
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xyton Brisaprata::251373|r.
    .train 8921 >>Aprenda |T136096:0|t[Fogo Lunar]
    .train 774 >>Aprenda |T136081:0|t[Rejuvenescer]
    .skipgossipid 136805
    .target Xyton Silverwind::251373
step << Alliance Mage
    .money <0.01
    .xp <4,1
    .goto 2521,41.55,23.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorii Soproluz::251379|r.
    .train 116 >>Aprenda |T135846:0|t[Seta de Gelo]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Alliance
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aetheen das Ventanias::251366|r.
    .turnin 92471 >>Entregue Aetheen das Ventanias
    .accept 92470 >>Aceite Má-triarca
    .target Aetheen of the Gales::251366
step
    #optional
    #completewith AggressiveVendor
    #label Aggressive Encroachment
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valreaa Ventoval::257551|r.
    .accept 92473 >>Aceite Ocupação agressiva
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment
    .train 2366,3 -- Herbalism Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uualia Cristassol::251537|r
    .collect 277113,1 >>Compre uma |T133637:0|t[Bolsa de Herborismo do Aprendiz]
    .macro Buy Herbalism Supplies,133637 >>Compre suprimentos de Herborismo
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 2575,3 -- Mining Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uualia Cristassol::251537|r
    .collect 2901,1 >>Compre uma |T134708:0|t[Picareta de Mineração]
    .collect 277115,1 >>Compre uma |T133635:0|t[Mochila de Mineração do Aprendiz]
    .macro Buy Mining Supplies,134708 >>Compre suprimentos de Mineração
    .target Uualia Suncrest::251537
step
    #completewith Aggressive Encroachment
    .train 8613,3 -- Skinning Trained
    .goto 2521,42.76,24.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uualia Cristassol::251537|r
    .collect 7005,1 >>Compre uma |T135637:0|t[Faca de Esfolamento]
    .collect 277114,1 >>Compre uma |T133634:0|t[Algibeira de Esfolamento do Aprendiz]
    .macro Buy Skinning Supplies,135637 >>Compre suprimentos de Esfolamento
    .target Uualia Suncrest::251537
step
    #label AggressiveVendor
    #completewith Aggressive Encroachment
    .goto 2521,42.76,24.5
    .vendor 251537 >>|cRXP_WARN_Venda os lixos|r
    *Não venda |T133970:0|t[Acém] nem |T132889:0|t[Linho]. << Alliance
    .collect 2512,1200 << Hunter --Rough Arrow (1200)
    .collect 159,20 >>Compre |T132794:0|t[Água Refrescante da Fonte] << Druid/Mage/Priest/Warlock/Paladin
step
    #requires Aggressive Encroachment
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valreaa Ventoval::257551|r.
    .accept 92473 >>Aceite Ocupação agressiva
    .target Valreaa Valewind::257551
step
    #optional
    #completewith Scrawny Usera
    +Arraste manualmente a bolsa de reagentes para o espaço de bolsa de reagentes. Clicar nela com o botão direito a colocará em um espaço vazio de bolsa comum
step
    #optional
    #completewith Scrawny Usera
    .train 2366,3 -- Herbalism Trained
    .aura 2383 >>Use |T133939:0|t[Localizar Plantas] para rastrear ervas próximas
    +|cRXP_WARN_Você pode coletar ervas pelo caminho para começar a subir Herborismo até 20 para uma missão futura. Isso é opcional, especialmente no lançamento, então faça por sua conta e risco|r
    .usespell 2383
step
    #optional
    #completewith Scrawny Usera
    .train 2656,3 -- Smelting Trained
    .aura 2580 >>Use |T136025:0|t[Localizar Minérios] para rastrear depósitos de minério próximos
    +|cRXP_WARN_Você pode minerar pelo caminho para começar a subir Mineração até 20 para uma missão futura. Isso é opcional, especialmente no lançamento, então faça por sua conta e risco|r
    .usespell 2580
step
    #optional
    #completewith Scrawny Usera
    .train 8613,3 -- Skinning Trained
    +|cRXP_WARN_Você pode esfolar pelo caminho para começar a subir Esfolamento até 20 para uma missão futura. Isso é opcional, especialmente no lançamento, então faça por sua conta e risco|r
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
    >>Mate |cRXP_ENEMY_Ursos::250926|r. Pegue deles |T132136:0|t[|cRXP_LOOT_Garra de Ursera Delgada|r].
    .complete 92473,1 --6/6 Scrawny Ursera Claw
    .mob Scrawny Ursera::250926
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Catadores Ursera::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .mob Ursera Scavenger::250937
step
    .goto 2521,37.52,25.6,30,0
    .goto 2521,37.36,24.63,30,0
    .goto 2521,35.88,23.31,10,0
    .goto 2521,35.65,26.06
    >>Mate |cRXP_ENEMY_Urs'anah::251115|r. Saque-o para |T5840609:0|t[|cRXP_LOOT_Cabeça de Urs'anah|r].
    .complete 92470,2 --1/1 Head of Urs'anah
    --.macro Sit to Die Faster,134400 >>/sit
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
    >>Mate |cRXP_ENEMY_Catadores Ursera::250937|r.
    .complete 92470,1 --8/8 Ursera Scavenger slain
    .macro Sit to Die Faster,134400 >>Sente-se para morrer mais rápido
    .mob Ursera Scavenger::250937
step
    .isQuestComplete 92470 -- Foul Matriarch
    .subzoneskip 16673,1 -- Thendal Cave
    #loop
    .goto 2521,36.47,23.67,30,0
    .goto 2521,35.88,23.79,30,0
    .goto 2521,35.71,25.7,30,0
    .subzone 16635 >>Morra e ressuscite no cemitério.
    *|cRXP_WARN_Use a macro de sentar em combate para morrer mais rápido|r.
    .macro Sit to Die Faster,134400 >>Sente-se para morrer mais rápido
    .target Spirit Healer::6491
step
    #optional
    #completewith next
    #label Turn in Foul Matriarch
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aetheen das Ventanias::251366|r.
    .turnin 92470,1 >>Entregue Má-triarca << Warrior/Paladin
    .turnin 92470,2 >>Entregue Má-triarca << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Entregue Má-triarca << Mage
    .turnin 92470,4 >>Entregue Má-triarca << Rogue
    .turnin 92470,5 >>Entregue Má-triarca << Hunter
step
    #completewith Turn in Foul Matriarch
    #ignorecorpse
    .subzoneskip 16635,1 -- Thendal Village
    .isQuestComplete 92470 -- Foul Matriarch
    .goto 2521,41.06,22.31
    .showwhiledead
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anjo da Cura::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Turn in Foul Matriarch
    .goto 2521,42.76,23.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aetheen das Ventanias::251366|r.
    .turnin 92470,1 >>Entregue Má-triarca << Warrior/Paladin
    .turnin 92470,2 >>Entregue Má-triarca << Druid/Shaman/Priest/Warlock
    .turnin 92470,3 >>Entregue Má-triarca << Mage
    .turnin 92470,4 >>Entregue Má-triarca << Rogue
    .turnin 92470,5 >>Entregue Má-triarca << Hunter
    .accept 92472 >>Aceite O próximo passo
    .accept 96638 >>Aceite O aventureiro
    .target Aetheen of the Gales::251366
step
    #optional
    #completewith next
    #label Aggressive Encroachment2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valreaa Ventoval::257551|r.
    .turnin 92473,1 >>Entregue Ocupação agressiva
    .target Valreaa Valewind::257551
step
    #completewith Aggressive Encroachment2
    .goto 2521,42.76,24.52
    .vendor 251537 >>|cRXP_WARN_Venda os lixos|r
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] nem |T132889:0|t[Linho]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] nem |T132889:0|t[Linho]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
step
    #requires Aggressive Encroachment2
    .goto 2521,42.41,25.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valreaa Ventoval::257551|r.
    .turnin 92473,1 >>Entregue Ocupação agressiva
    .target Valreaa Valewind::257551
step
    #optional
    #completewith next
    #label Al'Aketh Thugs
    *|cRXP_WARN_Equipe a|r |T135335:0|t[Montante Usada] << Warrior/Paladin
    *|cRXP_WARN_Equipe o|r |T135145:0|t[Varapau do Noviço] << Druid/Shaman/Priest/Warlock
    *|cRXP_WARN_Equipe a|r |T135650:0|t[Adaga do Patrulheiro Batedor] << Mage
    *|cRXP_WARN_Equipe o|r |T133057:0|t[Martelo com Picareta do Pacificador] << Rogue
    *|cRXP_WARN_Equipe o|r |T135503:0|t[Arco Curto Refinado] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanaa Noctéolas::252095|r.
    .accept 92544 >>Aceite Bandido Al'Aketh
    .target Hanaa Nightwind::252095
    .use 258882 << Warrior/Paladin -- Worn Greatsword
    .use 257282 << Druid/Shaman/Priest/Warlock -- Novice's Quarterstaff
    .use 257283 << Mage -- Scout Ranger's Dagger
    .use 257276 << Rogue -- Peacekeeper's Pickhammer
    .use 273879 << Hunter -- Refined Shortbow
step
    #completewith Al'Aketh Thugs
    .goto 2521,38.31,30.17,100 >>Mate inimigos pelo caminho se puder fazer isso sem perder tempo.
step
    #requires Al'Aketh Thugs
    .goto 2521,38.31,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanaa Noctéolas::252095|r.
    .accept 92544 >>Aceite Bandido Al'Aketh
    .target Hanaa Nightwind::252095
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Brutamontes Al'Aketh::251145|r e |cRXP_ENEMY_Neófitos Al'Aketh::251448|r.
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #optional
    #completewith next
    #label Malduko Cloudcrush
    .goto 2521,37.04,32.93,20,0
    >>Mate |cRXP_ENEMY_Malduko Nubismaga::256935|r.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step
    #completewith Malduko Cloudcrush
    .goto 2521,36.032,33.545,50 >>Vá até o andar superior do templo
step
    #requires Malduko Cloudcrush
    .goto 2521,36.032,33.545
    >>Mate |cRXP_ENEMY_Malduko Nubismaga::256935|r no topo do templo.
    .complete 92544,3 --|1/1 Malduko Cloudcrush slain
    .mob Malduko Cloudcrush::256935
step << Horde
    .isOnQuest 92544 -- Al'Aketh Thugs
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,35.910,33.605
    .cast 1259686 >>Use |T1029587:0|t[Visão do Céu] para obter o bônus de 10% de velocidade de movimento.
step << Alliance
    .isOnQuest 92544 -- Al'Aketh Thugs
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,35.57,33.84
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
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
    >>Mate |cRXP_ENEMY_Brutamontes Al'Aketh::251145|r e |cRXP_ENEMY_Neófitos Al'Aketh::251448|r.
    *|cRXP_WARN_Renove|r |T236219:0|t[Ler Meridianos] |cRXP_WARN_perto da Linha de Meridiano|r << Alliance
    .usespell 1259705
    .complete 92544,1 --|6/6 Al'Aketh Brute slain
    .mob +Al'Aketh Brute::251145
    .complete 92544,2 --|4/4 Al'Aketh Neophyte slain
    .mob +Al'Aketh Neophyte::251448
step
    #label Grind6
    .xp 5+1740 >>Farme até atingir 1740+/2800 de EXP no nível 5 para chegar ao nível 6 após entregar as missões na próxima aldeia e poder aprender novos feitiços.
    -- Maybe only grind here if little XP is needed; otherwise, train abilities after the cave.
step
    .goto 2521,38.32,30.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanaa Noctéolas::252095|r.
    .turnin 92544 >>Entregue Bandido Al'Aketh
    .target Hanaa Nightwind::252095

-- ============================================================================
-- First Visit Shen'dar Village
-- ============================================================================

step
    #completewith SkybornePart1End
    #hidewindow
    +Local possível de surgimento de Tornado
    #icon |TInterface/Icons/Spell_Nature_Cyclone:0|t
    .pin 2521,50.22,76.77,Tornado
    .pin 2521,53.51,71.46,Tornado
    .pin 2521,54.46,60.13,Tornado
    .pin 2521,64.52,46.4,Tornado
    .pin 2521,46.52,71.19,Tornado
    .pin 2521,59.59,43.9,Tornado
    .pin 2521,62.15,70.42,Tornado
    .pin 2521,52.5,79,Tornado
    .pin 2521,54.36,72.97,Tornado
    .pin 2521,62.52,73.74,Tornado
    .pin 2521,42.85,41.26,Tornado
    .pin 2521,58.8,74.36,Tornado
    .pin 2521,64.84,67.52,Tornado
    .pin 2521,52.41,70.33,Tornado
    .pin 2521,43.74,59.77,Tornado
    .pin 2521,54.22,64.13,Tornado
    .pin 2521,64.44,79.62,Tornado
    .pin 2521,58.77,50.45,Tornado
    .pin 2521,57.28,70.5,Tornado
    .pin 2521,68.16,74.89,Tornado
    .pin 2521,60.94,73.58,Tornado
    .pin 2521,48.36,80.52,Tornado
    .pin 2521,58.40,47.31,Tornado
    .pin 2521,58.78,50.39,Tornado
    .pin 2521,41.45,54.37,Tornado
    .pin 2521,37.25,46.84,Tornado
    .pin 2521,40.43,46.88,Tornado
    .pin 2521,46.58,38.35,Tornado
    .pin 2521,43.16,65.06,Tornado
    .pin 2521,60.44,66.16,Tornado
    .pin 2521,61.06,73.57,Tornado
    .pin 2521,58.04,44.13,Tornado
    .use 255663 --Windstones
step
    #optional
    #completewith next
    +|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Cristais de Pedra Eólica|r pelo caminho para obter itens que restauram vida e mana
    *|cRXP_WARN_Se vir um tornado, toque nele para ganhar 40% de velocidade de movimento. Causar dano remove o efeito|r.
step
    .isOnQuest 92472 -- The Next Step
    #completewith VendorStep
    #label The Next Step
    #hidewindow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Aonda::251523|r.
    .turnin 92472 >>Entregue O Próximo Passo
    .target Constable Aonda::251523
step
    #completewith The Next Step
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r pelo caminho. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r]
    *|cRXP_WARN_Se o bônus de velocidade do Tornado estiver ativo ou houver um Tornado por perto, evite matá-los.|r.
    .collect 5469,8 -- Strider Meat
    .collect 6889,3 -- Small Egg
    -- .complete 92553,2 --8/8 Strider Meat
    -- .complete 92553,1 --3/3 Small Egg
    .mob Galestrider::251661
step << !Rogue !Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veena Verinuvem::254358|r.
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Shaman/Druid/Priest/Warlock/Paladin/Mage
    >>|cRXP_WARN_Guarde 2 de prata para os feitiços da sua classe!|r << Shaman/Druid
    >>|cRXP_WARN_Guarde 2 de prata para os feitiços da sua classe!|r << Mage
    .vendor 254358 >>|cRXP_WARN_Venda os lixos|r.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
step << Rogue/Warrior
    #completewith The Next Step
    #label VendorStep
    .goto 2521,44.67,45.19,10,0
    .goto 2521,44.78,45.05
    .vendor 254360 >>|cRXP_WARN_Venda os lixos|r.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .target Belandiel Farflight::254360
step
    #requires The Next Step
    .isOnQuest 92472 -- The Next Step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Aonda::251523|r.
    .turnin 92472 >>Entregue O Próximo Passo
    .target Constable Aonda::251523
step
    .goto 2521,45.67,45.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Aonda::251523|r.
    .accept 93461 >>Aceite Boas-vindas à Aldeia de Shen'dar << Alliance
    .accept 92514 >>Aceite Boas-vindas à Aldeia de Shen'dar << Horde
    .target Constable Aonda::251523
step << Mage
    .money <0.02
    -- .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorii Soproluz::251379|r.
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo (Grau 2)]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    -- .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    --  Comprehend Scroll early can be good,if you get scrolls and don't go polymorphed
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379

-- ============================================================================
-- Alliance Shen'dar Village Introduction Branch
-- ============================================================================

step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rathiril Arrebol::251903|r.
    .complete 93461,1 --1/1 Speak with Rathiril Sunlance
    .accept 92596 >>Aceite A Alta Ordem
    .target Rathiril Sunlance::251903
step << Alliance
    .goto 2521,45.04,46.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rathiril Arrebol::251903|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rathiril Arrebol::251903|r.
    .turnin 92596 >>Entregue A Alta Ordem
    .accept 94413 >>Aceite Uma afronta mágica
    .target Rathiril Sunlance::251903
step << Alliance Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miriaan Laminévoa::254087|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro (Grau 2)]
    .train 1776 >>Aprenda |T132155:0|t[Esfaquear]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step << Alliance Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miriaan Laminévoa::254087|r
    .train 1757 >> Aprenda |T136189:0|t[Golpe Sinistro (Grau 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coriella Ventocalmo::254089|r.
    .complete 93461,2 --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Alliance
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coriella Ventocalmo::254089|r.
    .home >>Defina sua Pedra de Regresso para a Aldeia de Shen'dar
    .bindlocation 16624
    .target Coriella Calmbreeze::254089

-- ============================================================================
-- Horde Shen'dar Village Introduction Branch
-- ============================================================================

step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illaya Ventâmbar::251902|r.
    .complete 92514,1 --1/1 Speak with Illaya Amberwind
    .accept 92595 >>Aceite Os Moldevento
    .target Illaya Amberwind::251902
step << Horde
    .goto 2521,43.52,44.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illaya Ventâmbar::251902|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illaya Ventâmbar::251902|r.
    .turnin 92595 >>Entregue Os Moldevento
    .accept 94411 >>Aceite Magos metidos
    .target Illaya Amberwind::251902
step << Horde Shaman
    .money <0.01
    .xp <6,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aarnor Ventataque::254082|r
    .trainer >>Treine suas magias de classe
    .target Aarnor Galestrike::254082
    .skipgossipid 136811
step << Horde
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coriella Ventocalmo::254089|r.
    .complete 92514,2 --1/1 Speak with the Innkeeper
    .target Coriella Calmbreeze::254089
step << Horde
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.02,43.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coriella Ventocalmo::254089|r.
    .home >>Defina sua Pedra de Regresso para a Aldeia de Shen'dar
    .bindlocation 16624
    .target Coriella Calmbreeze::254089
step << Horde Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miriaan Laminévoa::254087|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro (Grau 2)]
    .train 1776 >>Aprenda |T132155:0|t[Esfaquear]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step << Horde Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miriaan Laminévoa::254087|r
    .train 1757 >> Aprenda |T136189:0|t[Golpe Sinistro (Grau 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================

step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corsan Destruterra::254088|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naeluna Ajudágil::254081|r dentro da casa.
    .train 467 >>Aprenda |T136104:0|t[Espinhos]
    .train 5177 >>Aprenda |T136006:0|t[Ira (Grau 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.07,45.27,25,0
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elayaa Ventofácil::254084|r dentro da casa.
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
step
    -- #label MageEnchanting
    .goto 2521,45.67,45.50
    -- *|cRXP_WARN_Equip the|r |T135645:0|t[Novice's Practice Wand] << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Aonda::251523|r.
    .turnin 93461 >>Entregue Boas-vindas à Aldeia de Shen'dar << Alliance
    .turnin 92514 >>Entregue Boas-vindas à Aldeia de Shen'dar << Horde
    .accept 92517 >>Aceite O elemento criminoso
    .target Constable Aonda::251523

--Class Trainer Backup
step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corsan Destruterra::254088|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088

--Class Trainer Backup
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elayaa Ventofácil::254084|r.
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .skipgossipid 136808
    .target Elayaa Easewind::254084

--Class Trainer Backup
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naeluna Ajudágil::254081|r
    .train 467 >>Aprenda |T136104:0|t[Espinhos]
    .train 5177 >>Aprenda |T136006:0|t[Ira (Grau 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081

--Class Trainer Backup
step << Mage
    .money <0.02
    -- .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorii Soproluz::251379|r.
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo (Grau 2)]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    -- .train 1296017 >>Train |T8188276:0|t[Comprehend Scroll]
    --  Comprehend Scroll early can be good,if you get scrolls and don't go polymorphed
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Druid/Priest/Warlock/Mage
    .money <0.0125
    .isNotOnQuest 93319,92516 -- Pilfered Windstones / Hippogryph Harassment
    .isQuestAvailable 93319 -- Pilfered Windstones
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.72,45.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veena Verinuvem::254358|r.
    .collect 1179,5 >>|cRXP_BUY_Compre 5|r |T132815:0|t[Leite Gelado], |cRXP_BUY_ou 10 se puder pagar|r
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
step
    .goto 2521,44.47,44.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teeri Benvento::251906|r.
    .accept 93319 >>Aceite Pedras eólicas roubadas
    .accept 92516 >>Aceite Hipogrifos hostis
    .target Teeri Wellwind::251906
step
    .goto 2521,44.68,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Indari Tramassol::251993|r.
    .accept 92515 >>Aceite O gargalo das garraltivas
    .target Indari Sunseam::251993
step
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taleen Cintilinha::251991|r.
    .accept 93951 >>Aceite Leve beleza
    .target Taleen Shimmerthread::251991
step << Shaman
    .money <0.0504
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step << Hunter
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    -- >>|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] |cRXP_BUY_until your Quiver is full|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421
step << Warrior/Paladin
    .money <0.0701
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r e compre e equipe uma |T133053:0|t[Marreta de Madeira].
    .collect 2493,1 -- Wooden Mallet
    .target Tephri Thriceforged::257421
step << Rogue
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.81
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r e compre e equipe um |T135321:0|t[Gládio].
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r
    .accept 92553 >>Aceite Reabastecendo a despensa
    .addquestitem 6889,92553
    .addquestitem 5469,92553
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r
    .turnin 92553 >>Entregue Reabastecendo a despensa
    .target Zerril Softbreeze::251905
step
    .money <0.01
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r
    .train 2550 >>Aprenda |T133971:0|t[Cozinheiro Aprendiz]
    .skipgossipid 137551 --Train me.
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar o máximo possível.
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas
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
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar 1 e obter o bônus de experiência.
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .itemcount 6889,>3 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.86,43.85
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar todos os Ovos Pequenos, exceto os 3 reservados para Reabastecendo a despensa.
    *|cRXP_WARN_Guarde pelo menos 3 Ovos Pequenos para uma missão futura|r
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas

--Class Trainer Backup
step << Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miriaan Laminévoa::254087|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro (Grau 2)]
    .train 1776 >>Aprenda |T132155:0|t[Esfaquear]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

--Class Trainer Backup
step << Rogue
    .money <0.01
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miriaan Laminévoa::254087|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro (Grau 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step
    #optional
    #completewith BadwindBennicA
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r |cRXP_WARN_pelo caminho|r. Pegue delas |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
    *|cRXP_WARN_Priorize-os|r
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #optional
    #completewith BadwindBennicA
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r |cRXP_WARN_pelo caminho|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
    *|cRXP_WARN_Priorize-os|r
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #loop
    .goto 2521,46.13,39.79,25,0
    .goto 2521,46.9,38.84,25,0
    .goto 2521,46.37,37.85,25,0
    .goto 2521,45.76,39.31,25,0
    >>Mate |cRXP_ENEMY_Aprendizes da Alta Ordem::257521|r.
    .complete 94411,1 --|6/6 High Order Apprentice defeated
    .mob High Order Apprentice::257521
step << Horde
    .isOnQuest 92517 -- The Criminal Element
    .isQuestNotComplete 92517 -- The Criminal Element
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,46.597,38.121
    .cast 1259686 >>Use |T1029587:0|t[Visão do Céu] para obter o bônus de 10% de velocidade de movimento.
step
    #optional
    #completewith BadwindBennicB
    >>Mate |cRXP_ENEMY_Bandidos do Planalto::251918|r. Pegue deles a |T5172975:0|t[|cRXP_LOOT_Pedra Eólica Roubada|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #optional
    #completewith next
    #label BadwindBennicA
    >>Mate |cRXP_ENEMY_Bennic "Malevento"::255534|r.
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #completewith BadwindBennicA
    .goto 2521,48.813,36.434,10,0
    .goto 2521,49.355,35.793,15,0
    .goto 2521,49.537,34.325,70 >>Entre na caverna
step << Alliance
    #requires BadwindBennicA
    #completewith next
    .isOnQuest 92517 -- The Criminal Element
    .subzoneskip 16674,1 -- Bandit Hideout
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,50.59,33.51,20,0
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
    .usespell 1259705
step
    #requires BadwindBennicA
    #label BadwindBennicB
    .goto 2521,49.8,36.03,20,0
    .goto 2521,49.97,35.19,20,0
    .goto 2521,49.59,34.3,20,0
    .goto 2521,50.4,33.49,30,0
    .goto 2521,50.680,34.214
    >>Mate |cRXP_ENEMY_Bennic "Malevento"::255534|r.
    .usespell 1259705
    .complete 92517,2 --|1/1 "Badwind" Bennic slain
    .mob "Badwind" Bennic::255534
step
    #optional
    #completewith OutCave
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith OutCave
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r. Pegue deles as |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
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
    >>Mate |cRXP_ENEMY_Bandidos do Planalto::251918|r. Pegue deles |T5172975:0|t[|cRXP_LOOT_Pedra Eólica Roubada|r].
    .complete 92517,1 --|10/10 Highlands Bandit slain
    .complete 93319,1 --|10/10 Pilfered Windstone
    .mob +Highlands Bandit::251918
step
    #optional
    #completewith To Shendalar
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r |cRXP_WARN_pelo caminho|r.
    *Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
    -- *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith To Shendalar
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r |cRXP_WARN_pelo caminho|r.
    *Pegue deles |T237416:0|t[|cRXP_LOOT_Pelagem de Garraltiva|r].
    -- *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label To Shendalar
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .goto 2521,43.86,43.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r e compre 5 |T134059:0|t[Temperos Suaves].
    .vendor 251905 >>Venda os lixos
    .collect 2678,5 -- Mild Spices
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .target Zerril Softbreeze::251905
    .skipgossipid 137550
step
    .goto 2521,43.850,43.840
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r
    .train 2550 >>Aprenda |T133971:0|t[Cozinheiro Aprendiz]
    .skipgossipid 137551
    .target Zerril Softbreeze::251905
step -- for people who send the items over
    .isQuestComplete 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r
    .turnin 92553 >>Entregue Reabastecendo a despensa
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isOnQuest 94413 << Alliance -- A Magical Affront
    .isQuestNotComplete 94413 << Alliance -- A Magical Affront
    .isQuestComplete 94411 << Horde -- Meddlesome Mages
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar o máximo possível.
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas
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
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar 1 e obter o bônus de experiência.
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas
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
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar todos os Ovos Pequenos, exceto os 3 reservados para Reabastecendo a despensa.
    *|cRXP_WARN_Guarde pelo menos 3 Ovos Pequenos para uma missão futura|r
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas

--Class Trainer Backup
step << Rogue
    .money <0.02
    .train 1777,1 -- Gouge (Rank 2) Not Trained
    .xp <6,1
    .goto 2521,43.16,43.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miriaan Laminévoa::254087|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro (Grau 2)]
    .train 1776 >>Aprenda |T132155:0|t[Esfaquear]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087

--Weapon Backup
step << Hunter
    .money <0.0285
    .isOnQuest 96638 --The Adventurer
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Warrior/Paladin
    .money <0.0701
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r e compre e equipe uma |T133053:0|t[Marreta de Madeira].
    .collect 2493,1 -- Wooden Mallet
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Rogue
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.81
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.8,44.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r e compre e equipe um |T135321:0|t[Gládio].
    .collect 2488,1 -- Gladius
    .target Tephri Thriceforged::257421

--Weapon Backup
step << Shaman
    .money <0.0504
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421

step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aedi Triforjado::251913|r.
    *|cRXP_WARN_Pule esta etapa se já tiver duas profissões|r.
    .train 2018 >>Aprenda |T136241:0|t[Ferraria]
    .target Aedi Thriceforged::251913
step << Rogue/Warrior/Paladin/Shaman
    #optional
    .itemcount 2835,1 -- Rough Stone
    .train 2018,3 -- Blacksmithing Trained
    #completewith next
    +Abra |T136241:0|t[Ferraria], faça uma |T135248:0|t[Pedra de Afiar Rústica] e aplique-a na sua arma de corte. << Rogue
    +Abra |T136241:0|t[Ferraria], faça um |T135255:0|t[Contrapeso Rústico] e aplique-o na sua arma contundente.  << Warrior/Paladin/Shaman
    .usespell 2018
step << Rogue/Warrior/Paladin/Shaman
    #optional
    #completewith Turn in The Adventurer
    .train 2018,3 -- Blacksmithing Trained
    +Abandone Ferraria ou continue com ela.
-- step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teeri Benvento::251906|r
    .target Teeri Wellwind::251906
    .turnin 93319 >>Entregue Pedras eólicas roubadas
--Weapon Backup
step << Shaman
    .money <0.0504
    .isOnQuest 96638 --The Adventurer
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
-- step << Mage/Druid/Shaman/Priest/Warlock/Paladin/Rogue/Warrior
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isOnQuest 96638 -- The Adventurer
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veena Verinuvem::254358|r
    .vendor 254358 >>|cRXP_BUY_Compre uma|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_WARN_se puder|r.
    *|cRXP_BUY_Compre no máximo 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Mage/Druid/Shaman/Priest/Warlock/Paladin
    *|cRXP_WARN_Ao equipar bolsas, certifique-se de colocar sua Bolsa de Reagentes no espaço exclusivo para ela|r.
    .collect 2946,1 >>|cRXP_BUY_Compre uma|r |T135641:0|t[Adaga de Arremesso Equilibrada]. << Rogue/Warrior
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos], |T133972:0|t[Carne de Moa] nem |T132889:0|t[Linho]. << Horde
    .target Veena Vericloud::254358

--Class Trainer Backup
step << Warrior
    .money <0.01
    .xp <6,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corsan Destruterra::254088|r
    .train 3127 >> Aprenda |T132269:0|t[Aparar]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088

--Class Trainer Backup
step << Hunter
    .money <0.02
    .xp <6,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elayaa Ventofácil::254084|r.
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .skipgossipid 136808
    .target Elayaa Easewind::254084

--Class Trainer Backup
step << Druid
    .money <0.02
    .xp <6,1
    .goto 2521,45.154,44.217
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naeluna Ajudágil::254081|r
    .train 467 >>Aprenda |T136104:0|t[Espinhos]
    .train 5177 >>Aprenda |T136006:0|t[Ira (Grau 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081

--Class Trainer Backup
step << Mage
    .money <0.03
    .xp <6,1
    .goto 2521,45.1,45.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorii Soproluz::251379|r.
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo (Grau 2)]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .train 1296017 >>Aprenda |T8188276:0|t[Compreender Pergaminho]
    .skipgossipid 136807,1
    .target Dorii Brightwhisper::251379
step << Horde
    .goto 2521,43.518,44.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illaya Ventâmbar::251902|r.
    .turnin 94411 >>Entregue Magos metidos
    .target Illaya Amberwind::251902

--Class Trainer Backup
step << Horde Shaman
    .money <0.01
    .xp <6,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aarnor Ventataque::254082|r
    .trainer >>Treine suas magias de classe
    .target Aarnor Galestrike::254082
step
    .goto 2521,43.37,45.86
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Recompensa: Vulgara, Insaciável!|r
    .accept 93318 >>Aceite PROCURA-SE: Vulgara, a Insaciável
    .target Bounty Available: Vulgara the Insatiable!
-- step << Warrior/Rogue
step
    .goto 2521,43.073,46.306
    .itemcount 2589,5 -- Linen Cloth
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naleeia Emendarrapo::257018|r.
    .train 3273 >>Aprenda Primeiros Socorros
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step << Rogue/Warrior
    .goto 2521,43.073,46.306
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naleeia Emendarrapo::257018|r.
    .train 3273 >>Aprenda Primeiros Socorros
    .skipgossipid 137555
    .target Naleeia Tattermend::257018
step
    #label Turn in The Adventurer
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r.
    .turnin 96638 >>Entregue O aventureiro
    .target Raan Wildwind::263664
    .accept 96101 >>Aceite Vida ao ar livre
step
    .goto 2521,41.67,44.79
    >>Clique na macro no painel de Itens Ativos para sentar.
    .complete 96101,1 --1/1 Use the /sit emote near the campfire
    .macro Sit,134400 >>Sente-se
    .timer 59,Tempo até a conclusão 1
step << Alliance
    .aura -1289723
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Não se mova nem pule até a missão ser concluída|r.
    *|cRXP_WARN_Use as macros no "Quadro de Itens Ativos" para criar|r |T133685:0|t[Bandagens de Linho] e |T133974:0|t[Carne de Lobo Tostada] para missões futuras.
    *Você pode criar itens e renovar os bônus sem perder o crédito da missão. Também pode comer alimentos que concedem bônus aqui para ganhar 5% a mais de experiência por abates.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro First Aid,135966 >>Primeiros Socorros
    .macro Cooking,133971 >>Culinária
step
    .aura -1289723
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    >>|cRXP_WARN_Não se mova nem pule até a missão ser concluída|r.
    *|cRXP_WARN_Pressione a macro no "Quadro de Itens Ativos" para criar|r |T133685:0|t[Bandagens de Linho] para uma missão futura.
    *Você pode criar itens e renovar os bônus sem perder o crédito da missão. Também pode comer alimentos que concedem bônus aqui para ganhar 5% a mais de experiência por abates.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro First Aid,135966 >>Primeiros Socorros
step << Alliance
    .aura -1289723
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Não se mova nem pule até a missão ser concluída|r.
    *|cRXP_WARN_Pressione a macro no "Quadro de Itens Ativos" para criar|r |T133974:0|t[Carne de Lobo Tostada] para uma missão futura|r
    *Você pode criar itens e renovar os bônus sem perder o crédito da missão. Também pode comer alimentos que concedem bônus aqui para ganhar 5% a mais de experiência por abates.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Cooking,133971 >>Culinária
step
    .aura -1289723
    >>|cRXP_WARN_Não se mova nem pule até a missão ser concluída|r.
    *Você pode criar itens e renovar os bônus sem perder o crédito da missão. Também pode comer alimentos que concedem bônus aqui para ganhar 5% a mais de experiência por abates.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .aura 1289723
    >>O processo foi cancelado. Use a macro SENTAR novamente para reiniciá-lo.
    *|cRXP_WARN_Não se mova nem pule até a missão ser concluída|r.
    .complete 96101,2 --Gain the Boosted Rest buff
    .timer 59,Tempo até a conclusão 2
    .macro Sit,134400 >>Sente-se
step << Alliance
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Não se mova nem pule até a missão ser concluída|r.
    *|cRXP_WARN_Use as macros no "Quadro de Itens Ativos" para criar|r |T133685:0|t[Bandagens de Linho] e |T133974:0|t[Carne de Lobo Tostada] para missões futuras.
    *Você pode criar itens e renovar os bônus sem perder o crédito da missão. Também pode comer alimentos que concedem bônus aqui para ganhar 5% a mais de experiência por abates.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro First Aid,135966 >>Primeiros Socorros
    .macro Cooking,133971 >>Culinária
step
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    >>|cRXP_WARN_Não se mova nem pule até a missão ser concluída|r.
    *|cRXP_WARN_Pressione a macro no "Quadro de Itens Ativos" para criar|r |T133685:0|t[Bandagens de Linho] para uma missão futura.
    *Você pode criar itens e renovar os bônus sem perder o crédito da missão. Também pode comer alimentos que concedem bônus aqui para ganhar 5% a mais de experiência por abates.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro First Aid,135966 >>Primeiros Socorros
step << Alliance
    .train 2550,3 -- Cooking Trained
    .itemcount 2672,1 --Stringy Wolf Meat
    >>|cRXP_WARN_Não se mova nem pule até a missão ser concluída|r.
    *|cRXP_WARN_Pressione a macro no "Quadro de Itens Ativos" para criar|r |T133974:0|t[Carne de Lobo Tostada] para uma missão futura|r
    *Você pode criar itens e renovar os bônus sem perder o crédito da missão. Também pode comer alimentos que concedem bônus aqui para ganhar 5% a mais de experiência por abates.
    .complete 96101,2 --Gain the Boosted Rest buff
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Cooking,133971 >>Culinária
step
    >>|cRXP_WARN_Não se mova nem pule até a missão ser concluída|r.
    *Você pode criar itens e renovar os bônus sem perder o crédito da missão. Também pode comer alimentos que concedem bônus aqui para ganhar 5% a mais de experiência por abates.
    .complete 96101,2 --Gain the Boosted Rest buff
step
    .goto 2521,41.67,44.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r.
    .turnin 96101 >>Entregue Vida ao ar livre
    .target Raan Wildwind::263664

-- step
--     #completewith next
--     .train 2575,3 -- Mining Trained
--     .complete 97970 >>Complete Camping 101: Mining
-- step
--     #completewith next
--     .train 8613,3 -- Skinning Trained
--     .complete 97971 >>Complete Camping 101: Skinning
-- step
--     #completewith next
--     .complete 96646 >>Complete Camping 101: Cooking
-- step
--     #completewith next
--     .train 2366,3 -- Herbalism Trained
--     .complete 97968 >>Complete Camping 101: Herbalism
-- step
--     #completewith next
--     .train 3273,3 -- First Aid Trained
--     .complete 97965 >>Complete Camping 101: First Aid
-- step
--     #completewith next
--     .train 7620,3 -- Fishing Trained
--     .complete 97967 >>Complete Camping 101: Fishing
-- step
--     #completewith next
--     .train 2259,3 -- Alchemy Trained
--     .complete 97963 >>Complete Camping 101: Alchemy
-- step
--     #completewith next
--     .train 2018,3 -- Blacksmithing Trained
--     .complete 97964 >>Complete Camping 101: Blacksmithing
-- step
--     #completewith next
--     .train 3908,3 -- Tailoring Trained
--     .complete 97973 >>Complete Camping 101: Tailoring
-- step
--     #completewith next
--     .train 7411,3 -- Enchanting Trained
--     .complete 98286 >>Complete Camping 101: Enchanting
-- step
--     #completewith next
--     .train 2108,3 -- Leatherworking Trained
--     .complete 97969 >>Complete Camping 101: Leatherworking


step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2575,3 -- Mining Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 97970 >>Aceite Introdução ao Acampamento: Mineração
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 8613,3 -- Skinning Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 97971 >>Aceite Introdução ao Acampamento: Esfolamento
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 96646 >>Aceite Introdução ao Acampamento: Cozinha
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2366,3 -- Herbalism Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 97968 >>Aceite Introdução ao Acampamento: Herborismo
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3273,3 -- First Aid Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 97965 >>Aceite Introdução ao Acampamento: Primeiros Socorros
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7620,3 -- Fishing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 97967 >>Aceite Introdução ao Acampamento: Pesca
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2259,3 -- Alchemy Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 97963 >>Aceite Introdução ao Acampamento: Alquimia
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 2018,3 -- Blacksmithing Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 97964 >>Aceite Introdução ao Acampamento: Ferraria
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 3908,3 -- Tailoring Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 97973 >>Aceite Introdução ao Acampamento: Alfaiataria
    .target Raan Wildwind::263664
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7411,3 -- Enchanting Trained
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 98286 >>Aceite Introdução ao Acampamento: Encantamento
    .target Raan Wildwind::263664
step
    .train 2108,3 -- Leatherworking Trained
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,41.658,44.784
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raan Ventoferoz::263664|r
    .accept 97969 >>Aceite Introdução ao Acampamento: Couraria
    .target Raan Wildwind::263664
step
    #optional
    #completewith HippogryphHarassmentA
    +|cRXP_WARN_Se houver um tornado por perto, toque nele para ganhar 40% de velocidade de movimento por 5 minutos. Causar dano remove o efeito|r.
step
    #optional
    #completewith HippogryphHarassmentA
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r. Pegue deles as |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #optional
    #completewith HippogryphHarassmentA
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Videntes Noviços Moldavento::257532|r.
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step << Alliance
    .isOnQuest 94413 -- A Magical Affront
    .isQuestNotComplete 94413 -- A Magical Affront
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,39,47.37
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
    .usespell 1259705
step << Alliance
    #loop
    .goto 2521,37.96,46.86,40,0
    .goto 2521,38.75,48.72,40,0
    .goto 2521,38.99,47.24,40,0
    >>Mate |cRXP_ENEMY_Videntes Noviços Moldavento::257532|r.
    .usespell 1259705
    .complete 94413,1 --6/6 Windshaper Novice Seer defeated
    .mob Windshaper Novice Seer::257532
step
    .isOnQuest 92516 -- Hippogryph Harassment
    .isQuestNotComplete 92516 -- Hippogryph Harassment
    .subzoneskip 16623,1 -- Shen'dar Highlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,36.44,50.93
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar em direção ao ponto indicado.
    *|cRXP_WARN_Cuidado perto do ponto indicado; dois Grifos patrulham a área|r.
    .usespell 1259416

--here It's possible to change this in such a way that we first guarantee Protector & Matriarch then Youth

step << Horde
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,45,0
    .goto 2521,34.52,52.76,45,0
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
step << Alliance
    #completewith HippogryphHarassmentA
    #hidewindow
    #loop
    .goto 2521,36.44,50.93,40,0
    .goto 2521,35.16,51.07,35,0
    .goto 2521,34.12,51.6,45,0
    .goto 2521,34.52,52.76,45,0
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
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Jovens Hipogrifos::251291|r, |cRXP_ENEMY_Protetores Hipogrifos::251284|r e a |cRXP_ENEMY_Matriarca Hipogrifo::251261|r.
    *|cRXP_WARN_Pegue o lixo valioso deles para vender e ajudar a pagar por armas melhores e treinamento de classe|r.
    *|cRXP_WARN_Priorize a |cRXP_ENEMY_Matriarca::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Plumas de Hipogrifo|r.
    .complete 93951,1 --|8/8 Hippogryph Down
step
    #label HippogryphHarassmentA
    >>Mate |cRXP_ENEMY_Jovens Hipogrifos::251291|r, |cRXP_ENEMY_Protetores Hipogrifos::251284|r e a |cRXP_ENEMY_Matriarca Hipogrifo::251261|r.
    *|cRXP_WARN_Pegue o lixo valioso deles para vender e ajudar a pagar por armas melhores e treinamento de classe|r.
    *|cRXP_WARN_Priorize a |cRXP_ENEMY_Matriarca::251261|r|r
    .complete 92516,1 --|8/8 Hippogryph Youth slain
    .mob +Hippogryph Youth::251291
    .complete 92516,2 --|6/6 Hippogryph Protector slain
    .mob +Hippogryph Protector::251284
    .complete 92516,3 --|1/1 Hippogryph Matriarch slain
    .mob +Hippogryph Matriarch::251261
step
    #optional
    #completewith VulgarasHeadA
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    #optional
    #completewith VulgarasHeadA
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r. Pegue deles as |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label VulgarasHeadA
    .goto 2521,43.079,51.028,15,0
    .goto 2521,42.978,51.803,15,0
    .goto 2521,42.75,52.68
    >>Mate |cRXP_ENEMY_Vulgara::254589|r |cRXP_WARN_(elite de nível 8)|r na montanha. Pegue a |T4218759:0|t[|cRXP_LOOT_Cabeça de Vulgara|r].
    *|cRXP_WARN_Procure um grupo para matá-la ou pule a missão; ela demora para reaparecer|r.
    .complete 93318,1 --1/1 Vulgara's Head
    .mob Vulgara::254589
step
    #optional
    #completewith A Little Beauty
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
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
    #optional
    #completewith A Little Beauty
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r. Pegue deles as |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .goto 2521,43.08,46.31
    >>Pressione a macro no "Quadro de Itens Ativos" para criar |T133685:0|t[Bandagens de Linho].
    *|cRXP_WARN_Pule esta etapa se não conseguir atingir 20 de perícia|r
    .complete 97965,1 >>Conclua Introdução ao acampamento: Primeiros Socorros
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro First Aid,135966 >>Primeiros Socorros
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naleeia Emendarrapo::257018|r dentro da torre
    .turnin 97965 >>Entregue Introdução ao Acampamento: Primeiros Socorros
    .target Naleeia Tattermend::257018
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nasalanna Cantavento::257020|r
    .turnin 98286 >>Entregue Introdução ao Acampamento: Encantamento
    .target Nasalanna Windsinger::257020
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mendalass Emendarrapo::257024|r
    .turnin 97971 >>Entregue Introdução ao Acampamento: Esfolamento
    .target Mendalass Tattermend::257024
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r e compre 5 |T134059:0|t[Temperos Suaves]
    .vendor 251905 >>Venda os lixos
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .collect 2678,5 -- Mild Spices
    .skipgossipid 137550
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92516 -- Hippogryph Harassment
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r
    .turnin 92553 >>Entregue Reabastecendo a despensa
    .target Zerril Softbreeze::251905
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r
    .turnin 96646 >>Entregue Introdução ao Acampamento: Cozinha
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar o máximo possível.
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestNotComplete 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6888,<1 -- Herb Baked Egg
    .itemcount 6889,1 -- Small Egg
    .goto 2521,43.86,43.85
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar 1 e obter o bônus de experiência.
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas
step
    .isOnQuest 92553 -- Restocking the Larders
    .isQuestComplete 92516 -- Hippogryph Harassment
    .train 2550,3 -- Cooking Trained
    .itemcount 6889,>3 -- Small Egg
    .goto 2521,43.86,43.85
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar todos os Ovos Pequenos, exceto os 3 reservados para Reabastecendo a despensa.
    *|cRXP_WARN_Guarde pelo menos 3 Ovos Pequenos para uma missão futura|r
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyassa Estiágil::257019|r
    .turnin 97963 >>Entregue Introdução ao Acampamento: Alquimia
    .target Nyassa Swiftdraught::257019
step
    #label A Little Beauty
    .goto 2521,44.873,44.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taleen Cintilinha::251991|r
    .target Taleen Shimmerthread::251991
    .turnin 93951 >>Entregue Leve beleza
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taleen Cintilinha::251991|r
    .turnin 97973 >>Entregue Introdução ao Acampamento: Alfaiataria
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aedi Triforjado::251913|r
    .turnin 97964 >>Entregue Introdução ao Acampamento: Ferraria
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messana Ventauge::257022|r
    .turnin 97970 >>Entregue Introdução ao Acampamento: Mineração
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .isQuestAvailable 92516 -- Hippogryph Harassment
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Indari Tramassol::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Entregue O gargalo das garraltivas
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92516 -- Hippogryph Harassment
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Indari Tramassol::251993|r
    .turnin 97969 >>Entregue Introdução ao Acampamento: Couraria
    .target Indari Sunseam::251993
step
    .goto 2521,44.465,44.966
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teeri Benvento::251906|r
    .target Teeri Wellwind::251906
    .turnin 92516 >>Entregue Hipogrifos hostis
    .turnin 93319 >>Entregue Pedras eólicas roubadas
step << Shaman/Druid
    .money <0.0504
    .isQuestTurnedIn 92516 -- Hippogryph Harassment
    .isQuestTurnedIn 93319 -- Pilfered Windstones
    .subzoneskip 16624,1 -- Shen'dar Village
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step << Warrior
    .money <0.05
    .subzoneskip 16624,1 -- Shen'dar Village
    .train 7372,1 -- Hamstring (Rank 2) Not Trained
    .train 8198,1 -- Thunder Clap (Rank 2) Not Trained
    .xp <8,1
    .goto 2521,44.95,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corsan Destruterra::254088|r
    .train 284 >> Aprenda |T132282:0|t[Golpe Heroico (Grau 2)]
    .train 1715 >> Aprenda |T132316:0|t[Cortar Tendão]
    .train 6343 >> Aprenda |T136105:0|t[Trovoada]
    .skipgossipid 136813
    .target Corsan Earthrazer::254088
step
    .isQuestComplete 93318 -- WANTED: Vulgara the Insatiable
    .goto 2521,45.234,45.186
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danarii Bramivéu::252172|r
    .target Danarii Bellowveil::252172
    .turnin 93318,1 >>Entregue PROCURA-SE: Vulgara, a Insaciável
step << Druid
    .money <0.04
    .subzoneskip 16624,1 -- Shen'dar Village
    .xp <8,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naeluna Ajudágil::254081|r.
    .train 339 >>Aprenda |T136100:0|t[Raízes Enredantes]
    .train 5186 >>Aprenda |T136041:0|t[Toque de Cura (Grau 2)]
    .skipgossipid 136805
    .target Naeluna Swiftmend::254081
step << Hunter
    .money <0.04
    .xp <8,1
    .goto 2521,45.263,44.236
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elayaa Ventofácil::254084|r.
    .train 5116 >>Aprenda |T135860:0|t[Tiro de Concussão]
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .train 14260 >>Aprenda |T132223:0|t[Golpe do Raptor (Grau 2)]
    .skipgossipid 136808
    .target Elayaa Easewind::254084
step
    .goto 2521,45.667,45.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Aonda::251523|r
    .target Constable Aonda::251523
    .turnin 92517,3 >>Entregue O elemento criminoso
    .accept 93036 >>Aceite Infiltrando-se na seita
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sania Fluviprata::251904|r
    .target Sania Silverstream::251904
    .turnin 93036 >>Entregue Infiltrando-se na seita
    .accept 92529 >>Aceite Aldeia de Falaath
step << Alliance/Horde !Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isOnQuest 94413 << Alliance -- Magical Affront
    .isQuestAvailable 92529 << Horde -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veena Verinuvem::254358|r
    .vendor 254358 >>|cRXP_BUY_Compre até três|r |T133634:0|t[Bolsas Marrons Pequenas] |cRXP_BUY_conforme necessário|r.
    >>|cRXP_BUY_Compre até 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Druid/Mage/Priest/Warlock/Paladin/Shaman
    *|cRXP_WARN_Ao equipar bolsas, certifique-se de colocar sua Bolsa de Reagentes no espaço exclusivo para ela|r.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    .target Veena Vericloud::254358
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,44.831,45.515
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sania Fluviprata::251904|r
    .skipgossipid 135874
step << Horde Shaman
    .money <0.10
    .xp <8,1
    .goto 2521,43.454,44.872
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aarnor Ventataque::254082|r
    .trainer >>Treine suas magias de classe
    .target Aarnor Galestrike::254082
step << Shaman/Druid
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
    .goto 2521,44.790,44.168
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tephri Triforjado::257421|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala]
    .collect 2495,1 --Collect Walking Stick (1)
    .target Tephri Thriceforged::257421
step << Horde Shaman
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestAvailable 92529 -- Falaath Village
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veena Verinuvem::254358|r
    .vendor 254358 >>|cRXP_BUY_Compre até três|r |T133634:0|t[Bolsas Marrons Pequenas] |cRXP_BUY_conforme necessário|r.
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    *|cRXP_WARN_Ao equipar bolsas, certifique-se de colocar sua Bolsa de Reagentes no espaço exclusivo para ela|r.
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa].
    .target Veena Vericloud::254358
step << Mage
    .money <0.06
    .xp <8,1
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenaan Feitivento::254086|r
    .train 5143 >> Aprenda |T136096:0|t[Mísseis Arcanos]
    .train 205 >> Aprenda |T135846:0|t[Seta de Gelo (Grau 2)]
    .train 118 >> Aprenda |T136071:0|t[Polimorfia]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
step << Mage
    .money <0.02
    .xp <8,1
    .goto 2521,45.1,45.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenaan Feitivento::254086|r
    .train 5143 >> Aprenda |T136096:0|t[Mísseis Arcanos]
    -- .train 205 >> Train |T135846:0|t[Frostbolt (Rank 2)]
    -- .train 118 >> Train |T136071:0|t[Polymorph]
    .skipgossipid 136807
    .target Shenaan Spellwind::254086
step << Alliance
    .goto 2521,44.979,46.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rathiril Arrebol::251903|r.
    .turnin 94413 >>Entregue Uma afronta mágica
    .target Rathiril Sunlance::251903
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenn Bontempo::251992|r
    .turnin 97967 >>Entregue Introdução ao Acampamento: Pesca
    .target Fenn Fairweather::251992
step
    #optional
    #completewith LivingLightningA
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Horde
    #optional
    #completewith LivingLightningA
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r. Pegue deles as |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #optional
    #completewith Skypriest Aanders
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r. Pegue deles as |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    .isOnQuest 92529 -- Falaath Village
    .subzoneskip 16624,1 -- Shen'dar Village
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,45.374,53.512,25,0
    .goto 2521,46.880,56.242
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o PNJ que oferece a missão.
    .usespell 1259416
step
    .goto 2521,45.412,53.485,20,0
    .goto 2521,46.880,56.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Missionário Jasaan::257065|r
    .target Missionary Jasaan::257065
    .turnin 92529 >>Entregue Aldeia de Falaath
    .accept 92528 >>Aceite Entre os fiéis
    .use 2454 << Warrior/Rogue -- Elixir of Minor Strength
step
    .isOnQuest 92528 -- Among the Faithful
    .subzoneskip 16636,1 -- Falaath Village
    .goto 2521,46.89,56.24
    .target Sania Silverstream::251904
    .aura 1254832 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sania Fluviprata::251904|r
    .skipgossipid 137586 -- I seem to have lost my mark of Akir. Would you please bestow it upon me once more?
step << Horde
    .isOnQuest 92528 -- Among the Faithful
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,48.497,55.827
    .cast 1259686 >>Use |T1029587:0|t[Visão do Céu] para obter o bônus de 10% de velocidade de movimento.
step
    #optional
    #completewith next
    #label plans
    .goto 2521,48.74,53.89,10,0
    .goto 2521,49.06,53.48,10,0
    .goto 2521,48.76,53.68,10,0
    >>Após clicar no Guarda-roupa, volte à cidade.
    .complete 92528,1 --1/1 Learn about the cultists' plans
step
    #completewith plans
    .goto 2521,48.85,53.91
    .gossipoption 136768 >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Guarda-roupa|r |cRXP_WARN_no segundo andar|r.
    *|cRXP_WARN_Se alguém já tiver feito isso, a missão será concluída mesmo assim|r
    .timer 14,Aguarde o RP
    .skipgossipid 136768
step
    #requires plans
    .goto 2521,48.6,54.69,30,0
    .goto 2521,46.44,51.34,30,0
    >>Volte à cidade e aguarde a cena.
    *|cRXP_WARN_Se vir um Tornado, use-o para se deslocar mais rápido|r.
    .complete 92528,1 --1/1 Learn about the cultists' plans
-- step
--     .isOnQuest 92528 -- Among the Faithful
--     .subzoneskip 16624 -- Shen'dar Village
--     .cooldown spell,1259416,>0,1 -- Walk on Air
--     .goto 2521,46.86,51.54,25,0
--     .goto 2521,44.37,46.69
--     .cast 1259416 >>Jump off the mountain and use |T132845:0|t[Walk on Air] to fly towards the waypoint location.
--     .usespell 1259416
step << Rogue
    .money <0.04
    .isQuestAvailable 92528 -- Among the Faithful
    .xp <8,1
    .goto 2521,44.37,46.69,30,0
    .goto 2521,43.15,43.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miriaan Laminévoa::254087|r
    *|cRXP_WARN_Não use|r |T132845:0|t[Andar no Ar] |cRXP_WARN_durante esta etapa|r.
    .train 5277 >>Aprenda |T136205:0|t[Evasão]
    .train 6760 >>Aprenda |T132292:0|t[Eviscerar (Grau 2)]
    .skipgossipid 136810
    .target Miriaan Mistblade::254087
step
    .goto 2521,44.37,46.69,30,0 << !Rogue
    .goto 2521,44.49,45.95,30,0 << !Rogue
    .goto 2521,44.93,46.85,30,0 << !Rogue
    .goto 2521,45.21,46.63,30,0 << !Rogue
    .goto 2521,45.04,46.23,15,0 << !Rogue
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Aonda::251523|r.
    *|cRXP_WARN_Não use|r |T132845:0|t[Andar no Ar] |cRXP_WARN_durante esta etapa|r.
    .turnin 92528,1 >>Entregue Entre os fiéis << Mage/Druid/Shaman/Priest/Warlock
    .turnin 92528,2 >>Entregue Entre os fiéis << Warrior/Rogue/Paladin
    .turnin 92528,3 >>Entregue Entre os fiéis << Hunter
    .accept 92550 >>Aceite Pânico no planalto
    .accept 93926 >>Aceite O Posto do Oeste
    .target Constable Aonda::251523
step
    .goto 2521,45.25,45.18
    *|cRXP_WARN_Equipe a|r |T454058:0|t[Adaga Ritual Manchada] << Mage/Priest/Warlock
    *|cRXP_WARN_Equipe a|r |T7789512:0|t[Cimitarra Curva] << Warrior/Rogue/Paladin
    *|cRXP_WARN_Equipe o|r |T135493:0|t[Arco Curto Levado pelo Vento] << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danarii Bramivéu::252172|r.
    .accept 92551 >>Aceite Suprimentos roubados
    .target Danarii Bellowveil::252172
    .use 257332 << Mage/Priest/Warlock -- Stained Ritual Dagger
    .use 257333 << Warrior/Rogue/Paladin -- Curved Scimitar
    .use 273877 << Hunter -- Windswept Shortbow
step
    .train 7620,3 -- Fishing Trained
    .isOnQuest 93926 --The Western Watch
    .isQuestComplete 97967 -- Camping 101: Fishing
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenn Bontempo::251992|r
    .turnin 97967 >>Entregue Introdução ao Acampamento: Pesca
    .target Fenn Fairweather::251992
step
    .isOnQuest 93926 -- The Western Watch
    .subzoneskip 16624,1 -- Shen'dar Village
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,45.35,46.79,20,0
    .goto 2521,44.05,49.98
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o ponto indicado.
    .usespell 1259416
step
    .isOnQuest 93926 -- The Western Watch
    .subzoneskip 16624,1 -- Shen'dar Village
    .goto 2521,45.35,46.79,20,0
    .goto 2521,44.05,49.98,30,0
    .goto 2521,43.02,49.86
    .subzone 17674 >>Morra a sudoeste da Aldeia de Shen'dar e ressuscite no |cRXP_FRIENDLY_Anjo da Cura::6491|r
    *|cRXP_WARN_Use a macro de sentar em combate para morrer mais rápido|r.
    .macro Sit to Die Faster,134400 >>Sente-se para morrer mais rápido
step
    #optional
    #completewith next
    #label Western Watchtower
    .isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    .subzoneskip 17674,1 -- West Pylon Watchtower
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pacificador Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
step
    #completewith Western Watchtower
    #ignorecorpse
    .isOnQuest 93926 -- The Western Watch
    .isQuestNotComplete 93926 -- The Western Watch
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .showwhiledead
    .goto 2521,40.23,63.83
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anjo da Cura::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step
    #requires Western Watchtower
    .goto 2521,42.32,62.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pacificador Vaaniel::252155|r.
    .complete 93926,1 --1/1 Check in on the Western Watchtower in the Shen'dar Highlands
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.33,62.01
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Pacificador Vaaniel::252155|r
    .turnin 93926 >>Entregue O Posto do Oeste
    .accept 93927 >>Aceite Último pedido
    .target Peacekeeper Vaaniel::252155
step
    .goto 2521,42.38,62.07
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Nota sangrenta|r.
    *|cRXP_WARN_Mantenha um espaço livre nas bolsas|r.
    .complete 93927,1 --1/1 Collect and read the note
step
    .goto 2521,40.988,64.088
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Arvensus Cantonegro|r\n |cRXP_WARN_de longe|r.
    *|cRXP_WARN_Mantenha um espaço livre nas bolsas|r.
    .complete 93927,4 --1/1 Shadowsong Family Signet
step
    .goto 2521,41.12,64.09
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Raani Fitaventos|r\n |cRXP_WARN_de longe|r.
    *|cRXP_WARN_Mantenha um espaço livre nas bolsas|r.
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
    >>Suba a escada em espiral e mate |cRXP_ENEMY_Sacerdote do Céu Aanders::256966|r no topo da torre.
    .complete 93927,2 --1/1 Skypriest Aanders slain
    .mob Skypriest Aanders::256966
step
    .subzoneskip 17674,1 -- West Pylon Watchtower
    .isOnQuest 92551 -- Stolen Supplies
    .isQuestNotComplete 92551 -- Stolen Supplies
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,50.29,56.95
    .cast 1259416 >>Pule da torre e use |T132845:0|t[Andar no Ar] para planar até o ponto indicado.
    .usespell 1259416
step  << Alliance
    #optional
    #completewith NearCommander
    >>Mate |cRXP_ENEMY_Tempestários Al'Aketh::252068|r. Pegue deles |T133647:0|t[|cRXP_LOOT_Suprimentos de Shen'dar Roubados|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tClique nos |cRXP_PICK_Baús de Suprimentos|r (pequenas bolsas).
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step << Alliance
    #optional
    #completewith NearCommander
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step << Alliance
    #optional
    #completewith NearCommander
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r. Pegue deles as |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step << Alliance
    #label NearCommander
    .isQuestNotComplete 92550 -- Havoc in the Highlands
    .isOnQuest 92550 -- Havoc in the Highlands
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,45.48,58.73,30,0
    .goto 2521,48.36,58.49
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
    *|cRXP_WARN_Se houver um tornado por perto, toque nele para ganhar 40% de velocidade de movimento por 5 minutos. Causar dano remove o efeito|r.
    .usespell 1259705
-- step
--     #optional
--     #completewith CommanderCyclasHeadA
--     >>Kill |cRXP_ENEMY_Galestriders::251661|r. Loot them for |T133972:0|t[|cRXP_LOOT_Strider Meat|r] and |T132832:0|t[|cRXP_LOOT_Small Eggs|r].
--     .complete 92553,2 --8/8 Strider Meat
--     .complete 92553,1 --3/3 Small Egg
--     .mob +Galestrider::251661
step
    #optional
    #completewith CommanderCyclasHeadA
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r. Pegue deles as |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #optional
    #completewith CommanderCyclasHeadA
    >>Mate |cRXP_ENEMY_Raio Vivo::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    #optional
    #completewith CommanderCyclasHeadA
    >>Mate |cRXP_ENEMY_Tempestários Al'Aketh::252068|r. Pegue deles |T133647:0|t[|cRXP_LOOT_Suprimentos de Shen'dar Roubados|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tClique nos |cRXP_PICK_Baús de Suprimentos|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label CommanderCyclasHeadA
    .goto 2521,49.779,57.330,15,0
    .goto 2521,49.886,56.504,20,0
    .goto 2521,50.38,56.93
    >>Mate |cRXP_ENEMY_Comandante Cyclas::251966|r e pegue |T134161:0|t[|cRXP_LOOT_Cabeça do Comandante Cyclas|r].
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
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Raio Vivo::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step
    >>Mate |cRXP_ENEMY_Tempestários Al'Aketh::252068|r. Pegue deles |T133647:0|t[|cRXP_LOOT_Suprimentos de Shen'dar Roubados|r].
    >>|TInterface/cursor/crosshair/interact.blp:16|tClique nos |cRXP_PICK_Baús de Suprimentos|r.
    .complete 92550,1 --6/6 Al'Aketh Stormcaller slain
    .complete 92551,1 --10/10 Stolen Shen'dar Supplies
    .mob +Al'Aketh Stormcaller::252068
step
    #label LivingLightningA
    >>Mate |cRXP_ENEMY_Raio Vivo::251662|r.
    .complete 92550,2 --4/4 Living Lightning slain
    .mob Living Lightning::251662
step << Horde
    .isOnQuest 92550 -- Havoc in the Highlands
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,48.497,55.827
    .cast 1259686 >>Use |T1029587:0|t[Visão do Céu] para obter o bônus de 10% de velocidade de movimento.
step
    #loop
    .goto 2521,49.877,56.539,25,0
    .goto 2521,49.629,54.728,25,0
    .goto 2521,49.058,53.545,15,0
    .goto 2521,47.641,54.140,30,0
    .goto 2521,49.765,57.237,25,0
    .goto 2521,49.5,56.22,35,0
    .goto 2521,49.86,56.95,35,0
    .goto 2521,50.4,56.93,25,0
    .xp 8+4400 >>Farme até 4400+/5400 para alcançar o nível 10 mais tarde no momento correto
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
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
step
    >>Mate |cRXP_ENEMY_Garraltivas::251245|r. Pegue deles as |T237416:0|t[|cRXP_LOOT_Pelagens de Garraltiva|r].
    .complete 92515,1 --10/10 Prideclaw Pelt
    .mob Prideclaw::251245
step
    #label RestockingTheLardersA
    >>Mate |cRXP_ENEMY_Vagaventos::251661|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Moa|r] e |T132832:0|t[|cRXP_LOOT_Ovos Pequenos|r].
    .complete 92553,2 --8/8 Strider Meat
    .complete 92553,1 --3/3 Small Egg
    .mob +Galestrider::251661
-- step << Alliance
--     #completewith next
--     .hs >>Hearth to Thendal Village
--     .cooldown item,6948,>0 --Hearthstone

-- step
--     .train 7620,3 -- Fishing Trained
--     .isQuestComplete 97967 -- Camping 101: Fishing
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .goto 2521,45.03,48.45
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fenn Fairweather::251992|r
--     .turnin 97967 >>Turn in Camping 101: Fishing
--     .target Fenn Fairweather::251992
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
-- step
--     .train 3273,3 -- First Aid Trained
--     .itemcount 2589,1 -- Linen Cloth
--     >>Press the Macro in the "Active Items Frame" to craft |T133685:0|t[Linen Bandages].
--     *|cRXP_WARN_Skip this if you can't reach skill 20|r
--     .complete 97965,1 >>Complete Camping 101: First Aid
--     .macro First Aid,135966 >>/run local t=C_TradeSkillUI;t.OpenTradeSkill(129);t.CraftRecipe(3275,C_Item.GetItemCount(2589))
-- step
--     .train 3273,3 -- First Aid Trained
--     .isQuestComplete 97965 -- Camping 101: First Aid
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .goto 2521,43.08,46.31
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Naleeia Tattermend::257018|r
--     .turnin 97965 >>Turn in Camping 101: First Aid
--     .target Naleeia Tattermend::257018
-- step
--     .train 7411,3 -- Enchanting Trained
--     .isQuestComplete 98286 -- Camping 101: Enchanting
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .goto 2521,43.25,43.16
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Nasalanna Windsinger::257020|r
--     .turnin 98286 >>Turn in Camping 101: Enchanting
--     .target Nasalanna Windsinger::257020
-- step
--     .train 8613,3 -- Skinning Trained
--     .isQuestComplete 97971 -- Camping 101: Skinning
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .goto 2521,43.3,43.37
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Mendalass Tattermend::257024|r
--     .turnin 97971 >>Turn in Camping 101: Skinning
--     .target Mendalass Tattermend::257024

--Too little silver on hunter to buy bow later; to increase chance of having bow i commented it out

-- step
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .itemcount 4471,<1 -- Flint and Tinder
--     .goto 2521,43.86,43.85
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy |T135237:0|t[Flint and Tinder].
--     *|cRXP_WARN_You will use it with Simple Wood to create Basic Campfires for Cooking later|r.
--     .collect 4471,1 -- Flint and Tinder
--     .vendor 251905 >>Vendor Trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 137550 -- I would like to buy from you.
--     .target Zerril Softbreeze::251905
-- step
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .itemcount 4470,<5 -- Simple Wood
--     .goto 2521,43.86,43.85
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T135435:0|t[Simple Wood].
--     .collect 4470,5 -- Simple Wood
--     .vendor 251905 >>Vendor Trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 137550 -- I would like to buy from you.
--     .target Zerril Softbreeze::251905
-- step
--     .isQuestComplete 92550 -- Havoc in the Highlands
--     .itemcount 2678,<5 -- Mild Spices
--     .goto 2521,43.86,43.85
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Zerril Softbreeze::251905|r and buy 5 |T134059:0|t[Mild Spices].
--     .vendor 251905 >>Vendor Trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .target Zerril Softbreeze::251905

step
    .isQuestComplete 92553 -- Restocking the Larders
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r
    .turnin 92553 >>Entregue Reabastecendo a despensa
    .target Zerril Softbreeze::251905
step
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.86,43.85
    *|cRXP_WARN_Não use|r |T132845:0|t[Andar no Ar] |cRXP_WARN_durante esta etapa|r.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r.
    .vendor 251905 >>Venda os lixos
    .skipgossipid 137550
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .target Zerril Softbreeze::251905
step
    .train 2550,3 -- Cooking Trained
    .isQuestComplete 96646 -- Camping 101: Cooking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.851,43.848
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zerril Brisabranda::251905|r
    .turnin 96646 >>Entregue Introdução ao Acampamento: Cozinha
    .target Zerril Softbreeze::251905
step
    .isQuestTurnedIn 92553 -- Restocking the Larders
    .isQuestComplete 92550 -- Havoc in the Highlands
    .itemcount 6889,1 -- Small Egg
    .train 2550,3 -- Cooking Trained
    .goto 2521,43.86,43.85
    +Use a macro de |T132834:0|t[Ovo Assado com Ervas] abaixo para preparar o máximo possível.
    *|cRXP_WARN_A maioria das comidas com bônus aumenta em 5% a experiência obtida com abates por 15 minutos. Tente manter esse bônus ativo pelo máximo de tempo possível enquanto sobe de nível|r.
    *|cRXP_BUY_Compre de 5 a 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_de|r |cRXP_FRIENDLY_Zerril Brisabranda|r |cRXP_WARN_se ainda não comprou|r.
    .skipgossipid 137550 --I would like to buy from you.
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro Herb Baked Egg,132834 >>Ovo Assado com Ervas
step
    .train 8613,3 -- Skinning Trained
    .isQuestComplete 97971 -- Camping 101: Skinning
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.3,43.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mendalass Emendarrapo::257024|r
    .turnin 97971 >>Entregue Introdução ao Acampamento: Esfolamento
    .target Mendalass Tattermend::257024
step
    .train 7411,3 -- Enchanting Trained
    .isQuestComplete 98286 -- Camping 101: Enchanting
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.25,43.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nasalanna Cantavento::257020|r
    .turnin 98286 >>Entregue Introdução ao Acampamento: Encantamento
    .target Nasalanna Windsinger::257020
step
    .train 3273,3 -- First Aid Trained
    .itemcount 2589,1 -- Linen Cloth
    .goto 2521,43.08,46.31
    >>Pressione a macro no "Quadro de Itens Ativos" para criar |T133685:0|t[Bandagens de Linho].
    *|cRXP_WARN_Pule esta etapa se não conseguir atingir 20 de perícia|r
    .complete 97965,1 >>Conclua Introdução ao acampamento: Primeiros Socorros
    *|cRXP_WARN_Talvez seja necessário pressionar a macro duas vezes|r.
    .macro First Aid,135966 >>Primeiros Socorros
step
    .train 3273,3 -- First Aid Trained
    .isQuestComplete 97965 -- Camping 101: First Aid
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.08,46.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naleeia Emendarrapo::257018|r
    .turnin 97965 >>Entregue Introdução ao Acampamento: Primeiros Socorros
    .target Naleeia Tattermend::257018
step
    .train 2259,3 -- Alchemy Trained
    .isQuestComplete 97963 -- Camping 101: Alchemy
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,43.7,43.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyassa Estiágil::257019|r
    .turnin 97963 >>Entregue Introdução ao Acampamento: Alquimia
    .target Nyassa Swiftdraught::257019
step
    .train 3908,3 -- Tailoring Trained
    .isQuestComplete 97973 -- Camping 101: Tailoring
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.88,44.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taleen Cintilinha::251991|r
    .turnin 97973 >>Entregue Introdução ao Acampamento: Alfaiataria
    .target Taleen Shimmerthread::251991
step
    .train 2018,3 -- Blacksmithing Trained
    .isQuestComplete 97964 -- Camping 101: Blacksmithing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.89,44.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aedi Triforjado::251913|r
    .turnin 97964 >>Entregue Introdução ao Acampamento: Ferraria
    .target Aedi Thriceforged::251913
step
    .train 2575,3 -- Mining Trained
    .isQuestComplete 97970 -- Camping 101: Mining
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.77,44.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messana Ventauge::257022|r
    .turnin 97970 >>Entregue Introdução ao Acampamento: Mineração
    .target Messana Crestwind::257022
step
    .isQuestComplete 92515 -- The Problem With Prideclaws
    .goto 2521,44.686,44.518
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Indari Tramassol::251993|r
    .target Indari Sunseam::251993
    .turnin 92515 >>Entregue O gargalo das garraltivas
step
    .train 2108,3 -- Leatherworking Trained
    .isQuestComplete 97969 -- Camping 101: Leatherworking
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.69,44.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Indari Tramassol::251993|r
    .turnin 97969 >>Entregue Introdução ao Acampamento: Couraria
    .target Indari Sunseam::251993
step
    .subzoneskip 16624,1 -- Shen'dar Village
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,44.71,45.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veena Verinuvem::254358|r
    .vendor 254358 >>Venda o lixo. |cRXP_BUY_Compre até três|r |T133634:0|t[Bolsas Marrons Pequenas] |cRXP_BUY_conforme necessário|r.
    *|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Druid/Mage/Priest/Warlock/Paladin
    -- *|cRXP_BUY_Buy|r |T132382:0|t[Rough Arrows] and |T132382:0|t[Sharp Arrows] << Hunter
    *|cRXP_BUY_Compre|r [Flechas Afiadas] << Hunter
    -- *|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] << Alliance Rogue
    *|cRXP_WARN_Ao equipar bolsas, certifique-se de colocar sua Bolsa de Reagentes no espaço exclusivo para ela|r.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    -- .collect 2512,600 << Hunter --Rough Arrow (600)
    .collect 2515,1000 << Hunter --Sharp Arrows (1000)
    -- .collect 2515,200 << Alliance Rogue --Sharp Arrows (600)
    .target Veena Vericloud::254358
step
    #label SkybornePart1End
    .goto 2521,45.24,45.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danarii Bramivéu::252172|r.
    .turnin 92551 >>Entregue Suprimentos roubados
    .target Danarii Bellowveil::252172
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Aonda::251523|r.
    .turnin 92550,3 >>Entregue Pânico no planalto
    .turnin 93927 >>Entregue Último pedido
    .accept 92701 >>Aceite Rumo a Valanaar << Alliance
    .accept 92579 >>Aceite Rumo a Valanaar << Horde
    .accept 93948 >>Aceite Entrega de Sinete
    .target Constable Aonda::251523

]])
--Skyborne leveling guide: Part 2
RXPGuides.RegisterGuide([[
#forever
#disabledungeons
#version 1
#name 9-13 Ilha de Zefras
#displayname 9-13 Celonato << Alliance
#displayname 9-12 Celonato << Horde
#group Guia RestedXP Forever (A) << Alliance
#group Guia RestedXP Forever (H) << Horde
#subgroup Guia Speedrun 1-20 << Alliance
#subgroup Guia Speedrun 1-22 << Horde
#next 13-15 Cerro Oeste << Alliance !Hunter
#next 14-16 Costa Negra << Alliance Hunter
#next 12-14 Floresta de Pinhaprata << Horde !Hunter
#next 12-17 Sertões << Horde Hunter
#defaultfor Skyborne

step
    #optional
    .isQuestAvailable 92550,93927 --Havoc in the Highlands; A Last Request
    +|cRXP_WARN_Conclua o guia 1-9 Celonato antes de continuar. Este guia exige as missões da Parte 1|r.
    .clicknext RestedXP Forever Guide (A)\1-9 Zephras Isle >>CLIQUE AQUI PARA O GUIA 1-9 CELONATO << Alliance
    .clicknext RestedXP Forever Guide (H)\1-9 Zephras Isle >>CLIQUE AQUI PARA O GUIA 1-9 CELONATO << Horde
step
    #completewith LeaveZephrasIsle
    #hidewindow
    +Local possível de surgimento de Tornado
    #icon |TInterface/Icons/Spell_Nature_Cyclone:0|t
    .pin 2521,50.22,76.77,Tornado
    .pin 2521,53.51,71.46,Tornado
    .pin 2521,54.46,60.13,Tornado
    .pin 2521,64.52,46.4,Tornado
    .pin 2521,46.52,71.19,Tornado
    .pin 2521,59.59,43.9,Tornado
    .pin 2521,62.15,70.42,Tornado
    .pin 2521,52.5,79,Tornado
    .pin 2521,54.36,72.97,Tornado
    .pin 2521,62.52,73.74,Tornado
    .pin 2521,42.85,41.26,Tornado
    .pin 2521,58.8,74.36,Tornado
    .pin 2521,64.84,67.52,Tornado
    .pin 2521,52.41,70.33,Tornado
    .pin 2521,43.74,59.77,Tornado
    .pin 2521,54.22,64.13,Tornado
    .pin 2521,64.44,79.62,Tornado
    .pin 2521,58.77,50.45,Tornado
    .pin 2521,57.28,70.5,Tornado
    .pin 2521,68.16,74.89,Tornado
    .pin 2521,60.94,73.58,Tornado
    .pin 2521,48.36,80.52,Tornado
    .pin 2521,58.40,47.31,Tornado
    .pin 2521,58.78,50.39,Tornado
    .pin 2521,41.45,54.37,Tornado
    .pin 2521,37.25,46.84,Tornado
    .pin 2521,40.43,46.88,Tornado
    .pin 2521,46.58,38.35,Tornado
    .pin 2521,43.16,65.06,Tornado
    .pin 2521,60.44,66.16,Tornado
    .pin 2521,61.06,73.57,Tornado
    .pin 2521,58.04,44.13,Tornado
    .use 255663 --Windstones
step
    .goto 2521,45.67,45.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Aonda::251523|r.
    .accept 92701 >>Aceite Rumo a Valanaar << Alliance
    .accept 92579 >>Aceite Rumo a Valanaar << Horde
    .accept 93948 >>Aceite Entrega de Sinete
    .target Constable Aonda::251523
step
    #completewith LeaveZephrasIsle
    #hidewindow
    +Pedras Eólicas
    .use 255663 --Windstones
--here maybe duplicate trainer steps for low silver cases

step
    .isQuestAvailable 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16624,1 -- Shen'dar Village
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,49.4,58.76
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o ponto indicado.
    .usespell 1259416
step
    .train 7620,3 -- Fishing Trained
    .isQuestComplete 97967 -- Camping 101: Fishing
    .isQuestComplete 92550 -- Havoc in the Highlands
    .goto 2521,45.03,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenn Bontempo::251992|r
    .turnin 97967 >>Entregue Introdução ao Acampamento: Pesca
    .target Fenn Fairweather::251992
step
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .subzoneskip 16638 -- Valanaar
    .goto 2521,49.4,58.76
    .subzone 16626 >>Morra exatamente no ponto indicado
    *|cRXP_WARN_Use a macro de sentar em combate para morrer mais rápido|r.
    *|cRXP_WARN_Caso contrário, você poderá ser enviado para outro cemitério|r
    *|cRXP_WARN_Cuidado ao atravessar o campo em linha reta; é fácil morrer|r.
    .macro Sit to Die Faster,134400 >>Sente-se para morrer mais rápido
step
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
	.isOnQuest 93948 -- Deliver the Signet
    .isNotOnQuest 93317 -- Crab Season
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anjo da Cura::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
-- step << Horde
--     .goto 2521,56.81,61.11
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
--     *|cRXP_WARN_If a Tornado is nearby, touch it to gain 40% increased movement speed for 5 minutes. Dealing damage removes the effect|r.
--     .accept 98512 >>Accept Al'Aketh Assassins
--     .target Fendaal Windstone::273017
-- step << Horde
--     #loop
--     .goto 2521,55.27,59.58,35,0
--     .goto 2521,54.58,60.52,35,0
--     .goto 2521,55.93,60.3,35,0
--     .goto 2521,56.04,59.08,35,0
--     >>Kill |cRXP_ENEMY_Al'Aketh Assassins::254626|r.
--     .complete 98512,1 --10/10 Al'Aketh Assassin slain
--     .mob Al'Aketh Assassin::254626
-- step << Horde
--     .goto 2521,56.80,61.10
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
--     .turnin 98512 >>Turn in Al'Aketh Assassins
--     .target Fendaal Windstone::273017
step << Alliance Hunter
    .xp <9,1
    .money <0.1345
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7810733:0|t[Arco Zefrali]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Hunter
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    +|cRXP_WARN_Equipe o|r |T7810733:0|t[Arco Zefrali].
    .use 277110 --Zephrali Bow
step << Alliance Warrior/Alliance Paladin
    .xp <9,1
    .money <0.2151
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7792097:0|t[Arrebentador Zefrali].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Warrior/Alliance Paladin
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    +|cRXP_WARN_Equipe o|r |T7792097:0|t[Arrebentador Zefrali].
    .use 277106 --Zephrali Smasher
step << Alliance Shaman/Alliance Druid
    .xp <9,1
    .money <0.2176
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7798447:0|t[Grande Cajado Zefrali].
    .collect 277109,1 --Zephrali Greatstaff
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Shaman/Alliance Druid
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    +|cRXP_WARN_Equipe o|r |T7798447:0|t[Grande Cajado Zefrali].
    .use 277109 --Zephrali Greatstaff
step << Alliance Rogue
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7791298:0|t[Porrete Zefrali].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Alliance Rogue
    #optional
    #completewith Deliver the Signet
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    +|cRXP_WARN_Equipe o|r |T7791298:0|t[Porrete Zefrali].
    .use 277107 --Zephrali Bludgeon
-- step << Mage/Priest/Warlock
--     .xp <9,1
--     .money <0.1734
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.18
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792229:0|t[Zephrali Knife].
--     .collect 277108,1 --Zephrali Knife
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
step
    .goto 2521,60.6,73.16,10,0
    .goto 2521,60.640,72.664
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyalah Chamarrútila::257006|r.
    *|cRXP_WARN_Se avistar um tornado, aproxime-se para ganhar 40% de velocidade de movimento por 5 minutos. O efeito termina ao causar dano|r.
    .target Nyalah Brightfire::257006
    .accept 93317 >>Aceite Temporada do caranguejo
    .skipgossipid 96031
    .skipgossipid 98031
step
    .isOnQuest 93948 -- Deliver the Signet
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Donaal Brisabaixa::255940|r.
    .target Donaal Downbreeze::255940
    .bindlocation 16638
    .home >>Defina sua Pedra de Regresso para Valanaar
    .goto 2521,62.180,72.616
-- step -- commented out for now too many vendor steps in a row
--     .isNotOnQuest 92679 -- Blood Tithe
--     .subzoneskip 16638,1 -- Valanaar
--     .isOnQuest 93948 -- Deliver the Signet
--     .goto 2521,62.180,72.616,10,0
--     .goto 2521,61.95,72.84,10,0
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Donaal Downbreeze::255940|r.
--     .vendor 255940 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .target Donaal Downbreeze::255940
--     .skipgossipid 137078
--     .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
step
    #optional
    #completewith next
    #label Accept Blood Tithe
    .goto 2521,61.95,72.84,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alvarion Campo de Vento::252448|r |cRXP_WARN_no segundo andar|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Aceite Dízimo de sangue
step
    #completewith Accept Blood Tithe
    .goto 2521,62.096,73.339,20 >>Suba as escadas
step
    #requires Accept Blood Tithe
    .goto 2521,62.096,73.339
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alvarion Campo de Vento::252448|r |cRXP_WARN_no segundo andar|r.
    .target Alvarion Windfield::252448
    .accept 92679 >>Aceite Dízimo de sangue
step << Alliance
    #optional
    #completewith BuggedAcceptedA
    .isNotOnQuest 93949 --Bugged
    +|cRXP_WARN_Não use|r |T132845:0|t[Andar no Ar] |cRXP_WARN_até aceitar De antena em pé|r.
step
    .isNotOnQuest 94484 -- Unnerving Silence
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 93948 -- Deliver the Signet
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Suba a colina
    *|cRXP_WARN_Ignore o meridiano; em breve usaremos a morte como atalho|r << Alliance
step
    .goto 2521,63.973,75.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lotheluum Brisastral::252359|r.
    .accept 94484 >>Aceite Silêncio enervante
    .target Lotheluum Starbreeze::252359
step << Horde
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ealaane Correnimbo::259012|r.
    .accept 94896 >>Aceite Auxílio aos refugiados
    .accept 94897 >>Aceite O destino de um amor
    .target Ealaane Nimbuswalker::259012
step
    #optional
    #completewith next
    #label DeliverTheSignetA
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talaanis Cantonegro::252476|r.
    .turnin 93948 >>Entregue Entrega de sinete
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
    .goto 2521,66.44,76.4,5 >>Suba a torre
step
    #requires DeliverTheSignetA
    #label Deliver the Signet
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talaanis Cantonegro::252476|r.
    .turnin 93948 >>Entregue Entrega de sinete
    .target Talaanis Shadowsong::252476
step
    #label BuggedAcceptedA
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valennia Tempespunho::252383|r.
    .turnin 92701 >>Entregue Rumo a Valanaar << Alliance
    .turnin 92579,3 >>Entregue Rumo a Valanaar << Horde
    .accept 92699 >>Aceite O Magíster Supremo << Alliance
    .accept 92700 >>Aceite A Grande Vidente do Céu << Horde
    .accept 93949 >>Aceite De antena em pé << Alliance
    .target Valennia Stormfist::252383

-- ============================================================================
-- Alliance: The Missing Scholar Route
-- ============================================================================

step << Alliance
    .isOnQuest 92699 -- The Supreme Magister
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.68,10,0
    .goto 2521,66.63,79.94
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o PNJ que oferece a missão.
    *|cRXP_WARN_Se calcular bem o momento, pode cancelar o efeito no ar para pousar dentro do prédio|r
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Cancele Andar no Ar
step << Alliance
    #completewith Unwelcome Visitors
    .aura 1258510
    >>Mate |cRXP_ENEMY_Saltacéus::251314|r.
    .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    .goto 2521,66.63,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaadrin Plenovento::252475|r.
    .turnin 92699 >>Entregue O Magíster Supremo
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.26,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dondalião Murmuréolo::253204|r.
    .accept 92727 >>Aceite O erudito desaparecido
    .target Dondallion Whisperwind::253204
step << Alliance
    #label Unwelcome Visitors
    .goto 2521,66.35,79.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iaadaria Ventamargo::253004|r.
    .accept 92741 >>Aceite Visitantes indesejados
    .target Iaadaria Bitterwind::253004
step << Alliance
    .isOnQuest 92727 -- The Missing Scholar
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,67.41,80.46
    .subzone 16626 >>Pule do penhasco
step << Alliance
    #ignorecorpse
    .subzoneskip 16626,1 -- Gustberry Lowlands
    .isOnQuest 92727 -- The Missing Scholar
    .showwhiledead
    .goto 2521,54.99,68.14
    .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anjo da Cura::6491|r.
    .skipgossipid 96031
    .skipgossipid 98031
    .target Spirit Healer::6491
step << Alliance
    .goto 2521,53.33,72.15
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique na |cRXP_PICK_Algibeira Manchada de Sangue::581822|r
    *|cRXP_WARN_Se houver um Tornado, use-o para viajar mais rápido|r.
    *Cuidado com o |cRXP_ENEMY_Vagaventos Turrão::251707|r.
    .turnin 92727 >>Entregue O erudito desaparecido
    .accept 92849 >>Aceite O erudito desaparecido
    .target Bloodstained Satchel::581822
    .mob Ornery Galestrider::251707
step << Alliance
    #label LeavingValanaarA
    .goto 2521,51.11,67.06,30,0
    .goto 2521,51.24,66.63,30,0
    .goto 2521,49.9,66.42,30,0
    .goto 2521,49.75,65.9,30,0
    .goto 2521,50.7,65.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Filião Brisardente::253002|r dentro da caverna.
    *|cRXP_WARN_Evite as aves e clique em Filião fora de combate, ou será teleportado para fora|r.
    *|cRXP_WARN_Se houver um Tornado, use-o para viajar mais rápido|r.
    .complete 92849,1 --1/1 Find Fillion Flamebreeze
step << Alliance
    .subzoneskip 16672,1 -- Shriekling Den
    .isOnQuest 92849 -- The Missing Scholar
    .isQuestNotComplete 92849 -- The Missing Scholar
    .goto 2521,50.7,65.36
    .aura 1258429 >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_FRIENDLY_Filião Brisardente::253002|r dentro da caverna.
    *|cRXP_WARN_Evite as aves e clique em Filião fora de combate, ou será teleportado para fora|r.
    .skipgossipid 136430
    .target Fillion Flamebreeze::253002
step << Alliance
    .goto 2521,50.71,66.38,20,0
    .goto 2521,52.04,66.66,15,0
    .goto 2521,51.44,66.25,15,0
    .goto 2521,51.03,67.15,15,0
    .goto 2521,51.55,69.2,35,0
    .goto 2521,52.08,69.41
    >>Leve |cRXP_FRIENDLY_Filião Brisardente::253281|r para um local seguro.
    *|cRXP_WARN_Evite as aves e clique em Filião fora de combate, ou será teleportado para fora|r.
    *|cRXP_WARN_Se um pássaro atacar você, cancele a aura de transporte para evitar ser teleportado para fora|r.
    .complete 92849,2 --1/1 Carry Fillion Flamebreeze to safety while avoiding enemies
    .skipgossipid 136430
    .mob Shriekling Fledgling::253282
    .target Fillion Flamebreeze::253281
step << Alliance
    .goto 2521,52.064,69.396
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Filião Brisardente::253284|r.
    .target Fillion Flamebreeze::253284
    .turnin 92849 >>Entregue O erudito desaparecido 1
    .accept 92850 >>Aceite O erudito desaparecido 2
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
    .goto 2521,51.41,68.9,15,0
    .goto 2521,52.02,65.51,130 >>Entre na caverna
step << Alliance
    .isOnQuest 92850 -- The Missing Scholar 2
    .isQuestNotComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,52.49,65.97,30,0
    .goto 2521,52.48,66.04
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
    .usespell 1259705
step << Alliance
    .goto 2521,52.02,65.51
    >>Mate |cRXP_ENEMY_Matriarca Guinchote::253283|r. Pegue a |T6119035:0|t[|cRXP_LOOT_Cabeça da Matriarca Guinchote|r].
    .complete 92850,1 --1/1 Shriekling Matriarch's Head
    .mob Shriekling Matriarch::253283
step << Alliance
    .isQuestComplete 92850 -- The Missing Scholar 2
    .subzoneskip 16672,1 -- Shriekling Den
    .goto 2521,51.75,66.33,30,0
    .goto 2521,51.05,66.66,20,0
    .goto 2521,51.16,67.53,20,0
    .goto 2521,51.31,68.99,25 >>Saia da caverna
step << Alliance
    #optional
    #completewith FindAameliaWindfieldA
    >>Mate |cRXP_ENEMY_Rastejantes Cantéolo::254588|r. Pegue |T133972:0|t[|cRXP_LOOT_Carne de Rastejante Cantéolo|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031

-- ============================================================================
-- Horde: The Grand Skyseer Route
-- ============================================================================

-- step << Horde
--     #completewith LeavingValanaarA
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     .complete 93949,1 --8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
step << Horde
    .isOnQuest 92700 -- The Grand Skyseer
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.488,76.498,6,0
    .goto 2521,63.027,77.807 << Hunter
    .goto 2521,61.491,76.893 << !Hunter
    .cast 1259416 >>Pule da torre e use |T132845:0|t[Andar no Ar] para voar até os pontos indicados.
    .usespell 1259416
    .macro Cancel Walk on Air,132845 >>Cancele Andar no Ar
-- step << Horde Hunter
--     .goto 2521,63.027,77.807
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
--     >>|cRXP_BUY_Buy|r 600 |T132382:0|t[Rough Arrows]
--     .collect 2512,600 --Rough Arrow (600)
--     .target Antelariaa Cloudgaze::252390
step << Horde
    .goto 2521,61.491,76.893,15,0
    .goto 2521,59.349,77.930,45,0
    .goto 2521,59.154,79.783
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayessa Cantalva::251968|r.
    .turnin 92700 >>Entregue A Grande Vidente do Céu
    .accept 92708 >>Aceite Uma grande aventura
    .timer 75,Duração da encenação
    .accept 93735 >>Aceite O constructo quebrado 1
    .target Ayessa Dawnsinger::251968
step << Horde
    .isOnQuest 93735 -- A Grand Adventure
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,59.154,79.783
    .cast 1259686 >>Use |T1029587:0|t[Visão do Céu] para obter o bônus de 10% de velocidade de movimento.
-- step << Horde
--     .goto 2521,58.128,78.307
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Endaria Mistgaze::254344|r.
--     .accept 93736 >>Accept Unwelcome Spirits
--     .target Endaria Mistgaze::254344

step << Horde Hunter
    .xp <9,1
    .money <0.1345
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7810733:0|t[Arco Zefrali]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Hunter
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    +|cRXP_WARN_Equipe o|r |T7810733:0|t[Arco Zefrali].
    .use 277110 --Zephrali Bow
step << Horde Warrior
    .xp <9,1
    .money <0.2151
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7792097:0|t[Arrebentador Zefrali].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário.
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Warrior
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    +|cRXP_WARN_Equipe o|r |T7792097:0|t[Arrebentador Zefrali].
    .use 277106 --Zephrali Smasher
step << Horde Shaman/Horde Druid
    .xp <9,1
    .money <0.2176
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7798447:0|t[Grande Cajado Zefrali].
    .collect 277109,1 --Zephrali Greatstaff
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Shaman/Horde Druid
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    +|cRXP_WARN_Equipe o|r |T7798447:0|t[Grande Cajado Zefrali].
    .use 277109 --Zephrali Greatstaff
step << Horde Rogue
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7791298:0|t[Porrete Zefrali].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário.
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde Rogue
    #optional
    #completewith LeavingValanaarA
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    +|cRXP_WARN_Equipe o|r |T7791298:0|t[Porrete Zefrali].
    .use 277107 --Zephrali Bludgeon

step << Horde
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syriel Serenoite::254345|r.
    .target Syriel Nightrain::254345
    .turnin 97968 >>Entregue Introdução ao Acampamento: Herborismo
step << Hunter Horde
    .money <0.1345
    .isOnQuest 93735 -- The Broken Construct
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7810733:0|t[Arco Zefrali]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Horde
    #label LeavingValanaarA
    .goto 2521,59.064,72.989
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Riaani Ventonegro::256083|r.
    .target Riaani Nightwind::256083
    .turnin 93735 >>Entregue O constructo quebrado 1
    .accept 93737 >>Aceite The Degradado Constructo 2
    .complete 93737,1 --|1/1 Listen to what Riaani Nightwind has to say
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
step << Horde
    --@THIDDI: Not sure if worth it.
    #completewith next
    #label BrokenConstructA
    #hidewindow
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Partes Constructo|r |cRXP_WARN_dentro da caverna no chão inferior|r.
    .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave
step << Horde
    #completewith BrokenConstructA
    .goto 2521,51.397,68.644,15 >>Entre na caverna
step << Horde
    --@THIDDI: Not sure if worth it.
    #requires BrokenConstructA
    #loop
    .goto 2521,51.434,67.603,15,0
    .goto 2521,51.874,67.221,15,0
    .goto 2521,52.933,66.084,15,0
    .goto 2521,53.201,65.424,15,0
    .goto 2521,52.752,64.732,15,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Partes Constructo|r |cRXP_WARN_dentro da caverna no chão inferior|r.
    .complete 93737,2 --|1/1 Obtain Crystallized lightning from the Shriekling Cave

step << Horde
    #completewith next
    #label BrokenConstructB
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aamelia Campo de Vento::252800|r.
    *|cRXP_WARN_Ela pode se deslocar entre locais durante uma sequência de diálogos e ações. Aguarde no ponto indicado|r.
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step << Horde
    #completewith BrokenConstructB
    .goto 2521,51.397,68.644,15 >>Saia da caverna

-- ============================================================================
-- Shared Route Resumes at Windfield Orchard
-- ============================================================================

step
    #requires BrokenConstructB << Horde
    #label FindAameliaWindfieldA
    #loop
    .goto 2521,46.71,81.94,30,0
    .goto 2521,47.511,78.490,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aamelia Campo de Vento::252800|r.
    *|cRXP_WARN_Ela pode se deslocar entre locais durante uma sequência de diálogos e ações|r.
    *|cRXP_WARN_Procure-a à distância ou acompanhe o diálogo dela; a seta indica apenas uma localização aproximada|r.
    *|cRXP_WARN_Se houver um Tornado, use-o para viajar mais rápido|r.
    *|cRXP_WARN_Se passar pelo pomar, cuidado com os bandidos furtivos|r.
    .complete 92679,1 --1/1 Find Aamelia Windfield
    .target Aamelia Windfield::252800
step
    #loop
    .goto 2521,46.71,81.94,30,0
    .goto 2521,47.511,78.490,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aamelia Campo de Vento::252800|r.
    *|cRXP_WARN_Ela pode se deslocar entre locais durante uma sequência de diálogos e ações|r.
    *|cRXP_WARN_Procure-a à distância ou acompanhe o diálogo dela; a seta indica apenas uma localização aproximada|r.
    .turnin 92679 >>Entregue Dízimo de sangue
    .accept 92682 >>Aceite Faça alguma coisa útil
    .accept 92684 >>Aceite Vagaventos turrões turrões
    .accept 92683 >>Aceite Pó de asaleve
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
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Maçãs-dos-raios Maduras|r.
    >>Mate os |cRXP_ENEMY_Bandidos Famintos::252802|r |cRXP_WARN_(furtivos)|r.
    *Dicas para caçadores: pressione Tab repetidamente para selecioná-los logo e use Marca do Caçador neles para poder se afastar e atacá-los de mais longe. << Hunter
    .complete 92682,1 --10/10 Ripe Stormapple
    .complete 92682,2 --5/5 Hungry Bandit slain
    .mob +Hungry Bandit::252802
step << Horde
    .isOnQuest 92684 -- Ornery Ornery Galestriders
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,48.416,80.537
    .cast 1259686 >>Use |T1029587:0|t[Visão do Céu] para obter o bônus de 10% de velocidade de movimento.
step
    #optional
    #completewith WhatIsMyPurposeA
    >>Mate |cRXP_ENEMY_Vagaventos Turrões::251707|r. Pegue deles |T2066012:0|t[|cRXP_LOOT_Lombos de Vagaventos das Terras Baixas|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #optional
    #completewith WhatIsMyPurposeA
    >>Use repetidamente o |T537768:0|t[Mata-asaleves] nas |cRXP_ENEMY_Asaleves::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tClique no |cRXP_PICK_Pó de Asaleve|r.
    *|cRXP_WARN_Se uma Asaleve não voar para longe, use o Mata-asaleves nela novamente|r << !Mage !Druid
    *|cRXP_WARN_Lance repetidamente|r |T136071:0|t[Polimorfia] |cRXP_WARN_e use o mata-asaleves na mesma Asaleve para obter mais pó|r. << Mage
    *|cRXP_WARN_Lance|r |T136100:0|t[Raízes Enredantes] |cRXP_WARN_e use o mata-asaleves na mesma Asaleve para obter mais pó|r. << Druid
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666 -- Flutterfly Swatter
step
    #label WhatIsMyPurposeA
    #loop
    .goto 2521,49.085,78.358,12,0
    .goto 2521,48.621,78.385,12,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Construto Ciclônico Defeituoso::250929|r.
    .accept 92698 >>Aceite Qual é o meu propósito?
    .target Malfunctioning Cyclone Construct::250929


-- ============================================================================
-- Windfield Orchard Route Resumes
-- ============================================================================

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
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Vagaventos Turrões::251707|r. Pegue deles |T2066012:0|t[|cRXP_LOOT_Lombos de Vagaventos das Terras Baixas|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    >>Use repetidamente o |T537768:0|t[Mata-asaleves] nas |cRXP_ENEMY_Asaleves::251622|r
    >>|TInterface/cursor/crosshair/interact.blp:16|tClique no |cRXP_PICK_Pó de Asaleve|r.
    *|cRXP_WARN_Se uma Asaleve não voar para longe, use o Mata-asaleves nela novamente|r << !Mage !Druid
    *|cRXP_WARN_Lance repetidamente|r |T136071:0|t[Polimorfia] |cRXP_WARN_e use o mata-asaleves na mesma Asaleve para obter mais pó|r. << Mage
    *|cRXP_WARN_Lance|r |T136100:0|t[Raízes Enredantes] |cRXP_WARN_e use o mata-asaleves na mesma Asaleve para obter mais pó|r. << Druid
    .complete 92683,1 --5/5 Flutterfly Dust
    .mob Flutterfly::251622
    .use 253666 -- Flutterfly Swatter
step
    #label GalestriderTenderloinA
    >>Mate |cRXP_ENEMY_Vagaventos Turrões::251707|r. Pegue deles |T2066012:0|t[|cRXP_LOOT_Lombos de Vagaventos das Terras Baixas|r].
    .complete 92684,1 --7/7 Lowlands Galestrider Tenderloin
    .mob Ornery Galestrider::251707
step
    #loop
    .goto 2521,46.71,81.94,40,0
    .goto 2521,47.511,78.490,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aamelia Campo de Vento::252800|r.
    *|cRXP_WARN_Se houver um tornado por perto, use-o para andar mais rápido|r.
    *|cRXP_WARN_Ela pode se deslocar entre locais durante uma sequência de diálogos e ações|r.
    *|cRXP_WARN_Procure-a à distância ou acompanhe o diálogo dela; a seta indica apenas uma localização aproximada|r.
    .turnin 92682 >>Entregue Faça alguma coisa útil
    .turnin 92684,3 >>Entregue Vagaventos turrões turrões
    .turnin 92698 >>Entregue Qual é o meu propósito?
    .turnin 92683 >>Entregue Pó de asaleve
    .accept 92685 >>Aceite As colinas têm olhos
    .target Aamelia Windfield::252800

-- ============================================================================
-- Horde Shaman: Call of Fire Detour
-- ============================================================================

step << Horde Shaman
    #loop
    .goto 2521,50.017,77.659,40,0
    .goto 2521,51.3,80.59,40,0
    .goto 2521,50.868,83.289,40,0
    .goto 2521,50.42,83.74,40,0
    .goto 2521,49.24,81.79,40,0
    .xp 10 >>Mate inimigos até atingir o nível 10
step << Horde Shaman
    #completewith next
    .hs >>Use a Pedra de Regresso para voltar a Valanaar
    .cooldown item,6948,>0 --Hearthstone
step << Horde Shaman
    .isQuestAvailable 97243 -- Deliver the News
    -- .subzoneskip 16638,1 -- Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Donaal Brisabaixa::255940|r.
    .vendor 255940 >>Venda os lixos
    .collect 1179,20 >>Compre |T132815:0|t[Leite Gelado] << Mage/Druid/Priest/Warlock/Paladin/Hunter/Shaman
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078
step << Horde Shaman
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sessaria Andacéu::252382|r.
    .accept 97243 >>Aceite Clamor do Fogo
    .target Sessaria Skystride::252382
step << Horde Shaman
    .money <0.12
    .isQuestAvailable 97243 -- Call of Fire
    .xp <10,1
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,58.313,78.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sessaria Andacéu::252382|r.
    .trainer >>Treine suas magias de classe
    .target Sessaria Skystride::252382
step << Horde Shaman
    #label CallOfFireA
    .goto 2521,54.402,77.329,30,0
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olariaan Queimabreve::268592|r.
    .turnin 97243 >>Entregue Clamor do Fogo
    .accept 97244 >>Aceite Clamor do Fogo
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
    >>Mate |cRXP_ENEMY_Sacerdote do Céu Faladiel::268602|r. Pegue dele |T839910:0|t[|cRXP_LOOT_Coração de Faladiel|r].
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
    #label CallOfFireB
    .goto 2521,51.241,86.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olariaan Queimabreve::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97244 >>Entregue Clamor do Fogo
    .accept 97245 >>Aceite Clamor do Fogo

-- ============================================================================
-- The Hills Have Eyes: Bandit Hunt
-- ============================================================================

step << Alliance
    .isOnQuest 92685 -- The Hills Have Eyes
    .isQuestNotComplete 92685 -- The Hills Have Eyes
    .subzoneskip 16663,1 -- Windfield Orchard
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,45.73,80.86
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
    .usespell 1259705
step
    #completewith next
    #label Bandit Highwaymen
    *|cRXP_WARN_Equipe o|r |T7791298:0|t[Mata-asaleves] se você não tiver |T7791298:0|t[Porrete Zefrali]. << Rogue
    >>Mate |cRXP_ENEMY_Bandoleiros Bandidos::252820|r. Pegue deles as |T133693:0|t[|cRXP_LOOT_Máscaras de Bandido Manchadas de Sangue|r].
    *|cRXP_WARN_Fique atento aos inimigos furtivos no pomar de maçãs|r.
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
    .use 263329 << Rogue -- Flutterfly Swatter
step
    #completewith Bandit Highwaymen
    .goto 2521,44.81,74.4,30 >>Suba a montanha
    *|cRXP_WARN_Se vir um Tornado, use-o para se deslocar mais rápido|r.
step << Horde
    #completewith next
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Construct Parts|r.
    .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step
    #requires Bandit Highwaymen
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    -- .goto 2521,45.760,78.419,35,0
    >>Mate |cRXP_ENEMY_Bandoleiros Bandidos::252820|r. Pegue deles as |T133693:0|t[|cRXP_LOOT_Máscaras de Bandido Manchadas de Sangue|r].
    .complete 92685,1 --7/7 Blood-Stained Bandit Mask
    .mob Bandit Highwaymen::252820
step << Horde
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Construct Parts|r.
    .complete 93737,4 --|1/1 Obtain Air Construct Core from the Bandit Camp
step << Horde Shaman
    .goto 2521,42.393,68.887
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Toco de Kuramaa|r.
    >>Mate |cRXP_ENEMY_Kuramaa::268605|r. Pegue dele |T3549050:0|t[|cRXP_LOOT_Máscara de Kuramaa|r].
    *|cRXP_WARN_Ele repele você e recebe dano de fogo adicional|r.
    .complete 97245,1 --|1/1 Kuramaa's Mask
    .mob Kuramaa::268605
    .usespell 8024
step
    #loop
    .goto 2521,45.615,72.361,35,0
    .goto 2521,43.551,74.999,35,0
    .xp 10 >>Mate inimigos até atingir o nível 10
step
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aamelia Campo de Vento::252800|r.
    *|cRXP_WARN_Ela pode se deslocar entre locais durante uma sequência de diálogos e ações|r.
    *|cRXP_WARN_Procure-a à distância ou acompanhe o diálogo dela; a seta indica apenas uma localização aproximada|r.
    .turnin 92685 >>Entregue As colinas têm olhos
    .accept 92693 >>Aceite Defendendo o que é nosso << Alliance
    .target Aamelia Windfield::252800
step
    .isOnQuest 92685 -- The Hills Have Eyes
    -- .subzoneskip 16626,1 -- Gustberry Lowlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,43.84,75.53,30,0
    .goto 2521,44.06,76.19,15,0
    .goto 2521,47.511,78.490
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] |cRXP_WARN_em pleno ar|r para voar até o ponto indicado.
    .usespell 1259416
step
    #loop
    .goto 2521,46.71,81.94,30,0
    .goto 2521,47.511,78.490,30,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aamelia Campo de Vento::252800|r.
    *|cRXP_WARN_Ela pode se deslocar entre locais durante uma sequência de diálogos e ações|r.
    *|cRXP_WARN_Procure-a à distância ou acompanhe o diálogo dela; a seta indica apenas uma localização aproximada|r.
    *Você pode pular da montanha e usar |T132845:0|t[Andar no Ar] |cRXP_WARN_em pleno ar|r para voar até o ponto indicado.
    *|cRXP_WARN_Cuidado com os bandidos furtivos pelo caminho|r.
    .turnin 92685 >>Entregue As colinas têm olhos
    .accept 92693 >>Aceite Defendendo o que é nosso << Alliance
    .target Aamelia Windfield::252800
step << Alliance
    .goto 2521,46.71,81.94
    >>Volte para a localização principal de |cRXP_FRIENDLY_Aamelia Campo de Vento::252800|r e fale com ela.
    .complete 92693,1 --1/1 Speak with Aamelia Windfield
    .timer 75,Duração da encenação
    .target Aamelia Windfield::252800
    .skipgossipid 136302
step << Alliance
    .goto 2521,47.51,78.44
    >>Siga |cRXP_FRIENDLY_Aamelia Campo de Vento::252800|r. Aguarde a encenação.
    *Quando Aamelia parar, faça uma fogueira se puder e não houver nenhuma por perto. Comece a cozinhar para aumentar sua perícia.
    .complete 92693,2 --1/1 Follow Aamelia and make your final stand
    .use 279981 -- Basic Campfire Kit
step << Alliance
    .goto 2521,47.51,78.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aamelia Campo de Vento::252800|r.
    *|cRXP_WARN_Entregue a missão imediatamente; Aamelia logo voltará ao local original|r.
    .turnin 92693 >>Entregue Defendendo o que é nosso
    .accept 92703 >>Aceite Dê as boas novas
    .target Aamelia Windfield::252800
step << Horde
    .isOnQuest 92703 -- Deliver the News
    .goto 2521,48.445,80.591
    .cast 1259686 >>Use |T1029587:0|t[Visão do Céu] para obter o bônus de 10% de velocidade de movimento.
    .cooldown spell,1259686,>0,1

-- ============================================================================
-- City: Alliance and Non-Shaman Horde
-- ============================================================================

step << Alliance/Horde !Shaman
    .isQuestAvailable 92703 -- Deliver the News
    .subzoneskip 16638 -- Valanaar
    .hs >>Use a Pedra de Regresso para voltar a Valanaar
    .cooldown item,6948,>0 --Hearthstone
-- step << Alliance
--     #completewith Turn in The Missing Scholar
--     .aura 1258510
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_If you find a Tornado, touch it to gain its speed buff|r.
--     *|cRXP_WARN_While the Tornado speed buff is active, avoid killing them|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314
-- step
--     .goto 2521,50.33,76.66
--     .goto 2521,54.13,76.3
step << Alliance/Horde !Shaman
    .isQuestAvailable 92703 -- Deliver the News
    -- .subzoneskip 16638,1 -- Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Donaal Brisabaixa::255940|r.
    *|cRXP_BUY_Compre|r |T134534:0|t[Cogumelo da Floresta] |cRXP_BUY_dele|r. |cRXP_BUY_Você usará isso para alimentar seu ajudante mais tarde|r << Hunter
    .vendor 255940 >>Venda os lixos
    .collect 1179,20 >>Compre |T132815:0|t[Leite Gelado] << Mage/Druid/Priest/Warlock/Paladin/Hunter
    .collect 4604,5 << Hunter -- Forest Mushroom
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .target Donaal Downbreeze::255940
    .goto 2521,62.180,72.616
    .skipgossipid 137078

-- ============================================================================
-- Horde Shaman: Call of Fire Finale
-- ============================================================================

step << Horde Shaman
    .goto 2521,51.240,86.187
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Olariaan Queimabreve::268592|r.
    .target Olariaan Swiftburn::268592
    .turnin 97245 >>Entregue Clamor do Fogo
    .accept 97257 >>Aceite Clamor do Fogo
    .timer 35,Duração da encenação
step << Horde Shaman
    .goto 2521,51.265,85.927
    >>Aguarde a encenação. Use |T135432:0|t[Tocha da Chama Eterna] no |cRXP_PICK_Braseiro da Oferenda|r aceso.
    .complete 97257,1 --|1/1 Complete the Ritual with Olariaan
    .use 277329 -- Torch of Eternal Flame
step << Horde Shaman
    .goto 2521,52.400,81.309,25,0
    .goto 2521,54.907,76.598,15,0
    .goto 2521,58.312,78.827
    >>Você tem cerca de 5 minutos para voltar correndo.
    *|cRXP_WARN_Se houver um tornado por perto, use-o para andar mais rápido|r.
    .complete 97257,2 --|1/1 Light the Brazier of Eternal Flame
    .skipgossipid 140778
step << Horde Shaman
    .goto 2521,58.315,78.512
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sessaria Andacéu::252382|r.
    .target Sessaria Skystride::252382
    .turnin 97257 >>Entregue Clamor do Fogo
-- step << Horde Shaman
--     #completewith next
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314

-- ============================================================================
-- City: Horde Shaman
-- ============================================================================


step << Horde Shaman
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .goto 2521,59.40,75.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Halfwind::271465|r.
    .vendor 271465 >>Venda os lixos
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa].
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .target Falfaan Halfwind::271465
    .skipgossipid 141556


-- ============================================================================
-- Shared City Tour at Level 10
-- ============================================================================

step
    .isQuestComplete 92703 -- Deliver the News
    .goto 2521,61.94,72.8,10,0
    .goto 2521,62.05,73.09,8,0
    .goto 2521,62.11,73.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alvarion Campo de Vento::252448|r |cRXP_WARN_no segundo andar|r.
    .turnin 92703,1 >>Entregue Dê as boas novas << Warrior/Shaman/Paladin
    .turnin 92703,2 >>Entregue Dê as boas novas << Druid/Priest
    .turnin 92703,3 >>Entregue Dê as boas novas << Rogue
    .turnin 92703 >>Entregue Dê as boas novas << Hunter/Mage/Warlock
    .target Alvarion Windfield::252448
step
    #completewith Accept Catching Wind
    *|cRXP_WARN_Equipe a|r |T134435:0|t[Pá para Plantio] << Warrior/Shaman/Paladin
    *|cRXP_WARN_Equipe o|r |T133057:0|t[Martelo de Telhador] << Druid/Priest
    *|cRXP_WARN_Equipe a|r |T134520:0|t[Chave de Boca Confiável] << Rogue
    .use 263312 << Warrior/Shaman/Paladin -- Planting Shovel
    .use 263314 << Druid/Priest -- Roofing Hammer
    .use 263313 << Rogue -- Trusty Wrench
step << Alliance
    #completewith Turn in The Missing Scholar
    .aura 1258510
    >>Mate |cRXP_ENEMY_Saltacéus::251314|r.
    *|cRXP_WARN_Se encontrar um Tornado, toque nele para ganhar o bônus de velocidade|r.
    *|cRXP_WARN_Enquanto o bônus de velocidade do tornado estiver ativo, evite matá-los|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
-- step << Mage/Priest/Warlock
--     .xp <9,1
--     .money <0.1734
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.18
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792229:0|t[Zephrali Knife].
--     .collect 277108,1 --Zephrali Knife
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
step << Mage
    .goto 2521,62.887,77.324
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belann Lenhéolo::256507|r.
    .target Belann Windwood::256507
    .accept 93791 >>Aceite Conversando com Belann
    .turnin 93791 >>Entregue Conversando com Belann
    .accept 93797 >>Aceite Ramos ao vento
step << Warrior
    .goto 2521,59.889,72.869
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seena Rompe-céus::252377|r.
    .target Seena Skybreaker::252377
    .accept 94003 >>Aceite O Rompe-Céus Baluarte
step << Warrior
    .money <0.12
    .xp <10,1
    .goto 2521,59.55,73.3,25,0
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seena Rompe-céus::252377|r.
    .train 6546 >>Aprenda |T132155:0|t[Dilacerar (Grau 2)]
    .train 2687 >>Aprenda |T132277:0|t[Fúria Sanguinária]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Warrior/Paladin
    .xp <9,1
    .money <0.2151
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7792097:0|t[Arrebentador Zefrali].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Warrior/Paladin
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    +|cRXP_WARN_Equipe o|r |T7792097:0|t[Arrebentador Zefrali].
    .use 277106 --Zephrali Smasher
step << Shaman/Druid
    .xp <9,1
    .money <0.2176
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.48
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7798447:0|t[Grande Cajado Zefrali].
    .collect 277109,1 --Zephrali Greatstaff
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário. << Druid
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde Druid
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r. << Druid
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Shaman/Druid
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277109,1 --Zephrali Greatstaff
    +|cRXP_WARN_Equipe o|r |T7798447:0|t[Grande Cajado Zefrali].
    .use 277109 --Zephrali Greatstaff
step << Rogue
    .money <0.09
    -- .train 2070,1 -- Sap (Rank 2) Not Trained
    .train 6774,1 -- Slice and Dice (Rank 2) Not Trained
    .train 8696,1 -- Sprint (Rank 2) Not Trained
    .xp <10,1
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eltheen Umbrísia::252379|r.
    -- *|cRXP_WARN_You can interact with him through walls not sure if we want to add it|r
    .train 674 >>Aprenda |T132147:0|t[Empunhar Duas Armas]
    -- .train 6770 >>Train |T132310:0|t[Sap]
    .train 5171 >>Aprenda |T132306:0|t[Retalhar]
    .train 2983 >>Aprenda |T132307:0|t[Disparada]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Rogue
    .xp <9,1
    .money <0.1727
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7791298:0|t[Porrete Zefrali].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Rogue
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    +|cRXP_WARN_Equipe o|r |T7791298:0|t[Porrete Zefrali].
    .use 277107 --Zephrali Bludgeon
step << Hunter
    .goto 2521,59.55,73.3,25,0
    .goto 2521,59.572,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'ana Ventiágil::252389|r.
    .accept 94978 >>Aceite Domando a fera
    .target Quel'ana Quickgale::252389
step << Hunter
    .money <0.08
    .xp <10,1
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'ana Ventiágil::252389|r.
    .train 13165 >>Aprenda |T136076:0|t[Aspecto do Falcão]
    .train 13549 >>Aprenda |T132204:0|t[Picada de Serpente (Grau 2)]
    .skipgossipid 136808
    .target Quel'ana Quickgale::252389
step << Hunter
    .xp <9,1
    .money <0.1345
    .isQuestAvailable 98512 --Al'Aketh Assassins
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Halfwind::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7810733:0|t[Arco Zefrali]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Hunter
    #optional
    #completewith Accept Catching Wind << Alliance
    #completewith Learn << Horde
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    +|cRXP_WARN_Equipe o|r |T7810733:0|t[Arco Zefrali].
    .use 277110 --Zephrali Bow
step << Horde Druid
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Atravesse a montanha
step << Horde Druid
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lotheluum Brisastral::252359|r.
    .accept 94006 >>Aceite O grande espírito de ursera
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .xp <10,1
    .subzoneskip 16638,1 -- Valanaar
    .isNotOnQuest 94006 -- The Great Ursera Spirit
    .isQuestAvailable 94006 -- The Great Ursera Spirit
    #completewith next
    .goto 2521,63.33,73.65,15,0
    .goto 2521,63.973,75.095,25 >>Atravesse a montanha
step << Alliance Druid
    .xp <10,1
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lotheluum Brisastral::252359|r.
    .accept 94006 >>Aceite O grande espírito de ursera
    .target Lotheluum Starbreeze::252359
step << Druid
    .money <0.12
    .xp <10,1
    .goto 2521,63.983,75.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lotheluum Brisastral::252359|r.
    .train 16689 >>Aprenda |T136063:0|t[Enredamento]
    -- .train 99 >>Train |TInterface/Icons/Ability_Druid_DemoralizingRoar:0|t[Demoralizing Roar]
    .train 1058 >>Aprenda |T136081:0|t[Rejuvenescer (Grau 2)]
    .train 5232 >>Aprenda |T136078:0|t[Marca do Indomado (Grau 2)]
    .train 8924 >>Aprenda |T136096:0|t[Fogo Lunar (Grau 2)]
    .skipgossipid 140781
    .target Lotheluum Starbreeze::252359

-- step << Alliance Hunter
--     .goto 2521,63.023,77.803,10,0
--     .goto 2521,66.26,79.90
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Antelariaa Cloudgaze::252390|r.
--     >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows]
--     .vendor 252390 >>Vendor trash
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat].
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .collect 2515,1000 -- Sharp Arrows
--     .target Antelariaa Cloudgaze::252390

step << Mage
    .money <0.08
    .xp <10,1
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anathamaas Brisetéria::252373|r
    .train 168 >>Aprenda |T135843:0|t[Armadura Gélida]
    .train 122 >>Aprenda |T135848:0|t[Nova Congelante]
    .train 5504 >>Aprenda |T132794:0|t[Conjurar Água]
    -- .train 587 >>Train |T133952:0|t[Conjure Food]
    .train 5505 >>Aprenda |T132794:0|t[Conjurar Água (Grau 2)]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
step << Alliance
    #label Turn in The Missing Scholar
    *|cRXP_WARN_Empunhe os|r |T134520:0|t[|cRXP_LOOT_Chave de Boca Confiável|r] |cRXP_WARN_e|r |T7791298:0|t[|cRXP_LOOT_Mata-asaleves|r] |cRXP_WARN_se você não tiver o|r |T7791298:0|t[Porrete Zefrali].<< Rogue
    .goto 2521,66.21,79.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Filião Brisardente::253284|r.
    .turnin 92850 >>Entregue O erudito desaparecido 2
    .accept 99260 >>Aceite O erudito desaparecido
    .target Fillion Flamebreeze::253284
    .use 263313 << Rogue -- Trusty Wrench
    .use 263329 << Rogue -- Flutterfly Swatter
step << Alliance
    -- #completewith Protect the Index
    #completewith next
    .subzoneskip 16638,1 -- Valanaar
    .aura 1258510
    >>Mate |cRXP_ENEMY_Saltacéus::251314|r.
    *|cRXP_WARN_Se encontrar um Tornado, toque nele para ganhar o bônus de velocidade|r.
    *|cRXP_WARN_Enquanto o bônus de velocidade do tornado estiver ativo, evite matá-los|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance
    #label Accept Catching Wind
    .goto 2521,66.627,79.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaadrin Plenovento::252475|r.
    .target Elaadrin Evengale::252475
    .turnin 99260 >>Entregue O erudito desaparecido
    .accept 92840 >>Aceite Caça ao vento

-- ============================================================================
-- Horde Hunter: Taming the Beast 1
-- ============================================================================

step << Horde Hunter
    #loop
    .goto 2521,54.460,78.811,48,0
    .goto 2521,51.968,73.084,35,0
    .goto 2521,53.126,73.502,20,0
    .goto 2521,51.268,69.758,35,0
    .use 267272 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Rastejante Cantéolo::254588|r |cRXP_WARN_no alcance máximo|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'ana Ventiágil::252389|r.
    .turnin 94978 >>Entregue Domando a fera
    .accept 94979 >>Aceite Domando a fera
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Dispense seu |cRXP_ENEMY_Rastejante Cantéolo::254588|r clicando com o botão direito no retrato dele e selecionando Dispensar; caso contrário, você não conseguirá domar um|r |cRXP_ENEMY_Vagaventos Turrão::251707|r
    *|cRXP_WARN_Cuidado; ele atacará ao ser dispensado|r.
step << Horde Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Vagaventos Turrão::251707|r |cRXP_WARN_no alcance máximo|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'ana Ventiágil::252389|r.
    .turnin 94979 >>Entregue Domando a fera
    .accept 94013 >>Aceite Domando a fera
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Dispense seu |cRXP_ENEMY_Vagaventos Turrão::251707|r clicando com o botão direito no retrato dele e selecionando Dispensar; caso contrário, você não conseguirá domar um|r |cRXP_ENEMY_Vuldren::250874|r
    *|cRXP_WARN_Cuidado; ele atacará ao ser dispensado|r.
step << Horde Hunter
    #loop
    --.goto 2521,56.946,67.887,35,0
    .goto 2521,54.080,74.719,35,0
    .goto 2521,52.625,77.864,25,0
    .goto 2521,53.021,81.568,25,0
    .goto 2521,51.647,80.140,25,0
    .goto 2521,48.981,82.669,35,0
    .use 264163 >> |cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_no alcance máximo|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
step << Horde Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'ana Ventiágil::252389|r.
    .turnin 94013 >>Entregue Domando a fera
    .accept 94050 >>Aceite Treinando a fera
    .target Quel'ana Quickgale::252389
step << Horde Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'dora Ventiágil::254411|r.
    .turnin 94050 >>Entregue Treinando a fera
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    .xp <10,1
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'dora Ventiágil::254411|r.
    .train 4195 >>Treine [Vigor Maior]
    .train 24547 >>Treine [Armadura Natural]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
step << Horde Hunter
    #sticky
    -- .goto 2521,60.905,69.414,35,0
    -- .goto 2521,58.339,68.476,35,0
    -- .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_Lance|r |T132164:0|t[Domar Fera] |cRXP_WARN_em um |cRXP_ENEMY_Rastejante Cantéolo::254588|r para domá-lo|r -- .tame 1997
    *|cRXP_WARN_OBSERVAÇÃO:|r Se todos os caranguejos estiverem mortos, você também pode domar um |cRXP_ENEMY_Vagaventos Turrão::251707|r até encontrar um caranguejo.
    .train 2981 >> Ataque criaturas com ele para aprender [Garra (Grau 2)]
    .link https://www.wow-petopia.com/classic/training.php >> Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
	.mob Windsong Crawler::254588

-- ============================================================================
-- Level 10+ Deathskip Version
-- ============================================================================

-- step << Alliance
--     .isOnQuest 92840 -- Catching Wind
--     .subzoneskip 16638,1 -- Shen'dar Village
--     .goto 2521,67.41,80.46
--     .subzone 16626 >>Jump off the cliff
-- step << Alliance
--     #ignorecorpse
--     .subzoneskip 16626,1 -- Gustberry Lowlands
--     .isOnQuest 92840 -- Catching Wind
--     .showwhiledead
--     .goto 2521,54.99,68.14
--     .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Alliance !Hunter
    #completewith Protect the Index
    >>Mate |cRXP_ENEMY_Rastejantes Cantéolo::254588|r. Pegue |T133972:0|t[|cRXP_LOOT_Carne de Rastejante Cantéolo|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
    .skipgossipid 98031
    .skipgossipid 96031
step << Alliance Hunter
    #completewith Protect the Index
    .goto 2521,51.56,71.28,40,0
    .goto 2521,50.94,69.46,40,0
    .use 267272 >> |cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Rastejante Cantéolo::254588|r |cRXP_WARN_no alcance máximo|r.
    -- *|cRXP_WARN_Be careful while Resurrection Sickness is active|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance
    #optional
    #completewith next
    #label Protect the Index
    .goto 2521,50.06,72.96,30,0
    .goto 2521,48.83,73.54,30,0
    .goto 2521,47.16,72.34,30,0
    .goto 2521,46.55,71.7,30,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584 -- Index Esoteria
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Alliance
    #completewith Protect the Index
    .goto 2521,46.52,70.33,30 >>Contorne a montanha.
    *|cRXP_WARN_Se houver um tornado por perto, toque nele para ganhar 40% de velocidade de movimento por 5 minutos. Causar dano remove o efeito|r.
    *|cRXP_WARN_Não use|r |T132845:0|t[Andar no Ar] |cRXP_WARN_durante esta etapa|r.
step << Alliance
    #requires Protect the Index
    #loop
    .goto 2521,47.77,70.04,20,0
    .goto 2521,47.32,68.68,30,0
    .goto 2521,48.25,69,20,0
    .goto 2521,48.68,69.06,20,0
    .goto 2521,48.13,70.15,20,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cristal|r
    *|cRXP_WARN_Não use|r |T132845:0|t[Andar no Ar] |cRXP_WARN_durante esta etapa|r.
    .complete 92840,1 --|6/6 Gather Data on Elemental Currents
    .use 254584 -- Index Esoteria
    .mob Windshaper Elementalist
    .mob Windshaper Guardian
step << Mage
    .goto 2521,48.59,67.77
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Galho|r.
    .complete 93797,1 --1/1 Wind-Infused Bough
step << Alliance
    .isQuestComplete 92840 -- Catching Wind
    .isQuestComplete 94978 << Hunter -- Taming the Beast
    .subzoneskip 16638 -- Valanaar
    .subzoneskip 16626 -- Gustberry Lowlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,49.46,70.12,30,0
    .goto 2521,52.35,70.23
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o ponto indicado.
    -- *|cRXP_WARN_Be careful of the enemies near the edge. If you die, accept Resurrection Sickness|r.
    *|cRXP_WARN_Tenha cuidado com os inimigos perto da beira|r.
    .usespell 1259416
step << Alliance Hunter
    .isOnQuest 94978 -- Taming the Beast
    .isQuestNotComplete 94978 -- Taming the Beast
    .goto 2521,49.47,65.13,40,0
    .goto 2521,50.07,67.39,40,0
    .goto 2521,50.98,69.45,40,0
    .goto 2521,52.05,71.71,40,0
    .goto 2521,51.82,72.95,40,0
    .goto 2521,52.81,75.82,40,0
    .use 267272 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Rastejante Cantéolo::254588|r |cRXP_WARN_no alcance máximo|r.
    .complete 94978,1 --Tame a Windsong Crawler
    .mob Windsong Crawler::254588
step << Alliance Hunter
    .isQuestComplete 94978 -- Taming the Beast
    .isQuestComplete 92840 -- Catching Wind
    .subzoneskip 16638 -- Valanaar
    .subzoneskip 16626 -- Gustberry Lowlands
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,50.57,68.18,30,0
    .goto 2521,52.73,71.12
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o ponto indicado.
    .usespell 1259416
step << Alliance Hunter/Alliance Mage
    #completewith SkyhopperMultiClass
    >>Mate |cRXP_ENEMY_Saltacéus::251314|r.
    *|cRXP_WARN_Se encontrar um Tornado, toque nele para ganhar o bônus de velocidade|r.
    *|cRXP_WARN_Enquanto o bônus de velocidade do tornado estiver ativo, evite matá-los|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'ana Ventiágil::252389|r.
    .turnin 94978 >>Entregue Domando a fera
    .accept 94979 >>Aceite Domando a fera
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Dispense seu |cRXP_ENEMY_Rastejante Cantéolo::254588|r clicando com o botão direito no retrato dele e selecionando Dispensar; caso contrário, você não conseguirá domar um|r |cRXP_ENEMY_Vagaventos Turrão::251707|r
    *|cRXP_WARN_Cuidado; ele atacará ao ser dispensado|r.
step << Alliance Hunter
    #loop
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    .use 267298 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Vagaventos Turrão::251707|r |cRXP_WARN_no alcance máximo|r.
    .complete 94979,1 --Tame an Ornery Galestrider
    .mob Ornery Galestrider::251707
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'ana Ventiágil::252389|r.
    .turnin 94979 >>Entregue Domando a fera
    .accept 94013 >>Aceite Domando a fera
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syriel Serenoite::254345|r.
    .turnin 97968 >>Entregue Introdução ao Acampamento: Herborismo
    .target Syriel Nightrain::254345
step << Alliance Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Dispense seu |cRXP_ENEMY_Vagaventos Turrão::251707|r clicando com o botão direito no retrato dele e selecionando Dispensar; caso contrário, você não conseguirá domar um|r |cRXP_ENEMY_Vuldren::250874|r
    *|cRXP_WARN_Cuidado; ele atacará ao ser dispensado|r.
step << Alliance Hunter
    .isOnQuest 94013 --Taming the Beast
    .isQuestNotComplete 94013 --Taming the Beast
    .subzoneskip 16638,1
    #label SkyhopperMultiClass
    .goto 2521,57.11,74.49
    .subzone 16626 >> Entre nos Baixios dos Lufopomos
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
    .use 264163 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Vuldren::250874|r |cRXP_WARN_no alcance máximo|r.
    .complete 94013,1 --Tame a Vuldren
    .mob Vuldren::250874
    .mob Vuldren Alpha::250874
step << Alliance Hunter
    #completewith next
    >>Mate |cRXP_ENEMY_Saltacéus::251314|r.
    *|cRXP_WARN_Se encontrar um Tornado, toque nele para ganhar o bônus de velocidade|r.
    *|cRXP_WARN_Enquanto o bônus de velocidade do tornado estiver ativo, evite matá-los|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance Hunter
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'ana Ventiágil::252389|r.
    .turnin 94013 >>Entregue Domando a fera
    .accept 94050 >>Aceite Treinando a fera
    .target Quel'ana Quickgale::252389
step << Alliance Hunter
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'dora Ventiágil::254411|r.
    .turnin 94050 >>Entregue Treinando a fera
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    .xp <10,1
    .goto 2521,59.605,72.527
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'dora Ventiágil::254411|r.
    .train 4195 >>Treine [Vigor Maior]
    .train 24547 >>Treine [Armadura Natural]
    .skipgossipid 97876
    .target Quel'dora Quickgale::254411
step << Alliance Hunter
    #sticky
    .goto 2521,60.905,69.414,35,0
    .goto 2521,58.339,68.476,35,0
    .goto 2521,53.799,72.161,35,0
    >>|cRXP_WARN_Lance|r |T132164:0|t[Domar Fera] |cRXP_WARN_em um |cRXP_ENEMY_Rastejante Cantéolo::254588|r para domá-lo|r -- .tame 1997
    *|cRXP_WARN_OBSERVAÇÃO:|r Se todos os caranguejos estiverem mortos, você também pode domar um |cRXP_ENEMY_Vagaventos Turrão::251707|r até encontrar um caranguejo.
    .train 2981 >> Ataque criaturas com ele para aprender [Garra (Grau 2)]
    .link https://www.wow-petopia.com/classic/training.php >> Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
	.mob Windsong Crawler::254588
step << Mage
    #label SkyhopperMultiClass
    .goto 2521,62.89,77.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belann Lenhéolo::256507|r.
    .turnin 93797 >>Entregue Ramos ao vento
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
    >>Mate |cRXP_ENEMY_Saltacéus::251314|r.
    .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
    .mob Skyhopper::251314
step << Alliance !Hunter
    .train 2366,3 -- Herbalism Trained
    .isQuestComplete 97968 -- Camping 101: Herbalism
    .goto 2521,57.890,75.514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syriel Serenoite::254345|r.
    .turnin 97968 >>Entregue Introdução ao Acampamento: Herborismo
    .target Syriel Nightrain::254345
step << Alliance !Mage/Alliance !Hunter
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
    >>Mate |cRXP_ENEMY_Saltacéus::251314|r.
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
--     >>Kill |cRXP_ENEMY_Skyhoppers::251314|r.
--     *|cRXP_WARN_This quest is optional. You can skip it if there are too many other players doing it at the same time|r.
--     .complete 93949,1 --|8/8 Enchanted Skyhopper Exterminated
--     .mob Skyhopper::251314

-- ============================================================================
-- Horde: Branch
-- ============================================================================

-- ============================================================================
-- Horde Bugged Section
-- ============================================================================

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

-- ============================================================================
-- Horde Druid Section
-- ============================================================================

step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .subzoneskip 16638,1 -- Valanaar
    .goto 2521,65.378,74.886,20,0
    .goto 2521,65.424,71.472,35,0
    .goto 2521,65.905,68.024
    .subzone 16626 >>Siga o caminho para sair de Valanaar
step << Horde Druid
    .isOnQuest 94006 -- The Great Ursera Spirit
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o PNJ que oferece a missão.
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urs'endris::255853|r.
    .turnin 94006 >>Entregue O grande espírito de ursera
    .accept 94638 >>Aceite Força e misericórdia
    .target Urs'endris::255853
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .cooldown spell,1259686,>0,1 -- Skysight
    .goto 2521,46.597,38.121
    .cast 1259686 >>Use |T1029587:0|t[Visão do Céu] para obter o bônus de 10% de velocidade de movimento.
-- step << Horde !Druid
--      -- Not sure yet if I want to do this. This saves "only" ~15 seconds
--     .isQuestAvailable 98512
--     .goto 2521,61.221,78.472
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer|r.
-- step << Horde Druid
--     .isOnQuest 94638
--     .goto 2521,62.384,64.393
--     .deathskip >>|cRXP_WARN_(BETA: Resurrection Sickness is bugged. Skip this step for now.)|r Die and respawn at the |cRXP_FRIENDLY_Spirit Healer::6491|r.
step << Horde Druid
    #completewith next
    .goto 2521,59.59,66.7,30,0
    >>Mate |cRXP_ENEMY_Rastejantes Cantéolo::254588|r. Pegue |T133972:0|t[|cRXP_LOOT_Carne de Rastejante Cantéolo|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
step << Horde
    .goto 2521,59.528,66.902,30,0
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pedra Eólica Fendaal::273017|r.
    *|cRXP_WARN_Se houver um tornado por perto, toque nele para ganhar 40% de velocidade de movimento por 5 minutos. Causar dano remove o efeito|r.
    .accept 98512 >>Aceite Assassinos Al'Aketh
    .target Fendaal Windstone::273017
step << Horde
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>Mate |cRXP_ENEMY_Assassinos de Al'Aketh::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Horde !Druid
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pedra Eólica Fendaal::273017|r.
    .turnin 98512 >>Entregue Assassinos Al'Aketh
    .target Fendaal Windstone::273017
step << Horde
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Mate |cRXP_ENEMY_Rastejantes Cantéolo::254588|r. Pegue |T133972:0|t[|cRXP_LOOT_Carne de Rastejante Cantéolo|r].
    *|cRXP_WARN_NOTA:|r Esta missão é |cRXP_WARN_OPCIONAL|r. Pule este passo se os caranguejos estão muito disputados.
    .complete 93317,1 --6/6 Windsong Crawler Meat
step << Horde
    .subzoneskip 16625,1 -- Windsong Lake
    .isQuestAvailable 93159 -- The Strange Hermit
    .goto 2521,52.790,57.628
    .cast 1259686 >>Usar |T1029587:0|t[Visão do Céu] para o aumento de 10% de velocidade de movimento.
    .cooldown spell,1259686,>0,1
step << Horde
    --@THIDDI: Not sure if worth it.
    #loop
    .goto 2521,53.029,51.423,35,0
    .goto 2521,53.621,50.493,35,0
    .goto 2521,52.878,49.641,35,0
    .goto 2521,53.129,47.738,35,0
    .goto 2521,52.528,45.922,35,0
    .goto 2521,51.574,46.567,35,0
    .goto 2521,49.511,45.931,35,0
    .goto 2521,49.917,44.806,35,0
    .goto 2521,50.642,44.296,35,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Construct Parts|r.
    .complete 93737,3 --|1/1 Obtain Enchanted Gyrozephyr from Windsong Lake
    .mob Windsong Crawler::254588
step << Horde Druid
    .goto 2521,56.80,61.10,25,0
    .goto 2521,54.284,65.803
    >>Mate |cRXP_ENEMY_Ur'endra::258443|r dentro da caverna.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Horde Druid
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fendaal Windstone::273017|r.
    .turnin 98512 >>Entregue Al'Aketh Assassins
    .target Fendaal Windstone::273017
step << Horde Druid
    .isOnQuest 94638 -- Strength and Mercy
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,56.830,63.121,15,0
    .goto 2521,57.299,63.465,15,0
    .goto 2521,60.250,62.742,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>Pule da montanha |cRXP_WARN_mais baixa (não desta onde está)|r e use |T132845:0|t[Andar no Ar] para voar até quem dá a missão.
    .usespell 1259416
step << Horde Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94638 >>Entregue Força e misericórdia

-- ============================================================================
-- Alliance: Branch
-- ============================================================================

step << Alliance
    .isOnQuest 92840 --Catching Wind
    .goto 2521,65.47,80.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daeann Ventaço::252479|r.
    .vendor 252479 >>|cRXP_WARN_Venda o lixo e repare seu equipamento|r.
    .skipgossipid 137531
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa].
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .target Daeann Steelwind::252479
step << Alliance
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaadrin Plenovento::252475|r.
    .turnin 92840 >>Entregue Caça ao vento
    .accept 92834 >>Aceite Paz não é opção
    .accept 92860 >>Aceite A serviço de Zefras
    .target Elaadrin Evengale::252475
step << Alliance
    .isQuestAvailable 93320
    .goto 2521,66.63,79.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaadrin Plenovento::252475|r.
    .accept 92709 >>Aceite Uma grande aventura
    .target Elaadrin Evengale::252475
step << Alliance
    #optional
    #completewith next
    #label Service of Zephras
    *|cRXP_WARN_Equipe o|r |T7810733:0|t[Laço das Horas] << Hunter
    -- *|cRXP_WARN_Equip the|r |T7810733:0|t[Bow of Hours] << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valennia Tempespunho::252383|r.
    .turnin 92860 >>Entregue A serviço de Zefras
    .turnin 93949 >>Entregue De antena em pé
    .accept 93320 >>Aceite Defendendo a torre
    .disablecheckbox
    .target Valennia Stormfist::252383
    .use 263404 << Hunter -- Bow of Hours
step << Alliance
    #completewith Service of Zephras
    .goto 2521,65.65,79.27,30,0
    .goto 2521,64.98,77.12,30,0
    .goto 2521,65.93,76.37,8,0
    .goto 2521,66.46,76.8,5,0
    .goto 2521,66.43,76.58,5,0
    .goto 2521,66.43,76.83,5,0
    .goto 2521,66.31,77.08,5,0
    .goto 2521,66,76.57,8,0
    .goto 2521,66.19,76.22,8,0
    .goto 2521,66.44,76.4,5 >>Suba a torre
    *|cRXP_WARN_Se houver um Tornado, use-o para viajar mais rápido|r.
step << Alliance
    #requires Service of Zephras
    .goto 2521,66.18,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valennia Tempespunho::252383|r.
    .turnin 92860 >>Entregue A serviço de Zefras
    .turnin 93949 >>Entregue De antena em pé
    .accept 93320 >>Aceite Defendendo a torre
    .target Valennia Stormfist::252383
step << Alliance !Druid
    .isNotOnQuest 94896 -- Aid For The Refugees
    .isOnQuest 93320 -- Tower Defense
    .subzoneskip 16638,1 -- Valanaar
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.64,10,0
    .goto 2521,65.36,71.79
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o ponto indicado.
    .usespell 1259416
step << Alliance
    .goto 2521,65.956,74.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ealaane Correnimbo::259012|r.
    *|cRXP_WARN_Não use|r |T132845:0|t[Andar no Ar] |cRXP_WARN_durante esta etapa|r. << Druid
    .accept 94896 >>Aceite Auxílio aos refugiados
    .accept 94897 >>Aceite O destino de um amor
    .target Ealaane Nimbuswalker::259012
step << Alliance !Druid
    .isOnQuest 94897 -- The Fate of a Loved One
    .isOnQuest 93320 -- Tower Defense
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,64,74.06
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
    .usespell 1259705
step << Alliance
    #completewith next
    >>Mate |cRXP_ENEMY_Brigões Al'Aketh::270201|r.
    *Pegue deles |T1379232:0|t[|cRXP_LOOT_Patuás da Pedra Eólica de Al'Aketh|r].
   *|cRXP_WARN_Você avançará na missão aqui, mas provavelmente a concluirá em outro local mais tarde|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yorana Canavento::252378|r.
    *|cRXP_WARN_Se houver um tornado por perto, use-o para andar mais rápido|r.
    .turnin 93320,1 >>Entregue Defendendo a torre << Rogue/Hunter/Druid/Shaman
    .turnin 93320,2 >>Entregue Defendendo a torre << Mage/Priest/Warlock
    .turnin 93320,3 >>Entregue Defendendo a torre << Warrior/Paladin
    .accept 92642 >>Aceite Sabotando a logística
    .accept 92645 >>Aceite Quebrando a quebradora
    .target Yorana Windyreed::252378
step << Alliance !Druid
    #completewith Commander Belguilos2
    >>Mate |cRXP_ENEMY_Brigões Al'Aketh::270201|r, |cRXP_ENEMY_Pregadores Al'Aketh::253195|r e |cRXP_ENEMY_Pilhadores Al'Aketh::253511|r.
    *Pegue deles |T1379232:0|t[|cRXP_LOOT_Patuás da Pedra Eólica de Al'Aketh|r].
   *|cRXP_WARN_Você avançará na missão aqui, mas provavelmente a concluirá em outro local mais tarde|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance !Druid
    #optional
    #completewith Commander Belguilos2
    >>Mate |cRXP_ENEMY_Curandeiros de Al'Aketh::254596|r e |cRXP_ENEMY_Brigões Al'Aketh::270201|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
step << Alliance !Druid
    #label Commander Belguilos2
    .goto 2521,65.71,65.59,30,0
    .goto 2521,65.84,65.02,15,0
    .goto 2521,65.58,65.63
    >>Mate |cRXP_ENEMY_Comandante Belguilos::252666|r |cRXP_WARN_no segundo andar|r da casa.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance !Druid
    #completewith next
    >>Mate |cRXP_ENEMY_Brigões Al'Aketh::270201|r, |cRXP_ENEMY_Pregadores Al'Aketh::253195|r e |cRXP_ENEMY_Pilhadores Al'Aketh::253511|r.
    *Pegue deles |T1379232:0|t[|cRXP_LOOT_Patuás da Pedra Eólica de Al'Aketh|r].
   *|cRXP_WARN_Você avançará na missão aqui, mas provavelmente a concluirá em outro local mais tarde|r.
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
    >>Mate |cRXP_ENEMY_Brigões Al'Aketh::270201|r e |cRXP_ENEMY_Curandeiros de Al'Aketh::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    .isOnQuest 92834 -- Avenged Tenfold
    .subzoneskip 17675,1 -- East Pylon Watchtower
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,69.01,65.86,20,0
    .goto 2521,69.84,61.73
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o PNJ que oferece a missão.
    .usespell 1259416
step << Alliance Druid
    .goto 2521,69.782,61.609
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94006 >>Entregue O grande espírito de ursera
    .accept 94638 >>Aceite Força e misericórdia
step << Alliance Druid
    .subzoneskip 16593,1
    .isOnQuest 92645 --Breaking the Breaker
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,69.08,61.98
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
    .usespell 1259705
step << Alliance Druid
    #completewith Commander Belguilos Druid2
    >>Mate |cRXP_ENEMY_Brigões Al'Aketh::270201|r, |cRXP_ENEMY_Pregadores Al'Aketh::253195|r e |cRXP_ENEMY_Pilhadores Al'Aketh::253511|r.
    *Pegue deles |T1379232:0|t[|cRXP_LOOT_Patuás da Pedra Eólica de Al'Aketh|r].
   *|cRXP_WARN_Você avançará na missão aqui, mas provavelmente a concluirá em outro local mais tarde|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith Commander Belguilos Druid2
    >>Mate |cRXP_ENEMY_Curandeiros de Al'Aketh::254596|r e |cRXP_ENEMY_Brigões Al'Aketh::270201|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith next
    #label Commander Belguilos Druid
    >>Mate |cRXP_ENEMY_Comandante Belguilos::252666|r |cRXP_WARN_no segundo andar|r da casa.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith Commander Belguilos Druid
    .goto 2521,67.39,63.3,15 >>Atravesse a montanha
step << Alliance Druid
    #requires Commander Belguilos Druid
    #label Commander Belguilos Druid2
    .goto 2521,65.31,65.33,20,0
    .goto 2521,65.58,65.63
    >>Mate |cRXP_ENEMY_Comandante Belguilos::252666|r |cRXP_WARN_no segundo andar|r da casa.
    .complete 92645,1 --1/1 Commander Belguilos slain
    .mob Commander Belguilos::252666
step << Alliance Druid
    #completewith next
    >>Mate |cRXP_ENEMY_Brigões Al'Aketh::270201|r, |cRXP_ENEMY_Pregadores Al'Aketh::253195|r e |cRXP_ENEMY_Pilhadores Al'Aketh::253511|r.
    *Pegue deles |T1379232:0|t[|cRXP_LOOT_Patuás da Pedra Eólica de Al'Aketh|r].
   *|cRXP_WARN_Você avançará na missão aqui, mas provavelmente a concluirá em outro local mais tarde|r.
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
    >>Mate |cRXP_ENEMY_Brigões Al'Aketh::270201|r e |cRXP_ENEMY_Curandeiros de Al'Aketh::254596|r.
    .complete 92642,1 --4/4 Al'Aketh Healer slain
    .mob +Al'Aketh Healer::254596
    .complete 92642,2 --8/8 Al'Aketh Brawler slain
    .mob +Al'Aketh Brawler::270201
    .mob +Al'Aketh Preacher::253195
    .mob +Al'Aketh Pillager::253511
step << Alliance
    .goto 2521,69.61,67.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yorana Canavento::252378|r.
    .turnin 92645,1 >>Entregue Quebrando a quebradora << Rogue/Hunter/Druid/Shaman
    .turnin 92645,2 >>Entregue Quebrando o Rachador << Mage/Priest/Warlock
    .turnin 92645,3 >>Entregue Quebrando o Rachador << Warrior/Paladin
    .turnin 92642 >>Entregue Sabotando a logística
    .accept 92880 >>Aceite Retorno a Valanaar
    .target Yorana Windyreed::252378
step << Alliance
    #optional
    #completewith next
    #label Return to Valanaar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valennia Tempespunho::252383|r.
    .turnin 92880,1 >>Entregue Retorno a Valanaar << Warrior/Paladin
    .turnin 92880,2 >>Entregue Retorno a Valanaar << Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Entregue Retorno a Valanaar << Hunter/Mage/Druid/Priest/Warlock
    .accept 92881 >>Aceite O pedido do Sumo Ancião
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
    .goto 2521,66.44,76.4,5 >>Contorne a montanha e suba a torre
    *|cRXP_WARN_Se houver um Tornado, use-o para viajar mais rápido|r.
step << Alliance
    #requires Return to Valanaar
    .goto 2521,66.20,76.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valennia Tempespunho::252383|r.
    .turnin 92880,1 >>Entregue Retorno a Valanaar << Alliance Warrior/Alliance Paladin
    .turnin 92880,2 >>Entregue Retorno a Valanaar << Alliance Rogue -- Quickblade's Dagger
    .turnin 92880,3 >>Entregue Retorno a Valanaar << Alliance Hunter/Alliance Mage/Alliance Druid/Alliance Priest/Alliance Warlock
    .accept 92881 >>Aceite O pedido do Sumo Ancião
    .target Valennia Stormfist::252383
step << Alliance
    .goto 2521,66.17,76.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talaanis Cantonegro::252476|r.
    .turnin 92881 >>Entregue O pedido do Sumo Ancião
    .accept 92643 >>Aceite O desertor
    .target Talaanis::252476

-- ============================================================================
-- Level 10+ Non Deathskip Version
-- ============================================================================
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.47,76.61,8,0
    .goto 2521,66.31,76.18,15,0
    .goto 2521,63.14,76.9
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o ponto indicado.
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isQuestAvailable 98512 -- Al'Aketh Assassins
    .isNotOnQuest 98512 -- Al'Aketh Assassins
    .goto 2521,63.14,76.9,20,0
    .goto 2521,62.9,77.44,10,0
    .goto 2521,63.96,74.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belann Lenhéolo::256507|r dentro da casa.
    .vendor 256507 >>Venda o lixo e repare seus equipamentos se necessário
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa].
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .target Belann Windwood::256507
    .skipgossipid 137530
step << Hunter Alliance
    .xp <9,1
    .money <0.1345
    .isNotOnQuest 92679 -- Blood Tithe
    .isQuestAvailable 92679 -- Blood Tithe
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Meiovento::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7810733:0|t[Arco Zefrali]
    .collect 277110,1 --Collect Zephrali Bow
    .vendor 271465 >>Venda o lixo ao Comerciante e repare se necessário
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisamos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Hunter Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277110,1 --Zephrali Bow
    +|cRXP_WARN_Equipe o|r |T7810733:0|t[Arco Zefrali].
    .use 277110 --Zephrali Bow
step << Warrior Alliance/Paladin Alliance
    .xp <9,1
    .money <0.2151
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Halfwind::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7792097:0|t[Arrebentador Zefrali].
    .collect 277106,1 --Zephrali Smasher
    .vendor 271465 >>Venda o lixo ao Comerciante e repare se necessário.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Pequeno Eggs] e |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Precisamos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Warrior Alliance/Paladin Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277106,1 --Zephrali Smasher
    +|cRXP_WARN_Equipe o|r |T7792097:0|t[Arrebentador Zefrali].
    .use 277106 --Zephrali Smasher
step << Rogue Alliance
    .xp <9,1
    .money <0.1727
    .isNotOnQuest 92679 --Blood Tithe
    .isQuestAvailable 92679 --Blood Tithe
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
    .goto 2521,59.395,75.730
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falfaan Halfwind::271465|r dentro da casa.
    >>|cRXP_BUY_Compre e equipe um|r |T7791298:0|t[Porrete Zefrali].
    .collect 277107,1 --Zephrali Bludgeon
    .vendor 271465 >>Venda o lixo e repare seus equipamentos se necessário.
    *Não venda |T133970:0|t[Acém], |T132832:0|t[Ovos Pequenos] ou |T133972:0|t[Carne de Moa]. << Alliance
    *Não venda |T132832:0|t[Ovos Pequenos] e |T133972:0|t[Carne de Moa]. << Horde
    *|cRXP_WARN_Precisaremos deles para Culinária mais tarde|r.
    .skipgossipid 141556
    .target Falfaan Halfwind::271465
step << Rogue Alliance
    #optional
    #completewith secluded house
    .xp <9,1
    .itemcount 277107,1 --Zephrali Bludgeon
    +|cRXP_WARN_Equipe o|r |T7791298:0|t[Porrete Zefrali].
    .use 277107 --Zephrali Bludgeon
-- step << Alliance
--     .subzoneskip 16638,1 -- Valanaar
--     .isQuestAvailable 98512 -- Al'Aketh Assassins
--     .isNotOnQuest 98512 -- Al'Aketh Assassins
--     .cooldown spell,1259705,>0,1 -- Read Ley Line
--     .goto 2521,63.96,74.15
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .usespell 1259705


-- ============================================================================
-- Level 10+ Deathskip Version
-- ============================================================================


-- step << Hunter
--     .xp <9,1
--     .money <0.1345
--     .isNotOnQuest 92679 -- Blood Tithe
--     .isQuestAvailable 92679 -- Blood Tithe
--     .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.82
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7810733:0|t[Zephrali Bow]
--     .collect 277110,1 --Collect Zephrali Bow
--     .vendor 271465 >>Vendor trash and repair if needed
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Hunter
--     #optional
--     #completewith secluded house
--     .xp <9,1
--     .itemcount 277110,1 --Zephrali Bow
--     +|cRXP_WARN_Equip the|r |T7810733:0|t[Zephrali Bow].
--     .use 277110 --Zephrali Bow
-- step << Warrior/Paladin/Shaman/Druid
--     .xp <9,1
--     .money <0.2151
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.28
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792097:0|t[Zephrali Smasher].
--     .collect 277106,1 --Zephrali Smasher
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Warrior/Paladin/Shaman/Druid
--     #optional
--     #completewith secluded house
--     .xp <9,1
--     .itemcount 277106,1 --Zephrali Smasher
--     +|cRXP_WARN_Equip the|r |T7792097:0|t[Zephrali Smasher].
--     .use 277106 --Zephrali Smasher
-- step << Rogue
--     .xp <9,1
--     .money <0.1727
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.35
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7791298:0|t[Zephrali Bludgeon].
--     .collect 277107,1 --Zephrali Bludgeon
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Rogue
--     #optional
--     #completewith secluded house
--     .xp <9,1
--     .itemcount 277107,1 --Zephrali Bludgeon
--     +|cRXP_WARN_Equip the|r |T7791298:0|t[Zephrali Bludgeon].
--     .use 277107 --Zephrali Bludgeon
-- step << Mage/Priest/Warlock
--     .xp <9,1
--     .money <0.1734
--     .isNotOnQuest 92679 --Blood Tithe
--     .isQuestAvailable 92679 --Blood Tithe
--     .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.18
--     .goto 2521,59.395,75.730
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Falfaan Halfwind::271465|r inside the house.
--     >>|cRXP_BUY_Buy and equip a|r |T7792229:0|t[Zephrali Knife].
--     .collect 277108,1 --Zephrali Knife
--     .vendor 271465 >>Vendor trash and repair if needed.
--     *Don't sell |T133970:0|t[Stringy Meat], |T132832:0|t[Small Eggs], or |T133972:0|t[Strider Meat]. << Alliance
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat]. << Horde
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .skipgossipid 141556
--     .target Falfaan Halfwind::271465
-- step << Alliance
--     .isNotOnQuest 98512 --Al'Aketh Assassins
--     .isQuestAvailable 98512 --Al'Aketh Assassins
--     .goto 2521,66.49,76.65,8,0
--     .goto 2521,68.84,78.42,-1
--     .goto 2521,60.74,78.02,-1
--     .subzone 16626 >>Jump off the cliff
-- step << Alliance Paladin/Alliance Priest/Alliance Warlock/Alliance Mage/Alliance Rogue
--     #optional
--     #completewith Al'Aketh Assassins Equip Reminder
--     +|cRXP_WARN_Equip the|r |T7792097:0|t[Honed Greathammer] if you don't have |T7792097:0|t[Zephrali Smasher]. << Paladin
--     +|cRXP_WARN_Equip the|r |T7798447:0|t[Balanced Quarterstaff] if you don't have |T7792229:0|t[Zephrali Knife]. << Priest/Warlock/Mage
--     +|cRXP_WARN_Equip the|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger] if you don't have |T7791298:0|t[Zephrali Bludgeon]. << Rogue
--     .use 257345 << Paladin -- Honed Greathammer
--     .use 257343 << Priest/Warlock/Mage -- Balanced Quarterstaff
--     .use 257346 << Rogue -- Quickblade's Dagger
-- step << Alliance
--     #ignorecorpse
--     .subzoneskip 16626,1 -- Gustberry Lowlands
--     .isNotOnQuest 98512 --Al'Aketh Assassins
--     .isQuestAvailable 98512 --Al'Aketh Assassins
--     .showwhiledead
--     .goto 2521,54.99,68.14
--     .deathskip >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to the |cRXP_FRIENDLY_Spirit Healer::6491|r.
--     .skipgossipid 96031
--     .skipgossipid 98031
--     .target Spirit Healer::6491
step << Alliance
    #label Al'Aketh Assassins Equip Reminder
    .goto 2521,56.81,61.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pedra Eólica Fendaal::273017|r.
    *|cRXP_WARN_Se houver um tornado por perto, toque nele para ganhar 40% de velocidade de movimento por 5 minutos. Causar dano remove o efeito|r.
    *|cRXP_WARN_Equipe o|r |T7792097:0|t[Martelão Apurado] se você não tiver |T7792097:0|t[Arrebentador Zefrali]. << Paladin
    *|cRXP_WARN_Equipe o|r |T7798447:0|t[Varapau Equilibrado] se você não tiver |T7792229:0|t[Faca Zefrali]. << Priest/Warlock/Mage
    *|cRXP_WARN_Equipe o|r |TInterface/Icons/inv_knife_1h_skybornec60_b_01:0|t[Quickblade's Dagger] se você não tiver |T7791298:0|t[Porrete Zefrali]. << Rogue
    .accept 98512 >>Aceite Assassinos Al'Aketh
    .target Fendaal Windstone::273017
step << Alliance
    #optional
    #completewith Fendaal Windstone
    >>Mate |cRXP_ENEMY_Assassinos de Al'Aketh::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    #label secluded house
    .goto 2521,56.13,60.26
    >>Siga a seta
    -- *|cRXP_WARN_Be careful while Resurrection Sickness is active|r.
    .complete 92643,1 --1/1 Find the secluded house in Shen'dar Highlands
step << Alliance
    .goto 2521,56.05,58.79
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Cultista Morto|r.
    .complete 92643,2 --1/1 Find the Al'Aketh Turncoat
    .target Dead Cultist::253372
step << Alliance
    #label Fendaal Windstone
    .goto 2521,56.043,58.785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cultista Morto::253372|r.
    .target Dead Cultist::253372
    .turnin 92643 >>Entregue O desertor
    .accept 92644 >>Aceite Uma notícia infeliz
step << Alliance
    #loop
    .goto 2521,55.27,59.58,35,0
    .goto 2521,54.58,60.52,35,0
    .goto 2521,55.93,60.3,35,0
    .goto 2521,56.04,59.08,35,0
    >>Mate |cRXP_ENEMY_Assassinos de Al'Aketh::254626|r.
    .complete 98512,1 --10/10 Al'Aketh Assassin slain
    .mob Al'Aketh Assassin::254626
step << Alliance
    .goto 2521,56.80,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pedra Eólica Fendaal::273017|r.
    .turnin 98512 >>Entregue Assassinos Al'Aketh
    .target Fendaal Windstone::273017
step << Alliance Druid
    .goto 2521,54.284,65.803
    >>Mate |cRXP_ENEMY_Ur'endra::258443|r dentro da caverna.
    .complete 94638,1 --|1/1 Ur'endra slain
    .mob Ur'endra::258443
step << Alliance Druid
    .isOnQuest 94638 --Strength and Mercy
    .goto 2521,56,64.14,20,0
    .goto 2521,69.803,61.660
    .cast 1259416 >>Pule da |cRXP_WARN_montanha mais baixa|r e use |T132845:0|t[Andar no Ar] para voar até quem oferece a missão. --Walk on Air
    .usespell 1259416 --Walk on Air
step << Alliance Druid
    .goto 2521,69.803,61.660
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urs'endris::255853|r.
    .target Urs'endris::255853
    .turnin 94638 >>Entregue Força e misericórdia
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid2
    >>Mate |cRXP_ENEMY_Brigões Al'Aketh::270201|r, |cRXP_ENEMY_Pregadores Al'Aketh::253195|r e |cRXP_ENEMY_Pilhadores Al'Aketh::253511|r |cRXP_WARN_pelo caminho|r.
    *Pegue deles |T1379232:0|t[|cRXP_LOOT_Patuás da Pedra Eólica de Al'Aketh|r].
   *|cRXP_WARN_Você avançará na missão aqui, mas provavelmente a concluirá em outro local mais tarde|r.
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Brawler::270201
    .mob Al'Aketh Preacher::253195
    .mob Al'Aketh Pillager::253511
step << Alliance Druid
    #optional
    #completewith next
    #label Windsong Crawler Meat Druid
    .goto 2521,59.59,66.7,30,0
    >>Mate |cRXP_ENEMY_Rastejantes Cantéolos::254588|r |cRXP_WARN_pelo caminho|r. Pegue deles |T133972:0|t[|cRXP_LOOT_Carne de Rastejante Cantéolo|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance Druid
    #completewith Windsong Crawler Meat Druid
    #label Windsong Crawler Meat Druid2
    .goto 2521,57.25,60.92,50 >>Contorne as montanhas
    *|cRXP_WARN_Se houver um Tornado, use-o para viajar mais rápido|r.
step << Alliance Druid
    #requires Windsong Crawler Meat Druid
    #loop
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Mate |cRXP_ENEMY_Rastejantes Cantéolo::254588|r. Pegue |T133972:0|t[|cRXP_LOOT_Carne de Rastejante Cantéolo|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588
step << Alliance
    #loop
    .goto 2521,54.35,57.87,35,0
    .goto 2521,53.56,59.17,35,0
    .goto 2521,52.91,58.56,35,0
    .goto 2521,52.08,59.23,35,0
    .goto 2521,52.49,57.3,35,0
    .goto 2521,53.55,55.55,35,0
    .goto 2521,54.3,57.94,35,0
    >>Mate |cRXP_ENEMY_Rastejantes Cantéolo::254588|r. Pegue |T133972:0|t[|cRXP_LOOT_Carne de Rastejante Cantéolo|r].
    .complete 93317,1 --6/6 Windsong Crawler Meat
    .mob Windsong Crawler::254588

-- ============================================================================
-- Shared Route Resumes
-- ============================================================================


step << Alliance
    -- #completewith next
    .isQuestAvailable 93159 -- The Strange Hermit
    .subzoneskip 16631 -- Shadowgale Forest
    .goto 2521,55.89,56.12,40,0
    .goto 2521,57.17,55.26,40,0
    .goto 2521,57.86,54.69,40,0
    .goto 2521,58.61,52.77,30 >>Passe pela cachoeira e contorne a montanha.
    *|cRXP_WARN_Se vir um Tornado, use-o para se deslocar mais rápido|r.
-- step << Horde
--     .isQuestAvailable 93159 -- The Strange Hermit
--     .subzoneskip 16631 -- Shadowgale Forest
--     -- #completewith next
--     .goto 2521,59.444,67.060,45,0 << Druid
--     .goto 2521,58.72,52.77,30 >>Go around the mountains and cross the bridge.
--     *|cRXP_WARN_If you see a Tornado, use it for faster travel|r.


--Vendor Dissappeard Ingame
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
    >>Mate |cRXP_ENEMY_Zaal Escudo Tonante::257196|r. Saqueie-o para o |T134959:0|t[|cRXP_LOOT_Skybreaker Baluarte|r].
    .complete 94003,1 --|1/1 Skybreaker Bulwark
    .mob Zaal Stormshield::257196


-- step << Alliance
--     .isQuestAvailable 92850
--     .subzoneskip 16631 -- Shadowgale Forest
--     .goto 2521,55.12,50.55
--     .cast 1259705 >>Use |T236219:0|t[Read Ley Line] for 100% increased passive Mana and Health regeneration.
--     .cooldown spell,1259705,>0,1
--     .usespell 1259705
step << Alliance
    #completewith Learn
    >>Mate |cRXP_ENEMY_Guinchotes Ventosombra::256092|r.
    *Pegue deles |T1508517:0|t[|cRXP_LOOT_Garras de Guinchote|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    .goto 2521,58.81,46.74,30,0 << Alliance
    .goto 2521,58.81,43.57,40 >>Atravesse a ponte.
step << Horde Druid
    #completewith next
    .goto 2521,56.80,61.10,25 >>Contorne a montanha.
step
    #label Learn
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eremita Estranho::251684|r.
    .accept 93159 >>Aceite O Eremita Estranho
    .complete 93159,1 --1/1 Learn more about the Strange Hermit
    .turnin 93159 >>Entregue O Eremita Estranho
    .accept 93160 >>Aceite O tesouro da floresta
    .accept 93172 >>Aceite Liberte os Abantesmas
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    .train 4036,3 -- Engineering Trained
    .goto 2521,53.95,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eremita Estranho::251684|r.
    .accept 98285 >>Aceite Introdução ao Acampamento: Engenharia
    .target Strange Hermit::251684
    .skipgossipid 135787
    .skipgossipid 135786
    .skipgossipid 135785 -- engineering
    .skipgossipid 135784 -- no
step
    #completewith Abandoned Belongings1
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Sementes|r
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #completewith Abandoned Belongings1
    >>Mate |cRXP_ENEMY_Guinchotes Ventosombra::256092|r.
    *Pegue deles |T1508517:0|t[|cRXP_LOOT_Garras de Guinchote|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith next
    #hidewindow
    #label Abandoned Belongings1
    .complete 94896,1,1 --8/8 Abandoned Belongings
step
    #optional
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith Resaan's Heirloom
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Mate |cRXP_ENEMY_Abantesmas do Vento::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    #optional
    #completewith Resaan's Heirloom
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Caixotes|r
    *|cRXP_WARN_NOTA:|r Esta missão é opcional. Você pode pular quando há muitas pessoas realizando. << Horde
    .complete 94896,1 --8/8 Abandoned Belongings
step
    #label Resaan's Heirloom
    .goto 2521,56.83,33.99,30,0
    .goto 2521,56.75,33.3,25,0
    .goto 2521,57.25,33.37,25,0
    .goto 2521,57.23,33.4,25,0
    .goto 2521,57.04,29.36
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Resaan Correnimbo|r
    .complete 94897,1 --1/1 Resaan's Heirloom
    .skipgossipid 138670
    .target Resaan Nimbuswalker::259013
step << Alliance
    #optional
    #completewith Abandoned BelongingsZ
    >>Mate |cRXP_ENEMY_Abantesmas do Vento::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    .mob Wind Hollow::251676
step << Alliance
    #optional
    #completewith Abandoned BelongingsZ
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Caixotes|r
    .complete 94896,1 --8/8 Abandoned Belongings
step << Alliance
    #label Abandoned BelongingsZ
    .subzoneskip 16833,1 -- Ruins of Ban'aethal
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,56.61,29.26,20,0
    -- .goto 2521,58.06,28.2,30,0
    -- .goto 2521,57.91,26.83,30,0
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
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
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
    #optional
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #completewith next
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Mate |cRXP_ENEMY_Abantesmas do Vento::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde--10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Caixotes|r
    *|cRXP_WARN_NOTA:|r Esta missão é opcional. Você pode pular quando há muitas pessoas realizando. << Horde
    .complete 94896,1 --8/8 Abandoned Belongings
step
    --@THIDDI: Not sure if worth it (Wind Hollow Essence).
    #label Wind Hollow
    -- >>Kill |cRXP_ENEMY_Wind Hollows::251676|r. Loot them for |T2576094:0|t[|cRXP_LOOT_Wind Hollow Essence|r]. << Horde
    >>Mate |cRXP_ENEMY_Abantesmas do Vento::251676|r.
    .complete 93172,1 --10/10 Wind Hollow freed
    -- .complete 93736,1 << Horde --10/10 Wind Hollow Essence
    .mob +Wind Hollow::251676
step << Alliance
    #completewith Unnerving Silence
    >>Mate |cRXP_ENEMY_Guinchotes Ventosombra::256092|r.
    *Pegue deles |T1508517:0|t[|cRXP_LOOT_Garras de Guinchote|r].
    .complete 92741,1 --8/8 Shriekling Talons
    .mob Shadowgale Shriekling::256092
step
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Sementes|r |cRXP_WARN_principalmente ao redor das árvores|r.
    .complete 93160,1 --8/8 Zephyrseed
step
    .goto 2521,61.76,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elegael Patacardo::257944|r.
    .target Elegael Thornpaw::257944
    .turnin 94484 >>Entregue Silêncio enervante
    .accept 94485 >>Aceite Lágrimas da dama
    .accept 94486 >>Aceite Penas isolantes
    .accept 94487 >>Aceite Indesejados e indignos
step
    #optional
    #completewith Unnerving Silence
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Musgo Lágrima-de-dama|r |cRXP_WARN_nas árvores|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    #optional
    #completewith Unnerving Silence
    >>Mate |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Saque-os para |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Peninha|r].
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob Shadowgale Shriekling::256092
step << Alliance
    #completewith next
    >>Mate |cRXP_ENEMY_Soldados de Infantaria Al'Aketh::252665|r e |cRXP_ENEMY_Caça-tempestades Al'Aketh::252664|r.
    *Pegue deles |T4622283:0|t[|cRXP_LOOT_Heranças Sangrentas|r] e |T1379232:0|t[|cRXP_LOOT_Patuás da Pedra Eólica de Al'Aketh|r].
    .complete 94487,1 --10/10 Bloody Heirloom
    .complete 92834,1 --10/10 Al'Aketh Windstone Charm
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step
    .goto 2521,63.80,36.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vayn Miralua::254151|r.
    .accept 93165 >>Aceite Menos misericórdia, mais orelhas
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
    >>Mate |cRXP_ENEMY_Soldados de Infantaria Al'Aketh::252665|r e |cRXP_ENEMY_Caça-tempestades Al'Aketh::252664|r.
    *Pegue deles |T4622283:0|t[|cRXP_LOOT_Heranças Sangrentas|r], |T133856:0|t[|cRXP_LOOT_Orelhas de Sectário Al'Aketh|r] e |T1379232:0|t[|cRXP_LOOT_Patuás da Pedra Eólica de Al'Aketh|r]. << Alliance
    *Pegue deles |T4622283:0|t[|cRXP_LOOT_Heranças Sangrentas|r]. << Horde
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
    #optional
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith ToHermit << Alliance
    #completewith ForestHollowsB << Horde
    >>Mate |cRXP_ENEMY_Guinchotes Ventosombra::256092|r.
    *Saque-os para |T1508517:0|t[|cRXP_LOOT_Shriekling Garras|r] e |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Peninha|r]. << Alliance
    *Saque-os para |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Peninha|r].
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step << Alliance
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Sementes|r |cRXP_WARN_principalmente ao redor das árvores|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Alliance
    #optional
    #completewith ToHermit
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Musgo Lágrima-de-dama|r |cRXP_WARN_nas árvores|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #optional
    #completewith ForestHollowsB
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Musgo Lágrima-de-dama|r |cRXP_WARN_nas árvores|r.
    .complete 94485,1 --8/8 Lady's Tear Moss
step << Horde
    #label ForestHollowsA
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nas |cRXP_PICK_Sementes|r |cRXP_WARN_principalmente ao redor das árvores|r.
    .complete 93160,1 --8/8 Zephyrseed
step << Horde
    #label ForestHollowsB
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eremita Estranho::251684|r.
    .turnin 93160 >>Entregue O tesouro da floresta
    .turnin 93172,1 >>Entregue Liberte os Abantesmas << Rogue/Hunter/Druid/Shaman
    .turnin 93172,2 >>Entregue Liberte os Abantesmas << Mage/Priest/Warlock
    .turnin 93172,3 >>Entregue Grátis the Hollows << Warrior/Paladin
    .target Strange Hermit::251684
-- step << Alliance
--     --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
--     #label Shadowgale Shrieklings
--     >>Kill |cRXP_ENEMY_Shadowgale Shrieklings::256092|r.
--     *Loot them for |T1508517:0|t[|cRXP_LOOT_Shriekling Talons|r] and |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Feathers|r].
--     .complete 92741,1 --8/8 Shriekling Talons
--     .complete 94486,1 --20/20 Pristine Shriekling Feathers
--     .mob +Shadowgale Shriekling::256092
step << Alliance
    #label ToHermit
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eremita Estranho::251684|r.
    .turnin 93160 >>Entregue O tesouro da floresta
    .turnin 93172,1 >>Entregue Grátis the Hollows << Rogue/Hunter/Druid/Shaman
    .turnin 93172,2 >>Entregue Grátis the Hollows << Mage/Priest/Warlock
    .turnin 93172,3 >>Entregue Grátis the Hollows << Warrior/Paladin
    .target Strange Hermit::251684
step
    .train 4036,3 -- Engineering Trained
    .isQuestComplete 98285 -- Camping 101: Engineering
    .goto 2521,53.97,38.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eremita Estranho::251684|r.
    .turnin 98285 >>Entregue Introdução ao Acampamento: Engenharia
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
    #optional
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #completewith next
    >>Mate |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Saque-os para |T1508517:0|t[|cRXP_LOOT_Shriekling Garras|r] e |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Peninha|r]. << Alliance
    >>Mate |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Saque-os para |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Peninha|r].
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Musgo Lágrima-de-dama|r
    .complete 94485,1 --8/8 Lady's Tear Moss
step
    --@THIDDI: Not sure if worth it (Pristine Shriekling Feathers).
    #label Pristine Shriekling Feathers
    >>Mate |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Saque-os para |T1508517:0|t[|cRXP_LOOT_Shriekling Garras|r] e |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Peninha|r]. << Alliance
    >>Mate |cRXP_ENEMY_Shadowgale Shrieklings::256092|r. Saque-os para |T132927:0|t[|cRXP_LOOT_Pristine Shriekling Peninha|r].
    .complete 92741,1 << Alliance --8/8 Shriekling Talons
    .complete 94486,1 --20/20 Pristine Shriekling Feathers
    .mob +Shadowgale Shriekling::256092
step
    .goto 2521,61.76,39.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elegael Patacardo::257944|r.
    .turnin 94485 >>Entregue Lágrimas da dama
    .turnin 94487 >>Entregue Indesejados e indignos
    .turnin 94486 >>Entregue Penas isolantes
    .accept 94488 >>Aceite Os laços que unem
    .accept 94489 >>Aceite As feridas da traição
    .target Elegael Thornpaw::257944
step
    .isQuestAvailable 94490 -- Ripped Missive
    .goto 2521,65.54,36.3
    >>Mate |cRXP_ENEMY_Commander Haalien::253622|r. Saque-o para |T134161:0|t[|cRXP_LOOT_Severed Cabeça|r] e |T135332:0|t[|cRXP_LOOT_Ripped Missive|r].
    .complete 94488,1 --1/1 Commander Haalien's Severed Head
    .mob Commander Haalien::253622
    .collect 265476,1 -- Ripped Missive
step << Horde
    #optional
    .isOnQuest 93165
    .itemcount 258771,4
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
    >>Abate os |cRXP_ENEMY_Al'Aketh Footsoldiers::252665|r e os |cRXP_ENEMY_Al'Aketh Stormchasers::252664|r.
    *Saque-os para |T133856:0|t[|cRXP_LOOT_Al'Aketh Cultist's Orelhas|r].
    .complete 93165,1 --10/10 Al'Aketh Cultist's Ear
    .mob Al'Aketh Footsoldier::252665
    .mob Al'Aketh Stormchaser::252664
step << Alliance
    #completewith next
    .itemcount 265476,1
    >>Use a |T134332:0|t[Missiva Rasgada] nas bolsas para iniciar a missão.
    .accept 94490 >>Aceite Missiva Rasgada
    .use 265476 -- Ripped Missive
step
    #optional
    .isOnQuest 93165 << Horde
    .isQuestComplete 93165 << Horde
    .goto 2521,63.75,36.44,30,0
    .goto 2521,63.80,36.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vayn Miralua::254151|r na entrada da caverna.
    .turnin 93165,1 >>Entregue Menos misericórdia, mais orelhas << Rogue/Hunter/Druid/Shaman
    .turnin 93165,2 >>Entregue Misericórdia Falls on Deaf Orelhas << Mage/Priest/Warlock
    .turnin 93165,3 >>Entregue Misericórdia Falls on Deaf Orelhas << Warrior/Paladin
    .target Vayn Moongaze::254151
step
    .goto 2521,63.93,33.76,20,0
    .goto 2521,63.69,32.49,20,0
    .goto 2521,64,31.97,15,0
    .goto 2521,64.52,31.88,15,0
    .goto 2521,64,31.97,15,0
    .goto 2521,64.52,31.88,15,0
    .goto 2521,64.25,31.93
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Druidas|r
    .complete 94489,1,2 --7/7 Injured Druids healed
    .target Neyasteel Mossmender::258275
    .target Bryaes Galechaser::258277
step
    #completewith next
    #hidewindow
    .goto 2521,64.703,30.067,20 >>1
step
    .goto 2521,65.55,31.9,15,0
    .goto 2521,66.13,32.18,15,0
    .goto 2521,65.79,33,15,0
    .goto 2521,65.93,33.55
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Druidas|r.
    .complete 94489,1,4 --7/7 Injured Druids healed
    .target Mithraless Sterngale::258288
    .target Baeo Sharpstrike::258289
step
    #loop
    .goto 2521,64.98,34.96,10,0
    .goto 2521,64.51,34.89,10,0
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique nos |cRXP_PICK_Druidas|r
    .complete 94489,1,7 --7/7 Injured Druids healed
    .target Nayeela Snarlfang::258138
    .target Telenos Leafwhisper::258137
    .target Naaleos Leafwhisper::258134
step
    .goto 2521,64.49,34.74
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique em |cRXP_PICK_Jorel Cantavento|r dentro da caverna.
    .complete 94489,2 --1/1 Find Jorel Windsinger
    .skipgossipid 137859
    .target Jorel Windsinger::258130
step << Horde
    .itemcount 265476,1
    >>Usar o |T134332:0|t[Ripped Missive] na mochila para começar a missão.
    .accept 94490 >>Aceite Ripped Missive
    .use 265476 -- Ripped Missive
step
    #optional
    #completewith next
    #label Wounds of Betrayal
    .goto 2521,63.93,34.5,15,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elegael Patacardo::257944|r.
    .turnin 94489 >>Entregue As feridas da traição
    .target Elegael Thornpaw::257944
step
    #completewith Wounds of Betrayal
    .goto 2521,61.77,39.14,150 >>Saia da caverna
step
    #requires Wounds of Betrayal
    .goto 2521,61.77,39.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elegael Patacardo::257944|r.
    .turnin 94489 >>Entregue As feridas da traição
    .turnin 94490 >>Entregue Missiva Rasgada
    .turnin 94488 >>Entregue Os laços que unem
    .accept 94491 >>Aceite O destino do esconderijo
    .target Elegael Thornpaw::257944
step << Horde
    .abandon 93165 >>Abandone Misericórdia Falls on Deaf Orelhas

-- ============================================================================
-- City
-- ============================================================================

step
    .isOnQuest 94491 << Alliance -- The Fate of the Den
    .isOnQuest 94896 << Horde -- Aid For The Refugees
    -- .subzoneskip 16631,1 -- Shadowgale Forest
    .hs >>Use a Pedra de Regresso para voltar a Valanaar
    .cooldown item,6948,>0 --Hearthstone
    .use 6948 -- Hearthstone

step
    .isOnQuest 94896 -- Aid For The Refugees
    .goto 2521,62.180,72.616
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Donaal Brisabaixa::255940|r.
    .vendor 255940 >>Venda os lixos
    .collect 1179,20 << Mage/Druid/Shaman/Priest/Warlock/Paladin -- Ice Cold Milk
    *Não venda |T133970:0|t[Stringy Carne], |T132832:0|t[Pequeno Eggs] ou |T133972:0|t[Strider Carne]. << Alliance
    *Não venda |T132832:0|t[Pequeno Eggs] e |T133972:0|t[Strider Carne]. << Horde
    *|cRXP_WARN_Precisamos deles para Culinária mais tarde|r.
    .skipgossipid 137078
    .target Donaal Downbreeze::255940

-- ============================================================================
-- Alliance Class Training
-- ============================================================================

step << Alliance Warrior
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seena Rompe-céus::252377|r.
    .target Seena Skybreaker::252377
    .turnin 94003 >>Entregue O Rompe-céus Baluarte
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
    .money <0.16
    .xp <12,1
    .goto 2521,59.55,73.3,30,0
    .goto 2521,59.91,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eltheen Umbrísia::252379|r.
    .train 1766 >>Aprenda |T132219:0|t[Chute]
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Alliance Hunter
    .money <0.08
    .xp <12,1
    .goto 2521,59.571,72.639
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quel'ana Ventiágil::252389|r.
    .train 14281 >>Aprenda |T132218:0|t[Tiro Arcano (Grau 2)]
    .target Quel'ana Quickgale::252389
step << Alliance Warrior
    .money <0.3
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .xp <12,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seena Rompe-céus::252377|r.
    .train 5242 >>Aprenda |T132333:0|t[Brado de Batalha (Grau 2)]
    .train 7384 >>Aprenda |T132223:0|t[Subjugar]
    .train 72 >>Aprenda |T132357:0|t[Trombada com Escudo]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Alliance Hunter/Alliance Rogue/Alliance Warrior
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyalah Chamarrútila::257006|r dentro da casa.
    .turnin 93317 >>Entregue Temporada do caranguejo
    .target Nyalah Brightfire::257006
step << Alliance
    .goto 2521,63.55,73.45,25,0
    .goto 2521,63.99,75.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lotheluum Brisastral::252359|r.
    .turnin 94491 >>Entregue O destino do esconderijo
    .target Lotheluum Starbreeze::252359
step << Alliance Druid
    .money <0.16
    .subzoneskip 16638,1 -- Valanaar
    .xp <12,1
    .goto 2521,45.153,44.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Naeluna Ajudágil::254081|r.
    .train 5229 >>Aprenda |T132126:0|t[Enfurecer]
    .train 8936 >>Aprenda |T136085:0|t[Recrescimento]
    .target Naeluna Swiftmend::254081

-- ============================================================================
-- Shared Turn-ins
-- ============================================================================
step << Horde
    .goto 2521,63.989,75.090
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lotheluum Brisastral::252359|r.
    .target Lotheluum Starbreeze::252359
    .turnin 94491 >>Entregue O destino do esconderijo
step << Horde
    #optional
    .isQuestComplete 94896
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ealaane Correnimbo::259012|r.
    .turnin 94896 >>Entregue Auxílio aos refugiados
    .turnin 94897 >>Entregue O destino de um amor
    .target Ealaane Nimbuswalker::259012
step << Horde
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94897 >>Entregue The Sina of a Ente Querido Um
    .target Ealaane Nimbuswalker::259012
step << Horde
    #optional
    .abandon 94896 >>Abandone Ajudar For The Refugees
step << Alliance
    .goto 2521,65.95,74.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ealaane Nimbuswalker::259012|r.
    .turnin 94896 >>Entregue Ajudar For The Refugees
    .turnin 94897 >>Entregue The Sina of a Ente Querido Um
    .target Ealaane Nimbuswalker::259012
step << Alliance
    #optional
    #completewith next
    #label Unfortunate News
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talaanis Cantonegro::252476|r.
    .turnin 92644,1 >>Entregue Uma notícia infeliz << Rogue/Hunter/Druid/Shaman
    .turnin 92644,2 >>Entregue Uma notícia infeliz << Mage/Priest/Warlock
    .turnin 92644,3 >>Entregue Unfortunate News << Warrior/Paladin
    .accept 94568 >>Aceite Os verdadeiros planos da seita
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
    .goto 2521,66.44,76.4,5 >>Suba a torre
step << Alliance
    #requires Unfortunate News
    .goto 2521,66.17,76.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talaanis Cantonegro::252476|r.
    .turnin 92644,1 >>Entregue Unfortunate News << Rogue/Hunter/Druid/Shaman
    .turnin 92644,2 >>Entregue Unfortunate News << Mage/Priest/Warlock
    .turnin 92644,3 >>Entregue Unfortunate News << Warrior/Paladin
    .accept 94568 >>Aceite Os verdadeiros planos da seita
    .target Talaanis Shadowsong::252476
step << Alliance
    #optional
    #completewith next
    #label Talaanis Shadowsong
    >>|cRXP_WARN_Aguarde a encenação|r.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    #completewith Talaanis Shadowsong
    .goto 2521,66.18,76.51
    .gossipoption 140111 >>Fale com |cRXP_FRIENDLY_Talaanis Cantonegro::252476|r.
    .timer 50,Aguarde o RP
step << Alliance
    #requires Talaanis Shadowsong
    .goto 2521,66.17,76.52
    >>|cRXP_WARN_Aguarde a encenação|r.
    -- *Cook |T132834:0|t[Herb Baked Eggs] and |T133974:0|t[Charred Wolf Meat] if you have the required materials.
    -- *Otherwise, craft any items you can using your other professions.
    .complete 94568,1 --1/1 Learn what you can from the crystal
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.17,76.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talaanis Cantonegro::252476|r |cRXP_WARN_ao seu lado|r.
    .turnin 94568 >>Entregue Os verdadeiros planos da seita
    .accept 92640 >>Aceite Tempos desesperados
    .target Talaanis Shadowsong::252476
step << Alliance
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valennia Tempespunho::252383|r.
    .complete 92640,1 --1/1 Speak with Valennia Stormfist
    .target Valennia Stormfist::252383
    .skipgossipid 137096
    .skipgossipid 137095
step << Alliance
    .isOnQuest 92640 -- Desperate Times
    .isQuestNotComplete 92640 -- Desperate Times
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.49,76.64,8,0
    .goto 2521,63.33,78.16
    .cast 1259416 >>Pule da montanha e use |T132845:0|t[Andar no Ar] para planar até o ponto indicado.
    .usespell 1259416
step << Alliance
    .goto 2521,63.33,78.16,30,0
    .goto 2521,63.04,77.53,30,0
    .goto 2521,62.31,78.27,30,0
    .goto 2521,62.13,79.02,30,0
    .goto 2521,60.68,80.11,30,0
    .goto 2521,59.15,79.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayessa Cantalva::251968|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iaadaria Ventamargo::253004|r.
    .turnin 92741 >>Entregue Visitantes indesejados
    .target Iaadaria Bitterwind::253004
step << Alliance
    .goto 2521,66.54,79.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaadrin Plenovento::252475|r.
    .complete 92640,3 --1/1 Recruit the High Order
    .skipgossipid 136547
    .skipgossipid 136546
    .target Elaadrin Evengale::252475
step << Alliance
    .goto 2521,66.628,79.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaadrin Evengale::252475|r.
    .turnin 92834,1 >>Entregue Paz não é opção << Rogue/Hunter/Druid/Shaman
    .turnin 92834,2 >>Entregue Avenged Tenfold << Mage/Priest/Warlock
    .turnin 92834,3 >>Entregue Avenged Tenfold << Warrior/Paladin
    .turnin -92709 >>Entregue Uma grande aventura
    .target Elaadrin Evengale::252475
step << Alliance Mage
    .money <0.24
    .xp <12,1
    .goto 2521,65.91,80.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anathamaas Brisetéria::252373|r.
    .train 145 >>Aprenda |T135812:0|t[Bola de Fogo (Grau 3)]
    .train 604 >>Aprenda |T136006:0|t[Atenuar Magia]
    -- .train 597 >>Train |T133952:0|t[Conjure Food (Rank 2)]
    .train 130 >>Aprenda |T135992:0|t[Queda Lenta]
    .skipgossipid 136807
    .target Anathamaas Aetherwind::252373
step << Alliance
    #optional
    #completewith next
    #label Prepare for Battle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valennia Tempespunho::252383|r.
    .turnin 92640,1 >>Entregue Tempos desesperados << Rogue/Hunter/Druid/Shaman
    .turnin 92640,2 >>Entregue Tempos desesperados << Warrior/Paladin
    .turnin 92640,3 >>Entregue Tempos de Desespero << Mage/Priest/Warlock
    .accept 93065 >>Aceite Prepare-se para a batalha
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
    .goto 2521,66.44,76.4,5 >>Suba a torre
step << Alliance
    #requires Prepare for Battle
    .goto 2521,66.18,76.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valennia Tempespunho::252383|r.
    .turnin 92640,1 >>Entregue Tempos de Desespero << Rogue/Hunter/Druid/Shaman
    .turnin 92640,2 >>Entregue Tempos de Desespero << Warrior/Paladin
    .turnin 92640,3 >>Entregue Tempos de Desespero << Mage/Priest/Warlock
    .accept 93065 >>Aceite Prepare-se para a batalha
    .target Valennia Stormfist::252383
step << Alliance
    .isQuestNotComplete 93065 -- Prepare for Battle
    .isOnQuest 93065 -- Prepare for Battle
    .subzoneskip 16638,1 -- Valanaar
    .cooldown spell,1259416,>0,1 -- Walk on Air
    .goto 2521,66.49,76.64,8,0
    .goto 2521,66.39,76.26,10,0
    .goto 2521,63.9,74.16
    .cast 1259416 >>Salte da montanha e use |T132845:0|t[Andar no Ar] para voar até o ponto de passagem.
    .usespell 1259416
step << Alliance
    .subzoneskip 16638,1 -- Valanaar
    .isOnQuest 93065 -- Prepare for Battle
    .cooldown spell,1259705,>0,1 -- Read Ley Line
    .goto 2521,63.9,74.16
    .cast 1259705 >>Use |T236219:0|t[Ler Meridianos] para aumentar em 100% a regeneração passiva de mana e vida.
    .usespell 1259705
step << Alliance
    .goto 2521,63.99,74.1,40,0
    .goto 2521,61.15,70.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valennia Tempespunho::253844|r.
    *|cRXP_WARN_Se houver um tornado por perto, use-o para andar mais rápido|r.
    .complete 93065,1 --|1/1 Find Valennia on the Road
    .turnin 93065 >>Entregue Prepare-se para a batalha
    .target Valennia Stormfist::253844
step << Alliance !Hunter !Rogue !Warrior
    .goto 2521,60.95,73.17,15,0
    .goto 2521,60.64,72.94,8,0
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyalah Chamarrútila::257006|r dentro da casa.
    .turnin 93317 >>Entregue Temporada do caranguejo
    .target Nyalah Brightfire::257006

-- ============================================================================
-- Discovery Route Alliance
-- ============================================================================

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
--     >>Kill |cRXP_ENEMY_Al'Aketh Guardians|r.
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
--UNUSED likely train in sw/og because of portal from quest before takes you near zeppelin

-- step << Warrior
--     .goto 2521,59.89,72.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
--     .train 1160 >>Train your level 14 class spells
--     .skipgossipid 136813
--     .target Seena Skybreaker::252377
--     .xp <14,1
-- step << Warrior
--     .money <0.45
--     .isQuestAvailable 94491 -- The Fate of the Den
--     .subzoneskip 16638,1 -- Valanaar
--     .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
--     .train 6574,1 -- Revenge (Rank 2) Not Trained
--     .xp <14,1
--     .goto 2521,59.89,72.87
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Seena Skybreaker::252377|r.
--     .train 1160 >>Train |Tinterface/icons/ability_warrior_warcry.blp:0|t[Demoralizing Shout]
--     .train 6572 >>Train |Tinterface/icons/ability_warrior_revenge.blp:0|t[Revenge]
--     .train 1310185 >>Train |T136031:0|t[Tactical Mastery]
--     .skipgossipid 136813
--     .target Seena Skybreaker::252377
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
    >>Abandone todas as missões restantes de "Introdução ao acampamento".
    *Clique na macro no painel de Itens Ativos para abandonar todas de uma vez.
    .abandon 97970 >>Abandone Introdução ao Acampamento: Mineração
    .abandon 97971 >>Abandone Introdução ao Acampamento: Esfolamento
    .abandon 96646 >>Abandone Introdução ao Acampamento: Cozinha
    .abandon 97968 >>Abandone Introdução ao Acampamento: Herborismo
    .abandon 97965 >>Abandone Introdução ao Acampamento: Primeiros Socorros
    .abandon 97967 >>Abandone Introdução ao Acampamento: Pesca
    .abandon 97963 >>Abandone Introdução ao Acampamento: Alquimia
    .abandon 97964 >>Abandone Introdução ao Acampamento: Ferraria
    .abandon 97973 >>Abandone Introdução ao Acampamento: Alfaiataria
    .abandon 98286 >>Abandone Introdução ao Acampamento: Encantamento
    .abandon 97969 >>Abandone Introdução ao Acampamento: Couraria
    .abandon 98285 >>Abandone Introdução ao Acampamento: Engenharia
    .abandon 93318 >>Abandone PROCURA-SE: Vulgara, a Insaciável
    .macro Abandon 101,130722 >>Abandone Introdução ao acampamento
step << Alliance
    #completewith Magical City of Dalaran
    >>Abandone todas as missões restantes de "Introdução ao acampamento".
    *Clique na macro no painel de Itens Ativos para abandonar todas de uma vez.
    .abandon 97970 >>Abandone Introdução ao Acampamento: Mineração
    .abandon 97971 >>Abandone Introdução ao Acampamento: Esfolamento
    .abandon 96646 >>Abandone Introdução ao Acampamento: Cozinha
    .abandon 97968 >>Abandone Introdução ao Acampamento: Herborismo
    .abandon 97965 >>Abandone Introdução ao Acampamento: Primeiros Socorros
    .abandon 97967 >>Abandone Introdução ao Acampamento: Pesca
    .abandon 97963 >>Abandone Introdução ao Acampamento: Alquimia
    .abandon 97964 >>Abandone Introdução ao Acampamento: Ferraria
    .abandon 97973 >>Abandone Introdução ao Acampamento: Alfaiataria
    .abandon 98286 >>Abandone Introdução ao Acampamento: Encantamento
    .abandon 97969 >>Abandone Introdução ao Acampamento: Couraria
    .abandon 98285 >>Abandone Introdução ao Acampamento: Engenharia
    .abandon 93318 >>Abandone PROCURA-SE: Vulgara, a Insaciável
    .abandon 92709 >>Abandone Uma grande aventura
    .macro Abandon 101,130722 >>Abandone Introdução ao acampamento

-- ============================================================================
-- Alliance Discovery
-- ============================================================================

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
    #optional
    #completewith next
    +|cRXP_WARN_O zepelim pode chegar a qualquer momento durante seu ciclo de 6 minutos. Enquanto espera, faça o seguinte:|r
    *Venda o lixo e repare seus equipamentos.
    *Prepare comida e obtenha benefícios de acampamento para depois.
    *Equipe itens melhores e escolha os talentos.
step << Alliance
    #optional
    #completewith next
    #label Magical City of Dalaran
    -- .goto 2521,65.82,81.18,15,0
    -- .goto 2521,65.44,80.46,15,0
    -- .goto 2521,65.25,81.64,25,0
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denaaris Ventáster::259084|r.
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Aceite Boas-Vindas a Azeroth
    .skipgossipid 137530
    .target Denaaris Stargale::259084
step << Alliance
    #label LeaveZephrasIsle
    #completewith Magical City of Dalaran
    .zoneskip 1416 -- Alterac Mountains
    .goto 2521,65.81,83.44
    .zone 1424 >>Pegue o zepelim para Dalaran
step << Alliance
    #requires Magical City of Dalaran
    .goto 1416/0,438.93,448.88
    >>|cRXP_WARN_Não pule do zepelim antes da hora, pois pode ser empurrado para fora da plataforma|r.
    *|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denaaris Ventáster::259084|r.
    .target Denaaris Stargale::259084
    -- .turnin -94946 >>Turn in The Magical City of Dalaran
    .accept 94947 >>Aceite Boas-Vindas a Azeroth
step << Alliance Druid
    .goto 1416/0,385.700,385.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Ansirem Tecerrunas::2543|r.
    .accept 94912 >>Aceite Child of Nature
    .target Archmage Ansirem Runeweaver::2543
step << Alliance
    .goto 1416/0,445.93,450.00
    >>|TInterface/cursor/crosshair/interact.blp:20|tClique no |cRXP_PICK_Portal|r
    .complete 94947,1 --Take the Skyborne Portal to Stormwind
step << Alliance Druid
    .goto 1453/0,1100.200,-8776.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sheldras Moontree::5504|r
    .target Sheldras Moontree::5504
    .turnin 94912 >>Entregue Child of Nature
    .accept 94914 >>Aceite Clareira da Lua
step << Alliance Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Catarina Gurjão::5494|r
    >>|cRXP_BUY_Compre uma|r |T134335:0|t[Miçanga Brilhosa] |cRXP_BUY_e três|r |T134324:0|t[Reptantes] |cRXP_BUY_dela para uma missão que rende 900 de experiência|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland::5494
step << Alliance Hunter
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros::1285|r
    >>|cRXP_BUY_Compre uma|r [Madeira Simples] |cRXP_BUY_e uma|r [Pederneira e Lenha] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Isso serve para criar|r |T135805:0|t[Fogueiras Básicas] |cRXP_WARN_em barcos e aumentar sua habilidade de|r |T133971:0|t[Culinária] |cRXP_WARN_sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby::1285
step << Alliance Hunter
    #ah
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona::15659|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Nacos de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Acém de Lobo]|r |cRXP_BUY_para aumentar sua habilidade de|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Você precisará de 50 em|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Vila Sombria mais tarde|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para agilizar a entrega de missões em Cerro Oeste e Costa Negra em breve:|r
    >>|T133972:0|t[Carne de Moa]
    >>|T133912:0|t[Garoupa da Costa Negra]
    >>|T133970:0|t|cRXP_LOOT_[Nacos de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Acém de Lobo]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon::15659
step << Alliance Hunter
    #ah
    #optional
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona::15659|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para agilizar a entrega de missões em Cerro Oeste e Costa Negra em breve:|r
    >>|T133972:0|t[Carne de Moa]
    >>|T133912:0|t[Garoupa da Costa Negra]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon::15659

-- for discovery route
-- step << Alliance Mage
--     .goto 1453/0,885.34,-9006.15
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Elsharin::5497|r.
--     .trainer >>Train your class spells
--     .target Elsharin::5497
step << Alliance
    -- .goto 1453,48.1,88.35,10,0
    -- .goto 1453,49.36,87.37,10,0
    -- .goto 1453,48.85,86.94,10,0
    -- .goto 1453,48.76,87.71,10,0
    -- .goto 1453,54.8,83.65,25,0
    -- .goto 1453,53.78,78.72,25,0
    -- .goto 1453,55.67,75.99,25,0
    -- .goto 1453,59.9,71.41,25,0

    .goto 1453/0,888.000,-9027.101,9,0
    .goto 1453/0,867.400,-9005.500,8,0
    .goto 1453/0,877.300,-9008.900,8,0
    .goto 1453/0,864.000,-9001.300,8,0
    .goto 1453/0,811.900,-8993.200,20,0
    .goto 1453/0,780.500,-8975.800,20,0
    .goto 1453/0,770.500,-8947.200,20,0
    .goto 1453/0,789.900,-8907.400,20,0
    .goto 1453/0,755.500,-8878.500,20,0
    .goto 1453/0,715.500,-8843.300,20,0
    .goto 1453/0,675.600,-8782.601,20,0
    .goto 1453/0,629.700,-8759.800,20,0
    .goto 1453/0,603.400,-8765.500,20,0
    .goto 1453/0,573.500,-8737.800,20,0
    .goto 1453/0,552.500,-8742.000,20,0
    .goto 1453/0,527.700,-8703.500,20,0
    .goto 1453/0,552.600,-8656.900,20,0
    .goto 1453/0,332.000,-8443.101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grão-lorde Bolvar Fordragon::1748|r dentro da fortaleza.
    .target Highlord Bolvar Fordragon::1748
    .turnin 94947 >>Entregue Boas-Vindas a Azeroth
    .accept 93963 >>Aceite Explorando a Aliança
    .accept 98021 >>Aceite Jornada ao Morro da Sentinela << !Hunter



--step << Alliance
--    .goto 1453/0,350.200,-8516.200
--    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Randal Emerson::275491|r inside the Keep.
--    .complete 93963,1 --1/1 Receive Instructions from Randal Emerson
--    .skipgossipid 142485
--    .target Randal Emerson::275491
step << Alliance Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilberto Cinéreo::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Aceite Hora da pesca
    .turnin 95065 >>Entregue Hora da pesca
step << Alliance Hunter
    #optional
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>|cRXP_WARN_Crie uma|r |T135805:0|t[Fogueira Básica] |cRXP_WARN_(no Livro de Profissões)|r
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
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>|cRXP_WARN_Crie uma|r |T135805:0|t[Fogueira Básica] |cRXP_WARN_(no Livro de Profissões)|r
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
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>|cRXP_WARN_Crie uma|r |T135805:0|t[Fogueira Básica] |cRXP_WARN_(no Livro de Profissões)|r
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
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Carne Fibrosa de Lobo]|r em [Carne de Lobo Chamuscada]
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
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Carne Fibrosa de Lobo]|r em [Carne de Lobo Chamuscada]
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
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step << Alliance Hunter
    #optional
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Aumente sua habilidade de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Costa Negra, se necessário|r
    .zone Darkshore >> Pegue o barco para Costa Negra
step << Alliance Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >> Pegue o barco para Costa Negra

-- ============================================================================
-- Horde Leaving Zephras Isle
-- ============================================================================

step << Horde
    #optional
    .isQuestComplete 93317 -- Crab Season
    .goto 2521,60.64,72.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyalah Chamarrútila::257006|r dentro da casa.
    .turnin 93317 >>Entregue Temporada do caranguejo
    .target Nyalah Brightfire::257006
step << Horde Warrior
    .goto 2521,59.886,72.863
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seena Rompe-céus::252377|r.
    .turnin 94003 >>Entregue O Rompe-céus Baluarte
    .target Seena Skybreaker::252377
step << Horde Warrior
    .money <0.3
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .train 7887,1 -- Overpower (Rank 2) Not Trained
    .train 1671,1 -- Shield Bash (Rank 2) Not Trained
    .xp <12,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seena Rompe-céus::252377|r.
    .train 5242 >>Aprenda |T132333:0|t[Brado de Batalha (Grau 2)]
    .train 7384 >>Aprenda |T132223:0|t[Subjugar]
    .train 72 >>Aprenda |T132357:0|t[Trombada com Escudo]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Horde Warrior
    .money <0.45
    .isQuestAvailable 93736 -- Unwelcome Spirits
    .subzoneskip 16638,1 -- Valanaar
    .train 6190,1 -- Demoralizing Shout (Rank 2) Not Trained
    .train 6574,1 -- Revenge (Rank 2) Not Trained
    .xp <14,1
    .goto 2521,59.89,72.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seena Rompe-céus::252377|r.
    .train 1160 >>Aprenda |Tinterface/icons/ability_warrior_warcry.blp:0|t[Brado Desmoralizador]
    .train 6572 >>Aprenda |Tinterface/icons/ability_warrior_revenge.blp:0|t[Revanche]
    .train 1310185 >>Aprenda |T136031:0|t[Proficiência Tática]
    .skipgossipid 136813
    .target Seena Skybreaker::252377
step << Horde Rogue
    .money <0.16
    .xp <12,1
    .goto 2521,59.9,72.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eltheen Umbrísia::252379|r.
    .train 1766 >>Aprenda |T132219:0|t[Chute]
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .skipgossipid 136810
    .target Eltheen Nightbreeze::252379
step << Horde
    #optional
    .isQuestComplete 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Riaani Ventonegro::256083|r.
    .turnin 93737 >>Entregue O constructo quebrado
    .target Riaani Nightwind::256083
step << Horde
    #optional
    .isQuestTurnedIn 93737 -- The Broken Construct
    .goto 2521,59.066,72.987
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Riaani Nightwind::256083|r.
    .accept 93738 >>Aceite O constructo quebrado
    .target Riaani Nightwind::256083
-- step << Horde
--     .goto 2521,58.986,75.460
--     >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Railee Thriceforged::257422|r.
--     .vendor 257422 >>Vendor trash.
--     *Don't sell |T132832:0|t[Small Eggs] and |T133972:0|t[Strider Meat].
--     *|cRXP_WARN_We need them for Cooking later|r.
--     .target Railee Thriceforged::257422
step << Horde
    #optional
    .isQuestComplete 93736 -- Unwelcome Spirits
    .goto 2521,58.128,78.307
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Endaria Miranévoa::254344|r.
    .turnin 93736 >>Entregue Espíritos indesejáveis
    .target Endaria Mistgaze::254344
step << Horde
    #optional
    .isOnQuest 93738
    .goto 2521,59.149,79.773
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayessa Cantalva::251968|r.
    .turnin 93738 >>Entregue O constructo quebrado
    .target Ayessa Dawnsinger::251968
step << Horde
    #optional
    .isQuestComplete 92708 -- A Grand Adventure
    .goto 2521,59.154,79.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayessa Cantalva::251968|r.
    .turnin 92708 >>Entregue Uma grande aventura
    .target Ayessa Dawnsinger::251968
step << Horde
    .abandon 92708 >>Abandone Uma grande aventura
step << Horde
    #label LeaveZephrasIsle
    .zoneskip 2521,1 -- Zephras Isle
    .isQuestAvailable 95350 -- Welcome to Azeroth
    .goto 2521,57.921,80.781
    .zone 1412 >>Pegue o dirigível para |cRXP_PICK_Mulgore|r.
step << Horde Druid Skyborne
    .goto 1412/1,423.400,-659.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muln Earthfury::259118|r.
    .target Muln Earthfury::259118
    .accept 94911 >>Aceite Child of Nature
step << Horde
    .goto 1412/1,426.100,-658.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alaana Stormwalker::259119|r.
    .accept 95350 >>Aceite Boas-Vindas a Azeroth
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem::3033|r.
    .turnin 94911 >>Entregue Child of Nature
    .accept 94913 >>Aceite Clareira da Lua
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #completewith ChildOfNatureA
    #label ChildOfNatureB
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Entre em Penhasco do Trovão
step << Horde Druid Skyborne
    #requires ChildOfNatureB
    #completewith ChildOfNatureA
    #label ChildOfNatureC
    .goto 1456/1,-13.300,-1108.300,12,0
    .goto 1456/1,-46.900,-1092.900,12,0
    .goto 1456/1,-61.200,-1097.400,8,0
    .goto 1456/1,-198.000,-1046.500,12 >>Atravesse a ponte.
step << Horde Druid Skyborne
    #requires ChildOfNatureC
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem::3033|r.
    .turnin 94911 >>Entregue Child of Nature
    .accept 94913 >>Aceite Moonglade
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #optional
    #requires ChildOfNatureA
    .xp <12,1
    .xp >14,1
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem::3033|r.
    .train 8936 >>Treine suas magias de classe
    .target Turak Runetotem::3033
step << Horde Druid Skyborne
    #requires ChildOfNatureA
    .xp <14,1
    .goto 1456/1,-281.500,-1039.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak Runa Totem::3033|r.
    .train 5178 >>Treine suas magias de classe
    .target Turak Runetotem::3033
step << Horde !Druid
    #completewith next
    #label WelcomeToAzerothA
    #hidewindow
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454 -- Orgrimmar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal::2995
step << Horde
    .goto 1456/1,-218.13,-1055.97--c:Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >> Aceite Em busca da algibeira perdida
    .accept 5723 >> Aceite Testando a força do inimigo
    .target Rahauro
    .dungeon RFC
step << Horde !Druid
    #completewith WelcomeToAzerothA
    .goto 1456/1,-110.500,-970.700,15,0
    .goto 1456/1,-76.900,-1026.000,15,0
    .goto 1456/1,-48.800,-1037.300,8,0
    .goto 1456/1,-7.300,-1089.600,25 >>Entre em Penhasco do Trovão
step << Horde
    #requires WelcomeToAzerothA << !Druid
    .isOnQuest 95350 -- Welcome to Azeroth
    .zoneskip 1454 -- Orgrimmar
    .goto 1456/1,26.500,-1196.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal::2995|r.
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal::2995
step << Horde
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Gryshka::6929|r
    .home >> Defina sua Pedra de Regresso em Orgrimmar
	.target Innkeeper Gryshka::6929
    .bindlocation 1637
step << Horde
    .goto 1454/1,-4460.600,1584.300,10,0
    .goto 1454/1,-4460.000,1598.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thatog::268701|r
    >>|cRXP_WARN_Ele está no andar de cima do prédio|r
    .accept 97246 >>Aceite A marmita do Migi
    .target Thatog::268701
step << Horde
    .goto 1454/1,-4482.600,1775.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borsgan::3368|r
    .turnin 97246 >>Entregue A marmita do Migi
    .accept 97249 >>Aceite Comida preferida
    .target Borstan::3368
step << Horde
    .goto 1454/1,-4466.800,1954.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'geld::3348|r
    .accept 97242 >>Aceite A mistura de Yelmak
    .target Kor'geld::3348
step << Horde
    #completewith next
    .goto 1454/1,-4560.000,1908.500,15,0
    .goto 1454/1,-4587.000,1918.300,15,0
    .goto 1454/1,-4608.000,1897.400,15,0
    .goto 1454/1,-4632.300,1911.600,15 >>Vá ao Vale da Honra
step << Horde
    #loop
    .goto 1454/1,-4653.900,1950.300,0
    .goto 1454/1,-4653.900,1950.300,20,0
    .goto 1454/1,-4677.700,1971.600,20,0
    .goto 1454/1,-4667.400,1997.000,20,0
    .goto 1454/1,-4609.800,2013.500,20,0
    .goto 1454/1,-4630.600,1968.100,20,0
    >>Pegue |cRXP_PICK_Punhado de Taboa|r e |cRXP_PICK_Folhas de Gramalança|r que estão na água
    .complete 97242,1 --|2/2 Handful of Cattails
    .complete 97242,2 --|4/4 Speargrass Cuttings
step << Horde Hunter
    .xp <12,1
    .goto 1454/1,-4607.02,2100.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak Tiroatroz::3352|r
    .train 13795 >> Treine suas magias de classe
    .target Ormak Grimshot::3352
step << Horde Hunter
    .goto 1454/1,-4611.09,2135.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu::10088|r
    .train 24556 >> Treine as magias do seu mascote
    .target Xao'tsu::10088
step << Horde Warrior
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz Iracarpos::3353|r
    .train 7384 >> Treine suas magias de classe
    .target Grezz Ragefist::3353
step << Horde Warrior
    #optional
    .xp <14,1
    .goto 1454/1,-4801.42,1980.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz Iracarpos::3353|r
    .train 1160 >> Treine suas magias de classe
    .target Grezz Ragefist::3353
step << Horde
    .goto 1454/1,-4466.900,1954.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'geld::3348|r
    .turnin 97242 >>Entregue A mistura de Yelmak
    .target Kor'geld::3348
step << Horde
    .goto 1454/1,-4477.900,1964.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yelmak::3347|r
    >>|cRXP_WARN_Talvez você precise esperar cerca de 10 segundos para aceitar esta missão|r
    .accept 97275 >>Aceite Por Uqueê a pressa?
    .target Yelmak::3347
step << Horde
    .goto 1454/1,-4463.000,1966.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uqueê::11046|r
    .turnin 97275 >>Entregue Por Uqueê a pressa?
    .target Whuut::11046
step << Horde
    .goto 1454/1,-4193.400,2001.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Migi::268682|r
    .turnin 97249 >>Entregue Comida preferida
    .target Migi::268682
step << Horde
    .goto 1454/1,-4205.800,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thra::268684|r
    .accept 97326 >>Aceite Pedra pra sentar
    .target Thra::268684
step << Horde
    .isOnQuest 97326 -- Rocks to Rests
    .goto 1454/1,-4293.600,1949.900
    >>Pegue as |cRXP_PICK_Pedras|r laranjas que estão no chão
    >>|cRXP_WARN_Pule esta missão se houver muita concorrência! Não há muitas |cRXP_PICK_Pedras|r e elas demoram para reaparecer|r
    .complete 97326,1 --|8/8 Smooth Boulder
step << Horde
    .isQuestComplete 97326 -- Rocks to Rests
    .goto 1454/1,-4205.900,2007.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thra::268684|r
    .turnin 97326 >>Entregue Pedra pra sentar
    .target Thra::268684
step << Horde
    .goto 1454/1,-4126.300,1920.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall::4949|r.
    .turnin 95350 >>Entregue Boas-Vindas a Azeroth
    .accept 98024 >>Aceite Jornada para a Encruzilhada
    --.accept 93739 >>Accept Exploring the Horde
    --.accept 5726 >>Accept Hidden Enemies
    .target Thrall::4949
    --93739 will take too long, won't be able to fully complete and turnin until lvl 22/23 and at that point you get no xp
step << skip --Horde
    .goto 1454/1,-4133.400,1938.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel::3230|r.
    .complete 93739,1 --|1/1 Obtain Instructions from Nazgrel
    .target Nazgrel::3230
    .skipgossipid 142489
step << skip --Horde
    .goto 1454/1,-4162.200,1933.900
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vol'jin::10540|r.
    .complete 93739,2 --|1/1 Speak with Vol'jin
    .target Vol'jin::10540
step << Horde
    .xp <13,1
    .goto 1454/1,-4226.78,1914.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zor Solárbol::4047|r
    .accept 1061 >>Aceite Os espíritos das Torres de Pedra
    .target Zor Lonetree::4047
step << Horde Shaman
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris Romanesca::3344|r
    .train 408341 >> Treine suas magias de classe
    .target Kardris Dreamseeker::3344
step << Horde Shaman
    #optional
    .xp <14,1
    .goto 1454/1,-4225.09,1933.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris Romanesca::3344|r
    .train 8045 >> Treine suas magias de classe
    .target Kardris Dreamseeker::3344
step << Horde Rogue
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok::3328|r
    .train 1766 >> Treine suas magias de classe
    .target Ormok::3328
step << Horde Rogue
    #optional
    .xp <14,1
    .goto 1454/1,-4296.34,1762.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok::3328|r
    .train 1758 >> Treine suas magias de classe
    .target Ormok::3328
step << Horde Mage
    .xp <12,1
    .xp >14,1
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pefreda::5882|r
    .train 145 >> Treine suas magias de classe
    .target Pephredo::5882
step << Horde Mage
    #optional
    .xp <14,1
    .goto 1454/1,-4218.64,1473.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pefreda::5882|r
    .train 1449 >> Treine suas magias de classe
    .target Pephredo::5882
step << !Hunter
    #optional
    .maxlevel 13,Silverpineskip
step << Horde
    #completewith next
    .zone Durotar >> Saia de Orgrimmar
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
step << Horde Hunter
    #completewith next
    .subzone 362 >> Vá para Monte Navalha
step << Horde Hunter
    #label Conscript
    .goto 1411/1,-4648.55,271.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha::3336|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker::3336
step << Horde Hunter
    #completewith next
    .subzone 379 >> Vá para o Posto Remoto
step << Horde Hunter
    .goto 1413/1,-3687.11,303.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal Chaga de Guerra::3337|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento na Encruzilhada
    .target Kargal Battlescar::3337
step << Horde !Hunter
    .goto 1411/1,-4648.55,1321.88,40 >>Suba a Torre do Zepelim
    .zone Tirisfal Glades >>Pegue o Zepelim para Clareiras de Tirisfal
    >>|cRXP_WARN_Conjure água enquanto espera|r << Mage
step << Horde !Hunter
    #completewith DeliverytoSPF
    .goto 1420/0,253.4,2234.85,80 >> Vá para Montalvo
step << Horde !Hunter
    .xp >13,1
    .goto 1420/0,254.600,2225.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Terêncio::1738|r
    .accept 96895 >>Aceite Emissário Argênteo
    .target Deathguard Terrence::1738
step << Horde !Hunter
    #label DeliverytoSPF
    .xp >13,1
    .goto 1420/0,346.94,2258.950
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Joaquino::1518|r
    .accept 445 >>Aceite Entrega na Floresta de Pinhaprata
    .target Apothecary Johaan::1518
step << Horde !Hunter
    .xp >13,1
    .goto 1420/0,54.600,1996.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96895 >>Entregue O emissário Argênteo
    .accept 96897 >>Aceite A Seita dos malditos
    .accept 96898 >>Aceite Vestígios da guerra
    .target Hadric Harlson::267009
step << Horde !Hunter
    .isOnQuest 96897,96898 -- The Cult of the Damned / Remnants of War
    .goto 1420/0,-130.500,1907.800
    >>Mate |cRXP_ENEMY_Impositores Sombrios::275437|r e |cRXP_ENEMY_Neófitos Sombrios|r. Pegue deles |cRXP_LOOT_Fragmentos de Cristal Necrótico|r
    >>|cRXP_LOOT_Fragmento de Cristal Necrótico|r |cRXP_WARN_também pode ser pego no chão|r
    >>|cRXP_WARN_Cuidado! Esses inimigos batem forte. |cRXP_ENEMY_Impositores Sombrios::275437|r também têm uma habilidade instantânea que causa 50–70 de dano|r
    .complete 96897,2 --|8/8 Dark Enforcer slain
    .mob +Dark Enforcer::275437
    .complete 96897,1 --|8/8 Dark Neophyte slain
    .mob +Dark Neophyte
    .complete 96898,1 --|12/12 Necrotic Crystal Fragment
step << Horde !Hunter
    .isQuestComplete 96897 -- The Cult of the Damned
    .isQuestComplete 96898 -- Remnants of War
    .goto 1420/0,54.500,1996.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadric Harlson::267009|r
    .turnin 96897 >>Entregue A Seita dos malditos
    .turnin 96898 >>Entregue Vestígios da guerra
    --.accept 96899 >>Accept Bandarion Keep
    .target Hadric Harlson::267009
step << Horde !Hunter
    #completewith UCflightpath1
    .goto 1458/0,239.14,1749.54,35,0
    .goto 1458/0,255.64,1724.70,35,0
    .goto 1458/0,240.68,1706.97,10,0
    .goto 1458/0,241.06,1660.12,10,0
    .goto 1458/0,257.08,1623.38,10,0
    .goto 1458/0,244.51,1598.73,15 >> Pegue o elevador até Cidade Baixa
step << Horde !Hunter
    #label UCflightpath1
    .goto 1458/0,266.39,1567.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Garreta::4551|r
    .fp Undercity >> Aprenda a rota de voo de Cidade Baixa
    .target Michael Garrett::4551
step << Horde !Hunter
    #ah
    .zoneskip Undercity,1
    .goto 1458/0,224.300,1648.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Cain::15682|r
    >>|cRXP_BUY_Compre três|r |T133884:0|t[Olhos de Murloc] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Pule isto se você quiser, é apenas uma pequena economia de tempo|r
    .collect 730,3,91920,1 --Collect Murloc Eyes (x3)
    .target Auctioneer Cain::15682
step << Horde !Hunter
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
    .zone Tirisfal Glades >> Saia de Cidade Baixa pelos Esgotos
step << Horde !Hunter
    #label Entersilverpine
    .zoneskip Silverpine Forest
    .goto 1420/0,629.36,1553.42
    .zone Silverpine Forest >> Vá para Floresta de Pinhaprata
step << !Hunter
    #optional
    #label Silverpineskip
]])
