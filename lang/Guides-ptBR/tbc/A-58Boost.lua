if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#name Personagem Melhorado 58-60
#subgroup RestedXP Aliança 1-20 58-60
#subweight -1
#title Personagem Melhorado 58-60
#next 59-61 Península Fogo do Inferno

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
step
    .isOnQuest 64038
    .goto Stormwind City,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .complete 64038,1 --Speak to Dungar Longdrink, the Gryphon Master (1)
    .fly Morgan's Vigil >>Fly to Vigia de Morgan
    .target Dungar Longdrink
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helendis Flumicórnio|r
    .accept 4182 >>Aceite Ameaça Dragonkin
    .target Helendis Riverhorn
step
    #loop
    .goto Burning Steppes,81.8,27.8,0
    .goto Burning Steppes,91.4,32.6,0
    .goto Burning Steppes,89.8,54.6,0
    .goto Burning Steppes,90.6,43.6,0
    .goto Burning Steppes,81.8,27.8,70,0
    .goto Burning Steppes,91.4,32.6,70,0
    .goto Burning Steppes,89.8,54.6,70,0
    .goto Burning Steppes,90.6,43.6,70,0
    >>Mate os |cRXP_ENEMY_Black Broodlings|r, os |cRXP_ENEMY_Black Dragonspawns|r, os |cRXP_ENEMY_Black Wyrmkins|r e um |cRXP_ENEMY_Draco Preto|r
    .complete 4182,1 -- Black Broodling slain (15)
    .mob +Black Broodling
    .complete 4182,2 -- Black Dragonspawn slain (10)
    .mob +Black Dragonspawn
    .complete 4182,4 -- Black Wyrmkin slain (4)
    .mob +Black Wyrmkin
    .complete 4182,3 -- Black Drake slain
    .mob +Black Drake
    .isOnQuest 4182
step
    .goto Burning Steppes,85.820,68.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helendis Flumicórnio|r
    .turnin 4182 >>Entregue Ameaça Dragonkin
    .accept 4183 >>Aceite The True Masters
    .target Helendis Riverhorn
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borgus Braçoforte|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Borgus Stoutarm
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .turnin 4183 >>Entregue The True Masters
    .accept 4184 >>Aceite The True Masters
    .target Magistrate Solomon
step << Mage
    .isOnQuest 4184
    .cast 3561 >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    .isQuestTurnedIn 4182
    #completewith next
    .goto Stormwind City,47.87,31.31,8,0
    .goto Stormwind City,47.87,31.31,6 >>Vá em direção à |cRXP_FRIENDLY_Royal Factor Bathrilor|r no andar de cima
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Bolvar Fordragon|r
    .turnin 4184 >>Entregue The True Masters
    .accept 4185 >>Aceite The True Masters
    .target Highlord Bolvar Fordragon
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.102,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Dama Katrana Prestor|r
    .complete 4185,1 -- Advice from Lady Prestor
    .skipgossip
    .target Lady Katrana Prestor
step
    .isQuestTurnedIn 4182
    .goto Stormwind City,78.213,17.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-lorde Bolvar Fordragon|r
    .turnin 4185 >>Entregue The True Masters
    .accept 4186 >>Aceite The True Masters
    .target Highlord Bolvar Fordragon
step
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
    .zoneskip Redridge Mountains
step
    .isQuestTurnedIn 4182
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .turnin 4186 >>Entregue The True Masters
    .accept 4223 >>Aceite The True Masters
    .target Magistrate Solomon
step
    #completewith next
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Burning Steppes>>Voe para Estepes Ardentes
    .target Ariena Stormfeather
    .zoneskip Burning Steppes
step
    .isQuestTurnedIn 4182
    .goto Burning Steppes,84.744,69.015
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Maximiliano|r
    .turnin 4223 >>Entregue The True Masters
    .target Marshal Maxwell
step
    #completewith next
    .goto Burning Steppes,84.333,68.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borgus Braçoforte|r
    .fly Southshore >>Voe para Costa Sul
    .target Borgus Stoutarm
step
    .goto Hillsbrad Foothills,51.170,58.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Innkeeper Anderson|r
    .home >>Defina sua Pedra de Retorno em Costa Sul
    .target Innkeeper Anderson
    .bindlocation 271
step
	#completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Voe para Chillwind Camp
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anchorite Truuen|r
    >>|cRXP_WARN_Pule este passo se ele não estiver aqui|r
    .accept 9474 >>Aceite The Marca of the Lightbringer
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .accept 5092 >>Aceite Abrindo Caminho
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.967,83.546
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Oficial Argêntea Cândida|r
    .accept 5401 >>Aceite Ordem da Aurora Argêntea
    .turnin 5401 >>Entregue Ordem da Aurora Argêntea
    .target Argent Officer Pureheart
step
    #completewith ADC
    .cast 17670 >>|cRXP_WARN_Equipe o|r |T133440:0|t[Ordem da Aurora Argêntea] |cRXP_WARN_para começar a coletar|r |T133447:0|t[Pedra do Flagelo]
    .use 12846
step
    .goto Western Plaguelands,43.419,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nathaniel Dumah|r
    .accept 5903 >>Aceite A Praga Sobre Ti
    .target Nathaniel Dumah
step
    #completewith next
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bibilfaz Penapita|r
    .fly Eastern Plaguelands >>Fly to Terras Pestilentas Orientais
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caretaker Alen|r
    .accept 5281 >>Aceite As Almas Inquietas
    .accept 6021 >>Aceite Zaeldarr, o Proscrito
    .target Caretaker Alen
step << Hunter
    #sticky
    .tame 8602 >>|cRXP_WARN_Se seu pet não tem habilidades além de|r |T132270:0|t[Rosnar]|cRXP_WARN_, abandone seu pet e capture um |cRXP_ENEMY_Morcego|r de nível 58 no caminho para Plaguewood|r
    >>|cRXP_WARN_Compre alguns|r |T134526:0|t[Dried King Bolete] |cRXP_WARN_para alimentar seu novo pet|r
    .collect 8948,20
    .goto Eastern Plaguelands,79.5,64.0
step
    #sticky
    .abandon 5211 >>Abandone Defensores da Vila das Flechas se você tiver essa missão
step
    #loop
    .goto Eastern Plaguelands,41.2,25.2,0
    .goto Eastern Plaguelands,42.1,38.2,0
    .goto Eastern Plaguelands,32.0,35.8,0
    .goto Eastern Plaguelands,33.8,25.8,0
    .goto Eastern Plaguelands,29.9,23.1,0
    .goto Eastern Plaguelands,26.5,37.5,0
    .goto Eastern Plaguelands,20.4,20.8,0
    .goto Eastern Plaguelands,31.4,29.6,0
    .goto Eastern Plaguelands,41.2,25.2,70,0
    .goto Eastern Plaguelands,42.1,38.2,70,0
    .goto Eastern Plaguelands,32.0,35.8,70,0
    .goto Eastern Plaguelands,33.8,25.8,70,0
    .goto Eastern Plaguelands,29.9,23.1,70,0
    .goto Eastern Plaguelands,26.5,37.5,70,0
    .goto Eastern Plaguelands,20.4,20.8,70,0
    .goto Eastern Plaguelands,31.4,29.6,70,0
    >>Abra o .Saqueie them for the |cRXP_LOOT_Plagueland Termites|r
    .complete 5903,1 --Collect Plagueland Termites (x100)
step
    #label Egan
    .goto Eastern Plaguelands,14.448,33.740
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Egan|r
    .turnin 5281 >>Entregue As Almas Inquietas
    .target Egan
step
    .hs >>Use sua Pedra de Regresso para ir à Costa Sul
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Voe para Chillwind Camp
    .target Darla Harris
    .zoneskip Western Plaguelands
step
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anchorite Truuen|r
    >>|cRXP_WARN_Pule este passo se ele não estiver aqui|r
    .accept 9474 >>Aceite The Marca of the Lightbringer
	.target Anchorite Truuen
step
    .goto Western Plaguelands,48.91,80.84,70,0
    .goto Western Plaguelands,50.01,76.90
    >>Mate |cRXP_ENEMY_Skeletal Flayers|r e |cRXP_ENEMY_Slavering Carniçais|r
    .complete 5092,1 -- Skeletal Flayer slain (10)
    .mob +Skeletal Flayer
    .complete 5092,2 -- Slavering Ghoul slain (10)
    .mob +Slavering Ghoul
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marlene Trilharrubra|r
    >>|cRXP_FRIENDLY_Marlene Trilharrubra|r também pode estar no andar de cima
    .accept 5142 >>Aceite Pequena Pâmela
    .target Marlene Redpath
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .turnin 5092 >>Entregue Abrindo Caminho
    .accept 5215 >>Aceite Os Caldeirões do Flagelo
    .accept 5097 >>Aceite Em Todas as Torres de Vigia
    .target Commander Ashlam Valorfist
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Donélia|r
    .turnin 5215 >>Entregue Os Caldeirões do Flagelo
    .accept 5216 >>Aceite Alvo: Campo Pedravil
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 5903 >>Entregue Uma Praga Sobre Vós
    .accept 5904 >>Aceite A Praga Sobre Ti
    .target Nathaniel Dumah
step
    .goto Western Plaguelands,40.116,71.561,-1
    .goto Western Plaguelands,40.038,71.713,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre|r
    .complete 5097,1 --Tower One marked
step
    .goto Western Plaguelands,37.015,57.145
    >>Mate for the |cRXP_LOOT_Felstone Field Cauldron Key|r
    >>|cRXP_ENEMY_Mestre da Caldeira Bilevil|r |cRXP_WARN_pode aparecer conforme você se aproxima do|r |cRXP_PICK_Caldeirão do Flagelo|r
    .complete 5216,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Bilemaw
step
    .goto Western Plaguelands,37.194,56.860
    >>Clique em |cRXP_PICK_Caldeirão da Praga|r
    .turnin 5216 >>Entregue Alvo: Campo Pedravil
    .accept 5217 >>Aceite Retorno ao Acampamento Vento Frio
step
    .goto Western Plaguelands,42.326,66.105,-1
    .goto Western Plaguelands,42.422,66.222,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre|r
    .complete 5097,2 --Tower Two marked
step
    .goto Western Plaguelands,44.217,63.319,-1
    .goto Western Plaguelands,44.247,63.131,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre|r
    .complete 5097,3 --Tower Three marked
step
    #label ADC
    .goto Western Plaguelands,46.681,71.135,-1
    .goto Western Plaguelands,46.558,71.156,-1
    .use 12815 >>|cRXP_WARN_Use a|r |T135432:0|t[Tocha Sinalizadora] |cRXP_WARN_ao lado da entrada da Torre|r
    .complete 5097,4 --Tower Four marked
step
    #completewith next
    .subzone 3197 >>Viaje até Chillwind Camp
step
    .goto Western Plaguelands,42.702,84.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .turnin 5097 >>Entregue All Along the Watchtowers
    .accept 5533 >>Aceite Scolomântia
    .target Commander Ashlam Valorfist
step
    #sticky
    #optional
    .isQuestTurnedIn 5097
    .destroy 12815 >>Destrua a |T135432:0|t[Tocha Sinalizadora]
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alquimista Arvignon|r
    >>|cRXP_WARN_Não aceite a sequência ainda|r
    .turnin 5533 >>Entregue Scolomântia
    .accept 5537 >>Aceite Fragmentos de Ossos
    .target Alchemist Arbington
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Donélia|r
    .turnin 5217 >>Entregue em Chillwind Camp
    .accept 5219 >>Aceite Alvo: Lágrimas de Dalson
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mulgris Riofundo|r
    >>|cRXP_ENEMY_Freezing Carniçais|r |cRXP_WARN_cast|r |T135848:0|t[Congelamento Instantâneo]|cRXP_WARN_. Esta habilidade atordoa por 5 segundos. Evite atrair vários ao mesmo tempo|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .accept 4984 >>Aceite The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,49.2,58.4,0
    .goto Western Plaguelands,51.6,47.6,0
    .goto Western Plaguelands,43.0,48.2,0
    .goto Western Plaguelands,43.4,57.8,0
    .goto Western Plaguelands,49.2,58.4,70,0
    .goto Western Plaguelands,51.6,47.6,70,0
    .goto Western Plaguelands,43.0,48.2,70,0
    .goto Western Plaguelands,43.4,57.8,70,0
    .goto Western Plaguelands,46.6,40.4,70,0
    >>Mate os |cRXP_ENEMY_Diseased Wolves|r
    >>|cRXP_ENEMY_Lobos Doentes|r |cRXP_WARN_compartilham desova com |cRXP_ENEMY_Espreitas Carniceiras|r. Você pode precisar matá-los para forçar |cRXP_ENEMY_Lobos Doentes|r a desovar|r
    .complete 4984,1 --Kill Diseased Wolf (x8)
    .unitscan Diseased Wolf
step
    .goto Western Plaguelands,47.796,50.671
    >>|cRXP_WARN_Entre no Celeiro das Lágrimas de Dalson|r
    >>Clique em |cRXP_PICK_Mrs. Dalson's Diary|r no chão
    .accept 5058 >>Aceite Mrs. Dalson Diary
    .turnin 5058 >>Entregue Mrs. Dalson Diary
step
    .goto Western Plaguelands,47.86,49.88,25,0
    .goto Western Plaguelands,48.48,51.56,25,0
    .goto Western Plaguelands,47.39,51.77,25,0
    .goto Western Plaguelands,46.64,49.21,25,0
    .goto Western Plaguelands,47.86,49.88
    >>Mate o |cRXP_LOOT_Esqueleto Errante|r. Saqueie-o para a |cRXP_LOOT_Dalson Casinha Chave|r
    >>|cRXP_WARN_O |cRXP_LOOT_Esqueleto Errante|r patrulha ao redor do Celeiro Lágrima de Dalson e da Casa|r
    .collect 12738,1,5060,1 --Collect Dalson Outhouse Key (x1)
    .unitscan Wandering Skeleton
step
    #completewith next
    .goto Western Plaguelands,48.109,49.654
    >>Clique em |cRXP_PICK_Casinha|r para invocar |cRXP_ENEMY_Fazendeiro Dalson|r
    .turnin 5059 >>Entregue Trancado
step
    .goto Western Plaguelands,48.115,49.814
    >>Mate |cRXP_ENEMY_Fazendeiro Dalson|r. Saque-o pelo |cRXP_LOOT_Dalson Cabinet Chave|r
    .collect 12739,1,5060,1 --Collect Dalson Cabinet Key (x1)
    .mob Farmer Dalson
step
    .goto Western Plaguelands,47.353,49.626
    >>Clique em |cRXP_PICK_Armário Trancado|r acima das escadas na casa
    .turnin 5060 >>Entregue Trancado
step
    .goto Western Plaguelands,46.156,52.427
    >>Mate for the |cRXP_LOOT_Dalson's Tears Cauldron Key|r
    >>|cRXP_ENEMY_Mestre da Caldeira Malvínio|r |cRXP_WARN_pode aparecer conforme você se aproxima do|r |cRXP_PICK_Caldeirão|r
    .complete 5219,1 -- Felstone Field Cauldron Key (1)
    .unitscan Cauldron Lord Malvinious
step
    #label DalsonCauldron
    .goto Western Plaguelands,46.176,52.009
    >>Clique em |cRXP_PICK_Caldeirão da Praga|r
    .turnin 5219 >>Entregue Alvo: Lágrimas de Dalson
    .accept 5220 >>Aceite Retorno ao Acampamento Vento Frio
step
    .goto Western Plaguelands,48.348,31.996
    >>Clique em the |cRXP_PICK_Northridge Lumber Mill Crate|rto place the |cRXP_PICK_Termite Barrel|re then click on the |cRXP_PICK_Termite Barrel|rafter
    .skipgossip
    .turnin 5904 >>Entregue Uma Praga Sobre Vós
    .accept 6389 >>Aceite A Praga Sobre Ti
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .accept 6004 >>Aceite Negócios inacabados
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,50.85,40.68,60,0
    .goto Western Plaguelands,51.97,44.47,60,0
    .goto Western Plaguelands,41.23,51.54,60,0
    .goto Western Plaguelands,50.85,40.68
    >>Mate |cRXP_ENEMY_Scarlet Medics|r, |cRXP_ENEMY_Scarlet Hunters|r, |cRXP_ENEMY_Scarlet Mages|r e |cRXP_ENEMY_Scarlet Knights|r
    >>|cRXP_ENEMY_Scarlet Medics|r |cRXP_WARN_e |cRXP_ENEMY_Scarlet Hunters|r compartilham aparições|r
    >>|cRXP_ENEMY_Scarlet Mages|r |cRXP_WARN_e |cRXP_ENEMY_Scarlet Knights|r compartilham aparições|r
    .complete 6004,1 --Scarlet Medic (2)
    .mob +Scarlet Medic
    .complete 6004,2 --Scarlet Hunter (2)
    .mob +Scarlet Hunter
    .complete 6004,3 --Scarlet Mage (2)
    .mob +Scarlet Mage
    .complete 6004,4 --Scarlet Knight (2)
    .mob +Scarlet Knight
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6004 >>Entregue Negócios inacabados
    .accept 6023 >>Aceite Negócios inacabados
    .target Kirsta Deepshadow
step
    .goto Western Plaguelands,56.38,34.11,50,0
    .goto Western Plaguelands,57.83,36.10
    >>Mate |cRXP_ENEMY_Huntsman Radley|r
    .complete 6023,1 --Kill Huntsman Radley (x1)
    .mob Huntsman Radley
step
    #completewith next
    >>Mate |cRXP_ENEMY_Cavalier Durgen|r
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    *|cRXP_WARN_Há um inimigo de elite nível 63 que pode aparecer na torre, se esse for o caso apenas espere |cRXP_ENEMY_Fidalgo Durgen|r descer|r
    .unitscan Cavalier Durgen
step
    .isOnQuest 9474
    .goto Western Plaguelands,55.192,23.511
    >>Abra o top of the tower.Saqueie it for the |cRXP_LOOT_Mark of the Lightbringer|r
    .complete 9474,1 --Collect Mark of the Lightbringer (x1)
step
    #completewith next
    .goto Western Plaguelands,54.520,23.818
    >>Mate |cRXP_ENEMY_Cavalier Durgen|r
    >>|cRXP_WARN_Ele pode estar patrulhando para cima e para baixo da torre|r
    .complete 6023,2 --Kill Cavalier Durgen (x1)
    .unitscan Cavalier Durgen
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6023 >>Entregue Negócios inacabados
    .accept 6025 >>Aceite Negócios inacabados
    .target Kirsta Deepshadow
step
    #completewith next
    .goto Western Plaguelands,45.7,18.8
    .subzone 190 >>Viaje até Hearthglen
step
    .goto Western Plaguelands,45.7,18.8
    >>Vá para a Torre de Hearthglen
    >>|cRXP_WARN_Você pode correr direto para o topo e pular para baixo, ou abrir caminho subindo|r
    >>|cRXP_WARN_Evite |cRXP_ENEMY_Sumo Protetor Lorik|r, que é um Élite forte que patrulha Hearthglen|r
    .complete 6025,1 -- Overlook Hearthglen from a high vantage point
    .unitscan High Protector Lorik
step
    .goto Western Plaguelands,51.923,28.062
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kirsta Deepshadow|r
    .turnin 6025 >>Entregue Negócios inacabados
    .isQuestComplete 6025
    .target Kirsta Deepshadow
step
    #completewith next
    .subzone 3197 >>Viaje até Chillwind Camp
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Donélia|r
    .target High Priestess MacDonnell
    .turnin 5220 >>Entregue em Chillwind Camp
    .accept 5222 >>Aceite Alvo: Santuário Contorcido
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anchorite Truuen|r
    .turnin 9474 >>Entregue A Marca do Portador da Luz
	.target Anchorite Truuen
step
    .goto Western Plaguelands,43.418,84.834
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nathaniel Dumah|r
    .turnin 6389 >>Entregue Uma Praga Sobre Vós
    .target Nathaniel Dumah
step
    #completewith CountingTime
    >>Mate os |cRXP_ENEMY_Skeletal Executioners|r e os |cRXP_ENEMY_Skeletal Acólitos|r. Saqueie-os para obter seus |cRXP_LOOT_Skeletal Fragmentos|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r no andar de cima
    .accept 4971 >>Aceite A Matter of Tempo
    .target Chromie
step
    .goto Western Plaguelands,45.172,62.559,25,0
    .goto Western Plaguelands,46.858,62.040,25,0
    .goto Western Plaguelands,48.324,62.610,25,0
    .goto Western Plaguelands,48.10,63.92,20,0
    .goto Western Plaguelands,48.06,66.18
    >>Mate os |cRXP_ENEMY_Parasitas Temporais|r
    .use 12627 >>|cRXP_WARN_Use o|r |T134229:0|t[Deslocador Temporal] |cRXP_WARN_nos silos para fazê-los aparecer. Se o silo não estiver pulsando em azul, ele não pode fazer aparecer nenhum|r |cRXP_ENEMY_Temporal Parasites|r
    >>|cRXP_WARN_Vários |cRXP_ENEMY_Temporal Parasites|r podem aparecer ao mesmo tempo, e uma vez que um morre, outro pode aparecer instantaneamente. Eles também continuarão a lançar|r |T136091:0|t[Retardar] |cRXP_WARN_sobre você, reduzindo severamente sua velocidade de movimento e ataque|r
    >>|cRXP_WARN_Os |cRXP_ENEMY_Parasites|r não conseguem nadar! Se você ficar sobrecarregado, tente correr para|r |T135861:0|t[|cRXP_LOOT_Água|r] |cRXP_WARN_para evitá-los|r
    .complete 4971,1 -- Temporal Parasite slain (15)
    .mob Temporal Parasite
step
    #label CountingTime
    .isQuestTurnedIn 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chromie|r
    .turnin 4972 >>Entregue Contando o Tempo
    .target Chromie
step
    #loop
    .goto Western Plaguelands,37.8,70.6,0
    .goto Western Plaguelands,42.6,73.8,0
    .goto Western Plaguelands,49.6,69.4,0
    .goto Western Plaguelands,49.6,63.6,0
    .goto Western Plaguelands,43.0,63.4,0
    .goto Western Plaguelands,39.8,67.4,0
    .goto Western Plaguelands,37.8,70.6,70,0
    .goto Western Plaguelands,42.6,73.8,70,0
    .goto Western Plaguelands,49.6,69.4,70,0
    .goto Western Plaguelands,49.6,63.6,70,0
    .goto Western Plaguelands,43.0,63.4,70,0
    .goto Western Plaguelands,39.8,67.4,70,0
    >>Mate os |cRXP_ENEMY_Skeletal Executioners|r e os |cRXP_ENEMY_Skeletal Acólitos|r. Saqueie-os para obter seus |cRXP_LOOT_Skeletal Fragmentos|r
    .complete 5537,1 -- Collect Skeletal Fragments (x15)
    .mob Skeletal Executioner
    .mob Skeletal Acolyte
step
    .goto Western Plaguelands,53.020,65.718
    >>Clique em |cRXP_PICK_Caldeirão da Praga|r
    .turnin 5222 >>Entregue Alvo: Santuário Contorcido
    .accept 5223 >>Aceite Retorno ao Acampamento Vento Frio
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mulgris Riofundo|r
    >>|cRXP_ENEMY_Freezing Carniçais|r |cRXP_WARN_cast|r |T135848:0|t[Congelamento Instantâneo]|cRXP_WARN_. Esta habilidade atordoa por 5 segundos. Evite atrair vários ao mesmo tempo|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4984 >>Entregue A Natureza Também Sofre
    .accept 4985 >>Aceite The Wildlife Suffers Too
    .target Mulgris Deepriver
step
    #loop
    .goto Western Plaguelands,58.8,58.6,0
    .goto Western Plaguelands,53.6,48.0,0
    .goto Western Plaguelands,58.8,52.6,0
    .goto Western Plaguelands,67.2,46.6,0
    .goto Western Plaguelands,66.0,55.6,0
    .goto Western Plaguelands,60.8,50.8,0
    .goto Western Plaguelands,58.8,58.6,70,0
    .goto Western Plaguelands,53.6,48.0,70,0
    .goto Western Plaguelands,58.8,52.6,70,0
    .goto Western Plaguelands,67.2,46.6,70,0
    .goto Western Plaguelands,66.0,55.6,70,0
    .goto Western Plaguelands,60.8,50.8,70,0
    >>Mate os |cRXP_ENEMY_Doentes Grizzlies|r
    >>|cRXP_ENEMY_Diseased Grizzlies|r |cRXP_WARN_compartilham aparições com |cRXP_ENEMY_Plague Lurkers|r. Você pode precisar matá-los para forçar |cRXP_ENEMY_Diseased Grizzlies|r a aparecer|r
    .complete 4985,1 -- Diseased Grizzly slain (8)
    .unitscan Diseased Grizzly
step
    .goto Western Plaguelands,53.733,64.662
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mulgris Riofundo|r
    >>|cRXP_ENEMY_Freezing Carniçais|r |cRXP_WARN_cast|r |T135848:0|t[Congelamento Instantâneo]|cRXP_WARN_. Esta habilidade atordoa por 5 segundos. Evite atrair vários ao mesmo tempo|r
    -->>|cRXP_WARN_If you have an Interact with Target/Mouseover keybind you can talk to |cRXP_FRIENDLY_Mulgris Deepriver|r from outside the house which is a lot safer|r
    .turnin 4985 >>Entregue A Natureza Também Sofre
    .accept 4986 >>Aceite Glyphed Oaken Branch << Mage
    .target Mulgris Deepriver
step
    #completewith next
    .subzone 3197 >>Viaje até Chillwind Camp
    .zoneskip Hillsbrad Foothills
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Donélia|r
    .turnin 5223 >>Entregue em Chillwind Camp
    .accept 5225 >>Aceite Alvo: Gahrron's Murchando
    .target High Priestess MacDonnell
step
    .goto Western Plaguelands,62.573,58.573
    >>Clique em |cRXP_PICK_Caldeirão da Praga|r
    .turnin 5225 >>Entregue Alvo: Gahrron's Murchando
    .accept 5226 >>Aceite Retorno ao Acampamento Vento Frio
step
    #completewith next
    .goto Eastern Plaguelands,27.850,86.245,15 >>Entre na casa de The Undercroft crypt
step
    .goto Eastern Plaguelands,27.467,84.853
    >>Mate for his |cRXP_LOOT_Cabeça|r
    .complete 6021,1 -- Zaeldarr's Head (1)
    .mob Zaeldarr the Outcast
step
    .isOnQuest 5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pâmela Trilharrubra|r
    .turnin 5142 >>Entregue Pequena Pâmela
    .accept 5149 >>Aceite A boneca de Pâmela
    .target Pamela Redpath
step
    .isQuestTurnedIn 5601,5142
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pâmela Trilharrubra|r
    .accept 5149 >>Aceite A boneca de Pâmela
    .target Pamela Redpath
step
    .goto Eastern Plaguelands,38.038,92.549,15,0
    .goto Eastern Plaguelands,39.643,92.522,15,0
    .goto Eastern Plaguelands,39.622,90.079
    >>Saque |T134164:0|t[|cRXP_LOOT_A boneca de Pâmela - Cabeça|r], |T134230:0|t[|cRXP_LOOT_A boneca de Pâmela - Lado Esquerdo|r] e |T134230:0|t[|cRXP_LOOT_A boneca de Pâmela - Lado Direito|r] em todos os edifícios
    >>|cRXP_WARN_Todos eles aparecem aleatoriamente em um dos 3 edifícios em Darrowshire|r
    .collect 12886,1,5149,1 -- Pamela's Doll's Head (1)
    .collect 12887,1,5149,1 -- Pamela's Doll's Left Side (1)
    .collect 12888,1,5149,1 -- Pamela's Doll's Right Side (1)
step
    >>|cRXP_WARN_Usar|r |T134164:0|t[|cRXP_LOOT_Cabeça da Boneca de Pâmela|r]|cRXP_WARN_,|r |T134230:0|t[|cRXP_LOOT_Lado Esquerdo da Boneca de Pâmela|r] |cRXP_WARN_ou|r |T134230:0|t[|cRXP_LOOT_Lado Direito da Boneca de Pâmela|r] |cRXP_WARN_para combiná-los em|r |cRXP_LOOT_A boneca de Pâmela|r
    .complete 5149,1 --Collect Pamela's Doll (x1)
    .use 12886
    .use 12887
    .use 12888
step
    .goto Eastern Plaguelands,36.489,90.718
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pâmela Trilharrubra|r
    .turnin 5149 >>Entregue A boneca de Pâmela
    .accept 5152 >>Aceite a Tia Marlene
    .accept 5241 >>Aceite o Tio Carlin
    .target Pamela Redpath
step
    .hs >>Use sua Pedra de Regresso para ir à Costa Sul
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .zoneskip Western Plaguelands
    .bindlocation 271,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Chillwind Camp >>Voe para Chillwind Camp
    .target Darla Harris
    .zoneskip Western Plaguelands
step
    .goto Western Plaguelands,42.972,84.501
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Donélia|r
    .turnin 5226 >>Entregue em Chillwind Camp
    .target High Priestess MacDonnell
step
    .isQuestComplete 9474
	.goto Western Plaguelands,42.909,84.494
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anchorite Truuen|r
    .turnin 9474 >>Entregue A Marca do Portador da Luz
	.target Anchorite Truuen
step
    .goto Western Plaguelands,42.702,84.031
    .target Commander Ashlam Valorfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Ashlam Punhobom|r
    .accept 5237 >>Aceite Missão Cumprida!
    .turnin 5237 >>Entregue Missão Cumprida!
step
    .goto Western Plaguelands,42.665,83.774
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Alquimista Arvignon|r
    .turnin 5537 >>Entregue Fragmentos de Ossos
    .target Alchemist Arbington
step
    .goto Western Plaguelands,49.2,78.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marlene Trilharrubra|r
    >>|cRXP_FRIENDLY_Marlene Trilharrubra|r também pode estar no andar de cima
    .turnin 5152 >>Entregue Auntie Marlene
    .accept 5153 >>Aceite Uma Historiadora Estranha
    .target Marlene Redpath
step
    .goto Western Plaguelands,49.696,76.754
    >>Clique em |cRXP_PICK_Monumento de Josefo Trilharrubra|r. Saque-o para |cRXP_LOOT_Anel de Casamento de Joseph|r
    .complete 5153,1 -- Collect Joseph's Wedding Ring (x1)
step
    .isQuestComplete 4971
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Crona|r no andar de cima
    .turnin 4971 >>Entregue A Matter of Tempo
    .accept 4972 >>Aceite A Contagem do Tempo
    .turnin 5153 >>Entregue Uma Historiadora Estranha
    .accept 5154 >>Aceite The Annals of Darrowshire
    .target Chromie
step
    .isQuestTurnedIn 4971
    #loop
    .goto Western Plaguelands,38.71,68.25,0
    .goto Western Plaguelands,38.51,69.74,0
    .goto Western Plaguelands,40.63,68.40,0
    .goto Western Plaguelands,41.08,67.45,0
    .goto Western Plaguelands,40.69,66.16,0
    .goto Western Plaguelands,41.46,69.85,0
    .goto Western Plaguelands,42.17,68.88,0
    .goto Western Plaguelands,42.67,70.31,0
    .goto Western Plaguelands,38.71,68.25,20,0
    .goto Western Plaguelands,38.51,69.74,20,0
    .goto Western Plaguelands,40.63,68.40,20,0
    .goto Western Plaguelands,41.08,67.45,20,0
    .goto Western Plaguelands,40.69,66.16,20,0
    .goto Western Plaguelands,41.46,69.85,15,0
    .goto Western Plaguelands,42.17,68.88,20,0
    .goto Western Plaguelands,42.67,70.31,20,0
    >>Abra o |cRXP_PICK_Small Lockboxes|r. Saqueie-os para obter |cRXP_LOOT_Andorhal Watches|r
    >>|cRXP_WARN_Esses são encontrados dentro das casas queimadas|r
    .complete 4972,1 --Collect Andorhal Watch (x5)
step
    #completewith next
    .goto Western Plaguelands,43.822,69.250,10,0 >>Entre na Prefeitura das Ruínas de Andorhal
step
    .goto Western Plaguelands,43.50,69.46
    >>Entre na Prefeitura das Ruínas de Andorhal
    >>Abra os |cRXP_PICK_Tomos Empoeirados|r. Saque-os para |cRXP_LOOT_Anais de Darrowshire|r
    >>|cRXP_WARN_O |cRXP_PICK_Musty Tomo|r correto terá suas páginas completamente escuras ou com uma mancha marrom. Se for apenas metade branco e metade preto, é uma armadilha|r
    >>|cRXP_WARN_Pode haver vezes em que todos os |cRXP_PICK_Musty Tomes|r são armadilhas e você deve abri-los para forçar um correto a aparecer|r
    .complete 5154,1 --Collect Annals of Darrowshire (x1)
    .link https://youtu.be/GUb1Ny4NwQw >>https://youtu.be/GUb1Ny4NwQw >> |cRXP_WARN_Clique aqui para referência de vídeo sobre como identificar o correto|r |cRXP_PICK_Musty Tomo|r
step
    .goto Western Plaguelands,39.456,66.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chromie|r
    .turnin 4972 >>Entregue Contando o Tempo
    .turnin 5154 >>Entregue Os Anais de Vila das Flechas
    .accept 5210 >>Aceite Brother Carlin
    .target Chromie
step
    .goto Western Plaguelands,42.924,85.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bibilfaz Penapita|r
    .fly Eastern Plaguelands >>Fly to Terras Pestilentas Orientais
    .target Bibilfaz Featherwhistle
    .zoneskip Eastern Plaguelands
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlin Trilharrubra|r
    .turnin 5241 >>Entregue o Tio Carlin
    .turnin 5210 >>Entregue Irmão Carlin
    .accept 5181 >>Aceite Vilões da Vila das Flechas
    .target Carlin Redpath
step
    .goto Eastern Plaguelands,79.405,63.983
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caretaker Alen|r
    .turnin 6021 >>Entregue Zaeldarr, o Proscrito
    .target Caretaker Alen
step
    .goto Eastern Plaguelands,51.41,49.70,0
    .xp 60-8750 >>Farme XP até estar a 8750xp antes do nível 60
step
    .goto Eastern Plaguelands,51.106,49.937
    >>Saque o |cRXP_LOOT_Crânio de Horgus|r embaixo da água
    .complete 5181,1 --Collect Skull of Horgus (x1)
step
    .goto Eastern Plaguelands,53.913,65.755
    >>Saque o |cRXP_LOOT_Espada Estilhaçada de Marduk|r no chão
    .complete 5181,2 --Collect Shattered Sword of Marduk (x1)
step
    .goto Eastern Plaguelands,81.518,59.766
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlin Trilharrubra|r
    .turnin 5181 >>Entregue Vilões da Vila das Flechas
    .target Carlin Redpath
step << Mage
    .cast 3561 >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    .goto Eastern Plaguelands,81.637,59.280
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khaelyn Asadaço|r
    .fly Stormwind >>Voe para Ventobravo
    .target Khaelyn Steelwing
    .zoneskip Stormwind City
    .zoneskip Hellfire Peninsula
]])
