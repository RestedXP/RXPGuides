if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 1-6 Orc/Trolls
#version 1
#group Guia de Sobrevivência RestedXP (H)
#subgroup RXP Guia de Sobrevivência 1-20
#defaultfor Troll/Orc
#next 6-13 Orc/Trolls

step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado a Orcs e Trolls. Você deve escolher a mesma zona inicial em que você começa|r
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
    .accept 1485 >>Aceite Familiares Torpes
    .target Ruzan
step << Warrior/Shaman
    .goto Durotar,42.59,67.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Lixo de Comerciante
    .target Duokna
    .money >0.01
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Entregue O seu lugar no mundo
    .accept 788 >>Aceite Dentes cortantes
    .target Gornek
step << Warrior/Shaman
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.4 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha] << Warrior
    .train 8017 >>Treine |T136086:0|t[Arma Trinca-pedra] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warlock
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Vá até |cRXP_FRIENDLY_Hraug|r
step << Warlock
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Lixo de Comerciante
    .target Hraug
step << Warlock
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Nartok
step << !Warrior !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Hunter
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
    .goto Durotar,43.57,67.28,25,0
    >>Mate os |cRXP_ENEMY_Mottled Boars|r a caminho do Convento da Lâmina Ardente
    >>|cRXP_WARN_Tente atingir o nível 2 antes de chegar lá|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << Warlock
    .goto Durotar,45.30,56.42,100 >>Vá para o Covil da Lâmina Ardente
    .isOnQuest 1485
step << Warlock
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Mate os |cRXP_ENEMY_Familiares Torpes|r. Saqueie-os para |cRXP_LOOT_Vile Familiar Cabeças|r
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
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    >>Mate |cRXP_ENEMY_Mosquetuscos|r
    .complete 788,1 --Mottled Boar (10)
    .mob Mottled Boar
step << !Warlock !Rogue !Mage
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    .xp 3+1120 >>Triturar até 1120+/1400 XP
    .mob Mottled Boar
step << Warlock
    #loop
	.goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    .xp 3+760 >>Triturar até 760+/1400 XP
    .mob Mottled Boar
step << Warlock
    #completewith Ruzan2
	>>|cRXP_WARN_Farme os |cRXP_ENEMY_Mottled Boars|r. Saqueie-os até ter 1 prata em itens de vendedor|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #completewith Ruzan2
	>>|cRXP_WARN_Triturar os |cRXP_ENEMY_Mottled Boars|r. Saque-os até ter 2 prata em valor de itens de vendedor|r << Warrior
	>>|cRXP_WARN_Triturar os |cRXP_ENEMY_Mottled Boars|r. Saque-os até ter 1 prata 75 cobre em valor de itens de vendedor|r << Warlock
	>>|cRXP_WARN_Triturar os |cRXP_ENEMY_Mottled Boars|r. Saque-os até ter 1 prata 10 cobre em valor de itens de vendedor|r << Hunter
	>>|cRXP_WARN_Farme os |cRXP_ENEMY_Mottled Boars|r. Saqueie-os até ter 1 prata em itens de vendedor|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Lixo de Comerciante
    .target Duokna
step << Warlock
    #label Ruzan2
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruzan|r
    .turnin 1485 >>Entregue Familiares Torpes
    .accept 1499 >>Aceite Familiares Torpes
    .target Ruzan
step << Warlock
    #completewith Gornek2
    .cast 688 >>|cRXP_WARN_Lançe|r |T136218:0|t[Evocar Diabrete]
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
    .accept 3065 >>Aceite Tabuleta Simples - Missão << Troll Warrior
    .accept 3082 >>Aceite Tabuleta cinzelada << Troll Hunter
    .accept 3083 >>Aceite Tabuleta cifrada << Troll Rogue
    .accept 3084 >>Aceite Tabuleta Inscrita em Runas - Missão << Troll Shaman
    .accept 3085 >>Aceite Tabuleta Sagrada << Troll Priest
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
    .goto Durotar,41.27,68.00,12 >>Vá para |cRXP_FRIENDLY_Rwag|r
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
    .vendor >>Lixo de Comerciante
    .target Hraug
    .money >0.01
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entregue Pergaminho Maculado
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Nartok
step
    #label Galgar
    .goto Durotar,42.73,67.23,0,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Galgar|r
    .accept 4402 >>Aceite A surpresa de sabra do Galgar
    .target Galgar
step << !Rogue
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Warrior !Hunter
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>Lixo de Comerciante
    .target Duokna
    .money >0.1 << Warrior
    .itemcount 159,<15 << !Warrior !Hunter
step << Shaman
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Entregue Tabuleta Inscrita em Runas - Missão << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Aceite Call of Terra - Missão
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
    .xp <4,1
step << Shaman
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entregue Tabuleta Inscrita em Runas - Missão << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .target Shikrik
step << Mage
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entregue Tabuleta glífica << Troll
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .accept 792 >>Aceite Familiares Torpes
    .target Zureetha Fargaze
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tábua Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .train 1978 >>Treine |T132204:0|t[Picada de Serpente]
    .target Jen'shan
    .xp <4,1
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tábua Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.02
    .xp <4,1
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Frang
    .xp <4,1
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .target Frang
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Thazz'ril|r
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
    >>Usar o |T133486:0|t[Foreman's Cassetete] nos |cRXP_FRIENDLY_Peões preguiçosos|r adormecidos
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
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    >>Mate os |cRXP_ENEMY_Familiares Torpes|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step
    #label Tails
    #loop
    .goto Durotar,43.26,58.28,0
    .goto Durotar,43.26,58.28,40,0
    .goto Durotar,42.81,58.41,40,0
    .goto Durotar,41.90,58.35,40,0
    .goto Durotar,41.97,59.20,40,0
    .goto Durotar,41.36,60.35,40,0
    .goto Durotar,40.66,61.27,40,0
    .goto Durotar,40.07,61.35,40,0
    .goto Durotar,39.42,61.29,40,0
    .goto Durotar,39.46,62.17,40,0
    .goto Durotar,39.55,63.10,40,0
    .goto Durotar,40.13,64.04,40,0
    .goto Durotar,40.84,64.06,40,0
    .goto Durotar,40.74,65.86,40,0
    .goto Durotar,39.93,66.03,40,0
    .goto Durotar,40.04,66.99,40,0
    .goto Durotar,40.09,67.66,40,0
    .goto Durotar,40.13,68.50,40,0
    .goto Durotar,40.72,68.55,40,0
    .goto Durotar,41.30,67.84,40,0
    .goto Durotar,41.37,66.72,40,0
    .goto Durotar,41.89,66.05,40,0
    .goto Durotar,41.27,65.71,40,0
    .goto Durotar,41.36,64.07,40,0
    .goto Durotar,41.33,63.12,40,0
    .goto Durotar,41.35,61.98,40,0
    .goto Durotar,41.49,61.25,40,0
    .goto Durotar,41.90,60.24,40,0
    .goto Durotar,42.51,59.34,40,0
    .goto Durotar,43.08,59.62,40,0
    .goto Durotar,43.91,59.33,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.85,60.34,40,0
    .goto Durotar,46.46,61.11,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.14,64.08,40,0
    .goto Durotar,47.58,64.04,40,0
    .goto Durotar,47.08,63.15,40,0
    .goto Durotar,47.09,62.24,40,0
    .goto Durotar,46.90,61.15,40,0
    .goto Durotar,46.98,60.18,40,0
    .goto Durotar,47.07,59.34,40,0
    .goto Durotar,46.47,58.28,40,0
    .goto Durotar,45.81,59.30,40,0
    .goto Durotar,45.15,59.46,40,0
    .goto Durotar,43.91,59.33,40,0
    >>Mate |cRXP_ENEMY_Escorpídeos Operários|r. Saqueie-os para pegar as |cRXP_LOOT_Caudas de Escorpídeo Operário|r
    .complete 789,1 --Scorpid Worker Tail (10)
    .mob Scorpid Worker
step
    #loop
	.goto Durotar,44.98,69.13,0
	.goto Durotar,44.98,69.13,25,0
	.goto Durotar,45.64,65.70,25,0
	.goto Durotar,47.37,65.67,25,0
	.goto Durotar,46.74,60.66,25,0
	.goto Durotar,47.09,57.90,25,0
	.goto Durotar,43.90,57.79,25,0
	.goto Durotar,42.70,57.25,25,0
	.goto Durotar,41.27,58.95,25,0
	.goto Durotar,40.91,60.41,25,0
	.goto Durotar,38.83,61.84,25,0
    >>Usar o |T133486:0|t[Foreman's Cassetete] nos |cRXP_FRIENDLY_Peões preguiçosos|r adormecidos
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #loop
    .goto Durotar,41.30,65.03,0
    .goto Durotar,41.30,65.03,40,0
    .goto Durotar,41.92,64.74,40,0
    .goto Durotar,42.66,64.92,40,0
    .goto Durotar,43.31,65.02,40,0
    .goto Durotar,43.90,65.96,40,0
    .goto Durotar,44.54,65.96,40,0
    .goto Durotar,45.16,65.77,40,0
    .goto Durotar,45.72,65.93,40,0
    .goto Durotar,45.72,65.04,40,0
    .goto Durotar,45.21,63.95,40,0
    .goto Durotar,45.83,63.01,40,0
    .goto Durotar,45.81,62.17,40,0
    .goto Durotar,45.78,61.14,40,0
    .goto Durotar,45.15,60.20,40,0
    .goto Durotar,44.50,59.45,40,0
    .goto Durotar,43.86,60.43,40,0
    .goto Durotar,43.07,60.24,40,0
    .goto Durotar,42.58,60.09,40,0
    .goto Durotar,42.02,61.19,40,0
    .goto Durotar,42.02,62.15,40,0
    .goto Durotar,42.00,62.92,40,0
    .goto Durotar,41.99,64.03,40,0
    .xp 4 >>Farme até o nível 4
    .mob Mottled Boar
    .mob Scorpid Worker
    .mob Vile Familiar
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entregue A surpresa de sabra do Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Rogue !Warrior !Hunter
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,5,6394,1 << !Rogue !Warrior !Hunter --Refreshing Spring Water (5)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>Lixo de Comerciante
    .target Duokna
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter
    .itemcount 2512,<600 << Hunter
step
    #label Sting
    .goto Durotar,42.29,68.39,12,0
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gornek|r
    .turnin 789,2 >>Entregue A ferroada do escorpídeo << Shaman
    .turnin 789 >>Entregue A ferroada do escorpídeo << !Shaman
    .target Gornek
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Aceite Call of Terra - Missão
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 116,1 >>Treine |T135846:0|t[Seta de Gelo]
    .target Mai'ah
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Treine suas magias de classe
    .money <0.021
    .target Ken'jai
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
    .train 589,1 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
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
    .train 1978,1 >>Treine |T132204:0|t[Picada de Serpente]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 100 >>Treine |T132337:0|t[Carga]
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .target Frang
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 100 >>Treine |T132337:0|t[Carga]
    .target Frang
    .money <0.01
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 5441 >>Entregue Peões preguiçosos
    .accept 6394 >>Aceite A picareta de Thazz'ril
    .target Foreman Thazz'ril
step
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
    #loop
    .goto Durotar,43.87,58.42,0
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    .xp 4+1720 >>Mate inimigos até atingir 1720+/2100 de xp
    .mob Vile Familiar
    .isOnQuest 4402
step << !Warrior !Rogue !Shaman
    #loop
    .goto Durotar,43.87,58.42,40,0
    .goto Durotar,44.53,58.62,40,0
    .goto Durotar,45.18,58.42,40,0
    .goto Durotar,45.83,58.59,40,0
    .goto Durotar,45.79,57.43,40,0
    .goto Durotar,46.46,57.57,40,0
    .goto Durotar,47.19,57.12,40,0
    .goto Durotar,46.21,56.69,40,0
    .goto Durotar,46.28,56.11,40,0
    .goto Durotar,45.65,56.90,40,0
    .goto Durotar,45.35,56.32,40,0
    .goto Durotar,44.77,56.87,40,0
    .goto Durotar,44.58,56.10,40,0
    .goto Durotar,44.27,56.59,40,0
    .goto Durotar,43.85,55.52,40,0
    .xp 5 >>Farme até o nível 5
    .mob Vile Familiar
    .isQuestTurnedIn 4402
step
	#completewith Thazz
    #label Cave
    .goto Durotar,45.35,56.27,30 >>Entre na caverna
    .isOnQuest 6394
step << Shaman
    #completewith Yarrog
    #requires Cave
    >>Mate os |cRXP_ENEMY_Espreitadores Vis|r. Saqueie-os para obter |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #label Thazz
    .goto Durotar,43.72,53.79
    >>Saqueie |cRXP_PICK_Thazz'ril's Picaretada|r contra a parede
    .complete 6394,1 --Thazz'ril's Pick (1)
step
	#completewith next
    .goto Durotar,44.43,54.51,15,0
    .goto Durotar,44.77,53.3,15,0
    .goto Durotar,43.88,52.71,15,0
    .goto Durotar,43.39,52.07,15,0
    .goto Durotar,42.90,52.34,15,0
    .goto Durotar,42.70,52.99,35 >>Vá para |cRXP_ENEMY_Yarrog Ruinassombra|r
step
    #label Yarrog
    .goto Durotar,42.70,52.99
    >>Mate |cRXP_ENEMY_Yarrog Ruinassombra|r. Saqueie dele o |cRXP_LOOT_Medalhão da Lâmina Ardente|r
    .complete 794,1 --Burning Blade Medallion (1)
	.mob Yarrog Baneshadow
step << Shaman
    #loop
	.goto Durotar,42.70,52.99,0
	.goto Durotar,42.70,52.99,25,0
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
    >>Mate os |cRXP_ENEMY_Espreitadores Vis|r. Saqueie-os para obter |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #loop
	.goto Durotar,42.70,52.99,25,0
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
    .xp 6 >>Suba até o nível 6 << !Shaman
    .xp 5+1810 >>Farme até 1810+/2800xp << Shaman
    .isQuestTurnedIn 4402
step
    #optional
    #loop
	.goto Durotar,42.70,52.99,25,0
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
    .xp 6 >>Suba até o nível 6 << !Shaman
    .xp 5+1430 >>Farme até 1430+/2800xp << Shaman
    .isQuestComplete 4402
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Faça um Logout Pular posicionando seu personagem na borda da rocha até parecer que está flutuando, depois deslogue e entre novamente|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >> |cRXP_WARN_CLICK HERE for an example|r
step << skip
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_Você pode falar com ele pelo lado de fora ou de cima do bunker|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gar'thok|r
    .accept 784 >>Aceite Aniquile os invasores
    .target Gar'thok
step << skip --Hunter
    #completewith next
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimtak|r
    .vendor >>Lixo de Comerciante
    .target Grimtak
step << skip
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Viaje para a torre
step << skip
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Viaje para cima da torre em direção a Furl
step << skip
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Aceite Carregar Seu Peso
    .target Furl Scornbrow
step << skip --Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Treine |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isso vai permitir que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos para criar|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << skip --Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << skip --Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith next
    .hs >>Use a Pedra do Lar para voltar ao Vale dos Testes
    .use 6948
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 794 >>Entregue Medalhão da Lâmina Ardente
    .accept 805 >>Aceite Apresente-se à Vila Sen'jin
    .target Zureetha Fargaze
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entregue A surpresa de sabra do Galgar
    .target Galgar
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Lixo de Comerciante
    .target Duokna
    .money >0.03
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >>Aceite Em favor da espiritualidade << Troll Priest
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Entregue Call of Terra - Missão
    .accept 1517 >>Aceite Call of Terra - Missão
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Canaga|r
    .turnin 1516 >>Entregue Call of Terra - Missão
    .accept 1517 >>Aceite Call of Terra - Missão
    .target Canaga Earthcaller
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Treine |T132212:0|t[Marca do Caçador]
    .train 3044 >>Treine |T132218:0|t[Tiro Arcano]
    .target Jen'shan
    .money <0.02
step << Hunter
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 3044 >>Treine |T132218:0|t[Tiro Arcano]
    .target Jen'shan
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Treine |T132269:0|t[Aparar]
    .train 6343 >>Treine |T136105:0|t[Trovoada]
    .target Frang
    .money <0.02
step << Warrior
    .goto Durotar,42.89,69.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 3127 >>Treine |T132269:0|t[Aparar]
    .target Frang
step << Rogue
    #completewith Rwag2
    .goto Durotar,42.13,68.41,15,0
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Vá para |cRXP_FRIENDLY_Rwag|r
step << Rogue
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .train 1776 >>Treine |T132155:0|t[Esfaquear].
    .target Rwag
    .money <0.02
step << Rogue
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
    .goto Durotar,40.56,68.44,12 >>Vá até |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #label Hraug3
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Pacto de Sangue] |cRXP_BUY_dele|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Lixo de Comerciante
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Nartok
    .money <0.02
step << Warlock
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Aprenda |T136197:0|t[Seta Sombria]
    .target Nartok
step << Shaman
    #completewith CallOE1
    #label Shrine
    .goto Durotar,43.36,69.60,25,0
    .goto Durotar,43.18,70.93,25,0
    .goto Durotar,41.31,73.63,12,0
    .goto Durotar,40.82,74.37,8,0
    .goto Durotar,42.71,75.18,10,0
    .goto Durotar,43.57,75.51,15,0
    .goto Durotar,44.13,76.36,25 >>Vá para o |cRXP_PICK_Altar do Xamã|r
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
    .turnin 1517 >>Entregue Call of Terra - Missão
    .accept 1518 >>Aceite Call of Terra - Missão
    .target Minor Manifestation of Earth
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Canaga|r
    .goto Durotar,42.40,69.17
    .turnin 1518 >>Entregue Call of Terra - Missão
    .target Canaga Earthcaller
step << Shaman
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target Shikrik
step
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Entregue A Picareta de Thazz'ril
    .target Foreman Thazz'ril
step
    #label Leave
    #completewith next
    .goto Durotar,47.09,69.21,25,0
    .goto Durotar,49.02,69.13,20,0
    .goto Durotar,49.90,68.43,25 >>Saia do Vale das Provações
    .isOnQuest 805
step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Aceite O Fardo do Peão
    .target Ukor
    ]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 6-13 Orc/Trolls
#version 1
#group Guia de Sobrevivência RestedXP (H)
#subgroup RXP Guia de Sobrevivência 1-20
#defaultfor Troll/Orc
#next 13-15 Floresta de Pinhaprata

step
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lar|r. Ele patrulha um pouco.
    .accept 786 >>Aceite Contendo a Agressão Kolkar
    .target Lar Prowltusk
step
    #label SenjinPickups
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vel'rin|r, |cRXP_FRIENDLY_Vornal|r e |cRXP_FRIENDLY_Gadrin|r
    .accept 817 >>Aceite Presa prática
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
    .accept 818 >>Aceite Um Espírito Solvente
    .target +Master Vornal
    .goto Durotar,55.94,74.40
    .turnin 805 >>Entregue Relatório para a Vila Sen'jin
    .accept 808 >>Aceite O Crânio de Minshina
    .accept 826 >>Aceite Zalazane
    .accept 823 >>Aceite Relatório para Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>Entre na grande cabana
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compre |r |T135421:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
    .collect 3131,200,786,1 --Weighted Throwing Axe (200)
    .target K'waii
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (20)
    .collect 159,20,786,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (10)
    .collect 159,10,786,1
    .target K'waii
    .money >0.001
    .money <0.005
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Volte depois se ainda não tiver o suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,786,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T132401:0|t[Machado Largo] (4s 84c). Você voltará depois se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,786,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para uma |T135421:0|t[Machadinha] (5s 40c). Você voltará depois se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dela|r
    .collect 2490,1,786,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante lixo. Venda sua arma se isso der dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2s 83c). Você voltará depois se ainda não tiver o bastante
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe a|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
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
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Corra pela praia. Mate os |cRXP_ENEMY_Crawlers|r e os |cRXP_ENEMY_Makruras|r. Saqueie-os para obter o |cRXP_LOOT_Mucus|r e os |cRXP_LOOT_Olhos|r. Você não precisa terminar este passo aqui.
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,52.20,83.00,75 >>Chegue ao final da praia
    .isOnQuest 818
step
    .goto Durotar,50.9,79.2,40 >>Entre na base dos Kolkar
    .isOnQuest 786
step << Priest/Warlock
    #sticky
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Comece a juntar 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_enquanto faz missões em Durotar. Elas serão usadas para fabricar sua varinha mais adiante|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #completewith Bonfire
    +|cRXP_WARN_Tome cuidado se|r |cRXP_ENEMY_Senhor da Guerra Kolkanis|r |cRXP_WARN_estiver por perto, ele é um inimigo raro de nível 9. Talvez você precise usar uma |r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma|r
    .unitscan Warlord Kolkanis
step
    >>Queime o |cRXP_PICK_Plano de Ataque|r dentro da tenda, no chão
    .goto Durotar,49.8,81.2
    .complete 786,1 --Attack Plan: Valley of Trials destroyed (1)
step
    >>Queime o |cRXP_PICK_Plano de Ataque|r que está no chão
    .goto Durotar,47.7,77.4
    .complete 786,2 --Attack Plan: Sen'jin Village destroyed (1)
step
    #label Bonfire
    >>Queime o |cRXP_PICK_Plano de Ataque|r que está no chão
    .goto Durotar,46.3,79.0
    .complete 786,3 --Attack Plan: Orgrimmar destroyed (1)
step
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Saia da base dos Kolkar
    .isQuestComplete 786
step
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lar|r. Ele patrulha um pouco.
    .turnin 786,1 >>Entregue Frustrando o ataque dos Kolkar << Shaman
    .turnin 786 >>Entregue Frustrando o ataque dos Kolkar << !Shaman
    .target Lar Prowltusk
step
    #optional
    .goto Durotar,55.95,74.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Vornal|r
    .turnin 818 >>Entregue Um espírito solvente
    .target Master Vornal
    .isQuestComplete 818
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step << Warrior/Rogue/Shaman
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r
    .vendor >>Lixo de Vendedor
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Volte depois se ainda não tiver o suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,823,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,823,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T132401:0|t[Machado Largo] (4s 84c). Você voltará depois se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T132401:0|t[Machado Largo] |cRXP_BUY_dele|r
    .collect 2491,1,823,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para uma |T135421:0|t[Machadinha] (5s 40c). Você voltará depois se não tiver o suficiente ainda.
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dela|r
    .collect 2490,1,823,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Comerciante lixo. Venda sua arma se isso der dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2s 83c). Você voltará depois se ainda não tiver o bastante
    .target Trayexir
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe a|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step
    #completewith next
    .subzone 362 >>Vá para Razor Hill
step
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|cRXP_WARN_Você pode falar com ele pelo lado de fora ou de cima do bunker|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gar'thok|r
    .accept 784 >>Aceite Aniquile os invasores
    .target Gar'thok
step << Hunter
    #completewith next
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimtak|r
    .vendor >>Lixo de Comerciante
    .target Grimtak
step
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Viaje para a torre
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Viaje para cima da torre em direção a Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Aceite Carregar Seu Peso
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Krunn|r
    >>|cRXP_WARN_Isso vai permitir que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos para criar|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios] |cRXP_WARN_e minere todo Veio de Cobre que encontrar para pegar|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r|cRXP_WARN_. Faça|r |T135248:0|t[Pedra de Afiar] |cRXP_WARN_com elas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #label TravelToTiragarde
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>Vá para Bastilha Tiragarde
    >>|cRXP_WARN_Triture inimigos no caminho|r
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Tenha cuidado se|r |cRXP_ENEMY_Sargento Carlos|r |cRXP_WARN_está ativo, pois é um raro nível 9. Você pode precisar usar uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se você tiver uma|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>Siga em direção ao segundo andar da fortaleza
step
    #completewith AgedEnvelope
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r
    .complete 784,1 --Kul Tiras Sailor (10)
    .mob +Kul Tiras Sailor
    .complete 784,2 --Kul Tiras Marine (8)
    .mob +Kul Tiras Marine
    .complete 791,1 --Canvas Scraps (8)
    .mob +Kul Tiras Marine
    .mob +Kul Tiras Sailor
step
    #label Benedict
    .goto Durotar,59.75,58.27
    >>Mate o |cRXP_ENEMY_Tenente Bento|r. Saqueie-o para pegar a |cRXP_LOOT_Chave|r
    .complete 784,3 --Lieutenant Benedict (1)
    .collect 4882,1 --Collect Benedict's Key (1)
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
step << !Priest !Mage
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2200 >>Mate inimigos até atingir 2200+/4500 de xp
step << Priest
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1750 >>Farme até 1750+/4500 XP
step
    #completewith next
    .subzone 362 >>Vá para Razor Hill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r e |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .accept 806 >>Aceite Tempestades Sombrias
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Entregue Subjuguem os Traidores
    .turnin 830 >>Entregue As Ordens do Almirante
    .accept 825 >>Aceite Dos destroços...
    .accept 831 >>Aceite As Ordens do Almirante
    .accept 837 >>Aceite Invasão
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
    .accept 815 >>Aceite Quebrar alguns ovos
    .target +Cook Torka
    .goto Durotar,51.09,42.49
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r e |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Entregue Subjuguem os Traidores
    .turnin 830 >>Entregue As Ordens do Almirante
    .accept 825 >>Aceite Dos destroços...
    .accept 831 >>Aceite As Ordens do Almirante
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
    .goto Durotar,49.67,40.42,10 >>Viaje para a torre
step
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Viaje para cima da torre em direção a Furl
step
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Furl|r
    .turnin 791 >>Entregue Carregue Seu Peso
    .target Furl Scornbrow
step << Warrior/Rogue
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Treine |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isso vai permitir que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos para criar|r |T135248:0|t[Sharpening Stones] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_de|r |cRXP_FRIENDLY_Wuark|r
    .collect 2901,1,9144,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Lixo de vendedor. Venda sua arma se ela render dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Volte depois se ainda não tiver o suficiente
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,818,1 --Collect Walking Stick (1)
    .money <0.0504
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T135641:0|t[Estilete] (4s 01c). Você voltará depois se não tiver o suficiente ainda.
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre|r |T135641:0|t[Estilete] |cRXP_BUY_dele|r
    .collect 2494,1,818,1 --Collect Stiletto (1)
    .money <0.0401
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para um |T132401:0|t[Machado Largo] (4s 84c). Você voltará depois se não tiver o suficiente ainda.
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Orc Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre|r |T132401:0|t[Machado Grande] |cRXP_BUY_dele|r
    .collect 2491,1,818,1 --Collect Large Axe (1)
    .money <0.0484
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uhgar|r
    .vendor >>Comerciante. Venda sua arma se você receber dinheiro suficiente para uma |T135421:0|t[Machadinha] (5s 40c). Você voltará depois se não tiver o suficiente ainda.
    .target Uhgar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Troll Warrior
    .goto Durotar,52.02,40.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Uhgar|r|cRXP_BUY_. Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dele|r
    .collect 2490,1,818,1 --Collect Tomahawk (1)
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe a|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ghrawt|r
    .vendor >>Comerciante lixo. Venda sua arma se isso der dinheiro suficiente para um |T135499:0|t[Arco Recurvo de Pau-de-chifre] (2s 83c). Você voltará depois se ainda não tiver o bastante
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Compre|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_dele|r
    .collect 2506,1,818,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ghrawt. Compre|r |T132382:0|t[Flechas Ásperas] |cRXP_BUY_dele|r
    .collect 2512,1000,818,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<600 << Hunter
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    >>|cRXP_WARN_Guarde 4 de prata para seus feitiços de classe!|r << Rogue/Warrior/Shaman/Warlock
    >>|cRXP_WARN_Guarde 2 moedas de prata para seus feitiços de classe!|r << Priest
    .vendor >>Lixo de Comerciante
    .home >>Defina sua Pedra de Retorno em Razor Hill
    .turnin 2161 >>Entregue O Fardo do Peão
    .target Innkeeper Grosk
    .train 6760,1 << Rogue
    .train 139,1 << Priest
    .train 980,1 << Warlock
    .train 8044,1 << Shaman
    .train 284,1 << Warrior
    .bindlocation 362
step << !Mage !Hunter !Druid
    #optional
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .vendor >>Lixo de Comerciante
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
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8044 >>Treine suas magias de classe
    .target Swart
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e compre |T133738:0|t[Seta de Fogo Rank 2]
    .collect 16302,1,818,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Thotar|r
    .train 5116 >>Treine suas magias de classe
    .target Thotar
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 6760 >>Treine suas magias de classe
    .target Kaplak
step << Troll Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5649 >>Entregue Em Simpatia da Espiritualidade
    .accept 5648 >>Aceite Garments of Spirituality
    .train 2052 >>Aprenda |T135929:0|t[Cura Inferior Grau 2]
    .target Tai'jin
step << Troll Priest
    .goto Durotar,53.10,46.46
    >>Lance |T135929:0|t[Cura Inferior] e |T135987:0|t[Palavra de Poder: Fortitude] no |cRXP_FRIENDLY_Bruta Kor'ja|r
    .complete 5648,1 --Heal and fortify Grunt Kor'ja
    .target Grunt Kor'ja
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .turnin 5648 >>Entregue Garments of Spirituality << Troll Priest
    .trainer >>Treine suas magias de classe
    .target Tai'jin
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .money <0.01
    .target Rawrk
step
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jark|r
    >>|cRXP_BUY_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_de|r |cRXP_BUY_dele|r
    .collect 4496,1,818,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Crawlers|r e os |cRXP_ENEMY_Makruras|r. Saqueie-os para obter seu |cRXP_LOOT_Mucus|r e seus |cRXP_LOOT_Olhos|r. Isto não precisa ser terminado agora
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #label Tools
    #loop
    .goto Durotar,61.96,55.46,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34,20,0
    >>Saque as |cRXP_PICK_Gnomish Toolboxes|r dentro e ao redor dos barcos
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >>Nade para a Ilha
step
    #completewith MinshinasSkull
    >>Mate os |cRXP_ENEMY_Tigers|r. Saqueie-os para obter seu |cRXP_LOOT_Fur|r. Isto não precisa ser terminado agora
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Pygmy Surf Crawlers|r e os |cRXP_ENEMY_Surf Crawlers|r. Saqueie-os por seu |cRXP_LOOT_Mucus|r
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
    >>|cRXP_WARN_Geralmente guardado por um|r |cRXP_ENEMY_Açoitacauda Garrassangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Pygmy Surf Crawlers|r e os |cRXP_ENEMY_Surf Crawlers|r. Saqueie-os por seu |cRXP_LOOT_Mucus|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    .goto Durotar,66.94,84.41,150 >>Nade para a ilha principal
step
    #completewith ZalazaneKill
    >>Mate os |cRXP_ENEMY_Hexed Trolls|r e os |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Cuidado!|r |cRXP_ENEMY_Vodu Trolls|r |cRXP_WARN_podem conjurar|r |T136052:0|t[Onda Curativa]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Mate |cRXP_ENEMY_Zalazane|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Guarde seu|r |T136026:0|t[Choque Terreno] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Shaman
    >>|cRXP_WARN_Guarde seu|r |T132155:0|t[Esfaquear] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Rogue
    >>|cRXP_WARN_Cuidado. Ele pode conjurar|r |T136052:0|t[Onda Curativa]|cRXP_WARN_. Usar seu|r |T134829:0|t[Poção] |cRXP_WARN_se necessário|r << !Shaman !Rogue
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
    >>Mate |cRXP_ENEMY_Zalazane|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Guarde seu|r |T136026:0|t[Choque Terreno] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Shaman
    >>|cRXP_WARN_Guarde seu|r |T132155:0|t[Esfaquear] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Rogue
    >>|cRXP_WARN_Cuidado. Ele pode conjurar|r |T136052:0|t[Onda Curativa]|cRXP_WARN_. Usar seu|r |T134829:0|t[Poção] |cRXP_WARN_se necessário|r << !Shaman !Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Tigers|r. Saqueie-os para obter seu |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label Fur
    #loop
    .goto Durotar,67.23,88.76,0
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
    >>Mate os |cRXP_ENEMY_Hexed Trolls|r e os |cRXP_ENEMY_Voodoo Trolls|r.
    >>|cRXP_WARN_Cuidado!|r |cRXP_ENEMY_Vodu Trolls|r |cRXP_WARN_podem conjurar|r |T136052:0|t[Onda Curativa]
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Pygmy Surf Crawlers|r e os |cRXP_ENEMY_Surf Crawlers|r. Saqueie-os por seu |cRXP_LOOT_Mucus|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #loop
    .goto Durotar,59.79,83.44,0
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
    >>Mate os |cRXP_ENEMY_Tigers|r. Saqueie-os para obter seu |cRXP_LOOT_Fur|r
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
    >>Mate os |cRXP_ENEMY_Pygmy Surf Crawlers|r e os |cRXP_ENEMY_Surf Crawlers|r. Saqueie-os por seu |cRXP_LOOT_Mucus|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith Zalazaneturnin
    .goto Durotar,56.06,74.72,150 >>Vá para Sen'Jin Village
    .subzoneskip 367
step
    .goto Durotar,56.48,73.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trayexir|r
    .vendor >>Venda itens e repare. Você pode falar com ele de fora da cabana
    .target Trayexir
    .isQuestAvailable 837
step << Mage
    .goto Durotar,56.3,75.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Un'Thuwa|r
    .train 118 >>Treine suas magias de classe
    .target Un'Thuwa
step
    #label Zalazaneturnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gadrin|r, |cRXP_FRIENDLY_Vornal|r e |cRXP_FRIENDLY_Vel'rin|r
    .turnin 808 >>Entregue O Crânio de Minshina
    .turnin 826,2 >>Entregue Zalazane << Shaman
    .turnin 826 >>Entregue Zalazane << !Shaman
    .target +Master Gadrin
    .goto Durotar,55.95,74.73
    .turnin 818 >>Entregue Um espírito solvente
    .target +Master Vornal
    .goto Durotar,55.95,74.39
    .turnin 817 >>Entregue Presa Prática
    .target +Vel'rin Fang
    .goto Durotar,55.95,73.93
step
    #completewith Stolensupplies
    +|cRXP_WARN_Vincule seus|r |T133728:0|t[Faintly Glowing Crânio] |cRXP_WARN_e|r |T134712:0|t[Cola Grudenta à Beça]|cRXP_WARN_. Guarde-os para situações de emergência|r
step
    #loop
    .goto Durotar,49.22,48.96,0
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
    >>Mate os |cRXP_ENEMY_Razormane Quilboars|r e os |cRXP_ENEMY_Razormane Batedores|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step << Shaman/Hunter
    #loop
    .goto Durotar,44.45,39.74,0
    .goto Durotar,44.45,39.74,50,0
    .goto Durotar,44.49,37.47,50,0
    .goto Durotar,43.30,37.32,50,0
    .goto Durotar,41.70,37.09,50,0
    .goto Durotar,41.64,38.27,50,0
    .goto Durotar,41.94,40.46,50,0
    .goto Durotar,43.30,40.40,50,0
    >>Mate os |cRXP_ENEMY_Razormane Dustrunners|r e os |cRXP_ENEMY_Razormane Battleguards|r
    >>|cRXP_WARN_Tenha cuidado.|r Os |cRXP_ENEMY_Dustrunners|r |cRXP_WARN_lançam Rejuvenescer (Cura) e|r os |cRXP_ENEMY_Battleguards|r |cRXP_WARN_são resistentes|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Shaman/Hunter
    #loop
	.goto Durotar,47.52,48.67,0
	.goto Durotar,47.52,48.67,50,0
	.goto Durotar,46.12,45.47,50,0
	.goto Durotar,43.65,43.91,50,0
	.goto Durotar,41.68,44.69,50,0
	.goto Durotar,41.00,46.13,50,0
	.goto Durotar,42.47,48.50,50,0
	.goto Durotar,44.21,49.68,50,0
	.goto Durotar,47.17,49.44,50,0
    .xp 9+4470 >>Farme até 4470+/6500 XP
step
    #completewith next
    .goto Durotar,51.12,42.46,150 >>Corra para Razor Hill
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Torka|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entregue Quebre Alguns Ovos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Entregue Dos destroços...
    .turnin 837 >>Entregue Encroachment
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << !Shaman !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Torka|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entregue Quebre Alguns Ovos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Entregue Dos destroços...
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Thotar|r
    .accept 6062 >>Aceite Adestramento da Fera - Missão
    .trainer >>Treine suas magias de classe
    .target Thotar
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ghrawt|r
    .collect 2515,1200,837,1 << Hunter --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 << Hunter
step
    .goto Durotar,54.17,41.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rawrk|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Rawrk
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <10,1
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .accept 2983 >>Aceite Call of Fogo
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <10,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e compre |T133738:0|t[Seta de Fogo Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 674 >>Treine suas magias de classe
    .target Kaplak
    .xp <10,1
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >>Aceite Bagata da Fraqueza << Troll
    .accept 5660 >>Aceite Toque de Fraqueza << Undead
    .trainer >>Treine suas magias de classe
    .target Tai'jin
    .xp <10,1
step << Hunter
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
    .use 15917 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Mosquetusco Hediondo|r |cRXP_WARN_no alcance máximo|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Thotar|r
    .turnin 6062 >>Entregue Adestramento da Fera - Missão
    .accept 6083 >>Aceite Adestramento da Fera - Missão
    .target Thotar
step << Hunter
    #loop
    .goto Durotar,59.63,23.38,0
    .goto Durotar,59.18,28.35,40,0
    .goto Durotar,59.89,26.42,40,0
    .goto Durotar,60.04,24.79,40,0
    >>|cRXP_WARN_Não mate os|r |cRXP_ENEMY_Escorpídeos Encouraçados|r |cRXP_WARN_que encontrar. Você precisará deles mais adiante|r
    .use 15919 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Surfatisco|r |cRXP_WARN_na distância máxima|r
    .complete 6083,1 --Tame a Surf Crawler
    .mob Surf Crawler
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Thotar|r
    .turnin 6083 >>Entregue Adestramento da Fera - Missão
    .accept 6082 >>Aceite Adestramento da Fera - Missão
    .target Thotar
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Thotar|r
    .turnin 6082 >>Entregue Adestramento da Fera - Missão
    .accept 6081 >>Aceite Treinamento da Fera - Missão
    .target Thotar
step << Hunter
    .goto Durotar,51.13,42.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimtak|r
    >>|cRXP_BUY_Compre|r |T133972:0|t[Carne-seca Dura] |cRXP_BUY_dele|r. |cRXP_BUY_Você usará isso para alimentar seu ajudante mais adiante|r
    .vendor >>Lixo de Comerciante
    .collect 117,5,828,1 --Tough Jerky (5)
    .target Grimtak
step
    #optional
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
    .xp <10,1
step
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Mate os |cRXP_ENEMY_Razormane Dustrunners|r e os |cRXP_ENEMY_Razormane Battleguards|r
    >>|cRXP_WARN_Tenha cuidado.|r Os |cRXP_ENEMY_Dustrunners|r |cRXP_WARN_lançam Rejuvenescer (Cura) e|r os |cRXP_ENEMY_Battleguards|r |cRXP_WARN_são resistentes|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Shaman
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
    .zoneskip The Barrens
step << Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Conscrição da Encruzilhada
    .target Kargal Battlescar
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entregue Call of Fogo
    .accept 1524 >>Aceite Call of Fogo
    .target Kranal Fiss
step << Shaman
    #completewith CallofFire2
    .zone Durotar >>Vá para Durotar
    .zoneskip Durotar
step << Shaman
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
    .goto Durotar,39.16,58.56,10 >>Siga o caminho montanha acima até |cRXP_FRIENDLY_Telf|r
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    #label CallofFire2
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entregue Call of Fogo
    .accept 1525 >>Aceite Call of Fogo
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >>Siga o caminho descendo a montanha
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    #completewith next
    .zone The Barrens >>Vá para As Savanas
    .zoneskip The Barrens
step << Shaman
    #loop
    .goto The Barrens,53.57,25.51,0
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51,50,0
    >>Abate o |cRXP_ENEMY_Ladravaz Crinavalha|r ou o |cRXP_ENEMY_Tecespinho Crinavalha|r. Saqueie-os para obter um |cRXP_LOOT_Fire Piche|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step << Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >>Vá para a Encruzilhada
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Thork|r e |cRXP_FRIENDLY_Gazrog|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 842 >>Entregue Encruzilhada Conscription
    .accept 844 >>Aceite A Ameaça Pinote
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos para a Encruzilhada
    .target +Thork
    .goto The Barrens,51.50,30.87
    .accept 869 >>Aceite Na Cola dos Larápios
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step << Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona para Orgrimmar
    .target Devrak
step << Shaman
    #completewith NeedforaCureAccept
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dele|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith NeedforaCureAccept
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate] |cRXP_WARN_quando você estiver no nível 11|r
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
    .accept 6385 >>Aceite Doraso, o Mestre de Mantícoras
    .target Innkeeper Gryshka
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o Mestre de Mantícoras
    .accept 6386 >>Aceite Voltar para a Encruzilhada
    .target Doras
step << Shaman
    #label LeaveOrg
    #completewith next
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << Shaman
    #label NeedforaCureAccept
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Isto iniciará um cronômetro de 45 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 812 >>Aceite Busca da cura
    .target Rhinag
step << Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Aceite Em memória
    .target Misha Tor'kren
step
    #label Stolensupplies
    #loop
    .goto Durotar,49.05,22.49,0
    .goto Durotar,47.34,33.38,30,0
    .goto Durotar,47.92,33.10,30,0
    .goto Durotar,49.11,33.11,30,0
    .goto Durotar,48.53,32.00,30,0
    .goto Durotar,47.36,30.98,30,0
    .goto Durotar,47.14,29.68,30,0
    .goto Durotar,46.49,34.67,30,0
    .goto Durotar,50.13,32.35,30,0
    .goto Durotar,49.78,28.26,30,0
    .goto Durotar,50.83,25.94,30,0
    .goto Durotar,49.68,24.38,30,0
    .goto Durotar,49.05,22.49,30,0
    >>Saqueie os |cRXP_PICK_Sacos de Suprimentos Roubados|r do chão
    .complete 834,1 --Sack of Supplies (5)
    .isOnQuest 834
step << !Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >>Vá até Rezlak
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
step << !Hunter
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
    >>Saqueie os |cRXP_PICK_Sacos de Suprimentos Roubados|r do chão
    .complete 834,1 --Sack of Supplies (5)
step << !Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do Deserto
    .accept 835 >>Aceite Faça o que eu digo...
    .target Rezlak
step << Hunter
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Isto iniciará um cronômetro de 45 minutos para a missão. NÃO fique AFK ou saia do jogo pelos próximos 5 minutos|r
    .accept 812 >>Aceite Busca da cura
    .target Rhinag
step << Hunter
    #completewith BeastTraining
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
step << Hunter
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entregue As Ordens do Almirante
    .target Nazgrel
step << Hunter
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Kor'ghan|r
    .accept 813 >>Aceite Em busca do antídoto
    .target Kor'ghan
    .isOnQuest 812
step << Hunter
    #completewith BeastTraining
    >>|cRXP_WARN_Abandone Busca da cura. Isso removerá o limite de tempo da missão, mas você ainda poderá realizá-la|r
    .abandon 812 >>Abandone Busca da cura
    .isOnQuest 812
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>Vá para o Vale de Honra
step << Hunter
    #label BeastTraining
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
    #completewith Rezlak
    +|cRXP_WARN_Arrastar|r |T132162:0|t[Treinamento de Feras] |cRXP_WARN_Nas suas barras de ação. Ensine habilidades para seu mascote|r
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,835,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Zendo'jian
step << Hunter
    #optional
    #completewith Rezlak
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_WARN_quando você tiver nível 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #label HuntLeaveOrg
    #completewith next
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << Hunter
    #completewith Rezlak
    .goto Durotar,43.8,17.20,40,0
    .goto Durotar,43.53,18.35,40,0
    .goto Durotar,42.19,19.70,40,0
    .goto Durotar,41.08,20.42,40,0
    .goto Durotar,42.76,21.08,40,0
    .goto Durotar,40.44,17.51,40,0
    +Domine um mascote. Um |cRXP_ENEMY_Escorpídeo|r ou um |cRXP_ENEMY_Raptor|r terão o maior DPS
    .mob Venomtail Scorpid
    .mob Bloodtalon Scythemaw
step << Hunter
    #completewith next
    .goto Durotar,46.37,22.94,50 >>Vá até Rezlak
step << Hunter
    #label Rezlak
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
step << Hunter
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
    >>Saqueie os |cRXP_PICK_Sacos de Suprimentos Roubados|r do chão
    .complete 834,1 --Sack of Supplies (5)
step << Hunter
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do Deserto
    .accept 835 >>Aceite Faça o que eu digo...
    .target Rezlak
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Viaje pela caverna
    .solo
step
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Mate |cRXP_ENEMY_Selvagem Sopravento|r e |cRXP_ENEMY_Bruxa da Tempestade Sopravento|r
    >>|cRXP_WARN_Estes inimigos fogem. Cuidado para não fazer pull duplo|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .solo
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Escolha o|r |T135158:0|t[Cajado de Madeira Manchado] |cRXP_WARN_como sua recompensa de missão e guarde-o. Você receberá treinamento de bastão em Orgrimmar|r
    .solo
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entregue Faça o que Eu Digo
    .target Rezlak
    .solo
step << Shaman
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Aceite Em memória
    .target Misha Tor'kren
step
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>Pule para dentro do Desfiladeiro do Trovão << !Hunter !Warlock
    .cast 2641 >>|cRXP_WARN_Lance|r |T136095:0|t[Dispensar Ajudante] |cRXP_WARN_e depois pule para Serra do Trovão|r << Hunter
    +|cRXP_WARN_Dispense seu diabrete e depois pule para Serra do Trovão|r << Warlock
    .group
step
    .goto Durotar,42.13,26.67
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tenha muito cuidado. Mate o|r |cRXP_ENEMY_Burning Blade Fanatic|r |cRXP_WARN_e o|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_nas costas antes de puxá-lo|r
    >>|cRXP_WARN_Puxe-o para trás em direção ao|r |cRXP_ENEMY_Lightning Hides|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair burning blade mobs adicionais|r
    >>|cRXP_WARN_Abate o diabrete primeiro. Usar|r |T132155:0|t[Esfaquear] |cRXP_WARN_quando ele lançar|r |T136169:0|t[Sifão da Alma] << Rogue
    >>|cRXP_WARN_Abate o diabrete primeiro. Usar|r |T136026:0|t[Choque Terreno] |cRXP_WARN_quando ele lançar|r |T136169:0|t[Sifão da Alma] << Shaman
    >>|cRXP_WARN_Você pode lançar|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Bulho Tempesnigra|r |cRXP_WARN_e matar o|r |cRXP_ENEMY_Diabrete|r |cRXP_WARN_primeiro|r << Mage
    >>|cRXP_WARN_Mate o diabrete primeiro.|r << Warrior/Warlock/Priest
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << !Warlock
    >>|cRXP_WARN_Use uma|r |T134829:0|t[Poção Menor de Cura], |T133728:0|t[Pedra de Vida Menor] |cRXP_WARN_se tiver uma e seu|r |T133728:0|t[Crânio Levemente Faiscante] |cRXP_WARN_se necessário|r << Warlock
    .complete 806,1 --Fizzle's Claw (1)
    .mob Fizzle Darkstorm
    .mob Imp Minion
    .mob Burning Blade Fanatic
    .mob Lightning Hide
    .group 2
    --VV Add video / description for Druid / tell priest/lock to fear if pulled back and area is clear?
step
    .hs >>Use a Pedra Lunar para voltar a Razor Hill
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .group
step << Shaman
    .hs >>Use a Pedra Lunar para voltar a Razor Hill
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
    .solo
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .vendor >>Lixo de Comerciante
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
    .group
step << Shaman
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .vendor >>Lixo de Comerciante
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Entregar em Tempestades Sombrias
    .accept 828 >>Aceite Margoz
    .target Orgnil Soulscar
    .isQuestComplete 806
    .group
step
    #optional
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil|r
    .accept 828 >>Aceite Margoz
    .target Orgnil Soulscar
    .isQuestTurnedIn 806
    .group
step << !Shaman
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Entregue Encroachment
    .target Gar'Thok
    .group
step << Shaman
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Entregue Encroachment
    .target Gar'Thok
step << Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .group
step << Shaman
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .target Swart
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .group
step << Hunter
    .goto Durotar,51.85,43.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Thotar|r
    .train 13549 >>Treine suas magias de classe
    .target Thotar
    .group
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 674 >>Treine suas magias de classe
    .target Kaplak
    .group
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .train 8092 >>Treine suas magias de classe
    .target Tai'jin
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ghrawt|r
    .vendor >>Comerciante genérico. Venda sua arma se ela der dinheiro suficiente para um |T135489:0|t[Arco Recurvo Laminado] (17s 51c). Você voltará mais tarde se ainda não tiver dinheiro suficiente
    .target Ghrawt
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ghrawt|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,828,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ghrawt|r
    .collect 2515,1200,828,1 << Hunter --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 << Hunter
    .group
step << Hunter
    #optional
    #completewith MargozTurnIn
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .group
step
    #completewith next
    .goto Durotar,55.40,36.73,80,0
    .goto Durotar,56.07,30.05,80,0
    .goto Durotar,56.41,20.04,50 >>Vá até |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entregue Margoz
    .accept 827 >>Aceite A Rocha da Caveira
    .target Margoz
    .isQuestTurnedIn 806
    .group
step << Shaman
    #completewith Collars1
    .goto Durotar,53.18,29.15,50 >>Vá para a Caverna Sopravento
step << !Shaman
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >>Vá para a Caverna Sopravento
    .isQuestTurnedIn 806
    .group
step << !Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Mate os |cRXP_ENEMY_Burning Blade Thugs|r, os |cRXP_ENEMY_Neophytes|r e os |cRXP_ENEMY_Cultists|r. Saqueie-os para obter os |cRXP_LOOT_Collars|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Mate os |cRXP_ENEMY_Thugs|r e os |cRXP_ENEMY_Neophytes|r. Saque-os para obter os |cRXP_LOOT_Collars|r
    >>Mate os |cRXP_ENEMY_Cultists|r. Saqueie-os para obter uma |cRXP_LOOT_Reagent Pouch|r
    .complete 827,1 --Searing Collar (6)
    .mob +Burning Blade Thug
    .mob +Burning Blade Neophyte
    .mob +Burning Blade Cultist
    .complete 1525,2 --Reagent Pouch (1)
    .mob +Burning Blade Cultist
    .isQuestTurnedIn 806
    .group
step << Shaman
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Mate os |cRXP_ENEMY_Cultists|r. Saqueie-os para obter uma |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
    .solo
step
    #optional
    #label Collars1
step << skip --Shaman
    .goto Durotar,53.03,26.82
    .goto Durotar,47.31,17.89,30 >>|cRXP_WARN_Salte para a rocha. Realize um pulo de logout posicionando seu personagem até parecer que está flutuando, depois saindo e voltando|r
    .link https://www.youtube.com/watch?v=9A6LHcLZeTU&ab >> |cRXP_WARN_CLICK HERE for an example|r
    .solo
step
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >>Vá até |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
    .group
step
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Entregue A Rocha da Caveira
    .accept 829 >>Aceite Neeru Cortafogo
    .target Margoz
    .isQuestTurnedIn 806
    .group
step
    #completewith next
    .goto Durotar,53.41,27.81,15 >>Viaje pela caverna
    .group
step
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Mate |cRXP_ENEMY_Selvagem Sopravento|r e |cRXP_ENEMY_Bruxa da Tempestade Sopravento|r
    >>|cRXP_WARN_Estes inimigos fogem. Cuidado para não fazer pull duplo|r
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
    .group
step << Troll Warrior/Undead Warrior
    #completewith next
    +|cRXP_WARN_Escolha o|r |T135158:0|t[Cajado de Madeira Manchado] |cRXP_WARN_como sua recompensa de missão e guarde-o. Você receberá treinamento de bastão em Orgrimmar|r
    .group
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entregue Faça o que Eu Digo
    .target Rezlak
    .group
step
--    .loop
    .xp 10 >>Suba até o nível 10
    --VV Enter loop coords
step << Hunter
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
    .isOnQuest 829
    .group
step << !Hunter
    #completewith Admiralorders1
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
step << !Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trak'gen|r
    .vendor >>Venda os lixos
    .target Trak'gen
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r Trak'gen|cRXP_FRIENDLY_|r. Compre|cRXP_BUY_ |T135419:0|t[Machado de Arremesso Afiado]|r |cRXP_BUY_dele|r
    .collect 3135,200,354,1 --Sharp Throwing Axe (200)
    .vendor >>Venda os lixos
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machado de Arremesso Afiado] |cRXP_WARN_quando estiver no nível 11|r
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Shaman
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o Mestre de Mantícoras
    .accept 6386 >>Aceite Voltar para a Encruzilhada
    .target Doras
    .isOnQuest 6385
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >>Entregue Bagata da Fraqueza
    .trainer >>Treine suas magias de classe
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >>Entregue Bagata da Fraqueza
    .trainer >>Treine suas magias de classe
    .target Ur'kyo
step << Mage
    .goto Orgrimmar,38.33,85.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pefreda|r
    .train 122 >>Treine suas magias de classe
    .target Pephredo
step
    #label Admiralorders1
    .goto Orgrimmar,32.29,35.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entregue As Ordens do Almirante
    .target Nazgrel
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >>Aceite The Estilhaçada Hand - Missão - Missão << Orc Rogue/Troll Rogue
    .trainer >>Treine suas magias de classe
    .target Therzok
step << Shaman
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Kor'ghan|r
    .accept 813 >>Aceite Em busca do antídoto
    .target Kor'ghan
    .isOnQuest 812
step << Shaman
    #completewith CallofFire3
    >>|cRXP_WARN_Abandone Busca da cura. Isso removerá o limite de tempo da missão, mas você ainda poderá realizá-la|r
    .abandon 812 >>Abandone Busca da cura
    .isOnQuest 812
step
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entregue Neeru Cortafogo
    .accept 809 >>Aceite Ak'Zeloth
    .target Neeru Fireblade
    .isOnQuest 829
    .group
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1120 >>Treine suas magias de classe
    .target Mirket
step << Troll Warrior/Undead Warrior
    #completewith StaveTraining1
    .goto Orgrimmar,68.02,38.69,30 >>Vá para o Vale de Honra
step << Warrior
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 6546 >>Treine suas magias de classe
    .target Grezz Ragefist
step << Troll Warrior/Undead Warrior
    #label StaveTraining1
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Treine Cajados
    .target Hanashi
step << Troll Warrior/Undead Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dele|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Zendo'jian
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Troll Warrior/Undead Warrior
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate] |cRXP_WARN_quando você estiver no nível 11|r
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urtharo|r
    .vendor >>Venda seu lixo. Venda sua arma se lhe der dinheiro suficiente para |T132395:0|t[Tabar] (22s 14c). Você voltará mais tarde se ainda não tiver dinheiro suficiente
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Urtharo|r|cRXP_BUY_. Compre um|r |T132395:0|t[Tabar] |cRXP_BUY_dele|r
    .collect 1196,1,398,1 --Collect Tabar (1)
    .money <0.2214
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Orc Warrior
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equipe o|r |T132395:0|t[Tabar]
    .use 1196
    .itemcount 1196,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.2
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r Urtharo|cRXP_FRIENDLY_|r. Compre um|cRXP_BUY_ |T135154:0|t[Cajado de Combate]|r |cRXP_BUY_dele|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate] |cRXP_WARN_quando você estiver no nível 11|r
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << !Hunter !Shaman
    #label LeaveOrg2
    #completewith ZeptoUC1
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << Hunter
    #completewith HunterCrossRoadsVisit1
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
    .group
step << Shaman/Hunter
    #label VenomPoisonSacs
    #loop
    .goto Durotar,36.40,30.95,0
    .goto Durotar,42.47,19.99,50,0
    .goto Durotar,41.07,19.85,50,0
    .goto Durotar,40.21,17.21,50,0
    .goto Durotar,38.89,16.91,50,0
    .goto Durotar,38.13,19.90,50,0
    .goto Durotar,38.67,22.13,50,0
    .goto Durotar,36.91,25.63,50,0
    .goto Durotar,36.64,28.18,50,0
    .goto Durotar,36.40,30.95,50,0
    >>Mate |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .isOnQuest 813
step << Hunter
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Vá ao sul ao longo do rio em direção ao Far Vigiar Post
    >>Mate |cRXP_ENEMY_Crocolisco Bocarrão|r no caminho. Saqueie-os para pegar |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Pule e abandone esta missão se o item não cair|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
    #completewith CallofFire3
    .goto Durotar,34.80,32.84,50,0
    .goto Durotar,34.81,37.02,50,0
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.51,51.48,50,0
    .goto Durotar,35.16,56.43,50,0
    >>Viaje pelo sul ao lado do rio. Mate os |cRXP_ENEMY_Crocodilianos Deimogorja|r no caminho. Saqueie-os para obter o |cRXP_LOOT_Amuleto de Kron|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman
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
step << Shaman
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entregue Call of Fogo
    .accept 1526 >>Aceite Call of Fogo
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Use a|r |T134732:0|t[Sapta do Fogo]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Mate a |cRXP_ENEMY_Manifestação Menor do Fogo|r. Saqueie-o para obter uma |cRXP_LOOT_Brasa Brilhante|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Clique em |cRXP_PICK_Braseiro|r no chão
    .turnin 1526 >>Entregue Call of Fogo
    .accept 1527 >>Aceite Call of Fogo
step << Shaman
    #completewith next
    .goto Durotar,39.13,58.63,10,0
    .goto Durotar,39.17,57.93,10,0
    .goto Durotar,38.95,57.58,8,0
    .goto Durotar,38.61,57.67,8,0
    .goto Durotar,38.06,57.78,8,0
    .goto Durotar,37.76,58.19,8,0
    .goto Durotar,36.96,58.07,15 >>Siga o caminho descendo a montanha
    >>|cRXP_WARN_Tome cuidado para não cair da montanha, pois o caminho é muito estreito. Você pode morrer se cair|r
step << Shaman
    .goto Durotar,34.92,54.87,50,0
    .goto Durotar,34.58,51.64,50,0
    .goto Durotar,34.33,48.97,50,0
    .goto Durotar,34.31,44.24
    >>Mate os |cRXP_ENEMY_Deimogorja Crocolisks|r. Saqueie-os para |cRXP_LOOT_Kron's Amulet|r.
    >>|cRXP_WARN_Pule e abandone esta missão se o item não cair|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Shaman/Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Entregue Em memória
    .target Misha Tor'kren
    .isQuestComplete 816
step << Shaman/Hunter
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>Vá para Far Vigiar Post
    .zoneskip The Barrens
step << Shaman/Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Conscrição da Encruzilhada
    .target Kargal Battlescar
step << Shaman/Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entregue Ak'Zeloth
    .accept 924 >>Aceite A Semente Demoníaca
    .target Ak'Zeloth
    .isQuestTurnedIn 829
    .group
step << Shaman/Hunter
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Saqueie a|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_ao lado de|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. Este item tem um temporizador de 30 minutos, portanto certifique-se de ser rápido|r
    .turnin 926 >>Entregue Pedra do Poder Defeituosa
    .isOnQuest 924
    .group
step << Shaman
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Entregue Call of Fogo
    .target Kranal Fiss
step << Hunter
    #completewith next
    .goto The Barrens,52.34,29.27,150 >>Vá para a Encruzilhada
step << Hunter
    #label HunterCrossRoadsVisit1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Thork|r e |cRXP_FRIENDLY_Gazrog|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 842 >>Entregue Encruzilhada Conscription
    .accept 844 >>Aceite A Ameaça Pinote
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos para a Encruzilhada
    .target +Thork
    .goto The Barrens,51.50,30.87
    .accept 869 >>Aceite Na Cola dos Larápios
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse|r com |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,871,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .target Uthrok
step << Hunter
    #optional
    #completewith DisruptTheAttacks
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>Saqueie |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão. Se não estiver disponível, você o obterá mais tarde
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step << Shaman/Hunter
    #completewith DemonSeed
    >>Abate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os pelos |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Shaman/Hunter
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >>Vá para o topo da montanha
    .isOnQuest 924
step << Shaman/Hunter
    #completewith next
    +|cRXP_WARN_Cuidado se|r |cRXP_ENEMY_Rathorian|r |cRXP_WARN_está ativo, ele é um raro de nível 15. Esteja pronto para usar seu|r |T133728:0|t[Crânio Fracamente Brilhante] |cRXP_WARN_e|r |T134712:0|t[Cola Grudenta à Beça] |cRXP_WARN_se necessário|r
    .unitscan Rathorian
step << Shaman/Hunter
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>Clique com o botão direito no |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Certifique-se de que tem um|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_(30 minutos de duração) consigo|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman/Hunter
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,40 >>Desça a montanha de onde veio
    .isOnQuest 924
step << Shaman/Hunter
    #completewith DisruptTheAttacks
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os para |cRXP_LOOT_Bicos|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Hunter
    #completewith next
    >>Abate os |cRXP_ENEMY_Water Seekers|r, os |cRXP_ENEMY_Thornweavers|r e os |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Hunter
    .goto The Barrens,55.70,27.30
    .use 4926 >>Saqueie |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão. Se não estiver disponível, você o obterá mais tarde
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step << Shaman/Hunter
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,53.63,24.50,50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
    >>Abate os |cRXP_ENEMY_Water Seekers|r, os |cRXP_ENEMY_Thornweavers|r e os |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Shaman/Hunter
    #loop
    .goto The Barrens,53.71,29.19,0
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
    >>Abate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os pelos |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << Hunter
    #loop
	.goto The Barrens,53.12,28.72,0
	.goto The Barrens,53.12,28.72,60,0
	.goto The Barrens,53.97,28.10,60,0
	.goto The Barrens,54.64,27.09,60,0
	.goto The Barrens,55.47,26.94,60,0
	.goto The Barrens,55.44,25.70,60,0
	.goto The Barrens,55.51,24.54,60,0
	.goto The Barrens,54.75,23.51,60,0
	.goto The Barrens,53.74,23.66,60,0
	.goto The Barrens,53.35,25.16,60,0
	.goto The Barrens,52.99,26.88,60,0
    .xp 11+6980 >>Farme até 6980/8800 xp
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Thork|r
    .turnin 6386 >>Entregue Devolver a Encruzilhada
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 844 >>Entregue A Ameaça Pinote
    .accept 845 >>Aceite As Zevras
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 871 >>Entregue A Ofensiva do Posto Remoto
    .accept 872 >>Aceite Em Defesa do Posto Remoto
    .target +Thork
    .goto The Barrens,51.50,30.87
    .isOnQuest 6386
step << Shaman/Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Thork|r
    .turnin 844 >>Entregue A Ameaça Pinote
    .accept 845 >>Aceite As Zevras
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 871 >>Entregue A Ofensiva do Posto Remoto
    .accept 872 >>Aceite Em Defesa do Posto Remoto
    .target +Thork
    .goto The Barrens,51.50,30.87
step << Shaman/Hunter
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1200,398,1 << Hunter --Sharp Arrow (1200)
    .target Barg
    .itemcount 2515,<800 << Hunter
step << Hunter
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona para Orgrimmar
    .target Devrak
step << Hunter
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Shaman
    #completewith ZeptoUC1
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Hunter
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
    .accept 6385 >>Aceite Doraso, o Mestre de Mantícoras
    .target Innkeeper Gryshka
step << Hunter
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o Mestre de Mantícoras
    .accept 6386 >>Aceite Voltar para a Encruzilhada
    .target Doras
step << Shaman/Hunter
    #label FindingAntidoteTurnin
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Entregue Em busca do antídoto
    .target Kor'ghan
    .isQuestComplete 813
    .isQuestAvailable 812
step << Shaman
    #label Shaman12training
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 547 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <12,1
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urtharo|r
    .vendor >>Vendedor. Venda sua arma se der dinheiro suficiente para um |T135154:0|t[Cajado de Combate] (30s 22c). Você o receberá depois se ainda não tiver o suficiente
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    .goto Orgrimmar,47.54,68.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r Urtharo|cRXP_FRIENDLY_|r. Compre um|cRXP_BUY_ |T135154:0|t[Cajado de Combate]|r |cRXP_BUY_dele|r
    .collect 854,1,398,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Urtharo
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Shaman
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.4
step << Hunter
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>Vá para o Vale de Honra
step << Hunter
    .goto Orgrimmar,66.06,18.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14281 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <12,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24556 >>Treine as magias do seu mascote
    .target Xao'tsu
    .xp <12,1
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_BUY_dele|r
    .collect 2507,1,398,1 --Collect Laminated Recurve Bow (1)
    .money <0.1751
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Hunter
    #optional
    #completewith ZeptoUC1
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
step << Shaman/Hunter
    #label Leaveorg2
    #completewith next
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << Shaman/Hunter
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Aceite Busca da cura
    .turnin 812 >>Entregue Necessidade de uma Cura
    .target Rhinag
step
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o Zepelim para Tirisfal Glades
    >>|cRXP_WARN_Conjure água enquanto espera|r << Mage
    .zoneskip Tirisfal Glades
step << Orc Rogue/Troll Rogue
    #optional
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fp Undercity >>Aprenda a rota de voo de Undercity
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Arquibaldo|r no Distrito da Guerra
    .train 201 >>Treine Espadas de Uma Mão
    .target Archibald
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass1
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass1
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #optional
    #completewith KillDevlin
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
	.collect 3164,6,429,1 >>|cRXP_BUY_Compre seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_do Auction House|r
    >>|cRXP_WARN_Pule isto se quiser, é apenas uma pequena economia de tempo|r
	.target Auctioneer Rhyker
    .zoneskip Undercity,1
step << skip --Orc Rogue/Troll Rogue
    #optional
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Execute um Logout Pular na Magic Quarter posicionando seu personagem na parte mais alta do degrau mais baixo até parecer flutuante, depois faça logout e acesse novamente|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_Clique aqui para ver um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
    .zoneskip Tirisfal Glades
step << Orc Rogue/Troll Rogue
    #completewith next
    .zone Tirisfal Glades >>Saia de Undercity
    .zoneskip Undercity,1
step
    #completewith next
    .goto Tirisfal Glades,61.52,53.20,80 >>Viaje para Brill
    .subzoneskip 159
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Coleman|r e |cRXP_FRIENDLY_Gretchen|r na estalagem
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar|r
    .accept 354 >>Aceite Mortes na família
    .accept 362 >>Aceite Os moinhos assombrados
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Aceite O frio da morte
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .maxlevel 12
step << Warrior
    #optional
    .abandon 1505 >>Abandone Veterano Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandone Caminho da Defesa
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon
    .xp <10,1
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ageron|r dentro da estalagem
    .accept 1478 >>Aceite Convocação de Hidalgo
    .target Ageron Kargal
    .isQuestAvailable 1504
    .xp <10,1
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r dentro da estalagem
    .accept 1885 >>Aceite Júnio Aquino
    .target Marion Call
    .xp <10,1
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r dentro da estalagem
    .accept 1881 >>Aceite Falar com Anastasia
    .target Cain Firesong
    .xp <10,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Mage/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r << Warlock
    .vendor >>Lixo de Comerciante
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Sra. Hibérnias|r
    >>|cRXP_BUY_Compre um ou mais|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_dela|r
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #optional
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .accept 427 >>Aceite Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
    .maxlevel 11
step
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>Aceite Procura-se: Olho de Verme
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sevren|r dentro do prédio
    .accept 358 >>Aceite Roubacovas
    .target Magistrate Sevren
    .maxlevel 12
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Aceite Entrega to Floresta de Pinhaprata
    .accept 367 >>Aceite Uma Nova Peste
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .accept 404 >>Aceite Uma tarefa podre
    .target Deathguard Dillinger
    .maxlevel 11
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >>Entregue Uma conversa com Dinis
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
    .isOnQuest 1818
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Clique no|r |cRXP_WARN_Gatilho do Mausoléu|r |cRXP_WARN_no chão. Isto vai invocar|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mate-o|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestTurnedIn 1818
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
    .isQuestTurnedIn 1818
step
    #completewith Pumpkins
    >>Abate qualquer |cRXP_ENEMY_Darkhound|r que você veja. Saque-os para obter |cRXP_LOOT_Sanguíneo|r
    >>|cRXP_WARN_Você receberá|r |T133849:0|t[Lerdo Sand] |cRXP_WARN_da continuação desta missão|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step
    #optional
    #label Claws
    #loop
    .goto Tirisfal Glades,52.63,56.98,0
    .goto Tirisfal Glades,54.95,50.53,50,0
    .goto Tirisfal Glades,53.35,50.29,50,0
    .goto Tirisfal Glades,52.12,50.38,50,0
    .goto Tirisfal Glades,51.28,51.63,50,0
    .goto Tirisfal Glades,52.03,53.74,50,0
    .goto Tirisfal Glades,52.29,56.72,50,0
    .goto Tirisfal Glades,53.95,56.53,50,0
    .goto Tirisfal Glades,53.55,58.25,50,0
    .goto Tirisfal Glades,52.63,56.98,50,0
    >>Mate |cRXP_ENEMY_Mortos Podres|r e |cRXP_ENEMY_Cadáveres Assolados|r. Saqueie-os para pegar |cRXP_LOOT_Garras|r
    .complete 404,1 --Putrid Claw (7)
    .mob Rotting Dead
    .mob Ravaged Corpse
    .isOnQuest 404
step
    #optional
    #completewith Pumpkins
    >>Abate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os para obter |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Pumpkins
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Simério|r
    .accept 365 >>Aceite Campos de mágoa
    .target Deathguard Simmer
    .maxlevel 11
step
    #optional
    #loop
    .goto Tirisfal Glades,36.63,50.09,0
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09,50,0
    >>Saque o |cRXP_LOOT_Pumpkins|r encontrado no campo.
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step
    #optional
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    >>Mate |cRXP_ENEMY_Guerreiros Escarlates|r
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #completewith next
    >>Abate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os para obter |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #label Darkhounds1
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    >>Abate qualquer |cRXP_ENEMY_Darkhound|r que você veja. Saque-os para obter |cRXP_LOOT_Sanguíneo|r
    >>|cRXP_WARN_Você receberá|r |T133849:0|t[Lerdo Sand] |cRXP_WARN_da continuação desta missão|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
step
    #completewith Brillturnins2
    .subzone 159 >>Volte para Brill
step
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 404 >>Entregue Uma tarefa podre
    .accept 426 >>Aceite Os Moinhos Invadidos
    .target Deathguard Dillinger
    .isQuestComplete 404
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .accept 426 >>Aceite Os Moinhos Invadidos
    .target Deathguard Dillinger
    .isQuestTurnedIn 404
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entregue Uma Nova Peste
    .turnin 365 >>Entregue Campos de mágoa
    .accept 368 >>Aceite Uma Nova Peste
    .accept 407 >>Aceite Campos de mágoa
    .target Apothecary Johaan
    .isQuestComplete 365
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 407 >>Aceite Campos de mágoa
    .target Apothecary Johaan
    .isQuestTurnedIn 365
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entregue Uma Nova Peste
    .accept 368 >>Aceite Uma Nova Peste
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 427 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 370 >>Aceite Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .accept 370 >>Aceite Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
    .isQuestTurnedIn 427
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r
    .accept 374 >>Aceite Prova da morte
    .target Deathguard Burgess
    .isQuestTurnedIn 427
step
    #optional
    #label Brillturnins2
step << Warrior
    #optional
    .abandon 1505 >>Abandone Veterano Uzzek
    .isOnQuest 1505
step << Warrior
    #optional
    .abandon 1498 >>Abandone Caminho da Defesa
    .isOnQuest 1498
step << Warrior
    .goto Tirisfal Glades,61.85,52.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .accept 1818 >>Aceite Uma conversa com Dinis
    .target Austil de Mon
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1818 >>Entregue Uma conversa com Dinis
    .accept 1819 >>Aceite Ulag, o Cutelo
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,59.16,48.51
    >>|cRXP_WARN_Clique no|r |cRXP_WARN_Gatilho do Mausoléu|r |cRXP_WARN_no chão. Isto vai invocar|r |cRXP_ENEMY_Ulag.|r |cRXP_WARN_Mate-o|r
    .complete 1819,1 --Ulag the Cleaver (1)
    .mob Ulag the Cleaver
    .isQuestAvailable 1498
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step << Warlock
    .goto Tirisfal Glades,61.62,52.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ageron|r dentro da estalagem
    .accept 1478 >>Aceite Convocação de Hidalgo
    .target Ageron Kargal
    .isQuestAvailable 1504
step << Undead Rogue
    .goto Tirisfal Glades,61.75,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r dentro da estalagem
    .accept 1885 >>Aceite Júnio Aquino
    .target Marion Call
step << Mage
    .goto Tirisfal Glades,61.96,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r dentro da estalagem
    .accept 1881 >>Aceite Falar com Anastasia
    .target Cain Firesong
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step << Warlock/Mage
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
step << Warlock/Mage
    #label UCflightpath1
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fp Undercity >>Aprenda a rota de voo de Undercity
    .target Michael Garrett
step << Warlock/Mage
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_do Auction House|r
    >>|cRXP_WARN_Pule isto se quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carendin|r no Bairro da Magia
    .turnin 1478 >>Entregue Convocação de Hidalgo
    .accept 1473 >>Aceite Criatura do Vazio
    .isQuestAvailable 1504
step << Mage
    #optional
    .abandon 1883 >>Abandone Falar com Un'thuwa, caso contrário você não conseguirá aceitar a próxima missão
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r no Bairro da Magia
    .turnin 1881 >>Entregue Falar com Anastasia
    .accept 1882 >>Aceite A Fazenda Balnir
    .target Anastasia Hartwell
step << Undead Priest
    #completewith TouchofWeakness
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step << Undead Priest
    #completewith TouchofWeakness
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
step << Undead Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_do Auction House|r
    >>|cRXP_WARN_Pule isto se quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Undead Priest
    #optional
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aelthalyste|r
    .turnin 5660 >>Entregue Toque de Fraqueza
    .target Aelthalyste
    .isOnQuest 5660
step << Undead Priest
    #label TouchofWeakness
    .goto Undercity,48.98,18.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aelthalyste|r
    .accept 5658 >>Aceite Toque de Fraqueza
    .turnin 5658 >>Entregue Toque de Fraqueza
    .target Aelthalyste
step << Rogue
    #completewith Swordtraining2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .goto Undercity,63.25,48.56
    .fp Undercity >>Aprenda a rota de voo de Undercity
    .target Michael Garrett
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass2
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass2
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    #optional
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1885 >>Entregue Júnio Aquino
    .accept 1886 >>Aceite Os Sicários
    .target Mennet Carkad
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Arquibaldo|r no Distrito da Guerra
    .train 201 >>Treine Espadas de Uma Mão
    .target Archibald
    .money <0.1
    .zoneskip Undercity,1
step << Rogue
    #optional
    #completewith KillDevlin
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_do Auction House|r
    >>|cRXP_WARN_Pule isto se quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock/Mage/Rogue
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
    .zoneskip Tirisfal Glades
step << Undead Priest
    #optional
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith ScarletCrusade1
    >>Colete |cRXP_LOOT_Scarlet Insignia Rings|r. Você não precisa completar este passo agora
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step << Warlock
    #optional
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Saque |cRXP_PICK_Baú de Perrine|r para |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step
    #optional
    #label ScarletCrusade1
    #loop
	.goto Tirisfal Glades,51.03,69.55,0
	.goto Tirisfal Glades,50.07,68.87,40,0
	.goto Tirisfal Glades,50.23,66.94,40,0
	.goto Tirisfal Glades,51.16,65.73,40,0
	.goto Tirisfal Glades,51.75,66.04,40,0
	.goto Tirisfal Glades,52.93,67.62,40,0
	.goto Tirisfal Glades,52.72,69.33,40,0
	.goto Tirisfal Glades,51.96,69.57,40,0
	.goto Tirisfal Glades,51.03,69.55,40,0
    >>Mate o |cRXP_ENEMY_Capitão Perrine|r, os |cRXP_ENEMY_Zelotes|r e os |cRXP_ENEMY_Missionários|r.
    .complete 370,1 --Captain Perrine (1)
    .mob +Captain Perrine
    .complete 370,2 --Scarlet Zealot (3)
    .mob +Scarlet Zealot
    .complete 370,3 --Scarlet Missionary (3)
    .mob +Scarlet Missionary
    .isOnQuest 370
step << Warlock
    .goto Tirisfal Glades,51.06,67.57
    >>Saqueie |cRXP_PICK_Baú do Perrine|r no chão para pegar |T133733:0|t[Grimório de Egalin]
    .complete 1473,1 --Egalin's Grimoire (1)
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,16.51,42.76,35,0
    .goto Undercity,22.98,39.76,35,0
    .goto Undercity,24.93,32.54,35,0
    .goto Undercity,34.78,33.24,10,0
    .goto Undercity,40.83,34.08,10,0
    .goto Undercity,41.35,38.40,10,0
    .goto Undercity,45.25,39.20,10,0
    .goto Undercity,45.67,43.60,10,0
    .zone Undercity >>Volte para a Cidade Baixa pelos esgotos
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carendin|r no Bairro da Magia
    .turnin 1473 >>Entregue Criatura do caos
    .accept 1471 >>Aceite A Vinculação
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>|cRXP_WARN_Use as|r |T134416:0|t[Runas de Evocação] |cRXP_WARN_no Círculo de Evocação|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Abate o |cRXP_ENEMY_Invocado Emissário do Caos|r
    .complete 1471,1 --Kill Summoned Voidwalker (1)
    .mob Summoned Voidwalker
    .use 6284
    .isQuestAvailable 1504
step << Warlock
    .goto Undercity,85.04,25.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carinda|r
    .turnin 1471 >>Entregue A Vinculação
    .target Carendin Halgar
    .isQuestAvailable 1504
step << skip --Warlock
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_realize um Logout Pular posicionando seu personagem na parte mais alta da escada mais baixa até parecer que está flutuando, depois saia e entre novamente|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_Clique aqui para ver um exemplo|r
    >>|cRXP_WARN_se você não conseguir fazer isso, apenas saia de Undercity normalmente|r
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >>Saia de Undercity
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith next
    >>Abate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os para obter |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,47.60,44.03,150 >>Vá para o noroeste em direção a Agamand Mills
    .isOnQuest 362
step
    #optional
    #completewith MillsOverun
    >>|T134939:0|t[|cRXP_LOOT_Thurman's Carta|r] |cRXP_WARN_Pode cair desses inimigos. Aceite a missão se cair.|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
    .isOnQuest 362
step
    #optional
    #completewith ThurmanGregor
    >>Mate os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saqueie-os pelos seus |cRXP_LOOT_Ribs|r e |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #optional
    #label KillDevlin
    .goto Tirisfal Glades,47.34,40.78
    >>Mate |cRXP_ENEMY_Devlin|r. Saque-o pelos seus |cRXP_LOOT_Restos|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    #optional
    .goto Tirisfal Glades,49.34,36.02
    >>Mate |cRXP_ENEMY_Nissa|r. Saque-a pelos seus |cRXP_LOOT_Restos|r. Ela pode estar dentro do prédio
    .complete 354,2 --Nissa's Remains (1)
    .mob Nissa Agamand
    .isOnQuest 354
step
    #optional
    #label ThurmanGregor
    #loop
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mate os |cRXP_ENEMY_Thurman|r e |cRXP_ENEMY_Gregor|r. Saque-os por seus |cRXP_LOOT_Remains|r. Eles podem patrulhar por aí
    .complete 354,3 --Thurman's Remains (1)
    .unitscan +Thurman Agamand
    .complete 354,1 --Gregor's Remains (1)
    .unitscan +Gregor Agamand
    .isOnQuest 354
step
    #loop
    #label MillsOverun
    .goto Tirisfal Glades,45.08,31.15,0
    .goto Tirisfal Glades,43.71,35.25,60,0
    .goto Tirisfal Glades,45.03,30.99,60,0
    .goto Tirisfal Glades,46.79,29.80,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,42.82,31.93,60,0
    .goto Tirisfal Glades,45.08,31.15,60,0
    >>Mate os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saqueie-os pelos seus |cRXP_LOOT_Ribs|r e |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #optional
    #requires MillsOverun
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >>Desça pelos morros.
    >>|cRXP_WARN_Tenha cuidado. Não sofra muito dano de queda. Siga o ponto de referência para segurança|r
    .isQuestComplete 354
step
    #optional
    #requires MillsOverun
    #completewith next
    >>Mate os |cRXP_ENEMY_Gnolls|r e os |cRXP_ENEMY_Mongrels|r. Saque-os por seus |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .mob +Rot Hide Mongrel
    .complete 358,1 --Rot Hide Graverobber (8)
    .mob +Rot Hide Graverobber
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Mongrel
    .mob +Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Mate o |cRXP_ENEMY_Olho de Verme|r. Saqueie-o para pegar a |cRXP_LOOT_Paw|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #loop
    .goto Tirisfal Glades,59.54,27.86,0
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    >>Mate os |cRXP_ENEMY_Murlocs|r. Saque-os por seu |cRXP_LOOT_Escamoso|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
step
    #optional
    #completewith RotHideGnolls
    >>Abate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os para obter |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label RotHideGnolls
    #loop
    .goto Tirisfal Glades,56.43,43.92,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    >>Mate os |cRXP_ENEMY_Mongrels|r e os |cRXP_ENEMY_Roubacovas|r. Saque-os por seu |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .mob +Rot Hide Mongrel
    .complete 358,1 --Rot Hide Graverobber (8)
    .mob +Rot Hide Graverobber
    .complete 358,3 --Embalming Ichor (8)
    .mob +Rot Hide Mongrel
    .mob +Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r
    .turnin 426 >>Vá para Os Moinhos Invadidos
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Entregue Uma Nova Peste
    .accept 369 >>Aceite Uma Nova Peste
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 369 >>Aceite Uma Nova Peste
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Entregue Wanted: Olho de Verme
    .turnin 370 >>Entregue Em Guerra com a Cruzada Escarlate
    .accept 371 >>Aceite Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
    .isQuestComplete 370
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .turnin 398 >>Entregue Wanted: Olho de Verme
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zygand|r
    .accept 371 >>Aceite Em Guerra com a Cruzada Escarlate
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r e |cRXP_FRIENDLY_Sevren|r
    .turnin 358 >>Entregue Roubacovas
    .accept 359 >>Aceite Deveres Renegados
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dillinger|r, |cRXP_FRIENDLY_Johaan|r, |cRXP_FRIENDLY_Zygand|r e |cRXP_FRIENDLY_Sevren|r
    .accept 359 >>Aceite Deveres Renegados
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #completewith HorrorsandSpirits
    +|cRXP_WARN_Vincule seu|r |T133849:0|t[Lerdo Sand]|cRXP_WARN_. Guarde-o para situações de emergência|r
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_de|r |cRXP_FRIENDLY_ela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yvette|r, |cRXP_FRIENDLY_Coleman|r e |cRXP_FRIENDLY_Gretchen|r dentro da estalagem
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar|r
    .turnin 361 >>Entregue A Carta Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Entregue O Frio da Morte
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Coleman|r e |cRXP_FRIENDLY_Gretchen|r na estalagem
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Entregue O Frio da Morte
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yvette|r e |cRXP_FRIENDLY_Coleman|r na estalagem
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar|r
    .turnin 361 >>Entregue A Carta Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coleman|r na estalagem
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .group
    .isQuestComplete 354
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yvette|r, |cRXP_FRIENDLY_Coleman|r e |cRXP_FRIENDLY_Gretchen|r dentro da estalagem
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar|r
    .turnin 361 >>Entregue A Carta Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Entregue O Frio da Morte
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Coleman|r e |cRXP_FRIENDLY_Gretchen|r na estalagem
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .turnin 375 >>Entregue O Frio da Morte
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .isQuestComplete 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yvette|r e |cRXP_FRIENDLY_Coleman|r na estalagem
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar|r
    .turnin 361 >>Entregue A Carta Undelivered
    .target +Yvette Farthing
    .goto Tirisfal Glades,61.58,52.60
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .isOnQuest 361
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coleman|r na estalagem
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os Moinhos Assombrados
    .accept 355 >>Aceite Fale com Sevren
    .goto Tirisfal Glades,61.72,52.29
    .target Coleman Farthing
    .isQuestComplete 354
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coleman|r na estalagem
    .turnin 1820 >>Entregue Falar com Coleman
    .accept 1821 >>Aceite Agamand Heranças
    .group
    .isQuestTurnedIn 1819
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coleman|r na estalagem
    .turnin 1820 >>Entregue Falar com Coleman
    .solo
    .isQuestTurnedIn 1819
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 588 >>Treine |T135926:0|t[Fogo Interior]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 145 >>Treine |T135812:0|t[Bola de Fogo Rank 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 7384 >>Aprenda |T132223:0|t[Subjugar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1766 >>Aprenda |T132219:0|t[Chute]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755 >>Treine |T136168:0|t[Funil de Vida]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r. << Mage/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r << Warlock/Hunter
    .vendor >>Lixo de Comerciante
    .collect 1179,20,359,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,359,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,359,1 << Warlock/Hunter --Ice Cold Milk (15)
    .collect 4605,15,359,1 << Warlock/Hunter --Red-speckled Mushroom (15)
    .money <0.050 << !Warlock !Hunter
    .money <0.075 << Warlock/Hunter
    .target Innkeeper Renee
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 359 >>Entregue Deveres Renegados
    .accept 360 >>Aceite Retornar ao Magistrado
    .accept 356 >>Aceite Patrulha da Retaguarda
    .target Deathguard Linnea
    .isQuestTurnedIn 358
    .maxlevel 13
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .accept 356 >>Aceite Patrulha da Retaguarda
    .target Deathguard Linnea
    .maxlevel 13
step
    #optional
    #completewith HorrorsandSpirits
    >>Abate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os para obter |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Horrores Sangrentos|r e |cRXP_ENEMY_Espíritos Errantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Saque qualquer planta no chão para obter uma |cRXP_PICK_Balnir Snapdragon|r
    .complete 1882,1 --Balnir Snapdragons (1)
step
    #optional
    #label HorrorsandSpirits
    #loop
	.goto Tirisfal Glades,74.31,60.98,0
	.goto Tirisfal Glades,74.31,60.98,50,0
	.goto Tirisfal Glades,74.45,59.64,50,0
	.goto Tirisfal Glades,75.08,58.56,50,0
	.goto Tirisfal Glades,76.45,58.67,50,0
	.goto Tirisfal Glades,77.41,58.66,50,0
	.goto Tirisfal Glades,78.55,60.43,50,0
	.goto Tirisfal Glades,77.45,61.46,50,0
	.goto Tirisfal Glades,76.79,62.60,50,0
	.goto Tirisfal Glades,74.99,61.98,50,0
    >>Mate |cRXP_ENEMY_Horrores Sangrentos|r e |cRXP_ENEMY_Espíritos Errantes|r
    .complete 356,1 --Bleeding Horror (8)
    .mob +Bleeding Horror
    .complete 356,2 --Wandering Spirit (8)
    .mob +Wandering Spirit
    .isOnQuest 356
step << Priest/Warlock
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_Colete 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_para sua Varinha Mágica Inferior. Esta é a última chance de conseguir o suficiente antes da Floresta de Pinhaprata|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 371
step
    #optional
    #completewith next
    >>Colete |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step
    #optional
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,78.82,56.14,20,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Mate |cRXP_ENEMY_Capitão Vidálio|r e |cRXP_ENEMY_Frades Escarlates|r
    >>|cRXP_WARN_Tenha cuidado!|r |cRXP_ENEMY_Frades Escarlates|r |cRXP_WARN_podem lançar|r |T135929:0|t[Cura Inferior]
    .complete 371,1 --Captain Vachon (1)
    .mob +Captain Vachon
    .complete 371,2 --Scarlet Friar (5)
    .mob +Scarlet Friar
    .isOnQuest 371
step
    #optional
    #label ScarletRings
     #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>Colete |cRXP_LOOT_Scarlet Insignia Rings|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .mob Scarlet Friar
    .mob Scarlet Zealot
    .isOnQuest 374
step << Priest/Warlock
    #loop
    .goto Tirisfal Glades,79.82,56.40,0
    .goto Tirisfal Glades,80.95,57.21,40,0
    .goto Tirisfal Glades,81.62,54.84,40,0
    .goto Tirisfal Glades,81.56,53.07,40,0
    .goto Tirisfal Glades,79.31,55.25,40,0
    .goto Tirisfal Glades,77.14,54.92,40,0
    .goto Tirisfal Glades,76.15,55.30,40,0
    .goto Tirisfal Glades,76.12,57.22,40,0
    .goto Tirisfal Glades,77.16,56.75,40,0
    .goto Tirisfal Glades,79.82,56.40,40,0
    >>|cRXP_WARN_Colete 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_para sua Varinha Mágica Inferior. Esta é a última chance de conseguir o suficiente antes da Floresta de Pinhaprata|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Abate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os para obter |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #loop
    .goto Tirisfal Glades,85.03,54.72,0
    .goto Tirisfal Glades,83.50,55.56,30,0
    .goto Tirisfal Glades,85.03,54.72,30,0
    .goto Tirisfal Glades,86.56,54.51,30,0
    .goto Tirisfal Glades,88.06,54.99,30,0
    .goto Tirisfal Glades,88.94,53.56,30,0
    .goto Tirisfal Glades,89.70,51.88,30,0
    .goto Tirisfal Glades,90.92,50.56,30,0
    .goto Tirisfal Glades,90.87,48.33,30,0
    .goto Tirisfal Glades,89.87,46.65,30,0
    .goto Tirisfal Glades,85.04,46.68,30,0
    .goto Tirisfal Glades,84.52,49.29,30,0
    .goto Tirisfal Glades,83.46,52.09,30,0
    >>Mate os |cRXP_ENEMY_Vicious Noite Teia Aranhas|r. Saqueie-os pelo |cRXP_LOOT_Venenom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
    .isOnQuest 369
step
    #optional
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >>Viaje de volta para |cRXP_FRIENDLY_Linnea|r
    .isQuestComplete 356
step
    #optional
    #completewith next
    >>Conclua de matar os |cRXP_ENEMY_Duskbats|r. Saqueie-os para obter as |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Você pode pular esta missão se seu rng foi ruim|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .turnin 356 >>Entregue Patrulha da retaguarda
    .target Deathguard Linnea
    .isQuestComplete 356
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_de|r |cRXP_FRIENDLY_ela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Sevren|r e |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Entregue Proof of Óbito
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Entregue Em Guerra com a Cruzada Escarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Entregue Retornar ao Magistrado
    .turnin 355 >>Entregue Falar com Sevren
    .accept 408 >>Aceite A Cripta da Família
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Entregue Uma Nova Peste
    .accept 492 >>Aceite Uma Nova Peste
    .accept 445 >>Aceite Entrega to Floresta de Pinhaprata
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isQuestComplete 371
    .isQuestComplete 374
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Burgess|r, |cRXP_FRIENDLY_Zygand|r, |cRXP_FRIENDLY_Sevren|r e |cRXP_FRIENDLY_Johaan|r
    .turnin 374 >>Entregue Proof of Óbito
    .target +Deathguard Burgess
    .goto Tirisfal Glades,60.93,52.01
    .turnin 371 >>Entregue Em Guerra com a Cruzada Escarlate
    .target +Executor Zygand
    .goto Tirisfal Glades,60.58,51.77
    .turnin 360 >>Entregue Retornar ao Magistrado
    .turnin 355 >>Entregue Falar com Sevren
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Entregue Uma Nova Peste
    .accept 492 >>Aceite Uma Nova Peste
    .accept 445 >>Aceite Entrega to Floresta de Pinhaprata
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isQuestComplete 371
    .isQuestComplete 374
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sevren|r e |cRXP_FRIENDLY_Johaan|r
    .turnin 360 >>Entregue Retornar ao Magistrado
    .turnin 355 >>Entregue Falar com Sevren
    .accept 408 >>Aceite A Cripta da Família
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Entregue Uma Nova Peste
    .accept 492 >>Aceite Uma Nova Peste
    .accept 445 >>Aceite Entrega to Floresta de Pinhaprata
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isOnQuest 360
    .isQuestComplete 369
    .group
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sevren|r e |cRXP_FRIENDLY_Johaan|r
    .turnin 360 >>Entregue Retornar ao Magistrado
    .turnin 355 >>Entregue Falar com Sevren
    .target +Magistrate Sevren
    .goto Tirisfal Glades,61.26,50.84
    .turnin 369 >>Entregue Uma Nova Peste
    .accept 492 >>Aceite Uma Nova Peste
    .accept 445 >>Aceite Entrega to Floresta de Pinhaprata
    .target +Apothecary Johaan
    .goto Tirisfal Glades,59.45,52.39
    .isOnQuest 360
    .isQuestComplete 369
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entregue Uma Nova Peste
    .accept 492 >>Aceite Uma Nova Peste
    .accept 445 >>Aceite Entrega to Floresta de Pinhaprata
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r acima
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 588,1 >>Treine |T135926:0|t[Fogo Interior]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 145,1 >>Treine |T135812:0|t[Bola de Fogo Rank 3]
    .target Cain Firesong
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Aprenda |T132223:0|t[Subjugar]
    .target Austil de Mon
    .xp <12,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1766,1 >>Aprenda |T132219:0|t[Chute]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755,1 >>Treine |T136168:0|t[Funil de Vida]
    .target Rupert Boch
    .xp <12,1
step
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >>Vá para a cripta em Agamand Mills
    .isOnQuest 408
    .group
step << Warrior
    #completewith CaptainDargol
    >>Pegue o |cRXP_PICK_Agamand Arma Racks|r no chão
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Ancestrais Ululantes|r e os |cRXP_ENEMY_Ancestrais Infectos|r
    >>|cRXP_WARN_Tenha cuidado! Os inimigos nesta cripta reaparecem dinamicamente!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
    .group 2
step
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Mate o |cRXP_ENEMY_Capitão Dargol|r. Saqueie seu |cRXP_LOOT_Crânio|r. Ele está no fundo da cripta
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
    .group 2
step << Warrior
    #completewith next
    >>Pegue o |cRXP_PICK_Agamand Arma Racks|r no chão
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step
    #loop
	.goto Tirisfal Glades,51.90,26.87,0
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Mate os |cRXP_ENEMY_Ancestrais Ululantes|r e os |cRXP_ENEMY_Ancestrais Infectos|r
    >>|cRXP_WARN_Tenha cuidado! Os inimigos nesta cripta reaparecem dinamicamente!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
    .group 2
step << Warrior
    #loop
    .goto Tirisfal Glades,52.66,25.87,0
    .goto Tirisfal Glades,51.70,25.69,12,0
    .goto Tirisfal Glades,52.62,25.62,12,0
    .goto Tirisfal Glades,52.65,27.02,12,0
    .goto Tirisfal Glades,51.89,27.10,12,0
    .goto Tirisfal Glades,52.66,25.87,12,0
    >>Pegue o |cRXP_PICK_Agamand Arma Racks|r no chão
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
    .group 2
step << skip
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Pule em uma das estantes de armas. Faça um Logout Pular desconectando e reconectando|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >>https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_CLIQUE AQUI para ver um exemplo|r
    .isQuestComplete 408
    .group
step
    #completewith NewPlagueFinal
    .subzone 159 >>Viaje para Brill
    .group
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sevren|r
    .turnin 408 >>Entregue A Cripta da Família
    .target Magistrate Sevren
    .isQuestComplete 408
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coleman|r na estalagem
    .turnin 1821 >>Entregue Agamand Heirlooms
    .target Coleman Farthing
    .isQuestComplete 1821
    .group
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coleman|r na estalagem
    .turnin 1822 >>Herança de Arma - Missão
    .target Coleman Farthing
    .isQuestTurnedIn 1821
    .group
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Zelote Escarlate Capturado|r no andar de baixo, nos fundos da estalagem
    .turnin 407 >>Entregue Campos de mágoa
    .target Captured Scarlet Zealot
    .isOnQuest 407
step
    #label NewPlagueFinal
    #optional
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Capturado|r no andar de baixo, nos fundos da estalagem
    .turnin 492 >>Entregue Uma Nova Peste
    .target Captured Mountaineer
    .isOnQuest 492
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 588,1 >>Treine |T135926:0|t[Fogo Interior]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    #optional
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beryl|r no segundo andar
	.train 6074 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 145,1 >>Treine |T135812:0|t[Bola de Fogo Rank 3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    #optional
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 2137 >>Treine suas magias de classe
    .target Cain Firesong
    .xp <14,1
step << Warrior
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 7384,1 >>Aprenda |T132223:0|t[Subjugar]
    .target Austil de Mon
    .xp <12,1
    .xp >14,1
step << Warrior
    #optional
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 1160 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1766,1 >>Aprenda |T132219:0|t[Chute]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    #optional
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion|r no segundo andar
    .train 1758 >>Treine suas magias de classe
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755,1 >>Treine |T136168:0|t[Funil de Vida]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
    #optional
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 6222 >>Treine suas magias de classe
    .target Rupert Boch
    .xp <14,1
step << Mage
    #completewith next
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step << Mage
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r no Bairro da Magia
    .turnin 1882 >>Entregue The Balnir Farmstead
    .target Anastasia Hartwell
step << Rogue
    #completewith Swordtraining3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #completewith Swordtraining3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Undead
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step << !Undead
    #completewith UCflightpath3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
step << !Undead
    #label UCflightpath3
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fp Undercity >>Aprenda a rota de voo de Undercity
    >>|cRXP_WARN_Pule este passo se você já pegou o voo!|r
    .target Michael Garrett
step << Orc Rogue/Troll Rogue
    #ssf
    #optional
    #label RogueCutlass3
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Orc Rogue/Troll Rogue
    #ah
    #optional
    #label RogueCutlass3
    .goto Undercity,61.15,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Luis Baracho|r no Distrito Comercial
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Rogue
    #label Swordtraining3
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Arquibaldo|r no Bairro da Guerra
    .train 201 >>Treine Espadas de Uma Mão
    .target Archibald
    .money <0.1
    .zoneskip Undercity,1
step << Rogue
    .goto Undercity,77.08,49.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Charles|r |cRXP_BUY_ no Bairro dos Ladinos. Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1,435,1 --Collect Cutlass (1)
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Charles Seaton
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Undead Warrior
    #completewith Entersilverpine
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Undead Warrior
    #completewith Entersilverpine
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador para a Undercity
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dele|r
    .collect 854,1,435,1 --Collect Quarter Staff (1)
    .money <0.3022
    .target Breno Pugna
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_do Auction House|r
    >>|cRXP_WARN_Pule isto se quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lavinia|r
    .train 7411 >>Aprenda |T136244:0|t[Encantamento]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Victor|r
    .train 3908 >>Aprenda |T136249:0|t[Alfaiataria]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Transforme todo seu|r |T132889:0|t[Linho] |cRXP_WARN_em|r |T132890:0|t[Rebite of Linho]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.06,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Victor|r
    .train 7623 >>Treine |T132662:0|t[Veste de Linho Marrom]
    .target Victor Ward
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Millie|r
    >>|cRXP_BUY_Compre |r |T132891:0|t[Fio Grosso] |cRXP_BUY_dela|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Crie o máximo de|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que conseguir|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Tadeu Uchoa|r|cRXP_BUY_. Compre um|r |T133942:0|t[Bastão de Cobre] |cRXP_BUY_e|r |T135435:0|t[Madeira Simples] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Desencante todas as|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que você fez e crie um|r |T135225:0|t[Bastão Rúnico de Cobre]
    >>|cRXP_WARN_Se você não obteve um|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_então compre um de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_se houver um disponível. Caso contrário, termine este passo depois|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Augusto Incantum|r
    .train 14293 >>Aprenda |T135139:0|t[Varinha Mágica Inferior]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    >>|cRXP_WARN_Criar uma|r |T135139:0|t[Varinha Mágica Inferior]
    >>|cRXP_WARN_Se você não obteve um|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_então compre um de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_se houver um disponível. Caso contrário, termine este passo depois|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest/Warlock
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe a|r |T135139:0|t[Varinha Mágica Inferior]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #optional
    .abandon 806 >>Abandone Tempestades sombrias
    .isOnQuest 806
step
    #optional
    .abandon 408 >>Abandone A Cripta da Família
    .isOnQuest 408
step << Warrior
    #optional
    .abandon 1821 >>Abandone Agamand Heirlooms
    .isOnQuest 1821
step << Shaman/Hunter
    #optional
    .abandon 816 >>Abandone Em Memória
step
    #label LeaveUndercity3
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
    .zoneskip Tirisfal Glades
    .zoneskip Silverpine Forest
step
    #label Entersilverpine
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
    .zoneskip Silverpine Forest
]])
