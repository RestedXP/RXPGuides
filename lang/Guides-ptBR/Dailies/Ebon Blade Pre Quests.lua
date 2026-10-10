if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Facção
#wotlk
#cata
#name Desbloquear Missões Diárias da Lâmina de Ébano

step
    +Você completou a cadeia de missões pré-requisito dos Cavaleiros da Lâmina de Ébano. Por favor, use o guia de Missões Diárias da Lâmina de Ébano para completar as missões diárias.
	.isQuestTurnedIn 12814

step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Voe para o Rompe-céus, o grande navio da Aliança que está voando muito alto no ar
	>>Fale com Thassarian no canto traseiro esquerdo do navio
    .accept 12887 >>Aceite Só Diversão
step << Horde
	.goto Icecrown,62.58,45.04
	>>Voe para Martelo de Orgrim, o grande navio da Horda que está voando muito alto no ar
	>>Fale com Koltirus Tecemorte na área frontal do navio
    .accept 12892 >>Aceite Só Diversão
step
    .goto IcecrownGlacier,44.5,21.6
	.use 41265 >>Voe para o topo da torre. Usar o Destruidor de Olhos no Ocular até que morra
    .complete 12887,1 << Alliance --The Ocular has been destroyed (1)
    .complete 12892,1 << Horde --The Ocular has been destroyed (1)
step
    .goto IcecrownGlacier,44.1,24.7
	>>Voe até o Barão Prateado no chão. Fale com ele
    .turnin 12887 >>Entregue Só Diversão << Alliance
    .turnin 12892 >>Entregue Só Diversão << Horde
    .accept 12891 >>Aceite Tenho uma Ideia, mas Antes...
step
	>>Mate os Geists e saqueie-os para obter a Corda, Mate os Abominadores e saqueie-os para obter o Anzol, Mate os Cultistas e saqueie-os para obter o Bastão, e Mate os Morto-vivo e saqueie-os para obter a Essência
    .complete 12891,1 --Cultist Rod (1)
    .goto IcecrownGlacier,43.8,24.2,40,0
    .goto IcecrownGlacier,43.6,25.1,40,0
    .goto IcecrownGlacier,43.7,25.4,40,0
    .goto IcecrownGlacier,42.5,25.1,40,0
    .goto IcecrownGlacier,42.3,26.1
    .complete 12891,3 --Geist Rope (1)
    .goto IcecrownGlacier,43.4,25.6,40,0
    .goto IcecrownGlacier,43.3,26.6,40,0
    .goto IcecrownGlacier,42.5,26.4,40,0
    .goto IcecrownGlacier,42.9,24.5
    .complete 12891,2 --Abomination Hook (1)
    .goto IcecrownGlacier,43.3,24.1,40,0
    .goto IcecrownGlacier,43.5,26.2,40,0
    .goto IcecrownGlacier,42.5,28.1,40,0
    .goto IcecrownGlacier,42.7,25.7
   .complete 12891,4 --Scourge Essence (5)
    .goto IcecrownGlacier,43.6,24.1,40,0
    .goto IcecrownGlacier,42.6,27.2,40,0
    .goto IcecrownGlacier,42.3,26.1
step
    .goto IcecrownGlacier,44.2,24.6
	>>Entregue para o Barão Prateado
    .turnin 12891 >>Entregue Tenho uma Ideia, mas Antes...
    .accept 12893 >>Aceite Liberar Sua Mente
step
    .goto IcecrownGlacier,44.4,27.0
	.use 41366 >>Mate Torpe. Usar o Bastão Soberano no cadáver dele
    .complete 12893,1 --Vile turned (1)
step
    .goto IcecrownGlacier,41.8,24.5
	.use 41366 >>Mate a Senhora Noctibosque. Usar o Bastão Soberano no cadáver dela
    .complete 12893,2 --Lady Nightswood turned (1)
step
    .goto IcecrownGlacier,43.0,23.5,70,0
    .goto IcecrownGlacier,44.8,24.3,70,0
    .goto IcecrownGlacier,46.2,21.9,70,0
    .goto IcecrownGlacier,45.7,19.7,70,0
    .goto IcecrownGlacier,43.7,19.0,70,0
    .goto IcecrownGlacier,42.6,21.1
	.use 41366 >>Mate O Saltador. Usar o Bastão Soberano no cadáver dele. Ele caminha ao redor da área fora do prédio principal no andar superior.
    .complete 12893,3 --The Leaper turned (1)
	.unitscan The Leaper
step
	#label Freemind
    .goto IcecrownGlacier,44.2,24.7
	>>Entregue para o Barão Prateado
    .turnin 12893 >>Entregue Liberar Sua Mente
    .accept 12896 >>Aceite Se Não Conseguir Convertê-lo... << Alliance
    .accept 12897 >>Aceite Se Não Conseguir Convertê-lo... << Horde
step
    .goto IcecrownGlacier,44.7,19.8
	>>Entre no prédio e clique no Cavalete de Armas do General. Tenha cuidado, isso invoca um Élite. Mate o General Halonegro
    .complete 12896,1 << Alliance --General Lightsbane (1)
    .complete 12897,1 << Horde --General Lightsbane (1)
step << Alliance
    .goto IcecrownGlacier,65.1,57.2,0
    .goto IcecrownGlacier,64.7,52.4,0
    .goto IcecrownGlacier,62.1,45.9,0
    .goto IcecrownGlacier,57.5,39.1,0
    .goto IcecrownGlacier,54.7,35.3,0
	>>Voe de volta para o Rompe-céus. Fale com Thassarian no canto traseiro esquerdo do navio
    .turnin 12896 >>Entregue Se Não Conseguir Convertê-lo...
    .accept 12898 >>Aceite A Abóbada das Sombras
step << Horde
	>>Voe de volta para Martelo de Orgrim. Fale com Koltirus Tecemorte na área frontal do navio
    .turnin 12897 >>Entregue Se Não Conseguir Convertê-lo...
    .accept 12899 >>Aceite A Abóbada das Sombras
step
    .goto IcecrownGlacier,42.8,24.9
	>>Entregue para o Barão Prateado
	.turnin 12898 >>Entregue A Abóbada das Sombras << Alliance
    .turnin 12899 >>Entregue A Abóbada das Sombras << Horde
    .accept 12938 >>Aceite O Duque
step
	#completewith next
    .goto IcecrownGlacier,43.7,24.4
    .fp The Shadow Vault >>Aprenda a rota de voo para A Abóbada das Sombras
step
    .goto IcecrownGlacier,44.7,20.3
	>>Entre no prédio. Fale com Lankral
    .turnin 12938 >>Entregue O Duque
    .accept 12939 >>Aceite Desafio de Honra
step
    .goto Icecrown,43.60,25.13
	>>Fale com O Saltador, ele caminha ao redor da tenda
    .accept 12955 >>Aceite Eliminando a Concorrência
step
    .goto IcecrownGlacier,37.5,24.7,0,0
	#sticky
	#label mjordincombat
	.use 41372 >>Usar a Bandeira de Desafio no Combatente Mjordin de longe. Você pode desafiar vários Combatentes de uma vez enquanto se mantém fora de combate (mas apenas 1 inimigo por dupla)
    .complete 12939,1 --Mjordin Combatants challenged and defeated (6)
step
	>>Voe para o Penhasco de Destroçar
	>>Fale com Tinky, Sigrid, Onu'zun e Efrem no Penhasco de Destroçar. Derrote-os
    .complete 12955,4 --Tinky Wickwhistle defeated (1)
    .goto IcecrownGlacier,36.1,23.6
    .complete 12955,1 --Sigrid Iceborn defeated (1)
    .goto IcecrownGlacier,37.1,22.4
    .complete 12955,3 --Onu'zun defeated (1)
    .goto IcecrownGlacier,37.9,22.9
    .complete 12955,2 --Efrem the Faithful defeated (1)
    .goto IcecrownGlacier,37.9,25.1
	.skipgossip
step
    .goto IcecrownGlacier,43.5,25.0
	>>Entregue para O Saltador
    .turnin 12955 >>Entregue Eliminando a Concorrência
step
    .goto IcecrownGlacier,44.7,20.3
	>>Entre no prédio. Fale com Lankral
    .turnin 12939 >>Entregue Desafio de Honra
    .accept 12943 >>Aceite O Decreto da Abóbada das Sombras
step
	#completewith next
    .goto IcecrownGlacier,39.01,23.99,25 >>O caminho para o Salão de Ufrang começa aqui
step
    .goto IcecrownGlacier,41.0,23.9
	>>Volte para o Salto Selvagem e então entre no Salão de Ufrang. Fale com Vaelen que está acorrentado dentro.
    .accept 12949 >>Aceite Em Busca da Chave
step
    .goto IcecrownGlacier,40.3,23.9
	.use 41776 >>Usar o Decreto da Abóbada das Sombras na mochila em frente a Thane. Abata-o.
    .complete 12943,1 --Thane Ufrang the Mighty (1)
step
    .goto IcecrownGlacier,37.7,23.9,70,0
    .goto IcecrownGlacier,36.7,23.7
	>>Volte para fora do Salto Selvagem. Mate o Instrutor Hroegar que está patrulhando pela redondeza. Saqueie-o pela chave.
    .complete 12949,1 --Key to Vaelen's Chains (1)
	.unitscan Instructor Hroegar
step
    .goto IcecrownGlacier,41.0,23.9
	>>Volte para dentro de Ufrang's Hall. Entregue a Vaelen.
    .turnin 12949 >>Entregue Em Busca da Chave
    .accept 12951 >>Aceite Deixa o Barão Saber Disso...
step
    .goto IcecrownGlacier,39.01,23.99,25,0
    .goto IcecrownGlacier,42.9,24.9
	>>Saia de Hall. Entregue a Barão Prateado.
    .turnin 12951 >>Entregue Deixa o Barão Saber Disso...
    .daily 12995 >>Aceite Deixando Nossa Marca
    .accept 13085 >>Aceite O Retorno de Vaelen
step
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
	>>Fale com Torpe que está patrulhando pela estrada principal.
    .accept 12992 >>Aceite Esmagar Vraikalen!
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>>Entre no prédio. Fale com Vaelen que está dentro à esquerda.
    .turnin 13085 >>Entregue O Retorno de Vaelen
    .accept 12982 >>Aceite Prisioneiros da Lâmina de Ébano
step
    .goto IcecrownGlacier,44.7,20.4
	>>Fale com Lankral
    .turnin 12943 >>Entregue O Decreto da Abóbada das Sombras
    .accept 13084 >>Aceite Jotunheim Destruída
step
    .goto IcecrownGlacier,29.5,43.4,50,0
    .goto IcecrownGlacier,29.6,45.7,50,0
    .goto IcecrownGlacier,27.9,45.8,50,0
    .goto IcecrownGlacier,27.8,40.2,50,0
    .goto IcecrownGlacier,28.3,38.0,50,0
    .goto IcecrownGlacier,29.0,35.1,50,0
    .goto IcecrownGlacier,34.1,28.7,50,0
    .goto IcecrownGlacier,29.5,43.4
	.use 42480 >>Abata Vraikal na área e saqueie-os pelas chaves das gaiolas. Usar o Estandarte da Lâmina de Ébano na mochila nos cadáveres deles. Clique nas Chaves Saqueadas nas gaiolas encontradas em Jotunheim.
	>>Queime os Estandartes encontrados em Jotunheim.
	.collect 42422,8,12982,1,-1 --Jotunheim Cage Key (8)
    .complete 12982,1 --Ebon Blade Prisoners set free (8)
    .complete -12995,1 --Ebon Blade Banner planted near Vrykul corpse (0/15)
    .complete 12992,1 --Jotunheim Vrykul slain (0/15)
    .complete 13084,1 --Vrykul banners burned (10)
step
    .goto IcecrownGlacier,42.7,26.8,60,0
    .goto IcecrownGlacier,43.6,24.1
	>>Volte para A Abóbada das Sombras. Fale com Torpe que está patrulhando pela estrada principal.
    .turnin 12992 >>Entregue Esmagar Vraikalen!
    .daily 13071 >>Aceite Torpe Brincar com Fogo!
step
    .goto IcecrownGlacier,43.8,23.3,30,0
    .goto IcecrownGlacier,43.1,21.1
	>>Entre no prédio. Fale com Vaelen que está dentro à esquerda.
    .turnin 12982 >>Entregue Prisioneiros da Lâmina de Ébano
step
    .goto IcecrownGlacier,44.7,20.4
	>>Fale com Lankral
    .turnin 13084 >>Entregue Jotunheim Destruída
step
    .goto IcecrownGlacier,42.9,24.9
    >>Entregue para o Barão Prateado
	.turnin 12995 >>Entregue Deixando Nossa Marca
	.isQuestComplete 12995
step
    .goto IcecrownGlacier,42.9,24.9
	>>Fale com Prateado
    .accept 12806 >>Aceite A Toda Velocidade, Rumo ao Beiral!
step
    .goto IcecrownGlacier,43.5,25.0
	>>Fale com O Saltador, ele caminha ao redor da tenda
    .daily 13069 >>Aceite Derrube-os!
step
    .goto IcecrownGlacier,27.9,33.2
	>>Entre em um dos Arpões de Tiro Rápido de Jotunheim localizados centralmente.
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
    .goto IcecrownGlacier,19.5,48.1
	>>Desmonte o dragão e então vá para a Elevação da Morte. É uma pequena plataforma localizada a meio caminho entre o nível do mar e o topo da montanha. Fale com Arete.
    .turnin 12806 >>Entregue A Toda Velocidade, Rumo ao Beiral!
    .accept 12807 >>Aceite Inteirando-se da História...
step
    .goto IcecrownGlacier,19.5,48.1
	>>Fale com o Lorde-comandante Arlote novamente.
    .complete 12807,1 --Lord-Commander Arete's tale listened to. (1)
    .turnin 12807 >>Entregue Inteirando-se da História...
    .accept 12810 >>Aceite Água Suja de Sangue
	.skipgossip
step
	#sticky
	#label DeathRise
    .goto IcecrownGlacier,19.3,47.8
    .fp Death's Rise >>Aprenda a rota de voo para a Elevação da Morte.
step
	>>Fale com Setaal
    .daily 12813 >>Aceite Ergam-se dos Cadáveres!
    .goto Icecrown,19.67,48.39
	>>Fale com Aurochs. Ele patrulha ao redor do fogo do meio
    .daily 12838 >>Aceite Trabalho da Inteligência
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Opcional. Você pode pular ou completar estas 2 Missões Diárias.
step
	#requires DeathRise
    #sticky
	#label transformedcorpse
    .goto IcecrownGlacier,9.5,44.8,50,0
    .goto IcecrownGlacier,9.5,44.8,0,0
	.use 40587 >>Abate os inimigos do Acossamento na área. Usar a Tintura da Curalâmina Sombria na mochila nos cadáveres
    .complete 12813,1 --Scarlet Onslaught corpse transformed (10)
	.isOnQuest 12813
step
	#requires DeathRise
	>>Abata inimigos do Acossamento, então saqueie-os pelas chaves. Usar-as para abrir baús ao redor do Porto do Acossamento para obter os Documentos
	>>Os baús não têm uma taxa de queda de 100% para os Documentos.
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
	#requires transformedcorpse
	.use 40551 >>Vá para o mar a cerca de 30-90 jardas da costa e mate Tubaroz. Usar a Bexiga de Sangue na mochila nos cadáveres deles.
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5,90,0
    .goto IcecrownGlacier,4.8,41.5,90,0
    .goto IcecrownGlacier,4.3,35.9,90,0
    .goto IcecrownGlacier,11.7,35.6,90,0
    .goto IcecrownGlacier,13.7,42.0,90,0
    .goto IcecrownGlacier,10.3,41.5
    .complete 12810,1 --Blood collected from Ravenous Jaws (10)
step
	>>Volte para a Elevação da Morte. Fale com Arete.
    .turnin 12810 >>Entregue Água Suja de Sangue
    .accept 12814 >>Aceite Você Vai Precisar de um Grifo
    .goto IcecrownGlacier,19.6,48.1
step
	>>Fale com Aurochs. Ele patrulha ao redor do fogo do meio
    .turnin -12838 >>Entregue Trabalho da Inteligência
    .goto IcecrownGlacier,20.1,47.5,20,0
    .goto IcecrownGlacier,20.4,47.9,20,0
    .goto IcecrownGlacier,20.1,48.4,20,0
    .goto IcecrownGlacier,19.7,47.9
	>>Fale com Setaal
    .turnin -12813 >>Entregue Ergam-se dos Cadáveres!
    .goto IcecrownGlacier,19.7,48.4
step
    .goto IcecrownGlacier,10.4,44.1
	>>Abata os Cavaleiros do Grifo da Ofensiva na área. Saqueie-os pelas Rédeas de Grifo da Ofensiva.
	.collect 40970,1,12814,1 --Onslaught Grpyhon Reins (1)
step
    .goto IcecrownGlacier,19.6,47.8
	>>Volte para a Elevação da Morte em sua montaria comum. Quando chegar ao doador de missão, use as Rédeas de Grifo e use "Levar Grifo" (1) para entregar.
    .complete 12814,1 --Onslaught Gryphon delivered to Uzo Deathcaller (1)
	.use 40970
step
    .goto Icecrown,19.64,47.80
	>>Fale com Uzo Bradamorte.
    .turnin 12814 >>Entregue Você Vai Precisar de um Grifo
    .daily 12815 >>Aceite Zona de Voo Restrito
step
    .goto IcecrownGlacier,10.5,44.1,70,0
    .goto IcecrownGlacier,5.0,43.4,70,0
    .goto IcecrownGlacier,10.5,39.0,70,0
    .goto IcecrownGlacier,12.7,41.2,70,0
    .goto IcecrownGlacier,10.5,44.1
	>>Abata os Cavaleiros do Grifo na área. Derrube-os com habilidades à distância ou agrupe vários deles no ar e depois voe para baixo e mate-os. Se agrupar muitos, não deixe que o ataquem por trás ou será desmontado.
    .complete 12815,1 --Onslaught Gryphon Rider (10)
step
	.goto Icecrown,19.64,47.80
	>>Volte para a Elevação da Morte. Fale com Uzo.
    .turnin 12815 >>Entregue Zona de Voo Restrito
step
    >>Retorne à Abóbada das Sombras. Fale com O Saltador e Torpe
    .turnin -13069 >>Entregue Derrube-os!
	.goto IcecrownGlacier,43.5,25.0
    .turnin -13071 >>Entregue Torpe Brincar com Fogo!
    .goto IcecrownGlacier,43.6,24.1,60,0
    .goto IcecrownGlacier,42.7,26.8
step
    +Você completou a cadeia de pré-missões Cavaleiros da Lâmina de Ébano. Use o guia de Rotas de Missões Diárias da Ebon Blade para completar as missões diárias. Observação: Algumas podem não estar disponíveis hoje devido a já terem sido completadas anteriormente.
	.isQuestTurnedIn 12814
]])
