if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Facção
#wotlk
#cata
#name Rota de Missões Diárias do Ebon Blade

step
	+Para desbloquear as missões diárias dos Cavaleiros da Lâmina de Ébano, você deve primeiro completar sua cadeia de missões em Coroa de Gelo. Por favor, use o guia Ebon Blade Desbloquear Missões Diárias para desbloquear as missões diárias
	.isQuestAvailable 12814

-- 3 Quests from The Shadow Vault
step
	>>De A Abóbada das Sombras aceite as 3 missões diárias
    >>Fale com Prateado
	.daily 12995 >>Aceite Deixando Nossa Marca
	.goto Icecrown,42.84,24.92
	>>Fale com o Saltador. Ele anda ao redor da tenda
	.daily 13069 >>Aceite Atirar'Em Up
	.goto IcecrownGlacier,43.5,25.0
	>>Fale com Torpe, ele é uma abominação que patrulha o caminho entre a entrada e o prédio principal
    .daily 13071 >>Aceite Torpe Brincar com Fogo!
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Abate Vraikal na área. Usar o Estandarte da Lâmina de Ébano na mochila nos cadáveres
    .complete 12995,1--Ebon Blade Banner planted near Vrykul corpse (15)
	.isOnQuest 12995
step
    .goto IcecrownGlacier,27.9,33.2
	>>Dentro do Arpão, use repetidamente "Arpão de Fogo Rápido" (3) para abater os Dragões
	.complete 13069,1 --Jotunheim Proto-Drakes & their riders shot down
	.isOnQuest 13069
step
	#completewith next
    .goto IcecrownGlacier,28.0,37.7
    .vehicle 30564 >>Clique com o botão direito no Protodraco de Njorndar para montá-lo
	.isOnQuest 13071
step
    .goto IcecrownGlacier,27.7,41.1,70,0
    .goto IcecrownGlacier,29.2,41.0,70,0
    .goto IcecrownGlacier,29.6,39.7,70,0
    .goto IcecrownGlacier,31.5,36.9,70,0
    .goto IcecrownGlacier,32.0,39.1,70,0
    .goto IcecrownGlacier,30.8,40.2,70,0
    .goto IcecrownGlacier,32.4,40.7,70,0
    .goto IcecrownGlacier,31.5,43.9,70,0
    .goto IcecrownGlacier,30.1,43.1,70,0
    .goto IcecrownGlacier,27.7,41.1
	>>Usar "Estouro de Velocidade" (1) em recarga para se mover mais rápido. Usar "Bombardear Jotunheim Prédio" (3) para incendiar os prédios
    .complete 13071,1 --Vrykul buildings set ablaze (8)
	.isOnQuest 13071
step
    >>Vá à Abóbada das Sombras. Fale com Prateado, com o Saltador e com Torpe
	.turnin 12995 >>Entregue Deixando Nossa Marca
	.goto Icecrown,42.84,24.92
    .turnin 13069 >>Entregue Atirar'Em Up
	.goto IcecrownGlacier,43.5,25.0
    .turnin 13071 >>Entregue Torpe Brincar com Fogo!
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8

-- 3 Quests from Death's Rise
step
	>>Do Morro da Morte aceite as 3 missões diárias
	>>Fale com Setaal
	.daily 12813 >>Aceite Ergam-se dos Cadáveres!
	.goto Icecrown,19.67,48.39
	>>Fale com Aurochs. Ele patrulha ao redor do fogo do meio
    .daily 12838 >>Aceite Trabalho da Inteligência
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Fale com Uzo
    .daily 12815 >>Aceite Zona de Voo Restrito
	.goto Icecrown,19.64,47.80
step
	#sticky
	#label Gryphon
	.goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>Abate os Cavaleiros Grifo na área. Atire-os para baixo com habilidades à distância ou agrupe vários deles no ar, e então voe para baixo e mate-os
    .complete 12815,1 --Onslaught Gryphon Rider (10)
	.isOnQuest 12815
step
    #completewith next
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >>Abate os inimigos do Acossamento na área. Usar a Tintura da Curalâmina Sombria na mochila nos cadáveres
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	>>Abata inimigos do Acossamento, então saqueie-os pelas chaves. Usar-as para abrir baús ao redor do Porto do Acossamento para obter os Documentos
	>>Os baús não têm uma taxa de queda de 100% para os documentos
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4,40,0
    .goto IcecrownGlacier,10.7,45.6,40,0
    .goto IcecrownGlacier,10.3,46.4,40,0
    .goto IcecrownGlacier,8.8,46.7,40,0
    .goto IcecrownGlacier,8.8,42.2,40,0
    .goto IcecrownGlacier,10.6,42.9,40,0
    .goto IcecrownGlacier,9.6,40.6,40,0
    .goto IcecrownGlacier,9.3,37.5,40,0
    .goto IcecrownGlacier,10.1,36.2,40,0
    .goto IcecrownGlacier,9.1,36.3,40,0
    .goto IcecrownGlacier,8.5,36.4
	.collect 40652,6,12838,-1
    .complete 12838,1 --Onslaught Intel Documents (5)
	.isOnQuest 12838
step
	.goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >>Abate os inimigos do Acossamento na área. Usar a Tintura da Curalâmina Sombria na mochila nos cadáveres
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires Gryphon
	>>Volte ao Morro da Morte. Fale com Uzo, Setaal e Aurochs
    .turnin 12815 >>Entregue Zona de Voo Restrito
    .goto Icecrown,19.64,47.80
    .turnin 12813 >>Entregue Ergam-se dos Cadáveres!
    .goto Icecrown,19.67,48.39
    .turnin 12838 >>Entregue Trabalho da Inteligência
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
step
	+Você completou todas as Missões Diárias dos Cavaleiros da Lâmina de Ébano para hoje :) Lembre-se de que você pode usar seu Tabardo enquanto faz Masmorras de WotLK para reputação extra!
]])
