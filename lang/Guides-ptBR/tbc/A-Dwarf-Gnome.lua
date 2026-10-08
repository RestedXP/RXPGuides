if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#name 1-6 Dun Morogh
#subgroup RestedXP Aliança 1-20
#defaultfor Gnome/Dwarf
#next 6-11 Dun Morogh << !Hunter
#next 6-10 Dun Morogh (Caçador) << Hunter

step << !Gnome !Dwarf
    #sticky
    #completewith next
    .goto Dun Morogh,29.9,71.2
    +Você selecionou um guia destinado a Gnomos e Anões. Você deveria escolher a mesma zona inicial em que você começa.
step << !Warrior !Warlock
    #completewith WolfMeat
	.destroy 6948 >>Remova a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessária
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .accept 179 >>Aceite Fornecedores Anões
    .target Sten Stoutarm
step << Warrior/Warlock
    #completewith next
    .goto 1426,28.533,72.587,50,0
    .goto 1426,28.239,71.707,50,0
    +|cRXP_WARN_Abate e saque os |cRXP_ENEMY_Ragged Young Wolves|r até ter 10 moedas de cobre ou mais de lixo de vendedor|r
    >>|cRXP_WARN_Desequipe seus|r |T132665:0|t[Veste do Acólito]|cRXP_WARN_,|r |T135005:0|t[Camisa do Acólito]|cRXP_WARN_,|r |T134581:0|t[Calças do Acólito]|cRXP_WARN_, e|r |T132535:0|t[Sapatos do Acólito] |cRXP_WARN_para vendê-los por 4 moedas de cobre|r << Warlock
    >>|cRXP_WARN_Desequipe seus|r |T135009:0|t[Camisa do Recruta]|cRXP_WARN_,|r |T134582:0|t[Calças do Recruta]|cRXP_WARN_, e|r |T132540:0|t[Botas do Recruta] |cRXP_WARN_para vendê-los por 3 moedas de cobre|r << Warrior
    .complete 179,1 --Tough Wolf Meat (8)
    .disablecheckbox
    .mob Ragged Young Wolf
    .money >0.001
step << Warrior/Warlock
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
step << Warrior/Warlock
    .goto 1426,28.792,67.837
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grundel Harkin|r dentro
    .vendor >>Comerciante Lixo
    .target Grundel Harkin
    .train 6673,1 << Warrior
    .train 348,1 << Warlock
step << Warrior
    .goto 1426,28.831,67.238
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r dentro
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target Thran Khorman
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r dentro
    .train 348 >>Treine |T135817:0|t[Imolação]
    .accept 1599 >>Aceite Beginnings
    .target Alamar Grimm
step << Warrior/Warlock
    #label WarriorHS
    #completewith WolfMeat
    .hs >>Use sua Pedra de Retorno para Coldridge Valley
    .subzoneskip 77,1
--XX All era warriors, era softcore warlocks
step << Warrior/Warlock
    #optional
    #requires WarriorHS
    #completewith WolfMeat
	.destroy 6948 >>Remova a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessária
step << Warlock
    #optional
    #completewith next
    .goto 1426,28.938,68.358,12,0
    .goto 1426,28.831,68.698,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step
    #label WolfMeat
    #loop
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Mate os |cRXP_ENEMY_Ragged Young Wolves|r e os |cRXP_ENEMY_Ragged Timber Wolves|r. Saqueie-os para obter sua |cRXP_LOOT_Tough Lobo Carne|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    #optional
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    .xp 2 >>Treine até o nível 2
    .mob Ragged Young Wolf
    .mob Ragged Timber Wolf
step
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    .vendor >>|cRXP_WARN_Vendor trash|r
    >>|cRXP_BUY_Compre 600|r |T132384:0|t[Luz Shots] |cRXP_BUY_dele|r << Hunter
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_do vendedor|r << Priest/Mage/Warlock
    >>|cRXP_WARN_Triture extra |cRXP_ENEMY_Lobos Jovens Esfarrapados|r se você não tiver dinheiro suficiente|r << Priest/Mage/Warlock
    .collect 159,15 << Priest/Mage/Warlock --Collect Refreshing Spring Water (x15)
    .collect 2516,600 << Hunter --Light Shot (600)
    .target Adlin Pridedrift
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .turnin 179 >>Entregue Fornecedores Anões
    .accept 233 >>Aceite Entrega de Correspondência do Vale de Coldridge
    .accept 3106 >>Aceite Runa Simples << Dwarf Warrior
    .accept 3107 >>Aceite Runa Consagrada << Dwarf Paladin
    .accept 3108 >>Aceite Runa Cinzelada << Dwarf Hunter
    .accept 3109 >>Aceite Runa Cifrada << Dwarf Rogue
    .accept 3110 >>Aceite Runa Santificada << Dwarf Priest
    .accept 3112 >>Aceite Simple Memorandum << Gnome Warrior
    .accept 3113 >>Aceite Memorando Criptografado << Gnome Rogue
    .accept 3114 >>Aceite Memorando Glífico << Gnome Mage
    .accept 3115 >>Aceite Runa Conspurcada << Gnome Warlock
    .target Sten Stoutarm
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .goto Dun Morogh,29.709,71.255
    .accept 170 >>Aceite Uma Nova Ameaça
    .target Balir Frosthammer
--Warlock Imp quest
step << Warlock
#xprate <1.5
    #completewith next
    .goto 1426,30.146,74.521,0
    .goto 1426,28.322,77.854,0
    .goto 1426,28.747,74.380,0
    .goto 1426,27.018,77.305,0
    >>Abate os |cRXP_ENEMY_Pedraqueixo Troggs|r, os |cRXP_ENEMY_Parrudo Pedraqueixo Troggs|r, os |cRXP_ENEMY_Lobos Esfarrapados Jovens|r, e os |cRXP_ENEMY_Lobos de Madeira Esfarrapados|r no caminho
    >>|cRXP_WARN_Procure evitar|r |cRXP_ENEMY_Frostmane Trolls Filhotes|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .mob *Ragged Young Wolf
    .mob *Ragged Timber Wolf
step << Warlock
    #optional
    #label FrostmaneC
    #completewith Feathers
    .goto Dun Morogh,26.85,79.83,20 >>Vá para a Caverna Frostmane
step << Warlock
    #optional
    #requires FrostmaneC
    #completewith Feathers
    .goto 1426,27.095,80.702,20,0
    .goto 1426,27.265,80.848,20,0
    .goto 1426,27.857,81.067,20,0
    .goto 1426,28.696,83.148,50 >>Vá em direção aos |cRXP_ENEMY_Frostmane Noviços|r dentro
step << Warlock
    #label Feathers
    .goto 1426,28.696,83.148,0
    .goto 1426,30.216,80.254,0
    .goto 1426,28.696,83.148,40,0
    .goto 1426,28.999,82.504,40,0
    .goto 1426,29.298,81.579,15,0
    .goto 1426,29.041,81.168,40,0
    .goto 1426,30.055,82.385,40,0
    .goto 1426,30.381,80.766,40,0
    .goto 1426,30.216,80.254,40,0
    >>Abate os |cRXP_ENEMY_Frostmane Noviços|r dentro. Saqueie-os para obter seus |cRXP_LOOT_Encantos de Pena|r
    .complete 1599,1 --Collect Feather Charm (x3)
    .mob Frostmane Novice
step << Warlock
    #label BeginningsHS
    #completewith BeginningsEnd
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << Warlock
    #optional
    #requires BeginningsHS
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
step << Warlock
    #label BeginningsEnd
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r no andar de cima
    .turnin 1599 >>Entregue Beginnings
    .turnin 3115 >>Entregue Runa Conspurcada
    .target Alamar Grimm
--XX Warlock Imp Quest End. Return to normal
step
#xprate <1.5
    #completewith Rockjaw << !Paladin !Warlock !Hunter
    #completewith Talin << Paladin/Warlock/Hunter
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mate os |cRXP_ENEMY_Rockjaw Troggs|r e os |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 233 >>Entregue Entrega de Correspondência do Vale de Coldridge
    .accept 183 >>Aceite O Caçador de Javalis
    .accept 234 >>Aceite Entrega de Correspondência do Vale de Coldridge
    .target Talin Keeneye
step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Mate os |cRXP_ENEMY_Pequenos Javalis de Pedra|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 183 >>Entregue O Caçador de Javalis
    .target Talin Keeneye
step << Paladin/Warlock/Hunter
#xprate <1.5
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .goto 1426,27.858,76.482,50,0
    .goto 1426,28.946,77.153,50,0
    .goto 1426,29.716,77.605,50,0
    .goto 1426,30.727,76.831,50,0
    .goto 1426,32.814,75.221,50,0
    .goto 1426,31.138,74.048,50,0
    .goto 1426,30.077,74.479,50,0
    .goto 1426,29.280,75.500,50,0
    >>Mate os |cRXP_ENEMY_Rockjaw Troggs|r e os |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step << Paladin/Warlock
    .goto 1426,23.595,72.462,0
    .goto 1426,26.117,74.469,0
    .goto 1426,26.832,74.649,0
    .goto 1426,26.884,72.733,0
    .goto 1426,23.595,72.462,50,0
    .goto 1426,24.290,73.406,50,0
    .goto 1426,24.642,74.138,50,0
    .goto 1426,26.117,74.469,50,0
    .goto 1426,26.832,74.649,50,0
    .goto 1426,26.884,72.733,50,0
    .xp 3+1130 >>Farme até 1130+/1400xp
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 234 >>Entregue Entrega de Correspondência do Vale de Coldridge
    .accept 182 >>Aceite A Caverna dos Trolls
    .target Grelin Whitebeard
step << Hunter
    #completewith next
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r
    >>|cRXP_WARN_Pule este passo quando atingir o nível 4. Você o completará em breve|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << Hunter
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .xp 4 >>Triture até o nível 4
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Isso iniciará um temporizador de 5 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 3364 >>Aceite Entrega de Cerveja da Manhã Escaldante
    .target Nori Pridedrift
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    >>|cRXP_WARN_Você tem 5 minutos para retornar a Anvilmar antes|r |T132791:0|t[Durnan's Rabo-de-galo Escaldante] |cRXP_WARN_expira|r
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r dentro
    .turnin 3364 >>Entregue Entrega de Cerveja da Manhã Escaldante
    .accept 3365 >>Aceite Traga o Caneco
    .target Durnan Furcutter
step << Hunter
    .goto Dun Morogh,29.175,67.455
    .target Thorgas Grimson
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgas Grimson|r
    .turnin 3108 >>Entregue Runa Cinzelada << Dwarf
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
step << Paladin
    .goto Dun Morogh,28.833,68.332
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bromos Grummner|r dentro
    .turnin 3107 >>Vá para Runa Consagrada << Dwarf
    .train 19740 >>Aprenda |T135906:0|t[Bênção do Poder]
    .train 20271 >>Aprenda |T135959:0|t[Julgamento]
    .target Bromos Grummner
step << Warlock
    .goto Dun Morogh,28.650,66.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alamar Carranca|r no andar de cima
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Alamar Grimm
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step << Paladin/Warlock/Hunter
#xprate <1.5
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170 >>Entregue Uma Nova Ameaça
    .target Balir Frosthammer
step << Warlock
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_do vendedor|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
step << !Paladin !Warlock !Hunter
#xprate <1.5
    #sticky
    #label TroggEnd
    .goto 1426,24.193,77.305,0
    .goto 1426,22.529,74.512,0
    .goto 1426,24.288,73.154,0
    .goto 1426,29.303,77.337,0
    .waypoint 1426,24.193,77.305,55,0
    .waypoint 1426,23.497,76.707,55,0
    .waypoint 1426,22.828,76.017,55,0
    .waypoint 1426,22.529,74.512,55,0
    .waypoint 1426,22.735,73.285,55,0
    .waypoint 1426,23.616,72.634,55,0
    .waypoint 1426,24.288,73.154,55,0
    .waypoint 1426,24.619,74.280,55,0
    .waypoint 1426,25.920,74.571,55,0
    .waypoint 1426,28.812,76.397,55,0
    .waypoint 1426,29.303,77.337,55,0
    >>Mate os |cRXP_ENEMY_Rockjaw Troggs|r e os |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
step
    #loop
    #label TrollWhelps
    .goto 1426,25.861,78.197,0
    .goto 1426,23.716,80.257,0
    .goto 1426,20.671,75.838,0
    .goto 1426,25.861,78.197,45,0
    .goto 1426,26.382,78.409,45,0
    .goto 1426,26.031,79.854,45,0
    .goto 1426,23.716,80.257,45,0
    .goto 1426,22.836,79.962,45,0
    .goto 1426,22.684,78.888,45,0
    .goto 1426,21.029,76.459,45,0
    .goto 1426,20.671,75.838,45,0
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    #requires TroggEnd << !Paladin !Warlock !Hunter
    .goto Dun Morogh,25.076,75.713
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 182 >>Entregue A Caverna dos Trolls
    .accept 218 >>Aceite O Diário Roubado
    .target Grelin Whitebeard
step << Paladin/Warlock/Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Traga o Caneco
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Isso iniciará um temporizador de 5 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 3364 >>Aceite Entrega de Cerveja da Manhã Escaldante
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
    #completewith next
    +|cRXP_WARN_Você tem 5 minutos para pegar |cRXP_LOOT_Diário de Grolin Barbabranca|r e retornar a Anvilmar antes|r |T132791:0|t[Durnan's Rabo-de-galo Escaldante] |cRXP_WARN_expira|r
    >>|cRXP_WARN_Se você falhar na missão não se preocupe, pois você pode pegá-la novamente mais tarde|r
step
    #optional
    #label FrostMCave1
    #completewith Grelin
    .goto 1426,27.098,80.707,20 >>Vá para a Caverna Frostmane
step
    #optional
    #requires FrostMCave1
    #completewith Grelin
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>Vá para |cRXP_ENEMY_Grik'nir the Frio|r dentro
step
    #label Grelin
    .goto 1426,30.489,80.165,0,0
    >>Abate |cRXP_ENEMY_Grik'nir the Frio|r dentro. Saque-o para o |cRXP_LOOT_Diário de Grolin Barbabranca|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << Paladin/Warlock/Hunter
    #optional
    #completewith next
    .goto 1426,28.298,79.836,20,0
    .goto 1426,27.098,80.707,20 >>Saia da Frostmane Cave
step << !Paladin !Warlock !Hunter
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    >>|cRXP_WARN_Se você falhou na missão, pule este passo|r
    .turnin 3364 >>Entregue Entrega de Cerveja da Manhã Escaldante
    .accept 3365 >>Aceite Traga o Caneco
    .target Durnan Furcutter
    .isOnQuest 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .accept 3365 >>Aceite Traga o Caneco
    .target Durnan Furcutter
    .isQuestTurnedIn 3364
step << !Paladin !Warlock !Hunter
    #sticky
    .abandon 3364 >>Abandone Entrega de Rabo-de-galo Escaldante. Você a pegará novamente agora.
step << !Paladin !Warlock !Hunter
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r e |cRXP_FRIENDLY_Grolin Barbabranca|r
    .accept 3364 >>Aceite Entrega de Cerveja da Manhã Escaldante
    .goto Dun Morogh,24.980,75.963
    .target +Nori Pridedrift
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .goto Dun Morogh,25.075,75.715
    .target +Grelin Whitebeard
    .isQuestAvailable 3364
step << !Paladin !Warlock !Hunter
    #optional
    .goto Dun Morogh,28.769,66.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Durnan Cortapelo|r
    .turnin 3364 >>Entregue Entrega de Cerveja da Manhã Escaldante
    .accept 3365 >>Aceite Traga o Caneco
    .target Durnan Furcutter
step << Mage
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Memorando Glífico << Gnome
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Marryk Nurribit
step << Rogue
    .goto Dun Morogh,28.369,67.513
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Solm Hargrin|r
    .turnin 3113 >>Entregue Memorandum Criptografado << Gnome
    .turnin 3109 >>Entregue Runa Cifrada << Dwarf
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .target Solm Hargrin
step << Priest
    .goto Dun Morogh,28.600,66.385
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Branstock Khalder|r
    >>|cRXP_WARN_Trem|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_e|r |T135929:0|t[Cura Inferior] (Rank 2) |cRXP_WARN_pois você precisará deles para uma missão de classe em breve|r << Dwarf
    .turnin 3110 >>Entregue Runa Santificada << Dwarf
    .accept 5626 >>Aceite A Simpatia da Luz << Dwarf
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 2052 >>Treine |T135929:0|t[Cura Inferior] (Rank 2) << Dwarf
    .trainer >>Treine suas magias de classe
    .target Branstock Khalder
step << Warrior
    .goto Dun Morogh,28.832,67.242
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thran Khorman|r
    .turnin 3106 >>Entregue Runa Simples << Dwarf
    .turnin 3112 >>Entregue Memorando Simples << Gnome
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Thran Khorman
step << !Paladin !Warlock !Hunter
    #optional
    #completewith next
    .goto 1426,28.831,68.698,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step
    .goto Dun Morogh,25.075,75.715
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .target Grelin Whitebeard
step << !Paladin !Warlock !Hunter
    .goto Dun Morogh,24.980,75.963
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 3365 >>Entregue Traga o Caneco
    .target Nori Pridedrift
step << !Paladin !Warlock !Hunter
#xprate <1.5
    .goto Dun Morogh,29.709,71.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170 >>Entregue Uma Nova Ameaça
    .target Balir Frosthammer
step << Priest/Mage/Warlock
    #optional
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>|cRXP_BUY_Compre 5|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_do vendedor|r
    .collect 159,5 --Collect Refreshing Spring Water (x5)
    .target Adlin Pridedrift
    .money <0.0025
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mountaineer Thalos|r e |cRXP_FRIENDLY_Hands Springsprocket|r
    .turnin 282 >>Entregue Observações de Senir
    .accept 420 >>Aceite Observações de Senir
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >>Aceite Suprimentos para Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >>Passe pelo Desfiladeiro de Coldridge
    .subzoneskip 800,1
    .isOnQuest 2160
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Alliance !Hunter
#name 6-11 Dun Morogh << !Hunter
#displayname 6-12 Dun Morogh << Mage
#next 12-14 Costa Negra << !Warlock
#next 11-14 Elwynn Forest/Loch Modan << Warlock
#subgroup RestedXP Aliança 1-20
#defaultfor Gnome/Dwarf

step
    #optional
    #completewith SenirEnd
    >>Mate |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Guarde todos os|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você pegar para Provisões para a Vaporeta e depois para levantar sua|r |T133971:0|t[Culinária] |cRXP_WARN_mais tarde|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária]|cRXP_WARN_ para uma missão em Auberdine depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #optional
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .xp 5+2145 >>Vá para Kharanos. Farme até 2145+/2800xp matando os |cRXP_ENEMY_Crag Boars|r durante o caminho << Priest
    .xp 5+2415 >>Vá para Kharanos. Farme até 2415+/2800xp matando os |cRXP_ENEMY_Crag Boars|r durante o caminho << !Priest
    .mob Crag Boar
--XX 270 from priest quest
--XX 340 from quest, 45 from explore
step
    #completewith next
    >>|cRXP_WARN_Certifique-se de que sua suzona NÃO é Coldridge Passe|r
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 131
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 420 >>Entregue Observações de Senir
    .target Senir Whitebeard
step
    #optional
    .goto Dun Morogh,48.3,57.0
    .xp 5+2690 >>Farme até 2690+/2800 XP << !Warlock !Priest
    .xp 5+2350 >>Farme para 2350+/2800xp << Priest
    .xp 6 << Warlock
step << Warlock
    .goto Dun Morogh,47.329,53.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria (Rank 2)]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Gimrizz Shadowcog
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannie Silvombida|r
    .vendor 6328 >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Pacto de Sangue (Rank 1)] |cRXP_BUY_se puder se permitir. Se não, você pode comprar mais tarde|r
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre na Destilaria Cervaforte
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tannok Marrãogélido|r
    .turnin 2160,1 >>Entregue Suprimentos para Tannok << Warrior/Rogue
    .turnin 2160,2 >>Entregue Suprimentos para Tannok << !Warrior !Rogue
    .target Tannok Frosthammer
step << Rogue
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Compre as|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Kreg Bilmn
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equipe as|r |T135641:0|t[Adagas de Arremesso Balanceadas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >>Apague a |T135426:0|t[Faca de Arremesso Pequena Degradada] da mochila, pois ela não é mais necessária
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hogral Bakkan|r na sala dos fundos
    .trainer >>Treine suas magias de classe
    .target Hogral Bakkan
    .xp <6,1
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magis Fagulhamanto|r dentro, no andar de cima
    .trainer >>Treine suas magias de classe
    .target Magis Sparkmantle
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avar Marroforte|r no andar de cima
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .turnin -5626 >>Entregue A Simpatia da Luz << Dwarf
    .accept 5625 >>Aceite Vestimentas da Luz
    .target Maxan Anvol
step << Priest
    .goto Dun Morogh,45.805,54.568
    >>|cRXP_WARN_lançou|r |T135929:0|t[Lesser Heal] (Rank 2) |cRXP_WARN_and then|r |T135987:0|t[Power Word: Fortitude] |cRXP_WARN_on |cRXP_FRIENDLY_Mountaineer Dolf|r outside|r
    .complete 5625,1 --Heal and fortify Mountaineer Dolf
    .target Mountaineer Dolf
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .turnin 5625 >>Entregue Vestes da Luz
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .home >>Defina sua Pedra de Retorno na Destilaria Cervaforte
    .vendor >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_o máximo que puder|r << Priest/Mage/Warlock
    .target Innkeeper Belm
    .bindlocation 2102
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Granis Celeraxa|r lá dentro
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>Entre no prédio Ferraria
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    #label Blacksmithing1
    .goto 1426,45.344,51.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tognus Pederfogo|r
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135255:0|t [Contrapesos Ásperos] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Paladin
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Tognus Flintfire
step
    #requires DeleteOldDaggers << Rogue
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .accept 400 >>Aceite Ferramentas para Gradaço
    .target Tharek Blackstone
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piloto Urrabolha|r e |cRXP_FRIENDLY_Piloto Marchapedra|r
    >>|cRXP_WARN_Não mate nenhum |cRXP_ENEMY_Young Preto Ursos|r no caminho|r
    .accept 317 >>Aceite Provisões para a Vaporeta
    .goto Dun Morogh,49.426,48.410
    .target Pilot Bellowfiz
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .accept 313 >>Aceite O Covil dos Cansados
    .goto Dun Morogh,49.622,48.612
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Beldin Gradaço|r e o |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|cRXP_FRIENDLY_ Loslor Rudge|r
    >>|cRXP_WARN_If you can't afford it, skip this step|r
    .turnin 400 >>Entregue Ferramentas para Gradaço
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >>Aceite Sem Munição não Tem Negócio
    .collect 2901,1 --Mining Pick (1)
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
    .train 2018,3 --Blacksmithing
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Beldin Gradaço|r e o |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >>Entregue Ferramentas para Gradaço
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >>Aceite Sem Munição não Tem Negócio
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Yarr Malhapedra|r no andar de baixo
    >>|cRXP_WARN_If you can't afford it, skip this step|r
    .train 2575 >>Aprenda |T134708:0|t[Mineração]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith BearFur
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,1 --Chunk of Boar Meat (4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    #completewith BearFur
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Thick Urso Fur|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
step << !Warrior !Paladin !Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,43.5,52.5,0
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    >>Mate os |cRXP_ENEMY_Young Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Thick Urso Fur|r
    >>Mate |cRXP_ENEMY_Large Crag Boars|r e |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Large Crag Boar
    .mob +Crag Boar
step << !Paladin !Warrior !Rogue
    #optional
    #completewith EvershineEnd
    >>Mate |cRXP_ENEMY_Large Crag Boars|r e |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Large Crag Boar
    .mob Crag Boar
step << !Paladin !Warrior !Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 317 >>Entregue Provisões para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
    .target Pilot Bellowfiz
step << Paladin/Warrior/Rogue
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>Entre no prédio Ferraria
step << Gnome Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    .goto 1426,45.288,52.193
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step
    #optional
    #completewith BBBR
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre na Destilaria Cervaforte
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Priest/Mage/Warlock
    #optional
    #completewith next
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 >>|cRXP_BUY_Compre tanto|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele quanto você conseguir pagar|r
    .target Innkeeper Belm
    .money <0.0125
    .itemcount 1179,<1 --Ice Cold Milk (1)
    .xp >10,1
step
    #label BBBR
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r lá fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
#xprate <1.5
    #optional
    #completewith next
    .goto 1426,42.982,54.755
    .subzone 136 >>Vá para a Toca dos Cabelos Brancos
    .isOnQuest 313
step
#xprate <1.5
    #optional << Warrior/Paladin/Rogue
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Abate |cRXP_ENEMY_Wendigos|r e |cRXP_ENEMY_Wendigos Jovens|r. Saqueie-os pelo |cRXP_LOOT_Wendigo Crinas|r
    >>|cRXP_WARN_Lembre-se de manter os olhos abertos para|r |T134566:0|t[Copper Veins] |cRXP_WARN_que produzem|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para confeccionar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Lembre-se de manter os olhos abertos para|r |T134566:0|t[Copper Veins] |cRXP_WARN_que produzem|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para confeccionar|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,3 << Warrior/Paladin/Rogue --Blacksmithing Trained
step << Warrior/Paladin/Rogue
#xprate <1.5
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Abate |cRXP_ENEMY_Wendigos|r e |cRXP_ENEMY_Wendigos Jovens|r. Saqueie-os pelo |cRXP_LOOT_Wendigo Crinas|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
    .train 2018,1 << Warrior/Paladin/Rogue --Blacksmithing Not Trained
step
    .goto Dun Morogh,44.13,56.95
    >>Abra o |cRXP_PICK_Caixote de Munição|r. Saque-o para obter |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #optional
    #completewith next
    .goto 1426,40.632,62.794,40,0
    .goto Dun Morogh,40.682,65.130,15 >>Vá para |cRXP_FRIENDLY_Hegnar Estremetiro|r
step
    #label BearFur
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .turnin 5541 >>Entregue Sem Munição não Tem Negócio
    .target Hegnar Rumbleshot
step << Warrior/Paladin/Rogue
    #loop
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>Abate os |cRXP_ENEMY_Young Preto Ursos|r. Saque-os para obter |cRXP_LOOT_Fur|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob +Crag Boar
    .mob +Large Crag Boar
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .goto 1426,43.452,58.760,0
    .goto 1426,44.898,50.142,0
    .goto 1426,50.555,51.778,0
    .goto 1426,43.452,58.760,60,0
    .goto 1426,44.969,55.078,60,0
    .goto 1426,43.748,51.885,60,0
    .goto 1426,44.243,50.923,60,0
    .goto 1426,44.898,50.142,60,0
    .goto 1426,45.395,49.347,60,0
    .goto 1426,48.092,49.904,60,0
    .goto 1426,49.177,51.013,60,0
    .goto 1426,50.555,51.778,60,0
    .mob +Young Black Bear
step << Warrior/Paladin/Rogue
    #completewith Ribs
    .goto 1426,43.704,65.296,0
    .goto 1426,47.657,64.039,0
    .goto 1426,46.285,59.797,0
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para suas |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 317 >>Entregue Provisões para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
    .target Pilot Bellowfiz
step << Warrior/Paladin/Rogue
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .turnin 313 >>Entregue O Covil dos Grisalhos
    .target Pilot Stonegear
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    >>|cRXP_BUY_Compre um|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dele|r
    .collect 2901,1 --Mining Pick (1)
    .target Loslor Rudge
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,50.01,50.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Yarr Malhapedra|r no andar de baixo
    .train 2575 >>Aprenda |T134708:0|t[Mineração]
    .target Yarr Hammerstone
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step << Warrior/Paladin/Rogue
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r lá fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step << !Warrior !Paladin !Rogue
    #optional
    #loop
    .goto 1426,38.874,61.932,0
    .goto 1426,38.783,60.304,0
    .goto 1426,36.237,60.316,0
    .goto 1426,38.874,61.932,45,0
    .goto 1426,38.783,60.304,45,0
    .goto 1426,36.237,60.316,45,0
    .xp 7 >>Suba até o nível 7
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .mob Crag Boar
step << Warrior/Paladin/Rogue
    #optional
    #loop
    .goto 1426,48.523,57.088,60,0
    .goto 1426,46.285,59.797,60,0
    .goto 1426,43.704,65.296,60,0
    .goto 1426,44.729,65.685,60,0
    .goto 1426,45.128,64.702,60,0
    .goto 1426,46.111,64.349,60,0
    .goto 1426,47.657,64.039,60,0
    .goto 1426,49.484,62.370,60,0
    .goto 1426,49.156,59.842,60,0
    .goto 1426,49.403,58.855,60,0
    .xp 7 >>Suba até o Nível 7
step << Paladin/Warrior/Rogue
    #optional
    #completewith Blacksmithing1
    .goto 1426,45.695,51.911,20 >>Entre no prédio Ferraria
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith Tundra
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith Tundra
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith Tundra
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre um|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith Tundra
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue
    #optional
    #completewith next
    .goto 1426,46.952,52.050,8,0
    .goto 1426,47.153,51.939,8 >>Entre na Destilaria Cervaforte
step << Warrior/Rogue
    .goto Dun Morogh,46.9,52.1,20,0
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 > |cRXP_BUY_Compre até 15|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele se você puder pagar|r
    .target Innkeeper Belm
    .itemcount 4541,<1 --Freshly Baked Bread (1)
    .xp >10,1
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #label Chillbreeze
    .goto 1426,41.054,47.492
    .subzone 801 >>Viaje para o Vale da Brisa Fria
step << Paladin/Warrior/Rogue
    #optional
    #completewith Tundra
    #requires Chillbreeze
    .goto 1426,35.942,52.030,15,0
    .goto Dun Morogh,34.577,51.652,20 >>Vá para |cRXP_FRIENDLY_Tundra MacGrann|r
step
    #label Tundra
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >>Aceite Por Baixo da Carne-seca
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    .subzone 137 >>Vá para Brewnall Village
step << !Mage !Priest !Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Keeg Gibn
step << Priest/Mage/Warlock
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,20
    .target Keeg Gibn
    .isOnQuest 318
step
    #label EvershineEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r e |cRXP_FRIENDLY_Marleth Cervevada|r
    .turnin 318 >>Entregue Sempre-aceso
    .accept 319 >>Aceite Tudo pela Sempre-aceso
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >>Aceite A Guerra das Cervejas
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mate os |cRXP_ENEMY_Elder Crag Boars|r. Saque-os para obter suas |cRXP_LOOT_Crag Javali Ribs|r
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r e os |cRXP_ENEMY_Snow Leopards|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestAvailable 384
step
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Abate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_anciões Crag Boars|r e os |cRXP_ENEMY_Neve Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    .goto Dun Morogh,30.189,45.725
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .turnin 319 >>Entregue Tudo pela Sempre-aceso
    .accept 320 >>Aceite Fale Novamente com Urrabolha
    .target Rejold Barleybrew
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+3735 >>Suba até 3735+/4500xp
    .isQuestAvailable 384
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .goto 1426,31.212,39.189,60,0
    .goto 1426,30.049,38.561,60,0
    .goto 1426,29.198,40.458,60,0
    .goto 1426,29.362,42.975,60,0
    .goto 1426,28.298,44.441,60,0
    .goto 1426,27.876,45.549,60,0
    .goto 1426,26.294,46.484,60,0
    .goto 1426,27.562,47.657,60,0
    .goto 1426,28.020,48.267,60,0
    .goto 1426,27.874,49.402,60,0
    .goto 1426,29.443,50.102,60,0
    .goto 1426,28.412,52.449,60,0
    .goto 1426,27.650,53.709,60,0
    .goto 1426,26.769,55.778,60,0
    .goto 1426,29.294,54.249,60,0
    .goto 1426,31.767,49.790,60,0
    .goto 1426,33.832,48.153,60,0
    .goto 1426,31.691,46.837,60,0
    .xp 7+4360 >>Suba até 4360+/4500xp
    .isQuestTurnedIn 384
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>|cRXP_WARN_Faça o skip de morte Dun Morogh → Pantanal. Siga a seta atentamente|r
    >>|cRXP_WARN_NÃO salte de nenhuma altura ainda|r
    .zone Wetlands >>|cRXP_WARN_Suba a montanha, depois desça passando pelo padrão irregular até que sua subzona mude para o Pantanal|r
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Salte para longe da montanha em direção ao norte ou noroeste|r
    .deathskip >>Morra e reapareça na Baía Baradin com o |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestAvailable 983
    .target Anjo da Cura
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>Nade em direção à margem perto de Menethil Harbor
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Wetlands >>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >>Vá para Kharanos
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_e um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarven Cervaforte|r lá embaixo
    .turnin 308 >>Entregue Distraindo Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Clique no |cRXP_PICK_Unguarded Trovão Ale Barril|r
    .turnin 310 >>Entregue A Guerra das Cervejas
    .accept 311 >>Aceite Fale Novamente com Marleth
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r lá fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gimrizz Umbrenagem|r
    .train 980 >>Treine |T136139:0|t[Maldição da Agonia]
    .train 5782 >>Treine |T136183:0|t[Medo]
    .goto Dun Morogh,47.327,53.693
    .target +Gimrizz Shadowcog
    .xp <8,1
step << Warlock
    #optional
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannie Silvombida|r
    >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Seta de Fogo (Rank 2)] |cRXP_BUY_e o|r |T133738:0|t[Grimório of Pacto de Sangue (Rank 1)] |cRXP_BUY_dela, se você puder pagar. Se não, você pode comprar depois|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannie Silvombida|r
    >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório de Seta de Fogo (Rank 2)] |cRXP_BUY_dela se puder. Se não, você pode comprar depois|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Dun Morogh,47.248,53.647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannie Silvombida|r
    >>|cRXP_BUY_Compre o|r |T133738:0|t [Grimório do Pacto de Sangue (Ranque 1)] |cRXP_BUY_dela se você puder pagar. Caso não, compre depois|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Dannie Fizzwizzle
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hogral Bakkan|r na sala dos fundos
    .trainer >>Treine suas magias de classe
    .target Hogral Bakkan
step << Paladin
    .goto Dun Morogh,47.597,52.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avar Marroforte|r no andar de cima
    .trainer >>Treine suas magias de classe
    .target Azar Stronghammer
step << Warrior
    .goto Dun Morogh,47.360,52.646
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Granis Celeraxa|r lá dentro
    .trainer >>Treine suas magias de classe
    .target Granis Swiftaxe
step << Mage
    .goto Dun Morogh,47.498,52.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magis Fagulhamanto|r dentro, no andar de cima
    .train 118 >>Treine |T136071:0|t[Polimorfia]
    .target Magis Sparkmantle
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step << Gnome Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio]
    .target Grawn Thromwyn
    .money <0.0536
    .goto Dun Morogh,45.290,52.190
    .collect 2488,1 --Collect Gladius (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Gnome Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Dwarf Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T132401:0|t[Machado Largo]
    .target Grawn Thromwyn
    .money <0.0460
    .goto Dun Morogh,45.290,52.190
    .collect 2491,1 --Collect Large Axe (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.30
step << Dwarf Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.29
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete]
    .target Grawn Thromwyn
    .money <0.0400
    .goto Dun Morogh,45.290,52.190
    .collect 2494,1 --Collect Stiletto (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grawn Thromwyn|r
    >>|cRXP_BUY_Compre e equipe um|r |T133053:0|t[Marreta de Madeira]
    .target Grawn Thromwyn
    .money <0.0631
    .goto Dun Morogh,45.290,52.190
    .collect 2493,1 --Collect Wooden Mallet (1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Warrior/Rogue/Paladin
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 >>|cRXP_BUY_Compre até 20|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele se você puder pagar|r << Warrior/Rogue
    .vendor 1247 >>|cRXP_BUY_Compre 5|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele se você puder|r << Paladin
    .money <0.0125 << Paladin
    .target Innkeeper Belm
step << Priest/Mage/Warlock
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .vendor 1247 >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se puder|r
    .target Innkeeper Belm
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .accept 287 >>Aceite A Fortaleza Jubafria
    .target Senir Whitebeard
step << !Rogue !Warrior !Paladin
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .turnin 313 >>Entregue O Covil dos Grisalhos
    .target Pilot Stonegear
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    >>|cRXP_WARN_Escolha a|r |T135637:0|t[Faca Campeira]|cRXP_WARN_. Guarde-a para depois|r << Rogue
    .turnin 320 >>Fale novamente com Urrabolha << !Rogue
    .turnin 320,3 >>Fale novamente com Urrabolha << Rogue
    .target Pilot Bellowfiz
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r dentro
    .accept 412 >>Aceite Operação Remendão
    .target Razzle Sprysprocket
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >>Suba pela rampa até Cintilação Serra
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Abata os |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Abate |cRXP_ENEMY_Frostmane Seers|r. Saqueie-os para obter |cRXP_LOOT_Tremulerva|r
    >>Abra o |cRXP_PICK_Tremulerva Cestos|r no chão. Saque deles para obter |cRXP_LOOT_Tremulerva|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Lance|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Mage
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Warlock
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Pegue |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r patrule para fora da caverna. Uma vez que ele saia da caverna, você pode entrar e saquear|r |cRXP_PICK_MacGrann's Carne Locker|r << !Mage !Warlock
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Click here for video reference|r << !Mage !Warlock
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Entregue O Saque Roubado de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r e |cRXP_FRIENDLY_Marleth Cervevada|r
    .turnin 315 >>Entregue Em Busca da Cerveja Perfeita
    .accept 413 >>Aceite Cerveja Tremeluz
    .goto Dun Morogh,30.189,45.725
    .target +Rejold Barleybrew
    .turnin 311 >>Fale novamente com Marleth
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
#xprate <1.5
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Abate |cRXP_ENEMY_Leper Gnomes|r. Saqueie-os para obter |cRXP_LOOT_Gyromechanic Engrenagens|r e |cRXP_LOOT_Restabilization Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Abate os |cRXP_ENEMY_Frostmane Headhunters|r dentro da caverna
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>Corra subindo pela lateral da entrada da caverna. Pule para A Fortaleza Jubafria
    .isOnQuest 287
step
    #requires Headhunters
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Largar para dentro do pequeno quarto sem saída da caverna|r
    >>|cRXP_WARN_Não se preocupe com morrer pois você está prestes a ressuscitar em Kharanos|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 287 >>Entregue A Fortaleza Jubafria
    .accept 291 >>Aceite Os Relatórios
    .target Senir Whitebeard
step << Rogue
    #optional
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hogral Bakkan|r na sala dos fundos
    .accept 2218 >>Aceite O Caminho para a Salvação
    .target Hogral Bakkan
    .xp <10,1
step
    #optional
    .goto Dun Morogh,47.180,52.610
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thamner Poli|r
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
    .target Thamner Pol
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r dentro
    .turnin 412 >>Entregue Operação Remendão
    .target Razzle Sprysprocket
step << Warrior
    #optional
    #completewith next
    +|cRXP_WARN_Triture até ter 10s30c em itens para vender|r
    .money >0.1030
step << Warrior
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >>Viaje para Ironforge
step << Warrior
    .goto Ironforge,62.237,89.628
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r ou |cRXP_FRIENDLY_Bulif Manopedra|r
    .trainer >>Se você está em um grupo ou tem alguém para ajudá-lo a matar |cRXP_ENEMY_Ragash|r agora, treine Maças de Duas Mãos de |cRXP_FRIENDLY_Bulif Manopedra|r, caso contrário treine Arremesso de |cRXP_FRIENDLY_Bixi Bateagita|r. Se você não tem certeza qual treinar, apenas treine Arremesso
    .target Bixi Wobblebonk
    .target Buliwyf Stonehand
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r embaixo
    >>|cRXP_BUY_Compre as|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    .goto 1455,62.378,88.671
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r embaixo
    >>|cRXP_BUY_Compre as|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >11,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Dirt
    +|cRXP_WARN_Equipe as|r |T135641:0|t[Adagas de Arremesso Balanceadas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    .isQuestAvailable 1339
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >>Saia de Altaforja
    .zoneskip Ironforge,1
step << skip --logout skip << Warrior
    #optional
    .goto 1455,48.046,83.707
    >>|cRXP_WARN_Caminhe até a beira do piso de metal no topo da seta do waypoint|r
    .zone Dun Morogh >>|cRXP_WARN_Posicione seu personagem até parecer que está flutuando, depois faça um Logout Pular ao fazer logout e login novamente|r
    .zoneskip Ironforge,1
step
    #optional
    #completewith next
    .goto 1426,57.936,50.787,0
    >>Abate os |cRXP_ENEMY_Elder Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isso será usado para aumentar sua|r |T133971:0|t[Culinária]|cRXP_WARN_ depois|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária]|cRXP_WARN_ para uma missão em Auberdine depois|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Suba o caminho de terra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Leve |cRXP_ENEMY_Ragash|r para|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_CLIQUE AQUI Se está com dificuldade|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Abate |cRXP_ENEMY_Ragash|r. Saqueie-o para obter sua |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Leve-o até o guarda ao sul da fazenda. Certifique-se de causar 51%+ de dano a ele|r
    >>|cRXP_WARN_Vigie o vídeo abaixo antes de tentar matar |cRXP_ENEMY_Ragash|r. Pode ser derrotado sozinho em qualquer classe|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step << Warrior/Paladin
    #sticky
    #optional
    .equip 16,3103 >>|cRXP_WARN_Equipe o|r |T133052:0|t[|cRXP_FRIENDLY_Martelo de Cristálgida|r]
    .use 3103
    .itemcount 3103,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.3
    .train 199,3
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Abate os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #completewith next
    .goto Dun Morogh,68.379,54.492,60 >>Vá para Pedreira Gol'Bolar
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
    .money <0.0100
step
    #optional
    #completewith next
    .goto Dun Morogh,68.6,54.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor 1237 >>|cRXP_BUY_Compre até 10|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_dele se necessário|r << Warrior/Rogue
    .vendor 1237 >>|cRXP_BUY_Compre até 5|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se necessário|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r e o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 433 >>Aceite O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #sticky
    #label Skullthumpers
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Mate os |cRXP_ENEMY_Rockjaw Skullthumpers|r dentro ou fora da mina
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #optional
    #completewith next
    .goto 1426,70.750,56.219,20 >>Entre em Gol'Bolar Pedreira Mina
    .isOnQuest 433
step
    #loop
    .goto 1426,70.750,56.219,0
    .goto 1426,71.344,51.873,0
    .goto 1426,72.570,53.488,0
    .goto 1426,70.750,56.219,30,0
    .goto 1426,70.964,54.538,30,0
    .goto 1426,70.679,53.301,30,0
    .goto 1426,70.461,52.292,30,0
    .goto 1426,71.344,51.873,30,0
    .goto 1426,71.999,50.204,30,0
    .goto 1426,72.456,51.300,30,0
    .goto 1426,72.613,52.509,30,0
    .goto 1426,72.570,53.488,30,0
    .goto 1426,71.790,52.278,30,0
    .goto 1426,71.591,51.831,30,0
    >>Mate os |cRXP_ENEMY_Rockjaw Bonesnappers|r dentro da mina
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    #optional
    #label RockjawEnd
    #requires Skullthumpers
--XXREQ Placeholder invis step until multiple requires per step
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r e o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>Entregue O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step
    #optional
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .goto 1426,70.073,57.030,45,0
    .goto 1426,69.223,58.242,45,0
    .goto 1426,68.533,58.372,45,0
    .goto 1426,67.687,60.059,45,0
    .goto 1426,68.958,59.357,45,0
    .goto 1426,70.475,59.420,45,0
    .xp 10 >>Suba até o nível 10
    .mob Rockjaw Skullthumper
step << Priest/Rogue
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 131
step << Priest
    .goto Dun Morogh,47.342,52.190
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maxan Begurno|r dentro
    .trainer >>Treine suas magias de classe
    .target Maxan Anvol
step << Rogue
    .goto Dun Morogh,47.563,52.608
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hogral Bakkan|r na sala dos fundos
    .accept 2218 >>Aceite O Caminho para a Salvação
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Hogral Bakkan
step
    #optional
    #completewith LochEnter
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Abate os |cRXP_ENEMY_Scarred Crag Boars|r e os |cRXP_ENEMY_Elder Crag Boars|r. Saque os |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    .collect 769,40,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<10,1 -- shows if cooking is >10
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >>Vá para o |cRXP_FRIENDLY_Piloto Pisafundo|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Clique em |cRXP_PICK_Cadáver Anão|r no chão
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    .goto Dun Morogh,78.97,37.14
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o por seu |cRXP_LOOT_Mangy Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    >>|cRXP_WARN_Escolha a|r |T135641:0|t[Adaga do Artífice] << Rogue
    .turnin 417 >>Entregue A Vingança do Piloto << !Rogue
    .turnin 417,1 >>Entregue A Vingança do Piloto << Rogue
    .target Pilot Hammerfoot
step << Rogue
    #completewith ShimmerStoutEnd
    +|cRXP_WARN_Equipe a|r |T135641:0|t[Adaga do Artífice] |cRXP_WARN_na mão principal|r
    .use 2218
    .itemcount 2218,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.7
step
    #optional
    #completewith next
    .goto 1426,82.988,40.387,40,0
    .goto 1426,81.220,42.798,40,0
    .goto 1426,79.556,50.096,30,0
    .goto Dun Morogh,86.278,48.812,20 >>Vá para o |cRXP_FRIENDLY_Montanhista Cervevada|r
step
    #label ShimmerStoutEnd
    .goto Dun Morogh,86.278,48.812
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Montanhista Cervevada|r
    .turnin 413 >>Entregue Cerveja Tremeluz
    .accept 414 >>Aceite Cerveja para Kadrell
    .target Mountaineer Barleybrew
step
    #optional
    #label LochEnter
    #completewith next
    .goto 1432,16.494,58.424,20,0
    .goto 1432,19.594,62.735,20,0
    .goto 1432,20.749,64.326,20,0
    .goto 1432,21.106,65.007,20,0
    .goto 1432,21.388,66.357,20,0
    .goto 1432,21.498,67.840
    .subzone 924 >>Vá para Loch Modan pelo Portal do Sul << !Rogue !Warrior
    .zone Loch Modan >>Viaje através do Portal Sul para Loch Modan << Rogue/Warrior
step << !Rogue !Warrior
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step << !Rogue !Warrior
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>Entre no Bunker. Vá para o topo
step << !Rogue !Warrior
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r dentro do bunker
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,26.67,56.94
    >>Mate os |cRXP_ENEMY_Troggs Lascadores de Pedra|r e os |cRXP_ENEMY_Batedores Lascadores de Pedra|r. Saque-os pelo seu |cRXP_LOOT_Dentes de Trogg de Pedra|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Batedores Lascadores de Pedra|r lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 14-20 de dano)|r
    >>|cRXP_WARN_Esta é uma área de reaparição rápida. Você não deve precisar sair daqui|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << Mage
#xprate >1.49
    .goto Loch Modan,26.67,56.94
    .xp 12-3675 >>Farme até estar a 3675xp do nível 12
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << !Rogue !Warrior !Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>Corra para cima pelo caminho de terra, depois desça para o bunker
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r dentro do bunker
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
step << !Rogue !Warrior !Warlock
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #optional
    .isQuestAvailable 3524
    .goto 1432,23.522,70.102,40,0
    .goto 1432,27.501,65.367,30,0
    .goto 1432,34.405,48.276
    .subzone 144 >>Voe para Thelsamar
step
#xprate <1.5
    #sticky
    #label StouttoKadrell
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .turnin 414 >>Entregue Cerveja para Kadrell
    .accept 416 >>Aceite Pegando Ratos << Mage/Warlock
    .accept 1339 >>Aceite Tarefa do Montanhista Lançatroz << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
#xprate >1.49
    #sticky
    #label StouttoKadrell
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .turnin 414 >>Entregue Cerveja para Kadrell
    .accept 416 >>Aceite Pegando Ratos << Warlock
    .accept 1339 >>Aceite Tarefa do Montanhista Lançatroz << Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #completewith Cooking1 << !Mage !Rogue !Warrior !Warlock
    #completewith Hearthstove << Mage/Rogue/Warrior/Warlock
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>Entre na Stoutlager Estalagem
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << !Mage !Rogue !Warrior !Warlock
    #label Cooking1
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_também dela se necessário|r << !Rogue
    >>|cRXP_WARN_Isto é utilizado para preparar|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em barcos ou bondes para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Mage/Rogue/Warrior/Warlock
    #label Hearthstove
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r dentro
    .home >>Defina sua Pedra de Retorno em Thelsamar << Rogue/Warrior/Warlock
    .vendor >>|cRXP_BUY_Compre até 40|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << !Rogue !Warrior
    .collect 1179,35 << Mage/Warlock
    .target Innkeeper Hearthstove
    .bindlocation 2101
step << Mage/Warlock
#xprate <1.5 << !Warlock
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >>|cRXP_BUY_Compre|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_dela se necessário|r
    .target Yanni Stoutheart
step << Rogue/Warrior/Warlock
    #optional
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_também dela se necessário|r
    >>|cRXP_WARN_Isto é utilizado para preparar|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em barcos ou bondes para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
    .money <1 -- don't want them buying etc, unless rich alts, money too tight later
step << skip
    #loop
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .turnin 414 >>Entregue Cerveja para Kadrell
    .accept 416 >>Aceite Pegando Ratos << Mage/Warlock
    .accept 1339 >>Aceite Tarefa do Montanhista Lançatroz << Mage/Rogue/Warrior/Warlock
    .target Mountaineer Kadrell
step
    #optional
    #requires StouttoKadrell
step << Mage/Warlock
#xprate <1.5 << !Warlock
    #optional
    #completewith Algaz
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    >>|cRXP_WARN_Guarde qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_para usar para subir de nível |T133971:0|t[Culinária] |cRXP_WARN_mais tarde|r
    .mob Elder Black Bear
    .mob Mountain Boar
    .mob Forest Lurker
    .isOnQuest 418
    .subzoneskip 925 --Algaz Station
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #optional
    #label Algaz
    #completewith Stormpike1
    .goto 1432,23.490,18.008
    .subzone 925 >>Viagem para Algaz Station
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #optional
    #requires Algaz
    #completewith Stormpike1
    .goto Loch Modan,24.13,18.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor|r
    .vendor >>|cRXP_WARN_Vendor Lixo|r
    .target Gothor Brumn
    .isOnQuest 1339
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #label Stormpike1
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r dentro do bunker
    .turnin 1339 >>Entregue Montanhista Lançatroz's Task
    .accept 1338 >>Aceite Ordens dos Lançatroz << Rogue/Warrior/Warlock
    .accept 307 >>Aceite Patas Nojentas << Mage/Warlock
    .target Mountaineer Stormpike
step << Mage
#xprate <1.5
    #optional
    #completewith ESSM
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step << Mage
#xprate <1.5
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os pelas |cRXP_LOOT_Orelhas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
#xprate <1.5
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>Entre na Mina do Riacho Prateado
step << Mage
#xprate <1.5
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r. Saqueie-os para o |cRXP_LOOT_Miners' Equipamento|r
    >>|cRXP_WARN_Os |cRXP_PICK_Caixotes da Liga dos Mineiros|r podem ser encontrados por toda a Mina|r
    .complete 307,1 -- Miners' Gear (4)
step << Mage
#xprate <1.5
    #optional
    #completewith FilthyMountaineer
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Mage
#xprate <1.5
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os pelas |cRXP_LOOT_Orelhas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Mage
#xprate <1.5
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vá ao Comerciante e repare se necessário|r
    .target Gothor Brumn
step << Mage
#xprate <1.5
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .target Mountaineer Stormpike
step << Mage
#xprate <1.5
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
step << Rogue/Warrior
    #completewith FlytoIF
    +Grind mobs until you have at least 30 Silver worth of money e vendorables << Rogue
    +Grind mobs until you have at least 10 Silver worth of money e vendorables << Warrior
    .money >0.3000 << Rogue
    .money >0.1000 << Warrior
step << Mage/Rogue/Warrior/Warlock
#xprate <1.5 << Mage
    #completewith FlytoIF
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 144
step << Mage
#xprate <1.5
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Rato Pegando
step << Mage
#xprate <1.5
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .target Vidra Hearthstove
step << Mage
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_também dela se necessário|r << !Rogue
    >>|cRXP_WARN_Isto é utilizado para preparar|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em barcos ou bondes para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Dwarf/Gnome
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .accept 6387 >>Aceite Alunos Brilhantes
    .target Brock Stoneseeker
step << Mage
    .goto Loch Modan,26.67,56.94
    .xp 12 >>Suba até o nível 12.
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Gnome/Dwarf
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .turnin 6387 >>Entregue Alunos Brilhantes
    .accept 6391 >>Aceite Carona para Altaforja
    .target Thorgrum Borrelson
step
    #label FlytoIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>>Voe para Altaforja
    .target Thorgrum Borrelson
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Golnir Topadão|r
    .target Golnir Bouldertoe
    .goto Ironforge,51.521,26.311
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
step << Rogue
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r embaixo
    .turnin -2218 >>Vire na Estrada para Salvação
    .target Hulfdan Blackbeard
step << Paladin
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .trainer >>Treine suas magias de classe
    .target Brandur Ironhammer
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
    .zoneskip Darkshore
    .zoneskip Bloodmyst Isle
    .zoneskip Azuremyst Isle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >>Entregue Os Relatórios
    .isOnQuest 291
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .target Gryth Thurden
    .goto Ironforge,55.501,47.742
    .turnin 6388 >>Entregue Grif Trovino
    .accept 6392 >>Aceite Retorno a Brock
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r e |cRXP_FRIENDLY_Bulif Manopedra|r
    .train 2567 >>Treine Arremesso
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >>Treine Maças de Duas Mãos
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
-- Warrior training Def stance in SW. Really long/bad to do in Dun Morogh. Can also train Swords while in SW for potential early 2h swords
step << Warrior skip
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muren Lançatroz|r
    .accept 1678 >>Aceite Vejrek
    .target Muren Stormpike
step << Warrior skip
    #optional
    #completewith next
    .goto Dun Morogh,53.28,35.17
    .zone Dun Morogh >>|cRXP_WARN_Saia de Ironforge|r
step << Warrior skip
    .goto Dun Morogh,27.8,58.0
    >>Mate for his |cRXP_LOOT_Cabeça|r
    .complete 1678,1 --Vejrek's Head (1)
    .mob Vejrek
step << Warrior skip
    #optional
    #completewith next
    .zone Ironforge >>Viaje para Ironforge
step << Warrior skip
    .goto Ironforge,70.762,90.261
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muren Lançatroz|r
    .turnin 1678 >>Entregue Vejrek
    .accept 1680 >>Aceite Tormus Baixaforja
    .target Muren Stormpike
step << Warrior skip
    .goto Ironforge,48.650,42.485
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tormus Baixaforja|r
    .turnin 1680 >>Entregue Tormus Baixaforja
    .target Tormus Deepforge
--
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133912:0|t[Costa Negra Grouper]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Priest/Paladin
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para elevar sua|r |T133971:0|t[Culinária] |cRXP_BUY_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << !Rogue !Warrior !Warlock
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .turnin 6388 >>Entregue Grif Trovino
    .fly Menethil >>Voe para Menethil Harbor
    .target Gryth Thurden
step << Rogue/Warrior/Warlock
    #completewith EnterSW
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entre no Metrô Correfundo
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio
    .target Monty
    .accept 6661 >>Aceite Ratos de Porão
step << Rogue/Warrior/Warlock
    .use 17117 >>|cRXP_WARN_Use o|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em|r |cRXP_ENEMY_Deeprun Ratos|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >>Virar em Ratos de Porão
    .timer 11,Ratos de Porão RP
    .accept 6662 >>Aceite Meu Irmão, Nipsy
step << Rogue/Warrior/Warlock
    #completewith next
    .zone Stormwind City >>Pegue o Metrô para Ventobravo
    >>|cRXP_WARN_Nível seus|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_se necessário enquanto espera pelo Metrô|r
    >>|cRXP_WARN_Você precisará de seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar no nível 80 para uma missão no nível 24|r << Rogue !Dwarf
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nipsy|r quando sair do Metrô
    >>|cRXP_FRIENDLY_Nipsy|r |cRXP_WARN_está na plataforma central|r
    .turnin 6662 >>Entregue Espetinhos de... rato
    .target Nipsy
step << Rogue/Warrior/Warlock
    #label EnterSW
    .zone Stormwind City >>Entre em Ventobravo
step << Warlock
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >>Aceite Entrega para Lançatroz
    .target Grimand Elmore
step << Rogue/Warrior/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .target Furen Longbeard
    .goto StormwindClassic,58.091,16.552
    .turnin 1338 >>Entregue Ordens dos Lançatroz
step << Warrior
    #optional
    #sticky
    .abandon 1678 >>Abandone Vejrek. Você completará a missão da Postura de Defesa em Ventobravo em seu lugar
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,73.33,52.43,20,0
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .trainer >>Treine suas magias de classe
    .accept 1638 >>Aceite Treinamento do Guerreiro
    .target Ilsa Corbin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >>Entregue Treinamento do Guerreiro
    .accept 1639 >>Aceite Bartolino o Bêbado - Missão
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >>Entregue Bartolino o Bêbado - Missão
    .accept 1640 >>Aceite Derrote Bartolino - Missão
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Ataque |cRXP_ENEMY_Bartolino|r. Ele se renderá em 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >>Entregue Derrote Bartolino - Missão
    .accept 1665 >>Aceite Caneca do Bartolino
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1665 >>Entregue Caneca do Bartolino
    .target Harry Burlguard
step << Rogue/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine Espadas de Uma Mão << Rogue
    .trainer >>Treine Espadas de Duas Mãos << Warrior
    .target Woo Ping
    .money <0.1000 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, procure na Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 16,851 >>|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje] |cRXP_WARN_na sua mão principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2218 >>|cRXP_WARN_Equipe a|r |T135641:0|t[|cRXP_FRIENDLY_Adaga do Artífice|r] |cRXP_WARN_na sua mão secundária|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Warrior
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre uma|r |T133477:0|t[Maça Gigante] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, procure na Casa de Leilões por algo melhor ou mais barato|r
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre uma|r |T133477:0|t[Maça Gigante] |cRXP_BUY_dele|r
    .collect 1197,1 -- Giant Mace
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warrior
    #optional
    +Equipe a |T133477:0|t[Maça Gigante]
    .use 1197
    .itemcount 1197,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133912:0|t[Costa Negra Grouper]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Loch Modan e Costa Negra em breve|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T134342:0|t[Intestinos de Javali]
    >>|T134027:0|t[Carne de Urso]
    >>|T134437:0|t[Ícor de Aranha]
    >>|T133912:0|t[Costa Negra Grouper]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para elevar sua|r |T133971:0|t[Culinária] |cRXP_BUY_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para elevar sua|r |T133971:0|t[Culinária] |cRXP_BUY_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Loch Modan e Costa Negra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T134342:0|t[Intestinos de Javali]
    >>|T134027:0|t[Carne de Urso]
    >>|T134437:0|t[Ícor de Aranha]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Rogue/Warrior
    #completewith FlyMene
    .hs >>Vá para Thelsamar
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step << Rogue/Warrior
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << Rogue/Warrior
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_também dela se necessário|r << !Rogue
    >>|cRXP_WARN_Isto é utilizado para preparar|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em barcos ou bondes para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step << Rogue/Warrior
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >>Entregue Retorno a Brock
    .target Brock Stoneseeker
step << Rogue/Warrior
    #label FlyMene
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Menethil >>Voe para Menethil Harbor
    .target Thorgrum Borrelson
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Alliance Warlock
#name 11-14 Elwynn Forest/Loch Modan
#next 14-20 Névoa Rubra
#subgroup RestedXP Aliança 1-20
#defaultfor Gnome Warlock

step
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para Ventobravo
    .target Dungar Longdrink
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Treine Cajados
    .train 201 >>Treine Espadas de Uma Mão
    .target Woo Ping
    .money <0.3040
step
    #optional
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 227 >>Treine Cajados
    .target Woo Ping
    .money <0.2090
step
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 1120 >>Treine |T136163:0|t[Drenar Alma]
    .train 6201 >>Treine |T135230:0|t[Criar Pedra de Vida (Menor)]
    .train 696 >>Treine |T136185:0|t[Pele de Demônio (Rank 2)]
    .train 707 >>Treine |T135817:0|t[Imolação (Rank 2)]
    .target Ursula Deline
step
    #completewith GoldshireQuests
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >>Morra e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r usando |T136126:0|t[Conversão de Vida] e ficando na Fogueira ao seu lado
    .zoneskip Stormwind City,1
step
    #completewith GoldshireQuests
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>Viaje para Goldshire
step
#xprate <1.5
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .accept 62 >>Aceite A Mina Fundaprofunda
    .target Marshal Dughan
step
#xprate <1.5
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .accept 60 >>Aceite Velas Kobold
    .target William Pestle
step
#xprate <1.5
    #label GoldshireQuests
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .accept 47 >>Aceite Trocando Pó de Ouro
    .accept 40 >>Aceite Perigo Anfíbio
    .target Remy "Two Times"
step
#xprate >1.49
    #label GoldshireQuests
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .accept 40 >>Aceite Perigo Anfíbio
    .target Remy "Two Times"
step
    #optional
    #sticky
    .abandon 109 >>Abandone Relatar para Miguel Mantoforte
step
#xprate <1.5
    #completewith next
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Alguns inimigos podem ficar cinzas durante esta missão. Termine-a de qualquer forma, pois você precisa completar esta missão para desbloquear a próxima|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
#xprate <1.5
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>|cRXP_WARN_Entre e explore a Mina Fargodeep|r
    .complete 62,1 --Scout Through the Fargodeep Mine
step
#xprate <1.5
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Alguns inimigos podem ficar cinzas durante esta missão. Termine-a de qualquer forma, pois você precisa completar esta missão para desbloquear a próxima|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .accept 88 >>Aceite Princesa Tem Que Morrer!
	.goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
step
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >>Aceite Procurado: "Porqueiro"
    .goto Elwynn Forest,24.548,74.672
step
    .isOnQuest 176
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Abate |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r.
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em vários locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Você pode arrastá-lo de volta para a torre da guarda, certifique-se de que você cause pelo menos 51% de dano a ele|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    #optional
    .use 1307 >>|cRXP_WARN_Use a |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] para iniciar a missão|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>Aceite O Coletor
    .itemcount 1307,1
step
    #completewith HoggerTurnin
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
#xprate <1.5
    #optional
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[Vara de Luta Balanceada] |cRXP_WARN_recompensa de Hogger|r
    .turnin 176 >>Entregue Wanted: "Hogger"
    .turnin 123 >>Entregue O Coletor
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
    .target Marshal Dughan
    .isOnQuest 123
step
#xprate <1.5
    #label HoggerTurnin
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[Vara de Luta Balanceada] |cRXP_WARN_recompensa de Hogger|r
    .turnin 176 >>Entregue Wanted: "Hogger"
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
    .target Marshal Dughan
step
#xprate >1.49
    #optional
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[Vara de Luta Balanceada] |cRXP_WARN_recompensa de Hogger|r
    .turnin 176 >>Entregue Wanted: "Hogger"
    .turnin 123 >>Entregue O Coletor
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .target Marshal Dughan
    .isOnQuest 123
step
#xprate >1.49
    #label HoggerTurnin
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[Vara de Luta Balanceada] |cRXP_WARN_recompensa de Hogger|r
    .turnin 176 >>Entregue Wanted: "Hogger"
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .target Marshal Dughan
step
#xprate <1.5
    #optional
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .accept 147 >>Aceite Perseguição Implacável
    .target Marshal Dughan
step
#xprate <1.5
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Este é um item incrivelmente valioso durante todo o caminho até o nível 70|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .target Remy "Two Times"
step
#xprate <1.5
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
    .target William Pestle
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para baixo na Estalagem
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 755 >>Aprenda |T136168:0|t[Funil de Vida]
    .train 705 >>Treine |T136197:0|t[Seta Sombria (Rank 3)]
    .target Maximillian Crowe
    .xp <12,1
step
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    >>|cRXP_BUY_Compre até 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se você puder pagar|r
    .collect 1179,10
    .target Innkeeper Farley
    .subzoneskip 87,1
step
#xprate <1.5
    #optional
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >>Entre na Mina Jasperlode
step
#xprate <1.5
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Siga o caminho pelo meio para explorar Jasperlode Mina
    .complete 76,1 --Scout through the Jasperlode Mine
step
#xprate <1.5
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >>Saia Jasperlode Mina
    .subzoneskip 54,1
step
#xprate <1.5
    #optional
    #completewith Find
    +|cRXP_WARN_Atraia o |cRXP_ENEMY_Jovem Urso da Floresta|r para o|r |cRXP_FRIENDLY_Guarda Tomás|r
    >>|cRXP_WARN_Tente falar com o |cRXP_FRIENDLY_Guarda Tomás|r antes que o |cRXP_ENEMY_Jovem Urso da Floresta|r morra para os |cRXP_FRIENDLY_Stormwind Guards|r obter crédito de missão|r
    >>|cRXP_WARN_Garanta 51%+ de dano para obter crédito|r
    .mob Young Forest Bear
step
#xprate <1.5
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .turnin 35 >>Entregue Mais Preocupações
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
    .target Guard Thomas
step
#xprate >1.49
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .turnin 35 >>Entregue Mais Preocupações
    .target Guard Thomas
step
#xprate <1.5
    #completewith AcceptBundle
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você vir|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
    .goto Elwynn Forest,72.656,60.334
    >>Clique em |cRXP_PICK_Cadáver Meio Comido|r no chão
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
#xprate <1.5
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .accept 5545 >>Aceite Um Feixe de Encrenca
    .target Supervisor Raelen
step
#xprate <1.5
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricardo Fino|r
    .vendor >>Lixo Comerciante
    .target Rallic Finn
    .subzoneskip 88,1
step
#xprate <1.5
    #completewith Prowlers
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você vir|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
#xprate <1.5
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>Pegue os |cRXP_LOOT_Bundles of Madeira|r no chão na base das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step
#xprate <1.5
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Clique em |cRXP_PICK_Cadáver de Rolf|r no chão
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Murloc Foragers|r lançarão|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_que cura 61-68 de vida|r
    >>|cRXP_WARN_Puxar os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e lance|r |T136183:0|t[Medo] |cRXP_WARN_em um deles constantemente, e tente manter DoTs em ambos|r << Warlock
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
#xprate <1.5
    #completewith BundleOT
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você vir|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
    #loop
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,79.68,52.31,40,0
    .goto Elwynn Forest,80.86,52.17,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,79.76,56.70,40,0
    .goto Elwynn Forest,80.15,60.03,40,0
    .goto Elwynn Forest,80.24,61.46,40,0
    .goto Elwynn Forest,81.27,61.59,40,0
    .goto Elwynn Forest,81.58,62.64,40,0
    .goto Elwynn Forest,82.79,60.12,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    .goto Elwynn Forest,81.77,59.17,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    >>Pegue os |cRXP_LOOT_Bundles of Madeira|r no chão na base das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step
#xprate <1.5
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .turnin 5545 >>Entregue Um Feixe de Encrenca
    .target Supervisor Raelen
step
#xprate <1.5
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .accept 83 >>Aceite Mercadorias de Linho Vermelho
    .target Sara Timberlain
step
#xprate <1.5
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
#xprate <1.5
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
step
#xprate <1.5
    #completewith PrincessCollar
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
#xprate <1.5
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Mate |cRXP_ENEMY_Surena Caledon|r. Saque o |cRXP_LOOT_Choker|r dela
    >>Mate |cRXP_ENEMY_Morgan, o Coletor|r. Saque dele o |cRXP_LOOT_Anel do Coletor|r
    >>|cRXP_WARN_Concentre-se em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Mate |cRXP_ENEMY_Surena Caledon|r. Saque o |cRXP_LOOT_Choker|r dela
    >>|cRXP_WARN_Concentre-se em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step
    #label PrincessCollar
    .goto Elwynn Forest,69.3,79.0
    >>Mate a |cRXP_ENEMY_Princesa|r. Saqueie-a para obter o |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_atacará com ambas as suas|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_também lançará|r |T132368:0|t[Investida Impetuosa] |cRXP_WARN_que causa dano pesado|r
    .complete 88,1
    .mob Princess
step
#xprate <1.5
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas|r
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
#xprate <1.5
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 83 >>Entregue Mercadorias de Linho Vermelho
    .target Sara Timberlain
    .isQuestComplete 83
step
    #optional
    #sticky
    .abandon 109 >>Abandone Relatar para Miguel Mantoforte. Você não entregará isto
step
    #optional
    #sticky
    .abandon 184 >>Abandone Escritura de Furlbrow. Você não entregará isto
step
    #optional
    #label SoulShards
    #completewith EncroachingGnolls
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .disablecheckbox
    >>|cRXP_WARN_Certifique-se de ter pelo menos 2|r |T136163:0|t[Estilhaços de Alma] |cRXP_WARN_antes de chegar a Montanhas Cristarrubra|r
    .collect 6265,2
step
    #completewith EncroachingGnolls
    #requires SoulShards
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >>Aceite Encroaching Gnolls
step
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_Tenha cuidado com inimigos de alto nível no caminho|r
    .turnin 244 >>Entregue Encroaching Gnolls
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
step
#xprate <1.5
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos o|r |T132383:0|t[Foguetes Explosivos] |cRXP_WARN_como recompensa. Causa bom dano e pode ser usado para "Dividir puxadas", o que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência de vídeo sobre 'Divisão pulling'. É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133912:0|t[Costa Negra Grouper]
    .zoneskip Stormwind City,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Loch Modan e Costa Negra em breve|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T134342:0|t[Intestinos de Javali]
    >>|T134027:0|t[Carne de Urso]
    >>|T134437:0|t[Ícor de Aranha]
    >>|T133912:0|t[Costa Negra Grouper]
    .zoneskip Stormwind City,1
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para elevar sua|r |T133971:0|t[Culinária] |cRXP_BUY_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Loch Modan e Costa Negra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T134342:0|t[Intestinos de Javali]
    >>|T134027:0|t[Carne de Urso]
    >>|T134437:0|t[Ícor de Aranha]
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestAvailable 418
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para elevar sua|r |T133971:0|t[Culinária] |cRXP_BUY_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .isQuestTurnedIn 418 -- Thelsamar Blood Sausages
    .target Auctioneer Jaxon
    .zoneskip Stormwind City,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step << Warlock
    #completewith SurenaCaledon
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 755 >>Aprenda |T136168:0|t[Funil de Vida]
    .train 705 >>Treine |T136197:0|t[Seta Sombria (Rank 3)]
    .target Ursula Deline
    .xp <12,1
step << Warlock
    #label SurenaCaledon
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1688 >>Entregue Surena Caledon
    .accept 1689 >>Aceite A vinculação
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 7728 >>|cRXP_WARN_Use o|r |T133292:0|t[Gargantilha de Pedra-sangrenta] |cRXP_WARN_para chamar um|r |cRXP_ENEMY_Emissário do Caos Invocado|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>Mate o |cRXP_ENEMY_Emissário do Caos Invocado|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    #completewith next
    +|cRXP_WARN_Comece a lançar|r |T136126:0|t[Conversão de Vida] |cRXP_WARN_no caminho de volta para |cRXP_FRIENDLY_Gakin, o Neromante|r, pois você fará um deathskip em breve|r
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>Entregue A Vinculação
step
    #completewith GoldshireTurnins
    .goto Stormwind City,25.841,78.080,-1
    .goto Elwynn Forest,42.105,65.927,-1
    .deathskip >>Morra e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r usando |T136126:0|t[Conversão de Vida] e ficando na Fogueira ao seu lado
    .zoneskip Stormwind City,1
step
    #completewith GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>Viaje para Goldshire
step << Warlock
#xprate <1.5
    #optional
    .isOnQuest 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 147 >>Entregue Perseguição Implacável
    .turnin 39 >>Entregue O Relatório de Tomás
    .turnin 76 >>Entregue A Mina de Jaspe
step << Warlock
#xprate <1.5
    #label GoldshireTurnins
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 39 >>Entregue O Relatório de Tomás
    .turnin 76 >>Entregue A Mina de Jaspe
step
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para baixo na Estalagem
step
    #optional
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 755 >>Aprenda |T136168:0|t[Funil de Vida]
    .train 705 >>Treine |T136197:0|t[Seta Sombria (Rank 3)]
    .target Maximillian Crowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .target Ma Stonefield
    .turnin 88 >>Entregue Princesa tem que Morrer!
    .goto Elwynn Forest,34.660,84.483
step
    #optional
    #sticky
    .abandon 59 >>Abandon Cloth e Leather Armor.You won't complete this quest
step
    #completewith FlyIF
    .hs >>Use sua Pedra de Retorno em Loch Modan
    .bindlocation 2101,1
    .subzoneskip 2101
    .subzoneskip 144
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_também dela se necessário|r
    >>|cRXP_WARN_Isto é utilizado para preparar|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em barcos ou bondes para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    .isQuestComplete 418
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    #completewith ESSM
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Abate os |cRXP_ENEMY_Mountain Boars|r. Saque os |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
    .skill cooking,<1,1 -- shows if cooking is >1
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith ESSM
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
    .isQuestAvailable 418
step
    #completewith MinersGear
    #optional
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .waypoint Loch Modan,37.71,16.84,50,0
    .waypoint Loch Modan,35.48,16.82,50,0
    .waypoint Loch Modan,25.05,30.19,50,0
    .waypoint Loch Modan,26.06,43.44,50,0
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os pelas |cRXP_LOOT_Orelhas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #label ESSM
    #completewith next
    .goto Loch Modan,35.50,18.97,20 >>Entre na Mina do Riacho Prateado
step
    #label MinersGear
    .goto Loch Modan,35.93,22.55
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r. Saqueie-os para o |cRXP_LOOT_Miners' Equipamento|r
    >>|cRXP_WARN_Os |cRXP_PICK_Caixotes da Liga dos Mineiros|r podem ser encontrados por toda a Mina|r
    .complete 307,1 -- Miners' Gear (4)
step
    #optional
    #completewith FilthyMountaineer
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os pelas |cRXP_LOOT_Orelhas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vá ao Comerciante e repare se necessário|r
    .target Gothor Brumn
step
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .turnin 353 >>Entregue Entrega para Lançatroz
    .target Mountaineer Stormpike
step
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
step
    #sticky
    #label RatCatching
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .waypoint Loch Modan,36.72,41.97,15,0
    .waypoint Loch Modan,37.24,43.19,15,0
    .waypoint Loch Modan,37.33,45.63,15,0
    .waypoint Loch Modan,36.77,46.20,15,0
    .waypoint Loch Modan,35.19,46.88,15,0
    .waypoint Loch Modan,32.67,49.71,20,0
    .waypoint Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Rato Pegando
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .target Vidra Hearthstove
step
    .isOnQuest 6392
    .goto Loch Modan,37.17,47.94,8,0
    .goto Loch Modan,37.019,47.806
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brock Buscapedra|r
    .turnin 6392 >>Entregue Retorno a Brock
    .target Brock Stoneseeker
step
    #optional
    #requires RatCatching
step
    .goto Loch Modan,26.67,56.94
    >>Mate os |cRXP_ENEMY_Troggs Lascadores de Pedra|r e os |cRXP_ENEMY_Batedores Lascadores de Pedra|r. Saque-os pelo seu |cRXP_LOOT_Dentes de Trogg de Pedra|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Batedores Lascadores de Pedra|r lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 14-20 de dano)|r
    >>|cRXP_WARN_Esta é uma área de reaparição rápida. Você não deve precisar sair daqui|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
#xprate <1.5
    .goto Loch Modan,26.67,56.94
    .xp 14-1800 >>Farme até estar a 1800 XP do nível 14 (9200/11000)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
#xprate >1.49
    .goto Loch Modan,26.67,56.94
    .xp 14-2700 >>Farme até estar a 2700 XP do nível 14 (8300/11000)
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>Corra para cima pelo caminho de terra, depois desça para o bunker
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r dentro do bunker
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
step
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #completewith FlyIF
    .goto Loch Modan,26.67,56.94
    +Triture até ter itens vendáveis no valor de 45 prata mais dinheiro, depois pule este passo
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
    .money >0.4500
step
    .goto Loch Modan,26.67,56.94
    .xp 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge>>Voe para Altaforja
    .target Thorgrum Borrelson
step << Warlock
#ah
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_se custar menos de 33s 40c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7900
--Drain Life r1 - 9s
--Corruption r2 - 9s
--Grimoire of Consume Shadows -- 15s
--Grimoire of Sacrifice -- 12s
--burning wand 33s 40c
step << Warlock
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harick Batesseixo|r embaixo
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dele|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7900
step << Warlock
    #optional
    +|cRXP_WARN_Equipe o|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .train 6222 >>Treine |T136118:0|t[Corrupção (Rank 2)]
    .train 689 >>Treine |T136169:0|t[Drenar Vida]
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor >>|cRXP_BUY_Compre|r |T133738:0|t[Grimório of Consumir Sombras (Rank 1)] |cRXP_BUY_e|r |T133738:0|t[Grimório de Sacrificar (Rank 1)] |cRXP_BUY_se você puder pagar|r
    .target Jubahl Corpseseeker
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .turnin 6388 >>Entregue Grif Trovino
    .fly Menethil >>Voe para Menethil Harbor
step
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neal Allen|r no andar inferior do quartel
    .vendor 1448 >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dewin Shimmerdawn|r dentro
    .vendor 1453 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Dewin Shimmerdawn
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Viaje até a doca para pegar o barco para Auberdine
    .zoneskip Darkshore
step
    #optional
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #optional
    .goto 1437,4.370,56.762
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para Costa Negra
    .zone Darkshore >>Pegue o barco para Costa Negra
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >>Pegue o barco para Costa Negra
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >>Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >>Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    #completewith BuzzBox1
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    >>Compre até 20 [Pargo-da-lama Bocalonga] dele
    .collect 4592,15 --Longjaw Mud Snapper (40)
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >>Viaje escada acima em direção a |cRXP_FRIENDLY_Xafetim Manigiro|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r no andar de cima
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2118 >>Aceite Terras Pestilentas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Aceite Uma grande ameaça?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    >>Talvez seja necessário entrar na água para encontrá-los
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Abra o |cRXP_PICK_Criatura Marinha Encalhada|r. Saqueie para obter |cRXP_LOOT_Ossos de Criaturas Marinhas|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Use|r [Esperança de Tharnariun] |cRXP_WARN_em um |cRXP_ENEMY_Ursocardo Raivoso|r. Pode ser usado a qualquer distância, desde que você tenha um alvo selecionado|r
    >>==NÃO USE O ITEM DA MISSÃO SE NÃO HOUVER UM URSO POR PERTO==
    >>Você pode desperdiçar a armadilha e tornar a missão impossível de concluir Se isso acontecer com você, será necessário retornar ao NPC que dá a missão e pedir outra armadilha
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>Corra em direção à borda do acampamento dos Furbolgs
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >>Entregue Terras Pestilentas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .target Terenthis
step
    #optional
    #sticky
    .abandon 1001 >>Abandone Buzzbox 411. Você não completará esta missão
step
    #optional
    #sticky
    .abandon 4681 >>Abandone Trazida pela Água. Você não completará esta missão
step
    #optional
    .goto Darkshore,30.749,40.995
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para a Ilha Névoa Lazúli
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Alliance Hunter
#name 6-10 Dun Morogh (Caçador)
#next 12-14 Costa Negra
#subgroup RestedXP Aliança 1-20
#defaultfor Dwarf Hunter

step
    #optional
    #completewith SenirEnd
    >>Mate |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Guarde todos os|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você pegar para Provisões para a Vaporeta e depois para levantar sua|r |T133971:0|t[Culinária] |cRXP_WARN_mais tarde|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária]|cRXP_WARN_ para uma missão em Auberdine depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .subzoneskip 131 --Kharanos
step
    #completewith next
    >>|cRXP_WARN_Certifique-se de que sua suzona NÃO é Coldridge Passe|r
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 131
step
    .goto 1426,43.316,56.283,60,0
    .goto 1426,43.949,52.524,60,0
    .goto 1426,38.677,60.561,60,0
    .goto Dun Morogh,46.726,53.826
    .subzone 131 >>Voe para Kharanos
    .mob Crag Boar
step
    #label SenirEnd
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 420 >>Entregue Observações de Senir
    .target Senir Whitebeard
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,47.217,52.195
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tannok Marrãogélido|r
    .turnin 2160 >>Entregue Suprimentos para Tannok
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    .home >>Defina sua Pedra de Retorno na Destilaria Cervaforte
    .target Innkeeper Belm
    .bindlocation 2102
step
    .goto Dun Morogh,46.021,51.676
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharek Pedranegra|r
    .accept 400 >>Aceite Ferramentas para Gradaço
    .target Tharek Blackstone
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piloto Urrabolha|r e |cRXP_FRIENDLY_Piloto Marchapedra|r
    >>|cRXP_WARN_Não mate nenhum |cRXP_ENEMY_Young Preto Ursos|r no caminho|r
    .accept 317 >>Aceite Provisões para a Vaporeta
    .goto Dun Morogh,49.426,48.410
    .target Pilot Bellowfiz
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .accept 313 >>Aceite O Covil dos Cansados
    .goto Dun Morogh,49.622,48.612
    .target Pilot Stonegear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Beldin Gradaço|r e o |cRXP_FRIENDLY_Loslor Rudge|r
    .turnin 400 >>Entregue Ferramentas para Gradaço
    .goto Dun Morogh,50.443,49.092
    .target +Beldin Steelgrill
    .accept 5541 >>Aceite Sem Munição não Tem Negócio
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
step << !Paladin !Warrior !Rogue
    #loop
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    >>Abate os |cRXP_ENEMY_Young Preto Ursos|r. Saque-os para obter |cRXP_LOOT_Fur|r
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob +Young Black Bear
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .mob +Crag Boar
    .mob +Large Crag Boar
    .collect 2886,6,384,1,1 --Collect Crag Boar Rib (x6)
    .mob +Crag Boar
    .mob +Large Crag Boar
step
    #completewith Level8
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para suas |cRXP_LOOT_Crag Javali Ribs|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    #loop
    .goto Dun Morogh,52.0,50.1,75,0
    .goto Dun Morogh,51.5,53.9,75,0
    .goto Dun Morogh,50.1,53.9,75,0
    .goto Dun Morogh,49.9,50.9,75,0
    .goto Dun Morogh,48.0,49.5,75,0
    .goto Dun Morogh,48.2,46.9,75,0
    .goto Dun Morogh,43.5,52.5,75,0
    .goto Dun Morogh,52.0,50.1,0
    .goto Dun Morogh,51.5,53.9,0
    .goto Dun Morogh,50.1,53.9,0
    .goto Dun Morogh,49.9,50.9,0
    .goto Dun Morogh,48.0,49.5,0
    .goto Dun Morogh,48.2,46.9,0
    .xp 5+2125 >>Farme até 2125+/2800xp
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .target Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 317 >>Entregue Provisões para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6 --Crag Boar Rib (6)
step
    #optional
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r lá fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    .xp 6
step
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Grif Wildheart
step
    .goto Dun Morogh,44.13,56.95
    >>Abra o |cRXP_PICK_Caixote de Munição|r. Saque-o para obter |cRXP_LOOT_Rumbleshot's Ammo|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    .target Hegnar Rumbleshot
    .goto Dun Morogh,40.6,62.6,50,0
    .goto Dun Morogh,40.682,65.130
    .turnin 5541 >>Entregue Sem Munição não Tem Negócio
step
    .goto Dun Morogh,40.682,65.130
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hegnar Estremetiro|r
    >>|cRXP_BUY_Compre e equipe um|r |T135611:0|t[Bacamarte Ornado] |cRXP_BUY_. Pule este passo se você não puder pagar|r
    .collect 2509,1 -- Ornate Blunderbuss (1)
    .money <0.0414
    .target Hegnar Rumbleshot
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.95
step
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135611:0|t[Bacamarte Ornado]
    .use 2509
    .itemcount 2509,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.94
step
#xprate <1.5
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    >>Abate |cRXP_ENEMY_Wendigos|r e |cRXP_ENEMY_Wendigos Jovens|r. Saqueie-os pelo |cRXP_LOOT_Wendigo Crinas|r
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Wendigo
    .mob Young Wendigo
step
    #loop
    .goto 1426,42.982,54.755,0
    .goto 1426,41.918,54.053,0
    .goto 1426,41.100,48.927,0
    .goto 1426,42.982,54.755,40,0
    .goto 1426,41.901,55.217,40,0
    .goto 1426,41.918,54.053,40,0
    .goto 1426,42.177,53.274,40,0
    .goto 1426,41.100,48.927,40,0
    .xp 7
    .mob Wendigo
    .mob Young Wendigo
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .accept 312 >>Aceite Por Baixo da Carne-seca
    .target Tundra MacGrann
step
    .goto Dun Morogh,38.517,53.927
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Pegue |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r patrule para fora da caverna. Uma vez que ele saia da caverna, você pode entrar e saquear|r |cRXP_PICK_MacGrann's Carne Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Click here for video reference|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step
    .goto Dun Morogh,34.577,51.652
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .turnin 312 >>Entregue O Saque Roubado de Tundra MacGrann
    .target Tundra MacGrann
step
    #completewith next
    .goto Dun Morogh,30.453,46.005
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jado Cerver|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target Keeg Gibn
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r e |cRXP_FRIENDLY_Marleth Cervevada|r
    .turnin 318 >>Entregue Sempre-aceso
    .accept 319 >>Aceite Tudo pela Sempre-aceso
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
    .goto Dun Morogh,30.190,45.726
    .target +Rejold Barleybrew
    .accept 310 >>Aceite A Guerra das Cervejas
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    #completewith Level8
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Abate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_anciões Crag Boars|r e os |cRXP_ENEMY_Neve Leopards|r
    >>|cRXP_WARN_Pular este passo uma vez que tenha atingido o limite de XP. Você o completará depois|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 7+3020 >>Triture até 3020+/4500 XP
    .isQuestAvailable 384
step
    #optional
    #label Level8
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    .xp 7+3645 >>Triture até 3645+/4500 XP
    .isQuestTurnedIn 384
step
    #optional
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para suas |cRXP_LOOT_Crag Javali Ribs|r
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r e os |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Priorize |cRXP_ENEMY_Javalis|r pelas|r |cRXP_LOOT_Costelas|r
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob +Elder Crag Boar
    .mob +Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .disablecheckbox
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .disablecheckbox
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .disablecheckbox
    .mob +Snow Leopard
step
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415/0,191.7247,-4741.1949,15,0
    .goto 1415/0,191.7247,-4743.0722
    >>|cRXP_WARN_Faça o skip de morte Dun Morogh → Pantanal. Siga a seta atentamente|r
    >>|cRXP_WARN_NÃO salte de nenhuma altura ainda|r
    .zone Wetlands >>|cRXP_WARN_Suba a montanha, depois desça passando pelo padrão irregular até que sua subzona mude para o Pantanal|r
    .isQuestAvailable 983
step
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415/0,254.0286,-4708.3416,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Salte para longe da montanha em direção ao norte ou noroeste|r
    .deathskip >>Morra e reapareça na Baía Baradin com o |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestAvailable 983
    .target Anjo da Cura
step
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>Nade em direção à margem perto de Menethil Harbor
    .subzoneskip 150
step
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Wetlands >>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step
	#completewith Distracting
    .hs >>Vá para Kharanos
    .subzoneskip 131
    .subzoneskip 2102
    .bindlocation 2102,1
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_e um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestAvailable 384
step
    #optional
    .goto Dun Morogh,47.377,52.523
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Belm|r dentro
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .collect 2686,1,311 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .isQuestTurnedIn 384
step
    #label Distracting
    #completewith next
    .goto Dun Morogh,47.779,52.426,6,0
    .goto Dun Morogh,47.644,52.655,3,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jarven Cervaforte|r lá embaixo
    .turnin 308 >>Entregue Distraindo Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.716,52.696
    >>Clique no |cRXP_PICK_Unguarded Trovão Ale Barril|r
    .turnin 310 >>Entregue A Guerra das Cervejas
    .accept 311 >>Aceite Fale Novamente com Marleth
step << Hunter
    .goto Dun Morogh,47.189,52.403
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kreg Bilmn|r
    >>|cRXP_WARN_Compre 5 montes de|r |T132384:0|t[Tiros de Luz]
    .collect 2516,800 --Light Shot
    .target Kreg Bilmn
step
    .goto Dun Morogh,46.825,52.361
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ragnar Cervaforte|r lá fora
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .accept 287 >>Aceite A Fortaleza Jubafria
    .target Senir Whitebeard
step
#xprate <1.5
    .goto Dun Morogh,49.622,48.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Marchapedra|r
    .turnin 313 >>Entregue O Covil dos Grisalhos
    .target Pilot Stonegear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
    .target Grif Wildheart
step
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_Elder Crag Boars|r e os |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Suba o caminho de terra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Leve |cRXP_ENEMY_Ragash|r para|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>|cRXP_WARN_CLIQUE AQUI Se está com dificuldade|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Abate |cRXP_ENEMY_Ragash|r. Saqueie-o para obter sua |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Leve-o até o guarda ao sul da fazenda. Certifique-se de causar 51%+ de dano a ele|r
    >>|cRXP_WARN_Vigie o vídeo abaixo antes de tentar matar |cRXP_ENEMY_Ragash|r. Pode ser derrotado sozinho em qualquer classe|r
    .link https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >>https://youtu.be/70PX093soq4?si=-cIoU8WWdbC0IdHZ&t=3193 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_Elder Crag Boars|r e os |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith QuarryStart
    .goto Dun Morogh,68.379,54.492,60 >>Vá para Pedreira Gol'Bolar
    .subzoneskip 134
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
    .money <0.0100
step
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 432 >>Aceite Malditos Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
    #loop
    .goto 1426,70.073,57.030,0
    .goto 1426,68.533,58.372,0
    .goto 1426,68.958,59.357,0
    .waypoint 1426,70.073,57.030,45,0
    .waypoint 1426,69.223,58.242,45,0
    .waypoint 1426,68.533,58.372,45,0
    .waypoint 1426,67.687,60.059,45,0
    .waypoint 1426,68.958,59.357,45,0
    .waypoint 1426,70.475,59.420,45,0
    >>Mate os |cRXP_ENEMY_Rockjaw Skullthumpers|r dentro ou fora da mina
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
step
    #optional
    .isQuestComplete 433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 433 >>Entregue O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_Elder Crag Boars|r e os |cRXP_ENEMY_Snow Leopards|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    #optional
    #completewith next
    .goto 1426,77.189,48.816,50,0
    .goto 1426,81.252,42.650,50,0
    .goto Dun Morogh,83.892,39.188,20 >>Vá para o |cRXP_FRIENDLY_Piloto Pisafundo|r
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Clique em |cRXP_PICK_Cadáver Anão|r no chão
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    .goto Dun Morogh,78.97,37.14
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o por seu |cRXP_LOOT_Mangy Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417 >>Entregue A Vingança do Piloto
    .target Pilot Hammerfoot
step
    #completewith ShimmerweedCollect
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >>Aceite Operação Remendão
step
    #completewith ShimmerweedCollect
    #optional
    #label RidgeRamp
    .goto 1426,42.935,45.216,20,0
    .goto 1426,42.254,45.301,15 >>Suba pela rampa até Cintilação Serra
step
    #optional
    #requires RidgeRamp
    #completewith ShimmerweedCollect
    >>Abata os |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label ShimmerweedCollect
    .goto Dun Morogh,40.9,45.3,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,42.1,34.3,50,0
    .goto Dun Morogh,39.7,40.0,50,0
    .goto Dun Morogh,41.5,43.6,50,0
    .goto Dun Morogh,40.9,45.3
    .goto Dun Morogh,39.5,43.0,0
    .goto Dun Morogh,41.5,36.0,0
    >>Abate |cRXP_ENEMY_Frostmane Seers|r. Saqueie-os para obter |cRXP_LOOT_Tremulerva|r
    >>Abra o |cRXP_PICK_Tremulerva Cestos|r no chão. Saque deles para obter |cRXP_LOOT_Tremulerva|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    #loop
    .goto 1426,31.212,39.189,0
    .goto 1426,27.876,45.549,0
    .goto 1426,29.443,50.102,0
    .goto 1426,31.691,46.837,0
    .waypoint 1426,31.212,39.189,60,0
    .waypoint 1426,30.049,38.561,60,0
    .waypoint 1426,29.198,40.458,60,0
    .waypoint 1426,29.362,42.975,60,0
    .waypoint 1426,28.298,44.441,60,0
    .waypoint 1426,27.876,45.549,60,0
    .waypoint 1426,26.294,46.484,60,0
    .waypoint 1426,27.562,47.657,60,0
    .waypoint 1426,28.020,48.267,60,0
    .waypoint 1426,27.874,49.402,60,0
    .waypoint 1426,29.443,50.102,60,0
    .waypoint 1426,28.412,52.449,60,0
    .waypoint 1426,27.650,53.709,60,0
    .waypoint 1426,26.769,55.778,60,0
    .waypoint 1426,29.294,54.249,60,0
    .waypoint 1426,31.767,49.790,60,0
    .waypoint 1426,33.832,48.153,60,0
    .waypoint 1426,31.691,46.837,60,0
    >>Mate |cRXP_ENEMY_Elder Crag Boars|r, |cRXP_ENEMY_Ice Claw Bears|r e |cRXP_ENEMY_Snow Leopards|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 319 >>Entregue Tudo pela Sempre-aceso
    .accept 320 >>Aceite Fale Novamente com Urrabolha
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rejold Cervevada|r
    .target Rejold Barleybrew
    .goto Dun Morogh,30.189,45.725
    .turnin 315 >>Entregue Em Busca da Cerveja Perfeita
    --.accept 413 >> Accept Shimmer Stout
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marleth Cervevada|r
    .target Marleth Barleybrew
    .goto Dun Morogh,30.186,45.531
    .turnin 311 >>Fale novamente com Marleth
step
#xprate <1.5
    #loop
    .goto 1426,26.653,43.844,0
    .goto 1426,24.601,40.790,0
    .goto 1426,25.540,45.374,0
    .goto 1426,26.653,43.844,55,0
    .goto 1426,26.587,42.702,55,0
    .goto 1426,26.175,41.822,55,0
    .goto 1426,26.052,40.769,55,0
    .goto 1426,24.739,39.481,55,0
    .goto 1426,24.601,40.790,55,0
    .goto 1426,24.662,41.770,55,0
    .goto 1426,24.487,43.265,55,0
    .goto 1426,24.805,43.848,55,0
    .goto 1426,24.871,44.693,55,0
    .goto 1426,25.540,45.374,55,0
    .goto 1426,25.950,43.930,55,0
    >>Abate |cRXP_ENEMY_Leper Gnomes|r. Saqueie-os para obter |cRXP_LOOT_Gyromechanic Engrenagens|r e |cRXP_LOOT_Restabilization Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #sticky
    #label xp10
    .xp 9+4175 >>Triture até 4175+/6500 XP
step
    #sticky
    #label Headhunters
    #loop
    .goto 1426,22.390,51.701,0
    .goto 1426,23.136,50.886,0
    .goto 1426,24.301,50.898,0
    .waypoint 1426,22.390,51.701,30,0
    .waypoint 1426,21.113,51.717,30,0
    .waypoint 1426,21.131,51.024,30,0
    .waypoint 1426,22.067,50.215,30,0
    .waypoint 1426,23.136,50.886,30,0
    .waypoint 1426,23.373,51.385,30,0
    .waypoint 1426,23.568,50.924,30,0
    .waypoint 1426,24.301,50.898,30,0
    >>Abate os |cRXP_ENEMY_Frostmane Headhunters|r dentro da caverna
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #optional
    .goto 1426,24.975,50.473,20,0
    .goto 1426,24.682,50.836,20 >>Corra subindo pela lateral da entrada da caverna. Pule para A Fortaleza Jubafria
    .isOnQuest 287
step
    .goto Dun Morogh,22.86,52.16
    >>|cRXP_WARN_Largar para dentro do pequeno quarto sem saída da caverna|r
    >>|cRXP_WARN_Não se preocupe com morrer pois você está prestes a ressuscitar em Kharanos|r
    .complete 287,2 --Fully explore Frostmane Hold
step
    #optional
    #requires xp10
step
    #optional
    #requires Headhunters
step
    #completewith AcceptTaming
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Dun Morogh,46.726,53.826
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .turnin 287 >>Entregue A Fortaleza Jubafria
    .accept 291 >>Aceite Os Relatórios
    .target Senir Whitebeard
step
#xprate <1.5
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r dentro
    .turnin 412 >>Entregue Operação Remendão
    .target Razzle Sprysprocket
step
    .goto Dun Morogh,49.426,48.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Urrabolha|r
    .turnin 320 >>Fale novamente com Urrabolha
    .target Pilot Bellowfiz
step
    .xp 10
step << Hunter
    #label AcceptTaming
    .goto Dun Morogh,45.810,53.039
    .target Grif Wildheart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .trainer >>Treine suas magias de classe
    .accept 6064 >>Aceite Domando a Fera
step << Hunter
    .goto Dun Morogh,48.3,56.9
    .use 15911 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Grande Rochetusco|r
    .complete 6064,1 --Tame a Large Crag Boar (1)
    .mob Large Crag Boar
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6064 >>Entregue Domar a Fera - Missão
    .target Grif Wildheart
    .accept 6084 >>Aceite Domando a Fera
step << Hunter
    .goto Dun Morogh,49.4,59.4
    .use 15913 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Leopardo da Neve|r
    .complete 6084,1 --Tame a Snow Leopard (1)
    .mob Snow Leopard
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6084 >>Entregue Domar a Fera - Missão
    .target Grif Wildheart
    .accept 6085 >>Aceite Domando a Fera
step << Hunter
    .goto Dun Morogh,50.4,59.7
    .use 15908 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Urso Garra de Gelo|r
    .complete 6085,1 --Tame an Ice Claw Bear (1)
    .mob Ice Claw Bear
step << Hunter
    .goto Dun Morogh,45.810,53.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Selvacuore|r
    .turnin 6085 >>Entregue Domar a Fera - Missão
    .target Grif Wildheart
    .accept 6086 >>Aceite Treinando a Fera
step << Hunter
    #completewith next
    .goto Dun Morogh,49.0,44.6,30,0
    .goto Dun Morogh,45.7,42.2,30,0
    +|cRXP_WARN_lançou|r |T132164:0|t[Tame Beast] |cRXP_WARN_on an |cRXP_ENEMY_Ice Claw Bear|r or |cRXP_ENEMY_Winter Wolf|r to tame it on the way to Ironforge|r
    >>|cRXP_WARN_Não importa qual você domesticar, pois você domesticará um novo mascote em breve em Costa Negra. Pular este passo uma vez que tenha domesticado um mascote|r
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
	.unitscan Ice Claw Bear
    .unitscan Winter Wolf
    .subzoneskip 809 --gates of IF
    .usespell 1515
step << Hunter
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40 >>Viaje para Ironforge
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thalgus Thunderfist|r no andar de baixo
    >>|cRXP_BUY_Compre|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_se conseguir pagar|r
    .collect 2511,1
    .money <0.1324
    .target Thalgus Punhostrondo
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.00
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135613:0|t[Cano de Atirar do Caçador]
    .use 2511
    .itemcount 2511,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.99
step << Hunter
    .goto Ironforge,70.86,85.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .trainer >>Treine as magias do seu mascote
    .turnin 6086 >>Entregue Treinamento da Fera - Missão
    .target Belia Thundergranite
step
    #completewith next
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entre no Metrô Correfundo
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio
    .target Monty
    .accept 6661 >>Aceite Ratos de Porão
step
    .use 17117 >>|cRXP_WARN_Use o|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em|r |cRXP_ENEMY_Deeprun Ratos|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .target Monty
    .turnin 6661 >>Virar em Ratos de Porão
step
    .zone Ironforge >>Retorne a Ironforge
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133912:0|t[Costa Negra Grouper]
    .zoneskip Ironforge,1
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para elevar sua|r |T133971:0|t[Culinária] |cRXP_BUY_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .zoneskip Ironforge,1
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
step
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .target Senator Barin Redstone
    .turnin 291 >>Entregue Os Relatórios
step
    #label FlyMenethil
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Menethil >>Voe para Menethil Harbor
    .target Gryth Thurden
]])
