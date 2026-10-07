if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Facção
#wotlk
#cata
#name Gunship da Coroa de Gelo - Desbloquear Missões Diárias

step
	+Nota: Várias Missões Diárias têm Missões de Grupo como pré-requisitos em Coroa de Gelo. Você deve completá-las para desbloquear as Missões Diárias seguintes. Sucesso todas as Missões de Grupo quando instruído pelo guia.
	>>Se você não conseguir completá-las, retorne a elas mais tarde.
step
    .goto IcecrownGlacier,87.8,78.1
    .fp The Argent Vanguard >>Aprenda a rota de voo para The Argent Vanguarda.
step
    .goto IcecrownGlacier,87.5,75.8
	>>Voe para The Argent Vanguarda. Fale com Tirion.
    .accept 13036 >>Aceite Honra acima de Tudo.
step
    .goto IcecrownGlacier,87.1,75.8
	>>Fale com Entari abaixo de você.
    .turnin 13036 >>Entregue Honra acima de Tudo.
    .accept 13008 >>Aceite Táticas do Flagelo.
step
    .goto IcecrownGlacier,86.8,76.6
	>>Fale com Gustav.
    .accept 13040 >>Aceite Curar o Incurável.
step
    .goto IcecrownGlacier,86.1,75.8
	>>Fale com Dalfors.
    .accept 13039 >>Aceite Defendendo a Vanguarda.
step
	#sticky
	#label webbedfreed
    .goto IcecrownGlacier,83.5,75.1,0,0
	>>Mate os Casulos de Cruzado Enredado na área para libertá-los. Eles também vão lhe bufar e curar. << !Paladin
	>>Mate os Casulos de Cruzado Enredado na área para libertá-los. Certifique-se de se bufar com algo diferente de Kings, já que os NPCs vão lhe bufar com isso (e lhe curar). << Paladin
    .complete 13008,1 --Webbed Crusader Freed (8)
step
    .goto IcecrownGlacier,84.7,78.8,80,0
    .goto IcecrownGlacier,83.5,75.1,80,0
    .goto IcecrownGlacier,83.1,72.6,80,0
    .goto IcecrownGlacier,84.8,73.0,80,0
    .goto IcecrownGlacier,83.5,75.1
	>>Mate os Nerubians e Aranhas na área. Saqueie-os pelos Sacos de Venenom.
    .complete 13039,1 --Forgotten Depths Nerubians (15)
    .complete 13040,1 --Forgotten Depths Venom Sac (10)
step
	#requires webbedfreed
    .goto IcecrownGlacier,86.1,75.8
	>>Entregue para Dalfors.
    .turnin 13039 >>Entregue Defendendo a Vanguarda.
step
    .goto IcecrownGlacier,86.8,76.6
	>>Entregue para Gustav.
    .turnin 13040 >>Entregue Curar o Incurável.
step
    .goto IcecrownGlacier,87.1,75.8
	>>Entregue para Entari.
    .turnin 13008 >>Entregue Táticas do Flagelo.
    .accept 13044 >>Aceite Se Houver Sobreviventes...
step
    .goto IcecrownGlacier,87.0,79.0
	>>Fale com Penumbrius.
    .turnin 13044 >>Entregue Se Houver Sobreviventes...
    .accept 13045 >>Aceite Em Direção à Devastação Verdejante.
step
	#completewith next
    .goto IcecrownGlacier,87.1,79.2
	.vehicle 30228 >>Clique com o botão direito em Garraérea Argêntea para montá-lo.
step
	>>Voe para Scourgeholme. Usar "Agarrar Cruzado Capturado" (1) para resgatar os Cruzados (você só pode pegar um por vez), depois voe de volta para Gustav em The Argent Vanguarda e use "Soltar Cruzado Capturado" (2) para soltá-los. Usar "Voar Alto" (3) em recarga para ir mais rápido.
	.pin Icecrown,78.7,67.0
    .waypoint IcecrownGlacier,78.7,67.0,0,rescue,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
	.goto Icecrown,86.68,76.83
    .complete 13045,1 --Captured Crusader Rescued (3)
step
    .goto IcecrownGlacier,87.5,75.8
	>>Voe de volta para Tirion.
    .turnin 13045 >>Entregue Em Direção à Devastação Verdejante.
    .accept 13070 >>Aceite Uma Frente Fria se Aproxima.
step
    .goto IcecrownGlacier,85.6,76.0
	>>Fale com Fezzik dentro da pequena casa.
    .turnin 13070 >>Entregue Uma Frente Fria se Aproxima.
    .accept 13086 >>Aceite A Última Linha de Defesa.
step
	#completewith next
    .goto IcecrownGlacier,85.3,75.8
	.vehicle >>Voe para uma das Torretas no topo dos muros e entre nela.
step
    .goto IcecrownGlacier,84.8,75.8
	--vehicle id 30236
	>>Usar repetidamente "Canhão Argênteo" (1) para matar inimigos em uma pequena AdE e gerar mana. Usar "Bomba do Juízo" (2) para matar inimigos em uma grande AdE ao custo de mana.
    .complete 13086,1 --Scourge Attackers (100)
    .complete 13086,2 --Frostbrood Destroyer (3)
step
    .goto IcecrownGlacier,85.6,76.0
	>>Saia do canhão. Entregue para Fezzik.
    .turnin 13086 >>Entregue A Última Linha de Defesa.
step
    .goto IcecrownGlacier,86.0,75.8
	>>Fale com Tirion atrás de você.
    .accept 13104 >>Aceite Mais Uma Vez, para a Brecha! << !DK
    .accept 13105 >>Aceite Mais Uma Vez, para a Brecha! << DK
step
	>>Viaje para noroeste. Fale com Vigia de Ébano, Silas, Spitzpatrick e depois com Gustav dentro da casa.
    .turnin 13104 >>Entregue Mais Uma Vez, para a Brecha! << !DK
    .turnin 13105 >>Entregue Mais Uma Vez, para a Brecha! << DK
    .accept 13118 >>Aceite A Purgação do Forte do Flagelo.
    .accept 13122 >>Aceite A Pedra do Flagelo.
    .goto IcecrownGlacier,83.0,73.0
    .accept 13130 >>Aceite A Rocha que Iniciou uma Revolução.
    .accept 13135 >>Aceite Perigo Iminente.
    .goto IcecrownGlacier,83.0,73.1
    .accept 13110 >>Aceite Os Mortos Inquietos.
    .goto IcecrownGlacier,82.9,72.8
step
	#completewith Crusaders
	>>Mate os Flagelos em Scourgeholme. Saqueie-os pela Pedra do Flagelo.
    .complete 13122,1 --Scourgestone (15)
step
	#completewith Kings
	.use 43153 >>Mate os Cruzados Reanimados em Scourgeholme. Usar a Água Sagrada na mochila nos cadáveres deles para libertar suas almas
    .goto IcecrownGlacier,78.6,69.7,0
    .goto IcecrownGlacier,77.9,66.2,0
    .goto IcecrownGlacier,78.5,64.6,0
    .goto IcecrownGlacier,80.2,65.7,0
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
	#completewith next
    .goto IcecrownGlacier,79.5,68.6,0
    .goto IcecrownGlacier,80.8,64.5,0
    .goto IcecrownGlacier,77.7,63.2,0
    .goto IcecrownGlacier,78.4,65.7,0
	>>Mate os Forgotten Underkings em Scourgeholme
    .complete 13118,2 --Forgotten Depths Underking (3)
step
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7,15,0
    .goto IcecrownGlacier,79.2,64.0,20,0
    .goto IcecrownGlacier,79.6,64.1,15,0
    .goto IcecrownGlacier,77.8,65.1,50,0
    .goto IcecrownGlacier,77.3,68.2,20,0
    .goto IcecrownGlacier,77.6,68.7
	>>Mate os Forgotten High Priests principalmente localizados dentro dos Zigurates da área
    .complete 13118,1 --Forgotten Depths High Priest (3)
step
	#label Kings
    .goto IcecrownGlacier,79.5,68.6,80,0
    .goto IcecrownGlacier,80.8,64.5,80,0
    .goto IcecrownGlacier,77.7,63.2,80,0
    .goto IcecrownGlacier,78.4,65.7
	>>Mate os Forgotten Underkings na área
    .complete 13118,2 --Forgotten Depths Underking (3)
step
	#label Crusaders
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	.use 43153 >>Mate os Cruzados Reanimados em Scourgeholme. Usar a Água Sagrada na mochila nos cadáveres deles para libertar suas almas
    .complete 13110,1 --Restless Soul Freed (10)
    .complete 13118,3 --Reanimated Crusader (8)
step
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7,80,0
    .goto IcecrownGlacier,78.6,69.7,80,0
    .goto IcecrownGlacier,77.9,66.2,80,0
    .goto IcecrownGlacier,78.5,64.6,80,0
    .goto IcecrownGlacier,80.2,65.7
	>>Mate os Flagelos em Scourgeholme. Saqueie-os pela Pedra do Flagelo.
    .complete 13122,1 --Scourgestone (15)
step
	#completewith next
    .goto CrystalsongForest,61.1,52.4,0
    .goto CrystalsongForest,58.9,62.8,0
    .goto CrystalsongForest,81.1,72.4,0
    .goto CrystalsongForest,89.2,55.7,0
    .goto CrystalsongForest,61.1,52.4,0
	>>Mate os Humanoides/Mortos-Vivos/Elementais na área. Saque-os pela Energia
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Saque os tocos de árvore roxos no chão da área
    .complete 13130,1 --Crystalline Heartwood (10)
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0,80,0
    .goto CrystalsongForest,65.0,53.5,80,0
    .goto CrystalsongForest,70.6,56.1,80,0
    .goto CrystalsongForest,71.4,67.6,80,0
    .goto CrystalsongForest,63.9,69.0
    .complete 13130,2 --Ancient Elven Masonry (10)
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9,80,0
    .goto CrystalsongForest,73.7,65.4,80,0
    .goto CrystalsongForest,82.6,64.5,80,0
    .goto CrystalsongForest,86.5,59.1,80,0
    .goto CrystalsongForest,73.4,56.9
	>>Saque pequenos pedaços azuis de mármore ao redor dos edifícios élficos destruídos
step
    .goto CrystalsongForest,61.1,52.4,80,0
    .goto CrystalsongForest,58.9,62.8,80,0
    .goto CrystalsongForest,81.1,72.4,80,0
    .goto CrystalsongForest,89.2,55.7,80,0
    .goto CrystalsongForest,61.1,52.4
	>>Mate os Humanoides/Mortos-Vivos/Elementais na área. Saque-os pela Energia
    .complete 13135,1 --Crystallized Energy (8)
step
	>>Entregue à Vigia de Ébano
    .turnin 13130 >>Entregue A Rocha que Iniciou uma Revolução
    .turnin 13135 >>Entregue Perigo Iminente
    .goto IcecrownGlacier,83.0,73.1
    .turnin 13118 >>Entregue A Purgação do Forte do Flagelo
    .turnin 13122 >>Entregue A Pedra do Flagelo
    .accept 13125 >>Aceite Silêncio no Forte
    .goto IcecrownGlacier,83.1,73.0
step
    .goto IcecrownGlacier,82.9,72.8
	>>Entre na cabana
    .turnin 13110 >>Entregue Os Mortos Inquietos
step
    .goto IcecrownGlacier,77.3,61.9
	.use 43206 >>Entre no edifício. Usar a Trompa de Guerra de Áquerus para convocar um NPC para ajudar você a matar Salranax
    .complete 13125,1 --Salranax the Flesh Render (1)
step
    .goto IcecrownGlacier,80.1,61.2
	.use 43206 >>Entre no edifício. Usar a Trompa de Guerra de Áquerus para convocar um NPC para ajudar você a matar Yath'amon
    .complete 13125,3 --High Priest Yath'amon (1)
step
    .goto IcecrownGlacier,76.5,53.2
	.use 43206 >>Usar a Trompa de Guerra de Áquerus para convocar um NPC para ajudar você a matar Talonox
    .complete 13125,2 --Underking Talonox (1)
step
    .goto IcecrownGlacier,83.0,72.9
	>>Entregue à Vigia de Ébano
    .turnin 13125 >>Entregue Silêncio no Forte
step
    .goto IcecrownGlacier,82.9,72.8
	>>Entre na cabana
    .accept 13139 >>Aceite No Coração Congelado de Nortúndria
step
    .goto IcecrownGlacier,86.0,75.8
	>>Entregue Tirion
    .turnin 13139 >>Entregue No Coração Congelado de Nortúndria
    .accept 13141 >>Aceite A Batalha pelo Pináculo dos Cruzados
step
    .goto IcecrownGlacier,80.04,71.94
	.use 43243 >>Usar o Estandarte Abençoado da Cruzada na mochila na pilha de crânios e defenda-o contra as ondas que se aproximam. Concentre-se em matar Halof, o Mortífero quando ele aparecer
    .complete 13141,1 --Battle for Crusaders' Pinnacle (1)
step
    .goto IcecrownGlacier,82.9,72.8
	>>Entre na cabana
    .turnin 13141 >>Entregue A Batalha pelo Pináculo dos Cruzados
    .accept 13157 >>Aceite O Pináculo dos Cruzados
step
    .goto IcecrownGlacier,79.8,71.8
	>>Suba até o lugar onde você defendeu o Estandarte. Fale com Tirion
    .turnin 13157 >>Entregue O Pináculo dos Cruzados
    .accept 13068 >>Aceite Uma História de Coragem
step
    .goto IcecrownGlacier,79.4,72.3
    .fp Crusaders' Pinnacle >>Aprenda a rota de voo do Pináculo dos Cruzados
step << Horde
    .goto IcecrownGlacier,79.5,72.7
	>>Entre na torre. Fale com Strongbrow no andar inferior na cama
    .accept 13224 >>Aceite Martelo de Orgrim
step << Alliance
    .goto Icecrown,79.44,72.84
	>>Entre na torre. Fale com Ivalius no andar inferior na cama
    .accept 13225 >>Aceite O Rompe-Céus
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2
	>>Voe para O Rompe-Céus, o grande navio da Aliança que está voando alto no ar. Entre no grande quarto em que Maraad está voltado para trás e fale com Justin
    .turnin 13225 >>Entregue O Rompe-Céus
    .accept 13231 >>Aceite O Front Partido
step << Alliance
	#label slaves1
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Encontre Absalan, o Pio. Ele caminha pela parte traseira do navio, subindo e descendo as escadas à esquerda e à direita
    .daily 13300 >>Aceite Escravos da Saronita
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Suba as escadas na parte traseira do navio e fale com o Capitão-Cavaleiro Drosche
    .daily 13336 >>Aceite Sangue dos Escolhidos
    .accept 13341 >>Aceite Juntando-se ao Ataque
step << Alliance
	#requires slaves1
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Pegue as escadas no meio do navio (atrás de Maraad), depois as escadas de ambos os lados do primeiro lance de escadas para descer na sala de máquinas. Fale com o Engenheiro-Chefe Pertaporca
    .accept 13296 >>Aceite Vá à Ymarheim!
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Voe para Martelo de Orgrim, o grande navio da Horda que está voando alto no ar. Entre no grande quarto na frente. Fale com o Exterminador dos Céus Korm Escaranegra
    .turnin 13224 >>Entregue Martelo de Orgrim
    .accept 13228 >>Aceite O Front Partido
step << Horde
	>>Aceite as missões de Armipotente Davos Bulício e o Irmão Keltan. Eles andam ao redor das escadas e do convés inferior
    .daily 13302 >>Aceite Escravos da Saronita
    .daily 13330 >>Aceite Sangue dos Escolhidos
    .accept 13340 >>Aceite Juntando-se ao Ataque
step << Horde
	>>Vá para o convés inferior do navio. Fale com o Engenheiro-chefe Cobregarra
    .accept 13293 >>Aceite Vá à Ymarheim!
step << Alliance
    .goto IcecrownGlacier,62.6,51.3
	>>Voe para o Comandante Terrestre Koup (no chão)
    .turnin 13341 >>Entregue Juntando-se ao Ataque
    .daily 13309 >>Aceite Ataque Aéreo
	>>Você pode pular a missão diária se desejar
step << Alliance
    #completewith next
    .goto Icecrown,62.55,50.67
    .vehicle 32227 >>Clique com o botão direito na torre de canhão no topo da Máquina Voadora para iniciar a missão
	.isOnQuest 13309
step << Alliance
	-- completionist
	>>Atire em todas as Lança Armas de Fogo nos prédios enquanto você voa ao redor
    .goto Icecrown,52.65,56.93
    .complete 13309,1 --4/4 Skybreaker Infiltrators dropped
	.isOnQuest 13309
step << Alliance
    .goto Icecrown,62.55,51.29
	>>Entregue para Koup
    .turnin 13309 >>Entregue Ataque Aéreo
	.isQuestComplete 13309
step << Alliance
    .goto IcecrownGlacier,62.5,51.1,15,0
    .goto IcecrownGlacier,62.8,51.6
	>>Fale com o Líder de Pelotão. Ele pode não estar aqui se outra pessoa começou a missão e tem aproximadamente 6 minutos de respawn, e reaparece cerca de 10 jardas à direita de Koup
	>>Você pode pular esta missão. É apenas uma missão diária que se conecta bem com as outras
    .daily 13284 >>Aceite Ataque Terrestre
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Abata os Vraikal em toda Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
step << Alliance
    .goto Icecrown,59.89,53.50
	>>Escolte as tropas. Deixe algumas das tropas segurarem os inimigos se necessário
    .complete 13284,1 --4/4 Alliance troops escorted to Ymirheim
	.isOnQuest 13284
step << Alliance
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Vá para a Mina de Saronita. Fale com os escravos para resgatá-los (às vezes eles podem atacá-lo)
    .complete 13300,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13300
step << Alliance
    .goto IcecrownGlacier,58.2,55.9,70,0
    .goto IcecrownGlacier,59.6,59.3,70,0
    .goto IcecrownGlacier,57.8,62.6
	>>Abata os Vraikal em toda Ymirheim
	.complete 13336,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13336
step << Alliance
	#completewith next
    .goto Icecrown,57.01,62.53
	>>Voe para Frazzle no chão
    .turnin 13296 >>Entregue Vá à Ymarheim!
step << Alliance
    .goto Icecrown,57.01,62.53
	>>NOTA: Esta missão o marca como PvP. Porém, é MUITO fácil
    .daily 13280 >>Aceite O Rei da Montanha
step << Alliance
    #completewith next
    .goto Icecrown,56.99,62.60
    .vehicle 31784 >>Clique direito no robô que parece um gnomo
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,54.89,60.12
	>>Use "Propulsores" (3) rapidamente para escalar o penhasco (não tem recarga). Quando chegar ao topo da montanha, use "Fincar Estandarte de Batalha da Aliança" (1) para plantar a bandeira. Depois, saia do veículo
    .complete 13280,1 --1/1 Alliance Battle Standard planted
	.isOnQuest 13280
step << Alliance
    .goto Icecrown,56.97,62.55
	>>Clique no botão Sair do Veículo
    .turnin 13280 >>Entregue O Rei da Montanha
	.isQuestComplete 13280
step << Horde
	>>Voe para o Comandante Terrestre Xutja (ele está no chão - não no navio)
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13340 >>Entregue Juntando-se ao Ataque
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .daily 13310 >>Aceite Ataque Aéreo
	>>Você pode pular a missão diária se desejar
step << Horde
	#completewith next
	.vehicle >>Corra para a Torre de Supressão Kor'kron e clique nela
    .goto IcecrownGlacier,59.5,45.94
	.isOnQuest 13310
step << Horde
	>>Atire em todos os Lança-Armas de Fogo nos edifícios enquanto você voa ao redor. Os Infiltradores cairão quando você fizer isso
    .goto IcecrownGlacier,56.8,64.3
    .complete 13310,1 --Kor'kron Infiltrators dropped (4)
	.isOnQuest 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
    .turnin 13310 >>Entregue Ataque Aéreo
	.isQuestComplete 13310
step << Horde
    .goto IcecrownGlacier,58.3,46.0
	>>Fale com o Líder de Pelotão. Ele pode não estar aqui se alguém começou a missão e tem um tempo de reaparição de aproximadamente 6 minutos
    .daily 13301 >>Aceite Ataque Terrestre
	>>Você pode pular esta missão. É apenas uma missão diária que se conecta bem com as outras
step << Horde
	#sticky
	#label ymirheimslain
    .goto IcecrownGlacier,58.2,55.9,0
    .goto IcecrownGlacier,59.6,59.3,0
    .goto IcecrownGlacier,57.8,62.6,0
	#completewith Mineslave
	>>Abata os Vraikal em toda Ymirheim
	.complete 13330,1 --Ymirheim Vrykul Slain (20)
	.isOnQuest 13330
step << Horde
	>>Escorte as tropas
    .goto IcecrownGlacier,59.4,52.8
    .complete 13301,1 --Horde troops escorted to Ymirheim (4)
	.isOnQuest 13301
step << Horde
	#label Mineslave
    .goto IcecrownGlacier,55.7,57.3,40,0
    .goto IcecrownGlacier,56.2,58.9,40,0
    .goto IcecrownGlacier,55.6,59.7,40,0
    .goto IcecrownGlacier,54.5,60.0,40,0
    .goto IcecrownGlacier,55.7,57.3
	>>Vá para a Mina de Saronita. Fale com os escravos para resgatá-los (às vezes eles podem atacá-lo)
    .complete 13302,1 --Saronite Mine Slave rescued (10)
	.skipgossip
	.isOnQuest 13302
step << Horde
	#requires ymirheimslain
    .goto IcecrownGlacier,51.9,57.6
    .turnin 13293 >>Entregue Vá à Ymarheim!
    .daily 13283 >>Aceite O Rei da Montanha
step << Horde
    #completewith next
    .goto Icecrown,51.95,57.62
    .vehicle >>Clique direito no robô que parece um gnomo
	.isOnQuest 13283
step << Horde
    .goto Icecrown,54.89,60.12
	>>Use "Propulsores" (3) rapidamente para escalar o penhasco (não tem recarga). Quando chegar ao topo da montanha, use "Fincar Estandarte de Batalha da Horda" (1) para plantar a bandeira. Depois, saia do veículo
    .complete 13283,1 --1/1 Horde Battle Standard planted
	.isOnQuest 13283
step << Horde
    .goto Icecrown,51.9,57.6
	>>Clique no botão Sair do Veículo
    .turnin 13283 >>Entregue O Rei da Montanha
	.isQuestComplete 13283
step << Alliance
    .goto IcecrownGlacier,66.4,66.5
	>>Encontre e fale com um soldado moribundo ao redor da frente partida
    .complete 13231,1 --Dying Soldier Questioned (1)
    .accept 13232 >>Aceite Mate-me!
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,69.1,62.1
	>>Encontre mais Soldados Morrendo ao redor da área e termine com eles
	.complete 13232,1
	.skipgossip
step << Horde
    .goto IcecrownGlacier,67.7,68.4
	>>Encontre e fale com um Berserker Moribundo ao redor de O Front Partido
    .complete 13228,1 --Dying Berserker Questioned (1)
    .accept 13230 >>Aceite Vingue-me!
step << Horde
    .goto IcecrownGlacier,68.7,64.2
	>>Encontre mais Soldados Morrendo ao redor da área e termine com eles
	.complete 13230,1 --Dying Alliance Soldiers Slain (5)
	.skipgossip
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Voe para O Rompe-Céus, o grande navio Aliança que está voando alto no ar (você pode vê-lo no seu mapa). Entre na grande sala que Maraad está enfrentando na parte de trás e fale com Justin
    .turnin 13231 >>Entregue O Front Partido
    .turnin 13232 >>Entregue Mate-me!
    .accept 13286 >>Aceite ...Toda a Ajuda que Conseguirmos
    .accept 13290 >>Aceite Atenção, por Favor
step << Alliance
	#label slaves2
	#sticky
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Encontre Absalan, o Pio. Ele anda ao redor da parte de trás do navio, para cima e para baixo as escadas para a esquerda e para a direita
    .turnin 13300 >>Complete Escravos da Saronita
	.isQuestComplete 13300
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Suba as escadas na parte traseira do navio e fale com o Capitão-Cavaleiro Drosche
    .turnin 13336 >>Complete Sangue dos Escolhidos
	.isQuestComplete 13336
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Fale com Thassarian no canto traseiro esquerdo do navio
    .turnin 13286 >>Entregue ...Toda a Ajuda que Conseguirmos
    .accept 13287 >>Aceite Fura e Perfura
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Pegue as escadas no meio do navio (atrás de Maraad), depois as escadas de ambos os lados do primeiro lance de escadas para descer na sala de máquinas. Fale com o Engenheiro-Chefe Pertaporca
    .turnin 13290 >>Entregue Atenção, por Favor
    .accept 13291 >>Aceite Tecnologia Emprestada
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Voe para O Martelo de Orgrim, o grande navio Horda que está voando alto no ar. Fale com o Exterminador dos Céus Korm Escaranegra na sala da frente
    .turnin 13228 >>Entregue O Front Partido
    .turnin 13230 >>Entregue Vingue-me!
    .accept 13238 >>Aceite Vamos Ver se Dá pro Gasto!
    .accept 13260 >>Aceite Os Iguais se Reconhecem
step << Horde
	>>Fale com Koltira ao seu lado
    .turnin 13260 >>Entregue Os Iguais se Reconhecem
    .accept 13237 >>Aceite Fura e Perfura
step << Horde
	>>Fale com o Irmão Keltan andando ao redor das escadas
    .turnin 13302 >>Complete Escravos da Saronita
	.isQuestComplete 13302
step
	>>Fale com o Armipotente Davos Bulício. Ele também patrulha o convés inferior
    .turnin 13330 >>Complete Sangue dos Escolhidos
	.isQuestComplete 13330
step << Horde
	>>Vá para o convés inferior do navio. Fale com o Engenheiro-chefe Cobregarra
    .turnin 13238 >>Entregue Vamos Ver se Dá pro Gasto
    .accept 13239 >>Aceite Volatilidade
step << Alliance
	>>Entregue para o Comandante Terrestre Koup
    .goto Icecrown,62.60,51.35
    .turnin 13284 >>Entregue Ataque Terrestre
	.isQuestComplete 13284
step << Horde
	>>Entregue para o Comandante Terrestre Xutja
    .goto IcecrownGlacier,58.3,46.2
    .turnin 13301 >>Entregue Ataque Terrestre
	.isQuestComplete 13301
step << Alliance
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Saque os pedaços de equipamento abandonado espalhados no chão ao redor de O Front Partido. Usar o Smuggled Solution na mochila quando tiver uma peça de cada tipo de equipamento (não precisa esperar pela encenação)
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
	#completewith next
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Pegue os pedaços de equipamento abandonado espalhados no chão ao redor de O Front Partido. Usar o Copperclaw's Volátil Oil na mochila quando tiver uma peça de cada tipo de equipamento (não precisa esperar a encenação)
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Mate as Abominações, os Adeptos e os Necromantes na área
    .complete 13287,1 --Hulking Abominations Slain (5)
    .complete 13287,3 --Shadow Adepts Slain (5)
    .complete 13287,2 --Malefic Necromancers Slain (5)
step << Horde
    .goto IcecrownGlacier,67.0,63.3,70,0
    .goto IcecrownGlacier,67.4,70.2,70,0
    .goto IcecrownGlacier,71.6,61.3
	>>Mate as Abominações, os Adeptos e os Necromantes na área
    .complete 13237,1 --Hulking Abominations Slain (5)
    .complete 13237,3 --Shadow Adepts Slain (5)
    .complete 13237,2 --Malefic Necromancers Slain (5)
step << Alliance
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 44048 >>Saque os pedaços de equipamento abandonado espalhados no chão ao redor de O Front Partido. Usar o Smuggled Solution na mochila quando tiver uma peça de cada tipo de equipamento (não precisa esperar pela encenação)
	.collect 43609,3,13291,1,-1 --Pile of Bones (3)
	.collect 43610,3,13291,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13291,1,-1 --Abandoned Armor (3)
    .complete 13291,1 --Field Tests Conducted (3)
step << Horde
    .goto IcecrownGlacier,67.2,68.3,70,0
    .goto IcecrownGlacier,68.0,70.9,70,0
    .goto IcecrownGlacier,71.6,61.3,70,0
    .goto IcecrownGlacier,67.2,68.3
	.use 43608 >>Pegue os pedaços de equipamento abandonado espalhados no chão ao redor de O Front Partido. Usar o Copperclaw's Volátil Oil na mochila quando tiver uma peça de cada tipo de equipamento (não precisa esperar a encenação)
	.collect 43609,3,13239,1,-1 --Pile of Bones (3)
	.collect 43610,3,13239,1,-1 --Abandoned Helm (3)
	.collect 43616,3,13239,1,-1 --Abandoned Armor (3)
    .complete 13239,1 --Field Tests Conducted (3)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Voe para O Rompe-céus, o grande navio da Aliança que está voando muito alto no ar. Fale com Thassarian no canto traseiro esquerdo do navio
    .turnin 13287 >>Entregue Fura e Perfura
    .accept 13288 >>Aceite Abominável!
    .accept 13294 >>Aceite Contra os Gigantes
step << Alliance
	#requires notdead
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Pegue as escadas no meio do navio (atrás de Maraad), depois as escadas de ambos os lados do primeiro lance de escadas para descer na sala de máquinas. Fale com o Engenheiro-Chefe Pertaporca
    .turnin 13291 >>Entregue Tecnologia Emprestada
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Voe para Martelo de Orgrim, o grande navio da Horda que está voando muito alto no ar. Fale com Koltira na sala da frente do navio
    .turnin 13237 >>Entregue Fura e Perfura
    .accept 13264 >>Aceite Abominável!
	.accept 13277 >>Aceite Contra os Gigantes
step << Horde
	>>Vá para o convés inferior do navio. Fale com o Engenheiro-chefe Cobregarra
    .turnin 13239 >>Complete Volatilidade
step
    .goto IcecrownGlacier,68.3,61.5
	>>Abate as Abominações Colossais na área e saqueie-as por Tripas de Abominação Geladas
	.use 43968 >>Usar o Kit de Reanimação de Abominações com algumas Tripas na mochila para invocar uma Abominação que você pode controlar. Colete tantos inimigos quantos possível fazendo a Abominação atacá-los e ganhando aggro, depois use "Rasgo na Costura" para matar todos os inimigos perto da sua Abominação (os inimigos têm que estar em combate para obter crédito deles)
	>>Se você ficar sem Tripas, vá e mate mais Abominações Colossais. Você pode ter apenas uma Tripa com você por vez.
	.collect 43966,1,13288,-1,1 << Alliance --Chilled Abomination Guts (3)
    .complete 13288,1 << Alliance  --Icy Ghouls Exploded (15)
    .complete 13288,2 << Alliance  --Vicious Geists Exploded (15)
    .complete 13288,3 << Alliance  --Risen Alliance Soldiers Exploded (15)
	.collect 43966,1,13264,-1,1 << Horde  --Chilled Abomination Guts (3)
    .complete 13264,1 << Horde --Icy Ghouls Exploded (15)
    .complete 13264,2 << Horde --Vicious Geists Exploded (15)
    .complete 13264,3 << Horde --Risen Alliance Soldiers Exploded (15)
	.isOnQuest 13288 << Alliance
	.isOnQuest 13264 << Horde
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Vá para Martelo de Orgrim. Fale com Koltira
    .turnin 13264 >>Complete Abominável!
    .accept 13351 >>Aceite Um Vislumbre do que Está por Vir
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Vá para O Rompe-céus. Fale com Thassarian
    .turnin 13288 >>Complete Abominável!
    .accept 13315 >>Aceite Um Vislumbre do que Está por Vir
step << Alliance
	>>Voe sobre os pontos de referência na plataforma acima do grande muro
    .complete 13315,1 --1/1 Aldur'thar South Visited
    .goto Icecrown,55.64,46.73
    .complete 13315,2 --1/1 Aldur'thar Central Visited
    .goto Icecrown,54.10,43.43
    .complete 13315,3 --1/1 Aldur'thar North Visited
    .goto Icecrown,54.09,35.33
    .complete 13315,4 --1/1 Aldur'thar Northwest Visited
    .goto Icecrown,52.06,34.21
step << Horde
	>>Voe sobre os pontos de referência na plataforma acima do grande muro
    .complete 13351,1 --Aldur'thar South Visited (1)
    .goto IcecrownGlacier,55.3,43.9
    .complete 13351,2 --Aldur'thar Central Visited (1)
    .goto IcecrownGlacier,55.1,41.6
    .complete 13351,3 --Aldur'thar North Visited (1)
    .goto IcecrownGlacier,53.7,35.5
    .complete 13351,4 --Aldur'thar Northwest Visited (1)
    .goto IcecrownGlacier,51.9,34.8
step << Alliance
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Mate os Horrores Purulentos na área. Saqueie-os pelos Espinhos. Esta missão é MUITO difícil, forme um grupo se necessário.
    .complete 13294,1 --Pustulant Spine (5)
step << Horde
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7,70,0
    .goto IcecrownGlacier,66.8,58.4,70,0
    .goto IcecrownGlacier,69.5,57.3,70,0
    .goto IcecrownGlacier,72.5,59.0,70,0
    .goto IcecrownGlacier,70.1,57.2,70,0
    .goto IcecrownGlacier,65.7,63.0,70,0
    .goto IcecrownGlacier,63.4,56.7
	>>Mate os Horrores Purulentos na área. Saqueie-os pelos Espinhos. Esta missão é MUITO difícil, forme um grupo se necessário.
    .complete 13277,1 --Pustulant Spine (5)
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Voe para Martelo de Orgrim, o grande navio da Horda que está voando muito alto no ar. Fale com Koltira na sala da frente do navio
    .turnin 13351 >>Entregue Um Vislumbre do que Está por Vir
	.turnin 13277 >>Entregue Contra os Gigantes
    .accept 13355 >>Aceite Impossível Reproduzir
    .accept 13354 >>Aceite Cadeia de Comando
    .accept 13352 >>Aceite Arrastar e Soltar
	.accept 13279 >>Aceite Alquimia Básica
    .accept 13278 >>Aceite Coprous, o Escatológico
step << Horde
	>>Vá para o convés inferior do navio. Fale com o Engenheiro-chefe Cobregarra
    .accept 13379 >>Aceite Tecnologia Verde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Voe para O Rompe-céus, o grande navio da Aliança que está voando muito alto no ar. Fale com Thassarian no canto traseiro esquerdo do navio
    .turnin 13315 >>Entregue Um Vislumbre do que Está por Vir
    .turnin 13294 >>Entregue Contra os Gigantes
    .accept 13318 >>Aceite Arrastar e Soltar
    .accept 13319 >>Aceite Cadeia de Comando
    .accept 13320 >>Aceite Impossível Reproduzir
    .accept 13295 >>Aceite Alquimia Básica
    .accept 13298 >>Aceite Coprous, o Escatológico
step << Alliance
	>>Pegue as escadas no meio do navio (atrás de Maraad), depois as escadas de ambos os lados do primeiro lance de escadas para descer na sala de máquinas. Fale com o Engenheiro-Chefe Pertaporca
    .accept 13383 >>Aceite Tecnologia Emprestada
step
	#completewith next
    .goto IcecrownGlacier,63.3,62.1,25 >>Entre no portão para Mord'rethar. Está no segundo nível, guardado pelos Demônios Pestilhentos
	.isOnQuest 13295 << Alliance
	.isOnQuest 13279 << Horde
step
    .goto IcecrownGlacier,62.3,63.4
	.use 44010 >>Usar o Fluído Espinhal Pustulante nos caldeirões verdes borbulhantes. Mate os inimigos que aparecem e use o Fluído Espinhal novamente quando a mensagem disser "Adicione fluído em breve". Esta missão é MUITO difícil, forme um grupo se necessário.
    .complete 13295,1 << Alliance --Batch of Plague Neutralized (1)
    .complete 13279,1 << Horde --Batch of Plague Neutralized (1)
step
    .goto IcecrownGlacier,60.8,62.2
	>>Mate Coprous, o Profanador dentro de Mord'rethar. Esta missão é MUITO difícil, então forme um grupo se necessário.
    .complete 13298,1 << Alliance --Coprous the Defiler Slain (1)
    .complete 13278,1 << Horde --Coprous the Defiler Slain (1)
step
	#sticky
	#label darksub
	>>Vá para a plataforma acima do muro e mate os Iniciados Amargos na área. Saqueie-os pelos Orbes de Ilusão
	.use 44246 >>Usar a Orbe de Ilusão nos Subjugadores de Escuridão na área quando estiver fora de combate
	.collect 44246,3,13352,1,-1 << Horde --Orb of Illusion (3 -1)
	.collect 44246,3,13318,1,-1 << Alliance --Orb of Illusion (3 -1)
    .goto IcecrownGlacier,53.7,46.1
    .complete 13352,1 << Horde --Dark Subjugator dragged and dropped (3)
    .complete 13318,1 << Alliance --Dark Subjugator dragged and dropped (3)
    .goto IcecrownGlacier,54.7,45.9,60,0
    .goto IcecrownGlacier,54.0,46.3,60,0
    .goto IcecrownGlacier,52.2,45.7,60,0
    .goto IcecrownGlacier,54.0,46.3
--	.unitscan Dark Subjugator
--X too many in the area, unitscan would be awkward
step
    .goto IcecrownGlacier,53.9,46.1
	>>Mate o Feitor Faedris na grande tenda
    .complete 13354,1 << Horde --Overseer Faedris Killed (1)
	.complete 13319,1 << Alliance --Overseer Faedris Killed (1)
step
	#requires darksub
	.use 44251 >>Usar o Frasco Compartimentado nos caldeirões fora de Aldur'thar
    .complete 13355,3 << Horde --Dark Sample Collected (1)
	.complete 13320,3 << Alliance --Dark Sample Collected (1)
    .goto IcecrownGlacier,49.7,34.4
    .complete 13355,2 << Horde --Green Sample Collected (1)
	.complete 13320,2 << Alliance --Green Sample Collected (1)
    .goto IcecrownGlacier,49.1,34.2
    .complete 13355,1 << Horde --Blue Sample Collected (1)
    .complete 13320,1 << Alliance --Blue Sample Collected (1)
    .goto IcecrownGlacier,48.9,33.2
step
	>>Mate o Feitor Savryn e Jhaeqon sob as grandes tendas. Depois voe para cima um nível até Veraj (embaixo da grande tenda) e mate-o
    .complete 13354,4 << Horde --Overseer Savryn Killed (1)
	.complete 13319,4 << Alliance --Overseer Savryn Killed (1)
    .goto IcecrownGlacier,49.4,31.2
    .complete 13354,2 << Horde --Overseer Jhaeqon Killed (1)
	.complete 13319,2 << Alliance --Overseer Jhaeqon Killed (1)
    .goto IcecrownGlacier,54.7,32.6
    .complete 13354,3 << Horde --Overseer Veraj Killed (1)
	.complete 13319,3 << Alliance --Overseer Veraj Killed (1)
    .goto IcecrownGlacier,53.7,29.2
step << Alliance
	>>Voe para a pequena plataforma no ar. Fale com Killohertz
	.goto IcecrownGlacier,53.96,42.93
	.turnin 13383 >>Entregue Killohertz
	.accept 13380 >>Aceite À Frente do Ataque
step << Alliance
	.goto IcecrownGlacier,53.96,43.11
	>>Fale com Karen para entrar em um bombardeiro. Usar Carregar Escudo (1) para ganhar 100 escudos e depois mude para Baía dos Bombardeiros (5) e comece a bombardear a Flagelo abaixo até que toda a Infantaria e Capitães sejam mortos. Mude para Torreta Antiaérea (4) e comece a usar Foguetes Antiaéreos (1) para atirar em gárgulas no ar. Uma vez completado, pressione o botão Sair do veículo e você será retornado para a plataforma
	.complete 13380,1 -- Bombardment Infantry slain (40)
	.complete 13380,2 -- Bombardment Captain slain (8)
	.complete 13380,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Alliance
	>>Fale com Killohertz
    .goto IcecrownGlacier,53.96,42.93
    .turnin 13380 >>Entregue À Frente do Ataque
step << Horde
	>>Voe para a pequena plataforma no ar. Fale com Tezzla
    .goto IcecrownGlacier,53.99,36.87
    .turnin 13379 >>Entregue Tecnologia Verde
    .accept 13373 >>Aceite Os Benefícios da Ciência Marginal
step << Horde
	.goto IcecrownGlacier,54.00,36.70
	>>Fale com Rizzy para entrar em um bombardeiro. Usar Carregar Escudo (1) para ganhar 100 escudos e depois mude para Baía dos Bombardeiros (5) e comece a bombardear a Flagelo abaixo até que toda a Infantaria e Capitães sejam mortos. Mude para Torreta Antiaérea (4) e comece a usar Foguetes Antiaéreos (1) para atirar em gárgulas no ar. Uma vez completado, pressione o botão Sair do veículo e você será retornado para a plataforma
	.complete 13373,1 -- Bombardment Infantry slain (40)
	.complete 13373,2 -- Bombardment Captain slain (8)
	.complete 13373,3 -- Gargoyle Ambusher slain (15)
	.skipgossip
step << Horde
	>>Fale com Tezzla
    .goto IcecrownGlacier,54.00,36.94
    .turnin 13373 >>Entregue Os Benefícios da Ciência Marginal
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Voe para O Rompe-céus, o grande navio da Aliança que está voando muito alto no ar. Fale com Thassarian no canto traseiro esquerdo do navio
    .turnin 13318 >>Complete Arrastar e Soltar
    .turnin 13319 >>Entregue Cadeia de Comando
    .turnin 13295 >>Entregue Alquimia Básica
    .turnin 13298 >>Entregue Coprous, o Escatológico
    .accept 13342 >>Aceite Outro Tipo de Grampo
    .accept 13345 >>Aceite Precisamos de Mais Informações
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Pegue as escadas no meio do navio (atrás de Maraad), depois as escadas de ambos os lados do primeiro lance de escadas para descer na sala de máquinas. Fale com o Engenheiro-Chefe Pertaporca
    .turnin 13320 >>Entregue Impossível Reproduzir
    .accept 13321 >>Aceite Novo Teste
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Voe para Martelo de Orgrim, o grande navio da Horda voando muito alto no ar. Entre na grande sala na frente. Fale com Kolitra
	.turnin 13352 >>Complete Arrastar e Soltar
    .turnin 13354 >>Entregue Cadeia de Comando
    .turnin 13279 >>Entregue Alquimia Básica
    .turnin 13278 >>Entregue Coprous, o Escatológico
    .accept 13358 >>Aceite Outro Tipo de Grampo
    .accept 13366 >>Aceite Precisamos de Mais Informações
step << Horde
	>>Vá para o convés inferior do navio. Fale com o Engenheiro-chefe Cobregarra
    .turnin 13355 >>Entregue Impossível Reproduzir
    .accept 13356 >>Aceite Novo Teste
step
	#label taintedessence
	#sticky
    .goto IcecrownGlacier,49.7,34.4,0,0
	.use 44307 >>Usar o Tônico da Seita Diluído na mochila para ganhar o bônus "Discernimento Sombrio". Isso permite que você saque as Essências Maculadas de todos os humanoides que você mata na área
	.collect 44301,10,13356,1 << Horde
	.collect 44301,10,13321,1 << Alliance
step
    .goto IcecrownGlacier,54.1,31.4,70,0
    .goto IcecrownGlacier,54.7,28.0,70,0
    .goto IcecrownGlacier,57.0,28.8,70,0
    .goto IcecrownGlacier,54.1,31.4
	.use 44433 >>Abate 5 Minions Escravizados (Voidwalkers). Usar o Bastão de Sifão nos cadáveres deles pela Matéria Negra
	.collect 44434,5,13342,1 << Alliance --Dark Matter (5)
	.collect 44434,5,13358,1 << Horde --Dark Matter (5)
step
    .goto IcecrownGlacier,53.8,33.6
	>>Clique na Pedra de Evocação
	.complete 13342,1 << Alliance  --Dark Messenger Summoned (1)
    .complete 13358,1 << Horde --Dark Messenger Summoned (1)
step
	#completewith next
    .goto IcecrownGlacier,51.9,32.5,30 >>Entre em Aldur'thar
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
    .goto IcecrownGlacier,53.1,31.1,60,0
    .goto IcecrownGlacier,53.1,29.2,60,0
    .goto IcecrownGlacier,50.9,29.0,60,0
    .goto IcecrownGlacier,50.9,30.4,60,0
    .goto IcecrownGlacier,53.1,31.1
	>>Mate os Pesquisadores Sectários na área. Saqueie-os por suas Páginas de Pesquisa
	.collect 44459,1 --Cult of the Damned Research - Page 1 (1)
	.collect 44460,1 --Cult of the Damned Research - Page 2 (1)
	.collect 44461,1 --Cult of the Damned Research - Page 3 (1)
	.isOnQuest 13366 << Horde
	.isOnQuest 13345 << Alliance
step
	#sticky
	#label Thesis
    .goto IcecrownGlacier,49.7,34.4
	.use 44459 >>Clique em uma das páginas de pesquisa na mochila para combiná-las na Tese
    .complete 13366,1 << Horde --Cult of the Damned Thesis (1)
	.complete 13345,1 << Alliance --Cult of the Damned Thesis (1)
step
	#requires taintedessence
    .goto IcecrownGlacier,49.7,34.4
	.use 44301
	.use 44304 >>Clique direito nas Essências Maculadas na mochila para transformá-las em um Writhing Mass. Jogue-o numa caldeira
	.complete 13321,1 << Alliance
	.complete 13356,1 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Voe para O Rompe-céus, o grande navio da Aliança que está voando muito alto no ar. Fale com Thassarian no canto traseiro esquerdo do navio
    .turnin 13342 >>Complete Outro Tipo de Grampo
    .turnin 13345 >>Entregue Precisamos de Mais Informações
    .accept 13346 >>Aceite Onde os Maléficos Não Têm Descanso
    .accept 13332 >>Aceite Erguendo as Barricadas
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Pegue as escadas no meio do navio (atrás de Maraad), depois as escadas de ambos os lados do primeiro lance de escadas para descer na sala de máquinas. Fale com o Engenheiro-Chefe Pertaporca
    .turnin 13321 >>Complete Novo Teste
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Voe para Martelo de Orgrim, o grande navio da Horda voando muito alto no ar. Entre na grande sala na frente. Fale com Kolitra
    .turnin 13358 >>Complete Outro Tipo de Grampo
	.turnin 13366 >>Entregue Precisamos de Mais Informações
    .accept 13367 >>Aceite Onde os Maléficos Não Têm Descanso
    .accept 13306 >>Aceite Erguendo as Barricadas
step << Horde
	>>Vá para o convés inferior do navio. Fale com o Engenheiro-chefe Cobregarra
    .turnin 13356 >>Complete Novo Teste
step
    .goto IcecrownGlacier,52.5,42.0,70,0
    .goto IcecrownGlacier,51.3,37.1,70,0
    .goto IcecrownGlacier,47.1,37.4,70,0
    .goto IcecrownGlacier,50.0,44.9,70,0
    .goto IcecrownGlacier,52.5,42.0
	.use 44127 >>Usar o Kit de Construção de Barricada na mochila nos brilhos roxos que aparecem no Vale dos Heróis Caídos
    .complete 13332,1 << Alliance --Barricades constructed (8)
	.complete 13306,1 << Horde --Barricades constructed (8)
step
	>>Esta missão é MUITO difícil, forme um grupo para completá-la se necessário
	>>Abra os baús dentro de Aldur'thar e saque o Crânio, Coração, Sceptro e Robes de Alumeth
	.collect 44476,1 --Alumeth's Skull (1)
    .goto IcecrownGlacier,50.5,30.0
	.collect 44477,1 --Alumeth's Heart (1)
    .goto IcecrownGlacier,52.8,30.7
	.collect 44478,1 --Alumeth's Scepter (1)
    .goto IcecrownGlacier,52.8,29.8
	.collect 44479,1 --Alumeth's Robes (1)
    .goto IcecrownGlacier,53.0,29.0
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Esta missão é MUITO difícil, forme um grupo para completá-la se necessário
	.use 44476 >>Clique em qualquer um dos itens na mochila para combiná-los em Restos Mortais de Alumeth
	.collect 44480,1 --Alumeth's Remains (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step
    .goto IcecrownGlacier,51.9,29.0
	>>Esta missão é MUITO difícil, forme um grupo para completá-la se necessário
	.use 44480 >>Usar Restos Mortais de Alumeth em frente ao cristal brilhante para invocá-lo. Abate-o
    .complete 13346,1 << Alliance --Alumeth the Ascended Defeated (1)
    .complete 13367,1 << Horde --Alumeth the Ascended Defeated (1)
	.isOnQuest 13346 << Alliance
	.isOnQuest 13367 << Horde
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Voe para O Rompe-céus, o grande navio da Aliança que está voando muito alto no ar. Fale com Thassarian no canto traseiro esquerdo do navio
    .turnin 13346 >>Complete Onde os Maléficos Não Têm Descanso
    .turnin 13332 >>Entregue Erguendo as Barricadas
	.accept 13337 >>Aceite A Muralha de Ferro
	.accept 13334 >>Aceite Estandartes Salpicados de Sangue
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Voe para Martelo de Orgrim, o grande navio da Horda voando muito alto no ar. Entre na grande sala na frente. Fale com Kolitra
    .turnin 13367 >>Complete Onde os Maléficos Não Têm Descanso
    .turnin 13306 >>Entregue Erguendo as Barricadas
	.accept 13312 >>Aceite A Muralha de Ferro
	.accept 13307 >>Aceite Estandartes Salpicados de Sangue
step
    .goto IcecrownGlacier,51.3,40.3,70,0
    .goto IcecrownGlacier,49.1,43.8
	>>Mate os Conversores do Flagelo na área
    .complete 13334,3 << Alliance --Scourge Converter (5)
    .complete 13307,3 << Horde --Scourge Converter (5)
step
    .goto IcecrownGlacier,45.5,46.5
	>>Esta missão é MUITO difícil, forme um grupo para completá-la se necessário
	.use 44186 >>Voe até a varanda, depois use a Runa da Distorção na mochila no Orbe de Grimkor. Mate Grimkor, o Perverso
    .complete 13337,1 << Alliance --Grimkor the Wicked (1)
    .complete 13312,1 << Horde --Grimkor the Wicked (1)
step
    .goto IcecrownGlacier,47.1,48.5,70,0
    .goto IcecrownGlacier,41.9,48.4,70,0
    .goto IcecrownGlacier,41.9,54.3,70,0
    .goto IcecrownGlacier,46.1,53.1
	>>Mate o Portador do Estandarte do Flagelo e os Heróis Convertidos na área
    .complete 13334,1 << Alliance --Scourge Banner-Bearer (5)
    .complete 13334,2 << Alliance --Converted Hero (20)
    .complete 13307,1 << Horde --Scourge Banner-Bearer (5)
    .complete 13307,2 << Horde --Converted Hero (20)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Voe para O Rompe-céus, o grande navio da Aliança que está voando muito alto no ar. Fale com Thassarian no canto traseiro esquerdo do navio
	.turnin 13334 >>Entregue Estandartes Salpicados de Sangue
	.turnin 13337 >>Entregue A Muralha de Ferro
	>>Entre na grande sala em O Rompe-céus que Maraad enfrenta e fale com Justin
	.accept 13314 >>Aceite Receba a Mensagem
step << Alliance
    .goto IcecrownGlacier,46.2,52.1,70,0
    .goto IcecrownGlacier,42.4,59.4,0,0
	.use 44222 >>Usar a Pistola de Dardos na mochila nos Batedores do Martelo de Orgrim (você pode usar enquanto está em sua montaria voadora). Saque os cadáveres deles pelos Despachos
    .complete 13314,1 --Orgrim's Hammer Dispatch (6)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
    .goto IcecrownGlacier,54.7,35.3,200,0
    .goto IcecrownGlacier,65.1,57.2,200,0
    .goto IcecrownGlacier,54.7,35.3
	>>Entre na grande sala em O Rompe-céus que Maraad enfrenta e fale com Justin
	.turnin 13314 >>Entregue Get The Message
step << Horde
	.goto IcecrownGlacier,67.00,38.00
	>>Voe para Martelo de Orgrim, o grande navio da Horda voando muito alto no ar. Entre na grande sala na frente. Fale com Kolitra
	.turnin 13312 >>Entregue A Muralha de Ferro
	.turnin 13307 >>Entregue Estandartes Salpicados de Sangue
step << Horde
	>>Fale com Krom Blackscar ao seu lado
	.accept 13313 >>Aceite Cegando os Olhos no Céu
step << Horde
	.goto IcecrownGlacier,48.85,40.44
	.use 44212 >>Usar o SGM-3 na mochila nos Skybreaker Recon Fighters no ar
	.complete 13313,1 --Skybreaker Recon Fighters shot down (6)
step << Horde
	>>Voe para Martelo de Orgrim, o grande navio da Horda que está voando bem alto. Entre na grande sala na frente. Fale com Krom Blackscar
	.turnin 13313 >>Entregue Cegando os Olhos no Céu
step
	+Se você pulou ou não completou qualquer uma das missões neste guia, reinicie o guia e complete-as. Para fazer isso, clique na roda de engrenagem e navegue de volta para o guia Desbloqueio de Missões Diárias do Canhoneiro da Coroa de Gelo
	>>Se você completou todas, pode começar a usar a Rota de Missões Diárias do Canhoneiro da Coroa de Gelo. Observe que algumas podem não estar disponíveis hoje, pois você já pode ter completado algumas missões diárias
]])
