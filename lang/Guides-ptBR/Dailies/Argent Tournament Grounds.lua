if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name A_1_AT_Início
#displayname |cRXP_LOOT_1.0|r - Becoming a Campeão

step
	#completewith next
	.goto IcecrownGlacier,69.66,22.86,200 >>Viaje para os |T236690:0|tArgent Torneio Grounds em Coroa de Gelo
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Justicar Mariel Veras|r
	.goto IcecrownGlacier,69.66,22.86
	.accept 13667 >>Aceite O Torneio Argênteo << Alliance
	.accept 13668 >>Aceite O Torneio Argênteo << Horde
	.target Justicar Mariel Trueheart
step
	#completewith next
	.goto IcecrownGlacier,72.59,22.61
	.fp Argent Tournament Grounds >>Aprenda a rota de voo dos Argent Torneio Grounds
	.target Helidan Lightwing
step
	>>Entre no Pavilhão de Aliança Prateado Covenant << Alliance
	>>Entre no Pavilhão dos Fendessol << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magister Edien|r Sunhollow << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13667 >>Entregue O Torneio Argênteo << Alliance
	.turnin 13668 >>Entregue O Torneio Argênteo << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Ligérion|r e a |cRXP_FRIENDLY_Batedora Shalíndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r, |cRXP_FRIENDLY_Amariel Jurassolar|r e a |cRXP_FRIENDLY_Galátia Brilhalvo|r << Horde
	.accept 13828 >>Aceite Proficiência de Combate Corpo a Corpo << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.accept 13837 >>Aceite Maestria da Investida << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.accept 13835 >>Aceite A Maestria do Quebra-Escudo << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.accept 13829 >>Aceite Proficiência de Combate Corpo a Corpo << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.accept 13839 >>Aceite Maestria da Investida << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.accept 13838 >>Aceite A Maestria do Quebra-Escudo << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step
	#completewith next
	.goto IcecrownGlacier,75.93,20.37 << Alliance
	.goto IcecrownGlacier,75.63,23.66 << Horde
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois Monte o |cRXP_FRIENDLY_Corcel Quel'dorei Abrigado|r << Alliance
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois Monte o |cRXP_FRIENDLY_Falcostruz de Fendessol Abrigado|r << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Valis Buscavento|r
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,73.20,19.23
	.complete 13835,1 << Alliance -- Valis Windchaser's advice
	.complete 13838,1 << Horde -- Valis Windchaser's advice
	.skipgossip 33974,1,1
	.target Valis Windchaser
step
	.isOnQuest 13835 << Alliance
	.isOnQuest 13838 << Horde
	>>Usar |T132358:0|tQuebra-Escudo (2) nos |cRXP_ENEMY_Alvos à Distância|r e remova suas camadas de |T132360:0|tDefesa. Quando não restarem camadas de |T132360:0|tDefesa, continue usando |T132358:0|tQuebra-Escudo no |cRXP_ENEMY_Alvo à Distância|r vulnerável
	>>Você deve estar a pelo menos 5 jardas de distância do |cRXP_ENEMY_Alvo à Distância|r ao usar |T132358:0|tQuebra-Escudo
	.goto IcecrownGlacier,73.13,19.01
	.complete 13835,2 << Alliance -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.complete 13838,2 << Horde -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.mob Ranged Target
step
	.isOnQuest 13837 << Alliance
	.isOnQuest 13839 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rugan Açobucho|r
	.goto IcecrownGlacier,72.67,18.87
	.complete 13837,1 << Alliance -- Rugan Steelbelly's advice
	.complete 13839,1 << Horde -- Rugan Steelbelly's advice
	.skipgossip 33972,1,1
	.target Rugan Steelbelly
step
	.isOnQuest 13837 << Alliance
	.isOnQuest 13839 << Horde
	>>Usar |T132358:0|tQuebra-Escudo (2) nos |cRXP_ENEMY_Alvos de Investida|r para remover as camadas de |T132360:0|tDefesa. Usar |T132226:0|tInvestida (3) quando não restarem camadas de |T132360:0|tDefesa
	>>Tenha certeza de não estar muito perto ou muito longe do Alvo de Investida|cRXP_ENEMY_ ao usar |T132226:0|tInvestida|r
	.goto IcecrownGlacier,72.75,18.85
	.complete 13837,2 << Alliance -- Charge vulnerable Charge Target (2)
	.complete 13839,2 << Horde -- Charge vulnerable Charge Target (2)
	.mob Charge Target
step
	.isOnQuest 13828 << Alliance
	.isOnQuest 13829 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jeran Madeiro|r
	.goto IcecrownGlacier,72.46,19.30
	.complete 13828,1 << Alliance -- Jeran Lockwood's advice
	.complete 13829,1 << Horde -- Jeran Lockwood's advice
	.skipgossip 33973,1,1
	.target Jeran Lockwood
step
	.isOnQuest 13828 << Alliance
	.isOnQuest 13829 << Horde
	>>Usar |T132360:0|tDefesa (4) |c99ffff99SEMPRE|r antes de atacar com |T135375:0|tEstocada (1). |T132360:0|tDefesa pode se empilhar até 3 vezes. É ideal sempre ter 3 camadas de |T132360:0|tDefesa. Não ter pelo menos 1 camada de |T132360:0|tDefesa causará dano significativo ao usar |T135375:0|tEstocada, potencialmente levando a ser desmontado
	>>Usar |T135375:0|tEstocada (1) no |cRXP_ENEMY_Boneco-Alvo de Corpo a Corpo|r 5 vezes
	>>Você também pode usar |T134058:0|tRefrescar Montaria (5) para se curar quando não estiver em combate
	.goto IcecrownGlacier,72.28,19.24
	.complete 13828,2 << Alliance -- Use Thrust on Melee Target (5)
	.complete 13829,2 << Horde -- Use Thrust on Melee Target (5)
	.mob Melee Target
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Ligérion|r e a |cRXP_FRIENDLY_Batedora Shalíndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r, |cRXP_FRIENDLY_Amariel Jurassolar|r e a |cRXP_FRIENDLY_Galátia Brilhalvo|r << Horde
	.turnin 13828 >>Entregue Proficiência de Combate Corpo a Corpo << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13837 >>Entregue Maestria da Investida << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13835 >>Entregue A Maestria do Quebra-Escudo << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13829 >>Entregue Proficiência de Combate Corpo a Corpo << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13839 >>Entregue Maestria da Investida << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13838 >>Entregue A Maestria do Quebra-Escudo << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r << Horde
	.accept 13672 >>Aceite À Altura do Desafio << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.accept 13678 >>Aceite À Altura do Desafio << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r. Ele tem 1 de 3 missões diárias. Aceite qualquer uma que esteja disponível << Alliance
	.daily 13669,13670,13666 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r. Ele tem 1 de 3 missões diárias. Aceite qualquer uma que esteja disponível << Horde
	.daily 13674,13675,13673 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avareth Ligérion|r e |cRXP_FRIENDLY_Batedora Shalíndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Amariel Jurassolar|r e |cRXP_FRIENDLY_Galátia Brilhalvo|r << Horde
	.daily 13671 >>Aceite Treinamento de Campo << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.daily 13676 >>Aceite Treinamento de Campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.daily 13625 >>Aceite Dominando as Rédeas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.daily 13677 >>Aceite Dominando as Rédeas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestAvailable 13672 << Alliance
	.isQuestAvailable 13678 << Horde
step
	#completewith next
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	.goto IcecrownGlacier,75.93,20.37 << Alliance
	.goto IcecrownGlacier,75.63,23.66 << Horde
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois Monte o |cRXP_FRIENDLY_Corcel Quel'dorei Abrigado|r << Alliance
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois Monte o |cRXP_FRIENDLY_Falcostruz de Fendessol Abrigado|r << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Usar |T132358:0|tQuebra-escudo (2) nos |cRXP_ENEMY_Alvos à Distância|r e remova suas camadas de |T132360:0|tDefender. Quando |T132360:0|tDefender não tiver mais camadas, continue usando |T132358:0|tQuebra-escudo no Alvo à Distância vulnerável
	>>Você deve estar a pelo menos 5 jardas de distância do |cRXP_ENEMY_Alvo à Distância|r ao usar |T132358:0|tQuebra-Escudo
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,73.13,19.01
	.complete 13625,2 << Alliance -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.complete 13677,2 << Horde -- Use Shield-Breaker on vulnerable Ranged Target (2)
	.mob Ranged Target
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Usar |T132358:0|tQuebra-Escudo (2) nos |cRXP_ENEMY_Alvos de Investida|r para remover as camadas de |T132360:0|tDefesa. Usar |T132226:0|tInvestida (3) quando não restarem camadas de |T132360:0|tDefesa
	>>Tenha certeza de não estar muito perto ou muito longe do Alvo de Investida|cRXP_ENEMY_ ao usar |T132226:0|tInvestida|r
	.goto IcecrownGlacier,72.75,18.85
	.complete 13625,3 << Alliance -- Use Charge on vulnerable Charge Target (2)
	.complete 13677,3 << Horde -- Use Charge on vulnerable Charge Target (2)
	.mob Charge Target
step
	.isOnQuest 13625 << Alliance
	.isOnQuest 13677 << Horde
	>>Usar |T132360:0|tDefesa (4) |c99ffff99SEMPRE|r antes de atacar com |T135375:0|tEstocada (1). |T132360:0|tDefesa pode se empilhar até 3 vezes. É ideal sempre ter 3 camadas de |T132360:0|tDefesa. Não ter pelo menos 1 camada de |T132360:0|tDefesa causará dano significativo ao usar |T135375:0|tEstocada, potencialmente levando a ser desmontado
	>>Usar |T135375:0|tEstocada (1) no |cRXP_ENEMY_Boneco-Alvo de Corpo a Corpo|r 5 vezes
	>>Você também pode usar |T134058:0|tRefrescar Montaria (5) para se curar quando não estiver em combate
	.goto IcecrownGlacier,72.28,19.24
	.complete 13625,1 << Alliance -- Use Thrust on Melee Target (5)
	.complete 13677,1 << Horde -- Use Thrust on Melee Target (5)
	.mob Melee Target
step
	.isOnQuest 13671 << Alliance
	.isOnQuest 13676 << Horde
	>>Abate os |cRXP_ENEMY_Abominações Colossais|r, os |cRXP_ENEMY_Necromantes Maléficos|r e os |cRXP_ENEMY_Lacaios Imorredouros|r ou |cRXP_ENEMY_qualquer Flagelo|r em Coroa de Gelo
	>>|cRXP_WARN_Lembre de equipar a arma|r. Não destrua a |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	.goto IcecrownGlacier,70.79,62.08,40,0
	.goto IcecrownGlacier,69.99,65.26,40,0
	.goto IcecrownGlacier,67.91,69.43,40,0
	.goto IcecrownGlacier,71.42,68.86,40,0
	.goto IcecrownGlacier,70.79,62.08
	.complete 13671,1 << Alliance -- Icecrown Scourge slain (8)
	.complete 13676,1 << Horde -- Icecrown Scourge slain (8)
	.mob Hulking Abomination
	.mob Malefic Necromancer
	.mob Undying Minion
	.mob Risen Alliance Soldier
step
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
step
	#completewith next
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
step
	.isOnQuest 13669 << Alliance
	.isOnQuest 13674 << Horde
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13669,1 << Alliance -- Blade of Drak'Mar (1)
	.complete 13674,1 << Horde -- Blade of Drak'Mar (1)
step
	#completewith next
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
step
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto CrystalsongForest,55.05,75.04
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
step
	#completewith next
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
step
	.isOnQuest 13670 << Alliance
	.isOnQuest 13675 << Horde
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13670,1 << Alliance -- Winter's Edge (1)
	.complete 13675,1 << Horde -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
step
	#completewith next
	.isOnQuest 13666 << Alliance
	.isOnQuest 13673 << Horde
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
step
	.isOnQuest 13666 << Alliance
	.isOnQuest 13673 << Horde
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13666,1 << Alliance -- Ashwood Brand (1)
	.complete 13673,1 << Horde -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
step
	.goto IcecrownGlacier,76.46,19.41,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Horde
	.isOnQuest 13666,13673,13675,13670,13674,13669
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Ligérion|r e a |cRXP_FRIENDLY_Batedora Shalíndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r, |cRXP_FRIENDLY_Amariel Jurassolar|r e a |cRXP_FRIENDLY_Galátia Brilhalvo|r << Horde
	.turnin 13669 >>Entregue Uma Arma de Valor << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13674 >>Entregue Uma Arma de Valor << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >>Entregue Treinamento de Campo << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >>Entregue Treinamento de Campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >>Entregue Dominando as Rédeas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >>Entregue Dominando as Rédeas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13669 << Alliance -- A Worthy Weapon
	.isQuestComplete 13674 << Horde -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Ligérion|r e a |cRXP_FRIENDLY_Batedora Shalíndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r, |cRXP_FRIENDLY_Amariel Jurassolar|r e a |cRXP_FRIENDLY_Galátia Brilhalvo|r << Horde
	.turnin 13670 >>Entregue Limiar do Inverno << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13675 >>Entregue Limiar do Inverno << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >>Entregue Treinamento de Campo << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >>Entregue Treinamento de Campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >>Entregue Dominando as Rédeas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >>Entregue Dominando as Rédeas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13670 << Alliance -- The Edge Of Winter
	.isQuestComplete 13675 << Horde -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r, |cRXP_FRIENDLY_Avareth Ligérion|r e a |cRXP_FRIENDLY_Batedora Shalíndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r, |cRXP_FRIENDLY_Amariel Jurassolar|r e a |cRXP_FRIENDLY_Galátia Brilhalvo|r << Horde
	.turnin 13666 >>Entregue Uma Espada Digna de um Campeão << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13673 >>Entregue Uma Espada Digna de um Campeão << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13671 >>Entregue Treinamento de Campo << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin 13676 >>Entregue Treinamento de Campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin 13625 >>Entregue Dominando as Rédeas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin 13677 >>Entregue Dominando as Rédeas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Arcanist Taelis << Alliance
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Magister Edien Sunhollow << Horde
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
	.isQuestComplete 13666 << Alliance -- A Blade Fit For A Champion
	.isQuestComplete 13673 << Horde -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avareth Ligérion|r e a |cRXP_FRIENDLY_Batedora Shalíndria|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Amariel Jurassolar|r e |cRXP_FRIENDLY_Galátia Brilhalvo|r << Horde
	.turnin -13671 >>Entregue Treinamento de Campo << Alliance
	.goto IcecrownGlacier,76.44,19.35 << Alliance
	.turnin -13676 >>Entregue Treinamento de Campo << Horde
	.goto IcecrownGlacier,76.31,24.38 << Horde
	.turnin -13625 >>Entregue Dominando as Rédeas << Alliance
	.goto IcecrownGlacier,76.47,19.46 << Alliance
	.turnin -13677 >>Entregue Dominando as Rédeas << Horde
	.goto IcecrownGlacier,76.24,24.44 << Horde
	.target Avareth Swiftstrike << Alliance
	.target Scout Shalyndria << Alliance
	.target Amariel Sunsworn << Horde
	.target Galathia Brightdawn << Horde
step -- Checking if they have 15 Aspirant's Seals after a set of turn ins.
	>>Para completar a missão À Altura do Desafio|cFFffff00 e progredir no |T236690:0|tArgent Torneio Grounds|r, você deve completar missões diárias e adquirir |T133443:0|t|c99CCFFFFAspirant's Seals|r
	>>Você precisa de |T133443:0|t|c99CCFFFF15 Aspirant's Seals|r. Você ganhará 5 por dia se completar as 3 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r << Horde
	.complete 13672,1 << Alliance -- Aspirant's Seal (15)
	.complete 13678,1 << Horde -- Aspirant's Seal (15)
	.turnin 13672 >>Entregue À Altura do Desafio << Alliance
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.turnin 13678 >>Entregue À Altura do Desafio << Horde
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r << Horde
	.accept 13679 >>Aceite O Desafio do Aspirante << Alliance
	.accept 13680 >>Aceite O Desafio do Aspirante << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
	.isQuestTurnedIn 13672 << Alliance
	.isQuestTurnedIn 13678 << Horde
step
	#completewith next
	>>Voe para o Anel dos Aspirantes no lado norte
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o |cRXP_FRIENDLY_Corcel Quel'dorei Abrigado|r << Alliance
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o |cRXP_FRIENDLY_Falcostruz de Fendessol Abrigado|r << Horde
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion << Alliance
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion << Horde
	.goto IcecrownGlacier,71.84,19.87 << Alliance
	.goto IcecrownGlacier,71.84,19.98 << Horde
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Quel'dorei Steed << Alliance
	.target Stabled Sunreaver Hawkstrider << Horde
	.isOnQuest 13679 << Alliance
	.isOnQuest 13680 << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Squire David|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e manter as pilhas durante o duelo
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Espere o |cRXP_ENEMY_Valente Argênteo|r chegar, depois derrote-o
	.goto IcecrownGlacier,76.66,21.13,20,0 << Horde
	.goto IcecrownGlacier,71.43,19.57
	.complete 13679,1 << Alliance -- Argent Valiant defeated (1)
	.complete 13680,1 << Horde -- Argent Valiant defeated (1)
	.skipgossip 2
	.timer 13,Chegada do Valente Argênteo
	.mob Argent Valiant
	.isOnQuest 13679 << Alliance
	.isOnQuest 13680 << Horde
step
	>>Pule do |cRXP_FRIENDLY_Corcel Quel'dorei|r << Alliance
	>>Pule do |cRXP_FRIENDLY_Falcostruz de Fendessol Abrigado|r << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Taelis|r << Alliance
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magíster Edien Solinane|r << Horde
	.goto IcecrownGlacier,76.46,19.41 << Alliance
	.goto IcecrownGlacier,76.27,24.38 << Horde
	.turnin 13679 >>Entregue O Desafio do Aspirante << Alliance
	.turnin 13680 >>Entregue O Desafio do Aspirante << Horde
	.accept 13690 >>Aceite Um Valente da Exodar << Draenei
	.accept 13685 >>Aceite Um Valente de Altaforja << Dwarf
	.accept 13688 >>Aceite Um Valente de Gnomeregan << Gnome
	.accept 13684 >>Aceite Um Valente de Ventobravo	<< Human
	.accept 13689 >>Aceite Um Valente de Darnassus << NightElf
	.accept 13695 >>Aceite Um Valente da Cidade Baixa << Scourge
	.accept 13691 >>Aceite Um Valente de Orgrimmar << Orc
	.accept 13694 >>Aceite Um Valente do Penhasco do Trovão << Tauren
	.accept 13693 >>Aceite Um Valente de Sen'Jin << Troll
	.accept 13696 >>Aceite Um Valente de Luaprata << BloodElf
	.target Arcanist Taelis << Alliance
	.target Magister Edien Sunhollow << Horde
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.turnin 13690 >>Entregue Um Valente da Exodar << Draenei
	.turnin 13685 >>Entregue Um Valente de Altaforja << Dwarf
	.turnin 13688 >>Entregue Um Valente de Gnomeregan << Gnome
	.turnin 13684 >>Entregue Um Valente de Ventobravo	<< Human
	.turnin 13689 >>Entregue Um Valente de Darnassus << NightElf
	.turnin 13695 >>Entregue Um Valente da Cidade Baixa << Scourge
	.turnin 13691 >>Entregue Um Valente de Orgrimmar << Orc
	.turnin 13694 >>Entregue Um Valente do Penhasco do Trovão << Tauren
	.turnin 13693 >>Entregue Um Valente de Sen'Jin << Troll
	.turnin 13696 >>Entregue Um Valente de Luaprata << BloodElf
	.accept 13716 >>Aceite A Investida do Valente << Draenei
	.accept	13714 >>Aceite A Investida do Valente << Dwarf
	.accept 13715 >>Aceite A Investida do Valente << Gnome
	.accept	13718 >>Aceite A Investida do Valente << Human
	.accept 13717 >>Aceite A Investida do Valente << NightElf
	.accept	13721 >>Aceite A Investida do Valente << Scourge
	.accept 13697 >>Aceite A Investida do Valente << Orc
	.accept 13720 >>Aceite A Investida do Valente << Tauren
	.accept 13719 >>Aceite A Investida do Valente << Troll
	.accept 13722 >>Aceite A Investida do Valente << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf

step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r. Ele tem 1 de 3 missões diárias. Aceite qualquer uma que estiver disponível
	.daily 13603,13616,13600 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.60,19.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.daily 13592 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.daily 13665 >>Aceite A Grande Escaramuça
	.daily 13847 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestAvailable 13718

step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r. Ele tem 1 de 3 missões diárias. Aceite qualquer uma que estiver disponível
	.daily 13752,13754,13753 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.10,19.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.daily 13755 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.daily 13756 >>Aceite A Grande Escaramuça
	.daily 13854 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestAvailable 13716

step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r. Ela tem 1 de 3 missões diárias. Aceite o que estiver disponível.
	.daily 13757,13759,13758 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.34,19.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.daily 13760 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.daily 13761 >>Aceite A Grande Escaramuça
	.daily 13855 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestAvailable 13717

step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r. Ela tem 1 de 3 missões diárias. Aceite a que estiver disponível.
	.daily 13741,13743,13742 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.64,19.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rolo Tirocerto|r e |cRXP_FRIENDLY_Clara Rolacerva|r
	.daily 13744 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.daily 13745 >>Aceite A Grande Escaramuça
	.daily 13851 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestAvailable 13714

step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r. Ele tem 1 de 3 missões diárias. Aceite a que estiver disponível
	.daily 13746,13748,13747 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.55,19.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.daily 13749 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.daily 13750 >>Aceite A Grande Escaramuça
	.daily 13852 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestAvailable 13715

step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r. Ela tem 1 de 3 missões diárias. Aceite qualquer uma que estiver disponível
	.daily 13783,13785,13784 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.45,23.85
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.daily 13786 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.daily 13787 >>Aceite A Grande Escaramuça
	.daily 13859 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestAvailable 13722

step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sicário Viscerae|r. Ele tem 1 de 3 missões diárias. Aceite a que estiver disponível
	.daily 13778,13780,13779 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.53,24.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarah Chalke|r e o |cRXP_FRIENDLY_Tratador Dretch|r
	.daily 13781 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.daily 13782 >>Aceite A Grande Escaramuça
	.daily 13860 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestAvailable 13721

step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r. Ele tem 1 de 3 missões diárias. Aceite aquela que estiver disponível
	.daily 13762,13764,13763 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.46,24.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.daily 13765 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.daily 13767 >>Aceite A Grande Escaramuça
	.daily 13856 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestAvailable 13697

step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r. Ele tem 1 de 3 missões diárias. Aceite qualquer uma que estiver disponível.
	.daily 13773,13775,13774 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.20,24.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.daily 13776 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.daily 13777 >>Aceite A Grande Escaramuça
	.daily 13858 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestAvailable 13720

step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r. Ele tem 1 de 3 missões diárias. Aceite qual estiver disponível
	.daily 13768,13770,13769 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,75.95,24.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.daily 13771 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.daily 13772 >>Aceite A Grande Escaramuça
	.daily 13857 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestAvailable 13719

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Elekk da Exodar Abrigado << Draenei
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Carneiro de Altaforja Abrigado << Dwarf
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Mecanostruz de Gnomeregan Abrigado << Gnome
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Corcel de Ventobravo Abrigado << Human
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Sabre-da-noite Darnassiano Abrigado << NightElf
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Cavalo de Guerra dos Renegados Abrigado << Scourge
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Lobo de Orgrimmar Abrigado << Orc
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Kodo do Penhasco do Trovão Abrigado << Tauren
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Raptor Lançanegra Abrigado << Troll
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Falcostruz de Luaprata Abrigado << BloodElf
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion << Alliance
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion << Horde
	.goto IcecrownGlacier,76.36,20.51 << Draenei
	.goto IcecrownGlacier,76.25,20.51 << Dwarf
	.goto IcecrownGlacier,76.17,20.49 << Gnome
	.goto IcecrownGlacier,76.08,20.48 << Human
	.goto IcecrownGlacier,76.00,20.42 << NightElf
	.goto IcecrownGlacier,75.56,23.86 << Scourge
	.goto IcecrownGlacier,75.55,24.00 << Orc
	.goto IcecrownGlacier,75.53,24.26 << Tauren
	.goto IcecrownGlacier,75.58,23.76 << Troll
	.goto IcecrownGlacier,75.54,24.14 << BloodElf
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13665,13745,13750,13756,13761,13767,13772,13777,13782,13787
step -- THE GRAND MELEE
	>>Vá para o Anel dos Valiantes da Aliança << Alliance
	>>Vá para o Anel dos Valiantes da Horda << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.31,19.05,10,0 << Alliance
	.goto IcecrownGlacier,75.66,18.72,10,0 << Alliance
	.goto IcecrownGlacier,75.73,18.12,10,0 << Alliance
	.goto IcecrownGlacier,75.08,17.70,10,0 << Alliance
	.goto IcecrownGlacier,74.82,18.39,10,0 << Alliance
	.goto IcecrownGlacier,75.31,19.05,10,0 << Alliance
	.goto IcecrownGlacier,75.66,18.72,10,0 << Alliance
	.goto IcecrownGlacier,75.73,18.12,10,0 << Alliance
	.goto IcecrownGlacier,75.08,17.70,10,0 << Alliance
	.goto IcecrownGlacier,74.82,18.39,10,0 << Alliance
	.goto IcecrownGlacier,75.31,19.05 << Alliance
	.goto IcecrownGlacier,75.48,25.39,10,0 << Horde
	.goto IcecrownGlacier,75.78,26.03,10,0 << Horde
	.goto IcecrownGlacier,75.53,26.69,10,0 << Horde
	.goto IcecrownGlacier,74.99,26.43,10,0 << Horde
	.goto IcecrownGlacier,75.00,25.65,10,0 << Horde
	.goto IcecrownGlacier,75.48,25.39,10,0 << Horde
	.goto IcecrownGlacier,75.78,26.03,10,0 << Horde
	.goto IcecrownGlacier,75.53,26.69,10,0 << Horde
	.goto IcecrownGlacier,74.99,26.43,10,0 << Horde
	.goto IcecrownGlacier,75.00,25.65,10,0 << Horde
	.goto IcecrownGlacier,75.48,25.39 << Horde
	.complete 13665,1 << Human -- Mark of the Valiant (3)
	.complete 13745,1 << Dwarf -- Mark of the Valiant (3)
	.complete 13750,1 << Gnome -- Mark of the Valiant (3)
	.complete 13756,1 << Draenei -- Mark of the Valiant (3)
	.complete 13761,1 << NightElf -- Mark of the Valiant (3)
	.complete 13767,1 << Orc -- Mark of the Valiant (3)
	.complete 13772,1 << Troll -- Mark of the Valiant (3)
	.complete 13777,1 << Tauren -- Mark of the Valiant (3)
	.complete 13782,1 << Scourge -- Mark of the Valiant (3)
	.complete 13787,1 << BloodElf -- Mark of the Valiant (3)
	.isOnQuest 13665,13745,13750,13756,13761,13767,13772,13777,13782,13787
	.skipgossip
	.mob Stormwind Valiant << Alliance
	.mob Ironforge Valiant << Alliance
	.mob Gnomeregan Valiant << Alliance
	.mob Darnassus Valiant << Alliance
	.mob Exodar Valiant << Alliance
	.mob Thunder Bluff Valiant << Horde
	.mob Silvermoon Valiant << Horde
	.mob Sen'jin Valiant << Horde
	.mob Orgrimmar Valiant << Horde
	.mob Undercity Valiant << Horde
step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13592,1 << Human -- Converted Hero slain (10)
	.complete 13744,1 << Dwarf -- Converted Hero slain (10)
	.complete 13749,1 << Gnome -- Converted Hero slain (10)
	.complete 13755,1 << Draenei -- Converted Hero slain (10)
	.complete 13760,1 << NightElf -- Converted Hero slain (10)
	.complete 13765,1 << Orc -- Converted Hero slain (10)
	.complete 13771,1 << Troll -- Converted Hero slain (10)
	.complete 13776,1 << Tauren -- Converted Hero slain (10)
	.complete 13781,1 << Scourge -- Converted Hero slain (10)
	.complete 13786,1 << BloodElf -- Converted Hero slain (10)
	.isOnQuest 13592,13744,13749,13755,13760,13765,13771,13776,13781,13786
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila e depois monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r << Alliance
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois Monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r << Horde
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13847,2 << Human -- Boneguard Scout slain (10)
	.complete 13851,2 << Dwarf -- Boneguard Scout slain (10)
	.complete 13852,2 << Gnome -- Boneguard Scout slain (10)
	.complete 13854,2 << Draenei -- Boneguard Scout slain (10)
	.complete 13855,2 << NightElf -- Boneguard Scout slain (10)
	.complete 13856,2 << Orc -- Boneguard Scout slain (10)
	.complete 13857,2 << Troll -- Boneguard Scout slain (10)
	.complete 13858,2 << Tauren -- Boneguard Scout slain (10)
	.complete 13860,2 << Scourge -- Boneguard Scout slain (10)
	.complete 13859,2 << BloodElf -- Boneguard Scout slain (10)
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13847,1 << Human -- Boneguard Footman slain (15)
	.complete 13847,3 << Human -- Boneguard Lieutenant (3)
	.complete 13851,1 << Dwarf -- Boneguard Footman slain (15)
	.complete 13851,3 << Dwarf -- Boneguard Lieutenant slain (3)
	.complete 13852,1 << Gnome -- Boneguard Footman slain (15)
	.complete 13852,3 << Gnome -- Boneguard Lieutenant slain (3)
	.complete 13854,1 << Draenei -- Boneguard Footman slain (15)
	.complete 13854,3 << Draenei -- Boneguard Lieutenant slain (3)
	.complete 13855,1 << NightElf -- Boneguard Footman slain (15)
	.complete 13855,3 << NightElf -- Boneguard Lieutenant slain (3)
	.complete 13856,1 << Orc -- Boneguard Footman slain (15)
	.complete 13856,3 << Orc -- Boneguard Lieutenant slain (3)
	.complete 13857,1 << Troll -- Boneguard Footman slain (15)
	.complete 13857,3 << Troll -- Boneguard Lieutenant slain (3)
	.complete 13858,1 << Tauren -- Boneguard Footman slain (15)
	.complete 13858,3 << Tauren -- Boneguard Lieutenant slain (3)
	.complete 13860,1 << Scourge -- Boneguard Footman slain (15)
	.complete 13860,3 << Scourge -- Boneguard Lieutenant slain (3)
	.complete 13859,1 << BloodElf -- Boneguard Footman slain (15)
	.complete 13859,3 << BloodElf -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13847,2 << Human -- Boneguard Scout slain (10)
	.complete 13851,2 << Dwarf -- Boneguard Scout slain (10)
	.complete 13852,2 << Gnome -- Boneguard Scout slain (10)
	.complete 13854,2 << Draenei -- Boneguard Scout slain (10)
	.complete 13855,2 << NightElf -- Boneguard Scout slain (10)
	.complete 13856,2 << Orc -- Boneguard Scout slain (10)
	.complete 13857,2 << Troll -- Boneguard Scout slain (10)
	.complete 13858,2 << Tauren -- Boneguard Scout slain (10)
	.complete 13860,2 << Scourge -- Boneguard Scout slain (10)
	.complete 13859,2 << BloodElf -- Boneguard Scout slain (10)
	.isOnQuest 13847,13851,13852,13854,13855,13856,13857,13858,13859,13860
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13600,1 << Human -- Blade of Drak'Mar (1)
	.complete 13742,1 << Dwarf -- Blade of Drak'Mar (1)
	.complete 13747,1 << Gnome -- Blade of Drak'Mar (1)
	.complete 13753,1 << Draenei -- Blade of Drak'Mar (1)
	.complete 13758,1 << NightElf -- Blade of Drak'Mar (1)
	.complete 13763,1 << Orc -- Blade of Drak'Mar (1)
	.complete 13769,1 << Troll -- Blade of Drak'Mar (1)
	.complete 13774,1 << Tauren -- Blade of Drak'Mar (1)
	.complete 13779,1 << Scourge -- Blade of Drak'Mar (1)
	.complete 13784,1 << BloodElf -- Blade of Drak'Mar (1)
	.isOnQuest 13600,13742,13747,13753,13758,13763,13769,13774,13779,13784

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13616,1 << Human -- Winter's Edge (1)
	.complete 13743,1 << Dwarf -- Winter's Edge (1)
	.complete 13748,1 << Gnome -- Winter's Edge (1)
	.complete 13754,1 << Draenei -- Winter's Edge (1)
	.complete 13759,1 << NightElf -- Winter's Edge (1)
	.complete 13764,1 << Orc -- Winter's Edge (1)
	.complete 13770,1 << Troll -- Winter's Edge (1)
	.complete 13775,1 << Tauren -- Winter's Edge (1)
	.complete 13780,1 << Scourge -- Winter's Edge (1)
	.complete 13785,1 << BloodElf -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13616,13743,13748,13754,13759,13764,13770,13775,13780,13785

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13603,1 << Human -- Ashwood Brand (1)
	.complete 13741,1 << Dwarf -- Ashwood Brand (1)
	.complete 13746,1 << Gnome -- Ashwood Brand (1)
	.complete 13752,1 << Draenei -- Ashwood Brand (1)
	.complete 13757,1 << NightElf -- Ashwood Brand (1)
	.complete 13762,1 << Orc -- Ashwood Brand (1)
	.complete 13768,1 << Troll -- Ashwood Brand (1)
	.complete 13773,1 << Tauren -- Ashwood Brand (1)
	.complete 13778,1 << Scourge -- Ashwood Brand (1)
	.complete 13783,1 << BloodElf -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783
step
	.goto IcecrownGlacier,76.46,19.41,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Horde
	.isOnQuest 13603,13741,13746,13752,13757,13762,13768,13773,13778,13783,13616,13743,13748,13754,13759,13764,13770,13775,13780,13785,13600,13742,13747,13753,13758,13763,13769,13774,13779,13784
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.turnin 13603 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >>Entregue A Grande Escaramuça
	.turnin 13847 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13603 -- A Blade Fit For A Champion
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.turnin 13616 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >>Entregue A Grande Escaramuça
	.turnin 13847 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13616 -- The Edge Of Winter
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.turnin 13600 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >>Entregue A Grande Escaramuça
	.turnin 13847 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13600 -- A Worthy Weapon
step << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.turnin -13592 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.turnin -13665 >>Entregue A Grande Escaramuça
	.turnin -13847 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley

step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.turnin 13752 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >>Entregue A Grande Escaramuça
	.turnin 13854 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13752 -- A Blade Fit For A Champion
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.turnin 13754 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >>Entregue A Grande Escaramuça
	.turnin 13854 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13754 -- The Edge Of Winter
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.turnin 13753 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >>Entregue A Grande Escaramuça
	.turnin 13854 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13753 -- A Worthy Weapon
step << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.turnin -13755 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.turnin -13756 >>Entregue A Grande Escaramuça
	.turnin -13854 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Saandos
	.target Ranii

step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r, |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.turnin 13757 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >>Entregue A Grande Escaramuça
	.turnin 13855 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13757 -- A Blade Fit For A Champion
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r, |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.turnin 13759 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >>Entregue A Grande Escaramuça
	.turnin 13855 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13759 -- The Edge Of Winter
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r, |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.turnin 13758 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >>Entregue A Grande Escaramuça
	.turnin 13855 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13758 -- A Worthy Weapon
step << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.turnin -13760 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.turnin -13761 >>Entregue A Grande Escaramuça
	.turnin -13855 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Illestria Bladesinger
	.target Airae Starseeker

step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r, |cRXP_FRIENDLY_Rolo Tirocerto|r e |cRXP_FRIENDLY_Clara Rolacerva|r
	.turnin 13741 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >>Entregue A Grande Escaramuça
	.turnin 13851 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13741 -- A Blade Fit For A Champion
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r, |cRXP_FRIENDLY_Rolo Tirocerto|r e |cRXP_FRIENDLY_Clara Rolacerva|r
	.turnin 13743 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >>Entregue A Grande Escaramuça
	.turnin 13851 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13743 -- The Edge Of Winter
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r, |cRXP_FRIENDLY_Rolo Tirocerto|r e |cRXP_FRIENDLY_Clara Rolacerva|r
	.turnin 13742 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >>Entregue A Grande Escaramuça
	.turnin 13851 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13742 -- A Worthy Weapon
step << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rollo|r Sureshot e |cRXP_FRIENDLY_Clara Rolacerva|r
	.turnin -13744 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.turnin -13745 >>Entregue A Grande Escaramuça
	.turnin -13851 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Rollo Sureshot
	.target Clara Tumblebrew

step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r, |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.turnin 13746 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >>Entregue A Grande Escaramuça
	.turnin 13852 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13746 -- A Blade Fit For A Champion
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r, |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.turnin 13748 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >>Entregue A Grande Escaramuça
	.turnin 13852 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13748 -- The Edge Of Winter
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r, |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.turnin 13747 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >>Entregue A Grande Escaramuça
	.turnin 13852 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13747 -- A Worthy Weapon
step << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.turnin -13749 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.turnin -13750 >>Entregue A Grande Escaramuça
	.turnin -13852 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Tickin Gearspanner
	.target Flickin Gearspanner

step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.turnin 13768 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >>Entregue A Grande Escaramuça
	.turnin 13857 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13768 -- A Blade Fit For A Champion
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.turnin 13770 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >>Entregue A Grande Escaramuça
	.turnin 13857 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13770 -- The Edge Of Winter
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.turnin 13769 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >>Entregue A Grande Escaramuça
	.turnin 13857 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13769 -- A Worthy Weapon
step << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.turnin -13771 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.turnin -13772 >>Entregue A Grande Escaramuça
	.turnin -13857 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Shadow Hunter Mezil-kree
	.target Gahju

step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r, |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.turnin 13773 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >>Entregue A Grande Escaramuça
	.turnin 13858 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13773 -- A Blade Fit For A Champion
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r, |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.turnin 13775 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >>Entregue A Grande Escaramuça
	.turnin 13858 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13775 -- The Edge Of Winter
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r, |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.turnin 13774 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >>Entregue A Grande Escaramuça
	.turnin 13858 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13774 -- A Worthy Weapon
step << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.turnin -13776 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.turnin -13777 >>Entregue A Grande Escaramuça
	.turnin -13858 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Dern Ragetotem
	.target Anka Clawhoof

step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r, |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.turnin 13762 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >>Entregue A Grande Escaramuça
	.turnin 13856 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13762 -- A Blade Fit For A Champion
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r, |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.turnin 13764 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >>Entregue A Grande Escaramuça
	.turnin 13856 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13764 -- The Edge Of Winter
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r, |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.turnin 13763 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >>Entregue A Grande Escaramuça
	.turnin 13856 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13763 -- A Worthy Weapon
step << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.turnin -13765 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.turnin -13767 >>Entregue A Grande Escaramuça
	.turnin -13856 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Akinos
	.target Morah Worgsister

step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r, Sarah Chalke e o |cRXP_FRIENDLY_Tratador Dretch|r
	.turnin 13778 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >>Entregue A Grande Escaramuça
	.turnin 13860 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13778 -- A Blade Fit For A Champion
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r, Sarah Chalke e o |cRXP_FRIENDLY_Tratador Dretch|r
	.turnin 13780 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >>Entregue A Grande Escaramuça
	.turnin 13860 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13780 -- The Edge Of Winter
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r, Sarah Chalke e o |cRXP_FRIENDLY_Tratador Dretch|r
	.turnin 13779 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >>Entregue A Grande Escaramuça
	.turnin 13860 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13779 -- A Worthy Weapon
step << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarah Chalke|r e o |cRXP_FRIENDLY_Tratador Dretch|r
	.turnin -13781 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.turnin -13782 >>Entregue A Grande Escaramuça
	.turnin -13860 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Sarah Chalke
	.target Handler Dretch

step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r, |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.turnin 13783 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >>Entregue A Grande Escaramuça
	.turnin 13859 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13783 -- A Blade Fit For A Champion
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r, |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.turnin 13785 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >>Entregue A Grande Escaramuça
	.turnin 13859 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13785 -- The Edge Of Winter
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r, |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.turnin 13784 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >>Entregue A Grande Escaramuça
	.turnin 13859 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13784 -- A Worthy Weapon
step << BloodElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.turnin -13786 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.turnin -13787 >>Entregue A Grande Escaramuça
	.turnin -13859 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Kethiel Sunlance
	.target Aneera Thuron

step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.complete 13716,1 >>Entregue A Investida do Valente << Draenei -- Valiant's Seal (25)
	.complete 13714,1 >>Entregue A Investida do Valente << Dwarf -- Valiant's Seal (25)
	.complete 13715,1 >>Entregue A Investida do Valente << Gnome -- Valiant's Seal (25)
	.complete 13718,1 >>Entregue A Investida do Valente << Human -- Valiant's Seal (25)
	.complete 13717,1 >>Entregue A Investida do Valente << NightElf -- Valiant's Seal (25)
	.complete 13721,1 >>Entregue A Investida do Valente << Scourge -- Valiant's Seal (25)
	.complete 13697,1 >>Entregue A Investida do Valente << Orc -- Valiant's Seal (25)
	.complete 13720,1 >>Entregue A Investida do Valente << Tauren -- Valiant's Seal (25)
	.complete 13719,1 >>Entregue A Investida do Valente << Troll -- Valiant's Seal (25)
	.complete 13722,1 >>Entregue A Investida do Valente << BloodElf -- Valiant's Seal (25)
	.turnin 13716 >>Entregue A Investida do Valente << Draenei
	.turnin 13714 >>Entregue A Investida do Valente << Dwarf
	.turnin 13715 >>Entregue A Investida do Valente << Gnome
	.turnin 13718 >>Entregue A Investida do Valente << Human
	.turnin 13717 >>Entregue A Investida do Valente << NightElf
	.turnin 13721 >>Entregue A Investida do Valente << Scourge
	.turnin 13697 >>Entregue A Investida do Valente << Orc
	.turnin 13720 >>Entregue A Investida do Valente << Tauren
	.turnin 13719 >>Entregue A Investida do Valente << Troll
	.turnin 13722 >>Entregue A Investida do Valente << BloodElf
	.accept 13724 >>Aceite O Desafio do Valente << Draenei
	.accept	13713 >>Aceite O Desafio do Valente << Dwarf
	.accept 13723 >>Aceite O Desafio do Valente << Gnome
	.accept	13699 >>Aceite O Desafio do Valente << Human
	.accept 13725 >>Aceite O Desafio do Valente << NightElf
	.accept	13729 >>Aceite O Desafio do Valente << Scourge
	.accept 13726 >>Aceite O Desafio do Valente << Orc
	.accept 13728 >>Aceite O Desafio do Valente << Tauren
	.accept 13727 >>Aceite O Desafio do Valente << Troll
	.accept 13731 >>Aceite O Desafio do Valente << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Elekk da Exodar Abrigado << Draenei
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Carneiro de Altaforja Abrigado << Dwarf
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Mecanostruz de Gnomeregan Abrigado << Gnome
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Corcel de Ventobravo Abrigado << Human
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Sabre-da-noite Darnassiano Abrigado << NightElf
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Cavalo de Guerra dos Renegados Abrigado << Scourge
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Lobo de Orgrimmar Abrigado << Orc
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Kodo do Penhasco do Trovão Abrigado << Tauren
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Raptor Lançanegra Abrigado << Troll
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Falcostruz de Luaprata Abrigado << BloodElf
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion << Alliance
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion << Horde
	.goto IcecrownGlacier,76.36,20.51 << Draenei
	.goto IcecrownGlacier,76.25,20.51 << Dwarf
	.goto IcecrownGlacier,76.17,20.49 << Gnome
	.goto IcecrownGlacier,76.08,20.48 << Human
	.goto IcecrownGlacier,76.00,20.42 << NightElf
	.goto IcecrownGlacier,75.56,23.86 << Scourge
	.goto IcecrownGlacier,75.55,24.00 << Orc
	.goto IcecrownGlacier,75.53,24.26 << Tauren
	.goto IcecrownGlacier,75.58,23.76 << Troll
	.goto IcecrownGlacier,75.54,24.14 << BloodElf
	.use 46069 << Alliance
	.use 46070 << Horde
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13724,13713,13723,13699,13725,13729,13726,13728,13727,13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13724,1 << Draenei -- Argent Champion defeated (1)
	.complete 13713,1 << Dwarf -- Argent Champion defeated (1)
	.complete 13723,1 << Gnome -- Argent Champion defeated (1)
	.complete 13699,1 << Human -- Argent Champion defeated (1)
	.complete 13725,1 << NightElf -- Argent Champion defeated (1)
	.complete 13729,1 << Scourge -- Argent Champion defeated (1)
	.complete 13726,1 << Orc -- Argent Champion defeated (1)
	.complete 13728,1 << Tauren -- Argent Champion defeated (1)
	.complete 13727,1 << Troll -- Argent Champion defeated (1)
	.complete 13731,1 << BloodElf -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13724,13713,13723,13699,13725,13729,13726,13728,13727,13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.turnin 13724 >>Entregue O Desafio do Valente << Draenei
	.turnin	13713 >>Entregue O Desafio do Valente << Dwarf
	.turnin 13723 >>Entregue O Desafio do Valente << Gnome
	.turnin	13699 >>Entregue O Desafio do Valente << Human
	.turnin 13725 >>Entregue O Desafio do Valente << NightElf
	.turnin	13729 >>Entregue O Desafio do Valente << Scourge
	.turnin 13726 >>Entregue O Desafio do Valente << Orc
	.turnin 13728 >>Entregue O Desafio do Valente << Tauren
	.turnin 13727 >>Entregue O Desafio do Valente << Troll
	.turnin 13731 >>Entregue O Desafio do Valente << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r << Draenei
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r << Dwarf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r << Gnome
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r << Human
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r << NightElf
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r << Scourge
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r << Orc
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r << Tauren
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r << Troll
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r << BloodElf
	.goto IcecrownGlacier,76.10,19.10 << Draenei
	.goto IcecrownGlacier,76.64,19.49 << Dwarf
	.goto IcecrownGlacier,76.55,19.82 << Gnome
	.goto IcecrownGlacier,76.60,19.12 << Human
	.goto IcecrownGlacier,76.34,19.03 << NightElf
	.goto IcecrownGlacier,76.53,24.21 << Scourge
	.goto IcecrownGlacier,76.46,24.60 << Orc
	.goto IcecrownGlacier,76.20,24.63 << Tauren
	.goto IcecrownGlacier,75.95,24.53 << Troll
	.goto IcecrownGlacier,76.45,23.85 << BloodElf
	.accept 13734 >>Aceite Surge um Campeão << Draenei
	.accept	13732 >>Aceite Surge um Campeão << Dwarf
	.accept 13733 >>Aceite Surge um Campeão << Gnome
	.accept	13702 >>Aceite Surge um Campeão << Human
	.accept 13735 >>Aceite Surge um Campeão << NightElf
	.accept	13739 >>Aceite Surge um Campeão << Scourge
	.accept 13736 >>Aceite Surge um Campeão << Orc
	.accept 13738 >>Aceite Surge um Campeão << Tauren
	.accept 13737 >>Aceite Surge um Campeão << Troll
	.accept 13740 >>Aceite Surge um Campeão << BloodElf
	.target Colosos << Draenei
	.target Lana Stouthammer << Dwarf
	.target Ambrose Boltspark << Gnome
	.target Marshal Jacob Alerius << Human
	.target Jaelyne Evensong << NightElf
	.target Deathstalker Visceri << Scourge
	.target Mokra the Skullcrusher << Orc
	.target Runok Wildmane << Tauren
	.target Zul'tore << Troll
	.target Eressea Dawnsinger << BloodElf
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Justicar Mariel Veras|r
	.goto IcecrownGlacier,69.66,22.86
	.turnin 13734 >>Entregue Surge um Campeão << Draenei
	.turnin	13732 >>Entregue Surge um Campeão << Dwarf
	.turnin 13733 >>Entregue Surge um Campeão << Gnome
	.turnin	13702 >>Entregue Surge um Campeão << Human
	.turnin 13735 >>Entregue Surge um Campeão << NightElf
	.turnin	13739 >>Entregue Surge um Campeão << Scourge
	.turnin 13736 >>Entregue Surge um Campeão << Orc
	.turnin 13738 >>Entregue Surge um Campeão << Tauren
	.turnin 13737 >>Entregue Surge um Campeão << Troll
	.turnin 13740 >>Entregue Surge um Campeão << BloodElf
	.target Justicar Mariel Trueheart
step
	.goto IcecrownGlacier,76.33,19.48 << Alliance
	.goto IcecrownGlacier,76.17,24.21 << Horde
	+|cRXP_WARN_Você agora é um |T255137:0|tcampeão do Exodar!|r << Draenei
	+|cRXP_WARN_Você agora é um |T255139:0|tCampeão de Gnomeregan!|r << Gnome
	+|cRXP_WARN_Você agora é um |T255138:0|tCampeão de Ironforge!|r << Dwarf
	+|cRXP_WARN_Você agora é um |T255141:0|tCampeão de Darnassus!|r << NightElf
	+|cRXP_WARN_Você agora é um |T255140:0|tCampeão de Ventobravo!|r << Human
	+|cRXP_WARN_Você agora é um |T255142:0|tCampeão de Orgrimmar!|r << Orc
	+|cRXP_WARN_Você agora é um |T255145:0|tcampeão de Sen'jin!|r << Troll
	+|cRXP_WARN_Você é agora um |T255136:0|tCampeão de Luaprata!|r << BloodElf
	+|cRXP_WARN_Você agora é um |T255143:0|tCampeão da Rua Morta!|r << Scourge
	+|cRXP_WARN_Você é agora um |T255144:0|tCampeão de Penhasco do Trovão!|r << Tauren
	>>|cRXP_LOOT_Você terminou este guia introdutório Tornando-se um Campeão!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13724 << Draenei
	.isQuestTurnedIn 13713 << Dwarf
	.isQuestTurnedIn 13723 << Gnome
	.isQuestTurnedIn 13699 << Human
	.isQuestTurnedIn 13725 << NightElf
	.isQuestTurnedIn 13729 << Scourge
	.isQuestTurnedIn 13726 << Orc
	.isQuestTurnedIn 13728 << Tauren
	.isQuestTurnedIn 13727 << Troll
	.isQuestTurnedIn 13731 << BloodElf
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name B_2_AT_Exodar
#displayname |cRXP_FRIENDLY_2.0|r - Campeão da Exodar
<< Alliance !Draenei

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r
	.goto IcecrownGlacier,76.10,19.10
	.accept 13705 >>Aceite Valente da Exodar
	.turnin 13705 >>Entregue Valente da Exodar
	.target Colosos
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r. Ele tem 1 de 3 missões diárias. Aceite qualquer uma que estiver disponível
	.accept 13716 >>Aceite A Investida do Valente
	.daily 13752,13754,13753 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.10,19.10
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.daily 13755 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.daily 13756 >>Aceite A Grande Escaramuça
	.daily 13854 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestAvailable 13716
step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Elekk da Exodar Abrigado
	.goto IcecrownGlacier,76.36,20.51
	.use 46069
	.target Stabled Exodar Elekk
	.isOnQuest 13756
step -- THE GRAND MELEE
	>>Vá para o Anel dos Valiantes da Aliança << Alliance
	>>Vá para o Anel dos Valiantes da Horda << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13756,1 -- Mark of the Valiant (3)
	.isOnQuest 13756
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13755,1 -- Converted Hero slain (10)
	.isOnQuest 13755
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila e depois monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r << Alliance
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13854
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13854,2 -- Boneguard Scout slain (10)
	.isOnQuest 13854
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13854,1 -- Boneguard Footman slain (15)
	.complete 13854,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13854
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13854,2 -- Boneguard Scout slain (10)
	.isOnQuest 13854
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13753
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13753
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13753,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13753

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13754
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13754
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13754
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13754,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13754

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13752
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13752,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13752
step
	.goto IcecrownGlacier,76.46,19.41,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13752,13754,13753,13755,13756,13854
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.turnin 13752 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >>Entregue A Grande Escaramuça
	.turnin 13854 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13752 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.turnin 13754 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >>Entregue A Grande Escaramuça
	.turnin 13854 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13754 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r, |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.turnin 13753 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13755 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.turnin 13756 >>Entregue A Grande Escaramuça
	.turnin 13854 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Colosos
	.target Saandos
	.target Ranii
	.isQuestComplete 13753 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Saandos|r e |cRXP_FRIENDLY_Ranii|r
	.turnin -13755 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.08,19.19
	.turnin -13756 >>Entregue A Grande Escaramuça
	.turnin -13854 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.15,19.08
	.target Saandos
	.target Ranii
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r
	.goto IcecrownGlacier,76.10,19.10
	.complete 13716,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13716 >>Entregue A Investida do Valente
	.accept 13724 >>Aceite O Desafio do Valente
	.target Colosos
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Elekk da Exodar Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,76.36,20.51
	.use 46069
	.target Stabled Exodar Elekk
	.isOnQuest 13724
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13724,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13724
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Colossos|r
	.goto IcecrownGlacier,76.10,19.10
	.turnin 13724 >>Entregue O Desafio do Valente
	.target Colosos
step
	.goto IcecrownGlacier,76.33,19.48
	+|T255137:0|t|cRXP_WARN_Você agora é um Campeão de Exodar!|r
	>>|cRXP_LOOT_Você já terminou o Guia do Campeão de Exodar!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13724
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name C_2_AT_Stormwind
#displayname |cRXP_FRIENDLY_2.0|r - Campeão de Ventobravo
<< Alliance !Human

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r
	.goto IcecrownGlacier,76.60,19.12
	.accept 13593 >>Aceite Valente de Ventobravo
	.turnin 13593 >>Entregue Valente de Ventobravo
	.target Marshal Jacob Alerius
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r. Ele tem 1 de 3 missões diárias. Aceite qualquer uma que estiver disponível
	.accept 13718 >>Aceite A Investida do Valente
	.daily 13603,13616,13600 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.60,19.12
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.daily 13592 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.daily 13665 >>Aceite A Grande Escaramuça
	.daily 13847 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestAvailable 13718

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Corcel de Ventobravo Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,76.08,20.48
	.use 46069
	.target Stabled Stormwind Steed
	.isOnQuest 13665
step -- THE GRAND MELEE
	>>Vá para o Anel dos Valiantes da Aliança << Alliance
	>>Vá para o Anel dos Valiantes da Horda << Horde
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13665,1 -- Mark of the Valiant (3)
	.isOnQuest 13665
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13592,1 -- Converted Hero slain (10)
	.isOnQuest 13592
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila e depois monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r << Alliance
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13847
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13847,2 -- Boneguard Scout slain (10)
	.isOnQuest 13847
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13847,1 -- Boneguard Footman slain (15)
	.complete 13847,3 -- Boneguard Lieutenant (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13847
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13847,2 -- Boneguard Scout slain (10)
	.isOnQuest 13847
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13600
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13600
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13600,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13600

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13616
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13616
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13616
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13616,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13616

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13603
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13603,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13603
step
	.goto IcecrownGlacier,76.46,19.41,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13603,13616,13600,13592,13665,13847
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.turnin 13603 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >>Entregue A Grande Escaramuça
	.turnin 13847 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13603 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.turnin 13616 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >>Entregue A Grande Escaramuça
	.turnin 13847 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13616 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r, |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.turnin 13600 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.60,19.12
	.turnin 13592 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.turnin 13665 >>Entregue A Grande Escaramuça
	.turnin 13847 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Marshal Jacob Alerius
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
	.isQuestComplete 13600 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sir Marcus Barlowe|r e o |cRXP_FRIENDLY_Capitão Josué Rolém|r
	.turnin -13592 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.53,19.08
	.turnin -13665 >>Entregue A Grande Escaramuça
	.turnin -13847 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.62,19.21
	.target Sir Marcus Barlowe
	.target Captain Joseph Holley
step
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r
	.complete 13718,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13718 >>Entregue A Investida do Valente
	.accept	13699 >>Aceite O Desafio do Valente
	.target Marshal Jacob Alerius
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Corcel de Ventobravo Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,76.08,20.48
	.use 46069
	.target Stabled Stormwind Steed
	.isOnQuest 13699
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13699,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13699
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Marechal Jacob Alerius|r
	.goto IcecrownGlacier,76.60,19.12
	.turnin	13699 >>Entregue O Desafio do Valente
	.target Marshal Jacob Alerius
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_Você agora é um |T255140:0|tCampeão de Ventobravo!|r
	>>|cRXP_LOOT_Você terminou o Campeão de Ventobravo Guia!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13699
]])


RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name D_2_AT_Ironforge
#displayname |cRXP_FRIENDLY_2.0|r - Campeão de Altaforja
<< Alliance !Dwarf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r
	.goto IcecrownGlacier,76.64,19.49
	.accept 13703 >>Aceite Valente de Altaforja
	.turnin 13703 >>Entregue Valente de Altaforja
	.target Lana Stouthammer
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r. Ela tem 1 de 3 missões diárias. Aceite a que estiver disponível.
	.accept 13714 >>Aceite A Investida do Valente
	.daily 13741,13743,13742 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.64,19.49
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rolo Tirocerto|r e |cRXP_FRIENDLY_Clara Rolacerva|r
	.daily 13744 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.daily 13745 >>Aceite A Grande Escaramuça
	.daily 13851 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestAvailable 13714


step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Carneiro de Altaforja Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,76.25,20.51
	.use 46069
	.target Stabled Ironforge Ram
	.isOnQuest 13745
step -- THE GRAND MELEE
	>>Vá para o Anel dos Valiantes da Aliança
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13745,1 -- Mark of the Valiant (3)
	.isOnQuest 13745
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant

step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13744,1 -- Converted Hero slain (10)
	.isOnQuest 13744
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila e depois monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13851
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13851,2 -- Boneguard Scout slain (10)
	.isOnQuest 13851
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13851,1 -- Boneguard Footman slain (15)
	.complete 13851,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13851
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13851,2 -- Boneguard Scout slain (10)
	.isOnQuest 13851
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13742
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13742
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13742,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13742

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13743
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13743
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13743
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13743,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13743

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13741
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13741,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13741
step
	.goto IcecrownGlacier,76.46,19.41,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Horde
	.isOnQuest 13741,13743,13742,13744,13745,13851
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r, |cRXP_FRIENDLY_Rolo Tirocerto|r e |cRXP_FRIENDLY_Clara Rolacerva|r
	.turnin 13741 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >>Entregue A Grande Escaramuça
	.turnin 13851 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13741 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r, |cRXP_FRIENDLY_Rolo Tirocerto|r e |cRXP_FRIENDLY_Clara Rolacerva|r
	.turnin 13743 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >>Entregue A Grande Escaramuça
	.turnin 13851 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13743 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r, |cRXP_FRIENDLY_Rolo Tirocerto|r e |cRXP_FRIENDLY_Clara Rolacerva|r
	.turnin 13742 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.64,19.49
	.turnin 13744 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.turnin 13745 >>Entregue A Grande Escaramuça
	.turnin 13851 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Lana Stouthammer
	.target Rollo Sureshot
	.target Clara Tumblebrew
	.isQuestComplete 13742 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rollo|r Sureshot e |cRXP_FRIENDLY_Clara Rolacerva|r
	.turnin -13744 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.66,19.41
	.turnin -13745 >>Entregue A Grande Escaramuça
	.turnin -13851 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.64,19.57
	.target Rollo Sureshot
	.target Clara Tumblebrew
step
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r
	.goto IcecrownGlacier,76.64,19.49
	.complete 13714,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13714 >>Entregue A Investida do Valente
	.accept	13713 >>Aceite O Desafio do Valente
	.target Lana Stouthammer
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Carneiro de Altaforja Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,76.25,20.51
	.use 46069
	.target Stabled Ironforge Ram
	.isOnQuest 13713
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13713,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13713
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lana Fortemalho|r
	.goto IcecrownGlacier,76.64,19.49
	.turnin	13713 >>Entregue O Desafio do Valente
	.target Lana Stouthammer
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_Você agora é um |T255138:0|tCampeão de Ironforge!|r
	>>|cRXP_LOOT_Você agora completou o Guia do Campeão de Altaforja!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13713
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name E_2_AT_Gnomeregan
#displayname |cRXP_FRIENDLY_2.0|r - Campeão de Gnomeregan
<< Alliance !Gnome

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r
	.goto IcecrownGlacier,76.55,19.82
	.accept 13704 >>Aceite Valente de Gnomeregan
	.turnin 13704 >>Entregue Valente de Gnomeregan
	.target Ambrose Boltspark
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r. Ele tem 1 de 3 missões diárias. Aceite a que estiver disponível
	.accept 13715 >>Aceite A Investida do Valente
	.daily 13746,13748,13747 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.55,19.82
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.daily 13749 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.daily 13750 >>Aceite A Grande Escaramuça
	.daily 13852 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestAvailable 13715

step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Mecanostruz de Gnomeregan Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,76.17,20.49
	.use 46069
	.target Stabled Gnomeregan Mechanostrider
	.isOnQuest 13750
step -- THE GRAND MELEE
	>>Vá para o Anel dos Valiantes da Aliança
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13750,1 -- Mark of the Valiant (3)
	.isOnQuest 13750
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13749,1 -- Converted Hero slain (10)
	.isOnQuest 13749
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila e depois monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13852
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13852,2 -- Boneguard Scout slain (10)
	.isOnQuest 13852
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13852,1 -- Boneguard Footman slain (15)
	.complete 13852,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13852
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13852,2 -- Boneguard Scout slain (10)
	.isOnQuest 13852
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13747
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13747
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13747,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13747

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13748
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13748
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13748
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13748,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13748

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13746
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13746,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13746
step
	.goto IcecrownGlacier,76.46,19.41,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13746,13748,13747,13749,13750,13852
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r, |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.turnin 13746 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >>Entregue A Grande Escaramuça
	.turnin 13852 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13746 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r, |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.turnin 13748 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >>Entregue A Grande Escaramuça
	.turnin 13852 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13748 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r, |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.turnin 13747 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13749 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.turnin 13750 >>Entregue A Grande Escaramuça
	.turnin 13852 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Ambrose Boltspark
	.target Tickin Gearspanner
	.target Flickin Gearspanner
	.isQuestComplete 13747 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiquim Chavefenda|r e |cRXP_FRIENDLY_Fliquim Chavefenda|r
	.turnin -13749 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.60,19.79
	.turnin -13750 >>Entregue A Grande Escaramuça
	.turnin -13852 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,19.89
	.target Tickin Gearspanner
	.target Flickin Gearspanner
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r
	.goto IcecrownGlacier,76.55,19.82
	.complete 13715,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13715 >>Entregue A Investida do Valente
	.accept 13723 >>Aceite O Desafio do Valente
	.target Ambrose Boltspark
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Mecanostruz de Gnomeregan Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,76.17,20.49
	.use 46069
	.target Stabled Gnomeregan Mechanostrider
	.isOnQuest 13723
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13723,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13723
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ambrósio Chisparafuso|r
	.goto IcecrownGlacier,76.55,19.82
	.turnin 13723 >>Entregue O Desafio do Valente
	.target Ambrose Boltspark
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_Você agora é um |T255139:0|tCampeão de Gnomeregan!|r
	>>|cRXP_LOOT_Você terminou o Campeão de Gnomeregan Guia!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13723
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name F_2_AT_Darnassus
#displayname |cRXP_FRIENDLY_2.0|r - Campeão de Darnassus
<< Alliance !NightElf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r
	.goto IcecrownGlacier,76.34,19.03
	.accept 13706 >>Aceite Valente de Darnassus
	.turnin 13706 >>Entregue Valente de Darnassus
	.target Jaelyne Evensong
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r. Ela tem 1 de 3 missões diárias. Aceite o que estiver disponível.
	.accept 13717 >>Aceite A Investida do Valente
	.daily 13757,13759,13758 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.34,19.03
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.daily 13760 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.daily 13761 >>Aceite A Grande Escaramuça
	.daily 13855 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestAvailable 13717


step -- THE GRAND MELEE
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Sabre-da-noite Darnassiano Abrigado
	.goto IcecrownGlacier,76.00,20.42
	.use 46069
	.target Stabled Darnassian Nightsaber
	.isOnQuest 13761
step -- THE GRAND MELEE
	>>Vá para o Anel dos Valiantes da Aliança
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05,10,0
	.goto IcecrownGlacier,75.66,18.72,10,0
	.goto IcecrownGlacier,75.73,18.12,10,0
	.goto IcecrownGlacier,75.08,17.70,10,0
	.goto IcecrownGlacier,74.82,18.39,10,0
	.goto IcecrownGlacier,75.31,19.05
	.complete 13761,1 -- Mark of the Valiant (3)
	.isOnQuest 13761
	.skipgossip
	.mob Stormwind Valiant
	.mob Ironforge Valiant
	.mob Gnomeregan Valiant
	.mob Darnassus Valiant
	.mob Exodar Valiant
step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13760,1 -- Converted Hero slain (10)
	.isOnQuest 13760
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila e depois monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069
	.isOnQuest 13855
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13855,2 -- Boneguard Scout slain (10)
	.isOnQuest 13855
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13855,1 -- Boneguard Footman slain (15)
	.complete 13855,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13855
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13855,2 -- Boneguard Scout slain (10)
	.isOnQuest 13855
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13758
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13758
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13758,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13758

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13759
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13759
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13759
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13759,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13759

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13757
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13757,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13757
step
	.goto IcecrownGlacier,76.46,19.41,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13757,13759,13758,13760,13761,13855
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r, |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.turnin 13757 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >>Entregue A Grande Escaramuça
	.turnin 13855 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13757 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r, |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.turnin 13759 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >>Entregue A Grande Escaramuça
	.turnin 13855 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13759 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r, |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.turnin 13758 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13760 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.turnin 13761 >>Entregue A Grande Escaramuça
	.turnin 13855 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Jaelyne Evensong
	.target Illestria Bladesinger
	.target Airae Starseeker
	.isQuestComplete 13758 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Illestria Cantalâmina|r e |cRXP_FRIENDLY_Airae Mirestela|r
	.turnin -13760 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.29,18.99
	.turnin -13761 >>Entregue A Grande Escaramuça
	.turnin -13855 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,19.00
	.target Illestria Bladesinger
	.target Airae Starseeker
step
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r
	.goto IcecrownGlacier,76.34,19.03
	.complete 13717,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13717 >>Entregue A Investida do Valente
	.accept 13725 >>Aceite O Desafio do Valente
	.target Jaelyne Evensong
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Sabre-da-noite Darnassiano Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Aliança|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,76.00,20.42
	.use 46069
	.target Stabled Darnassian Nightsaber
	.isOnQuest 13725
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13725,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13725
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeline Ortocanto|r
	.goto IcecrownGlacier,76.34,19.03
	.turnin 13725 >>Entregue O Desafio do Valente
	.target Jaelyne Evensong
step
	.goto IcecrownGlacier,76.33,19.48
	+|cRXP_WARN_Você agora é um |T255141:0|tCampeão de Darnassus!|r
	>>|cRXP_LOOT_Você completou o Guia de Campeão de Darnassus!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13725
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name B_2_AT_Orgrimmar
#displayname |cRXP_FRIENDLY_2.0|r - Campeão de Orgrimmar
<< Horde !Orc


step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r
	.goto IcecrownGlacier,76.46,24.60
	.accept 13707 >>Aceite Valente de Orgrimmar
	.turnin 13707 >>Entregue Valente de Orgrimmar
	.target Mokra the Skullcrusher
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r. Ele tem 1 de 3 missões diárias. Aceite aquela que estiver disponível
	.accept 13697 >>Aceite A Investida do Valente
	.daily 13762,13764,13763 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.46,24.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.daily 13765 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.daily 13767 >>Aceite A Grande Escaramuça
	.daily 13856 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestAvailable 13697
step
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Lobo de Orgrimmar Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,75.55,24.00
	.use 46070
	.target Stabled Orgrimmar Wolf
	.isOnQuest 13767
step
	>>Vá para o Anel dos Valiantes da Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13767,1 -- Mark of the Valiant (3)
	.isOnQuest 13767
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13765,1 -- Converted Hero slain (10)
	.isOnQuest 13765
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois Monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13856
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13856,2 -- Boneguard Scout slain (10)
	.isOnQuest 13856
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13856,1 -- Boneguard Footman slain (15)
	.complete 13856,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13856
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13856,2 -- Boneguard Scout slain (10)
	.isOnQuest 13856
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13763
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13763
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13763,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13763

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13764
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13764
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13764
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13764,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13764

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13762
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13762,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13762
step
	.goto IcecrownGlacier,76.27,24.38,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13762,13764,13763,13765,13767,13856
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r, |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.turnin 13762 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >>Entregue A Grande Escaramuça
	.turnin 13856 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13762 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r, |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.turnin 13764 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >>Entregue A Grande Escaramuça
	.turnin 13856 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13764 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r, |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.turnin 13763 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13765 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.turnin 13767 >>Entregue A Grande Escaramuça
	.turnin 13856 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Mokra the Skullcrusher
	.target Akinos
	.target Morah Worgsister
	.isQuestComplete 13763 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aquinos|r e |cRXP_FRIENDLY_Móra Manaworg|r
	.turnin -13765 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.50,24.48
	.turnin -13767 >>Entregue A Grande Escaramuça
	.turnin -13856 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.40,24.59
	.target Akinos
	.target Morah Worgsister
step
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r
	.goto IcecrownGlacier,76.46,24.60
	.complete 13697,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13697 >>Entregue A Investida do Valente
	.accept 13726 >>Aceite O Desafio do Valente
	.target Mokra the Skullcrusher
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Lobo de Orgrimmar Abrigado
	.goto IcecrownGlacier,75.55,24.00
	.use 46070
	.target Stabled Orgrimmar Wolf
	.isOnQuest 13726
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13726,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13726
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r
	.goto IcecrownGlacier,76.46,24.60
	.turnin 13726 >>Entregue O Desafio do Valente
	.target Mokra the Skullcrusher
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_Você agora é um |T255142:0|tCampeão de Orgrimmar!|r
	>>|cRXP_LOOT_Você terminou o Guia de Campeão de Orgrimmar!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13726
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name C_2_AT_Sen'jin
#displayname |cRXP_FRIENDLY_2.0|r - Campeão de Sen'jin
<< Horde !Troll

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.accept 13708 >>Aceite Valente de Sen'jin
	.turnin 13708 >>Entregue Valente de Sen'jin
	.target Zul'tore
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r. Ele tem 1 de 3 missões diárias. Aceite qual estiver disponível
	.accept 13719 >>Aceite A Investida do Valente
	.daily 13768,13770,13769 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,75.95,24.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.daily 13771 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.daily 13772 >>Aceite A Grande Escaramuça
	.daily 13857 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestAvailable 13719

step
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Raptor Lançanegra Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,75.58,23.76
	.use 46070
	.target Stabled Darkspear Raptor
	.isOnQuest 13772
step
	>>Vá para o Anel dos Valiantes da Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13772,1 -- Mark of the Valiant (3)
	.isOnQuest 13772
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13771,1 -- Converted Hero slain (10)
	.isOnQuest 13771
	.mob Converted Hero

step
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois Monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13857
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13857,2 -- Boneguard Scout slain (10)
	.isOnQuest 13857
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13857,1 -- Boneguard Footman slain (15)
	.complete 13857,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13857
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13857,2 -- Boneguard Scout slain (10)
	.isOnQuest 13857
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13769
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13769
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13769,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13769

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13770
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13770
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13770
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13770,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13770

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13768
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13768,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13768
step
	.goto IcecrownGlacier,76.27,24.38,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13768,13770,13769,13771,13772,13857
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.turnin 13768 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >>Entregue A Grande Escaramuça
	.turnin 13857 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13768 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.turnin 13770 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >>Entregue A Grande Escaramuça
	.turnin 13857 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13770 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r, |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.turnin 13769 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13771 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.turnin 13772 >>Entregue A Grande Escaramuça
	.turnin 13857 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Zul'tore
	.target Shadow Hunter Mezil-kree
	.target Gahju
	.isQuestComplete 13769 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçador Sombrio Mezil-kree|r e |cRXP_FRIENDLY_Gahju|r
	.turnin -13771 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.04,24.59
	.turnin -13772 >>Entregue A Grande Escaramuça
	.turnin -13857 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,75.93,24.41
	.target Shadow Hunter Mezil-kree
	.target Gahju
step
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.complete 13719,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13719 >>Entregue A Investida do Valente
	.accept 13727 >>Aceite O Desafio do Valente
	.target Zul'tore
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Raptor Lançanegra Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,75.58,23.76
	.use 46070
	.target Stabled Darkspear Raptor
	.isOnQuest 13727
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13727,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13727
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zul'tore|r
	.goto IcecrownGlacier,75.95,24.53
	.turnin 13727 >>Entregue O Desafio do Valente
	.target Zul'tore
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_Você agora é um |T255145:0|tcampeão de Sen'jin!|r
	>>|cRXP_LOOT_You are now finished with the Campeão de Sen'jin Guia!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13727
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name D_2_AT_Penhasco do Trovão
#displayname |cRXP_FRIENDLY_2.0|r - Campeão do Penhasco do Trovão
<< Horde !Tauren

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r
	.goto IcecrownGlacier,76.20,24.63
	.accept 13709 >>Aceite Valente do Penhasco do Trovão
	.turnin 13709 >>Entregue Valente do Penhasco do Trovão
	.target Runok Wildmane
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r. Ele tem 1 de 3 missões diárias. Aceite qualquer uma que estiver disponível.
	.accept 13720 >>Aceite A Investida do Valente
	.daily 13773,13775,13774 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.20,24.63
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.daily 13776 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.daily 13777 >>Aceite A Grande Escaramuça
	.daily 13858 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestAvailable 13720

step
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Kodo do Penhasco do Trovão Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,75.53,24.26
	.use 46070
	.target Stabled Thunder Bluff Kodo
	.isOnQuest 13777
step
	>>Vá para o Anel dos Valiantes da Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13777,1 -- Mark of the Valiant (3)
	.isOnQuest 13777
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant

step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13776,1 -- Converted Hero slain (10)
	.isOnQuest 13776
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois Monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13858
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13858,2 -- Boneguard Scout slain (10)
	.isOnQuest 13858
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13858,1 -- Boneguard Footman slain (15)
	.complete 13858,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13858
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13858,2 -- Boneguard Scout slain (10)
	.isOnQuest 13858
	.mob Boneguard Scout

step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13774
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13774
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13774,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13774

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13775
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13775
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13775
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13775,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13775

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13773
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13773,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13773
step
	.goto IcecrownGlacier,76.46,19.41,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Horde
	.isOnQuest 13773,13775,13774,13776,13777,13858
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r, |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.turnin 13773 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >>Entregue A Grande Escaramuça
	.turnin 13858 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13773 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r, |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.turnin 13775 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >>Entregue A Grande Escaramuça
	.turnin 13858 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13775 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r, |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.turnin 13774 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13776 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.turnin 13777 >>Entregue A Grande Escaramuça
	.turnin 13858 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Runok Wildmane
	.target Dern Ragetotem
	.target Anka Clawhoof
	.isQuestComplete 13774 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dern Totem da Fúria|r e |cRXP_FRIENDLY_Anka Casco Afiado|r
	.turnin -13776 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.26,24.66
	.turnin -13777 >>Entregue A Grande Escaramuça
	.turnin -13858 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.14,24.64
	.target Dern Ragetotem
	.target Anka Clawhoof
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r
	.goto IcecrownGlacier,76.20,24.63
	.complete 13720,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13720 >>Entregue A Investida do Valente
	.accept 13728 >>Aceite O Desafio do Valente
	.target Runok Wildmane
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Kodo do Penhasco do Trovão Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,75.53,24.26
	.use 46070
	.target Stabled Thunder Bluff Kodo
	.isOnQuest 13728
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13728,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13728
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Runok Juba Agreste|r
	.goto IcecrownGlacier,76.20,24.63
	.turnin 13728 >>Entregue O Desafio do Valente
	.target Runok Wildmane
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_Você é agora um |T255144:0|tCampeão de Penhasco do Trovão!|r
	>>|cRXP_LOOT_You are now finished with the Campeão do Penhasco do Trovão Guia!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13728
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name E_2_AT_Undercity
#displayname |cRXP_FRIENDLY_2.0|r - Campeão de Undercity
<< Horde !Scourge

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r
	.goto IcecrownGlacier,76.53,24.21
	.accept 13710 >>Aceite Valente de Undercity
	.turnin 13710 >>Entregue Valente de Undercity
	.target Deathstalker Visceri
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sicário Viscerae|r. Ele tem 1 de 3 missões diárias. Aceite a que estiver disponível
	.accept 13721 >>Aceite A Investida do Valente
	.daily 13778,13780,13779 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.53,24.21
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarah Chalke|r e o |cRXP_FRIENDLY_Tratador Dretch|r
	.daily 13781 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.daily 13782 >>Aceite A Grande Escaramuça
	.daily 13860 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestAvailable 13721
step
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Cavalo de Guerra dos Renegados Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,75.56,23.86
	.use 46070
	.target Stabled Forsaken Warhorse
	.isOnQuest 13782
step
	>>Vá para o Anel dos Valiantes da Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13782,1 -- Mark of the Valiant (3)
	.isOnQuest 13782
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13781,1 -- Converted Hero slain (10)
	.isOnQuest 13781
	.mob Converted Hero

step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois Monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13860
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13860,2 -- Boneguard Scout slain (10)
	.isOnQuest 13860
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13860,1 -- Boneguard Footman slain (15)
	.complete 13860,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13860
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13860,2 -- Boneguard Scout slain (10)
	.isOnQuest 13860
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13779
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13779
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13779,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13779

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13780
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13780
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13780
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13780,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13780

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13778
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13778,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13778
step
	.goto IcecrownGlacier,76.46,19.41,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Alliance
	.goto IcecrownGlacier,76.27,24.38,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << Horde
	.isOnQuest 13778,13780,13779,13781,13782,13860
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r, Sarah Chalke e o |cRXP_FRIENDLY_Tratador Dretch|r
	.turnin 13778 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >>Entregue A Grande Escaramuça
	.turnin 13860 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13778 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r, Sarah Chalke e o |cRXP_FRIENDLY_Tratador Dretch|r
	.turnin 13780 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >>Entregue A Grande Escaramuça
	.turnin 13860 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13780 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r, Sarah Chalke e o |cRXP_FRIENDLY_Tratador Dretch|r
	.turnin 13779 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.53,24.21
	.turnin 13781 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.turnin 13782 >>Entregue A Grande Escaramuça
	.turnin 13860 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Deathstalker Visceri
	.target Sarah Chalke
	.target Handler Dretch
	.isQuestComplete 13779 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sarah Chalke|r e o |cRXP_FRIENDLY_Tratador Dretch|r
	.turnin -13781 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.56,24.11
	.turnin -13782 >>Entregue A Grande Escaramuça
	.turnin -13860 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.55,24.33
	.target Sarah Chalke
	.target Handler Dretch
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r
	.goto IcecrownGlacier,76.53,24.21
	.complete 13721,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13721 >>Entregue A Investida do Valente
	.accept	13729 >>Aceite O Desafio do Valente
	.target Deathstalker Visceri
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Cavalo de Guerra dos Renegados Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,75.56,23.86
	.use 46070
	.target Stabled Forsaken Warhorse
	.isOnQuest 13729
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13729,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13729
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sicário Viscerae|r
	.goto IcecrownGlacier,76.53,24.21
	.turnin	13729 >>Entregue O Desafio do Valente
	.target Deathstalker Visceri
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_Você agora é um |T255143:0|tCampeão da Rua Morta!|r
	>>|cRXP_LOOT_Você terminou o Guia do Campeão da Undercity!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13729
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name F_2_AT_Silvermoon
#displayname |cRXP_FRIENDLY_2.0|r - Campeão de Luaprata
#next Missões Secundárias de Campeão
<< Horde !BloodElf

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r
	.goto IcecrownGlacier,76.45,23.85
	.accept 13711 >>Aceite [Valente de Luaprata]
	.turnin 13711 >>Entregue [Valente de Luaprata]
	.target Eressea Dawnsinger
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mokra, o Esmaga-crânios|r. Ela tem 1 de 3 missões diárias. Aceite qualquer uma que estiver disponível
	.accept 13722 >>Aceite A Investida do Valente
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r. Ela tem 1 de 3 missões diárias. Aceite qualquer uma que estiver disponível
	.daily 13783,13785,13784 >>Aceite Uma Espada Digna de um Campeão |c99ffff99OU|r Limiar do Inverno |c99ffff99OU|r Uma Arma de Valor
	.goto IcecrownGlacier,76.45,23.85
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.daily 13786 >>Aceite Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.daily 13787 >>Aceite A Grande Escaramuça
	.daily 13859 >>Aceite Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestAvailable 13722
step
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Falcostruz de Luaprata Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,75.54,24.14
	.use 46070
	.target Stabled Silvermoon Hawkstrider
	.isOnQuest 13787
step
	>>Vá para o Anel dos Valiantes da Horda
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Valiant|r. Eles podem todos ser desafiados para um duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>Usar |T132358:0|tQuebra-escudo (2) para remover acúmulos de |T132360:0|tDefender do |cRXP_ENEMY_Valiant|r constantemente
	>>Quando não houver acúmulos de |T132360:0|tDefender no |cRXP_ENEMY_Valiant|r, use |T132226:0|tInvestida (3) bem como |T135375:0|tEstocada (1) enquanto em alcance de melee
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Valiant|r diferente 3 vezes em um duelo
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39,10,0
	.goto IcecrownGlacier,75.78,26.03,10,0
	.goto IcecrownGlacier,75.53,26.69,10,0
	.goto IcecrownGlacier,74.99,26.43,10,0
	.goto IcecrownGlacier,75.00,25.65,10,0
	.goto IcecrownGlacier,75.48,25.39
	.complete 13787,1 -- Mark of the Valiant (3)
	.isOnQuest 13787
	.skipgossip
	.mob Thunder Bluff Valiant
	.mob Silvermoon Valiant
	.mob Sen'jin Valiant
	.mob Orgrimmar Valiant
	.mob Undercity Valiant
step -- A Valiant's Field Training
	>>Salte de sua montaria. |cRXP_WARN_Lembre-se de equipar sua arma|r. Não destrua sua |T135128:0|t|c99ffff99Lança|r. Você precisará dela novamente
	>>Abate os |cRXP_ENEMY_Converted Heroes|r
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,46.91,51.72,60,0
	.goto IcecrownGlacier,46.83,54.38,60,0
	.goto IcecrownGlacier,44.82,55.38,60,0
	.goto IcecrownGlacier,42.55,55.28,60,0
	.goto IcecrownGlacier,40.45,53.53,60,0
	.goto IcecrownGlacier,41.50,50.23,60,0
	.goto IcecrownGlacier,44.14,49.89,60,0
	.goto IcecrownGlacier,45.74,49.88,60,0
	.goto IcecrownGlacier,42.55,55.28
	.complete 13786,1 -- Converted Hero slain (10)
	.isOnQuest 13786
	.mob Converted Hero


step -- At The Enemy's Gates
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila e depois monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r << Alliance
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois Monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r << Horde
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46070
	.isOnQuest 13859
	.target Stabled Campaign Warhorse
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.complete 13859,2 -- Boneguard Scout slain (10)
	.isOnQuest 13859
	.mob Boneguard Scout
step
	>>Abate os |cRXP_ENEMY_Boneguard Footmen|r usando seu |cRXP_FRIENDLY_Cavalo de Guerra|r para passar por cima e matá-los instantaneamente
	>>Abate os |cRXP_ENEMY_Boneguard Lieutenants|r. Acumule cargas de |T132360:0|tDefender (4) e mantenha-as. Usar |T132358:0|tQuebra-escudo (2) para remover o escudo deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	.complete 13859,1 -- Boneguard Footman slain (15)
	.complete 13859,3 -- Boneguard Lieutenant slain (3)
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.isOnQuest 13859
	.mob Boneguard Footman
	.mob Boneguard Lieutenant
step
	>>Abate os |cRXP_ENEMY_Ossoguarda Batedores|r (Gárgulas voadoras) usando |T132358:0|tQuebra-escudo (2) neles
	.goto IcecrownGlacier,51.77,74.97,50,0
	.goto IcecrownGlacier,53.30,73.72,50,0
	.goto IcecrownGlacier,51.75,70.97,50,0
	.goto IcecrownGlacier,49.68,73.21,50,0
	.goto IcecrownGlacier,47.24,73.07,50,0
	.goto IcecrownGlacier,48.80,77.11,50,0
	.goto IcecrownGlacier,50.45,74.34,50,0
	.goto IcecrownGlacier,52.36,73.07,50,0
	.goto IcecrownGlacier,52.36,73.07
	.complete 13859,2 -- Boneguard Scout slain (10)
	.isOnQuest 13859
	.mob Boneguard Scout


step -- A Worthy Weapon v2
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Colete |cRXP_PICK_Winter Hyacinth|r na Barragem do Ironwall na fronteira entre Coroa de Gelo e Floresta do Canto Cristalino
	>>Crescem das rochas
	.goto IcecrownGlacier,69.25,76.02,15,0
	.goto IcecrownGlacier,70.05,75.19,15,0
	.goto IcecrownGlacier,71.07,73.20,15,0
	.goto IcecrownGlacier,72.07,73.02,15,0
	.goto IcecrownGlacier,73.42,73.59,15,0
	.goto IcecrownGlacier,69.25,76.02
	.collect 45000,4
	.isOnQuest 13784
step
	#completewith next
	.goto Dragonblight,93.18,26.00
	.zone Dragonblight >>Viaje para Drak'Mar Lake no nordeste de Ermo das Serpes
	.isOnQuest 13784
step
	.goto Dragonblight,93.18,26.00
	.use 45000 >>Usar |T134195:0|t|cFFFFFF99Inverno Hyacinth|r na mochila enquanto estiver no centro de Drak'Mar Lake
	>>Espere a encenação da Donzela de Drak'Mar e então saqueie o |cRXP_PICK_Lâmina de Drak'Mar|r
	.cast 62629
	.timer 21,Encenação da Donzela de Drak'Mar
	.complete 13784,1 -- Blade of Drak'Mar (1)
	.isOnQuest 13784

step -- The Edge Of Winter v2
	#completewith next
	.goto CrystalsongForest,55.05,75.04
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
	.isOnQuest 13785
step
	.goto CrystalsongForest,55.05,75.04
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	>>Abate o |cRXP_ENEMY_Lorde Flameternus|r. Saque-o para obter o |cRXP_LOOT_Everburning Ember|r
	.collect 45005,1 -- Everburning Ember
	.mob Lord Everblaze
	.isOnQuest 13785
step
	#completewith next
	.goto HowlingFjord,42.18,19.65
	.zone HowlingFjord >>Viaje para o Lago do Sopro de Inverno no norte de Fiorde Uivante
	.isOnQuest 13785
step
	.goto HowlingFjord,42.18,19.65
	.use 45005 >>Usar |T135488:0|t|c99ffff99Everburning Ember|r na mochila para liberar a Donzela do Lago Sopro Invernal
	.complete 13785,1 -- Winter's Edge (1)
	.target Maiden of Winter's Breath Lake
	.isOnQuest 13785

step -- A Blade Fit For A Champion v2
	#completewith next
	.goto Grizzly Hills,60.83,51.36
	.zone Grizzly Hills >>Viaje para Serra Gris
	.isOnQuest 13783
step
	.goto Grizzly Hills,60.83,51.36,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,61.89,48.56,10,0
	.goto Grizzly Hills,61.12,49.52,10,0
	.goto Grizzly Hills,60.75,50.46,10,0
	.goto Grizzly Hills,61.89,48.56
	.use 44986 >>Usar |T134721:0|t|c99ffff99Protetor Labial Xô-verruga|r na mochila toda vez antes de tentar /kiss nos Sapos do Lago
	>>Clique nos Sapos do Lago para beijá-los automaticamente. Se isso não funcionar, digite /kiss
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEventualmente um dos Sapos do Lago se transformará em um Humano. Fale com ele para receber o |cRXP_PICK_Ashwood Brand|r
	>>|cRXP_WARN_Lembre-se de equipar sua arma|r
	.emote KISS,33211
	.emote KISS,33224
	.skipgossip
	.complete 13783,1 -- Ashwood Brand (1)
	.target Lake Frog
	.target Maiden of Ashwood Lake
	.isOnQuest 13783
step
	.goto IcecrownGlacier,76.27,24.38,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13783,13785,13784,13786,13787,13859
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r, |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.turnin 13783 >>Entregue Uma Espada Digna de um Campeão
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >>Entregue A Grande Escaramuça
	.turnin 13859 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13783 -- A Blade Fit For A Champion
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r, |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.turnin 13785 >>Entregue Limiar do Inverno
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >>Entregue A Grande Escaramuça
	.turnin 13859 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13785 -- The Edge Of Winter
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r, |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.turnin 13784 >>Entregue Uma Arma de Valor
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13786 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.turnin 13787 >>Entregue A Grande Escaramuça
	.turnin 13859 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Eressea Dawnsinger
	.target Kethiel Sunlance
	.target Aneera Thuron
	.isQuestComplete 13784 -- A Worthy Weapon
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kethiel Arrebol|r e |cRXP_FRIENDLY_Aníra Thuron|r
	.turnin -13786 >>Entregue Treinamento de Campo de um Valente
	.goto IcecrownGlacier,76.41,23.75
	.turnin -13787 >>Entregue A Grande Escaramuça
	.turnin -13859 >>Entregue Nos Portões Inimigos
	.goto IcecrownGlacier,76.52,23.93
	.target Kethiel Sunlance
	.target Aneera Thuron
step -- Checking if they have 25 Valiant's Seals after a set of turn ins.
	>>Para completar |cFFffff00A Investida do Valente|r e progredir nos |T236690:0|tArgent Torneio Grounds você deve completar missões diárias e adquirir |T133441:0|t|c99CCFFFFValiant's Seal|r
	>>Você precisa de |T133441:0|t|c99CCFFFF25 Valiant's Seal|r. Você ganhará 5 por dia se completar as 4 missões diárias
	>>|c99ffff99RECARREGUE O GUIA NO PRÓXIMO DIA SE VOCÊ AINDA PRECISAR COMPLETAR AS MISSÕES DIÁRIAS ATÉ PODER ENTREGAR ESTA MISSÃO|r.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r
	.goto IcecrownGlacier,76.45,23.85
	.complete 13722,1 >>Entregue A Investida do Valente -- Valiant's Seal (25)
	.turnin 13722 >>Entregue A Investida do Valente
	.accept 13731 >>Aceite O Desafio do Valente
	.target Eressea Dawnsinger
step -- The Valiant's Challenge
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Falcostruz de Luaprata Abrigado
	>>Se você extraviou seu |T135128:0|t|c99ffff99Lança da Horda|r, você pode pegar outro logo dentro do Pavilion
	.goto IcecrownGlacier,75.54,24.14
	.use 46070
	.target Stabled Silvermoon Hawkstrider
	.isOnQuest 13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escolta Danny|r
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Espere o |cRXP_ENEMY_Campeão Argênteo|r chegar e derrote-o
	.goto IcecrownGlacier,68.60,20.99
	.complete 13731,1 -- Argent Champion defeated (1)
	.skipgossip
	.timer 12,Chegada do Campeão Argênteo
	.mob Argent Champion
	.isOnQuest 13731
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Erasséa Cantalva|r
	.goto IcecrownGlacier,76.45,23.85
	.turnin 13731 >>Entregue O Desafio do Valente
	.target Eressea Dawnsinger
step
	.goto IcecrownGlacier,76.17,24.21
	+|cRXP_WARN_Você é agora um |T255136:0|tCampeão de Luaprata!|r
	>>|cRXP_LOOT_Você terminou com o Guia do Campeão de Luaprata!|r
	>>|cRXP_LOOT_Você agora tem a escolha de se tornar um|r |cRXP_WARN_Campeão|r |cRXP_LOOT_de outra|r |cRXP_WARN_corrida|r|cRXP_LOOT_|r
	>>|cRXP_LOOT_Carregar o |cRXP_FRIENDLY_2.0|r Guia para qualquer|r |cRXP_WARN_corrida|r |cRXP_LOOT_que você escolher perseguir próximo!|r
	>>|cRXP_LOOT_OU
	>>|cRXP_LOOT_Você pode começar|r |cRXP_ENEMY_3.0|r |cRXP_LOOT_Missões Diárias de Campeão|r
	.isQuestTurnedIn 13731
]])



RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name G_2.1_AT_A_História_do_Cavaleiro_Preto
#displayname |cRXP_PICK_2.1|r - A História da Missão do Cavaleiro Negro

step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.accept 13633 >>Aceite O Cavaleiro Negro de Cerro Oeste? << Alliance
	.accept 13634 >>Aceite O Cavaleiro Negro de Pinhaprata? << Horde
	.target Crusader Rhydalla
step << Mage
	.zone Stormwind City >>Teleporte para Ventobravo << Alliance
	.zone Undercity >>Teleporte para Undercity << Horde
	.isOnQuest 13633,13634
step << Alliance !Mage
    .goto Dalaran,40.11,62.81
	.zone Stormwind City >>Use o Portal de Dalaran para Ventobravo
	.isOnQuest 13633
step << Alliance
	#completewith next
	.goto StormwindClassic,66.2,62.2
	.fly Westfall >>Voe para Cerro Oeste
	.isOnQuest 13633
step << Alliance
	>>Vá para Moonbrook. Pegue o |cRXP_PICK_Dusty Diário|r dentro da casa
	.goto Westfall,42.09,69.66
	.complete 13633,1 -- Dusty Journal (1)
	.isOnQuest 13633
step << Horde !Mage
    .goto Dalaran,55.64,23.85
	.zone Undercity >>Use o Portal de Dalaran para Undercity
	.isOnQuest 13634
step << Horde
	#completewith next
	.goto Undercity,63.25,48.56
	.fly Silverpine >>Voe para Floresta de Pinhaprata
	.isOnQuest 13634
step << Horde
	>>Vá para Valgan's Field. Pegue o |cRXP_PICK_Dusty Diário|r dentro da casa
	.goto Silverpine Forest,52.85,27.92,8,0
	.goto Silverpine Forest,53.17,28.10
	.complete 13634,1 -- Dusty Journal (1)
	.isOnQuest 13634
step << Mage
	#completewith next
	.zone Dalaran >>Vá para Dalaran
	.isOnQuest 13633,13634
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13633,13634
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13633 >>Entregue O Cavaleiro Negro de Cerro Oeste? << Alliance
	.turnin 13634 >>Entregue O Cavaleiro Negro de Pinhaprata? << Horde
	.accept 13641 >>Aceite O Cristal do Vidente
	.target Crusader Rhydalla
step << Mage
	#completewith next
	.zone Dalaran >>Vá para Dalaran
	.isOnQuest 13641
step
	#completewith next
	.isOnQuest 13641
	.goto CrystalsongForest,43.90,40.07
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
step
	>>Abate os |cRXP_ENEMY_Unbound Seers|r. Saqueie-os para o |cRXP_LOOT_Seer's Cristal|r
	.goto CrystalsongForest,43.90,40.07,30,0
	.goto CrystalsongForest,46.04,40.87,30,0
	.goto CrystalsongForest,48.62,39.37,30,0
	.goto CrystalsongForest,42.57,49.12,30,0
	.goto CrystalsongForest,46.04,40.87
	.complete 13641,1 -- Seer's Crystal (1)
	.mob Unbound Seer
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13641
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13641 >>Entregue O Cristal do Vidente
	.accept 13643 >>Aceite As Histórias que os Mortos Contam
	.target Crusader Rhydalla
step
	>>Vá para o leste até o Cemitério do |T236690:0|tArgent Torneio Grounds
	.use 45070 >>Usar o |T132775:0|t|cFFFFFF99Seer's Cristal|r na mochila nos Túmulos
	.complete 13643,1 -- Sir Wendell Balfour's death investigated
	.goto IcecrownGlacier,79.37,23.09
	.complete 13643,3 -- Conall Irongrip's death investigated
	.goto IcecrownGlacier,79.64,22.85
	.complete 13643,2 -- Lorien Sunblaze's death investigated
	.goto IcecrownGlacier,79.63,23.57
	.isOnQuest 13643
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13643 >>Entregue As Histórias que os Mortos Contam
	.accept 13654 >>Aceite Há Algo Sobre o Escudeiro
	.target Crusader Rhydalla
step << Mage
	#completewith next
	.zone Dalaran >>Vá para Dalaran
	.isOnQuest 13654
step
	#completewith next
	.isOnQuest 13654
	.goto CrystalsongForest,37.48,57.47
	.zone CrystalsongForest >>Viaje para a Floresta do Canto Cristalino
step
	>>Abate os |cRXP_ENEMY_Skeletal Woodcutters|r. Saqueie-os para um |cRXP_LOOT_Large Femur|r
	.goto CrystalsongForest,37.48,57.47,15,0
	.goto CrystalsongForest,36.68,61.93,15,0
	.goto CrystalsongForest,40.81,60.25,15,0
	.goto CrystalsongForest,38.17,57.37,15,0
	.goto CrystalsongForest,36.68,61.93
	.collect 45080,1 -- Large Femur
	.mob Skeletal Woodcutter
	.isOnQuest 13654
step
	>>|cRXP_WARN_STAND BEHIND MALORIC|r
	.use 45080 >>Usar o |T133727:0|t|cFFFFFF99Large Femur|r na mochila em |cRXP_ENEMY_Maloric|r
	>>Quando ele estiver incapacitado, saque-o para o |cRXP_LOOT_Murderer's Toolkit|r
	.goto CrystalsongForest,38.19,59.49
	.complete 13654,1 -- Murderer's Toolkit (1)
	.isOnQuest 13654
	.mob Maloric
step
	#completewith next
	.goto IcecrownGlacier,69.43,23.02,500 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo
	.isOnQuest 13654
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13654 >>Entregue Há Algo Sobre o Escudeiro
	.accept 13663 >>Aceite As Ordens do Cavaleiro Negro
	.target Crusader Rhydalla
step
	.use 45083 >>Usar o |T133331:0|t|cFFFFFF99Enchanted Bridle|r na mochila no |cRXP_FRIENDLY_Grifo do Cavaleiro Negro|r
	>>O Grifo RP leva aproximadamente 1min40sec
	.goto IcecrownGlacier,77.77,21.61
	.cast 63163
	.timer 100,Grifo do Cavaleiro Negro RP
	.complete 13663,1 -- Black Knight's Gryphon taken
	.isOnQuest 13663
	.target Black Knight's Gryphon
step
	>>Pegue o |cRXP_LOOT_Stolen Torneio Convite|r e |cRXP_LOOT_Black Cavaleiro's Orders|r dentro da pequena cabana
	.complete 13663,2 -- Stolen Tournament Invitation
	.goto IcecrownGlacier,54.07,8.66
	.complete 13663,3 -- Black Knight's Orders
	.goto IcecrownGlacier,54.10,8.63
	.isOnQuest 13663
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13663 >>Entregue As Ordens do Cavaleiro Negro
	.target Crusader Rhydalla
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	>>NOTA: Aceitar esta missão requer que você seja um |cRXP_WARN_Campeão|r. Se você não conseguir aceitar esta missão, complete o |cRXP_LOOT_1.0|r Becoming a Campeão Guia
	.goto IcecrownGlacier,69.43,23.02
	.accept 13664 >>Aceite A Queda do Cavaleiro Negro
	.target Crusader Rhydalla
step
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o |cRXP_FRIENDLY_Cavalo de Guerra Argênteo|r << Alliance
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o |cRXP_FRIENDLY_Cavalo de Guerra Argênteo|r << Horde
	>>Se você perdeu sua |T135128:0|t|c99ffff99Lança|r, há Racks por todo o Estábulo.
	.use 46069 << Alliance
	.use 46070 << Horde
	.goto IcecrownGlacier,72.30,22.55
	.target Stabled Argent Warhorse
	.isOnQuest 13664
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Escudeiro Calvino|r
	>>Lembre-se de usar |T132360:0|tDefender (4). Usar |T132226:0|tInvestida (3) junto com |T135375:0|tEstocada (1) e |T132358:0|tQuebra-escudo (2) se estiver à distância
	>>|cRXP_ENEMY_O Cavaleiro Negro|r vai desmontar você quando sua vida chegar a 0
	>>|cRXP_WARN_Lembre-se de equipar sua Arma!|r
	>>Abate o |cRXP_ENEMY_O Cavaleiro Negro|r
	.goto IcecrownGlacier,71.35,23.14
	.complete 13664,1 -- The Black Knight slain
	.skipgossip
	.timer 14,O Cavaleiro Negro Chegada
	.target Squire Cavin
	.mob The Black Knight
	.isOnQuest 13664
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 13664 >>Entregue A Queda do Cavaleiro Negro
	.target Crusader Rhydalla

step -- 14016 and 14017 added in 3.2 - Add in Phase 3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.accept 14016 >>Aceite A Maldição do Cavaleiro Negro
	.target Crusader Rhydalla
step
	>>Vá para o leste até o Cemitério do |T236690:0|tArgent Torneio Grounds
	>>Mate os |cRXP_ENEMY_Assassino da Seita|r após a breve encenação
	.goto IcecrownGlacier,79.50,23.27
	.complete 14016,1 -- Investigate the Black Knight's Grave
	.isOnQuest 14016
	.target Cult Assassin
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 14016 >>Entregue A Tumba do Cavaleiro Negro
	.accept 14017 >>Aceite O Destino do Cavaleiro Negro
	.target Crusader Rhydalla
step
	>>Voe para o leste até a Vigia do Morta-voz
	>>Mate o |cRXP_ENEMY_Doutor Kolher|r. Saque-o por seus |cRXP_LOOT_Orders|r
	>>Ele patrulha ao redor na plataforma
	.goto IcecrownGlacier,61.19,22.41
	.complete 14017,1 -- Doctor Kohler's Orders (1)
	.isOnQuest 14017
	.target Doctor Kolher
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Cruzada Rhydalla|r
	.goto IcecrownGlacier,69.43,23.02
	.turnin 14017 >>Entregue A Sepultura do Cavaleiro Negro
	.target Crusader Rhydalla
step
	+Este é o fim da História do |cRXP_WARN_The Preto Cavaleiro's|cRXP_ENEMY_!|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name H_3_AT_Campeão_Daily_Quests
#displayname |cRXP_ENEMY_3.0|r - Missões Diárias de Campeão

step
	>>Para acessar as Missões Diárias de Campeão, você deve ter completado o |cRXP_LOOT_1.0|r Guia Becoming a Campeão
	>>Se você não consegue aceitar nenhuma missão, certifique-se de que foi completada
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Justicar Mariel Veras|r
	.goto IcecrownGlacier,69.66,22.86
	.accept 13794 >>Aceite Eadric, o Puro << !DK
	.accept 13795 >>Aceite O Flagelicida << DK
	.target Justicar Mariel Trueheart
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eadric, o Puro|r
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13794 >>Entregue Eadric, o Puro
	.target Eadric the Pure
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crok Flagelicida|r
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13795 >>Entregue O Flagelicida
	.target Crok Scourgebane
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eadric, o Puro|r, |cRXP_FRIENDLY_Luuri|r e |cRXP_FRIENDLY_Cellian Raiadiem|r
	.daily 13682 >>Aceite A Ameaça Vem de Cima << Alliance
	.daily 13809 >>Aceite A Ameaça Vem de Cima << Horde
	.daily 13861 >>Aceite Batalha Diante da Cidadela << Alliance
	.daily 13862 >>Aceite Batalha Diante da Cidadela << Horde
	.goto IcecrownGlacier,69.96,23.44
	.daily 13790 >>Aceite Entre Campeões << Alliance
	.daily 13811 >>Aceite Entre Campeões << Horde
	.goto IcecrownGlacier,69.93,23.33
	.daily 13789 >>Aceite Levar a Batalha ao Inimigo << Alliance
	.daily 13810 >>Aceite Levando a Batalha ao Inimigo << Horde
	.goto IcecrownGlacier,69.92,23.53
	.isQuestTurnedIn 13664 -- Must complete 13664 to accept Threat From Above
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eadric, o Puro|r, |cRXP_FRIENDLY_Luuri|r e |cRXP_FRIENDLY_Cellian Raiadiem|r
	.daily 13861 >>Aceite Batalha Diante da Cidadela << Alliance
	.daily 13862 >>Aceite Batalha Diante da Cidadela << Horde
	.goto IcecrownGlacier,69.96,23.44
	.daily 13790 >>Aceite Entre Campeões << Alliance
	.daily 13811 >>Aceite Entre Campeões << Horde
	.goto IcecrownGlacier,69.93,23.33
	.daily 13789 >>Aceite Levar a Batalha ao Inimigo << Alliance
	.daily 13810 >>Aceite Levar a Batalha ao Inimigo << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crok Flagelicida|r, |cRXP_FRIENDLY_Illyrie Cadenoctis|r e |cRXP_FRIENDLY_Zor'be, o Dessangrador|r
	.daily 13788 >>Aceite A Ameaça Vem de Cima << Alliance
	.daily 13812 >>Aceite A Ameaça Vem de Cima << Horde
	.daily 13864 >>Aceite Batalha Diante da Cidadela << Alliance
	.daily 13863 >>Aceite Batalha Diante da Cidadela << Horde
	.goto IcecrownGlacier,73.80,20.06
	.daily 13793 >>Aceite Entre Campeões << Alliance
	.daily 13814 >>Aceite Entre Campeões << Horde
	.goto IcecrownGlacier,73.59,20.08
	.daily 13791 >>Aceite Levar a Batalha ao Inimigo << Alliance
	.daily 13813 >>Aceite Levar a Batalha ao Inimigo << Horde
	.goto IcecrownGlacier,73.80,19.45
	.isQuestTurnedIn 13664
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crok Flagelicida|r, |cRXP_FRIENDLY_Illyrie Cadenoctis|r e |cRXP_FRIENDLY_Zor'be, o Dessangrador|r
	.daily 13864 >>Aceite Batalha Diante da Cidadela << Alliance
	.daily 13863 >>Aceite Batalha Diante da Cidadela << Horde
	.goto IcecrownGlacier,73.80,20.06
	.daily 13793 >>Aceite Entre Campeões << Alliance
	.daily 13814 >>Aceite Entre Campeões << Horde
	.goto IcecrownGlacier,73.59,20.08
	.daily 13791 >>Aceite Levar a Batalha ao Inimigo << Alliance
	.daily 13813 >>Aceite Levar a Batalha ao Inimigo << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step << !DK Alliance -- Among the Champions
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Elekk da Exodar Abrigado << Draenei
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Carneiro de Altaforja Abrigado << Dwarf
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Mecanostruz de Gnomeregan Abrigado << Gnome
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Corcel de Ventobravo Abrigado << Human
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Sabre-da-noite Darnassiano Abrigado << NightElf
	>>Se você perdeu sua |T135128:0|t|c99ffff99Lança da Aliança|r, há Racks por todo o Estábulo.
	.goto IcecrownGlacier,71.56,22.41 << Human
	.goto IcecrownGlacier,71.62,22.50 << NightElf
	.goto IcecrownGlacier,71.68,22.38 << Draenei
	.goto IcecrownGlacier,71.80,22.50 << Dwarf
	.goto IcecrownGlacier,71.93,22.51 << Gnome
	.use 46069
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.isOnQuest 13790
step << !DK Alliance -- Among the Champions
	>>Vá para o Anel dos Campeões
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Campeão|r. Todos podem ser desafiados em um Duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Campeão|r diferente 4 vezes em um Duelo
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13790,1 -- Mark of the Champion (4)
	.isOnQuest 13790
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << !DK Horde -- Among the Champions
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Cavalo de Guerra dos Renegados Abrigado << Scourge
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Lobo de Orgrimmar Abrigado << Orc
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Kodo do Penhasco do Trovão Abrigado << Tauren
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Raptor Lançanegra Abrigado << Troll
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Falcostruz de Luaprata Abrigado << BloodElf
	>>Se você perdeu sua |T135128:0|t|c99ffff99Lança da Horda|r, há Racks por todos os Estábulos
	.goto IcecrownGlacier,72.04,22.54 << Troll
	.goto IcecrownGlacier,72.08,22.45 << Scourge
	.goto IcecrownGlacier,72.17,22.53 << Orc
	.goto IcecrownGlacier,72.20,22.46 << BloodElf
	.goto IcecrownGlacier,71.86,22.39 << Tauren
	.use 46070
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13811
step << !DK Horde -- Among the Champions
	>>Vá para o Anel dos Campeões
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Campeão|r. Todos eles podem ser desafiados para um Duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Campeão|r diferente 4 vezes em um Duelo
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13811,1 -- Mark of the Champion (4)
	.isOnQuest 13811
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << DK Alliance -- Among the Champions
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Elekk da Exodar Abrigado << Draenei
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Carneiro de Altaforja Abrigado << Dwarf
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Mecanostruz de Gnomeregan Abrigado << Gnome
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Corcel de Ventobravo Abrigado << Human
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Aliança|r na mochila, depois monte o Sabre-da-noite Darnassiano Abrigado << NightElf
	>>Se você perdeu sua |T135128:0|t|c99ffff99Lança da Aliança|r, há Racks por todo o Estábulo.
	.goto IcecrownGlacier,71.56,22.41 << Human
	.goto IcecrownGlacier,71.62,22.50 << NightElf
	.goto IcecrownGlacier,71.68,22.38 << Draenei
	.goto IcecrownGlacier,71.80,22.50 << Dwarf
	.goto IcecrownGlacier,71.93,22.51 << Gnome
	.use 46069
	.target Stabled Exodar Elekk << Draenei
	.target Stabled Ironforge Ram << Dwarf
	.target Stabled Gnomeregan Mechanostrider << Gnome
	.target Stabled Stormwind Steed << Human
	.target Stabled Darnassian Nightsaber << NightElf
	.isOnQuest 13793
step << DK Alliance -- Among the Champions
	>>Vá para o Anel dos Campeões
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Campeão|r. Todos eles podem ser desafiados para um Duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Campeão|r diferente 4 vezes em um Duelo
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13793,1 -- Mark of the Champion (4)
	.isOnQuest 13793
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step << DK Horde -- Among the Champions
	#completewith next
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Cavalo de Guerra dos Renegados Abrigado << Scourge
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Lobo de Orgrimmar Abrigado << Orc
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Kodo do Penhasco do Trovão Abrigado << Tauren
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Raptor Lançanegra Abrigado << Troll
	.vehicle >>Equipe o |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois monte o Falcostruz de Luaprata Abrigado << BloodElf
	>>Se você perdeu sua |T135128:0|t|c99ffff99Lança da Horda|r, há Racks por todo o Estábulo
	.goto IcecrownGlacier,72.04,22.54 << Troll
	.goto IcecrownGlacier,72.08,22.45 << Scourge
	.goto IcecrownGlacier,72.17,22.53 << Orc
	.goto IcecrownGlacier,72.20,22.46 << BloodElf
	.goto IcecrownGlacier,71.86,22.39 << Tauren
	.use 46070
	.target Stabled Forsaken Warhorse << Scourge
	.target Stabled Orgrimmar Wolf << Orc
	.target Stabled Thunder Bluff Kodo << Tauren
	.target Stabled Darkspear Raptor << Troll
	.target Stabled Silvermoon Hawkstrider << BloodElf
	.isOnQuest 13814
step << DK Horde -- Among the Champions
	>>Vá para o Anel dos Campeões
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com qualquer |cRXP_ENEMY_Campeão|r. Todos eles podem ser desafiados para um Duelo
	>>Lembre-se de usar |T132360:0|tDefender (4) e mantenha suas pilhas durante o Duelar
	>>|T132358:0|tUse |T132360:0|tQuebra-escudo (2) para remover pilhas de Defensor do |cRXP_ENEMY_Campeão|r constantemente
	>>|T132360:0|tUma vez que não haja pilhas de Defensor no |cRXP_ENEMY_Campeão|r, use |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1) enquanto estiver em alcance de combate corpo a corpo
	>>Ao fim do duelo, use |T134058:0|tRefrescar Montaria (5) para curar até máximo HP
	>>Derrote um |cRXP_ENEMY_Campeão|r diferente 4 vezes em um Duelo
	.goto IcecrownGlacier,71.67,23.21,10,0
	.goto IcecrownGlacier,72.03,23.22,10,0
	.goto IcecrownGlacier,72.36,23.25,10,0
	.goto IcecrownGlacier,72.52,24.15,10,0
	.goto IcecrownGlacier,72.15,24.49,10,0
	.goto IcecrownGlacier,71.66,24.48,10,0
	.goto IcecrownGlacier,71.22,24.51,10,0
	.goto IcecrownGlacier,70.91,24.39,10,0
	.goto IcecrownGlacier,70.76,23.63,10,0
	.goto IcecrownGlacier,71.00,23.19
	.complete 13814,1 -- Mark of the Champion (4)
	.isOnQuest 13814
	.skipgossip
	.mob Stormwind Champion
	.mob Ironforge Champion
	.mob Gnomeregan Champion
	.mob Darnassus Champion
	.mob Exodar Champion
	.mob Thunder Bluff Champion
	.mob Silvermoon Champion
	.mob Sen'jin Champion
	.mob Orgrimmar Champion
	.mob Undercity Champion
step
	#completewith next
	.goto IcecrownGlacier,55.23,32.26,60 >>|cRXP_WARN_Lembre-se de equipar sua arma!|r
	.isOnQuest 13789,13810,13791,13813
step -- Taking Battle To The Enemy
	>>Mate qualquer membro do |cRXP_ENEMY_Cult of the Maldição|r
	>>Isso inclui |cRXP_ENEMY_Blackguards|r, |cRXP_ENEMY_Torturers|r, |cRXP_ENEMY_Alchemists|r ou |cRXP_ENEMY_Apothecary|r
	.goto IcecrownGlacier,55.23,32.26,60,0
	.goto IcecrownGlacier,53.47,33.10,60,0
	.goto IcecrownGlacier,53.98,35.81,60,0
	.goto IcecrownGlacier,52.25,33.90,60,0
	.goto IcecrownGlacier,50.66,33.76,60,0
	.goto IcecrownGlacier,48.95,34.32,60,0
	.goto IcecrownGlacier,49.22,31.45,60,0
	.goto IcecrownGlacier,55.23,32.26
	.complete 13789,1 << !DK Alliance -- Cult of the Damned member slain (15)
	.complete 13810,1 << !DK Horde -- Cult of the Damned member slain (15)
	.complete 13791,1 << DK Alliance -- Cult of the Damned member slain (15)
	.complete 13813,1 << DK Horde -- Cult of the Damned member slain (15)
	.isOnQuest 13789,13810,13791,13813
	.mob Cult Blackguard
	.mob Overseer Jhaeqon
	.mob Vile Torturer
	.mob Damned Apothecary
	.mob Cult Alchemist
	.mob Overseer Savryn
step -- Threat From Above
	.goto IcecrownGlacier,47.12,33.26,65,0
	.goto IcecrownGlacier,45.72,35.25,65,0
	.goto IcecrownGlacier,43.85,33.47,65,0
	.goto IcecrownGlacier,45.42,31.95,65,0
	.goto IcecrownGlacier,47.12,33.26
    .line IcecrownGlacier,45.11,31.99,45.80,32.16,46.19,32.24,46.58,32.39,46.93,32.75,47.05,33.02,47.23,33.61,46.91,34.13,46.47,35.04,45.98,35.23,45.42,35.43,44.80,34.97,44.09,34.04,43.85,33.00,44.37,32.12,45.11,31.99
	>>Procure |cRXP_ENEMY_Chillmaw|r voando no ar
	>>Mate o |cRXP_ENEMY_Chillmaw|r e os |cRXP_ENEMY_Cultist Bombardiers|r. Os |cRXP_ENEMY_Cultist Bombardiers|r saltarão de |cRXP_ENEMY_Chillmaw|r conforme a vida dele diminui para lutar contra você também.
	>>Esta missão é MUITO difícil. Encontre um grupo se necessário. Pule este passo se você não conseguir encontrar um grupo ou derrotá-lo sozinho.
	.complete 13682,1 << !DK Alliance -- Chillmaw slain (1)
	.complete 13682,2 << !DK Alliance -- Cultist Bombardier slain (3)
	.complete 13809,1 << !DK Horde -- Chillmaw slain (1)
	.complete 13809,2 << !DK Horde -- Cultist Bombardier slain (3)
	.complete 13788,1 << DK Alliance -- Chillmaw slain (1)
	.complete 13788,2 << DK Alliance -- Cultist Bombardier slain (3)
	.complete 13812,1 << DK Horde -- Chillmaw slain (1)
	.complete 13812,2 << DK Horde -- Cultist Bombardier slain (3)
	.isOnQuest 13682,13809,13788,13812
	.unitscan Boneguard Commander
	.mob Cultist Bombardier
step -- Battle Before The Citadel
	#completewith next
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Aliança|r na mochila e depois monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r << Alliance
	.vehicle >>Equipe a |T135128:0|t|c99ffff99Lança da Horda|r na mochila, depois Monte o |cRXP_FRIENDLY_Cavalo de Guerra de Campanha Abrigado|r << Horde
	>>Há um |T135128:0|t|c99ffff99Suporte de Lança|r bem ao lado da Barricada se você precisar de outro
	.goto IcecrownGlacier,48.87,71.78
	.use 46069 << Alliance
	.use 46070 << Horde
	.isOnQuest 13861,13862,13864,13863
	.target Stabled Campaign Warhorse
step -- Battle Before The Citadel
	>>Mate os |cRXP_ENEMY_Boneguard Commanders|r
	>>Acumule |T132360:0|tDefensor (4) e mantenha-o. Usar |T132358:0|tQuebra-escudo (2) para remover os escudos deles, depois |T132226:0|tInvestida (3) e |T135375:0|tEstocada (1)
	>>Você pode usar seu |cRXP_FRIENDLY_Cavalo de Guerra|r para atropelar e matar os |cRXP_ENEMY_Footmen|r chatos instantaneamente.
	>>Usar |T132358:0|tQuebra-escudo (2) em qualquer |cRXP_ENEMY_Boneguard Batedores (flying Gargoyles)|r que atacar
	.goto IcecrownGlacier,50.42,76.30,40,0
	.goto IcecrownGlacier,50.86,77.73,40,0
	.goto IcecrownGlacier,51.44,79.44,40,0
	.goto IcecrownGlacier,50.42,76.30
	.complete 13861,1 << !DK Alliance -- Boneguard Commander slain (3)
	.complete 13862,1 << !DK Horde -- Boneguard Commander slain (3)
	.complete 13864,1 << DK Alliance -- Boneguard Commander slain (3)
	.complete 13863,1 << DK Horde -- Boneguard Commander slain (3)
	.isOnQuest 13861,13862,13864,13863
	.mob Boneguard Commander
step
	.goto IcecrownGlacier,69.96,23.44,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << !DK
	.isOnQuest 13682,13809,13861,13862,13790,13811,13789,13810
step
	.goto IcecrownGlacier,73.80,20.06,300 >>Volte para o |T236690:0|tTerrenos do Torneio Argent em Coroa de Gelo << DK
	.isOnQuest 13788,13812,13864,13863,13793,13814,13791,13813
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eadric, o Puro|r, |cRXP_FRIENDLY_Luuri|r e |cRXP_FRIENDLY_Cellian Raiadiem|r
	.turnin 13682 >>Entregue A Ameaça Vem de Cima << Alliance
	.turnin 13809 >>Entregue A Ameaça Vem de Cima << Horde
	.turnin 13861 >>Entregue Batalha Diante da Cidadela << Alliance
	.turnin 13862 >>Entregue Batalha Diante da Cidadela << Horde
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13790 >>Entregue Entre Campeões << Alliance
	.turnin 13811 >>Entregue Entre Campeões << Horde
	.goto IcecrownGlacier,69.93,23.33
	.turnin 13789 >>Entregue Levando a Batalha ao Inimigo << Alliance
	.turnin 13810 >>Entregue Levando a Batalha ao Inimigo << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
	.isQuestComplete 13682 << Alliance
	.isQuestComplete 13809 << Horde
step << !DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eadric, o Puro|r, |cRXP_FRIENDLY_Luuri|r e |cRXP_FRIENDLY_Cellian Raiadiem|r
	.turnin 13861 >>Entregue Batalha Diante da Cidadela << Alliance
	.turnin 13862 >>Entregue Batalha Diante da Cidadela << Horde
	.goto IcecrownGlacier,69.96,23.44
	.turnin 13790 >>Entregue Entre Campeões << Alliance
	.turnin 13811 >>Entregue Entre Campeões << Horde
	.goto IcecrownGlacier,69.93,23.33
	.turnin 13789 >>Entregue Levando a Batalha ao Inimigo << Alliance
	.turnin 13810 >>Entregue Levando a Batalha ao Inimigo << Horde
	.goto IcecrownGlacier,69.92,23.53
	.target Eadric the Pure
	.target Luuri
	.target Cellian Daybreak
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crok Flagelicida|r, |cRXP_FRIENDLY_Illyrie Cadenoctis|r e |cRXP_FRIENDLY_Zor'be, o Dessangrador|r
	.turnin 13788 >>Entregue A Ameaça Vem de Cima << Alliance
	.turnin 13812 >>Entregue A Ameaça Vem de Cima << Horde
	.turnin 13864 >>Entregue Batalha Diante da Cidadela << Alliance
	.turnin 13863 >>Entregue Batalha Diante da Cidadela << Horde
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13793 >>Entregue Entre Campeões << Alliance
	.turnin 13814 >>Entregue Entre Campeões << Horde
	.goto IcecrownGlacier,73.59,20.08
	.turnin 13791 >>Entregue Levando a Batalha ao Inimigo << Alliance
	.turnin 13813 >>Entregue Levando a Batalha ao Inimigo << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
	.isQuestComplete 13788 << Alliance
	.isQuestComplete 13812 << Horde
step << DK
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crok Flagelicida|r, |cRXP_FRIENDLY_Illyrie Cadenoctis|r e |cRXP_FRIENDLY_Zor'be, o Dessangrador|r
	.turnin 13864 >>Entregue Batalha Diante da Cidadela << Alliance
	.turnin 13863 >>Entregue Batalha Diante da Cidadela << Horde
	.goto IcecrownGlacier,73.80,20.06
	.turnin 13793 >>Entregue Entre Campeões << Alliance
	.turnin 13814 >>Entregue Entre Campeões << Horde
	.goto IcecrownGlacier,73.59,20.08
	.turnin 13791 >>Entregue Levando a Batalha ao Inimigo << Alliance
	.turnin 13813 >>Entregue Levando a Batalha ao Inimigo << Horde
	.goto IcecrownGlacier,73.80,19.45
	.target Crok Scourgebane
	.target Illyrie Nightfall
	.target Zor'be the Bloodletter
step
	+|cRXP_WARN_Você terminou todas as missões diárias de Campeão para hoje! Recarregue este guia amanhã para continuar.|r
]])

-- The following are added in 3.2 - Implement in Phase 3

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name I_3.1_AT_Cruzado_Daily_Quests
#displayname |cRXP_ENEMY_3.1|r - Cruzado Daily Quests

step
	#completewith next
	+|cRXP_WARN_Fase 3 apresenta Cruzado Daily Quests|r
	>>Para acessar as Missões Diárias de Cruzado, você deve ter a conquista:
	.achievement 2817 << Alliance
	.achievement 2816 << Horde
step
	>>Entre no Argent Pavilion
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-cruzado Adelard|r e o |cRXP_FRIENDLY_Cruzado Albargenta|r.
	.daily 14105,14101,14102,14104 >>Aceite Morta-voz Kharos
	>>|c99ffff99OU|r Drottinn Hrothgar
	>>|c99ffff99OU|r Chamabruma Yngvar
	>>|c99ffff99OR|r Ornolf The Scarred
	.daily 14108,14107 >>Aceite Get Kraken!
	>>|c99ffff99OR|r O Destino dos Caídos
	.goto Icecrown,69.51,23.15
	.target High Crusader Adelard
	.target Crusader Silverdawn
step
	.isOnQuest 14105
	>>Vá para o Vigil de Morta-voz
	>>Abate |cRXP_ENEMY_Morta-voz Kharos|r
	.complete 14105,1
	.goto Icecrown,64.2,21.4
	.target Deathspeaker Kharos
step
	#completewith next
	.isOnQuest 14108
	.goto Icecrown,69.79,22.21,5 >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Hipogrifo Argênteo Abrigado|r fora do Pavilhão Argênteo.
	.skipgossip
step
	.isOnQuest 14108
	>>Lance |c99ffff99Flaming Lanças|r no |cRXP_ENEMY_Kraken do Mar do Norte|r e nos |cRXP_ENEMY_Kvaldir Deepcallers|r.
	.complete 14108,1
	.complete 14108,2
	.use 46954
	.mob North Sea Kraken
	.mob Kvaldir Deepcaller
step
	.isOnQuest 14101
	>>Vá para os Monumentos Tualiq no Pouso de Hrothgar.
	>>Usar o |c99ffff99Trompa de Guerra Kvaldir|r
	>>Abate o |cRXP_ENEMY_Drottinn Hrothgar|r
	.complete 14101,1
	.use 47006
	.goto Hrothgar's Landing,50.4,15.6
	.target Drottinn Hrothgar
step
	.isOnQuest 14102
	>>Vá para a Caverna de Mistcaller no Pouso de Hrothgar.
	>>Usar a |c99ffff99Sorte de Mistcaller|r
	>>Abate o |cRXP_ENEMY_Chamabruma Yngvar|r
	.complete 14102,1
	.use 47009
	.goto Hrothgar's Landing,43.8,24.6
	.target Mistcaller Yngvar
step
	.isOnQuest 14104
	>>Vá para o convés da Fúria de Bor no Pouso de Hrothgar.
	>>Usar o |c99ffff99Estandarte Capturado Kvaldir|r
	>>Abate o |cRXP_ENEMY_Ornolf The Scarred|r
	.complete 14104,1
	.use 47029
	.goto Hrothgar's Landing,58.6,31.6
step
	.isOnQuest 14107
	>>Saque |cRXP_PICK_Cristais de Alma Descartados|r no chão.
	>>Usar o |c99ffff99Light-Abençoado Relíquia|r nos Espíritos do Herói Caído.
	.collect 47035,6,14107,1,-1
	.complete 14107,1
	.use 47033
	.goto Icecrown,49.19,40.42
	.target Fallen Hero's Spirit
step
	>>Devolva ao Argent Pavilion
	.dailyturnin 14105,14101,14102,14104 >>Entregue Morta-voz Kharos
	>>|c99ffff99OR|r Drottinn Hrothgar
	>>|c99ffff99OR|r Chamabruma Yngvar
	>>|c99ffff99OU|r Ornolf The Scarred
	.dailyturnin 14108,14107 >>Entregue Get Kraken!
	>>|c99ffff99OU|r A Sina do Caído
	.goto Icecrown,69.51,23.15
	.target High Crusader Adelard
	.target Crusader Silverdawn
step
	+|cRXP_WARN_você terminou todas as missões diárias do Pacto Prateado para hoje! Recarregue este Guia amanhã para continuar.|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name J_3.2_AT_Silver_Covenant_Daily_Quests
#displayname |cRXP_ENEMY_3.2|r - Prateado Covenant Daily Quests
<< Alliance

step
	#completewith next
	+|cRXP_WARN_Fase 3 apresenta Prateado Covenant Daily Quests|r
	>>Para acessar Prateado Covenant Daily Quests, você deve estar Exaltado com o |cRXP_WARN_Silver Covenant|r e ser um |cRXP_ENEMY_Campeão|r, que concede a conquista:
	.achievement 3676,1
step
	>>Entre no Pavilhão de Aliança Prateado Covenant
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nasari Albaneve|r e |cRXP_FRIENDLY_Savinia Povocanto|r.
	.daily 14096 >>Aceite Dessa Vez Você Se Excedeu, Kul
	.daily 14074,14152,14080,14077 >>Aceite Um Empurrãozinho
	>>|c99ffff99OR|r Resgate at Sea
	>>|c99ffff99OR|r Detenha os Aggressors
	>>|c99ffff99OR|r A Misericórdia da Luz
	.daily 14076,14090,14112 >>Aceite O Café dos Campeões
	>>|c99ffff99OR|r Gormok Wants His Snobolds
	>>|c99ffff99OR|r What Do You Alimentar a Yeti, Anyway?
	.goto Icecrown,76.26,19.62
	.target Narasi Snowdawn
	.target Savinia Loresong
step
	.isOnQuest 14074
	>>Vá para o Pouso de Hrothgar
	>>Pegue |cRXP_LOOT_Stolen Moa Pernas|r do chão ou mate os |cRXP_ENEMY_Kvaldir mobs|r.
	.complete 14074,1
	.goto Hrothgar's Landing,43.4,29.8
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14152
	>>Vá para o barco da Aliança em Hrothgar's Pouso.
	>>Mate os |cRXP_ENEMY_Kvaldir Berserkers|r e os |cRXP_ENEMY_Kvaldir Harpooners|r.
	.complete 14152,1
	.complete 14152,2
	.goto Hrothgar's Landing,49.97,49.45
	.mob Kvaldir Berserker
	.mob Kvaldir Harpooner
step
	.isOnQuest 14080
	>>Vá para Hrothgar's Pouso
	>>Mate os |cRXP_ENEMY_Kvaldir Reavers|r ou os |cRXP_ENEMY_Ata-brumas Kvaldir|r.
	.complete 14080,1
	.goto Hrothgar's Landing,48.65,32.64
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14077
	>>Vá para o Pouso de Hrothgar
	>>Usar o |c99ffff99Confessor's Prayer Livro|r para realizar os últimos ritos para os |cRXP_FRIENDLY_Slain Tualiq Villagers|r.
	.complete 14077,1
	.use 46870
	.goto Hrothgar's Landing,51,30,10,0
	.goto Hrothgar's Landing,50.60,28.28,10,0
	.goto Hrothgar's Landing,51.84,26.61,10,0
	.goto Hrothgar's Landing,54.03,23.98,10,0
	.goto Hrothgar's Landing,55.65,25.20,10,0
	.goto Hrothgar's Landing,57.41,24.37,10,0
	.goto Hrothgar's Landing,57.10,21.39
	.target Slain Tualiq Villager
step
	.isOnQuest 14112
	#completewith next
	>>Pegue |cRXP_PICK_Fresh Isquinha|r dos baldes no barco da Aliança.
	.collect 47036,5
	.goto Icecrown,67.11,7.89
step
	.isOnQuest 14112
	>>Salte na água e use o |cRXP_PICK_Fresh Isquinha|r.
	>>Mate os |cRXP_ENEMY_Sharks|r para obter |cRXP_LOOT_North Sea Tubarão Carne|r.
	.complete 14112,1
	.use 47036
step
	.isOnQuest 14096
	>>Mate os |cRXP_ENEMY_Zelotes das Trevas|r e os |cRXP_ENEMY_Ritualistas da Escuridão|r para obter as |cRXP_PICK_Chaves de Jaula Preta|r.
	>>Usar as chaves para libertar os |cRXP_FRIENDLY_Captive Aspirants|r das jaulas.
	.collect 46895,5,14096,2,-1
    .complete 14096,2
	.goto Icecrown,65.17,22.19,15,0
	.goto Icecrown,64.66,21.74,15,0
	.goto Icecrown,63.04,21.32,15,0
	.goto Icecrown,61.42,20.74,15,0
	.goto Icecrown,60.25,21.08
	.mob Dark Zealot
	.mob Dark Ritualist
step
	.isOnQuest 14096
	>>Mate os |cRXP_ENEMY_Zelotes das Trevas|r e os |cRXP_ENEMY_Dark Ritualists|r para obter |cRXP_PICK_Black Jaula Keys|r.
	>>Liberte |cRXP_FRIENDLY_Kul the Imprudente|r de sua jaula.
    .complete 14096,1
	.goto Icecrown,60.82,23.15
step
	.isOnQuest 14076
	>>Vá para os Picos Tempestuosos
	>>Usar o |c99ffff99Earthshaker Tambor|r ao lado dos montes de neve.
	>>Mate os |cRXP_ENEMY_Deep Jormungars|r que aparecem para obter |cRXP_LOOT_Jormungar Ovo Sacs|r.
	.complete 14076,1
	.use 46893
	.goto The Storm Peaks,43.33,57.74
	.target Deep Jormungar
step
	.isOnQuest 14090
	>>Vá para os Picos Tempestuosos
	>>Usar a |c99ffff99Rede com Pandulho|r para capturar os |cRXP_ENEMY_Ceganeve Seguidores|r.
	.complete 14090,1
	.use 46885
	.goto The Storm Peaks,43.88,81.60
	.target Snowblind Follower
step
	>>Devolva para o Pavilhão da Aliança Prateado Covenant.
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nasari Albaneve|r e |cRXP_FRIENDLY_Savinia Povocanto|r.
	.dailyturnin 14096 >>Entregue Dessa Vez Você Se Excedeu, Kul
	.dailyturnin 14074,14152,14080,14077 >>Entregue Um Empurrãozinho
	>>|c99ffff99OR|r Resgate no Mar
	>>|c99ffff99OR|r Parar The Aggressors
	>>|c99ffff99OR|r A Misericórdia da Luz
	.dailyturnin 14076,14090,14112 >>Entregue O Café dos Campeões
	>>|c99ffff99OR|r Gormok Wants His Snobolds
	>>|c99ffff99OR|r O Que Você Alimentar um Yeti, Afinal?
	.goto Icecrown,76.26,19.62
	.target Narasi Snowdawn
	.target Savinia Loresong
step
	+|cRXP_WARN_você terminou todas as missões diárias do Pacto Prateado para hoje! Recarregue este Guia amanhã para continuar.|r
]])

RXPGuides.RegisterGuide([[
#wotlk
#cata
#mop
#version 1
#group Argent Torneio
#name J_3.2AT_Sunreavers_Daily_Quests
#displayname |cRXP_ENEMY_3.2|r - Sunreavers Daily Quests
<< Horde

step
	#completewith next
	+|cRXP_WARN_Fase 3 apresenta as missões diárias dos Sunreavers|r
	>>Para acessar as Missões Diárias dos Sunreavers, você deve ser Exaltado com o |cRXP_WARN_Sunreavers|r e ser um |cRXP_ENEMY_Campeão|r que dá a conquista:
	.achievement 3677,1
step
	>>Entre no Pavilhão Sunreaver
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Girana, a Ensanguentada|r e |cRXP_FRIENDLY_Tylos Aurovelos|r.
	.daily 14142 >>Aceite Você Realmente Fez Isso Este Tempo, Kul
	.daily 14143,14136,14140,14144 >>Aceite A Leg Up
	>>|c99ffff99OR|r Resgate no Mar
	>>|c99ffff99OR|r Parar The Aggressors
	>>|c99ffff99OR|r Misericórdia of the Light
	.daily 14092,14141,14145 >>Aceite Breakfast of Campeões
	>>|c99ffff99OR|r Gormok Wants His Snobolds
	>>|c99ffff99OR|r O Que Você Alimentar um Yeti, Afinal?
	.goto Icecrown,76.09,24.08
	.target Girana the Blooded
	.target Tylos Dawnrunner
step
	.isOnQuest 14143
	>>Vá para o Pouso de Hrothgar
	>>Saque |cRXP_LOOT_Stolen Moa Pernas|r do chão ou mate os |cRXP_ENEMY_Kvaldir inimigos|r.
	.complete 14143,1
	.goto Hrothgar's Landing,43.4,29.8
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14136
	>>Vá para o barco da Horda em Hrothgar's Pouso.
	>>Abate os |cRXP_ENEMY_Kvaldir Berserkers|r e os |cRXP_ENEMY_Kvaldir Harpooners|r.
	.complete 14136,1
	.complete 14136,2
	.goto Hrothgar's Landing,44.14,54.22
	.mob Kvaldir Berserker
	.mob Kvaldir Harpooner
step
	.isOnQuest 14080
	>>Vá para o Pouso de Hrothgar
	>>Abate os |cRXP_ENEMY_Kvaldir Reavers|r ou o |cRXP_ENEMY_Ata-brumas Kvaldir|r.
	.complete 14080,1
	.goto Hrothgar's Landing,48.65,32.64
	.mob Kvaldir Reaver
	.mob Kvaldir Mist Binder
step
	.isOnQuest 14144
	>>Vá para o Pouso de Hrothgar
	>>Usar o |c99ffff99Confessor's Prayer Livro|r para realizar últimos ritos para os |cRXP_FRIENDLY_Slain Tualiq Villagers|r.
	.complete 14144,1
	.use 46870
	.goto Hrothgar's Landing,51,30,10,0
	.goto Hrothgar's Landing,50.60,28.28,10,0
	.goto Hrothgar's Landing,51.84,26.61,10,0
	.goto Hrothgar's Landing,54.03,23.98,10,0
	.goto Hrothgar's Landing,55.65,25.20,10,0
	.goto Hrothgar's Landing,57.41,24.37,10,0
	.goto Hrothgar's Landing,57.10,21.39
	.target Slain Tualiq Villager
step
	.isOnQuest 14145
	#completewith next
	>>Pegue |cRXP_PICK_Fresh Isquinha|r dos baldes no barco da Horda.
	.collect 47036,5
	.goto Icecrown,73.97,9.42
step
	.isOnQuest 14145
	>>Salte para a água e use o |cRXP_PICK_Fresh Isquinha|r.
	>>Abate os |cRXP_ENEMY_Sharks|r para obter o |cRXP_LOOT_North Sea Tubarão Carne|r.
	.complete 14145,1
	.use 47036
step
	.isOnQuest 14142
	>>Mate os |cRXP_ENEMY_Zelotes das Trevas|r e os |cRXP_ENEMY_Ritualistas da Escuridão|r para obter as |cRXP_PICK_Chaves de Jaula Preta|r.
	>>Usar as chaves para liberar os |cRXP_FRIENDLY_Captive Aspirants|r das gaiolas.
	.collect 46895,5,14142,2,-1
    .complete 14142,2
	.goto Icecrown,65.17,22.19,15,0
	.goto Icecrown,64.66,21.74,15,0
	.goto Icecrown,63.04,21.32,15,0
	.goto Icecrown,61.42,20.74,15,0
	.goto Icecrown,60.25,21.08
	.mob Dark Zealot
	.mob Dark Ritualist
step
	.isOnQuest 14142
	>>Mate os |cRXP_ENEMY_Zelotes das Trevas|r e os |cRXP_ENEMY_Ritualistas da Escuridão|r para obter as |cRXP_PICK_Chaves de Jaula Preta|r.
	>>Liberte |cRXP_FRIENDLY_Kul the Imprudente|r de sua gaiola.
    .complete 14142,1
	.goto Icecrown,60.82,23.15
step
	.isOnQuest 14092
	>>Vá para os Picos Tempestuosos
	>>Usar o |c99ffff99Earthshaker Tambor|r perto dos montes de neve.
	>>Abate os |cRXP_ENEMY_Deep Jormungars|r que desovam para obter o |cRXP_LOOT_Jormungar Ovo Sacs|r.
	.complete 14092,1
	.use 46893
	.goto The Storm Peaks,43.33,57.74
	.target Deep Jormungar
step
	.isOnQuest 14141
	>>Vá para os Picos Tempestuosos
	>>Usar a |c99ffff99Rede com Pandulho|r para capturar os |cRXP_ENEMY_Ceganeve Seguidores|r.
	.complete 14141,1
	.use 46885
	.goto The Storm Peaks,43.88,81.60
	.target Snowblind Follower
step
	>>Volte ao Pavilhão do Sunreaver
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Girana, a Ensanguentada|r e |cRXP_FRIENDLY_Tylos Aurovelos|r.
	.dailyturnin 14142 >>Entregue You've Really Done It This Tempo, Kul
	.dailyturnin 14143,14136,14080,14144 >>Entregue A Leg Up
	>>|c99ffff99OR|r Resgate no Mar
	>>|c99ffff99OR|r Parar The Aggressors
	>>|c99ffff99OR|r A Misericórdia da Luz
	.dailyturnin 14092,14141,14145 >>Entregue Breakfast of Campeões
	>>|c99ffff99OR|r Gormok Wants His Snobolds
	>>|c99ffff99OR|r O Que Você Alimentar um Yeti, Afinal?
	.goto Icecrown,76.09,24.08
	.target Girana the Blooded
	.target Tylos Dawnrunner
step
	+|cRXP_WARN_Você completou todas as Missões Diárias Sunreaver hoje! Recarregue este guia amanhã para continuar.|r
]])
