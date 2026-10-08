if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#xprate <1.5
#name 23-24 Pantanal
#subgroup RestedXP Aliança 20-32
#next 24-27 Montanhas Cristarrubra / Bosque do Crepúsculo

step
.dungeon SFK
    #completewith FinalAccept
    +Comece a procurar um grupo para Bastilha da Presa Negra. Em breve você irá para a Floresta de Pinhaprata para fazer Bastilha da Presa Negra
step
    .goto Wetlands,8.509,55.697
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iago Halberque|r
    .accept 484 >>Aceite Crocolisco jovem é que dá pele boa
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devin Tremulaurora|r
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Devin Tremulaurora|r não tiver nenhuma|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    .target Karl Boran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karl Boran|r
    .accept 279 >>Aceite Garras das Profundezas
step << Draenei/NightElf
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .accept 288 >>Aceite A Terceira Frota
    .accept 463 >>Aceite O Verdião
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    .home >>Defina sua Pedra de Regresso no Porto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    >>|cRXP_BUY_Compre um|r [Jarra de Hidromel Enânico]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .isQuestComplete 942
    #completewith AMP
    .goto Wetlands,10.368,61.016,8 >>Suba as escadas em direção ao |cRXP_FRIENDLY_Arqueólogo Pançacheia|r
step
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Pançacheia|r no andar de cima
    .target Archaeologist Flagongut
    .turnin 942 >>Entregue The Absent Minded Prospector
    .accept 943 >>Aceite O Prospector Distraído
step
    #label AMP
    .isQuestTurnedIn 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Pançacheia|r no andar de cima
    .target Archaeologist Flagongut
    .accept 943 >>Aceite O Prospector Distraído
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .turnin 288 >>Entregue A Terceira Frota
step
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cida|r
    .accept 470 >>Aceite Escavando a Gosma
    .target Sida
step << Hunter
    .goto Wetlands,11.113,58.316
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Edwina Monzor|r
    .vendor >>|cRXP_BUY_Compre|r [Flechas Afiadas]
    .collect 2515,1800 --Sharp Arrow (1800)
    .target Edwina Monzor
    .zoneskip Wetlands,1
step
    .goto Wetlands,10.4,56.0,25,0
    .goto Wetlands,10.1,56.9,25,0
    .goto Wetlands,10.6,57.2,25,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nélio Allen|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Nélio Allen|r não tiver uma|r
	.target Neal Allen
    .bronzetube
step
    .goto Wetlands,9.861,57.486
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Punhoforte|r no andar de cima
    .accept 464 >>Aceite Guerra Banners
step
    #label FinalAccept
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .accept 305 >>Aceite Em Busca da Equipe de Escavação
step
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >>Faça grind em |cRXP_ENEMY_Gnolls Esfolamusgo|r enquanto procura um grupo para Bastilha da Presa Negra
step
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Não há missões para Bastilha da Presa Negra. Você terá que ir correndo do Pantanal até a Floresta de Pinhaprata. Certifique-se de permanecer na estrada ao atravessar o Planalto Arathi e fique atento ao |cRXP_ENEMY_Mensageira Renegada|r
    >>Você ainda não precisa obter o ponto de voo do Planalto Arathi
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .fp Southshore >>Aprenda a rota de voo para Southshore
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >>Entre em Bastilha da Presa Negra
step
.dungeon SFK
    +Não há missões para Bastilha da Presa Negra
    >>Limpe a Bastilha da Presa Negra. Saia quando terminar
    .zoneskip 209,1
step
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >>Use a Pedra do Regresso para o Porto de Menethil
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step
    #completewith FinishGnolls
    >>Mate os |cRXP_ENEMY_Crocoliscos do Pantanal Jovem|r. Saqueie-os para obter |cRXP_LOOT_Pele de Crocolisco Jovem|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,13.73,39.38,50,0
    .goto Wetlands,18.06,39.83,50,0
    .goto Wetlands,16.26,39.41
    >>Mate |cRXP_ENEMY_Murlocs Guelrazul|r
    >>Mate |cRXP_ENEMY_Comilão|r. Saqueie-o para obter sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Comilão|r patrulha levemente o Pantanal
    .complete 279,1 -- Bluegill Murloc slain (12)
    .mob +Bluegill Murloc
    .complete 279,2 -- Gobbler's Head
    .unitscan +Gobbler
step
    .goto Wetlands,26.40,25.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fradd Entrós|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Fradd Entrós|r não tiver um|r
	.target Fradd Swiftgear
    .bronzetube
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormer Trançaferro|r
    .accept 294 >>Aceite Vingança de Ormer
    .target Ormer Ironbraid
step
    .goto Wetlands,38.909,52.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Marina Tecepedra|r
    .turnin 305 >>Entregue Em Busca da Equipe de Escavação
    .accept 306 >>Aceite Em Busca da Equipe de Escavação
    .target Merrin Rockweaver
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Saqueie |cRXP_LOOT_Flagongut's Fossil|r no chão
    .complete 943,2 -- Flagongut's Fossil (1)
step
    .isOnQuest 943
    #loop
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>Mate |cRXP_ENEMY_Mottled Raptors|r e |cRXP_ENEMY_Mottled Screechers|r. Saqueie-os para obter a |cRXP_LOOT_Stone of Relu|r
    >>Se você não encontrar isso até terminar de matar 10 de cada, pule esta etapa. Você concluirá isso mais tarde
    .complete 294,1 --Kill Mottled Raptor (x10)
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .mob +Mottled Raptor
    .mob +Mottled Screecher
step
    #loop
    .goto Wetlands,22.4,50.0,0
    .goto Wetlands,23.0,55.2,0
    .goto Wetlands,26.2,47.7,0
    .goto Wetlands,31.4,42.0,0
    .goto Wetlands,22.4,50.0,70,0
    .goto Wetlands,23.0,55.2,70,0
    .goto Wetlands,24.4,52.2,70,0
    .goto Wetlands,26.2,47.7,70,0
    .goto Wetlands,27.8,44.6,70,0
    .goto Wetlands,31.4,42.0,70,0
    .goto Wetlands,22.8,50.6,70,0
    >>Mate |cRXP_ENEMY_Raptores Mosqueado|r e |cRXP_ENEMY_Guinchadores Mosqueado|r
    .complete 294,1 --Kill Mottled Raptor (x10)
    .mob +Mottled Raptor
    .complete 294,2 --Kill Mottled Screecher (x10)
    .mob +Mottled Screecher
step << Hunter/Warlock/Priest
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormer Trançaferro|r
    .turnin 294 >>Entregue Vingança de Ormer
    .accept 295 >>Aceite Vingança de Ormer
    .target Ormer Ironbraid
step << Hunter/Warlock/Priest
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81
    >>Mate |cRXP_ENEMY_Garrafoices Mosqueado|r e |cRXP_ENEMY_Rasgaqueixos Mosqueado|r
    >>Esta missão é DIFÍCIL, pois os inimigos são de nível muito mais alto que o seu, mas a arma que você recebe como recompensa vale muito o esforço << Hunter
    >>Esta missão é DIFÍCIL, pois os inimigos são de nível muito mais alto que o seu, mas a varinha que você recebe como recompensa vale muito o esforço << Priest
    >>É recomendado usar o local do vídeo linkado abaixo para abusar do caminho dos inimigos, o que tornará a conclusão da missão significativamente mais fácil. Se você não conseguir completá-la, pule esta etapa
    .link https://youtu.be/irmy9vPM9Lg >>https://youtu.be/irmy9vPM9Lg >> Clique aqui para um vídeo de referência
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
step << Hunter/Warlock/Priest
    .isQuestComplete 295
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormer Trançaferro|r
    .turnin 295 >>Entregue Vingança de Ormer
    .accept 296 >>Aceite Vingança de Ormer
    .target Ormer Ironbraid
step << Hunter/Warlock/Priest
    .isQuestTurnedIn 295
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormer Trançaferro|r
    .accept 296 >>Aceite Vingança de Ormer
    .target Ormer Ironbraid
step << Hunter/Warlock/Priest
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>Mate |cRXP_ENEMY_Sarilodonte|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r
    >>Ele geralmente fica na colina acima do principal local de escavação, mas às vezes pode patrulhar mais abaixo
    >>Esta missão é MUITO DIFÍCIL, pois ele é nível 29. Use o local de caminho da missão anterior para conseguir fazê-lo empinar indefinidamente
    .link https://youtu.be/zIOV0XrxB80 >>https://youtu.be/zJQVOXxB80 >> Clique aqui para um vídeo de referência
    .complete 296,1 --1/1 Sarltooth's Talon
    .unitscan Sarltooth
step << Hunter/Warlock/Priest
    .isQuestComplete 296
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormer Trançaferro|r
    .turnin 296 >>Entregue Vingança de Ormer
    .target Ormer Ironbraid
step
    #loop
    .goto Wetlands,43.009,41.675,0
    .goto Wetlands,40.828,45.966,0
    .goto Wetlands,43.009,41.675,50,0
    .goto Wetlands,40.828,45.966,50,0
    .goto Wetlands,45.222,44.251
    >>Mate |cRXP_ENEMY_Dragonmaw Orcs|r. Saqueie-os para obter |cRXP_LOOT_War Banners|r
    >>|cRXP_WARN_Fique atento os|cRXP_ENEMY_Saqueadores Presa do Dragão|r irão lançar|r [Rede] em você
    .complete 464,1 -- Dragonmaw War Banner (8)
    .mob Dragonmaw Raider
    .mob Dragonmaw Swamprunner
    .mob Dragonmaw Battlemaster
    .mob Dragonmaw Shadowwarder
    .mob Dragonmaw Centurion
    .mob Dragonmaw Bonewarder
step
    .goto Wetlands,49.916,39.368
    .target Einar Stonegrip
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einar Pegapétrea|r
    .accept 469 >>Aceite Entrega Diária
step
    #completewith next
    .goto Wetlands,50.200,37.734
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kixxel|r
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>Compre [Raiz-da-vida] |cRXP_WARN_se o|r |cRXP_FRIENDLY_Kixxel|r |cRXP_WARN_tiver alguma em estoque. Você precisará delas para a missão|r [Machado Redemoinho] |cRXP_WARN_mais tarde|r << Warrior
--    >>|cRXP_WARN_If you are planning on running Scarlet Monastery for the|r |T132395:0|t[|cFF0070FFBonebiter|r]|cRXP_WARN_, you may skip this step|r << Warrior
    >>|cRXP_WARN_Estes são itens de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Kixxel|r não tiver nenhum|r << Warrior
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Kixxel|r não tiver nenhum|r << !Warrior
    .target Kixxel
    .zoneskip Wetlands,1
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rethiel, o Verdião|r
    .turnin 463 >>Entregue O Verdião
    .accept 276 >>Aceite Patas pisoteantes
    .target Rethiel the Greenwarden
step
    #label
    #loop
    .goto Wetlands,63.93,63.54,0
    .goto Wetlands,61.58,73.07,0
    .goto Wetlands,63.93,63.54,60,0
    .goto Wetlands,62.34,69.34,60,0
    .goto Wetlands,61.58,73.07,60,0
    .goto Wetlands,62.34,69.34
	>>Mate os |cRXP_ENEMY_Gnolls Pelemusgo|r e os |cRXP_ENEMY_Mestiços Pelemusgo|r
    .complete 276,1 -- Mosshide Gnoll slain (15)
    .mob +Mosshide Gnoll
    .complete 276,2 -- Mosshide Mongrel slain (10)
    .mob +Mosshide Mongrel
step
    #label FinishGnolls
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rethiel, o Verdião|r
    .turnin 276 >>Entregue as Patas pisoteantes
    .accept 277 >>Aceite Tabu do Fogo
    .target Rethiel the Greenwarden
step << NightElf/Draenei
    #sticky
    >>Você precisará chegar a Altaforja em breve. Você pode ir correndo até lá passando por Lago Modan (mais lento e simples) ou usar o site de personagem preso da Blizzard após retornar para Porto de Menethil (mais rápido e mais avançado)
    >>Se você preferir o método do site, então comece a carregar o site agora mesmo. Normalmente leva alguns minutos para carregar. NÃO SELECIONE MOVER SEU PERSONAGEM AINDA
    >>Se você fez Minas Mortas mais cedo e já tem o ponto de voo de Altaforja, pule esta etapa
    +Clique aqui para concluir esta etapa depois de decidir qual caminho você vai seguir
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Clique aqui para ver o vídeo de referência
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> Clique aqui para o link de destravamento para servidores US
    .link https://eu.battle.net/support/en/article/32275 >>https://eu.battle.net/support/en/article/32275 >> Clique aqui para acessar o link de destravamento dos servidores da UE
    .zoneskip Ironforge
    .zoneskip Stormwind City
step
    #loop
    .goto Wetlands,54.95,44.84,0
    .goto Wetlands,51.84,37.13,0
    .goto Wetlands,37.13,35.68,0
    .goto Wetlands,31.21,37.86,0
    .goto Wetlands,26.48,40.44,0
    .goto Wetlands,20.52,45.70,0
    .goto Wetlands,17.83,50.26,0
    .goto Wetlands,14.53,47.67,0
    .goto Wetlands,20.37,45.21,0
    .goto Wetlands,54.95,44.84,50,0
    .goto Wetlands,51.84,37.13,50,0
    .goto Wetlands,37.13,35.68,50,0
    .goto Wetlands,31.21,37.86,50,0
    .goto Wetlands,26.48,40.44,50,0
    .goto Wetlands,20.52,45.70,50,0
    .goto Wetlands,17.83,50.26,50,0
    .goto Wetlands,14.53,47.67,50,0
    .goto Wetlands,20.37,45.21,50,0
    >>Mate os |cRXP_ENEMY_Crocoliscos do Pantanal Jovem|r. Saqueie-os para obter |cRXP_LOOT_Pele de Crocolisco Jovem|r
    .complete 484,1
    .mob Young Wetlands Crocolisk
step << Dwarf Paladin
    .goto Wetlands,11.458,52.163
    .isQuestAvailable 1785 -- Dwarf Paladin Redemption quest
    .isOnQuest 277,464,294,279,484
    .subzone 150 >>Corra de volta para Porto de Menethil. Faça grind pelo caminho. NÃO use a Pedra de Regresso, pois você vai precisar dela muito em breve
step << Dwarf Paladin
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >>Entregue Em Busca da Equipe de Escavação
    .subzoneskip 150,1
step << Dwarf Paladin
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Punhoforte|r
    .turnin 464 >>Entregue Estandartes de Guerra
    .target Captain Stoutfist
    .subzoneskip 150,1
step << Dwarf Paladin
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iago Halberque|r
    .turnin 469 >>Entregue Entrega Diária
    .turnin 484 >>Entregue Peles de Crocolisco Jovem
    .target James Halloran
    .subzoneskip 150,1
step << Dwarf Paladin
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >>Entregue Garras das Profundezas
    .target Karl Boran
    .subzoneskip 150,1
step << Dwarf Paladin
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cida|r
    .turnin 470 >>Entregue Cavando no Lodo
    .target Sida
    .subzoneskip 150,1
step << Dwarf Paladin
    #optional
    .isQuestComplete 943
    #completewith next
    .goto Wetlands,10.368,61.016,8 >>Suba as escadas em direção ao |cRXP_FRIENDLY_Arqueólogo Pançacheia|r
    .subzoneskip 150,1
step << Dwarf Paladin
    #optional
    .isQuestComplete 943
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Pançacheia|r no andar de cima
    .turnin 943 >>Entregue The Absent Minded Prospector
    .target Archaeologist Flagongut
    .subzoneskip 150,1
step << !NightElf !Draenei
    #optional << Dwarf Paladin
    .isOnQuest 277,464,294,279,484
	.hs >>Use a Pedra do Regresso para o Porto de Menethil
    .cooldown item,6948,>2,1
    .subzoneskip 150
    .bindlocation 2104,1
step << NightElf/Draenei
    .goto Loch Modan,25.11,8.99
    .hs >>|cRXP_WARN_Use Pedra de Regresso de volta para Menethil ou corra lá se você quiser viajar para Ironforge pelo método unstuck do site|r
    >>Atravesse o túnel de Dun Algaz até Lago Modan se você quiser ir a Altaforja a pé
    .zoneskip Loch Modan --Completes if you run to Loch
    .subzoneskip 150 --Completes if u hearth to Menethil
step << skip --logout skip NightElf/Draenei
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Vá até a caverna na base da represa no leste do Pantanal
	.zone Loch Modan >>Desconecte-se em cima dos cogumelos no fundo da caverna.
    >>Quando você entrar novamente, isso irá teleportá-lo para Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >>https://www.youtube.com/watch?v=21CuGto26Mk >> CLIQUE AQUI para referência
step << NightElf/Draenei
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .target Thorgrum Borrelson
    .subzoneskip 150 --Completes if u hearth to Menethil
step << NightElf/Draenei
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>Comece a remover seus equipamentos enquanto corre para Dun Morogh
    .deathskip >>Gere agro dos |cRXP_ENEMY_Scarred Crag Boars|r para morrer e reaparecer no |cRXP_FRIENDLY_Anjo da Cura|r quando estiver em Dun Morogh
    .mob Scarred Crag Boar
    .subzoneskip 150 --Completes if u hearth to Menethil
step << skip --logout skip NightElf/Draenei
	>>Entre na caverna dos troggs no sudeste. Faça um skip de logout
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >>https://www.youtube.com/watch?v=QB3KyguCM >> CLIQUE AQUI para referência
	.zone Ironforge >>Desconecte-se e pule esta etapa ou viaje para Altaforja
step << NightElf/Draenei
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Loslor Rudge|r não tiver um|r
	.target Loslor Rudge
    .bronzetube
    .subzoneskip 150 --Completes if u hearth to Menethil
step << NightElf/Draenei
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >>Viaje para Ironforge
    .subzoneskip 150 --Completes if u hearth to Menethil
step
    #optional
    .isQuestComplete 943
    #completewith next
    .goto Wetlands,10.368,61.016,8 >>Suba as escadas em direção ao |cRXP_FRIENDLY_Arqueólogo Pançacheia|r
    .zoneskip Wetlands,1
step
    #optional
    .isQuestComplete 943
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Pançacheia|r no andar de cima
    .turnin 943 >>Entregue The Absent Minded Prospector
    .target Archaeologist Flagongut
    .zoneskip Wetlands,1
step
    #optional
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cida|r
    .turnin 470 >>Entregue Cavando no Lodo
    .target Sida
    .zoneskip Wetlands,1
step
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >>Entregue Em Busca da Equipe de Escavação
    .zoneskip Wetlands,1
step
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Punhoforte|r
    .turnin 464 >>Entregue Estandartes de Guerra
    .target Captain Stoutfist
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.509,55.697
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iago Halberque|r
    .turnin 469 >>Entregue Entrega Diária
    .turnin 484 >>Entregue Peles de Crocolisco Jovem
    .target James Halloran
    .zoneskip Wetlands,1
step
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >>Entregue Garras das Profundezas
    .target Karl Boran
    .zoneskip Wetlands,1
step << Draenei
.dungeon DM
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    >>Se você não fez Minas Mortas e não tem o ponto de voo de Altaforja, pule esta etapa
    .fly Ironforge >>Voe para Altaforja
    .target Shellei Brondir
step << !NightElf !Draenei
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Ironforge >>Voe para Altaforja
    .target Shellei Brondir
step << NightElf/Draenei
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>Salte da ponta do píer e nade até o ponto de referência
    .zoneskip Elwynn Forest
    .zoneskip Dun Morogh
    .zoneskip Loch Modan
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Use o recurso de auto-destravamento do personagem unstuck para pular para Altaforja. Você precisará deslogar no local, depois acessar o menu de ajuda em outro personagem (alternativamente, cole o link de destravamento abaixo no navegador), role até autoatendimento. Clique em destravar no seu personagem e mova-se. Se não conseguir se destravar, ignore esta etapa e nade ao longo das montanhas até Cerro Oeste
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Clique aqui para ver o vídeo de referência
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> Clique aqui para o link de destravamento para servidores US
    .link https://eu.battle.net/support/en/article/32275 >>https://eu.battle.net/support/en/article/32275 >> Clique aqui para acessar o link de destravamento dos servidores da UE
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Loch Modan
    .zoneskip Elwynn Forest
    .zoneskip Dun Morogh
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
step << Mage
    .goto Ironforge,25.496,7.080
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milstaff Intempestivus|r
    .trainer >>Treine [Teleporte: Altaforja]
    .target Milstaff Stormeye
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron
step
    #optional
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .accept 968 >>Aceite Os Poderes de Baixo
    .use 5352
    .itemcount 5352,1
step
    #optional
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gerrig Agarrosso|r
    .turnin 968 >>Entregue Os Poderes de Baixo
    .target Gerrig Bonegrip
    .isOnQuest 968
step
.dungeon BFD
    .goto Ironforge,50.826,5.613
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gerrig Agarrosso|r
    .turnin 971 >>Entregue Conhecimento nas Profundezas
    .target Gerrig Bonegrip
    .isQuestComplete 971
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarividente Javad|r
    .trainer >>Treine suas magias de classe
    .target Farseer Javad
step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >>Aceite Tomo of Divindade
    .trainer >>Treine suas magias de classe
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >>Vá em direção a |cRXP_FRIENDLY_Tiza Beloforja|r para cima
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 2999 >>Entregue Tomo of Divindade
    .accept 1645 >>Aceite Tomo de Divindade
    .turnin 1645 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1646 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 1646 >>Entregue Tomo de Divindade
    .accept 1647 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_João Turner|r
    >>|cRXP_FRIENDLY_John Turner|r patrulha o anel externo de Altaforja perto da Casa de Leilões
    .turnin 1647 >>Entregue Tomo de Divindade
    .accept 1648 >>Aceite Tomo de Divindade
    .turnin 1648 >>Entregue Tomo de Divindade
    .accept 1778 >>Aceite Tomo de Divindade
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r para cima
    .target Tiza Battleforge
    .turnin 1778 >>Entregue Tomo de Divindade
    .accept 1779 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r
    .target Muiredon Battleforge
    .turnin 1779 >>Entregue Tomo de Divindade
    .accept 1783 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,18.10,51.60
    .isQuestAvailable 1785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Aguardente|r
    .home Ironforge >>Ironforge >> Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >>Saia de Altaforja
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>Use o [Símbolo da Vida] em |cRXP_FRIENDLY_Narm Faulk|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    #label SymbolofLife
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm Faulk|r
    .use 6866
    .turnin 1783 >>Entregue Tomo de Divindade
    .accept 1784 >>Aceite Tomo de Divindade
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Mate os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os para o |cRXP_LOOT_Dark Ferro Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Dwarf Paladin
	#completewith TurnInScript
    .hs >>Voe para Ironforge
    .zoneskip Ironforge
    .bindlocation 1537,1
step << Dwarf Paladin
    #completewith TurnInScript
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >>Suba em direção a |cRXP_FRIENDLY_Muiredon|r
step << Dwarf Paladin
    #label TurnInScript
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r
    .turnin 1784 >>Entregue Tomo de Divindade
    .accept 1785 >>Aceite Tomo de Divindade
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 1785 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step << NightElf/Draenei
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf Hunter/Draenei Hunter
    .goto Ironforge,61.177,89.508
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulif Manopedra|r lá dentro
    .train 266 >>Treine Armas de Fogo
    .target Buliwyf Stonehand
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regnus Granitrondo|r
    .goto Ironforge,69.872,82.890
    .trainer >>Treine suas magias de classe
    .target Regnus Thundergranite
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .goto Ironforge,70.856,85.839
    .trainer >>Treine as habilidades do seu mascote
    .target Belia Thundergranite
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .goto Ironforge,65.905,88.405
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Cortarroda Rodagiros|r não tiver um|r
	.target Gearcutter Cogspinner
    .bronzetube
step
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >>Pegue o bonde para Ventobravo
step << skip
    #label exit2
	.goto Ironforge,56.2,46.8
	.goto Ironforge,76.4,51.2,50 >>Pule em cima da cabeça do grifo, depois desconecte-se e entre novamente para usar o logout skip até o bonde.
    .zone Stormwind City >>Pegue o bonde para Ventobravo
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#name 24-27 Montanhas Cristarrubra/Bosque do Crepúsculo
#subgroup RestedXP Aliança 20-32
#next 27-30 Pantanal/Hillsbrad;28-30 Floresta do Crepúsculo

step
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Bilubub Rodagiros|r não tiver um|r
    .bronzetube
    .target Billibub Cogspinner
step << Draenei
    #completewith next
    .goto Stormwind City,71.68,25.60,40 >>Vá para o Castelo de Ventobravo
step << Draenei
    .goto Stormwind City,78.508,18.312
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissary Taluun|r
    .accept 9429 >>Accept Viaje até Darkshire
    .target Emissary Taluun
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>Certifique-se de treinar [Abrir Fechadura], pois você vai precisar disso mais tarde
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << Rogue
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>Vá em direção a |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r dentro da SI:7, no andar superior
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2281 >>Aceite Encontro em Cristarrubra
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>Aceite Mathias e os Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Rogue
    .isQuestAvailable 2359 -- only setting HS if need to complete poison quest still
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >>Defina sua Pedra de Retorno em Ventobravo
    .target Innkeeper Allison
    .bindlocation 1519
step << Paladin
    #optional
    #completewith next
    .goto Stormwind City,42.917,34.221,15,0
    .goto Stormwind City,41.385,31.547,15,0
    .goto Stormwind City,39.810,29.788,15,0
    .goto Stormwind City,42.51,33.51,20 >>Viaje até |cRXP_FRIENDLY_Benedito Brião|r dentro da Catedral de Ventobravo
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1642 >>Aceite Tomo de Divindade
    .use 6775
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1642 >>Entregue Tomo de Divindade
    .accept 1643 >>Aceite Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Entregue Tomo de Divindade
    .accept 1644 >>Aceite Tomo de Divindade
    .turnin 1644 >>Entregue Tomo de Divindade
    .accept 1780 >>Aceite Tomo de Divindade
    .target Stephanie Turner
step << Human Paladin
    .goto StormwindClassic,40.1,29.9
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1780 >>Entregue Tomo de Divindade
    .target Duthorian Rall
    .accept 1781 >>Aceite Tomo de Divindade
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1781 >>Entregue Tomo de Divindade
    .target Gazin Tenorm
    .accept 1786 >>Aceite Tomo de Divindade
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duthorian Rall|r. Ele lhe dará o [|cRXP_LOOT_Tomo do Valor|r]
    .use 6776 >>Use o [|cRXP_WARN_Tomo do Valor|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 6776,1,1649 --Tome of Valor (1)
    .accept 1649 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
step << Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1649 >>Entregue O Tomo de Bravura
    .accept 1650 >>Aceite o Tomo da Bravura
    .target Duthorian Rall
step << Human Paladin
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step
    #optional
    .goto Stormwind City,64.201,60.575
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felicia Gump|r
    >>|cRXP_WARN_Se você não planeja elevar sua |T133971:0|t[Culinária] para pelo menos 50, pule este passo|r
    >>|cRXP_BUY_Compre|r [Ervas de Tempero de Ventobravo]
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs (1)
    .target Felicia Gump
    --.skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
step << Warlock
    #sticky
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Spackle Cardopomo|r
    .vendor >>|cRXP_BUY_Compre|r [Grimórios] |cRXP_BUY_para a sua|r [Súcubo] |cRXP_BUY_que você terá em breve. Se tiver ouro extra, compre também para o seu|r [Emissário do Caos]
    .target Spackle Thornberry
step << Warlock
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1738 >>Entregue Palocórdio
    .turnin 65602 >>Entregue Amar É...
    .accept 1739 >>Aceite A vinculação
    .accept 65603 >>Aceite A vinculação
    .target Gakin the Darkbinder
    .isOnQuest 65602
step << Warlock
    #optional
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1738 >>Entregue Palocórdio
    .accept 1739 >>Aceite A vinculação
    .accept 65603 >>Aceite A vinculação
    .target Gakin the Darkbinder
    .isQuestTurnedIn 65602
step << Warlock
    #optional
    .goto Stormwind City,25.25,78.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1738 >>Entregue Palocórdio
    .accept 1739 >>Aceite A vinculação
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 8674 >>Use o [Núcleo de Lenhocoração] para invocar uma |cRXP_ENEMY_Súcubo Invocada|r
    .use 6913
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6913 >>Mate |cRXP_ENEMY_Súcubo Evocado|r
    .complete 1739,1 --Kill Summoned Succubus (x1)
    .mob Summoned Succubus
step << Warlock
    .goto StormwindClassic,25.154,77.406
    >>Viaje até o subsolo de O Cordeiro Degolado
    .use 190186 >>Use a [Estatueta de Madeira] para invocar um |cRXP_ENEMY_Íncubo Invocado|r
    .complete 65603,1 --Kill Summoned Succubus (x1)
    .mob Summoned Incubus
    .isQuestTurnedIn 65602
step << Warlock
    #completewith TheBinding
    +|cRXP_WARN_Agora, você pode usar qualquer um dos|r |T136220:0|t[Súcubo] |cRXP_WARN_ou|r |T136221:0|t[Andarilho do Vazio] |cRXP_WARN_como seu mascote|r
    >>A [Súcubo] causa dano significativo, enquanto o [Andarilho do Caos] oferece mais sobrevivência
step << Warlock
    .isOnQuest 1739
    .goto Stormwind City,25.25,78.55
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1739 >>Entregue A Vinculação
step << Warlock
    #label TheBinding
    .isOnQuest 65603
    .goto Stormwind City,25.25,78.55
    .target Gakin the Darkbinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 65603 >>Entregue A Vinculação
step << Mage
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>Vá para a Torre do Mago
step << Mage
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
step << Mage
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
    .target Larimaine Purdue
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre os seguintes itens para entregas mais rápidas em Bosque do Crepúsculo em breve
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|cRXP_WARN_Observação: você também deve upar seu|r |T133971:0|t[Culinária] |cRXP_WARN_para 50 para facilitar 2missão de ,000 de EXP na Floresta do Crepúsculo. Compre o máximo possível|r |T133970:0|t[Naco de Carne de Javali] |cRXP_WARN_ou|r |T133970:0|t|cRXP_LOOT_[Carne de Lobo Fibrosa]|r |cRXP_WARN_conforme você precisar evoluí-la até 50. Você pode cozinhá-los assim que chegar à estalagem de Floresta do Crepúsculo|r
    >>|T133024:0|t[Tubo de Bronze]
    >>|T133970:0|t[Lombo de Lobo Magro]
    >>|T134321:0|t[Perna de Aranha Gosmenta]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .target Auctioneer Jaxon
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre os seguintes itens para entregas mais rápidas em Bosque do Crepúsculo em breve
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>|T133024:0|t[Tubo de Bronze]
    >>|T133970:0|t[Lombo de Lobo Magro]
    >>|T134321:0|t[Perna de Aranha Gosmenta]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .target Auctioneer Jaxon
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mumu Ardelado|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 23750 >>Deposite os itens a seguir no banco: << Shaman
    >>|T132824:0|t[Cheio Bota Bolsa] << Shaman -- 23750
    .target Newton Burnside
step << !Human !Warlock
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para Ventobravo
    .target Dungar Longdrink
step
    #completewith RRQuests
    .goto 1429/0,395.900,-9114.200,80 >>Saia de Ventobravo
step
    #completewith RRQuests
    .goto Elwynn Forest,65.20,69.80,50 >>Viaje até a Torre de Azora. Suba a torre
step
    .goto Elwynn Forest,65.22,69.71
    .target Theocritus
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teócrito|r no topo
    .accept 94 >>Aceite A Olho Vigilante
    .xp <20,1
step
    #optional
    .goto Elwynn Forest,64.880,69.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_FRIENDLY_Sol Estela Dalva|r
    .vendor >>|cRXP_FRIENDLY_Sol Estela Dalva|r |cRXP_BUY_tem itens de fornecimento limitado, como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminhos] |cRXP_BUY_e|r |T134850:0|t|T134830:0|t[Potions] |cRXP_BUY_que você deveria comprar se disponível|r << !Warrior !Rogue
    .vendor >>|cRXP_FRIENDLY_Sol Estela Dalva|r |cRXP_BUY_tem itens de fornecimento limitado, como|r |T134938:0|t|T134937:0|t|T134943:0|t[Pergaminhos] |cRXP_BUY_e|r |T134830:0|t[Potions] |cRXP_BUY_que você deveria comprar se disponível|r << Warrior/Rogue
    .target Dawn Brightstar
    .subzoneskip 91,1
step
    #completewith RRQuests
	.goto Redridge Mountains,6.7,72.4
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    .zoneskip Elwynn Forest,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
	.target Guard Parker
    .goto Redridge Mountains,15.30,71.50
    .accept 244 >>Aceite Encroaching Gnolls
step
    .goto Redridge Mountains,30.70,60.00
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
	.target Deputy Feldon
    .turnin 244 >>Entregue Encroaching Gnolls
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
    .goto Redridge Mountains,33.50,48.97
    .accept 20 >>Aceite Ameaça Pedranegra
    .target Marshal Marris
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bailiff Conacher|r
    .accept 91 >>Aceite A Lei de Salomão
    .target Bailiff Conacher
step
    #label RRQuests
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Doca Baren|r
    .accept 127 >>Aceite O lago está para peixe
    .accept 150 >>Aceite Caçadores de murlocs
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Berto|r
    .accept 386 >>Aceite O que Vai, Volta...
    .target Guard Berton
step << Rogue
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >>Entregue Redridge Encontro Marcado
    .accept 2282 >>Aceite Moinho de Alther
    .target Lucius
step
    #completewith next
    .goto Redridge Mountains,56.4,51.8,0
    >>Mate |cRXP_ENEMY_Batedores Murloc|r e |cRXP_ENEMY_Invocadores da Maré Murloc|r. Saqueie-os para obter seus |cRXP_LOOT_Nadadeiras|r e |cRXP_LOOT_Peixe-lua|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step
    >>Abata os |cRXP_ENEMY_Blackrock Grunts|r e os |cRXP_ENEMY_Blackrock Outrunners|r. Saqueie-os pelos |cRXP_LOOT_Machados|r
	>>|cRXP_WARN_Cuidado, os |cRXP_ENEMY_Correiores de Blackrock|r vão lançar|r |T132149:0|t[Rede] |cRXP_WARN_em você|r
    >>|cRXP_WARN_Alternate between killing |cRXP_ENEMY_Orcs|re the |cRXP_ENEMY_Murlocs|rmarked on the map southwest|r
    .goto Redridge Mountains,61.76,43.51
    .complete 20,1 --Battleworn Axe (10)
    .mob Blackrock Grunt
	.mob Blackrock Outrunner
step
    .goto Redridge Mountains,56.4,51.8
    >>Mate |cRXP_ENEMY_Batedores Murloc|r e |cRXP_ENEMY_Invocadores da Maré Murloc|r. Saqueie-os para obter seus |cRXP_LOOT_Nadadeiras|r e |cRXP_LOOT_Peixe-lua|r
    .collect 1468,8,150,1 -- Murloc Fin (8)
    .complete 127,1 -- Spotted Sunfish (10)
    .mob Murloc Scout
    .mob Murloc Tidecaller
step << Rogue
    #completewith Token
    .goto Redridge Mountains,51.846,45.116,100 >>Dirija-se para o Moinho do Alther
step << Rogue
    .goto Redridge Mountains,51.846,45.116
    >>Você DEVE fazer isso para a missão [Venenos] mais tarde
    >>|cRXP_WARN_Fique no local do waypoint. Posicione sua câmera e cursor até conseguir clicar em 3 |cRXP_PICK_Practice Lockboxes|r de uma vez sem precisar se mover|r
    >>|cRXP_WARN_Abra as|cRXP_PICK_Baú de Exercício|r no chão em Moinho de Alter até sua habilidade de |r[Abrir Fechadura] chegar a 80|r
    .skill lockpicking,80,1
step << Rogue
    #label Token
	.goto Redridge Mountains,52.05,44.69
    >>Abra |cRXP_PICK_Cofre de Lucius|r. Saqueie-o para obter o |cRXP_LOOT_Símbolo de Ladroagem|r
    .complete 2282,1 --Token of Thievery (1)
    .skill lockpicking,<80,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
	.target Marshal Marris
    .goto Redridge Mountains,33.50,48.97
    .turnin 20 >>Entregue Ameaça Blackrock
step
    .goto Redridge Mountains,27.724,47.377
    .target Dockmaster Baren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre de Doca Baren|r
    .turnin 127 >>Entregue O lago está para peixe
    .turnin 150 >>Entregue Caçadores de Murlocs
step << Rogue
    .goto Redridge Mountains,28.07,52.02
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2282 >>Entregue Moinho de Alther
    .target Lucius
    .isQuestComplete 2282
step
    .goto Redridge Mountains,26.75,46.43
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 180 >>Aceite Wanted: General Mordente
step
    .goto Redridge Mountains,21.85,46.32
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
	.target Martie Jainrose
    .accept 34 >>Aceite O Penetra
step
    .goto Redridge Mountains,15.68,49.30
    >>Abata |cRXP_ENEMY_Ronquifuça|r. Saqueie-o pelo |cRXP_LOOT_Tusk|r
    .complete 34,1 -- Bellygrub's Tusk (1)
    .mob Bellygrub
step
    .goto Redridge Mountains,21.85,46.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Entregue O penetra
    .target Martie Jainrose
step
    #completewith next
    .subzone 42 >>Viaje até Darkshire in Duskwood
step
    .goto Duskwood,75.81,45.29
    .target Madame Eva
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r
    .accept 66 >>Aceite A Lenda de Stalvan
    .accept 101 >>Aceite O Totem do Castigo
step
    .isQuestTurnedIn 2359 << Rogue -- Rogue setting HS if already completed poison quest
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Brunê|r
    .home >>Defina sua Pedra de Regresso para a Floresta do Crepúsculo 
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_Você precisa de 50 de habilidade em culinária para aceitar essa missão|r
    .accept 90 >>Aceite Kebab Temperado de Lobo
    .turnin 90 >>Entregue Kebab Temperado de Lobo
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .accept 56 >>Aceite A Vigília Noturna
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tabelião Azambuja|r
    .turnin 66 >>Entregue A Lenda de Galvão
    .accept 67 >>Aceite A Lenda de Stalvan
    .target Clerk Daltry
step << Draenei
    .goto Duskwood,71.815,46.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anchorite Delan|r
    .turnin 9429 >>Turn in Viaje até Darkshire
    .target Anchorite Delan
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r
    .accept 173 >>Aceite Worgen na Floresta
    .target Calor
step
    .goto Duskwood,75.33,48.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elaine Carevino|r
    .accept 163 >>Aceite Monte Corvo
    .accept 164 >>Aceite Entregas a Sven
    .accept 165 >>Aceite O Eremita
    .target Elaine Carevin
step
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felícia Maline|r
    .fp Duskwood>>Aprenda a rota de voo para Floresta do Crepúsculo
    .target Felicia Maline
    .subzoneskip 42,1
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule este passo se |cRXP_FRIENDLY_Herb Bibelocai|r não tem um|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .accept 174 >>Aceite Olhe para as Estrelas
    .turnin 174 >>Entregue Ora (direis) ouvir estrelas!
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .accept 175 >>Aceite Olhe para as Estrelas
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maria Cega|r
    .turnin 175 >>Entregue Ora (direis) ouvir estrelas!
    .accept 177 >>Aceite Olhe para as Estrelas
    .target Blind Mary
    .isQuestTurnedIn 174
step
	#completewith HistoryBook1
    >>|cRXP_WARN_Se você pega |T133741:0|t[|cRXP_LOOT_Livro de História Antiga|r] comece a missão. Este é um drop de toda a zona em Floresta do Crepúsculo|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >>Aceite An Old History Livro
    .use 2794 --An Old History Book
step
	#completewith next
    >>Mate |cRXP_ENEMY_Guerreiros Descarnado|r e |cRXP_ENEMY_Magos Descarnado|r
    >>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_Aplicar|r |T132316:0|t[Hamstring]
    >>|cRXP_ENEMY_Magos Descarnado|r |cRXP_WARN_lançam|r |T135846:0|t[Seta de Gelo] |cRXP_WARN_e também causar lentidão com|r |T135843:0|t[Armadura Gélida]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .mob +Skeletal Warrior
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob +Skeletal Mage
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Abata o |cRXP_ENEMY_Carniçal Insano|r. Saque-o para o |cRXP_LOOT_Mary's Looking Taça|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Carniçal Insano|r pode estar dentro da capela ou andando lá fora|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    #loop
    .goto Duskwood,80.35,69.31,50,0
    .goto Duskwood,77.49,71.30,50,0
    .goto Duskwood,79.38,73.70,50,0
    .goto Duskwood,79.38,70.28
	#label HistoryBook1
    >>Mate |cRXP_ENEMY_Guerreiros Descarnado|r e |cRXP_ENEMY_Magos Descarnado|r
    >>|cRXP_ENEMY_Skeletal Warriors|r |cRXP_WARN_Aplicar|r |T132316:0|t[Hamstring]
    >>|cRXP_ENEMY_Magos Descarnado|r |cRXP_WARN_lançam|r |T135846:0|t[Seta de Gelo] |cRXP_WARN_e também causar lentidão com|r |T135843:0|t[Armadura Gélida]
    .complete 56,1 -- Skeletal Warrior slain (8)
    .mob +Skeletal Warrior
    .complete 56,2 -- Skeletal Mage slain (6)
    .mob +Skeletal Mage
step
    #completewith Level25
    >>Mate Saqueie them for their |cRXP_LOOT_Gooey Spider Legs|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    #completewith next
    .goto Duskwood,18.203,56.215,50 >>Vá para |cRXP_FRIENDLY_Medrisco|r na Floresta do Crepúsculo ocidental
step
    .goto Duskwood,18.203,56.215
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jitters|r
    .turnin 163 >>Entregue Colina do Corvo
    .accept 5 >>Aceite Estômago Roncante de Medrisco
    .target Jitters
step
	.goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 164 >>Entregue Encomendas para Sven
    .accept 95 >>Aceite A Vingança de Sven
    .target Sven Yorgen
step
    .maxlevel 24
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lars|r
    .accept 226 >>Aceite Lobos nos nossos Calcanhares
    .target Lars
step
    #completewith SFD
    >>Mate |cRXP_ENEMY_Starving Dire Wolves|r e |cRXP_ENEMY_Rabid Dire Wolves|r. Saqueie-os para obter |cRXP_LOOT_Lean Wolf Flanks|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #completewith SFD
    >>Mate |cRXP_ENEMY_Starving Dire Wolves|r e |cRXP_ENEMY_Rabid Dire Wolves|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #label SFD
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 165 >>Entregue O Eremita
    .accept 148 >>Aceite Suprimentos de Vila Sombria
    .target Abercrombie
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>Mate |cRXP_ENEMY_Starving Dire Wolves|r e |cRXP_ENEMY_Rabid Dire Wolves|r. Saqueie-os para obter |cRXP_LOOT_Lean Wolf Flanks|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .collect 1015,10,90,1 -- Lean Wolf Flank (10)
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    #loop
    .goto Duskwood,9.98,59.57,0
    .goto Duskwood,10.94,47.07,0
    .goto Duskwood,9.20,39.04,0
    .goto Duskwood,13.36,29.08,0
    .goto Duskwood,22.78,28.18,0
    .goto Duskwood,36.19,24.67,0
    .goto Duskwood,9.98,59.57,80,0
    .goto Duskwood,10.94,47.07,70,0
    .goto Duskwood,9.20,39.04,70,0
    .goto Duskwood,13.36,29.08,70,0
    .goto Duskwood,22.78,28.18,70,0
    .goto Duskwood,36.19,24.67,70,0
    >>Mate |cRXP_ENEMY_Starving Dire Wolves|r e |cRXP_ENEMY_Rabid Dire Wolves|r
    .complete 226,1 -- Starving Dire Wolf (12)
    .complete 226,2 -- Rabid Dire Wolf (8)
    .skill cooking,50,1 -- step only displays if skill is less than 50
    .mob Starving Dire Wolf
    .mob Rabid Dire Wolf
    .isOnQuest 226
step
    .isQuestComplete 226
    .goto Duskwood,7.723,33.301
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lars|r
    .turnin 226 >>Entregue Lobos nos nossos Calcanhares
    .target Lars
step
    #label Level25
    .xp 25
step
	.goto Duskwood,32.4,36.6,0
	.goto Duskwood,29.6,50.4,0
    .goto Duskwood,33.6,60.4,0
    .goto Duskwood,12.2,69.8,0
    .goto Duskwood,10.6,37.0,0
    .goto Duskwood,33.6,60.4,70,0
    .goto Duskwood,12.2,69.8,70,0
    .goto Duskwood,10.6,37.0,70,0
    .goto Duskwood,12.8,55.6,70,0
	.goto Duskwood,32.4,36.6,70,0
	.goto Duskwood,29.6,50.4,70,0
    >>Mate Saqueie them for their |cRXP_LOOT_Gooey Spider Legs|r
    .collect 2251,6,93,1 -- Gooey Spider Leg (6)
    .mob Pygmy Venom Web Spider
    .mob Venom Web Spider
    .mob Green Recluse
    .mob Black Widow Hatchling
step
    >>Clique em |cRXP_PICK_A Sepultura Desgastada|r
    .goto Duskwood,17.72,29.07
    .accept 225 >>Aceite A Velha Lápide
step
    #completewith MoonbrookSt
    .zone Westfall >>Viaje até Cerro Oeste
step --xx
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .target Thor
step << Rogue
    #optional
    #completewith TowerKey
    +|cRXP_WARN_==PRESTE ATENÇÃO NA SEÇÃO A SEGUIR==|r
    >>Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar a Tecla Interagir" e atribua a opção "Interagir com Alvo" a uma tecla|r
    >>|cRXP_WARN_Além disso, é recomendado que você ative Placas de Nome de Inimigos (Tecla Padrão: V) pois permite que você veja inimigos atrás de alguns cantos dentro da torre|r
step << Rogue
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    >>Você DEVE fazer esta missão para [Venenos]
    .turnin 2360 >>Entregue Mathias e os Défias
    .accept 2359 >>Aceite A Torre de Klaven
    .target Agent Kearnen
step << Rogue
    #label TowerKey
    #loop
    .goto Westfall,71.49,73.49,0
    .goto Westfall,71.01,75.72,0
    .goto Westfall,69.58,73.07,0
    .goto Westfall,71.49,73.49,30,0
    .goto Westfall,71.01,75.72,30,0
    .goto Westfall,69.58,73.07,30,0
    >>Use |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Malformed Parasita Défias|r. Saque-o para a |cRXP_LOOT_Defias Torre Chave|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_O |cRXP_ENEMY_Drone Défias Malformado|r surge na entrada da torre, depois patrulha ao redor da parte externa|r
    >>|cRXP_WARN_Tenha cuidado pois ele causa muito dano. Se sua|r |T132320:0|t[Furtividade]|cRXP_WARN_ quebra, rapidamente use|r |T132307:0|t[Disparada]|cRXP_WARN_ e corra para longe|r
    .complete 2359,2 --Collect Defias Tower Key (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Malformed Defias Drone
step << Rogue
    #optional
    #completewith Mortwake
    +Equipe a [Adaga de Madeira Curva] para esta missão, caso você ainda não tenha uma [Adaga] equipada
    .use 15396
    .itemcount 15396,1
step << Rogue
    #label Mortwake
    .goto 1436,70.421,74.031
    >>Suba até o 2º andar mais alto da torre. Enquanto estiver em [Furtividade] |cRXP_WARN_ e as |cRXP_ENEMY_Sentinelas da Torre Défias|r não estiverem perto de você, pule na cadeira, depois na lâmpada, então na estante de livros no topo do local do ponto de referência |r
    >>Saia manualmente de [Furtividade]|cRXP_WARN_, depois pressione sua tecla de atalho "Interagir com Alvo" para abrir o |cRXP_PICK_Baú da Floresta do Crepúsculo|r. Saqueie-o para obter |cRXP_LOOT_Diário de Filipe Pinel|r |r
    >>OBS.: Sua [Furtividade] vai parar de funcionar temporariamente após saquear |cRXP_LOOT_Diário de Filipe Pinel|r
    >>|cRXP_WARN_Esteja preparado para correr se você não matar as |cRXP_ENEMY_Sentinelas da Torre Défias|r no 2º andar. Elas provavelmente vão te manter em aggro permanente (mas sem te atacar) quando você estiver em cima da estante pois é um ponto de evade|r
    >>|cRXP_WARN_Se você tem um|r |T135641:0|t[Dagger]|cRXP_WARN_ na mochila ou equipado, você pode usar|r |T132282:0|t[Emboscar]|cRXP_WARN_ nos |cRXP_ENEMY_Defias Torre Patrollers|r e |cRXP_ENEMY_Defias Torre Sentries|r dentro para matá-los instantaneamente. Esteja preparado para correr depois que você matar o primeiro |cRXP_ENEMY_Defias Torre Sentinela|r e lembre-se que você pode ser atingido de cima. Isto é mais lento, mas MUITO mais seguro|r
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Parasita Défias Mal Formado|r e |cRXP_ENEMY_Parasita Défias|r podem ficar na entrada da torre, caso você precise sair correndo dela|r
    .complete 2359,1 --Collect Klaven Mortwake's Journal (x1)
    .link https://www.youtube.com/watch?v=5sIew15IcG0 >>https://www.youtube.com/watch?v=5slew15IGQ >> Clique AQUI para o guia em vídeo
    .mob Defias Tower Patroller
    .mob Defias Tower Sentry
step
    #completewith MoonbrookSt
    .subzone 20 >>Viaje para Aldeia da Lua
step
    #label MoonbrookSt
    .goto Westfall,41.51,66.72
    >>Clique no |cRXP_PICK_Old Footlocker|r no chão
    .turnin 67 >>Entregue A Lenda de Galvão
    .accept 68 >>Aceite A Lenda de Stalvan
step << Paladin
    .goto Westfall,42.5,88.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dafne Calmafonte|r
    .turnin 1650 >>Entregue O Tomo de Bravura
    .target Daphne Stilwell
    .accept 1651 >>Aceite o Tomo da Bravura
step << Paladin
    .goto Westfall,42.5,88.6
    .complete 1651,1 --Protect Daphne Stilwell (1)
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dafne Calmafonte|r
    .turnin 1651 >>Entregue O Tomo de Bravura
    .target Daphne Stilwell
    .accept 1652 >>Aceite o Tomo da Bravura
step << Druid
    #completewith next
    .goto Westfall,17.928,33.099,50 >>Nade para o mar
step << Druid
    .goto Westfall,17.928,33.099
    >>Abra o |cRXP_PICK_Strange Lockbox|r. Saqueie-o para obter o |cRXP_LOOT_Half Pendant of Aquatic Endurance|r
    .collect 15882,1,272,1 --Collect Half Pendant of Aquatic Endurance (x1)
step << Druid
    #completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,36.0,41.4
    .use 15883 >>|cRXP_WARN_Use|r |T133443:0|t[Meio-pingente da Agilidade Aquática] |cRXP_WARN_para combiná-lo com o|r |T133442:0|t[Half Pendant of Aquatic Resistência] |cRXP_WARN_no Altar de Remulos|r
    .complete 272,1 --Collect Pendant of the Sea Lion (x1)
step << Druid
    #completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
    >>|cRXP_WARN_Isso economizará tempo de retorno|r
step << Druid
    .goto Moonglade,56.209,30.636
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 272 >>Entregue Julgamento do Leão-marinho
    .accept 5061 >>Aceite Aquatic Formação - Missão
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step << Druid
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>>Voe para Teldrassil
    .target Silva Fil'naveth
step << Druid
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .turnin 5061 >>Entregue Forma Aquática
step
    .isOnQuest 68,225,148,95,56
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
	.hs >>Lar para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
	.cooldown item,6948,>0,1
step
    .isQuestTurnedIn 2359 << Rogue -- going straight to duskwood if already completed poison quest earlier
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Duskwood >>Voe para Darkshire
    .target Thor
    .zoneskip Duskwood
step << Rogue
    #completewith KlavenEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
    .zoneskip Stormwind City
	.cooldown item,6948,<0
step << Rogue
    #optional
    #completewith KlavenEnd
	.hs >>Use sua Pedra de Retorno para ir a Ventobravo
	.cooldown item,6948,>0,1
    .zoneskip Stormwind City
    .bindlocation 1519,1
step << !Dwarf Rogue
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>Vá em direção à |cRXP_FRIENDLY_Suzi Lira|r
    .aura -9991
step << !Dwarf Rogue
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .skill firstaid,80 >>|cRXP_WARN_Eleve seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_até 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .train 7934 >>|cRXP_WARN_treine|r |T134437:0|t[Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
    #optional
    #requires AntiVenomEnd2
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step << Rogue
    #label KlavenEnd
    #requires AntiVenomEnd2
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    >>|cRXP_WARN_Lembre-se de equipar novamente sua arma principal se você trocou para uma|r |T135641:0|t[Adaga] |cRXP_WARN_anteriormente|r << Rogue
    .turnin 2359 >>Entregue A Torre de Klaven
    .target Master Mathias Shaw
step << Rogue
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Duskwood>>Voe para Floresta do Crepúsculo
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step << Rogue
    .goto Duskwood,73.87,44.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Brunê|r
    >>Se você acabou de completar sua missão Veneno, defina sua Pedra de Retorno em Darkshire
    >>Se sua Pedra de Retorno já estava definida em Darkshire, pule este passo
    .home >>Defina sua Pedra de Retorno em Darkshire
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr

--
step << Rogue skip
    .goto Stormwind City,75.9,59.9
    .turnin 2359 >>Entregue A Torre de Klaven
    .accept 2607 >>Aceite O Toque de Zanzil - Missão
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Vá para o subsolo
    .turnin 2607 >>Entregue O Toque de Zanzil - Missão
    .accept 2608 >>Aceite O Toque de Zanzil - Missão
step << Rogue skip
    .goto Stormwind City,78.1,59.0
    >>Type /lay on the chat e wait until the quest complete itself
    .complete 2608,1 --Diagnosis Complete
step << Rogue skip
    .goto Stormwind City,78.0,58.8
    .turnin 2608 >>Entregue O Toque de Zanzil - Missão
    .accept 2609 >>Aceite O Toque de Zanzil - Missão
step << Rogue skip
    .goto Stormwind City,78.2,59.0
    >>Compre uma Ampola Chumbada do vendedor sombrio
    .complete 2609,2 --Collect Leaded Vial (x1)
step << Rogue skip
    >>Vá para o vendedor de flores
    .complete 2609,1 --Collect Simple Wildflowers (x1)
    .goto Stormwind City,64.3,60.8
step << Rogue skip
    >>Compre um Tubo de Bronze na Casa de Leilões
    .complete 2609,3 --Collect Bronze Tube (x1)
    .goto Stormwind City,53.6,59.3
    >>Head to the shop next to the bridge between the Cathedral Square e the Park
    .complete 2609,4 --Collect Spool of Light Chartreuse Silk Thread (x1)
    .goto Stormwind City,39.8,46.5
    >>Se você não conseguir encontrar um tubo de bronze, terá que pular essa missão, treinar Primeiros Socorros a 80, farmar um pequeno saco de veneno das aranhas em Floresta do Crepúsculo, fabricar uma Antitoxina e remover o veneno de Zanzil.
step << Rogue skip
    .goto Stormwind City,78.0,58.9
    .turnin 2609 >>Entregue O Toque de Zanzil - Missão
--

step
    .goto Duskwood,73.83,44.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chef Grual|r
	>>|cRXP_WARN_Você precisa de 50 de habilidade em culinária para aceitar essa missão|r
    .accept 90 >>Aceite Kebab Temperado de Lobo
    .turnin 90 >>Entregue Kebab Temperado de Lobo
    .skill cooking,<50,1 -- step only displays if skill is 50 or higher than 50
    .itemcount 1015,10 -- Lean Wolf Flank (10)
    .target Chef Grual
step
	.goto Duskwood,73.88,43.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chef Grual|r
    .turnin 5 >>Entregue Estômago Roncante de Medrisco
    .accept 93 >>Aceite Bolinhos de Caranguejo Crepuscular
    .turnin 93 >>Entregue Bolinhos de Caranguejo Crepuscular
    .accept 240 >>Aceite Devolver para Medrisco
    .target Chef Grual
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 56 >>Entregue A Vigília Noturna
    .target Commander Althea Ebonlocke
    .accept 57 >>Aceite A Vigília Noturna
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tabelião Azambuja|r
    .turnin 68 >>Entregue A Lenda de Galvão
    .accept 69 >>Aceite A Lenda de Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 225 >>Entregue A Velha Lápide
    .accept 227 >>Aceite Morgan Ladimore
    .target Sirra Von'Indi
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 227 >>Entregue Morgan Ladimore
    .accept 228 >>Aceite Mor'Ladim
    .target Commander Althea Ebonlocke
step
    #sticky
    .destroy 2154 >>Pegue o |T133741:0|t[A História de Morgan Ladimore]
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r
    .turnin 148 >>Entregue Suprimentos de Vila Sombria
    .target Madame Eva
    .accept 149 >>Aceite Linha de Cabelo de Fantasma
step
    .goto Duskwood,77.992,48.328
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Herble Baubbletump|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule este passo se |cRXP_FRIENDLY_Herb Bibelocai|r não tem um|r
    .bronzetube--skips the step if you have a bronze tube
    .target Herble Baubbletump
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .accept 174 >>Aceite Olhe para as Estrelas
    .turnin 174 >>Entregue Ora (direis) ouvir estrelas!
    .itemcount 4371,1 -- Bronze Tube (1)
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    .target Viktori Prism'Antras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .accept 175 >>Aceite Olhe para as Estrelas
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maria Cega|r
    .turnin 175 >>Entregue Ora (direis) ouvir estrelas!
    .accept 177 >>Aceite Olhe para as Estrelas
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.98,59.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maria Cega|r
    .turnin 149 >>Entregue Linha de Cabelo de Fantasma
    .accept 154 >>Aceite Devolva o Pente
    .target Blind Mary
step
	#completewith next
    >>|cRXP_WARN_Se você pega |T133741:0|t[|cRXP_LOOT_Livro de História Antiga|r] comece a missão. Este é um drop de toda a zona em Floresta do Crepúsculo|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >>Aceite An Old History Livro
    .use 2794 --An Old History Book
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Abata o |cRXP_ENEMY_Carniçal Insano|r. Saque-o para o |cRXP_LOOT_Mary's Looking Taça|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Carniçal Insano|r pode estar dentro da capela ou andando lá fora|r
    .complete 177,1
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
	.isQuestComplete 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .turnin 177 >>Entregue Ora (direis) ouvir estrelas!
    .accept 181 >>Aceite Olhe para as Estrelas
    .target Viktori Prism'Antras
step
	.isQuestTurnedIn 177
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .accept 181 >>Aceite Olhe para as Estrelas
    .target Viktori Prism'Antras
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r
    .turnin 154 >>Entregue Devolva o Pente
    .accept 157 >>Aceite Entregue a Linha
    .target Madame Eva
step
    .goto Duskwood,49.85,77.71
    >>Clique no |cRXP_PICK_Mound of loose dirt|r no chão
    .turnin 95 >>Entregue A Vingança de Sven
    .accept 230 >>Aceite o Acampamento do Sven
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 157 >>Entregue Entregue a Linha
    .target Abercrombie
    .accept 158 >>Aceite Suco de Zumbi
step << Hunter/Warrior/Paladin
    .goto Duskwood,19.59,37.28
    >>Mate for his |cRXP_LOOT_Caveira|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_é um Élite nível 30 que bate muito forte mas se move bem lentamente. Tente contorná-lo ao redor de grandes árvores se necessário|r
    >>|cRXP_WARN_Esta missão é MUITO difícil. Encontre um grupo para ele, se necessário. Pule este passo se você não conseguir encontrar um grupo ou derrotá-lo sozinho, você terá outra chance depois|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 230 >>Entregue o Acampamento do Sven
    .target Sven Yorgen
    .accept 262 >>Aceite O Vulto Sombrio
step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>>Voe para Darkshire
    .target Thor
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .subzone 42 >>Viaje até Darkshire
step << Warrior/Paladin
    #optional
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >>Entregue O Vulto Sombrio
    .target Madame Eva
    .accept 265 >>Aceite A Busca Sombria Continua
    .subzoneskip 42,1
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 228 >>Entregue Mor'Ladim
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tabelião Azambuja|r
    .turnin 265 >>Entregue A Busca Sombria Continua
    .accept 266 >>Aceite Pergunte na Estalagem
    .turnin 68 >>Entregue A Lenda de Galvão
    .accept 69 >>Aceite A Lenda de Stalvan
    .target Clerk Daltry
    .subzoneskip 42,1
step << Warrior/Paladin
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taberneiro Oseias|r
    .turnin 158 >>Entregue Suco de Zumbi
    .accept 156 >>Aceite Flores do Mal
    .turnin 266 >>Entregue Indagar na Estalagem
    .accept 453 >>Aceite Procurando o Vulto Sombrio
    .target Tavernkeep Smitts
    .subzoneskip 42,1
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vigia Ladimore|r
    >>|cRXP_FRIENDLY_Vigia Ladimore|r |cRXP_WARN_patrulha ao redor de Darkshire|r
    .turnin 229 >>Entregue A Filha Sobrevivente
    .accept 231 >>Aceite Amor de Filha
    .target Watcher Ladimore
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felícia Maline|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Felicia Maline
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Clique em |cRXP_PICK_A Sepultura Desgastada|r
    .turnin 231 >>Entregue Amor de Filha
step
    #completewith BlackrockChampion
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Thor
    .zoneskip Redridge Mountains
    .maxlevel 27
step
#xprate <1.5
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guard Howe|r
    .accept 128 >>Aceite Recompensa de Rocha Negra
    .maxlevel 27
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
    .accept 19 >>Aceite Tharil'zun
    .accept 115 >>Aceite Magia das Sombras
	.isQuestTurnedIn 20
    .maxlevel 27
step
    .group
    .goto Redridge Mountains,29.622,46.172
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tClique em |cRXP_FRIENDLY_The Wanted Poster|r
    .accept 169 >>Aceite Wanted: Gath'Ilzogg
    .maxlevel 27
step
    #completewith LookingFurther
    >>Mate as |cRXP_ENEMY_Shadowhides|r. Saqueie-os para obter |cRXP_LOOT_Pendants|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #label fangore
    .goto Redridge Mountains,80.17,37.05
    >>Mate for his |cRXP_LOOT_Paw|r
    >>|cRXP_ENEMY_General Mordente|r |cRXP_WARN_virá acompanhado de 2|r |cRXP_ENEMY_Gnolls|r
    >>|cRXP_ENEMY_General Mordente|r |cRXP_WARN_é imune a dano de Sombra. Certifique-se de que tem membros de grupo que possam ajudar, caso contrário você pode pular este passo|r << Warlock/Priest
    .complete 180,1 -- Fangore's Paw (1)
    .isOnQuest 180
    .mob Lieutenant Fangore
step
    .goto Redridge Mountains,84.50,46.80
    >>Clique no |cRXP_PICK_Old Lion Statue|r
    .turnin 94 >>Entregue Um Olhar Atento
    .accept 248 >>Aceite Looking Further
    .isOnQuest 94
    .zoneskip Redridge Mountains,1
step
    #label LookingFurther
    .goto Redridge Mountains,84.50,46.80
    >>Clique no |cRXP_PICK_Old Lion Statue|r
    .accept 248 >>Aceite Looking Further
    .isQuestTurnedIn 94
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,75.49,41.57,60,0
    .goto Redridge Mountains,80.09,36.68,60,0
    .goto Redridge Mountains,80.69,46.28,60,0
    .goto Redridge Mountains,77.62,42.28,60,0
    .goto Redridge Mountains,77.52,36.31
    >>Mate as |cRXP_ENEMY_Shadowhides|r. Saqueie-os para obter |cRXP_LOOT_Pendants|r
    .complete 91,1 -- Shadowhide Pendant (10)
    .mob Rabid Shadowhide Gnoll
    .mob Shadowhide Gnoll
    .mob Shadowhide Assassin
    .mob Shadowhide Warrior
    .mob Shadowhide Darkweaver
    .mob Shadowhide Slayer
	.isOnQuest 91
step
    #completewith Gath
    >>Mate |cRXP_ENEMY_Blackrock Shadowcasters|r. Saqueie-os para obter |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .goto Redridge Mountains,71.40,55.07
    >>Mate for his |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Tharil'zun|r |cRXP_WARN_é uma Élite de nível 25|r
    >>Esta missão é MUITO difícil. Encontre um grupo para ele se necessário. Ignore esta etapa se você não conseguir encontrar um grupo ou enfrentá-lo sozinho
    .complete 19,1 -- Tharil'zun's Head
    .mob Tharil'zun
	.isOnQuest 19
step
    #label Gath
    .group 2
    .goto Redridge Mountains,69.599,55.797
    >>Entre na casa de Stonewatch Keep
    >>Mate for his |cRXP_LOOT_Cabeça|r
    .complete 169,1 -- Head of Gath'Ilzogg
    .mob Gath'Ilzogg
    .isOnQuest 169
step
    .goto Redridge Mountains,66.68,56.26
    >>Mate |cRXP_ENEMY_Blackrock Shadowcasters|r. Saqueie-os para obter |cRXP_LOOT_Orbs|r
    .complete 115,1 -- Midnight Orb (3)
    .mob Blackrock Shadowcaster
    .isOnQuest 115
step
    .goto Redridge Mountains,63.246,49.840
    >>Clique em |cRXP_PICK_An Vazio Jar|r no barril no topo da Torre Pedra-Vigia
    >>|cRXP_WARN_Não aceite a próxima|r
    .turnin 248 >>Entregue Looking Further
    .isOnQuest 248
step
    #label BlackrockChampion
    .goto Redridge Mountains,28.89,13.20
    >>Mate |cRXP_ENEMY_Blackrock Champions|r
    .complete 128,1 -- Blackrock Champion slain (15)
	.isOnQuest 128
step
    .goto Redridge Mountains,28.388,12.562
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cabo Keeshan|r na parte de trás da Pedra de Render
    >>|cRXP_WARN_Pule este passo se ele não estiver lá|r
    .accept 219 >>Aceite Missing In Action
    .target Corporal Keeshan
    .zoneskip Redridge Mountains,1
step
    .goto Redridge Mountains,33.414,48.499
    >>Escorte o |cRXP_FRIENDLY_Cabo Keeshan|r de volta para Lakeshire
    >>|cRXP_WARN_Cuidado para não puxar muitos inimigos logo depois que você sai da caverna|r
    .complete 219,1
	.isOnQuest 219
    .target Corporal Keeshan
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
    .turnin 219 >>Entregue Missing In Action
	.isQuestComplete 219
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
    .turnin 19 >>Entregue Tharil'zun
	.isQuestComplete 19
step
    .goto Redridge Mountains,33.50,48.96
    .target Marshal Marris
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oficial Marris|r
    .turnin 115 >>Entregue Magia das Sombras
	.isQuestComplete 115
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .turnin 180 >>Entregue Wanted: General Mordente
    .isQuestComplete 180
    .target Magistrate Solomon
step
    .goto Redridge Mountains,29.71,44.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bailiff Conacher|r
    .turnin 91 >>Entregue Solomon's Law
    .isQuestComplete 91
    .target Bailiff Conacher
step
    .goto Redridge Mountains,29.98,44.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .turnin 169 >>Entregue Wanted: Gath'Ilzogg
    .target Magistrate Solomon
    .isQuestComplete 169
step
    .goto Redridge Mountains,31.53,57.85
    .target Guard Howe
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guard Howe|r
    .turnin 128 >>Entregue Recompensa de Rocha Negra
	.isQuestComplete 128
step
    .isOnQuest 158,156,266,453,228,231,262
	.hs >>Lar para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Duskwood >>Voe para Darkshire
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step
    #completewith DaughterWhoLived
    .subzone 42 >>Viaje até Darkshire
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r
    .turnin 262 >>Entregue O Vulto Sombrio
    .target Madame Eva
    .accept 265 >>Aceite A Busca Sombria Continua
step
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 228 >>Entregue Mor'Ladim
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tabelião Azambuja|r
    .turnin 265 >>Entregue A Busca Sombria Continua
    .accept 266 >>Aceite Pergunte na Estalagem
    .turnin 68 >>Entregue A Lenda de Galvão
    .accept 69 >>Aceite A Lenda de Stalvan
    .target Clerk Daltry
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Conselheiro Bonfilobos|r
    .accept 377 >>Aceite Crime e Castigo
    .target Councilman Millstipe
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taberneiro Oseias|r
    .turnin 158 >>Entregue Suco de Zumbi
    .accept 156 >>Aceite Flores do Mal
    .turnin 266 >>Entregue Indagar na Estalagem
    .accept 453 >>Aceite Procurando o Vulto Sombrio
    .target Tavernkeep Smitts
step
    #label DaughterWhoLived
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vigia Ladimore|r
    >>|cRXP_FRIENDLY_Vigia Ladimore|r |cRXP_WARN_patrulha ao redor de Darkshire|r
    .turnin 229 >>Entregue A Filha Sobrevivente
    .accept 231 >>Aceite Amor de Filha
    .target Watcher Ladimore
step
    #loop
    .goto Duskwood,66.0,44.6,0
    .goto Duskwood,64.2,38.8,0
    .goto Duskwood,60.8,37.4,0
    .goto Duskwood,61.2,46.0,0
    .goto Duskwood,67.6,46.6,0
    .goto Duskwood,63.6,41.2,0
    .goto Duskwood,66.0,44.6,60,0
    .goto Duskwood,64.2,38.8,60,0
    .goto Duskwood,60.8,37.4,60,0
    .goto Duskwood,61.2,46.0,60,0
    .goto Duskwood,67.6,46.6,60,0
    .goto Duskwood,63.6,41.2,60,0
	>>Mate |cRXP_ENEMY_Nightbane Shadow Weavers|r
    .complete 173,1 --6/6 Nightbane Shadow Weaver slain
	.mob Nightbane Shadow Weaver
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r
    .turnin 173 >>Entregue Worgen na Floresta
    .accept 221 >>Aceite Worgen na Floresta
    .target Calor
step
    #completewith HistoryB3
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felícia Maline|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Felicia Maline
step
	#completewith HistoryB3
    >>|cRXP_WARN_Se você pega |T133741:0|t[|cRXP_LOOT_Livro de História Antiga|r] comece a missão. Este é um drop de toda a zona em Floresta do Crepúsculo|r
	.collect 2794,1,337 --An Old History Book (1)
	.accept 337 >>Aceite An Old History Livro
    .use 2794 --An Old History Book
step
    .goto Duskwood,18.37,56.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jitters|r
    .turnin 453 >>Entregue Procurando o Vulto Sombrio
    .accept 268 >>Aceite Retornar para Sven
    .turnin 240 >>Entregue Devolver para Medrisco
    .target Jitters
step
    #loop
    .goto Duskwood,22.95,44.75,0
    .goto Duskwood,20.39,47.02,0
    .goto Duskwood,15.65,42.81,0
    .goto Duskwood,22.11,46.93,0
    .goto Duskwood,21.21,47.07,0
    .goto Duskwood,22.95,44.75,80,0
    .goto Duskwood,20.39,47.02,70,0
    .goto Duskwood,15.07,46.91,70,0
    .goto Duskwood,15.65,42.81,70,0
    .goto Duskwood,18.30,47.75,70,0
    .goto Duskwood,22.11,46.93,70,0
    .goto Duskwood,23.68,42.13,70,0
    .goto Duskwood,21.21,47.07,70,0
    >>Mate |cRXP_ENEMY_Skeletal Fiends|r e |cRXP_ENEMY_Skeletal Horrors|r. Saqueie-os para obter |cRXP_LOOT_Rot Blossoms|r e |cRXP_LOOT_Dedo|r
    .complete 57,1 -- Skeletal Fiend slain (15)
    .mob +Skeletal Fiend
    .complete 57,2 -- Skeletal Horror slain (15)
    .mob +Skeletal Horror
    .complete 156,1 -- Rot Blossom (8)
    .mob +Skeletal Fiend
    .mob +Skeletal Horror
    .complete 101,3 --10/10 Skeleton Finger
    .mob +Skeletal Fiend
    .mob +Skeletal Horror
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 268 >>Entregue Retornar para Sven
    .accept 323 >>Aceite Provando Seu Valor
    .target Sven Yorgen
step
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Clique em |cRXP_PICK_A Sepultura Desgastada|r
    .turnin 231 >>Entregue Amor de Filha
step
    .goto Duskwood,16.01,38.79
    >>Mate |cRXP_ENEMY_Skeletal Raiders|r, |cRXP_ENEMY_Skeletal Healers|r e |cRXP_ENEMY_Skeletal Warders|r
    >>|cRXP_WARN_Entre nas Catacumbas de Madeira do Amanhecer para os|r |cRXP_ENEMY_Descarnados Guardiões|r
    .complete 323,1 -- Skeletal Raider slain (15)
    .mob +Skeletal Raider
    .complete 323,2 -- Skeletal Healer slain (3)
    .mob +Skeletal Healer
    .complete 323,3 -- Skeletal Warder slain (3)
    .mob +Skeletal Warder
step
	.xp 27 >>Suba até o nível 27. Se você está planejando The Stockades, você pode pular este passo
step
    .goto Duskwood,19.59,37.28
    >>Mate for his |cRXP_LOOT_Caveira|r
    >>|cRXP_ENEMY_Mor'Ladim|r |cRXP_WARN_é um Élite nível 30 que bate muito forte mas se move bem lentamente. Tente contorná-lo ao redor de grandes árvores se necessário|r
    >>|cRXP_WARN_Esta missão é MUITO difícil. Encontre um grupo para ele, se necessário. Pule este passo se você não conseguir encontrar um grupo ou derrotá-lo sozinho, você terá outra chance depois|r
    .complete 228,1 --1/1 Mor'ladim's Skull
    .unitscan Mor'Ladim
step
    #label HistoryB3
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 323 >>Entregue Provando Seu Valor
    .accept 269 >>Aceite Procurando Sabedoria
    .target Sven Yorgen
step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .hs >>Lar para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Warrior/Paladin
    #optional
    .isQuestComplete 228 -- turning in mor'ladim to get Archeus if complete
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>>Voe para Darkshire
    .target Thor
step << Warrior/Paladin
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 228 >>Entregue Mor'Ladim
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step << Warrior/Paladin
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vigia Ladimore|r
    >>|cRXP_FRIENDLY_Vigia Ladimore|r |cRXP_WARN_patrulha ao redor de Darkshire|r
    .turnin 229 >>Entregue A Filha Sobrevivente
    .accept 231 >>Aceite Amor de Filha
    .target Watcher Ladimore
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,77.486,44.287
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felícia Maline|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Felicia Maline
step << Warrior/Paladin
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Clique em |cRXP_PICK_A Sepultura Desgastada|r
    .turnin 231 >>Entregue Amor de Filha
step
#completewith RunStocks
.dungeon Stockades
    +|cRXP_WARN_Você está prestes a ir para Ventobravo em breve, tente encontrar um grupo para The Stockades|r
step
.dungeon !Stockades
    #completewith TLOS
    .deathskip >>Vá para Elwynn Forest, puxe vários inimigos de baixo nível, morra de propósito e renasça em Goldshire
step
    #completewith next
    .subzone 87 >>Viaje para Goldshire
    .isOnQuest 69
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step
    #label TLOS
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .turnin 69 >>Entregue A Lenda de Galvão
    .accept 70 >>Aceite A Lenda de Stalvan
    .target Innkeeper Farley
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Vá para cima
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.trainer >>Treine suas magias de classe
    .target Priestess Josetta
step << Rogue
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .trainer >>Treine suas magias de classe
    .target Keryn Sylvius
step
    .goto Elwynn Forest,44.302,65.823
    >>Abra o it for |cRXP_LOOT_An Undelivered Letter|r
    .complete 70,1 --Collect An Undelivered Letter (x1)
step << !Mage
    #label RunStocks
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
step << Mage
    #label RunStocks
    #completewith next
    .goto Stormwind City,43.08,80.39
    .zone Stormwind City >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
	.target Jennea Cannon
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áugure Umbrua|r
	.trainer >>Treine suas magias de classe
    .target Farseer Umbrua
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>Head to the Slaughtered Lamb e go no andar de baixo
step
#xprate <1.5
    .goto Stormwind City,26.44,78.66
    .target Zardeth of the Black Claw
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zardeth of the Black Claw|r
    .accept 335 >>Aceite Uma Bebida para Poucos
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step
    .goto Stormwind City,29.528,61.924
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caretaker Folsom|r
    .turnin 70 >>Entregue A Lenda de Galvão
    .target Caretaker Folsom
    .accept 72 >>Aceite A Lenda de Stalvan
step
    .goto Stormwind City,29.44,61.52
    >>Clique no |cRXP_PICK_Sealed Crate|r no chão
    .turnin 72 >>Entregue A Lenda de Galvão
    .accept 74 >>Aceite A Lenda de Stalvan
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sheldras Lunárvore|r
    .trainer >>Treine suas magias de classe
    .target Sheldras Moontree
step
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Paladin
    .goto Stormwind City,39.81,29.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .target Duthorian Rall
    .turnin 1652 >>Entregue O Tomo de Bravura
step
    .goto Stormwind City,40.551,30.959
    .target Brother Sarno
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Sarmo|r
    .accept 2923 >>Aceite Mestre-faz-tudo Superchispa
step
    .isQuestTurnedIn 323
    .goto Stormwind City,39.108,27.861
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bishop Farthing|r
    .turnin 269 >>Entregue Buscando Sabedoria
    .accept 270 >>Aceite A Esquadra Naufragada
    .target Bishop Farthing
step
.dungeon Stockades
    #optional
    .isQuestTurnedIn 373
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .accept 389 >>Aceite Basílio Taborda
    .target Baros Alexston
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
step << Mage
    .goto Stormwind City,43.500,26.971
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brother Cassius|r
    >>|cRXP_BUY_Compre 2|r |T134419:0|t[Runa de Teleporte] |cRXP_BUY_dele|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Brother Cassius
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrulha a Cidade Velha|r
    .accept 388 >>Aceite A Cor de Sangue
    .unitscan Nikova Raskol
step
.dungeon Stockades
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carcereiro-chefe Thelágua|r
    .accept 387 >>Aceite Abafar a Revolta
    .turnin 389 >>Entregue Basílio Taborda
    .accept 391 >>Aceite Os Motins do Cárcere
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carcereiro-chefe Thelágua|r
    .accept 391 >>Aceite Os Motins do Cárcere
    .accept 387 >>Aceite Abafar a Revolta
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carcereiro-chefe Thelágua|r
    .accept 387 >>Aceite Abafar a Revolta
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,39.834,54.360
    +Encontre um grupo para The Stockades
    .zoneskip Stormwind City,1 --skips the step upon entering stockades, for some reason this dungeon has no subzone ID
step
.dungeon Stockades
    #label stock1
    #sticky
    >>Mate os |cRXP_ENEMY_Defias|r. Saque-os para obter suas |cRXP_LOOT_Bandanas|r
    .complete 387,1 -- Defias Prisoner slain (10)
    .complete 387,2 -- Defias Convict slain (8)
    .complete 387,3 -- Defias Insurgent slain (8)
    .complete 388,1 -- Red Wool Bandana (10)
step
.dungeon Stockades
    #label stock2
    #sticky
    >>Mate |cRXP_ENEMY_Targorr, o Horror|r. Saqueie-o para obter sua |cRXP_LOOT_Cabeça|r. |cRXP_ENEMY_Targorr|r tem um local de surgimento aleatório
    >>Mate |cRXP_ENEMY_Flávio Lúcio|r na ala oeste da prisão. Saqueie-o para obter sua |cRXP_LOOT_Mão|r
    .complete -386,1 -- Head of Targorr
    .complete -377,1 -- Hand of Dextren Ward
    .mob Targorr the Dread
    .mob Dextren Ward
step
.dungeon Stockades
    #label Bazil
    >>Mate |cRXP_ENEMY_Basílio Taborda|r na ala leste da prisão. Saqueie-o para obter sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Certifique-se de que você tem 3 |r |T132905:0|t[Seda] |cRXP_WARN_para a continuação desta cadeia de missões|r
    .complete 391,1 -- Head of Bazil Thredd
    .collect 4306,3,2746,1 -- Silk Cloth (3)
    .isOnQuest 391
    .mob Bazil Thredd
step
.dungeon Stockades
    #requires stock1
step
.dungeon Stockades
    #requires stock2
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carcereiro-chefe Thelágua|r
    .turnin 387 >>Entregue Sufoque a rebelião
    .turnin 391 >>Entregue Os Motins do Cárcere
    .accept 392 >>Aceite O Visitante Curioso
    .target Warden Thelwater
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carcereiro-chefe Thelágua|r
    .turnin 387 >>Entregue Sufoque a rebelião
    .target Warden Thelwater
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .turnin 392 >>Entregue O Visitante Curioso
    .accept 393 >>Aceite Sombra do Passado
    .target Baros Alexston
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70,40,0
    .goto StormwindClassic,69.25,39.63,40,0
    .goto StormwindClassic,71.28,41.37,40,0
    .goto StormwindClassic,73.33,45.65,40,0
    .goto StormwindClassic,72.44,47.70
    .line StormwindClassic,69.25,39.63,71.28,41.37,73.33,45.65,72.44,47.70,73.33,45.65,71.28,41.37,69.25,39.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nikova Raskol|r
    >>|cRXP_FRIENDLY_Nikova Raskol|r |cRXP_WARN_patrulha a Cidade Velha|r
    .turnin 388 >>Entregue A Cor de Sangue
    .unitscan Nikova Raskol
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .turnin 393 >>Entregue Sombra do Passado
    .accept 350 >>Aceite À Procura de um Velho Amigo
    .target Master Mathias Shaw
    .isQuestTurnedIn 389
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elling Trias|r no andar de cima
    .turnin 350 >>Entregue À Procura de um Velho Amigo
    .accept 2745 >>Aceite Infiltrando o Castelo
    .target Elling Trias
    .isQuestTurnedIn 389
step
    #completewith AcceptSouthshore
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >>Vá para o Castelo de Ventobravo
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tyrion|r
    .turnin 2745 >>Entregue Infiltração do Castelo
    .accept 2746 >>Aceite Itens de Alguma Importância
    .target Tyrion
    .isQuestTurnedIn 391
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    >>|cRXP_WARN_Se você encontrou |T133741:0|t[|cRXP_LOOT_An Old History Livro|r] você pode entregá-lo|r
    .accept 337 >>Aceite An Old History Livro
    .turnin 337 >>Entregue An Old History Livro
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    #label AcceptSouthshore
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    .accept 538 >>Aceite Southshore
    .target Milton Sheaf
step
.dungeon Stockades
    #completewith next
    .goto Elwynn Forest,32.384,49.866,50 >>Saia de Ventobravo. Viaje para a Casa da Clara, na Floresta de Elwynn
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #ah
    >>Saqueie as |cRXP_LOOT_Maçãs Frescas da Clara|r na mesa
    >>|cRXP_WARN_Se você ainda precisar de|r |T132905:0|t[Tecido de Seda] |cRXP_WARN_compre alguns na Casa de Leilões|r
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
    #ssf
    >>Saqueie as |cRXP_LOOT_Maçãs Frescas da Clara|r na mesa
    .complete 2746,2 -- Clara's Fresh Apple (2)
    .goto Elwynn Forest,33.952,57.162
    .complete 2746,1 -- Silk Cloth (3)
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,15,0
    .goto StormwindClassic,72.005,21.542,20 >>Vá para o Castelo de Ventobravo
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,69.205,14.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tyrion|r
    >>|cRXP_WARN_Certifique-se de que seu grupo tenha entregado Itens de Alguma Importância antes de aceitar O Ataque!|r
    >>|cRXP_WARN_A aceitação automática da missão foi desativada para esta etapa. Observe que talvez você não consiga aceitar a missão se outra pessoa estiver no processo de fazê-la|r
    .turnin 2746 >>Entregue Itens of Some Consequence
    .accept 434,1 >>Aceite O Ataque!
    .timer 124,O Ataque! RP
    .target Tyrion
    .isQuestTurnedIn 391
step -- Note both of these guys are level 30 and 31
.dungeon Stockades
    .goto StormwindClassic,68.024,14.075
    >>|cRXP_WARN_Espere no centro do pátio por |cRXP_ENEMY_Lorde Gregor Lescobar|r e |cRXP_ENEMY_Marzon, a Lâmina Silente|r chegarem. Isso leva aproximadamente 2 minutos|r
    >>Mate |cRXP_ENEMY_Lorde Gregor Lescobar|r e |cRXP_ENEMY_Marzon, a Lâmina Silente|r
    .complete 434,1 -- Lord Gregor Lescovar slain
    .complete 434,2 -- Marzon the Silent Blade slain
    .complete 434,3 -- Overhear Lescovar and Marzon's Conversation
    .mob Lord Gregor Lescovar
    .mob Marzon the Silent Blade
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,61.166,64.051,8,0
    .goto StormwindClassic,59.908,64.177
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elling Trias|r no andar de cima
    .turnin 434 >>Entregue O Ataque!
    .accept 394 >>Aceite A Cabeça da Fera
    .target Elling Trias
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,5 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,75.78,59.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .turnin 394 >>Entregue A Cabeça da Fera
    .accept 395 >>Aceite Brotherhood's Fim
    .target Master Mathias Shaw
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,49.194,30.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .turnin 395 >>Entregue O Fim da Irmandade
    .accept 396 >>Aceite Uma Audiência com o Rei
    .target Baros Alexston
    .isQuestTurnedIn 391
step
.dungeon Stockades
    #completewith next
    .goto StormwindClassic,70.347,27.208,20 >>Vá para o Castelo de Ventobravo
    .isQuestTurnedIn 391
step
.dungeon Stockades
    .goto StormwindClassic,78.105,17.750
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Dama Katrana Prestor|r
    .turnin 396 >>Entregue Uma Audiência com o Rei
    .target Lady Katrana Prestor
    .isQuestTurnedIn 391


--xx
step << skip
--Rogue
    .goto Ironforge,45.2,6.6
    >>Compre os equipamentos de arma de nível 41 (17dps)
    .collect 2520,1
    .collect 2526,1
    >>Pule este passo se você conseguir encontrar uma arma melhor no Auction House
step << skip
--Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >>Treine Machados de Duas Mãos << !Rogue
	.train 266 >>Treine Armas de Fogo << Hunter/Warrior/Rogue
    .train 199 >>Treine Maças de Duas Mãos << Warrior/Shaman
    .train 54 >>Aprenda Maças de Uma Mão << Rogue/Shaman
    .train 44 >>Treine Machados << Shaman
--xx


step
.dungeon Stockades
    #completewith next
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge >>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
step
.dungeon Stockades
    .goto Redridge Mountains,26.258,46.580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Berto|r
    .turnin 386 >>Entregue O que Vai, Volta...
    .target Guard Berton
step << !Mage
.dungeon Stockades
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
    .zoneskip Redridge Mountains,1
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
    .usespell 3561
    .zoneskip Redridge Mountains,1
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,24.2,39.1,0
    +|cRXP_WARN_Comece procurando por um grupo de Gnomeregan. Você logo estará executando Gnomeregan|r
    .subzoneskip 133--outside gnomer
    .subzoneskip 721,2--inside the instance
step
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .accept 2928 >>Aceite Escavadores Girobrocáticos
    .target Shoni the Shilent
step << Mage
#xprate <1.5
    #completewith next
    .zone Ironforge >>|cRXP_WARN_Use|r |T135757:0|t[Teleporte: Altaforja]
step << !Mage
#xprate <1.5
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>Entre no Bondinho Deeprun. Pegue o Bondinho para Ironforge
step
#xprate <1.5
.dungeon !Gnomer
    .goto Ironforge,69.540,50.325
    .target Tinkmaster Overspark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre-faz-tudo Superchispa|r
    .turnin 2923 >>Entregue Mestre-faz-tudo Superchispa
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gnoarn|r, |cRXP_FRIENDLY_Mestre-faz-tudo Superchispa|r, |cRXP_FRIENDLY_Grão-faz-tudo Mekkatorque|r, |cRXP_FRIENDLY_Mestre Mecânico Fundecano|r e |cRXP_FRIENDLY_Cronomorfus Espanafuso|r
    .accept 2927 >>Aceite O Dia Depois
    .target +Gnoarn
    .goto Ironforge,69.182,50.556
    .turnin -2923 >>Entregue Mestre-faz-tudo Superchispa
    .accept 2922 >>Aceite Salve o Cérebro de Tecnobô!
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .accept 2929 >>Aceite A Grande Traição
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .accept 2930 >>Aceite Resgate de Data
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .accept 2924 >>Aceite Artificiais Essenciais
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Aguardente|r
    .goto Ironforge,18.10,51.60
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step
.dungeon Gnomer
    #completewith StartGnomer
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Saia de Altaforja
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ozzie Mudavolt|r
    .turnin 2927 >>Entregue O Dia Depois
    .accept 2926 >>Aceite Gnogaína
    .target Ozzie Togglevolt
step
.dungeon Gnomer
    #label StartGnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >>Viaje para Gnomeregan
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    .use 9283 >>|cRXP_WARN_Use o|r |T132788:0|t[Coletor de Chumbo Vazio] |cRXP_WARN_em um |cRXP_ENEMY_Invasor Irradiado|r ou|r |cRXP_ENEMY_Pilhador Irradiado|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Invasor Irradiado|r ou |cRXP_ENEMY_Pilhador Irradiado|r deve estar VIVO quando você o usar|r
    >>|cRXP_WARN_Esta missão é concluída enquanto fora da masmorra|r
    .complete 2926,1 -- Full Leaden Collection Phial (1)
    .mob Irradiated Invader
    .mob Irradiated Pillager
    .isOnQuest 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,46.005,48.637,40 >>Viaje até |cRXP_FRIENDLY_Ozzie Mudavolt|r em Kharanos
    >>|cRXP_WARN_Você receberá uma continuação para quando você entrar na masmorra|r
    .isOnQuest 2926
step
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ozzie Mudavolt|r
    .turnin 2926 >>Entregue Gnogaína
    .target Ozzie Togglevolt
    .isQuestComplete 2926
step
.dungeon Gnomer
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ozzie Mudavolt|r
    .accept 2962 >>Aceite A Única Cura É Mais Brilho Verde
    .target Ozzie Togglevolt
    .isQuestTurnedIn 2926
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,24.35,39.78,0
    .goto Dun Morogh,24.35,39.78,30,0
    .goto 1415/0,716.2033,-5160.7777,45 >>Viaje para Gnomeregan
    .isOnQuest 2962
step
.dungeon Gnomer
    .goto 1415/0,733.8032,-4996.5115,70,0
    .goto 1415/0,828.8429,-4926.1117
    >>Mate os |cRXP_ENEMY_Troggs|r e os |cRXP_ENEMY_Gnomos|r. Saqueie-os para obter um |T133215:0|t[|cRXP_LOOT_Cartão Perfurado Branco|r]
    .collect 9279,1,2930,1,1 -- White Punch Card (1)
    >>Mate o |cRXP_ENEMY_Tecnobô|r. Saque-o para obter o |cRXP_LOOT_Núcleo de Memória|r
    >>|cRXP_WARN_Esta missão é concluída enquanto fora da masmorra|r
    .complete 2922,1 -- Techbot's Memory Core (1)
    .mob Techbot
    .isOnQuest 2922
step
.dungeon Gnomer
    .goto 1415/0,723.2432,-5066.9113,50,0
    .goto 1415/0,818.2830,-5055.1780,50,0
    .goto 1415/0,730.2832,-4956.6183,50,0
    .goto 1415/0,723.2432,-5066.9113
    >>Mate os |cRXP_ENEMY_Troggs|r e os |cRXP_ENEMY_Gnomos|r. Saqueie-os para obter um |T133215:0|t[|cRXP_LOOT_Cartão Perfurado Branco|r]
    .collect 9279,1 -- White Punch Card (1)
    >>|cRXP_WARN_Esta missão é concluída enquanto fora da masmorra|r
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,735.9152,-4945.3543,-1
    .goto 1415/0,719.3712,-4946.7623,-1
    .goto 1415/0,722.5392,-4893.7278,-1
    .goto 1415/0,712.6833,-4894.4318,-1
    >>|cRXP_WARN_Use o|r |T133215:0|t[|cRXP_LOOT_Cartão Perfurado Branco|r] |cRXP_WARN_no|r |cRXP_PICK_Perfurógrafo Matricial 3005-A|r
    >>|cRXP_WARN_Esta missão é concluída enquanto fora da masmorra|r
    .collect 9280,1,2930,1 -- Yellow Punch Card (1)
    .itemcount 9279,1 -- White Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    .goto 1415/0,804.2030,-5055.1780,40,0
    .goto 1415/0,941.4826,-5160.7777
    .subzone 721,2 >>Entre no portal de Gnomeregan
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Mate todos os |cRXP_ENEMY_Inimigos de Gnomeregan|r. Saqueie-os para obter suas |cRXP_LOOT_Tripas Robomecânicas|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_Use o|r |T133215:0|t[|cRXP_LOOT_Cartão Perfurado Amarelo|r] |cRXP_WARN_no|r |cRXP_PICK_Perfurógrafo Matricial 3005-B|r
    >>O console está localizado na zona segura gnômica, no andar inferior, ao lado da grande sala circular onde estão os lodos
    .collect 9282,1,2930,1 -- Blue Punch Card (1)
    .itemcount 9280,1 -- Yellow Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kernobill|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta. |cRXP_FRIENDLY_Kernobill|r aparece aleatoriamente nos Alojamentos, logo fora da zona segura gnômica|r
    .accept 2904 >>Aceite Uma Bela Bagunça
    .unitscan Kernobee
step
.dungeon Gnomer
    >>Escolte |cRXP_FRIENDLY_Kernobill|r de volta ao início da masmorra
    .complete 2904,1 -- Kernobee Rescue
    .isOnQuest 2904
step
.dungeon Gnomer
    .use 9364 >>|cRXP_WARN_Use o|r |T132788:0|t[Coletor de Chumbo Pesado] |cRXP_WARN_em um |cRXP_ENEMY_Visgo Irradiado|r ou|r |cRXP_ENEMY_Horror Irradiado|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Visgo Irradiado|r ou o |cRXP_ENEMY_Horror Irradiado|r deve estar VIVO quando você o usar|r
    >>|cRXP_WARN_Nota: Você deve entregar esta missão dentro de 2 horas após obter o|r |T136006:0|t[Potência Radioativa Precipitada]
    .complete 2962,1 -- High Potency Radioactive Fallout (1)
    .mob Irradiated Slime
    .mob Irradiated Horror
    .isOnQuest 2962
step
.dungeon Gnomer
    #completewith Thermaplugg
    >>Abra os |cRXP_PICK_Extrapoladores Artificiais|r. Saqueie-os para obter os |cRXP_LOOT_Artificiais Essenciais|r
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    >>|cRXP_WARN_Use o|r |T133215:0|t[|cRXP_LOOT_Cartão Perfurado Azul|r] |cRXP_WARN_no|r |cRXP_PICK_Perfurógrafo Matricial 3005-C|r
    >>O Punchograph está localizado na plataforma suspensa bem ao lado do |cRXP_ENEMY_Eletrocutor 6000|r
    .collect 9281,1,2930,1 -- Red Punch Card (1)
    .itemcount 9282,1 -- Blue Punch Card (1)
    .skipgossip
    .isOnQuest 2930
    .unitscan Electrocutioner 6000
step
.dungeon Gnomer
    >>|cRXP_WARN_Use o|r |T133215:0|t[|cRXP_LOOT_Cartão Perfurado Vermelho|r] |cRXP_WARN_no|r |cRXP_PICK_Perfurógrafo Matricial 3005-D|r
    .complete 2930,1 -- Prismatic Punch Card (1)
    .itemcount 9281,1 -- Red Punch Card (1)
    .skipgossip
    .isOnQuest 2930
step
.dungeon Gnomer
    #label Thermaplugg
    >>Mate o |cRXP_ENEMY_Mecangenheiro Termaplugue|r
    .complete 2929,1 -- Mekgineer Thermaplugg slain
    .isOnQuest 2929
step
.dungeon Gnomer
    #completewith Finished
    >>Abra os |cRXP_PICK_Extrapoladores Artificiais|r. Saqueie-os para obter os |cRXP_LOOT_Artificiais Essenciais|r
    >>Se você ainda não terminou esta missão, volte aos locais onde você os saqueou anteriormente, já que eles reaparecem após poucos minutos
    .complete 2924,1 -- Essential Artificial (12)
    .isOnQuest 2924
step
.dungeon Gnomer
    #completewith Finished
    >>Mate todos os |cRXP_ENEMY_Inimigos de Gnomeregan|r. Saqueie-os para obter suas |cRXP_LOOT_Tripas Robomecânicas|r
    .complete 2928,1 -- Robo-mechanical Guts (24)
    .isOnQuest 2928
step
.dungeon Gnomer
    >>|cRXP_WARN_Use o|r |T135230:0|t[|cRXP_LOOT_Anel Encardido|r] |cRXP_WARN_para iniciar a missão|r
    .accept 2945 >>Aceite Anel Encardido
    .collect 9326,1,2945 -- Grime-Encrusted Ring (1)
    .itemcount 9326,1
    .use 9326
step
.dungeon Gnomer
    >>|cRXP_WARN_Pegue o|r |T135230:0|t[|cRXP_LOOT_Anel Encardido|r] |cRXP_WARN_no |cRXP_PICK_Perfurógrafo 5200|r na Zona da Limpeza|r
    *Você precisará voltar para a Zona da Limpeza perto da entrada da instância, Certifique-se de que seus companheiros de grupo estejam lá para ajudá-lo no caminho de volta
    .turnin 2945 >>Entregue Anel Encardido
    .itemcount 9326,1 -- Grime-Encrusted Ring (1)
step
.dungeon Gnomer
    >>Clique em |cRXP_PICK_The Sparklematic 5200|r mais uma vez
    .accept 2947 >>Aceite Ficar ou não ficar... eis a questão!
    .isQuestTurnedIn 2945

-- Turn ins:
step
.dungeon Gnomer
    .hs >>Voe para Ironforge
    .zoneskip Dun Morogh
    .zoneskip Ironforge
    .bindlocation 1537,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Saia de Altaforja
step -- needs to be turned in asap because 2hr time limit
.dungeon Gnomer
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.887,49.377
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ozzie Mudavolt|r
    .turnin 2962 >>Entregue A Única Cura é Mais Brilho Verde
    .target Ozzie Togglevolt
    .isQuestComplete 2962
step << Gnome !Warlock -- checking if gnomes can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Binjy Penapita|r e |cRXP_FRIENDLY_Milli Penapita|r
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Compre um|r |T132247:0|t[|cFF0070FFMecanostruz|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
    .zoneskip Dun Morogh,1
step << Dwarf !Paladin -- checking if dwarfs can get mount
.dungeon Gnomer
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veron Ambarmanso|r e |cRXP_FRIENDLY_Ultham Chifrerro|r
    .vendor >>|cRXP_BUY_Compre um|r |T132248:0|t[|cFF0070FFHarrison Jones|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
    .zoneskip Dun Morogh,1
step
.dungeon Gnomer
    #completewith next
    .goto Dun Morogh,47.58,41.58,40,0
    .goto Dun Morogh,50.19,40.79,20,0
    .goto Ironforge,14.90,87.10,40,0
    .zone Ironforge >>Viaje para Ironforge
step
.dungeon Gnomer
    .goto Ironforge,36.377,3.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Didiê Du Mocó|r
    .turnin 2947 >>Entregue Ficar ou não ficar... eis a questão!
    .accept 2948 >>Aceite Aperfeiçoamento gnômico
    .target Talvash del Kissel
    .isOnQuest 2947
step
.dungeon Gnomer
    .goto Ironforge,36.377,3.614
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Didiê Du Mocó|r
    >>|cRXP_WARN_Se você conseguir obter uma|r |T133215:0|t[Barra de Prata] |cRXP_WARN_e uma|r |T134105:0|t[Ágata Musgosa] |cRXP_WARN_termine esta missão. Caso contrário, abandone-a|r
    .collect 2842,1,2948,1 -- Silver Bar (1)
    .collect 1206,1 -- Moss Agate (1)
    .turnin 2948,2948,1 >>Entregue Aperfeiçoamento gnômico
    .target Talvash del Kissel
    .isOnQuest 2948
step
.dungeon Gnomer
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre-faz-tudo Superchispa|r, o |cRXP_FRIENDLY_Grão-faz-tudo Mekkatorque|r, o |cRXP_FRIENDLY_Mestre Mecânico Fundecano|r e o |cRXP_FRIENDLY_Cronomorfus Espanafuso|r
    .turnin -2922,1 >>Entregue Save Tecnobô's Brain!
    .target +Tinkmaster Overspark
    .goto Ironforge,69.540,50.325
    .turnin -2929,1 >>Entregue A Grande Traição
    .target +High Tinker Mekkatorque
    .goto Ironforge,68.743,48.969
    .turnin -2930,1 >>Entregue Resgate de Data
    .target +Master Mechanic Castpipe
    .goto Ironforge,69.823,48.101
    .turnin -2924,1 >>Entregue Artificiais Essenciais
    .target +Klockmort Spannerspan
    .goto Ironforge,67.925,46.101
step
#xprate <1.5
	#label end
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Wetlands>>Voe para Pantanal
    .target Gryth Thurden
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#xprate <1.5
#name 27-30 Pantanal/Contraforte de Eira dos Montes
#subgroup RestedXP Aliança 20-32
#next 30-32 Floresta do Crepúsculo/STV

step
    .isQuestComplete 279
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karl Boran|r
    .turnin 279 >>Entregue Garras das Profundezas
    .accept 281 >>Aceite O Que É Nosso de Direito
    .target Karl Boran
step
    .isQuestTurnedIn 279
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karl Boran|r
    .accept 281 >>Aceite O Que É Nosso de Direito
    .target Karl Boran
step
    .goto Wetlands,8.6,55.8
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iago Halberque|r
    .turnin 469 >>Entregue Entrega Diária
    .isOnQuest 469
step
    .goto Wetlands,8.6,55.8
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iago Halberque|r
    .turnin 484 >>Entregue Peles de Crocolisco Jovem
    .isOnQuest 484
step
    .goto Wetlands,8.6,55.8
    .target James Halloran
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iago Halberque|r
    .accept 471 >>Aceite Deveres do Aprendiz
    .isQuestTurnedIn 484
step
    #optional
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .accept 288 >>Aceite A Terceira Frota
step
    #optional
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    >>|cRXP_BUY_Compre um|r [Jarra de Hidromel Enânico]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    .target Innkeeper Helbrek
    .home >>Defina sua Pedra de Regresso no Porto de Menethil
    .bindlocation 2104
step
    .goto Wetlands,10.585,60.592
    .target Glorin Steelbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glorin Testaço|r
    .turnin 270 >>Entregue A Esquadra Naufragada
    .accept 321 >>Aceite Ferro da Forja de Luz
step
    #optional
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .turnin 288 >>Entregue A Terceira Frota
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .accept 289 >>Aceite A Tripulação Amaldiçoada
step
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cida|r
    .accept 470 >>Aceite Escavando a Gosma
step
    .goto Wetlands,10.84,55.89
    .target Harlo Barnaby
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harlo Barnabé|r no andar de cima
    .accept 472 >>Aceite Queda of Dun Modr
step
    .isQuestTurnedIn 464
    .goto Wetlands,9.861,57.486
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Punhoforte|r no andar de cima
    .accept 465 >>Aceite O Golpe de Nek'rosh
    .target Captain Stoutfist
step
    .goto Wetlands,11.458,52.163
    .target Tarrel Rockweaver
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarrel Rockweaver|r
    .turnin 306 >>Entregue Em Busca da Equipe de Escavação
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>Clique no |cRXP_PICK_Damaged Caixote|r no chão
    .turnin 281 >>Entregue O Que É Nosso de Direito
    .accept 284 >>Aceite A Busca Continua
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>Clique em |cRXP_PICK_Barril Selado|r no chão
    .turnin 284 >>Entregue A Busca Continua
    .accept 285 >>Aceite Vasculhe Mais Cabanas
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>Clique em |cRXP_PICK_Barril Semi-enterrado|r no chão
    .turnin 285 >>Entregue Vasculhe Mais Cabanas
    .accept 286 >>Aceite Devolver a Estatueta
step
    .goto Wetlands,14.00,29.80
    .goto Wetlands,15.0,24.0
    >>Abata os |cRXP_ENEMY_Cursed Sailors|r, os |cRXP_ENEMY_Cursed Marines|r e o |cRXP_ENEMY_Primeiro Oficial Expedito|r. Saqueie-o para sua |cRXP_LOOT_Snuffbox|r
    .complete 289,1 -- Cursed Sailor slain (13)
    .mob +Cursed Sailor
    .complete 289,2 -- Cursed Marine slain (5)
    .mob +Cursed Marine
    .complete 289,3 -- Snellig's Snuffbox
    .mob +First Mate Snellig
step
    #loop
    .isOnQuest 471
    .goto Wetlands,18.0,27.0,0
    .goto Wetlands,22.8,21.8,0
    .goto Wetlands,28.0,18.8,0
    .goto Wetlands,18.0,27.0,70,0
    .goto Wetlands,22.8,21.8,70,0
    .goto Wetlands,28.0,18.8,70,0
    >>Mate |cRXP_ENEMY_Giant Wetlands Crocolisks|r. Saqueie-os para obter |cRXP_LOOT_Skin|r
    .complete 471,1 -- Giant Crocolisk Skin (6)
    .mob Giant Wetlands Crocolisk
step
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    >>Mate as |cRXP_ENEMY_Mosshides|r. Saqueie-os para obter |cRXP_LOOT_Crude Flints|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    .goto Wetlands,44.25,25.61
    >>Abata os |cRXP_ENEMY_Crimson Oozes|r, os |cRXP_ENEMY_Monstrous Oozes|r e os |cRXP_ENEMY_Black Oozes|r. Saqueie-os para |cRXP_LOOT_Bolsa da Cida|r
    .complete 470,1 -- Sida's Bag (1)
    .mob Crimson Ooze
    .mob Monstrous Ooze
    .mob Black Ooze
step
    #loop
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .goto Wetlands,30.8,31.0,80,0
    .goto Wetlands,37.8,29.6,80,0
    .goto Wetlands,43.0,33.2,80,0
    >>Mate as |cRXP_ENEMY_Mosshides|r. Saqueie-os para obter |cRXP_LOOT_Crude Flints|r
    .complete 277,1 -- Crude Flint (9)
	.isOnQuest 277
    .mob Mosshide Brute
    .mob Mosshide Trapper
    .mob Mosshide Fenrunner
    .mob Mosshide Mistweaver
    .mob Mosshide Mystic
    .mob Mosshide Alpha
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormer Trançaferro|r
    .turnin 294 >>Entregue Vingança de Ormer
    .accept 295 >>Aceite Vingança de Ormer
    .target Ormer Ironbraid
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Prospector Whelgar|r
    .accept 299 >>Aceite Uncovering the Past
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    .goto Wetlands,38.858,52.208
    >>Saqueie |cRXP_LOOT_Flagongut's Fossil|r no chão
    .complete 943,2 -- Flagongut's Fossil (1)
step
    #completewith Sarltooth
    .goto Wetlands,34.71,49.95,0
    >>Abra o |cRXP_PICK_Ancient Relics|r e |cRXP_PICK_Loose Soil|r. Saqueie-os para obter a |cRXP_LOOT_Fragmentos|r
    >>|cRXP_WARN_The |cRXP_LOOT_Fragmentos|r have random spawn locations in the Excavation Site|r
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Mate |cRXP_ENEMY_Mottled Scytheclaws|r e |cRXP_ENEMY_Mottled Razormaws|r. Saqueie-os para obter a |cRXP_LOOT_Stone of Relu|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
    .complete 943,1 --1/1 Stone of Relu
    .disablecheckbox
    .isOnQuest 943
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Mate |cRXP_ENEMY_Garrafoices Mosqueado|r e |cRXP_ENEMY_Rasgaqueixos Mosqueado|r
    .complete 295,1 --10/10 Mottled Scytheclaw slain
    .mob +Mottled Scytheclaw
    .complete 295,2 --10/10 Mottled Razormaw slain
    .mob +Mottled Razormaw
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormer Trançaferro|r
    .turnin 295 >>Entregue Vingança de Ormer
    .accept 296 >>Aceite Vingança de Ormer
    .target Ormer Ironbraid
step
    #optional
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >>Entregue Uncovering the Past
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isOnQuest 943
    #completewith FragmentDone
    >>Mate |cRXP_ENEMY_Mottled Scytheclaws|r e |cRXP_ENEMY_Mottled Razormaws|r. Saqueie-os para obter a |cRXP_LOOT_Stone of Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
step
    #label Sarltooth
    .goto Wetlands,31.410,49.518,30,0
    .goto Wetlands,33.25,51.50
    >>Mate |cRXP_ENEMY_Sarilodonte|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r
    >>|cRXP_WARN_Ele geralmente fica na colina acima do principal local de escavação, mas às vezes pode descer em patrulha|r
    .complete 296,1 --1/1 Sarltooth's Talon
    .unitscan Sarltooth
step
    #label FragmentDone
    #loop
    .goto Wetlands,34.32,51.79,40,0
    .goto Wetlands,35.73,49.06,40,0
    .goto Wetlands,33.86,46.85,40,0
    .goto Wetlands,34.91,44.22,40,0
    .goto Wetlands,36.62,42.16,40,0
    >>Abra o |cRXP_PICK_Ancient Relics|r e |cRXP_PICK_Loose Soil|r. Saqueie-os para obter a |cRXP_LOOT_Fragmentos|r
    >>|cRXP_WARN_The |cRXP_LOOT_Fragmentos|r have random spawn locations in the Excavation Site, including the elevated terrain where |cRXP_ENEMY_Sarltooth|r is|r
    >>|cRXP_WARN_Certifique-se de verificar atrás da Grande Árvore marcada no seu mapa também|r
    .complete 299,1 --1/1 Ados Fragment
    .complete 299,2 --1/1 Modr Fragment
    .complete 299,3 --1/1 Golm Fragment
    .complete 299,4 --1/1 Neru Fragment
step
    #loop
    .goto Wetlands,35.05,44.06,60,0
    .goto Wetlands,34.85,49.36,60,0
    .goto Wetlands,30.75,48.50,60,0
    .goto Wetlands,34.33,47.81,60,0
    >>Mate |cRXP_ENEMY_Mottled Scytheclaws|r e |cRXP_ENEMY_Mottled Razormaws|r. Saqueie-os para obter a |cRXP_LOOT_Stone of Relu|r
    .complete 943,1 --1/1 Stone of Relu
    .mob Mottled Razormaw
    .mob Mottled Scytheclaw
    .isOnQuest 943
step
    .goto Wetlands,38.17,50.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormer Trançaferro|r
    .turnin 296 >>Entregue Vingança de Ormer
    .target Ormer Ironbraid
step
    .isQuestComplete 299
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Prospector Whelgar|r
    .turnin 299 >>Entregue Uncovering the Past
    .goto Wetlands,38.809,52.386
    .target Prospector Whelgar
step
    .isQuestComplete 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rethiel, o Verdião|r
    .turnin 277 >>Entregue Fogo Taboo
    .target Rethiel the Greenwarden
    .accept 275 >>Aceite Bolhas na Terra
step
    .isQuestTurnedIn 277
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rethiel, o Verdião|r
    .target Rethiel the Greenwarden
    .accept 275 >>Aceite Bolhas na Terra
step
    .goto Wetlands,64.78,75.31
    >>Saqueie |cRXP_LOOT_Musquash Root|r no chão
    .complete 335,2 -- Musquash Root
step << Druid
	#completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
    .cooldown item,6948,>2,1
step
    #completewith MenethilTurnins
    .hs >>Use a Pedra do Regresso para o Porto de Menethil
	>>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 2104,1
    .subzoneskip 2104
    .subzoneskip 150
step
    #completewith next
    .goto Wetlands,10.368,61.016,8 >>Suba as escadas em direção ao |cRXP_FRIENDLY_Arqueólogo Pançacheia|r
step
    .isQuestTurnedIn 942
    .goto Wetlands,10.84,60.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Archaeologist Flagongut|r
    .turnin 943 >>Entregue The Absent Minded Prospector
    .target Archaeologist Flagongut
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .turnin 289 >>Entregue A Tripulação Amaldiçoada
    .accept 290 >>Aceite O Fim da Maldição
    .target First Mate Fitzsimmons
step
    .isQuestComplete 470
    .goto Wetlands,11.796,57.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cida|r
    .turnin 470 >>Entregue Cavando no Lodo
    .target Sida
step
    .isOnQuest 286
    .goto Wetlands,8.359,58.526
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karl Boran|r
    .turnin 286 >>Entregue Devolver a Estatueta
    .target Karl Boran
step
    #label MenethilTurnins
    .goto Wetlands,8.54,55.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iago Halberque|r
    .turnin 471 >>Entregue Deveres do Aprendiz
    .target James Halloran
    .isQuestComplete 471
step
    .goto Wetlands,15.984,23.111,25,0
    .goto Wetlands,15.44,23.60
    >>Corra pelo mastro do navio
    >>Mate for the |cRXP_LOOT_Strongbox Key|r
    .complete 290,1 --1/1 Intrepid Strongbox Key
    .mob Captain Halyndor
step
    .goto Wetlands,14.292,23.609,15,0
    .goto Wetlands,14.381,24.047
    >>Entre na casa de through the large hole on the side of the ship
    >>Click |cRXP_PICK_Intrepid's Locked Strongbox|r no chão
    .turnin 290 >>Entregue O Fim da Maldição
    .accept 292 >>Aceite Olho de Paleth
step
    #loop
    .goto Wetlands,27.6,37.2,50,0
    .goto Wetlands,40.8,32.8,50,0
    .goto Wetlands,46.6,29.6,50,0
    .goto Wetlands,48.8,37.2,50,0
    .goto Wetlands,54.8,37.8,50,0
    .goto Wetlands,27.6,37.2,0
    .goto Wetlands,40.8,32.8,0
    .goto Wetlands,46.6,29.6,0
    .goto Wetlands,48.8,37.2,0
    .goto Wetlands,54.8,37.8,0
    .goto Wetlands,20.72,28.74,50,0
    >>Mate |cRXP_ENEMY_Fen Creepers|r
    >>|cRXP_ENEMY_Fen Creepers|r |cRXP_WARN_estão em|r |T132320:0|t[Furtividade] |cRXP_WARN_ao longo dos cursos de água|r
    .complete 275,1 --12/12 Fen Creeper
    .mob Fen Creeper
    .isOnQuest 275
step
    .isQuestTurnedIn 464
    .goto Wetlands,47.45,47.01
    >>Clique na |cRXP_PICK_Catapulta Presa do Dragão|r
    .turnin 465 >>Entregue O Golpe de Nek'rosh
    .accept 474 >>Aceite Derrote Nek'rosh
step
    .isQuestTurnedIn 474
    .goto Wetlands,47.45,47.01
    >>Clique na |cRXP_PICK_Catapulta Presa do Dragão|r
    .accept 474 >>Aceite Derrote Nek'rosh
step
    .isOnQuest 474
    .goto Wetlands,53.459,54.663
    >>Mate for his |cRXP_LOOT_Cabeça|r
    .complete 474,1 --1/1 Nek'rosh's Head
    .mob Chieftain Nek'rosh
step
    .goto Wetlands,56.37,40.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rethiel, o Verdião|r
    .turnin 275 >>Entregue Bolhas na Terra
    .target Rethiel the Greenwarden
    .isQuestComplete 275
step
    .goto Wetlands,49.905,18.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >>Aceite A Ponte de Thandol
    .target Rhag Garmason
step
    .goto Wetlands,49.803,18.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trançalonga, o Austero|r
    .turnin 472 >>Entregue Queda de Dun Modr
    .accept 304 >>Aceite Uma Tarefa Sombria
    .target Longbraid the Grim
step
    .goto Wetlands,49.667,18.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rocio Garmason|r
    .accept 303 >>Aceite A Guerra dos Ferro-Negro
    .target Motley Garmason
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Anões Ferro Negro|r, os |cRXP_ENEMY_Dark Ferro Tunnelers|r, os |cRXP_ENEMY_Dark Ferro Saboteurs|r e os |cRXP_ENEMY_Dark Ferro Demolitionists|r
    >>|cRXP_ENEMY_Sabotadores Ferro-Negro|r |cRXP_WARN_lançarão|r |T135826:0|t[Explodir Detonador] |cRXP_WARN_quando morrerem, o que causa dano de Fogo em proximidade|r
    >>|cRXP_ENEMY_Demolidores Ferro-Negro|r |cRXP_WARN_lançarão continuamente|r |T135826:0|t[Bombas] |cRXP_WARN_de longe|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
--  .goto Wetlands,46.6,18.6,0
--  .goto Wetlands,47.4,15.0,0
--  .goto Wetlands,62.48,28.41,40,0
--  .goto Wetlands,46.6,18.6,0,40,0
--  .goto Wetlands,47.4,15.0,0,40,0
    .goto Wetlands,62.48,28.41
    >>Mate |cRXP_ENEMY_Balgaras, o Asqueroso|r. Saqueie-o por sua |cRXP_LOOT_Ear|r
    .complete 304,1 -- Ear of Balgaras
    .mob Balgaras the Foul
step
    #loop
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,61.83,26.27,0
    .goto Wetlands,60.01,24.35,0
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,62.48,28.41,40,0
    .goto Wetlands,61.83,26.27,40,0
    .goto Wetlands,60.01,24.35,40,0
    .goto Wetlands,62.48,28.41,40,0
    >>Mate os |cRXP_ENEMY_Anões Ferro Negro|r, os |cRXP_ENEMY_Dark Ferro Tunnelers|r, os |cRXP_ENEMY_Dark Ferro Saboteurs|r e os |cRXP_ENEMY_Dark Ferro Demolitionists|r
    >>|cRXP_ENEMY_Sabotadores Ferro-Negro|r |cRXP_WARN_lançarão|r |T135826:0|t[Explodir Detonador] |cRXP_WARN_quando morrerem, o que causa dano de Fogo em proximidade|r
    >>|cRXP_ENEMY_Demolidores Ferro-Negro|r |cRXP_WARN_lançarão continuamente|r |T135826:0|t[Bombas] |cRXP_WARN_de longe|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
    .goto Wetlands,49.803,18.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trançalonga, o Austero|r
    .turnin 304 >>Entregue Uma Tarefa Sombria
    .target Longbraid the Grim
    .isQuestComplete 304
step
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rocio Garmason|r
    .turnin 303 >>Entregue A Guerra dos Ferro-Negro
    .target Motley Garmason
    .isQuestComplete 303
step
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>Desça pelas escadas em espiral na ponte
    >>Clique em |cRXP_PICK_Cadáver de Ebenezer Rustlocke|r
    .turnin 631 >>Entregue A Ponte de Thandol
    .accept 632 >>Aceite A Ponte de Thandol
step
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Entregue A Ponte de Thandol
    .accept 633 >>Aceite A Ponte de Thandol
    .target Rhag Garmason
step
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruço MacKreel|r
    >>|cRXP_WARN_Pule primeiro na corrente invisível, depois na viga quebrada da ponte. Todas as classes conseguem fazer este salto. Se você não conseguir, pule este passo|r
    .accept 647 >>Aceite Pinga de Mackreel
    .target Foggy MacKreel
    .link https://www.twitch.tv/videos/646111384 >>https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_Clique aqui para um guia em vídeo|r
step
    .goto Arathi Highlands,44.28,92.877
    >>Mergulhe debaixo d'água
    >>Abra a |cRXP_PICK_Carta Encharcada|r. Saqueie-a para obter o |T133469:0|t[|cRXP_LOOT_Envelope Encharcado|r]
    >>|cRXP_WARN_Use o |T133469:0|t[|cRXP_LOOT_Waterlogged Envolver|r] para iniciar a missão|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>Aceite Carta de Sully Balloo
step
    #completewith PleaTurnin
    .goto Arathi Highlands,52.5,90.4,30 >>Nade para o leste em direção à rampa aqui
step
    .goto Arathi Highlands,48.789,88.058
    >>Clique no |cRXP_PICK_Depósito de Explosivos|r
    .complete 633,1 --1/1 Cache of Explosives Destroyed
step
    #label PleaTurnin
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Entregue A Ponte de Thandol
    .accept 634 >>Aceite Súplica à Aliança
    .target Rhag Garmason
step
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >>Vá para Refuge Ponto
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitã Nélia|r
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>Entregue Súplica à Aliança
    .target Captain Nials
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cedrik Prosa|r
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >>Aprenda a rota de voo para Planalto Arathi
    .target Cedrik Prose
    .zoneskip Arathi Highlands,1
step
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre-cervejeiro Podrágua|r no porão
    >>|cRXP_WARN_Se você falhar esta missão cronometrada, abandone-a e pule este passo|r
    .turnin 647 >>Entregue Pinga de Mackreel
    .target Brewmeister Bilger
    .isOnQuest 647
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .accept 536 >>Aceite [DEPRECATED] Descendo a Costa
    .target Lieutenant Farren Orinelle
step
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Historiador Dibbs|r
    .turnin 538 >>Entregue em Costa Sul
    .target Loremaster Dibbs
step
    #completewith SSFP
    .subzone 271 >>Viaje para Costa Sul
step << Hunter
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uóxton|r
    .goto Hillsbrad Foothills,50.415,58.803
    .stable >>Estabule seu pet. Você domará um |cRXP_ENEMY_Rastejamusgo Anciã|r em breve
    .target Wesley
step << Hunter
    .goto Hillsbrad Foothills,56.6,53.8
    >>|cRXP_WARN_Use|r |T132164:0|t[Domar Fera] |cRXP_WARN_em um |cRXP_ENEMY_Rastejamusgo Anciã|r para domesticá-lo|r -- .tame 2348
    .train 17264 >>|cRXP_WARN_Ataque inimigos com ele para aprender|r |T132278:0|t[Morder (Rank 4)]
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
	.unitscan Elder Moss Creeper
step << Hunter
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    >>Mate os |cRXP_ENEMY_Torn Fin Tidehunters|r e os |cRXP_ENEMY_Torn Fin Oracles|r
    .complete 536,1 --10/10 Torn Fin Tidehunter slain
    .mob +Torn Fin Tidehunter
    .complete 536,2 --10/10 Torn Fin Oracle slain
    .mob +Torn Fin Oracle
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .turnin 536 >>Entregue [DEPRECATED] Descendo a Costa
    .accept 559 >>Aceite [DEPRECATED] As Provas de Farren
    .target Lieutenant Farren Orinelle
step << Hunter
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    .goto Hillsbrad Foothills,31.47,72.51,50,0
    .goto Hillsbrad Foothills,28.81,73.18,50,0
    .goto Hillsbrad Foothills,24.84,70.21,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    >>Mate os |cRXP_ENEMY_Torn Fin Tidehunters|r, os |cRXP_ENEMY_Torn Fin Oracles|r, os |cRXP_ENEMY_Torn Fin Coastrunners|r e os |cRXP_ENEMY_Torn Fin Muckdwellers|r. Saqueie-os para obter |cRXP_LOOT_Cabeças|r
    .complete 559,1 --10/10 Murloc Head
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
    .mob Torn Fin Tidehunter
    .mob Torn Fin Oracle
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .turnin 559 >>Entregue [DEPRECATED] [DEPRECATED] Farren's Proof
    .accept 560 >>Aceite [DEPRECATED] As Provas de Farren
    .target Lieutenant Farren Orinelle
step << Hunter
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Trilharrubra|r
    .turnin 560 >>Entregue [DEPRECATED] [DEPRECATED] Farren's Proof
    .accept 561 >>Aceite [DEPRECATED] As Provas de Farren
    .target Marshal Redpath
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .turnin 561 >>Entregue [DEPRECATED] [DEPRECATED] Farren's Proof
    .accept 562 >>Aceite [DEPRECATED] Rumo a Ventobravo!
    .target Lieutenant Farren Orinelle
step << Hunter
    #loop
    .goto Hillsbrad Foothills,52.97,64.67,0
    .goto Hillsbrad Foothills,55.32,63.35,0
    .goto Hillsbrad Foothills,58.35,66.37,0
    .goto Hillsbrad Foothills,59.55,73.43,0
    .goto Hillsbrad Foothills,56.97,67.01,0
    .goto Hillsbrad Foothills,52.97,64.67,60,0
    .goto Hillsbrad Foothills,55.32,63.35,60,0
    .goto Hillsbrad Foothills,58.35,66.37,60,0
    .goto Hillsbrad Foothills,59.55,73.43,60,0
    .goto Hillsbrad Foothills,56.97,67.01,60,0
    >>Mate os |cRXP_ENEMY_Daggerspine Shorehunters|r e os |cRXP_ENEMY_Daggerspine Sirens|r
    >>|cRXP_WARN_Você pode precisar nadar para a água para obtê-los|r
    .complete 562,1 --10/10 Daggerspine Shorehunter
    .mob +Daggerspine Shorehunter
    .complete 562,2 --10/10 Daggerspine Siren
    .mob +Daggerspine Siren
step << Hunter
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .turnin 562 >>Entregue [DEPRECATED] Rumo a Ventobravo!
    .accept 563 >>Aceite [DEPRECATED] [DEPRECATED] [DEPRECATED] Reassignment
    .target Lieutenant Farren Orinelle
step
    #label SSFP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>Aprenda a rota de voo para Southshore
    .target Darla Harris
step
    #completewith next
    .goto Hillsbrad Foothills,56.8,50.2,85,0
    .goto Hillsbrad Foothills,61.8,43.2,85,0
    .goto Hillsbrad Foothills,67.0,35.4,85,0
    .goto Hillsbrad Foothills,68.6,17.0,85,0
    .goto Hillsbrad Foothills,71.6,8.0,85,0
    >>Caminhe para o norte ao longo do riacho matando os |cRXP_ENEMY_Snapjaws|r pelo caminho para obter a |cRXP_LOOT_Carne de Tartaruga|r
    >>|cRXP_WARN_Você não precisa coletar toda a |cRXP_LOOT_Carne de Tartaruga|r agora|r
    .collect 3712,10,555,1
    .zoneskip Western Plaguelands
    .mob Snapjaw
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bibilfaz Penapita|r
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>>Aprenda a rota de voo para as Terras Pestilentas Ocidentais
    .target Bibilfaz Featherwhistle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bibilfaz Penapita|r
    .goto Western Plaguelands,42.924,85.061
    .fly Wetlands >>Voe para Pantanal
    .target Bibilfaz Featherwhistle
step
    .isQuestComplete 474
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Punhoforte|r no andar de cima
    .goto Wetlands,9.86,57.48
    .turnin 474 >>Entregue Derrote Nek'rosh
    .target Captain Stoutfist
step
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glorin Testaço|r
    .turnin 292 >>Entregue Olho de Paleth
    .accept 293 >>Aceite Purificação do Olho
    .target Glorin Steelbrow
step
    >>Clique em |cRXP_PICK_Baú Encharcado|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>Entregue Ferro da Forja de Luz
    .accept 324 >>Aceite Os Lingotes Perdidos
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    >>Abate os |cRXP_ENEMY_Bluegill Raiders|r. Saqueie-os para |cRXP_LOOT_Ingots|r
    .complete 324,1 --5/5 Lightforge Ingot
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    .xp 30-6600 >>Farme até estar a 6600xp do nível 30 (29700/36300)
    .mob Bluegill Raider
step
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glorin Testaço|r
    .turnin 324 >>Entregue Os Lingotes Perdidos
    .accept 322 >>Aceite Braço Abençoado
    .target Glorin Steelbrow
    .isQuestTurnedIn 270
step << !Mage
    #completewith KingsTribute
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .goto Wetlands,9.49,59.70
    .fly Ironforge >>Voe para Altaforja
    .target Shellei Brondir
    .zoneskip Ironforge
step << Mage
    #completewith KingsTribute
    .zone Ironforge >>|cRXP_WARN_Use|r |T135757:0|t[Teleporte: Altaforja]
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Caxias|r
    .turnin 637 >>Entregue Carta de Sully Balloo
    .timer 17,Carta de Sully Balloo RP
    .accept 683 >>Aceite Apelo de Sara Caxias
    .target Sara Balloo
step
    .goto Ironforge,72.74,94.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pilot Longbeard|r
    .accept 1179 >>Aceite The Brassbolts Brothers
    .target Pilot Longbeard
step << Hunter
    .goto Ironforge,61.442,88.232,15,0
	.goto Ironforge,61.549,89.432
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thalgus Thunderfist|r no andar de baixo
    >>|cRXP_BUY_Compre uma|r |T134402:0|t[|cRXP_FRIENDLY_Aljava Pesada|r]
	.collect 7371,1
    .target Thalgus Punhostrondo
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Magni Barbabronze|r
    .turnin 683 >>Entregue Apelo de Sara Caxias
    .accept 686 >>Aceite Homenagem Real
    .target King Magni Bronzebeard
step
    #label KingsTribute
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-alvanel Oscarmeyer|r
    .turnin 686 >>Entregue Homenagem Real
    .accept 689 >>Aceite Homenagem Real
    .target Grand Mason Marblesten
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#xprate <1.5
#name 30-32 Floresta do Crepúsculo/STV
#subgroup RestedXP Aliança 20-32
#next 32-33 Cintilante Flats

step
    .goto Ironforge,67.844,42.499
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cortarroda Rodagiros|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Cortarroda Rodagiros|r não tiver um|r
	.target Gearcutter Cogspinner
    .bronzetube
    .zoneskip Ironforge,1
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Viaje para Kharanos e compre seu|r |T132247:0|t[Mecanostruz] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Viaje para Amberstill Ranch e compre seu|r |T132248:0|t[Harrison Jones] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Binjy Penapita|r e |cRXP_FRIENDLY_Milli Penapita|r
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Compre um|r |T132247:0|t[|cFF0070FFMecanostruz|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veron Ambarmanso|r e |cRXP_FRIENDLY_Ultham Chifrerro|r
    .vendor >>|cRXP_BUY_Compre um|r |T132248:0|t[|cFF0070FFHarrison Jones|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    .goto Ironforge,16.57,84.04
    .zone Ironforge >>Volte para Ironforge
step << !Mage
    #completewith CleansingtheEye
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >>Pegue o bonde para Ventobravo
step << !Mage
    .goto Stormwind City,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Bilubub Rodagiros|r não tiver um|r
    .bronzetube
    .target Billibub Cogspinner
step << !Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .turnin 2928 >>Entregue Escavadores Girobrocáticos
    .target Shoni the Shilent
    .isQuestComplete 2928
step << Mage
    #completewith CleansingtheEye
    .zone Stormwind City >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
	.target Jennea Cannon
step << Hunter
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
step << Hunter
    .goto StormwindClassic,61.576,15.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >>Treine as magias do seu mascote
    .target Karrina Mekenda
step << !Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >>Entregue Braço Abençoado
    .accept 325 >>Accept Armed e Ready
    .target Grimand Elmore
    .isQuestTurnedIn 324
step
    #completewith CleansingtheEye
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
step
    #completewith CleansingtheEye
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomás|r
    >>|cRXP_FRIENDLY_Tomás|r |cRXP_WARN_caminha pela Catedral|r
    .accept 1274 >>Aceite O Diplomata Desaparecido
    .target Thomas
step
    #label CleansingtheEye
    .goto Stormwind City,39.60,27.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arcebispo Benedictus|r
    .turnin 293 >>Entregue Purificação do Olho
    .target Archbishop Benedictus
    .isOnQuest 293
step
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomás|r
    >>|cRXP_FRIENDLY_Tomás|r |cRXP_WARN_caminha pela Catedral|r
    .accept 1274 >>Aceite O Diplomata Desaparecido
    .target Thomas
step << Mage
    .goto Stormwind City,51.75,12.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 322 >>Entregue Braço Abençoado
    .accept 325 >>Accept Armed e Ready
    .target Grimand Elmore
    .isQuestTurnedIn 324
step << Mage
.dungeon Gnomer
    .goto StormwindClassic,55.511,12.502
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .turnin 2928 >>Entregue Escavadores Girobrocáticos
    .target Shoni the Shilent
    .isQuestComplete 2928
step << Warlock
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Druid
    .goto StormwindClassic,20.898,55.491
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sheldras Lunárvore|r
    .trainer >>Treine suas magias de classe
    .target Sheldras Moontree
step
    #optional
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    >>|cRXP_WARN_Se você encontrou |T133741:0|t[|cRXP_LOOT_An Old History Livro|r] você pode entregá-lo|r
    .accept 337 >>Aceite An Old History Livro
    .turnin 337 >>Entregue An Old History Livro
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    .accept 538 >>Aceite Southshore
    .target Milton Sheaf
step
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Bispo DeLavey|r
    .turnin 1274 >>Entregue O Diplomata Desaparecido
    .accept 1241 >>Aceite O Diplomata Desaparecido
    .target Bishop DeLavey
step << Hunter
    .isOnQuest 563
    .goto Stormwind City,72.571,15.888
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Major Samuelson|r
    .turnin 563 >>Entregue [DEPRECATED] [DEPRECATED] Reassignment
    .target Major Samuelson
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Warrior
    .goto Stormwind City,78.680,45.802
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r
    .accept 1718 >>Aceite O Ilhéu
    .target Wu Shen
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorge|r
    .turnin 1241 >>Entregue O Diplomata Desaparecido
    .accept 1242 >>Aceite O Diplomata Desaparecido
    .target Jorgen
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áugure Umbrua|r
    .accept 10491 >>Aceite Call of Ar - Missão - Missão
	.trainer >>Treine suas magias de classe
    .target Farseer Umbrua
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >>Entregue O Diplomata Desaparecido
    .accept 1243 >>Aceite O Diplomata Desaparecido
    .target Elling Trias
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mumu Ardelado|r
    .goto Stormwind City,57.00,72.88
    .bankdeposit 2784,5849 >>Deposite os itens a seguir no banco:
    >>|T134187:0|t[Musquash Enraizar] -- 2784
    >>|T132765:0|t[Caixote of Colisão Helmets] -- 5849
    .target Newton Burnside
step
#ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre os seguintes itens para entregas mais rápidas em Bosque do Crepúsculo em breve
    >>|T133024:0|t[Tubo de Bronze]
    .collect 4371,1,174,1 -- Bronze Tube (1)
    .target Auctioneer Jaxon
step
    #completewith dusk2
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Duskwood>>Voe para Floresta do Crepúsculo
    .target Dungar Longdrink
    .zoneskip Stormwind City,1
step
.dungeon Stockades
    .goto Duskwood,71.938,47.778
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Conselheiro Bonfilobos|r
    .turnin 377 >>Entregue Crime e Castigo
    .target Councilman Millstipe
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    >>|cRXP_WARN_Pule este passo se você ainda não encontrou um tubo de bronze|r
    .accept 174 >>Aceite Olhe para as Estrelas
    .turnin 174 >>Entregue Ora (direis) ouvir estrelas!
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .accept 175 >>Aceite Olhe para as Estrelas
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maria Cega|r
    .turnin 175 >>Entregue Ora (direis) ouvir estrelas!
    .accept 177 >>Aceite Olhe para as Estrelas
    .isQuestTurnedIn 174
    .target Blind Mary
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Abata o |cRXP_ENEMY_Carniçal Insano|r. Saque-o para o |cRXP_LOOT_Mary's Looking Taça|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Carniçal Insano|r pode estar dentro da capela ou andando lá fora|r
    .complete 177,1 --1/1 Mary's Looking Glass
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .turnin 177 >>Entregue Ora (direis) ouvir estrelas!
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .accept 181 >>Aceite Olhe para as Estrelas
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    #label dusk2
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taberneiro Oseias|r
    .turnin 156 >>Entregue Flores do Mal
    .accept 159 >>Aceite Entrega de Suco
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Brunê|r
    .home >>Defina sua Pedra de Regresso para a Floresta do Crepúsculo 
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    >>|cRXP_WARN_Ela pode estar morta ou ocupada lutando|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_se ele atacar Darkshire. Se isso acontecer, considere farmar inimigos perto da cidade até ela reaparecer ou mudar sua camada (se possível)|r
    .turnin 57 >>Entregue A Vigília Noturna
    .accept 58 >>Aceite A Vigília Noturna
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 228 >>Entregue Mor'Ladim
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vigia Ladimore|r
    >>|cRXP_FRIENDLY_Vigia Ladimore|r |cRXP_WARN_patrulha ao redor de Darkshire|r
    .turnin 229 >>Entregue A Filha Sobrevivente
    .accept 231 >>Aceite Amor de Filha
    .target Watcher Ladimore
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vigia Backor|r
    .turnin 1243 >>Entregue O Diplomata Desaparecido
    .accept 1244 >>Aceite O Diplomata Desaparecido
    .target Watcher Backus
step
    #completewith next
    .goto Elwynn Forest,84.60,69.37,100 >>Vá para o Acampamento Registro de Eastvale
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Fadigas|r
    .turnin 74 >>Entregue A Lenda de Galvão
    .accept 75 >>Aceite A Lenda de Stalvan
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.70,69.53
    >>Suba para o andar de cima da Casa
    >>Abra o |cRXP_PICK_Baú do Delegado Fadigas|r. Saqueie-o para obter a |cRXP_LOOT_Página do Diário Desvanecido|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Fadigas|r
    .turnin 75 >>Entregue A Lenda de Galvão
    .accept 78 >>Aceite A Lenda de Stalvan
    .target Marshal Haggard
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katie Caçador|r e |cRXP_FRIENDLY_Randal Caçador|r
    .vendor >>|cRXP_BUY_Compre um|r |T132261:0|t[|cFF0070FFCavalo|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    .target Katie Hunter
    .target Randal Hunter
    .itemcount 2414,<1 -- Pinto
    .itemcount 5655,<1 -- Chestnut Mare
    .itemcount 5656,<1 -- Brown Horse
    .itemcount 2411,<1 -- Black Stallion Bridle
step << Shaman
    #completewith next
    .isOnQuest 335,98
	.hs >>Lar para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r
step << Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taberneiro Oseias|r
    .turnin 78 >>Entregue A Lenda de Galvão
    .accept 79 >>Aceite A Lenda de Stalvan
    .target Tavernkeep Smitts
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    >>|cRXP_WARN_Ela pode estar morta ou ocupada lutando|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_se ele atacar Darkshire. Se isso acontecer, considere farmar inimigos perto da cidade até ela reaparecer ou mudar sua camada (se possível)|r
    .turnin 79 >>Entregue A Lenda de Galvão
    .accept 80 >>Aceite A Lenda de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tabelião Azambuja|r
    .turnin 80 >>Entregue A Lenda de Galvão
    .accept 97 >>Aceite A Lenda de Stalvan
    .target Clerk Daltry
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 97 >>Entregue A Lenda de Galvão
    .accept 98 >>Aceite A Lenda de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Saqueie a |cRXP_LOOT_Lágrima de Tilloa|r do chão
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.30,36.20
    >>Abate |cRXP_ENEMY_Galvão Brumanto|r. Saque seu |cRXP_LOOT_Anel da Família|r
	>>|cRXP_ENEMY_Galvão Brumanto|r |cRXP_WARN_pode acertar bem forte. Leve-o de volta para a cidade e peça ajuda dos |cRXP_FRIENDLY_Watchers|r se necessário|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r dentro
    .turnin 98 >>Entregue A Lenda de Galvão
    .target Madame Eva
step << Shaman
    .isOnQuest 159,58,101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felícia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Westfall>>Voe para Cerro Oeste
    .target Felicia Maline
step << Human Paladin
    .goto 1429/0,-983.900,-9129.800
    .use 6866 >>|cRXP_WARN_Use o|r |T133439:0|t[Símbolo da Vida] |cRXP_WARN_em|r |cRXP_FRIENDLY_Henze Faulk|r
    .complete 1786,1 -- resurrect Henze Faulk in Elwynn.
    .target Henze Faulk
step << Human Paladin
    .goto 1429/0,-983.900,-9129.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Entregue Tomo de Divindade
    .accept 1787 >>Aceite Tomo de Divindade
    .target Henze Faulk
step << Human Paladin
    #loop
    .goto Elwynn Forest,74.2,46.8,60,0
    .goto Elwynn Forest,76.6,53.6,60,0
    .goto Elwynn Forest,73.0,54.2,60,0
    >>Abata os |cRXP_ENEMY_Defias Ladino Wizards|r. Saque-os para o |cRXP_LOOT_Defias Script|r
    .complete 1787,1 --Defias Script (1)
    .mob Defias Rogue Wizard
step << !Shaman
    #completewith next
    .goto Duskwood,28.10,31.46,100 >>Vá para |cRXP_FRIENDLY_Abercrombie|r em Floresta do Crepúsculo
step << !Shaman
    #completewith next
    >>Mate os |cRXP_ENEMY_Filhotes da Viúva Preta|r no caminho para |cRXP_FRIENDLY_Abercrombie|r. Saqueie-os para obter os |cRXP_LOOT_Frascos de Peçonha de Aranha|r
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >>Entregue Alguém Pediu um Suco?
    .accept 133 >>Aceite Boneco de Carniçal
    .target Abercrombie
step
    .goto Duskwood,24.26,32.90
    >>Mate os |cRXP_ENEMY_Disseminadores de Peste|r. Saqueie-os para obter as |cRXP_LOOT_Costelas|r e as |cRXP_LOOT_Presas|r
    >>|cRXP_WARN_Outro |cRXP_ENEMY_Carniçais|r também podem soltar |cRXP_LOOT_Costelas|r e |cRXP_LOOT_Presas|r, mas concentre-se em|r |cRXP_ENEMY_Disseminadores de Peste|r
    .complete 58,1 --20/20 Plague Spreader slain
    .mob +Plague Spreader
    .complete 133,1 --7/7 Ghoul Rib
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
    .complete 101,1 --10/10 Ghoul Fang
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >>Entregue Boneco de Carniçal
    .accept 134 >>Aceite Ogro Ladrão
    .target Abercrombie
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Filhotes da Viúva Preta|r a caminho da Casa Defias
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,23.926,72.075
    >>Abra o |cRXP_PICK_Cofre Defias|r. Saqueie-o para obter o |cRXP_LOOT_Comprovante Defias|r
    .complete 1244,1 --1/1 Defias Docket
step
    .goto Duskwood,33.419,76.356
    >>Pegue o |cRXP_LOOT_Abercrombie's Caixote|r no chão
    .complete 134,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto Duskwood,34.63,77.87,20 >>Entre na Caverna dos Ogros Vul'Gol
    .isQuestTurnedIn 174
step
    .goto Duskwood,37.98,79.90,30,0
    .goto Duskwood,36.81,83.78
    >>Abate |cRXP_ENEMY_Zzarc' Vul|r. Saque seu |cRXP_LOOT_Monocle|r
    >>|cRXP_ENEMY_Zzarc' Vul|r |cRXP_WARN_tem 2 pontos de reaparecimento dentro da caverna|r
    .complete 181,1 --1/1 Ogre's Monocle
    .mob Zzarc' Vul
    .isQuestTurnedIn 174
step
    .goto Duskwood,31.6,59.4,0
    .goto Duskwood,34.4,54.6,0
    .goto Duskwood,28.6,49.4,0
    .goto Duskwood,32.8,35.2,0
    .goto Duskwood,31.6,59.4,50,0
    .goto Duskwood,34.4,54.6,50,0
    .goto Duskwood,28.6,49.4,50,0
    .goto Duskwood,32.8,35.2,50,0
    .goto Duskwood,23.6,36.6
    >>Mate os |cRXP_ENEMY_Black Widow Hatchlings|r e os |cRXP_ENEMY_Carrion Recluses|r. Saqueie a |cRXP_LOOT_Peçonha de Aranha|r deles
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >>Entregue Ogro Ladrão
    .accept 160 >>Aceite Carta ao Alcaide
    .target Abercrombie
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Clique em |cRXP_PICK_A Sepultura Desgastada|r
    .turnin 231 >>Entregue Amor de Filha
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 325 >>Turn in Armed e Ready
    .accept 55 >>Aceite Morbídio Vil
    .target Sven Yorgen
    .isQuestTurnedIn 322
step
    #completewith next
    >>Limpe seu caminho até o 2º andar da casa
    .cast 8913 >>|cRXP_WARN_Equipar|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_in your off-hand|r
    >>|cRXP_WARN_Usar|r |T135142:0|t[Morbent's Bane] |cRXP_WARN_on|r |cRXP_ENEMY_Morbent Fel|r |cRXP_WARN_to weaken him|r
    >>|cRXP_WARN_Lembrar de equipar sua arma/slot de mão esquerda após enfraquecê-lo|r
    .use 7297
step
    .goto Duskwood,16.90,33.40
    >>Mate |cRXP_ENEMY_Morbent Fel|r
    .complete 55,1 --1/1 Morbent Fel slain
    .use 7297
    .mob Morbent Fel
    .isOnQuest 55
step
    .goto Duskwood,7.78,34.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sven Yorgen|r
    .turnin 55 >>Entregue Morbídio Vil
    .isQuestComplete 55
    .target Sven Yorgen
step
    .isOnQuest 181,101,78,58,160
    .hs >>Lar para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 181,101,78,58,160
    .cast 556 >>|T136010:0|t[Revocação Astral] de volta para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
    >>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith next
    #optional
    .goto Westfall,56.55,52.64,-1
    .goto Duskwood,73.77,44.48,-1 << !Shaman
    .goto Duskwood,73.59,46.89,-1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>>Voe para Darkshire
    .target Thor
    .subzoneskip 42
step << !Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taberneiro Oseias|r
    .turnin 78 >>Entregue A Lenda de Galvão
    .accept 79 >>Aceite A Lenda de Stalvan
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    >>|cRXP_WARN_Ela pode estar morta ou ocupada lutando|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_se ele atacar Darkshire. Se isso acontecer, considere farmar inimigos perto da cidade até ela reaparecer ou mudar sua camada (se possível)|r
    .turnin 58 >>Entregue A Vigília Noturna
    .turnin 79 >>Entregue A Lenda de Galvão << !Shaman
    .accept 80 >>Aceite A Lenda de Stalvan << !Shaman
    .target Commander Althea Ebonlocke
step << !Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tabelião Azambuja|r
    .turnin 80 >>Entregue A Lenda de Galvão
    .accept 97 >>Aceite A Lenda de Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Malaquias Ebanez|r
    .turnin 160 >>Entregue Carta ao Alcaide
    .accept 251 >>Aceite [DEPRECATED]Traduzir a Nota de Abercrombie
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >>Entregue [DEPRECATED]Traduzir a Nota de Abercrombie
    .target Sirra Von'Indi
    .accept 401 >>Aceite Esperar que Sirra Conclua
    .turnin 401 >>Entregue Esperar que Sirra Conclua
    .accept 252 >>Aceite Tradução para Ello
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Malaquias Ebanez|r
    .turnin 252 >>Entregue Tradução para Ello
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Malaquias Ebanez|r
    .accept 253 >>Aceite Noiva do Embalsamador
    .target Lord Ello Ebonlocke
step
    #optional
    #sticky
    .destroy 3248 >>Jogue fora o |T134939:0|t[Carta do Embalsamador Traduzida] - você não precisa mais dela
step << !Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 97 >>Entregue A Lenda de Galvão
    .accept 98 >>Aceite A Lenda de Stalvan
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r dentro
    .turnin 101 >>Entregue O Totem do Castigo
    .target Madame Eva
step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .turnin 181 >>Entregue Ora (direis) ouvir estrelas!
    .target Viktori Prism'Antras
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vigia Backor|r
    .turnin 1244 >>Entregue O Diplomata Desaparecido
    .accept 1245 >>Aceite O Diplomata Desaparecido
    .target Watcher Backus
step << !Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Saqueie a |cRXP_LOOT_Lágrima de Tilloa|r do chão
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << !Shaman
    .goto Duskwood,77.30,36.20
    >>Abate |cRXP_ENEMY_Galvão Brumanto|r. Saque seu |cRXP_LOOT_Anel da Família|r
	>>|cRXP_ENEMY_Galvão Brumanto|r |cRXP_WARN_pode acertar bem forte. Leve-o de volta para a cidade e peça ajuda dos |cRXP_FRIENDLY_Watchers|r se necessário|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << !Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r dentro
    .turnin 98 >>Entregue A Lenda de Galvão
    .target Madame Eva
step
    #loop
    .goto Duskwood,63.8,51.8,0
    .goto Duskwood,61.2,40.2,0
    .goto Duskwood,65.2,51.6,0
    .goto Duskwood,61.4,41.2,0
    .goto Duskwood,63.8,51.8,60,0
    .goto Duskwood,61.2,40.2,60,0
    .goto Duskwood,65.2,51.6,60,0
    .goto Duskwood,61.4,41.2,60,0
	>>Mate os |cRXP_ENEMY_Nightbane Escuridão Runners|r
    >>|cRXP_ENEMY_Nightbane Escuridão Runners|r |cRXP_WARN_se movem muito rápido e têm um raio de agressão maior que o Normal|r
    .complete 221,1 --12/12 Nightbane Dark Runner slain
    .mob Nightbane Dark Runner
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r
    .turnin 221 >>Entregue Worgen na Floresta
    .accept 222 >>Aceite Worgen na Floresta
    .target Calor
step
    .goto Duskwood,62.33,81.77
    >>Mate os |cRXP_ENEMY_Nightbane Torpe Presas|r e os |cRXP_ENEMY_Nightbane Maculado Ones|r
	>>|cRXP_WARN_Tenha cuidado pois todos os inimigos na área reaparecem de uma vez após alguns minutos|r
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 222,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    #completewith stvEnd2
    .goto Duskwood,44.7,88.3
    .zone Stranglethorn Vale >>Vá para o sul até Stranglethorn Vale
step
    .goto Stranglethorn Vale,38.237,4.034
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nizzle|r
    .fp Rebel >>Aprenda a rota de voo de Rebel Camp
    .target Nizzle
step
    #completewith stvEnd2
    .goto Stranglethorn Vale,40.339,8.434,0
    >>|cRXP_WARN_Mantenha os olhos abertos para o evento especial |cRXP_FRIENDLY_Recruta Turgo|r. Ele patrulhará descendo a estrada a partir do Rebel camp a cada 30 minutos|r
    >>|cRXP_FRIENDLY_Recruta Turgo|r |cRXP_WARN_será atacado por 2 dos |cRXP_ENEMY_Kurzen's Agents|r. Se você não vir este evento, ignore este passo|r
    >>Mate both of |cRXP_ENEMY_Kurzen's Agents|re then accept |cRXP_FRIENDLY_Private Thorsen's|rquest which becomes available after saving him
    .accept 215 >>Aceite Jungle Secrets
    .unitscan Private Thorsen
    .mob Kurzen's Agent
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barnil Stonepot|r e |cRXP_FRIENDLY_Hemet Nesingwary Jr.|r
    .accept 583 >>Aceite Boas-Vindas à Selva
    .target +Barnil Stonepot
    .goto Stranglethorn Vale,35.662,10.529
    .turnin 583 >>Entregue Boas-Vindas à Selva
    .target +Hemet Nesingwary Jr.
    .goto Stranglethorn Vale,35.658,10.808
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ajeck Rouack|r e |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    .accept 185 >>Aceite Maestria em Tigres
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .accept 190 >>Aceite Maestria em Panteras
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    #completewith next
	>>Mate |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #loop
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,0
    .goto Stranglethorn Vale,31.76,9.00,0
    .goto Stranglethorn Vale,35.40,12.50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
    .goto Stranglethorn Vale,33.30,11.90,50,0
    .goto Stranglethorn Vale,31.76,9.00,50,0
    .goto Stranglethorn Vale,35.40,12.50,50,0
	>>Mate |cRXP_ENEMY_Young Stranglethorn Tigers|r
    .complete 185,1 --10/10 Young Stranglethorn Tiger slain
    .mob Young Stranglethorn Tiger
step
    #loop
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,42.74,12.40,0
    .goto Stranglethorn Vale,41.43,9.77,0
    .goto Stranglethorn Vale,40.67,11.65,0
    .goto Stranglethorn Vale,41.50,12.00,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
    .goto Stranglethorn Vale,42.74,12.40,50,0
    .goto Stranglethorn Vale,41.43,9.77,50,0
    .goto Stranglethorn Vale,40.67,11.65,50,0
    .goto Stranglethorn Vale,41.50,12.00,50,0
	>>Mate |cRXP_ENEMY_Young Panthers|r
    .complete 190,1 --10/10 Young Panther slain
    .mob Young Panther
step
    #label stvEnd2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ajeck Rouack|r e |cRXP_FRIENDLY_Sir S. J. Erlgadin|r
    >>|cRXP_WARN_Não aceite as continuações ainda|r
    .turnin 185 >>Entregue Maestria em Tigres
    --.accept 186 >> Accept Tiger Mastery
    .target +Ajeck Rouack
    .goto Stranglethorn Vale,35.616,10.619
    .turnin 190 >>Entregue Maestria em Panteras
    --.accept 191 >> Accept Panther Mastery
    .target +Sir S. J. Erlgadin
    .goto Stranglethorn Vale,35.556,10.546
step
    .isOnQuest 215
    .goto Stranglethorn Vale,38.042,3.012
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lieutenant Doren|r
    >>|cRXP_WARN_Não aceite a sequência ainda|r
    .turnin 215 >>Entregue Jungle Secrets
    .target Lieutenant Doren
step
    #completewith next
    .goto Stranglethorn Vale,40.64,3.44,20,0
    .goto Duskwood,28.8,30.9
    .zone Duskwood >>Corra de volta para Floresta do Crepúsculo
step
    .goto Duskwood,28.864,30.765
    >>Clique em |cRXP_PICK_Terra da Sepultura de Elisa|r para invocar |cRXP_ENEMY_Elisa|r
    >>Mate for the |cRXP_LOOT_Embalmer's Heart|r
    >>|cRXP_ENEMY_Elisa|r |cRXP_WARN_irá lançar|r |T135846:0|t[Seta de Gelo] |cRXP_WARN_e|r |T135848:0|t[Novane Congelante] |cRXP_WARN_e invocará múltiplos|r |cRXP_ENEMY_Guardas|r
    .complete 253,1 --1/1 The Embalmer's Heart
    .mob Eliza
step << Druid
    #completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
	.zoneskip Moonglade
    .cooldown item,6948,>2,1
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
    .cooldown item,6948,>2,1
step
    .isOnQuest 253,222
    .hs >>Lar para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 253,222
    .cast 556 >>|T136010:0|t[Revocação Astral] de volta para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
    >>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith WITW
    .subzone 42 >>Corra de volta para Darkshire
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Malaquias Ebanez|r
    .turnin 253 >>Entregue Noiva do Embalsamador
    .isQuestComplete 253
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r
    .turnin 222 >>Entregue Worgen na Floresta
    .accept 223 >>Aceite Worgen na Floresta
    .target Calor
step
    #label WITW
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_João Carevino|r
    .turnin 223 >>Entregue Worgen na Floresta
    .target Jonathan Carevin
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felícia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Stormwind>>Voe para Ventobravo
    .target Felicia Maline
    .zoneskip Duskwood,1
step << Mage
    #completewith next
    .goto Stormwind City,43.08,80.39
	.zone Stormwind City >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
	.target Jennea Cannon
step << Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Malin|r
    .accept 690 >>Aceite Malin's Request
    .target Archmage Malin
step << Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlo Rivera|r
    .accept 1301 >>Aceite [DEPRECATED]James Hyal
    .target Connor Rivers
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mumu Ardelado|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >>Retire os seguintes itens do seu banco:
    >>|T134187:0|t[Musquash Enraizar] -- 2784
    >>|T132765:0|t[Caixote of Colisão Helmets] -- 5849
    .target Newton Burnside
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áugure Umbrua|r
	.trainer >>Treine suas magias de classe
    .target Farseer Umbrua
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >>Entregue O Diplomata Desaparecido
    .accept 1246 >>Aceite O Diplomata Desaparecido
    .target Elling Trias
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Warrior
    .goto Stormwind City,78.680,45.802
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r
    .accept 1718 >>Aceite O Ilhéu
    .target Wu Shen
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dashel Punhopétreo|r
    >>|cRXP_ENEMY_Dashel Punhopétreo|r |cRXP_WARN_ficará hostil após aceitar a continuação. Derrote-o|r
    .turnin 1246 >>Entregue O Diplomata Desaparecido
    .accept 1447,1 >>Aceite O Diplomata Desaparecido
    .target Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>Derrote |cRXP_ENEMY_Dashel Punhopétreo|r
    >>|cRXP_ENEMY_Dashel Punhopétreo|r |cRXP_WARN_também atacará com 2 |cRXP_ENEMY_Capangas da Cidade Velha|r. Ignorar-os e concentre-se em|r |cRXP_ENEMY_Dashel Punhopétreo|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dashel Punhopétreo|r
    .turnin 1447 >>Entregue O Diplomata Desaparecido
    .accept 1247 >>Aceite O Diplomata Desaparecido
    .target Dashel Stonefist
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >>Entregue O Diplomata Desaparecido
    .accept 1248 >>Aceite O Diplomata Desaparecido
    .target Elling Trias
step
#ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre os seguintes itens para entregas mais rápidas em Costa Sul em breve
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
    >>10 |T134026:0|t[Carne de Tartaruga]
    .collect 3712,10,555,1
    .target Auctioneer Jaxon
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mumu Ardelado|r
    .goto Stormwind City,57.00,72.88
    .bankwithdraw 2784,5849,23750 >>Retire os seguintes itens do seu banco:
    >>|T134187:0|t[Musquash Enraizar] -- 2784
    >>|T132765:0|t[Caixote of Colisão Helmets] -- 5849
    >>|T132824:0|t[Cheio Bota Bolsa] << Shaman -- 23750
    .target Newton Burnside
step << !Mage
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Malin|r
    .accept 690 >>Aceite Malin's Request
    .target Archmage Malin
step << !Mage
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlo Rivera|r
    .accept 1301 >>Aceite [DEPRECATED]James Hyal
    .target Connor Rivers
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado e desça as escadas
step
    .goto Stormwind City,26.439,78.629
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zardeth of the Black Claw|r
    .turnin 335 >>Entregue Uma Bebida para Poucos
    .accept 336 >>Aceite Uma Bebida para Poucos
    .target Zardeth of the Black Claw
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1798 >>Aceite Seeking Strahad
    .target Gakin the Darkbinder
step << Warlock
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joyce Lopes|r
    >>|cRXP_WARN_Pule este passo se você pegou a mesma missão de Ironforge anteriormente|r
    .accept 4738 >>Aceite Em Busca de Menara Nihila
    .target Demisette Cloyce
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Entregue Tomo de Divindade
    .target Gazin Tenorm
    .accept 1788 >>Aceite Tomo de Divindade
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1788 >>Entregue Tomo de Divindade << Human
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto StormwindClassic,38.82,31.27,10,0 << !Human
    .goto StormwindClassic,38.67,32.82
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
step
    .goto Stormwind City,75.226,31.670
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lord Baurles K. Wishock|r
    .turnin 336 >>Entregue Uma Bebida para Poucos
    .target Lord Baurles K. Wishock
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    >>|cRXP_WARN_Se você encontrou |T133741:0|t[|cRXP_LOOT_An Old History Livro|r] você pode entregá-lo|r
    .accept 337 >>Aceite An Old History Livro
    .turnin 337 >>Entregue An Old History Livro
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    .accept 538 >>Aceite Southshore
    .target Milton Sheaf
step
    .goto Stormwind City,74.010,30.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Conde Capistrano de Espargosa|r
    .accept 543 >>Aceite A Tiara de Perenolde
    .target Count Remington Ridgewell
step << Druid
    #completewith DruidMount
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
	.zoneskip Moonglade
step << Druid
    #completewith DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva Fil'naveth|r
    .goto Moonglade,44.147,45.225
    .fly Teldrassil>>Voe para Teldrassil
    .target Silva Fil'naveth
step << Druid
    #completewith DruidMount
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Druid
    #label DruidMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lelanai|r e |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Compre um|r |T132267:0|t[|cFF0070FFSabre-de-gelo|r] |cRXP_BUY_ou|r |T132225:0|t[|cFF0070FFSabre-da-noite|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Stormwind City
    .zoneskip Ironforge
step << !Mage
    #completewith FlyWetlands
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>Entre no Bondinho Deeprun. Pegue o Bondinho para Ironforge
    >>|cRXP_WARN_Level your|r Evolua sua[First Aid]|cRXP_WARN_if needed while waiting for the Tram|r
    .zoneskip Wetlands
step << Mage
    #completewith FlyWetlands
    .zone Ironforge >>|cRXP_WARN_Use|r |T135757:0|t[Teleporte: Altaforja]
step << Gnome !Warlock/Dwarf !Paladin
    #completewith next
    .zone Dun Morogh >>|cRXP_WARN_Viaje para Kharanos e compre seu|r |T132247:0|t[Mecanostruz] << Gnome !Warlock
    .zone Dun Morogh >>|cRXP_WARN_Viaje para Amberstill Ranch e compre seu|r |T132248:0|t[Harrison Jones] << Dwarf !Paladin
    .xp <30,1
    .money <38
step << Gnome !Warlock -- checking if gnomes can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Binjy Penapita|r e |cRXP_FRIENDLY_Milli Penapita|r
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Compre um|r |T132247:0|t[|cFF0070FFMecanostruz|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
step << Dwarf !Paladin -- checking if dwarfs can get mount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veron Ambarmanso|r e |cRXP_FRIENDLY_Ultham Chifrerro|r
    .vendor >>|cRXP_BUY_Compre um|r |T132248:0|t[|cFF0070FFHarrison Jones|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
step << Gnome !Warlock/Dwarf !Paladin
    #optional
    .zoneskip Dun Morogh,1
    #completewith next
    .goto Ironforge,16.57,84.04
    .zone Ironforge >>Volte para Ironforge
step
    #label FlyWetlands
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
	.fly Wetlands >>Voe para Pantanal
    .target Gryth Thurden
    .zoneskip Darnassus
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    .home >>Defina sua Pedra de Regresso no Porto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mikhail|r
	>>|cRXP_WARN_Aceitar esta missão fará |cRXP_ENEMY_Tapoke Jahn, o Fino|r, junto à entrada da Estalagem|r |T132320:0|t[Furtividade], |cRXP_WARN_fugir para fora|r
    .turnin 1248 >>Entregue O Diplomata Desaparecido
    .accept 1249,1 >>Aceite O Diplomata Desaparecido
    .target Mikhail
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.795,59.616
    >>|cRXP_WARN_Corra para fora rapidamente!|r
    >>|cRXP_WARN_Derrote |cRXP_ENEMY_Tapoke Jahn, o Fino|r. |cRXP_ENEMY_Amigo do Fino|r fugirá assim que |cRXP_ENEMY_Tapoke Jahn, o Fino|r se render|r
    >>|cRXP_WARN_Use qualquer Controle de Multidão (CC) contra |cRXP_ENEMY_Amigo do Fino|r se necessário|r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mikhail|r
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .turnin 1249 >>Entregue O Diplomata Desaparecido
    .target Mikhail
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tapoke Jahn, o Fino|r
    .accept 1250 >>Aceite O Diplomata Desaparecido
    .target Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >>Entregue O Diplomata Desaparecido
    .accept 1264 >>Aceite O Diplomata Desaparecido
    .target Mikhail
step << NightElf !Druid
    #completewith next
    .goto Wetlands,4.560,57.160
    .zone Darkshore >>Pegue o barco para Costa Negra
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << NightElf !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lelanai|r e |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Compre um|r |T132267:0|t[|cFF0070FFSabre-de-gelo|r] |cRXP_BUY_ou|r |T132225:0|t[|cFF0070FFSabre-da-noite|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #optional
	.hs >>Use a Pedra do Regresso para o Porto de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
step << NightElf !Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
step << Draenei !Paladin
    #completewith DraeneiMount
    .goto Wetlands,4.560,57.160
    .zone Darkshore >>Pegue o barco para Costa Negra
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Draenei !Paladin
    #completewith DraeneiMount << !Shaman
    .goto Darkshore,30.74,40.99
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,42.29,71.54
    .zone The Exodar >>Entre em The Exodar pela entrada traseira
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>Vá para o |cRXP_FRIENDLY_Clarividente Nobambo|r subindo a rampa
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarividente Nobambo|r
    >>|cRXP_FRIENDLY_Clarividente Nobambo|r |cRXP_WARN_patrulha levemente|r
    .target Farseer Nobundo
    .turnin 10491 >>Entregue Call of Ar - Missão - Missão - Missão
    .accept 9552 >>Aceite Call of Ar - Missão - Missão
step << Shaman
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>Saia de Exodar
    .zoneskip The Exodar,1
step << Draenei !Paladin
    #label DraeneiMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toralius, o Tratador|r e |cRXP_FRIENDLY_Aalun|r
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto The Exodar,81.335,52.625
    .vendor >>|cRXP_BUY_Compre um|r |T132255:0|t[|cFF0070FFElekk|r]
    .goto The Exodar,82.248,50.202
    .xp <30,1
    .money <38
    .target Torallius the Pack Handler
    .target Aalun
    .itemcount 28481,<1 -- Brown Elekk
    .itemcount 29743,<1 -- Purple Elekk
    .itemcount 29744,<1 -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >>Voe para o Entreposto Rubro
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Aquos|r submerso
    .turnin 9504 >>Entregue Clamor da água
    .accept 9508 >>Aceite Chamado da Água
    .target Aqueous
step << Shaman
    #completewith next
    .goto Bloodmyst Isle,45.63,32.36,80,0
    .goto Bloodmyst Isle,25.968,40.854
    .cast 30408 >>Clique em |cRXP_PICK_Barril de Nojeira|r para chamar |cRXP_ENEMY_Tel'athion, o Impuro|r
    .timer 3,Chamado da Água RP
step << Shaman
    .goto Bloodmyst Isle,25.942,40.969
	>>Mate |cRXP_ENEMY_Tel'athion, o Impuro|r. Saque a |cRXP_LOOT_Cabeça|r dele
    .complete 9508,1 --Collect Head of Tel'athion (x1)
    .mob Tel'athion the Impure
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Aquos|r submerso
    .turnin 9508 >>Entregue Clamor da água
    .accept 9509 >>Aceite Chamado da Água
    .target Aqueous
step << Shaman
	.deathskip >>Afogue-se intencionalmente. Morra e renasça junto ao |cRXP_FRIENDLY_Espírito Anjo da Cura|r
    .subzoneskip 3596,1
step << Shaman
    .isOnQuest 9552,9509
    .subzone 3584 >>Viaje até Vigília Rubra
step << Shaman
    .isOnQuest 9552,9509
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
step << Shaman
    .isOnQuest 9552,9509
    .goto The Exodar,70.62,30.55,25,0
    .goto Azuremyst Isle,31.26,26.85,100,0
    .goto Azuremyst Isle,25.72,27.75,15 >>Siga de perto a seta ao redor da parte externa de The Exodar para chegar à Trajetória Wildwind
step << Shaman
    .isOnQuest 9552,9509
    .goto Azuremyst Isle,20.23,27.78,15,0
    .goto Azuremyst Isle,18.19,31.65,20,0
    .goto Azuremyst Isle,19.29,35.80,15,0
    .goto Azuremyst Isle,20.44,31.92,15,0
    .goto Azuremyst Isle,21.95,36.96,15,0
    .goto Azuremyst Isle,23.55,36.84,15,0
    .goto Azuremyst Isle,24.21,35.65,10 >>Continue seguindo o caminho pela Trajetória Wildwind
    .subzoneskip 3581,1
step << Shaman
    .goto Azuremyst Isle,24.899,35.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >>Entregue Call of Ar - Missão - Missão - Missão
    .accept 9553 >>Aceite Call of Ar - Missão - Missão
    .target Velaada
step << Shaman
    .goto Azuremyst Isle,22.325,32.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >>Entregue Call of Ar - Missão - Missão - Missão
    .accept 9554 >>Aceite Call of Ar - Missão - Missão
    .target Susurrus
step << Shaman
    .gossip 17435,0 >>Converse com |cRXP_FRIENDLY_Susurrus|r novamente para voltar a The Exodar
    .timer 89,Call of Ar - Missão RP
    .skipgossip
    .subzoneskip 3581,1
    .target Susurrus
step << Shaman
    #completewith next
    .goto The Exodar,71.12,51.41,15 >>Desça em Exodar novamente
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarividente Nobambo|r
    >>|cRXP_FRIENDLY_Clarividente Nobambo|r |cRXP_WARN_patrulha levemente|r
    >>|cRXP_WARN_Você ganhará o|r |T136022:0|t[Vento Veloz] |cRXP_WARN_bônus por 1 hora após entregar esta missão, aumentando sua velocidade de movimento em 40% e velocidade de ataque em 30%|r
    >>|cRXP_WARN_Não fique AFK enquanto você tiver esse buff|r
    .target Farseer Nobundo
    .turnin 9509 >>Entregue Clamor da água
    .turnin 9554 >>Entregue Call of Ar - Missão - Missão - Missão
step << Draenei
    #optional
	.hs >>Use a Pedra do Regresso para o Porto de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
    .bindlocation 2104,1
step << Shaman
    .cast 556 >>|T136010:0|t[Revocação Astral] para Terras Alagadas
    .cooldown spell,556,>0,1
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>Pegue o barco para Costa Negra
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Wetlands
step
    .goto Wetlands,8.388,61.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >>Entregue [DEPRECATED][DEPRECATED]James Hyal
    .accept 1302 >>Aceite [DEPRECATED]James Hyal
    .target Vincent Hyal
step
    #label TheramoreBoat
    .goto Wetlands,5.075,63.408
    .zone Dustwallow Marsh >>Pegue o barco para Costa Negra
    >>|cRXP_WARN_Level your|r Evolua sua[First Aid]|cRXP_WARN_while waiting|r
    .zoneskip Thousand Needles
    .zoneskip The Barrens
]])

--1.5x guides:
RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#name 28-30 Floresta do Crepúsculo
#version 7
#group RestedXP Guia TBC (A)
#subgroup RestedXP Aliança 20-32
#next 30-32 Hillsbrad
#xprate >1.49

step << !Mage
    #optional
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >>Pegue o bonde para Ventobravo
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
    .usespell 3561
    .zoneskip Stormwind City
step
    .goto Stormwind City,38.72,25.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomás|r
    >>|cRXP_FRIENDLY_Tomás|r |cRXP_WARN_caminha pela Catedral|r
    .accept 1274 >>Aceite O Diplomata Desaparecido
    .target Thomas
step
    .goto Stormwind City,78.30,25.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Bispo DeLavey|r
    .turnin 1274 >>Entregue O Diplomata Desaparecido
    .accept 1241 >>Aceite O Diplomata Desaparecido
    .target Bishop DeLavey
step
    .goto Stormwind City,73.17,78.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorge|r
    .turnin 1241 >>Entregue O Diplomata Desaparecido
    .accept 1242 >>Aceite O Diplomata Desaparecido
    .target Jorgen
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1242 >>Entregue O Diplomata Desaparecido
    .accept 1243 >>Aceite O Diplomata Desaparecido
    .target Elling Trias
step
    .goto Stormwind City,66.27,62.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Duskwood>>Voe para Floresta do Crepúsculo
    .target Dungar Longdrink
    .zoneskip Duskwood
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    >>|cRXP_WARN_Pule este passo se você ainda não encontrou um tubo de bronze|r
    .accept 174 >>Aceite Olhe para as Estrelas
    .turnin 174 >>Entregue Ora (direis) ouvir estrelas!
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .accept 175 >>Aceite Olhe para as Estrelas
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,81.46,59.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maria Cega|r
    .turnin 175 >>Entregue Ora (direis) ouvir estrelas!
    .accept 177 >>Aceite Olhe para as Estrelas
    .isQuestTurnedIn 174
    .target Blind Mary
step
    .goto Duskwood,79.73,70.64,30,0
    .goto Duskwood,80.98,71.65
    >>Abata o |cRXP_ENEMY_Carniçal Insano|r. Saque-o para o |cRXP_LOOT_Mary's Looking Taça|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Carniçal Insano|r pode estar dentro da capela ou andando lá fora|r
    .complete 177,1 --1/1 Mary's Looking Glass
    .mob Insane Ghoul
    .isQuestTurnedIn 174
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .turnin 177 >>Entregue Ora (direis) ouvir estrelas!
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .accept 181 >>Aceite Olhe para as Estrelas
    .isQuestTurnedIn 174
    .target Viktori Prism'Antras
step
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Taberneiro Oseias|r
    .turnin 156 >>Entregue Flores do Mal
    .accept 159 >>Aceite Entrega de Suco
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.872,44.406
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Brunê|r
    .home >>Defina sua Pedra de Regresso para a Floresta do Crepúsculo 
    .target Innkeeper Trelayne
    --xx nosubzone. check on ptr
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    >>|cRXP_WARN_Ela pode estar morta ou ocupada lutando|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_se ele atacar Darkshire. Se isso acontecer, considere farmar inimigos perto da cidade até ela reaparecer ou mudar sua camada (se possível)|r
    .turnin 57 >>Entregue A Vigília Noturna
    .accept 58 >>Aceite A Vigília Noturna
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestComplete 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 228 >>Entregue Mor'Ladim
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .accept 229 >>Aceite A Filha Sobrevivente
    .target Commander Althea Ebonlocke
step
    #optional
    .isQuestTurnedIn 228
    .goto Duskwood,74.54,46.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vigia Ladimore|r
    >>|cRXP_FRIENDLY_Vigia Ladimore|r |cRXP_WARN_patrulha ao redor de Darkshire|r
    .turnin 229 >>Entregue A Filha Sobrevivente
    .accept 231 >>Aceite Amor de Filha
    .target Watcher Ladimore
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Vigia Backor|r
    .turnin 1243 >>Entregue O Diplomata Desaparecido
    .accept 1244 >>Aceite O Diplomata Desaparecido
    .target Watcher Backus
step
    #completewith next
    .goto Elwynn Forest,84.60,69.37,100 >>Vá para o Acampamento Registro de Eastvale
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Fadigas|r
    .turnin 74 >>Entregue A Lenda de Galvão
    .accept 75 >>Aceite A Lenda de Stalvan
    .target Marshal Haggard
step
    .goto Elwynn Forest,85.70,69.53
    >>Suba para o andar de cima da Casa
    >>Abra o |cRXP_PICK_Baú do Delegado Fadigas|r. Saqueie-o para obter a |cRXP_LOOT_Página do Diário Desvanecido|r
    .complete 75,1 --1/1 A Faded Journal Page
step
    .goto Elwynn Forest,84.60,69.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Fadigas|r
    .turnin 75 >>Entregue A Lenda de Galvão
    .accept 78 >>Aceite A Lenda de Stalvan
    .target Marshal Haggard
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Katie Caçador|r e com o |cRXP_FRIENDLY_Randal Caçador|r
    .vendor >>|cRXP_BUY_Compre um|r |T132261:0|t[|cFF0070FFCavalo|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    .target Katie Hunter
    .target Randal Hunter
    .itemcount 2414,<1 -- Pinto
    .itemcount 5655,<1 -- Chestnut Mare
    .itemcount 5656,<1 -- Brown Horse
    .itemcount 2411,<1 -- Black Stallion Bridle
step << Shaman
    #completewith next
    .isOnQuest 335,98
	.hs >>Use sua Pedra de Retorno para ir a Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r
step << Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Taberneiro Oseias|r
    .turnin 78 >>Entregue A Lenda de Galvão
    .accept 79 >>Aceite A Lenda de Stalvan
    .target Tavernkeep Smitts
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    >>|cRXP_WARN_Ela pode estar morta ou ocupada lutando|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_se ele atacar Darkshire. Se isso acontecer, considere farmar inimigos perto da cidade até ela reaparecer ou mudar sua camada (se possível)|r
    .turnin 79 >>Entregue A Lenda de Galvão
    .accept 80 >>Aceite A Lenda de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tabelião Azambuja|r
    .turnin 80 >>Entregue A Lenda de Galvão
    .accept 97 >>Aceite A Lenda de Stalvan
    .target Clerk Daltry
step << Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 97 >>Entregue A Lenda de Galvão
    .accept 98 >>Aceite A Lenda de Stalvan
    .target Commander Althea Ebonlocke
step << Shaman
	#sticky
	#label FlowerX
    .goto Duskwood,78.348,35.952
    >>Saqueie a |cRXP_LOOT_Lágrima de Tilloa|r do chão
    .complete 335,1 --1/1 Tear of Tilloa
    .isOnQuest 335
step << Shaman
    .goto Duskwood,77.30,36.20
    >>Mate |cRXP_ENEMY_Galvão Brumanto|r. Saqueie-o para obter o |cRXP_LOOT_Anel Familiar|r
	>>|cRXP_ENEMY_Galvão Brumanto|r |cRXP_WARN_pode acertar bem forte. Leve-o de volta para a cidade e peça ajuda dos |cRXP_FRIENDLY_Watchers|r se necessário|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r dentro
    .turnin 98 >>Entregue A Lenda de Galvão
    .target Madame Eva
step << Shaman
    .isOnQuest 159,58,101
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felícia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Westfall>>Voe para Cerro Oeste
    .target Felicia Maline
step << Human Paladin
    .goto 1429/0,-983.900,-9129.800
    .use 6866 >>|cRXP_WARN_Use o|r |T133439:0|t[Símbolo da Vida] |cRXP_WARN_em|r |cRXP_FRIENDLY_Henze Faulk|r
    .complete 1786,1 -- resurrect Henze Faulk in Elwynn.
    .target Henze Faulk
step << Human Paladin
    .goto 1429/0,-983.900,-9129.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Henze Faulk|r
    .turnin 1786 >>Entregue Tomo de Divindade
    .accept 1787 >>Aceite Tomo de Divindade
    .target Henze Faulk
step << Human Paladin
    #loop
    .goto Elwynn Forest,74.2,46.8,60,0
    .goto Elwynn Forest,76.6,53.6,60,0
    .goto Elwynn Forest,73.0,54.2,60,0
    >>Mate os |cRXP_ENEMY_Magos Ladinos Defias|r. Saqueie-os para obter o |cRXP_LOOT_Script Defias|r
    .complete 1787,1 --Defias Script (1)
    .mob Defias Rogue Wizard
step << !Shaman
    #completewith next
    .goto Duskwood,28.10,31.46,100 >>Vá para |cRXP_FRIENDLY_Abercrombie|r em Floresta do Crepúsculo
step << !Shaman
    #completewith next
    >>Mate os |cRXP_ENEMY_Filhotes da Viúva Preta|r no caminho para |cRXP_FRIENDLY_Abercrombie|r. Saqueie-os para obter os |cRXP_LOOT_Frascos de Peçonha de Aranha|r
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 159 >>Entregue Alguém Pediu um Suco?
    .accept 133 >>Aceite Boneco de Carniçal
    .target Abercrombie
step
    .goto Duskwood,24.26,32.90
    >>Mate os |cRXP_ENEMY_Disseminadores de Peste|r. Saqueie-os para obter as |cRXP_LOOT_Costelas|r e as |cRXP_LOOT_Presas|r
    >>|cRXP_WARN_Outro |cRXP_ENEMY_Carniçais|r também podem soltar |cRXP_LOOT_Costelas|r e |cRXP_LOOT_Presas|r, mas concentre-se em|r |cRXP_ENEMY_Disseminadores de Peste|r
    .complete 58,1 --20/20 Plague Spreader slain
    .mob +Plague Spreader
    .complete 133,1 --7/7 Ghoul Rib
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
    .complete 101,1 --10/10 Ghoul Fang
    .mob +Plague Spreader
    .mob +Flesh Eater
    .mob +Rotted One
    .mob +Bone Chewer
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 133 >>Entregue Boneco de Carniçal
    .accept 134 >>Aceite Ogro Ladrão
    .target Abercrombie
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Filhotes da Viúva Preta|r a caminho da Casa Defias
    .complete 101,2 --Vial of Spider Venom(5)
    .mob Black Widow Hatchling
step
    .goto Duskwood,23.926,72.075
    >>Abra o |cRXP_PICK_Cofre Defias|r. Saqueie-o para obter o |cRXP_LOOT_Comprovante Defias|r
    .complete 1244,1 --1/1 Defias Docket
step
    .goto Duskwood,33.419,76.356
    >>Pegue o |cRXP_LOOT_Abercrombie's Caixote|r no chão
    .complete 134,1 --1/1 Abercrombie's Crate
step
    #completewith next
    .goto Duskwood,34.63,77.87,20 >>Entre na Caverna dos Ogros Vul'Gol
    .isQuestTurnedIn 174
step
    .goto Duskwood,37.98,79.90,30,0
    .goto Duskwood,36.81,83.78
    >>Abate |cRXP_ENEMY_Zzarc' Vul|r. Saque seu |cRXP_LOOT_Monocle|r
    >>|cRXP_ENEMY_Zzarc' Vul|r |cRXP_WARN_tem 2 pontos de reaparecimento dentro da caverna|r
    .complete 181,1 --1/1 Ogre's Monocle
    .mob Zzarc' Vul
    .isQuestTurnedIn 174
step
    .goto Duskwood,31.6,59.4,0
    .goto Duskwood,34.4,54.6,0
    .goto Duskwood,28.6,49.4,0
    .goto Duskwood,32.8,35.2,0
    .goto Duskwood,31.6,59.4,50,0
    .goto Duskwood,34.4,54.6,50,0
    .goto Duskwood,28.6,49.4,50,0
    .goto Duskwood,32.8,35.2,50,0
    .goto Duskwood,23.6,36.6
    >>Mate os |cRXP_ENEMY_Black Widow Hatchlings|r e os |cRXP_ENEMY_Carrion Recluses|r. Saqueie a |cRXP_LOOT_Peçonha de Aranha|r deles
    .complete 101,2 --5/5 Vial of Spider Venom
    .mob Black Widow Hatchling
    .mob Carrion Recluse
step
    .goto Duskwood,28.108,31.469
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Abercrombie|r
    .turnin 134 >>Entregue Ogro Ladrão
    .accept 160 >>Aceite Carta ao Alcaide
    .target Abercrombie
step
    #optional
    .isOnQuest 231
    .goto Duskwood,17.72,29.07
    >>Clique em |cRXP_PICK_A Sepultura Desgastada|r
    .turnin 231 >>Entregue Amor de Filha
step
    .isOnQuest 181,101,78,58,160
    .hs >>Lar para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
step << Shaman
    .isOnQuest 181,101,78,58,160
    .cast 556 >>|T136010:0|t[Revocação Astral] de volta para Darkshire
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
    >>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown spell,556,>0,1
    .subzoneskip 42
step
    #completewith next
    #optional
    .goto Westfall,56.55,52.64,-1
    .goto Duskwood,73.77,44.48,-1 << !Shaman
    .goto Duskwood,73.59,46.89,-1 << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Duskwood>>Voe para Darkshire
    .target Thor
    .subzoneskip 42
step << !Shaman
    .goto Duskwood,73.77,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Taberneiro Oseias|r
    .turnin 78 >>Entregue A Lenda de Galvão
    .accept 79 >>Aceite A Lenda de Stalvan
    .target Tavernkeep Smitts
step
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    >>|cRXP_WARN_Ela pode estar morta ou ocupada lutando|r |cRXP_ENEMY_Stitches|r |cRXP_WARN_se ele atacar Darkshire. Se isso acontecer, considere farmar inimigos perto da cidade até ela reaparecer ou mudar sua camada (se possível)|r
    .turnin 58 >>Entregue A Vigília Noturna
    .turnin 79 >>Entregue A Lenda de Galvão << !Shaman
    .accept 80 >>Aceite A Lenda de Stalvan << !Shaman
    .target Commander Althea Ebonlocke
step << !Shaman
    .goto Duskwood,72.53,46.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tabelião Azambuja|r
    .turnin 80 >>Entregue A Lenda de Galvão
    .accept 97 >>Aceite A Lenda de Stalvan
    .target Clerk Daltry
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Malaquias Ebanez|r
    .turnin 160 >>Entregue Carta ao Alcaide
    .accept 251 >>Aceite [DEPRECATED]Traduzir a Nota de Abercrombie
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,72.64,47.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sirra Von'Indi|r
    .turnin 251 >>Entregue [DEPRECATED]Traduzir a Nota de Abercrombie
    .target Sirra Von'Indi
    .accept 401 >>Aceite Esperar que Sirra Conclua
    .turnin 401 >>Entregue Esperar que Sirra Conclua
    .accept 252 >>Aceite Tradução para Ello
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Malaquias Ebanez|r
    .turnin 252 >>Entregue Tradução para Ello
    .target Lord Ello Ebonlocke
step
    .goto Duskwood,71.93,46.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lorde Malaquias Ebanez|r
    .accept 253 >>Aceite Noiva do Embalsamador
    .target Lord Ello Ebonlocke
step
    #optional
    #sticky
    .destroy 3248 >>Jogue fora o |T134939:0|t[Carta do Embalsamador Traduzida] - você não precisa mais dela
step << !Shaman
    .goto Duskwood,73.59,46.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Comandante Aldora Ebanez|r
    .turnin 97 >>Entregue A Lenda de Galvão
    .accept 98 >>Aceite A Lenda de Stalvan
    .target Commander Althea Ebonlocke
step
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r dentro
    .turnin 101 >>Entregue O Totem do Castigo
    .target Madame Eva
step
    .isQuestTurnedIn 174
    .goto Duskwood,79.80,48.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vitório Prismado|r
    .turnin 181 >>Entregue Ora (direis) ouvir estrelas!
    .target Viktori Prism'Antras
step
    .goto Duskwood,72.55,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vigia Backor|r
    .turnin 1244 >>Entregue O Diplomata Desaparecido
    .accept 1245 >>Aceite O Diplomata Desaparecido
    .target Watcher Backus
step << !Shaman
    .goto Duskwood,77.30,36.20
    >>Abate |cRXP_ENEMY_Galvão Brumanto|r. Saque seu |cRXP_LOOT_Anel da Família|r
	>>|cRXP_ENEMY_Galvão Brumanto|r |cRXP_WARN_pode acertar bem forte. Leve-o de volta para a cidade e peça ajuda dos |cRXP_FRIENDLY_Watchers|r se necessário|r
    .complete 98,1 --1/1 Mistmantle Family Ring
    .mob Stalvan Mistmantle
step << !Shaman
	#requires FlowerX
    .goto Duskwood,75.81,45.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Madame Eva|r dentro
    .turnin 98 >>Entregue A Lenda de Galvão
    .target Madame Eva
step
    #loop
    .goto Duskwood,63.8,51.8,0
    .goto Duskwood,61.2,40.2,0
    .goto Duskwood,65.2,51.6,0
    .goto Duskwood,61.4,41.2,0
    .goto Duskwood,63.8,51.8,60,0
    .goto Duskwood,61.2,40.2,60,0
    .goto Duskwood,65.2,51.6,60,0
    .goto Duskwood,61.4,41.2,60,0
	>>Mate os |cRXP_ENEMY_Nightbane Escuridão Runners|r
    >>|cRXP_ENEMY_Nightbane Escuridão Runners|r |cRXP_WARN_se movem muito rápido e têm um raio de agressão maior que o Normal|r
    .complete 221,1 --12/12 Nightbane Dark Runner slain
    .mob Nightbane Dark Runner
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r
    .turnin 221 >>Entregue Worgen na Floresta
    .accept 222 >>Aceite Worgen na Floresta
    .target Calor
step
    .goto Duskwood,62.33,81.77
    >>Mate os |cRXP_ENEMY_Nightbane Torpe Presas|r e os |cRXP_ENEMY_Nightbane Maculado Ones|r
	>>|cRXP_WARN_Tenha cuidado pois todos os inimigos na área reaparecem de uma vez após alguns minutos|r
    .complete 222,1 --8/8 Nightbane Vile Fang slain
    .mob +Nightbane Vile Fang
    .complete 222,2 --8/8 Nightbane Tainted One slain
    .mob +Nightbane Tainted One
step
    .goto Duskwood,62.33,81.77
    .xp 30-7575
    .mob Nightbane Tainted One
    .mob Nightbane Vile Fang
step
    .goto Duskwood,75.302,48.046
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrônio|r
    .turnin 222 >>Entregue Worgen na Floresta
    .accept 223 >>Aceite Worgen na Floresta
    .target Calor
step
    .goto Duskwood,75.32,49.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_João Carevino|r
    .turnin 223 >>Entregue Worgen na Floresta
    .target Jonathan Carevin
step
    #optional
    .goto Duskwood,62.33,81.77
    .xp 30
    .mob Nightbane Tainted One
    .mob Nightbane Vile Fang
step << Human !Paladin !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Katie Caçador|r e |cRXP_FRIENDLY_Randal Caçador|r
    .vendor >>|cRXP_BUY_Compre um|r |T132261:0|t[|cFF0070FFCavalo|r]
    .goto Elwynn Forest,84.152,65.489
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Elwynn Forest,84.321,64.869
    .xp <30,1
    .money <38
    .target Katie Hunter
    .target Randal Hunter
    .itemcount 2414,<1 -- Pinto
    .itemcount 5655,<1 -- Chestnut Mare
    .itemcount 5656,<1 -- Brown Horse
    .itemcount 2411,<1 -- Black Stallion Bridle
step << Mage
    #optional
    .cast 3561 >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
    .usespell 3561
    .zoneskip Stormwind City
step << !Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Felícia Maline|r
    .goto Duskwood,77.49,44.28
    .fly Stormwind>>Voe para Ventobravo
    .target Felicia Maline
    .zoneskip Duskwood,1
step
    #completewith next
    .zone Stormwind City >>Retorne para Ventobravo
step << Shaman
	.goto Stormwind City,61.822,83.991
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áugure Umbrua|r
    .accept 10491 >>Aceite Call of Ar - Missão - Missão
	.trainer >>Treine suas magias de classe
    .target Farseer Umbrua
step << Mage
    .goto Stormwind City,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
	.target Jennea Cannon
step << !Mage
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >>Entregue O Diplomata Desaparecido
    .accept 1246 >>Aceite O Diplomata Desaparecido
    .target Elling Trias
step
    .goto Stormwind City,39.843,81.446
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquimago Malin|r
    .accept 690 >>Aceite Malin's Request
    .target Archmage Malin
step
	.goto Stormwind City,40.633,91.867
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carlo Rivera|r
    .accept 1301 >>Aceite [DEPRECATED]James Hyal
    .target Connor Rivers
step << Mage
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1245 >>Entregue O Diplomata Desaparecido
    .accept 1246 >>Aceite O Diplomata Desaparecido
    .target Elling Trias
step
    #completewith next
    .goto Stormwind City,29.2,74.0,20,0
    .goto Stormwind City,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado e desça as escadas
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto Stormwind City,25.255,78.591
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1798 >>Aceite Seeking Strahad
    .target Gakin the Darkbinder
step << Warlock
    .goto Stormwind City,25.283,78.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joyce Lopes|r
    >>|cRXP_WARN_Pule este passo se você pegou a mesma missão de Ironforge anteriormente|r
    .accept 4738 >>Aceite Em Busca de Menara Nihila
    .target Demisette Cloyce
    .xp <31,1
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Warrior
    .goto Stormwind City,78.680,45.802
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r
    .accept 1718 >>Aceite O Ilhéu
    .target Wu Shen
step << Rogue
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step
    #completewith next
	.goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dashel Punhopétreo|r
    >>|cRXP_ENEMY_Dashel Punhopétreo|r |cRXP_WARN_ficará hostil após aceitar a continuação. Derrote-o|r
    .turnin 1246 >>Entregue O Diplomata Desaparecido
    .accept 1447,1 >>Aceite O Diplomata Desaparecido
    .target Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>Derrote |cRXP_ENEMY_Dashel Punhopétreo|r
    >>|cRXP_ENEMY_Dashel Punhopétreo|r |cRXP_WARN_também atacará com 2 |cRXP_ENEMY_Capangas da Cidade Velha|r. Ignorar-os e concentre-se em|r |cRXP_ENEMY_Dashel Punhopétreo|r
    .complete 1447,1 --1/1 Defeat Dashel Stonefist
    .mob Dashel Stonefist
step
    .goto Stormwind City,70.549,44.887
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dashel Punhopétreo|r
    .turnin 1447 >>Entregue O Diplomata Desaparecido
    .accept 1247 >>Aceite O Diplomata Desaparecido
    .target Dashel Stonefist
step
    .goto Stormwind City,59.90,64.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elling Trias|r
    .turnin 1247 >>Entregue O Diplomata Desaparecido
    .accept 1248 >>Aceite O Diplomata Desaparecido
    .target Elling Trias
step << Priest/Paladin
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Human Paladin
    .goto StormwindClassic,38.7,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazin Tenorm|r
    .turnin 1787 >>Entregue Tomo de Divindade
    .target Gazin Tenorm
    .accept 1788 >>Aceite Tomo de Divindade
step << Human Paladin
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Benedito Brião|r
    .turnin 1788 >>Entregue Tomo de Divindade << Human
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto StormwindClassic,38.82,31.27,10,0 << !Human
    .goto StormwindClassic,38.67,32.82
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
step
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    >>|cRXP_WARN_Se você encontrou |T133741:0|t[|cRXP_LOOT_An Old History Livro|r] você pode entregá-lo|r
    .accept 337 >>Aceite An Old History Livro
    .turnin 337 >>Entregue An Old History Livro
    .use 2794 -- An Old History Book
    .itemcount 2794,1 -- An Old History Book (1)
    .target Milton Sheaf
step
    .isQuestTurnedIn 337
    .goto Stormwind City,74.182,7.465
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milton Resma|r
    .accept 538 >>Aceite Southshore
    .target Milton Sheaf
step << skip
    #sticky
	#completewith next
    .goto StormwindClassic,60.5,12.3,40,0
    .goto StormwindClassic,60.5,12.3,0
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>https://www.youtube.com/watch?v=M_tXROi9nMQ >> Clique aqui para pular o logout dentro do bonde
    .zone Ironforge >>Pegue o bonde para Ironforge
    >>Teleporte para Altaforja em vez disso se você tem esse feitiço treinado << Mage
    .zoneskip Wetlands
step
    .goto Ironforge,69.540,50.325
    .target Tinkmaster Overspark
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre-faz-tudo Superchispa|r
    .turnin 2923 >>Entregue Mestre-faz-tudo Superchispa
step << Mage
    .goto Ironforge,25.496,7.080
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milstaff Intempestivus|r
    .trainer >>Treine [Teleporte: Altaforja]
    .target Milstaff Stormeye

step << skip
--Hunter/Warrior/Paladin/Shaman/Rogue
	.goto Ironforge,61.34,89.25
	.train 197 >>Treine Machados de Duas Mãos << !Rogue
	.train 266 >>Treine Armas de Fogo << Hunter/Warrior/Rogue
    .train 199 >>Treine Maças de Duas Mãos << Warrior/Shaman
    .train 198 >>Aprenda Maças de Uma Mão << Rogue/Shaman
    .train 44 >>Treine Machados << Warrior wotlk/Shaman/Rogue wotlk
    .zoneskip Wetlands

step << Dwarf Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .accept 2999 >>Aceite Tomo of Divindade
    .trainer >>Treine suas magias de classe
step << Dwarf Paladin
    #completewith next
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10 >>Vá em direção a |cRXP_FRIENDLY_Tiza Beloforja|r para cima
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 2999 >>Entregue Tomo of Divindade
    .accept 1645 >>Aceite Tomo de Divindade
    .turnin 1645 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    .use 6916>>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1646 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 1646 >>Entregue Tomo de Divindade
    .accept 1647 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,21.643,36.199,20,0
    .goto Ironforge,23.401,62.898,20,0
    .goto Ironforge,32.057,78.286,20,0
    .goto Ironforge,47.132,84.932,20,0
    .goto Ironforge,26.719,69.884
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_João Turner|r
    >>|cRXP_FRIENDLY_John Turner|r patrulha o anel externo de Altaforja perto da Casa de Leilões
    .turnin 1647 >>Entregue Tomo de Divindade
    .accept 1648 >>Aceite Tomo de Divindade
    .turnin 1648 >>Entregue Tomo de Divindade
    .accept 1778 >>Aceite Tomo de Divindade
    .unitscan John Turner
step << Dwarf Paladin
    .goto Ironforge,25.27,1.53,9,0
    .goto Ironforge,24.35,11.90,10,0
    .goto Ironforge,27.628,12.183
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r para cima
    .target Tiza Battleforge
    .turnin 1778 >>Entregue Tomo de Divindade
    .accept 1779 >>Aceite Tomo de Divindade
step << Dwarf Paladin
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r
    .target Muiredon Battleforge
    .turnin 1779 >>Entregue Tomo de Divindade
    .accept 1783 >>Aceite Tomo de Divindade
step << !NightElf !Draenei !Mage
    .goto Ironforge,18.10,51.60
    .isQuestAvailable 1785
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Aguardente|r
    .home Ironforge >>Ironforge >> Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
    .itemcount 8563,<1 << Gnome !Warlock--Red Mechanostrider
    .itemcount 8595,<1 << Gnome !Warlock --Blue Mechanostrider
    .itemcount 13321,<1 << Gnome !Warlock --Green Mechanostrider
    .itemcount 13322,<1 << Gnome !Warlock --Unpainted Mechanostrider
    .itemcount 5864,<1 << Dwarf -- Gray Ram
    .itemcount 5872,<1 << Dwarf -- Brown Ram
    .itemcount 5873,<1 << Dwarf -- White Ram
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >>Saia de Altaforja
step << Dwarf Paladin
    #completewith SymbolofLife
    .goto Dun Morogh,78.321,58.088
    .cast 8593 >>Use o [Símbolo da Vida] em |cRXP_FRIENDLY_Narm Faulk|r
	.use 6866
	.target Narm Faulk
step << Dwarf Paladin
    #label SymbolofLife
    .goto Dun Morogh,78.321,58.088
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Narm Faulk|r
    .use 6866
    .turnin 1783 >>Entregue Tomo de Divindade
    .accept 1784 >>Aceite Tomo de Divindade
    .target Narm Faulk
step << Dwarf Paladin
    .goto Dun Morogh,77.3,60.5,20,0
    .goto Dun Morogh,77.83,61.78
    >>Mate os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os para o |cRXP_LOOT_Dark Ferro Script|r
    .complete 1784,1 --Dark Iron Script (1)
    .mob Dark Iron Spy
step << Gnome !Warlock -- checking if gnomes can get mount
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Binjy Penapita|r e |cRXP_FRIENDLY_Milli Penapita|r
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Dun Morogh,49.148,48.126
    .vendor >>|cRXP_BUY_Compre um|r |T132247:0|t[|cFF0070FFMecanostruz|r]
    .goto Dun Morogh,49.123,47.956
    .xp <30,1
    .money <38
    .target Binjy Featherwhistle
    .target Milli Featherwhistle
    .itemcount 8563,<1 --Red Mechanostrider
    .itemcount 8595,<1 --Blue Mechanostrider
    .itemcount 13321,<1 --Green Mechanostrider
    .itemcount 13322,<1 --Unpainted Mechanostrider
    .zoneskip Dun Morogh,1
step << Dwarf !Paladin -- checking if dwarfs can get mount
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Veron Ambarmanso|r e |cRXP_FRIENDLY_Ultham Chifrerro|r
    .vendor >>|cRXP_BUY_Compre um|r |T132248:0|t[|cFF0070FFHarrison Jones|r]
    .goto Dun Morogh,63.467,50.557
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Dun Morogh,63.944,50.095
    .xp <30,1
    .money <38
    .target Veron Amberstill
    .target Ultham Ironhorn
    .itemcount 5864,<1 -- Gray Ram
    .itemcount 5872,<1 -- Brown Ram
    .itemcount 5873,<1 -- White Ram
    .zoneskip Dun Morogh,1
step << Dwarf/Gnome !Warlock
	#completewith TurnInScript
    .hs >>Voe para Ironforge
    .zoneskip Ironforge
    .bindlocation 1537,1
step << Dwarf Paladin
    #completewith TurnInScript
    .goto Ironforge,25.27,1.53,6,0
    .goto Ironforge,24.35,11.90,10 >>Suba em direção a |cRXP_FRIENDLY_Muiredon|r
step << Dwarf Paladin
    #label TurnInScript
    .goto Ironforge,23.539,8.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muiredon Beloforja|r
    .turnin 1784 >>Entregue Tomo de Divindade
    .accept 1785 >>Aceite Tomo de Divindade
    .target Muiredon Battleforge
step << Dwarf Paladin
    .goto Ironforge,27.63,12.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tiza Beloforja|r
    .turnin 1785 >>Entregue Tomo de Divindade
    .target Tiza Battleforge
step
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Wetlands>>Voe para Pantanal
    .target Gryth Thurden
    .zoneskip Wetlands
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
<< Alliance
#version 7
#group RestedXP Guia TBC (A)
#subgroup RestedXP Aliança 20-32
#name 30-32 Hillsbrad
#next 32-33 Cintilante Flats
#xprate >1.49

step
    #optional
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .accept 288 >>Aceite A Terceira Frota
step
    #optional
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    >>|cRXP_BUY_Compre um|r [Jarra de Hidromel Enânico]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    .target Innkeeper Helbrek
    .home >>Defina sua Pedra de Regresso no Porto de Menethil
    .bindlocation 2104
step
    .goto Wetlands,10.585,60.592
    .target Glorin Steelbrow
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glorin Testaço|r
    .turnin 270 >>Entregue A Esquadra Naufragada
    .accept 321 >>Aceite Ferro da Forja de Luz
step
    #completewith next
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mikhail|r
	>>|cRXP_WARN_Aceitar esta missão fará |cRXP_ENEMY_Tapoke Jahn, o Fino|r, junto à entrada da Estalagem|r |T132320:0|t[Furtividade], |cRXP_WARN_fugir para fora|r
    .turnin 1248 >>Entregue O Diplomata Desaparecido
    .accept 1249,1 >>Aceite O Diplomata Desaparecido
    .target Mikhail
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.795,59.616
    >>|cRXP_WARN_Corra para fora rapidamente!|r
    >>|cRXP_WARN_Derrote |cRXP_ENEMY_Tapoke Jahn, o Fino|r. |cRXP_ENEMY_Amigo do Fino|r fugirá assim que |cRXP_ENEMY_Tapoke Jahn, o Fino|r se render|r
    >>|cRXP_WARN_Use qualquer Controle de Multidão (CC) contra |cRXP_ENEMY_Amigo do Fino|r se necessário|r
    .complete 1249,1 --1/1 Defeat Tapoke Jahn
    .mob Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mikhail|r
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .turnin 1249 >>Entregue O Diplomata Desaparecido
    .target Mikhail
step
    .goto Wetlands,10.545,60.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tapoke Jahn, o Fino|r
    .accept 1250 >>Aceite O Diplomata Desaparecido
    .target Tapoke "Slim" Jahn
step
    .goto Wetlands,10.599,60.769
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mikhail|r
    .turnin 1250 >>Entregue O Diplomata Desaparecido
    .accept 1264 >>Aceite O Diplomata Desaparecido
    .target Mikhail
step
    .goto Wetlands,8.388,61.752
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vincent Hyal|r
    .turnin 1301 >>Entregue [DEPRECATED][DEPRECATED]James Hyal
    .accept 1302 >>Aceite [DEPRECATED]James Hyal
    .target Vincent Hyal
step
    #optional
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .turnin 288 >>Entregue A Terceira Frota
step
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .accept 289 >>Aceite A Tripulação Amaldiçoada
step
    .goto Wetlands,11.796,57.991
    .target Sida
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cida|r
    .accept 470 >>Aceite Escavando a Gosma
step
    .goto Wetlands,10.84,55.89
    .target Harlo Barnaby
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harlo Barnabé|r no andar de cima
    .accept 472 >>Aceite Queda of Dun Modr
step
    .goto Wetlands,9.861,57.486
    .target Captain Stoutfist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Punhoforte|r no andar de cima
    .accept 464 >>Aceite Guerra Banners
step << NightElf !Druid
    #completewith next
    .goto Wetlands,4.560,57.160
    .zone Darkshore >>Pegue o barco para Costa Negra
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
    .xp <30,1
    .money <38
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << NightElf !Druid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lelanai|r e |cRXP_FRIENDLY_Jartsam|r
    .vendor >>|cRXP_BUY_Compre um|r |T132267:0|t[|cFF0070FFSabre-de-gelo|r] |cRXP_BUY_ou|r |T132225:0|t[|cFF0070FFSabre-da-noite|r]
    .goto Darnassus,38.283,15.365
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto Darnassus,38.694,15.857
    .xp <30,1
    .money <38
    .target Lelanai
    .target Jartsam
    .itemcount 8629,<1 -- Striped Nightsaber
    .itemcount 8631,<1 -- Striped Frostsaber
    .itemcount 8632,<1 -- Spotted Frostsaber
step << NightElf !Druid
    #optional
	.hs >>Use a Pedra do Regresso para o Porto de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
step << NightElf !Druid
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
    .zoneskip Wetlands
step << NightElf !Druid
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
step << Draenei !Paladin
    #completewith DraeneiMount
    .goto Wetlands,4.560,57.160
    .zone Darkshore >>Pegue o barco para Costa Negra
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Draenei !Paladin
    #completewith DraeneiMount << !Shaman
    .goto Darkshore,30.74,40.99
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
    .xp <30,1 << !Shaman
    .money <38 << !Shaman
    .itemcount 28481,<1 << !Shaman -- Brown Elekk
    .itemcount 29743,<1 << !Shaman -- Purple Elekk
    .itemcount 29744,<1 << !Shaman -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,42.29,71.54
    .zone The Exodar >>Entre em The Exodar pela entrada traseira
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>Vá para o |cRXP_FRIENDLY_Clarividente Nobambo|r subindo a rampa
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Clarividente Nobambo|r
    >>|cRXP_FRIENDLY_Clarividente Nobambo|r |cRXP_WARN_patrulha levemente|r
    .target Farseer Nobundo
    .turnin 10491 >>Entregue Call of Ar - Missão - Missão - Missão
    .accept 9552 >>Aceite Call of Ar - Missão - Missão
step << Shaman
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>Saia de Exodar
    .zoneskip The Exodar,1
step << Draenei !Paladin
    #label DraeneiMount
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toralius, o Tratador|r e |cRXP_FRIENDLY_Aalun|r
    .train 33388 >>Aprenda |T136103:0|t[Aprendiz de Montaria]
    .goto The Exodar,81.335,52.625
    .vendor >>|cRXP_BUY_Compre um|r |T132255:0|t[|cFF0070FFElekk|r]
    .goto The Exodar,82.248,50.202
    .xp <30,1
    .money <38
    .target Torallius the Pack Handler
    .target Aalun
    .itemcount 28481,<1 -- Brown Elekk
    .itemcount 29743,<1 -- Purple Elekk
    .itemcount 29744,<1 -- Gray Elekk
step << Shaman
    #completewith next
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >>Voe para o Entreposto Rubro
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Aquos|r submerso
    .turnin 9504 >>Entregue Clamor da água
    .accept 9508 >>Aceite Chamado da Água
    .target Aqueous
step << Shaman
    #completewith next
    .goto Bloodmyst Isle,45.63,32.36,80,0
    .goto Bloodmyst Isle,25.968,40.854
    .cast 30408 >>Clique em |cRXP_PICK_Barril de Nojeira|r para chamar |cRXP_ENEMY_Tel'athion, o Impuro|r
    .timer 3,Chamado da Água RP
step << Shaman
    .goto Bloodmyst Isle,25.942,40.969
	>>Mate |cRXP_ENEMY_Tel'athion, o Impuro|r. Saque a |cRXP_LOOT_Cabeça|r dele
    .complete 9508,1 --Collect Head of Tel'athion (x1)
    .mob Tel'athion the Impure
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Aquos|r submerso
    .turnin 9508 >>Entregue Clamor da água
    .accept 9509 >>Aceite Chamado da Água
    .target Aqueous
step << Shaman
	.deathskip >>Afogue-se intencionalmente. Morra e renasça junto ao |cRXP_FRIENDLY_Espírito Anjo da Cura|r
    .subzoneskip 3596,1
step << Shaman
    .isOnQuest 9552,9509
    .subzone 3584 >>Viaje até Vigília Rubra
step << Shaman
    .isOnQuest 9552,9509
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
step << Shaman
    .isOnQuest 9552,9509
    .goto The Exodar,70.62,30.55,25,0
    .goto Azuremyst Isle,31.26,26.85,100,0
    .goto Azuremyst Isle,25.72,27.75,15 >>Siga de perto a seta ao redor da parte externa de The Exodar para chegar à Trajetória Wildwind
step << Shaman
    .isOnQuest 9552,9509
    .goto Azuremyst Isle,20.23,27.78,15,0
    .goto Azuremyst Isle,18.19,31.65,20,0
    .goto Azuremyst Isle,19.29,35.80,15,0
    .goto Azuremyst Isle,20.44,31.92,15,0
    .goto Azuremyst Isle,21.95,36.96,15,0
    .goto Azuremyst Isle,23.55,36.84,15,0
    .goto Azuremyst Isle,24.21,35.65,10 >>Continue seguindo o caminho pela Trajetória Wildwind
    .subzoneskip 3581,1
step << Shaman
    .goto Azuremyst Isle,24.899,35.925
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Velaada|r
    .turnin 9552 >>Entregue Call of Ar - Missão - Missão - Missão
    .accept 9553 >>Aceite Call of Ar - Missão - Missão
    .target Velaada
step << Shaman
    .goto Azuremyst Isle,22.325,32.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Susurrus|r
    .turnin 9553 >>Entregue Call of Ar - Missão - Missão - Missão
    .accept 9554 >>Aceite Call of Ar - Missão - Missão
    .target Susurrus
step << Shaman
    .gossip 17435,0 >>Converse com |cRXP_FRIENDLY_Susurrus|r novamente para voltar a The Exodar
    .timer 89,Call of Ar - Missão RP
    .skipgossip
    .subzoneskip 3581,1
    .target Susurrus
step << Shaman
    #completewith next
    .goto The Exodar,71.12,51.41,15 >>Desça em Exodar novamente
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarividente Nobambo|r
    >>|cRXP_FRIENDLY_Clarividente Nobambo|r |cRXP_WARN_patrulha levemente|r
    >>|cRXP_WARN_Você ganhará o|r |T136022:0|t[Vento Veloz] |cRXP_WARN_bônus por 1 hora após entregar esta missão, aumentando sua velocidade de movimento em 40% e velocidade de ataque em 30%|r
    >>|cRXP_WARN_Não fique AFK enquanto você tiver esse buff|r
    .target Farseer Nobundo
    .turnin 9509 >>Entregue Clamor da água
    .turnin 9554 >>Entregue Call of Ar - Missão - Missão - Missão
step << Draenei
    #optional
	.hs >>Use a Pedra do Regresso para o Porto de Menethil
    .cooldown item,6948,>2,1
    .zoneskip Wetlands
    .bindlocation 2104,1
step << Shaman
    .cast 556 >>|T136010:0|t[Revocação Astral] para Terras Alagadas
    .cooldown spell,556,>0,1
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>Pegue o barco para Costa Negra
    .zoneskip Wetlands
step << Draenei
    #optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Wetlands
step
    >>Clique em |cRXP_PICK_Baú Encharcado|r
    .goto Wetlands,12.10,64.19
    .turnin 321 >>Entregue Ferro da Forja de Luz
    .accept 324 >>Aceite Os Lingotes Perdidos
    .isQuestTurnedIn 270
step
    #loop
    .goto Wetlands,12.6,65.2,0
    .goto Wetlands,10.2,71.0,0
    .goto Wetlands,7.2,72.6,0
    .goto Wetlands,12.6,65.2,60,0
    .goto Wetlands,10.2,71.0,60,0
    .goto Wetlands,7.2,72.6,60,0
    >>Abate os |cRXP_ENEMY_Bluegill Raiders|r. Saqueie-os para |cRXP_LOOT_Ingots|r
    .complete 324,1 --5/5 Lightforge Ingot
    .mob Bluegill Raider
    .isQuestTurnedIn 270
step
    .goto Wetlands,10.58,60.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Glorin Testaço|r
    .turnin 324 >>Entregue Os Lingotes Perdidos
    .accept 322 >>Aceite Braço Abençoado
    .target Glorin Steelbrow
    .isQuestTurnedIn 270
step
    .isQuestTurnedIn 279
    .goto Wetlands,13.513,41.384
    >>Clique no |cRXP_PICK_Damaged Caixote|r no chão
    .turnin 281 >>Entregue O Que É Nosso de Direito
    .accept 284 >>Aceite A Busca Continua
step
    .isQuestTurnedIn 281
    .goto Wetlands,13.608,38.214
    >>Clique em |cRXP_PICK_Barril Selado|r no chão
    .turnin 284 >>Entregue A Busca Continua
    .accept 285 >>Aceite Vasculhe Mais Cabanas
step
    .isQuestTurnedIn 284
    .goto Wetlands,13.945,34.809
    >>Clique em |cRXP_PICK_Barril Semi-enterrado|r no chão
    .turnin 285 >>Entregue Vasculhe Mais Cabanas
    .accept 286 >>Aceite Devolver a Estatueta
step
    .goto Wetlands,14.00,29.80
    .goto Wetlands,15.0,24.0
    >>Abata os |cRXP_ENEMY_Cursed Sailors|r, os |cRXP_ENEMY_Cursed Marines|r e o |cRXP_ENEMY_Primeiro Oficial Expedito|r. Saqueie-o para sua |cRXP_LOOT_Snuffbox|r
    .complete 289,1 -- Cursed Sailor slain (13)
    .mob +Cursed Sailor
    .complete 289,2 -- Cursed Marine slain (5)
    .mob +Cursed Marine
    .complete 289,3 -- Snellig's Snuffbox
    .mob +First Mate Snellig
step
    .goto Wetlands,44.25,25.61
    >>Abata os |cRXP_ENEMY_Crimson Oozes|r, os |cRXP_ENEMY_Monstrous Oozes|r e os |cRXP_ENEMY_Black Oozes|r. Saqueie-os para |cRXP_LOOT_Bolsa da Cida|r
    .complete 470,1 -- Sida's Bag (1)
    .mob Crimson Ooze
    .mob Monstrous Ooze
    .mob Black Ooze








step
    .goto Wetlands,49.905,18.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhag Garmason|r
    .accept 631 >>Aceite A Ponte de Thandol
    .target Rhag Garmason
step
    .goto Wetlands,49.803,18.260
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trançalonga, o Austero|r
    .turnin 472 >>Entregue Queda de Dun Modr
    .accept 304 >>Aceite Uma Tarefa Sombria
    .target Longbraid the Grim
step
    .goto Wetlands,49.667,18.230
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rocio Garmason|r
    .accept 303 >>Aceite A Guerra dos Ferro-Negro
    .target Motley Garmason
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Anões Ferro Negro|r, os |cRXP_ENEMY_Dark Ferro Tunnelers|r, os |cRXP_ENEMY_Dark Ferro Saboteurs|r e os |cRXP_ENEMY_Dark Ferro Demolitionists|r
    >>|cRXP_ENEMY_Sabotadores Ferro-Negro|r |cRXP_WARN_lançarão|r |T135826:0|t[Explodir Detonador] |cRXP_WARN_quando morrerem, o que causa dano de Fogo em proximidade|r
    >>|cRXP_ENEMY_Demolidores Ferro-Negro|r |cRXP_WARN_lançarão continuamente|r |T135826:0|t[Bombas] |cRXP_WARN_de longe|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
--  .goto Wetlands,46.6,18.6,0
--  .goto Wetlands,47.4,15.0,0
--  .goto Wetlands,62.48,28.41,40,0
--  .goto Wetlands,46.6,18.6,0,40,0
--  .goto Wetlands,47.4,15.0,0,40,0
    .goto Wetlands,62.48,28.41
    >>Mate |cRXP_ENEMY_Balgaras, o Asqueroso|r. Saqueie-o por sua |cRXP_LOOT_Ear|r
    .complete 304,1 -- Ear of Balgaras
    .mob Balgaras the Foul
step
    #loop
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,61.83,26.27,0
    .goto Wetlands,60.01,24.35,0
    .goto Wetlands,62.48,28.41,0
    .goto Wetlands,62.48,28.41,40,0
    .goto Wetlands,61.83,26.27,40,0
    .goto Wetlands,60.01,24.35,40,0
    .goto Wetlands,62.48,28.41,40,0
    >>Mate os |cRXP_ENEMY_Anões Ferro Negro|r, os |cRXP_ENEMY_Dark Ferro Tunnelers|r, os |cRXP_ENEMY_Dark Ferro Saboteurs|r e os |cRXP_ENEMY_Dark Ferro Demolitionists|r
    >>|cRXP_ENEMY_Sabotadores Ferro-Negro|r |cRXP_WARN_lançarão|r |T135826:0|t[Explodir Detonador] |cRXP_WARN_quando morrerem, o que causa dano de Fogo em proximidade|r
    >>|cRXP_ENEMY_Demolidores Ferro-Negro|r |cRXP_WARN_lançarão continuamente|r |T135826:0|t[Bombas] |cRXP_WARN_de longe|r
    .complete 303,1 -- Dark Iron Dwarf slain (15)
    .mob +Dark Iron Dwarf
    .complete 303,2 -- Dark Iron Tunneler slain (5)
    .mob +Dark Iron Tunneler
    .complete 303,3 -- Dark Iron Saboteur slain (5)
    .mob +Dark Iron Saboteur
    .complete 303,4 -- Dark Iron Demolitionist slain (5)
    .mob +Dark Iron Demolitionist
step
    .goto Wetlands,49.803,18.257
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trançalonga, o Austero|r
    .turnin 304 >>Entregue Uma Tarefa Sombria
    .target Longbraid the Grim
    .isQuestComplete 304
step
    .goto Wetlands,49.665,18.231
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rocio Garmason|r
    .turnin 303 >>Entregue A Guerra dos Ferro-Negro
    .target Motley Garmason
    .isQuestComplete 303
step
    .goto Wetlands,51.481,8.111,15,0
    .goto Wetlands,51.115,8.156,15,0
    .goto Wetlands,51.287,7.953
    >>Desça pelas escadas em espiral na ponte
    >>Clique em |cRXP_PICK_Cadáver de Ebenezer Rustlocke|r
    .turnin 631 >>Entregue A Ponte de Thandol
    .accept 632 >>Aceite A Ponte de Thandol
step
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 632 >>Entregue A Ponte de Thandol
    .accept 633 >>Aceite A Ponte de Thandol
    .target Rhag Garmason
step
    .goto Arathi Highlands,43.240,92.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruço MacKreel|r
    >>|cRXP_WARN_Pule primeiro na corrente invisível, depois na viga quebrada da ponte. Todas as classes conseguem fazer este salto. Se você não conseguir, pule este passo|r
    .accept 647 >>Aceite Pinga de Mackreel
    .target Foggy MacKreel
    .link https://www.twitch.tv/videos/646111384 >>https://www.twitch.tv/videos/646111384 >>|cRXP_WARN_Clique aqui para um guia em vídeo|r
step
    .goto Arathi Highlands,44.28,92.877
    >>Mergulhe debaixo d'água
    >>Abra a |cRXP_PICK_Carta Encharcada|r. Saqueie-a para obter o |T133469:0|t[|cRXP_LOOT_Envelope Encharcado|r]
    >>|cRXP_WARN_Use o |T133469:0|t[|cRXP_LOOT_Waterlogged Envolver|r] para iniciar a missão|r
    .collect 4433,1,637
    .use 4433
    .accept 637 >>Aceite Carta de Sully Balloo
step
    #completewith PleaTurnin
    .goto Arathi Highlands,52.5,90.4,30 >>Nade para o leste em direção à rampa aqui
step
    .goto Arathi Highlands,48.789,88.058
    >>Clique no |cRXP_PICK_Depósito de Explosivos|r
    .complete 633,1 --1/1 Cache of Explosives Destroyed
step
    #label PleaTurnin
    .goto Wetlands,49.908,18.233
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rhag Garmason|r
    .turnin 633 >>Entregue A Ponte de Thandol
    .accept 634 >>Aceite Súplica à Aliança
    .target Rhag Garmason
step
    #completewith next
    .goto Arathi Highlands,45.83,47.55,150 >>Vá para Refuge Ponto
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capitã Nélia|r
    .goto Arathi Highlands,45.83,47.55
    .turnin 634 >>Entregue Súplica à Aliança
    .target Captain Nials
step
    .isOnQuest 690
    .goto Arathi Highlands,46.652,47.010
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rodapeh|r
    .turnin 690 >>Entregue Malin's Request
    .target Skuerto
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cedrik Prosa|r
    .goto Arathi Highlands,45.73,46.09
    .fp Arathi >>Aprenda a rota de voo para Planalto Arathi
    .target Cedrik Prose
    .zoneskip Arathi Highlands,1
step
    .goto Hillsbrad Foothills,50.71,58.76,15,0
    .goto Hillsbrad Foothills,52.09,58.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Mestre-cervejeiro Podrágua|r no porão
    >>|cRXP_WARN_Se você falhar esta missão cronometrada, abandone-a e pule este passo|r
    .turnin 647 >>Entregue Pinga de Mackreel
    .target Brewmeister Bilger
    .isOnQuest 647
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .accept 536 >>Aceite [DEPRECATED] Descendo a Costa
    .target Lieutenant Farren Orinelle
step
    .isOnQuest 538
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Historiador Dibbs|r
    .turnin 538 >>Entregue em Costa Sul
    .target Loremaster Dibbs
step
    #completewith SSFP
    .subzone 271 >>Viaje para Costa Sul
step << Hunter
    #completewith next
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Uóxton|r
    .goto Hillsbrad Foothills,50.415,58.803
    .stable >>Estabule seu pet. Você domará um |cRXP_ENEMY_Rastejamusgo Anciã|r em breve
    .target Wesley
step << Hunter
    .goto Hillsbrad Foothills,56.6,53.8
    >>|cRXP_WARN_Use|r |T132164:0|t[Domar Fera] |cRXP_WARN_em um |cRXP_ENEMY_Rastejamusgo Anciã|r para domesticá-lo|r -- .tame 2348
    .train 17264 >>|cRXP_WARN_Ataque inimigos com ele para aprender|r |T132278:0|t[Morder (Rank 4)]
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
	.unitscan Elder Moss Creeper
step
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    >>Mate os |cRXP_ENEMY_Torn Fin Tidehunters|r e os |cRXP_ENEMY_Torn Fin Oracles|r
    .complete 536,1 --10/10 Torn Fin Tidehunter slain
    .mob +Torn Fin Tidehunter
    .complete 536,2 --10/10 Torn Fin Oracle slain
    .mob +Torn Fin Oracle
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .turnin 536 >>Entregue [DEPRECATED] Descendo a Costa
    .accept 559 >>Aceite [DEPRECATED] As Provas de Farren
    .target Lieutenant Farren Orinelle
step
    #loop
    .goto Hillsbrad Foothills,48.8,64.4,50,0
    .goto Hillsbrad Foothills,45.8,63.6,50,0
    .goto Hillsbrad Foothills,44.14,67.45,50,0
    .goto Hillsbrad Foothills,40.51,69.30,50,0
    .goto Hillsbrad Foothills,36.09,69.50,50,0
    .goto Hillsbrad Foothills,44.69,67.24,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    .goto Hillsbrad Foothills,31.47,72.51,50,0
    .goto Hillsbrad Foothills,28.81,73.18,50,0
    .goto Hillsbrad Foothills,24.84,70.21,50,0
    .goto Hillsbrad Foothills,33.19,69.10,50,0
    >>Mate os |cRXP_ENEMY_Torn Fin Tidehunters|r, os |cRXP_ENEMY_Torn Fin Oracles|r, os |cRXP_ENEMY_Torn Fin Coastrunners|r e os |cRXP_ENEMY_Torn Fin Muckdwellers|r. Saqueie-os para obter |cRXP_LOOT_Cabeças|r
    .complete 559,1 --10/10 Murloc Head
    .mob Torn Fin Muckdweller
    .mob Torn Fin Coastrunner
    .mob Torn Fin Tidehunter
    .mob Torn Fin Oracle
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .turnin 559 >>Entregue [DEPRECATED] [DEPRECATED] Farren's Proof
    .accept 560 >>Aceite [DEPRECATED] As Provas de Farren
    .target Lieutenant Farren Orinelle
step
    .goto Hillsbrad Foothills,49.473,58.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Trilharrubra|r
    .turnin 560 >>Entregue [DEPRECATED] [DEPRECATED] Farren's Proof
    .accept 561 >>Aceite [DEPRECATED] As Provas de Farren
    .target Marshal Redpath
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .turnin 561 >>Entregue [DEPRECATED] [DEPRECATED] Farren's Proof
    .accept 562 >>Aceite [DEPRECATED] Rumo a Ventobravo!
    .target Lieutenant Farren Orinelle
step
    #loop
    .goto Hillsbrad Foothills,52.97,64.67,0
    .goto Hillsbrad Foothills,55.32,63.35,0
    .goto Hillsbrad Foothills,58.35,66.37,0
    .goto Hillsbrad Foothills,59.55,73.43,0
    .goto Hillsbrad Foothills,56.97,67.01,0
    .goto Hillsbrad Foothills,52.97,64.67,60,0
    .goto Hillsbrad Foothills,55.32,63.35,60,0
    .goto Hillsbrad Foothills,58.35,66.37,60,0
    .goto Hillsbrad Foothills,59.55,73.43,60,0
    .goto Hillsbrad Foothills,56.97,67.01,60,0
    >>Mate os |cRXP_ENEMY_Daggerspine Shorehunters|r e os |cRXP_ENEMY_Daggerspine Sirens|r
    >>|cRXP_WARN_Você pode precisar nadar para a água para obtê-los|r
    .complete 562,1 --10/10 Daggerspine Shorehunter
    .mob +Daggerspine Shorehunter
    .complete 562,2 --10/10 Daggerspine Siren
    .mob +Daggerspine Siren
step
    .goto Hillsbrad Foothills,51.465,58.386
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Fárrio Orinelle|r
    .turnin 562 >>Entregue [DEPRECATED] Rumo a Ventobravo!
    .accept 563 >>Aceite [DEPRECATED] [DEPRECATED] [DEPRECATED] Reassignment
    .target Lieutenant Farren Orinelle
step
    .goto Hillsbrad Foothills,50.986,58.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Huraan|r
    .accept 9435 >>Aceite [DEPRECATED] Cristais Desaparecidos
    .target Huraan
step
    #label SSFP
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fp Southshore >>Aprenda a rota de voo para Southshore
    .target Darla Harris
step
    .goto Hillsbrad Foothills,55.572,35.218
    >>Abra o |cRXP_PICK_Caixote Fechado|r. Saqueie-o para obter o |cRXP_LOOT_Carregamento de Cristais Raros|r
    .complete 9435,1 --Collect Shipment of Rare Crystals (x1)
step
    .goto Alterac Mountains,58.317,67.951
    >>Clique nos |cRXP_PICK_Documentos do Sindicato|r na mesa
    .accept 510 >>Aceite [DEPRECATED] [DEPRECATED] [DEPRECATED] Foreboding Plans
    .accept 511 >>Aceite Carta Criptografada
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bibilfaz Penapita|r
    .goto Western Plaguelands,42.924,85.061
    .fp Chillwind>>Aprenda a rota de voo para as Terras Pestilentas Ocidentais
    .fly Southshore>>Voe para Costa Sul
    .target Bibilfaz Featherwhistle
step
    .goto Hillsbrad Foothills,50.570,57.093
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Historiador Dibbs|r
    .turnin 511 >>Entregue Carta Criptografada
    .accept 514 >>Aceite [DEPRECATED] Carta para Stormpike
    .target Loremaster Dibbs
step
    .goto Hillsbrad Foothills,48.145,59.121
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Magistrado Henrique Maleb|r
    .turnin 510 >>Entregue [DEPRECATED] [DEPRECATED] [DEPRECATED] Foreboding Plans
    .target Magistrate Henry Maleb
step
    .goto Hillsbrad Foothills,50.986,58.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Huraan|r
    .turnin 9435 >>Entregue [DEPRECATED] Cristais Desaparecidos
    .target Huraan
step << Draenei/NightElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >>Voe para Altaforja
    .target Darla Harris
step << Shaman
    .goto Ironforge,55.436,28.942
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarividente Javad|r
    .trainer >>Treine suas magias de classe
    .target Farseer Javad
step << !Draenei !NightElf !Mage
    #completewith next
    .hs >>Voe para Ironforge
step << Mage
    #optional
    #completewith next
    .cast 3562 >>|cRXP_WARN_Use|r |T135757:0|t[Teleporte: Altaforja]
    .usespell 3562
    .zoneskip Ironforge
step << Mage
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
step
    .goto Ironforge,63.50,67.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Caxias|r
    .turnin 637 >>Entregue Carta de Sully Balloo
    .timer 17,Carta de Sully Balloo RP
    .accept 683 >>Aceite Apelo de Sara Caxias
    .target Sara Balloo
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regnus Granitrondo|r
    .goto Ironforge,69.872,82.890
    .trainer >>Treine suas magias de classe
    .target Regnus Thundergranite
step << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bélia Granitrondo|r
    .goto Ironforge,70.856,85.839
    .trainer >>Treine as habilidades do seu mascote
    .target Belia Thundergranite
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .goto Ironforge,65.905,88.405
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
step
    .isOnQuest 514
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Prospector Lançatroz|r
    .goto Ironforge,74.645,11.742
    .turnin 514 >>Entregue Carta para Stormpike
    .target Prospector Stormpike
step
    .goto Ironforge,39.09,56.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Rei Magni Barbabronze|r
    .turnin 683 >>Entregue Apelo de Sara Caxias
    .accept 686 >>Aceite Homenagem Real
    .target King Magni Bronzebeard
step
    #label KingsTribute
    .goto Ironforge,39.03,88.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Grão-alvanel Oscarmeyer|r
    .turnin 686 >>Entregue Homenagem Real
    .target Grand Mason Marblesten
step << Priest
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r
    .target Brandur Ironhammer
    .goto Ironforge,23.131,6.143
    .trainer >>Treine suas magias de classe
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r
    .goto Ironforge,51.495,15.330
    .trainer >>Treine suas magias de classe
    .target Fenthwick
step
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Wetlands>>Voe para Pantanal
    .target Gryth Thurden
    .zoneskip Wetlands
step
    .goto Wetlands,10.89,59.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .turnin 289 >>Entregue A Tripulação Amaldiçoada
    .target First Mate Fitzsimmons
]])
