if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Draenei
#group RXP TBC Guia de Sobrevivência (A)
#subgroup RXP Sobrevivência Guia 1-20
#name 1-12 Azuremyst Isle
#next 12-14 Costa Negra

step
    .goto Azuremyst Isle,82.96,43.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Megelon|r
    .accept 9279 >>Aceite Sobreviveste!
    .target Megelon
step << Shaman/Warrior
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
	.vendor >>|cRXP_WARN_Abate 2-3 |cRXP_ENEMY_Vale Moths|r ou |cRXP_ENEMY_Mutações voláteis|r para vender (vale 10+ de cobre)|r
    >>|cRXP_WARN_Vendor trash at |cRXP_FRIENDLY_Aurok|rdentro|r
    .mob Vale Moth
    .mob Volatile Mutation
    .target Aurok
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Firmanvaar|r
	.train 8017 >>Trem |T136086:0|t[Arma Trinca-pedra]
    .target Firmanvaar
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kore|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Kore
step << Priest/Mage
    #completewith next
    +|cRXP_WARN_Abate os |cRXP_ENEMY_Vale Moths|r e os |cRXP_ENEMY_Mutações voláteis|r. Saque-os até que você tenha 50 de cobre em valor de itens para vender (incluindo sua armadura)|r
    .mob Vale Moth
    .mob Volatile Mutation
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Proenitus|r
    .turnin 9279 >>Entregue Sobreviveste!
    .accept 9280 >>Aceite O Reabastecimento dos Cristais de Cura
    .target Proenitus
step << Priest/Mage
    .goto Azuremyst Isle,79.253,50.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ryosh|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t[Água Refrescante da Fonte]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Ryosh
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Botanist Taerix|r
    .accept 10302 >>Aceite Mutações Voláteis
    .target Botanist Taerix
step
    #loop
    .goto Azuremyst Isle,80.14,41.70,0
    .goto Azuremyst Isle,75.27,43.70,0
    .goto Azuremyst Isle,73.4,51.4,0
    .goto Azuremyst Isle,80.14,41.70,50,0
    .goto Azuremyst Isle,75.27,43.70,50,0
    .goto Azuremyst Isle,73.4,51.4,50,0
    >>Mate |cRXP_ENEMY_Volatile Mutations|r
    >>Mate |cRXP_ENEMY_Vale Moths|r. Saqueie-os para obter |cRXP_LOOT_Blood|r
    >>|cRXP_WARN_Priorize os |cRXP_ENEMY_Mutações voláteis|r já que você entregará a missão e completará os |cRXP_ENEMY_Vale Moths|r depois|r
    .complete 10302,1 --Kill Volatile Mutation (x8)
    .mob +Volatile Mutation
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob +*Vale Moth
    .disablecheckbox
step
    #optional
    .isQuestComplete 9280
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >>Entregue O Reabastecimento dos Cristais de Cura
    .accept 9409 >>Aceite Entrega Urgente!
    .target Proenitus
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Botanist Taerix|r e |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 10302 >>Entregue Mutações Voláteis
    .accept 9293 >>Aceite A Resposta Adequada...
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .accept 9799 >>Aceite Trabalho de Campo: Botânica
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    #completewith next
    >>Mate |cRXP_ENEMY_Vale Moths|r. Saqueie-os para obter |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.94,52.21,0
    .goto Azuremyst Isle,72.26,49.29,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.94,52.21,50,0
    .goto Azuremyst Isle,72.26,49.29,50,0
    >>Mate |cRXP_ENEMY_Mutated Root Lashers|r. Saqueie-os para obter |cRXP_LOOT_Lasher Samples|r
    >>Saqueie |cRXP_LOOT_Corrupted Flowers|r no chão
    .complete 9293,1 --Collect Lasher Sample (x10)
    .complete 9799,1 --Collect Corrupted Flower (x3)
    .mob Mutated Root Lasher
step
    #loop
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
    >>Mate |cRXP_ENEMY_Vale Moths|r. Saqueie-os para obter |cRXP_LOOT_Blood|r
    .complete 9280,1 --Collect Vial of Moth Blood (x8)
    .mob Vale Moth
step
    #optional
    .isQuestTurnedIn 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-420 >>Farme até estar a 420 XP do nível 4 (980/1400)
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
step
    #optional
    .isQuestAvailable 9280
    #loop
    .goto Azuremyst Isle,74.5,48.5,0
    .goto Azuremyst Isle,72.9,52.2,0
    .goto Azuremyst Isle,72.2,49.2,0
    .goto Azuremyst Isle,74.6,43.6,0
    .goto Azuremyst Isle,78.2,40.2,0
    .goto Azuremyst Isle,79.2,45.0,0
    .goto Azuremyst Isle,76.0,46.6,0
    .goto Azuremyst Isle,74.5,48.5,50,0
    .goto Azuremyst Isle,72.9,52.2,50,0
    .goto Azuremyst Isle,72.2,49.2,50,0
    .goto Azuremyst Isle,74.6,43.6,60,0
    .goto Azuremyst Isle,78.2,40.2,60,0
    .goto Azuremyst Isle,79.2,45.0,60,0
    .goto Azuremyst Isle,76.0,46.6,60,0
	.xp 4-500 >>Farme até estar a 500 XP do nível 4 (900/1400)
    .mob Mutated Root Lasher
    .mob Volatile Mutation
    .mob Vale Moth
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Botanist Taerix|r e |cRXP_FRIENDLY_Apprentice Vishael|r
    .turnin 9293 >>Entregue A Resposta Adequada...
    .accept 9294 >>Aceite A Descontaminação do Lago
    .target +Botanist Taerix
    .goto Azuremyst Isle,79.139,46.536
    .turnin 9799 >>Entregue Trabalho de Campo: Botânica
    .target +Apprentice Vishael
    .goto Azuremyst Isle,79.071,46.624
step
    .goto Azuremyst Isle,80.419,45.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Proenitus|r
    .turnin 9280 >>Entregue O Reabastecimento dos Cristais de Cura
    .accept 9409 >>Aceite Entrega Urgente!
    .target Proenitus
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurok|r
	.vendor >>Lixo Comerciante
    .target Aurok
step << Mage
	.goto Azuremyst Isle,79.582,48.762
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valaatu|r
	.accept 9290 >>Aceite Treinamento de Mago
	.turnin 9290 >>Entregue Treinamento de Mago
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Valaatu
step << Paladin
    #loop
    .goto Azuremyst Isle,79.695,48.236,7,0
    .goto Azuremyst Isle,80.12,49.13,7,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurelon|r
    >>|cRXP_FRIENDLY_Aurelon|r |cRXP_WARN_pode patrulhar um pouco|r
	.accept 9287 >>Aceite Treinamento de Paladino
	.turnin 9287 >>Entregue Treinamento de Paladino
    .train 465 >>Aprenda |T135893:0|t[Aura de Devoção]
    .train 19740 >>Aprenda |T135906:0|t[Bênção do Poder]
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .target Aurelon
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha levemente|r
    .turnin 9409 >>Entregue Entrega Urgente!
    .accept 9283 >>Aceite O Resgate dos Sobreviventes!
    .accept 9291 >>Aceite Treinamento de Sacerdote << Priest
    .turnin 9291 >>Entregue Treinamento de Sacerdote << Priest
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude] << Priest
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior] << Priest
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor] << Priest
    .target Zalduun
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Firmanvaar|r
    .accept 9421 >>Aceite Treinamento de Xamã
	.turnin 9421 >>Entregue Treinamento de Xamã
    .accept 9449 >>Aceite Clamor da Terra
	.train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .target Firmanvaar
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_lançou|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a |cRXP_FRIENDLY_Draenei Survivor|r if you see one|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Espírito do Vale|r
    .turnin 9449 >>Entregue Chamado da Terra
    .accept 9450 >>Aceite Clamor da Terra
    .target Spirit of the Vale
step << Shaman
    #loop
    .goto Azuremyst Isle,69.62,35.13,0
    .goto Azuremyst Isle,70.73,37.74,40,0
    .goto Azuremyst Isle,69.62,35.13,60,0
    >>Mate |cRXP_ENEMY_Restless Spirits of Earth|r
    .complete 9450,1 --Kill Restless Spirit of Earth (x4)
    .mob Restless Spirit of Earth
step << Shaman
    .goto Azuremyst Isle,71.788,40.241
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Espírito do Vale|r
    .turnin 9450 >>Entregue Chamado da Terra
    .accept 9451 >>Aceite Clamor da Terra
    .target Spirit of the Vale
step << Shaman
    #completewith next
    .usespell 28880 >>|cRXP_WARN_lançou|r |T135923:0|t[Gift of the Naaru] |cRXP_WARN_on a |cRXP_FRIENDLY_Draenei Survivor|r if you see one|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step << Shaman
    .goto Azuremyst Isle,79.278,49.126
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Firmanvaar|r
    .turnin 9451 >>Entregue Chamado da Terra
    .target Firmanvaar
step << Shaman
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha levemente|r
    .turnin 9283 >>Entregue O Resgate dos Sobreviventes!
    .target Zalduun
step << Warrior
    .goto Azuremyst Isle,79.587,49.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kore|r
    .accept 9289 >>Aceite Treinamento de Guerreiro
	.turnin 9289 >>Entregue Treinamento de Guerreiro
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Kore
step << Hunter
	.goto Azuremyst Isle,79.886,49.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keilnei|r
	.accept 9288 >>Aceite Treinamento de Caçador
	.turnin 9288 >>Entregue Treinamento de Caçador
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Keilnei


--xx

step << Priest
	.goto Azuremyst Isle,79.254,50.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ryosh|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .collect 159,10 --Collect Refreshing Spring Water (x15)
    .target Ryosh
    .xp >5,1

--xx


step << Shaman/Hunter
	#completewith next
	.goto Azuremyst Isle,79.188,50.928
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mura|r
	.vendor >>Lixo Comerciante
    >>|cRXP_BUY_Compre 5 pacotes de|r |T132382:0|t[Rough Flechas] |cRXP_BUY_dela|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Mura
step
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Technician Zhanaa|r
    .accept 9305 >>Aceite Peças Sobressalentes
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicator Aldar|r
    .accept 9303 >>Aceite Inoculação
    .target Vindicator Aldar
step
    #completewith Owlkininoculated
    .usespell 28880 >>|cRXP_WARN_lançou|r Lembre-se de conjurar[Gift of the Naaru]|cRXP_WARN_on a|r|cRXP_FRIENDLY_Draenei Survivor|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
    .subzoneskip 3559 -- Nestlewood Hills
step
    .goto Azuremyst Isle,77.390,58.779
	>>Clique no lake
    .complete 9294,1 --Collect Disperse the Neutralizing Agent (x1)
step
    #completewith next
	.use 22962 >>|cRXP_WARN_Canal o|r |T132775:0|t[Cristal de Inoculação] |cRXP_WARN_em |cRXP_ENEMY_Nestlewood Owlkins|r por 4 segundos|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	>>Saqueie |cRXP_LOOT_Emitter Spare Parts|r no chão
    .complete 9305,1 --Collect Emitter Spare Part (x4)
step
    #label Owlkininoculated
    .goto Azuremyst Isle,80.92,58.89,20,0
    .goto Azuremyst Isle,82.27,59.43,30,0
    .goto Azuremyst Isle,82.93,61.46,30,0
    .goto Azuremyst Isle,85.49,68.25,50,0
    .goto Azuremyst Isle,88.33,62.21
	.use 22962 >>|cRXP_WARN_Canal o|r |T132775:0|t[Cristal de Inoculação] |cRXP_WARN_em |cRXP_ENEMY_Nestlewood Owlkins|r por 4 segundos|r
    .complete 9303,1 --Nestlewood Owlkin inoculated (x6)
    .mob Nestlewood Owlkin
step
    #completewith next
    .subzone 3527 >>Volte ao Local da Colisão
step
    .goto 1943/1,3865.399,6144.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicator Aldar|r
    .target Vindicator Aldar
    .turnin 9303 >>Entregue Inoculação
    .accept 9309 >>Aceite O Batedor Desaparecido
step
    .goto 1943/1,3865.000,6157.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Technician Zhanaa|r
    .target Technician Zhanaa
    .turnin 9305 >>Entregue Peças Sobressalentes
step
    .goto 1943/1,3877.000,6284.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Botanist Taerix|r
    .target Botanist Taerix
    .turnin 9294 >>Entregue A Descontaminação do Lago
step
    .goto 1943/1,3838.800,6221.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    .target Zalduun
    .turnin 9283 >>Entregue O Resgate dos Sobreviventes
step
    .isQuestComplete 9283
    #optional
    #loop
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha levemente|r
    .turnin 9283 >>Entregue O Resgate dos Sobreviventes
    .target Zalduun
step
	#completewith next
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurok|r
	.vendor >>Lixo Comerciante
    .target Aurok
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >>Entregue A Descontaminação do Lago
    .target Botanist Taerix
step
    #completewith SurveyorCandress
    .usespell 28880 >>|cRXP_WARN_lançou|r Lembre-se de conjurar[Gift of the Naaru]|cRXP_WARN_on a|r|cRXP_FRIENDLY_Draenei Survivor|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tolaan|r
    .turnin 9309 >>Entregue O Batedor Desaparecido
    .accept 10303 >>Aceite Os Elfos Sangrentos
    .target Tolaan
step
    .goto Azuremyst Isle,69.420,64.608
    >>Mate |cRXP_ENEMY_Blood Elf Scouts|r
    .complete 10303,1 --Kill Blood Elf Scout (x10)
    .mob Blood Elf Scout
step
    .goto Azuremyst Isle,71.998,60.856
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tolaan|r
    .turnin 10303 >>Entregue Os Elfos Sangrentos
    .accept 9311 >>Aceite Espiã Elfa Sangrenta
    .target Tolaan
step
    #label SurveyorCandress
    .goto Azuremyst Isle,69.271,65.772
    >>Mate for the |T132319:0|t[|cRXP_LOOT_Blood Elf Plans|r]
    .use 24414 >>|cRXP_WARN_Use os|r |T132319:0|t[|cRXP_LOOT_Os Planos dos Elfos Sangrentos|r] |cRXP_WARN_para iniciar a missão|r
    .complete 9311,1 --Kill Surveyor Candress (x1)
    .collect 24414,1,9798,1 -- Blood Elf Plans
    .accept 9798 >>Aceite Os Planos dos Elfos Sangrentos
    .mob Surveyor Candress
step
    #loop
    .goto Azuremyst Isle,71.8,55.8,0
    .goto Azuremyst Isle,77.6,56.0,0
    .goto Azuremyst Isle,74.8,43.4,0
    .goto Azuremyst Isle,80.2,42.6,0
    .goto Azuremyst Isle,71.8,55.8,80,0
    .goto Azuremyst Isle,77.6,56.0,80,0
    .goto Azuremyst Isle,74.8,43.4,80,0
    .goto Azuremyst Isle,80.2,42.6,80,0
    >>|cRXP_WARN_lançou|r Lembre-se de conjurar[Gift of the Naaru]|cRXP_WARN_on a|r|cRXP_FRIENDLY_Draenei Survivor|r|cRXP_WARN_. They're scattered all around the starting zone|r
    .complete 9283,1 --Draenei Survivors Saved
    .unitscan Draenei Survivor
step
    #optional
    .isQuestAvailable 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1450 >>Mate os |cRXP_ENEMY_Batedores Sanguíneos|r até estar a 1450 EXP do nível 6 (1350/2800)
    .mob Blood Elf Scout
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>Mate os |cRXP_ENEMY_Batedores Sanguíneos|r até estar a 1230 EXP do nível 6 (1570/2800)
    .mob Blood Elf Scout
step
    #completewith next
    .subzone 3527 >>Vá para o Local da Colisão
step
    #label BloodElfSpy
    .goto Azuremyst Isle,79.488,51.622
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9311 >>Entregue Espiã Elfa Sangrenta
    .turnin 9798 >>Entregue Os Planos dos Elfos Sangrentos
    .accept 9312 >>Aceite O Emissor
    .target Vindicator Aldar
step
    .goto Azuremyst Isle,79.422,51.234
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9312 >>Entregue O Emissor
    .accept 9313 >>Accept Viaje até Vigília Rubra
    .target Technician Zhanaa
step
    #loop
    .goto Azuremyst Isle,80.25,48.46,0
    .goto Azuremyst Isle,80.25,48.46,10,0
    .goto Azuremyst Isle,80.01,49.42,10,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zalduun|r
    >>|cRXP_FRIENDLY_Zalduun|r |cRXP_WARN_patrulha levemente|r
    .turnin 9283 >>Entregue O Resgate dos Sobreviventes
    .target Zalduun
step
    .goto Azuremyst Isle,64.497,54.037
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aeun|r
    .accept 9314 >>Aceite Notícias do Entreposto Lazúli
    .target Aeun
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Diktynna|r
    .accept 9452 >>Aceite Hum... Delícia de Pargo-Vermelho
    .target Diktynna
step
    .isOnQuest 9452
    .goto Azuremyst Isle,62.38,51.93,40,0
    .goto Azuremyst Isle,61.87,41.62,60 >>|cRXP_WARN_Nadar para o norte rio acima|r
    .use 23654 >>|cRXP_WARN_Use a|r |T134325:0|t[Rede de Pesca Draenei] |cRXP_WARN_em|r |cRXP_PICK_Cardumes de Pargo-Vermelho|r |cRXP_WARN_que encontre pelo caminho. Pule este passo quando chegue ao topo do rio, você o completará mais tarde|r
	.collect 23614,10 -- Red Snapper (10)
    .disablecheckbox
step
	#completewith next
    >>|cRXP_WARN_Procure um|r |cRXP_FRIENDLY_Jovem Draenei|r
    >>|cRXP_WARN_While they are in combat, cast|r Lembre-se de conjurar[Gift of the Naaru]|cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >>Aceite Agradeço de Coração!
	.unitscan Draenei Youngling
step
    .goto Azuremyst Isle,53.9,34.4
    >>Mate for a |T134072:0|t[|cRXP_LOOT_Faintly Glowing Crystal|r]
    .use 23678 >>|cRXP_WARN_Use o|r |T134072:0|t[|cRXP_LOOT_Cristal Fracamente Faiscante|r] |cRXP_WARN_para iniciar a missão|r
	.collect 23678,1,9455,1 -- Faintly Glowing Crystal (1)
    .accept 9455 >>Aceite Descobertas Intrigantes
    .mob Infected Nightstalker Runt
step
    #completewith NightstalkerCleanUp
    .goto 1943/1,4776.600,6457.500,55,0
    .goto 1943/1,4807.399,6348.100,55,0
    .goto 1943/1,4860.899,6302.500,55,0
    .subzone 3576 >>Viaje até Vigília Rubra.Follow the arrow to get there safely
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anchorite Fateema|r
    .accept 9463 >>Aceite Propriedades Medicinais
    .target Anchorite Fateema
step
	.isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
	.turnin 9612 >>Entregue Agradeço de Coração!
    .turnin 9455 >>Entregue Descobertas Intrigantes
    .accept 9456 >>Aceite Extermínio de Espreitanoites, Ilha 2...
    .target Exarch Menelaous
step
    #label NightstalkerCleanUp
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9455 >>Entregue Descobertas Intrigantes
    .accept 9456 >>Aceite Extermínio de Espreitanoites, Ilha 2...
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,48.7,50.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Technician Dyvuun|r
    .turnin 9313 >>Turn in Viaje até Vigília Rubra
    .target Technician Dyvuun
step
    .goto Azuremyst Isle,48.4,49.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caregiver Chellan|r
    .turnin 9314 >>Entregue Notícias do Entreposto Lazúli
    .target Caregiver Chellan
step
	.goto Azuremyst Isle,48.336,49.144
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caregiver Chellan|r
    .home >>Defina sua Pedra de Retorno em Azure Vigil
    .target Caregiver Chellan
    .bindlocation 3576
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guvan|r
    .accept 9586 >>Aceite Ajuda Tavera
    .train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Guvan
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Semid|r
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Semid
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acteon|r
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .target Acteon
step << Shaman
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala]
    .collect 2495,1 --Walking Stick (1)
    .target Nabek
    .money <0.0480
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Shaman
    #sticky
    .equip 16,2495 >>|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
step << Paladin
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Compre e equipe um|r |T133053:0|t[Marreta de Madeira]
    .collect 2493,1 --Collect Wooden Mallet (1)
    .target Nabek
    .money <0.0666
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #sticky
    .equip 16,2493 >>|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
step << Warrior
    .goto Azuremyst Isle,49.579,53.107
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nabek|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio] |cRXP_BUY_se você conseguir|r
    .collect 2488,1 --Collect Gladius (1)
    .target Nabek
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior/Paladin
    .goto Azuremyst Isle,48.957,51.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dulvi|r
    .train 2575 >>Aprenda |T134708:0|t[Mineração]
    .target Dulvi
step << Warrior/Paladin
    .goto Azuremyst Isle,48.767,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    >>|cRXP_BUY_Compre um|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dele|r
    .collect 2901,1 --Mining Pick (1)
    .target Ziz
    .train 2575,3 --Mining
step << Warrior/Paladin
    #optional
    #completewith SGrain
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining
step
	#completewith level8
    >>|cRXP_WARN_Procure um|r |cRXP_FRIENDLY_Jovem Draenei|r
    >>|cRXP_WARN_While they are in combat, cast|r Lembre-se de conjurar[Gift of the Naaru]|cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >>Aceite Agradeço de Coração!
	.unitscan Draenei Youngling
step
    #completewith LeavesTree
    >>Mate |cRXP_ENEMY_Root Trappers|r. Saqueie-os para obter |cRXP_LOOT_Vines|r
    >>Mate |cRXP_ENEMY_Moongraze Stags|r. Saqueie-os para obter |cRXP_LOOT_Moongraze Stag Tenderloins|r
    >>|cRXP_WARN_NOTA: Em breve você treinará e aumentará o nível de|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Costa Negra mais tarde. Você precisará de 6 |cRXP_LOOT_Lombo de Cervo Pastoluna|r para a missão agora e 9 para depois. NÃO venda-os|r
    .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step << Priest
    .goto Azuremyst Isle,56.224,48.879
    .usespell 2052 >>|cRXP_WARN_lançou|r |T135929:0|t[Lesser Heal] (Rank 2) |cRXP_WARN_on|r |cRXP_FRIENDLY_Tavara|r
    .complete 9586,1 --Heal Tavara
    .target Tavara
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Admiral Odesyus|r
    .accept 9506 >>Aceite Um Pequeno Começo
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .accept 9512 >>Aceite Risoto do "Cuca"
    .target "Cookie" McWeaksauce
step << Warrior/Paladin
    .goto Azuremyst Isle,46.355,71.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Blacksmith Calypso|r
    >>|cRXP_WARN_Isto permitirá que você faça|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_e|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Blacksmith Calypso
    .train 2575,3 --Mining
step
    .goto Azuremyst Isle,58.607,66.372
	>>Saqueie small cage
    .complete 9506,2 --Collect Nautical Map (x1)
step
    .goto Azuremyst Isle,59.578,67.648
	>>Saqueie small box
    .complete 9506,1 --Collect Nautical Compass (x1)
step
    #loop
    .goto Azuremyst Isle,57.0,69.2,0
    .goto Azuremyst Isle,50.8,69.4,0
    .goto Azuremyst Isle,46.0,75.6,0
    .goto Azuremyst Isle,57.0,69.2,70,0
    .goto Azuremyst Isle,50.8,69.4,70,0
    .goto Azuremyst Isle,46.0,75.6,70,0
	>>Mate |cRXP_ENEMY_Skittering Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Crawler Meat|r
    .complete 9512,1 --Collect Skittering Crawler Meat (x6)
    .mob Skittering Crawler
step
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .turnin 9512 >>Entregue Risoto do "Cuca"
    .target "Cookie" McWeaksauce
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Admiral Odesyus|r e |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9506 >>Entregue Um Pequeno Começo
    .accept 9530 >>Aceite Planta Infalível
    .target +Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
    .accept 9513 >>Aceite A Reconquista das Ruínas
    .target +Priestess Kyleen Il'dinare
    .goto Azuremyst Isle,47.131,70.289
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .accept 9523 >>Aceite Relíquia É Coisa para se Guardar debaixo de Sete Chaves
    .target Archaeologist Adamant Ironheart
step
    #label LeavesTree
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
	>>Saqueie um |cRXP_LOOT_Árvore Oca|r no chão
    >>Saqueie |cRXP_LOOT_Piles of Leaves|r no chão
    .complete 9530,1 --Collect Hollowed Out Tree (x1)
    .complete 9530,2 --Collect Pile of Leaves (x5)
step
    #loop
    .goto Azuremyst Isle,51.5,66.0,0
    .goto Azuremyst Isle,40.0,69.2,0
    .goto Azuremyst Isle,51.5,66.0,50,0
    .goto Azuremyst Isle,49.2,61.9,50,0
    .goto Azuremyst Isle,40.0,69.2,50,0
    >>Mate |cRXP_ENEMY_Root Trappers|r. Saqueie-os para obter |cRXP_LOOT_Vines|r
    >>Mate |cRXP_ENEMY_Moongraze Stags|r. Saqueie-os para obter |cRXP_LOOT_Moongraze Stag Tenderloins|r
    >>|cRXP_WARN_NOTA: Em breve você treinará e aumentará de nível|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Costa Negra depois. Você precisará de 6 |cRXP_LOOT_Lombo de Cervo Pastoluna|r para a missão agora e 9 para depois. NÃO venda-os|r .complete 9463,1 -- Root Trapper (6)
    .mob +Root Trapper
    .collect 23676,6,9454,1 -- Moongraze Stag Tenderloin (6)
    .mob +Moongraze Stag
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9530 >>Entregue Planta Infalível
    .accept 9531 >>Aceite Debaixo do Pé de Árvore
    .target Admiral Odesyus
step
    #label level8
	.xp 8-950 >>Farme até estar a 950xp do nível 8 (3550/4500)
    >>|cRXP_WARN_Tente terminar perto de Vigia Azul|r
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acteon|r
	.accept 9454 >>Aceite A Grande Caçada de Pastolunas
    .turnin 9454 >>Entregue A Grande Caçada de Pastolunas
    .accept 10324 >>Aceite A Grande Caçada de Pastolunas
    .target Acteon
step
    #completewith TenderloinRecipe
    +|cRXP_WARN_NÃO venda|r |T134939:0|t[Receita: Lombo Assado de Pastoluna]
    >>|cRXP_WARN_You will learn it soon once you've trained|r |T133971:0|t[Cooking]|cRXP_WARN_which is required for a quest in Darkshore later|r
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acteon|r
    .train 5116 >>Treine |T135860:0|t[Tiro de Concussão]
    .train 14260 >>Treine |T132223:0|t[Golpe do Raptor]
    .target Acteon
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anchorite Fateema|r e |cRXP_FRIENDLY_Daedal|r
    .turnin 9463 >>Entregue Propriedades Medicinais
    .target +Anchorite Fateema
    .goto Azuremyst Isle,48.390,51.770
    .accept 9473 >>Aceite Uma Alternativa à Alternativa
    .target +Daedal
    .goto Azuremyst Isle,48.392,51.482
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >>Entregue Agradeço de Coração!
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tuluun|r
    .trainer >>Treine suas magias de classe
    .target Tuluun
    .subzoneskip 3576,1
step
    .goto Azuremyst Isle,48.9,51.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dulvi|r
    .accept 10428 >>Aceite O Pescador Desaparecido
    .target Dulvi
step
    #label TenderloinRecipe
    .goto Azuremyst Isle,49.365,51.086
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cryptographer Aurren|r
    .accept 9538 >>Aceite O Aprendizado de Uma Língua
    .target Cryptographer Aurren
step
	.use 23818 >>|cRXP_WARN_Use a|r |T133741:0|t[Cartilha da Língua dos Pelursos Pinhoquieto]
    .complete 9538,1 --Stillpine Furbolg Language Primer Read
step
    .goto Azuremyst Isle,49.439,50.977
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Totem de Akira|r
    .turnin 9538 >>Entregue O Aprendizado de Uma Língua
    .accept 9539 >>Aceite O Totem de Coor
    .target Totem of Akida
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guvan|r
    .turnin 9586 >>Entregue Ajudem Tavera
    .trainer >>Treine suas magias de classe
    .target Guvan
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tullas|r
    .trainer >>Treine suas magias de classe
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Semid|r
    .trainer >>Treine suas magias de classe
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruada|r
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Ruada
    .subzoneskip 3576,1
step
	#completewith AncientRelics
    >>|cRXP_WARN_Fique de olho em uma|r |cRXP_FRIENDLY_Jovem Draenei|r
    >>|cRXP_WARN_While they are in combat, cast|r Lembre-se de conjurar[Gift of the Naaru]|cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >>Aceite Agradeço de Coração!
	.unitscan Draenei Youngling
step
	#completewith TotemofTikti
    >>Mate |cRXP_ENEMY_Infected Nightstalker Runts|r
	>>Mate |cRXP_ENEMY_Moongraze Bucks|r. Saqueie-os para obter |cRXP_LOOT_Ocultar|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
	.goto Azuremyst Isle,49.9,45.9,100,0
    .goto Azuremyst Isle,55.233,41.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Totem de Coor|r
    .turnin 9539 >>Entregue O Totem de Coor
    .accept 9540 >>Aceite O Totem de Tikti
    .target Totem of Coo
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
    .goto 1943/1,5114.300,6462.700,60,0
    .goto Azuremyst Isle,51.9,32.4,60,0
    .goto Azuremyst Isle,44.2,37.5,60,0
	>>Saqueie |cRXP_LOOT_Azure Snapdragons|r no chão
    .complete 9473,1 --Collect Azure Snapdragon Bulb (x5)
step
    #label TotemofTikti
    .goto Azuremyst Isle,64.475,39.772
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Totem de Tikti|r
    .turnin 9540 >>Entregue O Totem de Tikti
    .accept 9541 >>Aceite O Totem de Yor
    .timer 30,O Totem de Yor RP
    .target Totem of Tikti
step
    .isOnQuest 9541
    .goto Azuremyst Isle,63.64,40.09
    .aura 30430 >>|cRXP_WARN_seguir|r |cRXP_FRIENDLY_Stillpine Ancestor Tikti|r|cRXP_WARN_. He will buff you with|r |T132107:0|t[Embrace of the Serpent] |cRXP_WARN_which grants 150% increased swim speed and water breathing|r
step
    .goto Azuremyst Isle,63.2,68.0
    .use 23654 >>|cRXP_WARN_Use a|r |T134325:0|t[Rede de Pesca Draenei] |cRXP_WARN_nas|r |cRXP_PICK_Cardumes de Pargo-vermelho|r
    >>|cRXP_WARN_Se um |cRXP_ENEMY_Murloc|r aparecer fora da lagoa, nade para longe rapidamente! Lançar qualquer feitiço hostil fará você perder|r |T132107:0|t[Abraço da Serpente] |cRXP_WARN_Bônus|r
    .complete 9452,1 --Collect Red Snapper (x10)
step
    .goto Azuremyst Isle,61.052,54.248
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Diktynna|r
    .turnin 9452 >>Entregue Hum... Delicinha de Pargo-Vermelho!
    .accept 9453 >>Aceite Encontrar Acteon!
    .target Diktynna
step
    .goto Azuremyst Isle,63.116,67.880
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com O totem de Yor|r debaixo d'água
    .turnin 9541 >>Entregue O Totem de Yor
    .accept 9542 >>Aceite O Totem de Vark
    .timer 71,O Totem de Vark RP
    .target Totem of Yor
step
    .isOnQuest 9542
    .goto Azuremyst Isle,60.971,69.354
    .aura 30448 >>|cRXP_WARN_seguir|r |cRXP_FRIENDLY_Stillpine Ancestor Yor|r|cRXP_WARN_. He will buff you with|r |T132142:0|t[Shadow of the Forest] |cRXP_WARN_which grants increased movement speed and invisibility|r
step
    #completewith next
    .goto Azuremyst Isle,28.115,62.391,30 >>|cRXP_WARN_Viaje para o oeste de Azuremyst Isle|r
step
    .goto Azuremyst Isle,28.115,62.391
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Totem de Vark|r
    .turnin 9542 >>Entregue O Totem de Vark
    .accept 9544 >>Aceite A Profecia de Akira
    .target Totem of Vark
step
    .aura -30448
    +|cRXP_WARN_Clique para remover|r |T132142:0|t[Sombra da Floresta] |cRXP_WARN_Bônus|r
step
    #loop
    .goto Azuremyst Isle,27.43,63.24,0
    .goto Azuremyst Isle,27.87,66.78,0
    .goto Azuremyst Isle,25.04,67.67,0
    .goto Azuremyst Isle,27.43,63.24,70,0
    .goto Azuremyst Isle,27.87,66.78,70,0
    .goto Azuremyst Isle,25.04,67.67,70,0
	>>Mate |cRXP_ENEMY_Bristlelimb Furbolgs|r, |cRXP_ENEMY_Bristlelimb Windcallers|r e |cRXP_ENEMY_Bristlelimb Ursas|r. Saqueie-os para obter |cRXP_LOOT_Bristlelimb Keys|r
    >>Abra o |cRXP_FRIENDLY_Stillpine Captives|r
    .collect 23801,8,9544,1,-1 -- Bristlelimb Key
    .complete 9544,1 --Stillpine Captive Freed (x8)
step
    #loop
    .goto Azuremyst Isle,25.6,73.8,0
    .goto Azuremyst Isle,31.6,70.4,0
    .goto Azuremyst Isle,33.6,60.4,0
    .goto Azuremyst Isle,25.6,73.8,80,0
    .goto Azuremyst Isle,31.6,70.4,80,0
    .goto Azuremyst Isle,33.6,60.4,80,0
    >>Mate |cRXP_ENEMY_Infected Nightstalker Runts|r
	>>Mate |cRXP_ENEMY_Moongraze Bucks|r. Saqueie-os para obter |cRXP_LOOT_Ocultar|r
    .complete 9456,1 --Kill Infected Nightstalker Runt (x8)
    .mob +Infected Nightstalker Runt
	.complete 10324,1 -- Moongraze Buck Hide (6)
    .mob +Moongraze Buck
step
    #completewith next
    >>Saqueie |cRXP_LOOT_Ancient Relics|r no chão
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Mate os |cRXP_ENEMY_Wrathscale Nagas|r, os |cRXP_ENEMY_Wrathscale Myrmidons|r e os |cRXP_ENEMY_Wrathscale Sirens|r. Saque-os para obter |T134462:0|t[|cRXP_LOOT_Tabuleta Coberta de Runa|r]
    .use 23759 >>|cRXP_WARN_Use a|r |T134462:0|t[|cRXP_LOOT_Tabuleta Coberta de Runa|r] |cRXP_WARN_para iniciar a missão|r
    .collect 23759,1,9514 --Collect Rune Covered Tablet (x1)
    .accept 9514>>A Tabuleta Coberta de Runa
    .complete 9513,1 --Kill Wrathscale Myrmidon (x5)
    .mob +Wrathscale Myrmidon
    .complete 9513,2 --Kill Wrathscale Naga (x5)
    .mob +Wrathscale Naga
    .complete 9513,3 --Kill Wrathscale Siren (x5)
    .mob +Wrathscale Siren
step
    #label AncientRelics
    #loop
    .goto Azuremyst Isle,28.9,79.5,0
    .goto Azuremyst Isle,31.9,76.5,0
    .goto Azuremyst Isle,35.8,79.0,0
    .goto Azuremyst Isle,28.9,79.5,55,0
    .goto Azuremyst Isle,31.9,76.5,55,0
    .goto Azuremyst Isle,35.8,79.0,55,0
    >>Saqueie |cRXP_LOOT_Ancient Relics|r no chão
    .complete 9523,1 --Collect Ancient Relic (x8)
step
    #completewith next
    .subzone 3579 >>Nade para Traitor's Cove
step
    .isOnQuest 9531
    .goto Azuremyst Isle,18.473,84.349
    .cast 30298 >>|cRXP_WARN_Use o|r |T132288:0|t[Kit de Disfarce de Árvore] |cRXP_WARN_na bandeira dos Naga|r
    .timer 73,Debaixo do Pé de Árvore RP
    .use 23792
step
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 9531,1 -- The Traitor Uncovered
step
    +|cRXP_WARN_Clique para remover|r |T132288:0|t[Disfarce de Árvore] |cRXP_WARN_Bônus|r
    .aura -30298
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cowlen|r
    .turnin 10428 >>Entregue O Pescador Desaparecido
    .accept 9527 >>Aceite O que Restou
    .target Cowlen
step
    .goto Azuremyst Isle,13.209,89.742
	>>Mate |cRXP_ENEMY_Owlbeasts|r. Saqueie-os para obter a |cRXP_LOOT_Remains of Cowlen's Family|r
    .complete 9527,1 --Collect Remains of Cowlen's Family (x1)
    .mob Aberrant Owlbeast
    .mob Raving Owlbeast
    .mob Deranged Owlbeast
step
    .goto Azuremyst Isle,16.587,94.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cowlen|r
    .turnin 9527 >>Entregue O que Restou
    .target Cowlen
step
    #completewith next
	.hs >>Hearth to Entreposto Lazúli
    .bindlocation 3576,1
step
    .goto 1943/1,5182.200,6172.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .target Exarch Menelaous
    .turnin 9456 >>Entregue Extermínio de Espreitanoites, Ilha 2...
step
    .goto 1943/1,5129.899,6148.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daedal|r
    .target Daedal
    .turnin 9473 >>Entregue Uma Alternativa à Alternativa
step
    .goto 1943/1,5090.399,6159.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .target Arugoo of the Stillpine
    .turnin 9544 >>Entregue A Profecia de Akira
    .accept 9559 >>Aceite A Aldeia de Pinhoquieto
step
    .goto 1943/1,5073.300,6136.100
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acteon|r
    .target Acteon
    .turnin 9453 >>Entregue Encontrar Acteon!
    .turnin 10324 >>Entregue A Grande Caçada de Pastolunas
step
    .goto Azuremyst Isle,47.243,69.998
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Archaeologist Adamant Ironheart|r
    .turnin 9523 >>Turn in Precious e Fragile Things Need Special Handling
    .target Archaeologist Adamant Ironheart
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9531 >>Entregue Debaixo do Pé de Árvore
    .accept 9537 >>Aceite Gnomicídio
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9513 >>Entregue A Reconquista das Ruínas
    .target Priestess Kyleen Il'dinare
step -- to avoid long RP incase turned in in above step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9514 >>Entregue A Tabuleta Coberta de Runas
    .target Priestess Kyleen Il'dinare
step
    #completewith next
    .goto Azuremyst Isle,46.219,70.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Logan Daniel|r
    .vendor >>|cRXP_WARN_venda lixo de comerciante enquanto aguarda a encenação terminar|r << !Hunter
    >>|cRXP_BUY_Compre mais pilhas de|r |T132382:0|t[Rough Flechas] |cRXP_BUY_dele enquanto aguarda a encenação terminar|r << Hunter
    .collect 2512,1000 << Hunter --Rough Arrow (1000)
    .target Logan Daniel
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .accept 9515 >>Aceite O Senhor da Guerra Sriss'tiz
    .target Priestess Kyleen Il'dinare
step
    .goto Azuremyst Isle,50.2,70.6,40,0
    .goto Azuremyst Isle,45.7,73.2,40,0
    .goto Azuremyst Isle,50.2,70.6
    >>Fale com o |cRXP_FRIENDLY_Engenheiro "Chispa" Trincabrás|r patrulhando a praia
    >>Mate RP.Saqueie him for the |cRXP_LOOT_Traitor's Communication|r
    .complete 9537,1 --Collect Traitor's Communication (x1)
    .skipgossip 17243
    .timer 18,Comunicação do Traidor RP
    .unitscan Engineer "Spark" Overgrind
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Admiral Odesyus|r
    .turnin 9537 >>Entregue Gnomicídio
    .accept 9602 >>Aceite Livrai-os de Todo Mal...
    .target Admiral Odesyus
step << !Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >>Entre na caverna de Tides' Hollow
step << !Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >>Desça para o nível inferior
step << !Hunter
    >>Mate |cRXP_ENEMY_Warlord Sriss'tiz|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << !Hunter
    .xp 9+5360 >>Farme até 5360+/6500 XP
step << !Hunter
    #optional
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >>Saia da caverna de Tides' Hollow
    .subzoneskip 3569,1
step << !Hunter
	#completewith next
    >>|cRXP_WARN_Procure um|r |cRXP_FRIENDLY_Jovem Draenei|r
    >>|cRXP_WARN_While they are in combat, cast|r Lembre-se de conjurar[Gift of the Naaru]|cRXP_WARN_on them, then accept the quest|r
	.accept 9612 >>Aceite Agradeço de Coração!
	.unitscan Draenei Youngling
step << !Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9515 >>Entregue O Senhor da Guerra Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << !Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target "Cookie" McWeaksauce
step << !Hunter
    .cast 33277 >>|cRXP_WARN_use o|r |T134939:0|t[Recipe: Lombo Assado de Pastoluna] |cRXP_WARN_para aprender a|r |T133971:0|t[Culinária] |cRXP_WARN_receita|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9602 >>Entregue Livrai-os de Todo Mal...
    .accept 9623 >>Aceite A Maturidade
    .target Exarch Menelaous
step
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >>Entregue Agradeço de Coração!
    .target Exarch Menelaous
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tuluun|r
    .accept 9464 >>Aceite Call of Fogo - Missão - Missão
    .trainer >>Treine suas magias de classe
    .target Tuluun
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acteon|r
    .accept 9757 >>Aceite Procurar Caçadora Kella Arconyx
    .trainer >>Treine suas magias de classe
    .target Acteon
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guvan|r
    .trainer >>Treine suas magias de classe
    .target Guvan
    .subzoneskip 3576,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tullas|r
    .trainer >>Treine suas magias de classe
    .target Tullas
    .subzoneskip 3576,1
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Semid|r
    .trainer >>Treine suas magias de classe
    .target Semid
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruada|r
    .trainer >>Treine suas magias de classe
    .accept 9582 >>Aceite Prova de Força
    .target Ruada
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçadora Kella Arconyx|r
    .turnin 9757 >>Entregue Procurar Caçadora Kella Arconyx
    .accept 9591 >>Aceite Domando a Fera
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,20.7,65.1
	.use 23896 >>|cRXP_WARN_use o|r |T135139:0|t[Totem de Adestramento] |cRXP_WARN_em um |cRXP_ENEMY_Barbatisco|r na água|r
    .complete 9591,1 --Tame a Barbed Crawler
    .mob Barbed Crawler
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84
    .subzone 3569 >>Entre na caverna de Tides' Hollow
step << Hunter
    #completewith next
    .goto Azuremyst Isle,26.33,73.79,15 >>Desça para o nível inferior
step << Hunter
    >>Mate |cRXP_ENEMY_Warlord Sriss'tiz|r
    .goto Azuremyst Isle,24.98,74.10
    .complete 9515,1 -- Warlord Sriss'tiz slain 1/1
    .mob Warlord Sriss'tiz
step << Hunter
    .isOnQuest 9515
    .goto Azuremyst Isle,26.75,75.84,10 >>Saia da caverna de Tides' Hollow
    .subzoneskip 3569,1
step << Hunter
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9515 >>Entregue O Senhor da Guerra Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << Hunter
    .goto Azuremyst Isle,46.681,70.540
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Cookie" McWeaksauce|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target "Cookie" McWeaksauce
step << Hunter
    .cast 33277 >>|cRXP_WARN_use o|r |T134939:0|t[Recipe: Lombo Assado de Pastoluna] |cRXP_WARN_para aprender a|r |T133971:0|t[Culinária] |cRXP_WARN_receita|r
    .use 27686
    .itemcount 27686,1
    .skill cooking,<1,1 -- shows if cooking is >1
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçadora Kella Arconyx|r
    .turnin 9591 >>Entregue Domar a Fera - Missão
    .accept 9592 >>Aceite Domando a Fera
    .target Huntress Kella Nightbow
step
    .goto The Exodar,81.488,51.449
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torallius the Pack Handler|r
    .turnin 9623 >>Entregue A Maturidade
    .accept 9625 >>Aceite Elekk é Negócio Sério
    .target Torallius the Pack Handler
step << Hunter
    .goto Azuremyst Isle,34.56,34.04,60,0
	.goto Azuremyst Isle,41.0,30.4,50,0
    .goto Azuremyst Isle,43.6,26.2
	.use 23897 >>|cRXP_WARN_Use the|r Equipe a[Taming Totem]|cRXP_WARN_on a|r|cRXP_ENEMY_Greater Timberstrider|r
    .complete 9592,1 --Tame a Greater Timberstrider
    .mob Greater Timberstrider
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçadora Kella Arconyx|r
    .turnin 9592 >>Entregue Domar a Fera - Missão
    .accept 9593 >>Aceite Domando a Fera
    .target Huntress Kella Nightbow
step << Hunter
    .goto Azuremyst Isle,35.0,33.9,50,0
    .goto Azuremyst Isle,41.2,28.6
	.use 23898 >>|cRXP_WARN_Use the|r Equipe a[Taming Totem]|cRXP_WARN_on a|r|cRXP_ENEMY_Nightstalker|r
    .complete 9593,1 --Tame a Nightstalker
    .mob Nightstalker
step << Hunter
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçadora Kella Arconyx|r
    .turnin 9593 >>Entregue Domar a Fera - Missão
    .accept 9675 >>Aceite Treinamento de Feras
    .target Huntress Kella Nightbow
step << Hunter
    .isOnQuest 9675
    .goto Azuremyst Isle,24.6,49.0,20 >>Entre em The Exodar pela rampa traseira
step << Hunter
	.goto The Exodar,53.79,86.11,30,0
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ganaar|r
    .turnin 9675 >>Entregue Treinamento de Feras
	.trainer >>Treine as magias do seu mascote
    .target Ganaar
step << Hunter
    #completewith next
    .destroy 2512 >>Destrua todas as suas |T132382:0|t[Rough Flechas]
step << Hunter
	#completewith next
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Compre 6 pilhas de|r |T132382:0|t[Sharp Flechas]
    .collect 2515,1200
    .target Avelii
step << Hunter
	#completewith next
	.goto The Exodar,53.696,78.280,15 >>Suba pela rampa em direção a |cRXP_FRIENDLY_Handiir|r
step << Hunter
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Handiir|r
    .train 202 >>Treine Espadas de Duas Mãos
    .target Handiir
step << Hunter
	#completewith next
	.goto The Exodar,57.9,61.5,50,0
	.goto The Exodar,53.34,34.07,25,0
	.goto The Exodar,64.0,36.5,20,0
    .goto The Exodar,69.34,32.03,20,0
    .goto The Exodar,74.48,54.09,20 >>Jump down e head out of The Exodar
	-->> Alternatively you can do a logout skip on any brazier or by floating off of any ledge in the city
	--.link https://www.youtube.com/watch?v=WUWNGyQWJw8 >> |cRXP_WARN_Click here for video reference|r
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .accept 9560 >>Aceite As Bestas do Apocalipse!
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gurf|r
    .target Gurf
    .accept 9562 >>Aceite Murlocs... Por Que Aqui? E Por Que Agora?
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_High Chief Stillpine|r
    .target High Chief Stillpine
    .turnin 9559 >>Entregue A Aldeia de Pinhoquieto
step << Hunter
    .goto Azuremyst Isle,54.7,18.4
	.cast 1515 >>|cRXP_WARN_lançou|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a|r |cRXP_ENEMY_Ravager Specimen|r |cRXP_WARN_to tame it|r
    .mob Ravager Specimen
step << Shaman
	#completewith next
	>>Mate |cRXP_ENEMY_Ravager Specimens|r. Saqueie-os para obter |cRXP_LOOT_Ravager Hides|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Temper|r
    .turnin 9464 >>Entregue Call of Fogo - Missão - Missão
    .accept 9465 >>Aceite Call of Fogo - Missão - Missão
    .target Temper
step
    #loop
    .goto Azuremyst Isle,54.6,23.8,0
    .goto Azuremyst Isle,55.6,18.2,0
    .goto Azuremyst Isle,53.0,11.6,0
    .goto Azuremyst Isle,54.6,23.8,70,0
    .goto Azuremyst Isle,55.6,18.2,70,0
    .goto Azuremyst Isle,53.0,11.6,70,0
	>>Mate |cRXP_ENEMY_Ravager Specimens|r. Saqueie-os para obter |cRXP_LOOT_Ravager Hides|r
    .complete 9560,1 --Collect Ravager Hide (x8)
    .mob Ravager Specimen
step << Warrior
    #completewith next
    .goto Azuremyst Isle,54.021,9.956
    .cast 30767 >>Clique no |cRXP_ENEMY_Death Ravager|r
step << Warrior
    .goto Azuremyst Isle,54.084,9.721
    >>Mate |cRXP_ENEMY_Death Ravager|r
    .complete 9582,1 --Kill Death Ravager (x1)
    .mob Death Ravager
step
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .turnin 9560 >>Entregue As Bestas do Apocalipse!
step
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stillpine the Younger|r
    .target Stillpine the Younger
    .accept 9573 >>Aceite Chefe Umuuruu
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_High Chief Stillpine|r
    .target High Chief Stillpine
    .accept 9565 >>Aceite A Busca na Aldeia de Pinhoquieto
step
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,45.391,18.194,20 >>Entre na casa de the Stillpine Hold cave
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,47.453,16.078,10 >>Vá para a seção superior da caverna
step
	.goto Azuremyst Isle,47.394,14.121
    >>Mate |cRXP_ENEMY_Chieftain Oomooroo|r
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r. Saqueie-os para obter |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,1 --Kill Chieftain Oomooroo (x1)
    .mob +Chieftain Oomooroo
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .disablecheckbox
    .mob +Crazed Wildkin
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .disablecheckbox
    .mob +Crazed Wildkin
step
    #completewith next
    .isOnQuest 9573,9565
    .goto Azuremyst Isle,48.26,13.78,10 >>Drop down e head to the back of the cave
step
    #completewith next
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r. Saqueie-os para obter |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,50.632,11.544
    >>Clique no |cRXP_PICK_Blood Crystal|r
    >>|cRXP_WARN_Evasão ao matar |cRXP_ENEMY_Cárcaro|r, se possível, pois você precisará matá-lo em breve|r
    .turnin 9565 >>Entregue A Busca na Aldeia de Pinhoquieto
    .accept 9566 >>Aceite Cristais de Sangue
step
    #completewith next
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r. Saqueie-os para obter |cRXP_LOOT_Ritual Torch|r << Shaman
    >>|cRXP_WARN_Você completará isto em breve se não o tiver completado ainda|r
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isOnQuest 9573,9566
    .goto Azuremyst Isle,45.391,18.194,12 >>Saia da caverna
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_High Chief Stillpine|r
    .target High Chief Stillpine
    .turnin 9566 >>Entregue Cristais de Sangue
step
    #optional
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stillpine the Younger|r
    .target Stillpine the Younger
    .turnin 9573 >>Entregue Chefe Umuuruu
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurz the Revelator|r
    .target Kurz the Revelator
    .accept 9570 >>Aceite O Cárcaro do Tártaro
step
	.goto Azuremyst Isle,46.964,22.011
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Parkat Steelfur|r
    .vendor >>|cRXP_BUY_Compre um|r |T133634:0|t[Pequeno Brown Pouch]
    .target Parkat Steelfur
    .subzoneskip 3572,1
step
    .isOnQuest 9570,9573
    .goto Azuremyst Isle,45.391,18.194,20 >>Entre novamente na caverna da aldeia de Pinhoquieto
step
    #completewith next
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r. Saqueie-os para obter |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .goto Azuremyst Isle,48.26,13.78,10,0
    .goto Azuremyst Isle,49.9,12.8
	>>Mate for his |cRXP_LOOT_Ocultar|r
    .complete 9570,1 --Collect The Kurken's Hide (x1)
    .mob The Kurken
step
    .goto Azuremyst Isle,47.394,14.121
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r << !Shaman
    >>Mate |cRXP_ENEMY_Crazed Wildkins|r. Saqueie-os para obter |cRXP_LOOT_Ritual Torch|r << Shaman
    .complete 9573,2 --Kill Crazed Wildkin (x9)
    .complete 9465,1 << Shaman --Collect Ritual Torch (x1)
    .mob Crazed Wildkin
step
    .isQuestComplete 9573
    .goto Azuremyst Isle,46.904,21.160
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stillpine the Younger|r
    .target Stillpine the Younger
    .turnin 9573 >>Entregue Chefe Umuuruu
step
    .goto Azuremyst Isle,46.972,22.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurz the Revelator|r
    .target Kurz the Revelator
    .turnin 9570 >>Entregue O Cárcaro do Tártaro
    .accept 9571 >>Aceite O Couro do Cárcaro
step << Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >>Aceite Leve a Mensagem ao Seu Povo
    .target High Chief Stillpine
step
	#label end
    .goto Azuremyst Isle,44.762,23.906
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moordo|r
    .target Moordo
    .turnin 9571 >>Entregue O Couro do Cárcaro
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Temper|r
    .turnin 9465 >>Entregue Call of Fogo - Missão - Missão
    .accept 9467 >>Aceite Call of Fogo - Missão - Missão
    .target Temper
step << Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9622 >>Entregue Leve a Mensagem ao Seu Povo
    .target Exarch Menelaous
step << Shaman
    #completewith Wickerman
    .subzone 3639 >>Viaje até Silvermyst Isle
step << Shaman
    #completewith Wickerman
    .use 24336 >>Abra a |T133655:0|t[Algibeira à Prova de Fogo] para a |T135432:0|t[Ritual Tocha]
    .complete 9467,2 --Collect Ritual Torch (x1)
step << Shaman
    #completewith Wickerman
    .goto Azuremyst Isle,11.442,82.273
    .cast 30212 >>Clique no |cRXP_ENEMY_Hauteur|r
step << Shaman
    #label Wickerman
    .goto Azuremyst Isle,11.442,82.273
    >>Mate for his |cRXP_LOOT_Ashes|r
    .complete 9467,1 --Collect Hauteur's Ashes (x1)
    .mob Hauteur
step << Shaman
    #completewith next
    .cast 31613 >>|cRXP_WARN_Use a|r |T134337:0|t[Orbe do Retorno] |cRXP_WARN_para se teleportar de volta a Emberglade|r
    .use 24335
step << Shaman
    .goto Azuremyst Isle,59.534,17.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Temper|r
    .turnin 9467 >>Entregue Call of Fogo - Missão - Missão
    .accept 9468 >>Aceite Call of Fogo - Missão - Missão
    .target Temper
step
    #completewith next
    >>Mate |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r e |cRXP_ENEMY_Siltfin Hunters|r. Saqueie-os para obter |cRXP_LOOT_Grain|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Mate for |T134350:0|t[|cRXP_LOOT_Gurf's Dignity|r]
    .use 23850 >>|cRXP_WARN_Usar|r |T134350:0|t[|cRXP_LOOT_Gurf's Dignity|r] |cRXP_WARN_to start the quest|r
    >>|cRXP_ENEMY_Murgurgula|r |cRXP_WARN_patrulha ao longo da costa|r
	.collect 23850,1,9564,1 --Gurf's Dignity (1)
    .accept 9564 >>Aceite A Dignidade de Gurf
	.unitscan Murgurgula
step
    #loop
    .goto Azuremyst Isle,33.7,26.1,0
    .goto Azuremyst Isle,34.6,25.0,0
    .goto Azuremyst Isle,34.6,20.2,0
    .goto Azuremyst Isle,34.6,15.2,0
    .goto Azuremyst Isle,33.7,26.1,50,0
    .goto Azuremyst Isle,34.6,25.0,50,0
    .goto Azuremyst Isle,34.6,20.2,50,0
    .goto Azuremyst Isle,34.6,15.2,50,0
    >>Mate |cRXP_ENEMY_Siltfin Murlocs|r, |cRXP_ENEMY_Siltfin Oracles|r e |cRXP_ENEMY_Siltfin Hunters|r. Saqueie-os para obter |cRXP_LOOT_Grain|r
    .complete 9562,1 --Collect Stillpine Grain (x5)
    .mob Siltfin Murloc
    .mob Siltfin Oracle
    .mob Siltfin Hunter
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gurf|r
    .turnin 9564 >>Entregue A Dignidade de Gurf
    .turnin 9562 >>Entregue Murlocs... Por Que Aqui? E Por Que Agora?
    .target Gurf
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >>Viaje para o norte até a Ilha Névoa Rubra
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aonar|r
    .target Aonar
    .accept 9624 >>Aceite Regalo de Elekk
step
    .isOnQuest 9625
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .target Vorkhan the Elekk Herder
    .turnin 9625 >>Entregue Elekk É Negócio Sério
    .accept 9634 >>Aceite Predadores Alienígenas
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .target Vorkhan the Elekk Herder
    .accept 9634 >>Aceite Predadores Alienígenas
step
    #completewith next
	>>Saqueie |cRXP_LOOT_Sand Pears|r no chão
    >>|cRXP_WARN_Podem ser difíceis de detectar, verifique ao redor das árvores|r
    .complete 9624,1 --Collect Sand Pear (x10)
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    >>Mate |cRXP_ENEMY_Bloodmyst Hatchlings|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
step
    #loop
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
	>>Saqueie |cRXP_LOOT_Sand Pears|r no chão
    >>|cRXP_WARN_Podem ser difíceis de detectar, verifique ao redor das árvores|r
    .complete 9624,1 --Collect Sand Pear (x10)
step
    .goto Bloodmyst Isle,63.426,88.787
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aonar|r
    .target Aonar
    .turnin 9624 >>Entregue Regalo de Elekk
step
    .goto Bloodmyst Isle,63.036,87.905
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vorkhan the Elekk Herder|r
    .target Vorkhan the Elekk Herder
    .turnin 9634 >>Entregue Predadores Alienígenas
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Princess Stillpine|r
    .accept 9667 >>Aceite O Resgate da Princesa Pinhoquieto
    .target Princess Stillpine
step
    .goto Bloodmyst Isle,64.2,76.8
    >>Mate |cRXP_ENEMY_High Chief Bristlelimb|rspawns
    >>Mate |cRXP_ENEMY_High Chief Bristlelimb|r. Saqueie-o para obter |cRXP_LOOT_The High Chief's Key|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
    .unitscan High Chief Bristlelimb
step
    .goto Bloodmyst Isle,68.257,80.999
    >>Clique em |cRXP_PICK_Princess Stillpine's Cage|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >>Aceite A Maratona de Kessel
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Viaje para o norte até Vigília Rubra
    >>Siga a seta atentamente! Certifique-se de não atravessar a ponte, caso contrário você será desmontado!
    >>Não enfrente nenhum inimigo, não ataque nem lance magias, pois isso fará você ser desmontado! Você também será desmontado se ficar atordoado por um ataque pelas costas!
    >>|cRXP_WARN_Quando chegar ao Entreposto Rubro ou se desmontar, abandone a missão "A Maratona de Kessel"|r
step
    #optional
    #completewith next
    .subzone 3584 >>Viaje até Vigília Rubra
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hospedeiro Topher Loaal|r
    .target Caregiver Topher Loaal
    .accept 9603 >>Accept Beds,Bandages,e Beyond
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stillpine Ambassador Olorg|r
    .turnin 9667 >>Entregue O Resgate da Princesa Pinhoquieto
    .target Stillpine Ambassador Olorg
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9648 >>Aceite Sem emoção, não tem graça
step
    #completewith next
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .target Laando
    .turnin 9603 >>Turn in Beds,Bandages,e Beyond
step
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .target Laando
    .fp Blood Watch>>Aprenda a rota de voo para O Entreposto Rubro
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .target Laando
    .turnin 9603 >>Turn in Beds,Bandages,e Beyond
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarca Admetius|r
    .accept 9693 >>Aceite O que Argus significa para mim
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .accept 9581 >>Aceite Aprender com os cristais
    .target Harbinger Mikolaas
step
    .solo
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9693 >>Entregue O que Argus significa para mim
step
    .group
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9693 >>Entregue O que Argus significa para mim
    .accept 9694 >>Aceite O Entreposto Rubro
step
    #optional
    #sticky
    .abandon 9663 >>Abandone **A Maratona de Kessel**
step
    .group 2
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mate |cRXP_ENEMY_Espião Falconélius|r
    >>|cRXP_WARN_Tenha cuidado, pois |cRXP_ENEMY_Sunhawk Spies|r são muito fortes neste nível. Engaje apenas um por vez|r
    >>|cRXP_WARN_NÃO tente esta missão se você estiver sozinho|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .isQuestComplete 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9694 >>Entregue O Entreposto Rubro
step
    #completewith ImpactSiteCrystalSample
    .xp 12
step
	#completewith next
	>>Saqueie um |cRXP_LOOT_Cogumelo de Sangue|r no chão
    >>Eles aparecem por toda a Ilha Névoa Rubra
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Mate um |cRXP_ENEMY_Estridente Escamódio|r. Saqueie-o para obter o |cRXP_LOOT_Cornofétido Aquático|r
    >>|cRXP_WARN_Você também pode saquear o |cRXP_LOOT_Cornofétido Aquático|r debaixo d’água|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #label ImpactSiteCrystalSample
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>Use a [Picareta de Mineração de Cristal] na |cRXP_PICK_Amostra de Cristal do Local de Impacto|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    .goto Bloodmyst Isle,57.5,86.5,0
    .goto Bloodmyst Isle,63.5,83.8,0
    .goto Bloodmyst Isle,72.7,80.9,0
	.goto Bloodmyst Isle,60.1,91.6,60,0
    .goto Bloodmyst Isle,57.5,86.5,60,0
    .goto Bloodmyst Isle,59.7,85.8,60,0
    .goto Bloodmyst Isle,63.5,83.8,60,0
    .goto Bloodmyst Isle,67.7,87.6,60,0
    .goto Bloodmyst Isle,72.7,80.9,60,0
    .goto Bloodmyst Isle,64.2,76.8,60,0 -- furbolgs
    .goto Bloodmyst Isle,64.2,76.8,0-- furbolgs
    .xp 12
    .mob Bloodmyst Hatchling
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >>Aceite A Maratona de Kessel
    .target Kessel
step
    #completewith next
    .goto Azuremyst Isle,42.18,2.88,20,0
    .goto Azuremyst Isle,43.23,11.58,70,0
    .goto Azuremyst Isle,50.99,13.09,70,0
    .goto Azuremyst Isle,49.40,23.09,80,0
    .goto Azuremyst Isle,46.685,20.617
	.subzone 3572 >>|cRXP_WARN_NOTA: NÃO engaje nenhum inimigo, não ataque e não lance nenhuma magia, pois isto o desmontará! Você também será desmontado se atordoado por um ataque por trás!|r
    *|cRXP_WARN_Seguir a estrada para o sul|r
step << !Shaman
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >>Aceite Leve a Mensagem ao Seu Povo
    .target High Chief Stillpine
step
    .goto Azuremyst Isle,49.25,49.53
    .isOnQuest 9663
    .subzone 3576 >>|cRXP_WARN_Continue seguindo a estrada para o sul até Azure Vigiar|r
step << Mage
    .goto Azuremyst Isle,49.868,49.949
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Semid|r
    .trainer >>Treine suas magias de classe
    .target Semid
    .subzoneskip 3576,1
    .xp <12,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >>Entregue Prova de Força
    .accept 10350 >>Aceite Behomat
    .target Ruada
    .subzoneskip 3576,1
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruada|r
    .trainer >>Treine suas magias de classe
    .target Ruada
    .subzoneskip 3576,1
    .xp <12,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acteon|r
    .trainer >>Treine suas magias de classe
    .target Acteon
    .subzoneskip 3576,1
    .xp <12,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guvan|r
    .trainer >>Treine suas magias de classe
    .target Guvan
    .subzoneskip 3576,1
    .xp <12,1
step << Paladin
    .goto Azuremyst Isle,48.356,49.558
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tullas|r
    .trainer >>Treine suas magias de classe
    .target Tullas
    .subzoneskip 3576,1
    .xp <12,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tuluun|r
    .turnin 9468 >>Entregue Call of Fogo - Missão - Missão
    .accept 9461 >>Aceite Call of Fogo - Missão - Missão
    .target Tuluun
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tuluun|r
    .trainer >>Treine suas magias de classe
    .target Tuluun
    .subzoneskip 3576,1
    .xp <12,1
step
    #optional
    .use 23910 >>|cRXP_WARN_Use o|r |T133473:0|t[Comunicado dos Elfos Sangrentos] |cRXP_WARN_para iniciar a missão|r
    .accept 9616 >>Aceite Bandoleiros!
    .itemcount 23910,1
step
    #optional
    .isOnQuest 9616
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9616 >>Entregue Bandoleiros!
    .target Exarch Menelaous
step
    #optional
    .isOnQuest 9612
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9612 >>Entregue Agradeço de Coração!
    .target Exarch Menelaous
step
    .goto Azuremyst Isle,48.391,51.771
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anchorite Fateema|r
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
    .target Anchorite Fateema
step
    .goto 1943/1,5143.700,6130.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Otonambusi|r
    >>|cRXP_BUY_Compre um|r [Simple Wood] |cRXP_BUY_and a|r [Flint and Tinder] |cRXP_BUY_from him|r
    >>|cRXP_BUY_Compre um|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_também dele se necessário|r << !Warrior !Shaman !Paladin -- saving money for weps soon
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Otonambusi
    .skill cooking,<1,1 -- shows if cooking is >1
step << !Shaman
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9622 >>Entregue Leve a Mensagem ao Seu Povo
    .target Exarch Menelaous
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >>Desça para dentro de The Exodar
step
    .goto 1947/1,5903.899,6593.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caregiver Breel|r
    .target Caregiver Breel
    .home >>Defina sua Pedra de Retorno em The Exodar
    .bindlocation 3557
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Exodar|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Exodar|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Shaman/Warrior
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dela ou procure no Leilão por uma arma melhor|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman/Warrior
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dela|r
    .goto The Exodar,73.625,84.814
    .collect 854,1 --Quarter Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
    .money <0.2871
step << Shaman/Warrior
    #optional
    #sticky
    .equip 16,854 >>|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
step << Paladin
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r |cRXP_BUY_dele ou procure no Leilão por uma arma melhor|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compre um|r |T135350:0|t[Espadão] |cRXP_BUY_dele|r
    .collect 1198,1 -- Claymore (1)
    .money <0.3543
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Ven
step << Paladin
    #ssf
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compre uma|r |T133477:0|t[Maça Gigante] |cRXP_BUY_dela|r
    .goto The Exodar,73.625,84.814
    .collect 1197,1 -- Giant Mace
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
    #optional
    #sticky
    .equip 16,1197 >>|cRXP_WARN_Equipe a|r |T133477:0|t[Maça Gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .itemcount 1198,<1 -- skips if had money to buy Claymore + traiing 2h swords
step << Paladin
	#completewith next
	.goto The Exodar,53.696,78.280,15 >>Suba pela rampa em direção a |cRXP_FRIENDLY_Handiir|r
step << Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Handiir|r
    .train 202 >>Treine Espadas de Duas Mãos
    .target Handiir
step << Paladin
    #optional
    #sticky
    .equip 16,1198 >>|cRXP_WARN_Equipe o|r |T135350:0|t[Espadão]
    .use 1198
    .itemcount 1198,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Behomat|r no andar superior
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Entregue em Behomat
    .target Behomat
step << Shaman
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Profeta Velen|r
    .target Prophet Velen
    .turnin 9461 >>Entregue Call of Fogo - Missão - Missão
    .accept 9555 >>Aceite Call of Fogo - Missão - Missão
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>Vá para o |cRXP_FRIENDLY_Clarividente Nobambo|r subindo a rampa
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarividente Nobambo|r
    >>|cRXP_FRIENDLY_Clarividente Nobambo|r |cRXP_WARN_patrulha levemente|r
    .target Farseer Nobundo
    .turnin 9555 >>Entregue Call of Fogo - Missão - Missão
step
    #completewith DarkshoreBoat
    .goto 1947/1,6179.200,6216.100,20 >>Saia de Exodar
    .zoneskip The Exodar,1
step
    #completewith DarkshoreBoat
    #label Cooking1
    #optional
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #completewith DarkshoreBoat
    #requires Cooking1
    #optional
    +|T133971:0|t[Cozinheiro] |cRXP_WARN_o|r |cRXP_LOOT_Lombo de Cervo Pastoluna|r |cRXP_WARN_em|r |T134016:0|t[Lombo Assado de Pastoluna]
    .zoneskip Darkshore
    .itemcount 23676,1 --Moongraze Stag Tenderloin (1+)
    .skill cooking,10,1 -- shows if cooking is <10
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>Pegue o barco para Costa Negra
    >>|cRXP_WARN_Level your|r Evolua sua[First Aid]|cRXP_WARN_while waiting for the boat|r
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>Pegue o barco para Costa Negra
]])
