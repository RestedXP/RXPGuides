if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Horde
#name 1-6 Durotar
#displayname 1-7 Durotar << Orc !Warrior !Hunter !Shaman !Warlock/Troll !Warrior !Hunter !Shaman
#displayname 1-8 Durotar << Orc Warrior/Troll Warrior
#version 7
#subgroup RestedXP Horda 1-30
#defaultfor Orc/Troll
#next 6-10 Bosque do Canto Eterno << !Shaman !Hunter !Warlock
#next 6-10 Durotar << Shaman/Hunter/Warlock

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado a Orcs e Trolls. Escolha a mesma zona inicial em que você inicia|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Aceite O seu lugar no mundo
    .target Kaltunk
step << Warrior/Shaman/Warlock
    #completewith next
    +|cRXP_WARN_Mate |cRXP_ENEMY_Mosquetuscos|r. Saqueie-os até ter itens que somem 35 moedas de cobre ao vendê-los a um vendedor (incluindo sua armadura)|r << Warlock
    +|cRXP_WARN_Mate |cRXP_ENEMY_Mosquetuscos|r. Saqueie-os até ter itens que somem 10 moedas de cobre ao vendê-los a um vendedor (incluindo sua armadura)|r << Warrior/Shaman
    .goto Durotar,43.85,71.73,30,0 << Warlock
    .goto Durotar,44.19,65.34,30,0 << Warrior/Shaman
    .mob Mottled Boar
    .money >0.01
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Aceite Familiares torpes
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Comerciante Lixo
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Entregue O seu lugar no mundo
    .accept 788 >>Aceite Dentes cortantes
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha] << Warrior
    .train 8017 >>Trem |T136086:0|t[Arma Trinca-pedra] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Vá até |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Comerciante Lixo
    .target Hraug
    .money >0.01
step << Warlock
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Vá até |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Hunter !Shaman
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.015 << !Hunter
    .money <0.0040 << Hunter
step << Warlock
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r
    .collect 159,5,6394,1 --Refreshing Spring Water (5)
    .target Duokna
    .money <0.0025
step << Warlock
    #completewith next
    .goto Durotar,43.57,67.28,35,0
    >>Mate os |cRXP_ENEMY_Mottled Boars|r a caminho do Covil da Lâmina Ardente
    >>|cRXP_WARN_Tente atingir o nível 2 antes de chegar lá|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >>Vá para o Covil da Lâmina Ardente
    .isOnQuest 1485
step << Warlock
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>Mate os |cRXP_ENEMY_Familiares torpes|r. Saqueie-os para |cRXP_LOOT_Vile Familiar Cabeças|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step
    #completewith Sarkoth
    .goto Durotar,43.57,67.28,35,0 << !Warlock
    .goto Durotar,43.89,65.84,45,0 << !Warlock
    >>Mate |cRXP_ENEMY_Mosquetuscos|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hana'zua|r
    .accept 790 >>Aceite Sarkoth
    .target Hana'zua
step
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Mate |cRXP_ENEMY_Sarkoth|r. Saqueie-o para pegar |cRXP_LOOT_Garra Mutilada de Sarkoth|r
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    .goto Durotar,40.59,62.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hana'zua|r
    .turnin 790 >>Entregue Sarkoth
    .accept 804 >>Aceite Sarkoth
    .target Hana'zua
step
    #loop
    .goto Durotar,41.30,65.03,0
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    >>Mate |cRXP_ENEMY_Mosquetuscos|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    .xp 3+850 >>Farme até 850+/1400xp no caminho de volta para a cidade
    .mob Mottled Boar
step << !Rogue !Mage
    #xprate >1.49
    #loop
	.goto Durotar,41.30,65.03,35,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
    .xp 3+980 >>Farme até 980+/1400xp na volta para a cidade
    .mob Mottled Boar
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Triturar os |cRXP_ENEMY_Mottled Boars|r. Saque-os até que você tenha 1 silver de valor em itens do vendedor|r
    .mob Mottled Boar
	.money >0.01
step << Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Comerciante Lixo
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Entregue Familiares Torpes
    .accept 1499 >>Aceite Familiares torpes
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t[Evocar Diabrete]
step << Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 1499 >>Entregue Familiares Torpes
    .accept 794 >>Aceite Medalhão da Lâmina Ardente
    .target Zureetha Fargaze
step
    #label Gornek2
    .goto Durotar,42.28,68.48,12,0 << Warlock
    .goto Durotar,42.29,68.39,12,0 << !Warlock
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gornek|r
    .turnin 788,2 >>Entregue Dentes cortantes << Shaman
    .turnin 788 >>Entregue Dentes cortantes << !Shaman
    .accept 789 >>Aceite A ferroada do escorpídeo
    .accept 2383 >>Aceite Pergaminho simples << Orc Warrior
    .accept 3065 >>Aceite Tabuleta Simples << Troll Warrior
    .accept 3082 >>Aceite Tabuleta cinzelada << Troll Hunter
    .accept 3083 >>Aceite Tabuleta cifrada << Troll Rogue
    .accept 3084 >>Aceite Tabuleta Inscrita em Runas << Troll Shaman
    .accept 3085 >>Aceite Tabuleta Consagrada << Troll Priest
    .accept 3086 >>Aceite Tabuleta glífica << Troll Mage
    .accept 3087 >>Aceite Pergaminho Cinzelado << Orc Hunter
    .accept 3088 >>Aceite Pergaminho cifrado << Orc Rogue
    .accept 3089 >>Aceite Pergaminho inscrito em runas << Orc Shaman
    .accept 3090 >>Aceite Pergaminho maculado << Orc Warlock
    .turnin 804,1 >>Entregue Sarkoth << Shaman
    .turnin 804 >>Entregue Sarkoth << !Shaman
    .target Gornek
step << Rogue
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Vá até |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entregue Tabuleta cifrada << Troll Rogue
    .turnin 3088 >>Entregue Pergaminho Cifrado << Orc Rogue
    .train 53 >>Aprenda |T132090:0|t[Punhalada pelas Costas]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #label Rwag
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entregue Tabuleta cifrada << Troll Rogue
    .turnin 3088 >>Entregue Pergaminho Cifrado << Orc Rogue
    .target Rwag
step << Warlock
    #completewith Nartok2
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Vá até |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Vá até |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Comerciante Lixo
    .target Hraug
    .money >0.01
step << Warlock
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entregue Pergaminho Maculado
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Nartok
step
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Aceite A surpresa de sabra do Galgar
    .target Galgar
step << !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>Comerciante Lixo
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entregue Tabuleta Runa-Inscrita - Missão << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entregue Tabuleta glífica << Troll
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .target Mai'ah
step << Hunter
    #requires Galgar
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .target Jen'shan
step << Warrior
    #requires Galgar
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .target Frang
step << Priest
    #requires Galgar
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Entregue Tabuleta consagrada
    .target Ken'jai
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .accept 792 >>Aceite Familiares torpes
    .target Zureetha Fargaze
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Aceite Peões preguiçosos
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Pegue as |cRXP_LOOT_Sabras|r perto dos Cactos
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,45,0
    .goto Durotar,45.64,65.70,45,0
    .goto Durotar,47.37,65.67,45,0
    >>|cRXP_WARN_Use o|r |T133486:0|t[Cassetete do Encarregado] |cRXP_WARN_nos |r|cRXP_FRIENDLY_Peões Preguiçosos|r adormecidos
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step << !Warlock
    #completewith Imps
    >>Mate |cRXP_ENEMY_Escorpídeos Operários|r. Saqueie-os para pegar as |cRXP_LOOT_Caudas de Escorpídeo Operário|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step << !Warlock
    #label Imps
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,43.87,58.42,35,0
	.goto Durotar,44.53,58.62,35,0
	.goto Durotar,45.18,58.42,35,0
	.goto Durotar,45.83,58.59,35,0
	.goto Durotar,45.79,57.43,35,0
	.goto Durotar,46.46,57.57,35,0
	.goto Durotar,47.19,57.12,35,0
	.goto Durotar,46.21,56.69,35,0
	.goto Durotar,46.28,56.11,35,0
	.goto Durotar,45.65,56.90,35,0
	.goto Durotar,45.35,56.32,35,0
	.goto Durotar,44.77,56.87,35,0
	.goto Durotar,44.58,56.10,35,0
	.goto Durotar,44.27,56.59,35,0
	.goto Durotar,43.85,55.52,35,0
    >>Abate os |cRXP_ENEMY_Familiares Torpes|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
	.goto Durotar,43.26,58.28,0
	.goto Durotar,43.26,58.28,35,0
	.goto Durotar,42.81,58.41,35,0
	.goto Durotar,41.90,58.35,35,0
	.goto Durotar,41.97,59.20,35,0
	.goto Durotar,41.36,60.35,35,0
	.goto Durotar,40.66,61.27,35,0
	.goto Durotar,40.07,61.35,35,0
	.goto Durotar,39.42,61.29,35,0
	.goto Durotar,39.46,62.17,35,0
	.goto Durotar,39.55,63.10,35,0
	.goto Durotar,40.13,64.04,35,0
	.goto Durotar,40.84,64.06,35,0
	.goto Durotar,40.74,65.86,35,0
	.goto Durotar,39.93,66.03,35,0
	.goto Durotar,40.04,66.99,35,0
	.goto Durotar,40.09,67.66,35,0
	.goto Durotar,40.13,68.50,35,0
	.goto Durotar,40.72,68.55,35,0
	.goto Durotar,41.30,67.84,35,0
	.goto Durotar,41.37,66.72,35,0
	.goto Durotar,41.89,66.05,35,0
	.goto Durotar,41.27,65.71,35,0
	.goto Durotar,41.36,64.07,35,0
	.goto Durotar,41.33,63.12,35,0
	.goto Durotar,41.35,61.98,35,0
	.goto Durotar,41.49,61.25,35,0
	.goto Durotar,41.90,60.24,35,0
	.goto Durotar,42.51,59.34,35,0
	.goto Durotar,43.08,59.62,35,0
	.goto Durotar,43.91,59.33,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.85,60.34,35,0
	.goto Durotar,46.46,61.11,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.14,64.08,35,0
	.goto Durotar,47.58,64.04,35,0
	.goto Durotar,47.08,63.15,35,0
	.goto Durotar,47.09,62.24,35,0
	.goto Durotar,46.90,61.15,35,0
	.goto Durotar,46.98,60.18,35,0
	.goto Durotar,47.07,59.34,35,0
	.goto Durotar,46.47,58.28,35,0
	.goto Durotar,45.81,59.30,35,0
	.goto Durotar,45.15,59.46,35,0
	.goto Durotar,43.91,59.33,35,0
    >>Mate |cRXP_ENEMY_Escorpídeos Operários|r. Saqueie-os para pegar as |cRXP_LOOT_Caudas de Escorpídeo Operário|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,45.64,65.70,35,0
	.goto Durotar,47.37,65.67,35,0
	.goto Durotar,46.74,60.66,35,0
	.goto Durotar,47.09,57.90,35,0
	.goto Durotar,43.90,57.79,35,0
	.goto Durotar,42.70,57.25,35,0
	.goto Durotar,41.27,58.95,35,0
	.goto Durotar,40.91,60.41,35,0
	.goto Durotar,38.83,61.84,35,0
	.goto Durotar,44.98,69.13,35,0
    >>|cRXP_WARN_Use o|r |T133486:0|t[Cassetete do Encarregado] |cRXP_WARN_nos |r|cRXP_FRIENDLY_Peões Preguiçosos|r adormecidos
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
    #loop
	.goto Durotar,41.30,65.03,0
	.goto Durotar,41.92,64.74,35,0
	.goto Durotar,42.66,64.92,35,0
	.goto Durotar,43.31,65.02,35,0
	.goto Durotar,43.90,65.96,35,0
	.goto Durotar,44.54,65.96,35,0
	.goto Durotar,45.16,65.77,35,0
	.goto Durotar,45.72,65.93,35,0
	.goto Durotar,45.72,65.04,35,0
	.goto Durotar,45.21,63.95,35,0
	.goto Durotar,45.83,63.01,35,0
	.goto Durotar,45.81,62.17,35,0
	.goto Durotar,45.78,61.14,35,0
	.goto Durotar,45.15,60.20,35,0
	.goto Durotar,44.50,59.45,35,0
	.goto Durotar,43.86,60.43,35,0
	.goto Durotar,43.07,60.24,35,0
	.goto Durotar,42.58,60.09,35,0
	.goto Durotar,42.02,61.19,35,0
	.goto Durotar,42.02,62.15,35,0
	.goto Durotar,42.00,62.92,35,0
	.goto Durotar,41.99,64.03,35,0
	.goto Durotar,41.30,65.03,35,0
    .xp 4 >>Triture até o nível 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entregue A surpresa de sabra do Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>Comerciante Lixo
    .target Duokna
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gornek|r
    .turnin 789 >>Entregue A ferroada do escorpídeo
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .accept 1516 >>Aceite Clamor da Terra
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .money <0.011
    .target Ken'jai
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 792 >>Entregue Familiares Torpes
    .accept 794 >>Aceite Medalhão da Lâmina Ardente
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 100 >>Aprenda |T132337:0|t[carga]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Entregue Peões preguiçosos
    .accept 6394 >>Aceite A picareta de Thazz'ril
    .target Foreman Thazz'ril
step
    #xprate <1.5
    #completewith next
    .xp 4+1720 >>Mate inimigos até atingir 1720+/2100 de xp
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
    .isOnQuest 4402
step
    #loop
	.goto Durotar,44.67,64.92,0
	.goto Durotar,43.45,62.96,25,0
	.goto Durotar,43.82,62.72,25,0
	.goto Durotar,44.85,61.54,25,0
	.goto Durotar,44.88,59.66,25,0
	.goto Durotar,44.61,58.20,25,0
	.goto Durotar,45.46,58.49,25,0
	.goto Durotar,45.93,60.62,25,0
	.goto Durotar,46.87,60.36,25,0
	.goto Durotar,47.28,62.80,25,0
	.goto Durotar,46.08,62.98,25,0
	.goto Durotar,44.67,64.92,25,0
    >>Pegue as |cRXP_LOOT_Sabras|r perto dos Cactos
    .complete 4402,1 --Cactus Apple (10)
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 4+1720 >>Mate inimigos até atingir 1720+/2100 de xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #xprate <1.5
    #loop
	.goto Durotar,43.87,58.42,0
	.goto Durotar,44.53,58.62,25,0
	.goto Durotar,45.18,58.42,25,0
	.goto Durotar,45.83,58.59,25,0
	.goto Durotar,45.79,57.43,25,0
	.goto Durotar,46.46,57.57,25,0
	.goto Durotar,47.19,57.12,25,0
	.goto Durotar,46.21,56.69,25,0
	.goto Durotar,46.28,56.11,25,0
	.goto Durotar,45.65,56.90,25,0
	.goto Durotar,45.35,56.32,25,0
	.goto Durotar,44.77,56.87,25,0
	.goto Durotar,44.58,56.10,25,0
	.goto Durotar,44.27,56.59,25,0
	.goto Durotar,43.85,55.52,25,0
	.goto Durotar,43.87,58.42,25,0
    .xp 5 >>Suba até o nível 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>Entre na caverna
    .isOnQuest 6394
step
	#completewith Thazz
    #requires Cave
    .goto Durotar,45.37,55.39,15,0
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,43.72,53.79,10 >>Siga em direção a |cRXP_LOOT_Picareta de Thazz'ril|r
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Mate os |cRXP_ENEMY_Espreitadores Vis|r. Saqueie-os para |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>Pegue a |cRXP_LOOT_Picareta de Thazz'ril|r junto a parede
    .complete 6394,1 --Thazz'ril's Pick (1)
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>Mate |cRXP_ENEMY_Yarrog Ruinassombra|r. Saqueie dele o |cRXP_LOOT_Medalhão da Lâmina Ardente|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    >>Mate os |cRXP_ENEMY_Espreitadores Vis|r. Saqueie-os para |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #xprate <1.5
    #optional
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1680 >>Mate inimigos até atingir 1680+/2800 de xp << !Shaman
    .xp 5+690 >>Mate inimigos até atingir 690+/2800 de xp << Shaman
    .isQuestTurnedIn 4402
step << !Shaman
    #xprate <1.5
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1300 >>Mate inimigos até atingir 1300+/2800 de xp
    .isOnQuest 4402
step << !Shaman
    #xprate >1.49
    #optional
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1120 >>Farme até 1120+/2800xp
    .isQuestTurnedIn 4402
step
    #xprate >1.49
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
    .xp 5+1300 >>Mate inimigos até atingir 1300+/2800 de xp << !Shaman
    .xp 5+310 >>Mate inimigos até atingir 310+/2800 de xp << Shaman
    .isOnQuest 4402
step << Orc/Troll
    #completewith BurningBladeTurnin
    .hs >>Use sua Pedra de Retorno para ir a Valley of Trials
step << !Orc !Troll
    #softcore
    #completewith BurningBladeTurnin
    .deathskip >>Morra no início da caverna e renasça no |cRXP_FRIENDLY_Anjo da Cura|r, ou corra de volta para Valley of Trials
step << !Orc !Troll
    #hardcore
    #completewith BurningBladeTurnin
    .goto Durotar,44.63,68.65,120 >>Viaje de volta para Valley of Trials
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Entregue A picareta de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entregue A surpresa de sabra do Galgar
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Comerciante Lixo
    .target Duokna
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 794 >>Entregue Medalhão da Lâmina Ardente
    .accept 805 >>Aceite Apresente-se na Aldeia Sen'jin
    .target Zureetha Fargaze
step << !Shaman
    .xp 6 >>Farme até o nível 6
    #loop
    .goto Durotar,42.70,52.99,0
	.goto Durotar,42.97,51.14,25,0
	.goto Durotar,43.56,52.05,25,0
	.goto Durotar,43.74,52.65,25,0
	.goto Durotar,44.13,52.85,25,0
	.goto Durotar,44.82,52.51,25,0
	.goto Durotar,44.83,53.40,25,0
	.goto Durotar,44.78,54.57,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,45.51,55.23,25,0
	.goto Durotar,45.14,55.02,25,0
	.goto Durotar,44.51,55.03,25,0
	.goto Durotar,44.21,54.12,25,0
	.goto Durotar,43.92,54.30,25,0
	.goto Durotar,43.87,55.22,25,0
	.goto Durotar,43.46,55.56,25,0
	.goto Durotar,43.05,55.24,25,0
	.goto Durotar,42.38,54.22,25,0
	.goto Durotar,42.53,53.48,25,0
	.goto Durotar,43.27,53.82,25,0
	.goto Durotar,42.70,52.99,25,0
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >>Aceite Em favor da espiritualidade
	.train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Ken'jai
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Entregue Chamado da Terra
    .accept 1517 >>Aceite Clamor da Terra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ranago Arauto da Terra|r
    .turnin 1516 >>Entregue Chamado da Terra
    .accept 1517 >>Aceite Clamor da Terra
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Aprenda |T132218:0|t[Tiro Arcano]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .train 6343 >>Aprenda |T136105:0|t[Trovoada]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Aprenda |T132269:0|t[Aparar]
    .target Frang
step << Rogue
    #completewith RogueTraining
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Vá até |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .train 1776 >>Treine |T132155:0|t[Esfaquear]
    .target Rwag
    .money <0.02
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .target Rwag
step << Warlock
    #completewith Hraug3
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Viaje em direção a |cRXP_FRIENDLY_Nartok|r e |cRXP_FRIENDLY_Hraug|r
    .money <0.01
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
    .target Nartok
    .money <0.01
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Pacto de Sangue] |cRXP_BUY_dela|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Comerciante Lixo
    .target Hraug
    .money <0.01
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>Vá para o |cRXP_PICK_Santuário do Xamã|r
    .isOnQuest 1517
step << Shaman
    #completewith next
    #requires Shrine
    .cast 8202 >>|cRXP_WARN_Use a|r |T134743:0|t[Sapta da Terra]
    .use 6635
step << Shaman
    #label CallOE1
    .goto Durotar,44.03,76.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Manifestação|r
    .turnin 1517 >>Entregue Chamado da Terra
    .accept 1518 >>Aceite Clamor da Terra
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ranago Arauto da Terra|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>Entregue Chamado da Terra
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Shikrik
step
    #xprate >1.49
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Entregue A picareta de Thazz'ril
    .target Foreman Thazz'ril
step
    #label Leave
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>Saia do Vale das Provações
    .isOnQuest 805
step << !Shaman !Hunter !Warlock
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Aceite O fardo de um peão
    .target Ukor
step << !Shaman !Hunter !Warlock
    #completewith next
    .subzone 367 >>Vá para Sen'Jin Village
step << !Shaman !Hunter !Warlock
    .goto Durotar,55.94,74.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gadrin|r
    .turnin 805 >>Entregue Apresente-se na Aldeia Sen'jin
    .accept 823 >>Aceite Apresente-se a Orgnil
    .target Master Gadrin
step << Rogue/Warrior
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>Entre na cabana grande
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compre um|r |T132414:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
    .collect 29007,1,791,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (20)
    .collect 159,20,791,1
    .target K'waii
    .money <0.010
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (10)
    .collect 159,10,791,1
    .target K'waii
    .money <0.0050
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,791,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda seu equipamento. Venda sua arma se der dinheiro suficiente para um |T132401:0|t[Machado Largo] (4s 84c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,791,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135421:0|t[Machadinha] (5s 40c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dela|r
    .collect 2490,1,791,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Un'Thuwa
step << !Shaman !Hunter !Warlock
    #hardcore
    #label RazorHill1
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step << !Shaman !Hunter !Warlock
    #softcore
    #label RazorHill1
    #completewith next
    .goto Durotar,54.53,58.69
    .deathskip >>Vá até a seta do waypoint (ou mais ao norte dela), depois morra e renasça no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Aceite Aniquile os invasores
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << !Shaman !Hunter !Warlock
    #xprate >1.49 << !Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Siga em direção à torre
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Vá pela torre em direção a Furl
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Aceite Carregue o Seu Peso
    .target Furl Scornbrow
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step << !Shaman !Hunter !Warlock
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .vendor >>Comerciante Lixo
    --.home >> Set your Hearthstone to Razor Hill
    .turnin 2161 >>Entregue O Fardo do Peão
    .target Innkeeper Grosk
    --.bindlocation 362
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >>Entregue Simpatia de Espiritualidade
    .accept 5648 >>Aceite Garments of Spirituality
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Lance |T135929:0|t[Cura Inferior] e |T135987:0|t[Palavra de Poder: Fortitude] no |cRXP_FRIENDLY_Bruta Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Entregue Garments of Spirituality
    .trainer >>Treine suas magias de classe
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
    .money <0.01
    .target Rawrk
step << Warrior/Rogue/Paladin
    #xprate <1.5 << !Warrior
    #completewith TiragardeArrive
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios] |cRXP_WARN_e minere todo Veio de Cobre que encontrar para pegar|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r|cRXP_WARN_. Faça|r |T135248:0|t[Pedra de Afiar] |cRXP_WARN_com elas|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>Vá para Bastilha Tiragarde
    .isOnQuest 784
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Tenha cuidado se|r |cRXP_ENEMY_Sargento Carlos|r |cRXP_WARN_estiver ativo, pois é um raro de nível 9. Você pode ter que usar uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma|r
    .unitscan Watch Commander Zalaphil
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>Siga em direção ao segundo andar da fortaleza
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith AgedEnvelope
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Mate o |cRXP_ENEMY_Tenente Bento|r. Saqueie-o para pegar a |cRXP_LOOT_Chave|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>|cRXP_WARN_Suba as escadas da fortaleza|r
    >>Abra o |cRXP_PICK_Baú do Bento|r. Saqueie-o para pegar o |T133471:0|t[|cRXP_LOOT_Envelope Envelhecido|r]
    >>Use o |T133471:0|t[|cRXP_LOOT_Envelope Envelhecido|r] para iniciar a missão
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Aceite As Ordens do Almirante
    .use 4881
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #optional
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #optional
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #softcore
    #completewith next
    .goto Durotar,57.90,57.57
    .deathskip >>Morra na seta do waypoint (ou mais ao norte dela), depois renasça no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >>Vá para Monte Navalha
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Você pode falar com ele pelo lado de fora ou de cima do bunker|r
    .turnin 784 >>Entregue Aniquile os Traidores
    .turnin 830 >>Entregue As Ordens do Almirante
    .target Gar'thok
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Siga em direção à torre
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Vá pela torre em direção a Furl
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Entregue Carregue suas tralhas
    .target Furl Scornbrow
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #xprate <1.5 << !Warrior
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step << Rogue
    #xprate <1.5
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Venda seu equipamento. Venda sua arma se der dinheiro suficiente para um |T132401:0|t[Machado Largo] (4s 84c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135421:0|t[Machadinha] (5s 40c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dele|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #xprate <1.5
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Rogue
    #xprate <1.5
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith WindsinDes
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue/Warrior
    #xprate <1.5
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
    .money <0.01
    .target Rawrk
step << !Shaman !Hunter !Warlock
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_de|r |cRXP_BUY_dele|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #label WindsinDes
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
    .maxlevel 7
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Saque os |cRXP_PICK_Stolen Supply Sacks|r do chão
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step << !Shaman !Hunter !Warlock
    #xprate <1.5 << !Warrior
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do Deserto
    .target Rezlak
    .isQuestComplete 834
step << !Shaman !Hunter !Warlock
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    .zoneskip Tirisfal Glades
    .zoneskip Silvermoon City
    .zoneskip Eversong Woods
step << Warrior
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Geni|r
    .home >>Defina sua Pedra de Regresso em Montalvo
    .target Innkeeper Renee
    .bindlocation 2119
step << Warrior
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r no segundo andar da estalagem
    .accept 375 >>Aceite O Frio da Morte
    .target Gretchen Dedmar
    .maxlevel 7 --filler to get level 8 spells
step << Warrior
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 367 >>Aceite Uma Nova Praga
    .target Apothecary Johaan
    .maxlevel 7 --filler to get level 8 spells
step << Warrior
    #optional
    #completewith next
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os pelos seus |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Warrior
    #loop
    .goto Tirisfal Glades,42.16,46.76,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Abate os |cRXP_ENEMY_Darkhounds|r. Saque-os pelo seu |cRXP_LOOT_Sanguíneo|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step << Warrior
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os pelos seus |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp >8,1
    .isOnQuest 375
step << Warrior
    #optional
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,60.99,56.15,60,0
    .goto Tirisfal Glades,58.45,57.03,60,0
    .goto Tirisfal Glades,57.34,62.51,60,0
    .goto Tirisfal Glades,53.63,64.73,60,0
    .goto Tirisfal Glades,46.83,60.36,60,0
    .goto Tirisfal Glades,42.61,57.97,60,0
    .goto Tirisfal Glades,40.19,56.33,60,0
    .goto Tirisfal Glades,42.16,46.76,60,0
    .goto Tirisfal Glades,38.95,40.22,60,0
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os pelos seus |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Pule este passo se você não teve sorte com drops até agora|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .xp <8,1
    .isOnQuest 375
step << Warrior
    #xprate <1.5
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    .xp 7+3260 >>Farme até 3260/4500 xp
step << Warrior
    #xprate >1.49
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    .xp 7+2640>>Farme até 2640/4500 xp
step << Warrior
    #softcore
    #completewith FillerTurnins
    .deathskip >>Morra e renasça no |cRXP_FRIENDLY_Anjo da Cura|r
step << Warrior
    #hardcore
    #completewith FillerTurnins
    .subzone 159 >>Viaje para Brill
step << Warrior
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entregue Uma Nova Praga
    .target Apothecary Johaan
    .isQuestComplete 367
step << Warrior
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5 --Duskbat Pelt (5)
    .isQuestAvailable 375
step << Warrior
    #label FillerTurnins
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r no segundo andar da estalagem
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 284 >>Treine suas magias de classe
    .target Austil de Mon
step << !Shaman !Hunter !Warlock
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step << skip -- Warlock
    #completewith next
    .goto Undercity,66.11,26.81,20,0
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,67.74,37.96,20 >>Pegue o elevador para descer em Undercity
step << skip -- Warlock
    .goto Undercity,67.74,37.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeiro Ronan|r
    .home >>Defina sua Pedra de Regresso em Cidade Baixa
    .target Innkeeper Norman
    .bindlocation 1497
step << skip -- Warlock
    #completewith next
    .goto Undercity,66.07,37.02,20,0
    .goto Undercity,66.11,26.81,20 >>Pegue o elevador de volta para cima
step << !Shaman !Hunter !Warlock
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Suba as escadas aqui
step << !Shaman !Hunter !Warlock
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Usar o |cRXP_PICK_Orbe de Translocação|r
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ithelis|r ou |cRXP_FRIENDLY_Osselan|r
    .trainer >>Treine suas magias de classe
	.target Ithelis
	.target Osselan
step << !Shaman !Hunter !Warlock
    #completewith next
    .goto Silvermoon City,62.89,31.20,20,0
    .goto Silvermoon City,75.63,58.34,20,0
    .goto Silvermoon City,73.22,59.91,20,0
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Saia de Luaprata
step << !Shaman !Hunter !Warlock
    #label SilvermoonFP
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gloaming|r
    .fp Silvermoon >>Aprenda a rota de voo para Luaprata
    .target Skymistress Gloaming
    .isQuestAvailable 8463
step << !Shaman !Hunter !Warlock
    .goto Eversong Woods,50.34,50.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaela|r
    .accept 8475 >>Aceite A Trilha da Morte
    .target Ranger Jaela
step << !Shaman !Hunter !Warlock
    .goto Eversong Woods,46.68,49.10,40 >>Vá para Falconwing Square
    .isQuestAvailable 8463

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Horde
#name 6-10 Durotar
#version 7
#subgroup RestedXP Horda 1-30
#defaultfor Orc Hunter/Orc Shaman/Troll Hunter/Troll Shaman/Orc Warlock
#next 10-13 Durotar << Shaman
#next 10-12 Canto Eterno (Canto Eterno Woods) << !Shaman

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Aceite O fardo de um peão
    .target Ukor
step
    #completewith SenjinPickups
    .subzone 367 >>Vá para Sen'Jin Village
step
    #xprate <1.5
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larri Presador|r
    >>|cRXP_WARN_Ele faz uma pequena ronda|r
    .accept 786 >>Aceite Frustrando o ataque dos Kolkar
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r e |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Aceite Presa prática
    .goto Durotar,55.95,73.93
    .target +Vel'rin Fang
    .accept 818 >>Aceite Um Espírito Solvente
    .goto Durotar,55.94,74.40
    .target +Master Vornal
    .turnin 805 >>Entregue Apresente-se na Aldeia Sen'jin
    .accept 808 >>Aceite O Crânio de Minshina
    .accept 826 >>Aceite Zalazane
    .accept 823 >>Aceite Apresente-se a Orgnil
    .goto Durotar,55.94,74.72
    .target +Master Gadrin
step
    #xprate <1.5
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>Entre na cabana grande
step << Rogue
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compre um|r |T132414:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
    .collect 29007,1,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money <0.0050
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .target Trayexir
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda seu equipamento. Venda sua arma se der dinheiro suficiente para um |T132401:0|t[Machado Largo] (4s 84c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135421:0|t[Machadinha] (5s 40c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dela|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante de lixo. Venda sua arma se isto lhe render dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2s 83c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #xprate <1.5
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Mage
    .goto Durotar,56.30,75.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Un'Thuwa|r
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Un'Thuwa
step
    #xprate <1.5
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Corra pela praia. Abate os |cRXP_ENEMY_Crawlers|r e os |cRXP_ENEMY_Makruras|r. Saqueie-os pelos seus |cRXP_LOOT_Mucus|r e pelos seus |cRXP_LOOT_Olhos|r
    >>|cRXP_WARN_Você não precisa terminar este passo aqui|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #xprate <1.5
    .goto Durotar,52.20,83.00,75 >>Chegue ao fim da praia
    .isOnQuest 818
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>Entre na base dos Kolkar
    .isOnQuest 786
step
    #xprate <1.5
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Tome cuidado se|r |cRXP_ENEMY_Senhor da Guerra Kolkanis|r |cRXP_WARN_estiver por perto, ele é um inimigo raro de nível 9. Talvez você precise usar uma |r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma|r
    .unitscan Warlord Kolkanis
step
    #xprate <1.5
    .goto Durotar,49.81,81.29
    >>Queime o |cRXP_PICK_Plano de Ataque|r que está no chão dentro da tenda
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    #xprate <1.5
    >>Queime o |cRXP_PICK_Plano de Ataque|r que está no chão
    .goto Durotar,47.66,77.34
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #xprate <1.5
    #label Bonfire
    >>Queime o |cRXP_PICK_Plano de Ataque|r que está no chão
    .goto Durotar,46.23,78.94
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #xprate <1.5
    #softcore
    #completewith TurninKolkar
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >>Morra na fogueira e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith TurninKolkar
    .goto Durotar,50.95,79.14,30 >>Saia da base dos Kolkar
    .isQuestComplete 786
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .target Trayexir
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .target Trayexir
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda seu equipamento. Venda sua arma se der dinheiro suficiente para um |T132401:0|t[Machado Largo] (4s 84c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .target Trayexir
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135421:0|t[Machadinha] (5s 40c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dela|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .target Trayexir
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante de lixo. Venda sua arma se isto lhe render dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2s 83c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .target Trayexir
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith RazorHill1
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #xprate <1.5
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Vornal|r
    .turnin 818 >>Entregue Um espírito solvente
    .target Master Vornal
    .isQuestComplete 818
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r
    .vendor >>Lixo Comerciante
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << skip --Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << skip --Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #label TurninKolkar
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.20,73.36,25,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lar|r. Ele patrulha um pouco
    .turnin 786 >>Entregue Frustrando o ataque dos Kolkar
    .target Lar Prowltusk
step
    #hardcore
    #label RazorHill1
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step
    #softcore
    #label RazorHill1
    #completewith next
    .goto Durotar,54.53,58.69
    .deathskip >>Vá até a seta do waypoint (ou mais ao norte dela), depois morra e renasça no |cRXP_FRIENDLY_Anjo da Cura|r
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r e |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .accept 806 >>Aceite Tempestades Sombrias
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Aceite Aniquile os invasores
    .accept 837 >>Aceite Invasão
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Aceite Quebrar alguns ovos
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step << !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r e |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    --.accept 806 >>Accept Dark Storms
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .accept 784 >>Aceite Aniquile os invasores
    .accept 837 >>Aceite Invasão
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Aceite Quebrar alguns ovos
    .target +Cook Torka
    .goto Durotar,51.09,42.49
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Siga em direção à torre
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Vá pela torre em direção a Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Aceite Carregue o Seu Peso
    .target Furl Scornbrow
step << Warrior/Rogue/Paladin
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue/Paladin
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue/Paladin
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,784,1 --Collect Walking Stick (1)
    .target Uhgar
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,784,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Venda seu equipamento. Venda sua arma se der dinheiro suficiente para um |T132401:0|t[Machado Largo] (4s 84c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,784,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135421:0|t[Machadinha] (5s 40c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dele|r
    .collect 2490,1,784,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ghrawt|r
    .vendor >>Comerciante de lixo. Venda sua arma se isto lhe render dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2s 83c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target Ghrawt
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith TiragardeArrive
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dele|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    >>|cRXP_WARN_Economize 4 moedas de prata para seus feitiços de classe!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_Economize 2 moedas de prata para seus feitiços de classe!|r << Priest
    .vendor >>Comerciante Lixo
    .home >>Defina sua Pedra de Retorno em Razor Hill
    .turnin 2161 >>Entregue O Fardo do Peão
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
    .bindlocation 362
    .xp <8,1
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .vendor >>Comerciante Lixo
    .home >>Defina sua Pedra de Retorno em Razor Hill
    .turnin 2161 >>Entregue O Fardo do Peão
    .target Innkeeper Grosk
    .bindlocation 362
    .xp >8,1
step << !Mage !Hunter !Druid !Paladin
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .vendor >>Comerciante Lixo
    .home >>Defina sua Pedra de Retorno em Razor Hill
    .turnin 2161 >>Entregue O Fardo do Peão
    .target Innkeeper Grosk
    .train 6760,3 << Rogue
    .train 139,3 << Priest
    .train 980,3 << Warlock
    .train 8044,3 << Shaman
    .train 284,3 << Warrior
    .bindlocation 362
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <8,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8044 >>Treine suas magias de classe
    .target Swart
    .xp <8,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <8,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e compre |T133738:0|t[Seta de Fogo Rank 2]
    .collect 16302,1,784,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .xp <8,1
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .train 5116 >>Treine suas magias de classe
    .target Thotar
    .xp <8,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >>Treine suas magias de classe
    .target Kaplak
    .xp <8,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >>Entregue Simpatia de Espiritualidade
    .accept 5648 >>Aceite Garments of Spirituality
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .target Tai'jin
step << Priest
    .goto Durotar,53.10,46.46
    >>Lance |T135929:0|t[Cura Inferior] e |T135987:0|t[Palavra de Poder: Fortitude] no |cRXP_FRIENDLY_Bruta Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Entregue Garments of Spirituality
    .trainer >>Treine suas magias de classe
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_de|r |cRXP_BUY_dele|r
    .collect 4496,1,784,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Rogue/Paladin
    #completewith TiragardeArrive
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios] |cRXP_WARN_e minere todo Veio de Cobre que encontrar para pegar|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r|cRXP_WARN_. Faça|r |T135248:0|t[Pedra de Afiar] |cRXP_WARN_com elas|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #label TiragardeArrive
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>Vá para Bastilha Tiragarde
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Tenha cuidado se|r |cRXP_ENEMY_Sargento Carlos|r |cRXP_WARN_estiver ativo, pois é um raro de nível 9. Você pode ter que usar uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TiragardeArrive
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>Siga em direção ao segundo andar da fortaleza
step
    #completewith AgedEnvelope
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Mate o |cRXP_ENEMY_Tenente Bento|r. Saqueie-o para pegar a |cRXP_LOOT_Chave|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1,830 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
step
    #label AgedEnvelope
    .goto Durotar,59.87,57.87,5,0
    .goto Durotar,59.83,57.58,5,0
    .goto Durotar,59.80,57.82,5,0
    .goto Durotar,59.94,57.82,5,0
    .goto Durotar,59.94,57.61,5,0
    .goto Durotar,59.27,57.65
    >>|cRXP_WARN_Suba as escadas da fortaleza|r
    >>Abra o |cRXP_PICK_Baú do Bento|r. Saqueie-o para pegar o |T133471:0|t[|cRXP_LOOT_Envelope Envelhecido|r]
    >>Use o |T133471:0|t[|cRXP_LOOT_Envelope Envelhecido|r] para iniciar a missão
    .collect 4881,1,830 --Collect Aged Envelope (1)
    .accept 830 >>Aceite As Ordens do Almirante
    .use 4881
step
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
    .itemcount 4870,<8 --Canvas Scraps (<8)
step
    #optional
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
step
    #optional
    #label ScrapsFinished
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
    .complete 791,1 --Canvas Scraps (8)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << !Mage
    #xprate <1.5
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2610 >>Farme até 2610+/4500xp
step << !Mage
    #xprate >1.49
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1665 >>Farme até 1665+/4500xp
step
    #softcore
    #completewith next
    .goto Durotar,57.93,57.67
    .deathskip >>Morra na seta do waypoint (ou mais ao norte dela), depois renasça no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith next
    .goto Durotar,52.38,43.77,120 >>Vá para Monte Navalha
step
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Você pode falar com ele pelo lado de fora ou de cima do bunker|r
    .turnin 784 >>Entregue Aniquile os Traidores
    .turnin 830 >>Entregue As Ordens do Almirante
    .accept 825 >>Aceite Dos destroços...
    .accept 831 >>Aceite As Ordens do Almirante
    .accept 837 >>Aceite Invasão
    .target Gar'thok
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Siga em direção à torre
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Vá pela torre em direção a Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Entregue Carregue suas tralhas
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,825,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,825,1 --Collect Walking Stick (1)
    .target Uhgar
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,825,1 --Collect Stiletto (1)
    .target Uhgar
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Venda seu equipamento. Venda sua arma se der dinheiro suficiente para um |T132401:0|t[Machado Largo] (4s 84c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,825,1 --Collect Large Axe (1)
    .target Uhgar
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Itens para venda. Venda sua arma se der dinheiro suficiente para um |T135421:0|t[Machadinha] (5s 40c). Você voltará mais tarde se não tiver o suficiente ainda.
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dele|r
    .collect 2490,1,825,1 --Collect Tomahawk (1)
    .target Uhgar
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 29007
    .itemcount 29007,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ghrawt|r
    .vendor >>Comerciante de lixo. Venda sua arma se isto lhe render dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2s 83c). Você voltará depois se ainda não tiver dinheiro suficiente
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .target Ghrawt
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Tools
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dele|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 284 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8044 >>Treine suas magias de classe
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Treine suas magias de classe
    .target Dhugru Gorelust
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e compre |T133738:0|t[Seta de Fogo Rank 2]
    .collect 16302,1,825,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .train 5116 >>Treine suas magias de classe
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >>Treine suas magias de classe
    .target Kaplak
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .train 139 >>Treine suas magias de classe
    .target Tai'jin
step << Rogue/Warrior
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_de|r |cRXP_BUY_dele|r
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .vendor >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman
    .vendor >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .target Innkeeper Grosk
    .isOnQuest 825 --From the Wreckage
    .money <0.0125
step << Warrior/Rogue/Paladin
    #completewith Tools
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios] |cRXP_WARN_e minere todo Veio de Cobre que encontrar para pegar|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r|cRXP_WARN_. Faça|r |T135248:0|t[Pedra de Afiar] |cRXP_WARN_com elas|r
    .collect 2862,1,784,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #completewith next
    >>Abate |cRXP_ENEMY_Rastejadores Pigmeus de Surf|r e |cRXP_ENEMY_Rastejadores de Surf|r. Saque-os pelos |cRXP_LOOT_Muco|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto Durotar,62.25,56.34,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    >>Pegue as |cRXP_PICK_Caixas de Ferramentas Gnômicas|r dentro e ao redor dos barcos
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >>Nade para a Ilha
step
    #completewith MinshinasSkull
    >>Abate os |cRXP_ENEMY_Durotar Tigers|r. Saqueie-os pela |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>Abate |cRXP_ENEMY_Rastejadores Pigmeus de Surf|r e |cRXP_ENEMY_Rastejadores de Surf|r. Saque-os pelos |cRXP_LOOT_Muco|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label TaillasherEggs
    #loop
    .goto Durotar,67.04,71.40,0
    .goto Durotar,70.23,70.84,0
    .goto Durotar,67.04,71.40,40,0
    .goto Durotar,67.66,73.86,40,0
    .goto Durotar,68.67,74.47,40,0
    .goto Durotar,69.76,74.69,40,0
    .goto Durotar,70.29,73.31,40,0
    .goto Durotar,70.23,70.84,40,0
    .goto Durotar,69.69,70.35,40,0
    .goto Durotar,69.21,69.69,40,0
    .goto Durotar,67.74,69.86,40,0
    >>Pegue os |cRXP_PICK_Ovos de Açoitacauda|r que estão no chão
    >>|cRXP_WARN_Eles geralmente são guardados por um|r |cRXP_ENEMY_Açoitacauda Garrassangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Rastejadores|r e os |cRXP_ENEMY_Makruras|r. Saque-os pelo |cRXP_LOOT_Muco|r e pelos |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>Nade para a ilha principal
    .isOnQuest 826
step
    #completewith ZalazaneKill
    >>Abate |cRXP_ENEMY_Hexed Trolls|r e |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Abate |cRXP_ENEMY_Zalazane|r. Saque-o pela |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Guarde seu|r |T136026:0|t[Choque Terreno] |cRXP_WARN_para quando ele conjurar|r |T136052:0|t[Onda Curativa] << Shaman
    >>|cRXP_WARN_Guarde seu|r |T132155:0|t[Esfaquear] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #label MinshinasSkull
    .goto Durotar,67.4,87.8
    >>Saque um dos |cRXP_LOOT_Crânios|r que estão no chão
    .complete 808,1 --Minshina's Skull (1)
step
    #label ZalazaneKill
    .goto Durotar,67.4,87.8
    >>Abate |cRXP_ENEMY_Zalazane|r. Saque-o pela |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Guarde seu|r |T136026:0|t[Choque Terreno] |cRXP_WARN_para quando ele conjurar|r |T136052:0|t[Onda Curativa] << Shaman
    >>|cRXP_WARN_Guarde seu|r |T132155:0|t[Esfaquear] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Durotar Tigers|r. Saqueie-os pela |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
	.goto Durotar,67.23,88.00,0
	.goto Durotar,67.23,88.76,40,0
	.goto Durotar,66.52,87.74,40,0
	.goto Durotar,65.94,86.72,40,0
	.goto Durotar,65.90,84.04,40,0
	.goto Durotar,65.88,82.85,40,0
	.goto Durotar,67.38,82.61,40,0
	.goto Durotar,68.42,82.43,40,0
	.goto Durotar,68.50,84.32,40,0
	.goto Durotar,68.47,86.77,40,0
	.goto Durotar,67.23,88.00,40,0
    >>Abate |cRXP_ENEMY_Hexed Trolls|r e |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Abate |cRXP_ENEMY_Rastejadores Pigmeus de Surf|r e |cRXP_ENEMY_Rastejadores de Surf|r. Saque-os pelos |cRXP_LOOT_Muco|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto Durotar,65.27,87.86,0
    .goto Durotar,65.27,87.86,50,0
    .goto Durotar,64.72,88.53,50,0
    .goto Durotar,64.70,84.89,50,0
    .goto Durotar,64.68,80.80,50,0
    .goto Durotar,65.35,80.11,50,0
    .goto Durotar,65.87,81.23,50,0
    .goto Durotar,60.28,80.04,50,0
    .goto Durotar,60.60,82.26,50,0
    .goto Durotar,59.88,83.51,50,0
    .goto Durotar,59.56,84.86,50,0
    .goto Durotar,60.84,88.79,50,0
    .goto Durotar,61.41,89.69,50,0
    .goto Durotar,61.48,91.37,50,0
    .goto Durotar,60.37,91.36,50,0
    .goto Durotar,59.04,90.51,50,0
    .goto Durotar,59.79,83.44,50,0
    >>Abate os |cRXP_ENEMY_Durotar Tigers|r. Saqueie-os pela |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Abate |cRXP_ENEMY_Rastejadores Pigmeus de Surf|r e |cRXP_ENEMY_Rastejadores de Surf|r. Saque-os pelos |cRXP_LOOT_Muco|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    -->>This does not need to be finished now
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith Zalazaneturnin
    .goto Durotar,57.50,73.26,50,0
    .deathskip >>Morra e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r ou volte correndo
step
    #hardcore
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>Vá para Sen'Jin Village
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    >>|cRXP_WARN_Pule para dentro da cabana|r
    .vendor >>Venda itens inúteis e repare
    .target Trayexir
    .isOnQuest 808
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >>Treine suas magias de classe
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r e |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Entregue Crânio de Minshina
    .turnin 826 >>Entregue Zalazane
    .goto Durotar,55.95,74.73
    .target +Master Gadrin
    .turnin 818 >>Entregue Um espírito solvente
    .goto Durotar,55.95,74.39
    .target +Master Vornal
    .turnin 817 >>Entregue Presa Prática
    .goto Durotar,55.95,73.93
    .target +Vel'rin Fang
step
    #xprate >1.49
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+4400 >>Farme até 4400+/6500 XP
step
    #hardcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .subzone 362 >>Vá para Monte Navalha
step
    #softcore
    #optional
    #label RazorHill1
    #completewith RazorHill3
    .goto Durotar,54.53,58.69
    .deathskip >>Vá até a seta do waypoint (ou mais ao norte dela), depois morra e renasça no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #label RazorHill3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gar'Thok|r e |cRXP_FRIENDLY_Torka|r
    .turnin 825 >>Entregue Dos destroços...
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .turnin 815 >>Entregue Quebre Alguns Ovos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
step
    #xprate <1.5
    #loop
    .goto Durotar,50.21,50.78,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>Abate |cRXP_ENEMY_Javalis de Crinas Afiadas|r e |cRXP_ENEMY_Batedores de Crinas Afiadas|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    #xprate <1.5
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    >>Abate |cRXP_ENEMY_Corredores de Pó das Crinas Afiadas|r e |cRXP_ENEMY_Guardas de Batalha das Crinas Afiadas|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step
    #xprate <1.5
    #loop
	.goto Durotar,43.30,37.32,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 9+5870 >>Farme até 5870+/6500xp
step
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #xprate <1.5
    #hardcore
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step
    #xprate <1.5
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Entregue Encroachment
    .target Gar'Thok
step
    #xprate <1.5
    #loop
	.goto Durotar,41.94,40.46,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    .xp 10 >>Suba até 10
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .accept 2983 >>Aceite Call of Fogo - Missão - Missão
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .trainer >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>Aceite Convocação de Gan'rul
    .train 1120 >>Treine suas magias de classe
    .target Dhugru Gorelust
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e compre |T133738:0|t[Seta de Fogo Rank 2]
    .collect 16302,1,1501,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .train 8092 >>Treine suas magias de classe
    .target Tai'jin
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 674 >>Treine suas magias de classe
    .target Kaplak
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6062 >>Aceite Domando a Fera
    .trainer >>Treine suas magias de classe
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_e um|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    .money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step << Hunter
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .goto Durotar,51.65,56.51,40,0
    .use 15917 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Atroz Mosquetusco|r |cRXP_WARN_no alcance máximo|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6062 >>Entregue Domar a Fera - Missão
    .accept 6083 >>Aceite Domando a Fera
    .target Thotar
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6083 >>Aceite Domando a Fera
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Dispense seu |cRXP_ENEMY_Mosquetusco Hediondo|r clicando com o botão direito no quadro de unidade dele e selecionando dispensar, caso contrário você não conseguirá domar um|r |cRXP_ENEMY_Surfatisco|r
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    .goto Durotar,59.63,23.38,40,0
    >>|cRXP_WARN_Não mate os|r |cRXP_ENEMY_Escorpídeos Encouraçados|r |cRXP_WARN_que encontrar. Você precisará deles mais adiante|r
    .use 15919 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Surfatisco|r |cRXP_WARN_na distância máxima|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6083 >>Entregue Domar a Fera - Missão
    .accept 6082 >>Aceite Domando a Fera
    .target Thotar
step << Hunter
    #completewith next
    +|cRXP_WARN_Dispense seu |cRXP_ENEMY_Surfatisco|r clicando com o botão direito no quadro de unidade dele e selecionando dispensar, caso contrário você não conseguirá domar um|r |cRXP_ENEMY_Escorpídeo Encouraçado|r
step << Hunter
    #loop
    .goto Durotar,54.84,36.94,0
    .goto Durotar,54.84,36.94,40,0
    .goto Durotar,54.01,33.81,40,0
    .goto Durotar,54.22,30.50,40,0
    .goto Durotar,55.71,30.66,40,0
    .goto Durotar,56.19,29.28,40,0
    .goto Durotar,56.95,27.28,40,0
    .goto Durotar,57.15,25.59,40,0
    .use 15920 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Escorpídeo Encouraçado|r |cRXP_WARN_na distância máxima|r
    .complete 6082,1 --Tame an Armored Scorpid
    .mob Armored Scorpid
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6082 >>Entregue Domar a Fera - Missão
    .accept 6081 >>Aceite Treinando a Fera
    .target Thotar
step << Hunter
    #completewith ConscriptH
    +|cRXP_WARN_Coloque|r |T132164:0|t[Domar Fera]|cRXP_WARN_,|r |T136095:0|t[Dispensar Ajudante]|cRXP_WARN_, e|r |T132161:0|t[Chamar Ajudante] |cRXP_WARN_nas suas barras de ações|r
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Compre|r |T133972:0|t[Carne-seca Dura] |cRXP_BUY_dele|r. |cRXP_BUY_Você usará isso para alimentar seu ajudante mais adiante|r
    .vendor >>Comerciante Lixo
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
    .isQuestAvailable 834 --Winds in the Desert
step << !Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimtak|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Grimtak
step << Hunter
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
step << Warlock/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
    .isOnQuest 6081 << Hunter
    .isOnQuest 1506 << Warlock
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>Vá para o Vale da Honra
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .turnin 6081 >>Entregue Treinamento da Fera - Missão
    .target Ormak Grimshot
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24547 >>Treine as magias do seu mascote
    .target Xao'tsu
step << Hunter
    #completewith next
    +|cRXP_WARN_Coloque|r |T132162:0|t[Treinamento de Feras]|cRXP_WARN_(na aba Geral),|r |T132163:0|t[Reviver Ajudante]|cRXP_WARN_, e|r |T132165:0|t[Alimentar Ajudante] |cRXP_WARN_nas suas barras de ações|r
    >>|cRXP_WARN_Lembre-se de treinar seu ajudante sempre que ele ganhar Pontos de Treinamento para|r |T132162:0|t[Treinamento de Feras]
step << Warlock/Hunter
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 831 >>Entregue As Ordens do Almirante
    .target Vol'Jin
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .turnin 1506 >>Entregue O Chamado de Gan'rul - Missão
    .accept 1501 >>Aceite Criatura do caos
    .target Gan'rul Bloodeye
step << Warlock
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>Entre em Cavernas Ígneas
step << Warlock
    #softcore
    #completewith SkullRockWarlock
    .goto Durotar,47.05,17.58
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isOnQuest 1501
step << Warlock
    #hardcore
    #completewith SkullRockWarlock
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << Warlock
    #label SkullRockWarlock
    .goto Durotar,54.95,9.61
    .subzone 817 >>Vá para a Rocha da Caveira
    .isOnQuest 1501
step << Warlock
    #completewith VergaTablet
    >>Mate |cRXP_ENEMY_Gazz'uz|r se ele estiver ativo. Saqueie-o por |T134085:0|t[|cRXP_LOOT_Eye of Em chamas Sombra|r]. Usar-o para iniciar a missão
    .collect 4903,1,832 --Collect Eye of Burning Shadow
    .accept 832 >>Aceite Sombras incandescentes
    .unitscan Gazz'uz
step << Warlock
    #completewith next
    >>Mate os |cRXP_ENEMY_Burning Blade Orcs|r. Saqueie-os para obter um |cRXP_LOOT_Lieutenant's Insignia|r
    >>|cRXP_WARN_Pule isto se tiver azar com a queda|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warlock
    #label VergaTablet
    .goto Durotar,54.16,8.95,15,0
    .goto Durotar,51.62,9.76
    >>Saqueie o |cRXP_PICK_Burning Blade Stash|r no fundo da caverna para obter o |cRXP_LOOT_Tablet of Verga|r
    .complete 1501,1 --Tablet of Verga (1)
step << Warlock
    #softcore
    .goto Durotar,47.05,17.58
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
    .isQuestComplete 1501
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Escondido Enemies
    .accept 5727 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestComplete 5726
step << Warlock
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .turnin 1501 >>Entregue Criatura do caos
    .accept 1504 >>Aceite A vinculação
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .accept 832 >>Aceite Sombras incandescentes
    .turnin 832 >>Entregue Sombras incandescentes
    .target Neeru Fireblade
    .skipgossip
    .itemcount 4903,1
step << Warlock
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .isQuestTurnedIn 5726
step << Warlock
    #completewith next
    .cast 9221 >>|cRXP_WARN_use o|r |T134416:0|t[Glifos de Evocação] |cRXP_WARN_no Círculo de Evocação|r
    .use 6284
step << Warlock
    .goto Orgrimmar,49.45,50.02
    >>Mate o |cRXP_ENEMY_Emissário do Caos Invocado|r
    .complete 1504,1 --Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
step << Warlock
    .goto Orgrimmar,48.246,45.281
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gan'rul Olho de Sangue|r
    .turnin 1504 >>Entregue A Vinculação
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entregue Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5726
step << Warlock
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,36.0,37.7
    .deathskip >>|cRXP_WARN_Remova seu|r |T136185:0|t[Pele de Demônio] |cRXP_WARN_buff. Corra para cima do braseiro e use|r |T136126:0|t[Conversão de Vida] |cRXP_WARN_para fazer deathskip para fora de Orgrimmar|r
step << Warlock
    #hardcore
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>Saia de Orgrimmar
step << Hunter
    #completewith ZeptoUC1
    .goto Durotar,45.54,12.14
    .zone Durotar >>Saia de Orgrimmar
step << Hunter
    #completewith ZeptoUC1
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>Dome um |cRXP_ENEMY_Escorpídeo Caudaçonha|r
    >>|cRXP_WARN_Isso permitirá que você treine|r |T132140:0|t[Garra Rank 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #label SupplySacks
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Saque os |cRXP_PICK_Stolen Supply Sacks|r do chão
    .complete 834,1 --Sack of Supplies (5)
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do Deserto
    .accept 835 >>Aceite Faça o que eu digo...
    .target Rezlak
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #completewith next
    .goto Durotar,51.9,27.4,20 >>Atravesse a caverna
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #loop
    .goto Durotar,54.02,27.23,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Mate |cRXP_ENEMY_Selvagem Sopravento|r e |cRXP_ENEMY_Bruxa da Tempestade Sopravento|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Spirit Healer|ror run back
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >>Atravesse a caverna em direção a |cRXP_FRIENDLY_Rezlak|r
step << !Shaman !Warrior !Warlock
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entregue Faça o Que Eu Digo...
    .target Rezlak
step << !Shaman !Warrior
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    .zoneskip Undercity
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
step << !Shaman !Warrior
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Suba as escadas aqui
step << !Shaman !Warrior
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Usar o |cRXP_PICK_Orbe de Translocação|r
step << Paladin
    .goto Silvermoon City,91.19,36.94,-1
    .goto Silvermoon City,91.14,38.10,-1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ithelis|r ou |cRXP_FRIENDLY_Osselan|r
    .trainer >>Treine suas magias de classe
	.target Ithelis
	.target Osselan
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Horde
#name 10-13 Durotar
#version 7
#subgroup RestedXP Horda 1-30
#defaultfor Shaman !Tauren
#next 13-18 Terras Devastadas


step << Warrior/Shaman
    #optional
    .xp 10 >>Suba até o nível 10
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Aceite Veterano Uzzek
    .trainer >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .train 355,1
step
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step
    #xprate >1.49
    #loop
    .goto Durotar,50.21,50.78,0
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96,30,0
    >>Abate |cRXP_ENEMY_Javalis de Crinas Afiadas|r e |cRXP_ENEMY_Batedores de Crinas Afiadas|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .isOnQuest 837
step
    #xprate >1.49
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,30,0
	.goto Durotar,44.49,37.47,30,0
	.goto Durotar,43.30,37.32,30,0
	.goto Durotar,41.70,37.09,30,0
	.goto Durotar,41.64,38.27,30,0
	.goto Durotar,41.94,40.46,30,0
	.goto Durotar,43.30,40.40,30,0
    >>Abate |cRXP_ENEMY_Corredores de Pó das Crinas Afiadas|r e |cRXP_ENEMY_Guardas de Batalha das Crinas Afiadas|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
    .isOnQuest 837
step
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>Voe para Posto de Farol
    .zoneskip The Barrens
step
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Entregue Veterano Uzzek
    .accept 1498 >>Aceite Caminho da defesa
    .target Uzzek
    .train 355,1
step << Orc Shaman/Troll Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entregue Call of Fogo - Missão - Missão
    .accept 1524 >>Aceite Call of Fogo - Missão - Missão
    .target Kranal Fiss
step << !Tauren
    #softcore
    #completewith Xroads1
    .goto The Barrens,50.72,32.61
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 380
step << !Tauren
    #hardcore
    #completewith Xroads1
    .goto The Barrens,52.34,29.27,150 >>Vá para The Encruzilhada
step << !Tauren
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << !Tauren
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
step << Orc/Troll
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target Zargh
step << !Tauren
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Na Cola dos Larápios
    .target Gazrog
step << !Tauren
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
    .target Thork
step << !Tauren
    #xprate <1.5
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_NÃO voe para Orgrimmar!|r
    .fp The Crossroads >>Aprenda a rota de voo para Encruzilhada
    .target Devrak
    .subzoneskip 380,1
step << Orc/Troll
    #xprate <1.5
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_NÃO voe para Orgrimmar!|r
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona Para Orgrimmar
    .target Devrak
step << !Tauren
    #label Xroads1
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Aceite Esporos de Fungos
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .target Apothecary Helbrim
step << !Tauren
    #xprate <1.5
    #completewith next
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Mantenha distância máxima de |cRXP_ENEMY_Kolkar|r |cRXP_WARN_enquanto coleta os cogumelos. Eles são nível 12-14|r
    >>|cRXP_WARN_A continuação dessa missão tem o poderoso |cRXP_FRIENDLY_Mexedor de Caldeirão|r |cRXP_WARN_como recompensa. Você pode pular essa missão por enquanto se não pretender usá-lo|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
    #xprate <1.5
    .goto The Barrens,45.06,22.54
    >>Mergulhe debaixo d'água para o |cRXP_PICK_Borbulhando Rachadura|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << !Tauren
    #xprate <1.5
    #loop
    .goto The Barrens,45.2,23.3,0
    .goto The Barrens,45.2,23.3,40,0
    .goto The Barrens,45.2,22.0,40,0
    .goto The Barrens,44.6,22.5,40,0
    .goto The Barrens,43.9,24.4,40,0
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Mantenha distância máxima de |cRXP_ENEMY_Kolkar|r |cRXP_WARN_na área. Eles são nível 12-14|r
    >>|cRXP_WARN_A continuação dessa missão tem o poderoso |cRXP_FRIENDLY_Mexedor de Caldeirão|r |cRXP_WARN_como recompensa. Você pode pular essa missão por enquanto se não pretender usá-lo|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << !Tauren
    #xprate <1.5
    #hardcore
    #completewith PoolsTurnin
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >>Vá para The Encruzilhada
step << !Tauren
    #xprate <1.5
    #softcore
    #completewith PoolsTurnin
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Tauren
    #xprate <1.5
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Espere o RP terminar|r
    >>|cRXP_WARN_Isso inicia uma missão cronometrada de 45 minutos|r
    .turnin 848 >>Entregue Esporos de Fungos
    .timer 7,Esporos de Fungos RP
    .accept 853 >>Aceite Boticário Zamah
    .target Apothecary Helbrim
step
    #xprate <1.5
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Você está em uma missão cronometrada, não fique inativo. Será entregue automaticamente em 20-30 minutos após pegar|r
    .isOnQuest 853
step << !Tauren
    #xprate <1.5
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre um ou mais|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_de|r |cRXP_BUY_dele|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << !Tauren
    #xprate <1.5
    #label PoolsTurnin
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entregue Os Poços Esquecidos
    .accept 877 >>Aceite Oásis Estagnante
    .target Tonga Runetotem
step << Warrior/Shaman
    #xprate <1.5
    #softcore
    #completewith next
    .goto The Barrens,49.75,49.54
    .subzone 378 >>Viagem para o sul pela estrada em direção a Camp Taurajo
    >>|cRXP_WARN_Quando você chegar à seta do waypoint (ou mais ao norte dela), morra e renasça no|r |cRXP_FRIENDLY_Anjo da Cura|r
step << Warrior/Shaman
    #xprate <1.5
    #hardcore
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>Viagem para o sul pela estrada em direção a Camp Taurajo
step << Warrior/Shaman
    #xprate <1.5
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo
    .target Omusa Thunderhorn
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    .zone Mulgore >>Viaje até Mulgore
step << Warrior/Shaman
    #xprate <1.5
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .accept 749 >>Aceite A caravana devastada
	.unitscan Morin Cloudstalker
step << !Tauren
    #xprate <1.5
    #completewith next
    .subzone 222 >>Vá para Bloodhoof Village
step << !Tauren
    #xprate <1.5
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab|r
    .accept 11129 >>Aceite Quico Sumiu!
    .target Ahab Wheathoof
step << !Tauren
    #xprate <1.5
    #completewith RavagedCaravanTI
    >>Mate um |cRXP_ENEMY_Pinote|r. Saqueie-o para obter |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << !Tauren
    #xprate <1.5
    .goto Mulgore,53.74,48.17
    >>Clique no |cRXP_PICK_Caixote de Suprimentos Lacrado|r
    .turnin 749 >>Entregue A Caravana Devastada
    .accept 751 >>Aceite A caravana devastada
step << !Tauren
    #xprate <1.5
    #label RavagedCaravanTI
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .accept 764 >>Aceite Empreendimentos S.A.
    .accept 765 >>Aceite Supervisor Geringonça
	.unitscan Morin Cloudstalker
step << !Tauren
    #xprate <1.5
    #completewith next
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << !Tauren
    #xprate <1.5
    #label Fizsprocket1
    .goto Mulgore,64.95,43.33
    >>Abate |cRXP_ENEMY_Supervisor Geringonça|r. Saque a |cRXP_LOOT_Prancheta|r dela
    >>|cRXP_WARN_Entre na mina e siga o lado direito/leste para alcançá-lo|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
step << !Tauren
    #xprate <1.5
    #label VentureCoKills
    #loop
	.goto Mulgore,61.35,47.55,0
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << !Tauren
    #xprate <1.5
    #completewith next
    >>Mate um |cRXP_ENEMY_Pinote|r. Saqueie-o para obter |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << !Tauren
    #xprate <1.5
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 764 >>Entregue Empreendimentos S.A.
    .turnin 765 >>Entregue para o Supervisor Geringonça
	.unitscan Morin Cloudstalker
step << !Tauren
    #xprate <1.5
    #loop
    .goto Mulgore,52.42,64.24,0
    .goto Mulgore,52.42,64.24,70,0
    .goto Mulgore,49.18,67.09,70,0
    .goto Mulgore,44.47,70.52,70,0
    .goto Mulgore,42.32,66.98,70,0
    .goto Mulgore,38.78,66.30,70,0
    >>Mate um |cRXP_ENEMY_Pinote|r. Saqueie-o para obter |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r]
    .collect 33009,1,11129,1 --Collect Tender Strider Meat (1)
    .mob Adult Plainstrider
    .mob Elder Plainstrider
step << !Tauren
    #xprate <1.5
    #loop
    .goto Mulgore,47.3,56.9,0
    .goto Mulgore,47.3,56.9,30,0
    .goto Mulgore,49.4,63.9,30,0
    .goto Mulgore,50.2,60.2,30,0
    .goto Mulgore,46.8,59.6,30,0
    .use 33009>>Encontre |cRXP_FRIENDLY_Quico|r. Usar a |T134028:0|t[|cRXP_LOOT_Carne Tenra de Moa|r] para alimentá-lo
    >>|cRXP_WARN_Ele corre no sentido horário em círculos ao redor de Bloodhoof Village|r
    .complete 11129,1 --1/1 Kyle fed
    .unitscan Kyle the Frenzied
    --TODO: Test beta, bugged on pserver
step << !Tauren
    #xprate <1.5
    .goto Mulgore,48.2,53.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ahab|r
    .turnin 11129 >>Entregue Quico Sumiu!
    .target Ahab Wheathoof
step << !Tauren
    #xprate <1.5
    #completewith TBFP
    .goto Thunder Bluff,31.86,66.67,30,0
    .goto Thunder Bluff,36.17,62.76,20 >>Pegue o elevador para Trovão Blefe
step << !Tauren !Paladin !Shaman
    #xprate <1.5
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Treine Cajados
    .target Ansekhwa
step << Paladin/Shaman
    #xprate <1.5
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Treine Maças de Duas Mãos
    .target Ansekhwa
    .money <0.1
step << !Tauren
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,45.6,52.0,15 >>Suba na torre
step << !Tauren
    #xprate <1.5
    #label TBFP
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >>Aprenda a rota de voo para Penhasco do Trovão
	.target Tal
step << !Tauren
    #xprate <1.5
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Vá para o Alto do Espírito e entre nas Piscinas da Visão
step << !Tauren
    #xprate <1.5
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Entregue Boticário Zaqueu
    .target Apothecary Zamah
step << !Tauren
    #xprate <1.5
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Aceite Procurando pela Bolsa Perdida
    .accept 5723 >>Aceite Testando a Força de um Inimigo
    .target Rahauro
    .dungeon RFC
step << !Tauren
    #completewith LostPickup
    .hs >>Vá para Razor Hill
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,>0
step << !Tauren
    #xprate <1.5
    #completewith LostPickup
    .hs >>Farme fora de Penhasco do Trovão até sua Pedra de Retorno estar pronta, depois use a Pedra de Retorno para ir a Razor Hill
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .cooldown item,6948,<0
step << !Tauren
    #xprate >1.49
    #completewith LostPickup
    .subzone 362 >>Vá para Monte Navalha
    .bindlocation 362,1
    .cooldown item,6948,<0
step
    #xprate >1.49
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Entregue Encroachment
    .target Gar'Thok
    .isQuestComplete 837
step
    #label LostPickup
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Aceite Em memória
    .target Misha Tor'kren
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
step
    #loop
    .goto Durotar,49.70,21.90,0
    .goto Durotar,49.70,21.90,40,0
    .goto Durotar,49.70,24.33,40,0
    .goto Durotar,50.13,25.70,40,0
    .goto Durotar,50.85,25.96,40,0
    .goto Durotar,51.65,27.67,40,0
    .goto Durotar,49.85,27.07,40,0
    .goto Durotar,50.68,31.55,40,0
    .goto Durotar,48.10,34.36,40,0
    .goto Durotar,47.35,33.40,40,0
    .goto Durotar,48.49,32.01,40,0
    .goto Durotar,47.19,30.87,40,0
    >>Saque os |cRXP_PICK_Stolen Supply Sacks|r do chão
    .complete 834,1 --Sack of Supplies (5)
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do Deserto
    .accept 835 >>Aceite Faça o que eu digo...
    .target Rezlak
step
    .goto Durotar,41.54,18.59
    >>|cRXP_WARN_Isso iniciará um temporizador de 45 minutos para a missão. NÃO fique AFK ou faça logout nos próximos 5 minutos|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Aceite Busca da cura
    .target Rhinag
step
    #completewith FindingAntidote
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
step << Orc/Troll
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
    .accept 6385 >>Aceite Doraso, o Mestre de Mantícoras
    .target Innkeeper Gryshka
step << Orc/Troll
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o Mestre de Mantícoras
    .accept 6386 >>Aceite Devolver à Encruzilhada
    .target Doras
step << Orc/Troll
    .goto Orgrimmar,34.37,36.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vol'Jin|r
    .turnin 831 >>Entregue As Ordens do Almirante
    .target Vol'Jin
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Master Pyreanor|r
    .trainer >>Treine suas magias de classe
    .target Master Pyreanor
step
    #label FindingAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'ghan|r no Antro das Sombras
    .accept 813 >>Aceite Em busca do antídoto
    .target Kor'ghan
step
    #completewith FizzleKill
    >>|cRXP_WARN_Abandone Busca da cura. Isso removerá o limite de tempo da missão, mas você ainda poderá realizá-la|r
    .abandon 812 >>Abandone Busca da cura
step
    #softcore
    #completewith FizzleKill
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>Entre em Cavernas Ígneas
    .zoneskip Durotar
step
    #softcore
    #completewith FizzleKill
    .goto Durotar,47.05,17.58
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith FizzleKill
    .goto Durotar,45.54,12.14
    .zone Durotar >>Saia de Orgrimmar
step
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Pule para dentro do Desfiladeiro do Trovão
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Dismiss your|r |T136218:0|t[Imp] |cRXP_WARN_ou|r |T136221:0|t[Voidwalker] |cRXP_WARN_by right clicking its unit frame and clicking dismiss|r << Warlock
    .cast 2641 >>|cRXP_WARN_Use|r |T136095:0|t[Dispensar Ajudante] |cRXP_WARN_e depois pule para Trovão Serra|r << Hunter
step
    #label FizzleKill
    .goto Durotar,42.13,26.67
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tenha cuidado. Mate o|r |cRXP_ENEMY_Fanático da Lâmina Ardente|r |cRXP_WARN_em patrulha antes de puxá-lo|r
    >>|cRXP_WARN_Abate o diabrete primeiro. Usar|r |T132155:0|t[Esfaquear] |cRXP_WARN_quando ele conjura|r |T136169:0|t[Sifão da Alma] << Rogue
    >>|cRXP_WARN_Abate o diabrete primeiro. Usar|r |T136026:0|t[Choque Terreno] |cRXP_WARN_quando ele conjura|r |T136169:0|t[Sifão da Alma] << Shaman
    >>|cRXP_WARN_Você pode lançar|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Bulho Tempesnigra|r |cRXP_WARN_e matar o|r |cRXP_ENEMY_Diabrete|r |cRXP_WARN_primeiro|r << Mage
    >>|cRXP_WARN_Mate o diabrete primeiro|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << !Warlock
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura], |T133728:0|t[Pedra de Vida Menor] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
step << Warrior
    #completewith next
    .goto Durotar,39.2,32.3,30 >>Saia do Cume do Trovão
step << Warrior
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Mate |cRXP_ENEMY_Pelegos de Relâmpago|r. Pegue suas |cRXP_ENEMY_Escamas|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
    .train 355,1
step << !Warrior
    .goto Durotar,39.2,32.3,30 >>Saia do Cume do Trovão
    .isQuestComplete 806
step << !Troll Shaman !Orc Shaman
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>|cRXP_WARN_Viaje para o sul ao longo do rio em direção ao Posto de Vigia Distante|r
    >>Mate |cRXP_ENEMY_Crocolisco Bocarrão|r no caminho. Saqueie-os para pegar |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Pule esta missão por enquanto se ela não dropar|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Troll Shaman/Orc Shaman
    #completewith next
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30,50,0
    >>|cRXP_WARN_Viaje para o sul ao longo do rio|r
    >>Mate |cRXP_ENEMY_Crocolisco Bocarrão|r no caminho. Saqueie-os para pegar |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Pule esta missão por enquanto se ela não dropar|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Troll Shaman/Orc Shaman
    .goto Durotar,35.53,56.89,100 >>Chegue ao ponto sul do rio
    .isOnQuest 1524
step << Troll Shaman/Orc Shaman
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
    .goto Durotar,39.16,58.56,10 >>Siga pelo caminho que sobe a montanha em direção a |cRXP_FRIENDLY_Telf Joolam|r
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Troll Shaman/Orc Shaman
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entregue Call of Fogo - Missão - Missão
    .accept 1525 >>Aceite Call of Fogo - Missão - Missão
    .target Telf Joolam
step
    #softcore
    #completewith next
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r, ou corra para Razor Hill
step
    #hardcore
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
    .subzoneskip 362
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Entregue Tempestades Sombrias
    .accept 828 >>Aceite Margoz
    .target Orgnil Soulscar
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 547 >>Treine suas magias de classe
    .target Swart
    .xp <12,1
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 7384 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <12,1
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >>Vá até |cRXP_FRIENDLY_Margoz|r
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entregue Margoz
    .accept 827 >>Aceite A Rocha da Caveira
    .target Margoz
step
    #completewith next
    >>Mate |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #label EnterGazzuzCave
    #completewith Gazzuz
    .goto Durotar,55.09,9.91,20 >>Entre na caverna
step
    #requires EnterGazzuzCave
    #completewith Gazzuz
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>Mate |cRXP_ENEMY_Orcs da Lâmina Ardente|r. Saqueie-os para pegar os |cRXP_LOOT_Colares|r e uma |cRXP_LOOT_Insígnia do Tenente|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    #requires EnterGazzuzCave
    #softcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Mate o |cRXP_ENEMY_Gazz'uz|r. Saqueie-o para pegar |T134085:0|t[|cRXP_LOOT_Olho da Sombra Ardente|r]
    >>|cRXP_WARN_Use o |T134085:0|t[|cRXP_LOOT_Olho da Sombra Ardente|r] para iniciar a missão|r
    >>|cRXP_WARN_Você pode correr até as poças de água dentro da caverna para despistar o|r |cRXP_ENEMY_Emissário do Caos|r |cRXP_WARN_depois de matar|r |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Tenha cuidado, é difícil. Você pode pular esta missão se precisar|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Aceite Sombras incandescentes
    .use 4903
	.unitscan Gazz'uz
step
    #requires EnterGazzuzCave
    #hardcore
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Mate o |cRXP_ENEMY_Gazz'uz|r. Saqueie-o para pegar |T134085:0|t[|cRXP_LOOT_Olho da Sombra Ardente|r]
    >>|cRXP_WARN_Use o |T134085:0|t[|cRXP_LOOT_Olho da Sombra Ardente|r] para iniciar a missão|r
    >>|cRXP_WARN_Você pode correr até as poças de água dentro da caverna para despistar o|r |cRXP_ENEMY_Emissário do Caos|r |cRXP_WARN_depois de matar|r |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Esta missão é MUITO difícil para solo. Pule-a se não conseguir encontrar um grupo|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Aceite Sombras incandescentes
    .use 4903
	.unitscan Gazz'uz
    .group 2
step
    #requires EnterGazzuzCave
    #loop
    .goto Durotar,53.77,8.87,0
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    >>Mate |cRXP_ENEMY_Orcs da Lâmina Ardente|r. Saqueie-os para pegar os |cRXP_LOOT_Colares|r e uma |cRXP_LOOT_Insígnia do Tenente|r
    >>|cRXP_WARN_Esqueça a|r |cRXP_LOOT_Insígnia do Tenente|r |cRXP_WARN_se não tiver sorte para obtê-la|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    #completewith next
    >>Mate |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Entregue A Rocha da Caveira
    .accept 829 >>Aceite Neeru Cortafogo
    .target Margoz
step << Shaman
    #completewith next
    .subzone 371 >>Vá para a Caverna Sopravento
step << Shaman
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Mate |cRXP_ENEMY_Sectários da Lâmina Ardente|r. Saqueie-os para pegar um |cRXP_LOOT_Bornal de Reagentes|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << !Shaman
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Atravesse a caverna
step << Shaman
    #completewith next
    .goto Durotar,53.94,27.85,30 >>Salte para o fundo de Drygulch Ravine
step
    #loop
    .goto Durotar,54.02,27.23,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Mate |cRXP_ENEMY_Selvagem Sopravento|r e |cRXP_ENEMY_Bruxa da Tempestade Sopravento|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 813 --don't want ress sickness if more Scorpids need to get killed before entering ORG
step
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >>Atravesse a caverna em direção a |cRXP_FRIENDLY_Rezlak|r
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entregue Faça o Que Eu Digo...
    .target Rezlak
step
    #loop
    .goto Durotar,42.09,20.91,0
    .goto Durotar,42.09,20.91,50,0
    .goto Durotar,39.38,18.69,50,0
    .goto Durotar,41.22,16.82,50,0
    .goto Durotar,44.14,17.17,50,0
    .goto Durotar,36.75,25.47,50,0
    >>Mate |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
    .isOnQuest 813
step
    #completewith NeeruFireblade
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Escondido Enemies
    .target Thrall
    .isQuestComplete 5726
step
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Entregue Em busca do antídoto
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entregue Neeru Cortafogo
    .turnin 832 >>Entregue Sombras incandescentes
    .accept 809 >>Aceite Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 832
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entregue Neeru Cortafogo
    .accept 809 >>Aceite Ak'Zeloth
    .target Neeru Fireblade
step
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >>Saia de Orgrimmar
step
    #softcore
    #completewith next
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>Entre em Cavernas Ígneas
    .zoneskip Durotar
step
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Aceite Busca da cura
    .turnin 812 >>Entregue Necessidade de uma Cura
    .target Rhinag
step
    #label AmuletFound
    #completewith FarWatchP
    .goto Durotar,34.71,42.30,0
    .goto Durotar,34.44,44.53,50,01
    >>Mate os |cRXP_ENEMY_Dreadmaw Crocolisks|r no caminho para o Posto de Vigia Distante. Saqueie-os para obter |cRXP_LOOT_Kron's Amulet|r
    >>|cRXP_WARN_Pule esta missão se ela não dropar|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
    .isOnQuest 816
step
    #requires AmuletFound
    #completewith FarWatchP
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Entregue Em memória
    .target Misha Tor'kren
step
    #label FarWatchP
    .goto The Barrens,62.26,19.38
    .subzone 379 >>Voe para Posto de Farol
    .zoneskip The Barrens
step
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entregue Ak'Zeloth
    .accept 924 >>Aceite A Semente Demoníaca
    .target Ak'Zeloth
step
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Saqueie a|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_ao lado de|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. Este item tem um temporizador de 30 minutos, portanto certifique-se de ser rápido|r
    .turnin 926 >>Entregue Pedra do Poder Defeituosa
    .isOnQuest 924
step << Warrior
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entregue Caminho da Defesa
    .accept 1502 >>Aceite Thun'grim Olhafogo
    .target Uzzek
    .train 355,1
step
    #optional
    .abandon 816 >>Abandone Em Memória
step
    #optional
    .abandon 5726 >>Abandone Escondido Enemies
]])
