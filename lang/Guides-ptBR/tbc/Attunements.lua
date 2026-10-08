if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia de Sintonia RXP TBC
#name 1. Karazhan
#title Karazhan

step
    #optional
    +|cRXP_WARN_Você deve estar no mínimo no nível 68 para começar a linha de missões de sintonia de Karazhan|r
    .xp >68,1
step
    #label Deadwind1
    #completewith Kara1
    .goto Deadwind Pass,42.88,34.52
    .zone Deadwind Pass >>Viaje até Deadwind Pass in Eastern Kingdoms
step
    #requires Deadwind1
    #completewith Kara1
    .subzone 2562 >>Viaje até Karazhan
step
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Archmage Alturus|r
    .accept 9824 >>Aceite Perturbações Arcanas
    .accept 9825 >>Aceite Atividade Incessante
    .target Archmage Alturus
step
    #completewith PondReading
    .goto Deadwind Pass,47.710,78.267
    .subzone 2837 >>Desça as escadas para a Adega do Mestre
step
    #optional
    #completewith Reading2
    >>Mate as .Saqueie them for their |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label PondReading
    .goto Deadwind Pass,42.910,78.275
    .use 24474 >>|cRXP_WARN_Use o|r |T134075:0|t[Cristal Violeta da Vidência] |cRXP_WARN_enquanto está em pé no|r |cRXP_PICK_Subterrâneo Pond|r
    .complete 9824,2 -- Underground Pond Reading (1)
step
    .isOnQuest 9824
    .goto Deadwind Pass,43.75,70.74,20,0
    .goto Deadwind Pass,42.99,73.44,20,0
    .goto Deadwind Pass,46.84,74.90,25,0
    .goto Deadwind Pass,45.84,78.04,15,0
    .goto Deadwind Pass,48.74,78.87,10,0
    .subzone 2562 >>|cRXP_WARN_Volte pelo caminho por onde veio para sair da Master's Cellar. Em breve você entrará novamente por outra entrada da Master's Cellar|r
    .subzoneskip 2837,1
step
    #completewith next
    .goto Deadwind Pass,48.887,78.881
    .subzone 2837 >>Desça o outro conjunto de escadas para a Adega do Mestre
step
    #label Reading2
    .goto Deadwind Pass,54.56,82.09,25,0
    .goto Deadwind Pass,53.200,90.211
    .use 24474 >>|cRXP_WARN_Use o|r |T134075:0|t[Cristal Violeta da Vidência] |cRXP_WARN_ao lado do|r |cRXP_PICK_Subterrâneo Well|r
    .complete 9824,1 -- Underground Well Reading (1)
step
    #loop
    .goto Deadwind Pass,55.09,74.81,0
    .goto Deadwind Pass,53.20,90.21,0
    .goto Deadwind Pass,48.88,78.88,0
    .goto Deadwind Pass,42.91,78.27,0
    .goto Deadwind Pass,55.09,74.81,70,0
    .goto Deadwind Pass,53.20,90.21,70,0
    .goto Deadwind Pass,48.88,78.88,70,0
    .goto Deadwind Pass,42.91,78.27,70,0
    >>Mate as .Saqueie them for their |cRXP_LOOT_Ghostly Essences|r
    .complete 9825,1 -- Ghostly Essence (10)
    .mob Unliving Caretaker
    .mob Damned Soul
    .mob Restless Shade
    .mob Wailing Spectre
step
    #label Kara1
    .goto Deadwind Pass,47.0,75.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Archmage Alturus|r
    .turnin 9824 >>Entregue Perturbações Arcanas
    .turnin 9825 >>Entregue Atividade Incessante
    .accept 9826 >>Aceite Contato de Dalaran
    .target Archmage Alturus
step
    #completewith next
    .zone Alterac Mountains >>Viaje para as Montanhas Alterac
step
    .goto Alterac Mountains,15.6,54.6
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Archmage Cedric|r
    .turnin 9826 >>Entregue ao Contato de Dalaran
    .accept 9829 >>Aceite Hadggar
    .target Archmage Cedric
step
    #completewith next
    .zone Shattrath City >>Viaje até Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khadgar|r
    .turnin 9829 >>Entregue Hadggar
    .accept 9831 >>Aceite Entrando em Karazhan
    .target Khadgar
step
    .isOnQuest 9831
    .goto Terokkar Forest,39.634,73.553
    .subzone 3789 >>|cRXP_WARN_Encontre um grupo para a masmorra Labirinto Soturno em Mata Terokkar. Depois que você encontrar um grupo, entre no Labirinto Soturno|r
step
    .isOnQuest 9831
    >>|cRXP_WARN_Depois que você matar |cRXP_ENEMY_Murmur|r, abra o |cRXP_PICK_Recipiente Arcano|r no chão para invocar o |cRXP_ENEMY_Guardião do Primeiro Fragmento|r
    >>Mate o |cRXP_ENEMY_Guardião do Primeiro Fragmento|r. Saqueie-o para obter o |cRXP_LOOT_Primeiro Fragmento de Chave|r
    .complete 9831,1 -- First Key Fragment (1)
    .mob First Fragment Guardian
step
    #completewith next
    .zone Shattrath City >>Viaje até Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khadgar|r
    .turnin 9831 >>Entregue Entrando em Karazhan
    .accept 9832 >>Aceite O Segundo e o Terceiro Fragmentos
    .target Khadgar
step << !Druid
    #completewith next
    +|cRXP_WARN_NOTA: Para chegar a Arcatraz, você deve ter comprado treinamento de voo e uma montaria voadora em Vale da Lua Negra|r
    .skill riding,225,1
    .goto Shadowmoon Valley,37.6,56.0,0 << Alliance
    .goto Shadowmoon Valley,29.2,29.4,0 << Horde
    .target Brunn Flamebeard << Alliance
    .target Ilsa Blusterbrew << Alliance
    .target Dama Wildmane << Horde
    .target Olrokk << Horde
step
    >>Você deve agora completar Steamvault e Arcatraz. Não importa qual você faz primeiro
    >>Once dentro either dungeon,open the |cRXP_PICK_Arcane Container|rto spawn the |cRXP_ENEMY_Fragment Guardian|r
    >>Mate as |cRXP_ENEMY_Fragment Guardian|r. Saqueie-os para obter a |cRXP_LOOT_Second Key Fragment|r e |cRXP_LOOT_Third Key Fragment|r
    .complete 9832,1 -- Second Key Fragment (1) The Steamvault
    .complete 9832,2 -- Third Key Fragment (1) The Arcatraz
    .mob Second Fragment Guardian
    .mob Third Fragment Guardian
step
    #completewith next
    .zone Shattrath City >>Viaje até Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khadgar|r
    .turnin 9832 >>Turn in The Second e Third Fragments
    .accept 9836 >>Aceite O Toque do Mestre
    .target Khadgar
step
    #optional
    .isQuestAvailable 10284
    +|cRXP_WARN_Você deve agora completar o Preto Pântano. Porém, para entrar no Preto Pântano, você deve completar a missão A fuga do Forte do Desterro completando a masmorra Antiga Eira dos Montes em Cavernas do Tempo|r
step
    .isOnQuest 9836
    .goto Tanaris,57.270,62.872
    .subzone 2300 >>|cRXP_WARN_Encontre um grupo para a masmorra Preto Pântano. Depois que você encontrar um grupo, entre no Preto Pântano|r
step
    >>Sucesso Lamaçal Negro
    >>|cRXP_WARN_Certifique-se de estar ao lado de |cRXP_FRIENDLY_Medivh|r uma vez que tiver matado |rAeonus|cRXP_ENEMY_|r
    .complete 9836,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Medivh|r
    .turnin 9836 >>Entregue O Toque do Mestre
    .accept 9837 >>Aceite Retorne a Hadggar
    .target Medivh
step
    #completewith next
    .zone Shattrath City >>Viaje até Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khadgar|r
    .turnin 9837 >>Entregue Retorne a Hadggar
    .accept 9838 >>Aceite O Olho Violeta
    .target Khadgar
step
    .isQuestTurnedIn 9837
    +|cRXP_WARN_Congratulations! You are now attuned for Karazhan|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia de Sintonia RXP TBC
#name 2. Serpentshrine Cavern
#title Serpentshrine Cavern

step
    #completewith next
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir entrance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    .subzone 3717 >>|cRXP_WARN_Encontre um grupo para HERÓICO: Slave Pens em Pântano Zíngaro. Depois que você encontrar um grupo, entre no Slave Pens|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Skar'this the Heretic|r
    .accept 10901 >>Aceite A Clava de Kar'desh
    .target Skar'this the Heretic
step
    >>|cRXP_WARN_Procure incursões para Gruul, o Matador de Arrastarões e Karazhan|r
    >>Mate for the |cRXP_LOOT_Earthen Signet|r
    >>Mate for the |cRXP_LOOT_Blazing Signet|r
    .complete 10901,1 -- Earthen Signet (1)
    .complete 10901,2 -- Blazing Signet (2)
step
    .goto Zangarmarsh,50.37,40.90,20,0 -- coilfang reservoir entrance
    .goto Zangarmarsh,49.018,35.631 -- slave pens
    >>|cRXP_WARN_Return to |cRXP_FRIENDLY_Skar'this the Heretic|rdentro HEROIC:Slave Pens|r
    .turnin 10901 >>Entregue A Clava de Kar'desh
    .target Skar'this the Heretic
step
    .isQuestTurnedIn 10901
    +|cRXP_WARN_Parabenizar! Você agora está apto para Serpentshrine Cavern|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia de Sintonia RXP TBC
#name 3. Tempesto Keep
#title Tempesto Keep

step
    #completewith next
    .zone Shadowmoon Valley >>Viagem para Vale da Lua Negra
step << Alliance
    .goto Shadowmoon Valley,36.368,56.953
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthmender Sophurus|r
    .accept 10680 >>Aceite A Mão de Gul'dan
	.target Earthmender Sophurus
step << Horde
    .goto Shadowmoon Valley,28.489,26.573
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthmender Splinthoof|r
    .accept 10681 >>Aceite A Mão de Gul'dan
	.target Earthmender Splinthoof
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10680 >>Entregue A Mão de Gul'dan << Alliance
    .turnin 10681 >>Entregue A Mão de Gul'dan << Horde
    .accept 10458 >>Accept Enraged Spirits of Fire e Earth
	.target Earthmender Torlok
step
    .use 30094 >>|cRXP_WARN_Use the|r|T135462:0|t[Totem of Spirits]|cRXP_WARN_and kill|r|cRXP_ENEMY_Enraged Fire Spirits|re 
    >>|cRXP_WARN_Tenha certeza de que você os mata enquanto estão ao lado do|r |T135462:0|t[Totem dos Espíritos]
    .complete 10458,1 --Earthen Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .mob +Enraged Earth Spirit
    .complete 10458,2 --Fiery Soul Captured (x8)
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6,70,0
    .goto Shadowmoon Valley,49.2,36.6
    .goto Shadowmoon Valley,45.8,47.6,70,0
    .goto Shadowmoon Valley,51.6,53.8,70,0
    .goto Shadowmoon Valley,47.0,41.6
    .goto Shadowmoon Valley,49.2,36.6
	.mob +Enraged Fire Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10458 >>Turn in Enraged Spirits of Fire e Earth
    .accept 10480 >>Aceite Espíritos da Água Enfurecidos
	.target Earthmender Torlok
step
    #loop
    .goto Shadowmoon Valley,47.6,29.8,0
    .goto Shadowmoon Valley,50.2,23.8,0
    .goto Shadowmoon Valley,44.7,34.1,70,0
    .goto Shadowmoon Valley,44.6,28.6,70,0
    .goto Shadowmoon Valley,47.6,29.8,70,0
    .goto Shadowmoon Valley,46.8,23.6,70,0
    .goto Shadowmoon Valley,50.2,23.8,70,0
    .goto Shadowmoon Valley,52.4,27.4,70,0
    .use 30094 >>|cRXP_WARN_Use o|r |T135462:0|t[Totem dos Espíritos] |cRXP_WARN_e mate|r |cRXP_ENEMY_Espíritos de Água Enraivecidos|r
    >>|cRXP_WARN_Mate-os enquanto estão ao lado do|r |T135462:0|t[Totem dos Espíritos]
    .complete 10480,1 --Watery Soul Captured (x5)
	.mob Enraged Water Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10480 >>Entregue Espíritos da Água Enfurecidos
    .accept 10481 >>Aceite Espíritos do Ar Enfurecidos
	.target Earthmender Torlok
step
    #loop
    .line Shadowmoon Valley,59.6,70.2,62.4,63.6,65.0,61.8,64.6,53.6,58.8,54.8,62.4,62.8
    .goto Shadowmoon Valley,58.8,54.8,70,0
    .goto Shadowmoon Valley,62.4,62.8,70,0
    .goto Shadowmoon Valley,65.0,61.8,70,0
    .goto Shadowmoon Valley,64.6,53.6,70,0
    .goto Shadowmoon Valley,62.4,63.6,70,0
    .goto Shadowmoon Valley,59.6,70.2,70,0
    .use 30094 >>|cRXP_WARN_Use o|r |T135462:0|t[Totem dos Espíritos] |cRXP_WARN_e mate|r |cRXP_ENEMY_Espíritos do Ar Enraivecidos|r
    >>|cRXP_WARN_Mate-os enquanto estão ao lado do|r |T135462:0|t[Totem dos Espíritos]
    .complete 10481,1 --Airy Soul Captured (x10)
	.mob Enraged Air Spirit
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10481 >>Entregue Espíritos do Ar Enfurecidos
    .accept 10513 >>Aceite Oronok Coração-Partido
	.target Earthmender Torlok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oronok Coração-partido|r
    .turnin 10513 >>Entregue Oronok Coração-Partido
    .accept 10514 >>Aceite Eu Fui Muitas Coisas...
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,51.8,18.4,0
    .goto Shadowmoon Valley,51.1,15.4,0
    .goto Shadowmoon Valley,55.0,14.2,0
    .goto Shadowmoon Valley,53.8,17.7,0
    .goto Shadowmoon Valley,51.8,18.4,60,0
    .goto Shadowmoon Valley,51.1,15.4,60,0
    .goto Shadowmoon Valley,55.0,14.2,60,0
    .goto Shadowmoon Valley,53.8,17.7,60,0
    .use 30462 >>|cRXP_WARN_Fique em cima das pequenas plantas no chão e use|r |T132161:0|t[Oronok's Javali Apito] |cRXP_WARN_para que os Domesticated Felboars próximos escavem|r |cRXP_LOOT_Shadowmoon Tubers|r
    >>|cRXP_WARN_É muito importante que você NÃO mate nenhum Domesticated Felboar|r
    >>Saqueie on the ground after
    .complete 10514,1 --Collect Shadowmoon Tuber (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oronok Coração-partido|r
    .turnin 10514 >>Entregue Eu Fui Muitas Coisas...
    .accept 10515 >>Aceite Dê uma Lição
	.target Oronok Torn-heart
step
    #loop
    .goto Shadowmoon Valley,56.5,14.6,0
    .goto Shadowmoon Valley,57.6,18.6,0
    .goto Shadowmoon Valley,57.2,21.3,0
    .goto Shadowmoon Valley,56.5,14.6,70,0
    .goto Shadowmoon Valley,57.6,18.6,70,0
    .goto Shadowmoon Valley,57.2,21.3,70,0
    .goto Shadowmoon Valley,58.5,14.8,70,0
    >>Clique em |cRXP_ENEMY_Ravenous Rancapele Eggs|r no chão para destruí-los
    >>|cRXP_WARN_Cuidado com a élite|r |cRXP_ENEMY_Matriarca Voraz de Rancapele|r |cRXP_WARN_que patrulha a área|r
    .complete 10515,1 --Collect Ravenous Flayer Egg Destroyed (x10)
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oronok Coração-partido|r
    .turnin 10515 >>Entregue Dê uma Lição
    .accept 10519 >>Accept The Cipher of Damnation -Truth e History
    .complete 10519,1 --The Cipher of Damnation - History and Truth
	.skipgossip
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oronok Coração-partido|r
    .turnin 10519 >>Turn in The Cipher of Damnation -Truth e History
    .accept 10521 >>Aceite Grom'tor, Filho de Oronok
    .accept 10527 >>Aceite Ar'tor, Filho de Oronok
    .accept 10546 >>Aceite Borak, Filho de Oronok
	.target Oronok Torn-heart
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grom'tor, filho de Oronok|r
    .turnin 10521 >>Entregue Grom'tor, Filho de Oronok
    .accept 10522 >>Aceite A Cifra da Danação: a carga de Grom'tor
	.target Grom'tor, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,45.98,28.74,0
    .goto Shadowmoon Valley,46.1,31.6,70,0
    .goto Shadowmoon Valley,47.6,31.9,70,0
    .goto Shadowmoon Valley,46.8,26.0,70,0
    .goto Shadowmoon Valley,45.5,26.6,70,0
    >>Mate |cRXP_ENEMY_Coilskar Nagas|r. Saqueie-os para obter |cRXP_LOOT_Coilskar Chest Keys|r
    >>Abra o loot the |cRXP_LOOT_First Fragment of the Cipher of Damnation|r
    .complete 10522,1 --Collect First Fragment of the Cipher of Damnation (x1)
	.mob Coilskar Defender
	.mob Coilskar Muckwatcher
	.mob Coilskar Myrmidon
	.mob Coilskar Siren
	.mob Coilskar Sorceress
	.mob Coilskar Waterkeeper
step
    .goto Shadowmoon Valley,44.576,23.614
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grom'tor, filho de Oronok|r
    .turnin 10522 >>Entregue A Cifra da Danação: a carga de Grom'tor
    .accept 10523 >>Aceite A Cifra da Danação: primeiro fragmento recuperado
	.target Grom'tor, Son of Oronok
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10527 >>Entregue Ar'tor, filho de Oronok
    .accept 10528 >>Aceite Prisões demoníacas de cristal
	.target Ar'tor, Son of Oronok
step
    .goto Shadowmoon Valley,28.005,47.568
    >>Mate for the |cRXP_LOOT_Crystalline Key|r
    .complete 10528,1 --Collect Crystalline Key (x1)
	.mob Painmistress Gabrissa
step
    .goto Shadowmoon Valley,29.617,50.397
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ar'tor, Son of Oronok|r
    .turnin 10528 >>Entregue Prisões demoníacas de cristal
	.target Ar'tor, Son of Oronok
step
    .isQuestTurnedIn 10528
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito de Ar'tor|r
    .accept 10537 >>Aceite Lohn'goron, arco dos Coração-partido
	.target Spirit of Ar'tor
step
    #loop
    .goto Shadowmoon Valley,30.2,56.8,0
    .goto Shadowmoon Valley,32.0,50.4,0
    .goto Shadowmoon Valley,27.2,52.6,0
    .goto Shadowmoon Valley,30.2,56.8,70,0
    .goto Shadowmoon Valley,32.0,50.4,70,0
    .goto Shadowmoon Valley,27.2,52.6,70,0
    >>Mate os |cRXP_ENEMY_Illidari|r. Saqueie-os para obter |cRXP_LOOT_Lohn'goron, arco dos Coração-partido|r
    .complete 10537,1 --Collect Lohn'goron, Bow of the Torn-heart (x1)
	.mob Illidari Dreadbringer
	.mob Illidari Painlasher
	.mob Illidari Shadowstalker
	.mob Illidari Shocktrooper
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito de Ar'tor|r
    .turnin 10537 >>Entregue Lohn'goron, arco dos Coração-partido
    .accept 10540 >>Aceite A Cifra da Danação: a missão de Ar'tor
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.5,57.5
    >>|cRXP_WARN_Caminhe para o sudeste enquanto o |cRXP_FRIENDLY_Espírito de Ar'tor|r o segue, caminhe por esta área até que ele convoque|r |cRXP_ENEMY_Veneratus, o Muitos|r
    >>Mate for the |cRXP_LOOT_Second Fragment of the Cipher of Damnation|r
    .complete 10540,1 --Collect Second Fragment of the Cipher of Damnation (x1)
	.mob Veneratus the Many
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,29.539,50.560
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito de Ar'tor|r
    .turnin 10540 >>Entregue A Cifra da Danação: a missão de Ar'tor
    .accept 10541 >>Aceite A Cifra da Danação: segundo fragmento recuperado
	.target Spirit of Ar'tor
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borak, filho de Oronok|r
    .turnin 10546 >>Entregue Borak, filho de Oronok
    .accept 10547 >>Aceite De Cardólatras e Ovos...
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,43.7,53.3,55,0
    .goto Shadowmoon Valley,42.4,58.3,55,0
    .goto Shadowmoon Valley,43.7,60.7,55,0
    .goto Shadowmoon Valley,46.1,59.2,55,0
    >>Saqueie |cRXP_PICK_Rotten Arakkoa Eggs|r no chão
    >>|cRXP_WARN_Tenha cuidado porque eles podem danificar você ao saquear|r
    .complete 10547,1 --Collect Rotten Arakkoa Egg (x1)
step
    #completewith next
    .zone Shattrath City >>Viaje até Shattrath
step
    .goto Shattrath City,63.944,70.028
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tobias the Filth Gorger|r
    .turnin 10547 >>Turn in Of Thistleheads e Eggs...
    .accept 10550 >>Aceite O feixe de cardossangue
	.target Tobias the Filth Gorger
step
    #completewith next
    .zone Shadowmoon Valley >>Vá para Vale da Lua Negra
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borak, filho de Oronok|r
    .turnin 10550 >>Entregue O feixe de cardossangue
    .accept 10570 >>Aceite Um cardólatra da pesada
	.target Borak, Son of Oronok
step
    #completewith next
    .goto Shadowmoon Valley,48.959,57.495
    .cast 37062 >>|cRXP_WARN_Use o|r |T133651:0|t[Feixe de Cardossangue] |cRXP_WARN_na extremidade da ponte|r
    .timer 78,Um cardólatra da pesada RP
    .use 30616
step
    .goto Shadowmoon Valley,48.959,57.495
    .use 30616 >>Mate |cRXP_ENEMY_Enviado Ícaris|r quando ele ficar atacável. Saqueie-o para obter a |cRXP_LOOT_Missiva de Tempesfúria|r
    .complete 10570,1 --Collect Stormrage Missive (x1)
    .mob Envoy Icarius
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borak, filho de Oronok|r
    .turnin 10570 >>Entregue Um cardólatra da pesada
    .accept 10576 >>Aceite O golpe Lua Negra
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,49.6,60.6,0
    .goto Shadowmoon Valley,47.6,66.4,0
    .goto Shadowmoon Valley,44.4,67.4,0
    .goto Shadowmoon Valley,47.6,70.6,0
    .goto Shadowmoon Valley,49.6,60.6,70,0
    .goto Shadowmoon Valley,47.6,66.4,70,0
    .goto Shadowmoon Valley,44.4,67.4,70,0
    .goto Shadowmoon Valley,47.6,70.6,70,0
	>>Mate os |cRXP_ENEMY_Eclipsions|r. Saqueie-os pela |cRXP_LOOT_Armadura|r
    .complete 10576,1 --Collect Eclipsion Armor (x6)
	.mob Eclipsion Archmage
	.mob Eclipsion Blood Knight
	.mob Eclipsion Bloodwarder
	.mob Eclipsion Centurion
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borak, filho de Oronok|r
    .turnin 10576 >>Entregue O golpe Lua Negra
    .accept 10577 >>Aceite O que Illidan quer, Illidan consegue...
	.target Borak, Son of Oronok
step
    #completewith next
    .cast 37096 >>|cRXP_WARN_Use o|r |T133564:0|t[Disfarce de Elfo Sangrento]
    .use 30639
step
    .goto Shadowmoon Valley,46.458,71.944
	.use 30639 >>Fale com o |cRXP_FRIENDLY_Grande Comandante Ruusk|r
    >>|cRXP_WARN_Certifique-se de que tem o|r |T133564:0|t[Disfarce de Elfo Sangrento] |cRXP_WARN_ativado|r
    .complete 10577,1 --Illidan's Message Delivered
	.skipgossip
	.target Grand Commander Ruusk
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borak, filho de Oronok|r
    .turnin 10577 >>Entregue O que Illidan quer, Illidan consegue...
    .accept 10578 >>Aceite A Cifra da Danação: a missão de Borak
	.target Borak, Son of Oronok
step
    #loop
    .goto Shadowmoon Valley,59.2,55.8,60,0
    .goto Shadowmoon Valley,65.8,59.8,60,0
    >>Mate for the |cRXP_LOOT_Third Fragment of the Cipher of Damnation|r
    >>|cRXP_ENEMY_Ruul, o Obscurecente|r |cRXP_WARN_ataca muito forte. É recomendado que você complete isto com um grupo cheio, incluindo um Tank e um Healer|r
    .complete 10578,1 -- Third Fragment of the Cipher of Damnation (1)
    .mob Ruul the Darkener
step
    .goto Shadowmoon Valley,47.557,57.178
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Borak, filho de Oronok|r
    .turnin 10578 >>Entregue A Cifra da Danação: a missão de Borak
    .accept 10579 >>Aceite A Cifra da Danação: terceiro fragmento recuperado
	.target Borak, Son of Oronok
step
    .goto Shadowmoon Valley,53.918,23.529
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oronok Coração-partido|r
    .turnin 10523 >>Entregue A Cifra da Danação: primeiro fragmento recuperado
    .turnin 10541 >>Entregue A Cifra da Danação: segundo fragmento recuperado
    .turnin 10579 >>Entregue A Cifra da Danação: terceiro fragmento recuperado
    .accept 10588 >>Aceite A Cifra da Danação
	.target Oronok Torn-heart
step
    #completewith next
    .cast 37236 >>|cRXP_WARN_Canalize o|r |T134423:0|t[A Cifra da Danação] |cRXP_WARN_por 20 segundos para convocar|r |cRXP_ENEMY_Cyrukh, o Senhor do Fogo|r
    .use 30657
step
    .goto Shadowmoon Valley,43.249,44.834
    .use 30657 >>Mate |cRXP_ENEMY_Cyrukh the Firelord|r
    >>|cRXP_ENEMY_Cyrukh, o Senhor do Fogo|r |cRXP_WARN_tem 369k HP. É recomendado que você complete isto com um grupo cheio, incluindo um Tank e um Healer. Os NPCs também o ajudarão|r
    .complete 10588,1 -- Cyrukh the Firelord slain
    .mob Cyrukh the Firelord
step
    .goto Shadowmoon Valley,42.190,45.060
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthmender Torlok|r
    .turnin 10588 >>Entregue A Cifra da Danação
	.target Earthmender Torlok
step
    #completewith next
    .zone Shattrath City >>Viaje até Shattrath
step
    .goto Shattrath City,54.751,44.322
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khadgar|r
    .accept 10883 >>Aceite A Chave de Tormenta
    .target Khadgar
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_A'dal|r
    .turnin 10883 >>Entregue A Chave de Tormenta
    .accept 10884 >>Aceite Prova dos naarus: misericórdia
    .accept 10885 >>Aceite Prova dos naarus: força
    .accept 10886 >>Aceite Prova dos naarus: tenacidade
    .target A'dal
step
    >>|cRXP_WARN_Você agora tem 3 missões de Julgamento. Todas estas missões precisam ser completadas em dificuldade HEROICA|r
    >>|cRXP_WARN_As masmorras que você deve completar são: Salões Despedaçados, Steamvaults, Arcatraz e Labirinto Soturno|r
    >>Sucesso Salões Despedaçados dentro de 55 minutos após matar |cRXP_ENEMY_Grand Bruxo Nethekurse|r. Você deve matar o |cRXP_ENEMY_Shattered Hand Carrasco|r no final da masmorra dentro do tempo limite. Saqueie o |cRXP_LOOT_Unused Machado of the Carrasco|r
    >>Mate .Saqueie him for |cRXP_LOOT_Kalithresh's Trident|r
    >>Mate Labyrinth.Saqueie him for |cRXP_LOOT_Murmur's Essence|r
    >>Sucesso do Arcatraz. Assegure-se de que |cRXP_FRIENDLY_Millhouse Manavento|r permaneça vivo após derrotar o chefe final |cRXP_ENEMY_Harbinger Skyriss|r
    .complete 10884,1 -- Unused Axe of the Executioner (1)
    .complete 10885,1 -- Kalithresh's Trident (1)
    .complete 10885,2 -- Murmur's Essence (1)
    .complete 10886,1 -- Millhouse Manastorm Rescued
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_A'dal|r
    .turnin 10884 >>Entregue Prova dos Naarus: Misericórdia
    .turnin 10885 >>Entregue Prova dos Naarus: Força
    .turnin 10886 >>Entregue Prova dos Naarus: Tenacidade
    .accept 10888 >>Aceite Prova dos Naarus: Magtheridon
    .target A'dal
step
    >>Mate |cRXP_ENEMY_Magtheridon|r
    .complete 10888,1 -- Magtheridon slain
step
    .goto Shattrath City,53.991,44.743
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_A'dal|r
    .turnin 10888 >>Entregue Prova dos Naarus: Magtheridon
    .target A'dal
step
    .isQuestTurnedIn 10888
    +|cRXP_WARN_Parabéns! Você agora está sintonizado para The Eye: Tempesto Keep|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guia de Sintonia
#name 4. Monte Hyjal
#title Monte Hyjal

step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >>Vá para as Cavernas do Tempo
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r |cRXP_WARN_patrulha levemente|r
    .accept 10445 >>Aceite As Ampolas da Eternidade
    .target Soridormi
step
    >>Mate for |cRXP_LOOT_Vashj's Vial Remnant|r
    >>Mate |cRXP_ENEMY_Kael'thas Sunstrider|r. Saqueie-o para obter |cRXP_LOOT_Kael's Vial Remnant|r
    .complete 10445,1 -- Vashj's Vial Remnant (1)
    .complete 10445,2 -- Kael's Vial Remnant (1)
step
    #completewith next
    .goto Tanaris,65.669,49.940,50 >>Retorne às Cavernas do Tempo
    .subzoneskip 1941
step
    #loop
    .goto Tanaris,58.86,54.22,20,0
    .goto Tanaris,58.21,54.79,20,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Soridormi|r
    >>|cRXP_FRIENDLY_Soridormi|r |cRXP_WARN_patrola levemente|r
    .turnin 10445 >>Entregue As Ampolas da Eternidade
    .target Soridormi
step
    .isQuestTurnedIn 10445
    +|cRXP_WARN_Parabéns! Você agora está sintonizado para Monte Hyjal|r
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RXP TBC Sintonização
#name 5. Templo Preto
#title Templo Preto

step
#aldor
    #completewith SeerUdalo
    .zone Shadowmoon Valley >>Viagem para Vale da Lua Negra
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Anacoreta Ceyla|r
    .accept 10568 >>Aceite Tabuletas de Baa'ri
	.target Anchorite Ceyla
step
#scryer
    #completewith SeerUdalo
    .zone Shadowmoon Valley >>Vá para o Vale da Lua Negra
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Thelis|r
    .accept 10683 >>Aceite Tabuletas de Baa'ri
    .target Arcanist Thelis
step
#aldor
    #loop
    .goto Shadowmoon Valley,56.0,37.1,0
    .goto Shadowmoon Valley,59.0,34.9,70,0
    .goto Shadowmoon Valley,56.0,37.1,70,0
    .goto Shadowmoon Valley,59.1,39.3,70,0
    >>Pegue os |cRXP_PICK_Fragmentos de Tabuleta de Baa'ri|r no chão
    .complete 10568,1 --Collect Baa'ri Tablet Fragment (x12)
step
#scryer
    #loop
    .goto Shadowmoon Valley,57.6,39.2,0
    .goto Shadowmoon Valley,57.6,39.2,70,0
    .goto Shadowmoon Valley,60.8,34.6,70,0
    .goto Shadowmoon Valley,55.8,39.4,70,0
    .goto Shadowmoon Valley,60.6,38.2,70,0
    >>Saque o |cRXP_PICK_Baa'ri Tabuleta Fragmentos|r no chão
    .complete 10683,1 --Collect Baa'ri Tablet Fragment (x12)
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Anacoreta Ceyla|r
    .turnin 10568 >>Entregue Tabuletas de Baa'ri
    .accept 10571 >>Aceite Oronu, o Ancião
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Thelis|r
    .turnin 10683 >>Entregue Tabuletas de Baa'ri
    .accept 10684 >>Aceite Oronu, o Ancião
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.191,32.877
    >>Abate |cRXP_ENEMY_Oronu|r na varanda
    .complete 10571,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#scryer
    .goto Shadowmoon Valley,57.191,32.877
    >>Mate |cRXP_ENEMY_Oronu|r na varanda
    .complete 10684,1 --Collect Orders From Akama (x1)
	.mob Oronu the Elder
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Anacoreta Ceyla|r
    .turnin 10571 >>Entregue Oronu, o Ancião
    .accept 10574 >>Aceite Os Corruptores Grislíngua
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcanista Thelis|r
    .turnin 10684 >>Entregue Oronu, o Ancião
    .accept 10685 >>Aceite Os Corruptores Grislíngua
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,49.887,23.012
    >>Destrua os totens que protegem |cRXP_ENEMY_Lakaan|r. Abate-o e saqueie seu |cRXP_LOOT_Medallion Fragmento|r
    .complete 10574,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,48.289,39.564
    >>Destrua os totens que protegem |cRXP_ENEMY_Uylaru|r. Abate-o e saqueie seu |cRXP_LOOT_Medallion Fragmento|r
    .complete 10574,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#aldor
    .goto Shadowmoon Valley,51.164,52.840
    >>Destrua os totens que protegem |cRXP_ENEMY_Eykenen|r. Mate e saqueie-o para obter seu |cRXP_LOOT_Medallion Fragmento|r
    .complete 10574,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#aldor
    .goto Shadowmoon Valley,57.083,73.687
    >>Destrua os totens que protegem |cRXP_ENEMY_Haalum|r. Abate-o e saqueie o |cRXP_LOOT_Haalum's Medallion Fragmento|r
    .complete 10574,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,57.083,73.687
    >>Destrua os totens que protegem |cRXP_ENEMY_Haalum|r. Mate e saqueie-o para obter o |cRXP_LOOT_Medallion Fragmento de Haalum|r
    .complete 10685,2 --Collect Haalum's Medallion Fragment (x1)
	.mob Haalum
step
#scryer
    .goto Shadowmoon Valley,51.164,52.840
    >>Destrua os totens que protegem |cRXP_ENEMY_Eykenen|r. Abate-o e saqueie seu |cRXP_LOOT_Medallion Fragmento|r
    .complete 10685,1 --Collect Eykenen's Medallion Fragment (x1)
	.mob Eykenen
step
#scryer
    .goto Shadowmoon Valley,48.289,39.564
    >>Destrua os totens que protegem |cRXP_ENEMY_Uylaru|r. Mate e saqueie-o para obter seu |cRXP_LOOT_Medallion Fragmento|r
    .complete 10685,4 --Collect Uylaru's Medallion Fragment (x1)
	.mob Uylaru
step
#scryer
    .goto Shadowmoon Valley,49.887,23.012
    >>Destrua os totens que protegem |cRXP_ENEMY_Lakaan|r. Mate e saqueie-o para obter seu |cRXP_LOOT_Medallion Fragmento|r
    .complete 10685,3 --Collect Lakaan's Medallion Fragment (x1)
	.mob Lakaan
step
#aldor
    .goto Shadowmoon Valley,62.648,28.445
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Anacoreta Ceyla|r
    .turnin 10574 >>Entregue Os Corruptores Grislíngua
    .accept 10575 >>Aceite A Jaula do Carcereiro
	.target Anchorite Ceyla
step
#scryer
    .goto Shadowmoon Valley,56.258,59.586
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Arcanista Thelis|r
    .turnin 10685 >>Entregue Os Corruptores Grislíngua
    .accept 10686 >>Aceite A Jaula do Carcereiro
    .target Arcanist Thelis
step
#aldor
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sanoru|r
    .turnin 10575 >>Entregue A Jaula do Carcereiro
    .accept 10622 >>Aceite Prova de Fidelidade
	.target Sanoru
step
#scryer
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sanoru|r
    .turnin 10686 >>Entregue A Jaula do Carcereiro
    .accept 10622 >>Aceite Prova de Fidelidade
	.target Sanoru
step
    #loop
    .goto Shadowmoon Valley,57.02,48.71,0
    .goto Shadowmoon Valley,56.35,49.98,50,0
    .goto Shadowmoon Valley,57.02,48.71,50,0
    .goto Shadowmoon Valley,58.09,49.78,50,0
    >>Mate |cRXP_ENEMY_Zandras|r
    >>|cRXP_ENEMY_Zandras|r |cRXP_WARN_patrulha o telhado acima|r
    .complete 10622,1 --Kill Zandras (x1)
	.mob Zandras
step
    .goto Shadowmoon Valley,57.328,49.577
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sanoru|r
    .turnin 10622 >>Entregue Prova de Fidelidade
    .accept 10628 >>Aceite Akama
	.target Sanoru
step
    #label SeerUdalo
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Akama|r
    >>|cRXP_FRIENDLY_Akama|r |cRXP_WARN_está mais adiante dentro da Jaula da Guardiã|r
    .turnin 10628 >>Entregue Akama
    .accept 10705 >>Aceite Vidente Udalo
	.target Akama
step
    #completewith next
    .isOnQuest 10705
    .subzone 3846 >>|cRXP_WARN_Encontre um grupo para o Arcatraz. Você deve conversar com |cRXP_FRIENDLY_Udalo|r dentro da masmorra|r
    .subzoneskip 3848
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Udalo|r
    .turnin 10705 >>Entregue Vidente Udalo
    .accept 10706 >>Aceite Um Portento Misterioso
	.target Udalo
step
    #completewith next
    .zone Shadowmoon Valley >>Volte para o Vale da Lua Negra
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Akama|r
    .turnin 10706 >>Entregue Um Portento Misterioso
    .accept 10707 >>Aceite O Terraço de Ata'mal
	.target Akama
step
    .goto Shadowmoon Valley,71.597,35.508
    >>|cRXP_WARN_Abate os três |cRXP_ENEMY_Shadowmoon Soulstealers|r para fazer com que |cRXP_ENEMY_Umbramestre Tanatuivos|r pouse no chão|r
    >>Mate for the |cRXP_LOOT_Coração da Fúria|r
    >>|cRXP_WARN_Recomenda-se concluir isso com um grupo completo, incluindo um tanque e um curador|r
    .complete 10707,1 -- Heart of Fury (1)
    .mob Shadowlord Deathwail
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Akama|r
    .turnin 10707 >>Entregue O Terraço de Ata'mal
    .accept 11052 >>Aceite A Promessa de Akama
	.target Akama
step
    #completewith next
    .zone Shattrath City >>Viaje até Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_A'dal|r
    .turnin 11052 >>Entregue A Promessa de Akama
	.target A'dal
step
    #completewith next
    .subzone 3607 >>|cRXP_WARN_Entre na Incursão Serpentshrine Cavern. Você deve derrotar o chefe |cRXP_ENEMY_Senhor do Abismo Karathress|r, depois converse com |cRXP_FRIENDLY_Vidente Olum|r que está localizado atrás dele|r
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seer Olum|r
    .accept 10944 >>Aceite O Segredo Comprometido
step
    #completewith next
    .zone Shadowmoon Valley >>Volte para o Vale da Lua Negra
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Akama|r
    .turnin 10944 >>Entregue O Segredo Comprometido
    .accept 10946 >>Aceite Ardil dos Grislíngua
	.target Akama
step
    .use 31946 >>Mate while wearing the |T133132:0|t[Ashtongue Cowl]
    .complete 10946,1 -- Ruse of the Ashtongue 1/1
step
    #completewith next
    .zone Shadowmoon Valley >>Volte para o Vale da Lua Negra
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Akama|r
    .turnin 10946 >>Entregue Ardil dos Grislíngua
    .accept 10947 >>Aceite Um Artefato do Passado
	.target Akama
step
    >>Mate .Saqueie him for the |cRXP_LOOT_Time-Phased Phylactery|r
    .complete 10947,1 -- Time-Phased Phylactery (1)
step
    #completewith next
    .zone Shadowmoon Valley >>Volte para o Vale da Lua Negra
step
    .goto Shadowmoon Valley,57.328,49.577,10,0
    .goto Shadowmoon Valley,57.37,47.80,20,0
    .goto Shadowmoon Valley,57.72,48.50,10,0
    .goto Shadowmoon Valley,58.110,48.184
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Akama|r
    .turnin 10947 >>Entregue Um Artefato do Passado
    .accept 10948 >>Aceite A Alma Cativa
	.target Akama
step
    #completewith next
    .zone Shattrath City >>Viaje até Shattrath
step
    .goto Shattrath City,53.98,44.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_A'dal|r
    .turnin 10948 >>Entregue A Alma Cativa
    .accept 10949 >>Aceite Entrada do Templo Negro
	.target A'dal
step
    #completewith next
    .zone Shadowmoon Valley >>Volte para o Vale da Lua Negra
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xi'ri|r
    >>|cRXP_WARN_Se você está em um grupo, certifique-se de que outros membros do grupo entregaram a missão antes de aceitar a próxima. Aceitar automaticamente foi desativado para este passo|r
    .turnin 10949 >>Entregue Entrada do Templo Negro
    .accept 10985,1 >>Aceite Uma Distração para Akama
    .target Xi'ri
step
    .goto Shadowmoon Valley,65.233,43.956
    >>|cRXP_WARN_Converse com |cRXP_FRIENDLY_Xi'ri|r para começar a encenação. Você pode precisar esperar ao seu lado por 1-2 minutos para que |cRXP_FRIENDLY_Akama|r apareça. Uma vez que |cRXP_FRIENDLY_Akama|r tenha chegado, siga-o e continue na encenação|r
    .complete 10985,1 -- Help Akama and Maiev enter the Black Temple.
    .skipgossip
    .target Xi'ri
    .target Akama
step
    .goto Shadowmoon Valley,65.233,43.956
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xi'ri|r
    .turnin 10985 >>Entregue Uma Distração para Akama
    .accept 10958 >>Aceite Em Busca dos Grislíngua
    .target Xi'ri
step
    .isQuestTurnedIn 10985
    +|cRXP_WARN_Parabéns! Você agora está apto para o Templo Preto|r
]])
