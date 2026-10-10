if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Horde
#name Personagem Melhorado 58-60
#subgroup RestedXP Impulso Horda 58-60
#subweight -1
#title Personagem Melhorado 58-60
#next 60-61 Península Fogo do Inferno

step
+Assim que você entrar no jogo pela primeira vez, complete a pequena seção de tutorial na frente do seu treinador de classe para obter acesso a todo o equipamento potencializado
.use 185964
.use 186051
.use 186052
.use 186053
.use 186054
.use 186055
.use 186056
.use 186057
.isQuestAvailable 64035 << Alliance
.isQuestAvailable 64052 << Horde !Druid
.isQuestAvailable 64053 << Horde Druid
step << Druid
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Thuul|r no topo da cabana
    .train 3567 >>Aprenda |T135759:0|t[Teleporte: Orgrimmar]
    .train 11417 >>|T135744:0|tAprenda Portal: Orgrimmar
    .target Thuul
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Compre qualquer melhoria de mascote que possa pagar
	.target Kurgul
step
    .goto Orgrimmar,54.65,67.65
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Taberneiro Morag|r
	.vendor >>|cRXP_BUY_Compre 2 lotes de comida|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Compre 2 lotes de comida e água|r << Rogue/Warrior
	.target Barkeep Morag
step
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Saia de Orgrimmar
    .complete 64217,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .complete 64063,1 --Visit Snurk Bucksquick, the Zeppelin Master (1)
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Western Plaguelands
step
    #completewith UCflightpath1
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step
    #completewith UCflightpath1
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
step
    #label UCflightpath1
    .isQuestAvailable 5211
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fp Undercity >>Aprenda a rota de voo para Undercity
    .target Michael Garrett
step
	#completewith next
	.subzone 152 >>Exit Undercity e travel to the Bulwark
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tVoe para o Baluarte, depois fale com |cRXP_FRIENDLY_Derrington|r.
    .accept 5096 >>Aceite Scarlet Diversions
	.target High Executor Derrington
step
	.goto Western Plaguelands,26.55,56.18
	>>Clique na |cRXP_PICK_Caixa de Incendiários|r perto do fogo
	.collect 12814,1,5096,1 --Flame in a Bottle (1)
step
    .goto Tirisfal Glades,83.19,68.45
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garush|r
    .turnin 5405 >>Entregue Ordem da Aurora Argêntea
	.target Argent Officer Garush
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mehlar Aurolume|r
    .accept 9443 >>Aceite a Marca do Arauto da Luz
    .target Mehlar Dawnblade
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mickey|r
    .accept 5901 >>Aceite A Praga Sobre Ti
	.target Mickey Levine
step
    #completewith next
    .use 12846 >>|cRXP_WARN_Equip your|r |T133440:0|t[Argent Dawn Commission] |cRXP_WARN_Berloque|r
step
    .goto Western Plaguelands,40.5,51.8
    .use 12807 >>Clique na |cRXP_PICK_Tenda de Comando|r, depois use seu |T132484:0|t[Estandarte do Flagelo]
	>>|cRXP_WARN_Estes inimigos são relativamente difíceis e podem atrair um ao outro em cadeia, então tenha cuidado|r
    .complete 5096,1 --Destroy the command tent and plant the Scourge banner in the camp (1)
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .turnin 5096 >>Entregue Diversões Escarlates
    .accept 5098 >>Aceite Em Todas as Torres de Vigia
    .accept 5228 >>Aceite Os Caldeirões do Flagelo
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vandis|r
    .turnin 5228 >>Entregue Os Caldeirões do Flagelo
    .accept 5229 >>Aceite Alvo: Campo Pedravil
	.target Shadow Priestess Vandis
step
    .goto Western Plaguelands,37.12,57.18
    >>Mate o |cRXP_ENEMY_Mestre da Caldeira Bilevil|r. Saqueie-o para obter sua |cRXP_LOOT_Cauldron Chave|r
    .complete 5229,1 --Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.2,56.8
	>>Clique no |cRXP_PICK_Scourge Objetos de Cata|r fervilhando no topo do estrado
    .turnin 5229 >>Entregue Alvo: Campo Pedravil
    .accept 5230 >>Aceite Devolver para o Baluarte
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Janice|r no segundo andar da casa
    .accept 5021 >>Aceite Better Late Than Never
	.target Janice Felstone
step
    #label FelstoneField
    .goto Western Plaguelands,38.8,55.3
	>>Clique em |cRXP_PICK_Pacote da Janice|r no celeiro
	>>|cRXP_WARN_Você pode clicar através da parede do corredor se quiser pular os inimigos lá dentro|r
    .turnin 5021 >>Entregue Better Late Than Never
    .accept 5023 >>Aceite Better Late Than Never
step
	#completewith next
	.subzone 152 >>Return to O Baluarte
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vandis|r
    .turnin 5230 >>Entregue Devolver to the Baluarte
    .accept 5231 >>Aceite Alvo: Lágrimas de Dalson
	.target Shadow Priestess Vandis
step
	#sticky
	#completewith wplbf
	+|cRXP_WARN_Mate e saqueie inimigos entre cada torre para|r |T133724:0|t[Fragmentos de Osso]
    .collect 22526,30,91261 --Bone Fragments
step
    .goto Western Plaguelands,42.28,66.05
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,2 --Tower Two marked (1)
step
    #label TowerOne
    .goto Western Plaguelands,40.15,71.50
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,1 --Tower One marked (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r no andar superior da estalagem
    .accept 4971 >>Aceite A Matter of Tempo
	.target Chromie
step
    .goto Western Plaguelands,44.24,63.06
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,3 --Tower Three marked (1)
step
    .goto Western Plaguelands,45.8,63.3
	.use 12627 >>Gere os |cRXP_ENEMY_Temporal Parasites|r usando seu |T134229:0|t[Deslocador Temporal] perto dos silos brilhantes
	>>|cRXP_WARN_Temporal Parasites usam Retardar continuamente e podem gerar mais parasitas ao morrer. Esteja pronto para correr para a água se começarem a avassalar você; eles não conseguem nadar|r
    .complete 4971,1 --Temporal Parasite (10)
	.mob Temporal Parasite
step
    .goto Western Plaguelands,46.73,71.14
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre|r
	-->>|cRXP_WARN_Do not engage the elite inside|r --not elite anymore in tbc
    .complete 5098,4 --Tower Four marked (1)
step
    .goto Western Plaguelands,46.04,52.33
    >>Mate |cRXP_ENEMY_Mestre da Caldeira Malvínio|r. Saqueie-o para obter a |cRXP_LOOT_Cauldron Chave|r
    .complete 5231,1 --Dalson's Tears Cauldron Key (1)
	.unitscan Cauldron Lord Malvinious
step
    .goto Western Plaguelands,46.2,52.0
	>>Clique no |cRXP_PICK_Scourge Objetos de Cata|r fervilhando no topo do estrado
    .turnin 5231 >>Entregue Alvo: Lágrimas de Dalson
    .accept 5232 >>Aceite Devolver para o Baluarte
step
    .goto Western Plaguelands,47.8,50.6
	>>Clique em |cRXP_PICK_Diário da Sra. Dalson|r
    .turnin 5058 >>Entregue Diário da Sra. Dalson
step
    .goto Western Plaguelands,47.49,51.00
	>>Mate as it for its |cRXP_LOOT_Outhouse Key|r
	>>|cRXP_WARN_Triture|r |T133724:0|t[Fragmentos de Osso] |cRXP_WARN_se o |cRXP_ENEMY_Esqueleto Errante|r não desovou|r
	.collect 12738,1 -- Dalson Outhouse Key (x1)
	.unitscan Wandering Skeleton
step
	#completewith next
    .goto Western Plaguelands,48.2,49.7
    >>Clique no |cRXP_PICK_Outhouse|r
    .turnin 5059 >>Entregue Trancado
step
    .goto Western Plaguelands,48.2,49.7
	>>Mate for his |cRXP_LOOT_Cabinet Key|r
    .collect 12739,1,5060 --Collect Dalson Cabinet Key (x1)
	.unitscan Farmer Dalson
step
    .goto Western Plaguelands,47.4,49.7
	>>Clique no top floor of the house
    .turnin 5060 >>Entregue Trancado
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirsta|r
    .accept 6004 >>Aceite Negócios inacabados
	.target Kirsta Deepshadow
step
	#completewith next
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12,70,0
    >>Mate |cRXP_ENEMY_Scarlet Mages|r e |cRXP_ENEMY_Scarlet Knights|r
	>>|cRXP_WARN_The|r |cRXP_ENEMY_Mages|r |cRXP_WARN_and|r |cRXP_ENEMY_Cavaleiro|r |cRXP_WARN_share respawns. If necessary, kill extra mobs to reset the area|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.77,44.13,70,0
    .goto Western Plaguelands,40.83,52.30,70,0
    .goto Western Plaguelands,47.35,51.54,0
    .goto Western Plaguelands,51.77,44.13
	>>Mate |cRXP_ENEMY_Scarlet Medics|r e |cRXP_ENEMY_Scarlet Hunters|r
	>>|cRXP_ENEMY_Medics|r |cRXP_WARN_e|r |cRXP_ENEMY_Hunters|r |cRXP_WARN_podem ser encontrados nos acampamentos. Se necessário, mate inimigos extras para reiniciar a área|r
    .complete 6004,1 --Scarlet Medic (2)
	.mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
	.mob +Scarlet Hunter
step
    .goto Western Plaguelands,50.43,41.12,70,0
    .goto Western Plaguelands,53.50,36.85,70,0
    .goto Western Plaguelands,50.43,41.12
    >>Finish killing |cRXP_ENEMY_Scarlet Mages|re 
	>>|cRXP_WARN_The|r |cRXP_ENEMY_Mages|r |cRXP_WARN_and|r |cRXP_ENEMY_Cavaleiro|r |cRXP_WARN_share respawns. If necessary, kill extra mobs to reset the area|r
    .complete 6004,3 --Scarlet Mage (2)
	.mob +Scarlet Mage
	.complete 6004,4 --Scarlet Knight (2)
	.mob +Scarlet Knight
step
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirsta|r
    .turnin 6004 >>Entregue Negócios inacabados
    .accept 6023 >>Aceite Negócios inacabados
	.target Kirsta Deepshadow
step
    .goto Western Plaguelands,57.83,36.10
	>>Mate |cRXP_ENEMY_Huntsman Radley|r
	>>|cRXP_WARN_Os inimigos ao seu redor podem fazer pull em cadeia facilmente. Os Spellbinders lançam Novane Congelante|r
    .complete 6023,1 --Huntsman Radley (1)
	.unitscan Huntsman Radley
step
    .goto Western Plaguelands,54.64,23.71
	>>Mate |cRXP_ENEMY_Cavalier Durgen|r
	>>|cRXP_WARN_Este combate é muito mais seguro se você esperar por ele patrulhar para fora da torre antes de fazer o pull. Ele tem um atordoamento de ação instantânea de 5 segundos|r
    .complete 6023,2 --Cavalier Durgen (1)
	.unitscan Cavalier Durgen
step
	#label crusader
    .goto Western Plaguelands,55.1,23.5
    >>Saqueie top of the tower for |cRXP_LOOT_Mark of the Lightbringer|r
	>>|cRXP_WARN_O |cRXP_ENEMY_Alto-clérigo Escarlate|r (63 elite) pode estar ativo. Pule esta missão se necessário|r
    .complete 9443,1 --Mark of the Lightbringer (1)
    .unitscan Scarlet High Clerist
step
	#label Businessman
    .goto Western Plaguelands,51.92,28.07
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirsta|r
    .turnin 6023 >>Entregue Negócios inacabados
    .accept 6025 >>Aceite Negócios inacabados
	.target Kirsta Deepshadow
step
    #label HearthglenOverlook
    .goto Western Plaguelands,47.94,21.43,60,0
    .goto Western Plaguelands,43.31,17.34,50,0
    .goto Western Plaguelands,45.6,18.6
    >>Corra para dentro de Hearthglen e siga a seta para reiniciar os inimigos
    >>Corra para o topo da torre. Tenha cuidado, pois os Paladinos do lado de fora podem curar. Você pode tentar correr passando por eles ou fazendo controle de multidão para chegar ao topo
    >>|cRXP_WARN_Esteja ciente de que os inimigos não têm alcance no eixo Z. Eles podem acertá-lo de baixo da torre se estiverem diretamente abaixo de você|r
    .complete 6025,1 --Overlook Hearthglen from a high vantage point (1)
step
    #completewith next
    .subzone 192 >>Saia de Hearthglen
step
    .goto Western Plaguelands,51.92,28.06
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirsta|r
    .turnin 6025 >>Entregue Negócios inacabados
	.target Kirsta Deepshadow
step
	#completewith next
	.subzone 152 >>Return to O Baluarte
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vandis|r
    .turnin 5232 >>Entregue Devolver to the Baluarte
    .accept 5233 >>Aceite Alvo: Santuário Contorcido
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .turnin 5098 >>Entregue All Along the Watchtowers
    .accept 838 >>Aceite Scolomântia
	.target High Executor Derrington
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dithers|r
    .turnin 838 >>Entregue Scolomântia
    .accept 964 >>Aceite Fragmentos de Ossos
	.target Apothecary Dithers
step
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mehlar Aurolume|r
    .turnin 9443 >>Entregue The So-Evocado Marca of the Lightbringer
    .accept 9444 >>Aceite Defiling Uther's Tomb
    .target Mehlar Dawnblade
	.isQuestComplete 9443
step
    #optional
    .goto Tirisfal Glades,83.2,71.4
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mehlar Aurolume|r
    .accept 9444 >>Aceite Defiling Uther's Tomb
    .target Mehlar Dawnblade
	.isQuestTurnedIn 9443
step
	.goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r no andar superior da estalagem
    .turnin 4971 >>Entregue A Matter of Tempo
    .accept 4972 >>Aceite A Contagem do Tempo
	.target Chromie
step
	#completewith next
	>>Saqueie ruined buildings for |cRXP_LOOT_Andorhal Watches|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    #loop
	.goto Western Plaguelands,46.40,70.00,0
	.goto Western Plaguelands,46.40,70.00,50,0
	.goto Western Plaguelands,45.60,72.20,50,0
	.goto Western Plaguelands,42.60,71.40,50,0
	.goto Western Plaguelands,41.60,73.20,50,0
	.goto Western Plaguelands,38.80,71.00,50,0
	.goto Western Plaguelands,38.80,68.20,50,0
	.goto Western Plaguelands,40.40,66.40,50,0
	.goto Western Plaguelands,42.60,70.00,50,0
	.goto Western Plaguelands,43.40,64.40,50,0
	.goto Western Plaguelands,45.80,65.80,50,0
	>>Mate todos os |cRXP_ENEMY_Skeletons|r em Andorhal. Saque-os por seus |cRXP_LOOT_Fragmentos|r
	>>|cRXP_ENEMY_Skeletal Executioners|r |cRXP_WARN_podem|r |T135358:0|t[Executar] |cRXP_WARN_se sua vida cair para menos de 20%|r
    .complete 964,1 --Skeletal Fragments (15)
	.mob Skeletal Executioner
	.mob Skeletal Acolyte
	.mob Skeletal Warlord
	.mob Skeletal Sorcerer
	.mob Skeletal Flayer
	.mob Skeletal Terror
step
    #loop
	.goto Western Plaguelands,40.40,66.50,0
	.goto Western Plaguelands,40.40,66.50,30,0
	.goto Western Plaguelands,38.90,68.10,30,0
	.goto Western Plaguelands,41.30,69.80,30,0
	.goto Western Plaguelands,42.80,73.90,30,0
	.goto Western Plaguelands,43.60,73.40,30,0
	.goto Western Plaguelands,45.10,73.70,30,0
	.goto Western Plaguelands,46.50,73.00,30,0
	.goto Western Plaguelands,44.80,70.50,30,0
	.goto Western Plaguelands,42.90,68.50,30,0
	.goto Western Plaguelands,40.90,67.20,30,0
	>>Saqueie ruined buildings for |cRXP_LOOT_Andorhal Watches|r
    .complete 4972,1 --Andorhal Watch (5)
	.isOnQuest 4972
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marlene|r dentro da casa
    .accept 5142 >>Aceite Pequena Pâmela
	.target Marlene Redpath
step
    .goto Western Plaguelands,52.1,83.3
    .use 23691 >>|cRXP_WARN_Equipe a|r |T135160:0|t[Marca Corrompida do Arauto da Luz] |cRXP_WARN_na sua mão secundária|r
    >>|cRXP_WARN_Use a|r |T135160:0|t[Marca Corrompida do Arauto da Luz] |cRXP_WARN_no Túmulo de Uther|r
    .complete 9444,1 --Uther's Tomb Defiled (1)
    .isQuestTurnedIn 9443
step
    .goto Western Plaguelands,53.07,65.97
    >>Mate o |cRXP_ENEMY_Mestre da Caldeira Rainério|r. Saqueie-o para obter sua |cRXP_LOOT_Cauldron Chave|r
	>>|cRXP_ENEMY_Freezing Carniçais|r |cRXP_WARN_têm um atordoamento instantâneo em área com duração de 5 segundos|r
    .complete 5233,1 --Writhing Haunt Cauldron Key (1)
	.unitscan Cauldron Lord Razarch
step
    .goto Western Plaguelands,53.0,65.7
	>>Clique no |cRXP_PICK_Scourge Objetos de Cata|r fervilhando no topo do estrado
	>>|cRXP_ENEMY_Freezing Carniçais|r |cRXP_WARN_têm um atordoamento instantâneo em área com duração de 5 segundos|r
    .turnin 5233 >>Entregue Alvo: Santuário Contorcido
    .accept 5234 >>Aceite Devolver para o Baluarte
step
    #label WildlifePU
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mulgris|r dentro da casa
	>>|cRXP_ENEMY_Freezing Carniçais|r |cRXP_WARN_têm um atordoamento instantâneo em área com duração de 5 segundos|r
    .accept 4984 >>Aceite The Wildlife Suffers Too
	.target Mulgris Deepriver
step
    #loop
	.goto Western Plaguelands,46.80,39.60,0
	.goto Western Plaguelands,46.80,39.60,70,0
	.goto Western Plaguelands,45.80,46.40,70,0
	.goto Western Plaguelands,43.40,54.80,70,0
	.goto Western Plaguelands,46.00,59.20,70,0
	.goto Western Plaguelands,51.60,61.60,70,0
	.goto Western Plaguelands,51.00,53.20,70,0
	.goto Western Plaguelands,50.00,46.60,70,0
	.goto Western Plaguelands,47.80,43.40,70,0
	>>Mate os |cRXP_ENEMY_Diseased Wolves|r
	>>|cRXP_ENEMY_Diseased Wolves|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Carrion Lurkers|r|cRXP_WARN_. Se necessário, mate-os para reiniciar a área|r
    .complete 4984,1 --Diseased Wolf (8)
	.unitscan Diseased Wolf
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mulgris|r
    .turnin 4984 >>Entregue A Natureza Também Sofre
    .accept 4985 >>Aceite The Wildlife Suffers Too
	.target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,56.08,63.26,0
    .goto Western Plaguelands,56.08,63.26,90,0
    .goto Western Plaguelands,60.15,59.93,90,0
    .goto Western Plaguelands,59.43,52.40,90,0
    .goto Western Plaguelands,68.18,46.23,90,0
	>>Mate os |cRXP_ENEMY_Doentes Grizzlies|r
	>>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_share spawns with|r |cRXP_ENEMY_Plague Lurkers|r|cRXP_WARN_. Se necessário, mate-os para reiniciar a área|r
    .complete 4985,1 --Diseased Grizzly (8)
	.unitscan Diseased Grizzly
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nathanos|r
    .accept 6022 >>Aceite Matar com Propósito
	.target Nathanos Blightcaller
step
	.goto Eastern Plaguelands,27.28,85.22
	>>Clique no big |cRXP_PICK_Torn Scroll|ron the ground dentro da crypt
    .accept 6024 >>Aceite Hameya's Plea
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pamela|r
    .turnin 5142 >>Entregue Pequena Pâmela
    .accept 5149 >>Aceite A boneca de Pâmela
	.target Pamela Redpath
step
    .goto Eastern Plaguelands,38.10,92.24
	>>Saqueie 3 |cRXP_PICK_Doll Parts|ron the floor in ruined buildings
	>>|cRXP_WARN_Clicar nos pedaços da boneca pode invocar alguns|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_que possuem armadura de gelo e choque de gelo|r
	.collect 12886,1,5149,1 -- Pamela's Doll's Head
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.64,92.51
	>>Saqueie 3 |cRXP_PICK_Doll Parts|ron the floor in ruined buildings
	>>|cRXP_WARN_Clicar nos pedaços da boneca pode invocar alguns|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_que possuem armadura de gelo e choque de gelo|r
	.collect 12887,1,5149,1 -- Pamela's Doll's Left Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,39.67,90.24
	>>Saqueie 3 |cRXP_PICK_Doll Parts|ron the floor in ruined buildings
	>>|cRXP_WARN_Clicar nos pedaços da boneca pode invocar alguns|r |cRXP_ENEMY_Ghosts of the Past|r |cRXP_WARN_que possuem armadura de gelo e choque de gelo|r
	.collect 12888,1,5149,1 -- Pamela's Doll's Right Side
	.unitscan Ghost of the Past
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	.use 12886 >>|cRXP_WARN_Clique|r |T134164:0|t[Cabeça da Boneca de Pâmela] |cRXP_WARN_para combinar os três pedaços|r
    .complete 5149,1 --Pamela's Doll (1)
    .isOnQuest 5149
step
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pamela|r
    .turnin 5149 >>Entregue A boneca de Pâmela
    .accept 5152 >>Aceite a Tia Marlene
    .accept 5241 >>Aceite o Tio Carlin
	.target Pamela Redpath
    .isQuestComplete 5149
step
    #optional
    .goto Eastern Plaguelands,36.47,90.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pamela|r
    .accept 5152 >>Aceite a Tia Marlene
    .accept 5241 >>Aceite o Tio Carlin
	.target Pamela Redpath
    .isQuestTurnedIn 5149
step
	#completewith RottingUndead
	.subzone 2264 >>Vá para Corrin's Crossing
step
	#completewith next
	>>Abate os |cRXP_ENEMY_Mortos-vivos|r. Saque-os por seus |cRXP_LOOT_Putrefação Viva|r.
	>>|cRXP_WARN_Grupos de Élites patrulham a estrada norte e leste. Inimigos Invisíveis patrulham dentro de Corrin's Crossing, então tente puxar inimigos para fora|r
	.collect 15447,7 --Living Rot (7)
	.mob Hate Shrieker
	.mob Scourge Warder
	.mob Stitched Horror
	.mob Gibbering Ghoul
	.mob Unseen Servant
	.mob Dark Caster
step
	#label RottingUndead
    #loop
	.goto Eastern Plaguelands,58.20,70.20,0
	.goto Eastern Plaguelands,58.20,70.20,25,0
	.goto Eastern Plaguelands,60.40,71.60,25,0
	.goto Eastern Plaguelands,61.00,69.40,25,0
	.goto Eastern Plaguelands,61.40,66.40,25,0
	.goto Eastern Plaguelands,59.40,66.40,25,0
	.goto Eastern Plaguelands,58.00,67.60,25,0
	.use 15454 >>|cRXP_WARN_Use o|r |T133748:0|t[Almofariz e Pilão] |cRXP_WARN_antes da |cRXP_LOOT_Putrefação Viva|r expire|r
    .complete 6022,1 --Coagulated Rot (1)
step
	#completewith LHFP
	.subzone 2268 >>Viaje até a Capela Esperança da Luz
step
    .goto Eastern Plaguelands,79.60,63.87
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alen|r
    .accept 6021 >>Aceite Zaeldarr, o Proscrito
    .accept 5281 >>Aceite As Almas Inquietas
	.target Caretaker Alen
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Carlin|r
    .turnin 5241 >>Entregue o Tio Carlin
    .accept 5211 >>Aceite Defensores de Vila Quarentena
	.target Carlin Redpath
step
    .goto Eastern Plaguelands,81.627,58.077
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jessica Dávila|r
    .home >>Defina sua Pedra do Regresso na Capela Esperança da Luz
    .target Jessica Chambers
    .bindlocation 2268
    .subzoneskip 2268,1
step
    #completewith next
    .subzone 2273 >>Viaje até Zul'Mashar
step
	.goto Eastern Plaguelands,64.25,22.09,50,0
	.goto Eastern Plaguelands,68.57,20.95,50,0
	.goto Eastern Plaguelands,69.23,18.48
	>>Mate |cRXP_ENEMY_Infiltrator Hameya|r. Saqueie-a para obter o |cRXP_LOOT_Key|r
	>>|cRXP_WARN_Você deve ser capaz de evitar todos os inimigos no caminho acima da montanha. Corra passando por todos, depois corra para as montanhas a leste. Não se aproxime dos túmulos|r
    .complete 6024,1 --Hameya's Key (1)
	.unitscan Infiltrator Hameya
step
	#completewith Termites
	.subzone 2277 >>Viaje até Plaguewood
step
    #completewith Egan1
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
	.goto Eastern Plaguelands,26.48,37.58,0
	>>Mate |cRXP_ENEMY_Diseased Flayers|r e |cRXP_ENEMY_Gibbering Ghouls|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com os |cRXP_FRIENDLY_Darrowshire Espíritos|r que aparecem sobre seus cadáveres
	>>|cRXP_WARN_Estes inimigos compartilham pontos de aparição com alguns tipos de inimigos, portanto mate tudo depois que todos os carniçais morrerem|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #label Termites
    #loop
    .goto Eastern Plaguelands,42.80,34.24,0
    .goto Eastern Plaguelands,39.97,21.11,50,0
    .goto Eastern Plaguelands,34.90,24.67,50,0
    .goto Eastern Plaguelands,30.69,24.99,50,0
    .goto Eastern Plaguelands,26.59,23.84,50,0
    .goto Eastern Plaguelands,24.19,23.62,50,0
    .goto Eastern Plaguelands,21.15,24.05,50,0
    .goto Eastern Plaguelands,20.90,29.89,50,0
    .goto Eastern Plaguelands,23.75,32.44,50,0
    .goto Eastern Plaguelands,26.48,37.58,50,0
    .goto Eastern Plaguelands,29.55,34.13,50,0
    .goto Eastern Plaguelands,34.89,35.29,50,0
    .goto Eastern Plaguelands,42.80,34.24,50,0
	>>Saqueie tan |cRXP_PICK_Termite Mounds|rfor its |cRXP_LOOT_Termites|r
    .complete 5901,1 --Plagueland Termites (100)
step
    #label Egan1
    .goto Eastern Plaguelands,14.45,33.74
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tEntre na casa, depois fale com |cRXP_FRIENDLY_Egan|r e |cRXP_FRIENDLY_Augustus|r
    .turnin 5281 >>Entregue As Almas Inquietas
	.target Egan
    .isOnQuest 5281
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	>>Mate |cRXP_ENEMY_Diseased Flayers|r e |cRXP_ENEMY_Gibbering Ghouls|r
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com os |cRXP_FRIENDLY_Darrowshire Espíritos|r que aparecem sobre seus cadáveres
	>>|cRXP_WARN_Estes inimigos compartilham pontos de aparição com alguns tipos de inimigos, portanto mate tudo depois que todos os carniçais morrerem|r
    .complete 5211,1 --Darrowshire Spirits Freed (15)
	.unitscan Diseased Flayer;Gibbering Ghoul;Cannibal Ghoul
	.skipgossip
step
    #loop
    .goto Eastern Plaguelands,77.11,48.00,0
    .goto Eastern Plaguelands,67.30,40.67,0
    .goto Eastern Plaguelands,26.48,37.58,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
	.goto Eastern Plaguelands,68.60,38.60,60,0
	.goto Eastern Plaguelands,66.00,36.00,60,0
	.goto Eastern Plaguelands,64.60,38.00,60,0
	.goto Eastern Plaguelands,65.40,41.20,60,0
	.goto Eastern Plaguelands,66.60,38.60,60,0
	.goto Eastern Plaguelands,68.20,40.80,60,0
    >>Mate more |cRXP_ENEMY_Morto-vivo|rin the zone for |T133447:0|t[|cRXP_LOOT_Minion's Scourgestone|r]
    .collect 12840,20 --Minion's Scourgestones (x20)
step
    #completewith next
    .hs >>Use a Pedra de Regresso para a Capela da Esperança da Luz
    .bindlocation 2268,1
    .subzoneskip 2268
    .cooldown item,6948,>2,1
step
    .goto Eastern Plaguelands,81.44,59.81
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nicholas|r e |cRXP_FRIENDLY_Carlin|r
	.turnin 5510 >>Entregue Pedra do Flagelo do Lacaio
	.target Duke Nicholas Zverenhoff
step
    .goto Eastern Plaguelands,81.05,57.55
    >>Fale com |cRXP_FRIENDLY_Metz|r
    .accept 9141 >>Aceite They Call Me "The Rooster"
    .turnin 9141 >>Entregue They Call Me "The Rooster"
    .target Dispatch Commander Metz
    .itemcount 12844,1 --Argent Dawn Valor Token (1)
step
    .goto Eastern Plaguelands,81.51,59.77
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Carlin|r
    .turnin 5211 >>Entregue Defensores da Vila das Flechas
	.target Carlin Redpath
step
    #completewith UCvisit2
	.goto Eastern Plaguelands,80.22,57.01
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Georgia|r
    .fly Undercity >>Fly to Cidade Baixa
	.target Georgia
	.zoneskip Undercity
step
    .goto Undercity,69.79,43.16
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bauhaus|r
    .turnin 5023 >>Entregue Better Late Than Never
    .accept 5049 >>Aceite The Jeremiah Blues
	.target Royal Overseer Bauhaus
step
    .goto Undercity,67.61,44.14
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jeremiah|r
    .turnin 5049 >>Entregue The Jeremiah Blues
    .accept 5050 >>Aceite Good Sorte Da Sorte
	.target Jeremiah Payson
step
    .goto Undercity,51.88,64.49,30,0
    .goto Undercity,58.07,91.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sylvanas|r
    .accept 5961 >>Aceite O Campeão da Rainha Banshees
	.target Lady Sylvanas Windrunner
step
    #label UCvisit2
	#completewith next
    .goto Tirisfal Glades,61.85,66.59,60 >>Saia da Cidade Baixa
	.zoneskip Tirisfal Glades
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vandis|r
    .turnin 5234 >>Entregue Devolver to the Baluarte
    .accept 5235 >>Aceite Alvo: Gahrron's Murchando
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.28,69.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dithers|r
    .turnin 964 >>Entregue Fragmentos de Ossos
	.target Apothecary Dithers
    .isQuestComplete 964
step
    .goto Tirisfal Glades,83.29,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mickey|r
    .turnin 5901 >>Entregue Uma Praga Sobre Vós
    .accept 5902 >>Aceite A Praga Sobre Ti
	.target Mickey Levine
step
	#optional
    .isQuestTurnedIn 5901
    .destroy 15043 >>Remova qualquer |T134321:0|t[Cupim das Terras Pestilentas] restante
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tSuba para o último andar do prédio, depois fale com |cRXP_FRIENDLY_Janice|r
    .turnin 5050 >>Entregue Good Sorte Da Sorte
    .accept 5051 >>Aceite Dois Halves Become Um
	.target Janice Felstone
step
    #loop
	.line Western Plaguelands,36.8,58.6,36.4,56.4,37.4,55.6,38.6,56.2,37.8,57.6,36.8,58.6
	.goto Western Plaguelands,36.80,58.60,0
	.goto Western Plaguelands,36.80,58.60,50,0
	.goto Western Plaguelands,36.40,56.40,50,0
	.goto Western Plaguelands,37.40,55.60,50,0
	.goto Western Plaguelands,38.60,56.20,50,0
	.goto Western Plaguelands,37.80,57.60,50,0
	>>Mate as |cRXP_ENEMY_Jabbering Ghoul|r. Saqueie-o para obter o |cRXP_LOOT_Good Luck Other-Half-Charm|r
    .use 12722 >>Usar-o para criar o |cRXP_LOOT_Pingente da Sorte|r
    .complete 5051,1 --Good Luck Charm (1)
	.unitscan Jabbering Ghoul
step
    .goto Western Plaguelands,38.40,54.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Janice|r no último andar do prédio
    .turnin 5051 >>Entregue Dois Halves Become Um
	.target Janice Felstone
step
    .goto Western Plaguelands,49.13,78.53
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marlene|r dentro da casa
    .turnin 5152 >>Entregue Auntie Marlene
    .accept 5153 >>Aceite Uma Historiadora Estranha
	.target Marlene Redpath
step
    .goto Western Plaguelands,49.69,76.75
	>>Saqueie |cRXP_PICK_Joseph Redpath's Monument|r for |cRXP_LOOT_Joseph's Wedding Ring|r
    .complete 5153,1 --Joseph's Wedding Ring (1)
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r no andar superior da estalagem
    .turnin 5153 >>Entregue Uma Historiadora Estranha
    .accept 5154 >>Aceite The Annals of Darrowshire
    .turnin 4972 >>Entregue Contando o Tempo
	.target Chromie
step
    .goto Western Plaguelands,43.4,69.6
	>>Saqueie hall until you loot the |cRXP_LOOT_Annals of Darrowshire|r
	>>|cRXP_WARN_Muitos livros são falsificados e fazem aparecer inimigos quando abertos. Os livros verdadeiros têm páginas inteiramente brancas, sem coloração cinza/escura. Você pode precisar clicar em livros falsificados para fazer aparecer um verdadeiro|r
    .complete 5154,1 --Annals of Darrowshire (1)
	.link https://i.imgur.com/B2HDb6K.png >>https://i.imgur.com/B2HDb6K.png >> Clique AQUI para um exemplo visual
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r no andar superior da estalagem
    .turnin 5154 >>Entregue Os Anais de Vila das Flechas
    .accept 5210 >>Aceite Brother Carlin
	.target Chromie
step
    .goto Western Plaguelands,53.73,64.66
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mulgris|r
    .turnin 4985 >>Entregue A Natureza Também Sofre
    .accept 4987 >>Aceite Glyphed Oaken Branch
	.target Mulgris Deepriver
step
    .goto Western Plaguelands,62.80,58.76
    >>Mate o |cRXP_ENEMY_Mestre da Caldeira Almafúria|r. Saqueie dele a |cRXP_LOOT_Chave da Caldeira|r
	>>|cRXP_WARN_Este inimigo tem uma doença de silenciamento de 10 segundos|r << !Priest
	>>|cRXP_WARN_Este inimigo tem uma doença de silenciamento de 10 segundos; lance Abolir Doença com antecedência e mantenha-a ativa|r << Priest
    .complete 5235,1 --Gahrron's Withering Cauldron Key (1)
	.unitscan Cauldron Lord Soulwrath
step
    .goto Western Plaguelands,62.5,58.6
	>>Clique no |cRXP_PICK_Scourge Objetos de Cata|r fervilhando no topo do estrado
    .turnin 5235 >>Entregue Alvo: Gahrron's Murchando
    .accept 5236 >>Aceite Devolver para o Baluarte
step
	.goto Eastern Plaguelands,28.03,86.16
	>>Clique em the |cRXP_PICK_mound of dirt|rbehind the crypt
    .turnin 6024 >>Entregue Hameya's Plea
	.isQuestComplete 6024
step
	.goto Eastern Plaguelands,26.55,74.72
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nathanos|r
    .turnin 6022 >>Entregue Matar com Propósito
	.turnin 5961 >>Entregue O Campeão da Rainha Banshees
	.target Nathanos Blightcaller
step
	#completewith next
	.subzone 192 >>Viaje até Northridge Lumber Camp
step
	.goto Western Plaguelands,48.35,32.00
	>>Entre na casa de the mill.Clique no ramp,then click the |cRXP_PICK_Termite Barrel|r
    .turnin 5902 >>Entregue Uma Praga Sobre Vós
    .accept 6390 >>Aceite A Praga Sobre Ti
step
    .goto Western Plaguelands,39.46,66.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r no andar superior da estalagem
    .turnin 5154 >>Entregue Os Anais de Vila das Flechas
	.target Chromie
step
	#completewith next
	.subzone 152 >>Volte para Baluarte
step
    .goto Tirisfal Glades,83.03,71.91
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vandis|r
    .turnin 5236 >>Entregue Devolver to the Baluarte
	.target Shadow Priestess Vandis
step
    .goto Tirisfal Glades,83.30,72.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mickey|r
    .turnin 6390 >>Entregue Uma Praga Sobre Vós
	.target Mickey Levine
step
    .goto Tirisfal Glades,83.15,68.92
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Derrington|r
    .turnin 5238 >>Entregue Missão Cumprida!
	.target High Executor Derrington
step << skip
    .goto Tirisfal Glades,61.87,59.11
    >>|cRXP_WARN_Suba na Torre do Zepelim|r
    .zone Stranglethorn Vale >>Pegue o zepelim para Stranglethorn
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thysta|r
    .complete 64217,2 << Druid--Speak to Thysta at Grom'gol Base Camp (1)
    .complete 64063,2 << !Druid--Speak to Thysta at Grom'gol Base Camp (1)
	.target Thysta
step << skip
    .goto Stranglethorn Vale,32.5,29.3
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thysta|r
	.fly Stonard >>Fly to Pedregal
	.target Thysta
    .subzoneskip 75
step << skip
	#completewith next
	.goto Swamp of Sorrows,33.4,71.9,60,0
	.goto Swamp of Sorrows,33.2,68.4,60,0
	.zone Blasted Lands >>Viaje para as Terras Devastadas

step << skip
    .goto Blasted Lands,58.1,56.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senhor da Guerra Dar'tun|r
    --.turnin 64063 >>Turn in The Dark Portal << !Druid
    --.turnin 64217 >>Turn in The Dark Portal << Druid
    --.accept 9407 >>Accept Through the Dark Portal
    .target Warlord Dar'toon

]])
