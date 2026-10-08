if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guia de Sobrevivência (A)
#subgroup RXP Sobrevivência Guia 1-20
#name 12-14 Costa Negra
#displayname 11-14 Costa Negra << NightElf
#next 14-20 Névoa Rubra

step
#optional
    .isOnQuest 291
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Barin Itarrubra|r
    .target Senator Barin Redstone
    .goto Ironforge,43.64,50.63,20,0
    .goto Ironforge,39.550,57.490
    .turnin 291 >>Entregue Os Relatórios
step << !NightElf !Draenei
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regnus Granitrondo|r << Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r << Warrior
    .goto Ironforge,51.1,8.7,15,0 << Warlock
    .goto Ironforge,50.343,5.657 << Warlock
    .goto Ironforge,51.495,15.330 << Rogue
    .goto Ironforge,25.207,10.756 << Priest
    .goto Ironforge,27.18,8.60 << Mage
    .goto Ironforge,23.141,6.149 << Paladin
    .goto Ironforge,69.872,82.890 << Hunter
    .goto Ironforge,65.905,88.405 << Warrior
    .trainer >>Treine suas magias de classe
    .target Briarthorn << Warlock
    .target Fenthwick << Rogue
    .target Toldren Deepiron << Priest
    .target Dink << Mage
    .target Brandur Ironhammer << Paladin
    .target Regnus Thundergranite << Hunter
    .target Bilban Tosslespanner << Warrior
    .xp <12,1
    .zoneskip Darkshore
    .zoneskip Wetlands
    .train 705,1 << Warlock-- shadowbolt r3
    .train 1766,1 << Rogue -- kick
    .train 1244,1 << Priest -- fortitude r2
    .train 145,1 << Mage -- fireball r3
    .train 19834,1 << Paladin -- blessing of might r2
    .train 14281,1 << Hunter -- arcane shot r2
    .train 7384,1 << Warrior -- overpower
step << Warlock
    .goto 1455/0,-857.000,-4840.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Aguardente|r
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    #ah
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para elevar sua|r |T133971:0|t[Culinária] |cRXP_BUY_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<1,1 --XX Shows if cooking skill is 1 or above
    .zoneskip Darkshore
    .zoneskip Wetlands
step << !NightElf !Draenei
    .goto Dun Morogh,53.5,34.9
    .zone Dun Morogh>>Saia de Altaforja
    .zoneskip Wetlands
    .zoneskip Darkshore
step << !NightElf !Draenei
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>Vá para o local de skip Dun Morogh → Pantanal
    .zoneskip Wetlands
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,40,0
    .goto Dun Morogh,61.2,42.3,40,0
    .goto Dun Morogh,60.8,40.9,40,0
    .goto Dun Morogh,59.0,39.5,40,0
    .goto Dun Morogh,60.3,38.6,40,0
    .goto Dun Morogh,61.7,38.7,40,0
    .goto Dun Morogh,65.7,21.6,40,0
    .goto Dun Morogh,65.8,12.5,40,0
    .goto Dun Morogh,65.6,10.8,40,0
    .goto Dun Morogh,66.5,10.0,40,0
    .goto Dun Morogh,66.9,8.5,40,0
    .goto Wetlands,20.6,67.2,50,0
    .goto Wetlands,17.7,67.7,40,0
    .goto Wetlands,16.8,65.3,40,0
    .goto Wetlands,15.1,64.0,40,0
    .goto Wetlands,12.1,60.3,40,0
    >>|cRXP_WARN_Vigie o guia de vídeo como referência para como fazer o skip primeiro!|r
    >>|cRXP_WARN_Faça o Deathless Dun Morogh -> Os Pântanos skip|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Crocomoluscos do Pantanal|r e os |cRXP_ENEMY_Murlocs|r ao atravessar a água|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .goto Wetlands,12.1,60.3,80 >>Vá para Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .zoneskip Darkshore
step << !NightElf !Draenei
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto Wetlands,10.761,56.737
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nélio Allen|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Nélio Allen|r não tiver uma|r
	.target Neal Allen
    .bronzetube
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,10.43,61.01,10,0
    .goto Wetlands,10.496,60.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Samor Festivus|r no andar de cima
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item com estoque limitado. Pule este passo se |cRXP_FRIENDLY_Samor Festivus|r não tiver nenhum|r
    .target Samor Festivus
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r
    .fp Wetlands>>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
    .zoneskip Darkshore
step << !NightElf !Draenei
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devin Tremulaurora|r
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Devin Tremulaurora|r não tiver nenhuma|r
    .target Dewin Shimmerdawn
    .zoneskip Darkshore
step << !NightElf !Draenei
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Viaje até a doca para pegar o barco para Auberdine
    .zoneskip Darkshore
step << !NightElf !Draenei
    #optional
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf !Draenei
    #optional
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf !Draenei
    #optional
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf !Draenei
    #optional
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf !Draenei
    #optional
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf !Draenei
    #optional
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf !Draenei
    #optional
    .goto 1437,4.370,56.762
    .zone Darkshore >>Pegue o barco para Costa Negra
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para Costa Negra
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf !Draenei
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >>Pegue o barco para Costa Negra
step << Gnome/Dwarf
    #optional
    #sticky
    .abandon 6392 >>Abandone **Return to Brock**. Você não irá entregar esta missão
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >>Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >>Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional << !NightElf
    #completewith BuzzBox1 << !NightElf
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    >>Compre até 20 [Pargo-da-lama Bocalonga] dele
    .turnin 6342 >>Entregue Voo para Auberdine << NightElf
    .collect 4592,15 --Longjaw Mud Snapper
    .target Laird
step
    #optional
    #completewith next
    .goto Darkshore,36.70,43.78,8 >>Viaje escada acima em direção a |cRXP_FRIENDLY_Xafetim Manigiro|r
step
    .goto 1439,36.976,44.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xafetim Manigiro|r no andar de cima
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step << !Draenei !Warlock
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r
    .home >>Defina sua Pedra de Regresso para Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2118 >>Aceite Terras Pestilentas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Aceite Uma grande ameaça?
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #optional
    #completewith Auber1
    >>Mate |cRXP_ENEMY_Filhote de Florestruz|r e |cRXP_ENEMY_Florestruz|r. Saqueie-os para obter |cRXP_LOOT_Carne de Moa|r
    >>Tenha cuidado |cRXP_ENEMY_Filhote de Florestruz|r [Fugir] com menos de 30% de vida
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1
step << Dwarf Hunter
    #optional
    #completewith DarkshoreEnd
    #loop
    .goto Darkshore,40.75,70.49,0
    .goto Darkshore,40.77,78.56,0
    .goto Darkshore,38.21,73.32,0
    .goto Darkshore,40.75,70.49,40,0
    .goto Darkshore,40.77,78.56,40,0
    .goto Darkshore,38.21,73.32,40,0
    >>|cRXP_WARN_Mande seu ajudante atacar um |cRXP_ENEMY_Ursocardo|r Assim que seu ajudante for atordoado pelo |cRXP_ENEMY_Ursocardo|r abandone seu ajudante e comece a domá-lo|r
    .train 2981 >>Ataque criaturas com ele para aprender [Garra (Grau 2)]
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
    .target Thistle Bear
step
    #sticky
    #label BuzzBox1
    #loop
    .goto 1439,36.051,44.757,0
    .goto 1439,36.280,50.071,0
    .goto 1439,35.275,53.464,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,37.115,52.368,60,0
    .waypoint 1439,37.130,53.663,60,0
    .waypoint 1439,36.740,55.221,60,0
    .waypoint 1439,35.655,55.872,60,0
    .waypoint 1439,35.088,55.085,60,0
    .waypoint 1439,35.275,53.464,60,0
    .waypoint 1439,36.091,51.501,60,0
    .waypoint 1439,36.280,50.071,60,0
    .waypoint 1439,36.523,48.554,60,0
    .waypoint 1439,35.977,48.408,60,0
    .waypoint 1439,35.902,47.145,60,0
    .waypoint 1439,35.759,45.455,60,0
    .waypoint 1439,36.051,44.757,60,0
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    >>Talvez seja necessário entrar na água para encontrá-los
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
    .isOnQuest 983
step
    .goto 1439,36.371,50.920
    >>Abra o |cRXP_PICK_Criatura Marinha Encalhada|r. Saqueie para obter |cRXP_LOOT_Ossos de Criaturas Marinhas|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #label RabidThistle
    #loop
    .goto 1439,38.226,52.780,0
    .goto 1439,39.129,59.176,0
    .goto 1439,38.226,52.780,50,0
    .goto 1439,38.527,54.661,50,0
    .goto 1439,38.037,56.815,50,0
    .goto 1439,38.095,58.395,50,0
    .goto 1439,38.696,57.874,50,0
    .goto 1439,39.129,59.176,50,0
    >>|cRXP_WARN_Use|r [Esperança de Tharnariun] |cRXP_WARN_em um |cRXP_ENEMY_Ursocardo Raivoso|r. Pode ser usado a qualquer distância, desde que você tenha um alvo selecionado|r
    >>==NÃO USE O ITEM DA MISSÃO SE NÃO HOUVER UM URSO POR PERTO==
    >>Você pode desperdiçar a armadilha e tornar a missão impossível de concluir Se isso acontecer com você, será necessário retornar ao NPC que dá a missão e pedir outra armadilha
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .unitscan Rabid Thistle Bear
    .use 7586
step
    .goto Darkshore,38.90,53.59
    >>Corra em direção à borda do acampamento dos Furbolgs
    .complete 984,1 -- Find a corrupt furbolg camp
step
    #optional
    #requires RabidThistle
--XXREQ Placeholder invis step until multiple requires per step
step
    #label Auber1
    #completewith next
    .subzone 442 >>Viaje para Auberdine
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith next
    .goto 1439,32.432,43.744,15 >>Caminhe até o final do cais, depois pule na água
step
    #completewith washed1
    .goto Darkshore,33.59,40.36,0
    .goto Darkshore,30.94,45.79,0
    .goto Darkshore,33.03,48.13,0
    >>Abate os |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os para obter seus |cRXP_LOOT_Olhos|r
    .complete 1001,1
    .mob Darkshore Thresher
step
#map Darkshore
    .goto Felwood,13.63,21.44
    >>Saqueie a |cRXP_PICK_Skeletal Tartaruga Marinha|r para a |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
    .complete 4681,1
step
#map Darkshore
    #label washed1
    .goto Darkshore,36.71,44.98,10,0
    .goto Felwood,19.10,20.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .xp 12
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
    .target Terenthis
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .target Thundris Windweaver
step
    #loop
    .goto Darkshore,35.44,35.83,55,0
    .goto Darkshore,35.71,32.27,55,0
    .goto Darkshore,35.44,35.83,0
    .goto Darkshore,35.71,32.27,0
    .goto Darkshore,36.70,30.00,0
    .goto Darkshore,38.73,28.25,0
    .goto Darkshore,40.17,28.76,0
    >>Abate os |cRXP_ENEMY_Darkshore Threshers|r. Saqueie-os para obter seus |cRXP_LOOT_Olhos|r
    .complete 1001,1
    .mob Darkshore Thresher
step
    #optional
    #completewith HSAuber
    >>Mate |cRXP_ENEMY_Filhote de Florestruz|r e |cRXP_ENEMY_Florestruz|r. Saqueie-os para obter |cRXP_LOOT_Carne de Moa|r
    >>Tenha cuidado |cRXP_ENEMY_Filhote de Florestruz|r [Fugir] com menos de 30% de vida
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<1,1
    .zoneskip Darkshore,1 << Druid
step
#map Darkshore
    .goto Felwood,25.15,4.61
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4723 >>Aceite Beached Sea Criatura - Missão
step
#map Darkshore
    .goto Felwood,25.19,1.29
    >>Clique no |cRXP_PICK_Buzzbox 411|r no chão
    .turnin 1001 >>Vire para Buzzbox 411
    .accept 1002 >>Aceite NO TRANSLATION FOUND TO THIS ELEMENT << NightElf
step << NightElf
    #completewith bears1
    >>Mate |cRXP_ENEMY_Espreitalunas|r e |cRXP_ENEMY_Espreitaluna Nanico|r. Saque-os para suas |cRXP_LOOT_Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith bears1
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    >>|cRXP_WARN_Não procure completar esta missão agora. Você a terminará depois|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,60 >>Viaje para Bashal'Aran
step
#map Darkshore
    #label bears1
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto Darkshore,44.78,37.91,40,0
    .goto Darkshore,45.43,39.15,40,0
    .goto Darkshore,46.30,39.01,40,0
    .goto Darkshore,47.36,36.86,40,0
    .goto Darkshore,44.80,36.91,40,0
    .goto Darkshore,46.30,39.01
    >>Abate os |cRXP_ENEMY_Wild Grells|r e os |cRXP_ENEMY_Vile Sprites|r. Saque-os para obter seus |cRXP_LOOT_Earrings|r
    .complete 955,1
    .mob Wild Grell
    .mob Vile Sprite
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.88,38.56,40,0
    .goto Darkshore,46.76,39.13,40,0
    .goto Darkshore,47.69,36.73,40,0
    .goto Darkshore,45.07,36.76
    >>Abate o |cRXP_ENEMY_Sátiro Deth'ryll|r. Saque-os para obter o |cRXP_LOOT_Moonstone Seal|r
    .complete 956,1
    .mob Deth'ryll Satyr
step
#map Darkshore
    .goto Felwood,27.70,10.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
step << NightElf
    #completewith CliffspringRiverSample
    >>Mate |cRXP_ENEMY_Espreitalunas|r e |cRXP_ENEMY_Espreitaluna Nanico|r. Saque-os para suas |cRXP_LOOT_Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .goto 1439,47.314,48.676
    >>Viaje até o |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os dois grupos de 2 |cRXP_ENEMY_Luniscantes Enraivecidos|r a oeste do |cRXP_PICK_Cristal Vermelho Misterioso|r pois os pares mais próximos uns dos outros estão vinculados entre si|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step
    #loop
    .goto Darkshore,42.93,50.82,0
    .goto Darkshore,45.51,48.93,0
    .goto Darkshore,42.47,45.36,0
    .goto Darkshore,42.93,50.82,55,0
    .goto Darkshore,45.51,48.93,55,0
    .goto Darkshore,42.47,45.36,55,0
    >>Mate |cRXP_ENEMY_Luniscantes|r. Saqueie-os para obter |cRXP_LOOT_[Ovo Pequeno]|r
    >>Isso será usado para evoluir sua [Culinária] até o nível 10 mais tarde
    .collect 6889,10,2178,1,0x20,cooking --Small Egg (1-9)
    .mob Young Moonkin
    .mob Raging Moonkin
    .mob Moonkin Oracle
    .mob Moonkin
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .skill cooking,<1,1 -- shows if cooking is >1

step << Druid
    #completewith next
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    >>Entre na **Caverna dos Luniscantes**
    .cast 18974 >>Use a [Poeira de Lua Cenariana] |cRXP_WARN_na |cRXP_PICK_Pedra Luniscante|r dentro da caverna para invocar|r |cRXP_ENEMY_Lunagarra|r
    .use 15208
step << Druid
    .goto Darkshore,42.97,45.47,15,0
    .goto Darkshore,43.50,45.97
    .use 15208 >>Mate |cRXP_ENEMY_Lunagarra|r. Fale com o |cRXP_FRIENDLY_Espírito de Lunagarra|r
    .skipgossip
    .complete 6001,1 --Defeat Lunaclaw (x1)
    .mob Lunaclaw
    .target Lunaclaw Spirit

step << !Draenei !Warlock
    #completewith CliffspringRiverSample
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    >>|cRXP_WARN_Não procure completar esta missão agora. Você a terminará depois|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step << !Draenei !Warlock
#map Darkshore
    #optional
    .isQuestComplete 1002
    .goto Winterspring,1.42,26.89
    >>Clique em |cRXP_PICK_Buzzbox 323|r no chão
    .turnin 1002 >>Entregue no NO TRANSLATION FOUND TO THIS ELEMENT
step << !Draenei !Warlock
    #label CliffspringRiverSample
    .goto Darkshore,50.81,25.50
    .use 12350 >>Use o [Tubo de Amostragem Vazio] na base do **Rio Fontescarpa**
    .complete 4762,1 --Cliffspring River Sample (1)
step << !Draenei !Warlock
#map Darkshore
    .goto Winterspring,3.10,20.90
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step << Druid
	#completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestComplete 6001
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >>Voe para Vila de Rut’theran
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Druid
    .isQuestComplete 6001
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .turnin 6001 >>Entregue Corpo e Coração
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << !Draenei !Warlock
    #label HSAuber
    .hs >>Use a Pedra de Regresso para Auberdine
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    #label HSAuber << Draenei/Warlock
    #completewith ReturnAuber
    .subzone 442 >>Entregue em Auberdine
step << Draenei/Warlock
    #optional
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .target Tharnariun Treetender
step << Draenei/Warlock
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
step << Draenei/Warlock
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use o|r |T134865:0|t[Vazio Água Tube] |cRXP_WARN_no Objetos de WotLK|r
    .complete 4812,1
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >>Entregue Tartaruga Marinha Encalhada << !Draenei !Warlock
    .turnin 4723 >>Entregue a Criatura Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.78,44.06
    .use 14338 >>|cRXP_WARN_Use o|r |T134865:0|t[Vazio Água Tube] |cRXP_WARN_no Objetos de WotLK|r
    .complete 4812,1
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    .isQuestComplete 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4762 >>Entregue Rio Fontescarpa
    .target Thundris Windweaver
step
    #optional
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .vendor 6301 >>|cRXP_BUY_Compre|r [Temperos Suaves] |cRXP_BUY_dele até que você tenha|r [Temperos Suaves] |cRXP_BUY_em quantidade igual ou maior que a de|r [Ovo Pequeno] |cRXP_BUY_que você possui atualmente|r
    .collect 2678,50,90,1,0x20,cooking --Mild Spices (1-50)
    .disablecheckbox
    .collect 6889,50,90,1,0x20,cooking --Small Egg (1-50)
    .disablecheckbox
    .target Gorbold Steelhand
    .itemcount 6889,1 -- Small Egg (1+)
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .skill cooking,<1,1 -- shows if cooking is >1
    .isQuestAvailable 2178
step
    .goto 1439,37.511,41.670
    >>|cRXP_WARN_Viaje em direção à |cRXP_PICK_Fogueira|r no chão|r
    +Comece [Culinária] [Ovo Assado com Ervas]. Faça isso até que sua [Culinária] atinja pelo menos o nível 10
    >>|cRXP_WARN_Continue leveling your|r |T133971:0|t[Cooking]|cRXP_WARN_until you run out of|r até ficar sem[Small Eggs] << !sod
    >>Há uma missão mais tarde na Floresta do Crepúsculo que exige que sua [Culinária] esteja em 50 ou mais. Você também pode cozinhar isso quando entrar no barco em breve << !sod
    .skill cooking,50,1
    .skill cooking,<1,1 -- shows if cooking is >1
    .itemcount 6889,1 -- Small Egg (1+)
    .isQuestAvailable 2178
step
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step
    #label ReturnAuber
    #optional
    .isQuestComplete 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .target Tharnariun Treetender
step << NightElf
    #completewith Ameth
    >>Mate |cRXP_ENEMY_Espreitalunas|r e |cRXP_ENEMY_Espreitaluna Nanico|r. Saque-os para suas |cRXP_LOOT_Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #optional
    #completewith FurbolgsComplete
    >>Mate |cRXP_ENEMY_Filhote de Florestruz|r e |cRXP_ENEMY_Florestruz|r. Saqueie-os para obter |cRXP_LOOT_Carne de Moa|r
    >>Tenha cuidado |cRXP_ENEMY_Filhote de Florestruz|r [Fugir] com menos de 30% de vida
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1 -- only collecting if leveled cooking to 10
step
    .goto 1439,47.314,48.676
    >>Clique no |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Cuidado com os dois grupos de |cRXP_ENEMY_Moonkins Enraivecidas|r a oeste do |cRXP_PICK_Mysterious Vermelho Cristal|r quando você clicar nele, pois elas podem gerar agro juntas|r
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
step
    #completewith Ameth
    .goto Darkshore,40.30,59.70,70 >>Viaje para o sul até a |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r em Ameth'Aran
step
    #label Ameth
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
	.target Sentinel Tysha Moonblade
    .goto Darkshore,40.30,59.70
    .accept 953 >>Aceite A queda de Ameth’Aran
step
    #completewith TheLay
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_ENEMY_Anaya Correalba|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    #completewith TheLay
    >>Mate |cRXP_ENEMY_Altaneira Amaldiçoada|r, |cRXP_ENEMY_Altaneira Ululante|r e |cRXP_ENEMY_Altaneiro Contorcido|r. Saqueie-os para obter |cRXP_LOOT_Relíquias|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
#map Darkshore
    .goto Felwood,25.98,40.62
    >>Clique em |cRXP_PICK_A Queda de Ameth'Aran|r
    .complete 953,2 -- The Fall of Ameth'Aran
step
#map Darkshore
    .goto Felwood,25.66,39.11
    >>Clique na |cRXP_PICK_Chama Antiga|r
    .complete 957,1
step
    #label TheLay
    .goto Darkshore,43.30,58.70
    >>Clique em |cRXP_PICK_A Fundação de Ameth'Aran|r
    .complete 953,1 -- The Lay of Ameth'Aran
step
    #completewith next
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_ENEMY_Anaya Correalba|r |cRXP_WARN_patrols Ameth'Aran|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Mate |cRXP_ENEMY_Altaneira Amaldiçoada|r, |cRXP_ENEMY_Altaneira Ululante|r e |cRXP_ENEMY_Altaneiro Contorcido|r. Saqueie-os para obter |cRXP_LOOT_Relíquias|r
    .complete 958,1
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
step
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70,50,0
    .goto Darkshore,41.91,57.92,50,0
    .goto Darkshore,41.81,59.77,50,0
    .goto Darkshore,41.98,62.13,50,0
    .goto Darkshore,42.92,62.50,50,0
    .goto Darkshore,43.30,58.70
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>|cRXP_ENEMY_Anaya Correalba|r |cRXP_WARN_patrulha Ameth'Aran. Ela tem um tempo de respawn longo; se não estiver disponível agora, você pode pular este passo|r
    .complete 963,1
    .unitscan Anaya Dawnrunner
step
#map Darkshore
    .goto Felwood,23.29,36.73
    .target Sentinel Tysha Moonblade
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
step << NightElf
    #completewith NEFangs
    >>Mate |cRXP_ENEMY_Espreitalunas|r e |cRXP_ENEMY_Espreitaluna Nanico|r. Saque-os para suas |cRXP_LOOT_Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #sticky
    #label bears1A
    #loop
    .waypoint Darkshore,39.03,67.32,0
    .waypoint Darkshore,42.54,67.76,0
    .waypoint Darkshore,39.99,78.46,0
    .waypoint Darkshore,39.03,67.32,70,0
    .waypoint Darkshore,42.54,67.76,70,0
    .waypoint Darkshore,39.99,78.46,70,0
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r no sul de Costa Negra
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
    .goto 1439,37.105,62.167
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
step
    .goto 1439/1,579.500,5240.300
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4728 >>Aceite Beached Sea Criatura - Missão
step
    #requires bears1A
    #label FurbolgsComplete
    #loop
    .goto 1439,39.899,54.745,0
    .goto 1439,40.181,56.229,0
    .goto 1439,39.267,53.092,50,0
    .goto 1439,39.754,53.444,50,0
    .goto 1439,40.234,54.325,50,0
    .goto 1439,39.899,54.745,50,0
    .goto 1439,40.181,56.229,50,0
    .goto 1439,39.388,56.671,50,0
    .goto 1439,39.191,56.382,50,0
    .goto 1439,39.957,55.300,50,0
    .goto 1439,39.332,54.079,50,0
    >>Mate |cRXP_ENEMY_Desbravador Bosquenero|r e |cRXP_ENEMY_Xamã Bosquenero|r
    .complete 985,1 -- Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 -- Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    .goto Darkshore,40.11,69.39,60,0
    .goto Darkshore,43.37,68.78,70,0
    .goto Darkshore,41.97,64.81,70,0
    .goto Darkshore,38.51,64.72,70,0
    .goto Darkshore,38.67,59.54,60,0
    .goto Darkshore,40.11,69.39
    >>Abate |cRXP_ENEMY_Florestruzes|r e |cRXP_ENEMY_Florestruz Filhotes|r. Saque-os pela sua |cRXP_LOOT_Carne Florestruz|r
    .collect 5469,5,2178,1 -- Strider Meat
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1 -- only collecting if leveled cooking to 10
step << !Draenei !Warlock
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,80 >>Retorne a Bashal'Aran
    .subzoneskip 446 -- bashal'aran
step << !Draenei !Warlock
    #label NEFangs
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
    .target Asterion
step << NightElf
    #loop
    .goto 1439,40.0,39.6,0
    .goto 1439,45.0,32.2,0
    .goto 1439,47.6,23.0,0
    .goto 1439,40.0,39.6,60,0
    .goto 1439,40.4,35.0,60,0
    .goto 1439,45.0,32.2,60,0
    .goto 1439,45.4,26.0,60,0
    .goto 1439,47.6,23.0,60,0
    >>Mate |cRXP_ENEMY_Espreitalunas|r e |cRXP_ENEMY_Espreitaluna Nanico|r. Saque-os para suas |cRXP_LOOT_Presas|r
    .complete 1002,1 -- Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step << NightElf
#map Darkshore
    .isQuestComplete 1002
    .goto Winterspring,1.42,26.89
    >>Clique em |cRXP_PICK_Buzzbox 323|r no chão
    .turnin 1002 >>Entregue no NO TRANSLATION FOUND TO THIS ELEMENT
step
    #completewith DarkshoreEnd
    .subzone 442 >>Entregue em Auberdine
step << !Draenei !Warlock
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << !Draenei !Warlock
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Entregue Uma grande ameaça?
    .target Terenthis
step << !Draenei !Warlock
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << !Draenei !Warlock
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .target Thundris Windweaver
step << Draenei/Warlock
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4728 >>Entregue a Criatura Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step << Draenei/Warlock
	#label DarkshoreEnd
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    >>Talvez seja necessário aguardar o RP dele caso outra pessoa tenha acabado de entregar
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
step
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4813 >>Entregue Fragmentos incrustados
    .target Sentinel Glynda Nal'Shea
step << Draenei/Warlock
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .target Tharnariun Treetender
    .isQuestComplete 2138
step << Draenei/Warlock
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Entregue Uma grande ameaça?
    .target Terenthis
step << Draenei/Warlock
    #optional
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5 -- Strider Meat (5)
    .skill cooking,<10,1 -- step only displays if skill is 10 or higher
step << Draenei/Warlock
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .target Thundris Windweaver
step << !Draenei !Warlock
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4728 >>Entregue a Criatura Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step << !Draenei !Warlock
	#label DarkshoreEnd
    .isQuestComplete 963
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    >>Talvez seja necessário aguardar o RP dele caso outra pessoa tenha acabado de entregar
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
step
    #sticky
    .abandon 963 >>Abandone For Love Eternal
step << !NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >>Pegue o barco para Darnassus
    .zoneskip Darnassus
step << NightElf Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
step << Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Rogue
    .goto 1457,33.123,16.269,20,0
    .goto 1457,31.592,17.005,8,0
    .goto 1457,31.786,18.587,8,0
    .goto 1457,32.803,18.613,8,0
    .goto 1457,32.947,17.109,8,0
    .goto 1457,32.027,16.633,8,0
    .goto 1457,31.541,17.897,8,0
    .goto 1457,32.291,19.031,8,0
    .goto 1457,37.009,21.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r no subsolo
    .trainer >>Treine suas magias de classe
    .target Syurna
step << Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darnassus,1
step << Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Voe para Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step << Draenei/Warlock
#map Darkshore
    #completewith next
    .goto Felwood,27.70,10.03,80 >>Retorne a Bashal'Aran
    .subzoneskip 446 -- bashal'aran
step << Draenei/Warlock
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
    .target Asterion
step << Draenei/Warlock
    .goto Darkshore,50.81,25.50
    .use 12350 >>Use o [Tubo de Amostragem Vazio] na base do **Rio Fontescarpa**
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei/Warlock
    .hs >> Hearth to Exodar << Draenei
    .hs >>Voe para Ironforge << Warlock
    .zoneskip The Exodar << Draenei
    .zoneskip Ironforge << Warlock
    .bindlocation 3557,1 << Draenei
    .bindlocation 1537,1 << Warlock
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
    .zoneskip Wetlands
    .zoneskip Darkshore
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    .goto Ironforge,55.51,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Wetlands>>Voe para Pantanal
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Darkshore
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    #optional
    .goto 1437,4.370,56.762
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para Costa Negra
    .zone Darkshore >>Pegue o barco para Costa Negra
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << Warlock
    .goto 1437,4.370,56.762
    .zone Darkshore >>Pegue o barco para Costa Negra
    .zoneskip Azuremyst Isle
    .zoneskip Bloodmyst Isle
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para a Ilha Névoa Lazúli
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .zoneskip Bloodmyst Isle
step << !Draenei
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guia de Sobrevivência (A)
#subgroup RXP Sobrevivência Guia 1-20
#name 14-20 Névoa Rubra
#next 20-21 Costa Negra

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalannius|r
    .trainer >>Treine suas magias de classe
    .target Shalannius
step << !Draenei
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>Entre em The Exodar pela rampa traseira
step << Warrior/Paladin/Hunter/Rogue/Shaman
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Behomat|r no andar superior << Warrior
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Handiir|r no andar superior << Paladin/Hunter/Rogue/Shaman
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Behomat|r
    .trainer >>Treine suas magias de classe
    .target Behomat
step << Warrior/Paladin/Hunter/Rogue/Shaman
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Handiir|r
    .train 202 >>Treine Espadas de Duas Mãos << Paladin/Warrior
    .train 199 >>Treine Maças de Duas Mãos << Paladin/Warrior/Shaman
    .train 198 >>Treine Maças de Uma Mão << Rogue
    .train 201 >>Treine Espadas de Uma Mão << Rogue
    .train 5011 >>Treine Bestas << Hunter
    .target Handiir
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vord|r
	.trainer >>Treine suas magias de classe
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ganaar|r
	.train 4188 >>Treine [Vigor Maior]
    .train 24549 >>Treine [Armadura Natural]
    .target Ganaar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sulaa|r
    .trainer >>Treine suas magias de classe
    .target Sulaa
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Izmir|r
    .trainer >>Treine suas magias de classe
    .target Izmir
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Edirah|r
    .trainer >>Treine suas magias de classe
    .target Edirah
step
    #ah
    .goto The Exodar,60.981,52.596,8,0
    .goto The Exodar,63.353,58.989,-1
    .goto The Exodar,63.007,59.264,-1
    .goto The Exodar,63.695,58.664,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Exodar|r
    >>|cRXP_BUY_Compre os seguintes itens para entregas mais rápidas em Ilha Névoa Rubra em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T134082:0|t[Estilhaço de Cristal Irradiado]
    >>|T135144:0|t[Varinha Mágica Maior] << Warlock/Priest/Mage
    .collect 23984,10,9641,1 -- Irradiated Crystal Shard (10)
    .collect 11288,1 << Warlock/Priest/Mage --Greater Magic Wand (1)
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
step
    #label AHCheck
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>Saia de Exodar
    .zoneskip The Exodar,1
step
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fp Exodar >>Pegue o ponto de voo de Exodar << !Draenei
    .fly Blood Watch >>Voe para o Entreposto Rubro << Draenei
    .target Stephanos
step << !Draenei
    #completewith next
    .subzone 3573 >>Viaje até Odesyus'Landing
step << !Draenei
    .goto Azuremyst Isle,47.038,70.206
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Admiral Odesyus|r
    >>|cRXP_WARN_Esta missão ficará cinzenta. É necessária para desbloquear uma cadeia de missões em Ilha Névoa Rubra|r
    .accept 9506 >>Aceite Um Pequeno Começo
    .target Admiral Odesyus
step << !Draenei
    .goto Azuremyst Isle,58.607,66.372
	>>Saqueie small cage
    >>|cRXP_WARN_Evasão: não gaste tempo matando os |cRXP_ENEMY_Goblins|r se puder|r
    .complete 9506,2 --Collect Nautical Map (x1)
step << !Draenei
    .goto Azuremyst Isle,59.578,67.648
	>>Saqueie small box
    >>|cRXP_WARN_Evasão: não gaste tempo matando os |cRXP_ENEMY_Goblins|r se puder|r
    .complete 9506,1 --Collect Nautical Compass (x1)
step << !Draenei
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Admiral Odesyus|r
    >>|cRXP_WARN_Esta missão ficará cinzenta. É necessária para desbloquear uma cadeia de missões em Ilha Névoa Rubra|r
    .turnin 9506 >>Entregue Um Pequeno Começo
    .target Admiral Odesyus
    .goto Azuremyst Isle,47.038,70.206
step << !Draenei
    #completewith next
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >>Viaje para o norte até a Ilha Névoa Rubra
step << !Draenei
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >>Aceite A Maratona de Kessel
    .target Kessel
step << !Draenei
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Viaje para o norte até Vigília Rubra
    >>Siga a seta atentamente! Certifique-se de não atravessar a ponte, caso contrário você será desmontado!
    >>Não enfrente nenhum inimigo, não ataque nem lance magias, pois isso fará você ser desmontado! Você também será desmontado se ficar atordoado por um ataque pelas costas!
    >>Se você for desmontado, abandone a missão "A Maratona de Kessel"
step << !Draenei
    #completewith SetHSBW
    .subzone 3584 >>Viaje até Vigília Rubra
step
    .isQuestTurnedIn 9506 -- compass quest
	#completewith CatchandRelease
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messenger Hermesius|r
    >>|cRXP_FRIENDLY_Mensageiro Hermesius|r |cRXP_WARN_patrulha no Entreposto Rubro|r
    .accept 9671 >>Aceite Entrega Urgente
    .turnin 9671 >>Entregue Entrega Urgente
	.target Messenger Hermesius
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 9646 >>Aceite Procura-Se: Garra da Morte
step
    #label SetHSBW
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hospedeiro Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >>Defina sua Pedra de Regresso para O Entreposto Rubro
    .zoneskip Bloodmyst Isle,1
    .bindlocation 3584
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .accept 9567 >>Aceite Conhece o teu inimigo
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .accept 9580 >>Aceite Necessidades ursinas
    .accept 9643 >>Aceite Ô trepadeira danada!
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .accept 9648 >>Aceite Sem emoção, não tem graça
step << !Draenei
    .goto Bloodmyst Isle,57.680,53.876
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .target Laando
    .fp Blood Watch>>Aprenda a rota de voo para O Entreposto Rubro
    .subzoneskip 3584,1
step
    .goto Bloodmyst Isle,56.324,54.232
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Prospector Nachlan|r
    .accept 10063 >>Aceite Liga dos Exploradores: isso lá é coisa de gnomo?
    .target Prospector Nachlan
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
	.turnin 9641 >>Entregue Estilhaços de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
    .target Vindicator Boros
step
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarca Admetius|r
    .accept 9693 >>Aceite O que Argus significa para mim
    .target Exarch Admetius
step << !Draenei
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .accept 9581 >>Aceite Aprender com os cristais
    .target Harbinger Mikolaas
step << Draenei
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .turnin 9581 >>Entregue Aprender com os cristais
    .accept 9620 >>Aceite A equipe de levantamento desaparecida
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9693 >>Entregue O que Argus significa para mim
    .accept 9694 >>Aceite O Entreposto Rubro
step
    #optional
    .isQuestTurnedIn 9694
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9779 >>Aceite Interceptar a mensagem
step
    #label CatchandRelease
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >>Aceite Pegar e soltar
step
    .isQuestTurnedIn 9506 -- compass quest
    #loop
    .goto Bloodmyst Isle,54.6,59.8,0
    .goto Bloodmyst Isle,53.6,54.4,40,0
    .goto Bloodmyst Isle,54.6,59.8,20,0
    .goto Bloodmyst Isle,55.6,54.4,40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Messenger Hermesius|r
    >>|cRXP_FRIENDLY_Mensageiro Hermesius|r |cRXP_WARN_patrulha no Entreposto Rubro|r
    .accept 9671 >>Aceite Entrega Urgente
    .turnin 9671 >>Entregue Entrega Urgente
	.target Messenger Hermesius
step
    #optional
    #sticky
    .abandon 9663 >>Abandone **A Maratona de Kessel**
step
	#completewith RuinousPolyspore
	>>Saqueie um |cRXP_LOOT_Cogumelo de Sangue|r no chão
    >>Eles aparecem por toda a Ilha Névoa Rubra
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #completewith SatyrFelsworn
	>>Saqueie um |cRXP_LOOT_Fungo Conífero Vil|r no chão
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
    #completewith next
    >>Mate |cRXP_ENEMY_Tzerak|r. Saqueie-o para obter [|cRXP_LOOT_Placa de Armadura do Tzerak|r]
    .use 23900 >>|cRXP_WARN_Use|r |T134518:0|t[|cRXP_LOOT_Placa de Armadura de Tzerak|r] |cRXP_WARN_para iniciar a missão|r
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>Aceite Os sinais da Legião
    .unitscan Tzerak
step
    .goto Bloodmyst Isle,36.498,71.338
	>>Clique no altar wall.Saqueie it for the |cRXP_LOOT_Nazzivus Monument Glyph|r
    .complete 9567,1 --Collect Nazzivus Monument Glyph (x1)
step
    .goto Bloodmyst Isle,36.498,71.338,30,0
    .goto Bloodmyst Isle,38.416,82.003
    >>Mate |cRXP_ENEMY_Tzerak|r. Saqueie-o para obter [|cRXP_LOOT_Placa de Armadura do Tzerak|r]
    .use 23900 >>|cRXP_WARN_Use|r |T134518:0|t[|cRXP_LOOT_Placa de Armadura de Tzerak|r] |cRXP_WARN_para iniciar a missão|r
    >>Se você não o vir patrulhando pelos acampamentos, aguarde ele surgir no selo roxo no chão ao sul. Pode levar de 3 a 6 minutos para ele aparecer
    .collect 23900,1,9594,1 --Tzerak's Armor Plate
    .accept 9594 >>Aceite Os sinais da Legião
    .unitscan Tzerak
step
    .isOnQuest 9594
    #label SatyrFelsworn
    #loop
    .goto Bloodmyst Isle,36.23,80.94,0
    .goto Bloodmyst Isle,37.67,76.66,0
    .goto Bloodmyst Isle,40.49,78.92,0
    .goto Bloodmyst Isle,38.72,73.66,0
    .goto Bloodmyst Isle,33.68,72.42,0
    .goto Bloodmyst Isle,36.23,80.94,70,0
    .goto Bloodmyst Isle,37.67,76.66,70,0
    .goto Bloodmyst Isle,40.49,78.92,70,0
    .goto Bloodmyst Isle,38.72,73.66,70,0
    .goto Bloodmyst Isle,33.68,72.42,70,0
	>>Mate |cRXP_ENEMY_Sátiros Nazzivus|r e |cRXP_ENEMY_Guerreiros Trevareia|r
    >>|cRXP_WARN_Você pode precisar matar |cRXP_ENEMY_Ladinos Nazzivus|r se não estiver vendo |cRXP_ENEMY_Sátiros|r ou |cRXP_ENEMY_Trevareia|r para fazê-los reaparecer|r
    .complete 9594,1 --Kill Nazzivus Satyr (x8)
    .mob +Nazzivus Satyr
    .complete 9594,2 --Kill Nazzivus Felsworn (x8)
    .mob +Nazzivus Felsworn
step
    #label FelConeFungus
    .goto Bloodmyst Isle,36.9,81.7,0
    .goto Bloodmyst Isle,32.2,81.3,0
    .goto Bloodmyst Isle,37.4,76.8,0
    .goto Bloodmyst Isle,44.5,82.5,0
    .goto Bloodmyst Isle,44.6,86.0,0
    .goto Bloodmyst Isle,36.9,81.7,30,0
    .goto Bloodmyst Isle,32.2,81.3,30,0
    .goto Bloodmyst Isle,37.4,76.8,30,0
    .goto Bloodmyst Isle,44.5,82.5,30,0
    .goto Bloodmyst Isle,44.6,86.0,30,0
	>>Saqueie um |cRXP_LOOT_Fungo Conífero Vil|r no chão
    .complete 9648,4 --Collect Fel Cone Fungus (x1)
step
	#completewith next
	.use 23995 >>Use a [Etiquetadora de Murloc] em |cRXP_ENEMY_Batedor Trevareia|r
    >>NÃO mate o |cRXP_ENEMY_Batedor Trevareia|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	>>Mate |cRXP_ENEMY_Cruelo|r. Saqueie-o para obter o [|cRXP_LOOT_Pingente de Cristal Vermelho|r]
    .use 23870 >>Use o [|cRXP_LOOT_Pingente de Cristal Vermelho|r] para iniciar a missão
    >>|cRXP_ENEMY_Cruelo|r patrulha ao longo da costa
	.collect 23870,1,9576,1 --Red Crystal Pendant (1)
    .accept 9576 >>Aceite O colar de Cruelo
	.unitscan Cruelfin
step
    #loop
    .goto Bloodmyst Isle,49.26,94.16,0
    .goto Bloodmyst Isle,43.70,94.43,0
    .goto Bloodmyst Isle,36.82,95.03,0
    .goto Bloodmyst Isle,36.82,95.03,70,0
    .goto Bloodmyst Isle,43.70,94.43,70,0
    .goto Bloodmyst Isle,49.26,94.16,70,0
	.use 23995 >>Use a [Etiquetadora de Murloc] em |cRXP_ENEMY_Batedor Trevareia|r
    >>NÃO mate o |cRXP_ENEMY_Batedor Trevareia|r
    .complete 9629,1 --Blacksilt Scouts Tagged (x6)
    .target Blacksilt Scout
step
	.goto Bloodmyst Isle,58.175,83.415
	.use 23875 >>Use a [Picareta de Mineração de Cristal] na |cRXP_PICK_Amostra de Cristal do Local de Impacto|r
    .complete 9581,1 --Collect Impact Site Crystal Sample (x1)
step
    #loop
    .goto Bloodmyst Isle,57.65,74.32,0
    .goto Bloodmyst Isle,56.51,79.24,0
    .goto Bloodmyst Isle,63.74,64.79,0
    .goto Bloodmyst Isle,57.65,74.32,40,0
    .goto Bloodmyst Isle,56.51,79.24,40,0
    .goto Bloodmyst Isle,63.74,64.79,40,0
    >>Mate um |cRXP_ENEMY_Estridente Escamódio|r. Saqueie-o para obter o |cRXP_LOOT_Cornofétido Aquático|r
    >>|cRXP_WARN_Você também pode saquear o |cRXP_LOOT_Cornofétido Aquático|r debaixo d’água|r
	.complete 9648,1 -- Loot an Aquatic Stinkhorn (x1)
    .mob Stinkhorn Striker
step
    #completewith next
    .subzone 3584 >>Viaje até Vigília Rubra
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .turnin 9576 >>Entregue O colar de Cruelo
    .turnin 9629 >>Entregue Pegar e soltar
    .accept 9574 >>Aceite Vítimas da corrupção
    .target Morae
step
--Arrow should point to the small ruins, dynamic spawns therefore
    .goto Bloodmyst Isle,50.6,74.4
    .goto Bloodmyst Isle,43.9,72.1,0
    .goto Bloodmyst Isle,45.2,68.1,0
    .goto Bloodmyst Isle,38.2,92.9,0
    .goto Bloodmyst Isle,52.7,82.7,0
	>>Mate |cRXP_ENEMY_Arvorosos Corrompidos|r. Saqueie-os para obter |cRXP_LOOT_Casca Cristalizada|r
    .complete 9574,1 --Collect Crystallized Bark (x6)
    .mob Corrupted Treant
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >>Entregue Vítimas da corrupção
    .accept 9578 >>Aceite À Procura de Galaen
    .target Morae
    .xp <15,1
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .turnin 9574 >>Entregue Vítimas da corrupção
    .target Morae
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .turnin 9594 >>Entregue Sinais da Legião
    .turnin 9567 >>Entregue Conhece o teu inimigo
    .accept 9569 >>Aceite Conter a ameaça
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .turnin 9567 >>Entregue Conhece o teu inimigo
    .accept 9569 >>Aceite Conter a ameaça
    .target Vindicator Aalesia
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
	.turnin 9641 >>Entregue Estilhaços de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Percepção] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .turnin 9581 >>Entregue Aprender com os cristais
    .accept 9620 >>Aceite A equipe de levantamento desaparecida
    .target Harbinger Mikolaas
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mate |cRXP_ENEMY_Espião Falconélius|r
    .complete 9694,1 --Kill Sunhawk Spy (x10)
    .mob Sunhawk Spy
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9694 >>Entregue O Entreposto Rubro
    .accept 9779 >>Aceite Interceptar a mensagem
step
    #loop
    .goto Bloodmyst Isle,47.0,51.6,0
    .goto Bloodmyst Isle,50.8,47.0,0
    .goto Bloodmyst Isle,47.4,43.8,0
    .goto Bloodmyst Isle,46.7,48.3,50,0
    .goto Bloodmyst Isle,50.8,47.0,50,0
    .goto Bloodmyst Isle,47.4,43.8,50,0
	>>Mate |cRXP_ENEMY_Espiões Falconélius|r. Saqueie-os para obter a |cRXP_LOOT_Missiva do Falconélius|r
    .complete 9779,1 --Collect Sunhawk Missive (x1)
    .mob Sunhawk Spy
step
    #completewith next
    .subzone 3591 >>Viaje até as Ruínas de Loreth'Aran
step
    .goto Bloodmyst Isle,61.249,48.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cartógrafo Draenei morto|r
    .turnin 9620 >>Entregue A equipe de levantamento desaparecida
    .accept 9628 >>Aceite Recuperação de dados
    .target Draenei Cartographer
step
	#completewith next
	>>Saqueie um |cRXP_LOOT_Polísporo Ruinoso|r no chão
    >>Parece um pequeno cogumelo azul encontrado ao redor das ruínas Naga
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
	>>Mate |cRXP_ENEMY_Espoliador Escamódio|r e |cRXP_ENEMY_Feiticeira Escamódia|r. Saqueie-os para obter |cRXP_LOOT_Cristal de Dados da Expedição|r
    .complete 9628,1 --Collect Survey Data Crystal (x1)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    #label RuinousPolyspore
    #loop
    .goto Bloodmyst Isle,67.91,66.45,0
    .goto Bloodmyst Isle,66.51,69.90,0
    .goto Bloodmyst Isle,68.58,65.18,0
    .goto Bloodmyst Isle,68.71,71.59,0
    .goto Bloodmyst Isle,67.91,66.45,8,0
    .goto Bloodmyst Isle,66.51,69.90,8,0
    .goto Bloodmyst Isle,68.58,65.18,8,0
    .goto Bloodmyst Isle,68.71,71.59,8,0
	>>Saqueie um |cRXP_LOOT_Polísporo Ruinoso|r no chão
    >>Parece um pequeno cogumelo azul encontrado ao redor das ruínas Naga
    .complete 9648,3 --Collect Ruinous Polyspore (x1)
step
    #loop
    .goto Bloodmyst Isle,58.6,55.0,0
    .goto Bloodmyst Isle,58.5,66.7,0
    .goto Bloodmyst Isle,50.2,72.5,0
    .goto Bloodmyst Isle,65.3,54.5,10,0
    .goto Bloodmyst Isle,62.5,53.0,10,0
    .goto Bloodmyst Isle,58.6,55.0,10,0
    .goto Bloodmyst Isle,62.8,59.8,10,0
    .goto Bloodmyst Isle,58.9,61.8,10,0
    .goto Bloodmyst Isle,58.5,66.7,10,0
    .goto Bloodmyst Isle,54.1,67.6,10,0
    .goto Bloodmyst Isle,48.5,66.7,10,0
    .goto Bloodmyst Isle,50.2,72.5,10,0
    .goto Bloodmyst Isle,53.5,75.7,10,0
	>>Saqueie um |cRXP_LOOT_Cogumelo de Sangue|r no chão
    >>Eles aparecem por toda a Ilha Névoa Rubra
    .complete 9648,2 --Collect Blood Mushroom (x1)
step
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
    .xp 16-4380 >>Suba até estar 4380xp distante do nível 16 (9220/13600+)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
    --3230 from quests at blood watch
    --1150 from velen turnin at exodar
step
    .goto 1950/1,5679.200,8434.200,30,0 -- arrow leading from naga camp
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maatparm|r
    .turnin 9648 >>Entregue Sem emoção, não tem graça
    .accept 9649 >>Aceite Lágrimas de Ysera
    .target Maatparm
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9779 >>Entregue Interceptar a mensagem
    .accept 9696 >>Aceite Traduttore, traditore
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
	.turnin 9641 >>Entregue Estilhaços de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Percepção] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,54.438,54.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Interrogadora Elysia|r
    .target Interrogator Elysia
    .turnin 9696 >>Entregue Traduttore, traditore
    .accept 9698 >>Aceite Audiência com o profeta
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .turnin 9628 >>Entregue Recuperação de dados
    .accept 9584 >>Aceite A segunda amostra
    .target Harbinger Mikolaas
step
    #optional
    #loop
    .goto Bloodmyst Isle,61.24,48.37,0
    .goto Bloodmyst Isle,61.24,48.37,40,0
    .goto Bloodmyst Isle,61.40,43.51,40,0
    .goto Bloodmyst Isle,63.36,47.93,40,0
    .xp 16-1150 >>Suba até estar 1150xp distante do nível 16 (12450/13600+)
    .mob Wrathscale Marauder
    .mob Wrathscale Sorceress
step
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >>Desça para dentro de The Exodar
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sulaa|r
    .trainer >>Treine suas magias de classe
    .target Sulaa
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Edirah|r
    .trainer >>Treine suas magias de classe
    .target Edirah
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Izmir|r
    .trainer >>Treine suas magias de classe
    .target Izmir
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Profeta Velen|r
    .target Prophet Velen
    .turnin 9698 >>Entregue Audiência com o profeta
    .accept 9699 >>Aceite Verdade ou ficção
step
    #optional
    .isQuestTurnedIn 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Profeta Velen|r
    .target Prophet Velen
    .accept 9699 >>Aceite Verdade ou ficção
step << Druid
	#completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step << Warrior/Paladin/Rogue/Shaman
    #completewith next << Paladin/Hunter/Rogue/Shaman
    #completewith ClassTraining << Warrior
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Handiir|r no andar superior
step << Warrior/Paladin/Rogue/Shaman
    #optional
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Handiir|r
    .train 202 >>Treine Espadas de Duas Mãos << Paladin/Warrior
    .train 199 >>Treine Maças de Duas Mãos << Paladin/Warrior/Shaman
    .train 198 >>Treine Maças de Uma Mão << Rogue
    .train 201 >>Treine Espadas de Uma Mão << Rogue
    .target Handiir
step << Warrior
    #label ClassTraining
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Behomat|r
    .trainer >>Treine suas magias de classe
    .target Behomat
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vord|r
	.trainer >>Treine suas magias de classe
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ganaar|r
	.train 4188 >>Treine [Vigor Maior]
    .train 24549 >>Treine [Armadura Natural]
    .target Ganaar
step << Rogue
#ah
    #loop
    .goto The Exodar,73.625,84.814,0
    .goto The Exodar,69.945,90.749,0
    .goto The Exodar,73.625,84.814,10,0
    .goto The Exodar,69.945,90.749,10,0
    .goto The Exodar,63.363,58.999,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r e |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Dependendo de quanto dinheiro você tem, compre qualquer um dos itens a seguir:|r
    >>|cRXP_WARN_2 x|r |T133052:0|t[Martelo] |cRXP_WARN_de|r |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_WARN_ou|r
    >>|cRXP_WARN_2 x|r |T135343:0|t[Cimitarra] |cRXP_WARN_de|r |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Idealmente use 2 x|r |T133052:0|t[Martelo]
    >>|cRXP_WARN_Alternativamente, procure na Casa de Leilões para armas melhores ou mais baratas|r
    .collect 2028,1 --Hammer (1)
    .target Ellomin
    .target Ven
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.58
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Rogue
#ssf
    #loop
    .goto The Exodar,73.625,84.814,0
    .goto The Exodar,69.945,90.749,0
    .goto The Exodar,73.625,84.814,10,0
    .goto The Exodar,69.945,90.749,10,0
    .goto The Exodar,63.363,58.999,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r e |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Dependendo de quanto dinheiro você tem, compre qualquer um dos itens a seguir:|r
    >>|cRXP_WARN_2 x|r |T133052:0|t[Martelo] |cRXP_WARN_de|r |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_WARN_ou|r
    >>|cRXP_WARN_2 x|r |T135343:0|t[Cimitarra] |cRXP_WARN_de|r |cRXP_FRIENDLY_Ven|r
    >>|cRXP_WARN_Idealmente use 2 x|r |T133052:0|t[Martelo]
    .collect 2028,1 --Hammer (1)
    .target Ellomin
    .target Ven
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.58
step << Warrior/Paladin/Shaman
#ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compre um|r |T133046:0|t[Martelo de Rocha] |cRXP_BUY_dela ou procure na Casa de Leilões para uma arma melhor ou mais barata|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Warrior/Paladin/Shaman
#ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compre um|r |T133046:0|t[Martelo de Rocha] |cRXP_BUY_dela|r
    .goto The Exodar,73.625,84.814
    .collect 2026,1 --Rock Hammer (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .money <0.5971
step << Warrior/Paladin/Shaman
    #optional
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step
	.isOnQuest 9699,9584,9643,9580,10063
    .hs >>Use a Pedra de Regresso para O Entreposto Rubro
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
	.isOnQuest 9699,9584,9643,9580,10063
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >>Voe para o Entreposto Rubro
    .target Stephanos
    .zoneskip Bloodmyst Isle
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9699 >>Entregue Verdade ou ficção
    .accept 9700 >>Aceite A dimensão do caos tá TENSA
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .accept 9641 >>Aceite Estilhaços de cristal irradiado
	.turnin 9641 >>Entregue Estilhaços de cristal irradiado
	.itemcount 23984,10 -- Irradiated Crystal Shard (10)
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Percepção] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
step
    #optional
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .accept 9578 >>Aceite À Procura de Galaen
    .target Morae
step
    .goto Bloodmyst Isle,45.669,47.827
	.use 23876 >>Use a [Picareta de Mineração de Cristais] no |cRXP_PICK_Cristal Alterado da Névoa Rubra|r
    .complete 9584,1 --Collect Altered Crystal Sample (x1)
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .turnin 9584 >>Entregue A segunda amostra
    .accept 9585 >>Aceite A última amostra
    .target Harbinger Mikolaas
step
    #completewith CrystalSample
    .isOnQuest 9569,9585
    .goto Bloodmyst Isle,41.069,30.660
    .subzone 3593 >>Viaje até Axxarien
    >>Mate |cRXP_ENEMY_Constritores Mutantes|r. Saqueie-os para obter |cRXP_LOOT_Trepadeira Espinhosa Constritora|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Mate qualquer um que encontrar no caminho para Axxarien
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
    .disablecheckbox
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    #completewith CrystalSample
    >>Saqueie os |cRXP_LOOT_Cristais Corrompidos|r no chão
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith CrystalSample
    >>Mate |cRXP_ENEMY_Zevrax|r, |cRXP_ENEMY_Assombrantes Axxarien|r e |cRXP_ENEMY_Infernarautos Axxarien|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #label CrystalSample
    .goto Bloodmyst Isle,41.069,30.660
	.use 23877 >>Use a [Picareta de Mineração de Cristal] no |cRXP_PICK_Cristal de Axxarien|r
    .complete 9585,1 --Collect Axxarien Crystal Sample (x1)
step
    #completewith ShadowstalkerHellcaller
    >>Saqueie os |cRXP_LOOT_Cristais Corrompidos|r no chão
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    >>Mate |cRXP_ENEMY_Zevrax|r, |cRXP_ENEMY_Assombrantes Axxarien|r e |cRXP_ENEMY_Infernarautos Axxarien|r
    .complete 9569,1 --Kill Zevrax (x1)
    .goto Bloodmyst Isle,41.907,29.533
    .mob +Zevrax
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .disablecheckbox
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
    .disablecheckbox
step
    #label ShadowstalkerHellcaller
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Mate |cRXP_ENEMY_Assombrantes Axxarien|r e |cRXP_ENEMY_Infernarautos Axxarien|r
    .complete 9569,2 --Kill Axxarien Shadowstalker (x5)
    .mob +Axxarien Shadowstalker
    .complete 9569,3 --Kill Axxarien Hellcaller (x5)
    .mob +Axxarien Hellcaller
step
    #loop
    .goto Bloodmyst Isle,41.76,32.82,0
    .goto Bloodmyst Isle,39.75,35.55,0
    .goto Bloodmyst Isle,37.73,37.32,0
    .goto Bloodmyst Isle,34.75,36.97,0
    .goto Bloodmyst Isle,41.76,32.82,50,0
    .goto Bloodmyst Isle,39.75,35.55,50,0
    .goto Bloodmyst Isle,37.73,37.32,50,0
    .goto Bloodmyst Isle,34.75,36.97,50,0
    >>Saqueie os |cRXP_LOOT_Cristais Corrompidos|r no chão
    .complete 9569,4 --Collect Corrupted Crystal (x5)
step
    #completewith VoidAnomaly
    >>Mate |cRXP_ENEMY_Constritores Mutantes|r. Saqueie-os para obter |cRXP_LOOT_Trepadeira Espinhosa Constritora|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
    .goto Bloodmyst Isle,37.45,30.53
    >>Mate |cRXP_ENEMY_Garra da Morte|r. Saqueie-o para obter |cRXP_LOOT_Pata da Garra da Morte|r
    .complete 9646,1 --Collect Deathclaw's Paw (x1)
    .mob Deathclaw
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xote Cabeçote|r
    .turnin 10063 >>Entregue Liga dos Exploradores: isso lá é coisa de gnomo?
    .accept 9548 >>Aceite O furto dos equipamentos
    .accept 9549 >>Aceite Os artefatos dos Trevareia
    .target Clopper Wizbang
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xote Cabeçote|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>Este é um item de suprimento limitado. Pule esta etapa se ele não tiver um
    .bronzetube
    .target Clopper Wizbang
    .subzoneskip 3906,1
step
    #completewith next
	>>Mate |cRXP_ENEMY_Videntes Trevareia|r. Saqueie-os para obter |cRXP_LOOT_Ídolo Murloc Rudimentar|r
    >>Mate |cRXP_ENEMY_Guerreiros Trevareia|r e |cRXP_ENEMY_Costacantes Trevareia|r. Saqueie-os para obter |cRXP_LOOT_Faca Murloc Rudimentar|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
    >>Saqueie |cRXP_LOOT_Equipamento do Xote|r no chão
    >>Ele pode aparecer em qualquer um dos acampamentos de murlocs
    .complete 9548,1 --Collect Clopper's Equipment (x1)
step
    #loop
    .goto Bloodmyst Isle,40.4,20.4,0
	.goto Bloodmyst Isle,38.5,22.5,0
	.goto Bloodmyst Isle,36.0,25.8,0
    .goto Bloodmyst Isle,40.4,20.4,60,0
	.goto Bloodmyst Isle,38.5,22.5,30,0
	.goto Bloodmyst Isle,36.0,25.8,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	.goto Bloodmyst Isle,43.8,22.4,30,0
	.goto Bloodmyst Isle,46.4,20.5,30,0
	.goto Bloodmyst Isle,40.4,20.4,30,0
	>>Mate |cRXP_ENEMY_Videntes Trevareia|r. Saqueie-os para obter |cRXP_LOOT_Ídolo Murloc Rudimentar|r
    >>Mate |cRXP_ENEMY_Guerreiros Trevareia|r e |cRXP_ENEMY_Costacantes Trevareia|r. Saqueie-os para obter |cRXP_LOOT_Faca Murloc Rudimentar|r
    .complete 9549,1 --Collect Crude Murloc Idol (x3)
    .mob +Blacksilt Seer
    .complete 9549,2 --Collect Crude Murloc Knife (x6)
    .mob +Blacksilt Warrior
    .mob +Blacksilt Shorestriker
step
    .goto Bloodmyst Isle,42.147,21.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xote Cabeçote|r
    .turnin 9548 >>Entregue O furto dos equipamentos
    .turnin 9549 >>Entregue Os artefatos dos Trevareia
    .target Clopper Wizbang
step
    .use 23837 >>Use o [Mapa do Tesouro Deteriorado] para iniciar a missão
    .accept 9550 >>Aceite Um mapa de onde?
step
    #label VoidAnomaly
    .goto Bloodmyst Isle,52.741,21.161
	>>Mate |cRXP_ENEMY_Anomalia do Caos|r e explore o local do Portal do Sol
    .complete 9700,2 --Kill Void Anomaly (x5)
    .mob +Void Anomaly
    .complete 9700,1 --Sun Portal Site Confirmed (1)
step
    #loop
	.goto Bloodmyst Isle,44.9,26.4,0
	.goto Bloodmyst Isle,45.1,37.4,0
	.goto Bloodmyst Isle,34.0,44.3,0
	.goto Bloodmyst Isle,42.5,49.3,0
    .goto Bloodmyst Isle,47.6,24.9,70,0
	.goto Bloodmyst Isle,44.9,26.4,70,0
	.goto Bloodmyst Isle,48.3,33.4,70,0
	.goto Bloodmyst Isle,45.1,37.4,70,0
	.goto Bloodmyst Isle,40.8,41.9,70,0
	.goto Bloodmyst Isle,34.0,44.3,70,0
	.goto Bloodmyst Isle,39.0,48.1,70,0
	.goto Bloodmyst Isle,42.5,49.3,70,0
    >>Mate |cRXP_ENEMY_Constritores Mutantes|r. Saqueie-os para obter |cRXP_LOOT_Trepadeira Espinhosa Constritora|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>|cRXP_WARN_Priorize |cRXP_ENEMY_Constritor Mutante|r pois você terá tempo depois para finalizar |r |cRXP_ENEMY_Urso Marrom Ancião|r
    .complete 9643,1 --Collect Thorny Constrictor Vine (x6)
    .mob +Mutated Constrictor
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
    .disablecheckbox
step
    .goto Bloodmyst Isle,61.156,41.893
    >>Clique no |cRXP_PICK_Diário Surrado|r no chão
    .turnin 9550 >>Entregue Um mapa de onde?
    .accept 9557 >>Aceite Decifrar o Livro
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anacoreta Paetheus|r
    .turnin 9557 >>Entregue Decifrar o Livro
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .turnin 9585 >>Entregar The Final Sample
    .accept 10064 >>Aceite Fala com a minha mão!
    .turnin 9646 >>Entregue PROCURA-SE: Garra da Morte
    .target Harbinger Mikolaas
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anacoreta Paetheus|r
    .accept 9561 >>Aceite As palavras de Nolkai
    .accept 9632 >>Aceite Aliados de última hora
    .target Anchorite Paetheus
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9700 >>Entregue A dimensão do caos tá TENSA
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Percepção] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Kuros|r
    .accept 9703 >>Aceite O Crio-núcleo
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .turnin 9643 >>Entregue Ô trepadeira danada!
    .accept 9647 >>Aceite Cortar as asinhas
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.862,56.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9643 >>Entregue Ô trepadeira danada!
    .accept 9647 >>Aceite Cortar as asinhas
    .target Tracker Lyceon
step
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .turnin 9569 >>Entregue Conter a ameaça
    .target Vindicator Aalesia
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Achelus|r
    .accept 9669 >>Aceite A expedição desaparecida
    .target Achelus
step
	.isOnQuest 9580
	#completewith GCorpse
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Fique atento a estes enquanto segue para o Núcleo Criogênico
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GCorpse
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Fique atento a estes enquanto segue para o Núcleo Criogênico
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GCorpse
    .subzone 3588 >>Viaje até o Núcleo Criogênico
step
    #label GCorpse
    .goto Bloodmyst Isle,37.502,61.239
    >>Clique em |cRXP_FRIENDLY_Cadáver de Galaen|r
    >>|cRXP_WARN_Evite tentar matar muitos |cRXP_ENEMY_Recuperadores Falconélius|r, se possível, enquanto se dirige ao |rCadáver de Galaen|cRXP_FRIENDLY_|r
    .turnin 9578 >>Entregue À procura de Galaen
    .accept 9579 >>Aceite O destino de Galaen
    .accept 9706 >>Aceite Diário de Galaen - O destino do vindicante Saruan
    .target Galaen's Corpse
step
    .goto Bloodmyst Isle,37.50,61.23,0
    .goto Bloodmyst Isle,39.69,62.77,60,0
    .goto Bloodmyst Isle,38.59,57.40,60,0
    .goto Bloodmyst Isle,35.61,61.49,60,0
    >>Mate |cRXP_ENEMY_Recuperadores Falconélius|r. Saqueie-os para obter |cRXP_LOOT_Amuleto de Galaen|r e seus |cRXP_LOOT_Suprimentos Médicos|r
    >>Você também pode saquear os |cRXP_LOOT_Suprimentos Médicos|r no chão
	>>|cRXP_WARN_Use os pilares e estruturas para usar LoS, se necessário, para evitar os|r |T135812:0|t[bola de fogo] |cRXP_WARN_lançadas|r
    .complete 9579,1 --Collect Galaen's Amulet (x1)
    .complete 9703,1 --Collect Medical Supplies (x12)
    .mob Sunhawk Reclaimer
step
	.isOnQuest 9580
	#completewith GFate
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Fique atento a estes enquanto segue para o Posto de Sangue
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob +Royal Blue Flutterer
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob +Elder Brown Bear
step
	.isQuestTurnedIn 9580
	#completewith GFate
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Fique atento a estes enquanto segue para o Posto de Sangue
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #completewith GFate
    .subzone 3584 >>Viaje até Vigília Rubra
step
    #label GFate
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .turnin 9579 >>Entregue O destino de Galaen
    .target Morae
step
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Kuros|r
    .turnin 9703 >>Entregue O Crio-núcleo
    .turnin 9706 >>Entregue Diário de Galaen - O destino do vindicante Saruan
    .accept 9711 >>Aceite Matis, o Cruel
    .target Vindicator Kuros
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .accept 9748 >>Aceite Água que Passarinho Não Bebe
    .accept 9753 >>Aceite O que sabemos... << Draenei
    .target Vindicator Aesom
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .turnin 9647 >>Entregue Cortar as asinhas
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9647 >>Entregue Cortar as asinhas
    .target Tracker Lyceon
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
    .xp <18,1
    .train 20288,1 -- seal of righteousness r3
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarca Admetius|r
    .turnin 9753 >>Entregue O que sabemos...
    .accept 9756 >>Aceite O Que Não Sabemos...
    .target Exarch Admetius
step << Draenei
    .goto Bloodmyst Isle,54.312,54.215
    >>Fale com o |cRXP_ENEMY_Agente Falconélius Capturado|r dentro da |cRXP_PICK_Prisão Improvisada|r
    .complete 9756,1 -- Sunhawk Information Recovered 1/1
    .skipgossip
    .target Captured Sunhawk Agent
step << Draenei
    .goto Bloodmyst Isle,52.684,53.214
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Exarca Admetius|r
    .turnin 9756 >>Entregue O que não sabemos...
    .accept 9760 >>Aceite O Recanto do Vindicante
    .target Exarch Admetius
step
    #optional
	.isOnQuest 9647
	#completewith MatistheCruel
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Fique atento a eles enquanto completa outros objetivos
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MatistheCruel
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Fique atento a eles enquanto completa outros objetivos
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedora Jorli|r e |cRXP_FRIENDLY_Batedora Loryi|r
    .turnin 10064 >>Turn in Fale com o Hand
    .accept 10065 >>Aceitar Limpa-trilhos
    .target +Scout Jorli
    .goto Bloodmyst Isle,30.255,45.916
    .accept 9741 >>Aceitar Criaturas do Caos
    .target +Scout Loryi
    .goto Bloodmyst Isle,30.239,45.866
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Corin|r
    .turnin 9760 >>Entregar O Recanto do Vindicante << Draenei
    .accept 10066 >>Aceitar Trama Sórdida
    .accept 10067 >>Aceitar Espíritos da Água Corrompidos
    .target Vindicator Corin
step
    #label MatistheCruel
    #loop
    .goto Bloodmyst Isle,43.9,43.7,0
    .goto Bloodmyst Isle,30.1,51.7,0
    .goto Bloodmyst Isle,22.4,54.3,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,22.67,54.20,70,0
    .goto Bloodmyst Isle,27.45,51.36,80,0
    .goto Bloodmyst Isle,32.55,48.08,80,0
    .goto Bloodmyst Isle,42.27,44.12,80,0
	.line Bloodmyst Isle,43.1,43.7,36.5,47.2,33.5,47.1,29.9,51.8,27.7,51.8,25.1,54.1,22.0,54.3
    .use 24278 >>Use a [Pistola Sinalizadora] em |cRXP_ENEMY_Matis, o Cruel|r
    >>|cRXP_WARN_Isto vai convocar um |cRXP_FRIENDLY_Farejador|r da Mão, que irá capturá-lo uma vez que sua vida chegue a 50%. Tente não atrair os inimigos, pois |cRXP_ENEMY_Matis, o Cruel|r bate muito forte|r
    >>|cRXP_ENEMY_Matis, o Cruel|r patrulha uma grande seção da estrada. Seu caminho de patrulha está marcado no seu mapa
    .complete 9711,1 --Capture Matis the Cruel
	.unitscan Matis the Cruel
step
    #loop
    .goto Bloodmyst Isle,20.12,62.35,0
    .goto Bloodmyst Isle,19.58,64.62,40,0
    .goto Bloodmyst Isle,18.21,62.93,40,0
    .goto Bloodmyst Isle,20.12,62.35,40,0
    >>Mate |cRXP_ENEMY_Bicho do Caos|r
    >>|cRXP_WARN_Você deve matar as |cRXP_ENEMY_Anomalias do Caos|r para fazer com que |cRXP_ENEMY_Bichos do Caos|r apareçam|r
    .complete 9741,1 --Kill Void Critter (x12)
    .mob Void Critter
    .mob Void Anomaly
step
    #optional
	.isOnQuest 9647
	#completewith MutatedTanglers
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    >>Fique atento a eles enquanto completa outros objetivos
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
	#completewith MutatedTanglers
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
    >>Fique atento a eles enquanto completa outros objetivos
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #completewith next
	>>Mate |cRXP_ENEMY_Emaranhadores Mutantes|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob +Mutated Tangler
step
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
    >>Mate |cRXP_ENEMY_Assoladores Enfurecidos|r
    .complete 10065,1 --Kill Enraged Ravager (x10)
    .mob Enraged Ravager
step
    #label MutatedTanglers
    #loop
    .goto Bloodmyst Isle,28.8,59.6,0
    .goto Bloodmyst Isle,31.8,53.8,0
    .goto Bloodmyst Isle,26.0,47.8,0
    .goto Bloodmyst Isle,28.8,59.6,70,0
    .goto Bloodmyst Isle,31.8,53.8,70,0
    .goto Bloodmyst Isle,26.0,47.8,70,0
	>>Mate |cRXP_ENEMY_Emaranhadores Mutantes|r
    .complete 10066,1 --Kill Mutated Tangler (x8)
    .mob Mutated Tangler
step
    #optional
	.isOnQuest 9647
	#completewith next
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    #optional
	.isOnQuest 9580
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
    >>Mate |cRXP_ENEMY_Ursos Marrons Anciãos|r. Saqueie-os para obter |cRXP_LOOT_Flanco de Urso Marrom Ancião|r
	.complete 9580,1 --Elder Brown Bear Flank (8)
    .mob Elder Brown Bear
step
    #optional
	.isOnQuest 9647
    #loop
    .goto Bloodmyst Isle,35.6,53.8,0
    .goto Bloodmyst Isle,39.6,51.2,0
    .goto Bloodmyst Isle,43.2,42.6,0
    .goto Bloodmyst Isle,34.8,42.6,0
    .goto Bloodmyst Isle,35.6,53.8,70,0
    .goto Bloodmyst Isle,39.6,51.2,70,0
    .goto Bloodmyst Isle,43.2,42.6,70,0
    .goto Bloodmyst Isle,34.8,42.6,70,0
	>>Mate |cRXP_ENEMY_Esvoaçantes-reais Azuis|r
    .complete 9647,1 --Kill Royal Blue Flutterer (x10)
    .mob Royal Blue Flutterer
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Corin|r
    .turnin 10066 >>Entregue Trama Sórdida
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,30.255,45.916
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedora Jorli|r
    .turnin 10065 >>Entregue Limpa-trilhos
    .target Scout Jorli
step
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Mate |cRXP_ENEMY_Espíritos da Água Corrompidos|r
    .complete 10067,1 --Kill Fouled Water Spirit (x6)
    .mob Fouled Water Spirit
step
    .goto Bloodmyst Isle,30.750,46.844
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Corin|r
    .turnin 10067 >>Entregue Espíritos da Água Corrompidos
    .target Vindicator Corin
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pesquisador Cornelius|r
    .accept 9670 >>Aceitar Estão todos vivos! Ou não...
    .target Researcher Cornelius
step
	#completewith next
	>>Mate as |cRXP_ENEMY_Criaturas Enredadas|r
    >>|cRXP_WARN_Ataque as |cRXP_ENEMY_Criaturas Enredadas|r à distância, se possível, para que, caso um inimigo hostil apareça, ele não gere agro em você|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Mate |cRXP_ENEMY_Sanguessugas da Névoa|r, |cRXP_ENEMY_Tecelãs da Névoa|r e |cRXP_ENEMY_Zarakh|r no topo da Passagem do Âmbar
    .complete 9669,1 --Kill Myst Leecher (x8)
    .mob +Myst Leecher
    .complete 9669,2 --Kill Myst Spinner (x8)
    .mob +Myst Spinner
    .complete 9669,3 --Kill Zarakh (x1)
    .mob +Zarakh
step
    .goto Bloodmyst Isle,21.4,36.0,60,0
    .goto Bloodmyst Isle,17.2,28.4,40,0
    .goto Bloodmyst Isle,18.2,38.0
	>>Mate as |cRXP_ENEMY_Criaturas Enredadas|r
    >>|cRXP_WARN_Ataque as |cRXP_ENEMY_Criaturas Enredadas|r à distância, se possível, para que, caso um inimigo hostil apareça, ele não gere agro em você|r
    .complete 9670,1 --Expedition Researcher Freed (5)
    .mob Webbed Creature
step
    .goto Bloodmyst Isle,24.862,34.375
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pesquisador Cornelius|r
    .turnin 9670 >>Entregue Estão todos vivos! Ou não...
    .target Researcher Cornelius
step
    .goto Bloodmyst Isle,34.373,33.742
	.use 24318 >>Use o [Frasco para Amostra de Água] na base da cachoeira
    .complete 9748,1 --Collect Bloodmyst Water Sample (x1)
step << Druid
    .isQuestAvailable 26,6121
	#completewith Lessons
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isQuestAvailable 26,6121
    .goto Moonglade,44.1444,45.227
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silva Fil'naveth|r
    .skipgossip
    .fly Teldrassil >>Voe para Vila de Rut’theran
    .target Silva Fil'naveth
    .zoneskip Darnassus
step << Druid
    .isQuestAvailable 26,6121
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Druid
    #label Lessons
    .goto Darnassus,35.375,8.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r
    .accept 26 >>Aceite A Lesson to Learn
    .accept 6121 >>Aceite Lessons Anew
    .trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << Druid
	#completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 6121 >>Entregar Lições Renovadas
    .accept 6122 >>Aceitar A Fonte Principal
    .turnin 26 >>Entregar Uma Lição a Aprender
    .accept 29 >>Aceitar Prova do Lago
    .target Dendrite Starblaze
step << Druid
    #loop
    .goto Moonglade,54.2,55.6,0
    .goto Moonglade,53.1,48.4,60,0
    .goto Moonglade,54.2,55.6,60,0
    .goto Moonglade,60.5,58.5,60,0
    >>Abra o |cRXP_PICK_Recipiente de Bugigangas|r no lago. Saqueie-o para obter o |T134125:0|t[|cRXP_LOOT_Adorno de Altar|r]
    .collect 15877,1,29,1 -- Shrine Bauble (1)
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Use o|r |T134125:0|t[|cRXP_LOOT_Adorno de Altar|r] |cRXP_WARN_na árvore do Altar de Remulos|r
    .complete 29,1 --Complete the Trial of the Lake.
    .use 15877
step << Druid
    .goto Moonglade,36.517,40.104
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeana|r
    .turnin 29 >>Entregar Prova do Lago
    .accept 272 >>Aceitar Prova do Leão Marinho
    .target Tajarri
step
    .isOnQuest 9748,9669,9741,9711
    .hs >>Use a Pedra de Regresso para O Entreposto Rubro
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step
    .isQuestTurnedIn 9671 -- Urgent Delivery
    .goto Bloodmyst Isle,55.210,59.207
	>>Open your |cRXP_PICK_Caixa de correio|r.Saqueie |T134332:0|t[|cRXP_LOOT_A Letter from the Admiral|r]
    .use 24132 >>|cRXP_WARN_Usar|r |T134332:0|t[|cRXP_LOOT_A Letter from the Admiral|r] |cRXP_WARN_to start the quest|r
    .collect 24132,1,9672 --Collect A Letter from the Admiral
    .accept 9672 >>Aceite O Almirante Negro
step
    .goto Bloodmyst Isle,53.245,57.031
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Achelus|r
    .turnin 9669 >>Entregar A Expedição Desaparecida
    .target Achelus
step
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .turnin 9741 >>Entregar Criaturas do Caos
    .turnin 9748 >>Entregar Água que Passarinho Não Bebe
    .accept 9746 >>Aceite No Limite
    .target Vindicator Aesom
step
    .isQuestComplete 9711
    .goto Bloodmyst Isle,55.631,55.223
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Kuros|r
    .turnin 9711 >>Entregar Matis, o Cruel
    .target Vindicator Kuros
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .turnin 9647 >>Entregue Cortar as asinhas
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9580
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9580 >>Entregue Necessidades ursinas
    .target Tracker Lyceon
step
    #optional
    .goto Bloodmyst Isle,55.862,56.997
    .isQuestComplete 9647
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rastreador Lyceon|r
    .turnin 9647 >>Entregue Cortar as asinhas
    .target Tracker Lyceon
step
    #completewith next
    .subzone 3591 >>Viaje até as Ruínas de Loreth'Aran
step
    .goto Bloodmyst Isle,61.173,49.639
    >>Clique no |cRXP_PICK_Monte de Terra|r no chão
    .turnin 9561 >>Entregar As Palavras de Nolkai

 -- skipping this section if they are already level 20
step
    #completewith next
    .subzone 3598 >>Viaje até a Ilha Mal-da-Serpe
    .xp >20,1
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .accept 9687 >>Aceite Devolver o sagrado sossego
    .target Prince Toreth
    .xp >20,1
step
    .isOnQuest 9687
    #loop
    .goto Bloodmyst Isle,54.0,30.9,0
    .goto Bloodmyst Isle,53.9,35.4,0
    .goto Bloodmyst Isle,57.0,34.3,0
    .goto Bloodmyst Isle,56.1,40.2,0
    .goto Bloodmyst Isle,54.0,30.9,25,0
    .goto Bloodmyst Isle,53.9,35.4,25,0
    .goto Bloodmyst Isle,57.0,34.3,25,0
    .goto Bloodmyst Isle,56.1,40.2,25,0
	>>Saqueie |cRXP_LOOT_Osso de Dragão|r no chão
    >>Estes podem ser difíceis de ver e normalmente são encontrados ao redor dos pequenos acampamentos
    .complete 9687,1 --Collect Dragon Bone (x8)
step
    #completewith next
    .subzone 3598 >>Viaje até a Ilha Mal-da-Serpe
step
    .isOnQuest 9687
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .turnin 9687 >>Entregue Devolver o sagrado sossego
    .target Prince Toreth
step
    .isQuestTurnedIn 9687
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .accept 9688 >>Aceitar No Sonho
    .target Prince Toreth
    .xp >20,1
step
    .isOnQuest 9688
    #completewith next
    >>Mate |cRXP_ENEMY_Dragonete Viridiano|r e |cRXP_ENEMY_Filhote Viridiano|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9672 >>Entregue O Almirante Negro
    .accept 9674 >>Aceite As Nagas Sangue Maldito
    .target Captain Edward Hanes
    .xp >20,1
step
    .isOnQuest 9674
    #loop
    .goto Bloodmyst Isle,82.0,21.6,0
    .goto Bloodmyst Isle,81.0,16.2,0
    .goto Bloodmyst Isle,80.8,10.4,0
    .goto Bloodmyst Isle,82.0,21.6,70,0
    .goto Bloodmyst Isle,81.0,16.2,70,0
    .goto Bloodmyst Isle,80.8,10.4,70,0
	>>Mate |cRXP_ENEMY_Bloodcursed Nagas|r
    .complete 9674,1 --Kill Bloodcursed Naga (x10)
    .mob Bloodcursed Naga
step
    .isOnQuest 9674
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9674 >>Entregue As Nagas Sangue Maldito
    .target Captain Edward Hanes
step
    .isQuestTurnedIn 9674
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    .accept 9682 >>Aceite Os Desesperados...
    .target Captain Edward Hanes
    .xp >20,1
step
    .isOnQuest 9682
    #loop
    .goto Bloodmyst Isle,83.21,21.40,0
    .goto Bloodmyst Isle,87.3,16.6,0
    .goto Bloodmyst Isle,83.90,12.18,0
    .goto Bloodmyst Isle,83.21,21.40,40,0
    .goto Bloodmyst Isle,87.3,16.6,40,0
    .goto Bloodmyst Isle,83.90,12.18,50,0
    >>Mate |cRXP_ENEMY_Bloodcursed Voyagers|r. Saqueie-os para obter |cRXP_LOOT_Bloodcursed Souls|r
    .complete 9682,1 --Collect Bloodcursed Soul (x4)
    .mob Bloodcursed Voyager
step
    .isOnQuest 9682
    .goto Bloodmyst Isle,79.150,22.656
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    .turnin 9682 >>Entregue Os Desesperados...
    .target Captain Edward Hanes
step
    .isOnQuest 9649
    #sticky
    #label YserasTear
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .waypoint Bloodmyst Isle,76.8,21.5,35,0
    .waypoint Bloodmyst Isle,75.7,28.5,35,0
    .waypoint Bloodmyst Isle,71.5,28.6,35,0
    .waypoint Bloodmyst Isle,68.5,21.6,35,0
    .waypoint Bloodmyst Isle,70.6,16.5,35,0
    .waypoint Bloodmyst Isle,71.5,11.5,35,0
    .waypoint Bloodmyst Isle,75.1,8.4,35,0
    .waypoint Bloodmyst Isle,74.9,16.3,35,0
	>>Saqueie |cRXP_LOOT_Lágrimas de Ysera|r no chão
    >>Eles se parecem com pequenos cogumelos verdes
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
    .isOnQuest 9688
    #loop
    .goto Bloodmyst Isle,75.2,29.8,0
    .goto Bloodmyst Isle,69.6,27.6,0
    .goto Bloodmyst Isle,68.6,22.2,0
    .goto Bloodmyst Isle,70.8,16.6,0
    .goto Bloodmyst Isle,76.8,16.6,0
    .goto Bloodmyst Isle,78.0,24.2,70,0
    .goto Bloodmyst Isle,75.2,29.8,70,0
    .goto Bloodmyst Isle,69.6,27.6,70,0
    .goto Bloodmyst Isle,68.6,22.2,70,0
    .goto Bloodmyst Isle,70.8,16.6,70,0
    .goto Bloodmyst Isle,76.8,16.6,70,0
    >>Mate |cRXP_ENEMY_Dragonete Viridiano|r e |cRXP_ENEMY_Filhote Viridiano|r
    .complete 9688,1 --Kill Veridian Whelp (x5)
    .mob +Veridian Whelp
    .complete 9688,2 --Kill Veridian Broodling (x5)
    .mob +Veridian Broodling
step
    .solo
    .isQuestComplete 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .turnin 9688 >>Entregue No Sonho
    .target Prince Toreth
step
    .group
    .isQuestComplete 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .turnin 9688 >>Entregue No Sonho
    .accept 9689 >>Aceitar Rasgaqueixo
    .target Prince Toreth
step
    .group
    .isQuestTurnedIn 9688
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .accept 9689 >>Aceitar Rasgaqueixo
    .target Prince Toreth
step
    .group 3
    .isOnQuest 9689
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Clique no |cRXP_PICK_Pira Sempre-Acesa|r no topo da montanha para invocar |cRXP_ENEMY_Razormaw|r
    .timer 36,RP do Razormaw
step
    .group 3
    .isOnQuest 9689
    .goto Bloodmyst Isle,73.129,20.587
    >>Mate |cRXP_ENEMY_Razormaw|r
    >>|cRXP_ENEMY_Razormaw|r é um Elite de nível 20. Ele leva aproximadamente 35 segundos para pousar
    >>|cRXP_WARN_Ele lança|r |T135805:0|t[Sopro Flamejante] |cRXP_WARN_(cone frontal) e|r |T132111:0|t[Rugido Aterrorizante] |cRXP_WARN_(medo com duração de 5 segundos)|r
    >>|cRXP_WARN_NÃO tente esta missão a menos que você também tenha um curador no seu grupo|r
    >>Lembre-se de conjurar [Dádiva dos Naaru] em você mesmo ou em um membro do grupo, se necessário << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    .group
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .turnin 9689 >>Entregue Rasgaqueixo
    .target Prince Toreth
step
    #requires YserasTear
step
    #optional
    #sticky
    #label level20
	.xp 20-2700
step
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    >>Mate |cRXP_ENEMY_Piromantes Falconélius|r e |cRXP_ENEMY_Defensores Falconélius|r
    >>|cRXP_WARN_Pule este passo se você já está no nível 20|r
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
    .xp >20,1
step
    #requires level20
step
    #completewith next
    .subzone 3584 >>Return to Entreposto Rubro
step
    .isQuestComplete 9649
    .goto Bloodmyst Isle,56.428,56.817
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maatparm|r
    .target Maatparm
    .turnin 9649 >>Entregar Lágrimas de Ysera
step
    #optional
    .isQuestComplete 9746
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .turnin 9746 >>Entregue No Limite
    .target Vindicator Aesom
step
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    .xp 20
step << Paladin
    #optional
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
    .target Vindicator Aesom
    .xp <20,1
step
    #optional
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Percepção] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step
    #optional
    #sticky
    .abandon 9746 >>Abandone No Limite
step << NightElf Hunter/Shaman/Mage/Warrior/Priest
    #completewith next
    .goto The Exodar,73.682,53.701,15 >>Desça para dentro de The Exodar
step << Warrior
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Behomat|r no andar superior
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Behomat|r
    .trainer >>Treine suas magias de classe
    .target Behomat
step << Shaman
    .goto The Exodar,32.450,23.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sulaa|r
    .accept 9502 >>Aceite Chamado da Água
    .trainer >>Treine suas magias de classe
    .target Sulaa
step << Shaman
    #completewith next
    .goto The Exodar,27.90,29.43,10 >>Vá para o |cRXP_FRIENDLY_Clarividente Nobambo|r subindo a rampa
step << Shaman
    .goto The Exodar,31.27,27.65,15,0
    .goto The Exodar,29.76,33.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarividente Nobambo|r
    >>|cRXP_FRIENDLY_Clarividente Nobambo|r |cRXP_WARN_patrulha levemente|r
    .turnin 9502 >>Entregue Clamor da água
    .accept 9501 >>Aceite Chamado da Água
    .target Farseer Nobundo
step << Mage
    .goto The Exodar,47.228,62.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Edirah|r
    .trainer >>Treine suas magias de classe
    .target Edirah
step << Mage
	.goto The Exodar,45.986,62.685
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lunaraa|r
    .train 32271 >>Treine [Teleporte: Exodar]
    .target Lunaraa
step << Mage
    .goto The Exodar,44.765,63.202
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Musal|r
    >>|cRXP_BUY_Compre pelo menos uma |r[Runa de Teleporte] |cRXP_BUY_dela|r
    .collect 17031,1 --Rune of Teleportation (1)
    .target Musal
step << NightElf Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vord|r
	.trainer >>Treine suas magias de classe
    .target Vord
step << NightElf Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ganaar|r
	.trainer >>Treine as magias do seu mascote
    .target Ganaar
step << NightElf Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Compre um|r [Arco Recurvo Pesado] |cRXP_BUY_dela ou verifique a Casa de Leilões por algo melhor/mais barato|r
    >>Equipe-o mais tarde, depois que você treinar Arcos << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << NightElf Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Compre um|r [Arco Recurvo Pesado]
    >>Equipe-o mais tarde, depois que você treinar Arcos << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << NightElf Hunter
    #optional
    #completewith next
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Buy a|r Equipe a[Burning Wand]|cRXP_BUY_from him or check the Auction House for a better/cheaper one|r
    .goto The Exodar,46.386,61.499
    .goto The Exodar,63.363,58.999,0
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compre um|r [Varinha Incandescente] |cRXP_BUY_com ele ou verifique a Casa de Leilões para uma melhor|r
    .goto The Exodar,46.386,61.499
    .collect 5210,1 --Burning Wand (1)
    .target Oss
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.5808
step << Priest
    #optional
    +Equipe a [Varinha Incandescente]
    .use 5210
    .itemcount 5210,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest
    .goto The Exodar,39.436,51.061
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Izmir|r
    .trainer >>Treine suas magias de classe
    .target Izmir
step << Dwarf Warrior
    #ah
    .goto The Exodar,69.945,90.749
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ven|r
    >>|cRXP_BUY_Compre um|r |T135423:0|t[Machado de Batalha] |cRXP_BUY_dele|r |cRXP_BUY_dele ou verifique a Casa de Leilões por uma arma melhor/mais barata|r
    .collect 926,1 -- Battle Axe (1)
    .money <0.8806
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.26
    .target Ven
step << Dwarf Warrior
    #optional
    .equip 16,926 >>|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha]
    .use 926
    .itemcount 926,1
step << Shaman
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dela ou verifique a Casa de Leilões por uma arma melhor/mais barata|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 928,1 --Long Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.17
    --not adding .money tag to this step. user could have less silver than vendor wep but cheaper ones may exist on the AH
step << Shaman
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ellomin|r
    >>|cRXP_BUY_Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dela|r
    .goto The Exodar,73.625,84.814
    .goto The Exodar,63.363,58.999,0
    .collect 928,1 --Long Staff (1)
    .target Ellomin
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.17
    .money <0.2871
step << Shaman
    #optional
    .equip 16,928 >>|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
step << Shaman
    .isOnQuest 9501
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>Saia de Exodar
    .zoneskip The Exodar,1
step << Shaman
    .isOnQuest 9501
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fly Blood Watch >>Voe para o Entreposto Rubro
    .target Stephanos
    .zoneskip Bloodmyst Isle
step << Shaman
    #completewith next
    .subzone 3596 >>Viaje até the Hidden Reef
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Aquos|r submerso
    .turnin 9501 >>Entregue Clamor da água
    .accept 9503 >>Aceite Chamado da Água
    .target Aqueous
step << Shaman
    #loop
    .goto Bloodmyst Isle,30.93,39.05,0
	.goto Bloodmyst Isle,27.58,37.09,0
    .goto Bloodmyst Isle,30.18,34.38,0
	.goto Bloodmyst Isle,30.93,39.05,70,0
	.goto Bloodmyst Isle,27.58,37.09,70,0
    .goto Bloodmyst Isle,30.18,34.38,70,0
	>>Mate |cRXP_ENEMY_Fouled Water Spirits|r. Saqueie-os para obter |cRXP_LOOT_Foul Essences|r
    .complete 9503,1 --Collect Foul Essence (x6)
    .mob Fouled Water Spirit
step << Shaman
    .goto Bloodmyst Isle,32.302,16.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Aquos|r submerso
    .turnin 9503 >>Entregue Clamor da água
    .accept 9504 >>Aceite Chamado da Água
    .target Aqueous
step << Shaman
    .isOnQuest 9504
    .hs >>Use a Pedra de Regresso para O Entreposto Rubro
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
step << Shaman
    #completewith next
    .subzone 3584 >>Return to Entreposto Rubro
step << Shaman
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << NightElf Hunter/Mage/Warrior/Priest
    #completewith next
    .goto 1947/1,6179.200,6216.100,20 >>Saia de Exodar
    .zoneskip The Exodar,1
step
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçadora Kella Arconyx|r
    >>|cRXP_FRIENDLY_Caçadora Kella Arconyx|r |cRXP_WARN_está localizada fora da entrada traseira de Exodar|r
    .turnin 9632 >>Entregar Aliados de última hora
    .accept 9633 >>Aceite The Way to Auberdine
    .target Huntress Kella Nightbow
step << Druid
	#completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step << Druid
    .goto Moonglade,48.102,67.346
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sindray|r
    .fly Auberdine>>Voe para Costa Negra
    .target Sindrayl
step << !Druid
    .goto Azuremyst Isle,20.405,54.184
    .zone Darkshore >>Pegue o barco para Costa Negra
step << Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
    .zoneskip Teldrassil
    .zoneskip Darnassus
step << !NightElf Hunter
    .goto 1439,33.213,39.883
    .zone Teldrassil >>Pegue o barco para Teldrassil
    .zoneskip Darnassus
step << !NightElf Hunter/Rogue
    #optional
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << !NightElf Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .trainer >>Treine suas magias de classe
step << !NightElf Hunter
    >>Suba pela rampa à direita de |cRXP_FRIENDLY_Jocaste|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Silvaria|r
    .goto Darnassus,42.2,8.8
    .trainer >>Treine as magias do seu mascote
    .target Silvaria
step << !NightElf Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 264 >>Treine Arcos
    .train 227 >>Treine Cajados
    .target Ilyenia Moonfire
step << !NightElf Hunter
    #ah
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Compre um|r [Arco Recurvo Pesado] |cRXP_BUY_dela ou verifique a Casa de Leilões por algo melhor/mais barato|r
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #ssf
    .goto Darnassus,63.27,66.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Landria|r
    >>|cRXP_BUY_Compre um|r [Arco Recurvo Pesado]
    .collect 3027,1 -- Heavy Recurve Bow
    .target Landria
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
step << !NightElf Hunter
    #optional
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
step << Rogue
    .goto 1457,33.123,16.269,20,0
    .goto 1457,31.592,17.005,8,0
    .goto 1457,31.786,18.587,8,0
    .goto 1457,32.803,18.613,8,0
    .goto 1457,32.947,17.109,8,0
    .goto 1457,32.027,16.633,8,0
    .goto 1457,31.541,17.897,8,0
    .goto 1457,32.291,19.031,8,0
    .goto 1457,37.009,21.920
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r no subsolo
    .trainer >>Treine suas magias de classe
    .target Syurna
step << Rogue
    #ah
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre uma|r [Espada Longa] |cRXP_BUY_com ela|r ou verifique a Casa de Leilões por algo melhor/mais barato
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #ssf
    .goto 1457,56.367,51.819,0
    .goto 1457,58.774,44.495
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre uma|r [Espada Longa] |cRXP_BUY_. Equipe-a no nível 21|r
    .collect 923,1 --Longsword (1)
    .target Ariyell Skyshadow
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.2
step << Rogue
    #optional
    #completewith DarkshoreEnd
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << !NightElf Hunter/Rogue
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guarda Argêntea Manados|r e |cRXP_FRIENDLY_Vigilalva Shaedlass|r no andar de cima
    .accept 1199 >>Aceite A Hora do Crepúsculo
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >>Aceite Procurando Thaelrid
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step << !NightElf Hunter/Rogue
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darnassus,1
step << !NightElf Hunter/Rogue
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Voe para Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
]])


RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guia de Sobrevivência (A)
#subgroup RXP Guia de Sobrevivência 20-32
#name 20-21 Costa Negra
#next 21-23 Vale Gris

step
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r
    .home >>Defina sua Pedra de Regresso para Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Stormwind>>Voe para Ventobravo
    .target Shellei Brondir
step << Warlock
.dungeon !DM
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
step << Warlock
.dungeon !DM
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1716 >>Aceite Devorador de Almas
    .target Gakin the Darkbinder
step << Warlock
.dungeon !DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
    .zoneskip Stormwind City,1
step << Warlock
#optional
.dungeon !DM
    .goto StormwindClassic,39.834,54.360
    +Entre em The Stockades. Você agora "Ghetto Lar" para Costa Negra
    .zoneskip Stormwind City,1
step << Warlock
#optional
.dungeon !DM
    .goto StormwindClassic,39.834,54.360
    .zone Darkshore>>Ghetto Lar para Costa Negra. Para fazer isso, entre em The Stockades, depois copie e cole o link abaixo no bate-papo. Espere o cronômetro de 1 minuto
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> CLIQUE AQUI

--Continued below is .dungeon DM only
step
.dungeon DM
    #completewith next
    .goto 1439,32.432,43.744,15 >>Viaje até o cais do barco do Porto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip Wetlands
step
.dungeon DM
    #optional
    .goto Darkshore,32.29,44.05
    >>Você agora começará a viajar para As Minas Mortas
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Paladin/Warrior
.dungeon DM
    #ah
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Compre uma|r [Espada do Carrasco] |cRXP_BUY_com ele (se estiver disponível e você puder pagar)|r
    >>Alternativamente, você pode verificar em breve a Casa de Leilões por algo melhor ou mais barato
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #ssf
    .goto 1437,11.579,59.540,6,0
    .goto 1437,11.435,59.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brak Durnad|r dentro
    .vendor 1441 >>|cRXP_BUY_Compre uma|r [Espada do Carrasco] |cRXP_BUY_com ele (se estiver disponível e você puder pagar)|r
    .collect 4818,1 --Collect Executioner's Sword (1)
    .target Brak Durnad
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << Paladin/Warrior
.dungeon DM
    #optional
    #completewith DeeprunDM
    +Equipe a [Espada do Carrasco]
    .use 4818
    .itemcount 4818,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.8
step << !NightElf !Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Ironforge >>Voe para Altaforja
    .target Shellei Brondir
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Mage
.dungeon DM
    .goto Ironforge,25.50,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milstaff Intempestivus|r
    .train 3562 >>Treine [Teleporte: Altaforja]
    .target Milstaff Stormeye
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    #optional
    #completewith DeeprunDM
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << Warlock
.dungeon DM
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor 6382 >>|cRXP_BUY_Compre|r [Grimórios] |cRXP_BUY_para seus mascotes, se desejar|r
    .target Jubahl Corpseseeker
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,9.490,59.694
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Wetlands,5.485,64.156,40 >>Salte da ponta do píer e nade até o ponto de referência
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    .goto Wetlands,2.433,78.689,-1
    .goto Ironforge,17.089,83.373,-1
    .zone Ironforge >>Use o recurso de auto-destravamento do personagem unstuck para pular para Altaforja. Você precisará deslogar no local, depois acessar o menu de ajuda em outro personagem (alternativamente, cole o link de destravamento abaixo no navegador), role até autoatendimento. Clique em destravar no seu personagem e mova-se. Se não conseguir se destravar, ignore esta etapa e nade ao longo das montanhas até Cerro Oeste
    .link https://www.youtube.com/watch?v=oVoxsr4zcg4 >>https://www.youtube.com/watch?v=oVoxsr4zcg4 >> Clique aqui para referência em vídeo
    .link https://us.battle.net/support/en/help/product/wow/197/834/solution >>https://us.battle.net/support/en/help/product/wow/197/834/solution >> Clique aqui para o link de destravamento para servidores US
    .link https://eu.battle.net/support/en/article/32275 >>https://eu.support.blizzard.com/en/help/product/wow/197/834/solution >> Clique aqui para o link de destravamento para servidores EU
    .subzoneskip 809 --IF Gates
    .subzoneskip 2257 --Deeprun Tram
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Ironforge
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto 1415/0,258.6045,-4078.9674,60,0 -- Wetlands to Westfall swim
    .goto 1415/0,807.0190,-4254.0282,60,0
    .goto 1415/0,1017.5144,-4474.1449,20,0
    .goto 1415/0,1088.2662,-4457.2490,20,0
    .goto 1415/0,1327.9775,-4321.1427,20,0
    .goto 1415/0,1582.4728,-4300.0228,20,0
    .goto 1415/0,1984.1037,-4519.6701,20,0
    .goto 1415/0,1998.1836,-4645.6858,30,0
    .goto 1415/0,2094.2794,-4885.2798,30,0
    .goto 1415/0,1863.7200,-5311.1986,20,0
    .goto 1415/0,1742.2803,-5324.3399,20,0
    .goto 1415/0,1437.8012,-5938.9302,40,0
    .goto 1415/0,1220.2658,-6480.5393,30,0
    .goto 1415/0,1447.6572,-6898.2448,30,0
    .goto 1415/0,1459.2731,-7068.1430,20,0
    .goto 1415/0,1728.2004,-7578.0722,30,0
    .goto 1415/0,1544.8089,-7992.7270,20,0
    .goto 1415/0,1445.1932,-8083.5428,30,0
    .goto 1415/0,1440.2652,-8254.8490,30,0
    .goto 1415/0,1348.0415,-8417.7072,30,0
    .goto StormwindClassic,4.493,29.157,20,0
    .goto StormwindClassic,10.336,40.166,10,0
    .goto StormwindClassic,7,45.471,10,0
    .goto StormwindClassic,5.560,50.125,10,0
    .goto StormwindClassic,13.669,74.499,20,0
    .goto Westfall,42.024,70.980
    .zone Westfall >>Se o site de destravamento não estiver disponível, nade até Cerro Oeste
    .zoneskip Ironforge
    .subzoneskip 809--IF Gates
    .subzoneskip 2257--Deeprun Tram
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    #completewith next
    .goto Westfall,54.28,9.26,100,0
    .goto Westfall,56.55,52.64,100 >>Corra pela praia e siga até a Colina da Sentinela
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .target Thor
    .zoneskip Ironforge --Skips if you didn't swim from Wetlands
    .subzoneskip 809
    .subzoneskip 2257
    .zoneskip Stormwind City
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
    .zoneskip Wetlands
    .zoneskip Elwynn Forest
    .zoneskip Westfall
    .zoneskip Stormwind City
step
.dungeon DM
    #optional
    .goto Ironforge,78.00,51.40
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Stormwind City
    .zoneskip Westfall
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Elwynn Forest,36.809,72.429,100,0
    .goto StormwindClassic,69.961,86.583
    .zone Stormwind City >>Corra para Ventobravo
    .zoneskip Ironforge
    .subzoneskip 809
    .subzoneskip 2257
step
.dungeon DM
    #optional << NightElf/Draenei
    #completewith CollectingMemories
    .zone Stormwind City >>Pegue o Metrô Correfundo para Ventobravo
    .zoneskip Wetlands << NightElf/Draenei
    .zoneskip Elwynn Forest
    .zoneskip Westfall
step
.dungeon DM
    .goto StormwindClassic,55.510,12.504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .accept 2040 >>Aceite Ataque Subterrâneo
    .target Shoni the Shilent
step
.dungeon DM
    #label CollectingMemories
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r
    .accept 167 >>Aceite Oh, Irmão...
    .accept 168 >>Aceite Coletando Memórias
    .target Wilder Thistlenettle
step
.dungeon DM
    .isQuestAvailable 1275
    .goto StormwindClassic,21.40,55.80
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Argos Umbrurmúrio|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
step << Mage
.dungeon DM
    .goto StormwindClassic,39.68,79.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
	.xp <20,1
    .target Larimaine Purdue
step << Rogue
.dungeon DM
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>Certifique-se de treinar [Abrir Fechadura] pois você precisará disso mais tarde
    .train 1804 >>Treine [Abrir Fechadura]
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step
.dungeon DM
    .goto StormwindClassic,57.12,57.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .train 201 >>Treine Espadas de Uma Mão << Mage/Warlock
    .train 1180 >>Treine Adagas << Mage/Druid/Priest
    .train 202 >>Treine Espadas de Duas Mãos << Warrior/Paladin/Hunter
    .target Woo Ping
step
.dungeon DM
    #completewith GryanAll
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fp Stormwind >>Aprenda a rota de voo para Ventobravo << NightElf/Draenei
    .fly Westfall >>Voe para Cerro Oeste << !NightElf !Draenei
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
step << NightElf/Draenei
.dungeon DM
    #optional
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fp Sentinel Hill >>Pegue o ponto de voo do Morro da Sentinela
    .target Thor
step << Rogue
.dungeon DM
    #label GryanAll
    .goto Westfall,56.33,47.52
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .goto 1436,56.454,69.982,0
    .goto 1436,56.434,74.339,0
    .goto 1436,59.384,74.184,0
    .goto 1436,60.871,74.362,0
    .goto 1436,60.902,77.640,0
    .goto 1436,63.442,77.339,0
    .goto 1436,65.203,75.286,0
    .goto 1436,63.594,72.862,0
    .goto 1436,63.825,70.125,0
    .goto 1436,42.649,71.376
    >>|cRXP_WARN_Faça grind em |cRXP_ENEMY_Gnolls|r ao sul da Colina do Sentinela enquanto reúne um grupo para as Minas Mortas|r
    .subzone 20 >>Quando seu grupo estiver formado, viaje até Arroio da Lua
step
.dungeon DM
    .goto Westfall,42.55,71.69
    .subzone 1581 >>Entre no Esconderijo Défias com seu grupo
step
.dungeon DM
    #completewith EnterDM
    >>Mate os |cRXP_ENEMY_Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    >>Você também pode completar isso dentro das Minas Mortas
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    #completewith next
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Mate |cRXP_ENEMY_Encarregado Espinhofolha|r. Saqueie-o para obter |cRXP_LOOT_Distintivo|r
    >>Isto é concluído FORA da Masmorra
    .complete 167,1 -- Thistlenettle's Badge (1)
    .unitscan Foreman Thistlenettle
step
.dungeon DM
    .goto 1415/0,1504.6810,-11259.7472,25,0
    .goto 1415/0,1557.4809,-11297.2937,25,0
    .goto 1415/0,1596.2008,-11318.4137,25,0
    .goto 1415/0,1539.8809,-11332.4936
    >>Mate |cRXP_ENEMY_Mineradores Esqueléticos|r, |cRXP_ENEMY_Dinamiteiros Mortos-vivos|r e |cRXP_ENEMY_Escavadores Mortos-vivos|r. Saqueie-os para obter |cRXP_LOOT_Cartas|r
    >>Isto é concluído FORA da Masmorra
    .complete 168,1 -- Miners' Union Card (4)
    .mob Skeletal Miner
    .mob Undead Dynamiter
    .mob Undead Excavator
step
.dungeon DM
    #label EnterDM
    .goto 1415/0,1589.1608,-11250.3605,25,0
    .goto 1415/0,1617.3207,-11217.5073,20,0
    .goto 1415/0,1681.3845,-11207.6513
    .subzone 1581,2 >>Entre na Masmorra das Minas Mortas
step
.dungeon DM
    #softcore
    #optional
    #completewith VanCleef
    >>Mate os |cRXP_ENEMY_Défias|r dentro de Minas Mortas. Saqueie-os para obter |cRXP_LOOT_Bandanas de Seda Vermelha|r
    .complete 214,1 -- Red Silk Bandana (10)
    .isOnQuest 214
step
.dungeon DM
    >>Mate |cRXP_ENEMY_Sneed|r. Saqueie-o para obter |cRXP_LOOT_Engrenotreco Gnomo|r
    .complete 2040,1 -- Gnoam Sprecklesprocket (1)
step
.dungeon DM
    >>Mate |cRXP_ENEMY_Edwin VanCleef|r. Saqueie-o para obter |cRXP_LOOT_Cabeça|r e |T133471:0|t[|cRXP_LOOT_Uma Carta Não Enviada|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
    .complete 166,1 -- Head of VanCleef (1)
    .isOnQuest 166
step
.dungeon DM
    #label VanCleef
    >>Mate |cRXP_ENEMY_Edwin VanCleef|r. Saqueie-o para obter |T133471:0|t[|cRXP_LOOT_Uma Carta Não Enviada|r]
    .collect 2874,1,373,1 -- An Unsent Letter (1)
step
.dungeon DM
    #optional
    #completewith DeadminesEnd
    .goto 1436,38.909,84.014
    .subzone 920 >>Saia das Minas Mortas pela saída traseira a leste de |cRXP_ENEMY_Edwin VanCleef|r
    .zoneskip Stormwind City
    .zoneskip Westfall
    .zoneskip 1415
step
.dungeon DM
    .isQuestComplete 166
    .goto Westfall,56.33,47.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 166 >>Entregue A Irmandade Défias
    .target Gryan Stoutmantle
step
.dungeon DM
    .isQuestComplete 214
    .goto Westfall,56.67,47.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Batedor Riel|r no topo da torre
    .turnin 214 >>Entregue Bandanas de Seda Vermelha
    .target Scout Riell
step << Mage
.dungeon DM
    #optional
    .cast 3561 >>|cRXP_WARN_Use|r |T135763:0|t[Teleporte: Ventobravo]
    .zoneskip Stormwind City
step << Mage
.dungeon DM
    #optional
    .goto 1453,36.863,81.132
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r no topo da torre
    .train 2138 >>Treine suas magias de classe
    .target Elsharin
    .xp <22,1
step << !Mage
.dungeon DM
    #completewith ShoniEnd
    #label DeadminesEnd
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .zoneskip Stormwind City
    .target Thor
step << Warlock
.dungeon DM
    #optional
    #completewith DevourerofSouls
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
step << Warlock
.dungeon DM
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 6202 >>Treine suas magias de classe
    .target Ursula Deline
    .xp <22,1
step << Warlock
.dungeon DM
    #label DevourerofSouls
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1716 >>Aceite Devorador de Almas
    .target Gakin the Darkbinder
step << Paladin
.dungeon DM
    #optional
    #completewith next
    .goto 1453,42.917,34.221,15,0
    .goto 1453,41.385,31.547,15,0
    .goto 1453,39.810,29.788,15
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até |cRXP_FRIENDLY_Benedito Brião|r dentro da Catedral de Ventobravo
    .xp <22,1
step << Paladin
.dungeon DM
    #optional
    .goto StormwindClassic,38.58,32.00,12,0
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19835 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20,0
    .goto StormwindClassic,38.54,26.86,20 >>Vá em direção à |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r dentro da Catedral de Ventobravo
    .xp <22,1
step << Priest
.dungeon DM
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r no interior
    .train 8103 >>Treine suas magias de classe
    .target High Priestess Laurena
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .train 1856 >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <22,1
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.799,53.815,15,0
    .goto 1453,77.290,58.138,12,0
    .goto 1453,78.466,60.034,12,0
    .goto 1453,78.560,58.435,6,0
    .goto 1453,75.754,60.369,12 >>Vá em direção a |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r dentro da SI:7, no andar superior
step << Rogue
.dungeon DM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Renzik, "O Bicudo"|r e |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .accept 2281 >>Aceite Encontro em Cristarrubra
    .goto StormwindClassic,75.76,60.35
    .target +Renzik "The Shiv"
    .accept 2360 >>Aceite Mathias e os Défias
    .goto StormwindClassic,75.78,59.84
    .target +Master Mathias Shaw
step << Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    #completewith RedridgeRendevous
    .goto StormwindClassic,57.816,58.331,30,0
    .goto StormwindClassic,63.301,62.103,30,0
    .goto StormwindClassic,63.047,65.744,15,0
    .goto StormwindClassic,66.276,62.135
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Redridge Mountains >>Voe para Montanhas Cristarrubra
    .target Dungar Longdrink
step << !Human Rogue
.dungeon DM
    .isOnQuest 2281,2360
    .goto StormwindClassic,73.2,92.1
    .zone Elwynn Forest >>Saia de Ventobravo
step << !Human Rogue
.dungeon DM
    #optional
    .isOnQuest 2281,2360
    #completewith WileyStart
    .goto Redridge Mountains,15.27,71.45
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step << NightElf/Draenei
.dungeon DM
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    #label RedridgeRendevous
    .goto Redridge Mountains,28.07,52.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
    .turnin 2281 >>Entregue Redridge Encontro Marcado
    .accept 2282 >>Aceite Moinho de Alther
    .target Lucius
step << Rogue
.dungeon DM
    .isOnQuest 65
    .goto Redridge Mountains,27.35,44.07,8,0
    .goto Redridge Mountains,26.48,45.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wiley, o Negro|r no andar de cima
    .turnin 65 >>Entregue A Irmandade Défias
	.target Wiley the Black
step << Rogue
.dungeon DM
    #completewith next
    .subzone 97 >>Viaje até Moinho de Alther
step << Rogue
.dungeon DM
    .goto 1433,51.846,45.116
    >>Você DEVE fazer isso para a missão [Venenos] mais tarde
    >>|cRXP_WARN_Fique sobre o ponto de referência. Posicione a câmera e o cursor até conseguir clicar 3|cRXP_PICK_Baú de Exercício|r uma vez sem precisar mover nada|r
    .skill lockpicking,80 >>|cRXP_WARN_Abra as|cRXP_PICK_Baú de Exercício|r no chão em Moinho de Alter até sua habilidade de |r[Abrir Fechadura] chegar a 80|r
step << Rogue
.dungeon DM
	.goto Redridge Mountains,52.05,44.69
    >>Abra |cRXP_PICK_Cofre de Lucius|r. Saqueie-o para obter o |cRXP_LOOT_Símbolo de Ladroagem|r
    .complete 2282,1 --Token of Thievery
    .skill lockpicking,<80,1
step << Rogue
.dungeon DM
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lucius|r
	.target Lucius
    .goto Redridge Mountains,28.07,52.02
    .turnin 2282 >>Entregue Moinho de Alther
step << Rogue
.dungeon DM
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fly Sentinel Hill >>Voe para Cerro Oeste
    .target Ariena Stormfeather
step << Rogue
.dungeon DM
    .goto Westfall,68.50,70.08
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Agente Marta Hari|r
    >>Você DEVE fazer esta missão para [Venenos]
    .turnin 2360 >>Entregue Mathias e os Défias
    .accept 2359 >>Aceite A Torre de Klaven
    .target Agent Kearnen
step << Rogue
.dungeon DM
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
.dungeon DM
    #optional
    #completewith Mortwake
    +Equipe a [Adaga de Madeira Curva] para esta missão, caso você ainda não tenha uma [Adaga] equipada
    .use 15396
    .itemcount 15396,1
step << Rogue
.dungeon DM
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
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomStart
    #label AntiVenomEnd
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Dwarf Rogue
.dungeon DM
    #optional
    #sticky
    #label AntiVenomEnd2
    .cast 20594 >>Conjure [Forma de Pedra] para remover o debuff [Toque de Zanzil]
    .aura -9991
step << Rogue
.dungeon DM
    #optional
    #completewith KlavenFinish
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step << !Dwarf Rogue
.dungeon DM
    #optional
    #requires AntiVenomEnd
    #completewith FirstAidEnd
    .goto 1453,42.938,33.878,20,0
    .goto 1453,41.544,31.330,20,0
    .goto 1453,41.688,28.049,20,0
    .goto 1453,43.070,26.155,15 >>Vá em direção à |cRXP_FRIENDLY_Suzi Lira|r
    .aura -9991
step << !Dwarf Rogue
.dungeon DM
    #requires AntiVenomEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .skill firstaid,80 >>|cRXP_WARN_Eleve seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_até 80|r
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #label FirstAidEnd
    .goto 1453,43.070,26.155
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suzi Lira|r
    >>|cRXP_WARN_Se você tiver um amigo|r |T626003:0|t|cFFF48CBAPaladino|r |cRXP_WARN_ou|r |T625999:0|t|cFFFF7C0ADruida|r |cRXP_WARN_, peça para ele remover o|r |T136230:0|t[Toque de Zanzil] |cRXP_WARN_por você|r
    .train 7934 >>|cRXP_WARN_treine|r |T134437:0|t[Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #label AntiVenomStart2
    .collect 6452,1 >>Crie um [Antipeçonha]
    .aura -9991
    .itemcount 6452,<1 --Anti-Venom (<1)
    .train 7934,3 --Anti Venom spell trained
step << !Dwarf Rogue
.dungeon DM
    #sticky
    #requires AntiVenomStart2
    #label AntiVenomEnd2
    .cast 7932 >>Use o [Antipeçonha] na sua bolsa para remover o debuff [Toque de Zanzil]
    .use 6452
    .aura -9991
    .itemcount 6452,1 --Anti-Venom (1)
step << Rogue
.dungeon DM
    #optional
    #completewith next
    .goto StormwindClassic,74.90,54.00,20,0
    .goto StormwindClassic,78.43,60.15,20,0
    .goto StormwindClassic,78.67,60.13,10 >>Entre na sede da SI:7. Suba as escadas em direção a |cRXP_FRIENDLY_Mestre Mathias Shaw|r
step << Rogue
.dungeon DM
    #label KlavenFinish
    .goto Stormwind City,75.78,59.84
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Mathias Shaw|r
    .turnin 2359 >>Entregue A Torre de Klaven
    .target Master Mathias Shaw
step << Rogue
.dungeon DM
    .goto Stormwind City,78.2,58.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jasper Fel|r no andar térreo do prédio
    >>Compre reagentes para criar [|cRXP_FRIENDLY_Veneno Instantâneo|r] e [|cRXP_FRIENDLY_Sumir|r] com ele
    .collect 3371,20 --Empty Vial (20)
    .collect 2928,20 -Dust of Decay (20)
    .collect 5140,20 --Flash Powder (20)
    .target Jasper Fel
step << Rogue
.dungeon DM
    >>Abra seu livro de magias e encontre a habilidade |T136242:0|t[|cRXP_FRIENDLY_Venenos|r] na aba geral. Abra-a e crie 20 Venenos Instantâneos. |cRXP_WARN_Lembre-se de mantê-los aplicados em ambas as suas armas durante o combate|r
    .collect 6947,20 --Instant Poison (20)
step << Warrior
.dungeon DM
    #optional
    #completewith next
    .goto 1453,74.592,51.567,15,0
    .goto 1453,78.011,47.797,15,0
    .goto 1453,80.030,45.591,12 >>Vá em direção a |cRXP_FRIENDLY_Wu Shen|r dentro do Centro de Comando
    .xp <22,1
step << Warrior
.dungeon DM
    #optional
    .goto 1453,78.673,45.791
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu Shen|r no andar de cima
    .train 6192 >>Treine suas magias de classe
    .target Wu Shen
    .xp <22,1
step
.dungeon DM
    .goto StormwindClassic,48.079,30.913,10,0
    .goto StormwindClassic,49.193,30.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .use 2874 >>|cRXP_WARN_Use [|cRXP_LOOT_Carta Não Enviada|r] para iniciar a missão|r
    .accept 373 >>Aceite A Carta Não Enviada
    .turnin 373 >>Entregue A Carta Não Enviada
    .accept 389 >>Aceite Basílio Taborda
    .target Baros Alexston
step
.dungeon DM
    .isQuestTurnedIn 373 -- DM Unsent Letter
    .goto StormwindClassic,42.435,59.236,10,0
    .goto StormwindClassic,41.102,58.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Carcereiro-chefe Thelágua|r
    .turnin 389 >>Entregue Basílio Taborda
    .target Warden Thelwater
step
.dungeon DM
    .goto StormwindClassic,65.438,21.175
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wilder Urtigão|r dentro
    .turnin 167 >>Entregue Oh, Irmão...
    .turnin 168 >>Entregue Coletando Memórias
    .target Wilder Thistlenettle
step << skip --Hunter - nothing good to train at 22
.dungeon DM
    .goto StormwindClassic,61.609,15.269
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
    .xp <22,1
step
.dungeon DM
    #label ShoniEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shoni, a Shilenchiosa|r
    .turnin 2040 >>Entregue Ataque Subterrâneo
    .goto StormwindClassic,55.510,12.504
    .target Shoni the Shilent
step
.dungeon DM
    .goto StormwindClassic,55.21,7.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billibub Rodagiros|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele (se estiver disponível)|r
--    >>You will need 2 bronze tubes for a quest later << Rogue
    .bronzetube
    .target Billibub Cogspinner
step << Druid
.dungeon DM
	#completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
.dungeon DM
    #optional
    #completewith next
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
    .xp <22,1
step
.dungeon DM
    .hs >>Use a pedra do regresso para Costa Negra
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
    >>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .zoneskip Darkshore
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442


--accepting BFD quests in Darnassus
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto 1439,33.213,39.883
    .zone Teldrassil >>Pegue o barco para Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD
    .isNotOnQuest 1199,1198
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guarda Argêntea Manados|r e |cRXP_FRIENDLY_Vigilalva Shaedlass|r no andar de cima
    .accept 1199 >>Aceite A Hora do Crepúsculo
    .target +Argent Guard Manados
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .accept 1198 >>Aceite Procurando Thaelrid
    .target +Dawnwatcher Shaedlass
    .goto Darnassus,55.360,25.024 -- Dawnwatcher Shaedlass
step
.dungeon BFD
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darnassus,1
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Teldrassil,1

step
    .goto Darkshore,36.097,44.932
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
step
    .goto Darkshore,37.219,44.227
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 4740 >>Aceite Procurado: Lodofundo!
step
    .goto Darkshore,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cave Mushrooms
    .target Barithras Moonshade
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .target Gershala Nightwhisper
step
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .accept 1275 >>Aceite Pesquisando a Corrupção
    .target Gershala Nightwhisper
step
	.isQuestTurnedIn 2138
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2139 >>Aceite Esperança de Tharnariun
    .target Tharnariun Treetender
step
    .isQuestTurnedIn 985
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 986 >>Aceite Um Mestre Perdido
    .target Terenthis
step
    .goto Darkshore,39.043,43.555
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r no andar de cima
    .accept 965 >>Aceite A Torre de Althalaxx
    .target Sentinel Elissa Starbreeze
step
    .goto Darkshore,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.turnin 9633 >>Entregue O Caminho para Auberdine
    .accept 10752 >>Aceite Rumo a Vilavska
    .turnin 4762 >>Entregue Rio Fontescarpa << Draenei/Warlock
    .accept 4763 >>Aceite Os Corrompidos Bosquenero
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .accept 10752 >>Aceite Rumo a Vilavska
    .turnin 4762 >>Entregue Rio Fontescarpa << Draenei/Warlock
    .accept 4763 >>Aceite Os Corrompidos Bosquenero
    .target Thundris Windweaver
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .isOnQuest 4763
    .goto Darkshore,37.78,44.06
    .use 12346 >>Use a [Tigela de Purificação Vazia] no |cRXP_PICK_Poço Lunar de Auberdine|r
    .collect 12347,1,4763,1
step
    #optional
    #completewith MistVeil
    +Pressione Escape, depois vá em -> Opções -> Controles
    >>|cRXP_WARN_Verifique "Ativar a Tecla Interagir" e atribua a opção "Interagir com Alvo" a uma tecla|r
step
    .goto 1439,38.213,28.754
--  .goto 1439,38.234,28.796
    >>==FIQUE ATENTO AO SEU MEDIDOR DE FÔLEGO==
    >>Nade debaixo d’água até a parte externa da traseira do barco
    >>|cRXP_WARN_Na localização da seta, pressione sua tecla de "Interagir com o Alvo" para saquear o|cRXP_LOOT_ Cofre da Aurora Prateada|r pelo lado de fora do barco|r
    >>|cRXP_WARN_Se você não quiser fazer isso, nade debaixo d’água até o piso inferior do barco e saque o|cRXP_LOOT_ Cofre da Aurora Prateada|r por dentro|r
    .complete 982,1 --Silver Dawning's Lockbox (1)
    .isOnQuest 982
step
    #label MistVeil
    .goto 1439,39.581,27.487
--  .goto 1439,39.629,27.462
    >>==FIQUE ATENTO AO SEU MEDIDOR DE FÔLEGO==
    >>Nade debaixo d’água até a parte externa da traseira do barco
    >>|cRXP_WARN_Na localização da seta, pressione sua tecla de "Interagir com o Alvo" para saquear o|cRXP_LOOT_ Cofre do Véu da Névoa|r pelo lado de fora do barco|r
    >>|cRXP_WARN_Se você não quiser fazer isso, nade debaixo d’água até o piso inferior do barco e saque o|cRXP_LOOT_ Cofre do Véu da Névoa|r por dentro|r
    .complete 982,2 --Mist Veil Lockbox (1)
    .isOnQuest 982
step
    #completewith BottomKey
    #optional
    >>Mate |cRXP_ENEMY_Reef Crawlers|r e |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isQuestTurnedIn 4681
    .goto Darkshore,44.18,20.60
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
step << Druid
    .goto Darkshore,48.87,11.32
    >>Nade para fora na água
    >>Abra a |cRXP_PICK_Strange Caixa-forte|r. Saque-a para obter o |cRXP_LOOT_Meio-pingente da Agilidade Aquática|r
    .collect 15883,1,272,1 --Collect Half Pendant of Aquatic Agility (x1)
step
    .isQuestTurnedIn 4681
    .goto 1439,53.113,18.099
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .accept 2098 >>Aceite Gyromast's Retrieval
    .target Gelkak Gyromast
step
    #optional
    #completewith next
    .goto Darkshore,56.10,16.88,0
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento à habilidade|cRXP_ENEMY_Rastejadores do Recife Enfurecidos|r'|r |cRXP_WARN_[Açoitar] . Você pode receber 200 de dano instantaneamente de seus ataques corpo a corpo
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,54.93,12.19
    >>Mate os |cRXP_ENEMY_Greymist Oracles|r e os |cRXP_ENEMY_Greymist Tidehunters|r. Saque-os para obter o |cRXP_LOOT_Middle of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento aos|cRXP_ENEMY_Oráculos Névoa Cinzenta|r'|r [Raio] e ao dano que eles também curam com|cRXP_WARN_ |r[Onda de Cura]|r
    >>|cRXP_WARN_Você pode usar LoS (Linha de Visão) nos|r|cRXP_ENEMY_Oráculos Névoa Cinzenta|r'|r[Raio] ao redor do navio afundado para evitar receber dano
    .complete 2098,2 -- Middle of Gelkak's Key (1)
    .mob Greymist Tidehunter
    .mob Greymist Oracle
step
    #label BottomKey
    .goto Darkshore,55.59,16.98,45,0
    .goto Darkshore,53.76,18.96,45,0
    .goto Darkshore,51.34,22.00,45,0
    .goto Darkshore,56.63,12.08
    >>Mate os |cRXP_ENEMY_Raging Reef Crawlers|r e os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para obter o |cRXP_LOOT_Bottom of Gelkak's Chave|r
    >>|cRXP_WARN_Fique atento à habilidade|cRXP_ENEMY_Rastejadores do Recife Enfurecidos|r'|r |cRXP_WARN_[Açoitar] . Você pode receber 200 de dano instantaneamente de seus ataques corpo a corpo
    .complete 2098,3 -- Bottom of Gelkak's Key (1)
    .mob Raging Reef Crawler
    .mob Encrusted Tide Crawler
step
    #loop
    .goto Darkshore,52.6,20.6,60,0
    .goto Darkshore,51.0,22.6,60,0
    .goto Darkshore,47.6,21.6,60,0
    .goto Darkshore,44.8,21.6,60,0
    .goto Darkshore,47.6,21.6,60,0
    .goto Darkshore,51.0,22.6,60,0
    .goto Darkshore,52.6,20.6,60,0
    >>Mate |cRXP_ENEMY_Reef Crawlers|r e |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Fine Crab Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    #sticky
    #label foreststriders
    .goto Darkshore,59.29,13.22,55,0
    .goto Darkshore,61.40,9.40,50,0
    .goto Darkshore,61.51,12.66,50,0
    .goto Darkshore,61.24,15.38,50,0
    .goto Darkshore,61.40,9.40
    >>Mate os |cRXP_ENEMY_Giant Foreststriders|r. Saque-os para obter o |cRXP_LOOT_Top of Gelkak's Chave|r
    .complete 2098,1 -- Top of Gelkak's Key (1)
    .mob Giant Foreststrider
step
    #loop
    .goto Darkshore,61.40,9.40,45,0
    .goto Darkshore,62.42,7.67,45,0
    .goto Darkshore,61.40,9.40,0
    .goto Darkshore,62.42,7.67,0
    >>Mate os |cRXP_ENEMY_Moonstalker Sires|r e os |cRXP_ENEMY_Moonstalker Matriarchs|r. Saque-os para obter seus |cRXP_LOOT_Pelts|r
    >>|cRXP_WARN_Fique atento às|cRXP_ENEMY_ Matriarcas Espreitaluna|r. Elas sempre atacam junto com um|cRXP_ENEMY_ Filhote de Espreitaluna|r ao seu lado|r
    .complete 986,1 -- Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .mob Moonstalker Matriarch
    .mob Moonstalker Runt
step
    #requires foreststriders
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .turnin 2098 >>Entregue Gyromast's Retrieval
    .accept 2078 >>Aceite Gyromast's Revanche
    .target Gelkak Gyromast
step
    .isOnQuest 2078
    #completewith next
    .goto 1439,55.802,18.290
    .gossip 6669,0 >>Fale com o|cRXP_FRIENDLY_ Mangual-eliminator Pro Giramastro 4100|r para iniciar a escolta
    .skipgossip
    .target The Threshwackonator 4100
step
    .isOnQuest 2078
    .goto 1439,56.654,13.484
    >>Escolte |cRXP_FRIENDLY_Mangual-eliminator Pro Giramastro 4100|r até |cRXP_FRIENDLY_Gelkak Giramastro|r
    >>Mate o |cRXP_ENEMY_Mangual-eliminator Pro Giramastro 4100|r quando ele ficar hostil
    .complete 2078,1 --Gyromast's Revenge (1)
    .mob The Threshwackonator 4100
step
    .isQuestComplete 2078
    .goto 1439,56.654,13.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Gelkak Giramastro|r
    .turnin 2078 >>Entregue Gyromast's Revanche
    .target Gelkak Gyromast
step
    #optional
    #sticky
    .destroy 7442 >>Remova a Chave de Giramastro da mochila
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #loop
    .goto 1439,55.231,26.508,0
    .goto 1439,56.194,27.071,0
    .goto 1439,56.047,26.586,0
    .goto 1439,55.231,26.508,50,0
    .goto 1439,55.369,27.025,50,0
    .goto 1439,55.763,26.695,50,0
    .goto 1439,55.815,26.972,50,0
    .goto 1439,56.194,27.071,50,0
    .goto 1439,56.790,27.621,50,0
    .goto 1439,57.278,26.311,50,0
    .goto 1439,57.046,26.234,50,0
    .goto 1439,56.544,26.598,50,0
    .goto 1439,56.047,26.586,50,0
    .goto 1439,55.743,25.915,50,0
    >>Mate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saque-os para obter seus |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439,54.973,24.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #completewith next
    .goto 1439,54.934,32.721,20,0
    .goto 1439,55.108,33.600,40 >>Vá para a Caverna do Rio Cliffspring
step << Druid
    .goto Darkshore,54.99,33.41
    >>Use o [Amostrador Vazio das Cataratas do Rio Penhasco] na água na entrada da Caverna do Rio Penhasco
    .complete 6122,1 --Filled Cliffspring Falls Sampler (1)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>Pegue os |cRXP_LOOT_Scaber Stalks|r e o |cRXP_LOOT_Death Cap|r no chão
    >>|cRXP_WARN_Permaneça na seção superior. Se não houver um|cRXP_LOOT_ Cogumelo-da-morte|r no final do lado superior, desça e pegue um na sala ao sul abaixo|r
    >>|cRXP_WARN_Tenha cuidado com os|cRXP_ENEMY_Cavalga-onda Skamatrom|r |rao conjurarem|cRXP_WARN_|r[Jato Aquático] (Alcance Instantâneo: causa dano em área nos inimigos próximos e os empurra para trás) certifique-se de não estar em uma posição para ser derrubado do nível superior da caverna
    .complete 947,1 --Scaber Stalk (5)
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    .goto Darkshore,55.04,33.34
    .complete 947,2 --Death Cap (1)
    .goto Darkshore,55.38,36.34
step
    #sticky
    #label Blackwood1
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,52.86,33.41
    >>Abra as |cRXP_PICK_Blackwood Fruit Stores|r. Saque-a para obter a |T134013:0|t|cRXP_LOOT_[Amostra de Fruta Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso fará aparecer 2 |cRXP_ENEMY_Blackwood Furbolgs|r que atacarão e correrão na sua direção. Esteja pronto para lutar contra eles ou reiniciá-los|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12341,1,4763,1 -- Blackwood Fruit Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood1
    #label Blackwood2
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,51.83,33.50
    >>Abra as |cRXP_PICK_Blackwood Nut Stores|r. Saque-a para obter a |T133944:0|t|cRXP_LOOT_[Amostra de Castanha Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso fará aparecer 2 |cRXP_ENEMY_Blackwood Furbolgs|r que atacarão e correrão na sua direção. Esteja pronto para lutar contra eles ou reiniciá-los|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12343,1,4763,1 -- Blackwood Nut Sample (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #sticky
    #requires Blackwood2
    #label Blackwood3
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39,0
    .goto Darkshore,50.66,34.94
    >>Abra as |cRXP_PICK_Lojas de Grão Blackwood|r. Saqueie-a para obter a |T134059:0|t|cRXP_LOOT_[Amostra de Grão Bosquenero]|r
    >>|cRXP_WARN_Saqueando isso fará aparecer 2 |cRXP_ENEMY_Blackwood Furbolgs|r que atacarão e correrão na sua direção. Esteja pronto para lutar contra eles ou reiniciá-los|r
    >>|cRXP_WARN_Se você vir o|cRXP_ENEMY_Xabraxxis|r gritar no chat, veja se alguém está lutando contra ele, ajude-os. Abra a |cRXP_PICK_Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|r |cRXP_LOOT_Talismã da Corrupção|r
    .collect 12342,1,4763,1 -- Blackwood Grain Stores (1)
    .complete 4763,1 --Talisman of Corruption (1)
    .disablecheckbox
    .itemcount 12355,<1 --Talisman of Corruption (<1)
step
    #optional
    #requires Blackwood3
    #completewith Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    .cast 16072 >>|cRXP_WARN_Use o|r |T134712:0|t[Cheio Purificação Tigela] |cRXP_WARN_no |cRXP_PICK_Bonfire|r para invocar|r |cRXP_ENEMY_Zabraxxis|r
    .timer 17,O RP Corrompido Bosquenero
    .use 12347
step
    #requires Blackwood3
    #label Xabraxxis
    .isOnQuest 4763
    .goto Darkshore,52.38,33.39
    >>Mate o|cRXP_ENEMY_ Xabraxxis|r. Abra a|cRXP_PICK_ Bolsa Demoníaca de Xabraxxis|r que ele derruba no chão. Saque o|cRXP_LOOT_ Talismã da Corrupção|r
    .use 12347
    .complete 4763,1 -- Talisman of Corruption (1)
    .mob Xabraxxis
step
    .isOnQuest 2139
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Abate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Fique atento ao|cRXP_ENEMY_ Ursocardinho|r que pode atordoar você por 2 segundos|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
step
    #completewith FOTS
    .subzone 442 >>Viaje para Auberdine
step
    .isQuestComplete 2139
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2139 >>Entregue A Esperança de Tharnariun
    .target Tharnariun Treetender
step
    .isQuestComplete 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Entregue Um Mestre Perdido
    .accept 993 >>Aceite Um Mestre Perdido
    .target Terenthis
step
    .isQuestTurnedIn 986
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .accept 993 >>Aceite Um Mestre Perdido
    .target Terenthis
step
    .isQuestComplete 982
    .goto 1439,38.107,41.165
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .turnin 982 >>Vá para o Oceano Profundo, no Mar Vasto
    .target Gorbold Steelhand
step << Druid
    .goto Darkshore,37.70,40.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .turnin 6122 >>Entregue The Principal Source
    .accept 6123 >>Aceite Colhendo a Cura
    .target Alanndarian Nightsong
step
    .isQuestComplete 4763
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4763 >>Entregue Os Corrompidos Blackwood
    .target Thundris Windweaver
step
    .goto 1439,37.322,43.640
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .turnin 947 >>Entregue Cogumelos da Caverna
    .accept 948 >>Aceite Onu
    .target Barithras Moonshade
step
    .isQuestTurnedIn 4681
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4725 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4727 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step
    #optional
    #label FOTS
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
    .target Gubber Blump
step << Rogue
    #optional
    #sticky
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .xp <21,1
step << Druid
    .isOnQuest 6123
    #optional
    #sticky
    #label earthroot
    >>Colete|cRXP_WARN_ 5 |T134187:0|t[Earthroot] via |T136065:0|t[Herborismo] e raramente |cRXP_PICK_Battered Chests|r para uma missão de classe futura|r
    .collect 2449,5,6123,1 --Earthroot (5)
    .skill herbalism,<15,1
step << Druid
    .isOnQuest 6123
    .goto Darkshore,43.4,45.9,90,0
    .goto Darkshore,43.3,49.1,90,0
    .goto Darkshore,42.4,52.6,90,0
    .goto Darkshore,45.7,50.3,90,0
    .goto Darkshore,45.3,53.3
    .goto Darkshore,43.4,45.9,0
    .goto Darkshore,43.3,49.1,0
    .goto Darkshore,42.4,52.6,0
    .goto Darkshore,45.7,50.3,0
    >>Saque |cRXP_LOOT_Fungos Lunares|r no chão por toda as cavernas
    .complete 6123,2
step << Druid
    .isOnQuest 6123
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .turnin 6123 >>Entregue Colhendo a Cura
    .accept 6124 >>Aceite Curando os Doentes
    .target Alanndarian Nightsong
step << Druid
    .isQuestTurnedIn 6123
    #requires earthroot
    .goto Darkshore,37.7,40.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 6124 >>Aceite Curando os Doentes
    .target Alanndarian Nightsong
step << Druid
    .isOnQuest 6124
    .goto Darkshore,41.0,79.6
    .use 15826 >>|cRXP_WARN_Siga para o sul enquanto usa o|r |T132801:0|t[Curative Animal Salve] |cRXP_WARN_em|r |cRXP_FRIENDLY_Cervo Adoentado|r
    .complete 6124,1 -- Sickly Deer cured (10)
    .target Sickly Deer
step
    #completewith next
    .goto 1439,35.429,76.566,120 >>Viaje até southern Darkshore
step
    .goto 1439,35.429,76.566,0
    .goto 1439,35.429,76.566,60,0
    .goto Darkshore,36.64,76.53
    >>|cRXP_WARN_Certifique-se de verificar se o|cRXP_ENEMY_ Lodofundo|r já está ativo na água (se alguém já falhou no encontro anteriormente ou deixou o|cRXP_ENEMY_ Caçador Brumagris|r na onda em que ele surge vivo)|r
    >>Mate os |cRXP_ENEMY_Greymist Warriors|r e os |cRXP_ENEMY_Greymist Hunters|r no acampamento
    >>|cRXP_WARN_Mova-se até a Fogueira no centro do acampamento para iniciar o encontro com o|cRXP_ENEMY_ |rLodofundo|r
    >>|cRXP_WARN_3 ondas surgirão da água, cada uma matando a onda anterior: Onda 1 tem 3|cRXP_ENEMY_ Patrulheiros Brumagris|r nível 12-13, Onda 2 tem 2|cRXP_ENEMY_ Guerreiros Brumagris|r nível 15-16, e a Onda 3 tem 1|cRXP_ENEMY_ Lodofundo|r e 1|cRXP_ENEMY_ Caçador Brumagris|r nível 16-17. Você pode se afastar da Fogueira para evitar agredir a próxima onda|r
    .complete 4740,1 -- Murkdeep (1)
    .unitscan Murkdeep
    .mob Greymist Warrior
    .mob Greymist Hunter
    .mob Greymist Coastrunner
step
    .goto 1439,43.555,76.293
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 948 >>Entregue em Onu
    .accept 944 >>Aceite A Foice do Mestre
    .turnin -952 >>Entregue no Bosque dos Anciões << NightElf
    .target Onu
step
    .goto Darkshore,38.54,86.05,100 >>Voe para The Master's Glaive
    .subzoneskip 449
    .isOnQuest 944
step
    #optional
    #completewith TheryluneEnd
    >>Mate Discípulos do Crepúsculo|cRXP_ENEMY_ e|r Capangas do Crepúsculo|cRXP_ENEMY_. Saque-os para obter o|r [|cRXP_LOOT_Livro: Os Poderes Inferiores|r]
    >>Este item tem uma chance de saque muito baixa e provavelmente não irá cair. Pule esta etapa depois de concluir outros objetivos
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #optional
    .goto Darkshore,38.54,86.05
    >>Descubra a Clareira do Mestre
    .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith next
    .cast 5809 >>Use o [Frasco de Vidência] e coloque-o no chão
    .use 5251
step
    .goto Darkshore,38.54,86.05
    >>|cRXP_WARN_Clique na|cRXP_PICK_ Tigela de Vidência|r no chão|r
    .turnin 944 >>Volte a The Master's Glaive
    .accept 949 >>Aceite O Acampamento do Crepúsculo
    .use 5251
step
    .goto 1439,38.537,86.050
    >>Clique no |cRXP_PICK_Tomo Crepúsculo|r no pedestal norte
    .turnin 949 >>Entregue O Acampamento do Crepúsculo
    .accept 950 >>Aceite Retorno a Onu
step
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a|cRXP_FRIENDLY_ Therylune|r. Isso iniciará uma escolta
    >>Isso iniciará uma escolta. Pule esta etapa se ela não estiver lá
    .accept 945 >>Aceite A Fuga de Therylune
    .target Therylune
step
    #label TheryluneEnd
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escolte a|cRXP_FRIENDLY_ Therylune|r para fora da Clareira do Mestre|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .goto Ashenvale,13.97,4.10
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4733 >>Aceite Beached Sea Criatura - Missão
    >>|cRXP_WARN_Esta missão pode ser MUITO difícil. Enfrente os |cRXP_ENEMY_Murlocs|r um de cada vez, caso contrário você pode atacar vários ao mesmo tempo|r
    .link https://youtu.be/lfQM3Q-Ag5A >>https://youtu.be/lfQM3Q-Ag5A >> |cRXP_WARN_Clique aqui para um guia em vídeo|r
step
    .goto Ashenvale,13.93,2.01
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
#map Darkshore
    .goto Felwood,13.47,64.01
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
#map Darkshore
    .goto Felwood,14.62,60.72
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>Isso iniciará uma escolta. Talvez seja necessário aguardar que ela reapareça ou que outros terminem a escolta
    .turnin 729 >>Entregue The Absent Minded Prospector
    .accept 731,1 >>Aceite O Prospector Distraído
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    .complete 731,1
    .target Prospector Remtravel
step
    #completewith next
    .goto Darkshore,45.00,85.30,30 >>Vá em direção a |cRXP_FRIENDLY_Volcor|r na Caverna
step
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    .turnin 993 >>Entregue Um Mestre Perdido
    .accept 995 >>Aceite Fuga Através da Furtividade
    .timer 20,Fuga Através da Furtividade RP
    .target Volcor
    .isQuestTurnedIn 986
step
    .goto Darkshore,44.44,84.69
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    .complete 995,1
    .isQuestTurnedIn 986
step
#map Darkshore
    .goto Felwood,27.00,55.59
    .target Onu
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Retorno a Onu
step
#map Darkshore
    .goto Felwood,27.96,55.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r para iniciar a escolta
    >>|cRXP_WARN_Pule este passo se ele não estiver lá. Pode levar até 25 minutos para ele reaparecer|r
	.target Kerlonian Evershade
    .accept 5321 >>Aceite O Adormecido Despertou
step
    .isOnQuest 5321
    .goto Darkshore,44.38,76.30
    >>Abra o |cRXP_PICK_Baú de Kerlonian|r. Saqueie-o para obter |T134229:0|t[|cRXP_LOOT_Chifre do Despertar|r]
    .complete 5321,1 -- Horn of Awakening (1)
step
    #completewith tower
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,27.26,35.58
    >>|cRXP_WARN_Escolte |cRXP_FRIENDLY_Kerlonian|r até o Posto da Maestra em Vale Gris|r
    .use 13536 >>|cRXP_WARN_Use o|r |T134229:0|t[|cRXP_LOOT_Chifre do Despertar|r] |cRXP_WARN_quando |cRXP_FRIENDLY_Kerlonian|r adormece perto dele|r
    >>|cRXP_WARN_Evite correr na estrada principal o máximo possível. Inimigos só aparecerão se você estiver na estrada|r
    .complete 5321,2
    .isOnQuest 5321
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Liladris Luneflúvia|r
	.target Liladris Moonriver
    .goto Ashenvale,27.26,35.58
    .turnin 5321 >>Entregue O Adormecido Despertou
    .isQuestComplete 5321
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .accept 1010 >>Aceite Cabelo-de-Bathran
	.target Orendil Broadleaf
step
    #label tower
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 967 >>Entregue A Torre de Althalaxx
    .accept 970 >>Aceite A Torre de Althalaxx
    .target Delgren the Purifier
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#group RXP TBC Guia de Sobrevivência (A)
#subgroup RXP Guia de Sobrevivência 20-32
#name 21-23 Vale Gris
#next 23-24 Pantanal

step
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 967 >>Entregue A Torre de Althalaxx
    .accept 970 >>Aceite A Torre de Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .accept 1010 >>Aceite Cabelo-de-Bathran
	.target Orendil Broadleaf
step
    .isOnQuest 970
    .goto Ashenvale,31.25,30.70
    >>Mate os |cRXP_ENEMY_Dark Strand Cultists|r, os |cRXP_ENEMY_Dark Strand Adepts|r, os |cRXP_ENEMY_Dark Strand Enforcers|r e os |cRXP_ENEMY_Dark Strand Excavators|r. Saque-os para o |cRXP_LOOT_Glowing Gema Anímica|r
    .complete 970,1
    .mob Dark Strand Cultist
    .mob Dark Strand Adept
    .mob Dark Strand Enforcer
    .mob Dark Strand Excavator
step
    #optional
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra os |cRXP_PICK_Plant Bundles|r no chão. Pegue os |cRXP_LOOT_Bathran's Hairs|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    >>|cRXP_WARN_Certifique-se de que você tem|r |T134916:0|t[Localizar Plantas] |cRXP_WARN_ativado para vê-los no minimapa|r
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,<1,1
step
    .isOnQuest 1010
    .goto Ashenvale,33.01,21.41,50,0
    .goto Ashenvale,29.53,24.33,40,0
    .goto Ashenvale,31.89,22.53
    >>Abra os |cRXP_PICK_Plant Bundles|r no chão. Pegue os |cRXP_LOOT_Bathran's Hairs|r
    >>Eles parecem pequenos sacos marrons e podem estar parcialmente enterrados no chão. Eles podem ser difíceis de ver
    .complete 1010,1 --Bathran's Hair (5)
    .skill herbalism,1,1
step
    #optional
    .isQuestComplete 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .turnin 1010 >>Entregue Cabelo-de-Bathran
    .accept 1020 >>Aceite A Cura de Orendil
    .target Orendil Broadleaf
step
    #optional
    .isQuestTurnedIn 1010
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .accept 1020 >>Aceite A Cura de Orendil
    .target Orendil Broadleaf
step
    .isQuestComplete 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 970 >>Entregue A Torre de Althalaxx
	.target Delgren the Purifier
step
    #optional
    #completewith TZS
    .subzone 415 >>Vá para Astranaar
step
    #label AshenvaleEnd
    .goto Ashenvale,34.40,48.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fp Astranaar >>Aprenda a rota de voo para Astranaar
	.target Daelyshia
step
    #label TZS
    .goto Ashenvale,34.67,48.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
    .accept 1008 >>Aceite The Zoram Strand
    .target Shindrell Swiftfire
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a Sentinela Tenysil|r
	.target Sentinel Thenysil
    .goto Ashenvale,34.89,49.79
    .accept 1070 >>Aceite Em Guarda nas Montanhas Cristarrubra
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Faldreas Goeth'Shael|r
	.target Faldreas Goeth'Shael
    .goto Ashenvale,35.76,49.10
    .accept 1056 >>Aceite Jornada ao Pico das Montanhas Cristarrubra
step << Warrior/Paladin
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xai'ander|r
    >>|cRXP_BUY_Compre um|r |T135280:0|t[Falx Dácia] |cRXP_BUY_dele|r
	.collect 922,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .money <1.1000
step << Warrior/Paladin
    #optional
    #sticky
    +|cRXP_WARN_Equipe a|r |T135280:0|t[Falx Dácia]
    .use 922
    .itemcount 922,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Rogue
	.goto Ashenvale,35.785,52.048
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xai'ander|r
    >>|cRXP_BUY_Buy a|r ou verifique a Casa de Leilões por algo melhor/mais barato[Longsword]|cRXP_BUY_from him|r
	.collect 923,1
    .target Xai'ander
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
    .money <0.8000
step << Rogue
    #optional
    #sticky
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.19
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin -10752 >>Entregue em Rumo a Vale Gris
    .accept 991 >>Aceite A Purificação de Raene
    .accept 1054 >>Aceite Expurgo a Ameaça
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1020 >>Entregue A Cura de Orendil
    .timer 24,RP da Cura de Orendil
    .accept 1033 >>Aceite A Lágrima de Eluna
step
.dungeon WC
    #completewith TravelRatchet
    +|cRXP_WARN_Comece procurando por um grupo de Caverna Ululante enquanto você completa o próximo passo. Em breve você estará indo para The Barrens para executar Caverna Ululante|r
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,46.37,46.38
    >>Pegue a |cRXP_LOOT_Lágrima de Eluna|r no chão
    .complete 1033,1
    .zoneskip The Barrens
step
.dungeon WC
    #label TravelRatchet
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .goto The Barrens,49.07,12.80,50,0
    .goto The Barrens,53.87,21.52,120,0
    .goto The Barrens,59.15,25.48,120,0
    .goto The Barrens,63.087,37.607
    .subzone 392 >>Viaje até Vila Catraca, nos Sertões. Siga a seta para evitar as |cRXP_ENEMY_Guardas dos Sertões|r
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >>Aprenda a rota de voo para Ponto de Ancoragem
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_o Operador de Grua Mafuá|r
    .accept 959 >>Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
step
.dungeon WC
    #completewith next
    .goto The Barrens,46.95,35.44,0
    .goto The Barrens,46.95,35.44,20,0
    .goto The Barrens,47.01,34.67,15,0
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >>Viaje para as Cavernas do Lamento. Suba a montanha e depois desça na caverna escondida acima da entrada das Cavernas do Lamento. Siga a seta para chegar até|cRXP_FRIENDLY_ Nalpak|r e |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .accept 1486 >>Aceite Pelegos anormais
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .accept 1487 >>Aceite Erradicação de Anormais
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
step
.dungeon WC
    #completewith EnterWC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    >>Isso pode ser concluído DENTRO e FORA das Cavernas do Lamento
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599,20,0
    .goto 1414/1,-2084.0218,-784.1326,20,0
    .goto 1414/1,-2120.8216,-727.7062,20,0
    .goto 1414/1,-2003.0622,-656.5599
    >>Mate |cRXP_ENEMY_Maluc Insano|r. Saqueie-o para obter o |cRXP_LOOT_Xerez de 99 Anos|r
    >>|cRXP_ENEMY_Maluc Insano|r pode surgir em alguns locais
    >>Esta missão é concluída FORA da Caverna Ululante
    .complete 959,1 -- 99-Year-Old Port (1)
    .isOnQuest 959
    .mob Mad Magglish
step
.dungeon WC
    #label EnterWC
    .goto 1414/1,-2205.4612,-742.4261
    +Entre nas Cavernas do Lamento
    .zoneskip 1414,1 -- similar to stockades, no subzone for WC
step
.dungeon WC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .complete 1486,1 -- Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .isOnQuest 1486
step
.dungeon WC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r
    .complete 1487,1 -- Deviate Ravager slain (7)
    .complete 1487,2 -- Deviate Viper slain (7)
    .complete 1487,3 -- Deviate Shambler slain (7)
    .complete 1487,4 -- Deviate Dreadfang slain (7)
    .isOnQuest 1487
step
.dungeon WC
    #completewith next
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    >>Mate |cRXP_ENEMY_Lorde Cobrahn|r, |cRXP_ENEMY_Lorde Pythas|r, |cRXP_ENEMY_Lorde Serpentis|r e |cRXP_ENEMY_Lady Anacondra|r, depois fale com o |cRXP_FRIENDLY_Discípulo de Naralex|r no início da instância para iniciar a escolta
    >>Acompanhe o |cRXP_FRIENDLY_Muyoh <Discípulo de Naralex>|r pela Caverna Ululante e complete o ritual de despertar
    >>Mate |cRXP_ENEMY_Mutanus, o Devorador|r. Saqueie-o para obter o |T135229:0|t[|cRXP_LOOT_Estilhaço Chamejante|r]
    >>Use o [|cRXP_WARN_Fragmento Brilhante|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 10441,1,6981,1 -- Glowing Shard (1)
    .accept 6981 >>Aceite A lasca faiscante
    .use 10441 -- Glowing Shard
    .skipgossip
    .target Disciple of Naralex
    .mob Mutanus the Devourer
step
.dungeon WC
    >>Mate todos os tipos de criaturas |cRXP_ENEMY_Desviantes|r. Saqueie-as para obter seus |cRXP_LOOT_Pelegos Anormal|r
    >>Isso pode ser concluído DENTRO e FORA das Cavernas do Lamento
    .complete 1486,1 -- Deviate Hide (20)
    .isOnQuest 1486
step
.dungeon WC
    #completewith RatchetTurnin
    .goto The Barrens,62.984,37.218
    .subzone 392 >>Viaje para Vila Catraca. Em breve, você entregará as missões acima relacionadas às Cavernas Ululantes
    .isOnQuest 6981,959
step
.dungeon WC
    .goto The Barrens,62.984,37.218
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .complete 6981,1 -- Speak with someone in Ratchet about the Glowing Shard
    .skipgossip 1
    .target Sputtervalve
    .isOnQuest 6981
step
.dungeon WC
    #label RatchetTurnin
    .goto The Barrens,63.087,37.607
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_o Operador de Grua Mafuá|r
    .turnin 959 >>Entregue Encrencas nas Docas
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
step
.dungeon WC
    #completewith next
    .goto The Barrens,50.11,35.21,35,0
    .goto The Barrens,48.60,33.34,35,0
    .goto The Barrens,48.184,32.781,15 >>Suba a montanha íngreme acima das Cavernas do Lamento. Siga a seta
    .isQuestComplete 6981
step
.dungeon WC
    .goto The Barrens,48.184,32.781
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Falla Vento Sábio|r
    .turnin 6981 >>Entregue A lasca faiscante
    .target Falla Sagewind
    .isQuestComplete 6981
step
.dungeon WC
    #completewith NalpakEbru
    .goto 1414/1,-2039.8620,-759.5994,45,0
    .goto 1414/1,-2003.0622,-830.7456,20 >>Desça na caverna escondida acima da entrada das Cavernas do Lamento. Siga a seta para chegar até |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >>Entregue Pelegos anormais
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .turnin 1487 >>Entregue Erradicação de Anormais
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Nalpak
    .target Ebru
    .isQuestComplete 1486
    .isQuestComplete 1487
step
.dungeon WC
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .turnin 1487 >>Entregue Erradicação de Anormais
    .goto 1414/1,-2039.1260,-802.2871 -- Ebru
    .target Ebru
    .isQuestComplete 1487
step
.dungeon WC
    #label NalpakEbru
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    .turnin 1486 >>Entregue Pelegos anormais
    .goto 1414/1,-2036.9180,-796.8898 -- Nalpak
    .target Nalpak
    .isQuestComplete 1486
step
.dungeon WC
    .hs >>Use a Pedra de Regresso para Auberdine
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
.dungeon WC
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Astranaar >> Fly to Astranaar
	.target Caylais Moonfeather
    .zoneskip Ashenvale
step
    .goto Ashenvale,46.37,46.38
    >>Pegue a |cRXP_LOOT_Lágrima de Eluna|r no chão
    .complete 1033,1
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1033 >>Entregue A Lágrima de Eluna
    .timer 17,RP da Lágrima de Eluna
    .accept 1034 >>Aceite As Ruínas de Poeira Estelar
step << Shaman
    #completewith next
    >>Saqueie os |cRXP_PICK_arbustos cobertos de poeira estelar|r para obter um punhado de |cRXP_LOOT_Punhado de Poeira Estelar|r
    >>Os locais de surgimento deles estão espalhados por toda a ilha
    .complete 1034,1
step << Shaman
    .goto Ashenvale,33.547,67.474
    .use 23749 >>|cRXP_WARN_Use o|r |T132825:0|t[Odre Rústico Vazio] |cRXP_WARN_nas Ruínas de Poeira Estelar na pequena fonte|r
    .complete 9504,1 --Collect Filled Bota Bag (x1)
step
    .goto Ashenvale,33.30,67.79
    >>Saqueie os |cRXP_PICK_arbustos cobertos de poeira estelar|r para obter um punhado de |cRXP_LOOT_Punhado de Poeira Estelar|r
    >>Os locais de surgimento deles estão espalhados por toda a ilha
    .complete 1034,1
step
    #optional
    .isQuestComplete 945
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A fuga de Therylune
	.target Therysil
step
    #completewith next
    .goto 1440/1,238.100,3163.500,80 >>Vá em direção à |cRXP_FRIENDLY_Teronis' Corpse|r
step
    .goto Ashenvale,20.31,42.33
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cadáver de Teronis|r
	.turnin 991 >>Entregue Purificação de Raene
    .accept 1023 >>Aceite A Purificação de Raene
    .target Teronis' Corpse
step
    #loop
    .goto Ashenvale,20.31,42.33,0
    .goto Ashenvale,20.41,43.82,50,0
    .goto Ashenvale,19.43,42.09,50,0
    .goto Ashenvale,21.01,41.61,50,0
    .goto Ashenvale,20.31,42.33,50,0
    >>Mate |cRXP_ENEMY_Murlocs Cuspe-sal|r. Saqueie-os para obter o |cRXP_LOOT_Gema Faiscante|r
    >>|cRXP_WARN_Tenha cuidado com os|cRXP_ENEMY_ Oráculos|r que podem curar e possuem um feitiço de choque de conjuração instantânea que causa 90 de dano a cada poucos segundos|r
	.mob Saltspittle Warrior
	.mob Saltspittle Muckdweller
	.mob Saltspittle Oracle
	.mob Saltspittle Puddlejumper
    .complete 1023,1 -- Glowing Gem (x1)
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .accept 1007 >>Aceite A estatueta ancestral
step
    #completewith nagas
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .complete 1008,1
step
    .goto Ashenvale,14.20,20.64
    >>Saque o |cRXP_LOOT_Ancient Statuette|r no chão
    .complete 1007,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1007 >>Entregue A estatueta ancestral
    .timer 22,RP da Estatueta Antiga
    .accept 1009 >>Aceite Ruuzel
step
    .goto Ashenvale,6.528,13.361
    >>Mate |cRXP_ENEMY_Ruuzel|r. Saque-a pelo |cRXP_LOOT_Anel de Zoram|r
    >>|cRXP_ENEMY_Ruzzel|r patrulha a ilha com um|cRXP_WARN_ Mirmidão Caudafúria|cRXP_ENEMY_ e uma|r |cRXP_ENEMY_Bruxa do Mar Caudafúria|r. Mate um deles e depois redefina-os se necessário|r
    >>Se você tiver [Bombas]|cRXP_WARN_/|r[Granadas] também pode usá-las para fazer uma puxada dividida no |cRXP_ENEMY_Ruzzel|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-lwZ6P-ldy >> Clique aqui para referência em vídeo sobre “puxada dividida”
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Mate |cRXP_ENEMY_Ruuzel|r. Saque-a pelo |cRXP_LOOT_Anel de Zoram|r
    >>|cRXP_ENEMY_Ruzzel|r patrulha a ilha com um|cRXP_WARN_ Mirmidão Caudafúria|cRXP_ENEMY_ e uma|r |cRXP_ENEMY_Bruxa do Mar Caudafúria|r. Mate um deles e depois redefina-os se necessário|r
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +Comece a procurar um grupo para Profundezas Negras enquanto conclui os próximos passos. Muito em breve você estará fazendo Profundezas Negras
step
    .goto Ashenvale,7.00,15.20,0
    .goto Ashenvale,14.46,17.15,0
    .goto Ashenvale,14.86,21.06,0
    .goto Ashenvale,13.13,25.03,0
    .goto Ashenvale,10.89,30.03,0
    .goto Ashenvale,7.00,15.20,70,0
    .goto Ashenvale,14.46,17.15,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,10.89,30.03,70,0
    .goto Ashenvale,13.13,25.03,70,0
    .goto Ashenvale,14.86,21.06,70,0
    .goto Ashenvale,14.46,17.15,70,0
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
	.mob Wrathtail Wave Rider
	.mob Wrathtail Sorceress
    .mob Wrathtail Myrmidon
    .mob Wrathtail Priestess
    .mob Wrathtail Razortail
    .mob Wrathtail Sea Witch
    .complete 1008,1
step
    #label RuuzelTurnin
    .isQuestComplete 1009
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >>Entregue Ruuzel

step
.dungeon !BFD
    #completewith next
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >>Viaje para Profundezas Negras. Você completará a missão fora da instância
    .subzoneskip 2797--BFD
step
.dungeon !BFD
    #loop
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334,25,0
    >>Mate os |cRXP_ENEMY_Ladinos Raiz Caída|r, |cRXP_ENEMY_Sátiros Raiz Caída|r, |cRXP_ENEMY_Oráculos das Profundezas Negras|r e |cRXP_ENEMY_Sacerdotisas das Marés das Profundezas Negras|r. Saqueie-os para obter seus |cRXP_LOOT_Caules de Cérebro Corrompido|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275

step
.dungeon BFD
    .goto Ashenvale,15.5,19.0,0
    .goto Ashenvale,14.230,14.618
    +Faça grind em |cRXP_ENEMY_Naga|r enquanto monta um grupo para BFD. Vá para BFD assim que tiver um grupo
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith EnterBFD
    .goto Ashenvale,14.230,14.618,0
    .goto 1414/1,885.7229,4139.6807,50 >>Vá para Profundezas Negras
    .subzoneskip 2797--BFD
step
.dungeon BFD
    #completewith next
    >>Mate os |cRXP_ENEMY_Ladinos Raiz Caída|r, |cRXP_ENEMY_Sátiros Raiz Caída|r, |cRXP_ENEMY_Oráculos das Profundezas Negras|r e |cRXP_ENEMY_Sacerdotisas das Marés das Profundezas Negras|r. Saqueie-os para obter seus |cRXP_LOOT_Caules de Cérebro Corrompido|r
    >>|cRXP_WARN_Você também pode saquear |cRXP_LOOT_Caules de Cérebro Corrompido|r quando estiver dentro da instância|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .mob Blackfathom Tide Priestess
    .mob Blackfathom Oracle
    .mob Fallenroot Rogue
    .mob Fallenroot Satyr
    .isOnQuest 1275
step
.dungeon BFD
    #label EnterBFD
    .goto 1414/1,937.2426,4186.2938,25,0
    .goto 1414/1,904.1228,4321.2264,25,0
    .goto 1414/1,867.3230,4318.7731,25,0
    .goto 1414/1,749.5636,4252.5334
    .subzone 2797,2 >>Vá até o Portal da instância de Profundezas Negras. Entre na instância
    >>Veja se alguém do seu grupo pode compartilhar a missão “Conhecimento nas Profundezas” de Altaforja com você
step
.dungeon BFD
    #completewith Kelris
    >>Mate os |cRXP_ENEMY_Nagas|r e os |cRXP_ENEMY_Sátiros|r. Saqueie-os para obter seus |cRXP_LOOT_Caules de Cérebro Corrompido|r
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step
.dungeon BFD
    #label manuscript
    #sticky
    >>Abra o |cRXP_PICK_Baú de Ferro Corroído|r debaixo d'água perto da área com as tartarugas. Saqueie-o para obter o |cRXP_LOOT_Manuscrito de Lorgalis|r
    .complete 971,1 -- Lorgalis Manuscript (1)
    .isOnQuest 971
step
.dungeon BFD
    #label Thaelrid
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Argênteo Thaelrid|r
    .turnin -1198 >>Entregue Em Busca de Thaelrid
    .accept 1200 >>Aceite Vilania nas Profundezas Negras
step
#requires manuscript
.dungeon BFD
    #completewith Kelris
    >>Mate todos os |cRXP_ENEMY_Martelos do Crepúsculo|r. Saqueie-os para obter seus |cRXP_LOOT_Pingentes do Crepúsculo|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
#requires manuscript
.dungeon BFD
    #label Kelris
    >>Mate o |cRXP_ENEMY_Senhor do Crepúsculo Kelris|r. Saqueie-o para obter sua |cRXP_LOOT_Cabeça|r
    .complete 1200,1 -- Head of Kelris (1)
    .isOnQuest 1200
step
.dungeon BFD
    >>Mate todos os |cRXP_ENEMY_Martelos do Crepúsculo|r. Saqueie-os para obter seus |cRXP_LOOT_Pingentes do Crepúsculo|r
    .complete 1199,1 -- Twilight Pendant (10)
    .isOnQuest 1199
step
.dungeon BFD
    #label FinalStem
    >>Mate os |cRXP_ENEMY_Nagas|r e os |cRXP_ENEMY_Sátiros|r. Saqueie-os para obter seus |cRXP_LOOT_Caules de Cérebro Corrompido|r
    >>Se você ainda não concluiu esta missão, clique no altar no final da masmorra para se teleportar para a entrada. Os monstros fora da instância também podem derrubá-la.
    .complete 1275,1 -- Corrupted Brain Stem (8)
    .isOnQuest 1275
step << Druid
	#completewith next
	.cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .usespell 18960
	.zoneskip Moonglade
step << Druid
    .isOnQuest 6124
    .goto Moonglade,56.2,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .turnin 6124 >>Entregue Curando os Enfermos
    .accept 6125 >>Aceite Poder over Veneno
    .target Dendrite Starblaze
step << Druid
    .isQuestTurnedIn 6124
    .goto Moonglade,56.2,30.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Stellardor|r
    .accept 6125 >>Aceite Poder over Veneno
    .target Dendrite Starblaze
step << Druid
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step
    .hs >>Use a Pedra de Regresso para Auberdine
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 442
    .bindlocation 442,1
step << !Druid
#optional
    .goto 1414/1,749.5636,4252.5334
    .zone Darkshore>>Ghetto Lar para Costa Negra. Para fazer isso, entre em Profundezas Negras, depois copie e cole o link abaixo no bate-papo. Espere o cronômetro de 1 minuto
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> CLIQUE AQUI
    .subzoneskip 2797,1 -- BFD (inside and outside instance)

step
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4740 >>Entregue PROCURA-SE: Lodofundo!
step
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 1275 >>Entregue Investigando a Corrupção
    .target Gershala Nightwhisper
step
    .isOnQuest 995
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 995 >>Entregue Fuga furtiva
    .target Terenthis
step
    #label AbsentMinded
    .isQuestComplete 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .accept 741 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .isQuestTurnedIn 731
    .goto 1439,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 741 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .goto Darkshore,36.62,45.59
    .target Gwennyth Bly'Leggonde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Entregue a Criatura Marinha Encalhada
    .turnin 4731 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4732 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4733 >>Entregue a Criatura Marinha Encalhada
step
    .isOnQuest 741,1199,1200 -- absent minded + 2 bfd quests
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
    .zoneskip Teldrassil
    .zoneskip Darnassus
step
    .isOnQuest 741,1199,1200 -- absent minded + 2 bfd quests
    #completewith next
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .trainer >>Treine suas magias de classe
    .target Syurna
step << Druid
    .goto Darnassus,34.768,7.374
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Denatharion|r
    .trainer >>Treine suas magias de classe
    .target Denatharion
step << Druid
    .isOnQuest 6125
    .goto Darnassus,35.375,8.405
    .target Mathrengyl Bearwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r nos degraus acima
    .turnin 6125 >>Entregue Poder sobre Veneno
step << Hunter
    .goto Darnassus,40.377,8.545
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
	.trainer >>Treine suas magias de classe
    .target Jocaste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guarda Argênteo Manados|r no andar de cima
    .turnin 1199 >>Entregue A Queda do Crepúsculo
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vigilalva Selgorm|r no andar de cima
    .turnin 1200 >>Entregue Vilania nas Profundezas Negras
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >>Treine Cajados
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
    .isOnQuest 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .turnin 741 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
step
    .isQuestTurnedIn 741
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .goto Teldrassil,23.70,64.51
    .accept 942 >>Aceite O Prospector Distraído
step << Priest
    .goto Darnassus,37.901,82.742
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jandria|r
	.trainer >>Treine suas magias de classe
    .target Jandria
step
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Astranaar >> Fly to Astranaar
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Astranaar >> Fly to Astranaar
	.target Caylais Moonfeather
    .zoneskip Darkshore,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >>Entregue A Praia de Zoram
    .accept 1134 >>Aceite Pridewings of Stonetalon
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1023 >>Entregue Purificação de Raene
    .accept 1025 >>Aceite Uma Defesa Agressiva
    .target Raene Wolfrunner
step
    #optional
    #sticky
    .destroy 5505 >>Destrua o [Diário de Teronis]. Você não precisa mais dele
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >>Entregue as Ruínas de Poeira Estelar


--Stonetalon section. skipping if 24 or not already in Stonetalon Mountains
step
    .goto Ashenvale,42.50,71.70
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    >>|cRXP_WARN_Pule a seção Cordilheira das Torres de Pedra se você já está no nível 24|r
    .xp >24,1
step
    #completewith wyv1
    >>Mate |cRXP_ENEMY_Asaltivas Jovem|r. Saqueie-as para obter suas |cRXP_LOOT_Vesículas de Peçonha de Asaltiva|r
	.unitscan Young Pridewing
    .complete 1134,1
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaela Shadowspear|r
	.target Kaela Shadowspear
    .goto Stonetalon Mountains,59.899,66.844
    .turnin 1070 >>Entregue a missão Em Guarda na Cordilheira das Torres de Pedra
    .accept 1085 >>Aceite Em Guarda nas Montanhas Cristarrubra
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaxim Deuxabu|r
	.target Gaxim Rustfizzle
    .goto Stonetalon Mountains,59.516,67.146
    .turnin 1085 >>Entregue a missão Em Guarda na Cordilheira das Torres de Pedra
    .accept 1071 >>Aceite Adiamento Gnômico
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zé Fízzica|r
	.target Ziz Fizziks
    .goto Stonetalon Mountains,58.989,62.601
    .accept 1093 >>Aceite o Super Ceifador 6000
    .zoneskip Stonetalon Mountains,1
step
    #sticky
    #label sr6000
    .goto Stonetalon Mountains,62.36,53.00,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,66.75,45.42,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,62.36,53.00
    .goto Stonetalon Mountains,66.73,51.91,0
    >>Mate os |cRXP_ENEMY_Operadores da Empreendimentos S.A.|r. Saqueie-os em busca dos |cRXP_LOOT_Projetos|r
    .complete 1093,1
    .unitscan Venture Co. Operator
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,62.36,53.00,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,66.75,45.42,60,0
    .goto Stonetalon Mountains,66.73,51.91,60,0
    .goto Stonetalon Mountains,62.36,53.00
    .goto Stonetalon Mountains,66.73,51.91,0
	>>Mate |cRXP_ENEMY_Desmatadores da Empreendimentos S.A.|r e |cRXP_ENEMY_Madeireiros da Empreendimentos S.A.|r
    .complete 1071,1
    .mob +Venture Co. Logger
    .complete 1071,2
    .mob +Venture Co. Deforester
    .zoneskip Stonetalon Mountains,1
step
    #requires sr6000
    .goto Stonetalon Mountains,58.989,62.601
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zé Fízzica|r
	.target Ziz Fizziks
    .turnin 1093 >>Entregue o Super Ceifador 6000
	.accept 1094 >>Aceite as instruções adicionais << Warlock
    .zoneskip Stonetalon Mountains,1
step
    #label wyv1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaxim Deuxabu|r
	.goto Stonetalon Mountains,59.516,67.146
    .turnin 1071 >>Entregue Adiamento Gnômico
    .accept 1072 >>Aceite Um Velho Colega
    .accept 1075 >>Aceite Um Pergaminho de Mauren
    .target Gaxim Rustfizzle
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,54.04,40.09,60,0
    .goto Stonetalon Mountains,53.26,36.83,40,0
    .goto Stonetalon Mountains,54.56,38.12
    >>Mate |cRXP_ENEMY_Mantícoras Asaltiva|r e |cRXP_ENEMY_Consortes Asaltiva|r. Saqueie-as em busca de suas |cRXP_LOOT_Vesículas de Peçonha de Asaltiva|r
    >>|cRXP_WARN_Pule este passo se você já está no nível 24|r
    .xp >24,1
	.mob Pridewing Wyvern
	.mob Pridewing Consort
    .complete 1134,1
    .zoneskip Stonetalon Mountains,1
step
    #completewith next
    .goto Stonetalon Mountains,37.103,8.100,100 >>Viaje até o Pico das Torres de Pedra
    .zoneskip Stonetalon Mountains,1
step
    .goto Stonetalon Mountains,37.103,8.100
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keeper Albagorm|r
	.target Keeper Albagorm
    .turnin 1056 >>Entregue A jornada para o Pico das Torres de Pedra
    .zoneskip Stonetalon Mountains,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teloren|r
	.target Teloren
    .goto Stonetalon Mountains,36.438,7.181
    .fp Stonetalon >>Aprenda a rota de voo para Montanhas Farpedra
	.fly Astranaar >> Fly to Astranaar << !Warlock
    .zoneskip Stonetalon Mountains,1
step << Warlock
.dungeon WC
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Teloren|r
    >>|cRXP_WARN_Pule este passo se você não fez WC antes|r
	.target Teloren
    .goto Stonetalon Mountains,36.438,7.181
	.fly Ratchet >>Voe para Ponto de Ancoragem
    .zoneskip Stonetalon Mountains,1
step << Warlock
    .goto Stonetalon Mountains,75.466,91.422,0
    .goto Stonetalon Mountains,81.292,96.118,0
    .goto The Barrens,35.052,27.025
    .zone The Barrens >>Viaje para os Sertões
    .zoneskip Stonetalon Mountains,1
step << Warlock
    #completewith next
    .goto The Barrens,40.358,24.780,150 >>|cRXP_WARN_SIGA A SETA PARA EVITAR |cRXP_ENEMY_GUARDAS DO BARRENS|r!|r
    .zoneskip The Barrens,1
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takar the Seer|r
    .turnin 1716 >>Entregue Devorador de Almas
    .target Takar the Seer
    .accept 1738 >>Aceite Palocórdio
    .accept 65602 >>Aceite What is Love?
step << Warlock
    #completewith RatchetFP
    .goto The Barrens,62.98,37.21,100 >>Viaje para Ponto de Ancoragem
step << Warlock
    .isOnQuest 1094
    .goto The Barrens,62.984,37.218
    .target Sputtervalve
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 1094 >>Entregue instruções adicionais
step << Warlock
    #label RatchetFP
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Astranaar >> Fly to Astranaar
    .target Bragok
    .zoneskip Ashenvale
step
    .isQuestComplete 1134
    .goto Ashenvale,34.67,48.83
    .target Shindrell Swiftfire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
    .turnin 1134 >>Entregue Os asaltivas das Torres de Pedra
step
    #sticky
    #optional
    .abandon 1134 >>Abandone Pridewings of Stonetalon
step
    #sticky
    #optional
    .abandon 1070 >>Abandone Em Guarda nas Torres de Pedra
step
    #sticky
    #optional
    .abandon 1056 >>Abandone Journey to Stonetalon Peak
step << Warlock
    .isOnQuest 65602
    .goto Ashenvale,34.849,50.868
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Haljan Ruboralma|r
    >>|cRXP_BUY_Compre um|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_e|r |T135435:0|t[Simple Madeira]
    >>|cRXP_WARN_Você precisará disso para sua missão Íncubo em breve|r
    .collect 4471,1 --Flint and Tinder (1)
    .collect 4470,1 --Simple Wood (1)
    .target Haljan Oakheart
step
    #optional
    #completewith next
    .goto 1440,34.786,44.885,20,0
    .goto 1440,34.869,43.443,30,0
    .goto 1440,38.023,38.727,60 >>Pegue o atalho da montanha em direção à entrada leste de Thistlefur Village
step
    #optional
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.31,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,39.595,36.309
    >>Mate |cRXP_ENEMY_Dal Sangarra|r. Saqueie-o para obter seu |cRXP_LOOT_crânio|r
    >>|cRXP_WARN_Ele patrulha ao redor da seção norte de Thistlefur Village|r
    .complete 1054,1 --Dal Bloodclaw's Skull (1)
    .unitscan Dal Bloodclaw
step << Warlock
    .isOnQuest 1738
    #completewith next
    .goto Ashenvale,26.73,44.95,100,0
    .goto Ashenvale,31.50,31.50,40 >>Viaje até as Ruínas de Loreth'Aran
step << Warlock
    .isOnQuest 1738
    .goto Ashenvale,31.50,31.50
    >>Saqueie 
    .complete 1738,1
step << Warlock
    .isOnQuest 65602
    .goto Ashenvale,26.78,22.42
	>>Saqueie |T135434:0|t[|cRXP_LOOT_Unlit Torch|r]on the table
	.collect 190307,1 --Collect Unlit Torch (x1)
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,848.800,3470.900
    >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .use 190307 >>|cRXP_WARN_Use o|r |T135434:0|t[|cRXP_LOOT_Tocha Apagada|r] |cRXP_WARN_para criar uma|r |T135432:0|t[|cRXP_LOOT_Tocha Ardente|r]
    >>|cRXP_WARN_Se você não conseguir fazer isso aqui, vá para o oeste até |cRXP_FRIENDLY_Talen|r e acenda-o na Fogueira de Acampamento ao lado dele|r
    .collect 190308,1 --Collect Burning Torch
    .usespell 818
    .skill cooking,<1,1 -- shows if cooking is >1
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,848.800,3470.900
    .use 190307 >>|cRXP_WARN_Siga para o oeste até |cRXP_FRIENDLY_Talen|r e use a |T135434:0|t[|cRXP_LOOT_Tocha Apagada|r] na Fogueira de Acampamento ao lado dele para criar uma|r |T135432:0|t[|cRXP_LOOT_Tocha Ardente|r]
    .collect 190308,1 --Collect Burning Torch
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,160.600,3806.100
    .cast 367062 >>|cRXP_WARN_Use a|r |T135432:0|t[|cRXP_LOOT_Tocha Ardente|r] |cRXP_WARN_na|r |cRXP_PICK_Carroça do Arqueólogo|r
    .use 190308
step << Warlock
    .isOnQuest 65602
    .goto 1440/1,183.700,3819.500,8,0
    .goto 1440/1,164.900,3826.200
    >>Head no andar de cima in the house e loot the |cRXP_PICK_Wooden Figurine|ron the table
    .complete 65602,1 --Wooden Figurine

step
    #completewith next
    >>Mate um few |cRXP_ENEMY_Foulweald Warriors|re toward the |cRXP_ENEMY_Water Elementals|r
    >>|cRXP_WARN_Tenha cuidado, pois os|r |cRXP_ENEMY_Ursinos Torpeflora|r |cRXP_WARN_podem|r |T132152:0|t[usar Chicotada] |cRXP_WARN_atingindo você 3 vezes de uma vez|r
    >>|cRXP_WARN_Você matará os demais após terminar a missão Retaking Mystral Lake|r
    .complete 1025,4,5 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,50.08,59.94
    .complete 1025,3,4 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,50.08,59.94
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .disablecheckbox
    .complete 1025,1 -- Foulweald Den Watcher slain
    .disablecheckbox
    .mob Foulweald Ursa
    .mob Foulweald Den Watcher
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Velene Golpestela|r
    .accept 1016 >>Aceite Braceletes Elementais
    .target Sentinel Velene Starstrike
step
    .goto Ashenvale,44.78,70.07,60,0
    .goto Ashenvale,48.90,70.05,60,0
    .goto Ashenvale,51.28,70.51,60,0
    .goto Ashenvale,48.90,70.05
    >>Mate |cRXP_ENEMY_Befouled Water Elementals|r. Saqueie-os para obter |cRXP_LOOT_Bracers|r
    .collect 12220,5,1016,1
    .mob Befouled Water Elemental
step
    .use 5456 >>Use o [Pergaminho de Vidência] para criar o [Pergaminho Videnciado]
    .complete 1016,1 -- Divined Scroll
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Velene Golpestela|r
    .turnin 1016 >>Entregue Braceletes Elementais
    .accept 1017 >>Aceite Mago Invocador
    .target Sentinel Velene Starstrike
step
    #loop
    .goto Ashenvale,50.08,59.94,0
    .goto Ashenvale,53.75,63.49,0
    .goto Ashenvale,54.17,61.69,0
    .goto Ashenvale,56.45,63.62,0
    .goto Ashenvale,50.08,59.94,70,0
    .goto Ashenvale,53.75,63.49,70,0
    .goto Ashenvale,54.17,61.69,70,0
    .goto Ashenvale,56.45,63.62,70,0
    >>Mate |cRXP_ENEMY_Guerreiros Torpeflora|r, |cRXP_ENEMY_Totêmicos Torpeflora|r, |cRXP_ENEMY_Ursinos Torpeflora|r e um |cRXP_ENEMY_Vigia do Covil Torpeflora|r
    >>|cRXP_WARN_Tenha cuidado, pois os|r |cRXP_ENEMY_Ursinos Torpeflora|r |cRXP_WARN_podem|r |T132152:0|t[usar Chicotada] |cRXP_WARN_atingindo você 3 vezes de uma vez|r
    >>Os |cRXP_ENEMY_Totêmicos Torpeflora|r compartilham os locais de surgimento com os |cRXP_ENEMY_Guerreiros Torpeflora|r. Talvez você precise voltar e matar os que ressurgirem caso não tenha tido sorte com os surgimentos
    .complete 1025,4 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .complete 1025,3 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .mob +Foulweald Ursa
    .complete 1025,1 -- Foulweald Den Watcher slain
    .mob +Foulweald Den Watcher
step
    #completewith next
    .goto 1440/1,-1922.800,2018.800,80,0
    .goto 1440/1,-2566.600,2647.400,80,0
    .goto 1440/1,-2857.300,2542.600,80,0
    .goto 1440/1,-3294.800,2797.000,80 >>|cRXP_WARN_Follow the arrow to get to Forest Song. You will run around |cRXP_ENEMY_Posto Machadada|r to ensure you don't run into any|r |cRXP_ENEMY_Splintertree Guards|r
    .subzoneskip 2358 -- forest song
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Suralais Farwind|r
    .target Suralais Farwind
    .goto 1440/1,-3206.800,3003.000
    .fp Forest Song >>Aprenda a rota de voo de Cantilenda
    .fly Astranaar >> Fly to Astranaar
    .zoneskip Ashenvale,1
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1025 >>Entregue Uma Defesa Agressiva
    .turnin 1054 >>Entregue Contendo a ameaça
    .target Raene Wolfrunner
step
    #label end
    .goto Ashenvale,34.41,47.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fly Darkshore>>Voe para Auberdine
    .target Daelyshia
    .zoneskip Ashenvale,1
step
    #completewith MeneBoat
    .goto 1439,32.432,43.744,15 >>Vá para o Cais de Auberdine. Espere o barco de Menethil Harbor
    .zoneskip Wetlands
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    >>|cRXP_WARN_Aumente o nível de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_e|r |T133971:0|t[Culinária] |cRXP_WARN_enquanto espera pelo barco para o Porto de Menethil|r
    .skill firstaid,<1,1 -- shows if firstaid is >1
    .skill cooking,<1,1 -- shows if firstaid is >1
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    >>|cRXP_WARN_Level your|r |T133971:0|t[Cooking]|cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .skill cooking,<1,1
step
#optional
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
    >>|cRXP_WARN_Level your|r Evolua sua[First Aid]|cRXP_WARN_while waiting for the Menethil Harbor boat|r
    .skill firstaid,<1,1
step
    #label MeneBoat
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
]])
