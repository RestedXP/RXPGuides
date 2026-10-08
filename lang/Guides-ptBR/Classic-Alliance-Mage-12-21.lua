if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 12-18 Costa Negra Mago AdE
#version 1
#group Mago da Aliança
#defaultfor Alliance Mage
#next 18-21 Redridge Mago AdE

step
    #completewith next
    .goto Darkshore,36.77,44.28
    .vendor >>Você pode comprar alimento extremamente barato de nível 5 do Laird (vendedor de peixe)
step
    >>Vá para cima até o andar superior
    .goto Darkshore,36.98,44.14
.target Wizbang Cranktoggle
>>Fale com |cRXP_FRIENDLY_Xafetim Manigiro|r
    .accept 983 >>Aceite Caixazorra 827
step
    >>Salte até o 1º andar
    .goto Darkshore,37.04,44.13
    .home >>Defina sua Pedra de Regresso para Auberdine
step
    .goto Darkshore,37.32,43.64
.target Barithras Moonshade
>>Fale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .accept 947 >>Aceite Cave Mushrooms
step
    .goto Darkshore,37.68,43.38
.target Sentinel Glynda Nal'Shea
>>Fale com a |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .accept 4811 >>Aceite O Cristal Vermelho
step
    .goto Darkshore,38.84,43.41
.target Tharnariun Treetender
>>Fale com o |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .accept 2118 >>Aceite Terras Pestilentas
step
    .goto Darkshore,39.37,43.49
.target Terenthis
>>Fale com |cRXP_FRIENDLY_Terenthis|r
    .accept 984 >>Aceite Uma grande ameaça?
step
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .accept 3524 >>Aceite Deixa a água me levar
step
    .goto Darkshore,36.34,45.58
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
step
    #completewith Bear
     >>Mate os Crawlers ao longo da costa
    .complete 983,1 --Crawler Leg (6)
step
    .goto Darkshore,36.38,50.88
     >>Saqueie a criatura marinha
    .complete 3524,1 --Sea Creature Bones (1)
step
    #sticky
    #completewith next
    >>Procure um Ursocardo Raivoso. Agro um e use Esperança de Tharnariun na mochila (orbe roxa)
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto Darkshore,39.01,53.70
     >>Vá para as proximidades do acampamento furbolg
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    #label Bear
    >>Procure um Ursocardo Raivoso. Agro um e use Esperança de Tharnariun na mochila (orbe roxo)
    .goto Darkshore,38.47,57.92
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
step
    .goto Darkshore,36.61,54.29,150,0
    .goto Darkshore,36.10,44.42
    >>Mate os Crawlers ao longo da costa
    .complete 983,1 --Crawler Leg (6)
step
    #sticky
    #completewith ReadAndy
     >>Guarde Carne de Strider x5 para depois
    .collect 5469,5,2178,1
step
    .goto Darkshore,36.66,46.26
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411
step
    .goto Darkshore,36.62,45.59
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entregue Deixa a água me levar
.target Gwennyth Bly'Leggonde
    .accept 4681 >>Aceite Deixa a água me levar
step
    .goto Darkshore,36.73,44.06,40,0
    >>Corra para os Docks
    .goto Darkshore,35.74,43.70
.target Cerellean Whiteclaw
>>Fale com |cRXP_FRIENDLY_Cerellean Garralva|r
    .accept 963 >>Aceite Por Amor Eterno
step
    #sticky
    #completewith Thundris
     >>Mate os darkshore threshers no mar
    .complete 1001,1 --Thresher Eye (3)
step
    #completewith next
    .goto Darkshore,33.70,42.45,60 >>Corra para cima até os docks e pule na água na interseção
step
    .goto Darkshore,31.86,46.33
    >>Clique na cabeça da tartaruga marinha submersa
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.62,45.59
    >>Mate os Threshers a caminho de volta para a costa
.target Gwennyth Bly'Leggonde
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4681 >>Entregue Deixa a água me levar
step
    .goto Darkshore,38.84,43.41
>>Fale com o |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2118 >>Entregue Terras Pestilentas
.target Tharnariun Treetender
    .accept 2138 >>Aceite Purificação dos infectados
step
    .goto Darkshore,39.37,43.49
>>Fale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
.target Terenthis
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
step
    >>Mate os Furbolgs
    .goto Darkshore,39.83,56.11
    .goto Darkshore,39.74,53.76,0
    .complete 985,1 --Blackwood Pathfinder (8)
    .complete 985,2 --Blackwood Windtalker (5)
step
    .goto Darkshore,39.37,43.48
>>Fale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 985 >>Entregue Uma grande ameaça?
.target Terenthis
    .accept 986 >>Aceite Mestre Perdido
step
    >>Vá para cima
    .goto Darkshore,39.04,43.55
.target Sentinel Elissa Starbreeze
>>Fale com a |cRXP_FRIENDLY_Sentinela Elissa Brisastral|r
    .accept 965 >>Aceite A Torre de Althalaxx
step
    .goto Darkshore,38.11,41.16
.target Gorbold Steelhand
>>Fale com o |cRXP_FRIENDLY_Gorbold Manácero|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
step
    #label Thundris
    .goto Darkshore,37.39,40.13
>>Fale com o |cRXP_FRIENDLY_Thundris Tecevento|r
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
    .goto Darkshore,38.93,29.33,40,0
    .goto Darkshore,38.23,28.79
     >>Entre no 1º navio pelo buraco no casco, depois vá para a parte traseira do andar mais baixo do navio
    .complete 982,1 --Silver Dawning's Lockbox (1)
step
    #requires Threshers
    .goto Darkshore,40.30,27.69,40,0
    .goto Darkshore,39.63,27.45
     >>Entre no 2º navio pelo buraco no casco, depois vá para a parte traseira do andar mais baixo do navio
    .complete 982,2 --Mist Veil's Lockbox (1)
step
    .goto Darkshore,41.96,28.64
    .turnin 1001 >>Vire para Buzzbox 411
    .accept 1002 >>Aceite NO TRANSLATION FOUND TO THIS ELEMENT
step
    .goto Darkshore,41.94,31.47
    .accept 4723 >>Aceite Beached Sea Criatura
step
    .goto Felwood,27.70,10.03
>>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 954 >>Entregue Bashal'Aran
.target Asterion
    .accept 955 >>Aceite Bashal'Aran
step
    .goto Felwood,29.13,12.34
     >>Mate os Grellkins. Saqueie-os para seus Brincos
    .complete 955,1 --Grell Earring (8)
step
    .goto Felwood,27.70,10.03
>>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
.target Asterion
    .accept 956 >>Aceite Bashal'Aran
step
    .goto Felwood,29.60,12.52
     >>Mate os Sátiros. Saqueie-os para o Selo
    .complete 956,1 --Ancient Moonstone Seal (1)
step
    .goto Felwood,27.70,10.03
>>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
.target Asterion
    .accept 957 >>Aceite Bashal'Aran
step
    #sticky
    #completewith ReadAndy
     >>Mate qualquer tipo de Espreitaluna. Saqueie-os para obter suas presas
    .complete 1002,1 --Moonstalker Fang (6)
--N don't think unitscan is needed
step
    #sticky
    #completewith ReadAndy
    >>Mate Ursos Cardo Raivosos que vê. Tenha pelo menos 50% de mana e mate-os antes que eles lhe apliquem Hidrofobia (enfraquecimento)
    .complete 2138,1 --Rabid Thistle Bear (20)
step
    .goto Darkshore,50.77,25.43
    >>Usar o Tubo de Amostragem Vazio na mochila
    .complete 4762,1 --Cliffspring River Sample (1)
step
    #sticky
    #completewith ReadAndy
    +Guarde os Ovos Pequenos que pega para subir o nível de culinária mais tarde. Guarde TODAS as penas leves que pega para depois
step
    .goto Darkshore,47.11,48.63
     >>Corra até O Cristal Vermelho nas montanhas
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label ReadAndy
    .goto Darkshore,40.30,59.73
.target Sentinel Tysha Moonblade
>>Fale com a |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .accept 953 >>Aceite A queda de Ameth’Aran
step
    #sticky
    #label anaya
    .goto Darkshore,42.29,60.46,0
     >>Mate Anaya Correalba. Ela patrulha ao redor do meio de Ameth'Aran
    .complete 963,1
    .unitscan ANAYA DAWNRUNNER
step
    #label ghosts
    #sticky
    .goto Darkshore,42.66,61.90,0
     >>Mate fantasmas. Saqueie-os por relíquias
    .complete 958,1 --Highborne Relic (7)
step
    .goto Felwood,25.98,40.62
     >>Clique na tabuleta no chão
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Felwood,25.66,39.11
     >>Clique na tocha verde no gazebo
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Felwood,26.71,35.53
     >>Clique na tábua no chão
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
#hidewindow
    #requires ghosts
step
    #requires anaya
    .goto Darkshore,40.30,59.73
.target Sentinel Tysha Moonblade
>>Fale com a |cRXP_FRIENDLY_Sentinela Tysha Lamiluna|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
step
    .goto Darkshore,38.83,60.82
    >>Termine de matar Ursos Cardo Raivosos e obter Carne de Corredor
    .complete 2138,1 --Rabid Thistle Bear (20)
    .collect 5469,5,2178,1
step
    >>Saqueie a Tartaruga Marinha
    .goto Darkshore,37.14,62.12
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
step
    >>Pegue a Tartaruga Marinha
    .goto Darkshore,36.02,70.79
    .accept 4728 >>Aceite Criatura Marinha Encalhada - Missão
step
    .hs >>Use a Pedra de Regresso para Auberdine
step
    .goto Darkshore,38.84,43.42
>>Fale com o |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2138 >>Entregue Purificação dos infectados
.target Tharnariun Treetender
    .accept 2139 >>Aceite Esperança de Tharnariun
step
    .goto Darkshore,38.11,41.17
.target Gorbold Steelhand
>>Fale com o |cRXP_FRIENDLY_Gorbold Manácero|r
    .turnin 982 >>Vá para o Oceano Profundo, no Mar Vasto
    .vendor >>Compre alguns Temperos Suaves de Gorbold até ter o suficiente para cozinhar todos os ovos
step
    .goto Darkshore,37.69,40.66
    >>Certifique-se de que tem 10 pontos em culinária, ou não conseguirá aceitar/entregar a missão
.target Alanndarian Nightsong
>>Fale com a |cRXP_FRIENDLY_Alanndária Noturcanto|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
step
    .goto Darkshore,37.40,40.13
>>Fale com o |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .turnin 4762 >>Entregue Rio Fontescarpa
.target Thundris Windweaver
    .accept 4763 >>Aceite Os Corrompidos Bosquenero
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>Fale com a |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
step
    .goto Darkshore,37.71,43.36
>>Fale com a |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4811 >>Entregue O Cristal Vermelho
.target Sentinel Glynda Nal'Shea
    .accept 4812 >>Aceite Como cascatas
step
    .goto Darkshore,37.78,44.06
     >>Encha o Tubo de Água Vazio no poço lunar
    .complete 4812,1
     >>Encha a Tigela Vazia no poço lunar
    .collect 12347,1,4763,1
step
    #completewith next
    .goto Darkshore,36.83,43.91
    .vendor >>Compre uma bebida de nível 15 de Taldan
step
    >>Volte ao píer
    .goto Felwood,18.10,18.48
.target Cerellean Whiteclaw
>>Fale com o |cRXP_FRIENDLY_Cerellean Garralva|r
    .turnin 963 >>Entregue Amor Eterno
step
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>Fale com |cRXP_FRIENDLY_Gubber Blump|r
    .accept 1138 >>Aceite Fruit of the Sea
step
    .goto Darkshore,36.62,45.59
.target Gwennyth Bly'Leggonde
>>Fale com o |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4723 >>Entregue a Criatura Marinha Encalhada
    .turnin 4728 >>Entregue a Criatura Marinha Encalhada << Gnome
step
    .goto Darkshore,47.32,48.70
     >>Clique no cristal vermelho
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
step
    #sticky
    #label MoonstalkersF
     >>Mate qualquer tipo de Espreitaluna. Saqueie-os por suas presas
    .complete 1002,1 --Moonstalker Fang (6)
    .unitscan Moonstalker;Moonstalker Runt
step
    .goto Darkshore,44.18,36.29
.target Asterion
>>Fale com o |cRXP_FRIENDLY_Astérion|r
    .turnin 957 >>Entregue Bashal'Aran
step
    .goto Darkshore,50.66,34.98
    >>Equipe sua nova varinha
    >>Pegue a Amostra de Grão Bosquenero do Barril, depois corra sudeste em direção à Matriarca do Covil (não lute contra os inimigos)
    .collect 12342,1 --Blackwood Grain Sample (1)
step
    .goto Darkshore,52.60,36.65,45,0
    >>Mate a Matriarca do Covil. Cuidado pois seus filhotes podem derrubá-lo por 2 segundos
    >>Suba até o nível 16 e tente novamente se estiver tendo dificuldade
    .goto Darkshore,51.48,38.26
    .complete 2139,1 --Den Mother (1)
step
    >>Pegue a Amostra de Castanha Bosquenero do Barril
    .goto Darkshore,51.80,33.51
    .collect 12343,1 --Blackwood Nut Sample (1)
step
    >>Pegue a Amostra de Fruta Bosquenero do Barril. Um inimigo aparecerá na sua frente e entre as cabanas do oeste - você pode ter que correr
    .goto Darkshore,52.85,33.42
    .collect 12341,1 --Blackwood Fruit Sample (1)
step
    >>Usar a Tigela de Purificação Cheia na mochila perto da fogueira. Isso tornará todos os Furbolgs próximos aliados.
    >>Mate o Sátiro que aparece entre os acampamentos e depois corre ao redor da fogueira. Comece à máxima distância pois ele pode ser difícil. Saqueie a cesta que cai no chão depois de matá-lo.
    .goto Darkshore,52.38,33.29
    .complete 4763,1 --Talisman of Corruption (1)
step
    #completewith next
    .goto Darkshore,54.98,32.79,35 >>Vá para a caverna acima da cachoeira
step
    .goto Darkshore,55.66,34.89
     >>Fique na parte superior da caverna. Se não houver Morte Cap no final do lado superior, desça e pegue um de baixo
     >>O primeiro azul na boca da caverna deveria ter reaparecido no momento em que você saqueou o Morte Cap
    .complete 947,1 --Scaber Stalk (5)
    .complete 947,2 --Death Cap (1)
step
    .goto Darkshore,54.97,24.89
>>Fale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 965 >>Entregue A Torre de Althalaxx
.target Balthule Shadowstrike
    .accept 966 >>Aceite A Torre de Althalaxx
step
    >>Mate os Fanáticos do Tenebroso. Saqueie-os buscando Pergaminhos
    .goto Darkshore,55.36,26.84
    .complete 966,1 --Worn Parchment (4)
step
    .goto Darkshore,54.97,24.89
>>Fale com |cRXP_FRIENDLY_Balthule Umbrataque|r
    .turnin 966 >>Entregue A Torre de Althalaxx
.target Balthule Shadowstrike
    .accept 967 >>Aceite A Torre de Althalaxx
step
    #requires MoonstalkersF
    .goto Darkshore,53.11,18.16
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step
    #sticky
    #completewith Turtles
     >>Mate os Rastejantes do Recife ao longo da costa, não vá além para completar esta missão - NÃO mate inimigos 4 níveis ou mais acima
    .complete 1138,1 --Fine Crab Chunks (6)
step
    .goto Darkshore,51.38,24.19,25,0
    .goto Darkshore,51.29,24.53
    .turnin 1002 >>Entregue no NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
step
    #softcore
    #label Turtles
    >>Deixe vivos alguns dos Murlocs próximos, você vai morrer deles depois de aceitar esta missão
    .goto Darkshore,44.18,20.60
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
step
    #hardcore
    #label Turtles
    .goto Darkshore,44.18,20.60
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
step
    #softcore
    .deathskip >>Morra e renasça em Auberdine
step
    .goto Darkshore,37.40,40.13
    >>Equipe sua nova varinha
.target Thundris Windweaver
>>Fale com |cRXP_FRIENDLY_Trovejius Tecevento|r
    .turnin 4763 >>Entregue Os Corrompidos Blackwood
step
    .goto Darkshore,38.84,43.42
.target Tharnariun Treetender
>>Fale com |cRXP_FRIENDLY_Tharnariun Tratárvore|r
    .turnin 2139 >>Entregue A Esperança de Tharnariun
step
    .goto Darkshore,37.71,43.36
.target Sentinel Glynda Nal'Shea
>>Fale com a |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4813 >>Entregue Fragmentos incrustados
step
    .goto Darkshore,37.32,43.64
>>Fale com |cRXP_FRIENDLY_Barithras Sombraluna|r
    .turnin 947 >>Entregue Cogumelos da Caverna
.target Barithras Moonshade
    .accept 948 >>Aceite Onu
step
    .goto Darkshore,37.23,44.23
     >>Clique no cartaz procurado fora da estalagem
    .accept 4740 >>Aceite Procurado: Lodofundo!
step
    .isQuestComplete 1138
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>Fale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
step
    #label end
    #requires bowl
    .goto Felwood,19.10,20.63
.target Gwennyth Bly'Leggonde
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4727 >>Entregue a Criatura Marinha Encalhada
    .turnin 4725 >>Entregue Tartaruga Marinha Encalhada
step
     #completewith Murkdeep
     >>Mate os Espreitaluna Machos que encontrar e as Matriarcas se estiver confortável. Saqueie-os para obter Peles. Eles compartilham pontos de aparição com Ursos Cardos Eriçados.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
     #completewith Murkdeep
    .goto Darkshore,38.60,80.50,0
     >>Mate os Ursos Cardos Eriçados. Saqueie-os para obter Couros Cabeludos.
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,43.55,76.29
>>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 948 >>Entregue em Onu
.target Onu
    .accept 944 >>Aceite A Foice do Mestre
step
    #completewith next
    .goto Darkshore,43.69,76.64
    .vendor >>Compre água nível 15 de Tiyani
step << Human
    >>Saqueie os restos
    .goto Darkshore,35.97,70.90
    .accept 4728 >>Aceite Beached Sea Criatura - Missão
step
    #label Murkdeep
    .goto Darkshore,36.52,76.55
    >>Limpe o acampamento de Murlocs, fique longe da fogueira no centro
    >>Assim que limpar tudo, vá para o centro do acampamento para invocar Lodofundo
    >>Se tiver sorte, Lodofundo pode já estar ativo cerca de 30 metros afastado da costa para o oeste (se alguém morreu dele antes).
    .complete 4740,1 --Murkdeep (1)
step
     >>Mate caranguejos ao longo da costa buscando Pedaços de Caranguejo Finos
    .complete 1138,1 --Fine Crab Chunks (6)
step
    >>Saque os restos
    .goto Darkshore,32.70,80.73
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step
    >>Saque os restos. Cuidado, os Oracles fazem raios de 90 de dano e podem fazer Onda de Cura para vida total quando estiverem com menos de 55% de vida. O casco da tartaruga aqui tem LoS.
    >>Sempre mantenha uma rota de fuga. Caçadores das Marés não são tão ruins, mas cuidado com sua habilidade de envenenamento de baixo dano.
    >>Tente poupar suas poções de cura para depois, especialmente as maiores
    .goto Darkshore,31.70,83.72
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
    >>O casco da tartaruga na ilha tem LoS
    .goto Darkshore,31.22,85.56
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
    >>Saque-o no pescoço dele, tenha cuidado com os 2 inimigos ocultos no terreno (você só precisa matar 3 inimigos para saquear este)
    .goto Darkshore,31.28,87.39
    .accept 4733 >>Aceite Beached Sea Criatura - Missão
step
    .goto Darkshore,35.72,83.69
.target Prospector Remtravel
>>Fale com |cRXP_FRIENDLY_Prospector Trilheiro|r
    .turnin 729 >>Entregue The Absent Minded Prospector
step
    .goto Darkshore,35.72,83.69
     >>Esta missão é MUITO difícil. Faça-a com outro jogador se conseguir.
     >>Comece a missão de escolta
.target Prospector Remtravel
>>Fale com o |cRXP_FRIENDLY_Prospector Trilheiro|r
    .accept 731,1 >>Aceite O Prospector Distraído
step
     >>Acompanhe Prospector Trilheiro
     >>Deixe Remtravel gerar ódio de tudo (já que os inimigos precisam acertá-lo para gerar ódio nele), depois dispare bolas de fogo no inimigo
     >>Remtravel é realmente frágil, então tente desviar o ódio para você dos outros inimigos
     >>Quando os Troggs aparecerem, polimorfie o que ele não está atacando, depois ataque o outro quando ele o acertar. Polimorfie o mago primeiro que aparecer perto do final DEPOIS que ele disparar uma bola de fogo no prospector
     >>Se você não conseguir completar essa missão na primeira vez, apenas pule — é MUITO intensiva em habilidade e também muito dependente de sorte.
     .complete 731,1 --Escort Prospector Remtravel (1)
step
     #completewith Glaive
     >>Abata qualquer Patriarca Espreitaluna que você encontre e Matriarcas se estiver confortável. Saqueie-os por Peles. Eles compartilham pontos de aparição com Ursos Cardos Cansados.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    >>Abata Estrigões. Certifique-se de que tem pelo menos 1 pena leve para depois.
    .collect 17056,1 --Light Feather (1)
step
     #completewith next
    .goto Darkshore,38.60,80.50,0
     >>Abata Ursos Cardos Cansados. Saqueie-os por Couros Cabeludos.
    .complete 1003,1 --Grizzled Scalp (4)
step
    #sticky
    #completewith Therylune
    >>Fique atento para The Powers Below. É uma missão gratuita com baixa taxa de queda.
    .collect 5352,1,968 --Book: The Powers Below (1)
    .accept 968 >>Aceite Os Poderes de Baixo
step
    #label Glaive
    .goto Darkshore,38.30,87.12
     >>Entre em The Master's Glaive e elimine os inimigos ao redor do altar no centro.
    .complete 944,1
step
    #sticky
    #label TheryluneE
    .goto Darkshore,38.65,87.34
.target Therylune
>>Fale com |cRXP_FRIENDLY_Therylune|r
    .accept 945 >>Aceite A Fuga de Therylune
step
     >>Largue a Bacia de Vidência do seu inventário no chão.
    .turnin 944 >>Volte a The Master's Glaive
    .accept 949 >>Aceite O Acampamento do Crepúsculo
step
    .goto Darkshore,38.55,86.03
     >>Clique no livro no topo do pedestal. Cuidado para que Therylune não fuja se você já iniciou.
    .turnin 949 >>Entregue O Acampamento do Crepúsculo
    .accept 950 >>Aceite Retorno a Onu
step
    #label Therylune
    #requires TheryluneE
    >>Conclua a missão de escolta
    >>Quando você matar o último inimigo saindo do glaive, faça uma fogueira e cozinhe toda a carne/ovos que você ainda tem para subir sua perícia de culinária.
    >>Você precisa de perícia de culinária 50 para uma missão gratuita em Darkshire.
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
step
     #sticky
    #label MoonstalkerP
    .goto Darkshore,37.38,91.87,100,0
    .goto Darkshore,38.96,80.07,100,0
    .goto Darkshore,43.82,82.08,100,0
    .goto Darkshore,38.96,80.07,0
     >>Abata qualquer Patriarca Espreitaluna que você encontre e Matriarcas se estiver confortável. Saqueie-os por Peles. Eles compartilham pontos de aparição com Ursos Cardos Cansados.
     >>Se você está tendo muito azar com aparições e taxas de queda, você pode pular essa missão.
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire;Moonstalker Matriarch
step
    .goto Darkshore,38.60,80.50
     >>Abata Ursos Cardos Cansados por todo o sul de Costa Negra. Saqueie-os por Couros Cabeludos.
    .complete 1003,1 --Grizzled Scalp (4)
step
    .goto Darkshore,41.40,80.56
    .turnin 1003 >>Vá a Buzzbox 525
step
    #requires MoonstalkerP
    .goto Darkshore,43.55,76.29
.target Onu
>>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Retorno a Onu
step
    #completewith next
    .goto Darkshore,43.69,76.63
    .vendor >>Compre comida/bebida de Tiyani se necessário.
step
    >>Aceite a missão de escolta de Kerlonian. Se ele não estiver lá, pule este passo.
    .goto Darkshore,44.40,76.42
.target Kerlonian Evershade
>>Fale com |cRXP_FRIENDLY_Kerlonian Perenumbra|r
    .accept 5321 >>Aceite O Adormecido Despertou
step
    .isOnQuest 5321
    >>Saqueie o pequeno baú cinzento ao lado de Kerlonian.
    .goto Darkshore,44.40,76.42
    .complete 5321,2 --Horn of Awakening (1)
step
    .isOnQuest 5321
    .goto Ashenvale,26.84,36.74
    >>Corra para o sul de Vale Gris. Vincule a Corneta do Despertar às suas barras de ação e use-a em Kerlonian quando ele começar a caminhar no lugar e adormecer.
    .complete 5321,1 --Escort Kerlonian Evershade to Maestra's Post (1)
step
    .isOnQuest 5321
    .goto Ashenvale,27.26,35.58
.target Liladris Moonriver
>>Fale com |cRXP_FRIENDLY_Liladris Luneflúvia|r
    .turnin 5321 >>Entregue O Adormecido Despertou
step
    .goto Ashenvale,26.19,38.70
.target Delgren the Purifier
>>Fale com |cRXP_FRIENDLY_Dinis, o Purificador|r
    .turnin 967 >>Entregue A Torre de Althalaxx
step
    #softcore
    >>Corra pela estrada ao sul. Vá para The Shrine of Aessina
    -->>Whilst you're doing this, start opening the Website Unstuck tool, and select your character. Do NOT confirm it yet though
    .goto Ashenvale,22.64,51.91
.target Therysil
>>Fale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A fuga de Therylune
step
    #hardcore
    >>Corra estrada acima para o sul. Dirija-se para The Shrine of Aessina.
    .goto Ashenvale,22.64,51.91
.target Therysil
>>Fale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A fuga de Therylune
step
    .hs >>Use a Pedra de Regresso para Auberdine
step
    .goto Darkshore,36.09,44.93
.target Gubber Blump
>>Fale com |cRXP_FRIENDLY_Gubber Blump|r
    .turnin 1138 >>Entregue Frutos do mar
step
    .goto Darkshore,36.62,45.60
.target Gwennyth Bly'Leggonde
>>Fale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 4730 >>Entregue a Criatura Marinha Encalhada
    .turnin 4731 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4732 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4733 >>Entregue a Criatura Marinha Encalhada
step
    .goto Darkshore,37.73,43.38
.target Sentinel Glynda Nal'Shea
>>Fale com a |cRXP_FRIENDLY_Sentinela Glynda Nal'Shea|r
    .turnin 4740 >>Entregue PROCURA-SE: Lodofundo!
step
    .isQuestComplete 986
    >>Mantenha a próxima parte da missão no seu registro de missões para o manto de +3 de resistência. Abandone a missão quando você não precisar mais do manto
    .goto Darkshore,39.37,43.48
>>Fale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 986 >>Entregue Um Mestre Perdido
.target Terenthis
    .accept 993 >>Aceite Um Mestre Perdido
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>Fale com a |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .isQuestComplete 731
step
    .goto Darkshore,37.44,41.84
.target Archaeologist Hollee
>>Fale com a |cRXP_FRIENDLY_Arqueóloga Hollee|r
    .accept 741 >>Aceite O Prospector Distraído
    .isQuestTurnedIn 731
step
    #completewith next
    .isOnQuest 741
    >>Corra de volta até o cais. Espere o barco para Darnassus chegar
    .goto Darkshore,36.43,43.84,30,0
    .goto Darkshore,33.17,40.17,40
step
    .isOnQuest 741
    .zone Teldrassil >>Pegue o barco para Darnassus
step
    .isOnQuest 741
    .goto Teldrassil,55.95,89.86,30 >>Passe pelo portal roxo
step
    .isOnQuest 741
    .goto Darnassus,31.24,84.49
>>Converse com o |cRXP_FRIENDLY_Arqueólogo-chefe Suiçagris|r
    .turnin 741 >>Entregue The Absent Minded Prospector
.target Chief Archaeologist Greywhisker
    .accept 942 >>Aceite O Prospector Distraído
step
    .goto Teldrassil,58.40,94.02
    .fp Teldrassil >>Aprenda a rota de voo para Teldrassil
    .fly Auberdine >>Voe para Auberdine
step
    .goto Darkshore,32.42,43.75,50,0
    .zone Wetlands >>Pegue o barco para Menethil
step
    #completewith next
    .money <0.08
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>Se você tem 8s, verifique se Nélio Allen tem Tubo de Bronze à venda e compre-o se estiver disponível. Caso contrário, pule este passo
    .collect 4371,1,175,1
step
    .goto Wetlands,9.49,59.69
    .fly Ironforge >>Voe para Altaforja
step << skip --logout skip
    #completewith next
    .goto Ironforge,56.23,46.83,0
    +Faça um logout skip pulando em cima de uma das cabeças do Grifo, saindo do jogo e depois entrando novamente
    .link https://www.youtube.com/watch?v=PWMJhodh6Bw >>https://www.youtube.com/watch?v=PWMJhodh6Bw >> CLIQUE AQUI
step
    .zone Stormwind City >>Pegue o bonde para Ventobravo
step
    #completewith FlyAndy
    .goto StormwindClassic,55.21,7.04
    .vendor >>Compre Tubo de Bronze se ainda não o fez
    >>Este é um item com fornecimento limitado, pule este passo se o NPC não tiver
    .bronzetube
step << Human
    #label FlyAndy
    .goto Elwynn Forest,32.45,50.16
    .zone Elwynn Forest >>Viaje para Elwynn Forest
step << Gnome
    .goto Elwynn Forest,26.29,38.50
    .zone Stormwind City >>Vá para Ventobravo
step << Gnome
    #label FlyAndy
    >>Corra para Ventobravo e aprenda a rota de voo
    .goto StormwindClassic,57.62,59.48,50,0
    .goto StormwindClassic,66.27,62.13
    .fp Stormwind City >>Aprenda a rota de voo para Ventobravo
step << Gnome
    .goto StormwindClassic,66.05,65.64,12,0
    .goto StormwindClassic,64.97,67.69,18 >>Desça para a pequena saliência correndo contra a parede branca. Tenha cuidado. Corra ao longo dela em direção à saída de Ventobravo
step
    >>Corra para o segundo andar da Goldshire Estalagem
    .goto Elwynn Forest,42.97,65.65,15,0
    .goto Elwynn Forest,43.81,66.46,15,0
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step
    .goto Elwynn Forest,91.42,73.59,125,0
    .zone Redridge Mountains >>Corra para o leste até Montanhas Cristarrubra. Durante o caminho, organize seus atalhos de teclado, certificando-se de ter seus feitiços confortavelmente à mão
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 18-21 Mago AdE em Cristarrubra
#version 1
#group Mago da Aliança RestedXP
#defaultfor Alliance Mage
#next 21-22 Floresta do Crepúsculo Mago AdE

step
    #sticky
    #completewith Gnolls
    +Comece a fazer AdE em inimigos de missão em grupos de 3+ que você vir
    >>Mantenha este tutorial aberto em outra aba para a Seção de AdE de Redridge se necessário:
    .link https://youtu.be/SxMc2GoP33c?t=56 >>https://youtu.be/SxMc2GoP33c?t=56 >> CLIQUE AQUI
step
    >>Fale com Capitão da Guarda Florestan. Ele patrulha um pouco ao redor do cruzamento
    .goto Elwynn Forest,99.05,72.15
.target Guard Parker
>>Fale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Encroaching Gnolls
step
    #sticky
    #label Gnolls
    .goto Redridge Mountains,30.74,59.99
>>Fale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Encroaching Gnolls
.target Deputy Feldon
    .accept 246 >>Aceite Assessing the Ameaça
step
    .goto Redridge Mountains,30.59,59.40
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
step
    #requires Gnolls
    .goto Redridge Mountains,33.51,48.96
.target Marshal Marris
>>Fale com o |cRXP_FRIENDLY_Oficial Marris|r
    .accept 20 >>Aceite Ameaça Pedranegra
step
    .goto Redridge Mountains,32.14,48.64
.target Foreman Oslow
>>Fale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .accept 125 >>Aceite As Ferramentas Perdidas
step
    .goto Redridge Mountains,30.94,47.24
.target Verner Osgood
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
    .accept 118 >>Aceite The Price of Shoes
step
    >>Dentro do Salão da Câmara
    .goto Redridge Mountains,29.72,44.26
.target Bailiff Conacher
>>Fale com o |cRXP_FRIENDLY_Meirinho Conacher|r
    .accept 91 >>Aceite A Lei de Salomão
step
    .goto Redridge Mountains,29.99,44.45
    >>Entre no prédio
.target Magistrate Solomon
>>Fale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .accept 120 >>Aceite Mensageiro para Ventobravo
step
    .goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>Fale com o |cRXP_FRIENDLY_Mestre de Doca Baren|r
    .accept 127 >>Aceite O lago está para peixe
step
    .goto Redridge Mountains,26.75,46.42
    .accept 180 >>Aceite Wanted: General Mordente
step
    >>Entre na Estalagem
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>Fale com Darcy
    .accept 129 >>Aceite Um Almoço Grátis
step
    .goto Redridge Mountains,27.01,44.82
    .home >>Defina sua Pedra de Retorno em Lakeshire
step
    .goto Redridge Mountains,29.32,53.64
.target Shawn
>>Fale com Shawn
    .accept 3741 >>Aceite O Colar de Nida
step
    >>Procure o Colar de Nida debaixo da água. Está em uma mancha marrom de terra
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49,90,0
    .complete 3741,1 --Hilary's Necklace (1)
step
    #completewith next
    .goto Redridge Mountains,15.47,62.40,0
    +Use AdE contra os gnolls na área
step
    .goto Redridge Mountains,15.28,71.47
>>Fale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
    .turnin 129 >>Entregue Grátis Lunch
.target Guard Parker
    .accept 130 >>Aceite Visit the Herbalist
step
    .goto Redridge Mountains,30.59,59.41
    .fly Stormwind >>Voe para Ventobravo
step
    >>Entre em Ventobravo. Vá para o instrutor de armas
   .goto StormwindClassic,57.13,57.71
   .trainer >>Treine Espadas de 1 Mão e Adagas
step
    #softcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    +Vá para a Casa de Leilões. Compre um Tubo de Bronze se for acessível
    >>Se não houver nenhum aqui ou forem muito caros, você também pode potencialmente comprar um de Billibub no Enânico District
    >>Se você não conseguir encontrar um, pule este passo
    .bronzetube
step
    #hardcore
    .goto StormwindClassic,53.62,59.76,30,0
    .goto StormwindClassic,55.25,7.08
    .vendor >>Procure Billibub no Enânico District para um Tubo de Bronze. Compre um se estiver disponível
    .bronzetube
step
    .goto StormwindClassic,63.99,75.34
>>Fale com o |cRXP_FRIENDLY_General Marcus Jonas|r
    .turnin 120 >>Entregue Mensageiro em Ventobravo
.target General Marcus Jonathan
    .accept 121 >>Aceite Mensageiro para Ventobravo
step
    >>Corra para Goldshire
    .goto Elwynn Forest,41.71,65.55
>>Fale com o |cRXP_FRIENDLY_Ferreiro Argus|r
    .turnin 118 >>Entregue The Price of Shoes
.target Smith Argus
    .accept 119 >>Aceite Devolver to Verner
step
    >>Corra para Sentinela Hill
    .goto Westfall,56.33,47.52
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
    .goto Westfall,56.55,52.65
    .fp Westfall >>Aprenda a rota de voo para Cerro Oeste << Gnome
    .fly Redridge >>Voe para Redridge
step
    #requires WFFP
    .goto Redridge Mountains,30.97,47.27
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
    .turnin 119 >>Entregue Devolver a Verner
.target Verner Osgood
    .accept 122 >>Aceite Underbelly Escamoso
    .accept 124 >>Aceite A Baying of Gnolls
step
    >>Vá para dentro da Fortaleza
    .goto Redridge Mountains,29.93,44.46
>>Fale com o |cRXP_FRIENDLY_Magistrado Salomão|r
    .turnin 121 >>Entregue Mensageiro em Ventobravo
.target Magistrate Solomon
    .accept 143 >>Aceite Mensageiro para o Cerro Oeste
.target Bailiff Conacher
>>Fale com o |cRXP_FRIENDLY_Meirinho Conacher|r
    .accept 91 >>Aceite A Lei de Salomão
step
    >>Vá para o andar superior da Estalagem
    .goto Redridge Mountains,26.47,45.35
>>Fale com o |cRXP_FRIENDLY_Wiley, o Negro|r
    .turnin 65 >>Entregue A Irmandade Défias
.target Wiley the Black
    .accept 132 >>Aceitar A Irmandade Défias
step
    .goto Redridge Mountains,29.24,53.63
.target Hilary
>>Fale com |cRXP_FRIENDLY_Nida|r
    .turnin 3741 >>Entregue O Colar de Nida
step
    #era/som
    #completewith Murlocs
    >>Farme os 3 primeiros itens para Gulache de Cristarrubra enquanto faz outras missões. Também obtenha Naco de Carne de Javali suficiente para atingir 50 de culinária
    >>Procure focar muito nos Goretusks, não se preocupe com carne de aranha por enquanto
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    #completewith Murlocs
    >>Mate os Dragonetos. Saqueie-os por suas escamas
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>Use AdE contra os gnolls na área. Consulte o vídeo de AdE se necessário
    >>Use Zona Morta contra os Caçadores durante o puxão de AdE para não levar tiros
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .goto Redridge Mountains,29.51,84.17,50,0
    .goto Redridge Mountains,34.60,82.99,50,0
    .goto Redridge Mountains,43.44,71.11,50,0
    .complete 246,1 --Redridge Mongrel (10)
    .complete 246,2 --Redridge Poacher (6)
step
    #label Murlocs
    >>Use AdE contra os Murlocs na área. Você terá que atacar individualmente os Tidecallers (relâmpago + onda de cura)
    >>Você pode usar AdE contra os Shorestrikers (Investida) e Flesheaters (25 de dano, roubo de vida instantâneo com chance de ataque). Faça puxões criativos
    >>Guarde 8 Barbatanas para depois
    .goto Redridge Mountains,48.82,69.49
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
step
    #era/som
    >>Obtenha Carne de Condor e Escamas de Dragoneto por esta área. Se você está esperando por reaparições, vá para o leste para obter alguns Machados e volte aqui
    .goto Redridge Mountains,61.04,77.55
    .collect 1080,5,92,1 --Tough Condor Meat (5)
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    #som
    #phase 3-6
    >>Obtenha escalas de Whelp por esta área. Se você está esperando por reaparições, vá para o leste para obter alguns Machados e volte aqui
    .goto Redridge Mountains,61.04,77.55
    .complete 122,1 --Underbelly Whelp Scale (6)
step
    >>Use AdE contra os Orcs na área. Saqueie-os pelos machados. Tenha cuidado com a Rede dos Velocirredores e a Investida com Escudo dos Renegados
    >>Tente evitar matar os Renegades devido ao seu alto nível. Puxe no máximo 3 de cada vez. Usar AdE aqui tem risco muito alto, recompensa média
    >>Não pegue todos os machados ainda, você tem uma oportunidade melhor de terminá-los depois
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .goto Redridge Mountains,76.28,83.88,50,0
    .goto Redridge Mountains,75.53,73.36,50,0
    .collect 3014,8 --Battleworn Axe (8)
step
    >>Vá debaixo da água. Saque a caixa cinza
    .goto Redridge Mountains,41.52,54.68
    .complete 125,1 --Oslow's Toolbox (1)
step
    #era/som
    >>Complete a coleta dos fochos de Goretusco aqui
    .goto Redridge Mountains,32.07,70.54
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
step
    .goto Redridge Mountains,30.74,60.00
.target Deputy Feldon
>>Fale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 246 >>Entregue Assessing the Ameaça
step
    .isQuestComplete 20
    .goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Fale com o |cRXP_FRIENDLY_Oficial Marris|r
    .turnin 20 >>Entregue Ameaça Blackrock
step
    .goto Redridge Mountains,32.14,48.63
>>Fale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .turnin 125 >>Entregue Perdida Ferramentas
.target Foreman Oslow
    .accept 89 >>Aceite The Everstill Ponte
step
    .goto Redridge Mountains,30.98,47.27
.target Verner Osgood
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
    .turnin 122 >>Entregue Escamas do Baixo-ventre
step
    #level 20
    .goto Redridge Mountains,27.72,47.38
>>Fale com o |cRXP_FRIENDLY_Mestre de Doca Baren|r
    .turnin 127 >>Entregue O lago está para peixe
.target Dockmaster Baren
    .accept 150 >>Aceite Caçadores de murlocs
    .turnin 150 >>Entregue Caçadores de Murlocs
step
    .goto Redridge Mountains,27.72,47.38
.target Dockmaster Baren
>>Fale com o |cRXP_FRIENDLY_Mestre de Doca Baren|r
    .turnin 127 >>Entregue O lago está para peixe
step
    .goto Redridge Mountains,21.86,46.33
>>Fale com |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 130 >>Entregue Visit the Herbalist
.target Martie Jainrose
    .accept 131 >>Aceite Entregando Daffodils
    .accept 34 >>Aceite O Penetra
step
    >>Mate Ronquifuça. Leve-a de volta para Guarda Adams até a cidade
    >>Tenha cuidado pois ela faz Tremor (dano de AoE instantâneo de 80) e carrega (mantenha-a desacelerada e com Nova se possível)
    >>Você deve causar pelo menos 51% do dano
    >>Esta missão é MUITO difícil
    .goto Redridge Mountains,15.66,49.31
    .complete 34,1 --Bellygrub's Tusk (1)
--N Add link
step
    .goto Redridge Mountains,21.85,46.32
.target Martie Jainrose
>>Fale com |cRXP_FRIENDLY_Martie Jainrose|r
    .turnin 34 >>Entregue O penetra
step
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,21.23,36.17,60,0
    .goto Redridge Mountains,34.20,39.70,60,0
    .goto Redridge Mountains,39.61,31.46,60,0
    >>Mate os Gnolls. Saque-os por Picas e Rebites
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .complete 124,1 --Redridge Brute (10)
    .complete 124,2 --Redridge Mystic (8)
step
    #completewith next
    >>Mate os grupos bem agrupados de Orcs. Saque-os para completar os machados
    >>Se você não tiver sorte depois de limpar os grupos próximos, terá outra oportunidade mais tarde
    .goto Redridge Mountains,37.05,45.15,50,0
    .goto Redridge Mountains,38.28,41.85,50,0
    .goto Redridge Mountains,40.46,40.52,50,0
    .complete 20,1 --Blackrock Axe (10)
step
    #era/som
    #completewith next
    .goto Redridge Mountains,49.25,39.66,150 >>Corra em direção às aranhas
step
    #era/som
    >>Mate as Aranhas. Saque-as pela carne
    >>Cuidado, pois o veneno deles pode causar algum dano
    >>Tenha cuidado com Palpos (raro), pois ele tem um atordoamento de 8 segundos
    .goto Redridge Mountains,57.23,45.24
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
step
    >>Conclua abatendo os Orcs pelos machados
    .goto Redridge Mountains,61.74,42.82
    .complete 20,1 --Blackrock Axe (10)
step
    .goto Redridge Mountains,33.50,48.96
.target Marshal Marris
>>Fale com o |cRXP_FRIENDLY_Oficial Marris|r
    .turnin 20 >>Entregue Ameaça Blackrock
step
    .goto Redridge Mountains,32.15,48.64
.target Foreman Oslow
>>Fale com o |cRXP_FRIENDLY_Encarregado Oslow|r
    .turnin 89 >>Entregue The Everstill Ponte
step
    .goto Redridge Mountains,30.98,47.28
>>Fale com |cRXP_FRIENDLY_Vervo Obom|r
    .turnin 124 >>Entregue O Uivo dos Gnolls
.target Verner Osgood
    .accept 126 >>Aceite Uivos nas Colinas
step
    .goto Redridge Mountains,27.09,45.65
.target Darcy
>>Fale com |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Entregue Entregando Daffodils
step
    .goto Redridge Mountains,27.01,44.81
    .vendor >>Compre uma bebida de nível 15
step
    #era/som
    .goto Redridge Mountains,22.70,44.00
    >>Saia da Estalagem. Vá para o oeste e entre no prédio
.target Chef Breanna
>>Fale com o |cRXP_FRIENDLY_Mestre-cuca Breanna|r
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
step
    #era/som
    #completewith next
    .goto Redridge Mountains,26.54,44.90
    +Cozinhe toda a carne de javali até 50 de culinária
    >>Se você não tem carne suficiente, farme alguns javalis no caminho para Darkshire
step
    .goto Redridge Mountains,6.50,91.18,90,0
    .zone Duskwood >>Vá para a Floresta do Crepúsculo
]])
