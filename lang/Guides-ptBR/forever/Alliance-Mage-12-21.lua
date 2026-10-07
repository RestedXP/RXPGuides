if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 12-18 Costa Negra Mago AdE
#version 1
#group Guia Forever (A)
#subgroup Guia Speedrun de Mago
#defaultfor Alliance Mage
#next 18-21 Redridge Mago AdE

step
    #completewith next
    .goto 1439/1,533.23,6399.77
    .vendor >>Você pode comprar comida de nível 5 extremamente barata de Laird (vendedor de peixe)
step
    >>Suba até o andar superior
    .goto 1439/1,519.48,6405.89
.target Wizbang Cranktoggle
>>Fale com |cRXP_FRIENDLY_Xafetim Manigiro|r
    .accept 983 >>Aceite Caixazorra 827
step
    >>Salte para o primeiro andar
    .goto 1439/1,515.55,6406.32
    .home >>Defina sua Pedra de Regresso para Auberdine
step
    .goto 1439/1,497.21,6427.72
.target Barithras Moonshade
>>Fale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cogumelos da Caverna
step
    .goto 1439/1,473.63,6439.07
.target Sentinel Glynda Nal'Shea
>>Fale com a |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
step
    .goto 1439/1,397.65,6437.76
.target Tharnariun Treetender
>>Fale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2118 >>Aceite Terras Pestilentas
step
    .goto 1439/1,362.93,6434.27
.target Terenthis
>>Fale com |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Aceite Uma grande ameaça?
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
step
    .goto 1439/1,561.40,6343.01
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
step
    #completewith Bear
     >>Mate os Crawlers ao longo da costa
    .complete 983,1 --Crawler Leg (6)
step
    .goto 1439/1,558.78,6111.57
     >>Saque a criatura marinha
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >>Encontre um Ursocardo Raivoso. Agro um e use Esperança de Tharnariun em sua mochila (orbe púrpura)
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,386.51,5988.430
     >>Vá em direção ao acampamento furbolg nas proximidades
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >>Encontre um Ursocardo Raivoso. Agro um e use Esperança de Tharnariun em sua mochila (orbe púrpura)
    .goto 1439/1,421.88,5804.16
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto 1439/1,543.71,5962.67,150,0
    .goto 1439/1,577.12,6393.66
    >>Mate os Crawlers ao longo da costa
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >>Guarde Carne de Strider x5 para depois
    .collect 5469,5,2178,1
step
    .goto 1439/1,540.44,6313.31
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411
step
    .goto 1439/1,543.06,6342.57
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entregue Deixa a água me levar
.target Gwennyth Bly'Leggonde
    .accept 4681 >>Aceite Deixa a água me levar
step
    .goto 1439/1,535.85,6409.38,40,0
    >>Corra para o cais
    .goto 1439/1,600.70,6425.100
.target Cerellean Whiteclaw
>>Fale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >>Aceite Por Amor Eterno
step
    #sticky
    #completewith Thundris
     >>Mate os ceifadores de Darkshore no mar
    .complete 1001,1 --Thresher Eye (3)
step
    #completewith next
    .goto 1439/1,734.32,6479.68,60 >>Corra até o cais, depois pule na água na interseção
step
    .goto 1439/1,854.84,6310.26
    >>Clique na cabeça da tartaruga marinha embaixo da água
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,543.06,6342.57
    >>Mate os Threshers a caminho de volta para a costa
.target Gwennyth Bly'Leggonde
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >>Entregue Deixa a água me levar
step
    .goto 1439/1,397.65,6437.76
>>Fale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >>Entregue Terras Pestilentas
.target Tharnariun Treetender
    .accept 2138 >>Aceite Purificação dos infectados
step
    .goto 1439/1,362.93,6434.27
>>Fale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
.target Terenthis
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
step
    >>Mate os Furbolgs
    .goto 1439/1,332.80,5883.20
    .goto 1439/1,338.70,5985.81,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto 1439/1,362.93,6434.71
>>Fale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Entregue Uma grande ameaça?
.target Terenthis
    .accept 986 >>Aceite Um Mestre Perdido
step
    >>Suba
    .goto 1439/1,384.55,6431.65
.target Sentinel Elissa Starbreeze
>>Fale com a |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r
    .accept 965 >>Aceite The Torre of Althalaxx
step
    .goto 1439/1,445.46,6536.01
.target Gorbold Steelhand
>>Fale com |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
step
    #label Thundris
    .goto 1439/1,492.62,6580.99
>>Fale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4761 >>Entregue Trovejius Tecevento
.target Thundris Windweaver
    .accept 4762 >>Aceite Rio Fontescarpa
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros
step
     #label Threshers
     #sticky
     >>Nade ao longo da costa, matando os Threshers
    .complete 1001,1 --Thresher Eye (3)
step
    .goto 1439/1,391.75,7052.59,40,0
    .goto 1439/1,437.60,7076.17
     >>Entre no primeiro navio pelo buraco no casco, depois vá para a popa do andar mais baixo
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto 1439/1,302.02,7124.2,40,0
    .goto 1439/1,345.90,7134.68
     >>Entre no segundo navio pelo buraco no casco, depois vá para a popa do andar mais baixo
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto 1439/1,193.29,7082.72
    .turnin 1001 >>Entregue Buzzbox 411
    .accept 1002 >>Aceite NO TRANSLATION FOUND TO THIS ELEMENT
step
    .goto 1439/1,194.60,6959.14
    .accept 4723 >>Aceite Criatura Marinha Encalhada
step
    .goto 1448/1,48.92,6748.85
>>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 954 >>Entregue Bashal'Aran
.target Asterion
    .accept 955 >>Aceite Bashal'Aran
step
    .goto 1448/1,-33.31,6660.30
     >>Mate os Grellkins. Saque-os pelos Brincos
    .complete 955,1 --Grell Earring (8)
step
    .goto 1448/1,48.92,6748.85
>>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
.target Asterion
    .accept 956 >>Aceite Bashal'Aran
step
    .goto 1448/1,-60.33,6653.40
     >>Mate os Satyrs. Saque-os pelo Selo
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto 1448/1,48.92,6748.85
>>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
.target Asterion
    .accept 957 >>Aceite Bashal'Aran
step
    #sticky
    #completewith ReadAndy
     >>Mate qualquer tipo de Espreitaluna. Saque-os pelos dentes
    .complete 1002,1 --Moonstalker Fang (6)
--N don't think unitscan is needed
step
    #sticky
    #completewith ReadAndy
    >>Mate os Ursos Cardo Raiva que você vir. Tenha pelo menos 50% de mana e ataque-os com feitiços antes que apliquem Raiva (debuff)
    .complete 2138,1 --Rabid Thistle Bear (20)
step
    .goto 1439/1,-383.77,7222.89
    >>Usar o Tubo de Amostragem Vazio na mochila
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +Guarde os Ovos Pequenos que pegar para subir culinária depois. Guarde TODAS as penas leves que conseguir para depois
step
    .goto 1439/1,-144.04,6209.82
     >>Corra até O Cristal Vermelho nas montanhas
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Fale com a |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 953 >>Aceite A queda de Ameth’Aran
step
    #sticky
    #label anaya
    .goto 1439/1,171.67,5693.25,0
     >>Mate Anaya Correalba. Ela patrulha no meio de Ameth'Aran
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto 1439/1,147.44,5630.370,0
     >>Mate fantasmas. Saque-os pelas relíquias
    .complete 958,1 --Highborne Relic (7)
step
    .goto 1448/1,147.82,5576.23
     >>Clique na tabuleta no chão
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1448/1,166.22,5634.12
     >>Clique na tocha verde no gazebo
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1448/1,105.84,5771.35
     >>Clique na tabuleta no chão
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto 1439/1,302.02,5726.433
.target Sentinel Tysha Moonblade
>>Fale com a |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
step
    .goto 1439/1,398.30,5677.53
    >>Termine de matar os Ursos Cardo Raiva e obter a Carne de Andarilha
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>Saque a Tartaruga Marinha
    .goto 1439/1,509.00,5620.76
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
step
    >>Saque a Tartaruga Marinha
    .goto 1439/1,582.36,5242.17
    .accept 4728 >>Aceite Criatura Marinha Encalhada
step
    .hs >>Use a Pedra de Regresso para Auberdine
step
    .goto 1439/1,397.65,6437.33
>>Fale com o |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
.target Tharnariun Treetender
    .accept 2139 >>Aceite A Esperança de Tharnariun
step
    .goto 1439/1,445.46,6535.58
.target Gorbold Steelhand
>>Fale com o |cRXP_FRIENDLY_Gorbold Manácero|r
    .turnin 982 >>Entregue Oceano Profundo, Vasto Mar
    .vendor >>Compre alguns Temperos Suaves de Gorbold até ter o suficiente para cozinhar todos os ovos
step
    .goto 1439/1,472.97,6557.85
    >>Tenha 10 pontos em culinária ou você não poderá aceitar/entregar a missão
.target Alanndarian Nightsong
>>Fale com a |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
step
    .goto 1439/1,491.97,6582.303
>>Fale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .turnin 4762 >>Entregue Rio Fontescarpa
.target Thundris Windweaver
    .accept 4763 >>Aceite A Corrupção de Bosque Negro
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Fale com a |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite The Absent Minded Prospector
step
    .goto 1439/1,471.66,6439.95
>>Fale com a |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
.target Sentinel Glynda Nal'Shea
    .accept 4812 >>Aceite Como cascatas
step
    .goto 1439/1,467.08,6409.38
     >>Encha o Tubo de Água Vazio no Poço Lunar
    .complete 4812,1
     >>Encha a Tigela Vazia no Poço Lunar
    .collect 12347,1,4763,1
step
    #completewith next
    .goto 1439/1,529.30,6415.93
    .vendor >>Compre bebida nível 15 de Taldan
step
    >>Volte para o cais
    .goto 1448/1,600.92,6424.93
.target Cerellean Whiteclaw
>>Fale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .turnin 963 >>Entregue Amor Eterno
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Fale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
step
    .goto 1439/1,543.06,6342.57
.target Gwennyth Bly'Leggonde
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4723 >>Entregue Beached Sea Criatura - Missão
    .turnin 4728 >>Entregue Beached Sea Criatura - Missão << Gnome
step
    .goto 1439/1,-157.79,6206.770
     >>Clique no cristal vermelho
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
step
    #sticky
    #label MoonstalkersF
     >>Mate qualquer tipo de Espreitaluna. Saque-os pelos dentes
    .complete 1002,1 --Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    .goto 1439/1,47.88,6748.67
.target Asterion
>>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
step
    .goto 1439/1,-376.56,6805.87
    >>Equipe sua varinha nova
    >>Saque a Amostra de Grão Bosquenero do Barril, depois corra para sudeste em direção à Matriarca do Covil (não lute contra os inimigos)
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto 1439/1,-503.63,6732.95,45,0
    >>Mate Matriarca do Covil. Tenha cuidado pois seus filhotes podem derrubá-lo por 2 segundos
    >>Farme até o nível 16 e tente novamente se estiver com dificuldade
    .goto 1439/1,-430.27,6662.65
    .complete 2139,1 --Den Mother (1)
step
    >>Saque a Amostra de Castanha Bosquenero do Barril
    .goto 1439/1,-451.23,6870.06
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>Saque a Amostra de Fruta Bosquenero do Barril. Um inimigo aparecerá na sua frente e entre as cabanas do oeste - você pode ter que correr
    .goto 1439/1,-520.01,6873.99
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>Usar a Tigela de Purificação Cheia na mochila perto da fogueira. Isso tornará todos os Furbolgs próximos aliados
    >>Mate o Satyr que aparece entre os acampamentos e depois corre ao redor do fogo. Comece na distância máxima pois ele pode ser difícil. Saque o cesto que cai no chão depois de matá-lo
    .goto 1439/1,-489.22,6879.67
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto 1439/1,-659.52,6901.50,35 >>Vá para a caverna acima da cachoeira
step
    .goto 1439/1,-704.06,6809.80
     >>Fique na parte superior da caverna. Se não houver um Chapéu da Morte no final do lado superior, desça e pegue um embaixo
     >>O primeiro azul na entrada da caverna deve ter reaparecido quando você coletar o Chapéu da Morte
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto 1439/1,-658.87,7246.47
>>Fale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >>Entregue A Torre de Althalaxx
.target Balthule Shadowstrike
    .accept 966 >>Aceite The Torre of Althalaxx
step
    >>Mate Fanáticos do Filo Escuro. Saqueie-os por Pergaminhos
    .goto 1439/1,-684.41,7161.32
    .complete 966,1 --Worn Parchment (4)
step
    .goto 1439/1,-658.87,7246.47
>>Fale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >>Entregue A Torre de Althalaxx
.target Balthule Shadowstrike
    .accept 967 >>Aceite The Torre of Althalaxx
step
    #requires MoonstalkersF
    .goto 1439/1,-537.04,7540.35
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step
    #sticky
    #completewith Turtles
     >>Mate Rastejantes do Recife ao longo da costa, não se esforce para completar esta missão - Não mate inimigos 4 níveis ou mais acima
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto 1439/1,-423.72,7277.04,25,0
    .goto 1439/1,-417.83,7262.19
    .turnin 1002 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
step
    #softcore
    #label Turtles
    >>Deixe alguns dos Murlocs próximos vivos, você vai morrer para eles depois de aceitar esta missão
    .goto 1439/1,47.88,7433.800
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
step
    #hardcore
    #label Turtles
    .goto 1439/1,47.88,7433.800
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
step
    #softcore
    .deathskip >>Morra e reapareça em Auberdine
step
    .goto 1439/1,491.97,6582.303
    >>Equipe seu novo cajado
.target Thundris Windweaver
>>Fale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4763 >>Entregue O Bosque Negro Corrompido
step
    .goto 1439/1,397.65,6437.33
.target Tharnariun Treetender
>>Fale com o |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2139 >>Entregue A Esperança de Tharnariun
step
    .goto 1439/1,471.66,6439.95
.target Sentinel Glynda Nal'Shea
>>Fale com a |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4813 >>Entregue Fragmentos incrustados
step
    .goto 1439/1,497.21,6427.72
>>Fale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .turnin 947 >>Entregue Cogumelos da Caverna
.target Barithras Moonshade
    .accept 948 >>Aceite Onu
step
    .goto 1439/1,503.10,6401.96
     >>Clique no cartaz de procurado fora da estalagem
    .accept 4740 >>Aceite WANTED: Lodofundo!
step
    .isQuestComplete 1138
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Fale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
step
    #label end
    #requires bowl
    .goto 1448/1,543.42,6342.52
.target Gwennyth Bly'Leggonde
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >>Entregue Beached Sea Criatura - Missão
    .turnin 4725 >>Entregue Tartaruga Marinha Encalhada
step
     #completewith Murkdeep
     >>Mate qualquer Urso Cardo Ansioso Macho que encontrar e Matriarcas se estiver confortável. Saqueie-os por Peles. Eles compartilham locais de aparição com Ursos Cardo Ansosos Maduros.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
     #completewith Murkdeep
    .goto 1439/1,413.37,4818.17,0
     >>Mate Ursos Cardo Ansosos Maduros. Saqueie-os por Couro Cabeludo
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,89.14,5002.00
>>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 948 >>Entregue Onu
.target Onu
    .accept 944 >>Aceite A Alameda do Mestre
step
    #completewith next
    .goto 1439/1,79.97,4986.72
    .vendor >>Compre água de nível 15 de Tiyani
step << Human
    >>Saque os restos
    .goto 1439/1,585.63,5237.370
    .accept 4728 >>Aceite Criatura Marinha Encalhada
step
    #label Murkdeep
    .goto 1439/1,549.61,4990.65
    >>Limpe o acampamento Murloc, fique longe da fogueira no centro
    >>Quando limpar tudo, mova-se para o centro do acampamento para invocar Lodofundo
    >>Se você tiver sorte, Lodofundo pode estar já acordado em cerca de 30 metros da costa para o oeste (se alguém morreu nele antes).
    .complete 4740,1 --Murkdeep (1)
step
     >>Mate caranguejos ao longo da costa para Pedaços Finos de Caranguejo
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>Saque os restos
    .goto 1439/1,799.82,4808.12
    .accept 4730 >>Aceite Criatura Marinha Encalhada
step
    >>Saque os restos. Tenha cuidado enquanto os Oracles atacam com raios de 90 de dano, e podem usar onda de cura para curar totalmente quando estão em <55% de vida. A cabeça da tartaruga aqui tem LoS
    >>Sempre deixe uma rota de escape para si. Os Tidehunters não são tão ruins, mas esteja atento a suas habilidades de veneno de baixo dano
    >>Tente poupar suas poções de cura para depois, especialmente as grandes
    .goto 1439/1,865.32,4678.432
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
    >>A casca da tartaruga na ilha tem LoS
    .goto 1439/1,896.76,4597.21
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
    >>Saque-o no pescoço, cuidado com os 2 inimigos escondidos pelo terreno (você deve apenas precisar matar 3 inimigos para saquear este)
    .goto 1439/1,892.83,4517.30
    .accept 4733 >>Aceite Criatura Marinha Encalhada
step
    .goto 1439/1,602.01,4678.87
.target Prospector Remtravel
>>Fale com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    .turnin 729 >>Entregue The Absent Minded Prospector
step
    .goto 1439/1,602.01,4678.87
     >>Esta missão é MUITO difícil. Faça-a com outro jogador se puder.
     >>Inicie a missão de escolta
.target Prospector Remtravel
>>Fale com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    .accept 731,1 >>Aceite The Absent Minded Prospector
step
     >>Escolte o Prospector Trilheiro
     >>Deixe Remtravel atrair tudo (os inimigos precisam acertá-lo para gerar agro nele) e depois dispare projéteis de fogo no inimigo
     >>Remtravel é realmente frágil, então tente tirar o agro dele dos outros inimigos
     >>Quando os Troggs aparecem, polimorfize o que ele não está atacando, depois ataque o outro quando acertá-lo. Quando o mago que aparece perto do final dispara um projétil de fogo no prospector, polimorfize-o primeiro
     >>Se você não conseguir completar esta missão na primeira tentativa, apenas abandone-a - é MUITO dependente de habilidade e de sorte
     .complete 731,1 --Escort Prospector Remtravel (1)
step
     #completewith Glaive
     >>Mate qualquer Urso Cardo Ansioso Macho que encontrar e Matriarcas se estiver confortável. Saqueie-os por Peles. Eles compartilham locais de aparição com Ursos Cardo Ansosos Maduros.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    >>Mate os Plainstriders. Certifique-se de que você tem pelo menos 1 pena leve para mais tarde
    .collect 17056,1 --Light Feather (1)
step
     #completewith next
    .goto 1439/1,413.37,4818.17,0
     >>Mate os Ursos Cardo Grisalhos. Saqueie-os para obter Couro Cabeludo.
    .complete 1003,1 --Grizzled Scalp (4)
step
    #sticky
    #completewith Therylune
    >>Fique atento a The Powers Below. Tem baixa taxa de queda e é uma missão gratuita.
    .collect 5352,1,968 --Book: The Powers Below (1)
    .accept 968 >>Aceite The Powers Below
step
    #label Glaive
    .goto 1439/1,433.02,4529.09
     >>Entre em The Master's Glaive e elimine os inimigos em torno do altar no centro
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto 1439/1,410.09,4519.49
.target Therylune
>>Fale com |cRXP_FRIENDLY_Therylune|r
    .accept 945 >>Aceite A Fuga de Therylune
step
     >>Largue o caldeirão de adivinhação do seu inventário no chão
    .turnin 944 >>Entregue The Master's Glaive
    .accept 949 >>Aceite O Acampamento Crepuscular
step
    .goto 1439/1,416.64,4576.69
     >>Clique no livro no topo do pedestal. Cuidado para que Therylune não corra se você já começou
    .turnin 949 >>Entregue O Acampamento Crepuscular
    .accept 950 >>Aceite Devolver a Onu
step
    #label Therylune
    #requires TheryluneE
    >>Conclua a missão de escolta
    >>Quando você matar o último inimigo saindo da lâmina, acenda uma fogueira e cozinhe toda a carne/ovos que você ainda tem para aumentar sua habilidade de culinária
    >>Você precisa de 50 de habilidade de culinária para uma missão gratuita em Darkshire
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
     #sticky
    #label MoonstalkerP
    .goto 1439/1,493.28,4321.68,100,0
    .goto 1439/1,389.79,4836.94,100,0
    .goto 1439/1,71.46,4749.17,100,0
    .goto 1439/1,389.79,4836.94,0
     >>Mate qualquer Espreitaluna Patriarca que encontrar e as Matriarcas se estiver confortável. Saqueie-os para Peles. Eles compartilham áreas de spawn com os Ursos Cardo Grisalhos.
     >>Se você está tendo extremamente azar com spawns e taxas de queda, pode pular esta missão
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto 1439/1,413.37,4818.170
     >>Mate os Ursos Cardo Grisalhos por toda a área sul de Costa Negra. Saqueie-os para obter Couro Cabeludo.
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto 1439/1,229.97,4815.55
    .turnin 1003 >>Entregue Buzzbox 525
step
    #requires MoonstalkerP
    .goto 1439/1,89.14,5002.00
.target Onu
>>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Devolver a Onu
step
    #completewith next
    .goto 1439/1,79.97,4987.16
    .vendor >>Compre comida/bebida de Tiyani se necessário
step
    >>Aceite a missão de escolta Kerlonian. Se ele não estiver lá, pule este passo
    .goto 1439/1,33.47,4996.33
.target Kerlonian Evershade
>>Fale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r
    .accept 5321 >>Aceite A Adormecida Despertou
step
    .isOnQuest 5321
    >>Saque o pequeno baú cinzento ao lado de Kerlonian
    .goto 1439/1,33.47,4996.33
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto 1440/1,152.23,3260.72
    >>Corra para o sul até Bosque do Ocaso. Vincule a Corneta do Despertar à sua barra de ações e use-a em Kerlonian quando ele começar a andar no lugar e adormecer.
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto 1440/1,128.01,3305.31
.target Liladris Moonriver
>>Fale com |cRXP_FRIENDLY_Liladris Luneflúvia|r
    .turnin 5321 >>Entregue A Adormecida Despertou
step
    .goto 1440/1,189.71,3185.390
.target Delgren the Purifier
>>Fale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 967 >>Entregue A Torre de Althalaxx
step
    #softcore
    >>Siga pela estrada para o sul. Dirija-se ao Santuário de Aessina.
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Fale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A Fuga de Therylune
step
    #hardcore
    >>Siga pela estrada para o sul. Dirija-se ao Santuário de Aessina.
    .goto 1440/1,394.43,2677.63
.target Therysil
>>Fale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A Fuga de Therylune
step
    .hs >>Use a Pedra de Regresso para Auberdine
step
    .goto 1439/1,577.77,6371.39
.target Gubber Blump
>>Fale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
step
    .goto 1439/1,543.06,6342.130
.target Gwennyth Bly'Leggonde
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Entregue Beached Sea Criatura - Missão
    .turnin 4731 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4732 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4733 >>Entregue Beached Sea Criatura - Missão
step
    .goto 1439/1,470.35,6439.07
.target Sentinel Glynda Nal'Shea
>>Fale com a |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4740 >>Entregue WANTED: Lodofundo!
step
    .isQuestComplete 986
    >>Mantenha a próxima parte da missão no seu registro de missões para o manto +3 de estamina. Abandone a missão quando não precisar mais do manto
    .goto 1439/1,362.93,6434.71
>>Fale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Entregue Um Mestre Perdido
.target Terenthis
    .accept 993 >>Aceite Um Mestre Perdido
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Fale com a |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .isQuestComplete 731
step
    .goto 1439/1,489.35,6506.32
.target Archaeologist Hollee
>>Fale com a |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 741 >>Aceite The Absent Minded Prospector
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>Corra de volta para o cais. Espere o barco para Darnassus chegar
    .goto 1439/1,555.50,6418.99,30,0
    .goto 1439/1,769.03,6579.24,40
step
    .isOnQuest 741
    .zone Teldrassil >>Pegue o barco para Darnassus
step
    .isOnQuest 741
    .goto 1438/1,965.80,8781.63,30 >>Atravesse o portal roxo
step
    .isOnQuest 741
    .goto 1457/1,2607.74,9642.04
>>Fale com |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
    .turnin 741 >>Entregue The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
    .accept 942 >>Aceite The Absent Minded Prospector
step
    .goto 1438/1,841.05,8641.122
    .fp Teldrassil >>Aprenda a rota de voo para Teldrassil
    .fly Auberdine >>Voe para Auberdine
step
    .goto 1439/1,818.16,6422.92,50,0
    .zone Wetlands >>Pegue o barco para Menethil
step
    #completewith next
    .money <0.08
    .goto 1437/0,-819.67,-3691.42,15,0
    .goto 1437/0,-807.26,-3716.22,15,0
    .goto 1437/0,-827.94,-3724.49,15,0
    .goto 1437,10.760,56.721
    >>Se você tem 8s, verifique o Tubo de Bronze com Nélio Allen e compre se estiver disponível. Caso contrário, pule este passo.
    .collect 4371,1,175,1
step
    .goto 1437/0,-782.03,-3793.12
    .fly Ironforge >>Voe para Altaforja
step << skip --logout skip
    #completewith next
    .goto 1455/0,-1158.16,-4816.32,0
    +Execute um skip de logout pulando no topo de uma das cabeças do Grifo, depois desconectando e reconectando
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >>https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLIQUE AQUI
step
    .zone Stormwind City >>Pegue o bonde para Ventobravo.
step
    #completewith FlyAndy
    .goto 1453/0,638.8,-8341.95
    .vendor >>Compre um Tubo de Bronze se você não tiver um
    >>Este é um item de suprimento limitado, pule este passo se o NPC não tiver
    .bronzetube
step << Human
    #label FlyAndy
    .goto 1429/0,409.13,-9100.58
    .zone Elwynn Forest >>Vá para Elwynn Forest
step << Gnome
    .goto 1429/0,622.93,-8830.700
    .zone Stormwind City >>Vá para Ventobravo
step << Gnome
    #label FlyAndy
    >>Corra para Ventobravo e obtenha a Rota de Voo
    .goto 1453/0,606.4,-8812.0,50,0
    .goto 1453/0,490.12,-8835.76
    .fp Stormwind City >>Aprenda a rota de voo para a Cidade de Ventobravo
step << Gnome
    .goto 1453/0,493.08,-8867.22,12,0
    .goto 1453/0,507.6,-8885.59,18 >>Salte para o pequeno nicho correndo contra a parede branca. Cuidado. Corra ao longo dele em direção à saída de Ventobravo
step
    >>Corra para o andar superior da Estalagem de Goldshire
    .goto 1429/0,44.00,-9459.11,15,0
    .goto 1429/0,14.84,-9477.86,15,0
    .goto 1429/0,34.28,-9471.61
    .trainer >>Treine suas magias de classe
step
    .goto 1429/0,-1637.62,-9642.89,125,0
    .zone Redridge Mountains >>Corra totalmente para o leste até Montanhas Cristarrubra. Organize seus atalhos de teclado no caminho, certificando-se de que você tem seus feitiços confortavelmente em suas barras
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 18-21 Redridge Mago AdE
#version 1
#group Guia Forever (A)
#subgroup Guia Speedrun de Mago
#defaultfor Alliance Mage
#next 21-22 Floresta do Crepúsculo Mago AdE

step
    #sticky
    #completewith Gnolls
    +Comece a fazer AdE nos inimigos de missão em grupos de 3 ou mais que você encontrar.
    >>Mantenha este tutorial aberto em outra aba para a Seção AdE de Redridge se necessário:
    .link https://youtu.be/SxMc2GoP33c?t=56 >>https://youtu.be/SxMc2GoP33c?t=56 >> CLIQUE AQUI
step
    >>Fale com o Capitão da Guarda Florestan. Ele patrulha perto das encruzilhadas um pouco
    .goto 1429/0,-1902.44,-9609.56
.target Guard Parker
>>Fale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
step
    #sticky
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
>>Fale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Gnolls Invasores
.target Deputy Feldon
    .accept 246 >>Aceite Avaliando a Ameaça
step
    .goto 1433/0,-2234.89,-9435.060
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
step
    #requires Gnolls
    .goto 1433/0,-2298.28,-9283.90
.target Marshal Marris
>>Fale com o |cRXP_FRIENDLY_Oficial Marris|r
    .accept 20 >>Aceite A Ameaça de Rocha Negra
step
    .goto 1433/0,-2268.54,-9279.27
.target Foreman Oslow
>>Fale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .accept 125 >>Aceite As Ferramentas Perdidas
step
    .goto 1433/0,-2242.49,-9259.00
.target Verner Osgood
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
    .accept 118 >>Aceite O Preço dos Sapatos
step
    >>Entre no Town Hall
    .goto 1433/0,-2216.00,-9215.85
.target Bailiff Conacher
>>Fale com o |cRXP_FRIENDLY_Meirinho Conacher|r
    .accept 91 >>Aceite Solomon's Law
step
    .goto 1433/0,-2221.87,-9218.60
    >>Entre no prédio
.target Magistrate Solomon
>>Fale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .accept 120 >>Aceite Mensageiro para Ventobravo
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Fale com o |cRXP_FRIENDLY_Mestre de Doca Baren|r
    .accept 127 >>Aceite Vendendo Peixe
step
    .goto 1433/0,-2151.53,-9247.12
    .accept 180 >>Aceite Wanted: General Mordente
step
    >>Entre na Estalagem
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Fale com |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Aceite Um Almoço Grátis
step
    .goto 1433/0,-2157.18,-9223.96
    .home >>Defina seu Lar em Lakeshire
step
    .goto 1433/0,-2207.32,-9351.66
.target Shawn
>>Fale com |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Aceite Nida's Colar
step
    >>Procure o Colar de Nida embaixo da água. Está em uma mancha marrom de terra
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto 1433/0,-1906.66,-9478.500,0
    +Use AdE nos Gnolls nos acampamentos
step
    .goto 1433/0,-1902.54,-9609.83
>>Fale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .turnin 129 >>Entregue Um Almoço Grátis
.target Guard Parker
    .accept 130 >>Aceite Visite a Herbalista
step
    .goto 1433/0,-2234.89,-9435.21
    .fly Stormwind >>Voe para Ventobravo
step
    >>Entre em Ventobravo. Vá para o treinador de armas
   .goto 1453/0,612.99,-8796.14
   .trainer >>Treine Espadas de uma mão e Adagas
step
    #softcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    +Vá para o Leilão. Compre um Tubo de Bronze se for acessível
    >>Se não há nenhum aqui ou eles são muito caros, você também pode comprar um de Billibub no Distrito Enânico
    >>Se você não conseguir encontrar um, pule este passo
    .bronzetube
step
    #hardcore
    .goto 1453/0,660.17,-8814.51,30,0
    .goto 1453/0,638.26,-8342.31
    .vendor >>Verifique Billibub no Distrito Enânico por um Tubo de Bronze. Compre um se estiver disponível
    .bronzetube
step
    .goto 1453/0,520.77,-8954.16
>>Fale com o |cRXP_FRIENDLY_General Marcus Jonas|r
    .turnin 120 >>Entregue Messenger to Objetos de TBC
.target General Marcus Jonathan
    .accept 121 >>Aceite Mensageiro para Ventobravo
step
    >>Corra para Goldshire
    .goto 1429/0,87.73,-9456.79
>>Fale com o |cRXP_FRIENDLY_Ferreiro Argus|r
    .turnin 118 >>Entregue O Preço dos Sapatos
.target Smith Argus
    .accept 119 >>Aceite Retornar a Verner
step
    >>Corra para Colina do Sentinela
    .goto 1436/0,1045.12,-10508.80
.target Gryan Stoutmantle
>>Fale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .accept 65 >>Aceitar A Irmandade Défias
step
    #completewith next
    #label hsLakeshire
    .hs Lakeshire >>Lakeshire >> Use sua Pedra de Retorno para ir a Lakeshire se estiver disponível
step
    #completewith hsLakeshire
    #label WFFP
    .goto 1436/0,1037.42,-10628.50
    .fp Westfall >>Aprenda a rota de voo para Cerro Oeste << Gnome
    .fly Redridge >>Voe para Redridge
step
    #requires WFFP
    .goto 1433/0,-2243.14,-9259.43
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
    .turnin 119 >>Entregue Devolver to Verner
.target Verner Osgood
    .accept 122 >>Aceite Underbelly Escamoso
    .accept 124 >>Aceite A Baying of Gnolls
step
    >>Entre na Guarida
    .goto 1433/0,-2220.56,-9218.74
>>Fale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .turnin 121 >>Entregue Messenger to Objetos de TBC
.target Magistrate Solomon
    .accept 143 >>Aceite Mensageiro para Cerro Oeste
.target Bailiff Conacher
>>Fale com o |cRXP_FRIENDLY_Meirinho Conacher|r
    .accept 91 >>Aceite Solomon's Law
step
    >>Entre no andar superior da Estalagem
    .goto 1433/0,-2145.45,-9231.63
>>Fale com |cRXP_FRIENDLY_Wiley, o Negro|r
    .turnin 65 >>Entregue A Irmandade Défias
.target Wiley the Black
    .accept 132 >>Aceitar A Irmandade Défias
step
    .goto 1433/0,-2205.58,-9351.52
.target Hilary
>>Fale com |cRXP_FRIENDLY_Nida|r
    .turnin 3741 >>Entregue Nida's Colar
step
    #era/som
    #completewith Murlocs
    >>Triture os primeiros 3 itens para Gulache de Cristarrubra enquanto faz outras missões. Obtenha também Naco de Carne de Javali suficiente para alcançar 50 em Culinária
    >>Tente focar fortemente nos Goretusks, não se preocupe muito com carne de aranha ainda
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    #completewith Murlocs
    >>Mate Whelps. Saqueie-os por suas escamas
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>AdE os Gnolls na área. Consulte o vídeo de AdE se necessário
    >>Use zonas mortas nos Caçadores durante o pull de AdE para não levar disparos
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .goto 1433/0,-2211.45,-9793.71,50,0
    .goto 1433/0,-2321.94,-9776.63,50,0
    .goto 1433/0,-2513.84,-9604.61,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>AdE os Murlocs na área. Você terá que alvejar um único alvo nos Chamadores de Maré (raio de relâmpago + onda de cura)
    >>Você pode usar AdE nos Atacantes da Costa (Investida) e Comedores de Carne (25 de dano instantâneo com roubo de vida por chance de ataque). Faça pulls criativamente
    >>Guarde 8 Nadadeiras para depois
    .goto 1433/0,-2630.63,-9581.16
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>Obtenha Carne de Condor e escamas de Whelp ao redor desta área. Se estiver aguardando reaparecimentos, vá para leste para obter alguns Machados e depois volte aqui
    .goto 1433/0,-2895.91,-9697.86
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>Obtenha escamas de Whelp ao redor desta área. Se estiver aguardando reaparecimentos, vá para leste para obter alguns Machados e depois volte aqui
    .goto 1433/0,-2895.91,-9697.86
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>AdE Orcs na área. Saque-os pelas suas machadinhas. Tenha cuidado pois os Perseguidores usam Rede e os Renegados dão pancada no escudo
    >>Tente evitar matar os Renegades devido ao seu nível alto. Puxe no máximo 3 de cada vez. AdE aqui é risco muito alto, recompensa média
    >>Não obtenha todos os machados ainda, você tem uma oportunidade melhor para terminar depois
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .goto 1433/0,-3226.75,-9789.51,50,0
    .goto 1433/0,-3210.46,-9637.19,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>Vá para debaixo d'água. Saque a caixa cinzenta
    .goto 1433/0,-2472.16,-9366.72
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>Complete matando os focinhos de Goretusco aqui
    .goto 1433/0,-2267.02,-9596.36
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto 1433/0,-2238.15,-9443.75
.target Deputy Feldon
>>Fale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 246 >>Entregue Assessing the Ameaça
step
    .isQuestComplete 20
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Fale com o |cRXP_FRIENDLY_Oficial Marris|r
    .turnin 20 >>Entregue Blackrock Ameaça
step
    .goto 1433/0,-2268.54,-9279.12
>>Fale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .turnin 125 >>Entregue The Perdida Ferramentas
.target Foreman Oslow
    .accept 89 >>Aceite The Everstill Ponte
step
    .goto 1433/0,-2243.36,-9259.43
.target Verner Osgood
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
    .turnin 122 >>Entregue Underbelly Escamoso
step
    #level 20
    .goto 1433/0,-2172.59,-9261.02
>>Fale com o |cRXP_FRIENDLY_Mestre de Doca Baren|r
    .turnin 127 >>Entregue Venda de Peixes
.target Dockmaster Baren
    .accept 150 >>Aceite Caçadores Murloc
    .turnin 150 >>Entregue Murloc Poachers
step
    .goto 1433/0,-2172.59,-9261.02
.target Dockmaster Baren
>>Fale com o |cRXP_FRIENDLY_Mestre de Doca Baren|r
    .turnin 127 >>Entregue Venda de Peixes
step
    .goto 1433/0,-2045.38,-9245.82
>>Fale com |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Entregue Visite a Herbalista
.target Martie Jainrose
    .accept 131 >>Aceite Entregando Daffodils
    .accept 34 >>Aceite O Penetra
step
    >>Abata Ronquifuça. Leve-a de volta para Guarda Adams todo o caminho até a cidade
    >>Tenha cuidado pois ela causa tremores (80 de dano em AoE instantâneo) e dá investidas (mantenha-a lentificada e sob Nova, se possível)
    >>Certifique-se de que você causa a maioria do dano (51%+)
    >>Esta missão é MUITO difícil
    .goto 1433/0,-1910.79,-9288.97
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto 1433/0,-2045.16,-9245.67
.target Martie Jainrose
>>Fale com |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Entregue O Penetra
step
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2031.70,-9098.71,60,0
    .goto 1433/0,-2313.26,-9149.82,60,0
    .goto 1433/0,-2430.70,-9030.51,60,0
    >>Mate Gnolls. Saqueie-os para obter Piques e Rebites
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>Abata os grupos bem empilhados de Orcs. Saque-os para terminar com os machados
    >>Se ficar sem sorte depois de limpar os grupos próximos, você tem outra oportunidade depois
    .goto 1433/0,-2375.13,-9228.73,50,0
    .goto 1433/0,-2401.83,-9180.95,50,0
    .goto 1433/0,-2449.15,-9161.70,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto 1433/0,-2639.97,-9149.24,150 >>Corra em direção às aranhas
step
    #era/som
    >>Abata Aranhas. Saque-as pela carne
    >>Tenha cuidado pois o veneno delas pode causar algum dano
    >>Tenha cuidado com Palpos (raro), pois ele tem um atordoamento de 8 segundos
    .goto 1433/0,-2813.20,-9230.04
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>Complete matando Orcs pelos machados
    .goto 1433/0,-2911.11,-9195.00
    .complete 20,1 --Blackrock Axe (10)
step
    .goto 1433/0,-2298.06,-9283.90
.target Marshal Marris
>>Fale com o |cRXP_FRIENDLY_Oficial Marris|r
    .turnin 20 >>Entregue Blackrock Ameaça
step
    .goto 1433/0,-2268.76,-9279.27
.target Foreman Oslow
>>Fale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .turnin 89 >>Entregue The Everstill Ponte
step
    .goto 1433/0,-2243.36,-9259.57
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
    .turnin 124 >>Entregue A Baying of Gnolls
.target Verner Osgood
    .accept 126 >>Aceite Uivando nas Colinas
step
    .goto 1433/0,-2158.91,-9235.97
.target Darcy
>>Fale com |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Entregue Entregando Daffodils
step
    .goto 1433/0,-2157.18,-9223.81
    .vendor >>Compre uma bebida de nível 15
step
    #era/som
    .goto 1433/0,-2063.61,-9212.080
    >>Saia da estalagem. Vá para o oeste, depois entre no edifício
.target Chef Breanna
>>Fale com o |cRXP_FRIENDLY_Mestre-cuca Breanna|r
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
step
    #era/som
    #completewith next
    .goto 1433/0,-2146.97,-9225.110
    +Cozinhe toda a carne de javali até nível 50 de culinária
    >>Se você não tem carne suficiente, farme alguns javalis a caminho de Darkshire
step
    .goto 1433/0,-1711.94,-9895.21,90,0
    .zone Duskwood >>Voe para Floresta do Crepúsculo
]])
