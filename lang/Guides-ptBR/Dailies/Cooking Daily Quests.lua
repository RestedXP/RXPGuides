if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Profissão
#wotlk
#cata
#name Culinária

step << Alliance
	.goto Dalaran,40.43,65.66
	.daily 13100,13101,13102,13103,13107 >>Converse com |cRXP_FRIENDLY_Katherine Lee|r dentro da estalagem. Ela tem 1 de 5 missões de Culinária diárias. Aceite qualquer uma disponível
	>>Bolo de Carne de Cogumelo Infundido
	>>Ensopado do Esgoto
	>>Mustard Dogs
	>>Convenção no Saguão da Destreza
	>>Queijo para Furiouro
	.target Katherine Lee
step << Horde
	.goto Dalaran,69.96,39.05
	.daily 13112,13113,13114,13115,13116 >>Converse com |cRXP_FRIENDLY_Awilo Lon'gomba|r dentro da estalagem. Ele tem 1 de 5 missões de Culinária diárias. Aceite qualquer uma disponível
	>>Bolo de Carne de Cogumelo Infundido
	>>Ensopado do Esgoto
	>>Mustard Dogs
	>>Convenção no Saguão da Destreza
	>>Queijo para Furiouro
	.target Awilo Lon'gomba
-- Quest: Mustard Dogs!
step << Alliance
	>>Saque |cRXP_PICK_Selvagem Mustard|r em áreas gramadas de Dalaran
	.goto Dalaran,35.78,51.51,15,0
	.goto Dalaran,33.94,58.63,15,0
	.goto Dalaran,37.05,47.56,15,0
	.goto Dalaran,31.88,32.70,15,0
	.goto Dalaran,49.95,43.88,15,0
	.goto Dalaran,52.04,46.39,15,0
	.goto Dalaran,67.71,39.70,15,0
	.goto Dalaran,68.90,48.77
	.collect 43143,4 --Wild Mustard (4)
	.isOnQuest 13107
step << Horde
	>>Saque |cRXP_PICK_Selvagem Mustard|r em áreas gramadas de Dalaran
	.goto Dalaran,55.17,38.59,25,0
	.goto Dalaran,67.71,39.70,15,0
	.goto Dalaran,68.90,48.77,15,0
	.goto Dalaran,51.70,47.34,15,0
	.goto Dalaran,49.38,44.26,15,0
	.goto Dalaran,47.58,47.52,15,0
	.goto Dalaran,50.19,50.54,15,0
	.goto Dalaran,35.78,51.51,15,0
	.goto Dalaran,33.94,58.63,15,0
	.goto Dalaran,37.05,47.56,15,0
	.goto Dalaran,31.88,32.70
	.collect 43143,4 --Wild Mustard (4)
	.isOnQuest 13116
step
	#sticky
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Rhino Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Rhino Carne|r ou |cRXP_LOOT_Rinocerontes-quentes|r direto da Casa de Leilões em Dalaran
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13107 << Alliance
	.isOnQuest 13116 << Horde
step << Alliance
	#sticky
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Rhino Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Rhino Carne|r ou |cRXP_LOOT_Rinocerontes-quentes|r direto da Casa de Leilões em Objetos de TBC City ou Ironforge
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13107
step << Horde
	#sticky
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Rhino Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Rhino Carne|r ou |cRXP_LOOT_Rinocerontes-quentes|r direto da Casa de Leilões em Orgrimmar
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43012,4,-1 -- Rhino Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13116
step << Alliance
	.goto Dalaran,40.20,66.98
	>>Usar sua profissão de Culinária para converter 4 |cRXP_LOOT_Rhino Carne|r em 4 |cRXP_LOOT_Rinocerontes-quentes|r
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13107
step << Horde
	.goto Dalaran,70.44,39.80
	>>Usar sua profissão de Culinária para converter 4 |cRXP_LOOT_Rhino Carne|r em 4 |cRXP_LOOT_Rinocerontes-quentes|r
	.collect 34752,4 -- Rhino Dogs (4)
	.isOnQuest 13116
step << Alliance
	.use 43142 >>Usar |cRXP_LOOT_Vazio Piquenique Basket|r na mochila para combinar 4 |cRXP_LOOT_Rinocerontes-quentes|r e 4 |cRXP_LOOT_Selvagem Mustard|r para criar |cRXP_LOOT_Mustard Cachorro Piquenique Basket|r
	.complete 13107,1 --Mustard Dog Basket! (1)
	.isOnQuest 13107
step << Horde
	.use 43142 >>Usar |cRXP_LOOT_Vazio Piquenique Basket|r na mochila para combinar 4 |cRXP_LOOT_Rinocerontes-quentes|r e 4 |cRXP_LOOT_Selvagem Mustard|r para criar |cRXP_LOOT_Mustard Cachorro Piquenique Basket|r
	.complete 13116,1 --Mustard Dog Basket! (1)
	.isOnQuest 13116
step
	>>Converse com |cRXP_FRIENDLY_Arquimago Pentarus|r no pátio de pouso
	.goto Dalaran,68.53,42.04
	.turnin 13107 >>Entregue Mustard Dogs << Alliance
	.isQuestComplete 13107 << Alliance
	.turnin 13116 >>Entregue Mustard Dogs << Horde
	.isQuestComplete 13116 << Horde
	.target Archmage Pentarus
-- Quest: Infused Mushroom Meatloaf
step << Alliance
	>>Desça para os Esgotos de Dalaran. Saque os |cRXP_PICK_Imbuído Mushrooms|r azuis espalhados no chão
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,54.12,64.98,10,0
	.goto 126,57.12,49.90,10,0
	.goto 126,45.46,47.06,10,0
	.goto 126,47.29,33.14,10,0
	.goto 126,53.79,29.20,10,0
	.goto 126,59.73,44.33
	.collect 43100,4 --Infused Mushrooms
	.isOnQuest 13100
step << Horde
	>>Desça pelo poço para os Esgotos de Dalaran. Saque os |cRXP_PICK_Imbuído Mushrooms|r azuis espalhados no chão
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,36.30,43.97,10,0
	.goto 126,54.12,64.98,10,0
	.goto 126,57.12,49.90,10,0
	.goto 126,45.46,47.06,10,0
	.goto 126,47.29,33.14,10,0
	.goto 126,53.79,29.20,10,0
	.goto 126,59.73,44.33
	.collect 43100,4 --Infused Mushrooms (4)
	.isOnQuest 13112
step
	#sticky
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Gelado Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Gelado Carne|r direto da Casa de Leilões em Dalaran
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13100 << Alliance
	.isOnQuest 13112 << Horde
step << Alliance
	#sticky
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Gelado Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Gelado Carne|r direto da Casa de Leilões em Objetos de TBC City ou Ironforge
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13100
step << Horde
	#sticky
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Gelado Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Gelado Carne|r direto da Casa de Leilões em Orgrimmar
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,2 -- Chilled Meat (2)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13112
step << Alliance
	.use 43101 >>Usar |cRXP_LOOT_Meatloaf Pan|r na mochila para combinar 4 |cRXP_PICK_Imbuído Mushrooms|r e 2 |cRXP_LOOT_Gelado Meats|r em um fogo
	.goto Dalaran,40.20,66.98
	.complete 13100,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13100
step << Horde
	.use 43101 >>Usar |cRXP_LOOT_Meatloaf Pan|r na mochila para combinar 4 |cRXP_PICK_Imbuído Mushrooms|r e 2 |cRXP_LOOT_Gelado Meats|r em um fogo
	.goto Dalaran,59.46,31.33,60,0
	.goto Dalaran,70.44,39.80
	.complete 13112,1 --Infused Mushroom Meatloaf (1)
	.isOnQuest 13112
step
	>>Converse com |cRXP_FRIENDLY_Orton Bennet|r no andar de cima do edifício Curiosities & Moore
	.goto Dalaran,49.01,56.96,6,0
	.goto Dalaran,48.79,54.94,6,0
	.goto Dalaran,50.11,53.10,6,0
	.goto Dalaran,52.31,55.59
	.turnin 13100 >>Entregue Bolo de Carne de Cogumelo Infuso << Alliance
	.isQuestComplete 13100 << Alliance
	.turnin 13112 >>Entregue Bolo de Carne de Cogumelo Infuso << Horde
	.isQuestComplete 13112 << Horde
	.target Orton Bennet
-- Quest: Sewer Stew
step
	.zone CrystalsongForest >>Em Dalaran entre no prédio Portão Violeta e clique no Cristal da Trilha Violeta para se teletransportar para Floresta do Canto Cristalino
	.goto Dalaran,57.32,46.55,6,0
	.goto Dalaran,55.91,46.77
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	>>Saque |cRXP_PICK_Crystalsong Carrots|r no chão
	.goto CrystalsongForest,25.83,39.27,40,0
	.goto CrystalsongForest,28.74,42.89,40,0
	.goto CrystalsongForest,31.87,43.25,40,0
	.goto CrystalsongForest,30.69,37.48,40,0
	.goto CrystalsongForest,26.96,47.00
	.collect 43148,4 --Crystalsong Carrot (4)
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step
	#sticky
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Gelado Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Gelado Carne|r direto da Casa de Leilões em Dalaran
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13102 << Alliance
	.isOnQuest 13114 << Horde
step << Alliance
	#sticky
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Gelado Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Gelado Carne|r direto da Casa de Leilões em Objetos de TBC City ou Ironforge
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13102
step << Horde
	#sticky
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Gelado Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Gelado Carne|r direto da Casa de Leilões em Orgrimmar
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4 -- Chilled Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13114
step << Alliance
	.use 43147 >>Usar |cRXP_LOOT_Stew Cookpot|r na mochila para combinar 4 |cRXP_PICK_Crystalsong Carrots|r e 4 |cRXP_LOOT_Gelado Meats|r em um fogo
	.goto Dalaran,40.20,66.98
	.complete 13102,1 --Vegetable Stew (1)
	.isOnQuest 13102
step << Horde
	.use 43101 >>Usar |cRXP_LOOT_Stew Cookpot|r na mochila para combinar 4 |cRXP_PICK_Crystalsong Carrots|r e 4 |cRXP_LOOT_Gelado Meats|r em um fogo
	.goto Dalaran,59.46,31.33,57,0
	.goto Dalaran,70.44,39.80
	.complete 13114,1 --Vegetable Stew (1)
	.isOnQuest 13114
step << Alliance
	>>Fale com Ajay Verde nos Esgotos de Dalaran
	.goto Dalaran,35.31,45.28,10,0
	.goto 126,22.66,41.71,10,0
	.goto 126,36.30,43.97,10,0
	.goto 126,35.47,57.55
	.turnin 13102 >>Entregue Ensopado Esgotado
	.isQuestComplete 13102
step << Horde
	>>Desça pelo poço para os Esgotos de Dalaran. Converse com |cRXP_FRIENDLY_Ajay Verde|r
	.goto Dalaran,48.25,32.33,5,0
	.goto 126,35.47,57.55
	.turnin 13114 >>Entregue Ensopado Esgotado
	.isQuestComplete 13114
	.target Ajay Green
-- Quest: Cheese for Glowergold
step << Alliance
	#completewith Cheese
	>>Procure |cRXP_PICK_Half Full Dalaran Wine Glasses|r espalhadas por todos os prédios de Dalaran. Verifique dentro da estalagem e no andar de cima
	.goto Dalaran,43.75,63.27
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13103
step << Horde
	#completewith Cheese
	>>Procure |cRXP_PICK_Half Full Dalaran Wine Glasses|r espalhadas por todos os prédios de Dalaran. Verifique dentro da estalagem e no andar de cima
	.goto Dalaran,69.42,31.39
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
	.isOnQuest 13115
step
	#label Cheese
	>>Em Dalaran, entre no prédio Um More Taça. Saque |cRXP_PICK_Aged Dalaran Limburger|r. Pode aparecer aleatoriamente em uma mesa dentro ou fora
	.goto Dalaran,54.70,31.57
	.collect 43137,1 --Aged Dalaran Limburger (1)
	.isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step
	>>Procure |cRXP_PICK_Half Full Dalaran Wine Glasses|r espalhadas por todos os prédios de Dalaran. Verifique dentro da estalagem e no andar de cima
	.goto Dalaran,54.70,31.57
	.collect 43138,6 --Half Full Dalaran Wine Glass (6)
    .isOnQuest 13103 << Alliance
	.isOnQuest 13115 << Horde
step << Alliance
	.use 43139 >>Usar a Vazio Queijo Travessa na mochila para combinar 6 |cRXP_PICK_Half Full Dalaran Wine Glasses|r e |cRXP_PICK_Aged Dalaran Limburger|r para criar |cRXP_LOOT_Wine and Queijo Platter|r
	.complete 13103,1 --Wine and Cheese Platter (1)
	.isOnQuest 13103
step << Horde
	.use 43139 >>Usar a Vazio Queijo Travessa na mochila para combinar 6 |cRXP_PICK_Half Full Dalaran Wine Glasses|r e |cRXP_PICK_Aged Dalaran Limburger|r para criar |cRXP_LOOT_Wine and Queijo Platter|r
	.complete 13115,1 --Wine and Cheese Platter (1)
	.isOnQuest 13115
step
	>>Converse com |cRXP_FRIENDLY_Ranid Glowergold|r em Dalaran
	.goto Dalaran,36.42,29.64,10,0
	.goto Dalaran,36.62,27.88
	.turnin 13103 >>Queijo para Furiouro << Alliance
	.isQuestComplete 13103 << Alliance
	.turnin 13115 >>Queijo para Furiouro << Horde
	.isQuestComplete 13115 << Horde
	.target Ranid Glowergold
-- Quest: Convention at the Legerdemain
step << Alliance
	>>Em Dalaran, vá para o prédio Um More Taça. Saque |cRXP_PICK_Jug of Wine|r. Observe que aparece aleatoriamente e também pode aparecer fora bem como no andar de cima
	.goto Dalaran,54.00,32.26
	.complete 13101,2 --Jug of Wine (1)
	.isOnQuest 13101
step << Horde
	>>Em Dalaran, vá para o prédio Um More Taça. Saque |cRXP_PICK_Jug of Wine|r. Observe que aparece aleatoriamente e também pode aparecer fora bem como no andar de cima
	.goto Dalaran,54.00,32.26
	.complete 13113,2 --Jug of Wine (1)
	.isOnQuest 13113
step
	#sticky
    #completewith stew
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Gelado Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Gelado Carne|r ou |cRXP_LOOT_Ensopado do Norte|r direto da Casa de Leilões em Dalaran
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.skill engineering,<350,1
	.goto Dalaran,38.65,25.13,0
	.isOnQuest 13101 << Alliance
	.isOnQuest 13113 << Horde
step << Alliance
	#sticky
    #completewith stew
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Gelado Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Gelado Carne|r ou |cRXP_LOOT_Ensopado do Norte|r direto da Casa de Leilões em Objetos de TBC City ou Ironforge
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.goto Ironforge,24.83,73.83,0
	.goto Stormwind City,60.88,70.92,0
	.skill engineering,350,1
	.isOnQuest 13101
step << Horde
	#sticky
    #completewith stew
	>>Abate |cRXP_ENEMY_Rhinos|r em Picos Tempestuosos para |cRXP_LOOT_Gelado Carne|r. Alternativamente você pode comprar |cRXP_LOOT_Gelado Carne|r ou |cRXP_LOOT_Ensopado do Norte|r direto da Casa de Leilões em Orgrimmar
	.goto TheStormPeaks,43.26,59.11,70,0
	.goto TheStormPeaks,44.93,61.45,70,0
	.goto TheStormPeaks,45.77,57.91,70,0
	.goto TheStormPeaks,43.82,55.42,70,0
	.goto TheStormPeaks,41.79,53.43,70,0
	.goto TheStormPeaks,38.81,54.06,70,0
	.goto TheStormPeaks,38.58,59.45
	.collect 43013,4,-1 -- Chilled Meat (4)
	.goto Orgrimmar,54.57,63.68,0
	.skill engineering,350,1
	.isOnQuest 13113
step << Alliance
	#completewith next
	.isQuestAvailable 13087
	.isOnQuest 13101
	>>Para aprender a cozinhar |cRXP_LOOT_Ensopado do Norte|r você deve levar 4 |cRXP_LOOT_Gelado Carne|r para |cRXP_FRIENDLY_Brom Brewbaster|r em Fiorde Uivante. Alternativamente você pode comprar |cRXP_LOOT_Ensopado do Norte|r direto da Casa de Leilões. Se você está comprando |cRXP_LOOT_Ensopado do Norte|r da Casa de Leilões pule este passo
	>>Se você está completando esta missão, você precisará de um total de 8 Carne Gelada
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13087 >>Aceite Culinária do Norte
	.turnin 13087 >>Entregue Culinária do Norte
	.goto HowlingFjord,58.21,62.06
	.target Brom Brewbaster
step << Horde
	#completewith next
	.isQuestAvailable 13089
	.isOnQuest 13113
	>>Para aprender a cozinhar |cRXP_LOOT_Ensopado do Norte|r você deve levar 4 |cRXP_LOOT_Gelado Carne|r para |cRXP_FRIENDLY_Tomás Kolichio|r em Fiorde Uivante. Alternativamente você pode comprar |cRXP_LOOT_Ensopado do Norte|r direto da Casa de Leilões. Se você está comprando |cRXP_LOOT_Ensopado do Norte|r da Casa de Leilões pule este passo
	>>Se você está completando esta missão, você precisará de um total de 8 Carne Gelada
	.collect 43013,4 -- Chilled Meat (4)
	.accept 13089 >>Aceite Culinária do Norte
	.turnin 13089 >>Entregue Culinária do Norte
	.goto HowlingFjord,78.61,29.48
	.target Thomas Kolichio
step << Alliance
    #label stew
	.goto Dalaran,40.20,66.98
	>>Usar sua profissão de Culinária para converter 4 |cRXP_LOOT_Gelado Carne|r em 4 |cRXP_LOOT_Ensopado do Norte|r
	.complete 13101,1 --Northern Stew (4)
	.isOnQuest 13101
step << Horde
    #label stew
	.goto Dalaran,70.44,39.80
	>>Usar sua profissão de Culinária para converter 4 |cRXP_LOOT_Gelado Carne|r em 4 |cRXP_LOOT_Ensopado do Norte|r
	.complete 13113,1 --Northern Stew (4)
	.isOnQuest 13113
step
	>>Converse com |cRXP_FRIENDLY_Arille Azuregaze|r em Dalaran
	.goto Dalaran,48.37,37.47
	.turnin 13101 >>Convenção no Saguão da Destreza << Alliance
	.isQuestComplete 13101 << Alliance
	.turnin 13113 >>Convenção no Saguão da Destreza << Horde
	.isQuestComplete 13113 << Horde
	.target Arille Azuregaze
step
	+Você terminou a Missão Diária de Culinária para hoje
]])