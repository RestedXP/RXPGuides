if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
#season 2
#group Guias de Fim de Jogo
#subgroup Sintonias
#name Atunamento das Catacumbas de Karazhan

step
    #completewith next
    .subzone 2268 >>Vá para a |cRXP_LOOT_Capela Esperança da Luz|r em |cRXP_PICK_Terras Pestilentas Orientais|r
step
    .goto Eastern Plaguelands,81.3,58.75
    >>Clique no quadro de avisos rotulado |cRXP_FRIENDLY_Seeking Seasoned Adventurers|r à direita da entrada da capela
    .accept 86964 >>Aceite Ouro e Triunfo
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >>Vá para o |cRXP_PICK_Deadwind Passe|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,47.36,75.60,100 >>Vá para o sul em direção a |cRXP_LOOT_Karazhan|r
    .isOnQuest 86964
step
    .goto Deadwind Pass,39,74
    >>Procure um cadáver de um |cRXP_FRIENDLY_Aventureiro Morto|r
    .turnin 86964 >>Entregue Ouro e Triunfo
    .accept 86965 >>Aceite Sombra fora do Comum
    .target Deceased Adventurer
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Vá para o norte em direção ao acampamento do Agente de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Agente de Dalaran <Olho Violeta>|r
    .turnin 86965 >>Entregue Sombra fora do Comum
    .accept 86966 >>Aceite Em Busca de Sobreviventes
step
    .goto Deadwind Pass,59.2,73.4,30 >>Vá para o sul até a entrada da caverna dos Ogres
    .isOnQuest 86966
step
    .goto Deadwind Pass,65.0,78.0
    >>Entre na caverna, procure o |cRXP_FRIENDLY_Aventureiro Ferido|r, ele está preso em uma gaiola
    .turnin 86966 >>Entregue Em Busca de Sobreviventes
    .accept 86967 >>Aceite Ao Resgate
    .target Injured Adventurer
step
    .goto Deadwind Pass,65.0,78.0
    >>Mate os |cRXP_ENEMY_Ogres|r e saqueie-os até encontrar a |cRXP_LOOT_Deadwind Jaula "Chave"|r. Usar-a na jaula para completar a missão.
    >>|cRXP_WARN_Se alguém completar este objetivo enquanto você estiver por perto, você também receberá crédito mesmo que não esteja em um grupo com ele|r
    .complete 86967,1
    .collect 235785,1 --Deadwind Cage "Key"
    .disablecheckbox
    .mob Deadwind Warlock
    .mob Deadwind Mauler
    .mob Deadwind Ogre Mage
    .mob Deadwind Brute
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Volte para o acampamento do Agente de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harrison Jones|r
    .turnin 86967 >>Entregue Ao Resgate
    .accept 86968 >>Aceite Você Tem Medo do Escuro?
    .target Harrison Jones
step
    .goto Deadwind Pass,52.09,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Agente de Dalaran <Olho Violeta>|r
    .turnin 86968 >>Entregue Você Tem Medo do Escuro?
    .accept 86969 >>Aceite A Hipótese
    .target Agent Keanna
step
    #optional
    #completewith Hypothesis
    #label Wetlands
    .zone Wetlands >>Voe para |cRXP_PICK_Pantanal|r para procurar por |T132839:0|t[Chama da Vida]
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires Wetlands
    #label GrimBatol
    .goto 1437/0,-3451.700,-3450.800,40 >>Vá para o início do caminho para |cRXP_LOOT_Grim Batol|r
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires GrimBatol
    .goto Wetlands,52.55,41.62,0
    .goto Wetlands,88.07,60.72,0
    .goto Wetlands,85.72,69.33,0
    .goto Wetlands,87.04,51.45
    >>Mate os |cRXP_ENEMY_Dragonkin|r na área até saquear a |T132839:0|t[|cRXP_LOOT_Chama da Vida|r]
    .collect 235789,1 --Flame of Life
    .mob Red Scalebane
    .mob Scalebane Lieutenant
    .mob Wyrmkin Firebrand
    .mob Red Dragonspawn
    .mob Scalebane Royal Guard
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label EnterDungeon
    .subzoneskip 2557 --Dire Maul
    .subzoneskip 15475 --Demon Fall Canyon
    .goto Kalimdor,42.98,67.51,0 --Dire Maul Entrance
    .goto Ashenvale,84.5,75.0,0 --Demon Fall Canyon Entrance
    +Procure um grupo para entrar em |cRXP_LOOT_Dire Malho West|r ou em |cRXP_LOOT_Demon Queda Canyon|r
    >>|cRXP_WARN_Tenha em mente que você precisa estar atunizado para entrar em Cânion do Demônio Caído.|r Você pode encontrar um guia para isso nos Guias de Fim de Jogo > Seção Atunizações
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Abate Gavíneo Lenhatorta|cRXP_ENEMY_, o primeiro chefe da instância. Saque o |T135139:0|t[Ironwood Branch]|r
    .complete 86969,2
    .subzoneskip 2557,1 --Only shows in Dire Maul
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #requires EnterDungeon
    >>Abate [[Grimroot] <[The Mourning Guardian]>] <[The Mourning Guardian]>|cRXP_ENEMY_, o primeiro chefe da instância. Saque o |T135139:0|t[Ironwood Branch]|r
    .complete 86969,2
    .subzoneskip 15475,1 --Only shows in Demon Fall Canyon
    .isOnQuest 86969
step
    #optional
    #completewith Hypothesis
    #label Winterspring
    .zone Winterspring >>Voe para |cRXP_PICK_Hibérnia|r para procurar por |T136116:0|t[NO TRANSLATION FOUND TO THIS ELEMENT]
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Winterspring
    #label Darkwhisper
    .goto Winterspring,60.39,73.95,50 >>Voe para a |cRXP_LOOT_Garganta do Sussurro Sombrio|r
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #optional
    #completewith Hypothesis
    #requires Darkwhisper
    .goto Winterspring,59.78,75.92,20,0
    .goto Winterspring,60.18,78.08,20,0
    .goto Winterspring,60.74,79.11,20,0
    .goto Winterspring,61.16,80.19,20,0
    .goto Winterspring,61.21,82.13,20,0
    .goto Winterspring,59.09,83.57,20,0
    .goto Winterspring,58.93,85.67,20,0
    .goto Winterspring,56.06,84.80,20,0
    .goto Winterspring,55.13,84.21,20,0
    .goto Winterspring,53.88,84.77,20,0
    .goto Winterspring,53.08,86.33,20,0
    .goto Winterspring,52.68,88.38,20,0
    .goto Winterspring,52.2,90.4
    .target Enthusiastic Wisp
    >>Vá para o sul e procure o |cRXP_FRIENDLY_Entusiasmado Fogo-fátuo|r. Interaja com ele para pegá-lo
    >>|cRXP_WARN_Evite enfrentar os demônios élites da área. Você pode apenas correr para além deles|r
    .complete 86969,3 --Enthusiastic Wisp
    .isOnQuest 86969
    .itemcount 235788,<1
step
    #label Hypothesis
    >>Colete a |T132839:0|t[Chama da Vida]. Cai dos |cRXP_ENEMY_Élites Dragonkin|r perto de |cRXP_LOOT_Grim Batol|r em |cRXP_PICK_Pantanal|r
    >>Colete o |T135139:0|t[Ironwood Branch]. Cai de |cRXP_ENEMY_[[Grimroot] <[The Mourning Guardian]>] <[The Mourning Guardian]>|r em |cRXP_LOOT_Cânion do Demônio Caído|r|cRXP_WARN_(dungeon)|r ou |cRXP_ENEMY_Gavíneo Lenhatorta|r em |cRXP_LOOT_Dire Malho West|r|cRXP_WARN_(dungeon)|r
    >>Colete o |T136116:0|t[NO TRANSLATION FOUND TO THIS ELEMENT]. É um NPC |cRXP_FRIENDLY_friendly NPC|r em |cRXP_LOOT_Garganta do Sussurro Sombrio|r em |cRXP_PICK_Hibernal|r
    >>|cRXP_WARN_Estes itens podem ser coletados em qualquer ordem|r
    .complete 86969,1 --Flame of Life
    .complete 86969,2 --Ancient Ironwood Branch
    .complete 86969,3 --Enthusiastic Wisp
    .mob Grimroot
    .mob Tendris Warpwood
    .isOnQuest 86969
step
    .goto Deadwind Pass,43.08,34.22 << Alliance
    .goto Deadwind Pass,51.01,42.19 << Horde
    .zone Deadwind Pass >>Vá para |cRXP_PICK_Deadwind Passe|r
    .isQuestComplete 86969
step
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.09,34.10
    >>Voe para o acampamento do Agente de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Agente de Dalaran <Olho Violeta>|r
    .turnin 86969 >>Entregue A Hipótese
    .accept 86970 >>Aceite Testando Nossas Hipóteses
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,42.20,77.41,20,0
    .goto Deadwind Pass,39.98,75.36,20,0
    .goto Deadwind Pass,39.93,74.24
    >>Vá para Morgan's Plot, localizada a oeste de Karazhan. |cRXP_WARN_Entre no orbe sombrio massivo lá|r
    >>Usar seu |T135432:0|t[|cRXP_FRIENDLY_Enchanted Firebrand|r] uma vez dentro e espere a encenação terminar
    .complete 86970,1
    .use 235790 --Enchanted Firebrand
step
    .goto Deadwind Pass,45.10,77.96,20,0
    .goto Deadwind Pass,55.40,78.75,20,0
    .goto Deadwind Pass,51.28,39.91,20,0
    .goto Deadwind Pass,52.32,34.09
    >>Vá de volta para o norte até o acampamento do Agente de Dalaran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Agente de Dalaran <Olho Violeta>|r
    .turnin 86970 >>Entregue Testando Nossa Hipótese
    .target Agent Keanna
step
    >>|cRXP_WARN_Parabéns, agora você está sintonizado com as Catacumbas de Karazhan!|r
    >>Você pode |Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harrison Jones|r para pegar uma missão dele que pode ser completada dentro da instância
    .accept 86971 >>Aceite Badulaques Badalados de Karazhan!
    .target Harrison Jones
]])

RXPGuides.RegisterGuide([[
#classic
#season 2
#group Guias de Fim de Jogo
#subgroup Sintonias
#name Introdução ao Enclave Escarlate

step
   #completewith next
   .subzone 2268 >>Vá para a |cRXP_LOOT_Capela da Esperança da Luz|r nas |cRXP_PICK_Terras Pestilentas Orientais|r
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leonid Bartolomeu, o Venerado|r dentro da capela
   .accept 87459 >>Aceite Atividades Escarlate
   .target Leonid Barthalomew the Revered
step
    #optional
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jessica Dávila|r
    .home >>Se você quiser |cRXP_WARN_você pode definir sua Pedra de Retorno aqui|r. Isso vai ajudá-lo a voltar de Tirisfal Glades mais rápido
    .target Jessica Chambers
step << Alliance
    .goto Eastern Plaguelands,81.64,59.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khaelyn Asadaço|r lá fora
    .fly Chillwind >>Voe para Terras Pestilentas Ocidentais
    .target Khaelyn Steelwing
    .isOnQuest 87459
step << Horde
    .goto Eastern Plaguelands,80.23,57.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Georgia|r lá fora
    .target Georgia
    .fly Undercity >>Voe para Undercity
    .isOnQuest 87459
step << Horde
    .goto Tirisfal Glades,61.85,66.59,60 >>Saia de Undercity
    .isOnQuest 87459
step << Alliance
   #completewith next
   .goto Tirisfal Glades,84.85,70.57
   .zone Tirisfal Glades >>Vá para Claras da Tirisfal
   .isOnQuest 87459
step
   .goto Tirisfal Glades,81.76,58.06
   >>Vá ao norte em direção ao acampamento escarlate << Alliance
   >>Vá ao leste em direção ao acampamento escarlate << Horde
   >>Clique em |cRXP_PICK_Bola e Corrente|r fora da pequena tenda. Isso vai invocar um |cRXP_WARN_élite|r |cRXP_ENEMY_Scarlet Infiltrator|r que vai te atacar.
   >>Mate e |cRXP_LOOT_saqueie-o|r para as |T133471:0|t[Ordens do Comandante]
   .complete 87459,1 --Orders from the Commander
   .mob Scarlet Infiltrator
   .isOnQuest 87459
step
   #completewith next
   .subzone 2268 >>Entregue em |cRXP_LOOT_Capela de Luz Esperança|r nas |cRXP_PICK_Terras Pestilentas Orientais|r
   .isOnQuest 87459
step
   .goto Eastern Plaguelands,81.73,57.84
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leonid Bartolomeu, o Venerado|r dentro da capela
    .turnin 87459 >>Entregue Atividades Escarlate
    .accept 87493 >>Aceite Inquietação na Manopla de Tyr
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Viaje para o sul em direção ao acampamento base escarlate
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Beatrix|r
    .turnin 87493 >>Entregue Inquietação na Manopla de Tyr
    .accept 87497 >>Aceite O Cisma
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Beatrix|r e complete seu diálogo
    .complete 87497,1
    .skipgossip
    .target Commander Beatrix
step
   .goto Eastern Plaguelands,81.73,57.84
   >>Entregue na Capela Esperança da Luz
   >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leonid Bartolomeu, o Venerado|r dentro
    .turnin 87497 >>Entregue O Cisma
    .accept 87498 >>Aceite A Reivindicação Escarlate
    .target Leonid Barthalomew the Revered
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Entregue no acampamento base escarlate
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Beatrix|r
    .turnin 87498 >>Entregue A Reivindicação Escarlate
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Inquisidor Escarlate Caldoran|r
    .accept 87502 >>Aceite Obtendo Informações
    .target Scarlet Inquisitor Caldoran
step
    .goto Eastern Plaguelands,68.18,82.43
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Inquisidor Jociphine|r |cRXP_WARN_para receber um disfarce escarlate temporário|r
    .aura 1231929 --Scarlet Illusion
    .skipgossip
    .target Inquisitor Jociphine
step
    >>Entre em Manopla de Tyr e vá para a Catedral no centro
    .goto Eastern Plaguelands,85.27,83.98
    .complete 87502,1 --Scout the Cathedral in Tyr's Hand: 1/1
step
    .goto Eastern Plaguelands,89.76,81.41,30 >>Pegue o caminho à esquerda que leva a Nova Avalon
step
    >>Vá para a fortaleza em Nova Avalon
    >>|cRXP_WARN_Cuidado com |r|cRXP_ENEMY_Sabujos Escarlates|r |cRXP_WARN_eles enxergarão através de seu disfarce!|r
    >>Você pode usar |T132328:0|t[Rastrear Feras] para ajudar a acompanhar a posição dos cães << Hunter
    .goto Eastern Plaguelands,96.66,83.06
    .complete 87502,3 --Scout the Keep in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Dirija-se à Torre do Mago
    >>|cRXP_WARN_Cuidado com |r|cRXP_ENEMY_Cães de Sangue Escarlates|r |cRXP_WARN_eles verão através de seu disfarce!|r
    >>Você pode usar |T132328:0|t[Rastrear Feras] para acompanhar a posição dos cães << Hunter
    .goto Eastern Plaguelands,98.14,87.88
    .complete 87502,2 --Scout the Mage Tower in New Avalon: 1/1
    .unitscan Sarlet Bloodhound
step
    >>Volte para o acampamento-base Escarlate
    .goto Eastern Plaguelands,68.25,82.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Scarlet Inquisidor Caldoran|r
    .turnin 87502 >>Entregue Obtendo Informações
    .accept 87506 >>Aceite Enfraquecimento das Defesas
    .target Scarlet Inquisitor Caldoran
    .unitscan Sarlet Bloodhound
step
    #optional
    #completewith next
    >>|cRXP_WARN_Agora você pode desbloquear o disfarce escarlate permanente coletando 4 peças de um conjunto escarlate fabricável e depois usando o fornecido|r |T134503:0|t[|cFF0070FFInsígnia Escarlate|r]
    >>Você deve conseguir encontrar aquelas na casa de leilões. Não é obrigatório, mas fará a travessia de Nova Avalon no futuro muito mais fácil.
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Inquisidor Jociphine|r
    .accept 90510 >>Aceite Nova Avalon
    .use 237020 --Scarlet Insignia
step
    >>Entre em Manopla de Tyr e procure pelos |cRXP_ENEMY_Scarlet Cerco Commanders|r
    >>|cRXP_WARN_Eles podem ser encontrados mais comumente perto de armas de cerco ou nas paredes|r
    .complete 87506,1 --Scarlet Siege Commander (3)
    .target Scarlet Siege Commander
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Volte ao acampamento base escarlate
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Beatrix|r
    .turnin 87506 >>Entregue Enfraquecimento das Defesas
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Argent Emissário|r
    .accept 87508 >>Aceite Apresente-se a Lorde Maximiliano Tyrosus
step
    >>Volte para a Capela Esperança da Luz
    .goto Eastern Plaguelands,81.74,57.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r lá dentro
    .turnin 87508 >>Entregue Apresente-se a Lorde Maximiliano Tyrosus
    .accept 87509 >>Aceite A Ira da Aurora
    .target Lord Maxwell Tyrosus
step
    .goto Eastern Plaguelands,67.8,83.2
    >>Volte ao acampamento base escarlate
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Beatrix|r
    .skipgossip
    .complete 87509,1 --Report back to Commander Beatrix
step
    .goto Eastern Plaguelands,67.8,83.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Beatrix|r
    .turnin 87509 >>Entregue A Ira da Aurora
    .accept 87516 >>Aceite Golpe de Decapitação
    .target Commander Beatrix
step
    .goto Eastern Plaguelands,68.36,87.58
    >>Esta missão requer que você mate |cRXP_ENEMY_Balnazzar|r |cRXP_WARN_o primeiro chefe na nova incursão Scarlet Enclave|r
    >>Forme um grupo de incursão e boa caçada!
    .complete 87516,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Lorde Maximiliano Tyrosus|r dentro da prisão para a qual você será movido após derrotar Balnazzar na incursão
    .turnin 87516 >>Entregue Golpe de Decapitação
    .target Lord Maxwell Tyrosus
step
    +|cRXP_WARN_Parabéns, você completou a sequência de missões introdutória do Scarlet Enclave!|r
]])
