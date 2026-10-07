if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#version 1
#group Missões Diárias de Northrend
#subgroup Missões Diárias de Facção
#wotlk
#cata
#name Desbloquear as Missões Diárias dos Filhos de Hodir

step
    +Você completou a cadeia de pré-missões dos Filhos de Hodir. Use o guia da Rota de Missões Diárias dos Filhos de Hodir para completar as missões diárias
	.isQuestTurnedIn 13047
step
	.goto TheStormPeaks,41.15,86.14
	>>Voe para K3
    >>Entre na Estalagem. Fale com Gretchen
    .accept 12843 >>Aceite Levaram Nossos Homens
step
    .goto TheStormPeaks,40.1,73.8,70,0
    .goto TheStormPeaks,40.3,69.8,70,0
    .goto TheStormPeaks,42.2,71.0,70,0
    .goto TheStormPeaks,41.6,73.7,60,0
    .goto TheStormPeaks,40.7,72.7
	>>Voe para Vila Sifreldar
	>>Mate o Sifreldar para obter as Chaves de Frio Ferro. Usar as chaves nas gaiolas de Prisioneiros Goblin na área
    .collect 40641,5,12843,1,-1
    .complete 12843,1 --Goblin Prisoner freed (5)
step
    .goto TheStormPeaks,41.15,86.14
	>>Volte para K3. Fale com Gretchen na Estalagem
    .turnin 12843 >>Entregue Levaram Nossos Homens
    .accept 12846 >>Aceite Que Nenhum Goblin Fique para Trás
step << !Human
	#completewith tribute
	>>Saqueie Relíquias de Ulduar derrubadas pelos inimigos em todos os Picos Tempestuosos. Alternativamente, você pode comprá-las na Casa de Leilões
    .collect 42780,10 --Relic of Ulduar (10)
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step
    .goto TheStormPeaks,42.1,69.5,60,0
    .goto TheStormPeaks,42.80,68.90
	>>Entre na Mina Forlon. Fale com Lok'lira
    .turnin 12846 >>Entregue Que Nenhum Goblin Fique para Trás
    .accept 12841 >>Aceite A Barganha da Bruxa Má
step
    .goto TheStormPeaks,44.3,67.1,30,0
    .goto TheStormPeaks,44.1,70.2,30,0
    .goto TheStormPeaks,45.1,71.0
	>>Mate a Feitora Syra dentro da Mina Forlon. Saqueie-a para obter as Runas de Yrkvinn
    .complete 12841,1 --Runes of the Yrkvinn (1)
	.unitscan Overseer Syra
step
    .goto TheStormPeaks,42.80,68.90
	>>Vá para Lok'lira
    .turnin 12841 >>Entregue A Barganha da Bruxa Má
    .accept 12905 >>Aceite Mildred, a Cruel
step
    .goto TheStormPeaks,44.39,68.93
	>>Suba as escadas. Fale com Mildred
    .turnin 12905 >>Entregue Mildred, a Cruel
    .accept 12906 >>Aceite Disciplina
step
    .goto TheStormPeaks,44.8,67.2,40,0
    .goto TheStormPeaks,44.6,70.6,40,0
    .goto TheStormPeaks,44.1,69.9,40,0
    .goto TheStormPeaks,44.8,71.3,40,0
    .goto TheStormPeaks,44.3,66.8,40,0
    .goto TheStormPeaks,43.0,68.0,40,0
    .goto TheStormPeaks,43.4,70.5
	.use 42837 >>Usar o Bastão de Disciplina na mochila em Vraikal Exausto nos poços da mina
    .complete 12906,1 --Exhausted Vrykul Disciplined (6)
step
    .goto TheStormPeaks,44.39,68.93
	>>Fale com Mildred
    .turnin 12906 >>Entregue Disciplina
    .accept 12907 >>Aceite Um Exemplo a Ser Dado
step
    .goto TheStormPeaks,45.40,69.10
	>>Mate Garhal logo a leste de Mildred na caverna
    .complete 12907,1 --Garhal (1)
step
    .goto TheStormPeaks,44.39,68.93
	>>Fale com Mildred
    .turnin 12907 >>Entregue Um Exemplo a Ser Dado
    .accept 12908 >>Aceite Uma Certa Prisioneira
step
    .goto TheStormPeaks,42.80,68.90
	>>Fale com Lok'lira
    .turnin 12908 >>Entregue Uma Certa Prisioneira
    .accept 12921 >>Aceite Mudança de Cenário
step
    .goto TheStormPeaks,41.8,69.6,30,0
    .goto TheStormPeaks,47.47,69.09
	>>Saia da Mina Forlon. Voe para Vila Brunnhildar
    .turnin 12921 >>Entregue Mudança de Cenário
    .accept 12969 >>Aceite É Aquele Goblin Ali?
step
    .goto TheStormPeaks,48.25,69.77
	>>Fale com Agnetta. Mate-a para libertar Zeev
    .complete 12969,1 --Agnetta Tyrsdottar (1)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Fale com Lok'lira
    .turnin 12969 >>Entregue É Aquele Goblin Ali?
    .accept 12970 >>Aceite O Tornehylde
	>>Fale com Lok'lira, a Velha sobre sua proposta
    .complete 12970,1 --Listen to Lok'lira's proposal (1)
	.skipgossip 29975,1
    .turnin 12970 >>Entregue O Tornehylde
    .accept 12971 >>Aceite Encarando Todas as Desafiantes
step
    .goto TheStormPeaks,50.5,68.1,30,0
    .goto TheStormPeaks,51.5,66.2
	>>Fale com os Desafiantes Vitoriosos na área para atacá-los. Mate-os
    .complete 12971,1 --Victorious Challenger (6)
	.skipgossip
step
    .goto TheStormPeaks,47.47,69.09
	>>Fale com Lok'lira
    .turnin 12971 >>Entregue Encarando Todas as Desafiantes
    .accept 12972 >>Aceite Você Vai Precisar de Um Urso
step
    .goto TheStormPeaks,53.14,65.72
	>>Fale com Brijana
    .turnin 12972 >>Entregue Você Vai Precisar de Um Urso
    .accept 12851 >>Aceite Não Solta o Urso
step
   	#completewith next
    .goto The Storm Peaks,53.12,65.61
	.vehicle >>Monte Presagelo logo ao lado de Brijana
step
    .goto TheStormPeaks,53.1,65.6,0
    .goto TheStormPeaks,57.4,63.0
	>>Usar Flecha Flamejante (1) para queimar Frostworgs e Gigantes Gélidos. NÃO use Estouro de Velocidade (2), apenas foque em acertar todos os alvos
    .complete 12851,1 --Frostworgs Burned (7)
    .complete 12851,2 --Frost Giants Burned (15)
step
    .goto TheStormPeaks,53.14,65.72
	>>Usar Estouro de Velocidade (2) para voltar a Brijana mais rápido. Converse com ela
    .turnin 12851 >>Entregue Não Solta o Urso
    .accept 12856 >>Aceite Frieza
step
    #completewith next
    .goto TheStormPeaks,63.20,62.88
	.vehicle >>Voe para Dun Niffelem. Monte o Protodraco Cativo, que está acorrentado aos espigões de gelo ao redor das muralhas externas de Dun Niffelem
step
    .waypoint TheStormPeaks,53.1,65.7,0,niffelen,VEHICLE_PASSENGERS_CHANGED,VEHICLE_UPDATE
    .goto The Storm Peaks,66.75,60.63
	>>Usar a primeira habilidade do seu Protodraco em um dos Brunnhildar Aprisionados congelados no Bloco de Gelo quando estiver perto deles
    >>Devolva 3 prisioneiros a Brunnhildar quando você tiver 3 no seu Protodraco. Faça isto 3 vezes
    .complete 12856,1 --Rescued Brunnhildar Prisoners (9)
    .complete 12856,2 --Freed Proto-Drakes (3)
step
    .goto TheStormPeaks,53.14,65.72
	>>Fale com Brijana
    .turnin 12856 >>Entregue Frieza
    .accept 13063 >>Aceite Considerada Digna
step
    .goto TheStormPeaks,49.75,71.81
	>>Retorne a Brunnhildar. Converse com Astrid
    .turnin 13063 >>Entregue Considerada Digna
    .accept 12900 >>Aceite Confeccionando um Arnês
step
    .goto TheStormPeaks,48.3,74.7,70,0
    .goto TheStormPeaks,48.3,77.1,70,0
    .goto TheStormPeaks,44.8,74.1
	>>Mate os Yetis de Juba de Gelo. Saque-os por suas Peles
    .complete 12900,1 --Icemane Yeti Hide (3)
step
    .goto TheStormPeaks,49.75,71.81
	>>Converse com Astrid
    .turnin 12900 >>Entregue Confeccionando um Arnês
    .accept 12983 >>Aceite A Última da Espécie
    .accept 12989 >>Aceite A Escuridão Serpenteante
step
    #completewith next
    .goto TheStormPeaks,55.8,63.9,30 >>Entre na Caverna Hibernal
step
    .goto TheStormPeaks,54.8,60.4
	>>Mate o Jormungar na caverna
 	>>NÃO monte o urso ferido no meio da caverna ainda
    .complete 12989,1 --Ravenous Jormungar (8)
step
	#completewith next
    .goto TheStormPeaks,54.79,60.37
	.vehicle >>Clique direito em Matriarca Garra de Gelo para montá-la e sair da Caverna Hibernal
step
    .goto TheStormPeaks,49.82,71.12
	>>Monte o Urso de volta a Brunnhildar. Isto demora 1m 8s, então você pode descansar durante este tempo
    .complete 12983,1 --Icemaw Matriarch Rescued (1)
step
    .goto TheStormPeaks,49.75,71.81
	>>Converse com Astrid
    .turnin 12983 >>Entregue A Última da Espécie
    .accept 12996 >>Aceite O Aquecimento
    .turnin 12989 >>Entregue A Escuridão Serpenteante
step
	#completewith next
    .goto TheStormPeaks,50.79,67.68
	.vehicle >>Voe para Kirgaraak. Usar as Rédeas da Matriarca Ursa de Guerra em sua mochila para montá-la
	.use 42481
step
    .goto TheStormPeaks,50.79,67.68
	.use 42481 >>Mate Kirgaraak. Usar Malho (1) para causar dano. Usar Arrebentar (2) seguido de Investida (3) para causar dano adicional
    .complete 12996,1 --Kirgaraak Defeated (1)
step
	.goto TheStormPeaks,49.75,71.81
	>>Desmonte o Urso. Converse com Astrid
    .turnin 12996 >>Entregue O Aquecimento
    .accept 12997 >>Aceite Para o Fosso
step
	#completewith next
    .goto TheStormPeaks,49.24,68.46
	.vehicle >>Voe para O Fosso da Dentada. Usar as Rédeas da Matriarca Ursa de Guerra em sua mochila para montá-la
	.use 42499
step
    .goto TheStormPeaks,49.24,68.46
	.use 42499 >>Mate os Ursos de Guerra no fosso. Usar Malho (1) para causar dano. Usar Arrebentar (2) seguido de Investida (3) para causar dano adicional
    .complete 12997,1 --Hyldsmeet Warbear (6)
step
    .goto TheStormPeaks,49.75,71.81
	>>Desmonte o Urso. Converse com Astrid
    .turnin 12997 >>Entregue Para o Fosso
    .accept 13061 >>Aceite Prepare-se para a Glória
step
    .goto TheStormPeaks,47.47,69.09
	>>Fale com Lok'lira
    .turnin 13061 >>Entregue Prepare-se para a Glória
    .accept 13062 >>Aceite O Presente de Despedida de Lok'lira
step
    .goto TheStormPeaks,50.88,65.58
	>>Converse com Gretta
    .turnin 13062 >>Entregue O Presente de Despedida de Lok'lira
    .accept 12886 >>Aceite O Drakkensryd
step
    .goto TheStormPeaks,35.4,57.8
	.use 41058 >>Voe no Dragão para o Templo das Tempestades (isto demora 1m 10s, então você pode descansar durante este tempo). Usar o Arpão das Hyldnir na mochila para pular em Dragões que têm Drakeriders. Mate-os
    .complete 12886,1 --Hyldsmeet Drakerider Defeated (10)
step
    .goto TheStormPeaks,33.42,57.95
	>>Usar o Arpão das Hyldnir em um Ornamento de Coluna (esferas menores) nas colunas do Templo das Tempestades para pular nele
	>>Converse com Thorim
    .turnin 12886 >>Entregue O Drakkensryd
    .accept 13064 >>Aceite Rivalidade Fraterna
	>>Converse com Thorim
    .complete 13064,1 --Thorim's History Heard (1)
	.skipgossip 29445,1
    .turnin 13064 >>Entregue Rivalidade Fraterna
    .accept 12915 >>Aceite Fazendo as Pazes
	.use 41058
step
	#completewith Giants
	#label Slag
    .goto TheStormPeaks,71.8,61.1,0
	>>Mate os Gigantes de Ferro Forjados pela Tempestade. Saqueie-os para obter o Metal Coberto de Escória. Comece a missão.
	.collect 41556,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Aceite O Fogo do Refinador
step
	#completewith next
	#requires Slag
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Mate todos os Revenantes Ferventes que você vir. Saqueie-os para obter suas Centelhas.
    .complete 12922,1 --Furious Spark (10)
step
	#label Giants
    .goto TheStormPeaks,75.0,63.6,70,0
    .goto TheStormPeaks,71.8,61.1
	>>Pegue os Pedregulhos de Granito encontrados no chão no Lago Campo Gélido e na Bigorna de Fjorn (você pode carregar apenas um por vez).
	.use 41505 >>Usar o Amuleto de Terra de Thorim na mochila quando você tiver um Pedregulho nos Gigantes de Ferro Forjados pela Tempestade para ajudar a matá-los.
	.collect 41506,1,12915,1,-1
    .complete 12915,2 --Stormforged Iron Giants (5)
step
    .goto TheStormPeaks,71.8,61.1
	>>Mate os Gigantes de Ferro Forjados pela Tempestade. Saqueie-os para obter o Metal Coberto de Escória. Comece a missão.
	.collect 41505,1,12922,1 --Slag Covered Metal (1)
    .accept 12922 >>Aceite O Fogo do Refinador
step
    .goto TheStormPeaks,70.7,56.7,70,0
    .goto TheStormPeaks,69.6,62.0,70,0
    .goto TheStormPeaks,76.8,62.9
	>>Mate os Revenantes Ferventes. Saqueie-os para obter suas Centelhas.
    .complete 12922,1 --Furious Spark (10)
step
	#completewith end
	#label FjornAnvil
    .goto TheStormPeaks,77.17,62.84
	>>Clique na Bigorna perto de Fjorn
    .turnin 12922 >>Entregue O Fogo do Refinador
    .accept 12956 >>Aceite Uma Centelha de Esperança
step
    .goto TheStormPeaks,77.34,62.87
	>>Pegue os Pedregulhos de Granito encontrados no chão no Lago Campo Gélido e na Bigorna de Fjorn (você pode carregar apenas um por vez).
	.use 41505 >>Usar o Amuleto de Terra de Thorim na mochila quando você tiver um Pedregulho em Fjorn para ajudar a matá-lo.
    .complete 12915,1 --Fjorn (1)
step
	#label Thorim1
    .goto TheStormPeaks,33.4,57.9
	>>Voe para Thorim
    .turnin 12915 >>Entregue Fazendo as Pazes
    .turnin 12956 >>Entregue Uma Centelha de Esperança
    .accept 12924 >>Aceite Forjando uma Aliança
step
	.goto TheStormPeaks,65.45,60.16
	>>Fale com o Rei Iokkum
    .accept 12966 >>Aceite Não Tem Como Errar
step
	.goto TheStormPeaks,75.37,63.57
	>>Fale com Njormeld
    .turnin 12966 >>Entregue Não Tem Como Errar
    .accept 12967 >>Aceite Enfrentando os Elementos
step
    #completewith next
    .goto TheStormPeaks,75.71,63.91
    .vehicle >>Clique com botão direito em Snorri para montá-lo :3
step
    .goto TheStormPeaks,77.2,62.7
	>>Usar "Coletar Neve" (1) para obter neve dos Bancos de Neve próximos. Usar "Arremessar Bola de Neve" (2) em Revenantes Ferventes para matá-los.
    .complete 12967,1 --Seething Revenants (10)
step
    .goto TheStormPeaks,75.37,63.57
	>>Fale com Njormeld
    .turnin 12967 >>Entregue Enfrentando os Elementos
    .complete 12924,1 --Fjorn's Anvil Brought to Dun Niffelem (1)
step << Human
	>>Vá de volta para Dun Niffelem. Fale com Njormeld e a Bigorna.
    .turnin 12924 >>Entregue Forjando uma Aliança
    .accept 13009 >>Aceite Um Novo Começo
    .accept 12985 >>Aceite Fazendo a Cabeça
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Aceite Quente e Frio
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Vá de volta para Dun Niffelem. Fale com Njormeld e a Bigorna.
    .turnin 12924 >>Entregue Forjando uma Aliança
    .accept 13009 >>Aceite Um Novo Começo
    .goto TheStormPeaks,63.20,63.27
	.daily 12981 >>Aceite Quente e Frio
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << Human
    .goto TheStormPeaks,65.45,60.16
	>>Fale com o Rei Iokkum
    .accept 13011 >>Aceite Abate do Yorcuttar
    .accept 12975 >>Aceite In memoriam
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Fale com o Rei Iokkum
    .accept 12975 >>Aceite In memoriam
step << Human
	#completewith HornF
	>>Procure pelos objetos Lasca de Gelo Eterno na área. Se você encontrar um, pegue-o e comece a missão.
	.accept 13420 >>Aceite Gelo Eterno
step << Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Mate os Espectros Quebradiços. Saqueie-os para Essência de Gelo
	.use 42424 >>Usar a Picareta com Ponta de Diamante nos Gigantes de Ferro Mortos. Inimigos podem aparecer; mate-os e saqueie-os para obter os Olhos Forjados pela Tempestade.
	.collect 42246,6 --Essence of Ice (6)
	.complete 12985,1 --Stormforged Eye (8)
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	>>Mate os Espectros Quebradiços. Saqueie-os para Essência de Gelo
	.collect 42246,6 --Essence of Ice (6)
	.isOnQuest 12981
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,73.5,62.9,70,0
    .goto TheStormPeaks,76.2,63.4
	.use 42246 >>Usar a Essência de Gelo ao lado dos Fragmentos Brilhantes ao redor da Bigorna de Fjorn. Saqueie a Sucata de Ferro Congelada
    .complete 12981,1 --Frozen Iron Scrap (6)
	.isQuestAvailable 13047
step
	#label HornF
    .goto TheStormPeaks,71.7,47.6
	>>Saque as pequenas pedras planas no chão na área.
    .complete 12975,1 --Horn Fragment (8)
step << Human
	>>Vá de volta para Dun Niffelem. Fale com Calder, o Rei Iokkum, depois Njormeld, a Bigorna de Fjorn, e o Chifre de Hodir.
	.turnin 13420 >>Entregue Gelo Eterno
    .goto TheStormPeaks,67.11,60.97
    .turnin 12975 >>Entregue In memoriam
    .accept 12976 >>Aceite Um Monumento aos que Tombaram
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Entregue Um Monumento aos que Tombaram
    .turnin 12985 >>Entregue Fazendo a Cabeça
    .accept 12987 >>Aceite No Devido Lugar
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .daily 12977 >>Aceite Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
	.isQuestAvailable 13047
step << Human
	>>Devolva para Dun Niffelem. Fale com o Rei Iokkum, Njormeld, e Fjorn's Bigorna
    .turnin 12975 >>Entregue In memoriam
    .accept 12976 >>Aceite Um Monumento aos que Tombaram
    .goto TheStormPeaks,65.45,60.16
    .turnin 12976 >>Entregue Um Monumento aos que Tombaram
    .turnin 12985 >>Entregue Fazendo a Cabeça
    .accept 12987 >>Aceite No Devido Lugar
    .goto TheStormPeaks,63.20,63.27
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
	.isQuestAvailable 13047
step << !Human
	>>Devolva para Dun Niffelem. Fale com o Rei Iokkum, Fjorn's Bigorna, e Njormeld
    .turnin 12975 >>Entregue In memoriam
    .accept 12976 >>Aceite Um Monumento aos que Tombaram
    .goto TheStormPeaks,65.45,60.16
    .turnin 12981 >>Entregue Quente e Frio
    .goto TheStormPeaks,63.13,62.94
    .turnin 12976 >>Entregue Um Monumento aos que Tombaram
    .goto TheStormPeaks,63.20,63.27
 step << !Human
	#label tribute
	.goto TheStormPeaks,66.16,61.44
    >>Você pode precisar fazer uma única entrega de Relíquias de Ulduar para ficar Amistoso com Os Filhos de Hodir. Pule isto se você já é Amistoso
    >>Relíquias de Ulduar podem ser encontradas matando todos os inimigos ao redor de Picos Tempestuosos ou podem ser compradas na Casa de Leilões
	>>Fale com Lillehoff
    .collect 42780,10 --Relic of Ulduar (10)
	.turnin 13559 >>Entregue Tributo a Hodir
    .reputation 1119,friendly,>0,1 -- Step only shows if rep is below friendly
step << !Human
    >>Fale com Njormeld
    .accept 12985 >>Aceite Fazendo a Cabeça
    .goto TheStormPeaks,63.20,63.27
step << !Human
    .goto TheStormPeaks,69.6,58.8,70,0
    .goto TheStormPeaks,70.3,62.2
	.use 42424 >>Usar a Picareta com Ponta de Diamante nos Gigantes de Ferro Mortos. Inimigos podem aparecer; mate-os e saqueie-os para obter os Olhos Forjados pela Tempestade.
	.complete 12985,1 --Stormforged Eye (8)
step << !Human
	>>Devolva para Dun Niffelem. Fale com Njormeld e Hodir's Chifre
    .turnin 12985 >>Entregue Fazendo a Cabeça
    .accept 12987 >>Aceite No Devido Lugar
    .goto TheStormPeaks,63.20,63.27
    .daily 12977 >>Aceite Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,64.24,59.23
	.use 42442 >>Voe até o pico de gelo reluzente em Dun Niffelem. Usar as Tábuas de Proclamação na mochila quando estiver em sua montaria voadora
    .complete 12987,1 --Hodir's Helm Mounted (1)
step
    .goto TheStormPeaks,63.20,63.27
	>>Fale com Njormeld
    .turnin 12987 >>Entregue No Devido Lugar
step
    .goto TheStormPeaks,64.22,59.39
	>>Fale com o Helm que você acabou de colocar
    .daily 13006 >>Aceite Limpeza Viscosa
	.isQuestAvailable 13047
step << !Human
    .goto TheStormPeaks,65.45,60.16
	>>Fale com o Rei Iokkum
    .accept 13011 >>Aceite Abate do Yorcuttar
step
	#completewith Jorcuttar
    .goto TheStormPeaks,54.4,63.2,0
	>>Mate os Óleos Viscosos na Caverna Hibernada. Saqueie-os para obter Óleo
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,55.8,63.9,30,0
    .goto TheStormPeaks,54.7,60.6
	.use 42732 >>Entre na Caverna Hibernal e siga pelo lado direito dela. Usar a Navalha do Gelo Eterno nos Ursos Icemaw Mortos até obter um Flanco de Urso Icemaw
	.collect 42733,1 --Icemaw Bear Flank (1)
	.isQuestAvailable 13047
step
	#label Jorcuttar
    .goto TheStormPeaks,54.8,60.8
	.use 42733 >>Continue seguindo o lado direito da caverna até chegar à sala principal. Usar o Flanco de Urso Icemaw no meio do lago congelado e repleto de espinhos - Abata Yorcuttar
    .complete 13011,1 --Jorcuttar (1)
step
    .goto TheStormPeaks,54.4,63.2
	>>Mate os Óleos Viscosos na Caverna Hibernada. Saqueie-os para obter Óleo
    .complete 13006,1 --Viscous Oil (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Voe para Thorim no topo do Templo das Tempestades. Fale com ele
    .turnin 13009 >>Entregue Um Novo Começo
    .accept 13050 >>Aceite Veranes
step
    .goto TheStormPeaks,45.4,66.9,40,0
    .goto TheStormPeaks,43.7,67.5
	>>Saque os Ovos nos ninhos no topo da montanha
    .complete 13050,1 --Small Proto-Drake Egg (5)
step
    .goto TheStormPeaks,33.42,57.95
	>>Voe para Thorim no topo do Templo das Tempestades. Fale com ele
    .turnin 13050 >>Entregue Veranes
    .accept 13051 >>Aceite Invasão de Território
step
    .goto TheStormPeaks,38.73,65.54
	.cast 56788 >>Usar os Ovos de Protodrão Roubados na mochila no topo do ninho da Matriarca para atrair Veranes
	.timer 42,RP de Veranes (CONTINUE FAZENDO MISSÕES)
	.use 42797
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,33.42,57.95
	>>Voe para Thorim no topo do Templo das Tempestades. Fale com ele. Espere em Thorim para que a encenação da missão anterior termine. Leva cerca de 1 minuto
    .turnin 13051 >>Entregue Invasão de Território
    .accept 13010 >>Aceite Krolmir, o Martelo das Tempestades
step
	#completewith DunNif2
    .goto TheStormPeaks,29.5,74.3
	>>Voe para Dun Niffelem
	.isQuestAvailable 13047
step
	>>Fale com Hodir's Chifre
    .daily 12977 >>Aceite Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isQuestAvailable 13047
step
	#label DunNif2
	>>Fale com Hodir's Capacete e o Rei Iokkum em Dun Niffelem
    .turnin 13006 >>Entregue Limpeza Viscosa
    .goto TheStormPeaks,64.22,59.39
    .turnin 13011 >>Entregue Expurgo Yorcuttar
	.vehicle >>Fale com o Rei Iokkum. Suba nele para Thunderfall
	.timer 118,Krolmir, o Martelo das Tempestades RP
	.skipgossip
	.isQuestAvailable 13047
step
	#completewith TerraceM
	>>Procure pelos objetos Lasca de Gelo Eterno na área. Se você encontrar um, pegue-o e comece a missão.
	.accept 13420 >>Aceite Gelo Eterno
	.isQuestAvailable 13047
step
	#completewith ThorimRP
    .goto TheStormPeaks,70.7,47.3,0
    .goto TheStormPeaks,70.1,52.5,0
    .goto TheStormPeaks,72.7,52.1,0
    .goto TheStormPeaks,74.7,48.3,0
	.use 42164 >>Mate os Patriarcas de Niffelem e os Gelificados Inquietos na área. Usar Chifre de Hodir nos cadáveres deles para libertá-los
	>>Você pode fazer isto durante o evento RP
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,71.37,48.78
	>>Espere a encenação terminar
    .complete 13010,1 --Krolmir's Fate Discovered (1)
	.isQuestAvailable 13047
step
	#label ThorimRP
    .goto TheStormPeaks,71.37,48.78
	>>Converse com Thorim antes que ele desapareça
    .turnin 13010 >>Entregue a Krolmir, o Martelo das Tempestades
    .accept 13057 >>Aceite O Terraço dos Criadores
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,70.7,47.3,60,0
    .goto TheStormPeaks,70.1,52.5,60,0
    .goto TheStormPeaks,72.7,52.1,60,0
    .goto TheStormPeaks,74.7,48.3
	.use 42164 >>Mate os Patriarcas de Niffelem e os Gelificados Inquietos na área. Usar Chifre de Hodir nos cadáveres deles para libertá-los
    .complete 12977,1 --Niffelem Forefather freed (5)
    .complete 12977,2 --Restless Frostborn freed (5)
	.isQuestAvailable 13047
step
	#label TerraceM
    .goto TheStormPeaks,56.26,51.36
	>>Converse com Thorim no Terraço dos Criadores
    .turnin 13057 >>Entregue no Terraço dos Criadores
    .accept 13005 >>Aceite Juramento Terrano
    .accept 13035 >>Aceite Lacaios de Loken
	.isQuestAvailable 13047
step
	#completewith Duronn
    .goto TheStormPeaks,52.0,50.4,0
	.use 42840 >>Usar a Trompa dos Picos na mochila para ajudar a matar os Anões de Ferro e os Sentinelas de Ferro no caminho para os inimigos nomeados
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
	.isQuestAvailable 13047
step
    .goto TheStormPeaks,48.72,45.65
	.use 42840 >>Usar a Trompa dos Picos na mochila para convocar um pequeno exército. Usar-a para matar Halefnir
    .complete 13035,2 --Halefnir the Windborn (1)
step
	#label Duronn
    .goto TheStormPeaks,44.94,38.03
	.use 42840 >>Usar a Trompa dos Picos na mochila para convocar um pequeno exército. Usar-a para matar Duronn
    .complete 13035,3 --Duronn the Runewrought (1)
step
	#completewith next
    .goto TheStormPeaks,57.7,44.5,50,0
    .goto TheStormPeaks,57.7,44.5,0
	.use 42840 >>Usar a Trompa dos Picos para ajudar a matar os Sentinelas de Ferro fora da caverna de Eisenfaust
    .complete 13005,1 --Iron Sentinel (7)
step
    .goto TheStormPeaks,56.9,44.1,30,0
    .goto TheStormPeaks,55.30,43.32
	>>Entre no Salão do Cinzelador na base da montanha no lado leste
	.use 42840 >>Usar a Trompa dos Picos para convocar um pequeno exército. Usar-a para matar Eisenfaust
    .complete 13035,1 --Eisenfaust (1)
step
    .goto TheStormPeaks,58.48,45.21
	.use 42840 >>Usar a Trompa dos Picos na mochila para ajudar a matar os Anões de Ferro e os Sentinelas de Ferro na área
    .complete 13005,1 --Iron Sentinel (7)
    .complete 13005,2 --Iron Dwarf Assailant (20)
step
    .goto TheStormPeaks,56.26,51.36
	>>Converse com Thorim no Terraço dos Criadores
    .turnin 13005 >>Entregue Juramento Terrano
    .turnin 13035 >>Entregue Lacaios de Loken
    .accept 13047 >>Aceite O Juízo
step
    #completewith next
	.goto TheStormPeaks,44.49,28.19
	>>Voe para fora de Ulduar
    .fp Ulduar >>Aprenda a rota de voo para Ulduar
    .skill riding,<300,1
step
    .goto TheStormPeaks,35.93,31.52
	>>Voe para Thorim fora de Ulduar. Converse com ele e espere a encenação terminar
    .complete 13047,1 --Witness the Reckoning (1)
	.skipgossip
	.timer 91,O Juízo RP
step
	#completewith end
    .goto TheStormPeaks,44.49,28.19
	>>Voe para fora de Ulduar
    .fp Ulduar >>Aprenda a rota de voo para Ulduar
	.fly Dun Niffelem >>Voe para Dun Niffelem. Isso leva 1m 44s, então você pode fazer uma pausa durante esse tempo
    .skill riding,300,1
step
	#completewith next
    .goto TheStormPeaks,36.2,49.3,200 >>Voe para Dun Niffelem em sua montaria voadora
    .skill riding,<300,1
step
	>>Entregue em Dun Niffelem. Converse com Jokkum, Calder e Chifre de Hodir
    .turnin 13047 >>Entregue O Juízo
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
	.turnin 13420 >>Entregue Gelo Eterno
    .goto TheStormPeaks,67.11,60.97
    .turnin 12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
	.isOnQuest 13420
step
	#label end
	>>Entregue em Dun Niffelem. Converse com Jokkum e Chifre de Hodir
    .turnin 13047 >>Entregue O Juízo
--  .accept 13108 >>Accept Whatever it Takes!
    .goto TheStormPeaks,65.45,60.16
    .turnin 12977 >>Entregue Chamado de Hodir
    .goto TheStormPeaks,64.17,65.01
step -- checking that player has honored with hodir to get this quest. will only be humans and any other that turned in rep items
	>>Converse com o Erudito Randvir em Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.accept 13001 >>Aceite Forja da Lança de Hodir
	.reputation 1119,honored,<0,1
step
	>>Abata os Mamutes Estoicos. Saqueie-os pelas Peles
	.goto TheStormPeaks,58.68,60.94,60,0
	>>Saqueie Estilhaço de Gelo Eterno na Caverna Hibernal
	.complete 13001,2 --Stoic Mammoth Hide (3)
	.complete 13001,1 --Everfrost Shard (3)
	.goto TheStormPeaks,55.84,63.94,50,0
   	.goto TheStormPeaks,54.72,60.82
	.isOnQuest 13001
step
	>>Converse com o Erudito Randvir em Dun Niffelem
	.goto TheStormPeaks,64.84,59.05
	.turnin 13001 >>Entregue Forja da Lança de Hodir
	.isQuestComplete 13001
step
    +Você completou a cadeia de Pré-Missões dos Filhos de Hodir. Por favor, use o guia Rota das Missões Diárias dos Filhos de Hodir para completar as missões diárias. Nota que algumas podem não estar disponíveis hoje porque já foram completadas anteriormente
	.isQuestTurnedIn 13047
]])
