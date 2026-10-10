if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#name 1-12 Azuremyst Isle
#subgroup RestedXP Aliança 1-20
#defaultfor Draenei
#next 12-20 Bloodmyst (Draenei)

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
    .turnin 9283 >>Entregue O Resgate dos Sobreviventes
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
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    >>Fique parado em cima de fogueiras próximas para receber dano adicional se necessário
step
    .goto Azuremyst Isle,79.139,46.536
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Botanist Taerix|r
    .turnin 9294 >>Entregue A Descontaminação do Lago
    .target Botanist Taerix
step
	#completewith SpareParts
	.goto Azuremyst Isle,79.987,47.117
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aurok|r
	.vendor >>Lixo Comerciante
    .target Aurok
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
    #label SpareParts
    .goto Azuremyst Isle,79.419,51.235
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Technician Zhanaa|r
    .turnin 9305 >>Entregue Peças Sobressalentes
    .target Technician Zhanaa
step
    .goto Azuremyst Isle,79.486,51.620
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicator Aldar|r
    .turnin 9303 >>Entregue Inoculação
    .accept 9309 >>Aceite O Batedor Desaparecido
    .target Vindicator Aldar
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
    .xp 6-1450 >>Farme |cRXP_ENEMY_Batedores Elfos Sangrentos|r até estar 1450 XP longe do nível 6 (1350/2800). Deixe sua vida baixar nos últimos inimigos, vamos fazer skip de morte depois
    .mob Blood Elf Scout
step
    #optional
    .isQuestTurnedIn 9283
    .goto Azuremyst Isle,69.420,64.608
    .xp 6-1230 >>Farme |cRXP_ENEMY_Batedores Elfos Sangrentos|r até estar 1230 XP longe do nível 6 (1570/2800). Deixe sua vida baixar nos últimos inimigos, vamos fazer skip de morte depois
    .mob Blood Elf Scout
step
	#completewith BloodElfSpy
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
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
    .goto Azuremyst Isle,56.1,39.3
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    >>|cRXP_WARN_Certifique-se de morrer perto da lagoa próxima ao lado da montanha|r
step
    #completewith NightstalkerCleanUp
    .subzone 3576 >>Viaje até Vigília Rubra
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
    >>Mate |cRXP_ENEMY_Moongraze Stags|r. Saqueie-os para obter |cRXP_LOOT_Tenderloins|r
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
    >>Mate |cRXP_ENEMY_Moongraze Stags|r. Saqueie-os para obter |cRXP_LOOT_Tenderloins|r
    .complete 9463,1 -- Root Trapper (6)
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
	#completewith next
    .goto Azuremyst Isle,49.780,51.938
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    >>|cRXP_WARN_Pule este passo se você já está próximo a Azure Vigiar|r
    .subzoneskip 3576
step
	.goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acteon|r
	.accept 9454 >>Aceite A Grande Caçada de Pastolunas
    .turnin 9454 >>Entregue A Grande Caçada de Pastolunas
    .accept 10324 >>Aceite A Grande Caçada de Pastolunas
    .target Acteon
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
    >>|cRXP_WARN_Procure um|r |cRXP_FRIENDLY_Jovem Draenei|r
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
    #completewith next
    .goto Azuremyst Isle,54.531,40.493,10 >>|cRXP_WARN_Cuidadosamente desça pelo lado da montanha aqui|r
step
    #loop
    .goto Azuremyst Isle,51.9,32.4,0
    .goto Azuremyst Isle,44.2,37.5,0
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
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
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
step
    .goto Azuremyst Isle,49.9,51.9
    .xp 9+3070 >>Triture até 3070+/6500 XP
step
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acteon|r
    .turnin 9453 >>Entregue Encontrar Acteon!
    .turnin 10324 >>Entregue A Grande Caçada de Pastolunas
    .target Acteon
step
    .goto Azuremyst Isle,49.367,51.082
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arugoo of the Stillpine|r
    .turnin 9544 >>Entregue A Profecia de Akira
    .accept 9559 >>Aceite A Aldeia de Pinhoquieto
    .target Arugoo of the Stillpine
step
    .goto Azuremyst Isle,48.392,51.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daedal|r
    .turnin 9473 >>Entregue Uma Alternativa à Alternativa
    .target Daedal
step
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9456 >>Entregue Extermínio de Espreitanoites, Ilha 2...
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
    #completewith next
	.hs >>Hearth to Entreposto Lazúli
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
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >>Viaje para o norte até a Ilha Névoa Rubra
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#name 12-20 Bloodmyst (Draenei)
#subgroup RestedXP Aliança 1-20
#defaultfor Draenei
#next 20-21 Costa Negra (Draenei); 21-23 Vale Gris (Draenei)

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
    .xp 12-2000 >>|cRXP_WARN_Triture até estar 2000 XP longe do nível 12 (6800/8800)|r
    >>Mate |cRXP_ENEMY_Bloodmyst Hatchlings|r
	>>Saqueie |cRXP_LOOT_Sand Pears|r no chão
    >>|cRXP_WARN_Quando você alcançar a XP necessária, continue com o guia|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
    .disablecheckbox
    .complete 9624,1 --Collect Sand Pear (x10)
    .disablecheckbox
step
	#completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hospedeiro Topher Loaal|r
    .target Caregiver Topher Loaal
    .accept 9603 >>Accept Beds,Bandages,e Beyond
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hospedeiro Topher Loaal|r
    .target Caregiver Topher Loaal
    >>|cRXP_BUY_Buy up to 40|r Compre até 20[Longjaw Mud Snapper]|cRXP_BUY_from him|r << Warrior
    >>|cRXP_BUY_Compre até 40|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Compre até 40|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T133918:0|t[Pargo-da-lama Bocalonga] |cRXP_BUY_dele|r << Paladin/Shaman
    .collect 1179,35 << !Warrior !Rogue --Ice Cold Milk (35)
    .collect 4592,35 --Longjaw Mud Snapper (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hospedeiro Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >>Defina sua Pedra de Regresso para O Entreposto Rubro
    .subzoneskip 3584,1
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
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9693 >>Entregue O que Argus significa para mim
    .accept 9694 >>Aceite O Entreposto Rubro
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mate |cRXP_ENEMY_Espião Falconélius|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Sunhawk Spies|r são muito fortes neste nível|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9694 >>Entregue O Entreposto Rubro
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >>Aceite Pegar e soltar
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
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>Use a [Picareta de Mineração de Cristal] na |cRXP_PICK_Amostra de Cristal do Local de Impacto|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
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
    .xp 12-2000 >>|cRXP_WARN_Triture até estar 2000 XP longe do nível 12 (6800/8800)|r
    >>Mate |cRXP_ENEMY_Bloodmyst Hatchlings|r
	>>Saqueie |cRXP_LOOT_Sand Pears|r no chão
    >>|cRXP_WARN_Quando você alcançar a XP necessária, continue com o guia|r
    .complete 9634,1 --Kill Bloodmyst Hatchling (x10)
    .mob Bloodmyst Hatchling
    .disablecheckbox
    .complete 9624,1 --Collect Sand Pear (x10)
    .disablecheckbox
step
	#completewith grind3800
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
	#label grind3800
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
	.xp 12+3880 >>Triture até ter 3880 XP no nível 12 (3880+/9800)
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
    *|cRXP_WARN_Esta também é uma missão com tempo! Você tem 15 minutos para completá-la e entregá-la|r
    *|cRXP_WARN_Siga a estrada para o sul para chegar ao |cRXP_FRIENDLY_Chefe Supremo Pinhoquieto|r com segurança|r
step
    .goto Azuremyst Isle,46.685,20.617
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_High Chief Stillpine|r
    .accept 9622 >>Aceite Leve a Mensagem ao Seu Povo << !Shaman
    .complete 9663,1 --High Chief Stillpine Warned
    .target High Chief Stillpine
step
    .goto Azuremyst Isle,44.627,23.481
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gurf|r
    .turnin 9564 >>Entregue A Dignidade de Gurf
    .turnin 9562 >>Entregue Murlocs... Por Que Aqui? E Por Que Agora?
    .target Gurf
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
step << Warrior
    .goto Azuremyst Isle,50.023,50.515
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruada|r
    .turnin 9582 >>Entregue Prova de Força
    .accept 10350 >>Aceite Behomat
    .trainer >>Treine suas magias de classe
    .target Ruada
    .subzoneskip 3576,1
step << Hunter
    .goto Azuremyst Isle,49.780,51.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Acteon|r
    .trainer >>Treine suas magias de classe
    .target Acteon
    .subzoneskip 3576,1
step << Priest
    .goto Azuremyst Isle,48.603,49.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guvan|r
    .trainer >>Treine suas magias de classe
    .target Guvan
    .subzoneskip 3576,1
step << Shaman
    .goto Azuremyst Isle,48.053,50.419
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tuluun|r
    .turnin 9468 >>Entregue Call of Fogo - Missão - Missão
    .accept 9461 >>Aceite Call of Fogo - Missão - Missão
    .trainer >>Treine suas magias de classe
    .target Tuluun
    .subzoneskip 3576,1
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
    .goto Azuremyst Isle,47.110,50.603
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarch Menelaous|r
    .turnin 9622 >>Entregue Leve a Mensagem ao Seu Povo << !Shaman
    .complete 9663,2 --Exarch Menelaous Warned
    .target Exarch Menelaous
step
    #completewith next
    .isOnQuest 9663
    .subzone 3573 >>|cRXP_WARN_Continue seguindo a estrada para o sul até o Pouso de Odesyus|r
step
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Admiral Odesyus|r
    .complete 9663,3 --Admiral Odesyus Warned
    .target Admiral Odesyus
step
    .goto Azuremyst Isle,47.131,70.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9515 >>Entregue O Senhor da Guerra Sriss'tiz
    .target Priestess Kyleen Il'dinare
step << Paladin
    #completewith next
    .goto Azuremyst Isle,24.6,49.0,20,0
    .goto The Exodar,42.90,67.67,15 >>Entre em The Exodar pela rampa traseira
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .target Jol
    .accept 9598 >>Aceite Redenção
    .turnin 9598 >>Entregue Redenção
    .accept 9600 >>Aceite Redenção
	.trainer >>Treine suas magias de classe
step
    .isOnQuest 9581,9663
	.hs >>Use a Pedra de Regresso para O Entreposto Rubro
    .cooldown item,6948,>2,1
step
	.isOnQuest 9581,9663
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >>Voe para o Entreposto Rubro
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .accept 9567 >>Aceite Conhece o teu inimigo
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .turnin 9581 >>Entregue Aprender com os cristais
    .accept 9620 >>Aceite A equipe de levantamento desaparecida
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kessel|r
    .turnin 9663 >>Abandone **A Maratona de Kessel**
    .accept 9666 >>Aceite Declaração de Poder
    .target Kessel
step
    .goto Bloodmyst Isle,68.257,80.999
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Princess Stillpine|r
    .accept 9667 >>Aceite O Resgate da Princesa Pinhoquieto
    .target Princess Stillpine
step
	#completewith next
	>>Saqueie um |cRXP_LOOT_Polísporo Ruinoso|r no chão
    >>Parece um pequeno cogumelo azul encontrado ao redor das ruínas Naga
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    .goto Bloodmyst Isle,67.35,67.99,40,0
    .goto Bloodmyst Isle,68.83,68.09
	>>Mate |cRXP_ENEMY_Lord Xiz|r
    .use 24084 >>|cRXP_WARN_Use|r |T132484:0|t[Estandarte Draenei] |cRXP_WARN_no cadáver dele|r
    .complete 9666,1 -- Kill Lord Xiz (1)
    .mob +Lord Xiz
    .complete 9666,2 --Declaration of Power (x1)
step
    #loop
    .goto Bloodmyst Isle,67.91,66.45,0
    .goto Bloodmyst Isle,66.51,69.90,0
    .goto Bloodmyst Isle,68.58,65.18,0
    .goto Bloodmyst Isle,68.71,71.59,0
    .goto Bloodmyst Isle,67.91,66.45,8,0
    .goto Bloodmyst Isle,66.51,69.90,8,0
    .goto Bloodmyst Isle,68.58,65.18,8,0
    .goto Bloodmyst Isle,68.71,71.59,8,0
	>>Saqueie um |cRXP_LOOT_Polísporo Ruinoso|r no chão
    >>Parece um pequeno cogumelo azul encontrado ao redor das ruínas Naga
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step << Paladin
    #completewith next
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>|cRXP_WARN_Use o|r |T133439:0|t[Símbolo da Vida] |cRXP_WARN_no|r |cRXP_FRIENDLY_Xamã Pelurso Jovem|r
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
    .target Young Furbolg Shaman
step
    .goto Bloodmyst Isle,64.2,76.8
    >>Mate |cRXP_ENEMY_High Chief Bristlelimb|rspawns
    >>Mate |cRXP_ENEMY_High Chief Bristlelimb|r. Saqueie-o para obter |cRXP_LOOT_The High Chief's Key|r
    .collect 24099,1,9667,1 --Collect The High Chief's Key (x1)
    .mob Bristlelimb Warrior
    .mob Bristlelimb Shaman
    .unitscan High Chief Bristlelimb
step << Paladin
    .goto Bloodmyst Isle,65.291,77.547
	.use 6866 >>|cRXP_WARN_Use o|r |T133439:0|t[Símbolo da Vida] |cRXP_WARN_no|r |cRXP_FRIENDLY_Xamã Pelurso Jovem|r
    .complete 9600,1 --Young Furbolg Shaman Resurrected (1)
    .target Young Furbolg Shaman
step
    .goto Bloodmyst Isle,68.257,80.999
    >>Clique em |cRXP_PICK_Princess Stillpine's Cage|r
    .complete 9667,1 --Free Saving Princess Stillpine
    .itemcount 24099,1
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kessel|r
    .turnin 9666 >>Entregue Declaração de Poder
    .accept 9668 >>Aceite Apresentar-se ao Exarca Admetius
    .target Kessel
step
	#completewith next
	.use 23995 >>Use a [Etiquetadora de Murloc] em |cRXP_ENEMY_Batedor Trevareia|r
    >>NÃO mate o |cRXP_ENEMY_Batedor Trevareia|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	>>Mate |cRXP_ENEMY_Cruelo|r. Saqueie-o para obter o [|cRXP_LOOT_Pingente de Cristal Vermelho|r]
    .use 23870 >>Use o [|cRXP_LOOT_Pingente de Cristal Vermelho|r] para iniciar a missão
    >>|cRXP_ENEMY_Cruelo|r patrulha ao longo da costa
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >>Aceite O colar de Cruelo
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
	.use 23995 >>Use a [Etiquetadora de Murloc] em |cRXP_ENEMY_Batedor Trevareia|r
    >>NÃO mate o |cRXP_ENEMY_Batedor Trevareia|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
	#completewith FelConeFungus
	>>Saqueie um |cRXP_LOOT_Cogumelo de Sangue|r no chão
    >>Eles aparecem por toda a Ilha Névoa Rubra
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>Saqueie um |cRXP_LOOT_Fungo Conífero Vil|r no chão
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>Mate |cRXP_ENEMY_Tzerak|r. Saqueie-o para obter [|cRXP_LOOT_Placa de Armadura do Tzerak|r]
    .use 23900 >>|cRXP_WARN_Use|r |T134518:0|t[|cRXP_LOOT_Placa de Armadura de Tzerak|r] |cRXP_WARN_para iniciar a missão|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>Aceite Os sinais da Legião
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>Clique no altar wall.Saqueie it for the |cRXP_LOOT_Nazzivus Monument Glyph|r
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Mate |cRXP_ENEMY_Tzerak|r. Saqueie-o para obter [|cRXP_LOOT_Placa de Armadura do Tzerak|r]
    .use 23900 >>|cRXP_WARN_Use|r |T134518:0|t[|cRXP_LOOT_Placa de Armadura de Tzerak|r] |cRXP_WARN_para iniciar a missão|r
    >>Se você não o vir patrulhando pelos acampamentos, aguarde ele surgir no selo roxo no chão ao sul. Pode levar de 3 a 6 minutos para ele aparecer
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>Aceite Os sinais da Legião
    .unitscan Tzerak
step
    .isOnQuest 9594
    #label SatyrFelsworn
    #loop
    .goto Bloodmyst Isle,36.23,80.94,0
    .goto Bloodmyst Isle,37.67,76.66,0
    .goto Bloodmyst Isle,40.49,78.92,0
    .goto Bloodmyst Isle,38.72,73.66,0
    .goto Bloodmyst Isle,33.68,72.42,0
    .goto Bloodmyst Isle,36.23,80.94,70,0
    .goto Bloodmyst Isle,37.67,76.66,70,0
    .goto Bloodmyst Isle,40.49,78.92,70,0
    .goto Bloodmyst Isle,38.72,73.66,70,0
    .goto Bloodmyst Isle,33.68,72.42,70,0
	>>Mate |cRXP_ENEMY_Sátiros Nazzivus|r e |cRXP_ENEMY_Guerreiros Trevareia|r
    >>|cRXP_WARN_Você pode precisar matar |cRXP_ENEMY_Ladinos Nazzivus|r se não estiver vendo |cRXP_ENEMY_Sátiros|r ou |cRXP_ENEMY_Trevareia|r para fazê-los reaparecer|r
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .mob +Nazzivus Satyr
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
    .mob +Nazzivus Felsworn
step
    #label FelConeFungus
    .goto Bloodmyst Isle,36.9,81.7,0
    .goto Bloodmyst Isle,32.2,81.3,0
    .goto Bloodmyst Isle,37.4,76.8,0
    .goto Bloodmyst Isle,44.5,82.5,0
    .goto Bloodmyst Isle,44.6,86.0,0
    .goto Bloodmyst Isle,36.9,81.7,30,0
    .goto Bloodmyst Isle,32.2,81.3,30,0
    .goto Bloodmyst Isle,37.4,76.8,30,0
    .goto Bloodmyst Isle,44.5,82.5,30,0
    .goto Bloodmyst Isle,44.6,86.0,30,0
	>>Saqueie um |cRXP_LOOT_Fungo Conífero Vil|r no chão
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #loop
    .goto Bloodmyst Isle,38.9,79.4,0
    .goto Bloodmyst Isle,42.1,71.7,0
    .goto Bloodmyst Isle,46.8,77.0,0
    .goto Bloodmyst Isle,45.7,86.9,0
    .goto Bloodmyst Isle,49.7,86.2,0
    .goto Bloodmyst Isle,53.5,75.7,0
    .goto Bloodmyst Isle,48.5,66.7,0
    .goto Bloodmyst Isle,54.1,67.6,0
    .goto Bloodmyst Isle,58.9,61.8,0
    .goto Bloodmyst Isle,38.9,79.4,15,0
    .goto Bloodmyst Isle,42.1,71.7,15,0
    .goto Bloodmyst Isle,46.8,77.0,15,0
    .goto Bloodmyst Isle,45.7,86.9,15,0
    .goto Bloodmyst Isle,49.7,86.2,15,0
    .goto Bloodmyst Isle,53.5,75.7,15,0
    .goto Bloodmyst Isle,48.5,66.7,15,0
    .goto Bloodmyst Isle,54.1,67.6,15,0
    .goto Bloodmyst Isle,58.9,61.8,15,0
	>>Saqueie um |cRXP_LOOT_Cogumelo de Sangue|r no chão
    >>Eles aparecem por toda a Ilha Névoa Rubra
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #optional
    .isOnQuest 9648,9594,9567,9629
	.hs >>Use a Pedra de Regresso para O Entreposto Rubro
    .cooldown item,6948,>2,1
step
    #completewith next
    .subzone 3584 >>Viaje até Vigília Rubra
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >>Entregue O colar de Cruelo
    .turnin 9629 >>Entregue Pegar e soltar
    .accept 9574 >>Aceite Vítimas da corrupção
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>Mate |cRXP_ENEMY_Arvorosos Corrompidos|r. Saqueie-os para obter |cRXP_LOOT_Casca Cristalizada|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >>Entregue Vítimas da corrupção
    .target Morae
step
	.goto Bloodmyst Isle,53.319,56.672
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beega|r
    .target Beega
	.vendor >>|cRXP_WARN_Comerciante e Conserto|r << !Hunter
	.vendor >>|cRXP_BUY_Compre uma|r |T134410:0|t[Aljava Média] |cRXP_WARN_e reabasteça|r |T132382:0|t[Flechas Afiadas] << Hunter
    .collect 11362,1 << Hunter
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 9646 >>Aceite Procura-Se: Garra da Morte
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .turnin 9594 >>Entregue Sinais da Legião
    .turnin 9567 >>Entregue Conhece o teu inimigo
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .turnin 9567 >>Entregue Conhece o teu inimigo
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.156,55.953
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stillpine Ambassador Olorg|r
    .turnin 9667 >>Entregue O Resgate da Princesa Pinhoquieto
    .target Stillpine Ambassador Olorg
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
	.turnin 9641 >>Entregue Estilhaços de cristal irradiado
    .accept 9779 >>Aceite Interceptar a mensagem
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
    .accept 9779 >>Aceite Interceptar a mensagem
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .accept 9580 >>Aceite Necessidades ursinas
    .accept 9643 >>Aceite Ô trepadeira danada!
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >>Entregue Sem emoção, não tem graça
    .target Maatparm
step
    #completewith next
    .subzone 3591 >>Viaje até as Ruínas de Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cartógrafo Draenei morto|r
    .turnin 9620 >>Entregue A equipe de levantamento desaparecida
    .accept 9628 >>Aceite Recuperação de dados
    .target Draenei Cartographer
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>Mate |cRXP_ENEMY_Espoliador Escamódio|r e |cRXP_ENEMY_Feiticeira Escamódia|r. Saqueie-os para obter |cRXP_LOOT_Cristal de Dados da Expedição|r
    .complete 9628,1 --Collect Survey Data Crystal (x1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .turnin 9628 >>Entregue Recuperação de dados
    .accept 9584 >>Aceite A segunda amostra
    .turnin 9668 >>Entregue Apresentar-se ao Exarca Admetius
    .target Harbinger Mikolaas
step
	#completewith GrindCheck
	>>Mate |cRXP_ENEMY_Espiões Falconélius|r. Saqueie-os para obter a |cRXP_LOOT_Missiva do Falconélius|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>Use a [Picareta de Mineração de Cristais] no |cRXP_PICK_Cristal Alterado da Névoa Rubra|r
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    #label GrindCheck
	.goto Bloodmyst Isle,48.1,47.6
    .xp 15-1200 >>Triture até estar 1200 XP longe do nível 15 (11100/12300)
    .mob Sunhawk Spy
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mate |cRXP_ENEMY_Espiões Falconélius|r. Saqueie-os para obter a |cRXP_LOOT_Missiva do Falconélius|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
	#completewith Audience
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messenger Hermesius|r
    >>|cRXP_FRIENDLY_Mensageiro Hermesius|r |cRXP_WARN_patrulha no Entreposto Rubro|r
    .accept 9671 >>Aceite Entrega Urgente
    .turnin 9671 >>Entregue Entrega Urgente
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .turnin 9584 >>Entregue A segunda amostra
    .accept 9585 >>Aceite A última amostra
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9779 >>Entregue Interceptar a mensagem
    .accept 9696 >>Aceite Traduttore, traditore
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
	.turnin 9641 >>Entregue Estilhaços de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Percepção] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    #label Audience
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Interrogadora Elysia|r
    .target Interrogator Elysia
    .turnin 9696 >>Entregue Traduttore, traditore
    .accept 9698 >>Aceite Audiência com o profeta
step
    #loop
    .goto Bloodmyst Isle,54.6,59.8,0
    .goto Bloodmyst Isle,53.6,54.4,40,0
    .goto Bloodmyst Isle,54.6,59.8,20,0
    .goto Bloodmyst Isle,55.6,54.4,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messenger Hermesius|r
    >>|cRXP_FRIENDLY_Mensageiro Hermesius|r |cRXP_WARN_patrulha no Entreposto Rubro|r
    .accept 9671 >>Aceite Entrega Urgente
    .turnin 9671 >>Entregue Entrega Urgente
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,55.210,59.207
	>>Open your |cRXP_PICK_Caixa de correio|r.Saqueie |T134332:0|t[|cRXP_LOOT_A Letter from the Admiral|r]
    .use 24132 >>|cRXP_WARN_Usar|r |T134332:0|t[|cRXP_LOOT_A Letter from the Admiral|r] |cRXP_WARN_to start the quest|r
    .collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >>Aceite O Almirante Negro
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hospedeiro Topher Loaal|r
    .target Caregiver Topher Loaal
    >>|cRXP_BUY_Buy up to 40|r Compre até 20[Longjaw Mud Snapper]|cRXP_BUY_from him|r << Warrior
    >>|cRXP_BUY_Compre até 40|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r << Mage/Priest/Hunter
    >>|cRXP_BUY_Compre até 40|r |T132796:0|t[Melão Suco] |cRXP_BUY_e|r |T133918:0|t[Pargo-da-lama Bocalonga] |cRXP_BUY_dele|r << Paladin/Shaman
    .collect 1205,35 << !Warrior !Rogue --Melon Juice (35)
    .collect 4592,35 --Longjaw Mud Snapper (35)
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .accept 9569 >>Aceite Conter a ameaça
    .target Vindicator Aalesia
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
	.turnin 9641 >>Entregue Estilhaços de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Percepção] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9649 >>Aceite Lágrimas de Ysera
step
    #completewith next
    .subzone 3598 >>Viaje até a Ilha Mal-da-Serpe
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .accept 9687 >>Aceite Devolver o sagrado sossego
    .target Prince Toreth
step
	#completewith next
	>>Saqueie |cRXP_LOOT_Lágrimas de Ysera|r no chão
    >>Eles se parecem com pequenos cogumelos verdes
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9672 >>Entregue O Almirante Negro
    .accept 9674 >>Aceite As Nagas Sangue Maldito
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,82.0,21.6,0
    .goto Bloodmyst Isle,81.0,16.2,0
    .goto Bloodmyst Isle,80.8,10.4,0
    .goto Bloodmyst Isle,82.0,21.6,70,0
    .goto Bloodmyst Isle,81.0,16.2,70,0
    .goto Bloodmyst Isle,80.8,10.4,70,0
	>>Mate |cRXP_ENEMY_Bloodcursed Nagas|r
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
    .mob Bloodcursed Naga
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9674 >>Entregue As Nagas Sangue Maldito
    .accept 9682 >>Aceite Os Desesperados...
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,83.21,21.40,0
    .goto Bloodmyst Isle,87.3,16.6,0
    .goto Bloodmyst Isle,83.90,12.18,0
    .goto Bloodmyst Isle,83.21,21.40,40,0
    .goto Bloodmyst Isle,87.3,16.6,40,0
    .goto Bloodmyst Isle,83.90,12.18,50,0
    >>Mate |cRXP_ENEMY_Bloodcursed Voyagers|r. Saqueie-os para obter |cRXP_LOOT_Bloodcursed Souls|r
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .mob Bloodcursed Voyager
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9682 >>Entregue Os Desesperados...
    .accept 9683 >>Aceite Acabando com o Sangue Maldito << !Warrior
    .target Captain Edward Hanes
step << !Warrior
    .xp 16-3300 >>Triture até estar 3300 XP longe do nível 16 (10300/13600)
step
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .goto Bloodmyst Isle,76.8,21.5,35,0
    .goto Bloodmyst Isle,75.7,28.5,35,0
    .goto Bloodmyst Isle,71.5,28.6,35,0
    .goto Bloodmyst Isle,68.5,21.6,35,0
    .goto Bloodmyst Isle,70.6,16.5,35,0
    .goto Bloodmyst Isle,71.5,11.5,35,0
    .goto Bloodmyst Isle,75.1,8.4,35,0
    .goto Bloodmyst Isle,74.9,16.3,35,0
	>>Saqueie |cRXP_LOOT_Lágrimas de Ysera|r no chão
    >>Eles se parecem com pequenos cogumelos verdes
    .complete 9649,1 --Collect Ysera's Tear (x2)
step << !Warrior
    #completewith Atoph
    .subzone 3612 >>Nade para o sul a Bloodcurse Isle
step << !Warrior
    #completewith Atoph
    .goto Bloodmyst Isle,83.58,55.21,20,0
    .goto Bloodmyst Isle,86.26,57.24,20,0
    .goto Bloodmyst Isle,86.90,52.70,20,0
    .goto Bloodmyst Isle,86.061,54.599
    .cast 8386,6477,6478 >>Clique no |cRXP_ENEMY_Atoph the Bloodcursed|r
step << !Warrior
    #label Atoph
    .goto Bloodmyst Isle,85.59,53.42
    >>Mate |cRXP_ENEMY_Atoph the Bloodcursed|r
    >>|cRXP_ENEMY_Atoph the Bloodcursed|r|cRXP_WARN_is level 19. Be ready to use a Healing Potion or|r Lembre-se de conjurar[Gift of the Naaru]|cRXP_WARN_if required. Skip this step if you are unable to kill him|r
    .complete 9683,1 --Kill Atoph the Bloodcursed (x1)
    .mob Atoph the Bloodcursed
step
	#completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .turnin 9649 >>Entregar Lágrimas de Ysera
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Prospector Nachlan|r
    .accept 10063 >>Aceite Liga dos Exploradores: isso lá é coisa de gnomo?
    .target Prospector Nachlan
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .accept 9604 >>Aceite Nas Asas do Hipogrifo
    .target Laando
step
    #completewith WingsofHippogryph
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
step
    #completewith WingsofHippogryph
    .goto The Exodar,73.682,53.701,15 >>Desça para dentro de The Exodar
step
    #label WingsofHippogryph
	.goto The Exodar,57.011,50.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nurguni|r
    .turnin 9604 >>Entregue Nas Asas do Hipogrifo
    .accept 9605 >>Aceite O Mestre de Hipogrifos Stephanos
    .target Nurguni
step << Warlock/Priest/Mage
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dele ou procure na Leiloeira por uma|r |T135144:0|t[Varinha Mágica Maior]
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5208,1 --Smoldering Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest/Mage
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dele|r
    .goto The Exodar,46.386,61.499
    .collect 5208,1 --Smoldering Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.3173
step << Warlock/Priest/Mage
    #optional
    +|cRXP_WARN_Equipe o|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest/Mage
    #optional
    +|cRXP_WARN_Lembre-se de equipar o|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_mais tarde quando você atingir o nível 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step
    .goto The Exodar,53.589,90.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Feera|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de oferta limitada. Pule este passo se ela não tiver um|r
    .bronzetube
    .target Feera
    .zoneskip The Exodar,1
step << Warrior/Shaman/Paladin
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Behomat|r no andar superior << Warrior
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Handiir|r no andar superior << Shaman/Paladin
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Behomat|r
    .turnin 10350 >>Entregue em Behomat
    .trainer >>Treine suas magias de classe
    .target Behomat
step << Warrior/Shaman/Paladin
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Handiir|r
    .train 199 >>Treine Maças de Duas Mãos << Warrior/Shaman
    .train 202 >>Treine Espadas de Duas Mãos << Paladin
    .target Handiir
step << Paladin
    .goto The Exodar,38.367,82.564
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Priestess Kyleen Il'dinare|r
    .turnin 9600 >>Entregue Redenção
	.trainer >>Treine suas magias de classe
    .target Jol
step << Warrior/Paladin
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compre um|r |T133046:0|t[Martelo de Rocha] |cRXP_BUY_dela ou procure a Casa de Leilões por uma arma melhor|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Warrior/Paladin
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compre um|r |T133046:0|t[Martelo de Rocha] |cRXP_BUY_dela|r
    .goto The Exodar,73.625,84.814
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .money <0.5971
step << Warrior/Paladin
    #optional
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Profeta Velen|r
    .target Prophet Velen
    .turnin 9461 >>Entregue Call of Fogo - Missão - Missão << Shaman
    .accept 9555 >>Aceite Call of Fogo - Missão - Missão << Shaman
    .turnin 9698 >>Entregue Audiência com o profeta
    .accept 9699 >>Aceite Verdade ou ficção
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
	.trainer >>Treine suas magias de classe
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>Saia de Exodar
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .target Stephanos
    .turnin 9605 >>Entregue O Mestre de Hipogrifos Stephanos
    .accept 9606 >>Aceite Retornar para Topher Loaal
step
    .isOnQuest 9606,9699
	.hs >>Use a Pedra de Regresso para O Entreposto Rubro
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
	.isOnQuest 9606,9699
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >>Voe para o Entreposto Rubro
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .turnin -9606 >>Entregue Retornar para Topher Loaal
    .target Caregiver Topher Loaal
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9699 >>Entregue Verdade ou ficção
    .accept 9700 >>Aceite A dimensão do caos tá TENSA
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
	.turnin 9641 >>Entregue Estilhaços de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Percepção] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >>Viaje até Axxarien
    >>Mate |cRXP_ENEMY_Constritores Mutantes|r. Saqueie-os para obter |cRXP_LOOT_Trepadeira Espinhosa Constritora|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Mate qualquer um que encontrar no caminho para Axxarien
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>Saqueie os |cRXP_LOOT_Cristais Corrompidos|r no chão
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>Mate |cRXP_ENEMY_Zevrax|r, |cRXP_ENEMY_Assombrantes Axxarien|r e |cRXP_ENEMY_Infernarautos Axxarien|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>Use a [Picareta de Mineração de Cristal] no |cRXP_PICK_Cristal de Axxarien|r
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>Saqueie os |cRXP_LOOT_Cristais Corrompidos|r no chão
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>Mate |cRXP_ENEMY_Zevrax|r, |cRXP_ENEMY_Assombrantes Axxarien|r e |cRXP_ENEMY_Infernarautos Axxarien|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .disablecheckbox
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
    .disablecheckbox
step
    #label ShadowstalkerHellcaller
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Mate |cRXP_ENEMY_Assombrantes Axxarien|r e |cRXP_ENEMY_Infernarautos Axxarien|r
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Saqueie os |cRXP_LOOT_Cristais Corrompidos|r no chão
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>Mate |cRXP_ENEMY_Constritores Mutantes|r. Saqueie-os para obter |cRXP_LOOT_Trepadeira Espinhosa Constritora|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>Mate |cRXP_ENEMY_Garra da Morte|r. Saqueie-o para obter |cRXP_LOOT_Pata da Garra da Morte|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xote Cabeçote|r
    .turnin 10063 >>Entregue Liga dos Exploradores: isso lá é coisa de gnomo?
    .accept 9548 >>Aceite O furto dos equipamentos
    .accept 9549 >>Aceite Os artefatos dos Trevareia
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xote Cabeçote|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>Este é um item de suprimento limitado. Pule esta etapa se ele não tiver um
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>Mate |cRXP_ENEMY_Videntes Trevareia|r. Saqueie-os para obter |cRXP_LOOT_Ídolo Murloc Rudimentar|r
    >>Mate |cRXP_ENEMY_Guerreiros Trevareia|r e |cRXP_ENEMY_Costacantes Trevareia|r. Saqueie-os para obter |cRXP_LOOT_Faca Murloc Rudimentar|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
    >>Saqueie |cRXP_LOOT_Equipamento do Xote|r no chão
    >>Ele pode aparecer em qualquer um dos acampamentos de murlocs
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	>>Mate |cRXP_ENEMY_Videntes Trevareia|r. Saqueie-os para obter |cRXP_LOOT_Ídolo Murloc Rudimentar|r
    >>Mate |cRXP_ENEMY_Guerreiros Trevareia|r e |cRXP_ENEMY_Costacantes Trevareia|r. Saqueie-os para obter |cRXP_LOOT_Faca Murloc Rudimentar|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xote Cabeçote|r
    .turnin 9548 >>Entregue O furto dos equipamentos
    .turnin 9549 >>Entregue Os artefatos dos Trevareia
    .target Clopper Wizbang
step
    .use 23837 >>Use o [Mapa do Tesouro Deteriorado] para iniciar a missão
    .accept 9550 >>Aceite Um mapa de onde?
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>Mate |cRXP_ENEMY_Anomalia do Caos|r e explore o local do Portal do Sol
    .complete 9700,2 --Kill Void Anomaly (x5)
    .mob +Void Anomaly
    .complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #loop
	.goto Bloodmyst Isle,44.9,26.4,0
	.goto Bloodmyst Isle,45.1,37.4,0
	.goto Bloodmyst Isle,34.0,44.3,0
	.goto Bloodmyst Isle,42.5,49.3,0
    .goto Bloodmyst Isle,47.6,24.9,70,0
	.goto Bloodmyst Isle,44.9,26.4,70,0
	.goto Bloodmyst Isle,48.3,33.4,70,0
	.goto Bloodmyst Isle,45.1,37.4,70,0
	.goto Bloodmyst Isle,40.8,41.9,70,0
	.goto Bloodmyst Isle,34.0,44.3,70,0
	.goto Bloodmyst Isle,39.0,48.1,70,0
	.goto Bloodmyst Isle,42.5,49.3,70,0
    >>Mate |cRXP_ENEMY_Constritores Mutantes|r. Saqueie-os para obter |cRXP_LOOT_Trepadeira Espinhosa Constritora|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>|cRXP_WARN_Priorize |cRXP_ENEMY_Constritor Mutante|r pois você terá tempo depois para finalizar |r |cRXP_ENEMY_Urso Marrom Ancião|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #loop
    .goto Bloodmyst Isle,54.0,30.9,0
    .goto Bloodmyst Isle,53.9,35.4,0
    .goto Bloodmyst Isle,57.0,34.3,0
    .goto Bloodmyst Isle,56.1,40.2,0
    .goto Bloodmyst Isle,54.0,30.9,25,0
    .goto Bloodmyst Isle,53.9,35.4,25,0
    .goto Bloodmyst Isle,57.0,34.3,25,0
    .goto Bloodmyst Isle,56.1,40.2,25,0
	>>Saqueie |cRXP_LOOT_Osso de Dragão|r no chão
    >>Estes podem ser difíceis de ver e normalmente são encontrados ao redor dos pequenos acampamentos
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    .goto Bloodmyst Isle,61.156,41.893
    >>Clique no |cRXP_PICK_Diário Surrado|r no chão
    .turnin 9550 >>Entregue Um mapa de onde?
    .accept 9557 >>Aceite Decifrar o Livro
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anacoreta Paetheus|r
    .turnin 9557 >>Entregue Decifrar o Livro
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .turnin 9585 >>Entregar The Final Sample
    .accept 10064 >>Aceite Fala com a minha mão!
    .turnin 9646 >>Entregue PROCURA-SE: Garra da Morte
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anacoreta Paetheus|r
    .accept 9561 >>Aceite As palavras de Nolkai
    .accept 9632 >>Aceite Aliados de última hora
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9700 >>Entregue A dimensão do caos tá TENSA
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Percepção] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Kuros|r
    .accept 9703 >>Aceite O Crio-núcleo
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .turnin 9643 >>Entregue Ô trepadeira danada!
    .accept 9647 >>Aceite Cortar as asinhas
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9643 >>Entregue Ô trepadeira danada!
    .accept 9647 >>Aceite Cortar as asinhas
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .turnin 9569 >>Entregue Conter a ameaça
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .accept 9578 >>Aceite À Procura de Galaen
    .target Morae
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >>Aceite A expedição desaparecida
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Fique atento a estes enquanto segue para o Núcleo Criogênico
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Fique atento a estes enquanto segue para o Núcleo Criogênico
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >>Viaje até o Núcleo Criogênico
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>Clique em |cRXP_FRIENDLY_Cadáver de Galaen|r
    >>|cRXP_WARN_Evite tentar matar muitos |cRXP_ENEMY_Recuperadores Falconélius|r, se possível, enquanto se dirige ao |rCadáver de Galaen|cRXP_FRIENDLY_|r
    .turnin 9578 >>Entregue À procura de Galaen
    .accept 9579 >>Aceite O destino de Galaen
    .accept 9706 >>Aceite Diário de Galaen - O destino do vindicante Saruan
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>Mate |cRXP_ENEMY_Recuperadores Falconélius|r. Saqueie-os para obter |cRXP_LOOT_Amuleto de Galaen|r e seus |cRXP_LOOT_Suprimentos Médicos|r
    >>Você também pode saquear os |cRXP_LOOT_Suprimentos Médicos|r no chão
	>>|cRXP_WARN_Use os pilares e estruturas para usar LoS, se necessário, para evitar os|r |T135812:0|t[bola de fogo] |cRXP_WARN_lançadas|r
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.xp 17+12800 >>Triture até ter 12800 XP no nível 17 (12800+/16400)
step
	.isOnQuest 9580
	#completewith GFate
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Fique atento a estes enquanto segue para o Posto de Sangue
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Fique atento a estes enquanto segue para o Posto de Sangue
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >>Viaje até Vigília Rubra
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >>Entregue O destino de Galaen
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Kuros|r
    .turnin 9703 >>Entregue O Crio-núcleo
    .turnin 9706 >>Entregue Diário de Galaen - O destino do vindicante Saruan
    .accept 9711 >>Aceite Matis, o Cruel
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .accept 9748 >>Aceite Água que Passarinho Não Bebe
    .accept 9753 >>Aceite O que sabemos...
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .turnin 9647 >>Entregue Cortar as asinhas
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9647 >>Entregue Cortar as asinhas
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarca Admetius|r
    .turnin 9753 >>Entregue O que sabemos...
    .accept 9756 >>Aceite O Que Não Sabemos...
    .target Exarch Admetius
step
    .goto Bloodmyst Isle,54.312,54.215
    >>Fale com o |cRXP_ENEMY_Agente Falconélius Capturado|r dentro da |cRXP_PICK_Prisão Improvisada|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarca Admetius|r
    .turnin 9756 >>Entregue O que não sabemos...
    .accept 9760 >>Aceite O Recanto do Vindicante
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Fique atento a eles enquanto completa outros objetivos
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Fique atento a eles enquanto completa outros objetivos
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedora Jorli|r e |cRXP_FRIENDLY_Batedora Loryi|r
    .turnin 10064 >>Turn in Fale com o Hand
    .accept 10065 >>Aceitar Limpa-trilhos
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >>Aceitar Criaturas do Caos
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Corin|r
    .turnin 9760 >>Entregar O Recanto do Vindicante
    .accept 10066 >>Aceitar Trama Sórdida
    .accept 10067 >>Aceitar Espíritos da Água Corrompidos
    .target Vindicator Corin
step
    #label MatistheCruel
    #loop
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,22.67,54.20,70,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,32.55,48.08,80,0
    .goto Bloodmyst Isle,42.27,44.12,80,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>Use a [Pistola Sinalizadora] em |cRXP_ENEMY_Matis, o Cruel|r
    >>|cRXP_WARN_Isto vai convocar um |cRXP_FRIENDLY_Farejador|r da Mão, que irá capturá-lo uma vez que sua vida chegue a 50%. Tente não atrair os inimigos, pois |cRXP_ENEMY_Matis, o Cruel|r bate muito forte|r
    >>|cRXP_ENEMY_Matis, o Cruel|r patrulha uma grande seção da estrada. Seu caminho de patrulha está marcado no seu mapa
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>Mate |cRXP_ENEMY_Bicho do Caos|r
    >>|cRXP_WARN_Você deve matar as |cRXP_ENEMY_Anomalias do Caos|r para fazer com que |cRXP_ENEMY_Bichos do Caos|r apareçam|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Fique atento a eles enquanto completa outros objetivos
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Fique atento a eles enquanto completa outros objetivos
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>Mate |cRXP_ENEMY_Emaranhadores Mutantes|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
    >>Mate |cRXP_ENEMY_Assoladores Enfurecidos|r
    .complete 10065,1 --Kill Enraged Ravager (x10)
    .mob +Enraged Ravager
step
    #label MutatedTanglers
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
	>>Mate |cRXP_ENEMY_Emaranhadores Mutantes|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #optional
	.isOnQuest 9647
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Corin|r
    .turnin 10066 >>Entregue Trama Sórdida
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedora Jorli|r
    .turnin 10065 >>Entregue Limpa-trilhos
    .target +Scout Loryi
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Mate |cRXP_ENEMY_Espíritos da Água Corrompidos|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Corin|r
    .turnin 10067 >>Entregue Espíritos da Água Corrompidos
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pesquisador Cornelius|r
    .accept 9670 >>Aceitar Estão todos vivos! Ou não...
    .target Researcher Cornelius
step
	#completewith next
	>>Mate as |cRXP_ENEMY_Criaturas Enredadas|r
    >>|cRXP_WARN_Ataque as |cRXP_ENEMY_Criaturas Enredadas|r à distância, se possível, para que, caso um inimigo hostil apareça, ele não gere agro em você|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Mate |cRXP_ENEMY_Sanguessugas da Névoa|r, |cRXP_ENEMY_Tecelãs da Névoa|r e |cRXP_ENEMY_Zarakh|r no topo da Passagem do Âmbar
    .complete 9669,1 --Kill Myst Leecher (x8)
    .mob +Myst Leecher
    .complete 9669,2 --Kill Myst Spinner (x8)
    .mob +Myst Spinner
    .complete 9669,3 --Kill Zarakh (x1)
    .mob +Zarakh
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Mate as |cRXP_ENEMY_Criaturas Enredadas|r
    >>|cRXP_WARN_Ataque as |cRXP_ENEMY_Criaturas Enredadas|r à distância, se possível, para que, caso um inimigo hostil apareça, ele não gere agro em você|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pesquisador Cornelius|r
    .turnin 9670 >>Entregue Estão todos vivos! Ou não...
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>Use o [Frasco para Amostra de Água] na base da cachoeira
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step
    .isOnQuest 9748,9669,9741,9711
    .hs >>Use a Pedra de Regresso para O Entreposto Rubro
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >>Entregar A Expedição Desaparecida
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .turnin 9741 >>Entregar Criaturas do Caos
    .turnin 9748 >>Entregar Água que Passarinho Não Bebe
    .accept 9746 >>Aceite No Limite << Hunter/Shaman/Mage
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Kuros|r
    .turnin 9711 >>Entregar Matis, o Cruel
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .turnin 9647 >>Entregue Cortar as asinhas
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9647 >>Entregue Cortar as asinhas
    .target Tracker Lyceon
step << Hunter/Mage
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>Mate |cRXP_ENEMY_Piromantes Falconélius|r e |cRXP_ENEMY_Defensores Falconélius|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
step << Hunter/Mage
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .turnin 9746 >>Entregue No Limite
    .target Vindicator Aesom
step
    #completewith next
    .subzone 3591 >>Viaje até as Ruínas de Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>Clique no |cRXP_PICK_Monte de Terra|r no chão
    .turnin 9561 >>Entregar As Palavras de Nolkai
step
    #completewith next
    .subzone 3598 >>Viaje até a Ilha Mal-da-Serpe
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .turnin 9687 >>Entregue Devolver o sagrado sossego
    .accept 9688 >>Aceitar No Sonho
    .target Prince Toreth
step
	#completewith next
    >>Mate |cRXP_ENEMY_Dragonete Viridiano|r e |cRXP_ENEMY_Filhote Viridiano|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    #optional
    .isQuestComplete 9683
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9683 >>Entregue Acabando com o Sangue Maldito
    .target Captain Edward Hanes
step
    #loop
    .goto Bloodmyst Isle,75.2,29.8,0
    .goto Bloodmyst Isle,69.6,27.6,0
    .goto Bloodmyst Isle,68.6,22.2,0
    .goto Bloodmyst Isle,70.8,16.6,0
    .goto Bloodmyst Isle,76.8,16.6,0
    .goto Bloodmyst Isle,78.0,24.2,70,0
    .goto Bloodmyst Isle,75.2,29.8,70,0
    .goto Bloodmyst Isle,69.6,27.6,70,0
    .goto Bloodmyst Isle,68.6,22.2,70,0
    .goto Bloodmyst Isle,70.8,16.6,70,0
    .goto Bloodmyst Isle,76.8,16.6,70,0
    >>Mate |cRXP_ENEMY_Dragonete Viridiano|r e |cRXP_ENEMY_Filhote Viridiano|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .turnin 9688 >>Entregue No Sonho
    .accept 9689 >>Aceitar Rasgaqueixo
    .target Prince Toreth
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Clique no |cRXP_PICK_Pira Sempre-Acesa|r no topo da montanha para invocar |cRXP_ENEMY_Razormaw|r
    .timer 36,RP do Razormaw
step
    .goto Bloodmyst Isle,73.129,20.587
    >>Mate |cRXP_ENEMY_Razormaw|r
    >>|cRXP_ENEMY_Razormaw|r é um Elite de nível 20. Ele leva aproximadamente 35 segundos para pousar
    >>Esta missão é MUITO difícil. Encontre um grupo para ele se necessário. Ignore esta etapa se você não conseguir encontrar um grupo ou enfrentá-lo sozinho
    >>|cRXP_WARN_Remember to cast|r Lembre-se de conjurar[Gift of the Naaru]|cRXP_WARN_on yourself if required|r << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .turnin 9689 >>Entregue Rasgaqueixo
    .target Prince Toreth
step
    #optional
	.abandon 9711 >>Se você não completou a missão Matis, o Cruel, abandone-a.
step
    #optional
	.abandon 9689 >>Abandon RP do Razormaw you did not complete it
step << Hunter/Shaman/Mage
    .xp 20 >>Suba até o nível 20
step
	#completewith FlyExo
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Paladin
    #completewith FlyExo
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
    .target Vindicator Aesom
step
    #label FlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Shaman/Hunter/Priest/Mage/Warrior
    #completewith NewfoundAllies
    .goto The Exodar,73.682,53.701,15 >>Desça para dentro de The Exodar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sulaa|r
    .accept 9502 >>Aceite Chamado da Água
    .trainer >>Treine suas magias de classe
    .target Sulaa
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>Vá para o |cRXP_FRIENDLY_Clarividente Nobambo|r subindo a rampa
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarividente Nobambo|r
    >>|cRXP_FRIENDLY_Clarividente Nobambo|r |cRXP_WARN_patrulha levemente|r
    .turnin 9502 >>Entregue Clamor da água
    .accept 9501 >>Aceite Chamado da Água
    .target Farseer Nobundo
step << Shaman
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>Saia de Exodar
step << Shaman
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >>Voe para o Entreposto Rubro
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    #completewith next
    .subzone 3596 >>Viaje até the Hidden Reef
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Aquos|r submerso
    .turnin 9501 >>Entregue Clamor da água
    .accept 9503 >>Aceite Chamado da Água
    .target Aqueous
step << Shaman
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .goto Bloodmyst Isle,22.0,62.6,70,0
    .goto Bloodmyst Isle,23.5,49.4,70,0
    >>Mate |cRXP_ENEMY_Piromantes Falconélius|r e |cRXP_ENEMY_Defensores Falconélius|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
step << Shaman
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Mate |cRXP_ENEMY_Fouled Water Spirits|r. Saqueie-os para obter |cRXP_LOOT_Foul Essences|r
    .complete 9503,1 --Collect Foul Essence (x6)
    .mob Fouled Water Spirit
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Aquos|r submerso
    .turnin 9503 >>Entregue Clamor da água
    .accept 9504 >>Aceite Chamado da Água
    .target Aqueous
step << Shaman
	#completewith ShamFlyExo
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Shaman
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .turnin 9746 >>Entregue No Limite
    .target Vindicator Aesom
step << Shaman
    #label ShamFlyExo
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vord|r
	.trainer >>Treine suas magias de classe
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ganaar|r
	.trainer >>Treine as magias do seu mascote
    .target Ganaar
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compre um|r [Varinha Incandescente] |cRXP_BUY_com ele ou verifique a Casa de Leilões para uma melhor|r
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compre um|r [Varinha Incandescente] |cRXP_BUY_com ele ou verifique a Casa de Leilões para uma melhor|r
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +Equipe a [Varinha Incandescente]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Izmir|r
    .trainer >>Treine suas magias de classe
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Edirah|r
    .trainer >>Treine suas magias de classe
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lunaraa|r
    .train 32271 >>Treine [Teleporte: Exodar]
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Musal|r
    >>|cRXP_BUY_Compre pelo menos uma |r[Runa de Teleporte] |cRXP_BUY_dela|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Behomat|r no andar superior
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Behomat|r
    .trainer >>Treine suas magias de classe
    .target Behomat
step
    #label NewfoundAllies
	.goto The Exodar,33.8,73.7,15,0 << !Shaman
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçadora Kella Arconyx|r
    >>|cRXP_FRIENDLY_Caçadora Kella Arconyx|r |cRXP_WARN_está localizada fora da entrada traseira de Exodar|r
    .turnin 9632 >>Entregar Aliados de última hora
    .accept 9633 >>Aceite The Way to Auberdine
    .target Huntress Kella Nightbow
step
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>Pegue o barco para Costa Negra

--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r no andar de baixo
    .home >>Defina sua Pedra de Regresso para Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >>Viaje até o cais do barco do Porto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>Você agora começará a viajar para As Minas Mortas
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Compre uma|r [Espada do Carrasco] |cRXP_BUY_com ele (se estiver disponível e você puder pagar)|r
    >>Alternativamente, você pode verificar em breve a Casa de Leilões por algo melhor ou mais barato
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Compre uma|r [Espada do Carrasco] |cRXP_BUY_com ele (se estiver disponível e você puder pagar)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
    .money <1.3559
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +Equipe a [Espada do Carrasco]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
step
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>Salte da ponta do píer e nade até o ponto de referência
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Use o recurso de auto-destravamento do personagem unstuck para pular para Altaforja. Você precisará deslogar no local, depois acessar o menu de ajuda em outro personagem (alternativamente, cole o link de destravamento abaixo no navegador), role até autoatendimento. Clique em destravar no seu personagem e mova-se. Se não conseguir se destravar, ignore esta etapa e nade ao longo das montanhas até Cerro Oeste
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Clique aqui para referência em vídeo
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> Clique aqui para o link de destravamento para servidores US
    .link https://eu.battle.net/support/en/article/32275 >>https://eu.support.blizzard.com/en/help/product/wow/197/834/solution >> Clique aqui para o link de destravamento para servidores EU
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milstaff Intempestivus|r
    .train 3562 >>Treine [Teleporte: Altaforja]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto 1415/0,258.6045,-4078.9674,60,0 -- Wetlands to Westfall swim
    .goto 1415/0,807.0190,-4254.0282,60,0
    .goto 1415/0,1017.5144,-4474.1449,20,0
    .goto 1415/0,1088.2662,-4457.2490,20,0
    .goto 1415/0,1327.9775,-4321.1427,20,0
    .goto 1415/0,1582.4728,-4300.0228,20,0
    .goto 1415/0,1984.1037,-4519.6701,20,0
    .goto 1415/0,1998.1836,-4645.6858,30,0
    .goto 1415/0,2094.2794,-4885.2798,30,0
    .goto 1415/0,1863.7200,-5311.1986,20,0
    .goto 1415/0,1742.2803,-5324.3399,20,0
    .goto 1415/0,1437.8012,-5938.9302,40,0
    .goto 1415/0,1220.2658,-6480.5393,30,0
    .goto 1415/0,1447.6572,-6898.2448,30,0
    .goto 1415/0,1459.2731,-7068.1430,20,0
    .goto 1415/0,1728.2004,-7578.0722,30,0
    .goto 1415/0,1544.8089,-7992.7270,20,0
    .goto 1415/0,1445.1932,-8083.5428,30,0
    .goto 1415/0,1440.2652,-8254.8490,30,0
    .goto 1415/0,1348.0415,-8417.7072,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>Se o site de destravamento não estiver disponível, nade até Cerro Oeste
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>Corra pela praia e siga até a Colina da Sentinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>Corra para Ventobravo
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >>Pegue o Metrô Correfundo para Ventobravo
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .accept 2040 >>Aceite Ataque Subterrâneo
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r
    .accept 167 >>Aceite Oh, Irmão...
    .accept 168 >>Aceite Coletando Memórias
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >>Treine Espadas de Uma Mão << Mage/Rogue/Warlock
    .train 1180 >>Treine Adagas << Mage/Druid/Priest
    .train 202 >>Treine Espadas de Duas Mãos << Warrior/Paladin/Hunter
    .target Woo Ping
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
	.xp <20,1
    .target Larimaine Purdue
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para Ventobravo << !Human
    .fly Westfall >>Se você acabou de vir de Cerro Oeste, corra para lá; caso contrário, voe para Cerro Oeste
    .disablecheckbox
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
step << !Human
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .target Thor
step
.dungeon DM
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Faça grind em |cRXP_ENEMY_Gnolls|r ao sul da Colina do Sentinela enquanto reúne um grupo para as Minas Mortas|r
    .subzone 20 >>Quando seu grupo estiver formado, viaje até Arroio da Lua
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >>Entre no Esconderijo Défias com seu grupo
step
.dungeon DM
    #completewith EnterDM
    >>Mate os |cRXP_ENEMY_Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    >>Você também pode completar isso dentro das Minas Mortas
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Mate |cRXP_ENEMY_Encarregado Espinhofolha|r. Saqueie-o para obter |cRXP_LOOT_Distintivo|r
    >>Isto é concluído FORA da Masmorra
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >>Entre na Masmorra das Minas Mortas
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>Mate os |cRXP_ENEMY_Défias|r dentro de Minas Mortas. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Mate |cRXP_ENEMY_Sneed|r. Saqueie-o para obter |cRXP_LOOT_Engrenotreco Gnomo|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Mate |cRXP_ENEMY_Edwin VanCleef|r. Saqueie-o para obter |cRXP_LOOT_Cabeça|r e |T133471:0|t[|cRXP_LOOT_Uma Carta Não Enviada|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Mate |cRXP_ENEMY_Edwin VanCleef|r. Saqueie-o para obter |T133471:0|t[|cRXP_LOOT_Uma Carta Não Enviada|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Saia das Minas Mortas pela saída traseira a leste de |cRXP_ENEMY_Edwin VanCleef|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 166 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .turnin 214 >>Entregue Bandanas de Seda Vermelha
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r no topo da torre
    .train 2138 >>Treine suas magias de classe
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
    .xp <22,1
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >>Treine suas magias de classe
    .target Ursula Deline
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até |cRXP_FRIENDLY_Benedito Brião|r dentro da Catedral de Ventobravo
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19835 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>Vá em direção à |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r dentro da Catedral de Ventobravo
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r no interior
    .train 8103 >>Treine suas magias de classe
    .target High Priestess Laurena
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>Vá em direção a |cRXP_FRIENDLY_Wu Shen|r dentro do Centro de Comando
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r no andar de cima
    .train 6192 >>Treine suas magias de classe
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .use 2874 >>|cRXP_WARN_Use [|cRXP_LOOT_Carta Não Enviada|r] para iniciar a missão|r
    .accept 373 >>Aceite A Carta Não Enviada
    .turnin 373 >>Entregue A Carta Não Enviada
    .accept 389 >>Aceite Basílio Taborda
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carcereiro-chefe Thelágua|r
    .turnin 389 >>Entregue Basílio Taborda
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r dentro
    .turnin 167 >>Entregue Oh, Irmão...
    .turnin 168 >>Entregue Coletando Memórias
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .turnin 2040 >>Entregue Ataque Subterrâneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >>Use a pedra do regresso para Costa Negra
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
    >>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#xprate <1.5
#name 20-21 Costa Negra (Draenei)
#subgroup RestedXP Aliança 20-32
#defaultfor Draenei
#next 21-23 Vale Gris (Draenei)

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    .goto Darkshore,37.219,44.227
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 4740 >>Aceite Procurado: Lodofundo!
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cave Mushrooms
    .target Barithras Moonshade
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r no andar de cima
    .accept 965 >>Aceite A Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.turnin 9633 >>Entregue O Caminho para Auberdine
    .accept 10752 >>Aceite Rumo a Vilavska
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .accept 10752 >>Aceite Rumo a Vilavska
    .target Thundris Windweaver
step
    .goto Darkshore,38.83,29.37,10,0
    .goto Darkshore,38.236,28.800
    >>|cRXP_WARN_Entre no navio naufragado Prateado Dawning pelo casco quebrado no fundo. Tenha certeza de que você tem uma barra de respiração completa antes de mergulhar e entrar|r
    >>Pegue a |cRXP_LOOT_Silver Dawning's Caixa-forte|r no chão
    .complete 982,1 --Collect Silver Dawning's Lockbox (x1)
step
    .goto Darkshore,40.30,27.56,10,0
    .goto Darkshore,39.633,27.459
    >>|cRXP_WARN_Entre no navio naufragado Bruma Véu pelo casco quebrado no fundo. Tenha certeza de que você tem uma barra de respiração completa antes de mergulhar e entrar|r
    >>Pegue a |cRXP_LOOT_Mist Véu's Caixa-forte|r no chão
    .complete 982,2 --Collect Mist Veil's Lockbox (x1)
step
    #completewith GelkakGyromast
    >>Mate |cRXP_ENEMY_Reef Crawlers|r e |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .accept 2098 >>Aceite Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Tenha cuidado com |cRXP_ENEMY_Enraivecedora Reef Crawlers|r |T132152:0|t[Surra] habilidade. Você pode receber 200 de dano instantaneamente de seus ataques corpo-a-corpo|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Mate os |cRXP_ENEMY_Greymist Oracles|r e os |cRXP_ENEMY_Greymist Tidehunters|r. Saque-os para obter o |cRXP_LOOT_Middle of Gelkak's Chave|r
    >>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Brumagris Oráculos|r que usam dano de |T136048:0|t[Raio] e também podem curar com |T136052:0|t[Onda Curativa]|r
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Oracle
    .mob Greymist Tidehunter
step
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Tenha cuidado com |cRXP_ENEMY_Enraivecedora Reef Crawlers|r |T132152:0|t[Surra] habilidade. Você pode receber 200 de dano instantaneamente de seus ataques corpo-a-corpo|r
    .complete 2098,3 -- Bottom of Gelkak's Key
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Mate os |cRXP_ENEMY_Giant Foreststriders|r. Saque-os para obter o |cRXP_LOOT_Top of Gelkak's Chave|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .turnin 2098 >>Entregue Gyromast's Retrieval
    .accept 2078 >>Aceite Gyromast's Revanche
    .target Gelkak Gyromast
step
    .goto Darkshore,55.803,18.291,10,0
    .goto Darkshore,56.655,13.485
    >>Fale com o|cRXP_FRIENDLY_ Mangual-eliminator Pro Giramastro 4100|r para iniciar a escolta
    >>Escolte |cRXP_FRIENDLY_Mangual-eliminator Pro Giramastro 4100|r até |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>Mate o |cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r quando ele ficar hostil
    .skipgossip
    .complete 2078,1
    .mob The Threshwackonator 4100
step
    #label GelkakGyromast
    .goto Darkshore,56.655,13.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .turnin 2078 >>Entregue Gyromast's Revanche
    .target Gelkak Gyromast
step
    #sticky
    #optional
    .destroy 7442 >>Exclua |T134459:0|t[Gyromast's Chave] pois não é mais necessária (não está no seu chaveiro)
step
    #loop
    .goto Darkshore,53.51,18.65,0
    .goto Darkshore,51.42,22.04,0
    .goto Darkshore,48.52,20.65,0
    .goto Darkshore,45.50,20.45,0
    .goto Darkshore,53.51,18.65,70,0
    .goto Darkshore,51.42,22.04,70,0
    .goto Darkshore,48.52,20.65,70,0
    .goto Darkshore,45.50,20.45,70,0
    >>Mate |cRXP_ENEMY_Reef Crawlers|r e |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto Darkshore,55.231,26.508,0
    .goto Darkshore,56.194,27.071,0
    .goto Darkshore,56.047,26.586,0
    .goto Darkshore,55.231,26.508,50,0
    .goto Darkshore,55.369,27.025,50,0
    .goto Darkshore,55.763,26.695,50,0
    .goto Darkshore,55.815,26.972,50,0
    .goto Darkshore,56.194,27.071,50,0
    .goto Darkshore,56.790,27.621,50,0
    .goto Darkshore,57.278,26.311,50,0
    .goto Darkshore,57.046,26.234,50,0
    .goto Darkshore,56.544,26.598,50,0
    .goto Darkshore,56.047,26.586,50,0
    .goto Darkshore,55.743,25.915,50,0
    >>Mate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saque-os para obter seus |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto Darkshore,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>Vá para a Caverna do Rio Cliffspring
step
    >>Pegue os |cRXP_LOOT_Scaber Stalks|r e o |cRXP_LOOT_Death Cap|r no chão
    >>|cRXP_WARN_Permaneça na seção superior. Se não houver um|cRXP_LOOT_ Cogumelo-da-morte|r no final do lado superior, desça e pegue um na sala ao sul abaixo|r
    >>|cRXP_WARN_Tenha cuidado com os|cRXP_ENEMY_Cavalga-onda Skamatrom|r |rao conjurarem|cRXP_WARN_|r[Jato Aquático] (Alcance Instantâneo: causa dano em área nos inimigos próximos e os empurra para trás) certifique-se de não estar em uma posição para ser derrubado do nível superior da caverna
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step
	.goto Darkshore,55.3,34.0
    .xp 20-3900 >>Triture até estar a 3900 XP do nível 20 (16900/20800)
step << Hunter
	#completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .turnin 982 >>Vá para o Oceano Profundo, no Mar Vasto
    .target Gorbold Steelhand
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    >>Se você não puder aceitar esta missão, pule esta etapa
    .accept 1275 >>Aceite Pesquisando a Corrupção
    .target Gershala Nightwhisper
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .turnin 947 >>Entregue Cogumelos da Caverna
    .accept 948 >>Aceite Onu
    .target Barithras Moonshade
step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
    .target Gubber Blump
step << Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >>Pegue o barco para Teldrassil
    .zoneskip Darnassus
step << Hunter
.dungeon !BFD
    #optional
    #completewith TrainWeps
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step
.dungeon BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >>Pegue o barco para Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD
    #completewith BFDAccept
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guarda Argêntea Manados|r e |cRXP_FRIENDLY_Vigilalva Shaedlass|r no andar de cima
    .accept 1199 >>Aceite A Hora do Crepúsculo
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >>Aceite Procurando Thaelrid
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step << Hunter
#ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Buy a|r Equipe o[Heavy Recurve Bow]|cRXP_WARN_if you can afford it or check the Auction House for a better one|r
    >>|cRXP_WARN_Compre bastante|r |T132382:0|t[Flechas Afiadas]
    .collect 3027,1
    .target Landria
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
step << Hunter
#ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Landria|r
    >>|cRXP_WARN_Buy a|r Equipe o[Heavy Recurve Bow]
    >>|cRXP_WARN_Compre bastante|r |T132382:0|t[Flechas Afiadas]
    .collect 3027,1
    .target Landria
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
    .money <0.5643
step << Hunter
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.71
step << Hunter
    #label TrainWeps
    .goto Darnassus,57.56,46.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .train 264 >>Treine Arcos
    .train 227 >>Treine Cajados
    .target Ilyenia Moonfire
step
    #label BFDAccept
    .goto Darnassus,39.799,92.286,10,0
    .goto Darnassus,38.716,81.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissary Valustraa|r no andar de cima
    .accept 9432 >>Accept Viaje até Astranaar
    .target Emissary Valustraa
    .zoneskip Darnassus,1
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
step << Hunter
.dungeon !BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
step
    .goto Darkshore,35.429,76.566,0
    .goto Darkshore,35.429,76.566,60,0
    .goto Darkshore,36.526,76.603
    >>|cRXP_WARN_Certifique-se de verificar se o|cRXP_ENEMY_ Lodofundo|r já está ativo na água (se alguém já falhou no encontro anteriormente ou deixou o|cRXP_ENEMY_ Caçador Brumagris|r na onda em que ele surge vivo)|r
    >>Mate os |cRXP_ENEMY_Greymist Warriors|r e os |cRXP_ENEMY_Greymist Hunters|r no acampamento
    >>|cRXP_WARN_Mova-se até a Fogueira no centro do acampamento para iniciar o encontro com o|cRXP_ENEMY_ |rLodofundo|r
    >>|cRXP_WARN_3 ondas surgirão da água, cada uma matando a onda anterior: Onda 1 tem 3|cRXP_ENEMY_ Patrulheiros Brumagris|r nível 12-13, Onda 2 tem 2|cRXP_ENEMY_ Guerreiros Brumagris|r nível 15-16, e a Onda 3 tem 1|cRXP_ENEMY_ Lodofundo|r e 1|cRXP_ENEMY_ Caçador Brumagris|r nível 16-17. Você pode se afastar da Fogueira para evitar agredir a próxima onda|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto Darkshore,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 948 >>Entregue em Onu
    .accept 944 >>Aceite A Foice do Mestre
    .target Onu
step
    .goto Darkshore,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>|cRXP_WARN_Isto iniciará uma escolta. Você pode ter que esperar que ele reapareça ou que outros terminem a escolta|r
    .turnin 729 >>Entregue The Absent Minded Prospector
    .accept 731,1 >>Aceite O Prospector Distraído
    .target Prospector Remtravel
step
    #requires prospector
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    .complete 731,1
    .isOnQuest 731
    .target Prospector Remtravel
step
    #optional
    #completewith next
    .cast 5809 >>Use o [Frasco de Vidência] e coloque-o no chão
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>|cRXP_WARN_Clique na|cRXP_PICK_ Tigela de Vidência|r no chão|r
    .turnin 944 >>Volte a The Master's Glaive
    .accept 949 >>Aceite O Acampamento do Crepúsculo
    .use 5251
step
    .goto Darkshore,38.537,86.050
    >>Clique no |cRXP_PICK_Tomo Crepúsculo|r no pedestal norte
    .turnin 949 >>Entregue O Acampamento do Crepúsculo
step
    #optional
    #sticky
    .destroy 5251 >>Exclua o |T134715:0|t[Frasco de Vidência], pois não é mais necessário
step
    .goto Darkshore,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a|cRXP_FRIENDLY_ Therylune|r. Isso iniciará uma escolta
    >>|cRXP_WARN_Pule este passo se ela não estiver lá|r
    .accept 945 >>Aceite A Fuga de Therylune
    .target Therylune
step
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escolte a|cRXP_FRIENDLY_ Therylune|r para fora da Clareira do Mestre|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .isOnQuest 945
    .target Therylune
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#name 21-23 Vale Gris (Draenei)
#subgroup RestedXP Aliança 20-32
#defaultfor Draenei
#next 23-24 Pantanal; 24-27 Redridge/Floresta do Crepúsculo

step
#xprate >1.49
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.turnin 9633 >>Entregue O Caminho para Auberdine
    .accept 10752 >>Aceite Rumo a Vilavska
    .target Thundris Windweaver
    .zoneskip Darkshore,1
step
#xprate >1.49
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .accept 10752 >>Aceite Rumo a Vilavska
    .target Thundris Windweaver
    .zoneskip Darkshore,1
step
#xprate >1.49
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    >>Se você não puder aceitar esta missão, pule esta etapa
    .accept 1275 >>Aceite Pesquisando a Corrupção
    .target Gershala Nightwhisper
    .zoneskip Darkshore,1
step
#xprate >1.49
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    .goto Ashenvale,28.929,14.485
    .zone Ashenvale >>Viaje para o sul até Vale Gris
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
	.target Delgren the Purifier
    .goto Ashenvale,26.19,38.69
    .turnin 967 >>Entregue A Torre de Althalaxx
    .accept 970 >>Aceite A Torre de Althalaxx
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .accept 1010 >>Aceite Cabelo-de-Bathran
step
#xprate <1.5
    .goto Ashenvale,31.25,30.70
    >>Mate os |cRXP_ENEMY_Dark Strand Cultists|r, os |cRXP_ENEMY_Dark Strand Adepts|r, os |cRXP_ENEMY_Dark Strand Enforcers|r e os |cRXP_ENEMY_Dark Strand Excavators|r. Saque-os para o |cRXP_LOOT_Glowing Gema Anímica|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra os |cRXP_PICK_Feixes de Plantar|r no chão. Saque-os para obter os |cRXP_LOOT_Cabelos de Bathran|r
    >>|cRXP_WARN_Parecem pequenos sacos marrom. Eles podem ser difíceis de ver|r
    .complete 1010,1
    .isOnQuest 1010
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
	.target Orendil Broadleaf
    .goto Ashenvale,26.43,38.59
    .turnin 1010 >>Entregue Cabelo-de-Bathran
    .accept 1020 >>Aceite A Cura de Orendil
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .goto Ashenvale,26.19,38.69
    .turnin 970 >>Entregue A Torre de Althalaxx
    .accept 973 >>Aceite A Torre de Althalaxx
    .target Delgren the Purifier
step
    #completewith next
    .goto Ashenvale,25.49,39.59,25,0
    .goto Ashenvale,25.98,41.72,25,0
    .goto Ashenvale,26.88,44.47,30,0
    .goto Ashenvale,28.16,47.68,60,0
    .goto Ashenvale,34.67,48.83
    .subzone 415 >>Vá para Astranaar
step
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
    .accept 1008 >>Aceite The Zoram Strand
    .target Shindrell Swiftfire
step
    #optional
    .isOnQuest 9432
    .goto Ashenvale,34.894,49.706
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicator Palanaar|r
    .turnin 9432 >>Turn in Viaje até Astranaar
    .target Vindicator Palanaar
step << Warrior/Paladin
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xai'ander|r
    >>|cRXP_BUY_Compre um|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dele|r
	.collect 922,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Warrior/Paladin
    #optional
    #sticky
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 10752 >>Entregue em Rumo a Vale Gris
    .accept 1054 >>Aceite Expurgo a Ameaça
    .accept 991 >>Aceite A Purificação de Raene
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kimlya|r
    .home >>Defina sua Pedra de Regresso para Astranaar
    .target Innkeeper Kimlya
    .subzoneskip 415,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
    .turnin 1020 >>Entregue A Cura de Orendil
    .timer 24,RP da Cura de Orendil
    .accept 1033 >>Aceite A Lágrima de Eluna
    .target Pelturas Whitemoon
step
.dungeon WC
    #completewith TravelRatchet
    +Comece a procurar por um grupo de Caverna Ululante enquanto completa os próximos dois passos. Em breve você irá para As Savanas para fazer Caverna Ululante
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mate |cRXP_ENEMY_Dal Sangarra|r. Saqueie-o para obter seu |cRXP_LOOT_crânio|r
    >>|cRXP_ENEMY_Dal Garrassangue|r patrulha a Aldeia Pêlo de Cardo
    .complete 1054,1
    .unitscan Dal Bloodclaw
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>Pegue a |cRXP_LOOT_Lágrima de Eluna|r no chão
    .complete 1033,1
    .zoneskip The Barrens
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >>Viaje até Vila Catraca, nos Sertões. Siga a seta para evitar as |cRXP_ENEMY_Guardas dos Sertões|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >>Aprenda a rota de voo para Ponto de Ancoragem
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_o Operador de Grua Mafuá|r
    .accept 959 >>Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994
    .goto 1414/1,-2003.0622,-830.7456,20 >>Viaje para as Cavernas do Lamento. Suba a montanha e depois desça na caverna escondida acima da entrada das Cavernas do Lamento. Siga a seta para chegar até|cRXP_FRIENDLY_ Nalpak|r e |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >>Aceite Pelegos anormais
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >>Aceite Erradicação de Anormais
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    >>Isso pode ser concluído DENTRO e FORA das Cavernas do Lamento
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Mate |cRXP_ENEMY_Maluc Insano|r. Saqueie-o para obter o |cRXP_LOOT_Xerez de 99 Anos|r
    >>|cRXP_ENEMY_Maluc Insano|r pode surgir em alguns locais
    >>Esta missão é concluída FORA da Caverna Ululante
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Entre nas Cavernas do Lamento
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Mate |cRXP_ENEMY_Lorde Cobrahn|r, |cRXP_ENEMY_Lorde Pythas|r, |cRXP_ENEMY_Lorde Serpentis|r e |cRXP_ENEMY_Lady Anacondra|r, depois fale com o |cRXP_FRIENDLY_Discípulo de Naralex|r no início da instância para iniciar a escolta
    >>Acompanhe o |cRXP_FRIENDLY_Muyoh <Discípulo de Naralex>|r pela Caverna Ululante e complete o ritual de despertar
    >>Mate |cRXP_ENEMY_Mutanus, o Devorador|r. Saqueie-o para obter o |T135229:0|t[|cRXP_LOOT_Estilhaço Chamejante|r]
    >>Use o [|cRXP_WARN_Fragmento Brilhante|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >>Aceite A lasca faiscante
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    >>Isso pode ser concluído DENTRO e FORA das Cavernas do Lamento
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >>Viaje para Vila Catraca. Em breve, você entregará as missões acima relacionadas às Cavernas Ululantes
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_o Operador de Grua Mafuá|r
    .turnin 959 >>Entregue Encrencas nas Docas
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >>Suba a montanha íngreme acima das Cavernas do Lamento. Siga a seta
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Falla Vento Sábio|r
    .turnin 6981 >>Entregue A lasca faiscante
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >>Desça na caverna escondida acima da entrada das Cavernas do Lamento. Siga a seta para chegar até |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >>Entregue Pelegos anormais
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >>Entregue Erradicação de Anormais
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >>Entregue Erradicação de Anormais
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >>Entregue Pelegos anormais
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >>Use a Pedra de Regresso para Astranaar
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .zoneskip Ashenvale
step
    .goto Ashenvale,46.37,46.38
    >>Pegue a |cRXP_LOOT_Lágrima de Eluna|r no chão
    .complete 1033,1
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mate |cRXP_ENEMY_Dal Sangarra|r. Saqueie-o para obter seu |cRXP_LOOT_crânio|r
    >>|cRXP_ENEMY_Dal Garrassangue|r patrulha a Aldeia Pêlo de Cardo
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    #completewith next
    .subzone 415 >>Vá para Astranaar
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1054 >>Entregue Contendo a ameaça
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1033 >>Entregue A Lágrima de Eluna
    .timer 17,RP da Lágrima de Eluna
    .accept 1034 >>Aceite As Ruínas de Poeira Estelar
step << Shaman
    #completewith next
    >>Saqueie os |cRXP_PICK_arbustos cobertos de poeira estelar|r para obter um punhado de |cRXP_LOOT_Punhado de Poeira Estelar|r
    >>Os locais de surgimento deles estão espalhados por toda a ilha
    .complete 1034,1
step << Shaman
    .goto Ashenvale,33.547,67.474
    .use 23749 >>|cRXP_WARN_Use o|r |T132825:0|t[Odre Rústico Vazio] |cRXP_WARN_nas Ruínas de Poeira Estelar na pequena fonte|r
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.30,67.79
    >>Saqueie os |cRXP_PICK_arbustos cobertos de poeira estelar|r para obter um punhado de |cRXP_LOOT_Punhado de Poeira Estelar|r
    >>Os locais de surgimento deles estão espalhados por toda a ilha
    .complete 1034,1
step
#xprate <1.5
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >>Vá até a base da montanha
    .goto Ashenvale,31.21,61.60,15 >>Corra diretamente para o norte enquanto sobe a montanha
step
#xprate <1.5
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Mate |cRXP_ENEMY_Ilkrud Magthrull|r. Saqueie-o para obter seu |cRXP_LOOT_Tomo|r
    >>|cRXP_ENEMY_Ilkrud Magthrull|r |cRXP_WARN_lançará|r |T136221:0|t[Guardiões de Ilkrud], |cRXP_WARN_que é uma conjuração de 5 segundos e invocará 2 Andarilhos do Vazio. Interrompa essa conjuração se puder|r
    .complete 973,1
    .mob Ilkrud Magthrull
step
#xprate <1.5
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A fuga de Therylune
	.target Therysil
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >>Entregue A Torre de Althalaxx
    .target Delgren the Purifier
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cadáver de Teronis|r
	.target Teronis' Corpse
    .goto Ashenvale,20.31,42.33
    .turnin 991 >>Entregue Purificação de Raene
    .accept 1023 >>Aceite A Purificação de Raene
step
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33
    >>Mate |cRXP_ENEMY_Murlocs Cuspe-sal|r. Saqueie-os para obter o |cRXP_LOOT_Gema Faiscante|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
    .goto Ashenvale,14.79,31.29
    .accept 1007 >>Aceite A estatueta ancestral
    .target Talen
step
    #completewith AncientStatuette
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
    >>Não saia do seu caminho para completar isso ainda
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Saque o |cRXP_LOOT_Ancient Statuette|r no chão
    .complete 1007,1
step
    #label AncientStatuette
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >>Entregue A estatueta ancestral
    .accept 1009 >>Aceite Ruuzel
step
    #completewith next
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    .goto Ashenvale,6.528,13.361
    >>Mate |cRXP_ENEMY_Ruuzel|r. Saque-a pelo |cRXP_LOOT_Anel de Zoram|r
    >>|cRXP_ENEMY_Ruzzel|r patrulha a ilha com um|cRXP_WARN_ Mirmidão Caudafúria|cRXP_ENEMY_ e uma|r |cRXP_ENEMY_Bruxa do Mar Caudafúria|r. Mate um deles e depois redefina-os se necessário|r
    >>|cRXP_ENEMY_Lady Vespira|r é um reaparecimento raro que também pode derrubar o|cRXP_WARN_ Anel de Zoram|cRXP_LOOT_ |rse você a vir|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +Comece a procurar por um grupo de Profundezas Negras enquanto completa os próximos passos. Em breve você fará Profundezas Negras
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >>Entregue Ruuzel
	.target Talen
step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Faça grind em |cRXP_ENEMY_Naga|r enquanto monta um grupo para BFD. Vá para BFD assim que tiver um grupo
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >>Vá para Profundezas Negras
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Mate os |cRXP_ENEMY_Ladinos Raiz Caída|r, |cRXP_ENEMY_Sátiros Raiz Caída|r, |cRXP_ENEMY_Oráculos das Profundezas Negras|r e |cRXP_ENEMY_Sacerdotisas das Marés das Profundezas Negras|r. Saqueie-os para obter seus |cRXP_LOOT_Caules de Cérebro Corrompido|r
    >>|cRXP_WARN_Você também pode saquear |cRXP_LOOT_Caules de Cérebro Corrompido|r quando estiver dentro da instância|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >>Vá até o Portal da instância de Profundezas Negras. Entre na instância
    >>Veja se alguém do seu grupo pode compartilhar a missão “Conhecimento nas Profundezas” de Altaforja com você
step
.dungeon BFD
    #completewith Kelris
    >>Mate os |cRXP_ENEMY_Nagas|r e os |cRXP_ENEMY_Sátiros|r. Saqueie-os para obter seus |cRXP_LOOT_Caules de Cérebro Corrompido|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Abra o |cRXP_PICK_Baú de Ferro Corroído|r debaixo d'água perto da área com as tartarugas. Saqueie-o para obter o |cRXP_LOOT_Manuscrito de Lorgalis|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Argênteo Thaelrid|r
    .turnin -1198 >>Entregue Em Busca de Thaelrid
    .accept 1200 >>Aceite Vilania nas Profundezas Negras
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Mate todos os |cRXP_ENEMY_Martelos do Crepúsculo|r. Saqueie-os para obter seus |cRXP_LOOT_Pingentes do Crepúsculo|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Mate o |cRXP_ENEMY_Senhor do Crepúsculo Kelris|r. Saqueie-o para obter sua |cRXP_LOOT_Cabeça|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Mate todos os |cRXP_ENEMY_Martelos do Crepúsculo|r. Saqueie-os para obter seus |cRXP_LOOT_Pingentes do Crepúsculo|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Mate os |cRXP_ENEMY_Nagas|r e os |cRXP_ENEMY_Sátiros|r. Saqueie-os para obter seus |cRXP_LOOT_Caules de Cérebro Corrompido|r
    >>Se você ainda não concluiu esta missão, clique no altar no final da masmorra para se teleportar para a entrada. Os monstros fora da instância também podem derrubá-la.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
    .isOnQuest 1008,1023,1034
    .hs >>Use a Pedra de Regresso para Astranaar
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    #completewith ZoramStrandTurnin
    .subzone 415 >>Vá para Astranaar
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
	.target Raene Wolfrunner
    .turnin 1023 >>Entregue Purificação de Raene
step
    #optional
    #sticky
    .destroy 5505 >>Destrua o [Diário de Teronis]. Você não precisa mais dele
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >>Entregue as Ruínas de Poeira Estelar
step
    #label ZoramStrandTurnin
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
	.target Shindrell Swiftfire
    .turnin 1008 >>Entregue A Praia de Zoram
step
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >>Voe para Costa Negra
    .target Daelyshia
    .zoneskip Ashenvale,1
step
#xprate <1.5
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4740 >>Entregue PROCURA-SE: Lodofundo!
    .isQuestComplete 4740
step
.dungeon BFD
#xprate <1.5
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .accept 741 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
.dungeon !BFD
#xprate <1.5
    #label AbsentMinded
    .goto Darkshore,37.44,41.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .accept 741 >>Aceite O Prospector Distraído << !Hunter
    .target Archaeologist Hollee
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 1275 >>Entregue Investigando a Corrupção
    .target Gershala Nightwhisper
step
.dungeon BFD << !Hunter
    .isOnQuest 1199,1200 << !Hunter
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
    .target Caylais Moonfeather
step << !Hunter
.dungeon !BFD
    .goto Darkshore,33.189,40.111
    .zone Teldrassil >>Pegue o barco para Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD << !Hunter
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << !Hunter
.dungeon !BFD
    #optional
    #completewith ExitDarn
    .goto Teldrassil,55.95,89.88
    .zone Darnassus >>Entre no portal roxo para Darnassus
step
#xprate <1.5
    .isOnQuest 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
step
#xprate <1.5
    .isQuestTurnedIn 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >>Aceite O Prospector Distraído
step << Priest
    .goto 1457,37.903,82.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jandria|r
    .trainer >>Treine suas magias de classe
    .target Jandria
step << Warrior
    .goto Darnassus,58.945,35.336
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darnath Lâmina Cantante|r
    .trainer >>Treine suas magias de classe
    .target Darnath Bladesinger
    .zoneskip Darnassus,1
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >>Treine Cajados
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guarda Argênteo Manados|r no andar de cima
    .turnin 1199 >>Entregue A Queda do Crepúsculo
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vigilalva Selgorm|r no andar de cima
    .turnin 1200 >>Entregue Vilania nas Profundezas Negras
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step << Hunter
    .goto Darnassus,40.38,8.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .trainer >>Treine suas magias de classe
    .target Jocaste
    .zoneskip Darnassus,1
step
    #label ExitDarn
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +Comece a procurar um grupo para Bastilha da Presa Negra. Em breve você irá para a Floresta de Pinhaprata para fazer Bastilha da Presa Negra
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devin Tremulaurora|r
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Devin Tremulaurora|r não tiver nenhuma|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .accept 288 >>Aceite A Terceira Frota
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    .home >>Defina sua Pedra de Regresso no Porto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    >>|cRXP_BUY_Compre um|r [Jarra de Hidromel Enânico]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >>Suba as escadas em direção ao |cRXP_FRIENDLY_Arqueólogo Pançacheia|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Pançacheia|r no andar de cima
    .target Archaeologist Flagongut
    .turnin 942 >>Entregue The Absent Minded Prospector
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .turnin 288 >>Entregue A Terceira Frota
step
#xprate >1.49
    #label BTcheck
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nélio Allen|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Nélio Allen|r não tiver uma|r
	.target Neal Allen
    .bronzetube
step
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >>Faça grind em |cRXP_ENEMY_Gnolls Esfolamusgo|r enquanto procura um grupo para Bastilha da Presa Negra
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Não há missões para Bastilha da Presa Negra. Você terá que ir correndo do Pantanal até a Floresta de Pinhaprata. Certifique-se de permanecer na estrada ao atravessar o Planalto Arathi e fique atento ao |cRXP_ENEMY_Mensageira Renegada|r
    >>Você ainda não precisa obter o ponto de voo do Planalto Arathi
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .fp Southshore >>Aprenda a rota de voo para Southshore
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
#xprate >1.49
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >>Entre em Bastilha da Presa Negra
step
#xprate >1.49
.dungeon SFK
    +Não há missões para Bastilha da Presa Negra
    >>Limpe a Bastilha da Presa Negra. Saia quando terminar
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >>Use a Pedra do Regresso para o Porto de Menethil
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step << !Draenei
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Stormwind >>Voe para Ventobravo
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
step << Draenei
#xprate >1.49
    .goto Wetlands,53.74,70.33,30,0
    .goto Wetlands,48.17,67.49,30,0
    .goto Loch Modan,25.11,8.99,20 >>|cRXP_WARN_Viaje através do túnel de Dun Algaz para Loch Modan|r
    .zoneskip Loch Modan --Completes if you run to Loch
step << skip --logout skip Draenei
#xprate >1.49
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Vá até a caverna na base da represa no leste do Pantanal
	.zone Loch Modan >>Desconecte-se em cima dos cogumelos no fundo da caverna.
    >>Quando você entrar novamente, isso irá teleportá-lo para Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >>https://www.youtube.com/watch?v=21CuGto26Mk >> CLIQUE AQUI para referência
step << Draenei
#xprate >1.49
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .target Thorgrum Borrelson
step << Draenei
#xprate >1.49
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>|cRXP_WARN_Comece a tirar seu equipamento enquanto você corre para Dun Morogh|r
    .deathskip >>Gere agro dos |cRXP_ENEMY_Scarred Crag Boars|r para morrer e reaparecer no |cRXP_FRIENDLY_Anjo da Cura|r quando estiver em Dun Morogh
    .mob Scarred Crag Boar
step << skip --logout skip Draenei
#xprate >1.49
	>>Entre na caverna dos troggs no sudeste. Faça um skip de logout
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >>https://www.youtube.com/watch?v=QB3KyguCM >> |cRXP_WARN_CLIQUE AQUI para referência|r
	.zone Ironforge >>Desconecte-se e pule esta etapa ou viaje para Altaforja
step << Draenei
#xprate >1.49
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule este passo se |cRXP_FRIENDLY_Loslor Rudge|r não tem um|r
	.target Loslor Rudge
    .bronzetube
step << Draenei
#xprate >1.49
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >>Viaje para Ironforge
step << Draenei
#xprate >1.49
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step << Draenei
#xprate >1.49
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >>Pegue o bonde para Ventobravo
]])
