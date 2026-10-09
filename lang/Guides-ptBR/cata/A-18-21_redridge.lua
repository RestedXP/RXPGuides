if GetLocale() ~= "ptBR" then return end
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
#next 20-25 Floresta do Crepúsculo
<<Alliance

--TODO: Figure out how flight paths work while leveling
--FPs from lower level zones are supposed to open up as you level: https://youtu.be/9Y_PE0Wb4IM?si=H5H-FVQ-5StEQUfI&t=929

step << NightElf/Draenei/Worgen
    .goto 62,51.716,17.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teldira Plumaluna|r
    .target Teldira Moonfeather
    .fly Rut'theran Village >>Voe para Vila de Rut’theran
    .zoneskip Darkshore,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Passe pelo portal para Darnassus
    .train 33388,1
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 57,55.045,88.301
    .zone 89 >>Passe pelo portal para Darnassus
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.497,32.595
    >>Fale com |cRXP_FRIENDLY_Lelanai|r
    +|cRXP_BUY_Compre uma|r |T132267:0|t[Saber] |cRXP_BUY_montaria, você não conseguirá usá-la até o nível 20, guarde-a na mochila para depois|r
    .target Lelanai
    .mountcount 0-150,<1
    .itemcount 8632,<1
    .itemcount 8631,<1
    .itemcount 8629,<1
    .itemcount 47100,<1
step << NightElf
    .goto 89,42.782,32.919
    >>Fale com |cRXP_FRIENDLY_Jartsam|r
    .train 33388 >>Treinamento de Aprendiz de Montaria
    .target Jartsam
    .money <3.4000
    .xp <20,1
step << NightElf
    .goto 89,36.547,50.413
    .zone 57 >>Volte através do portal para Rut'Theran Village
    .zoneskip 89,1
step << Draenei
    .goto 57,52.30,89.50
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto Azuremyst Isle,81.497,51.456
    >>Fale com |cRXP_FRIENDLY_Toralius, o Tratador|r
    +Compre um Elekk, você não conseguirá usá-lo até o nível 20, guarde-o na mochila para depois
    .target Torallius the Pack Handler
    .mountcount 0-150,<1
    .itemcount 29743,<1
    .itemcount 29744,<1
    .itemcount 28481,<1
step << Draenei
    .goto 89,81.348,52.623
    >>Fale com |cRXP_FRIENDLY_Aalun|r
    .train 33388 >>Treinamento de Aprendiz de Montaria
    .target Aalun
    .money <3.6000
    .xp <20,1
    .zoneskip Azuremyst Isle,1
step << Draenei
    .goto Azuremyst Isle,20.41,54.18
    .zone 57 >>Pegue o barco de volta para Rut'Theran Village
    .zoneskip Azuremyst Isle,1
step << NightElf/Draenei/Worgen
    .goto 57,55.037,93.677,25,0
    .goto 57,55.037,93.677,0
    .zone Stormwind City >>Pegue o barco para Ventobravo
step << Gnome/Dwarf
#completewith next
    .goto 48,33.938,50.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Kharanos >>Voe para Kharanos << Gnome
    .fly Gol'Bolar Quarry >>Voe para Gol'Bolar Pedreira << Dwarf
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milli Penapita|r
    +|cRXP_BUY_Compre uma|r |T132247:0|t[Mecanostruz] |cRXP_BUY_montaria, você não conseguirá usá-la até o nível 20, guarde-a na mochila para depois|r
    .target Milli Featherwhistle
    .mountcount 0-150,<1
    .itemcount 8563,<1
    .itemcount 8595,<1
    .itemcount 13321,<1
    .itemcount 13322,<1
step << Dwarf
    .goto 1426/0,-1322.500,-5539.800
    >>Fale com |cRXP_FRIENDLY_Veron Ambarmanso|r
    +|cRXP_BUY_Compre uma|r |T132248:0|t[Harrison Jones] |cRXP_BUY_montaria, você não conseguirá usá-la até o nível 20, guarde-a na mochila para depois|r
    .target Veron Amberstill
    .mountcount 0-150,<1
    .itemcount 5864,<1
    .itemcount 5872,<1
    .itemcount 5873,<1
step << Human/Dwarf/Gnome
    .goto 48,33.938,50.932,-1
    .goto 1426/0,-497.200,-5663.700,-1 << Gnome
    .goto 1426/0,-1578.000,-5718.000,-1 << Dwarf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thorgrum Borrelson
    .target Brolan Galebeard << Gnome
    .target Dominic Galebeard << Dwarf
    .zoneskip Stormwind City
    .zoneskip Elwynn Forest
    .zoneskip Redridge Mountains
step
    .goto Stormwind City,62.875,71.490
    >>Clique no |cRXP_PICK_Tabuleiro do Chamado do Herói|r
    .accept 28563 >>Aceite O Chamado ao Heroísmo: Montanhas Cristarrubra
    >>|cRXP_WARN_Pule este passo se esta missão não lhe for oferecida|r
    .isQuestAvailable 26504
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre uma|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marcia Weller
    .xp <21,1
step << Warrior/Paladin
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre uma|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dela. Equipe quando estiver no nível 21|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 922,1 -- Dacian Falx (1)
    .money <1.0233
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Marcia Weller
    .xp >21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marcia Weller
    .xp <21,1
step << Rogue
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dela. Equipe quando estiver no nível 21|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 923,1 -- Longsword (1)
    .money <0.7432
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .target Marcia Weller
    .xp >21,1
step << Shaman
    .goto 84,64.074,68.362
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre um|r |T132415:0|t[Machado Duplo] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 927,1 -- Double Axe (1)
    .money <0.5911
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
    .target Marcia Weller
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lina Fornalha|r
    >>|cRXP_BUY_Compre um|r |T135612:0|t[Persuasor BKP 2700] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp <21,1
step << Hunter
    .goto 84,58.720,68.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lina Fornalha|r
    >>|cRXP_BUY_Compre um|r |T135612:0|t[Persuasor BKP 2700] |cRXP_BUY_dela. Equipe quando estiver no nível 21|r
    >>|cRXP_WARN_Alternatively, check the Auction House for something better or cheaper|r
    .collect 3024,1 -- BKP 2700 "Enforcer" (1)
    .money <0.6033
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .target Lina Stover
    .xp >21,1
step << Warrior/Paladin
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .xp <21,1
step << Rogue
    #optional
    #completewith EnterRR
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Shaman
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equipe o|r |T132415:0|t[Machado Duplo]
    .use 927
    .itemcount 927,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.9
step << Hunter
    #optional
    #completewith EnterRR
    +|cRXP_WARN_Equipe o|r |T135612:0|t[Persuasor BKP 2700]
    .use 3024
    .itemcount 3024,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
    #optional
    #completewith next
    .goto 84,64.55,70.61,15,0
    .goto 84,68.50,73.43,10,0
    .goto 84,68.54,74.89,10,0
    .goto 84,70.94,72.47,10 >>Vá em direção a |cRXP_FRIENDLY_Dungar Tragolongo|r
    .noflyable --Azeroth Flying
step
    #completewith EnterRR
    .goto 84,70.94,72.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Eastvale Logging Camp >>Voe para Acampamento de Lenhadores do Vale do Leste
	.target Dungar Longdrink
    .zoneskip 49 --Redridge Mountains
step
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Randal Caçador|r
    .train 33388 >>Treinamento de Aprendiz de Montaria
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step << Human
    .train 33388,3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katie Caçador|r
    +|cRXP_BUY_Compre um|r |T132261:0|t[Cavalo] |cRXP_BUY_dela|r
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
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .isQuestAvailable 26504
step
    #optional
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Lakeshire >>Aprenda a rota de voo de Lakeshire
    .target Ariena Stormfeather
    .xp <21,1
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    .goto 49,16.032,64.633
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 26504 >>Aceite Procuram-se: Gnolls de Cristarrubra
step
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darcy Florestan|r dentro
    .accept 26506 >>Aceite Salsichão com Nozes
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r no topo da Torre de Vigia
    .turnin 28563 >>Entregue O Chamado ao Heroísmo: Montanhas Cristarrubra
    .accept 26503 >>Aceite Ainda Avaliando a Ameaça
    .target Watch Captain Parker
    .isOnQuest 28563
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r no topo da Torre de Vigia
    .accept 26503 >>Aceite Ainda Avaliando a Ameaça
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
    >>Abate os |cRXP_ENEMY_Tarantulas|r. Saqueie-os para obter os |cRXP_LOOT_Olhos de Tarântulas|r
    >>Abate os |cRXP_ENEMY_Dire Condors|r voando acima ou pousados em poleiros. Saqueie-os para obter os |cRXP_LOOT_Condor Giblets|r
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
    >>Abate os |cRXP_ENEMY_Tarantulas|r. Saqueie-os para obter os |cRXP_LOOT_Olhos de Tarântulas|r
    >>Abate os |cRXP_ENEMY_Dire Condors|r voando acima ou pousados em poleiros. Saqueie-os para obter os |cRXP_LOOT_Condor Giblets|r
    >>Abate os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter os |cRXP_LOOT_Goretusk Kidneys|r
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
    >>Abate os |cRXP_ENEMY_Redridge Thrashers|r, os |cRXP_ENEMY_Redridge Mongrels|r e os |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #optional
    #completewith next
    .goto 49,23.281,68.320,50,0
    .goto 49,28.028,74.887,30 >>Vá para as |cRXP_PICK_Ordens Gnoll|r
    .noflyable --Azeroth Flying
step
    #label GnollOrders
    .goto 49,28.028,74.887
    >>Pegue as |cRXP_PICK_Ordens Gnoll|r no barril
    .complete 26503,2 --Gnoll Orders (1)
step
    #label GnollGuide
    .goto 49,30.563,62.710
    >>Pegue o |cRXP_PICK_Gnoll Guia de Estratégia|r no chão
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
    >>Abate os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter os |cRXP_LOOT_Goretusk Kidneys|r
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
    >>Abate os |cRXP_ENEMY_Tarantulas|r. Saqueie-os para obter os |cRXP_LOOT_Olhos de Tarântulas|r
    >>Abate os |cRXP_ENEMY_Dire Condors|r voando acima ou pousados em poleiros. Saqueie-os para obter os |cRXP_LOOT_Condor Giblets|r
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
    >>Abate os |cRXP_ENEMY_Redridge Thrashers|r, os |cRXP_ENEMY_Redridge Mongrels|r e os |cRXP_ENEMY_Redridge Brutes|r
    .complete 26504,1 --Redridge Gnoll (15)
    .mob *Redridge Thrasher
    .mob *Redridge Mongrel
    .mob *Redridge Brute
step
    #label GnollPlans
    .goto 49,16.203,55.263
    >>Pegue o |cRXP_PICK_Gnoll Planos de Batalha|r no chão
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
    >>Abate os |cRXP_ENEMY_Redridge Thrashers|r, os |cRXP_ENEMY_Redridge Mongrels|r e os |cRXP_ENEMY_Redridge Brutes|r
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
    >>Abate os |cRXP_ENEMY_Tarantulas|r. Saqueie-os para obter os |cRXP_LOOT_Olhos de Tarântulas|r
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
    >>Abate os |cRXP_ENEMY_Dire Condors|r voando acima ou pousados em poleiros. Saqueie-os para obter os |cRXP_LOOT_Condor Giblets|r
    .complete 26506,2 --Condor Giblets (4)
    .unitscan Dire Condor
    .maxlevel 20
step
    #requires Eyes
    .goto 49,15.622,65.327
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darcy Florestan|r dentro
    .turnin 26506 >>Entregue Salsichão com Nozes
    .target Darcy Parker
    .maxlevel 20
step
    .goto 49,15.309,64.691
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r no topo da Torre de Vigia
    .turnin 26504 >>Entregue Procuram-Se: Gnolls de Cristarrubra
    .turnin 26503 >>Entregue Ainda Avaliando a Ameaça
    .accept 26505 >>Aceite O Relatório de Florestan
    .target Watch Captain Parker
step
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Lakeshire >>Aprenda a rota de voo de Lakeshire
    .target Ariena Stormfeather
step
    #optional
    .maxlevel 20,endOfTheGuide
step
    #optional
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shawn|r
    .accept 26508 >>Aceite Colar da Nida
    .target Shawn
    .flyable --Azeroth Flying
step
    .goto 49,28.344,48.874
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shawn|r enquanto estiver no cais
    .accept 26508 >>Aceite Colar da Nida
    .target Shawn
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>Entre em Lakeshire Town Hall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Meirinho Conacher|r e o |cRXP_FRIENDLY_Magistrado Salomão|r lá dentro
    .accept 26511 >>Aceite Limpando o Lago Plácido
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26505 >>Entregue O Relatório de Florestan
    .accept 26510 >>Aceite Devemos nos Preparar!
    .goto 49,28.910,41.111
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>Saia do Lakeshire Town Hall
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
    >>Abate os |cRXP_ENEMY_Murloc Flesheaters|r e os |cRXP_ENEMY_Murloc Batedores|r
    .complete 26511,1 --Lake Everstill Murloc (10)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 49,37.818,42.158
    >>Pegue o |cRXP_PICK_Gnomofone|r no chão
    .complete 26510,1 --Gnomecorder (1)
step
    #optional
    #requires EverstillMurlocs
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>Entre em Lakeshire Town Hall
step
    #requires EverstillMurlocs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Meirinho Conacher|r e o |cRXP_FRIENDLY_Magistrado Salomão|r lá dentro
    .turnin 26511 >>Entregue Limpando o Lago Plácido
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26510 >>Entregue Devemos nos Preparar!
    .accept 26512 >>Aceite Sintonizando o Gnomofone
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>Saia do Lakeshire Town Hall
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
    .accept 26513 >>Aceite Feito Pum no Vento
    .target Marshal Marris
step
    .goto 49,32.330,39.544
	>>|cRXP_WARN_Viagem para o cemitério de Lakeshire|r
    .complete 26512,1 --Test the Gnomecorder at the Lakeshire Graveyard
    .turnin 26512 >>Entregue Sintonizando o Gnomofone
    .accept 26514 >>Aceite Matador na Garganta
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
    >>Mate os |cRXP_ENEMY_Redridge Gnolls|r. Saque-os para a |T134944:0|t|cRXP_LOOT_[Dirt-Stained Pergaminho]|r
    >>|cRXP_WARN_Use a |T134944:0|t|cRXP_LOOT_[Dirt-Stained Pergaminho]|r para iniciar a missão|r
    .collect 58898,1,26519,1 --Dirt-Stained Scroll (1)
    .accept 26519 >>Aceite Quem Controla os Gorjalas
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
    >>Saque o |cRXP_LOOT_Caixotes de Suprimento de Redridge|r no chão
    >>Mate os |cRXP_ENEMY_Redridge Drudgers|r, os |cRXP_ENEMY_Redridge Mystics|r, os |cRXP_ENEMY_Redridge Bashers|r, os |cRXP_ENEMY_Redridge Alphas|r e os |cRXP_ENEMY_Redridge Brutes|r. Saque-os para seus |cRXP_LOOT_Colares de Gnoll de Redridge|r
    >>|cRXP_WARN_Evite puxar os |cRXP_ENEMY_Canyon Ettins|r que patrulham a área|r
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
    >>|cRXP_WARN_Clique no pop-up no seu registro de missões|r
    .turnin 26514 >>Entregue Matador na Garganta
    .accept 26544 >>Aceite Caiu a Ficha
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
    >>Saque o |cRXP_LOOT_Caixotes de Suprimento de Redridge|r no chão
    >>|cRXP_WARN_Evite puxar os |cRXP_ENEMY_Canyon Ettins|r que patrulham a área|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #completewith Ardo
    #requires DirtScroll
    .goto 49,20.431,26.655
    .subzone 98 >>Vá para as Cavernas Rethban
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
    >>Mate os |cRXP_ENEMY_Supervisores de Blackrock|r dentro das Cavernas Rethban. Saque-os para a |cRXP_LOOT_Missiva de Orc Blackrock|r
    .complete 26544,1 --Blackrock Orc Missive (1)
    .mob *Blackrock Overseer
step
    #sticky
    #label Missive2
    #requires Missive1
    >>|cRXP_WARN_Clique no pop-up no seu registro de missões|r
    .turnin 26544 >>Entregue Caiu a Ficha
    .accept 26545 >>Aceite Berrante Tem que Morrer!
step
    #optional
    #completewith next
    #requires DirtScroll
    .goto 49,19.502,24.380,20,0
    .goto 49,18.121,22.037,20,0
    .goto 49,17.650,17.871,20,0
    .goto 49,19.884,17.025,15 >>Vá para |cRXP_ENEMY_Ardo Patassuja|r dentro das Cavernas Rethban
step
    #requires DirtScroll
    #label Ardo
    >>Mate |cRXP_ENEMY_Ardo Patassuja|r. Clique na |cRXP_PICK_Orbe de Controle de Gorjala|r ao lado dele
    .complete 26519,1 --Ardo Dirtpaw (1)
    .goto 49,18.432,18.172
    .mob +Ardo Dirtpaw
    .turnin 26519 >>Entregue Quem Controla os Gorjalas
    .accept 26520 >>Aceite Salvando o Encarregado Oslow
    .goto 49,17.841,18.619
step
    #requires Missive1
    .goto 49,20.431,26.655,25,0
    .goto 49,21.318,27.426,40 >>Saia das Cavernas Rethban
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
    >>Saque o |cRXP_LOOT_Caixotes de Suprimento de Redridge|r no chão
    >>|cRXP_WARN_Evite puxar os |cRXP_ENEMY_Canyon Ettins|r que patrulham a área|r
    .complete 26513,1 --Redridge Supply Crate (8)
    .unitscan Canyon Ettin
step
    #requires Missive2
    .goto 49,26.870,21.977
    >>Mate |cRXP_ENEMY_Berrante|r. Saque-o para os |cRXP_LOOT_Planos de Invasão Blackrock|r
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
    .cast 80704 >>De pé, use a |T332402:0|t[Orbe de Controle de Gorjala] em um |cRXP_ENEMY_Gorjala do Desfiladeiro|r
    .use 58895
    .unitscan Canyon Ettin
    .isOnQuest 26520
step
    #requires SupplyCrates
    .goto 49,31.480,44.344
    >>Vá para o |cRXP_FRIENDLY_Encarregado Oslow|r. Usar a |T332402:0|t[Orbe de Controle de Gorjala] ao lado dele enquanto controla um |cRXP_FRIENDLY_Subjugado Gorjala do Desfiladeiro|r
    .complete 26520,1 --Foreman Oslow Saved (1)
    .use 58895
step
    .goto 49,31.856,44.894
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
    .turnin 26513 >>Entregue Feito Pum no Vento
    .target Marshal Marris
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>Entre em Lakeshire Town Hall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r e o |cRXP_FRIENDLY_Coronel Troteman|r
    .turnin 26545 >>Entregue Berrante Tem que Morrer!
    .turnin 26520 >>Entregue Salvando o Encarregado Oslow
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    .accept 26567 >>Aceite João J. Keeshan
    .goto 49,28.659,40.744,5,0
    .goto 49,28.892,40.894,5,0
    .goto 49,28.659,40.744
    .target +Colonel Troteman
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Meirinho Conacher|r
    >>|cRXP_WARN_Se você já aceitou a missão O chamado ao heroísmo: Floresta do Crepúsculo! anteriormente em Ventobravo, pule este passo|r
    .accept 26728 >>Aceite O Chamado ao Heroísmo: Floresta do Crepúsculo!
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
step << skip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Meirinho Conacher|r e o |cRXP_FRIENDLY_Magistrado Salomão|r lá dentro
    .accept 26728 >>Aceite O Chamado ao Heroísmo: Floresta do Crepúsculo!
    .goto 49,28.681,40.955
    .target +Bailiff Conacher
    .turnin 26545 >>Entregue Berrante Tem que Morrer!
    .turnin 26520 >>Entregue Salvando o Encarregado Oslow
    .goto 49,28.971,41.123
    .target +Magistrate Solomon
    --XX Level 19/20 xp gate needed? (Hero's Call req is 19)
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>Saia do Lakeshire Town Hall
------Skip/remove section if Keeshan added
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Aceite O Penetra
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Mate a |cRXP_ENEMY_Ronquifuça|r. Saque-a para |cRXP_LOOT_Presa de Ronquifuça|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Entregue O penetra
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
    >>|cRXP_WARN_Nadar debaixo d'água e verificar os locais de aparecimento. Há 10 locais com 2 aparecimentos simultâneos|r
    >>Abra o |cRXP_PICK_Glinting Mud|r. Saque o |cRXP_LOOT_Colar da Nida|r
    .complete 26508,1 --Nida's Necklace (1)
step
    .train 33388,1
    .goto Redridge Mountains,29.405,53.770
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Eastvale Logging Camp >>Voe para Acampamento de Lenhadores do Vale do Leste
	.target Ariena Stormfeather
step << Human
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katie Caçador|r
    +|cRXP_BUY_Compre um|r |T132261:0|t[Cavalo] |cRXP_BUY_dela|r
    .target Katie Hunter
    .mountcount 0-150,<1
    .itemcount 2414,<1
    .itemcount 5655,<1
    .itemcount 5656,<1
    .itemcount 47100,<1
step
    .train 33388,1
    .goto 37,84.322,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Randal Caçador|r
    .train 33388 >>Treinamento de Aprendiz de Montaria
    .money <3.6000
    .target Randal Hunter
    .xp <20,1
step
    .train 33388,3
    .goto 37,81.830,66.553
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gus, o Veloz|r
    .fly Lakeshire, Redridge >>Voe para Lakeshire
	.target Goss the Swift
    .zoneskip 37,1
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Entregue Colar da Nida
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r enquanto está no cais
    .turnin 26508 >>Entregue Colar da Nida
    .target Nida
    .noflyable --Azeroth Flying
------XX Optional Section
step
    #optional
    #completewith KeeshanStart
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >>Entre na Estalagem de Lakeshire
step
    .goto 49,26.393,41.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Briana|r
    .home >>Defina sua Pedra de Regresso para Vila Plácida
    .target Innkeeper Brianna
    .isOnQuest 26567
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Entre no quarto dos fundos, depois desça para |cRXP_FRIENDLY_John J. Keeshan|r
step
    #label KeeshanStart
    .goto 49,26.297,40.131
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_John J. Keeshan|r no porão da Estalagem de Lakeshire
    .turnin 26567 >>Entregue João J. Keeshan
    .accept 26568 >>Aceite Essa Guerra Não É Minha
    .target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,25.990,42.754,10 >>Saia da Estalagem de Lakeshire --Exiting West (OPTIONAL SECTION)
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
    .accept 26509 >>Aceite O Penetra
    .target Martie Jainrose
step
    .goto 49,16.919,45.720,0
    .goto 49,17.203,44.935,15,0
    .goto 49,16.919,45.720,15,0
    .goto 49,17.375,45.858,15,0
    .goto 49,16.919,45.720
    >>Mate a |cRXP_ENEMY_Ronquifuça|r. Saque-a para |cRXP_LOOT_Presa de Ronquifuça|r
    .complete 26509,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto 49,22.043,42.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 26509 >>Entregue O penetra
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
    >>|cRXP_WARN_Nadar debaixo d'água e verificar os locais de aparecimento. Há 10 locais com 2 aparecimentos simultâneos|r
    >>Abra o |cRXP_PICK_Glinting Mud|r. Saque o |cRXP_LOOT_Colar da Nida|r
    .complete 26508,1 --Nida's Necklace (1)
step
    #optional
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r
    .turnin 26508 >>Entregue Colar da Nida
    .target Nida
    .flyable --Azeroth Flying
step
    .goto 49,28.277,48.871
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nida|r enquanto está no cais
    .turnin 26508 >>Entregue Colar da Nida
    .target Nida
    .noflyable --Azeroth Flying
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>Entre em Lakeshire Town Hall
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Coronel Troteman|r dentro
    .turnin 26568 >>Entregue Essa Guerra Não É Minha
    .accept 26571 >>Aceite Armas de Guerra
    .accept 26586 >>Aceite À Procura da Companhia Bravo
    .target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>Saia do Lakeshire Town Hall
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r e o |cRXP_FRIENDLY_Oficial Marris|r
    .accept 26569 >>Aceite Aparelhagem de Levantamento
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .accept 26570 >>Aceite O Exército dos Laceradores
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
	>>Mate os |cRXP_ENEMY_Blackrock Renegades|r e os |cRXP_ENEMY_Blackrock Batedores|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Scout
	.mob Blackrock Renegade
step
    #completewith Messner1
    .goto 49,39.751,37.234,50,0
    .goto 49,44.242,39.198,50,0
    .goto 49,47.119,41.138,15,0
    .goto 49,47.529,41.955,12 >>Vá para Messner
    .noflyable --Azeroth Flying
step
    #label Messner1
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messner|r na gaiola
    .turnin 26586 >>Entregue À Procura da Companhia Bravo
    .accept 26587 >>Aceite Escapar Não É Fácil
    .target Messner
step
	>>Mate |cRXP_ENEMY_Murdunk|r e |cRXP_ENEMY_Homurk|r. Saqueie o |cRXP_LOOT_Arco do Keeshan|r e |cRXP_LOOT_Keeshan's Faca de Sobrevivência|r
    .complete 26571,2 --Keeshan's Survival Knife (1)
    .goto 49,51.525,41.398
	.mob +Homurk
    .complete 26571,1 --Keeshan's Bow (1)
    .goto 49,51.681,41.330
	.mob +Murdunk
step
    #sticky
    #label Heart
    >>|cRXP_WARN_Clique no pop-up no seu registro de missões|r
    .turnin 26571 >>Entregue Armas de Guerra
    .accept 26573 >>Aceite Motivos para Lutar
step
    .goto 49,49.234,38.005
    >>Abra |cRXP_PICK_Blackrock Chave Pouch|r no toco. Saque-a para obter |cRXP_LOOT_Messner's Chave da Jaula|r
    >>|cRXP_WARN_evite o |cRXP_ENEMY_Capitão Worg da Rocha Negra|r e os |cRXP_ENEMY_Worgs de Batalha Blackrock|r|r
    .complete 26587,1 --Messner's Cage Key (1)
	.unitscan Blackrock Worg Captain
    .mob Blackrock Battle Worg
step
    #requires Heart
    .goto 49,47.529,41.955
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messner|r na gaiola e quando reaparece ao seu lado
    .turnin 26587 >>Entregue Escapar Não é Fácil
    .timer 3,Messner RP
    .accept 26560 >>Aceite Jorgensen
	.target Messner
step
    #optional
    #label Render
    .goto 49,44.518,27.137,70 >>Vá para as proximidades de Render's Camp
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
    >>Mate os |cRXP_ENEMY_Blackrock Summoners|r e os |cRXP_ENEMY_Blackrock Rastreadores|r. Saque os |cRXP_ENEMY_Blackrock Rastreadores|r para obter |cRXP_LOOT_Blackrock Spyglasses|r
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
    >>Mate os |cRXP_ENEMY_Invocadores Blackrock|r e os |cRXP_ENEMY_Blackrock Rastreadores|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
    .itemcount 58952,5 --Blackrock Spyglass (5)
step
    .goto 49,43.546,10.819
    >>Mate |cRXP_ENEMY_Utroka, a Senhora das Chaves|r. Saque-a para obter |cRXP_LOOT_Jorgensen's Chave da Jaula|r
    .complete 26560,1 --Jorgensen's Cage Key (1)
	.mob Utroka the Keymistress
step
    #optional
    #completewith next
    .goto 49,37.338,15.299,40,0
    .goto 49,35.846,14.524,40,0
    .goto 49,33.538,11.867,15 >>Vá para |cRXP_FRIENDLY_Jorgensen|r
    .noflyable --Azeroth Flying
step
    .goto 49,33.538,11.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorgensen|r na gaiola e quando reaparece ao seu lado
    .turnin 26560 >>Entregue Jorgensen
    .timer 3,Jorgensen RP
    .accept 26561 >>Aceite Krakauer
	.target Jorgensen
step
    #completewith BlackrockC
    #label RendersRock
    .goto 49,30.861,9.190,20 >>Entre em Render's Pedra
    .isOnQuest 265261
step
    #sticky
    #label Tarak
    #requires RendersRock
    .goto 49,26.057,10.450,0,0
    >>Mate |cRXP_ENEMY_Ritualista Tarak|r dentro
    .complete 26561,1 --Ritualist Tarak (1)
	.mob +Ritualist Tarak
step
    #optional
	#completewith BlackrockC
    #requires RendersRock
    .goto 49,30.050,9.353,15,0
    .goto 49,29.150,10.594,15,0
    .goto 49,26.586,10.530,15 >>Vá para o |cRXP_PICK_Blackrock Coffer|r dentro
step
	#label BlackrockC
    .goto 49,26.586,10.530
    >>Abra o |cRXP_PICK_Blackrock Coffer|r no chão dentro. Saque-o para obter |cRXP_LOOT_Keeshan's Vermelho Headband|r e |cRXP_LOOT_Keeshan's Jade Amulet|r
    .complete 26573,1 --Keeshan's Red Headband (1)
    .complete 26573,2 --Keeshan's Jade Amulet (1)
step
    #requires Tarak
    .goto 49,25.906,10.487
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krakauer|r dentro, no altar e quando reaparece ao seu lado
    .turnin 26561 >>Entregue Krakauer
    .timer 3,Krakauer RP
    .accept 26562 >>Aceite E, por Último, mas Não Menos Importante... Danforth
	.target Krakauer
step
    #optional
    #completewith next
    .goto 49,26.615,13.314,15,0
    .goto 49,25.552,14.772,15,0
    .goto 49,25.856,16.403,15,0
    .goto 49,27.634,18.155,15 >Vá para |cRXP_ENEMY_Suserano Barbarius|r dentro
step
    .goto 49,27.634,18.155
    >>Mate |cRXP_ENEMY_Suserano Barbarius|r dentro. Saque-o para obter o |cRXP_LOOT_Chave da Alavanca de Rocha Negra|r
	>>|cRXP_WARN_certifique-se de que seus Guardiões teleportam para baixo|r
    .complete 26562,1 --Overlord Barbarius (1)
    .complete 26562,2 --Blackrock Lever Key (1)
	.mob Overlord Barbarius
step
	#completewith next
    .goto 49,27.765,17.943
	.cast 80887 >>|cRXP_WARN_Clique na |cRXP_PICK_Chain Alavanca|r no chão dentro|r
	.isOnQuest 26562
step
    #label Danforth
    .goto 49,28.326,17.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danforth|r dentro, na água e quando reaparece ao seu lado
    .turnin 26562 >>Entregue E, por Último, mas Não Menos Importante... Danforth
    .timer 3,Danforth RP
    .accept 26563 >>Aceite A Volta da Companhia Bravo
	.target Danforth
--ZXCV Logout Skip here (if it works) add solid Spyglass step
step
    #optional
	#completewith next
    .goto 49,30.100,15.657,15,0
    .goto 49,30.004,12.928,15,0
    .goto 49,29.820,10.349,15,0
    .goto 49,30.372,9.117,15,0
    .goto 49,31.635,9.630,30 >>Saia de Render's Pedra
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
    >>Mate os |cRXP_ENEMY_Blackrock Summoners|r e os |cRXP_ENEMY_Blackrock Rastreadores|r. Saque os |cRXP_ENEMY_Blackrock Rastreadores|r para obter |cRXP_LOOT_Blackrock Spyglasses|r
    .complete 26570,1 --Blackrock Orcs of Alther's Mill or Render's Camp (25)
    .complete 26569,1 --Blackrock Spyglass (5)
	.mob Blackrock Tracker
	.mob Blackrock Summoner
step
    #completewith next
    .hs >>Volte para Lakeshire
step
    .goto 49,26.456,42.038
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kimberly Hiett|r na Estalagem de Lakeshire
    .vendor >>Compre e Conserte
    .target Kimberly Hiett
	.isOnQuest 26573
step
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>Entre em Lakeshire Town Hall
step
    .goto 49,28.659,40.744
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Coronel Troteman|r
    .turnin 26563 >>Entregue A Volta da Companhia Bravo
    .turnin 26573 >>Entregue Motivos para Lutar
    .accept 26607 >>Aceite Programado para Matar
	.target Colonel Troteman
step
    #optional
    #completewith next
    .goto 49,27.960,41.519,8,0
    .goto 49,28.310,41.910,8,0
    .goto 49,28.588,42.644,15 >>Saia do Lakeshire Town Hall
step
    #optional
    #completewith Keeshan2
    .goto 49,26.093,42.716,10,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.306,42.096,8 >>Entre na Estalagem de Lakeshire
step
    #optional
    #completewith next
    .goto 49,26.253,40.514,8,0
    .goto 49,25.945,39.756,6 >>Entre no quarto dos fundos, depois desça para |cRXP_FRIENDLY_John J. Keeshan|r
step
#questguide
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_John J. Keeshan|r no porão da Estalagem de Lakeshire
    .turnin 26607 >>Entregue Programado para Matar
    .accept 26616 >>Aceite Não Acaba Nunca
	.target John J. Keeshan
step
    #label Keeshan2
    .goto 49,26.334,40.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_John J. Keeshan|r no porão da Estalagem de Lakeshire
    .turnin 26607 >>Entregue Programado para Matar
	.target John J. Keeshan
step
    #optional
    #completewith next
    .goto 49,25.945,39.756,8,0
    .goto 49,26.253,40.514,8,0
    .goto 49,26.306,42.096,8,0
    .goto 49,26.138,42.315,8,0
    .goto 49,26.108,42.747,10 >>Saia da Estalagem de Lakeshire --East
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Oslow|r e o |cRXP_FRIENDLY_Oficial Marris|r
    .turnin 26569 >>Entregue Aparelhagem de Levantamento
    .goto 49,29.652,44.548
    .target +Foreman Oslow
    .turnin 26570 >>Entregue O Exército dos Laceradores
    .goto 49,29.731,44.519
	.target +Marshal Marris
step
#questguide
	#label Boat
    .goto 49,34.426,45.914
	.vehicle >>Entre em |cRXP_PICK_Keeshan's A Barcaça|r
	.timer 43,Não Acaba Nunca RP
    .isOnQuest 26616
step
#questguide
    .goto 49,52.901,52.999
    >>Espere a encenação terminar
    >>|cRXP_WARN_Saia manualmente do barco quando o cronômetro terminar|r
    .complete 26616,1 --Keeshan's Riverboat Ride Complete
step
#questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_João J. Keeshan|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Messner|r e |cRXP_FRIENDLY_Danforth|r
    .turnin 26616 >>Entregue Não Acaba Nunca
    .accept 26639 >>Aceite Ponto de Contato: Brubaker
    .goto 49,52.551,55.408
	.target +John J. Keeshan
    .accept 26636 >>Aceite Kit de Campanha da Companhia Bravo: Camuflagem
    .goto 49,52.402,55.407
	.target +Krakauer
    .accept 26637 >>Aceite Kit de Campanha da Companhia Bravo: Clorofórmio
    .goto 49,52.432,55.541
	.target +Messner
    .accept 26638 >>Aceite Caçando os Caçadores
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
    >>Mate os |cRXP_ENEMY_Muckdwellers|r debaixo d'água. Saqueie-os para obter seus |cRXP_LOOT_Muckdweller Glands|r
    >>|cRXP_WARN_Evite|r |cRXP_ENEMY_Banguelão|r
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
    >>Mate os |cRXP_ENEMY_Blackrock Hunters|r
    >>|cRXP_WARN_Tenha cuidado, pois eles estão|r |T136041:0|t[Camuflado]
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
	>>Saqueie as |cRXP_LOOT_Piles of Leaves|r e |cRXP_LOOT_Fox Poop|r no chão
    .complete 26636,1 --Pile of Leaves (5)
    .complete 26636,2 --Fox Poop (5)
step
#questguide
    .goto 49,53.052,67.825
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brubaker|r
    .turnin 26639 >>Entregue Ponto de Contato: Brubaker
    .accept 26640 >>Aceite Atrocidades Indizíveis
	.target Brubaker
step
#questguide
    #optional
    #questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r e |cRXP_FRIENDLY_João J. Keeshan|r
    .turnin 26637 >>Entregue Kit de Campanha da Companhia Bravo: Clorofórmio
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Entregue Kit de Campanha da Companhia Bravo: Camuflagem
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Entregue Caçando os Caçadores
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Entregue Atrocidades Indizíveis
    .accept 26646 >>Aceite Prisioneiros de Guerra
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step
#questguide
    #requires Hunters
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messner|r, |cRXP_FRIENDLY_Krakauer|r, |cRXP_FRIENDLY_Danforth|r e |cRXP_FRIENDLY_João J. Keeshan|r
    .turnin 26637 >>Entregue Kit de Campanha da Companhia Bravo: Clorofórmio
    .goto 49,52.432,55.541
	.target +Messner
    .turnin 26636 >>Entregue Kit de Campanha da Companhia Bravo: Camuflagem
    .goto 49,52.402,55.407
	.target +Krakauer
    .turnin 26638 >>Entregue Caçando os Caçadores
    .goto 49,52.533,55.557
	.target +Danforth
    .turnin 26640 >>Entregue Atrocidades Indizíveis
    .goto 49,52.551,55.408
	.target +John J. Keeshan
step << Human
#questguide
    #completewith next
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Eastvale Logging Camp >>Voe para Acampamento de Lenhadores do Vale do Leste
	.target Arlen Marsters
    .isQuestAvailable 26646 --Prisoners of War
    .skill riding,75,1
    .zoneskip 49,1
step << Human
#questguide
    .goto 37,84.321,64.870
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Randal Caçador|r
    .skill riding,75 >>Treine |T136103:0|t[Aprendiz de Montaria] com ele
    .target Randal Hunter
step << Human
#questguide
    .goto 37,84.150,65.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katie Caçador|r
    +|cRXP_BUY_Compre qualquer|r |T132261:0|t[Cavalo]|cRXP_BUY_ que você goste dela|r
	.target Katie Hunter
    .itemcount 2414,<1 --Pinto Bridle
    .itemcount 5655,<1 --Chestnut Mare Bridle
    .itemcount 5656,<1 --Brown Horse Bridle
    .skill riding,<75,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >>Usar |T132261:0|t[Cavalo Tobiano Bridle] para aprender
    .use 2414
    .itemcount 2414,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >>Usar |T132261:0|t[Égua Alazã Bridle] para aprender
    .use 5655
    .itemcount 5655,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    .cast 55884 >>Usar |T132261:0|t[Cavalo Castanho Bridle] para aprender
    .use 5656
    .itemcount 5656,1
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Pressione "Mudança+P" para abrir sua aba Montar|r
    >>|cRXP_WARN_Arraste|r |T132261:0|t[Cavalo Tobiano]|cRXP_WARN_ para suas Barras de Ação|r
    .cast 472 >>Monte seu |T132261:0|t[Cavalo Tobiano]
    .train 472,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Pressione "Mudança+P" para abrir sua aba Montar|r
    >>|cRXP_WARN_Arraste|r |T132261:0|t[Égua Alazã]|cRXP_WARN_ para suas Barras de Ação|r
    .cast 6648 >>Monte seu |T132261:0|t[Égua Alazã]
    .train 6648,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #completewith Goss
    >>|cRXP_WARN_Pressione "Mudança+P" para abrir sua aba Montar|r
    >>|cRXP_WARN_Arrastar o|r |T132261:0|t[Cavalo Castanho] |cRXP_WARN_para suas Barras de Ação|r
    .cast 458 >>Monte seu |T132261:0|t[Cavalo Castanho]
    .train 458,3
    .zoneskip 37,1
step << Human
#questguide
    #optional
    #label Goss
    #completewith Duskwood
    .goto 37,81.829,66.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gus, o Veloz|r
    .fly Darkshire >>Voe para Darkshire
    .target Goss the Swift
    .zoneskip 37,1
step
#questguide
    #optional
    #completewith Duskwood
    .goto 49,52.920,54.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arlen Marsters|r
    .fly Darkshire >>Voe para Darkshire
	.target Arlen Marsters
    .isQuestAvailable 26646
    .skill riding,<75,1 << Human
    .zoneskip 49,1
------start of optional Keeshan questline
step
    #questguide
    #completewith SeaforiumD
    +|cRXP_WARN_Use o|r |T133878:0|t[Kit de Campanha da Companhia Bravo] |cRXP_WARN_em|r |cRXP_WARN_Render's Valley|r
    >>|cRXP_WARN_Você pode montar normalmente com o item, mas não pode estar|r |T136041:0|t[Camouflaged] << !Druid
    >>|cRXP_WARN_Você pode montar normalmente com o item e voar em|r |T132128:0|t[Forma Voadora] |cRXP_WARN_enquanto|r |T136041:0|t[Camouflaged] << Druid
    >>Lance |T136074:0|t[Camuflagem] (1) para ficar invisível
    >>Lance |T132289:0|t[Distração] (2) para fazer os |cRXP_ENEMY_Blackrock Orcs|r se moverem
    >>Lance |T136090:0|t[Clorofórmio] (3) para adormecer os |cRXP_ENEMY_Blackrock Wardens|r e os |cRXP_ENEMY_Blackrock Guards|r. Isto não funciona nos |cRXP_ENEMY_Blackrock Draco Riders|r
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
    +|cRXP_WARN_Use o|r |T133878:0|t[Kit de Campanha da Companhia Bravo] |cRXP_WARN_em|r |cRXP_WARN_Render's Valley|r
    >>|cRXP_WARN_Você pode montar normalmente com o item, mas não pode estar|r |T136041:0|t[Camouflaged]
    >>Lance |T136074:0|t[Camuflagem] (1) para ficar invisível
    >>Lance |T132289:0|t[Distração] (2) para fazer os |cRXP_ENEMY_Blackrock Orcs|r se moverem
    >>Lance |T136090:0|t[Clorofórmio] (3) para adormecer os |cRXP_ENEMY_Blackrock Wardens|r e os |cRXP_ENEMY_Blackrock Guards|r. Isto não funciona nos |cRXP_ENEMY_Blackrock Draco Riders|r
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
    .goto 49,68.486,75.120,20 >>Entre na caverna em Render's Valley
step
    #questguide
    .goto 49,69.525,76.315
    >>Abra a |cRXP_PICK_Blackrock Chave Pouch|r dentro. Saque-a para obter a |cRXP_LOOT_Blackrock Segurando Pen Chave|r
    .collect 59261,1,26646,1 --Blackrock Holding Pen Key (1)
step
    #questguide
    .goto 49,69.805,59.125,-1
    .goto 49,68.970,60.132,-1
    >>Abra qualquer um dos |cRXP_PICK_Blackrock Segurando Pens|r
    .complete 26646,1 --Prisoners of War Freed (1)
step
    #questguide
    #sticky
    #label Prisoners
    >>|cRXP_WARN_Clique no pop-up no seu registro de missões|r
    .turnin 26646 >>Entregue Prisioneiros de Guerra
    .accept 26651 >>Aceite Para Vencer a Guerra, Torne-se a Guerra
step
    #questguide
    #optional
    #completewith next
    .goto 49,66.318,70.789,15 >>Vá para dentro da torre
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,66.411,71.479
    >>Com o |T133878:0|t[Kit de Campanha da Companhia Bravo] equipado, lance |T136173:0|t[Plantar Cequatrum] (4) no andar intermediário da torre
    .complete 26651,2 --Seaforium Planted at Blackrock Tower (1)
step
    #questguide
    #label SeaforiumD
    .goto 49,64.112,70.826
    >>Com o |T133878:0|t[Kit de Campanha da Companhia Bravo] equipado, lance |T136173:0|t[Plantar Cequatrum] (4) na parede externa da cabana
    .complete 26651,1 --Seaforium Planted at Munitions Hut (1)
step
    #questguide
    #optional
    #label FieldKit
    #completewith War
    .aura -82587 >>|cRXP_WARN_Clique para remover o|r |T133878:0|t[Kit de Campanha da Companhia Bravo] |cRXP_WARN_Bônus|r
    .isOnQuest 26651
step
    #questguide
    #optional
    #requires FieldKit
    #completewith War
    >>|cRXP_WARN_Evite |cRXP_ENEMY_Blackrock Wardens|r, |cRXP_ENEMY_Blackrock Guards|r, e|r |cRXP_ENEMY_Blackrock Draco Riders|r
    .goto 49,77.683,65.506,15 >>Vá em direção a |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #label War
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_John J. Keeshan|r
	>>|cRXP_WARN_Pressione "Fuga" no seu teclado para pular a cinemática|r
    .turnin 26651 >>Entregue Para Vencer a Guerra, Torne-se a Guerra
    .accept 26668 >>Aceite Detonação
    .target John J. Keeshan
step
    #questguide
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_John J. Keeshan|r e |cRXP_FRIENDLY_Danforth|r
    .turnin 26668 >>Entregue Detonação
    .accept 26693 >>Aceite A Torre Negra
    .goto 49,77.683,65.506
    .target +John J. Keeshan
    .accept 26692 >>Aceite Extinção dos Umbrapele
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
    >>Abata os |cRXP_ENEMY_Rabid Shadowhide Gnolls|r, os |cRXP_ENEMY_Shadowhide Darkweavers|r, os |cRXP_ENEMY_Shadowhide Assassins|r, os |cRXP_ENEMY_Shadowhide Warriors|r, os |cRXP_ENEMY_Shadowhide Slayers|r, os |cRXP_ENEMY_Shadowhide Brutes|r e os |cRXP_ENEMY_Shadowhide Gnolls|r
    >>|cRXP_WARN_Tenha cuidado, pois os |cRXP_ENEMY_Shadowhide Assassins|r são|r |T132320:0|t[Furtivo]
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
    >>|cRXP_WARN_Clique no pop-up no seu registro de missões|r
    .turnin 26692 >>Entregue Extinção dos Umbrapele
step
    #questguide
    #optional
    #completewith next
    .goto 49,67.611,30.650 >>Entre na caverna do |cRXP_ENEMY_General Mordente|r
step
    #questguide
    .goto 49,67.542,28.902
    >>Abata o |cRXP_ENEMY_General Mordente|r dentro. Saque-o para obter a |cRXP_LOOT_Key of Ilgalar|r
    .complete 26693,1 --Key of Ilgalar (1)
    .mob General Fangore
step
    #questguide
    >>|cRXP_WARN_Clique no pop-up no seu registro de missões|r
    .turnin 26693 >>Entregue A Torre Negra
    .accept 26694 >>Aceite O Grão-mago Doane
step
    #questguide
    #optional
    #label Ilgalar1
    #completewith next
    .goto 49,72.538,44.629,20,0
    .goto 49,71.952,44.819,15 >>Vá em direção à entrada da Torre de Ilgalar
    .noflyable --Azeroth Flying
step
    #questguide
    #optional
    #label Ilgalar2
    #requires Ilgalar1
    #completewith next
    .goto 49,71.952,44.819
    .cast 81776 >>Clique em |cRXP_PICK_Proteção de Ilgalar|r na base da Torre de Ilgalar
    .isOnQuest 26694
step
    #questguide
    .goto 49,71.491,44.896,0
    .goto 49,71.256,45.402
    >>Mate |cRXP_ENEMY_Grão-mago Doane|r no topo da Torre de Ilgalar
    .complete 26694,1 --Grand Magus Doane confronted (1)
    .mob Grand Magus Doane
step
    #questguide
    #optional
    #requires Extinction
    #completewith next
    .goto 49,76.973,52.844,40,0
    .goto 49,77.906,58.960,40,0
    .goto 49,77.683,65.506,15 >>Entregue para |cRXP_FRIENDLY_John J. Keeshan|r
    .noflyable --Azeroth Flying
step
    #questguide
    #requires Extinction
    .goto 49,77.683,65.506
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_John J. Keeshan|r
    .turnin 26694 >>Entregue O Grão-mago Doane
    .timer 29,O Grão-mago Doane RP
    .target John J. Keeshan
step
    #questguide
    .goto 49,77.204,65.923
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Coronel Troteman|r
    .accept 26708 >>Aceite AHHHHHHHHHHHH! AHHHHHHHHH!!!
    .target Colonel Troteman
step
    #questguide
    #completewith BlackrockInvaders
    #label BravoCompany
    .goto 49,76.916,66.133
    .vehicle >>Entre no |cRXP_FRIENDLY_Tanque de Cerco da Companhia Bravo|r
    .target Bravo Company Siege Tank
    .isOnQuest 26708
step
    #questguide
    #optional
    #completewith BlackrockInvaders
    #requires BravoCompany
    .goto 49,77.906,58.960,40,0
    .goto 49,76.869,54.470,40 >>|cRXP_WARN_Enquanto no |cRXP_FRIENDLY_Tanque de Cerco da Companhia Bravo|r, volte em direção a Galardell Valley
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
    >>|cRXP_WARN_Enquanto no |cRXP_FRIENDLY_Tanque de Cerco da Companhia Bravo|r, dirija através dos |cRXP_ENEMY_Blackrock Invaders|r em direção ao Posto de Keeshan, lançando|r |T252187:0|t[Harrison Jones] (1) |cRXP_WARN_em recarga|r
    .complete 26708,1 --Blackrock Invader (200)
    .mob Blackrock Invader
step
    #questguide
    #optional
    #completewith next
    >>|cRXP_WARN_Saia do|r |cRXP_FRIENDLY_Tanque de Cerco da Companhia Bravo|r
    >>|cRXP_WARN_Você será imediatamente removido da fase com |cRXP_ENEMY_Blackrock Invaders|r e retornado para a fase com os|r |cRXP_ENEMY_Shadowhide Gnolls|r
    .goto 49,60.660,36.666,15 >>Entregue para |cRXP_FRIENDLY_Coronel Troteman|r
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Coronel Troteman|r
    .turnin 26708 >>Entregue AHHHHHHHHHHHH! AHHHHHHHHH!!!
    .accept 26713 >>Aceite Confronto Final no Mirante de Pedra
    .target Colonel Troteman
step
    #questguide
    #optional
    #completewith Darkblaze
    +|cRXP_WARN_Certifique-se de que sua equipe está com você antes de prosseguir. Eles devem aparecer quando você se aproximar |cRXP_ENEMY_Tharil'zun|r. Se não aparecerem, saia do jogo e faça login novamente|r
step
    #questguide
    .goto 49,60.307,47.402
    >>Mate |cRXP_ENEMY_Tharil'zun|r
    .complete 26713,1 --Tharil'zun (1)
    .mob Tharil'zun
step
    #questguide
    #optional
    #completewith next
    .goto 49,60.307,47.402,40,0
    .goto 49,57.775,56.285,45 >>Viaje em direção a |cRXP_ENEMY_Gath'Ilzogg|r
    .noflyable --Azeroth Flying
step
    #questguide
    .goto 49,57.775,56.285
    >>Mate |cRXP_ENEMY_Gath'Ilzogg|r
    .complete 26713,2 --Gath'Ilzogg (1)
    .mob Gath'Ilzogg
step
    #questguide
    >>|cRXP_WARN_Clique no pop-up no seu registro de missões|r
    .turnin 26713 >>Entregue Confronto Final no Mirante de Pedra
    .goto 49,58.651,55.469
    .accept 26714 >>Aceite Fulgor Negro, Prole do Quebra-Mundos
    .timer 25,Fulgor Negro RP
    .goto 49,60.660,36.666
step
    #questguide
    #label Darkblaze
    .goto 49,58.651,55.469
    >>|cRXP_WARN_Espere a transformação de |cRXP_ENEMY_Grão-mago Doane|r RP|r
    >>|cRXP_WARN_Derrote |cRXP_ENEMY_Fulgor Negro|r uma vez que a encenação termina|r
    >>|cRXP_WARN_Se você falhar, use o |cRXP_PICK_Chifre de Evocação|r no chão para evocar novamente |cRXP_ENEMY_Grão-mago Doane|r
    .complete 26714,1 --Darkblaze Defeated (1)
    .mob Darkblaze
    .mob *Grand Magus Doane
--XX     .goto 49,58.608,55.390 Horn of Summoning
step
    #questguide
    .goto 49,60.660,36.666
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Coronel Troteman|r
    .turnin 26714 >>Entregue Fulgor Negro, Prole do Quebra-Mundos
    .accept 26726 >>Aceite Retorno Triunfante
    .target Colonel Troteman
step
    #questguide
    #completewith next
    .hs >>Volte para Lakeshire
    .cooldown item,6948,>2
    .isOnQuest 26726
    .subzoneskip 69 --Yes that is Lakeshire's subzone id
step
    #questguide
    #optional
    #completewith next
    .goto 49,28.282,41.910,8,0
    .goto 49,27.972,41.567,8 >>Entre em Lakeshire Town Hall
    .isOnQuest 26726
step
    #questguide
    .goto 49,28.971,41.123
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Magistrado Salomão|r dentro
    .turnin 26726 >>Entregue Retorno Triunfante
	.target Magistrate Solomon
------End of optional Keeshan questline
step
    #optional
    #label endOfTheGuide
]])
