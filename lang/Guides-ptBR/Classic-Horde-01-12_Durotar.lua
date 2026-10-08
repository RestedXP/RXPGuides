if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 1-6 Durotar
#version 11
#group Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 6-10 Durotar


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado a Orcs e Trolls. Escolha a mesma zona inicial em que você inicia|r
step << !Troll Mage
    #season 2
    #completewith next
    +Na Temporada da Descoberta, você NÃO deve começar fora da zona iniciante de sua raça como um Mago, pois você não conseguirá obter sua primeira runa aqui (|T133816:0|t[Gravar Luvas - Lança de Gelo])
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
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
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
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Vá até |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Vá até |cRXP_FRIENDLY_Hraug|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Vá até |cRXP_FRIENDLY_Hraug|r
step << Warlock
    #softcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Comerciante Lixo
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Comerciante Lixo
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Aceite Poder Roubado
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Nartok
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Nartok
step << !Warrior !Rogue
    #softcore
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
    .goto Durotar,43.57,67.28,25,0
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
    #season 2
    #label Sarkoth
    .goto Durotar,40.60,66.80
    >>Mate |cRXP_ENEMY_Sarkoth|r. Saqueie-o para pegar |cRXP_LOOT_Garra Mutilada de Sarkoth|r << !Hunter !Warrior
    .complete 790,1 --Sarkoth's Mangled Claw (1)
    .mob Sarkoth
step
    #season 0
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
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
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
    .xp 3+325 >>Tritúre até 325+/1400xp << Warlock
    .xp 3+925 >>Tritúre até 925+/1400xp << Warrior/Shaman/Hunter
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
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
    .xp 3+685 >>Mate inimigos até atingir 685+/1400 de xp
    .mob Mottled Boar
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Triturar os |cRXP_ENEMY_Mottled Boars|r. Saque-os até que você tenha 1 silver de valor em itens do vendedor|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Farme |cRXP_ENEMY_Mottled Boars|r. Saqueie-os até conseguir itens de vendedor no valor de 2 prata|r << Warrior
	>>|cRXP_WARN_Farme |cRXP_ENEMY_Mottled Boars|r. Saqueie-os até conseguir itens de vendedor no valor de 1 prata 75 cobre|r << Warlock
	>>|cRXP_WARN_Farme |cRXP_ENEMY_Mottled Boars|r. Saqueie-os até conseguir itens de vendedor no valor de 1 prata 10 cobre|r << Hunter
	>>|cRXP_WARN_Triturar os |cRXP_ENEMY_Mottled Boars|r. Saque-os até que você tenha 1 silver de valor em itens do vendedor|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
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
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Vá até |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entregue Tabuleta cifrada << Troll Rogue
    .turnin 3088 >>Entregue Pergaminho Cifrado << Orc Rogue
    .train 53 >>Aprenda |T132090:0|t[Punhalada pelas Costas]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
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
    #season 2
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entregue Pergaminho Maculado
    .accept 77586 >>Aceite Poder Roubado
    .target Nartok
step << Warlock
    #season 0
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
    #xprate <1.5
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
step << !Rogue
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Duokna|r
    >>|cFF0E8312Compre|r |T132794:0|t[Água Refrescante da Fonte] |cFF0E8312dela|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Compre|r |T132382:0|t[Rough Flechas] |cFF0E8312dela|r << Hunter
    >>|cRXP_WARN_Economize 10 cobre para treinar|r |T135932:0|t[Inteligência Arcana] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>Comerciante Lixo
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >>Comerciante Lixo
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >>Comerciante Lixo
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Entregue Tabuleta Runa-Inscrita - Missão << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .accept 77587 >>Aceite Ícones de Poder << Troll Shaman
    .accept 77585 >>Aceite Ícones de Poder << Orc Shaman
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Aceite Clamor da Terra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entregue Tabuleta Runa-Inscrita - Missão << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .accept 77587 >>Aceite Ícones de Poder << Troll Shaman
    .accept 77585 >>Aceite Ícones de Poder << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entregue Tabuleta Runa-Inscrita - Missão << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entregue Tabuleta glífica << Troll
    .accept 77643 >>Aceite Pesquisa de Feitiços << Troll Mage
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entregue Tabuleta glífica << Troll
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .accept 792 >>Aceite Familiares torpes
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .accept 77590 >>Aceite Terreno Acidentado << Troll Hunter
    .accept 77584 >>Aceite Caçada pela Runa << Orc Hunter
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Jen'shan
    .money <0.01
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .accept 77590 >>Aceite Terreno Acidentado << Troll Hunter
    .accept 77584 >>Aceite Caçada pela Runa << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .accept 77590 >>Aceite Terreno Acidentado << Troll Hunter
    .accept 77584 >>Aceite Caçada pela Runa << Orc Hunter
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Jen'shan
    .money <0.01
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .target Jen'shan
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .accept 77588 >>Aceite Prova de Resistência << Troll
    .accept 77582 >>Aceite Prova de Resistência << Orc
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .accept 77588 >>Aceite Prova de Resistência << Troll
    .accept 77582 >>Aceite Prova de Resistência << Orc
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .accept 77588 >>Aceite Prova de Resistência << Troll
    .accept 77582 >>Aceite Prova de Resistência << Orc
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Entregue Tabuleta consagrada
    .accept 77642 >>Aceite Sabedoria dos Loas
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kzan|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Aceite Peões preguiçosos
    .target Foreman Thazz'ril
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>Vá para a estátua da |cRXP_FRIENDLY_Loa Serpente|r em Sen'Jin Village e digite /kneel
    .use 205951 >>Fale com |cRXP_FRIENDLY_Loa Serpente|r conforme ele aparece, depois use |T136222:0|t[|cRXP_FRIENDLY_Memória de um Acólito Conturbado|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Entregue Sabedoria dos Loas
    .target Ken'jai
step
    #completewith Sting
    >>Pegue as |cRXP_LOOT_Sabras|r perto dos Cactos
    .complete 4402,1 --Cactus Apple (10)
step
    #completewith Tails
    .goto Durotar,44.98,69.13,20,0
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
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Abate os |cRXP_ENEMY_Familiares Torpes|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << Shaman
    #season 2
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
    >>Mate os |cRXP_ENEMY_Escorpídeos Operários|r. Saqueie-os para |T134918:0|t[|cRXP_FRIENDLY_Dyadic Ícone|r]
    .collect 206381,1,77587,1 << Troll Shaman --Dyadic Icon (1)
    .collect 206381,1,77585,1 << Orc Shaman --Dyadic Icon (1)
    .mob Scorpid Worker
    .train 410094,1
step << Shaman
    #season 2
    .equip 18,206381 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Diádico]|r
    .use 206381
    .itemcount 206381,1 --Dyadic Icon (1)
    .train 410094,1
    .xp <3,1
step << Shaman
    #season 2
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
    .aura 408828 >>Continue matando os |cRXP_ENEMY_Escorpídeos Operários|r e obtenha 10 camadas de |T237556:0|t[Inspiração para Construir] conforme eles causam dano de natureza para você
    .mob Scorpid Worker
    .train 410094,1
    --User must be level 3 to be able to use item!
step << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Abate os |cRXP_ENEMY_Familiares Torpes|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
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
    >>Abate os |cRXP_ENEMY_Familiares Torpes|r
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
    >>|cRXP_WARN_Use o|r |T133486:0|t[Cassetete do Encarregado] |cRXP_WARN_nos |r|cRXP_FRIENDLY_Peões Preguiçosos|r adormecidos
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
step
    #xprate <1.5
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
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
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
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .turnin 77587 >>Entregue Ícones de Poder << Troll Shaman
    .turnin 77585 >>Entregue Ícones de Poder << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>Aceite Clamor da Terra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Aceite Clamor da Terra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Treine suas magias de classe
    .turnin 3085 >>Entregue Tabuleta consagrada
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .turnin 3085 >>Entregue Tabuleta consagrada
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .turnin 3085 >>Entregue Tabuleta consagrada
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 792 >>Entregue Familiares Torpes
    .accept 794 >>Aceite Medalhão da Lâmina Ardente
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .turnin 77590 >>Entregue Terreno Acidentado << Troll Hunter
    .turnin 77584 >>Entregue Caçadores da Runa Perdida << Orc Hunter
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Entregue Terreno Acidentado << Troll Hunter
    .turnin 77584 >>Entregue Caçadores da Runa Perdida << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
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
    #optional
    #xprate <1.5
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
    #xprate <1.5
    #optional
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
    >>Mate os |cRXP_ENEMY_Espreitadores Vis|r. Saqueie-os para |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step
    #optional
    #xprate <1.5
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
    .xp 5+1680 >>Mate inimigos até atingir 1680+/2800 de xp << !Shaman
    .xp 5+690 >>Mate inimigos até atingir 690+/2800 de xp << Shaman
    .isQuestTurnedIn 4402
step
    #xprate <1.5
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
    .xp 5+1300 >>Mate inimigos até atingir 1300+/2800 de xp << !Shaman
    .xp 5+310 >>Mate inimigos até atingir 310+/2800 de xp << Shaman
    .isOnQuest 4402
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Realize um pulo de logout posicionando seu personagem na borda da rocha até parecer que está flutuando, depois saia e entre novamente|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >>https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLIQUE AQUI para um exemplo
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >>|cRXP_WARN_Morra e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r perto da seta|r
    .target Anjo da Cura
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Você pode falar com ele pelo lado de fora ou de cima do bunker|r
    .accept 784 >>Aceite Aniquile os invasores
    .target Gar'thok
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Siga em direção à torre
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Vá pela torre em direção a Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Aceite Carregue o Seu Peso
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir ao Vale das Provações
    .use 6948
step
    #xprate <1.5
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
    .money >0.03
step
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 794 >>Entregue Medalhão da Lâmina Ardente
    .accept 805 >>Aceite Apresente-se na Aldeia Sen'jin
    .target Zureetha Fargaze
step << Priest
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >>Aceite Em favor da espiritualidade
	.train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Ken'jai
step << Mage
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .turnin 77643 >>Entregue Pesquisa de Feitiços
    .target Mai'ah
    .isQuestComplete 77643
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Entregue Chamado da Terra
    .accept 1517 >>Aceite Clamor da Terra
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
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
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .target Rwag
    .xp <6,1
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
    >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Pacto de Sangue] |cRXP_BUY_dela|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Comerciante Lixo
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .turnin 77586 >>Entregue Poder Roubado
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
    .turnin 77586 >>Entregue Poder Roubado
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
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
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 6-10 Durotar
#version 11
#group Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Durotar

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Aceite O fardo de um peão
    .target Ukor
step
    #completewith next
    .subzone 367 >>Vá para Sen'Jin Village
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lar|r. Ele patrulha um pouco
    .accept 786 >>Aceite Frustrando o ataque dos Kolkar
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
    .turnin 805 >>Entregue Apresente-se na Aldeia Sen'jin
    .accept 808 >>Aceite O Crânio de Minshina
    .accept 826 >>Aceite Zalazane
    .accept 823 >>Aceite Apresente-se a Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>Entre na cabana grande
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compre um|r |T132414:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
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
    .money <0.0050
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
    .collect 2495,1,786,1 --Collect Walking Stick (1)
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
    .collect 2494,1,786,1 --Collect Stiletto (1)
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
    .collect 2491,1,786,1 --Collect Large Axe (1)
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
    .collect 2490,1,786,1 --Collect Tomahawk (1)
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
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
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
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machadinha]
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
step << Warrior/Rogue
    #softcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios] |cRXP_WARN_e minere todo Veio de Cobre que encontrar para pegar|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r|cRXP_WARN_. Faça|r |T135248:0|t[Pedra de Afiar] |cRXP_WARN_com elas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #xprate >1.49
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Corra pela praia. Mate os |cRXP_ENEMY_Rastejadores|r e |cRXP_ENEMY_Makruras|r. Saque-os pelos seus |cRXP_LOOT_Muco|r e |cRXP_LOOT_Olhos|r. Você não precisa terminar este passo aqui.
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #xprate >1.49
    .goto Durotar,54.17,82.60,75 >>Chegue ao fim da praia
step
    #xprate <1.5
    #completewith next
    .goto Durotar,58.54,75.89,40,0
    .goto Durotar,57.73,77.91,40,0
    .goto Durotar,55.72,79.62,40,0
    .goto Durotar,54.23,82.26,40,0
    .goto Durotar,52.20,83.00,40,0
    >>Corra pela praia. Mate os |cRXP_ENEMY_Rastejadores|r e |cRXP_ENEMY_Makruras|r. Saque-os pelos seus |cRXP_LOOT_Muco|r e |cRXP_LOOT_Olhos|r. Você não precisa terminar este passo aqui.
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
    #completewith Bonfire
    >>Mate |cRXP_ENEMY_Mourejantes Kolkar|r e os |cRXP_ENEMY_Vanguardeiros Kolkar|r. Saqueie-os para pegar os |cRXP_LOOT_Retalhos de Lona|r
--   >>|cRXP_WARN_Do not focus on completing this|r
    .complete 791,1 --Canvas Scraps (8)
    .isOnQuest 791
step
    #xprate <1.5
    .goto Durotar,50.9,79.2,30 >>Entre na base dos Kolkar
    .isOnQuest 786
step << Priest
    #xprate <1.5
    #sticky
    #softcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Comece a juntar 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_enquanto faz missões em Durotar. Elas serão usadas para fabricar sua varinha mais adiante|r
    >>|cRXP_WARN_Pule esta etapa se você já comprou uma varinha ou puder conseguir uma barata na Casa de Leilões.|r
    .collect 2589,60 --Linen Cloth (60)
step << Priest
    #xprate <1.5
    #sticky
    #hardcore
    #label Linen
    #completewith HorrorsandSpirits
    >>|cRXP_WARN_Comece a juntar 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_enquanto faz missões em Durotar. Elas serão usadas para fabricar sua varinha mais adiante|r
    .collect 2589,60 --Linen Cloth (60)
step
    #sticky
    #xprate <1.5
    #completewith Bonfire
    +|cRXP_WARN_Tome cuidado se|r |cRXP_ENEMY_Senhor da Guerra Kolkanis|r |cRXP_WARN_estiver por perto, ele é um inimigo raro de nível 9. Talvez você precise usar uma |r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma|r
    .unitscan Warlord Kolkanis
step << Warrior
    #xprate <1.5
    #season 2
    #completewith Bonfire
    >>Abate os |cRXP_ENEMY_Kolkar Drudges|r e os |cRXP_ENEMY_Kolkar Outrunners|r. Saque-os para uma |cRXP_LOOT_Severed Centaur Cabeça|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
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
step << Warrior
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    >>Abate os |cRXP_ENEMY_Kolkar Drudges|r e os |cRXP_ENEMY_Kolkar Outrunners|r. Saque-os para uma |cRXP_LOOT_Severed Centaur Cabeça|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #xprate <1.5
    #softcore
    .goto Durotar,46.43,79.25,-1
    .goto Durotar,57.50,73.26,-1
    .deathskip >>Morra na fogueira e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 786
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,50.95,79.14,30 >>Saia da base dos Kolkar
    .isQuestComplete 786
step
    #hardcore
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lar|r. Ele patrulha um pouco
    .turnin 786,1 >>Entregue Frustrando o ataque dos Kolkar << Shaman
    .turnin 786 >>Entregue Frustrando o ataque dos Kolkar << !Shaman
    .target Lar Prowltusk
    .isQuestComplete 786
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
    .collect 2495,1,823,1 --Collect Walking Stick (1)
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
    .collect 2494,1,823,1 --Collect Stiletto (1)
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
    .collect 2491,1,823,1 --Collect Large Axe (1)
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
    .collect 2490,1,823,1 --Collect Tomahawk (1)
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
    .collect 2506,1,823,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
    .use 3131
    .itemcount 3131,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.9
step << Shaman
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Rogue
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Orc Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T132401:0|t[Machado Largo]
    .use 2491
    .itemcount 2491,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Troll Warrior
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Hunter
    #xprate <1.5
    #optional
    #completewith TravelToTiragarde
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
    #xprate <1.5
    .goto Durotar,55.62,73.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hai'zan|r
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r
    .vendor >>Lixo Comerciante
    .collect 2287,10,823,1 --Haunch of Meat (10)
    .money <0.025
    .target Hai'zan
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (20)
    .collect 159,20,784,1
    .target K'waii
    .money <0.010
step << Warlock/Mage/Priest
    #xprate <1.5
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_K'waii|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r --Refreshing Spring Water (10)
    .collect 159,10,784,1
    .target K'waii
    .money <0.0050
step
    #xprate <1.5
    #softcore
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lar|r. Ele patrulha um pouco
    .turnin 786,1 >>Entregue Frustrando o ataque dos Kolkar << Shaman
    .turnin 786 >>Entregue Frustrando o ataque dos Kolkar << !Shaman
    .target Lar Prowltusk
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ba'so|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    >>|cRXP_WARN_Ele está invisibilizado!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] |cRXP_WARN_para treinar|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step
    #hardcore
    #label Betrayers
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
step
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Siga em direção à torre
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Vá pela torre em direção a Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Aceite Carregue o Seu Peso
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step << Warrior/Rogue
    #hardcore
    #completewith TravelToTiragarde
    +|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios] |cRXP_WARN_e minere todo Veio de Cobre que encontrar para pegar|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r|cRXP_WARN_. Faça|r |T135248:0|t[Pedra de Afiar] |cRXP_WARN_com elas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step
    #softcore
    #label TravelToTiragarde
    .goto Durotar,54.42,62.64,60,0
    .subzone 372 >>Vá para Bastilha Tiragarde
    >>|cRXP_WARN_Triture inimigos no caminho|r
    .isOnQuest 784
step
    #hardcore
    #label TravelToTiragarde
    .goto Durotar,57.26,54.69,60,0
    .subzone 372 >>Vá para Bastilha Tiragarde
    >>|cRXP_WARN_Triture inimigos no caminho|r
    .isOnQuest 784
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Tenha cuidado se|r |cRXP_ENEMY_Sargento Carlos|r |cRXP_WARN_estiver ativo, pois é um raro de nível 9. Você pode ter que usar uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>Siga em direção ao segundo andar da fortaleza
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Abate os |cRXP_ENEMY_Sailors|r e os |cRXP_ENEMY_Marines|r. Saque-os para a |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
step
    #completewith AgedEnvelope
    >>Mate |cRXP_ENEMY_Marinheiros de Kul Tiraz|r e |cRXP_ENEMY_Fuzileiros de Kul Tiraz|r. Saqueie-os para pegar |cRXP_LOOT_Retalhos de Lona|r
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
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
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
step << Priest
    #season 2
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Abate os |cRXP_ENEMY_Sailors|r e os |cRXP_ENEMY_Marines|r. Saque-os para a |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Ajoelhe-se diante do |cRXP_PICK_Altar dos Loas|r e fale com a |cRXP_FRIENDLY_Loa Serpente|r para obter o |T136077:0|t[Meditação dos Loas] buff
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Use o|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2520 >>Farme até 2520+/4500 XP
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2200 >>Mate inimigos até atingir 2200+/4500 de xp
    .isOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1530 >>Farme até 1530+/4500 XP
    .isNotOnQuest 823
step << !Priest !Mage
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1050 >>Farme até 1050+/4500 XP
    .isOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+2070 >>Mate inimigos até atingir 2070+/4500 de xp
    .isNotOnQuest 823
step << Priest
    #xprate <1.5
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+1750 >>Farme até 1750+/4500xp
    .isOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+855 >>Farme até 855+/4500 XP
    .isNotOnQuest 823
step << Priest
    #xprate >1.49
    #optional
    #loop
    .goto Durotar,59.02,50.24,50,0
    .goto Durotar,57.93,47.71,50,0
    .goto Durotar,59.20,44.30,50,0
    .goto Durotar,57.96,42.46,50,0
    .goto Durotar,56.47,43.45,50,0
    .goto Durotar,55.50,48.97,50,0
    .xp 7+375 >>Farme até 375+/4500 XP
    .isOnQuest 823
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >>Morra na torre norte fora de Tiragarde Keep e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step
    #softcore
    #label RazorTurnins1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r e |cRXP_FRIENDLY_Torka|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .accept 806 >>Aceite Tempestades Sombrias
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 784 >>Entregue Aniquile os Traidores
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
    #hardcore
    #label RazorTurnins1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Entregue Aniquile os Traidores
    .turnin 830 >>Entregue As Ordens do Almirante
    .accept 825 >>Aceite Dos destroços...
    .accept 831 >>Aceite As Ordens do Almirante
    .target +Gar'Thok
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
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dele|r
    .collect 2512,1000,825,1 << Hunter --Rough Arrow (1000)
    .target Ghrawt
    .itemcount 2512,<800 << Hunter
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
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
step << !Mage !Hunter !Druid
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
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
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
    .goto Durotar,61.96,55.46,0
    .goto Durotar,61.96,55.46,20,0
    .goto Durotar,62.25,56.34,20,0
    .goto Durotar,62.43,59.84,20,0
    .goto Durotar,62.09,60.68,20,0
    .goto Durotar,62.51,60.56,20,0
    .goto Durotar,63.24,58.10,20,0
    .goto Durotar,62.25,56.34,20,0
    >>Pegue as |cRXP_PICK_Caixas de Ferramentas Gnômicas|r dentro e ao redor dos barcos
    .complete 825,1 --Gnomish Tools (3)
step
    #completewith TaillasherEggs
    .goto Durotar,67.10,69.29,100 >>Nade para a Ilha
step
    #completewith MinshinasSkull
    >>Abate os |cRXP_ENEMY_Durotar Tigers|r. Saqueie-os pela |cRXP_LOOT_Fur|r
    -->>This does not need to be finished now
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
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
    >>Abate |cRXP_ENEMY_Rastejadores Pigmeus de Surf|r e |cRXP_ENEMY_Rastejadores de Surf|r. Saque-os pelos |cRXP_LOOT_Muco|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
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
    #completewith MinshinasSkull
    >>Abate |cRXP_ENEMY_Hexed Trolls|r e |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step << Priest
    #season 2
    #completewith Fur
    >>Mate os |cRXP_ENEMY_Voodoo Trolls|r. Saqueie-os pela |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step << Mage
    #season 2
    #completewith ZalazaneKill
    >>Abata |cRXP_ENEMY_Zalazane|r. Saque-o pelo |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Feitiço Anotações de Feitiços: COLESDI DASGAI|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
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
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>Abata |cRXP_ENEMY_Zalazane|r. Saque-o pelo |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Feitiço Anotações de Feitiços: COLESDI DASGAI|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de uma |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item
    .train 401765 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos Glaciais]
    .use 203753
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Durotar Tigers|r. Saqueie-os pela |cRXP_LOOT_Fur|r
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
    >>Abate |cRXP_ENEMY_Hexed Trolls|r e |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step << Priest
    #season 2
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
    >>Mate os |cRXP_ENEMY_Voodoo Trolls|r. Saqueie-os pela |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
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
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >>Morra e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r ou volte correndo
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Vá para Sen'Jin Village
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
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Ajoelhe-se diante do |cRXP_PICK_Altar dos Loas|r e fale com a |cRXP_FRIENDLY_Loa Serpente|r para obter o |T136077:0|t[Meditação dos Loas] buff
    .train 402852,1
step << Priest
    #season 2
    #completewith QuilboarsScouts
    .aura 418459 >>|cRXP_WARN_Agora você tem que encontrar um Sacerdote Morto-vivo com um buff de Loa. Você tem que se ajoelhar diante dele e ele tem que /rezar por você.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] |cRXP_WARN_para treinar|r |T237570:0|t[Homúnculos]
    .itemcount 205947,1
step
    #completewith QuilboarsScouts
    +|cRXP_WARN_Vincular seu|r |T133728:0|t[Crânio Levemente Brilhante] |cRXP_WARN_e|r |T134712:0|t[Cola Grudenta à Beça]|cRXP_WARN_. Guarde-os para situações de emergência|r
step << Warrior
    #season 2
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
    >>Abate |cRXP_ENEMY_Razormane Quilboars|r e |cRXP_ENEMY_Razormane Batedores|r. Saque-os para obter |cRXP_LOOT_Severed Quilboar Cabeça|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step
    #label QuilboarsScouts
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
    >>Abate |cRXP_ENEMY_Javalis de Crinas Afiadas|r e |cRXP_ENEMY_Batedores de Crinas Afiadas|r
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
step
    #xprate <1.5
    #loop
    .goto Durotar,44.45,39.74,0
    .goto Durotar,44.45,39.74,50,0
    .goto Durotar,44.49,37.47,50,0
    .goto Durotar,43.30,37.32,50,0
    .goto Durotar,41.70,37.09,50,0
    .goto Durotar,41.64,38.27,50,0
    .goto Durotar,41.94,40.46,50,0
    .goto Durotar,43.30,40.40,50,0
    >>Abate |cRXP_ENEMY_Corredores de Pó das Crinas Afiadas|r e |cRXP_ENEMY_Guardas de Batalha das Crinas Afiadas|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Hunter
    #optional
    #xprate <1.5
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
    .xp 9+4470 >>Farme até 4470+/6500xp
step
    #optional
    #xprate >1.49
    #loop
    .goto Durotar,49.14,48.89,0
    .goto Durotar,49.14,48.89,30,0
    .goto Durotar,47.43,49.18,30,0
    .xp 9+4400 >>Farme até 4400+/6500 XP
step
    #xprate >1.49 << !Hunter
    #softcore
    #completewith RazorTurnins015
    .deathskip >>Morra e ressuscite no |cRXP_FRIENDLY_Anjo da Cura|r, ou corra para Razor Hill
step
    #xprate >1.49 << !Hunter
    #hardcore
    #completewith RazorTurnins015
    .goto Durotar,51.95,43.50,100 >>Corra para Razor Hill
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .accept 2983 >>Aceite Call of Fogo - Missão - Missão
    .target Swart
    .isNotOnQuest 1522
    .xp <10,1
step << Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torka|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entregue Quebre Alguns Ovos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Entregue Dos destroços...
    .turnin 837 >>Entregue Encroachment
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step
    #xprate >1.49
    #label RazorTurnins015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torka|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entregue Quebre Alguns Ovos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 825 >>Entregue Dos destroços...
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .accept 2983 >>Aceite Call of Fogo - Missão - Missão
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Aceite Veterano Uzzek
    .trainer >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Treine suas magias de classe
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e compre |T133738:0|t[Seta de Fogo Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >>Aceite Bagata da Fraqueza << Troll
    .accept 5660 >>Aceite Toque de Fraqueza << Undead
    .trainer >>Treine suas magias de classe
    .target Tai'jin
step << Rogue
    #xprate >1.49
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
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
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
    .use 15917 >>|cRXP_WARN_Use seu|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Atroz Mosquetusco|r |cRXP_WARN_no alcance máximo|r
    .complete 6062,1 --Tame a Dire Mottled Boar
    .mob Dire Mottled Boar
    .isOnQuest 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6062 >>Entregue Domar a Fera - Missão
    .accept 6083 >>Aceite Domando a Fera
    .target Thotar
    .isQuestComplete 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .accept 6083 >>Aceite Domando a Fera
    .target Thotar
    .isQuestTurnedIn 6062
step << Hunter
    #completewith next
    +|cRXP_WARN_Dispense seu |cRXP_ENEMY_Mosquetusco Hediondo|r clicando com o botão direito no quadro de unidade dele e selecionando dispensar, caso contrário você não conseguirá domar um|r |cRXP_ENEMY_Surfatisco|r
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
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6083 >>Entregue Domar a Fera - Missão
    .accept 6082 >>Aceite Domando a Fera
    .target Thotar
    .isQuestTurnedIn 6062
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
    .isQuestTurnedIn 6062
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .turnin 6082 >>Entregue Domar a Fera - Missão
    .accept 6081 >>Aceite Treinando a Fera
    .target Thotar
    .isQuestTurnedIn 6062
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
    .isQuestTurnedIn 6062
    .isQuestAvailable 834 --Winds in the Desert
step
    #label ConscriptH
    #xprate >1.49 << !Hunter
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step
    #xprate >1.49
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Abate |cRXP_ENEMY_Corredores de Pó das Crinas Afiadas|r e |cRXP_ENEMY_Guardas de Batalha das Crinas Afiadas|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.26,19.38,40 >>Voe para Posto de Farol
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Entregue Veterano Uzzek
    .accept 1498 >>Aceite Caminho da defesa
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entregue Call of Fogo - Missão - Missão
    .accept 1524 >>Aceite Call of Fogo - Missão - Missão
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entregue Call of Fogo - Missão - Missão
    .accept 1525 >>Aceite Call of Fogo - Missão - Missão
    .target Telf Joolam
step << Hunter/Shaman/Warrior
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .accept 816 >>Aceite Em memória
    .target Misha Tor'kren
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Entre em Trovão Serra e mate |cRXP_ENEMY_Lightning Hides|r. Saque-os para obter seus |cRXP_ENEMY_Escamoso|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Pule para dentro do Desfiladeiro do Trovão
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,42.13,26.67
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tome cuidado. Mate o|r |cRXP_ENEMY_Fanático da Lâmina Ardente|r |cRXP_WARN_que está patrulhando e os|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_ao fundo antes de atraí-lo|r
    >>|cRXP_WARN_Atraia-o para trás, em direção aos|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair mais inimigos da Lâmina Ardente ao se aproximar deles|r
    >>|cRXP_WARN_Não tenha medo de morrer para pegar a |cRXP_LOOT_Garra|r, pois você ressuscitará com o |cRXP_FRIENDLY_Anjo da Cura|r depois|r
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
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,42.13,26.67
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tome cuidado. Mate o|r |cRXP_ENEMY_Fanático da Lâmina Ardente|r |cRXP_WARN_que está patrulhando e os|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_ao fundo antes de atraí-lo|r
    >>|cRXP_WARN_Atraia-o para trás, em direção aos|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair mais inimigos da Lâmina Ardente ao se aproximar deles|r
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
step << Warrior/Shaman
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 806
step << Warrior/Shaman
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >>Abra caminho lutando para sair do Desfiladeiro do Trovão
    .isQuestComplete 806
step
    #completewith next
    .goto Durotar,46.37,22.94,50 >>Vá até Rezlak
step
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
step << Warrior
    #season 2
    #completewith next
    >>Abate |cRXP_ENEMY_Dustwind Harpies|r. Saque-os para obter uma |cRXP_LOOT_Severed Harpia Cabeça|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
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
step << Warrior
    #season 2
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Abate |cRXP_ENEMY_Dustwind Harpies|r. Saque-os para obter uma |cRXP_LOOT_Severed Harpia Cabeça|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <1.5
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do Deserto
    .accept 835 >>Aceite Faça o que eu digo...
    .target Rezlak
step
    #xprate >1.49
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do Deserto
    .target Rezlak
step << Shaman
    #xprate >1.49
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Vá para a Caverna Sopravento
    >>|cRXP_WARN_Viagem a leste ao redor das colinas para alcançar a caverna. Siga a seta do waypoint|r
step << Shaman
    #xprate >1.49
    #loop
    .goto Durotar,53.18,29.15,0
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
step
    #xprate <1.5 << Shaman/Warrior
    #completewith next
    .goto Durotar,44.72,24.86,40,0
    .goto Durotar,42.28,25.45,30,0
    .goto Durotar,41.66,25.68,20 >>Pule para dentro do Desfiladeiro do Trovão << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Dispense seu|r |T136218:0|t[Diabrete] |cRXP_WARN_clicando com o botão direito no quadro de unidade dele e selecionando dispensar|r << Warlock
    .cast 2641 >>|cRXP_WARN_Use|r |T136095:0|t[Dispensar Ajudante] |cRXP_WARN_e depois pule para Trovão Serra|r << Hunter
step
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,42.13,26.67
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tome cuidado. Mate o|r |cRXP_ENEMY_Fanático da Lâmina Ardente|r |cRXP_WARN_que está patrulhando e os|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_ao fundo antes de atraí-lo|r
    >>|cRXP_WARN_Atraia-o para trás, em direção aos|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair mais inimigos da Lâmina Ardente ao se aproximar deles|r
    >>|cRXP_WARN_Não tenha medo de morrer para pegar a |cRXP_LOOT_Garra|r, pois você ressuscitará com o |cRXP_FRIENDLY_Anjo da Cura|r depois|r
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
step
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,42.13,26.67
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tome cuidado. Mate o|r |cRXP_ENEMY_Fanático da Lâmina Ardente|r |cRXP_WARN_que está patrulhando e os|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_ao fundo antes de atraí-lo|r
    >>|cRXP_WARN_Atraia-o para trás, em direção aos|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair mais inimigos da Lâmina Ardente ao se aproximar deles|r
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
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #hardcore
    .goto Durotar,39.20,32.02,60 >>Abra caminho lutando para sair do Desfiladeiro do Trovão
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 806
step << !Warrior !Shaman !Hunter
    #xprate >1.49
    #hardcore
    .goto Durotar,39.20,32.02,60 >>Abra caminho lutando para sair do Desfiladeiro do Trovão
    .isQuestComplete 806
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    >>|cRXP_WARN_Isso iniciará um temporizador de 45 minutos para a missão. NÃO fique AFK ou faça logout nos próximos 5 minutos|r
    .accept 812 >>Aceite Busca da cura
    .target Rhinag
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    .xp 9+2930 >>Suba até 2930+/6500 no nível 9
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
    .goto Durotar,43.56,15.08,0
    .goto Durotar,44.16,19.19,60,0
    .goto Durotar,44.13,17.02,60,0
    .goto Durotar,43.56,15.08,60,0
    +Suba até que seu cooldown de Pedra de Retorno seja menor que 5 minutos
    .cooldown item,6948,<0
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    #label EnterOrg
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entregue As Ordens do Almirante
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
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
    #completewith FindAntidote
    +|cRXP_WARN_Coloque|r |T132162:0|t[Treinamento de Feras]|cRXP_WARN_(na aba Geral),|r |T132163:0|t[Reviver Ajudante]|cRXP_WARN_, e|r |T132165:0|t[Alimentar Ajudante] |cRXP_WARN_nas suas barras de ações|r
    >>|cRXP_WARN_Lembre-se de treinar seu ajudante sempre que ele ganhar Pontos de Treinamento para|r |T132162:0|t[Treinamento de Feras]
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
    #completewith FindAntidote
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_WARN_quando você tiver nível 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith FindAntidote
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #label FindAntidote
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'ghan|r no Antro das Sombras
    .accept 813 >>Aceite Em busca do antídoto
    .target Kor'ghan
    .isOnQuest 812
step << Warrior/Shaman/Hunter
    #xprate <1.5 << Shaman/Warrior
    #completewith RazorTurnins2
    #label NeedACure
    >>|cRXP_WARN_Abandone Busca da cura. Isso removerá o limite de tempo da missão, mas você ainda poderá realizá-la|r
    .abandon 812 >>Abandone Busca da cura
    .isOnQuest 812
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamja|r e |cRXP_FRIENDLY_Gru'ark|r
    +Abate |cRXP_ENEMY_Gru'ark|r quando ficar hostil
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamja|r
    >>Obtenha |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] dela
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .use 204716
    .itemcount 204716,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #completewith RazorTurnins2
    .hs >>Vá para Razor Hill
    .isQuestComplete 806
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <1.5 << Mage/Warlock/Priest/Rogue
    #requires NeedACure
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .vendor >>Comerciante Lixo
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vahi|r
    >>Entregue as |cRXP_LOOT_Cabeças|r que você coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #season 2
    .use 204688 >>Usar os |T134455:0|t[Runa Fragmentos] para criar |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1
step << Hunter
    #xprate <1.5
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 806 >>Entregue Tempestades Sombrias
    .accept 828 >>Aceite Margoz
    .target Orgnil Soulscar
step << !Hunter
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Torka|r, |cRXP_FRIENDLY_Orgnil|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 815 >>Entregue Quebre Alguns Ovos
    .target +Cook Torka
    .goto Durotar,51.12,42.46
    .turnin 806 >>Entregue Tempestades Sombrias
    .accept 828 >>Aceite Margoz
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 825 >>Entregue Dos destroços...
    .turnin 837 >>Entregue Encroachment
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Hunter/Shaman/Warrior
    #xprate >1.49
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Entregue Tempestades Sombrias
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 837 >>Entregue Encroachment
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >>Treine suas magias de classe
    .accept 1505 >>Aceite Veterano Uzzek
    .target Tarshaw Jaggedscar
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .accept 2983 >>Aceite Call of Fogo - Missão - Missão
    .target Swart
    .isNotOnQuest 1522
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .target Swart
step << Warlock
    #xprate <1.5
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 1120 >>Treine suas magias de classe
    .target Dhugru Gorelust
step << Warlock
    #xprate <1.5
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e compre |T133738:0|t[Seta de Fogo Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate <1.5
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >>Aceite Bagata da Fraqueza << Troll
    .accept 5660 >>Aceite Toque de Fraqueza << Undead
    .trainer >>Treine suas magias de classe
    .target Tai'jin
step << Hunter
    .goto Durotar,51.85,43.49
    >>Entre no bunker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thotar|r dentro
    .train 13549 >>Treine suas magias de classe
    .target Thotar
step << Rogue
    #xprate <1.5
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 674 >>Treine suas magias de classe
    .target Kaplak
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate <1.99
<< Horde
#name 10-12 Durotar
#version 11
#group Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 10-12 Tirisfal << Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-17 Sertões << Troll !Rogue !Mage !Priest/Orc !Rogue !Warlock


step << Warrior/Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step << Warrior/Shaman
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>Voe para Posto de Farol
    .zoneskip The Barrens
step << Warrior/Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
step << Warrior
    #xprate <1.5
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Entregue Veterano Uzzek
    .accept 1498 >>Aceite Caminho da defesa
    .target Uzzek
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entregue Caminho da Defesa
    .accept 1502 >>Aceite Thun'grim Olhafogo
    .target Uzzek
step << Shaman
    #xprate <1.5
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entregue Call of Fogo - Missão - Missão
    .accept 1524 >>Aceite Call of Fogo - Missão - Missão
    .target Kranal Fiss
step << Warrior/Shaman
    #hardcore
    #completewith PoolsPickup
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >>Vá para The Encruzilhada
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Warrior/Shaman
    #label PoolsPickup
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << Warrior/Shaman
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
step << Warrior/Shaman
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target Zargh
step << Warrior/Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Na Cola dos Larápios
    .target Gazrog
step << Warrior/Shaman
    #xprate >1.49
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step << Warrior/Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
    .target Thork
step << Warrior/Shaman
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    >>|cRXP_WARN_NÃO voe para Orgrimmar!|r
    .fp The Crossroads >>Aprenda a rota de voo para Encruzilhada
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona Para Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar
step << Warrior/Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Aceite Esporos de Fungos
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .target Apothecary Helbrim
step << Warrior/Shaman
    #completewith next
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Mantenha distância máxima de |cRXP_ENEMY_Kolkar|r |cRXP_WARN_enquanto coleta os cogumelos. Eles são nível 12-14|r
    >>|cRXP_WARN_A continuação dessa missão tem o poderoso |cRXP_FRIENDLY_Mexedor de Caldeirão|r |cRXP_WARN_como recompensa. Você pode pular essa missão por enquanto se não pretender usá-lo|r
    .complete 848,1 --Collect Fungal Spores (x4)
step << Warrior/Shaman
    .goto The Barrens,45.06,22.54
    >>Mergulhe debaixo d'água para o |cRXP_PICK_Borbulhando Rachadura|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step << Warrior/Shaman
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
step << Warrior/Shaman
    #hardcore
    #completewith FungalSporesComplete
    .goto The Barrens,52.34,29.27,150,0
    .subzone 380 >>Vá para The Encruzilhada
step << Warrior/Shaman
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Warrior/Shaman
    #label FungalSporesComplete
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_WARN_Espere o RP terminar|r
    >>|cRXP_WARN_Isso inicia uma missão cronometrada de 45 minutos|r
    .turnin 848 >>Entregue Esporos de Fungos
    .timer 7,Esporos de Fungos RP
    .accept 853 >>Aceite Boticário Zamah
    .target Apothecary Helbrim
step << Warrior/Shaman
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre um ou mais|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_de|r |cRXP_BUY_dele|r
    .collect 4496,1,853,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Warrior/Shaman
    #sticky
    #completewith ZamahTurnin2
    +|cRXP_WARN_Você está em uma missão com tempo marcado, não fique inativo. Ela será entregue cerca de 30 minutos depois da captura|r
    .isOnQuest 853
step << Warrior/Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entregue Os Poços Esquecidos
    .target Tonga Runetotem
step << Warrior/Shaman
    #completewith next
    .goto The Barrens,47.44,56.48,70,0
    .subzone 378 >>Viagem para o sul pela estrada em direção a Camp Taurajo
step << Warrior/Shaman
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo
    .target Omusa Thunderhorn
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .accept 749 >>Aceite A caravana devastada
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.715,59.325
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .accept 761 >>Aceite Caçada ao Rapineiro
    .target Harken Windtotem
step << Warrior/Shaman
    .goto Mulgore,47.513,60.164
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r
    .accept 767 >>Aceite Rito de Visão
    .accept 746 >>Aceite Escavação Enânica
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.3,62.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r
    .accept 743 >>Aceite Perigos das Ventofúria
    .target Ruul Eagletalon
step << Warrior/Shaman
    .goto Mulgore,47.8,57.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarlman|r
    .turnin 767 >>Entregue Rito de Visão
    .accept 771 >>Aceite Rito de Visão
    .target Zarlman Two-Moons
step << Warrior/Shaman
    .goto Mulgore,47.0,57.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 766 >>Aceite Mazzranache
    .target Maur Raincaller
step << Warrior/Shaman
    #xprate <1.5
    #completewith EnterTB
    >>Abate |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r e |cRXP_ENEMY_Swoops|r conforme você progride pela zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith EnterTB
    >>Abate |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r e |cRXP_ENEMY_Swoops|r conforme você progride pela zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith EnterTB
    >>Fique atento a |cRXP_ENEMY_Uivo Fantasma|r. Pegue dele o |T134358:0|t[|cRXP_LOOT_Manto Marcado por Demônios|r]. Use-o para iniciar a missão
    >>|cRXP_WARN_Não aceite a missão ainda|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .use 4854
    .unitscan Ghost Howl
step << Warrior/Shaman
    #loop
    .goto Mulgore,50.36,66.49,0
    .goto Mulgore,48.71,64.44,15,0
    .goto Mulgore,50.36,66.49,15,0
    .goto Mulgore,51.92,63.85,15,0
    .goto Mulgore,51.13,71.06,15,0
    .goto Mulgore,50.36,66.49,15,0
    >>Colete os |cRXP_PICK_Ambercorns|r. Eles podem ser encontrados sob as árvores no chão
    .complete 771,2 --Ambercorn (2)
step << Warrior/Shaman
    #loop
    .goto Mulgore,54.06,66.40,0
    .goto Mulgore,53.35,65.78,10,0
    .goto Mulgore,53.70,65.59,10,0
    .goto Mulgore,53.98,65.94,10,0
    .goto Mulgore,54.06,66.40,10,0
    >>Colete as |cRXP_PICK_Well Stones|r ao redor do poço
    .complete 771,1 --Well Stone (2)
step << Warrior/Shaman
    .goto Mulgore,47.76,57.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarlman|r
    >>|cRXP_WARN_Não siga o lobo que aparece|r
    .turnin 771 >>Entregue Rito de Visão
    .accept 772 >>Aceite Rito de Visão
    .target Zarlman Two-Moons
step << Warrior/Shaman
    #label EnterTB
    #completewith ZamahTurnin2
    .goto Thunder Bluff,32.0,66.9,60,0
    .zone Thunder Bluff >>Voe para Penhasco do Trovão
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Treine Cajados
    .train 199 >>Treine Maças de Duas Mãos
    .target Ansekhwa
    .money <0.020
step << Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Treine Cajados
    .target Ansekhwa
    .money <0.010
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .accept 76156 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >>Aprenda a rota de voo para Penhasco do Trovão << !Tauren
    .target Tal
step << Warrior/Shaman
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Vá para o Alto do Espírito e entre nas Piscinas da Visão
step << Warrior/Shaman
    #label ZamahTurnin2
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Entregue Boticário Zaqueu
    .target Apothecary Zamah
    .isOnQuest 853
step << Warrior/Shaman
    #optional
    #completewith RiteofWisdomTurnin
    +|cRXP_WARN_Equipe o|r |T135145:0|t[Mexedor de Caldeirão]
    .use 5340
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<10.1
    .itemcount 5340,1
step << Warrior/Shaman
    #completewith RiteofWisdomTurnin
    .goto Thunder Bluff,29.04,37.68,55,0
    .goto Mulgore,33.48,36.68,40 >>Corra para fora da caverna, depois saia de Trovão Blefe pulando para baixo em algum lugar sob a ponte
    .zoneskip Mulgore
step << Warrior/Shaman
    #xprate <1.5
    #completewith SacredBurialTurnIn
    >>Abate |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r e |cRXP_ENEMY_Swoops|r conforme você progride pela zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith SacredBurialTurnIn
    >>Abate |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r e |cRXP_ENEMY_Swoops|r conforme você progride pela zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
	#completewith SacredBurialTurnIn
    >>Procure por |cRXP_ENEMY_Uivo Fantasma|r. Saqueie-o por seu |T134358:0|t[|cRXP_LOOT_Manto Marcado por Demônios|r]
    >>|cRXP_WARN_Não aceite a missão ainda|r
    .collect 4854,1,770 --Collect Demon Scarred Cloak
    .unitscan Ghost Howl
step << Warrior/Shaman
    #label RiteofWisdomTurnin
    .goto Mulgore,32.72,36.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Wiserunner|r
    >>|cRXP_WARN_Ele está localizado na caverna a sudoeste de Trovão Blefe|r
    .turnin 772 >>Entregue Rito de Visão
    .accept 773 >>Aceite Rito de sabedoria
    .target Seer Wiserunner
step << Warrior/Shaman
    #completewith next
    .destroy 4823 >>Destrua |T134712:0|t[Água dos Videntes] pois você não vai precisar disso
step << Warrior/Shaman
    #loop
	.goto Mulgore,34.08,43.71,50,0
	.goto Mulgore,32.98,42.96,50,0
	.goto Mulgore,31.72,43.08,50,0
	.goto Mulgore,31.08,42.09,50,0
	.goto Mulgore,31.12,40.87,50,0
	.goto Mulgore,31.74,40.31,50,0
	.goto Mulgore,32.44,41.17,50,0
	.goto Mulgore,33.57,41.30,50,0
	.goto Mulgore,33.82,40.26,50,0
	.goto Mulgore,34.48,41.21,50,0
	.goto Mulgore,34.50,42.29,50,0
    >>Mate |cRXP_ENEMY_Bruxas Eólica Ventofúria|r e |cRXP_ENEMY_Harpias Ventofúria|r. Pegue suas |cRXP_LOOT_Garras|r
    .complete 743,1 --Windfury Talon (8)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
step << Shaman
    #season 2
    #completewith next
    >>Abata os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para a |cRXP_LOOT_Artefato Chave de Armazenamento|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    .goto Mulgore,31.27,49.87
    >>Abate os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para obter |cRXP_LOOT_Picareta do Prospector|r
    .use 4702 >>Arrebente o |T134707:0|t[Picks] na Forja
    .complete 746,1 --Broken Tools (5)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
step << Shaman
    #season 2
    #loop
    .goto Mulgore,33.10,47.69,0
    .goto Mulgore,34.33,47.54,40,0
    .goto Mulgore,33.62,49.61,40,0
    .goto Mulgore,32.58,48.96,40,0
    .goto Mulgore,31.88,50.17,40,0
    .goto Mulgore,31.14,50.08,40,0
    .goto Mulgore,30.98,48.24,40,0
    .goto Mulgore,31.59,48.19,40,0
    .goto Mulgore,33.10,47.69,40,0
    >>Abata os |cRXP_ENEMY_Bael'dun Diggers|r e os |cRXP_ENEMY_Bael'dun Appraisers|r. Saque-os para a |cRXP_LOOT_Artefato Chave de Armazenamento|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Bael'dun Appraisers|r lançam|r |T135929:0|t[Cura Inferior] |cRXP_WARN_(Ranged Cast: Heals themselves or a nearby mob below 50% dos pontos de vida for about 75 health)|r
    .collect 206975,1 --Artifact Storage Key (1)
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .goto Mulgore,31.56,49.54
    >>Abra o |cRXP_PICK_Artefato Armazenamento|r baú. Saque-o para o |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    .collect 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    .equip 18,206388 >>|cRXP_WARN_Equipe o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r
    .use 206388
    .itemcount 206388,1 --Sulfurous Icon (1)
    .train 425344,1
    .xp <3,1
step << Shaman
    #season 2
    #label MoltenBlast
    #completewith SacredBurialTurnIn
    .aura 408828 >>|cRXP_WARN_Mate inimigos tendo causado dano usando|r |T136026:0|t[Choque Terreno] |cRXP_WARN_neles pelo menos uma vez. Faça isto 10 vezes para ganhar|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    >>|cRXP_WARN_AVISO: Você deve fazer isto em inimigos que possam fornecer experiência para ganhar camadas|r
    .mob Bael'dun Digger
    .mob Bael'dun Appraiser
    .train 425344,1
step << Warrior/Shaman
    #label SacredBurial
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raintotem|r
    .accept 833 >>Aceite Sepultamento Sagrado
    .target Lorekeeper Raintotem
step << Warrior/Shaman
    #completewith next
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    .goto Mulgore,61.45,21.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Espírito Ancestral|r
    .turnin 773 >>Entregue Rito de Sabedoria
    .target Ancestral Spirit
step << Warrior/Shaman
    #loop
	.goto Mulgore,61.12,22.88,0
	.goto Mulgore,59.85,25.62,40,0
	.goto Mulgore,61.14,22.93,40,0
	.goto Mulgore,61.77,22.49,40,0
	.goto Mulgore,62.18,22.05,40,0
	.goto Mulgore,62.32,20.89,40,0
	.goto Mulgore,61.62,19.50,40,0
	.goto Mulgore,60.44,19.50,40,0
	.goto Mulgore,60.16,21.06,40,0
	.goto Mulgore,60.41,21.96,40,0
	.goto Mulgore,61.12,22.88,40,0
    >>Mate |cRXP_ENEMY_Traiçoeiros Costagulha|r
    .complete 833,1 --Bristleback Interloper (8)
    .mob Bristleback Interloper
step << Warrior/Shaman
    #label SacredBurialTurnIn
    .goto Mulgore,59.85,25.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raintotem|r
    .turnin 833 >>Entregue Sepultamento Sagrado
    .target Lorekeeper Raintotem
step << Shaman
    #season 2
    #requires MoltenBlast
    .cast 402265 >>|cRXP_WARN_Use o|r |T134918:0|t|cRXP_LOOT_[Ícone Sulfúreo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Entalhe de Luvas: Impacto Derretido]
    .use 206388
    .aura -408828
    .itemStat 18,QUALITY,2
    .train 425344,1
    .xp <3,1
step << Warrior/Shaman
    #xprate <1.5
    #completewith next
    >>Abate os |cRXP_ENEMY_Wolves|r, |cRXP_ENEMY_Cougars|r, |cRXP_ENEMY_Plainstriders|r e |cRXP_ENEMY_Swoops|r enquanto você faz missões pela zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
    .complete 761,1 --Trophy Swoop Quill (8)
step << Warrior/Shaman
    #xprate >1.49
    #completewith next
    >>Mate os |cRXP_ENEMY_Wolves|r, os |cRXP_ENEMY_Cougars|r, os |cRXP_ENEMY_Plainstriders|r e os |cRXP_ENEMY_Swoops|r enquanto faz missões por toda a zona
    .complete 766,1 --Prairie Wolf Heart (1)
    .complete 766,2 --Flatland Cougar Femur (1)
    .complete 766,3 --Plainstrider Scale (1)
    .complete 766,4 --Swoop Gizzard (1)
step << Warrior/Shaman
    .goto Mulgore,53.74,48.17
    >>Clique no |cRXP_PICK_Caixote de Suprimentos Lacrado|r
    .turnin 749 >>Entregue A Caravana Devastada
    .accept 751 >>Aceite A caravana devastada
step << Warrior/Shaman
    .goto Mulgore,46.97,57.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 766 >>Entregue Mazzranache
    .target Maur Raincaller
    .isQuestComplete 766
step << Warrior/Shaman
    .goto Mulgore,46.75,60.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skorn|r
    .accept 770 >>Aceite O Manto Marcado por Demônios
    .turnin 770 >>Entregue O Manto Marcado por Demônios
    .target Skorn
    .target Skorn Whitecloud
    .use 4854
    .itemcount 4854,1
step << Warrior/Shaman
    .goto Mulgore,47.51,60.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baine|r
    .turnin 746 >>Entregue Escavação Enânica
    .target Baine Bloodhoof
step << Warrior/Shaman
    .goto Mulgore,47.35,62.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r
    .turnin 743 >>Entregue Perigos das Ventofúria
    .target Ruul Eagletalon
step << Warrior/Shaman
    #xprate <1.5
    .goto Mulgore,48.71,59.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harken Totem do Vento|r
    .turnin 761 >>Entregue Caçada ao Rapineiro
    .target Harken Windtotem
    .isQuestComplete 761
step << Shaman
    .goto Mulgore,48.38,59.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm|r
    .train 547 >>Treine suas magias de classe
    .target Narm Skychaser
    .xp <12,1
step << Warrior
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 7384 >>Treine suas magias de classe
    .target Krang Stonehoof
    .xp <12,1
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 751 >>Entregue A Caravana Devastada
    .accept 764 >>Aceite Empreendimentos S.A.
    .accept 765 >>Aceite Supervisor Geringonça
	.unitscan Morin Cloudstalker
step << Warrior/Shaman
    #completewith Fizsprocket
    .goto Mulgore,61.51,47.29,20 >>Viagem para Empreendimentos S.A. Mina
step << Shaman
    #season 2
    #completewith VentureCoKills
    >>Abra os |cRXP_PICK_Blasting Suprimentos|r dentro da mina e do outro lado. Saqueie-os para obter as |cRXP_LOOT_Seaforium Mineração Cargas|r
    >>|cRXP_WARN_Fique nos níveis superiores da caverna se possível|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #completewith next
    >>Mate os |cRXP_ENEMY_Trabalhadores da Venture Co.|r e os |cRXP_ENEMY_Supervisores da Venture Co.|r
    .complete 764,1 --Venture Co. Worker (14)
    .mob +Venture Co. Worker
    .complete 764,2 --Venture Co. Supervisor (6)
    .mob +Venture Co. Supervisor
step << Warrior/Shaman
    #label Fizsprocket
    .goto Mulgore,64.95,43.33
    >>Corra para dentro da mina e fique no lado direito/leste. Mate o |cRXP_ENEMY_Supervisor Geringonça|r. Saque-o para obter a |cRXP_LOOT_Prancheta|r
    .complete 765,1 --Fizsprocket's Clipboard (1)
    .mob Supervisor Geringonça
step << Warrior/Shaman
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
step << Shaman
    #season 2
    #loop
    .goto Mulgore,61.72,35.15,0
    .goto Mulgore,63.77,43.97,15,0
    .goto Mulgore,62.81,42.81,15,0
    .goto Mulgore,60.38,42.78,15,0
    .goto Mulgore,61.64,41.33,15,0
    .goto Mulgore,63.51,39.29,15,0
    .goto Mulgore,63.39,40.80,15,0
--  .goto Mulgore,66.53,39.47,15,0 --Very deep inside the top of the mine, skipping
    .goto Mulgore,60.99,37.00,15,0
    .goto Mulgore,59.64,36.05,15,0 --Outside
    .goto Mulgore,61.72,35.15,15,0 --Outside
    >>Abra os |cRXP_PICK_Blasting Suprimentos|r dentro da mina e do outro lado. Saqueie-os para obter as |cRXP_LOOT_Seaforium Mineração Cargas|r
    >>|cRXP_WARN_Fique nos níveis superiores da caverna se possível|r
    .complete 76156,1 --Seaforium Mining Charge (5)
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    #xprate <1.5
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+7150 >>Suba até 7150+/8700 XP
step << Warrior/Shaman
    #optional
    #xprate >1.49
    #loop
	.goto Mulgore,61.35,47.55,25,0
	.goto Mulgore,60.10,47.84,25,0
	.goto Mulgore,59.50,48.21,25,0
	.goto Mulgore,59.68,48.85,25,0
	.goto Mulgore,60.14,49.14,25,0
	.goto Mulgore,62.01,48.74,25,0
	.goto Mulgore,61.89,47.84,25,0
    .xp 11+6375 >>Suba até 6375+/8700 XP
step << Warrior/Shaman
    #loop
    .goto Mulgore,55.14,60.65,0
    .goto Mulgore,59.65,62.40,50,0
    .goto Mulgore,57.47,61.26,50,0
    .goto Mulgore,55.14,60.65,50,0
    .goto Mulgore,53.00,60.24,50,0
    .goto Mulgore,51.50,59.23,50,0
    .goto Mulgore,55.14,60.65,50,0
    .line Mulgore,51.50,59.23,53.00,60.24,55.14,60.65,57.47,61.26,59.65,62.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morin|r
    >>|cRXP_WARN_Ele patrulha ao longo da estrada oriental|r
    .turnin 764 >>Entregue Empreendimentos S.A.
    .turnin 765 >>Entregue para o Supervisor Geringonça
	.unitscan Morin Cloudstalker
step << Warrior
    #xprate >1.49
    .goto Mulgore,49.52,60.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krang|r
    .train 7384 >>Treine suas magias de classe
    .target Krang Stonehoof
step << Shaman
    #season 2
    #completewith next
    .zone Thunder Bluff >>Voe para Penhasco do Trovão
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76156 >>Entregue À Espreita com a Mãe Terra
    .accept 76160 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn|r
    .accept 744 >>Aceite Os Preparativos da Cerimônia
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    #completewith next
    .zone Mulgore >>Pegue o elevador do norte para descer a Mulgore
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #completewith next
    >>Mate as |cRXP_ENEMY_Feiticeiras de Fúria dos Ventos|r. Saque-as pelos seus |cRXP_LOOT_Peninha Azul|r
    >>Mate |cRXP_ENEMY_Matriarcas Ventofúria|r. Pegue suas |cRXP_LOOT_Penas Bronze|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    #loop
    #loop
    .goto Mulgore,30.89,22.41,0
    .goto Mulgore,30.89,22.41,20,0
    .goto Mulgore,29.57,23.43,20,0
    .goto Mulgore,29.63,26.32,20,0
    >>Saque |cRXP_LOOT_Pinhões de Fúria dos Ventos|r no chão
    .collect 206170,8,76160,1 --Windfury Cone (8)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #loop
    .goto Mulgore,31.7,28.2,0
    .goto Mulgore,30.2,19.5,0
    .goto Mulgore,31.7,28.2,40,0
    .goto Mulgore,30.2,19.5,40,0
    >>Mate as |cRXP_ENEMY_Feiticeiras de Fúria dos Ventos|r. Saque-as pelos seus |cRXP_LOOT_Peninha Azul|r
    >>Mate |cRXP_ENEMY_Matriarcas Ventofúria|r. Pegue suas |cRXP_LOOT_Penas Bronze|r
    .complete 744,1 --Azure Feather (6)
    .mob +Windfury Sorceress
    .complete 744,2 --Bronze Feather (6)
    .mob +Windfury Matriarch
    .train 410104,1
step << Shaman
    #season 2
    >>Usar o |T133748:0|t[Almofariz e Pilão] para criar |T133213:0|t[Pine Salve]
    .complete 76160,1 --Pine Salve (1)
    .use 206176
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,37.8,59.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eyahn|r
    .turnin 744 >>Entregue Os preparativos da cerimônia
    .target Eyahn Eagletalon
    .train 410104,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76160 >>Entregue À Espreita com a Mãe Terra
    .accept 76240 >>Aceite À Espreita com a Mãe Terra
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre um|r |T133894:0|t[Peixe Brilhante Cru] |cRXP_BUY_do Leilão|r
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .target Auctioneer Stampi
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Sewa
    .goto Thunder Bluff,46.13,51.59,12,0
    .goto Thunder Bluff,47.09,50.07,4,0
    .goto Thunder Bluff,46.49,49.16,4,0
    .goto Thunder Bluff,46.05,49.74,4,0
    .goto Thunder Bluff,46.34,50.50,4,0
    .goto Thunder Bluff,55.78,47.02,15 >>Vá em direção a |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #sticky
    #label Kah
    .goto Thunder Bluff,56.13,46.39,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kah Corre com a Névoa|r
    .train 7734 >>Aprenda |T136245:0|t[Pesca]
    .target Kah Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Sewa
    .goto Thunder Bluff,55.78,47.02,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sewa Corre com a Névoa|r
    >>|cRXP_BUY_Compre uma|r |T132932:0|t[Vara de Pescar] |cRXP_BUY_e uma|r |T134335:0|t[Miçanga Brilhosa] |cRXP_BUY_dela|r
    .collect 6256,1 --Fishing Pole (1)
    .collect 6529,1 --Shiny Bauble (1)
    .target Sewa Mistrunner
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Kah
    #label Pole
    .equip 16,6256 >>|cRXP_WARN_Equipe a|r |T132932:0|t[Vara de Pescar]
    .use 6256
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #completewith Fish
    #requires Pole
    .aura 8087 >>|cRXP_WARN_Prenda a|r |T134335:0|t[Miçanga Brilhosa] |cRXP_WARN_à sua|r |T132932:0|t[Vara de Pescar]
    .use 6529
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    #ssf
    #label Fish
    #requires Kah
    .goto Thunder Bluff,40.42,58.55
    >>Pesque no lago até obter |T133894:0|t[|cRXP_LOOT_Peixe Brilhante Cru|r]
    .collect 6291,1,76240,1 --Raw Brilliant Smallfish (1)
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    >>Usar |T132147:0|t[Conjunto de Facas] para criar |T134007:0|t[Pedaços de Peixe]
    .complete 76240,1 --Fish Chunks (1)
    .use 206344
    .train 410104,1
    .xp <4,1
step << Shaman
    #season 2
    .goto Thunder Bluff,39.45,65.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Javaton Totem das Sombras|r
    >>|cRXP_WARN_Ele é|r |T132320:0|t[Furtivo]
    .turnin 76240 >>Entregue À Espreita com a Mãe Terra
-- .train 410104 >>|cRXP_WARN_You will train|r |T236289:0|t[Lava Lash] |cRXP_WARN_and|r |T132147:0|t[Dual Wield] |cRXP_WARN_upon turnin|r
    .target Boarton Shadetotem
    .train 410104,1
    .xp <4,1
step << Warrior/Shaman
    #optional
    .abandon 766 >>Abandone Mazzranache
step << Warrior/Shaman
    #xprate >1.49
    .hs >>Use sua Pedra de Retorno para ir à Encruzilhada
    .subzoneskip 380
    .bindlocation 380,1
    .use 6948
step << Warrior/Shaman
    #xprate <1.5
    #completewith MargozTurnIn
    .hs >>Vá para Razor Hill
    .subzoneskip 362
    .bindlocation 362,1
    .use 6948
step << Warrior
    #xprate <1.5
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <1.5
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .target Swart
    .xp <12,1
step << Shaman
    #xprate <1.5
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
    #xprate <1.5
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entregue Call of Fogo - Missão - Missão
    .accept 1525 >>Aceite Call of Fogo - Missão - Missão
    .target Telf Joolam
step << Warrior
    #xprate <1.5
    .goto Durotar,54.39,42.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jark|r
    .vendor >>|cRXP_BUY_Compre|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_do|r |cRXP_BUY_vendedor|r
    .target Jark
step << Hunter
    #completewith MargozTurnIn
    +Dome um |cRXP_ENEMY_Escorpídeo Caudaçonha|r
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate <1.5
    #completewith next
    .subzone 371 >>Vá para a Caverna Sopravento
step << Shaman
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
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
step
    #xprate <1.5 << !Hunter
    #completewith next
    .goto Durotar,56.30,27.91,80,0
    .goto Durotar,56.41,20.04,50 >>Vá até |cRXP_FRIENDLY_Margoz|r
    .isQuestTurnedIn 806
step
    #xprate <1.5 << !Hunter
    #label MargozTurnIn
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 828 >>Entregue Margoz
    .accept 827 >>Aceite A Rocha da Caveira
    .target Margoz
    .isQuestTurnedIn 806
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #completewith next
    .goto Durotar,56.49,25.04,50,0
    .goto Durotar,56.11,27.94,50,0
    .goto Durotar,53.18,29.15,50 >>Vá para a Caverna Sopravento
    .isQuestTurnedIn 828
step << Mage
    #xprate <1.5
    #season 2
    #completewith next
    >>Mate os |cRXP_ENEMY_Burning Blade Orcs|r na Caverna de Crânio Pedra. Saqueie-os para obter as |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .train 401768,1
step << !Warrior !Shaman !Hunter
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Mate |cRXP_ENEMY_Orcs da Lâmina Ardente|r. Saqueie-os para pegar os |cRXP_LOOT_Colares|r
    .complete 827,1 --Searing Collar (6)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .isQuestTurnedIn 828
step << Mage
    #season 2
    #xprate <1.5
    #loop
    .goto Durotar,53.18,29.15,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97,12,0
    >>Mate os |cRXP_ENEMY_Burning Blade Orcs|r na Caverna de Crânio Pedra. Saqueie-os para obter as |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate <1.5
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_to learn|r |T135820:0|t[Chama Viva]
    .use 203752
    .itemcount 203752,1
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    .goto Durotar,55.12,10.10,60 >>Viaje para Crânio Pedra
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Gazzuz
    >>Mate |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
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
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Gazzuz
    .goto Durotar,51.8,10.0
    >>Mate o |cRXP_ENEMY_Gazz'uz|r. Saqueie-o para pegar |T134085:0|t[|cRXP_LOOT_Olho da Sombra Ardente|r]
    >>|cRXP_WARN_Use o |T134085:0|t[|cRXP_LOOT_Olho da Sombra Ardente|r] para iniciar a missão|r
    >>|cRXP_WARN_Use a sua|r |T134712:0|t[Cola Grudenta à Beça] |cRXP_WARN_no|r |cRXP_ENEMY_Emissário do Caos|r |cRXP_WARN_para evitar ser atingido, e|r |T134829:0|t[Poções de Cura] |cRXP_WARN_para recuperar vida. Quebre a linha de visão (LoS) de|r |cRXP_ENEMY_Gazz'uz|r |cRXP_WARN_para evitar as Setas Sombrias dele|r
    >>|cRXP_WARN_Você pode correr até as poças de água dentro da caverna para despistar o|r |cRXP_ENEMY_Emissário do Caos|r |cRXP_WARN_depois de matar|r |cRXP_ENEMY_Gazz'uz|r
    >>|cRXP_WARN_Tome cuidado, pois ele é MUITO difícil. Você pode pular esta missão se precisar|r
    .collect 4903,1,832,1 --Collect Eye of Burning Shadow
    .accept 832 >>Aceite Sombras incandescentes
    .use 4903
	.unitscan Gazz'uz
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
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
    .goto Durotar,53.77,8.87,15,0
    >>Mate |cRXP_ENEMY_Orcs da Lâmina Ardente|r. Saqueie-os para pegar os |cRXP_LOOT_Colares|r e uma |cRXP_LOOT_Insígnia do Tenente|r
    >>|cRXP_WARN_Esqueça a|r |cRXP_LOOT_Insígnia do Tenente|r |cRXP_WARN_se não tiver sorte para obtê-la|r
    .complete 827,1 --Searing Collar (6)
    .complete 5726,1 --Lieutenant's Insignia (1)
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #completewith Ravine
    >>Mate |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << !Hunter
    .goto Durotar,56.41,20.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Margoz|r
    .turnin 827 >>Entregue A Rocha da Caveira
    .accept 829 >>Aceite Neeru Cortafogo
    .target Margoz
    .isQuestTurnedIn 806
step
    #xprate <1.5
    #label Ravine
    #completewith next
    .subzone 370 >>Desça para o Barranco da Ravina Seca
step
    #xprate <1.5
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
    .complete 835,1 --Dustwind Savage (12)
    .mob +Dustwind Savage
    .complete 835,2 --Dustwind Storm Witch (8)
    .mob +Dustwind Storm Witch
step
    #xprate <1.5
    #softcore
    #completewith SecuringLinesTurnIn
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 813 << Warrior/Shaman/Hunter
step
    #xprate <1.5
    #hardcore
    #completewith next
    .goto Durotar,53.75,27.74,60,0
    .goto Durotar,51.75,27.40,60,0
    .goto Durotar,46.37,22.94,60 >>Atravesse a caverna em direção a |cRXP_FRIENDLY_Rezlak|r
step
    #xprate <1.5
    #label SecuringLinesTurnIn
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 835 >>Entregue Faça o Que Eu Digo...
    .target Rezlak
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #loop
    .goto Durotar,38.73,22.04,0
    .goto Durotar,42.64,20.45,60,0
    .goto Durotar,40.43,19.72,60,0
    .goto Durotar,40.59,16.41,60,0
    .goto Durotar,38.79,17.00,60,0
    .goto Durotar,38.73,22.04,60,0
    >>Termine de matar os |cRXP_ENEMY_Escorpídeos Caudaçonha|r. Pegue deles as |cRXP_LOOT_Vesículas de Veneno de Caudaçonha|r
    .complete 813,1 --Venomtail Poison Sac (4)
    .mob Venomtail Scorpid
    .itemcount 4904,<1 --Venomtail Antidote
step
    #xprate <1.5 << Warrior/Shaman/Hunter
    #completewith Admiralorders1 << !Warrior !Shaman !Hunter
    #completewith NeeruFireblade << Warrior/Shaman/Hunter
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
step << !Rogue
    #xprate <1.5 << Shaman/Warrior
    .goto Orgrimmar,47.21,70.27,15,0
    .goto Orgrimmar,47.55,68.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Urtharo|r
    .vendor >>Comerciante e Conserto
    .target Urtharo
step << Shaman/Warrior
    #xprate <1.5
    #label Gryhskaturnin1
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
    .accept 6385 >>Aceite Doraso, o Mestre de Mantícoras
    .target Innkeeper Gryshka
step << Shaman/Warrior
    #xprate <1.5
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o Mestre de Mantícoras
    .accept 6386 >>Aceite Devolver à Encruzilhada
    .target Doras
step << Shaman
    #xprate <1.5
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8050 >>Treine suas magias de classe
    .target Kardris Dreamseeker
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compre um|r |T135419:0|t[Machado de Arremesso Afiado] |cRXP_BUY_dele|r
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
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >>Entregue Bagata da Fraqueza
    .trainer >>Treine suas magias de classe
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
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
step << Warrior
    #xprate <1.5
    #completewith next
    .goto Orgrimmar,68.02,38.69,30 >>Vá para o Vale da Honra
step << Warrior
    #xprate <1.5
    .goto Orgrimmar,79.93,31.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 6546 >>Treine suas magias de classe
    .target Grezz Ragefist
step << !Warrior !Shaman !Hunter
    #label Admiralorders1
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entregue As Ordens do Almirante
    .target Nazgrel
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Escondido Enemies
    .accept 5727 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Escondido Enemies
    .target Thrall
    .isQuestComplete 5726
    .dungeon !RFC
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >>Aceite The Estilhaçada Hand - Missão << Orc Rogue/Troll Rogue
    .target Therzok
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,47.24,53.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kor'ghan|r
    .turnin 813 >>Entregue Em busca do antídoto
    .target Kor'ghan
    .itemcount 4904,<1 --Venomtail Antidote
step << Warlock
    .goto Orgrimmar,48.59,46.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1120 >>Treine suas magias de classe
    .target Mirket
step
    #xprate <1.5 << !Hunter
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entregue Neeru Cortafogo
    .turnin 832 >>Entregue Sombras incandescentes
    .accept 809 >>Aceite Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
    .isOnQuest 832
step
    #xprate <1.5 << !Hunter
    #label NeeruFireblade
    .goto Orgrimmar,49.49,50.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru|r
    .turnin 829 >>Entregue Neeru Cortafogo
    .accept 809 >>Aceite Ak'Zeloth
    .target Neeru Fireblade
    .isQuestTurnedIn 827
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Pegue o |cRXP_PICK_Dusty Baú|r para |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    >>|cRXP_WARN_Está localizado em The Arrastar no andar superior|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>Entre em Cavernas Ígneas
step << !Warrior !Shaman !Hunter
    #softcore
    #completewith ZeptoUC1
    .goto Durotar,47.05,17.58
    .deathskip >>Morra e ressurja no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Warrior !Shaman !Hunter
    #hardcore
    #completewith ZeptoUC1
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Orgrimmar,53.03,48.78
    .subzone 2437 >>Entre em Cavernas Ígneas
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #softcore
    #completewith FoundtheCure
    .goto Durotar,47.05,17.58
    .deathskip >>Morra e ressurja no |cRXP_FRIENDLY_Anjo da Cura|r
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #hardcore
    #completewith FoundtheCure
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FoundtheCure
    .goto Durotar,41.54,18.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhinag|r
    .accept 812 >>Aceite Busca da cura
    .turnin 812 >>Entregue Necessidade de uma Cura
    .target Rhinag
step << Warrior
    #xprate <1.5 << !Hunter
    .goto Durotar,42.01,24.33,90,0
    .goto Durotar,39.18,31.65
    >>Desça para a Cordilheira do Trovão e mate os |cRXP_ENEMY_Lightning Hides|r. Saqueie-os por seus |cRXP_ENEMY_Escamoso|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,34.80,32.84,50,0 << !Warrior
    .goto Durotar,34.81,37.02,50,0 << !Warrior
    .goto Durotar,34.44,44.53,50,0
    .goto Durotar,34.27,47.02,50,0
    .goto Durotar,34.71,42.30
    >>Vá para o sul ao lado do rio em direção ao Posto de Vigia
    >>Mate |cRXP_ENEMY_Crocolisco Bocarrão|r no caminho. Saqueie-os para pegar |cRXP_LOOT_Amuleto de Kron|r
    >>|cRXP_WARN_Pule e abandone esta missão se o item não cair|r
    .complete 816,1 --Kron's Amulet (1)
    .mob Dreadmaw Crocolisk
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    .goto Durotar,43.11,30.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Misha|r
    .turnin 816 >>Entregue Em memória
    .target Misha Tor'kren
    .isQuestComplete 816
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>Voe para Posto de Farol
    .zoneskip The Barrens
step << Hunter
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entregue Ak'Zeloth
    .accept 924 >>Aceite A Semente Demoníaca
    .target Ak'Zeloth
    .isQuestTurnedIn 829
step << Warrior/Shaman/Hunter
    #xprate <1.5 << !Hunter
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
step << Mage
    #xprate >1.49
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Mate os |cRXP_ENEMY_Burning Blade Orcs|r na Caverna de Crânio Pedra. Saqueie-os para obter as |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
step << Mage
    #xprate >1.49
    #season 2
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401768 >>|cRXP_WARN_Use|r|T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_to learn|r |T135820:0|t[Chama Viva]
    .use 203752
    .itemcount 203752,1
step << Rogue/Mage/Priest/Warlock
    #label ZeptoUC1
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    >>|cRXP_WARN_Conjure água enquanto espera|r << Mage
    .zoneskip Tirisfal Glades
step
    #optional
    .abandon 816 >>Abandone Em Memória
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde
#xprate <1.99
#name 10-12 Tirisfal
#version 11
#group Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest
#next 12-14 Floresta de Pinhaprata << Undead/Troll Rogue/Orc Rogue/Orc Warlock/Troll Mage/Troll Priest

step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #completewith Swordtraining1
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
    .money <0.3023
step << Orc Rogue/Troll Rogue
    .goto Undercity,63.25,48.56
    .fp Undercity >>Aprenda a rota de voo de Undercity
    .target Michael Garrett
    .money <0.3023
step << Orc Rogue/Troll Rogue
    #label Swordtraining1
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Arquibaldo|r no Bairro da Guerra
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
    >>|cRXP_WARN_Alternativamente, procure na Casa de Leilões por algo melhor ou mais barato|r
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
    >>|cRXP_BUY_Compre Seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Pule isto se você quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << skip --Orc Rogue/Troll Rogue
    .goto Undercity,84.86,20.34
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Faça um Logout Pular no Bairro Mágico posicionando seu personagem na parte mais alta da escada mais baixa até parecer que estão flutuando, então desconecte e conecte novamente|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    >>|cRXP_WARN_Se você não conseguir fazer isso, apenas saia de Cidade Baixa normalmente|r
    .zoneskip Undercity,1
step
    #completewith next
    .zone Tirisfal Glades >>Saia da Cidade Baixa
    .zoneskip Undercity,1
step
    #completewith DeliverytoSPF
    .goto Tirisfal Glades,61.52,53.20,80 >>Viaje para Brill
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Coleman|r e |cRXP_FRIENDLY_Gretchen|r dentro da estalagem
    >>|cRXP_FRIENDLY_Gretchen|r |cRXP_WARN_está no segundo andar|r
    .accept 354 >>Aceite Mortes na família
    .accept 362 >>Aceite Os moinhos assombrados
    .target +Coleman Farthing
    .goto Tirisfal Glades,61.72,52.29
    .accept 375 >>Aceite O frio da morte
    .target +Gretchen Dedmar
    .goto Tirisfal Glades,61.89,52.73
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caio Cantígnea|r dentro da estalagem
    .accept 1881 >>Aceite Falar com Anastasia
    .target Cain Firesong
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Vermelho-speckled Mushrooms] |cRXP_BUY_dela|r << Warlock
    .vendor >>Comerciante Lixo
    .collect 1179,20,367,1 << Mage/Priest/Shaman --Ice Cold Milk (20)
    .collect 4605,20,367,1 << Rogue/Warrior --Red-speckled Mushroom (20)
    .collect 1179,15,367,1 << Warlock --Ice Cold Milk (15)
    .collect 4605,15,367,1 << Warlock --Red-speckled Mushroom (15)
    .money <0.075 << Warlock
    .money <0.05 << !Warlock
    .target Innkeeper Renee
step
    .goto Tirisfal Glades,61.15,52.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sra. Hibérnias|r
    >>|cRXP_BUY_Compre um ou mais|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_de|r |cRXP_FRIENDLY_dela|r
    .collect 4496,1,398,1 --Small Brown Pouch (1)
    .target Mrs. Winters
    .money <0.05
step
    #season 0,1
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .accept 427 >>Aceite Guerra à Cruzada Escarlate
    .target Executor Zygand
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #season 2
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .accept 427 >>Aceite Guerra à Cruzada Escarlate
    .target Executor Zygand
    .maxlevel 10 << !Warlock !Rogue
    .maxlevel 11 << Warlock
    .train 400095,1 << Rogue
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,60.59,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .accept 427 >>Aceite Guerra à Cruzada Escarlate
    .target Executor Zygand
    .maxlevel 10
step
    #season 0,1
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>Aceite Procura-se: Olho de Verme
    .maxlevel 11 << !Warrior !Warlock
    .maxlevel 12 << Warlock
    .maxlevel 13 << Warrior
step
    #season 2
    .goto Tirisfal Glades,60.74,51.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wanted Poster|r
    .accept 398 >>Aceite Procura-se: Olho de Verme
    .maxlevel 11 << !Warrior !Warlock !Rogue
    .maxlevel 12 << Warlock/Rogue
    .maxlevel 13 << Warrior
    .train 400095,1 << Rogue
step
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sevren|r dentro do edifício
    .accept 358 >>Aceite Roubacovas
    .target Magistrate Sevren
    .maxlevel 10
step
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Aceite Entrega na Floresta de Pinhaprata
    .accept 367 >>Aceite Uma Nova Praga
    .target Apothecary Johaan
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step
    #label DeliverytoSPF
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Aceite Entrega na Floresta de Pinhaprata
    .target Apothecary Johaan
step
    .goto Tirisfal Glades,58.20,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .accept 404 >>Aceite Uma tarefa podre
    .target Deathguard Dillinger
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Warrior
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 1819 >>Entregue Ulag, O Cutelo
    .accept 1820 >>Aceite Encontrando Eurico
    .target Deathguard Dillinger
    .isQuestAvailable 1498
step
    #optional
    #completewith Pumpkins
    >>Mate qualquer |cRXP_ENEMY_Darkhound|r que vir. Saqueie-os para obter seus |cRXP_LOOT_Sanguíneo|r
    >>|cRXP_WARN_Você receberá|r |T133849:0|t[Lerdo Sand] |cRXP_WARN_da continuação desta missão|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound
    .isOnQuest 367
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
    >>Mate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os por seus |cRXP_LOOT_Pelts|r
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
    .maxlevel 10 << !Warlock
    .maxlevel 11 << Warlock
step << Rogue
    #season 2
    #optional
    .goto Tirisfal Glades,40.91,54.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Simério|r
    .accept 365 >>Aceite Campos de mágoa
    .target Deathguard Simmer
    .maxlevel 10
step << Mage
    #season 2
    #completewith next
    .goto Tirisfal Glades,36.72,50.94,0
    .goto Tirisfal Glades,34.78,51.24,0
    >>Lance |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
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
    >>Saque as |cRXP_LOOT_Pumpkins|r encontradas no campo
    .complete 365,1 --Tirisfal Pumpkin (10)
    .isOnQuest 365
step
    #optional
    #loop
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
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Abate os |cRXP_ENEMY_Scarlet Warriors|r.
    .complete 427,1 --Scarlet Warrior (10)
    .mob Scarlet Warrior
    .isOnQuest 427
step
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os por seus |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    #label Darkhounds1
    #loop
    .goto Tirisfal Glades,50.36,49.51,0
    .goto Tirisfal Glades,45.90,50.95,50,0
    .goto Tirisfal Glades,45.11,48.06,50,0
    .goto Tirisfal Glades,47.07,45.37,50,0
    .goto Tirisfal Glades,50.36,49.51,50,0
    >>Mate qualquer |cRXP_ENEMY_Darkhound|r que você vê. Saqueie-os por seu |cRXP_LOOT_Sanguíneo|r
    .complete 367,1 --Darkhound Blood (5)
    .mob Decrepit Darkhound
    .mob Cursed Darkhound`
    .isOnQuest 367
step
    #optional
    #softcore
    #completewith ProofofDemiseTurnin
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 427
step
    #optional
    #hardcore
    #completewith ProofofDemiseTurnin
    .goto Tirisfal Glades,58.20,51.43,120 >>Volte para Montalvo
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 404 >>Entregue Uma tarefa podre
    .accept 426 >>Aceite Os Moinhos Invadidos
    .isQuestComplete 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,58.20,51.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .accept 426 >>Aceite Os Moinhos Invadidos
    .isQuestTurnedIn 404
    .target Deathguard Dillinger
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 367 >>Entregue Uma Nova Praga
    .accept 368 >>Aceite Uma Nova Praga
    .isQuestComplete 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 368 >>Aceite Uma Nova Praga
    .isQuestTurnedIn 367
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 365 >>Entregue Campos de mágoa
    .accept 407 >>Aceite Campos de mágoa
    .isQuestComplete 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 407 >>Aceite Campos de mágoa
    .isQuestTurnedIn 365
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 427 >>Entregue Em Guerra With The Scarlet Cruzada
    .accept 370 >>Aceite Guerra à Cruzada Escarlate
    .target Executor Zygand
    .isQuestComplete 427
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .accept 370 >>Aceite Guerra à Cruzada Escarlate
    .target Executor Zygand
    .isQuestTurnedIn 427
step
    #optional
    #label ProofofDemiseTurnin
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Burgess|r
    .accept 374 >>Aceite Prova da morte
    .target Deathguard Burgess
    .isQuestTurnedIn 427
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
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
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
    >>|cRXP_BUY_Compre Seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Pule isto se você quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Warlock
    .goto Undercity,85.07,25.96
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silvério Hidalgo|r no Distrito da Magia
    .turnin 1478 >>Entregue Convocação de Hidalgo
    .accept 1473 >>Aceite Criatura do caos
    .isQuestAvailable 1504
step << Mage
    #optional
    .abandon 1883 >>Abandone Fale com Un'Thuwa, caso contrário você não conseguirá aceitar a próxima missão
    .isOnQuest 1883
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r no Bairro Mágico
    .turnin 1881 >>Entregue Falar com Anastasia
    .accept 1882 >>Aceite A Fazenda dos Balnir
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
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
step << Undead Priest
    #optional
    #ah
    .goto Undercity,64.20,49.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Leiloeira Rhyker|r
    >>|cRXP_BUY_Compre Seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Pule isto se você quiser, é apenas uma pequena economia de tempo|r
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
    #completewith Swordtraining2
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
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
    >>|cRXP_WARN_Alternativamente, procure na Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1,354,1 --Collect Cutlass (1)
    .money <0.3023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1885 >>Entregue Júnio Aquino
    .accept 1886 >>Aceite Os Sicários
    .target Mennet Carkad
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .zoneskip Undercity,1
step << Rogue
    #label Swordtraining2
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Arquibaldo|r no Bairro da Guerra
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
    >>|cRXP_BUY_Compre Seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Pule isto se você quiser, é apenas uma pequena economia de tempo|r
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
    >>Colete |cRXP_LOOT_Scarlet Insignia Rings|r
    >>|cRXP_WARN_Você não precisa completar este passo agora|r
    .complete 374,1 --Scarlet Insignia Ring (10)
    .isOnQuest 374
step << Warlock
    #optional
    #completewith next
    .goto Tirisfal Glades,51.06,67.57
    >>Saqueie |cRXP_PICK_Baú do Perrine|r para pegar |T133733:0|t[Grimório de Egalin]
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
    >>Abate |cRXP_ENEMY_Capitão Perrine|r, os |cRXP_ENEMY_Zelotes|r e os |cRXP_ENEMY_Missionários|r.
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silvério Hidalgo|r no Distrito da Magia
    .turnin 1473 >>Entregue Criatura do caos
    .accept 1471 >>Aceite A vinculação
    .target Carendin Halgar
    .isQuestAvailable 1504
step << Warlock
    #completewith next
    .goto Undercity,86.64,27.10
    .cast 9221 >>|cRXP_WARN_Use as|r |T134416:0|t[Runas de Evocação] |cRXP_WARN_no Círculo de Evocação|r
    .use 6284
step << Warlock
    .goto Undercity,86.64,27.10
    >>Mate o |cRXP_ENEMY_Emissário do Caos Invocado|r
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
    .goto Undercity,67.90,15.28,30 >>|cRXP_WARN_Faça um Pulo de Logout posicionando seu personagem na parte mais alta do degrau mais baixo até parecer que está flutuando, depois saia e entre novamente|r
    .link https://www.youtube.com/watch?v=-Bi95bCN8dM >>https://www.youtube.com/watch?v=-Bi95bCN8dM >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    >>|cRXP_WARN_Se você não conseguir fazer isso, apenas saia de Cidade Baixa normalmente|r
    .zoneskip Undercity,1
step << Warlock
    #completewith next
    .goto Tirisfal Glades,61.92,64.85,50,0
    .zone Tirisfal Glades >>Saia da Cidade Baixa
    .zoneskip Tirisfal Glades
step
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os por seus |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,47.60,44.03,150 >>Viaje para noroeste em direção aos Moinhos Agamand
    .isOnQuest 362
step
    #optional
    #completewith ThurmanGregor
    >>|T134939:0|t[|cRXP_LOOT_Carta de Timóteo|r] |cRXP_WARN_Pode cair desses inimigos. Aceite a missão se cair.|r
    .collect 2839,1,361 --Collect A Letter to Yvette (1)
    .accept 361 >>Aceite A carta que nunca chegou
    .use 2839
step
    #completewith ThurmanGregor
    >>Abata os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saque-os pelos |cRXP_LOOT_Ribs|r e pelos |cRXP_LOOT_Skulls|r
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
    >>Mate |cRXP_ENEMY_Delmiro Agamand|r. Saque-o para pegar |cRXP_LOOT_Restos Mortais de Delmiro|r
    .complete 362,1 --Devlin's Remains (1)
    .mob Devlin Agamand
    .isOnQuest 362
step
    #optional
    .goto Tirisfal Glades,49.34,36.02
    >>Mate |cRXP_ENEMY_Nissa|r. Saqueie-a pelos seus |cRXP_LOOT_Remains|r. Ela pode estar dentro do prédio
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
    >>Mate |cRXP_ENEMY_Thurman|r e |cRXP_ENEMY_Gregor|r. Saqueie-os pelos seus |cRXP_LOOT_Remains|r. Eles podem patrulhar por aí
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
    >>Abata os |cRXP_ENEMY_Soldiers|r e os |cRXP_ENEMY_Bonecasters|r. Saque-os pelos |cRXP_LOOT_Ribs|r e pelos |cRXP_LOOT_Skulls|r
    .complete 426,1 --Notched Rib (5)
    .mob +Rattlecage Soldier
    .mob +Cracked Skull Soldier
    .complete 426,2 --Blackened Skull (3)
    .mob +Darkeye Bonecaster
    .isOnQuest 426
step
    #requires MillsOverun
    #optional
    #completewith MaggotEye
    .goto Tirisfal Glades,54.32,31.56,15,0
    .goto Tirisfal Glades,54.78,32.75,15,0
    .goto Tirisfal Glades,55.84,32.28,15,0
    .goto Tirisfal Glades,56.55,32.43,40,0
    .goto Tirisfal Glades,57.77,31.69,50 >>Desça as colinas.
    >>|cRXP_WARN_Tenha cuidado. Não receba muito dano de queda. Siga o marcador para segurança|r
    .isQuestComplete 354
step
    #optional
    #requires MillsOverun
    #completewith next
    >>Mate |cRXP_ENEMY_Gnolls|r e |cRXP_ENEMY_Mongrels|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Gnoll
    .mob Rot Hide Mongrel
    .isOnQuest 358
step
    #optional
    #requires MillsOverun
    #label MaggotEye
    .goto Tirisfal Glades,58.66,30.77
    >>Mate o |cRXP_ENEMY_Olho de Verme|r. Saqueie-o para pegar a |cRXP_LOOT_Pata|r
    .complete 398,1 --Maggot Eye's Paw (1)
    .mob Maggot Eye
step
    #optional
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
    >>Mate |cRXP_ENEMY_Murlocs|r. Saqueie-os pelos seus |cRXP_LOOT_Escamoso|r
    .complete 368,1 --Vile Fin Scale (5)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .isOnQuest 368
step
    #optional
    #completewith RotHideGnolls
    >>Mate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os por seus |cRXP_LOOT_Pelts|r
    .complete 375,1 --Duskbat Pelt (5)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .isOnQuest 375
step << Mage
    #season 2
    #optional
    #completewith RotHideGnolls
    .goto Tirisfal Glades,59.84,33.17,0
    .goto Tirisfal Glades,58.38,35.28,0
    .goto Tirisfal Glades,60.09,37.01,0
    >>Lance |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step
    #optional
    #label RotHideGnolls
    #loop
    .goto Tirisfal Glades,55.24,42.54,0
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    >>Abata os |cRXP_ENEMY_Mongrels|r e os |cRXP_ENEMY_Roubacovas|r. Saque-os pelo |cRXP_LOOT_Ichor|r
    .complete 358,2 --Rot Hide Mongrel (5)
    .complete 358,1 --Rot Hide Graverobber (8)
    .complete 358,3 --Embalming Ichor (8)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .isOnQuest 358
step
    #optional
    #softcore
    #completewith MillsTurnin
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #optional
    #hardcore
    #completewith MillsTurnin
    .subzone 159 >>Viaje para Brill
step
    #optional
    .goto Tirisfal Glades,58.19,51.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Dinis|r
    .turnin 426 >>Vá para Os moinhos invadidos
    .target Deathguard Dillinger
    .isQuestComplete 426
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 368 >>Entregue Uma Nova Praga
    .accept 369 >>Aceite Uma Nova Praga
    .target Apothecary Johaan
    .isQuestComplete 368
step
    #optional
    .goto Tirisfal Glades,59.45,52.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 369 >>Aceite Uma Nova Praga
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 398 >>Entregue Procura-se: Olho de Verme
    .turnin 370 >>Entregue Em Guerra With The Scarlet Cruzada
    .accept 371 >>Aceite Guerra à Cruzada Escarlate
    .target Executor Zygand
    .isQuestComplete 370
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>Usar o |T133385:0|t[|cRXP_LOOT_Anel-sinete do Tenente Escarlate|r] para criar |T134328:0|t[|cRXP_LOOT_Memorando Escarlate Forjado|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step << Rogue
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jamie Noré|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] |cRXP_WARN_para treinar|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 398 >>Entregue Procura-se: Olho de Verme
    .accept 371 >>Aceite Guerra à Cruzada Escarlate
    .target Executor Zygand
    .isQuestTurnedIn 370
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 398 >>Entregue Procura-se: Olho de Verme
    .target Executor Zygand
    .isQuestComplete 398
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistrado Sevren|r
    .turnin 358 >>Entregue Roubacovas
    .accept 359 >>Aceite Deveres Renegados
    .target Magistrate Sevren
    .isQuestComplete 358
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistrado Sevren|r
    .accept 359 >>Aceite Deveres Renegados
    .target Magistrate Sevren
    .isQuestTurnedIn 358
step
    #optional
    .goto Tirisfal Glades,61.03,52.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abigail|r
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_de|r |cRXP_FRIENDLY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,61.58,52.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yvette|r
    .turnin 361 >>Entregue Uma Carta Não Entregue
    .target Yvette Farthing
    .isOnQuest 361
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os moinhos assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target Coleman Farthing
    .isQuestComplete 354
step
    #optional
    #label MillsTurnin
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 354 >>Entregue Mortes na família
    .turnin 362 >>Vá para Os moinhos assombrados
    .accept 355 >>Aceite Fale com Sevren
    .target Coleman Farthing
    .isQuestComplete 362
step
    #optional
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .accept 355 >>Aceite Fale com Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eurico|r
    .turnin 1820 >>Entregue Fale com Coleman << Warrior
    .accept 1821 >>Aceite Agamand Heirlooms << Warrior
    .accept 355 >>Aceite Fale com Sevren
    .target Coleman Farthing
    .isQuestTurnedIn 1819
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r no segundo andar da estalagem
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.train 588 >>Aprenda |T135926:0|t[Fogo Interior]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 145 >>Aprenda |T135812:0|t[Bola de Fogo Posto 3]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 1766 >>Aprenda |T132219:0|t[Chute]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755 >>Aprenda |T136168:0|t[Funil de Vida]
    .target Rupert Boch
    .xp <12,1
step << !Mage
    .goto Tirisfal Glades,61.71,52.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Geni|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dela|r << Mage/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r <<Warrior/Rogue
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_e|r |T134532:0|t[Cogumelo de Bolinhas Vermelhas] |cRXP_BUY_dela|r << Warlock/Hunter
    .vendor >>Comerciante Lixo
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
    .accept 360 >>Aceite Devolver para o Magistrado
    .accept 356 >>Aceite Patrulha da retaguarda
    .target Deathguard Linnea
    .isQuestTurnedIn 358
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    .goto Tirisfal Glades,65.49,60.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Necroguarda Lina|r
    .accept 356 >>Aceite Patrulha da retaguarda
    .target Deathguard Linnea
    .maxlevel 13 << !Warrior !Warlock !Mage
step
    #optional
    #completewith HorrorsandSpirits
    >>Mate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os por seus |cRXP_LOOT_Pelts|r
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
    #season 2
    #completewith HorrorsandSpirits
    >>Lance |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    .goto Tirisfal Glades,77.48,62.00
    >>Saque qualquer uma das plantas no chão para um |cRXP_PICK_Balnir Snapdragon|r
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
step << Mage
    #season 2
    #loop
    .goto Tirisfal Glades,76.51,61.77,0
    .goto Tirisfal Glades,75.12,61.49,20,0
    .goto Tirisfal Glades,76.51,61.77,20,0
    .goto Tirisfal Glades,76.04,59.31,20,0
    >>Lance |T136071:0|t[Polimorfia] em |cRXP_ENEMY_Odd Melons|r
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
    .train 118,3
step << Mage
    #season 2
    >>Usar o |T134332:0|t|cRXP_LOOT_[Anotações do Boticário]|r para criar |T134332:0|t|cRXP_LOOT_[Anotações de Feitiços: Esclarecimento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
    .itemcount 208183,6
step << Mage
    #season 2
    .train 415942 >>|cRXP_WARN_Use o|r |T134332:0|t|cRXP_LOOT_[Anotações de Feitiços: Esclarecimento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Esclarecimento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
step << Priest
    #optional
    #completewith Scarletrings
    >>|cRXP_WARN_Coletar 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_para sua Varinha Mágica Inferior. Esta é a última chance de conseguir o suficiente antes de Floresta de Pinhaprata.|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Coletar |cRXP_LOOT_Insígnia Escarlate Anéis|r
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
    >>Mate o |cRXP_ENEMY_Capitão Vidálio|r e os |cRXP_ENEMY_Frades Escarlates|r
    >>|cRXP_WARN_Cuidado!|r Os |cRXP_ENEMY_Frades Escarlates|r |cRXP_WARN_podem conjurar|r |T135929:0|t[Cura Inferior]
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
step << Priest
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
    >>|cRXP_WARN_Coletar 3 pilhas de|r |T132889:0|t[Linho] |cRXP_WARN_para sua Varinha Mágica Inferior. Esta é a última chance de conseguir o suficiente antes de Floresta de Pinhaprata.|r
    .collect 2589,60,435,1 --Linen Cloth (60)
    .mob Scarlet Friar
    .mob Scarlet Zealot
step
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Quiropúsculo|r que você veja. Saque-os por seus |cRXP_LOOT_Pelts|r
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
    >>Mate as |cRXP_ENEMY_Aranhas Tresvarias de Teia Noturna|r. Saqueie-as por seus |cRXP_LOOT_Venenom|r
    .complete 369,1 --Vicious Night Web Spider Venom (4)
    .mob Vicious Night Web Spider
    .isOnQuest 369
step
    #optional
    #completewith LinneaTurnin
    .goto Tirisfal Glades,65.49,60.25,60 >>Voe de volta para |cRXP_FRIENDLY_Linnea|r
step
    #optional
    #completewith next
    >>Termine de matar os |cRXP_ENEMY_Morcegos do Crepúsculo|r. Saqueie-os por suas |cRXP_LOOT_Peles|r
    >>|cRXP_WARN_Você pode pular essa missão se seu rng foi ruim|r
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
    >>|cRXP_BUY_Compre um|r |T132891:0|t[Coarse Fio] |cRXP_BUY_de|r |cRXP_FRIENDLY_dela|r
    .complete 375,2 --Coarse Thread (1)
    .target Abigail Shiel
    .itemcount 2876,5
    .isOnQuest 375
step
    #optional
    .goto Tirisfal Glades,60.93,52.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Burgess|r
    .turnin 374 >>Entregue Prova da morte
    .target Deathguard Burgess
    .isQuestComplete 374
step
    #optional
    .goto Tirisfal Glades,60.58,51.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Executor Zigano|r
    .turnin 371 >>Entregue Em Guerra With The Scarlet Cruzada
    .target Executor Zygand
    .isQuestComplete 371
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistrado Sevren|r
    .turnin 360 >>Entregue Devolver to the Magistrate
    .target Magistrate Sevren
    .isQuestTurnedIn 359
step
    #optional
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistrado Sevren|r
    .turnin 355 >>Entregue Fale com Sevren
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistrado Sevren|r
    .turnin 355 >>Entregue Fale com Sevren
    .accept 408 >>Aceite A Cripta da Família
    .target Magistrate Sevren
    .isQuestTurnedIn 354
step
    #optional
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .turnin 369 >>Entregue Uma Nova Praga
    .accept 492 >>Aceite Uma Nova Praga
    .accept 445 >>Aceite Entrega na Floresta de Pinhaprata
    .target Apothecary Johaan
    .isQuestTurnedIn 368
step
    .goto Tirisfal Glades,59.45,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Johaan|r
    .accept 445 >>Aceite Entrega na Floresta de Pinhaprata
    .target Apothecary Johaan
step
    #optional
    .goto Tirisfal Glades,61.89,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gretchen|r no andar de cima
    .turnin 375 >>Entregue O Frio da Morte
    .target Gretchen Dedmar
    .isQuestComplete 375
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.train 588,1 >>Aprenda |T135926:0|t[Fogo Interior]
    .target Dark Cleric Beryl
    .xp <12,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 145,1 >>Aprenda |T135812:0|t[Bola de Fogo Posto 3]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 1766,1 >>Aprenda |T132219:0|t[Chute]
    .target Marion Call
    .xp <12,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755,1 >>Aprenda |T136168:0|t[Funil de Vida]
    .target Rupert Boch
    .xp <12,1
step << Warrior
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >>Voe para a cripta em Agamand Mills
    .isOnQuest 1821
step << Warrior
    #completewith CaptainDargol
    >>Pegue o |cRXP_PICK_Agamand Arma Racks|r no chão
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #completewith next
    >>Abate os |cRXP_ENEMY_Wailing Ancestors|r e os |cRXP_ENEMY_Rotting Ancestors|r
    >>|cRXP_WARN_Cuidado! Os inimigos nesta cripta reaparecem dinamicamente!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
step << Warrior
    #label CaptainDargol
    .goto Tirisfal Glades,52.53,26.78,8,0
    .goto Tirisfal Glades,52.08,26.81,8,0
    .goto Tirisfal Glades,52.03,26.43,8,0
    .goto Tirisfal Glades,52.81,26.36
    >>Mate o |cRXP_ENEMY_Capitão Dargol|r. Saqueie-o por seu |cRXP_LOOT_Crânio|r. Ele está no fundo da cripta
    .complete 408,3 --Dargol's Skull (1)
    .mob Captain Dargol
    .isOnQuest 408
step << Warrior
    #completewith next
    >>Pegue o |cRXP_PICK_Agamand Arma Racks|r no chão
    .complete 1821,1 --Agamand Family Axe (1)
    .complete 1821,2 --Agamand Family Dagger (1)
    .complete 1821,3 --Agamand Family Mace (1)
    .complete 1821,4 --Agamand Family Sword (1)
    .isOnQuest 1821
step << Warrior
    #loop
	.goto Tirisfal Glades,51.90,26.87,0
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Abate os |cRXP_ENEMY_Wailing Ancestors|r e os |cRXP_ENEMY_Rotting Ancestors|r
    >>|cRXP_WARN_Cuidado! Os inimigos nesta cripta reaparecem dinamicamente!|r
    .complete 408,1 --Wailing Ancestor (8)
    .mob +Wailing Ancestor
    .complete 408,2 --Rotting Ancestor (8)
    .mob +Rotting Ancestor
    .isOnQuest 408
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
step << skip --Warrior
    .goto Tirisfal Glades,51.68,25.67
    .goto Tirisfal Glades,56.24,49.42,30 >>|cRXP_WARN_Salte em um dos suportes de armas. Realize um Pulo de Logout saindo e fazendo login novamente|r
    .link https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >>https://www.youtube.com/watch?v=bH_NYmWf8Lc&ab >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    .isQuestComplete 408
step << Warrior
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Warrior
    #hardcore
    #completewith next
    .subzone 159 >>Viaje para Brill
step << Warrior
    .goto Tirisfal Glades,61.26,50.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magistrado Sevren|r
    .turnin 408 >>Vá para A Cripta da Família
    .target Magistrate Sevren
    .isQuestComplete 408
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Coleman|r na estalagem
    .turnin 1821 >>Entregue Agamand Heirlooms
    .target Coleman Farthing
    .isQuestComplete 1821
step << Warrior
    .goto Tirisfal Glades,61.72,52.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Coleman|r na estalagem
    .turnin 1822 >>Herança Arma - Missão
    .target Coleman Farthing
    .isQuestTurnedIn 1821
step
    #optional
    .goto Tirisfal Glades,61.97,51.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Zelote Escarlate Capturado|r no andar de baixo nos fundos da estalagem
    .turnin 407 >>Entregue Campos de mágoa
    .target Captured Scarlet Zealot
    .isQuestTurnedIn 365
step
    #optional
    .goto Tirisfal Glades,61.94,51.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Capturado|r no andar de baixo nos fundos da estalagem
    .turnin 492 >>Entregue Uma Nova Praga
    .target Captured Mountaineer
    .isOnQuest 492
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.train 588,1 >>Aprenda |T135926:0|t[Fogo Interior]
    .target Dark Cleric Beryl
    .xp <12,1
    .xp >14,1
step << Priest
    .goto Tirisfal Glades,61.57,52.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clérigo das Trevas Beryl|r no segundo andar
	.train 6074 >>Treine suas magias de classe
    .target Dark Cleric Beryl
    .xp <14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Cain|r no segundo andar
    .train 145,1 >>Aprenda |T135812:0|t[Bola de Fogo Posto 3]
    .target Cain Firesong
    .xp <12,1
    .xp >14,1
step << Mage
    .goto Tirisfal Glades,61.97,52.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Cain|r no segundo andar
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
    .goto Tirisfal Glades,61.85,52.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Austil|r
    .train 1160 >>Treine suas magias de classe
    .target Austil de Mon
    .xp <14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 1766,1 >>Aprenda |T132219:0|t[Chute]
    .target Marion Call
    .xp <12,1
    .xp >14,1
step << Rogue
    .goto Tirisfal Glades,61.75,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marion Calder|r no segundo andar
    .train 1758 >>Treine suas magias de classe
    .target Marion Call
    .xp <14,1
step << Warlock
    .goto Tirisfal Glades,61.59,52.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rupertino Boch|r
    .train 755,1 >>Aprenda |T136168:0|t[Funil de Vida]
    .target Rupert Boch
    .xp <12,1
    .xp >14,1
step << Warlock
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
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
step << Mage
    .goto Undercity,85.12,10.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anastasia|r no Bairro Mágico
    .turnin 1882 >>Entregue A Fazenda dos Balnir
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
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step << !Rogue !Mage
    #completewith UCflightpath3
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
step << !Undead
    #label UCflightpath3
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fp Undercity >>Aprenda a rota de voo de Undercity
    >>|cRXP_WARN_Pule este passo se você já pegou o caminho do voo!|r
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
    >>|cRXP_WARN_Alternativamente, procure na Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1 --Collect Cutlass (1)
    .money <0.2023
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .target Louis Warren
    .zoneskip Undercity,1
step << Undead Rogue
    .goto Undercity,83.52,69.09
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Júnio Aquino|r
    .turnin 1885 >>Entregue Júnio Aquino
    .accept 1886 >>Aceite Os Sicários
    .target Mennet Carkad
    .isOnQuest 1885
step << Rogue
    #label Swordtraining3
    .goto Undercity,57.29,32.72
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Arquibaldo|r no Guerra Quarter
    .train 201 >>Treine Espadas de Uma Mão
    .target Archibald
    .money <0.1
step << Rogue
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 201,1
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
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
step << Troll Warrior/Undead Warrior/Tauren Shaman/Troll Shaman/Orc Shaman
    .goto Undercity,58.82,32.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Benijah|r|cRXP_BUY_. Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dele|r
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
    >>|cRXP_BUY_Compre Seis|r |T134339:0|t[Discolored Worg Corações] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Pule isto se você quiser, é apenas uma pequena economia de tempo|r
    .collect 3164,6,429,1 --Collect Discolored Worg Heart (x6)
    .target Auctioneer Rhyker
    .zoneskip Undercity,1
step << Priest
    .goto Undercity,62.47,61.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lavínia Queiroz|r
    .train 7411 >>Treine |T136244:0|t[Encantamento]
    .target Lavinia Crowe
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.77,30.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josefo Gregório|r
    .train 3908 >>Aprenda |T136249:0|t[Alfaiataria]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|cRXP_WARN_Vire tudo seu|r |T132889:0|t[Linho] |cRXP_WARN_em|r |T132890:0|t[Peça de Linho]
    .collect 2996,30,435,1 --Bolt of Linen Cloth (30)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.76,30.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josefo Gregório|r
    .train 7623 >>Aprenda |T132662:0|t[Veste de Linho Marrom]
    .target Josef Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,70.57,30.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Berta Gregório|r
    >>|cRXP_BUY_Compre |r |T132891:0|t[Fio Grosso] |cRXP_BUY_dela|r
    .collect 2320,30,435,1 --Coarse Thread (30)
    .target Millie Gregorian
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Crie o máximo de|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que conseguir|r
    .collect 6238,9,398,1 --Brown Linen Robe(9)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.35,60.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Tadeu Uchoa|r|cRXP_BUY_. Compre um|r |T133942:0|t[Bastão de Cobre] |cRXP_BUY_e|r |T135435:0|t[Madeira Simples] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Desencante todas as|r |T132662:0|t[Vestes de Linho Marrom] |cRXP_WARN_que você fez e crie um|r |T135225:0|t[Bastão Rúnico de Cobre]
    >>|cRXP_WARN_Se você não obteve uma|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_então compre uma de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_se houver uma disponível. Senão, termine este passo mais tarde|r
    .collect 6218,1,435,1 --Runed Copper Rod (1)
    .collect 4470,1,435,1 --Simple Wood (1)
    .target Thaddeus Webb
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    .goto Undercity,62.54,60.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Augusto Incantum|r
    .train 14293 >>Aprenda |T135139:0|t[Varinha Mágica Inferior]
    .target Malcomb Wynn
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    >>|cRXP_WARN_Crie uma|r |T135139:0|t[Varinha Mágica Inferior]
    >>|cRXP_WARN_Se você não obteve uma|r |T132867:0|t[Essência Mágica Inferior] |cRXP_WARN_então compre uma de|r |cRXP_FRIENDLY_Thaddeus|r |cRXP_WARN_se houver uma disponível. Senão, termine este passo mais tarde|r
    .collect 11287,1,435,1 --Lesser Magic Wand (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step << Priest
    #optional
    #completewith Entersilverpine
    +|cRXP_WARN_Equipe a|r |T135139:0|t[Varinha Mágica Inferior]
    .use 11287
    .itemcount 11287,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.3
step
    #xprate <1.5
    #optional
    .abandon 806 >>Abandone Tempestades sombrias
step
    #optional
    .abandon 408 >>Abandone A Cripta da Família
step << Warrior
    #optional
    .abandon 1821 >>Abandone Agamand Heirlooms
step
    #optional
    #xprate >1.49
    .abandon 830 >>Abandone As Ordens do Almirante
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
step
    #label Entersilverpine
    .goto Tirisfal Glades,53.20,75.82
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
    .zoneskip Silverpine Forest
]])


local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 1-7 Durotar
#version 1
#group Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 7-13 Durotar


step << !Orc !Troll
    #completewith next
    +|cRXP_WARN_Você selecionou um guia destinado a Orcs e Trolls. Escolha a mesma zona inicial em que você inicia|r
step
    .goto Durotar,43.29,68.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaltunk|r
    .accept 4641 >>Aceite O seu lugar no mundo
    .target Kaltunk
step
    #season 2
    .xp 2 >>Abate quatro |cRXP_ENEMY_Javalis Variegados|r para atingir nível 2
    >>Saque-os até ter 15 de cobre em itens de vendedor|cRXP_WARN_ << !Warlock !Priest
    >>Saque-os até ter 30 de cobre em itens de vendedor|cRXP_WARN_ << Warlock/Priest
    .goto Durotar,44.32,71.16
    .mob Mottled Boar
step
    #season 2
    .goto Durotar,42.73,68.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Runa Corretor de Runas|r
    >>|cRXP_WARN_Não venda equipamento que pode ser equipado|r
    >>|cRXP_BUY_Lixo de Comerciante e compre o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r] e |T134419:0|t[|cRXP_FRIENDLY_Runa do Ataque Frenético|r] << Orc Warrior
    >>|cRXP_BUY_Lixo de Comerciante e compre o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r] << Troll Warrior
    >>|cRXP_BUY_Lixo de Comerciante e compre o|r |T134920:0|t[|cRXP_FRIENDLY_Ícone Jakárico|r] |cRXP_BUY_e|r |T134918:0|t[|cRXP_FRIENDLY_Ícone Diádico|r] << Shaman
    >>|cRXP_BUY_Venda o lixo do Comerciante e compre todas as Runas de AdE principais|r << Mage
    >>|cRXP_BUY_Venda lixo do comerciante e compre todas as seguintes runas:|r << Hunter/Warlock/Rogue/Priest
    .collect 206387,1 << Shaman --Kajaric Icon
    .collect 206381,1 << Shaman --Dyadic Icon
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 204716,1 << Orc Warrior --Rune of Frenzied Assault
    .collect 208799,1 << Mage --Spell Notes: Living Bomb
    .collect 203746,1 << Mage --Spell Notes: Living Flame
    .collect 203748,1 << Mage --Spell Notes: Burnout
    .collect 225690,1 << Mage --Spell Notes: Frozen Orb
    .collect 203745,1 << Mage --Spell Notes: Ice Lance
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 205215,1 << Warlock --Rune of Tactics
    .collect 210824,1 << Warlock --Rune of the Pact
    .collect 211477,1 << Warlock --Rune of Incinerate
    .collect 205230,1 << Warlock --Rune of Haunting
    .collect 228797,1 << Warlock --Grimoire of Fel Armor
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 204795,1 << Rogue --Rune of Shadowstrike
    .collect 208772,1 << Rogue --Rune of Saber Slash
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    >>Lança de Gelo é útil apenas para que você possa entregar uma missão depois << Mage
    >>|cRXP_WARN_Você obterá o resto de suas runas mais tarde|r
    .target Rune Broker
    .skipgossip
step
    #season 2
    .train 403470 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r] para treinar |T132342:0|t[Ímpeto da Vitória]<< Warrior
    .train 415936 >>Usar a |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Bomba Viva|r] para treinar |T236220:0|t[Bomba Viva] << Mage
    .train 401759 >>Usar a |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Combustão|r] para treinar |T236207:0|t[Combustão] << Mage
    .train 440858 >>Usar a |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiço: Orbe Congelado|r] para treinar |T135851:0|t[Orbe Congelado] << Mage
    .train 401760 >>Usar a |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Lança de Gelo|r] para treinar |T135844:0|t[Lança de Gelo] << Mage
    .train 401768 >>Usar a |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Chama Viva|r] para treinar |T135820:0|t[Chama Viva]  << Mage
    .train 410121 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa da Quimera|r] para treinar |T236176:0|t[Tiro Quimérico] << Hunter
    .train 410122 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Lobo Solitário|r] para treinar |T132266:0|t[Lobo Solitário] << Hunter
    .train 416086 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Fechar Combate|r] para treinar |T132394:0|t[Especialista em Corpo a Corpo] << Hunter
    .train 440563 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Guerrilla|r] para treinar |T132171:0|t[Bater e Correr] << Hunter
    .train 415423 >>Usar o |T133739:0|t[|cRXP_FRIENDLY_Tratado do Aspecto da Víbora|r] para treinar |T132160:0|t[Aspecto da Víbora]|r] << Hunter
    .train 416009 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Rune of Tactics|r] para treinar |T136150:0|t[Táticas Demoníacas] << Warlock
    .train 425476 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Pacto|r] para treinar |T237562:0|t[Pacto Demoníaco] << Warlock
    .train 416015 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r] para treinar |T135789:0|t[Incinerar] << Warlock
    .train 403919 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa da Assombração|r] para treinar |T236298:0|t[Assombrar] << Warlock
    .train 403619 >>Usar o |T133733:0|t[|cRXP_FRIENDLY_Grimório de Armadura Vil|r] para treinar |T136156:0|t[Armadura Vil] |cRXP_WARN_use-a como seu feitiço de armadura principal|r << Warlock
    .train 402852 >>Usar a |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a Profanado Cidadela|r] para treinar |T237570:0|t[Homúnculos] << Priest
    .train 425447 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] para treinar |T236317:0|t[Ataque Frenético] << Orc Warrior
    .train 410111 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Rune of Comando para Matar|r] para treinar |T236174:0|t[Tiro Mortal] << Hunter
    .train 409580 >>Usar o |T133739:0|t[|cRXP_FRIENDLY_Tratado do Coração de Leão|r] para treinar |T132185:0|t[Coração de Leão] << Hunter
    .train 400101 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Passo Furtivo|r] para treinar |T132303:0|t[Passo Furtivo] << Rogue
    .train 432301 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Jogo Sujo|r] para treinar |T236285:0|t[Vantagem Desleal] << Rogue
    .train 400105 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Sombrio|r] para treinar |T132323:0|t[Golpe Sombrio] << Rogue
    .train 424984 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r] para treinar |T132375:0|t[Talho de Sabre] << Rogue
    .train 415922 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Rune of the Espadachim|r] para treinar |T134538:0|t[Bacamarte] << Rogue
    .equip 18 >>Equipe o |T134920:0|t[|cRXP_FRIENDLY_Ícone Jakárico|r], você pode usá-lo após 30 segundos para treinar |T237582:0|t[Estouro de lava] << Shaman
    .train 431663 >>Usar a |T135791:0|t[|cRXP_FRIENDLY_Epifania Psicosófica|r] para treinar |T136181:0|t[Aparições Corrompidas] << Priest
    .train 425216 >>Usar a |T136222:0|t[|cRXP_FRIENDLY_Memory of a Escuridão Purpouse|r] para treinar |T237514:0|t[Peste do Caos] << Priest
    .train 402862 >>Usar a |T136222:0|t[|cRXP_FRIENDLY_Memória de um Acólito Conturbado|r] para treinar |T237545:0|t[Penitência] << Priest
    .train 402849 >>Usar a |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito|r] para treinar |T136149:0|t[Palavra Sombria: Morte] << Priest
    .use 206387 << Shaman --Kajaric Icon
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 212552 << Priest --Psychosophic Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208799 << Mage --Spell Notes: Living Bomb
    .use 203748 << Mage --Spell Notes: Burnout
    .use 225690 << Mage --Spell Notes: Frozen Orb
    .use 203746 << Mage --Spell Notes: Living Flame
    .use 203745 << Mage --Spell Notes: Ice Lance
    .use 204716 << Orc Warrior --Rune of Frenzied Assault
    .use 206168 << Hunter --Rune of the Chimera
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 204806 << Warrior --Rune of Victory Rush
    .use 205215 << Warlock --Rune of Tactics
    .use 210824 << Warlock --Rune of the Pact
    .use 211477 << Warlock --Rune of Incinerate
    .use 205230 << Warlock --Rune of Haunting
    .use 228797 << Warlock --Grimoire of Fel Armor
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 227922 << Rogue --Rune of the Swashbuckler
step << Warlock
    #optional
    #sticky
    .aura 403619 >>Lembre-se de ativar seu |T136156:0|t[Armadura Vil]
step << Warlock
    .goto Durotar,42.59,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruzan|r
    .accept 1485 >>Aceite Familiares torpes
    .target Ruzan
step << Shaman
    #season 2
    #optional
    #label LavaBurst
    #sticky
    .train 410095 >>Usar o |T134920:0|t[|cRXP_FRIENDLY_Kajaric Ícone|r] do painel de personagem para treinar |T237582:0|t[Estouro de Lava - Feitiço - Feitiço]
step << Shaman
    #season 2
    #optional
    #requires LavaBurst
    #label Overload
    #sticky
    .equip 18,206381 >>Equipe o |T134918:0|t[|cRXP_FRIENDLY_Dyadic Ícone|r]
    .train 410094 >>Usar-o após 30 segundos para treinar |T136050:0|t[Sobrecarga]
    .use 206381
step
    .goto Durotar,42.28,68.48,12,0 << !Warrior !Shaman
    .goto Durotar,42.29,68.39,12,0 << Warrior/Shaman
    .goto Durotar,42.06,68.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gornek|r
    .turnin 4641 >>Entregue O seu lugar no mundo
    .accept 788 >>Aceite Dentes cortantes
    .target Gornek
step << Priest
    #season 2
    .goto Durotar,40.61,67.81
    >>|cRXP_WARN_Corra mais fundo na toca|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Lixo de Comerciante. Compre um |r |T132513:0|t[Cinto de Tecido Esfarrapado] |cRXP_BUY_dele para gravar uma runa nele|r
    .collect 3595,1 --Tattered Cloth Belt
    .target Huklah
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .accept 77642 >>Aceite Sabedoria dos Loas
    .turnin 77642 >>Entregue Sabedoria dos Loas
    .target Ken'jai
step << Priest
    #season 2
    .equip 10,711 >>|cRXP_WARN_Equipe as|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .equip 6,3595 >>|cRXP_WARN_Equipe o|r |T132513:0|t[Cinto de Tecido Esfarrapado]
    .use 711
    .use 3595
    .engrave 6 >>Grave |T136181:0|t[Aparições Corrompidas] no seu cinto
    .engrave 10 >>Grave |T136149:0|t[Palavra Sombria: Morte] em suas luvas
    .engrave 7 >>Grave |T237570:0|t[Homúnculos] em suas calças
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Aceite Pesquisa de Feitiços << Troll Mage
    .turnin 77643 >>Entregue Pesquisa de Feitiços << Troll Mage
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .target Mai'ah
step << Mage
    #season 2
    #optional
    .equip 10,711 >>|cRXP_WARN_Equipe as|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .engrave 10 >>|cRXP_WARN_Grave suas|r luvas com|r |T236220:0|t[Bomba Viva]
    .engrave 7 >>|cRXP_WARN_Grave suas calças com|r |T135820:0|t[Chama Viva]
    .engrave 5 >>|cRXP_WARN_Grave seu peitoral com|r |T236207:0|t[Combustão]
step << Mage
    #season 2
    #optional
    #sticky
    .engrave 15 >>Fique atento para quedas de manto. Quando conseguir um, grave |T135851:0|t[Orbe Congelado] nele
    >>|cRXP_WARN_Este feitiço é extremamente desequilibrado|r
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .accept 77590 >>Aceite Terreno Acidentado << Troll Hunter
    .accept 77584 >>Aceite Caçada pela Runa << Orc Hunter
    .turnin 77590 >>Entregue Terreno Acidentado << Troll Hunter
    .turnin 77584 >>Entregue Caçadores da Runa Perdida << Orc Hunter
    .target Jen'shan
step << Rogue
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r dentro
    .accept 77592 >>Aceite No Alto dos Penhascos << Troll Rogue
    .accept 77583 >>Aceite No Alto dos Penhascos << Orc Rogue
    .turnin 77592 >>Entregue No Alto dos Penhascos << Troll Rogue
    .turnin 77583 >>Entregue No Alto dos Penhascos << Orc Rogue
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .target Rwag
step << Rogue
    #season 2
    #optional
    .equip 10 >>Equipe as |T132952:0|t[Luvas de Couro Rachado]
    .engrave 10 >>Grave |T132375:0|t[Talho de Sabre] em suas luvas
    .use 2125 --Cracked Leather Gloves
step << Warrior/Shaman
    #season 0
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha] << Warrior
    .train 8017 >>Trem |T136086:0|t[Arma Trinca-pedra] << Shaman
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior/Shaman
    #season 2
    .goto Durotar,42.28,68.48,10,0
    .goto Durotar,42.89,69.44 << Warrior
    .goto Durotar,42.39,69.00 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r << Shaman
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha] << Warrior
    .train 8017 >>Trem |T136086:0|t[Arma Trinca-pedra] << Shaman
    .accept 77588 >>Aceite Prova de Resistência << Troll Warrior
    .accept 77582 >>Aceite Prova de Resistência << Orc Warrior
    .turnin 77588 >>Entregue Prova de Resistência << Troll Warrior
    .turnin 77582 >>Aceite Prova de Resistência << Orc Warrior
    .target Frang << Warrior
    .target Shikrik << Shaman
step << Warrior
    #season 2
    .equip 10 >>Equipe as |T132938:0|t[Luvas Encadeadas Manchadas] << Warrior
    .engrave 10 >>Grave |T132342:0|t[Ímpeto da Vitória] em suas luvas << Warrior
    .engrave 7 >>Grave |T236317:0|t[Ataque Frenético] em suas calças << Orc Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
step << Warlock
    #softcore
    #completewith Nartok
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.65,68.52,12 >>Vá até |cRXP_FRIENDLY_Nartok|r
    .money <0.01
step << Warlock
    #softcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Vá até |cRXP_FRIENDLY_Nartok|r
    .money >0.01
step << Warlock
    #hardcore
    #completewith next
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.24,68.16,12,0
    .goto Durotar,40.82,68.03,12,0
    .goto Durotar,40.56,68.44,12 >>Vá até |cRXP_FRIENDLY_Nartok|r
step << Warlock
    #softcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Comerciante Lixo
    .target Hraug
    .money >0.01
step << Warlock
    #hardcore
    #season 0
    .goto Durotar,40.56,68.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hraug|r
    .vendor >>Comerciante Lixo
    .target Hraug
step << Warlock
    #season 2
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Aceite Poder Roubado
    .turnin 77586 >>Entregue Poder Roubado
    .target Nartok
step << Warlock
    #season 2
    .goto Durotar,40.61,67.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Huklah|r
    .vendor >>|cRXP_BUY_Comerciante Lixo. Compre um par de |r [Braçadeiras de Tecido Esfarrapado] |cRXP_BUY_dele para gravar uma runa em|r
    .collect 3596,1 --Tattered Cloth Bracers
    .target Huklah
step << Warlock
    #season 2
    .equip 10,711 >>|cRXP_WARN_Equipe as|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .equip 9,3596 >>|cRXP_ENEMY_Equipe as|r |T132606:0|t[Braçadeiras de Tecido Esfarrapado]
    .use 711
    .use 3596
    .engrave 10 >>|cRXP_WARN_Grave suas|r luvas com|r |T133816:0|t[Assombrar] << Warlock
    .engrave 9 >>|cRXP_WARN_Grave suas|r braçadeiras com |T135789:0|t[Incinerar]
    .engrave 7 >>|cRXP_WARN_Grave suas calças com |T237562:0|t[Pacto Demônioíaco]
step << Warlock
    #season 0
    #label Nartok
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Nartok
step << !Warrior !Rogue
    #softcore
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Hunter !Shaman
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,30,6394,1 << !Hunter !Shaman --Refreshing Spring Water (30)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .target Duokna
    .money <0.005 << !Hunter
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
    >>Mate os |cRXP_ENEMY_Familiares torpes|r. Saqueie-os para |cRXP_LOOT_Vile Familiar Cabeças|r
    .complete 1485,1 --Vile Familiar Head (6)
    .mob Vile Familiar
step << Hunter
    #season 2
    #optional
    #completewith sarkoth
    .equip 10 >>Equipe as |T132952:0|t[Luvas de Couro Rachado]
    .engrave 7 >>Grave |T236174:0|t[Tiro Mortal] em suas calças
    .engrave 10 >>Grave |T236176:0|t[Tiro Quimérico] em suas luvas
    .aura 409583 >>Lembre-se de ativar seu |T132185:0|t[Coração de Leão]
    .use 2125 --Cracked Leather Gloves
step << Hunter
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Procure por qualquer|r Baú/Cinto/Manto |cRXP_WARN_drops|r|cRXP_WARN_. Equipe-os e grave as runas respectivas|r
    .engrave 5 >>Grave |T132266:0|t[Lobo Solitário] em seu |T132724:0|t[Baú]
    .engrave 6 >>Grave |T132394:0|t[Especialista em Corpo a Corpo] no seu |T132513:0|t[Belt]
    .engrave 15 >>Grave |T132171:0|t[Bater e Correr] em seu |T133771:0|t[Manto]
step << Rogue
    #season 2
    #sticky
    #optional
    >>|cRXP_WARN_Fique de olho para qualquer|r Cinturão/Manto/Braçadeira |cRXP_WARN_quedas|r|cRXP_WARN_. Equipe-os e grave as respectivas runas|r
    .engrave 6 >>Grave |T132303:0|t[Passo Furtivo] no seu |T132513:0|t[Cinturão]
    .engrave 15 >>Grave |T134538:0|t[Bacamarte] no seu |T133771:0|t[Manto]
    .engrave 9 >>Grave |T236285:0|t[Vantagem Desleal] nas suas |T133830:0|t[Braçadeiras]
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
step << Warlock
    #xprate <1.5
    #completewith Ruzan2
	>>|cRXP_WARN_Triturar os |cRXP_ENEMY_Mottled Boars|r. Saque-os até que você tenha 1 silver de valor em itens do vendedor|r
    .mob Mottled Boar
	.money >0.01
step << Warlock/Warrior/Shaman/Hunter
    #xprate >1.49
    #completewith Ruzan2
	>>|cRXP_WARN_Farme |cRXP_ENEMY_Mottled Boars|r. Saqueie-os até conseguir itens de vendedor no valor de 2 prata|r << Warrior
	>>|cRXP_WARN_Farme |cRXP_ENEMY_Mottled Boars|r. Saqueie-os até conseguir itens de vendedor no valor de 1 prata 75 cobre|r << Warlock
	>>|cRXP_WARN_Farme |cRXP_ENEMY_Mottled Boars|r. Saqueie-os até conseguir itens de vendedor no valor de 1 prata 10 cobre|r << Hunter
	>>|cRXP_WARN_Triturar os |cRXP_ENEMY_Mottled Boars|r. Saque-os até que você tenha 1 silver de valor em itens do vendedor|r << Shaman
    .mob Mottled Boar
	.money >0.02 << Warrior
	.money >0.0175 << Warlock
	.money >0.011 << Hunter
	.money >0.01 << Shaman
step << Rogue
    #label Duokna2
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
    #season 0
    #completewith Rwag
    .goto Durotar,41.52,68.36,12,0
    .goto Durotar,41.27,68.00,12 >>Vá até |cRXP_FRIENDLY_Rwag|r
step << Rogue
    #season 0
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .turnin 3083 >>Entregue Tabuleta cifrada << Troll Rogue
    .turnin 3088 >>Entregue Pergaminho Cifrado << Orc Rogue
    .train 53 >>Aprenda |T132090:0|t[Punhalada pelas Costas]
    .target Rwag
    .money <0.04
    .xp <4,1
step << Rogue
    #season 0
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
    #season 2
    #label Nartok2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .turnin 3090 >>Entregue Pergaminho Maculado
    .target Nartok
step << Warlock
    #season 0
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
    .xp >4,1
step << !Rogue
    #xprate <1.5
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dela|r << !Rogue !Warrior !Hunter !Shaman
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r << Hunter
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>Comerciante Lixo
    .target Duokna
    .money >0.01 << Rogue/Warrior
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << !Rogue
    #xprate >1.49
    #season 0 << Mage
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Duokna|r
    >>|cFF0E8312Compre|r |T132794:0|t[Água Refrescante da Fonte] |cFF0E8312dela|r << !Rogue !Warrior !Hunter !Shaman
    >>|cFF0E8312Compre|r |T132382:0|t[Rough Flechas] |cFF0E8312dela|r << Hunter
    >>|cRXP_WARN_Economize 10 cobre para treinar|r |T135932:0|t[Inteligência Arcana] << Mage
    .collect 159,15,6394,1 << !Rogue !Warrior !Hunter !Shaman --Refreshing Spring Water (15)
    .collect 2512,1000,6394,1 << Hunter --Rough Arrow (1000)
    .vendor >>Comerciante Lixo
    .target Duokna
    .money <0.005 << Hunter
    .money >0.1 << Rogue/Warrior/Shaman
    .itemcount 159,<15 << !Rogue !Warrior !Hunter !Shaman
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r
    .collect 2512,400,6394,1 --Rough Arrow (400)
    .vendor >>Comerciante Lixo
    .target Duokna
    .money <0.002
    .itemcount 2512,<200
step << Hunter
    #optional
    #xprate >1.49
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_dela|r
    .collect 2512,200,6394,1 --Rough Arrow (200)
    .vendor >>Comerciante Lixo
    .target Duokna
    .money <0.001
    .itemcount 2512,<200
step << Shaman
    #season 2
    #xprate >1.49
    #requires Galgar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .turnin 3084 >>Entregue Tabuleta Runa-Inscrita - Missão << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .accept 77587 >>Aceite Ícones de Poder << Troll Shaman
    .accept 77585 >>Aceite Ícones de Poder << Orc Shaman
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Aceite Clamor da Terra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 2
    #xprate <1.5
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entregue Tabuleta Runa-Inscrita - Missão << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .accept 77587 >>Aceite Ícones de Poder << Troll Shaman
    .accept 77585 >>Aceite Ícones de Poder << Orc Shaman
    .target Shikrik
step << Shaman
    #season 0
    #requires Galgar
    .goto Durotar,42.39,69.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r
    .turnin 3084 >>Entregue Tabuleta Runa-Inscrita - Missão << Troll
    .turnin 3089 >>Entregue Pergaminho inscrito em runas << Orc
    .target Shikrik
step << Mage
    #season 2
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entregue Tabuleta glífica << Troll
    .target Mai'ah
step << Mage
    #season 0
    #requires Galgar
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .turnin 3086 >>Entregue Tabuleta glífica << Troll
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .target Mai'ah
step << !Warlock
    #requires Galgar
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .accept 792 >>Aceite Familiares torpes
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #season 2
    #xprate >1.49
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .target Jen'shan
step << Hunter
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Jen'shan
    .money <0.01
step << Hunter
    #optional
    #xprate >1.49
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .target Jen'shan
step << Hunter
    #xprate <1.5
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 3082 >>Entregue Tabuleta Cinzelada << Troll
    .turnin 3087 >>Entregue Pergaminho cinzelado << Orc
    .target Jen'sha
step << Warrior
    #xprate >1.49
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.02
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .target Frang
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.01
step << Warrior
    #xprate >1.49
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .target Frang
step << Warrior
    #xprate <1.5
    #season 0
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 2383 >>Entregue Pergaminho Simples << Orc
    .turnin 3065 >>Entregue Tabuleta Simples << Troll
    .target Frang
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .turnin 3085 >>Entregue Tabuleta consagrada
    .accept 77642 >>Aceite Sabedoria dos Loas
    .target Ken'jai
step << Shaman
    .goto Durotar,40.47,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kzan|r
    .collect 2132,1,5441,1 --Collect Short Staff (1)
    .money <0.0102
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.9
    .target Kzan Thornslash
step
    #requires Galgar << Warlock
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thazz'ril|r
    .accept 5441 >>Aceite Peões preguiçosos
    .target Foreman Thazz'ril
step
    #completewith Sting
    >>Pegue as |cRXP_LOOT_Sabras|r perto dos Cactos
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
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
step << skip --Shaman
    #season 2
    #completewith OverloadRune
    >>Abate os |cRXP_ENEMY_Familiares Torpes|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
step << << skip --Hunter
    #season 2
    #completewith ChimeraRune
    >>Abate os |cRXP_ENEMY_Familiares Torpes|r
    .complete 792,1 --Vile Familiar (12)
    .mob Vile Familiar
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
    >>Abate os |cRXP_ENEMY_Familiares Torpes|r
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
    >>|cRXP_WARN_Use o|r |T133486:0|t[Cassetete do Encarregado] |cRXP_WARN_nos |r|cRXP_FRIENDLY_Peões Preguiçosos|r adormecidos
    .complete 5441,1 --Peons Awoken (5)
    .target Lazy Peon
    .use 16114
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
    .money >0.1 << Rogue/Warrior
    .itemcount 159,<5 << !Rogue !Warrior !Hunter !Shaman
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
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .turnin 77587 >>Entregue Ícones de Poder << Troll Shaman
    .turnin 77585 >>Entregue Ícones de Poder << Orc Shaman
    .goto Durotar,42.39,69.00
    .accept 1516 >>Aceite Clamor da Terra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Shaman
    #season 0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 8042 >>Aprenda |T136026:0|t[Choque Terreno]
    .goto Durotar,42.39,69.00
    .accept 1516 >>Aceite Clamor da Terra
    .goto Durotar,42.40,69.17
    .target Shikrik
    .target Canaga Earthcaller
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Mai'ah
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Treine suas magias de classe
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .money <0.01
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Treine suas magias de classe
    .turnin 3085 >>Entregue Tabuleta consagrada
    .money <0.021
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 1243 >>Aprenda |T135987:0|t[Palavra de Poder: Fortitude]
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .turnin 3085 >>Entregue Tabuleta consagrada
    .money <0.011
    .target Ken'jai
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .train 589 >>Aprenda |T136207:0|t[Palavra Sombria: Dor]
    .turnin 3085 >>Entregue Tabuleta consagrada
    .money <0.01
    .target Ken'jai
step << !Warlock
	.goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 792 >>Entregue Familiares Torpes
    .accept 794 >>Aceite Medalhão da Lâmina Ardente
    .target Zureetha Fargaze
step << Hunter
    #season 2
    #optional
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .turnin 77590 >>Entregue Terreno Acidentado << Troll Hunter
    .turnin 77584 >>Entregue Caçadores da Runa Perdida << Orc Hunter
    .target Jen'shan
    .xp <4,1
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .turnin 77590 >>Entregue Terreno Acidentado << Troll Hunter
    .turnin 77584 >>Entregue Caçadores da Runa Perdida << Orc Hunter
    .target Jen'shan
step << Hunter
    #season 0
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1978 >>Aprenda |T132204:0|t[Picada de Serpente]
    .target Jen'shan
    .xp <4,1
    .money <0.01
step << Warrior
    #xprate <1.5
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .train 100 >>Aprenda |T132337:0|t[carga]
    .train 772 >>Aprenda |T132155:0|t[Dilacerar]
    .target Frang
    .money <0.02
    .train 772,1
step << Warrior
    #xprate <1.5
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
    #loop
    .goto Durotar,44.67,64.92,0
    .goto Durotar,44.67,64.92,25,0
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
    >>Pegue as |cRXP_LOOT_Sabras|r perto dos Cactos
    .complete 4402,1 --Cactus Apple (10)
    .isOnQuest 4402
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
    >>Mate os |cRXP_ENEMY_Espreitadores Vis|r. Saqueie-os para |cRXP_LOOT_Felstalker Hooves|r
    .complete 1516,1 --Felstalker Hoof (2)
    .mob Felstalker
step << skip
	#completewith next
    .goto Durotar,44.70,52.47
    .goto Durotar,53.55,44.68,30 >>|cRXP_WARN_Realize um pulo de logout posicionando seu personagem na borda da rocha até parecer que está flutuando, depois saia e entre novamente|r
	.link https://www.youtube.com/watch?v=7vmnvdjbUnM >>https://www.youtube.com/watch?v=7vmnvdjbUnM >> CLIQUE AQUI para um exemplo
step
    #softcore
    #completewith next
    .goto Durotar,44.70,52.47
    .deathskip >>|cRXP_WARN_Morra e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r perto da seta|r
    .target Anjo da Cura
step
    #softcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Você pode falar com ele pelo lado de fora ou de cima do bunker|r
    .accept 784 >>Aceite Aniquile os invasores
    .target Gar'thok
step
    #softcore
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Torka|r
    .accept 815 >>Aceite Quebrar alguns ovos
    .target Cook Torka
step
    #softcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Siga em direção à torre
step
    #softcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Vá pela torre em direção a Furl
step
    #softcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Aceite Carregue o Seu Peso
    .target Furl Scornbrow
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #softcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #softcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #completewith BurningBladeTurnin
    .hs >>Use sua Pedra de Retorno para ir ao Vale das Provações
    .use 6948
step
    #xprate <1.5
    .goto Durotar,44.63,68.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thazz'ril|r
    .turnin 6394 >>Entregue A picareta de Thazz'ril
    .target Foreman Thazz'ril
step
    .goto Durotar,42.73,67.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Galgar|r
    .turnin 4402 >>Entregue A surpresa de sabra do Galgar
    .target Galgar
    .isQuestComplete 4402
step
    .goto Durotar,42.59,67.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duokna|r
    .vendor >>Comerciante Lixo
    .target Duokna
    .money >0.03
step
    #season 2
    .goto Durotar,42.74,68.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Runa Corretor de Runas|r
    >>|cRXP_WARN_Não venda equipamento que pode ser equipado|r
    .vendor >>|cRXP_BUY_Compre lixo do Comerciante e compre todas as |T134419:0|t|cRXP_WARN_[Runas]|r que você precisa dele|r
    .target Rune Broker
    .skipgossip
step
    #label BurningBladeTurnin
    .goto Durotar,42.85,69.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zureta Vista-longa|r
    .turnin 794 >>Entregue Medalhão da Lâmina Ardente
    .accept 805 >>Aceite Apresente-se na Aldeia Sen'jin
    .target Zureetha Fargaze
step << Priest
    #season 0
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >>Aceite Em favor da espiritualidade
	.train 591 >>Aprenda |T135924:0|t[Punição]
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
	.accept 5649 >>Aceite Em favor da espiritualidade
    .train 17 >>Aprenda |T135940:0|t[Palavra de Poder: Escudo]
    .target Ken'jai
step << Mage
    #season 0
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .train 143 >>Aprenda |T135812:0|t[Bola de Fogo]
    .train 2136 >>Aprenda |T135807:0|t[Impacto de Fogo]
    .target Mai'ah
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shikrik|r e |cRXP_FRIENDLY_Canaga|r
    .train 332 >>Aprenda |T136052:0|t[Onda Curativa]
    .target +Shikrik
    .goto Durotar,42.39,69.00
    .turnin 1516 >>Entregue Chamado da Terra
    .accept 1517 >>Aceite Clamor da Terra
    .target +Canaga Earthcaller
    .goto Durotar,42.40,69.17
    .xp <6,1
step << Shaman
    .goto Durotar,42.40,69.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ranago Arauto da Terra|r
    .turnin 1516 >>Entregue Chamado da Terra
    .accept 1517 >>Aceite Clamor da Terra
    .target Canaga Earthcaller
step << Hunter
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jen'shan|r
    .train 1130 >>Aprenda |T132212:0|t[Marca do Caçador]
--    .train 3044 >>Train |T132218:0|t[Arcane Shot]
    .target Jen'shan
    .money <0.01
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
    .xp <6,1
step << Rogue
    #label RogueTraining
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .train 1757 >>Aprenda |T136189:0|t[Golpe Sinistro]
    .target Rwag
    .xp <6,1
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
    >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Pacto de Sangue] |cRXP_BUY_dela|r
    .collect 16321,1,817,1 --Grimoire of Blood Pact
    .vendor >>Comerciante Lixo
    .target Hraug
    .money <0.03
    .train 6307,1 --Blood Pact (Rank 1)
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .turnin 77586 >>Entregue Poder Roubado
    .target Nartok
    .money <0.02
step << Warlock
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
    .turnin 77586 >>Entregue Poder Roubado
    .target Nartok
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
    .train 1454 >>Aprenda |T136126:0|t[Conversão de Vida]
    .target Nartok
    .money <0.02
step << Warlock
    #season 0
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .train 695 >>Treine |T136197:0|t[Seta Sombria]
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
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#xprate >1.99
<< Horde
#name 7-13 Durotar
#version 1
#group Horda 1-22
#groupid RXP-SRGCE-H1
#defaultfor Troll/Orc
#next 13-20 Savanas

step
    .goto Durotar,52.06,68.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ukor|r
    .accept 2161 >>Aceite O fardo de um peão
    .target Ukor
step
    #completewith next
    .subzone 367 >>Vá para Sen'Jin Village
step
    #xprate <1.5
    #loop
    .goto Durotar,54.20,73.36,0
    .goto Durotar,54.09,76.31,25,0
    .goto Durotar,54.52,74.83,25,0
    .goto Durotar,54.20,73.36,25,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lar|r. Ele patrulha um pouco
    .accept 786 >>Aceite Frustrando o ataque dos Kolkar
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
    .turnin 805 >>Entregue Apresente-se na Aldeia Sen'jin
    .accept 808 >>Aceite O Crânio de Minshina
    .accept 826 >>Aceite Zalazane
    .accept 823 >>Aceite Apresente-se a Orgnil
    .target +Master Gadrin
    .goto Durotar,55.94,74.72
step
    #completewith next
    .goto Durotar,56.16,74.43,8,0
    .goto Durotar,56.31,73.8,8 >>Entre na cabana grande
step << Rogue
    .goto Durotar,56.29,73.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_K'waii|r|cRXP_BUY_. Compre um|r |T132414:0|t[Machado de Arremesso Pesado] |cRXP_BUY_dela|r
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
    .vendor >>Lixo. Venda sua arma se der a você dinheiro suficiente para uma |T135145:0|t[Bengala] (5s 04c). Você voltará mais tarde se ainda não tiver o suficiente
    .target Trayexir
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.2
step << Shaman
    .goto Durotar,56.47,73.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trayexir|r|cRXP_BUY_. Compre uma|r |T135145:0|t[Bengala] |cRXP_BUY_dele|r
    .collect 2495,1,786,1 --Collect Walking Stick (1)
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
    .collect 2494,1,786,1 --Collect Stiletto (1)
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
    .collect 2491,1,786,1 --Collect Large Axe (1)
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
    .collect 2490,1,786,1 --Collect Tomahawk (1)
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
    .collect 2506,1,786,1 --Collect Hornwood Recurve Bow (1)
    .money <0.0283
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.3
step << Rogue
    #optional
    #completewith Bonfire
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
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
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machadinha]
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
step << Warrior/Rogue
    #completewith TravelToTiragarde
    +|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios] |cRXP_WARN_e minere todo Veio de Cobre que encontrar para pegar|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r|cRXP_WARN_. Faça|r |T135248:0|t[Pedra de Afiar] |cRXP_WARN_com elas|r
    .collect 2862,1,786,1
    .skill blacksmithing,<1,1
    .train 2575,3 --Mining Trained
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,50.10,79.24,0
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    >>Abate os |cRXP_ENEMY_Kolkar Drudges|r e os |cRXP_ENEMY_Kolkar Outrunners|r. Saque-os para uma |cRXP_LOOT_Severed Centaur Cabeça|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #completewith MainIsle
    >>Mate os |cRXP_ENEMY_Rastejadores|r e os |cRXP_ENEMY_Makruras|r. Saque-os pelo |cRXP_LOOT_Muco|r e pelos |cRXP_LOOT_Olhos|r
    .complete 818,2,4 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1,2 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #completewith MainIsle
    >>Abate os |cRXP_ENEMY_Durotar Tigers|r. Saqueie-os pela |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #softcore
    #completewith MainIsle
    >>Pegue os |cRXP_PICK_Ovos de Açoitacauda|r que estão no chão
    >>|cRXP_WARN_Eles geralmente são guardados por um|r |cRXP_ENEMY_Açoitacauda Garrassangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label MainIsle
    .goto Durotar,66.94,84.41,150 >>Nade para a ilha principal
    .isOnQuest 826
step
    #completewith ZalazaneKill1
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
    #label ZalazaneKill1
    .goto Durotar,67.4,87.8
    >>Abate |cRXP_ENEMY_Zalazane|r. Saque-o pela |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Guarde seu|r |T136026:0|t[Choque Terreno] |cRXP_WARN_para quando ele conjurar|r |T136052:0|t[Onda Curativa] << Shaman
    >>|cRXP_WARN_Guarde seu|r |T132155:0|t[Esfaquear] |cRXP_WARN_para quando ele lançar|r |T136052:0|t[Onda Curativa] << Rogue
    .complete 826,3 --Zalazane's Head (1)
    .mob Zalazane
step << Mage
    #season 2
    .goto Durotar,67.4,87.8
    >>Abata |cRXP_ENEMY_Zalazane|r. Saque-o pelo |cRXP_LOOT_|T134939:0|t[|cRXP_FRIENDLY_Feitiço Anotações de Feitiços: COLESDI DASGAI|r]|r
    .collect 203753,1
    .mob Zalazane
    .train 401765,1
step << Mage
    #season 2
    .collect 211779,1 >>Você precisa de uma |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item
    .train 401765 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] |cRXP_WARN_para aprender|r |T236227:0|t[Dedos Glaciais]
    .use 203753
step
    #completewith TrollsDone
    >>Abate |cRXP_ENEMY_Durotar Tigers|r. Saque-os pelos seus |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #completewith TigerFur
    >>Abate |cRXP_ENEMY_Rastejadores Pigmeus de Surf|r e |cRXP_ENEMY_Rastejadores de Surf|r. Saque-os pelos |cRXP_LOOT_Muco|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    #completewith CrawlMakru
    >>Pegue os |cRXP_PICK_Ovos de Açoitacauda|r que estão no chão
    >>|cRXP_WARN_Eles geralmente são guardados por um|r |cRXP_ENEMY_Açoitacauda Garrassangre|r
    .complete 815,1 --Taillasher Egg (3)
    .mob Bloodtalon Taillasher
step
    #label TrollsDone
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
    >>Abate |cRXP_ENEMY_Hexed Trolls|r e |cRXP_ENEMY_Voodoo Trolls|r
    .complete 826,1 --Hexed Troll (8)
    .mob +Hexed Troll
    .complete 826,2 --Voodoo Troll (8)
    .mob +Voodoo Troll
step << Priest
    #season 2
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
    >>Mate os |cRXP_ENEMY_Voodoo Trolls|r. Saqueie-os pela |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r]
    .collect 205947,1 --Prophecy of a Desecrated Citadel (1)
    .mob Voodoo Troll
    .train 402852,1
step
    #label TigerFur
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
    >>Abate os |cRXP_ENEMY_Durotar Tigers|r. Saqueie-os pela |cRXP_LOOT_Fur|r
    .complete 817,1 --Durotar Tiger Fur (4)
    .mob Durotar Tiger
step
    #label CrawlMakru
    #loop
    .goto Durotar,62.88,93.48,0
    .goto Durotar,59.48,86.33,0
    .goto Durotar,59.92,80.80,0
    .goto Durotar,57.90,78.13,0
    .goto Durotar,53.27,83.05,0
    .goto Durotar,62.88,93.48,50,0
    .goto Durotar,59.48,86.33,50,0
    .goto Durotar,59.92,80.80,50,0
    .goto Durotar,57.90,78.13,50,0
    .goto Durotar,53.27,83.05,50,0
    >>Abate |cRXP_ENEMY_Rastejadores Pigmeus de Surf|r e |cRXP_ENEMY_Rastejadores de Surf|r. Saque-os pelos |cRXP_LOOT_Muco|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
step
    #softcore
    .goto Durotar,59.86,89.64,0
    .goto Durotar,59.51,83.64,0
    .goto Durotar,60.94,78.75,0
    .goto Durotar,63.54,74.33,0
    .goto Durotar,67.04,71.40,0
    .goto Durotar,59.86,89.64,40,0
    .goto Durotar,59.51,83.64,40,0
    .goto Durotar,60.94,78.75,40,0
    .goto Durotar,63.54,74.33,40,0
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
    #softcore
    #completewith next
    .goto Durotar,57.50,73.26,50,0
    .deathskip >>Morra e ressuscite com o |cRXP_FRIENDLY_Anjo da Cura|r ou volte correndo
step
    #hardcore
    #completewith Zalazaneturnin
    .subzone 367 >>Vá para Sen'Jin Village
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
step << Priest
    #season 2
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Ajoelhe-se diante do |cRXP_PICK_Altar dos Loas|r e fale com a |cRXP_FRIENDLY_Loa Serpente|r para obter o |T136077:0|t[Meditação dos Loas] buff
    .train 402852,1
step << Priest
    #season 2
    #completewith TravelToTiragarde
    .aura 418459 >>|cRXP_WARN_Agora você tem que encontrar um Sacerdote Morto-vivo com um buff de Loa. Você tem que se ajoelhar diante dele e ele tem que /rezar por você.|r
    .use 205947
    .train 402852 >>|cRXP_WARN_Use o|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] |cRXP_WARN_para treinar|r |T237570:0|t[Homúnculos]
    .itemcount 205947,1
step
    #completewith TravelToTiragarde
    +|cRXP_WARN_Vincular seu|r |T133728:0|t[Crânio Levemente Brilhante] |cRXP_WARN_e|r |T134712:0|t[Cola Grudenta à Beça]|cRXP_WARN_. Guarde-os para situações de emergência|r
step << Rogue
    #season 2
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ba'so|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    >>|cRXP_WARN_Ele está invisibilizado!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .itemcount 207098,1
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] |cRXP_WARN_para treinar|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step
    #hardcore
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step
    #hardcore
    #label Betrayers
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gar'thok|r
    >>|cRXP_WARN_Você pode falar com ele pelo lado de fora ou de cima do bunker|r
    .accept 784 >>Aceite Aniquile os invasores
    .target Gar'thok
step
    #hardcore
    #completewith next
    .goto Durotar,50.22,43.06,12,0
    .goto Durotar,50.09,42.97,8,0
    .goto Durotar,50.20,42.30,12,0
    .goto Durotar,49.96,40.96,12,0
    .goto Durotar,49.67,40.42,10 >>Siga em direção à torre
step
    #hardcore
    #completewith next
    .goto Durotar,49.75,40.38,6,0
    .goto Durotar,49.77,40.24,6,0
    .goto Durotar,49.69,40.21,6,0
    .goto Durotar,49.68,40.30,6,0
    .goto Durotar,49.78,40.34,6,0
    .goto Durotar,49.79,39.96,6,0
    .goto Durotar,49.60,40.04,8 >>Vá pela torre em direção a Furl
step
    #hardcore
    .goto Durotar,49.89,40.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furl|r
    .accept 791 >>Aceite Carregue o Seu Peso
    .target Furl Scornbrow
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.81,40.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krunn|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    >>|cRXP_WARN_Isto permitirá que você encontre|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_de depósitos de minérios para fabricar|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_(+2 Dano da Arma por 30 minutos)|r
    .target Krunn
step << Warrior/Rogue
    #hardcore
    .goto Durotar,51.90,41.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wuark|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_com|r |cRXP_BUY_ele|r
    .collect 2901,1,784,1 --Mining Pick (1)
    .target Wuark
step << Warrior/Rogue
    #hardcore
    .goto Durotar,52.05,40.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dwukk|r
    .train 2018 >>Treine |T136241:0|t[Ferraria]
    .target Dwukk
    .skill blacksmithing,1,1
step
    #softcore
    #xprate <1.5
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >>Vá para Bastilha Tiragarde
    >>|cRXP_WARN_Triture inimigos no caminho|r
    .isOnQuest 784
step
    #softcore
    #xprate >1.49
    #label TravelToTiragarde
    .goto Durotar,59.20,58.38,60,0
    .subzone 372 >>Vá para Bastilha Tiragarde
    .isOnQuest 784
    .maxlevel 11
step
    #sticky
    #completewith AgedEnvelope
    +|cRXP_WARN_Tenha cuidado se|r |cRXP_ENEMY_Sargento Carlos|r |cRXP_WARN_estiver ativo, pois é um raro de nível 9. Você pode ter que usar uma|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_se tiver uma|r
    .unitscan Watch Commander Zalaphil
step
    #completewith Benedict
    #requires TravelToTiragarde
    .goto Durotar,59.81,58.22,8,0
    .goto Durotar,59.64,58.44,8,0
    .goto Durotar,59.55,57.89,8,0
    .goto Durotar,59.29,57.89,8 >>Siga em direção ao segundo andar da fortaleza
step << Priest
    #season 2
    #completewith ScrapsFinished
    >>Abate os |cRXP_ENEMY_Sailors|r e os |cRXP_ENEMY_Marines|r. Saque-os para a |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
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
    .collect 4882,1,830,1 --Collect Benedict's Key (1)
    .mob Lieutenant Benedict
    .maxlevel 11
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
    .maxlevel 11
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
    .maxlevel 11
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
    .maxlevel 11
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
    .maxlevel 11
step << Priest
    #season 2
    #loop
    .goto Durotar,58.99,58.30,0
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30,30,0
    >>Abate os |cRXP_ENEMY_Sailors|r e os |cRXP_ENEMY_Marines|r. Saque-os para a |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r]
    .collect 205940,1 --Memory of a Dark Purpose (1)
    .train 425216,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .maxlevel 11
step << Priest
    #season 2
    #completewith next
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Ajoelhe-se diante do |cRXP_PICK_Altar dos Loas|r e fale com a |cRXP_FRIENDLY_Loa Serpente|r para obter o |T136077:0|t[Meditação dos Loas] buff
    .skipgossip 208307,1
    .target Serpent Loa
    .train 425216,1
step << Priest
    #season 2
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Use o|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
step
    #softcore
    #completewith RazorTurnins1
    .goto Durotar,57.3,53.5,120,0
    .deathskip >>Morra na torre norte fora de Tiragarde Keep e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #hardcore
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step
    #xprate <2.1
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .accept 806 >>Aceite Tempestades Sombrias
    .target Orgnil Soulscar
step
    #xprate >2.09
    .goto Durotar,52.24,43.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Orgnil|r
    .turnin 823 >>Entregue Apresente-se a Orgnil
    .target Orgnil Soulscar
step
    #xprate <2.1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Entregue Aniquile os Traidores
    .turnin 830 >>Entregue As Ordens do Almirante
    .accept 831 >>Aceite As Ordens do Almirante << !Mage !Shaman
    .accept 837 >>Aceite Invasão
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate <2.1
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Aceite As Ordens do Almirante << !Mage !Shaman
    .accept 837 >>Aceite Invasão
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    #xprate >2.09
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 784 >>Entregue Aniquile os Traidores
    .turnin 830 >>Entregue As Ordens do Almirante
    .accept 831 >>Aceite As Ordens do Almirante
    .target Gar'Thok
    .isQuestComplete 784
    .isOnQuest 830
step
    #xprate >2.09
    .goto Durotar,51.95,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Orgnil|r, |cRXP_FRIENDLY_Gar'Thok|r
    .accept 831 >>Aceite As Ordens do Almirante
    .target Gar'Thok
    .isQuestTurnedIn 830
step
    .goto Durotar,51.09,42.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com|r |cRXP_FRIENDLY_Torka|r
    .turnin 815 >>Entregue Quebre Alguns Ovos
    .target Cook Torka
    .isQuestComplete 815
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
    .money <0.0540
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #optional
    #completewith Toolboxes
    +|cRXP_WARN_Equipe o|r |T132414:0|t[Machado de Arremesso Pesado]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_e um|r |T134410:0|t[Aljava Média] |cRXP_BUY_dele|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    --.collect 11362,1,6082,1 --Medium Quiver (1)
    .target Ghrawt
    --.money <0.1300
step << Hunter
    .goto Durotar,52.97,41.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com |cRXP_FRIENDLY_Ghrawt|r. Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1200,6082,1 --Sharp Arrow (1200)
    .target Ghrawt
    .itemcount 2515,<600 --Sharp Arrow (600)
step
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .vendor >>Comerciante Lixo
    .home >>Defina sua Pedra de Retorno em Razor Hill
    .turnin 2161 >>Entregue O Fardo do Peão
    .target Innkeeper Grosk
    .bindlocation 362
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
    .collect 4496,1,825,1 --Small Brown Pouch (1)
    .target Jark
    .money <0.05
step << Shaman
    #xprate >1.49
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .accept 2983 >>Aceite Call of Fogo - Missão - Missão
    .target Swart
    .isNotOnQuest 1522
step << Warrior
    #xprate >1.49
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .accept 1505 >>Aceite Veterano Uzzek
    .trainer >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
step << Warlock
    #xprate >1.49
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .accept 1506 >>Aceite Convocação de Gan'rul
    .trainer >>Treine suas magias de classe
    .target Dhugru Gorelust
step << Warlock
    #xprate >1.49
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e compre |T133738:0|t[Seta de Fogo Rank 2]
    .collect 16302,1,837,1 --Grimoire of Firebolt (Rank 2) (1)
    .target Kitha
    .money <0.01
    .train 7799,1
step << Priest
    #xprate >1.49
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
    .accept 5654 >>Aceite Bagata da Fraqueza << Troll
    .accept 5660 >>Aceite Toque de Fraqueza << Undead
    .trainer >>Treine suas magias de classe
    .target Tai'jin
step << Rogue
    #xprate >1.49
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
    #loop
    .goto Durotar,51.65,56.51,0
    .goto Durotar,51.76,48.41,40,0
    .goto Durotar,51.70,50.23,40,0
    .goto Durotar,51.65,51.34,40,0
    .goto Durotar,51.80,53.18,40,0
    .goto Durotar,50.82,53.65,40,0
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
step
    #label ConscriptH
    #xprate >1.49
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step
    #xprate <2.1
    #loop
	.goto Durotar,44.45,39.74,0
	.goto Durotar,44.45,39.74,50,0
	.goto Durotar,44.49,37.47,50,0
	.goto Durotar,43.30,37.32,50,0
	.goto Durotar,41.70,37.09,50,0
	.goto Durotar,41.64,38.27,50,0
	.goto Durotar,41.94,40.46,50,0
	.goto Durotar,43.30,40.40,50,0
    >>Abate |cRXP_ENEMY_Corredores de Pó das Crinas Afiadas|r e |cRXP_ENEMY_Guardas de Batalha das Crinas Afiadas|r
    .complete 837,3 --Razormane Dustrunner (4)
    .mob +Razormane Dustrunner
    .complete 837,4 --Razormane Battleguard (4)
    .mob +Razormane Battleguard
step << Warrior
    #season 2
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
    >>Abate |cRXP_ENEMY_Razormane Quilboars|r e |cRXP_ENEMY_Razormane Batedores|r. Saque-os para obter |cRXP_LOOT_Severed Quilboar Cabeça|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .complete 837,1 --Razormane Quilboar (4)
    .mob +Razormane Quilboar
    .complete 837,2 --Razormane Scout (4)
    .mob +Razormane Scout
    .train 403475,1
step << Warrior/Shaman
    #xprate <2.1
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>Voe para Posto de Farol
    .zoneskip The Barrens
step << Warrior/Shaman
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
step
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>Voe para Posto de Farol
    .zoneskip The Barrens
step
    #xprate >2.09
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
step << Warrior
    #xprate >1.49
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1505 >>Entregue Veterano Uzzek
    .accept 1498 >>Aceite Caminho da defesa
    .target Uzzek
step << Shaman
    #xprate >1.49
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 2983 >>Entregue Call of Fogo - Missão - Missão
    .accept 1524 >>Aceite Call of Fogo - Missão - Missão
    .target Kranal Fiss
step << Shaman
    #xprate >1.49
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
    #xprate >1.49
    #label CallofFire3
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1524 >>Entregue Call of Fogo - Missão - Missão
    .accept 1525 >>Aceite Call of Fogo - Missão - Missão
    .target Telf Joolam
step << Warrior
    #xprate >1.49
    #loop
    .goto Durotar,43.19,24.34,0
    .goto Durotar,39.16,30.84,40,0
    .goto Durotar,39.23,28.38,40,0
    .goto Durotar,39.43,24.94,40,0
    .goto Durotar,41.39,24.28,40,0
    .goto Durotar,43.19,24.34,40,0
    >>Entre em Trovão Serra e mate |cRXP_ENEMY_Lightning Hides|r. Saque-os para obter seus |cRXP_ENEMY_Escamoso|r
    .complete 1498,1 --Singed Scale (5)
    .mob Lightning Hide
step << !Warrior
    #xprate <2.1
    #completewith next
    .goto Durotar,41.66,25.68,20 >>Pule para dentro do Desfiladeiro do Trovão << !Hunter !Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Dispense seu|r |T136218:0|t[Diabrete] |cRXP_WARN_clicando com o botão direito no quadro de unidade dele e selecionando dispensar|r << Warlock
    .goto Durotar,41.66,25.68,20 >>|cRXP_WARN_Use|r |T136095:0|t[Dispensar Ajudante] |cRXP_WARN_e depois pule para Trovão Serra|r << Hunter
step
    #xprate <2.1
    #softcore
    .goto Durotar,42.13,26.67
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tome cuidado. Mate o|r |cRXP_ENEMY_Fanático da Lâmina Ardente|r |cRXP_WARN_que está patrulhando e os|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_ao fundo antes de atraí-lo|r
    >>|cRXP_WARN_Atraia-o para trás, em direção aos|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair mais inimigos da Lâmina Ardente ao se aproximar deles|r
    >>|cRXP_WARN_Não tenha medo de morrer para pegar a |cRXP_LOOT_Garra|r, pois você ressuscitará com o |cRXP_FRIENDLY_Anjo da Cura|r depois|r
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
step
    #xprate <2.1
    #hardcore
    .goto Durotar,42.13,26.67
    >>Mate |cRXP_ENEMY_Bulho Tempesnigra|r e saqueie-o para pegar a |cRXP_LOOT_Garra|r dele
    >>|cRXP_WARN_Tome cuidado. Mate o|r |cRXP_ENEMY_Fanático da Lâmina Ardente|r |cRXP_WARN_que está patrulhando e os|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_ao fundo antes de atraí-lo|r
    >>|cRXP_WARN_Atraia-o para trás, em direção aos|r |cRXP_ENEMY_Pelegos de Relâmpago|r |cRXP_WARN_que você acabou de matar. Caso contrário, você pode atrair mais inimigos da Lâmina Ardente ao se aproximar deles|r
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
step
    #xprate <2.1
    #softcore
    .goto Durotar,47.04,17.58
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .isQuestComplete 806
step
    #xprate <2.1
    #hardcore
    .goto Durotar,39.20,32.02,60 >>Abra caminho lutando para sair do Desfiladeiro do Trovão
    .isQuestComplete 806
step
    #xprate <2.1
    #completewith next
    .goto Durotar,46.37,22.94,50 >>Vá até Rezlak
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .accept 834 >>Aceite Ventos do deserto
    .target Rezlak
step << Warrior
    #xprate <2.1
    #season 2
    #completewith next
    >>Abate |cRXP_ENEMY_Dustwind Harpies|r. Saque-os para obter uma |cRXP_LOOT_Severed Harpia Cabeça|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
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
step << Warrior
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,53.98,23.70,0
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70,40,0
    >>Abate |cRXP_ENEMY_Dustwind Harpies|r. Saque-os para obter uma |cRXP_LOOT_Severed Harpia Cabeça|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
step
    #xprate <2.1
    .goto Durotar,46.37,22.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rezlak|r
    .turnin 834 >>Entregue Ventos do Deserto
    .target Rezlak
step << Shaman
    #xprate <2.1
    #completewith next
    .goto Durotar,49.42,18.47,40,0
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Vá para a Caverna Sopravento
    >>|cRXP_WARN_Viaje para o leste ao redor das colinas para chegar à caverna. Siga a seta do caminho|r
step << Shaman
    #xprate <2.1
    #loop
    .goto Durotar,53.18,29.15,0
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
step << Mage
    #xprate <2.1
    #season 2
    #loop
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Abate |cRXP_ENEMY_Burning Blade Orcs|r dentro da Caverna de Crânio Pedra. Saque-os para obter o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step << Warrior/Shaman
    #xprate >2.09
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>Voe para Posto de Farol
    .zoneskip The Barrens
step << Warrior
    #xprate >2.09
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entregue Caminho da Defesa
    .accept 1502 >>Aceite Thun'grim Olhafogo
    .target Uzzek
step
    #xprate >2.09
    #softcore
    #completewith
    .goto The Barrens,50.72,32.61
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 380
step
    #xprate >2.09
    #hardcore
    #completewith
    .goto The Barrens,52.34,29.27,150 >>Vá para The Encruzilhada
step
    #xprate >2.09
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
    .target Thork
step
    #xprate >2.09
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
step
    #xprate >2.09
    .goto The Barrens,52.62,29.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target Zargh
step
    #xprate >2.09
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .subzoneskip 380,1
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fp The Crossroads >>Aprenda a rota de voo para Encruzilhada
    .turnin 6365 >>Entregue Encomenda para Gryshka
    .accept 6384 >>Aceite Carona Para Orgrimmar
    .target Devrak
step
    #xprate >2.09
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Devrak
    .zoneskip Orgrimmar

    --Mage/Shaman dont need to go ORG 100% route
step
    #xprate >2.09
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
    .accept 6385 >>Aceite Doraso, o Mestre de Mantícoras
    .target Innkeeper Gryshka
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compre um|r |T135419:0|t[Machado de Arremesso Afiado] |cRXP_BUY_dele|r
    .collect 3135,200 --Sharp Throwing Axe (200)
    .vendor >>Venda os lixos
    .target Trak'gen
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #optional
    #completewith AdmiralTurnin
    +|cRXP_WARN_Equipe o|r |T135421:0|t[Machado de Arremesso Afiado]
    .use 3135
    .itemcount 3135,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step
    #xprate >2.09
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o Mestre de Mantícoras
    .accept 6386 >>Aceite Devolver à Encruzilhada
    .target Doras
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #completewith AdmiralTurnin
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5654 >>Entregue Bagata da Fraqueza
    .trainer >>Treine suas magias de classe
    .target Ur'kyo
    .isOnQuest 5654
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5652 >>Entregue Bagata da Fraqueza
    .trainer >>Treine suas magias de classe
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,42.75,53.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
	.accept 1963 >>Aceite The Estilhaçada Hand - Missão << Orc Rogue/Troll Rogue
    .target Therzok
step << Rogue
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Compre um ou dois|r |T135640:0|t[Jambiya] |cRXP_BUY_com ele|r
    .collect 2207,1 --Collect Jambiya (1)
    .money <0.2390
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
    .target Kareth
step << Rogue
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equipe o|r |T135640:0|t[Jambiya]
    .use 2207
    .itemcount 2207,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.1
step << Rogue
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Pegue o |cRXP_PICK_Dusty Baú|r para |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    >>|cRXP_WARN_Está localizado em The Arrastar no andar superior|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
step << Warlock/Hunter/Rogue/Priest/Warrior
    #xprate <2.1
    #season 2 << Warrior
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entregue As Ordens do Almirante
    .target Nazgrel
step
    #xprate >2.09
    #label AdmiralTurnin
    .goto Orgrimmar,32.28,35.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nazgrel|r
    .turnin 831 >>Entregue As Ordens do Almirante
    .target Nazgrel
step << Warlock
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
step << Shaman/Hunter
    #season 2
    .goto Orgrimmar,38.923,38.398
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Zor Solárbol|r
    .train 409580 >>|cRXP_WARN_Compre e use o|r |T133739:0|t|cRXP_LOOT_[Tratado do Coração de Leão]|r |cRXP_WARN_para aprender|r |T132185:0|t[Coração de Leão] << Hunter
    .train 425336 >>|cRXP_WARN_Compre e use o|r |T133747:0|t|cRXP_LOOT_[Revelação da Fúria Xamanística]|r |cRXP_WARN_para aprender|r |T136088:0|t[Fúria Xamanística] << Shaman
    .use 226401 << Hunter -- Treatise on the Heart of the Lion
    .use 226402 << Shaman -- Revelation of Shamanistic Rage
    .target Zor Lonetree
    .xp <10,1
    .money <0.5
step << Warrior
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamja|r e |cRXP_FRIENDLY_Gru'ark|r
    +Abate |cRXP_ENEMY_Gru'ark|r quando ficar hostil
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step << Warrior
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamja|r
    >>Obtenha |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] dela
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step << Warrior
    #season 2
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .use 204716
    .itemcount 204716,1
step << Troll Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Treine Cajados
    .target Hanashi
    .money <0.100
step << Troll Warrior
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_dele|r
    .collect 854,1,1502,1 --Collect Quarter Staff (1)
    .money <0.3022
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .target Zendo'jian
    .train 227,3
step << Troll Warrior
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.0
    .train 227,3
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
    #season 0
    #completewith RazorTurnins2
    +|cRXP_WARN_Coloque|r |T132162:0|t[Treinamento de Feras]|cRXP_WARN_(na aba Geral),|r |T132163:0|t[Reviver Ajudante]|cRXP_WARN_, e|r |T132165:0|t[Alimentar Ajudante] |cRXP_WARN_nas suas barras de ações|r
    >>|cRXP_WARN_Lembre-se de treinar seu ajudante sempre que ele ganhar Pontos de Treinamento para|r |T132162:0|t[Treinamento de Feras]
step << Hunter
    #season 2
    #completewith End
    +|cRXP_WARN_Coloque|r |T132162:0|t[Treinamento de Feras]|cRXP_WARN_(na aba Geral),|r |T132163:0|t[Reviver Ajudante]|cRXP_WARN_, e|r |T132165:0|t[Alimentar Ajudante] |cRXP_WARN_nas suas barras de ações|r
    >>|cRXP_WARN_Lembre-se de treinar seu ajudante sempre que ele ganhar Pontos de Treinamento para|r |T132162:0|t[Treinamento de Feras]
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
    #completewith RazorTurnins2
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado] |cRXP_WARN_quando você tiver nível 11|r
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp <11,1
step << Hunter
    #optional
    #completewith RazorTurnins2
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.7
    .xp >11,1
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
    .goto Durotar,47.05,17.58
    .deathskip >>Morra e ressurja no |cRXP_FRIENDLY_Anjo da Cura|r
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
    .deathskip >>Morra e ressurja no |cRXP_FRIENDLY_Anjo da Cura|r
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
    .destroy 14544 >>|cRXP_WARN_Destrua|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_já que você não precisa mais dele|r
step << Shaman/Mage/Hunter
    #xprate >2.09
    #completewith next
    .goto Durotar,45.54,12.14
    .zone Durotar >>Saia de Orgrimmar
step << Hunter
    #xprate >2.09
    #completewith next
    #loop
    .goto Durotar,43.73,16.42,0
    .goto Durotar,43.73,16.42,50,0
    .goto Durotar,41.52,20.06,50,0
    .goto Durotar,38.43,17.65,50,0
    .cast 1515 >>Dome um |cRXP_ENEMY_Escorpídeo Caudaçonha|r
    >>|cRXP_WARN_Isso permitirá que você treine|r |T132140:0|t[Garra Rank 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step << Shaman
    #xprate >2.09
    #completewith next
    .goto Durotar,51.35,16.76,40,0
    .goto Durotar,54.65,19.02,40,0
    .goto Durotar,55.86,28.31,40,0
    .subzone 371 >>Vá para a Caverna Sopravento
    >>|cRXP_WARN_Viagem a leste ao redor das colinas para alcançar a caverna. Siga a seta do waypoint|r
step << Shaman
    #xprate >2.09
    #loop
    .goto Durotar,53.18,29.15,0
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
step << Mage
    #xprate >2.09
    #season 2
    .goto Durotar,52.93,9.01,0
    .goto Durotar,54.96,9.69,30,0
    .goto Durotar,54.69,8.73,30,0
    .goto Durotar,53.78,9.14,30,0
    .goto Durotar,52.93,9.01,30,0
    >>Mate os |cRXP_ENEMY_Burning Blade Orcs|r na Caverna de Crânio Pedra. Saqueie-os para obter as |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1 --Spell Notes: MILEGIN VALF (1)
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .mob Burning Blade Cultist
    .train 401768,1
    --Living Flame Rune
step
    #xprate >2.09
    .hs >>Vá para A Encruzilhada
    .use 6948
    .subzoneskip 380
    .bindlocation 380,1
    .cooldown item,6948,>0
step
    #xprate >2.09
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Doras
    .subzoneskip 380
    .cooldown item,6948,<0
step
    #xprate <2.1
    #completewith RazorTurnins2
    .hs >>Vá para Razor Hill
    .use 6948
    .subzoneskip 362
    .bindlocation 362,1
step
    #xprate <2.1
    .goto Durotar,51.51,41.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Grosk|r
    .vendor >>Comerciante Lixo
    >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman
    >>|cRXP_BUY_Compre|r |T133974:0|t[Pernil de Carne] |cRXP_BUY_dele|r << Rogue/Warrior
    .collect 1179,15,818,1 << Mage/Warlock/Priest/Shaman --Ice Cold Milk (15)
    .collect 2287,15,818,1 << Rogue/Warrior --Haunch of Meat (15)
    .target Innkeeper Grosk
    .money <0.0375
step << Warrior
    #xprate <2.1
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vahi|r
    >>Entregue as |cRXP_LOOT_Cabeças|r que você coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .use 204688 >>Usar os |T134455:0|t[Runa Fragmentos] para criar |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step << Warrior
    #xprate <2.1
    #season 2
    .train 403475 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .use 204703
    .itemcount 204703,1
step
    #xprate <2.1
    #label RazorTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orgnil|r e |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 806 >>Entregue Tempestades Sombrias
    .target +Orgnil Soulscar
    .goto Durotar,52.24,43.15
    .turnin 837 >>Entregue Encroachment
    .target +Gar'Thok
    .goto Durotar,51.95,43.50
step << Warrior
    #xprate <2.1
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 6546 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <12,1
step << Shaman
    #xprate <2.1
    .goto Durotar,54.42,42.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Swart|r
    .train 8050 >>Treine suas magias de classe
    .target Swart
    .xp <12,1
step << Hunter
    #xprate <2.1
    #completewith next
    .goto Durotar,36.29,47.38,0
    .goto Durotar,36.29,52.09,0
    .goto Durotar,36.29,47.38,40,0
    +Dome um |cRXP_ENEMY_Escorpídeo Caudaçonha|r
    >>|cRXP_WARN_Isso permitirá que você treine|r |T132140:0|t[Garra Rank 2]
    .mob Venomtail Scorpid
    .train 16828,1 --Claw rank 2
step
    #xprate <2.1
    #label FarWatchPost
    .goto The Barrens,62.26,19.38,40 >>Voe para Posto de Farol
    .zoneskip The Barrens
step
    #xprate <2.1
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
step << Warrior
    #xprate <2.1
    .goto The Barrens,61.4,21.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uzzek|r
    .turnin 1498 >>Entregue Caminho da Defesa
    .accept 1502 >>Aceite Thun'grim Olhafogo
    .target Uzzek
step
    #optional
    #label End
]])
