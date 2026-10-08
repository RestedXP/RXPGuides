if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#xprate >1.49 << Human Warlock
#name 12-14 Costa Negra
#displayname 10-14 Costa Negra << Dwarf Hunter
#displayname 11-14 Costa Negra << !Human !Mage
#displayname 12-14 Costa Negra << Gnome Mage
#subgroup RestedXP Aliança 1-20
#defaultfor Human/NightElf/Dwarf/Gnome !Warlock
#next 14-20 Névoa Rubra

step << !NightElf
    #optional
    .abandon 6392 >>Abandone **Return to Brock**. Você não irá entregar esta missão
step << !NightElf
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neal Allen|r no andar inferior do quartel
    >>|cRXP_BUY_Compre um|r [Simple Wood] |cRXP_BUY_and a|r [Flint and Tinder] |cRXP_BUY_from him|r << Hunter
    .vendor 1448 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
	.target Neal Allen
    .money <0.08 << !Hunter
    .zoneskip Darkshore
step << !NightElf
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dewin Shimmerdawn|r dentro
    .vendor 1453 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Dewin Shimmerdawn
    .zoneskip Darkshore
step << !NightElf
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Viaje até a doca para pegar o barco para Auberdine
    .zoneskip Darkshore
step << !NightElf
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
step << !NightElf
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
step << !NightElf
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
step << !NightElf
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
step << !NightElf
    #optional
    +Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Carne Fibrosa de Lobo]|r em [Carne de Lobo Chamuscada]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 -- shows if cooking is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << !NightElf
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
step << !NightElf
    #optional
    .goto 1437,4.370,56.762
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para Costa Negra
    .zone Darkshore >>Pegue o barco para Costa Negra
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !NightElf
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >>Pegue o barco para Costa Negra
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
step
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
    .xp <11,1
step << !NightElf
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
step
    #optional
    #completewith Auber1
    >>Mate |cRXP_ENEMY_Filhote de Florestruz|r e |cRXP_ENEMY_Florestruz|r Saqueie-os para obter |cRXP_LOOT_Carne de Moa|r
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
    .isOnQuest 3524
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
#optional
    .xp 10+6760 >>Farme até 6760+/7600xp
step
    #label Auber1
    #completewith next
    .subzone 442 >>Viaje para Auberdine
step
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
step
#optional
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
#optional
    .isOnQuest 3524
    .goto 1439,36.371,50.920
    >>Abra o |cRXP_PICK_Criatura Marinha Encalhada|r. Saqueie para obter |cRXP_LOOT_Ossos de Criaturas Marinhas|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
#xprate <1.5
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #optional
    #completewith next
    .goto 1439,32.432,43.744,15 >>Viaje até o final da doca, depois pule na água
step
    .goto 1439,31.841,46.304
    >>Abra a |cRXP_PICK_Tartaruga Marinha Descarnada|r. Saqueie para obter |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << !Dwarf/!Hunter
    .xp 12
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
#xprate <1.5
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
    .target Tharnariun Treetender
step
#xprate >1.49
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >>Entregue Terras Pestilentas
    .target Tharnariun Treetender
step
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .target Terenthis
step
#xprate <1.5
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
    .target Terenthis
step
#xprate >1.49
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
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
#xprate <1.5
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .target Thundris Windweaver
step
#xprate >1.49
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 954 >>Aceite Bashal'Aran
    .target Thundris Windweaver
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
step << !Dwarf/!Hunter
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
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r no caminho|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
step
    #loop
    .goto 1439,44.528,36.587,0
    .goto 1439,45.334,39.393,0
    .goto 1439,46.096,36.541,0
    .goto 1439,44.528,36.587,50,0
    .goto 1439,44.435,37.404,50,0
    .goto 1439,44.443,38.202,50,0
    .goto 1439,44.493,39.008,50,0
    .goto 1439,44.821,39.711,50,0
    .goto 1439,45.334,39.393,50,0
    .goto 1439,45.167,38.652,50,0
    .goto 1439,45.091,37.865,50,0
    .goto 1439,45.495,37.019,50,0
    .goto 1439,45.831,36.790,50,0
    .goto 1439,46.096,36.541,50,0
    .goto 1439,46.906,36.171,50,0
    .goto 1439,47.431,36.151,50,0
    .goto 1439,47.022,37.083,50,0
    .goto 1439,47.166,37.580,50,0
    .goto 1439,45.827,36.812,50,0
    >>Mate |cRXP_ENEMY_Capeta Selvagem|r e |cRXP_ENEMY_Duende Torpe|r. Saqueie-os para obter |cRXP_LOOT_Brinco de Capeta|r
    >>|cRXP_WARN_Evite matar |cRXP_ENEMY_Sátiro Deth'ryll|r por enquanto|r
    .complete 955,1 --Grell Earring (8)
    .mob Wild Grell
    .mob Vile Sprite
    .isOnQuest 955
step
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestComplete 955
step
    #optional
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 955
step
    #loop
    .goto 1439,45.393,36.472,0
    .goto 1439,45.429,39.773,0
    .goto 1439,47.368,36.774,0
    .goto 1439,45.393,36.472,45,0
    .goto 1439,45.938,37.800,45,0
    .goto 1439,45.938,38.040,45,0
    .goto 1439,46.531,39.134,45,0
    .goto 1439,45.429,39.773,45,0
    .goto 1439,47.262,37.674,45,0
    .goto 1439,47.920,37.228,45,0
    .goto 1439,47.368,36.774,45,0
    >>Mate |cRXP_ENEMY_Sátiro Deth'ryll|r. Saqueie-os para obter |cRXP_LOOT_Selo Antigo de Pedra-da-lua|r
    >>Eles não possuem reaparecimento dinâmico. Ignore esta etapa se não conseguir encontrar nenhum |cRXP_ENEMY_Sátiro Deth'ryll|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
    .isOnQuest 956
step
#xprate >1.49
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
#xprate <1.5
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestComplete 956
step
#xprate <1.5
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
    .isQuestTurnedIn 956
step
#xprate <1.5
    #optional
    .abandon 956 >>Abandone Bashal'Aran
step << !Draenei
#xprate <1.5
    .goto 1439,53.4,28.8,0
    .goto 1439,54.8,22.8,0
    .goto 1439,44.6,24.8,0
    .goto 1439,49.8,32.8,0
    #completewith HSAuber
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    >>|cRXP_WARN_Se você ficar sem |cRXP_ENEMY_Ursocardos Raivosos| para matar, pule esta etapa. Você a concluirá mais tarde|r
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
    .zoneskip Darkshore,1 << Druid
step << !Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>Use o [Tubo de Amostragem Vazio] na base do **Rio Fontescarpa**
    .complete 4762,1 --Cliffspring River Sample (1)
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
step
    #label HSAuber
    .hs >>Use a Pedra de Regresso para Auberdine
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .bindlocation 442,1
    .subzoneskip 442
step
    #completewith next
    .subzone 442 >>Entregue em Auberdine
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
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
    >>Continue evoluindo sua [Culinária] até ficar sem [Ovo Pequeno] << !sod
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
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4762 >>Entregue Rio Fontescarpa
    .isQuestComplete 4762
    .target Thundris Windweaver
step
    #optional
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
    #optional
    #completewith FinalAuber
    >>Mate |cRXP_ENEMY_Filhote de Florestruz|r e |cRXP_ENEMY_Florestruz|r. Saqueie-os para obter |cRXP_LOOT_Carne de Moa|r
    >>Tenha cuidado |cRXP_ENEMY_Filhote de Florestruz|r [Fugir] com menos de 30% de vida
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .mob Foreststrider Fledgling
    .mob Foreststrider
    .skill cooking,<10,1
step << Dwarf Hunter
    .goto 1439,47.314,48.676
    >>Viaje até o |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Tenha cuidado com os dois grupos de 2 |cRXP_ENEMY_Luniscantes Enraivecidos|r a oeste do |cRXP_PICK_Cristal Vermelho Misterioso|r pois os pares mais próximos uns dos outros estão vinculados entre si|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range
step << !Dwarf/!Hunter
    .goto 1439,37.767,44.001
    >>Use o [Tubo de Água Vazio] no poço lunar de Auberdine
    .complete 4812,1 --Moonwell Water Tube (1)
    .use 14338
step << !Dwarf/!Hunter
    .goto 1439,47.314,48.676
    >>Clique no |cRXP_PICK_Cristal Vermelho Misterioso|r
    >>|cRXP_WARN_Cuidado com os dois grupos de |cRXP_ENEMY_Moonkins Enraivecidas|r a oeste do |cRXP_PICK_Mysterious Vermelho Cristal|r quando você clicar nele, pois elas podem gerar agro juntas|r
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
step
#xprate <1.5
    #sticky
    #label Anaya
    .goto 1439,42.017,58.866,0 --NE spawn
    .goto 1439,43.222,59.693,0 --NE spawn
    .goto 1439,43.069,62.448,0 --SE spawn
    .goto 1439,42.489,60.677,0 --Middle spawn
    .waypoint 1439,42.017,58.866,50,0 --NE spawn
    .waypoint 1439,42.311,58.645,50,0
    .waypoint 1439,42.448,58.236,50,0
    .waypoint 1439,43.222,59.693,50,0 --NE spawn
    .waypoint 1439,43.447,60.131,50,0
    .waypoint 1439,43.780,60.275,50,0
    .waypoint 1439,43.069,62.448,50,0 --SE spawn
    .waypoint 1439,43.104,62.563,50,0
    .waypoint 1439,42.794,62.166,50,0
    .waypoint 1439,42.489,60.677,50,0 --Middle spawn
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saqueie-a para obter o |cRXP_LOOT_Pingente de Anaya|r
    >>Esteja ciente de que ela possui um tempo de reaparecimento de 7-8 minutos e 4 locais diferentes de surgimento em Ameth’Aran
    >>Talvez seja interessante se agrupar com outros jogadores próximos caso não consiga encontrá-la. Pergunte no chat Geral (/1) para se agrupar com alguém que também esteja procurando por ela. Pule esta etapa se não conseguir encontrá-la
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
    .isOnQuest 963
step
#xprate <1.5
    #sticky
    #label Relics
    .goto 1439,42.670,57.390,0
    .goto 1439,41.986,62.462,0
    .goto 1439,44.072,60.507,0
    .waypoint 1439,42.670,57.390,55,0
    .waypoint 1439,41.708,57.888,55,0
    .waypoint 1439,41.597,59.765,55,0
    .waypoint 1439,42.058,61.199,55,0
    .waypoint 1439,41.986,62.462,55,0
    .waypoint 1439,42.773,63.420,55,0
    .waypoint 1439,43.253,63.287,55,0
    .waypoint 1439,43.945,62.188,55,0
    .waypoint 1439,44.072,60.507,55,0
    .waypoint 1439,43.410,59.784,55,0
    .waypoint 1439,43.787,58.959,55,0
    >>Mate |cRXP_ENEMY_Altaneira Amaldiçoada|r, |cRXP_ENEMY_Altaneira Ululante|r e |cRXP_ENEMY_Altaneiro Contorcido|r. Saqueie-os para obter |cRXP_LOOT_Relíquias|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
    .mob Wailing Highborne
    .isOnQuest 958
step
#xprate <1.5
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
#xprate <1.5
    .goto 1439,42.652,63.145
    >>Clique em |cRXP_PICK_A Queda de Ameth'Aran|r
    .complete 953,2 --Read The Fall of Ameth'Aran (1)
    .isOnQuest 953
step
#xprate <1.5
    .goto 1439,42.373,61.815
    >>Clique na |cRXP_PICK_Chama Antiga|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
    .isOnQuest 957
step
#xprate <1.5
    .goto Darkshore,43.30,58.70
    >>Clique em |cRXP_PICK_A Fundação de Ameth'Aran|r
    .complete 953,1 --Read The Lay of Ameth'Aran (1)
    .isOnQuest 953
step
#xprate <1.5
    #optional
    #requires Relics
--XXREQ Placeholder invis step until multiple requires per step
step
#xprate <1.5
    #optional
    #requires Anaya
--XXREQ Placeholder invis step until multiple requires per step
step
#xprate <1.5
    .goto 1439,40.302,59.731
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
#xprate <1.5
    #sticky
    #label bears1A
    #loop
    .goto Darkshore,39.03,67.32,0
    .goto Darkshore,42.54,67.76,0
    .goto Darkshore,39.99,78.46,0
    .goto Darkshore,39.03,67.32,70,0
    .goto Darkshore,42.54,67.76,70,0
    .goto Darkshore,39.99,78.46,70,0
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r no sul de Costa Negra
    >>Tenha cuidado, pois eles lançam [Raiva] se você não os matar rápido o suficiente (Corpo a corpo instantâneo: reduz toda a regeneração de vida em 50% por 10 minutos)
    .complete 2138,1 -- Rabid Thistle Bear slain (20)
    .mob Rabid Thistle Bear
step
#xprate <1.5
    .goto 1439,37.105,62.167
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
step << Draenei
#xprate <1.5
    .goto 1439/1,579.500,5240.300
    >>Clique na |cRXP_PICK_Criatura Marinha Encalhada|r
    .accept 4728 >>Aceite Tartaruga Marinha Encalhada
step
#xprate <1.5
    #requires bears1A
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
#xprate <1.5
    #completewith DarkshoreEnd
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 442 -- auberdine
    .subzoneskip 446 -- bashal'aran
step << !Draenei
#xprate <1.5
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
    .target Asterion
step
#xprate <1.5
    #label FinalAuber
    #completewith DarkshoreEnd
    .subzone 442 >>Viaje para Auberdine
step
#xprate <1.5
    .goto 1439,38.843,43.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
    .target Tharnariun Treetender
    .isQuestComplete 2138
step
#xprate <1.5
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Entregue Uma grande ameaça?
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
#xprate <1.5
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .target Thundris Windweaver
step << !Dwarf/!Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4813 >>Entregue Fragmentos incrustados
    .target Sentinel Glynda Nal'Shea
step << Dwarf Hunter
    .goto 1439,37.703,43.393
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .target Sentinel Glynda Nal'Shea
step
#xprate <1.5
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada

    --TODO: ADD ids for all the other turn ins (survival guide)
    .target Gwennyth Bly'Leggonde
    .isOnQuest 4722
step
#xprate <1.5
    .goto 1439,35.743,43.710
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cerellean Garralva|r
    >>Talvez seja necessário aguardar o RP dele caso outra pessoa tenha acabado de entregar
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
step << !Draenei
    #optional
    .goto Darkshore,30.749,40.995
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para a Ilha Névoa Lazúli
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << !Draenei
	#label DarkshoreEnd
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
step << Draenei
    .isQuestComplete 957
    .goto 1439,44.168,36.289
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
    .target Asterion
step << Draenei
    .goto Darkshore,50.81,25.50
    .use 12350 >>Use o [Tubo de Amostragem Vazio] na base do Rio Fontescarpa
    .complete 4762,1 --Cliffspring River Sample (1)
step << Draenei
    .hs >>Use a Pedra de Regresso para a Ilha Névoa Rubra
    .zoneskip Bloodmyst Isle
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#name 14-20 Névoa Rubra
#subgroup RestedXP Aliança 1-20
#defaultfor !Draenei
#next 20-21 Costa Negra; 21-23 Vilavska << !Warlock
#next 20-23 Costa Negra/Vale Gris << Warlock

step << Druid
    .goto Azuremyst Isle,24.450,54.556
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalannius|r
    .trainer >>Treine suas magias de classe
    .target Shalannius
step
    #completewith AHCheck
    .goto Azuremyst Isle,24.6,49.0,20 >>Entre em The Exodar pela rampa traseira
step << Warrior/Paladin/Hunter/Rogue
    #completewith next
    .goto The Exodar,53.39,85.68,15,0
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Behomat|r no andar superior << Warrior
    .goto The Exodar,50.50,81.28,20 >>Suba pelas rampas em direção a |cRXP_FRIENDLY_Handiir|r no andar superior << Paladin/Hunter/Rogue
step << Warrior
    .goto The Exodar,55.580,82.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Behomat|r
    .trainer >>Treine suas magias de classe
    .target Behomat
step << Warrior/Paladin/Hunter/Rogue
    .goto The Exodar,53.362,85.753
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Handiir|r
    .train 202 >>Treine Espadas de Duas Mãos << Paladin/Warrior
    .train 199 >>Treine Maças de Duas Mãos << Paladin/Warrior
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
    .collect 23984,10
    .target Auctioneer Iressa
    .target Auctioneer Fanin
    .target Auctioneer Eoch
    .isQuestAvailable 9641
step
    #label AHCheck
step
    #completewith next
    .goto The Exodar,54.09,32.52,30,0
    .goto The Exodar,64.86,35.03,20,0
    .goto The Exodar,73.68,53.70,20 >>Saia de Exodar
    .zoneskip The Exodar,1
step << !Draenei
    .goto The Exodar,68.351,63.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanos|r
    .fp Exodar >>Pegue o ponto de voo de Exodar
    .target Stephanos
step
    .goto Bloodmyst Isle,63.5,88.8
	.zone Bloodmyst Isle >>Viaje para o norte até a Ilha Névoa Rubra
    >>|cRXP_WARN_Enquanto você faz missões em Ilha Névoa Rubra, lembre-se de manter 10|r |T132889:0|t[Linho] |cRXP_WARN_pois você precisará dele para uma missão de classe por volta do nível 24|r << Paladin !Draenei
step
    .goto Bloodmyst Isle,62.998,87.541
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kessel|r
    .accept 9663 >>Aceite A Maratona de Kessel
    .target Kessel
step
    .isOnQuest 9663
    .goto Bloodmyst Isle,61.06,69.97,20,0
    .goto Bloodmyst Isle,55.252,59.121
    .subzone 3584 >>Viaje para o norte até Vigília Rubra
    >>Siga a seta atentamente! Certifique-se de não atravessar a ponte, caso contrário você será desmontado!
    >>Não enfrente nenhum inimigo, não ataque nem lance magias, pois isso fará você ser desmontado! Você também será desmontado se ficar atordoado por um ataque pelas costas!
    >>Se você for desmontado, abandone a missão "A Maratona de Kessel"
step
    #optional
    #completewith next
    .subzone 3584 >>Viaje até Vigília Rubra
step
    .goto Bloodmyst Isle,55.252,59.121
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 9646 >>Aceite PROCURA-SE: Garra da Morte
step
    .goto Bloodmyst Isle,55.843,59.807
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hospedeiro Topher Loaal|r
    .target Caregiver Topher Loaal
    .home >>Defina sua Pedra de Regresso para O Entreposto Rubro
    .subzoneskip 3584,1
    .bindlocation 3584
step
    #optional
    #sticky
    .abandon 9663 >>Abandone A Maratona de Kessel
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
step
    .goto Bloodmyst Isle,52.588,53.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Emissário Mikolaas|r
    .accept 9581 >>Aceite Aprender com os cristais
    .target Harbinger Mikolaas
step
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9693 >>Entregue O que Argus significa para mim
    .accept 9694 >>Aceite O Entreposto Rubro
step << Dwarf Hunter
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
step << Dwarf Hunter
    .goto Bloodmyst Isle,55.429,55.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Boros|r
    .target Vindicator Boros
    .turnin 9694 >>Entregue O Entreposto Rubro
    .accept 9779 >>Aceite Interceptar a mensagem
step
    .goto Bloodmyst Isle,53.245,57.741
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morae|r
    .target Morae
    .accept 9629 >>Aceite Pegar e soltar
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
	>>Clique no |cRXP_PICK_Glifo de Monumento a Nazzivus|r na parede do altar
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
    .accept 9578 >>Aceite À procura de Galaen
    .target Morae
step
    .isOnQuest 9594
    .goto Bloodmyst Isle,55.083,57.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aalesia|r
    .turnin 9594 >>Entregue Os sinais da Legião
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
step << !Dwarf/!Hunter
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
step << !Dwarf/!Hunter
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
    #completewith next
    .subzone 3598 >>Viaje até a Ilha Mal-da-Serpe
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda um pouco pela área
    .accept 9687 >>Aceite Devolver o sagrado sossego
    .target Prince Toreth
step
    #completewith FlyExo
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 3584
step
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
    #label FlyExo
    .isOnQuest 9698
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
step
    #completewith next
    .goto The Exodar,73.682,53.701,15 >>Desça para dentro de The Exodar
step
    .isOnQuest 9698
    .goto The Exodar,32.844,54.484
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Profeta Velen|r
    .target Prophet Velen
    .turnin 9698 >>Entregue Audiência com o profeta
    .accept 9699 >>Aceite Verdade ou ficção
step
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
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para obter o buff consumível [Cristal da Perspicácia] (Aumenta o Intelecto em 5. Dura 30 min.) << !Warrior !Paladin !Shaman !Rogue
    +Lembre-se de entregar seus [Estilhaços de Cristal Irradiado] para obter o buff consumível [Cristal da Ferocidade] (Aumenta o poder de ataque em 10. Dura 30 min.) << Warrior/Paladin/Shaman/Rogue
    .target Vindicator Boros
    .itemcount 23984,>9
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
    .goto Bloodmyst Isle,61.156,41.893
    >>Clique no |cRXP_PICK_Diário Surrado|r no chão
    .turnin 9550 >>Entregue Um mapa de onde?
    .accept 9557 >>Aceite Decifrar o livro
step
	.goto Bloodmyst Isle,54.661,53.951
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anacoreta Paetheus|r
    .turnin 9557 >>Entregue Decifrar o livro
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
    >>Fique atento a estes enquanto segue para Vigília Rubra
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
    .accept 9748 >>Aceite Água que passarinho não bebe
    .accept 9753 >>Aceite O que sabemos... << Draenei
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
    .target Vindicator Aesom
    .subzoneskip 3584,1
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
    .accept 9760 >>Aceitar O Recanto do Vindicante
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
    .fly Teldrassil >>Voe para a Vila de Rut'theran
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
    .hs >>Usar Pedra de Regresso para Vigília Rubra
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 3584
    .bindlocation 3584,1
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
    .accept 9746 >>Aceitar No Limite << Hunter/Shaman/Mage/Warlock
    .target Vindicator Aesom
step << Paladin
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
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
step
    #completewith next
    .subzone 3598 >>Viaje até a Ilha Mal-da-Serpe
step
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda um pouco pela área
    .turnin 9687 >>Entregue Devolver o sagrado sossego
    .accept 9688 >>Aceitar No Sonho
    .target Prince Toreth
step
	#completewith TurninRazormaw
	>>Saqueie |cRXP_LOOT_Lágrimas de Ysera|r no chão
    >>Eles se parecem com pequenos cogumelos verdes
    .complete 9649,1 --Collect Ysera's Tear (x2)
step
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
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .turnin 9688 >>Entregue No Sonho
    .accept 9689 >>Aceitar Rasgaqueixo
    .target Prince Toreth
step
    #completewith next
    .goto Bloodmyst Isle,72.650,21.006
    .cast 31268 >>Clique no |cRXP_PICK_Pira Sempre-Acesa|r no topo da montanha para invocar |cRXP_ENEMY_Razormaw|r
    .timer 36,RP do Razormaw
step
    .goto Bloodmyst Isle,73.129,20.587
    >>Mate |cRXP_ENEMY_Razormaw|r
    >>|cRXP_ENEMY_Razormaw|r é um Elite de nível 20. Ele leva aproximadamente 35 segundos para pousar
    >>Esta missão é MUITO difícil. Encontre um grupo para ele se necessário. Ignore esta etapa se você não conseguir encontrar um grupo ou enfrentá-lo sozinho
    >>Lembre-se de conjurar [Dádiva dos Naaru] em você mesmo ou em um membro do grupo, se necessário << Draenei
    .complete 9689,1 --Kill Razormaw (x1)
    .mob Razormaw
step
    #label TurninRazormaw
    .isQuestComplete 9689
    .goto Bloodmyst Isle,74.7,33.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Príncipe Toreth|r
    >>|cRXP_FRIENDLY_Príncipe Toreth|r anda levemente pelo local
    .turnin 9689 >>Entregue Rasgaqueixo
    .target Prince Toreth
step
    #loop
    .goto Bloodmyst Isle,76.8,21.5,0
    .goto Bloodmyst Isle,75.7,28.5,0
    .goto Bloodmyst Isle,71.5,28.6,0
    .goto Bloodmyst Isle,68.5,21.6,0
    .goto Bloodmyst Isle,70.6,16.5,0
    .goto Bloodmyst Isle,71.5,11.5,0
    .goto Bloodmyst Isle,75.1,8.4,0
    .goto Bloodmyst Isle,74.9,16.3,0
    .goto Bloodmyst Isle,76.8,21.5,35,0
    .goto Bloodmyst Isle,75.7,28.5,35,0
    .goto Bloodmyst Isle,71.5,28.6,35,0
    .goto Bloodmyst Isle,68.5,21.6,35,0
    .goto Bloodmyst Isle,70.6,16.5,35,0
    .goto Bloodmyst Isle,71.5,11.5,35,0
    .goto Bloodmyst Isle,75.1,8.4,35,0
    .goto Bloodmyst Isle,74.9,16.3,35,0
	>>Saqueie |cRXP_LOOT_Lágrimas de Ysera|r no chão
    >>Eles se parecem com pequenos cogumelos verdes
    .complete 9649,1 --Collect Ysera's Tear (x2)
step << Hunter/Shaman/Mage/Warlock
    .isOnQuest 9746
    #loop
    .goto Bloodmyst Isle,26.2,52.6,0
    .goto Bloodmyst Isle,23.8,56.0,0
    .goto Bloodmyst Isle,23.8,60.8,0
    .goto Bloodmyst Isle,26.2,52.6,70,0
    .goto Bloodmyst Isle,23.8,56.0,70,0
    .goto Bloodmyst Isle,23.8,60.8,70,0
    >>Mate |cRXP_ENEMY_Piromantes Falconélius|r e |cRXP_ENEMY_Defensores Falconélius|r
    >>Complete isso apenas se você estiver com menos de 90% do nível 19. É importante atingir o nível 20 antes de sair da Ilha Névoa Rubra
    .complete 9746,1 --Kill Sunhawk Pyromancer (x10)
    .mob +Sunhawk Pyromancer
    .complete 9746,2 --Kill Sunhawk Defender (x10)
    .mob +Sunhawk Defender
    .xp 19.95,1 -- Skips step if you are above 19.95%
step << Hunter/Shaman/Mage/Warlock
    #optional
    .isQuestComplete 9746
	.xp 20-2700
step << Hunter/Shaman/Mage/Warlock
    #optional
    .isQuestNotComplete 9746
    .xp 20-1350
step
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 3584
step
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
step << Paladin
    #optional
    .goto Bloodmyst Isle,55.551,55.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vindicante Aesom|r
    .trainer >>Treine suas magias de classe
    .target Vindicator Aesom
    .xp <20,1
step
    .goto Bloodmyst Isle,57.680,53.875
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laando|r
    .fly The Exodar>>Voe para Exodar
    .target Laando
    .zoneskip Bloodmyst Isle,1
step << Shaman/Mage/Hunter/Warrior/Priest
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
    .trainer >>Treine suas magias de classe
    .target Sulaa
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
step << Hunter
	.goto The Exodar,47.573,88.340
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vord|r
	.trainer >>Treine suas magias de classe
    .target Vord
step << Hunter
    .goto The Exodar,44.240,86.612
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ganaar|r
	.trainer >>Treine as magias do seu mascote
    .target Ganaar
step << Hunter
    #ah
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Compre um|r [Arco Recurvo Pesado] |cRXP_BUY_dela ou verifique a Casa de Leilões por algo melhor/mais barato|r
    >>Equipe-o mais tarde, depois que você treinar Arcos << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #ssf
    .goto The Exodar,47.911,89.801
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Avelii|r
    >>|cRXP_BUY_Compre um|r [Arco Recurvo Pesado]
    >>Equipe-o mais tarde, depois que você treinar Arcos << !NightElf
    .collect 3027,1 -- Heavy Recurve Bow
    .money <0.5397
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20
    .target Avelii
step << Hunter
    #optional
    #completewith next
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.19
    .xp <20,1
    .train 264,3
step << Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Oss|r
    >>|cRXP_BUY_Compre um|r [Varinha Incandescente] |cRXP_BUY_com ele ou verifique a Casa de Leilões para uma melhor|r
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
step
    .goto Azuremyst Isle,24.183,54.341
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caçadora Kella Arconyx|r
    >>|cRXP_FRIENDLY_Caçadora Kella Arconyx|r |cRXP_WARN_está localizada fora da entrada traseira de Exodar|r
    .turnin 9632 >>Entregar Aliados de última hora
    .accept 9633 >>Aceitar O caminho de Auberdine
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
step << !NightElf Hunter/!NightElf Rogue
    .goto 1439,33.213,39.883
    .zone Teldrassil >>Pegue o barco para Darnassus
    .zoneskip Darnassus
step << NightElf Rogue
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
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
    >>|cRXP_BUY_Compre um |r[Arco Recurvo Pesado] |cRXP_BUY_dela ou verifique a Casa de Leilões por algo melhor/mais barato|r
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
--Continued below is .dungeon DM only
step
.dungeon DM
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r no andar de baixo
    .home >>Defina sua Pedra de Regresso para Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
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
    .fp Menethil Harbor >>Pegue o ponto de voo do Porto de Menethil
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
    .fp Ironforge >>Pegue o ponto de voo de Altaforja
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
    .train 201 >>Treine Espadas de Uma Mão << Mage/Rogue/Warlock
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
    .fp Stormwind >>Pegue o ponto de voo de Ventobravo << !Human
    .fly Westfall >>Voe para Cerro Oeste << Human/Dwarf Warrior/Gnome Warrior/Rogue/Warlock
    .target Dungar Longdrink
    .zoneskip Westfall
step << !Human
.dungeon DM
    #optional
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
step << !Human
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
step << !Human
.dungeon DM
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Pegue o ponto de voo das Montanhas Cristarrubra
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
    >>|T133644:0|t[Bater de Carteira] o |cRXP_ENEMY_Drone Défias Malformado|r. Saqueie-o para obter a |cRXP_LOOT_Chave da Torre Défias|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_O |cRXP_ENEMY_Drone Défias Malformado|r surge na entrada da torre, depois patrulha ao redor da parte externa|r
    >>Tome cuidado, pois ele causa MUITO dano. Se sua [Furtividade] quebrar, use rapidamente [Disparada] e fuja
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
    >>Se você tiver uma [Adaga] na bolsa ou equipada, você pode usar [Emboscada] |cRXP_WARN_nos |cRXP_ENEMY_Patrulheiros da Torre Défias|r e nas |cRXP_ENEMY_Sentinelas da Torre Défias|r lá dentro para matá-los instantaneamente. Esteja pronto para correr depois de matar a primeira |cRXP_ENEMY_Sentinela da Torre Défias|r e lembre-se você pode levar golpes vindos de cima. É mais lento, mas MUITO mais seguro|r
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
step << NightElf
.dungeon BFD
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
step << !NightElf
.dungeon BFD
    .goto 1439,33.213,39.883
    .zone Teldrassil >>Pegue o barco para Teldrassil
    .zoneskip Darnassus
step
.dungeon BFD
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
    .zoneskip Darkshore
step
.dungeon BFD
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
    .zoneskip Darkshore
--
step << !Warlock
#xprate >1.49
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .target Gershala Nightwhisper
step << !Warlock
#xprate >1.49
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    >>Se você não puder aceitar esta missão, pule esta etapa
    .accept 1275 >>Aceite Pesquisando a Corrupção
    .target Gershala Nightwhisper
step << !Warlock
#xprate >1.49
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.turnin 9633 >>Entregue O Caminho para Auberdine
    .accept 10752 >>Aceite Rumo a Vilavska
    .target Thundris Windweaver
step << !Warlock
#xprate >1.49
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .accept 10752 >>Aceite Rumo a Vilavska
    .target Thundris Windweaver
step << !Warlock
#xprate >1.49
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step << !Warlock
#xprate >1.49
    #completewith next
    .goto 1439,35.724,83.696,50 >>Viaje para Costa Negra Meridional
step << !Warlock
#xprate >1.49
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>Isso iniciará uma escolta. Talvez seja necessário aguardar que ela reapareça ou que outros terminem a escolta
    .turnin 729 >>Entregue The Absent Minded Prospector
    .accept 731,1 >>Aceite O Prospector Distraído
    .target Prospector Remtravel
step << !Warlock
#xprate >1.49
    .isOnQuest 731
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    .complete 731,1
    .target Prospector Remtravel
step << !Warlock
#xprate >1.49
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance !Warlock
#xprate <1.5
#name 20-21 Costa Negra
#subgroup RestedXP Aliança 20-32
#defaultfor !Draenei
#next 21-23 Vale Gris

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
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    >>Se você não puder aceitar esta missão, pule esta etapa
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
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .accept 10752 >>Aceite Rumo a Vilavska
    .target Thundris Windweaver
step
    .isQuestTurnedIn 4762
    .goto 1439,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .accept 4763 >>Aceite Os Corrompidos Bosquenero
    .target Thundris Windweaver
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .goto Darkshore,37.78,44.06
    .use 12346 >>Use a [Tigela de Purificação Vazia] no |cRXP_PICK_Poço Lunar de Auberdine|r
    .collect 12347,1,4763,1
    .isOnQuest 4763
step
    #optional
    #completewith MistVeil
    +Pressione Escape, depois vá em -> Opções -> Controles
    >>Marque "Ativar Tecla de Interação" e vincule a opção "Interagir com o Alvo" a uma tecla
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
step << Hunter/Rogue
	#completewith FOTS
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.20 << NightElf Hunter -- not going to Darn if already have a better bow
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
    >>|cRXP_BUY_Buy a|r ou verifique a Casa de Leilões por algo melhor/mais barato[Longsword]
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
step
    #optional
    #completewith next
    .isOnQuest 1138
    >>Mate |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Reef Crawler
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
    #optional
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
    .goto 1439,35.724,83.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    >>Isso iniciará uma escolta. Talvez seja necessário aguardar que ele reapareça ou que outros terminem a escolta
    .turnin 729 >>Entregue The Absent Minded Prospector
    .accept 731,1 >>Aceite O Prospector Distraído
    .target Prospector Remtravel
step
    .isOnQuest 731
    >>|cRXP_WARN_Escolte o|cRXP_FRIENDLY_ Prospector Trilheiro|r pela Escavação|r
    .complete 731,1
    .target Prospector Remtravel
step
    #optional
    #loop
    .goto 1439,32.674,81.752,0
    .goto 1439,36.327,73.408,0
    .goto 1439,35.195,71.864,0
    .goto 1439,32.674,81.752,60,0
    .goto 1439,33.284,80.330,60,0
    .goto 1439,34.174,80.488,60,0
    .goto 1439,35.432,79.052,60,0
    .goto 1439,36.327,73.408,60,0
    .goto 1439,35.412,73.176,60,0
    .goto 1439,35.033,72.432,60,0
    .goto 1439,35.195,71.864,60,0
    >>Mate os |cRXP_ENEMY_Encrusted Tide Crawlers|r e os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter os |cRXP_LOOT_Fine Caranguejo Chunks|r
    >>Pule esta etapa e abandone “Fruto do Mar” se você tiver azar com as taxas de saque
    .complete 1138,1 -- Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
    .mob Reef Crawler
step
    .isOnQuest 993
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Isso iniciará uma escolta. Limpe os|cRXP_ENEMY_ Furbolgs Bosquenero|r perto da caverna antes de falar com ele|r
    .turnin 993 >>Entregue Um Mestre Perdido
    .accept 994,1 >>Aceite Fuga Through Force
    .target Volcor
step
    .isQuestTurnedIn 993
    #optional
    .goto Darkshore,45.00,85.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Volcor|r
    >>|cRXP_WARN_Isso iniciará uma escolta. Limpe os|cRXP_ENEMY_ Furbolgs Bosquenero|r perto da caverna antes de falar com ele|r
    .accept 994,1 >>Aceite Fuga Through Force
    .target Volcor
step
    .isOnQuest 994
    .goto 1439,43.594,84.489,0
    .goto 1439,42.576,82.897,0
    .goto 1439,43.594,84.489,15,0
    .goto 1439,42.576,82.897,15,0
    .goto 1439,42.004,81.688
    >>Escolte |cRXP_FRIENDLY_Volcor|r
    >>Após cruzar a 3ª tocha ao sair da caverna, um|cRXP_ENEMY_ Furbolg Bosquenero|r surgirá de ambos os lados e atacará|cRXP_FRIENDLY_ Volcor|r
    >>No meio do caminho para a estrada, os |cRXP_ENEMY_Furlbogs|r aparecerão dos dois lados e atacarão |cRXP_FRIENDLY_Volcor|r
    .complete 994,1 --Help Volcor to the road (1)
    .target Volcor
step
    .isOnQuest 967,10752,945,4740,994,731
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance !Warlock
#name 21-23 Vale Gris
#subgroup RestedXP Aliança 20-32
#defaultfor !Draenei
#next 23-24 Pantanal; 24-27 Redridge/Floresta do Crepúsculo

step
#xprate <1.5
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
#xprate <1.5
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
#xprate <1.5
    .isQuestComplete 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 970 >>Entregue A Torre de Althalaxx
    .accept 973 >>Aceite A Torre de Althalaxx
	.target Delgren the Purifier
step
#xprate <1.5
    .isQuestTurnedIn 970
    .goto Ashenvale,26.19,38.69
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .accept 973 >>Aceite A Torre de Althalaxx
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
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin -10752 >>Entregue em Rumo a Vale Gris
    .accept 991 >>Aceite A Purificação de Raene
    .accept 1054 >>Aceite Expurgo a Ameaça
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kimlya|r
    .home >>Defina sua Pedra de Regresso para Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
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
    +Comece a procurar por um grupo para Cavernas do Lamento enquanto conclui as próximas duas etapas. Muito em breve você irá para os Sertões para fazer Cavernas do Lamento
    .zoneskip The Barrens
step
.dungeon WC
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mate |cRXP_ENEMY_Dal Sangarra|r. Saqueie-o para obter seu |cRXP_LOOT_crânio|r
    >>|cRXP_ENEMY_Dal Garrassangue|r patrulha a Aldeia Pêlo de Cardo
    .complete 1054,1
    .unitscan Dal Bloodclaw
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
    >>Esta missão é concluída FORA das Cavernas do Lamento
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
    .hs >>Use a Pedra de Regresso para Astranaar
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
    .subzoneskip 415
step
    .goto Ashenvale,46.37,46.38
    >>Pegue a |cRXP_LOOT_Lágrima de Eluna|r no chão
    .complete 1033,1
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mate |cRXP_ENEMY_Dal Sangarra|r. Saqueie-o para obter seu |cRXP_LOOT_crânio|r
    >>|cRXP_ENEMY_Dal Garrassangue|r patrulha a Aldeia Pêlo de Cardo
    .complete 1054,1
    .unitscan Dal Bloodclaw
step
    #completewith next
    .subzone 415 >>Vá para Astranaar
step
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1054 >>Entregue Contendo a ameaça
    .target Raene Wolfrunner
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1033 >>Entregue A Lágrima de Eluna
    .timer 17,RP da Lágrima de Eluna
    .accept 1034 >>Aceite As Ruínas de Poeira Estelar
step
    .goto Ashenvale,33.30,67.79
    >>Saqueie os |cRXP_PICK_arbustos cobertos de poeira estelar|r para obter um punhado de |cRXP_LOOT_Punhado de Poeira Estelar|r
    >>Os locais de surgimento deles estão espalhados por toda a ilha
    .complete 1034,1
step
#xprate <1.5
    #completewith ToA973
    .goto Ashenvale,31.67,64.24,15 >>Vá até a base da montanha
    .goto Ashenvale,31.21,61.60,15 >>Corra diretamente para o norte enquanto sobe a montanha
step
#xprate <1.5
    .isOnQuest 973
    .goto Ashenvale,27.40,63.03,70,0
    .goto Ashenvale,25.27,60.68
    >>Mate |cRXP_ENEMY_Ilkrud Magthrull|r. Saqueie-o para obter seu |cRXP_LOOT_Tomo|r
    >>|cRXP_ENEMY_Ik'rud Magthrull|r lançará [Guardiões de Ik'rud]|cRXP_WARN_|que tem um tempo de conjuração de 5 segundos e invocará 2|cRXP_ENEMY_Andarilhos do Caos|r. Interrompa essa conjuração se puder|r
    .complete 973,1
    .mob Ilkrud Magthrull
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,27.4,61.7,80,0
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A fuga de Therylune
	.target Therysil
step
#xprate <1.5
    #label ToA973
    .isQuestComplete 973
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .goto Ashenvale,26.19,38.69
    .turnin 973 >>Entregue A Torre de Althalaxx
    .target Delgren the Purifier
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
    >>Não saia do seu caminho para completar isso ainda
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
    >>|cRXP_ENEMY_Lady Vespira|r é um reaparecimento raro que também pode derrubar o|cRXP_WARN_ Anel de Zoram|cRXP_LOOT_ |rse você a vir|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-lwZ6P-ldy >> Clique aqui para referência em vídeo sobre “puxada dividida”
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Mate |cRXP_ENEMY_Ruuzel|r. Saque-a pelo |cRXP_LOOT_Anel de Zoram|r
    >>|cRXP_ENEMY_Ruzzel|r patrulha a ilha com um|cRXP_WARN_ Mirmidão Caudafúria|cRXP_ENEMY_ e uma|r |cRXP_ENEMY_Bruxa do Mar Caudafúria|r. Mate um deles e depois redefina-os se necessário|r
    >>|cRXP_ENEMY_Lady Vespira|r é um reaparecimento raro que também pode derrubar o|cRXP_WARN_ Anel de Zoram|cRXP_LOOT_ |rse você a vir|r
	.unitscan Lady Vespia
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
    .goto Moonglade,52.53,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .trainer >>Treine suas magias de classe
    .target Loganaar
step
    .hs >>Use a Pedra de Regresso para Astranaar
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TZS2
    .subzone 415 >>Vá para Astranaar
step
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1023 >>Entregue Purificação de Raene
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
step
    #label TZS2
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >>Entregue A Praia de Zoram
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >>Voe para Costa Negra
    .target Daelyshia
step
#xprate <1.5
    #optional
    .isQuestComplete 1138
    .goto Darkshore,36.096,44.931
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
step
#xprate <1.5
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4740 >>Entregue PROCURA-SE: Lodofundo!
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 1275 >>Entregue Investigando a Corrupção
    .target Gershala Nightwhisper
step
#xprate <1.5
    .isOnQuest 994
    .goto 1439,39.373,43.483
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 994 >>Entregue Fuga Through Force
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
step << !Hunter !NightElf !Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto 1439,33.213,39.883
    .zone Teldrassil >>Pegue o barco para Darnassus
    .zoneskip Darnassus
step << NightElf/Hunter/Rogue
.dungeon !BFD
    .isOnQuest 741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
    >>Se você ainda não tiver o ponto de voo para Darnassus, pegue o barco no cais ali << !NightElf
	.target Caylais Moonfeather
step
.dungeon BFD
    .isOnQuest 1199,1200,741
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fly Teldrassil >>Voe para Teldrassil
	.target Caylais Moonfeather
step
    #optional
    #completewith next
    .isOnQuest 1199,1200,741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step
    .isOnQuest 1199,1200,741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >>Aceite O Prospector Distraído
step << Mage/Priest/Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >>Treine Cajados
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guarda Argênteo Manados|r no andar de cima
    .turnin 1199 >>Entregue A Queda do Crepúsculo
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vigilalva Selgorm|r no andar de cima
    .turnin 1200 >>Entregue Vilania nas Profundezas Negras
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darnassus,1
step
    #optional
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Auberdine >>Voe para Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +Comece a procurar um grupo para Bastilha da Presa Negra. Em breve você irá para a Floresta de Pinhaprata para fazer Bastilha da Presa Negra
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devin Tremulaurora|r
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Devin Tremulaurora|r não tiver nenhuma|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei/NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .accept 288 >>Aceite A Terceira Frota
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    .home >>Defina sua Pedra de Regresso no Porto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    >>|cRXP_BUY_Compre um|r [Jarra de Hidromel Enânico]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >>Suba as escadas em direção ao |cRXP_FRIENDLY_Arqueólogo Pançacheia|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Pançacheia|r no andar de cima
    .target Archaeologist Flagongut
    .turnin 942 >>Entregue The Absent Minded Prospector
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .turnin 288 >>Entregue A Terceira Frota
step
#xprate >1.49
    #label BTcheck
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
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >>Faça grind em |cRXP_ENEMY_Gnolls Esfolamusgo|r enquanto procura um grupo para Bastilha da Presa Negra
step
#xprate >1.49
.dungeon SFK
    .goto Arathi Highlands,43.01,55.00,90,0
    .goto Arathi Highlands,25.45,46.95,90,0
    .goto Arathi Highlands,21.29,30.24,70,0
    .goto Hillsbrad Foothills,49.338,52.272
    >>Não há missões para Bastilha da Presa Negra. Você terá que ir correndo do Pantanal até a Floresta de Pinhaprata. Certifique-se de permanecer na estrada ao atravessar o Planalto Arathi e fique atento ao |cRXP_ENEMY_Mensageira Renegada|r
    >>Você ainda não precisa obter o ponto de voo do Planalto Arathi
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .fp Southshore >>Aprenda a rota de voo para Costa Sul
    .target Cedrik Prose
    .target Darla Harris
    .unitscan Forsaken Courier
step
#xprate >1.49
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >>Entre em Bastilha da Presa Negra
step
#xprate >1.49
.dungeon SFK
    +Não há missões para Bastilha da Presa Negra
    >>Limpe a Bastilha da Presa Negra. Saia quando terminar
    .zoneskip 209,1
step
#xprate >1.49
.dungeon SFK
	.goto Wetlands,63.9,78.6
	.hs >>Use a Pedra do Regresso para o Porto de Menethil
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .subzoneskip 150
    .subzoneskip 2103
    .subzoneskip 2104
    .zoneskip Loch Modan
step << !Draenei !NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Stormwind >>Voe para Ventobravo
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
step << NightElf/Draenei
#xprate >1.49
    .goto Wetlands,53.74,70.33,30,0
    .goto Wetlands,48.17,67.49,30,0
    .goto Loch Modan,25.11,8.99,20 >>|cRXP_WARN_Viaje através do túnel de Dun Algaz para Loch Modan|r
    .zoneskip Loch Modan --Completes if you run to Loch
step << skip --logout skip NightElf/Draenei
#xprate >1.49
	#completewith next
	.goto Wetlands,63.9,78.6
    >>Vá até a caverna na base da represa no leste do Pantanal
	.zone Loch Modan >>Desconecte-se em cima dos cogumelos no fundo da caverna.
    >>Quando você entrar novamente, isso irá teleportá-lo para Thelsamar
	.link https://www.youtube.com/watch?v=21CuGto26Mk >>https://www.youtube.com/watch?v=21CuGto26Mk >> CLIQUE AQUI para referência
step << NightElf/Draenei
#xprate >1.49
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .target Thorgrum Borrelson
step << NightElf/Draenei
#xprate >1.49
	.goto Loch Modan,22.6,70.2,80,0
	.goto Loch Modan,19.85,63.04,40,0
	.goto Dun Morogh,86.2,47.0
    >>|cRXP_WARN_Comece a tirar seu equipamento enquanto você corre para Dun Morogh|r
    .deathskip >>Gere agro dos |cRXP_ENEMY_Scarred Crag Boars|r para morrer e reaparecer no |cRXP_FRIENDLY_Anjo da Cura|r quando estiver em Dun Morogh
    .mob Scarred Crag Boar
step << skip --logout skip NightElf/Draenei
#xprate >1.49
	>>Entre na caverna dos troggs no sudeste. Faça um skip de logout
    .goto Dun Morogh,70.63,56.70,60,0
    .goto Dun Morogh,70.60,54.86
	.link https://www.youtube.com/watch?v=yQBW3KyguCM >>https://www.youtube.com/watch?v=QB3KyguCM >> |cRXP_WARN_CLIQUE AQUI para referência|r
	.zone Ironforge >>Desconecte-se e pule esta etapa ou viaje para Altaforja
step << NightElf/Draenei
#xprate >1.49
    .goto Dun Morogh,50.084,49.420
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loslor Rudge|r
    .vendor >>|cRXP_BUY_Compre um|r [Tubo de Bronze]
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule este passo se |cRXP_FRIENDLY_Loslor Rudge|r não tem um|r
	.target Loslor Rudge
    .bronzetube
step << NightElf/Draenei
#xprate >1.49
    .goto Dun Morogh,52.94,35.22,0
    .goto Dun Morogh,52.94,35.22,50,0
    .goto Ironforge,19.24,80.76
    .zone Ironforge >>Viaje para Ironforge
step << NightElf/Draenei
#xprate >1.49
    .goto Ironforge,55.491,47.751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step << NightElf/Draenei
#xprate >1.49
    .goto Ironforge,76.61,51.28,0
    .goto Ironforge,76.61,51.28,10,0
    .zone Stormwind City >>Pegue o bonde para Ventobravo
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance Warlock
#name 20-23 Costa Negra/Vale Gris
#subgroup RestedXP Aliança 20-32
#next 23-24 Pantanal; 24-27 Redridge/Floresta do Crepúsculo

step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    .goto Darkshore,37.04,44.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shaussiy|r
    .home >>Defina sua Pedra de Regresso para Auberdine
    .target Innkeeper Shaussiy
    .bindlocation 442
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #completewith DevourerofSouls2
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
step
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #label Downstairs
    #completewith DevourerofSouls2
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Stormwind>>Voe para Ventobravo
    .target Shellei Brondir
step << Warlock
    .isQuestAvailable 1716
    .isNotOnQuest 1716
    #optional
    #requires Downstairs
    #completewith DevourerofSouls2
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Entre na Taverna do Cordeiro Degolado. Desça as escadas
step << Warlock
    #label DevourerofSouls2
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1716 >>Aceite Devorador de Almas
    .target Gakin the Darkbinder
step << Warlock
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    +Entre em O Cárcere. Agora você fará o “Ghetto Hearth” para a Costa Negra
    .zoneskip Stormwind City,1
step
    #optional
    .goto StormwindClassic,39.834,54.360
    .zone Darkshore>>Ghetto Hearth para a Costa Negra. Para fazer isso, entre em O Cárcere, depois copie e cole o link abaixo no chat. Aguarde a contagem regressiva de 1 minuto
    .link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("a");C_Timer.After(1,function() LeaveParty() end) >> CLIQUE AQUI
step
#xprate <1.5
    .goto Darkshore,37.219,44.227
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 4740 >>Aceite Procurado: Lodofundo!
step
    .goto Darkshore,37.439,41.839
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .isOnQuest 9633
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
	.turnin 9633 >>Entregue O Caminho para Auberdine
    .accept 10752 >>Aceite Rumo a Vilavska
    .target Thundris Windweaver
step
    .goto Darkshore,37.394,40.128
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .accept 10752 >>Aceite Rumo a Vilavska
    .target Thundris Windweaver
step
    #optional
    .isOnQuest 3765
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .target Gershala Nightwhisper
step
.dungeon BFD
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    >>Se você não puder aceitar esta missão, pule esta etapa
    .accept 1275 >>Aceite Pesquisando a Corrupção
    .target Gershala Nightwhisper
step
#xprate <1.5
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
    .goto 1439,38.660,87.305
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a|cRXP_FRIENDLY_ Therylune|r. Isso iniciará uma escolta
    >>Isso iniciará uma escolta. Pule esta etapa se ela não estiver lá
    .accept 945 >>Aceite A Fuga de Therylune
    .target Therylune
step
    .isOnQuest 945
    .goto Darkshore,40.51,87.09
    >>|cRXP_WARN_Escolte a|cRXP_FRIENDLY_ Therylune|r para fora da Clareira do Mestre|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
    .isOnQuest 10752,945,4740,731
    .zone Ashenvale >>Viaje para o sul até Vale Gris
    .goto Ashenvale,29.7,13.6
step
    .goto Ashenvale,26.43,38.59
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orendil Folharga|r
    .accept 1010 >>Aceite Cabelo-de-Bathran
	.target Orendil Broadleaf
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
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin -10752 >>Entregue em Rumo a Vale Gris
    .accept 991 >>Aceite A Purificação de Raene
    .accept 1054 >>Aceite Expurgo a Ameaça
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.99,49.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Kimlya|r
    .home >>Defina sua Pedra de Regresso para Astranaar
    .target Innkeeper Kimlya
    .bindlocation 415
step
    .goto Ashenvale,37.36,51.79
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .turnin 1020 >>Entregue A Cura de Orendil
    .timer 24,RP da Cura de Orendil
    .accept 1033 >>Aceite A Lágrima de Eluna
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
step
    .goto Ashenvale,33.30,67.79
    >>Saqueie os |cRXP_PICK_arbustos cobertos de poeira estelar|r para obter um punhado de |cRXP_LOOT_Punhado de Poeira Estelar|r
    >>Os locais de surgimento deles estão espalhados por toda a ilha
    .complete 1034,1
step
    #optional
    #completewith next
    .goto Ashenvale,31.67,64.24,15 >>Vá até a base da montanha
    .goto Ashenvale,31.21,61.60,15 >>Corra diretamente para o norte enquanto sobe a montanha
step
    #optional
    .isQuestComplete 945
	.goto Ashenvale,28.1,55.1,80,0
    .goto Ashenvale,22.64,51.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A fuga de Therylune
	.target Therysil
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
    >>Não saia do seu caminho para completar isso ainda
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
    >>|cRXP_ENEMY_Lady Vespira|r é um reaparecimento raro que também pode derrubar o|cRXP_WARN_ Anel de Zoram|cRXP_LOOT_ |rse você a vir|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-lwZ6P-ldy >> Clique aqui para referência em vídeo sobre “puxada dividida”
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
    .skill engineering,<1,1
step
    #label nagas
    .goto Ashenvale,6.528,13.361
    >>Mate |cRXP_ENEMY_Ruuzel|r. Saque-a pelo |cRXP_LOOT_Anel de Zoram|r
    >>|cRXP_ENEMY_Ruzzel|r patrulha a ilha com um|cRXP_WARN_ Mirmidão Caudafúria|cRXP_ENEMY_ e uma|r |cRXP_ENEMY_Bruxa do Mar Caudafúria|r. Mate um deles e depois redefina-os se necessário|r
    >>|cRXP_ENEMY_Lady Vespira|r é um reaparecimento raro que também pode derrubar o|cRXP_WARN_ Anel de Zoram|cRXP_LOOT_ |rse você a vir|r
	.unitscan Lady Vespia
	.mob Ruuzel
    .complete 1009,1
step
.dungeon BFD
    #completewith RuuzelTurnin
    +Comece a procurar um grupo para Profundezas Negras enquanto conclui os próximos passos. Muito em breve você estará fazendo Profundezas de Blackfathom
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
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talen|r
	.target Talen
    .goto Ashenvale,14.79,31.29
    .turnin 1009 >>Entregue Ruuzel
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
step
    .isOnQuest 1008,1023,1034
    .hs >>Use a Pedra de Regresso para Astranaar
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .cooldown item,6948,>2,1
    .subzoneskip 415
    .bindlocation 415,1
step
    #completewith TRoS
    .subzone 415 >>Vá para Astranaar
step
#xprate <1.5
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1023 >>Entregue Purificação de Raene
    .accept 1025 >>Aceite Uma Defesa Agressiva
    .target Raene Wolfrunner
step
#xprate >1.49
    .goto Ashenvale,36.61,49.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1023 >>Entregue Purificação de Raene
    .target Raene Wolfrunner
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shindrell Fogofugaz|r
	.target Shindrell Swiftfire
    .goto Ashenvale,34.67,48.83
    .turnin 1008 >>Entregue A Praia de Zoram
step
    #label TRoS
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pelturas Lunalva|r
	.target Pelturas Whitemoon
    .goto Ashenvale,37.36,51.79
    .turnin 1034 >>Entregue as Ruínas de Poeira Estelar
step
    #optional
    #sticky
    .destroy 5505 >>Destrua o [Diário de Teronis]. Você não precisa mais dele
step
#xprate <1.5
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
    .complete 1025,4 -- Foulweald Warrior slain (12)
    .mob +Foulweald Warrior
    .complete 1025,3 -- Foulweald Totemic slain (10)
    .mob +Foulweald Totemic
    .complete 1025,2 -- Foulweald Ursa slain (2)
    .mob +Foulweald Ursa
    .complete 1025,1 -- Foulweald Den Watcher slain
    .mob +Foulweald Den Watcher
step
#xprate <1.5
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Velene Golpestela|r
    .accept 1016 >>Aceite Braceletes Elementais
    .target Sentinel Velene Starstrike
step
#xprate <1.5
    #loop
    .goto Ashenvale,44.78,70.07,0
    .goto Ashenvale,48.90,70.05,0
    .goto Ashenvale,51.28,70.51,0
    .goto Ashenvale,44.78,70.07,60,0
    .goto Ashenvale,48.90,70.05,60,0
    .goto Ashenvale,51.28,70.51,60,0
    >>Mate |cRXP_ENEMY_Befouled Water Elementals|r. Saqueie-os para obter |cRXP_LOOT_Bracers|r
    .collect 12220,5,1016,1
    .mob Befouled Water Elemental
step
#xprate <1.5
    .use 5456 >>Use o [Pergaminho de Vidência] para criar o [Pergaminho Videnciado]
    .complete 1016,1 -- Divined Scroll
step
#xprate <1.5
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Velene Golpestela|r
    .turnin 1016 >>Entregue Braceletes Elementais
    .accept 1017 >>Aceite Mago Invocador
    .target Sentinel Velene Starstrike
step
    .isOnQuest 1017,1716,1025,4740,731
    .goto Ashenvale,69.73,86.62,0
    .goto Ashenvale,69.71,86.87,50,0
    .goto The Barrens,48.98,5.42,35,0
    .zone The Barrens >>Viaje até The Barrens.Follow the Arrow to avoid |cRXP_ENEMY_Barrens Guards|r
step
#xprate <1.5
    #completewith next
    .goto The Barrens,48.73,14.86,20,0
    .goto The Barrens,48.53,16.51,15,0
    .goto The Barrens,48.16,18.52,6,0
    .goto The Barrens,47.96,18.82,5 >>Suba o Morro de Brumedo. Siga a seta até o topo
step
#xprate <1.5
    .goto The Barrens,48.22,19.15
    >>Mate for his |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Os|cRXP_ENEMY_ Lâmina Ardente|r ao redor são apenas nível 10-12|r
    .complete 1017,1 -- Sarilus Foulborne's Head (1)
    .mob Sarilus Foulborne
step
#xprate <1.5
.dungeon !WC
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
.dungeon WC
    #completewith TroubleDocks
    +Comece a procurar um grupo para Cavernas do Lamento. Em breve você fará Cavernas do Lamento
step << Warlock
    .goto The Barrens,49.307,57.095
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takar the Seer|r
    .turnin 1716 >>Entregue Devorador de Almas
    .accept 1738 >>Aceite Palocórdio
    .target Takar the Seer
step << Warlock
.dungeon !WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >>Aprenda a rota de voo para Ponto de Ancoragem
    .fly Astranaar>> Fly to Astranaar
    .target Bragok
step
.dungeon WC
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >>Aprenda a rota de voo para Ponto de Ancoragem
    .target Bragok
step
.dungeon WC
    #label TroubleDocks
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
    >>Isso pode ser concluído DENTRO e FORA da Caverna Ululante
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
    +Entre na Caverna Ululante
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
    >>Isso pode ser concluído DENTRO e FORA da Caverna Ululante
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
    .goto The Barrens,48.184,32.781,15 >>Suba a montanha íngreme acima da Caverna Ululante. Siga a seta
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
    .hs >>Use a Pedra de Regresso para Astranaar
    >>|cRXP_BUY_Compre comida/água se necessário|r << !Warrior !Rogue
	>>|cRXP_BUY_Compre comida se necessário|r << Warrior/Rogue
    .zoneskip Ashenvale
    .cooldown item,6948,>2,1
    .bindlocation 415,1
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1025 >>Entregue Uma Defesa Agressiva
    .target Raene Wolfrunner
step
    .goto Ashenvale,36.06,36.59,0
    .goto Ashenvale,37.00,33.77,0
    .goto Ashenvale,35.88,31.90,0
    .goto Ashenvale,38.73,36.32,0
    .goto Ashenvale,39.59,36.30,60,0
    .goto Ashenvale,36.06,36.59,60,0
    .goto Ashenvale,37.00,33.77,60,0
    .goto Ashenvale,35.88,31.90,60,0
    .goto Ashenvale,38.73,36.32,60,0
    .goto Ashenvale,39.595,36.309
    >>Mate |cRXP_ENEMY_Dal Sangarra|r. Saqueie-o para obter seu |cRXP_LOOT_crânio|r
    >>|cRXP_ENEMY_Dal Sangarra|r patrulha a Aldeia Pêlo de Cardo
    .complete 1054,1
    .unitscan Dal Bloodclaw
step << Warlock
    #completewith next
    .goto Ashenvale,31.50,31.50,40 >>Viaje até as Ruínas de Loreth'Aran
step << Warlock
    .goto Ashenvale,31.50,31.50
    >>Saqueie 
    .complete 1738,1
step
    #completewith next
    .goto Ashenvale,40.1,53.1,0
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    >>|cRXP_WARN_Certifique-se de morrer no lado leste do lago de|cRXP_ENEMY_ Murloc|r para que você seja enviado para Astranaar|r
step
    .goto Ashenvale,49.79,67.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Velene Golpestela|r
    .turnin 1017 >>Entregue Mago Invocador
	>>Esta missão irá recompensá-lo com a [Luz de Eluna]
    >>|T134754:0|t[Luz de Eluna] – Concede imunidade a todo dano e feitiços por 10 seg.
    >>Este item é de uso ÚNICO. Use-o em uma emergência
    .target Sentinel Velene Starstrike
step
    #completewith FlyAuber
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
.dungeon !WC
#xprate <1.5
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1054 >>Entregue Contendo a ameaça
    .turnin 1025 >>Entregue Uma Defesa Agressiva
    .target Raene Wolfrunner
step
.dungeon !WC
#xprate >1.49
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1054 >>Entregue Contendo a ameaça
    .target Raene Wolfrunner
step
.dungeon WC
    .goto Ashenvale,36.61,49.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_a Raene Correlobos|r
    .turnin 1054 >>Entregue Contendo a ameaça
    .target Raene Wolfrunner
step
    #completewith AbsentMinded
    .goto Ashenvale,34.41,47.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >>Voe para Costa Negra
    .target Daelyshia
step
#xprate <1.5
    .isQuestComplete 4740
    .goto Darkshore,37.70,43.39
    .target Sentinel Glynda Nal'Shea
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4740 >>Entregue PROCURA-SE: Lodofundo!
step
.dungeon BFD
    .isQuestComplete 1275
    .goto Darkshore,38.327,43.039
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gershala Umbrurmúrio|r
    .turnin 1275 >>Entregue Investigando a Corrupção
    .target Gershala Nightwhisper
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
    .goto 1439,33.213,39.883
    .zone Teldrassil >>Pegue o barco para Teldrassil
    .zoneskip Darnassus
step
    #optional
    #completewith next
    .isOnQuest 741
    .goto Teldrassil,55.889,89.456
    .zone Darnassus >>Entre no portal roxo para Darnassus
step
    .isOnQuest 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .turnin 741 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
step
    .isQuestTurnedIn 741
    .goto Teldrassil,23.70,64.51
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
	.target Chief Archaeologist Greywhisker
    .accept 942 >>Aceite O Prospector Distraído
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .goto Darnassus,57.56,46.72
    .train 227 >>Treine Cajados
    .target Ilyenia Moonfire
    .zoneskip Darnassus,1
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guarda Argênteo Manados|r no andar de cima
    .turnin 1199 >>Entregue A Queda do Crepúsculo
    .goto Darnassus,55.239,23.996 -- Argent Guard Manados
    .target Argent Guard Manados
    .isQuestComplete 1199
step
.dungeon BFD
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vigilalva Selgorm|r no andar de cima
    .turnin 1200 >>Entregue Vilania nas Profundezas Negras
    .goto Darnassus,56.167,24.395 -- Dawnwatcher Selgorm
    .target Dawnwatcher Selgorm
    .isQuestComplete 1200
step
    #optional
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darnassus,1
step
    .goto Teldrassil,58.39,94.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >>Aprenda a rota de voo da Vila de Rut'theran
    .fly Auberdine >>Voe para Auberdine
    .target Vesprystus
    .zoneskip Teldrassil,1
step
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para o Porto de Menethil
--
step
#xprate >1.49
.dungeon SFK
    #completewith BTcheck
    +Comece a procurar um grupo para Bastilha da Presa Negra. Em breve você irá para a Floresta de Pinhaprata para fazer Bastilha da Presa Negra
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devin Tremulaurora|r
    .vendor >>|cRXP_BUY_Compre o máximo de|r [Poções de Cura] |cRXP_BUY_que estiverem disponíveis|r
    >>|cRXP_WARN_Este é um item de suprimento limitado. Pule esta etapa se o|cRXP_FRIENDLY_ Devin Tremulaurora|r não tiver nenhuma|r
    .target Dewin Shimmerdawn
    .zoneskip Wetlands,1
step << Draenei/NightElf
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
    .zoneskip Wetlands,1
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .accept 288 >>Aceite A Terceira Frota
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    .home >>Defina sua Pedra de Regresso no Porto de Menethil
    .target Innkeeper Helbrek
    .bindlocation 2104
step
#xprate >1.49
    .goto Wetlands,10.69,60.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Inféretro|r
    >>|cRXP_BUY_Compre um|r [Jarra de Hidromel Enânico]
    .complete 288,1 -- Flagon of Dwarven Honeymead (1)
    .target Innkeeper Helbrek
step
#xprate >1.49
    .isQuestComplete 942
    #completewith next
    .goto Wetlands,10.368,61.016,8 >>Suba as escadas em direção ao |cRXP_FRIENDLY_Arqueólogo Pançacheia|r
step
#xprate >1.49
    .isQuestComplete 942
    .goto Wetlands,10.843,60.435
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arqueólogo Pançacheia|r no andar de cima
    .target Archaeologist Flagongut
    .turnin 942 >>Entregue The Absent Minded Prospector
step
#xprate >1.49
    .goto Wetlands,10.89,59.66
    .target First Mate Fitzsimmons
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Primeiro Oficial Simonez|r
    .turnin 288 >>Entregue A Terceira Frota
step
#xprate >1.49
    #label BTcheck
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
#xprate >1.49
.dungeon SFK
    #completewith next
    .goto Wetlands,30.8,31.0,0
    .goto Wetlands,37.8,29.6,0
    .goto Wetlands,43.0,33.2,0
    .zone Arathi Highlands >>Faça grind em |cRXP_ENEMY_Gnolls Esfolamusgo|r enquanto procura um grupo para Bastilha da Presa Negra
step
#xprate >1.49
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
#xprate >1.49
.dungeon SFK
    .goto Hillsbrad Foothills,14.77,46.72,0
    .goto Silverpine Forest,44.96,67.92,0
    .goto Hillsbrad Foothills,14.77,46.72,100,0
    .goto Silverpine Forest,47.19,69.78,100,0
    .goto Silverpine Forest,44.712,67.769
    .subzone 209,2 >>Entre em Bastilha da Presa Negra
step
#xprate >1.49
.dungeon SFK
    +Não há missões para Bastilha da Presa Negra
    >>Limpe a Bastilha da Presa Negra. Saia quando terminar
    .zoneskip 209,1
step
#xprate >1.49
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
#xprate >1.49
    .goto Wetlands,9.490,59.693
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sula Brondir|r
    .fly Stormwind >>Voe para Ventobravo
    .target Shellei Brondir
    .zoneskip Stormwind City
    .zoneskip Redridge Mountains
    .zoneskip Duskwood
]])
