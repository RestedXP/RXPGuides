if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#name 1-11 Floresta de Elwynn
#subgroup RestedXP Aliança 1-20
#defaultfor Human
#next 12-14 Loch Modan;12-14 Costa Negra << Warlock
#next 11-12 Loch Modan;12-14 Costa Negra << !Warlock

step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.2,42.9
    +Você selecionou um guia destinado a Humanos. Você deve escolher a zona inicial que corresponda à zona em que você começa
step << Warlock
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Dane Winslow|r
    .vendor >>|cRXP_WARN_Venda sua Armadura Corporal, Camisa, Calças e Botas junto com a Comida e Água nas suas bolsas. Você precisa de 10c no total|r
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >>Aceite O Tomo Roubado
    .train 348 >>Treine |T135817:0|t [Imolar]
    .target Drusilla La Salle
step << Warlock
--  .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Corra para dentro da Tenda no Acampamento Défias|r
    >>Abra os |cRXP_PICK_Livros Roubados|r. Saque-os para obter o |cRXP_LOOT_Poderes do Caos|r
    >>|cRXP_WARN_Você pode saquear o|cRXP_LOOT_ Poderes do Caos|r com segurança dentro da Tenda! Assista ao vídeo sobre como fazer isso|r
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>https://www.youtube.com/watch?v=KEke9Yei >> |cRXP_WARN_Clique aqui para referência em vídeo|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >>Entregue O Tomo Roubado
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith ATW
    .cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t [Invocar Diabrete]
    .usespell 688
step << Warlock
    #optional
    #completewith ATW
    .cast 687 >>|cRXP_WARN_Lance|r |T136185:0|t [Pele Demoníaca]
    .usespell 687
    .aura 687
step
    #completewith DeleteHS
	.destroy 6948 >>Destrua sua |T134414:0|t [Pedra de Regresso] da bolsa, pois você ainda não precisa dela
step
    #label ATW
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .accept 783 >>Aceite Uma Ameaça Interior
    .target Deputy Willem
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Mate |cRXP_ENEMY_Lobos Jovens|r até ter 10c+ em itens de lixo para vender
    >>|cRXP_WARN_Você irá treinar|r |T132333:0|t [Grito de Guerra] |cRXP_WARN_que aumenta a velocidade de progressão nos níveis iniciais|r
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    .vendor >>|cRXP_WARN_Venda os itens de lixo|r
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .train 6673 >>Treine |T132333:0|t [Grito de Guerra]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 783 >>Entregue Uma Ameaça Interior
    .accept 7 >>Aceite Limpeza do Acampamento Kobold
    .target Marshal McBride
step
    .goto Elwynn Forest,48.171,42.943
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .accept 5261 >>Aceite Enzo Peleteiro
    .target Deputy Willem
step
    .goto Elwynn Forest,48.941,40.166
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 5261 >>Entregue em Enzo Peleteiro
    .accept 33 >>Aceite Lobos Além da Fronteira
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|cRXP_WARN_Assim que você tiver 50c em itens de lixo para vender|r
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    >>Venda os itens de lixo
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #sticky
    #label WolfMeatEnd
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .waypoint 1429,49.052,38.270,45,0
    .waypoint 1429,48.362,37.582,45,0
    .waypoint 1429,47.136,37.636,45,0
    .waypoint 1429,46.870,36.906,45,0
    .waypoint 1429,46.476,37.034,45,0
    .waypoint 1429,46.465,38.272,45,0
    .waypoint 1429,45.896,38.013,45,0
    .waypoint 1429,45.708,38.720,45,0
    .waypoint 1429,46.302,39.994,45,0
    .waypoint 1429,45.718,40.733,45,0
    .waypoint 1429,46.399,41.838,45,0
    .waypoint 1429,46.741,40.987,45,0
    .waypoint 1429,47.703,40.299,45,0
    .waypoint 1429,47.976,39.422,45,0
    >>Mate |cRXP_ENEMY_Lobos Jovens|r e |cRXP_ENEMY_Lobos Silvestres|r. Saqueie-os para obter |cRXP_LOOT_Carne Dura de Lobo|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
	.mob Timber Wolf
step
    #label DeleteHS
    #loop
    .goto 1429,47.601,36.720,0
    .goto 1429,49.215,37.010,0
    .goto 1429,47.569,34.967,0
    .goto 1429,47.601,36.720,45,0
    .goto 1429,47.381,36.314,45,0
    .goto 1429,47.611,35.863,45,0
    .goto 1429,48.314,36.487,45,0
    .goto 1429,49.070,36.438,45,0
    .goto 1429,49.215,37.010,45,0
    .goto 1429,49.838,36.413,45,0
    .goto 1429,50.105,35.668,45,0
    .goto 1429,49.823,35.161,45,0
    .goto 1429,48.845,35.066,45,0
    .goto 1429,47.569,34.967,45,0
    >>Mate |cRXP_ENEMY_Kobold Daninho|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .mob Kobold Vermin
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 33,2 >>Entregue Lobos Além da Fronteira << Warrior/Paladin/Rogue
    .turnin 33,1 >>Entregue Lobos Além da Fronteira << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    >>Venda os itens de lixo
    >>|cRXP_BUY_Compre mais 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    >>|cRXP_WARN_Certifique-se de guardar 10c ou mais para depois|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto Elwynn Forest,47.691,41.417
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .vendor >>Venda os itens de lixo
    .target Godric Rothgar
step << Rogue
    .goto Elwynn Forest,47.240,41.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Janos Punhoforte|r
    .vendor 78 >>|cRXP_BUY_Compre um|r |T135650:0|t [Punhal] |cRXP_BUY_com ele se você puder pagar|r
    .collect 2139,1 -- Dirk (1)
    .disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step << Rogue
    #completewith next
    +Equipe o|cRXP_WARN_ |T135650:0|t [Punhal]|r
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 7 >>Entregue Limpeza do Acampamento Kobold
    .accept 15 >>Aceite Investigar a Serra do Eco
    .accept 3100 >>Aceite Carta Simples << Warrior
    .accept 3101 >>Aceite Carta Consagrada << Paladin
    .accept 3102 >>Aceite Carta Criptografada << Rogue
    .accept 3103 >>Aceite Carta Santificada << Priest
    .accept 3104 >>Aceite Carta Glífica << Mage
    .accept 3105 >>Aceite Carta Corrompida << Warlock
    .target Marshal McBride
step
    #loop
    .goto 1429,47.468,36.298,0
    .goto 1429,50.224,34.125,0
    .goto 1429,50.835,38.046,0
    .goto 1429,47.468,36.298,45,0
    .goto 1429,47.247,35.164,45,0
    .goto 1429,47.012,33.828,45,0
    .goto 1429,46.774,33.271,45,0
    .goto 1429,46.271,32.489,45,0
    .goto 1429,47.663,32.058,45,0
    .goto 1429,48.038,33.075,45,0
    .goto 1429,48.795,33.815,45,0
    .goto 1429,49.278,34.610,45,0
    .goto 1429,50.224,34.125,45,0
    .goto 1429,50.245,34.884,45,0
    .goto 1429,51.058,35.582,45,0
    .goto 1429,52.062,35.801,45,0
    .goto 1429,51.505,38.064,45,0
    .goto 1429,50.835,38.046,45,0
    >>Mate |cRXP_ENEMY_Operários Kobold|r
    .complete 15,1 --Kill Kobold Worker (x10)
    .mob Kobold Worker
step
    #sticky
    #label xp3
    .goto 1429,49.052,38.270,0
    .goto 1429,45.708,38.720,0
    .goto 1429,47.976,39.422,0
    .goto 1429,46.465,38.272,45,0
    .goto 1429,45.896,38.013,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,49.052,38.270,45,0
    .goto 1429,48.362,37.582,45,0
    .goto 1429,47.136,37.636,45,0
    .goto 1429,46.870,36.906,45,0
    .goto 1429,46.476,37.034,45,0
    .xp 3+1110 >>Faça grind até 1110+/1400xp
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .vendor >>|cRXP_WARN_Venda os itens de lixo|r
    .target Godric Rothgar
step
    #requires xp3
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 15 >>Entregue Investigar a Serra do Eco
    .accept 21 >>Aceite Escaramuça na Serra do Eco
    .target Marshal McBride
step << Mage
    #optional
    #completewith next
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Vá em direção à |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
step << Mage
    .goto Elwynn Forest,49.661,39.402
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
    .turnin 3104 >>Entregue Carta Glífica
    .trainer >>Treine suas magias de classe
    .target Khelden Bremen
step << Priest
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>Vá em direção à |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
step << Priest
    .goto Elwynn Forest,49.808,39.489
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
    .turnin 3103 >>Entregue Carta Santificada
    .trainer >>Treine suas magias de classe
    .target Priestess Anetta
step << Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção à |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção ao |cRXP_FRIENDLY_Irmão Samuel|r no andar de baixo << Paladin
step << Warrior
    .goto Elwynn Forest,50.242,42.287
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .turnin 3100 >>Entregue Carta Simples
    .trainer >>Treine suas magias de classe
    .target Llane Beshere
step << Paladin
    .goto Elwynn Forest,50.433,42.124
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .turnin 3101 >>Entregue Carta Consagrada
    .trainer >>Treine suas magias de classe
    .target Brother Sammuel
step
    .goto Elwynn Forest,48.171,42.943
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r do lado de fora
    .accept 18 >>Aceite Irmandade de Ladrões
    .target Deputy Willem
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Entregue Carta Corrompida
    .train 172 >>Treine |T136118:0|t [Corrupção]
    .target Drusilla La Salle
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Mate |cRXP_ENEMY_Capangas Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas Vermelhas de Burlap|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob Defias Thug
step
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .turnin 18,1 >>Entregue Irmandade de Ladrões << Rogue/Warlock
    .turnin 18,2 >>Entregue Irmandade de Ladrões << Priest
    .turnin 18,3 >>Entregue Irmandade de Ladrões << Warrior
    .turnin 18,4 >>Entregue Irmandade de Ladrões << Paladin
    .turnin 18,5 >>Entregue Irmandade de Ladrões << Mage
    .turnin 18 >>Entregue Irmandade de Ladrões
    .accept 3903 >>Aceite Madel Quintana
    .accept 6 >>Aceite Recompensa por Garrick Patatenra
    .target Deputy Willem
step << Paladin
    #completewith RestandR
    .equip 16,5579 >>|cRXP_WARN_Equipe o|r |T133052:0|t [Martelo de Guerra da Milícia]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #completewith RestandR
    .equip 16,2224 >>Equipe o |T135641:0|t [Punhal da Milícia]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Warrior
    #completewith RestandR
    .equip 16,1161 >>Equipe o |T135274:0|t [Espada Curta da Milícia]
    .use 1161
    .itemcount 1161,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .vendor >>|cRXP_WARN_Venda os itens de lixo|r
    .target Godric Rothgar
step
    #optional
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >>Entre na Mina da Serra do Eco
step
    #loop
    .goto 1429,47.784,31.540,0
    .goto 1429,48.659,29.161,0
    .goto 1429,50.491,26.867,0
    .goto 1429,47.784,31.540,30,0
    .goto 1429,47.909,30.850,30,0
    .goto 1429,48.107,30.271,30,0
    .goto 1429,48.428,30.248,30,0
    .goto 1429,48.398,29.842,30,0
    .goto 1429,48.659,29.161,30,0
    .goto 1429,48.245,28.598,30,0
    .goto 1429,48.637,27.354,30,0
    .goto 1429,48.501,26.700,30,0
    .goto 1429,49.979,25.620,30,0
    .goto 1429,50.491,26.867,30,0
    >>Mate |cRXP_ENEMY_Operários Kobold|r dentro da Mina da Serra do Eco
    .complete 21,1 --Kill Kobold Laborer (x12)
    .mob Kobold Laborer
step
    .xp 5 >>Faça grind até 5
step
    .goto Elwynn Forest,50.692,39.347
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Madel Quintana|r
    >>|cRXP_WARN_Pule a missão seguinte|r << !Priest !Mage
    .turnin 3903 >>Entregue Madel Quintana
    .accept 3904 >>Aceite Colheita da Madel << Priest/Mage
    .target Milly Osworth
step << Rogue
    .goto Elwynn Forest,50.314,39.916
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .turnin 3102 >>Entregue Carta Criptografada
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .target Jorik Kerridan
step << Priest/Mage
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    >>Saqueie |cRXP_PICK_Colheita da Madel|r no chão
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429,57.518,48.253
    >>Mate |cRXP_ENEMY_Garrick Patatenra|r. Saqueie-o para obter a |cRXP_LOOT_Cabeça|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step << !Priest !Mage
    #sticky
    .abandon 3904 >>Abandone Colheita da Madel
step
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1735 >>Faça grind até 1735+/2800xp << Paladin/Warrior/Rogue/Warlock
    .xp 5+1625 >>Faça grind até 1195+/2800xp << Mage
    .xp 5+1085 >>Faça grind até 1085+/2800xp << Priest
    .mob Defias Thug
step << Priest/Mage
    .goto Elwynn Forest,50.692,39.347
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 3904 >>Entregue Colheita da Madel
    .accept 3905 >>Aceite Manifesto das Uvas
    .target Milly Osworth
step
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .turnin 6,2 >>Entregue Recompensa por Garrick Patatenra << Warrior/Rogue/Paladin
    .turnin 6,1 >>Entregue Recompensa por Garrick Patatenra << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #label RestandR
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r no interior
    .turnin 21,1 >>Entregue Escaramuça na Serra do Eco << Rogue
    .turnin 21,2 >>Entregue Escaramuça na Serra do Eco << Warrior/Paladin
    .turnin 21,3 >>Entregue Escaramuça na Serra do Eco << !Warrior !Paladin !Rogue
    .accept 54 >>Aceite Relatório para Vila Dourada
    .target Marshal McBride
step << Priest/Mage
    #optional
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Vá para o andar de cima
step << Priest/Mage
    .goto Elwynn Forest,49.471,41.586
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Neals|r no andar de cima
    .turnin 3905,1 >>Entregue Manifesto das Uvas
    .target Brother Neals
step
    .goto Elwynn Forest,45.563,47.742
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Falcão Lencastre|r
    .accept 2158 >>Aceite Descanso e Relaxamento
    .target Falkhaan Isenstrider
step
    #completewith Goldshire
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .subzoneskip 87
step << Warrior/Rogue/Paladin
    .goto Elwynn Forest,41.706,65.544
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135255:0|t [Contrapesos Ásperos] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Paladin
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2018 >>Treine |T136241:0|t [Ferraria]
    .target Smith Argus
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135321:0|t [Gládio] |cRXP_BUY_dela se você puder pagar|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135641:0|t [Estilete] |cRXP_BUY_dela se você puder pagar|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Equipe o|r |T135641:0|t [Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_WARN_Compre um|r |T133053:0|t [Malho de Madeira] |cRXP_BUY_dela se você puder pagar|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith next
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Mage/Priest/Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,41.706,65.786
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_André Cravo|r
    .vendor >>Venda os itens de lixo
    .target Andrew Krighton
--  .money >1.0
step
    #label Goldshire
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .accept 60 >>Aceite Velas Kobold
    .target William Pestle
step
    #label GSHS
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .turnin 2158,1 >>Entregue Descanso e Relaxamento << Rogue/Warrior
    .turnin 2158,2 >>Entregue Descanso e Relaxamento << !Rogue !Warrior
    .home >>Defina sua Pedra de Regresso para Vila Dourada
    .target Innkeeper Farley
    --xx subzone not found. check ptr
step
    #optional
    .xp 6 >>Faça grind até 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .vendor 151 >>|cRXP_BUY_Compre o|r |T135641:0|t [Adagas de Arremesso Balanceadas] |cRXP_BUY_dele se você puder pagar|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para o andar de baixo
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .trainer >>Treine suas magias de classe
    .target Maximillian Crowe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    .vendor 6374 >>|cRXP_BUY_Compre o|r |T133738:0|t [Grimório do Pacto de Sangue (Ranque 1)] |cRXP_BUY_dela se você puder pagar. Caso não, compre depois|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Vá para o andar de cima da estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << Priest
	>>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin -5623 >>Entregue Em Favor da Luz
    .accept 5624 >>Aceite Vestimentas da Luz
    .trainer >>Treine suas magias de classe
step << Rogue
    .money <0.01
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>Treine suas magias de classe
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .vendor 295 >>|cRXP_BUY_Compre|r |T133995:0|t [Punhal de Dalaran] |cRXP_BUY_dele até ficar com 1 prata|r << Warrior
    .vendor 295 >>|cRXP_BUY_Compre até 20|r |T133995:0|t [Punhal de Dalaran] |cRXP_BUY_dele|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .accept 47 >>Aceite Trocando Pó de Ouro
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_Lance|r |T135929:0|t[Cura Inferior (Rank 2)] |cRXP_WARN_e|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_em|r |cRXP_FRIENDLY_Guarda Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    .waypoint Elwynn Forest,31.15,85.36,40,0
    .waypoint Elwynn Forest,33.08,86.64,40,0
    .waypoint Elwynn Forest,33.51,85.22,40,0
    .waypoint Elwynn Forest,32.17,83.88,40,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saque-os por suas |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r e |cRXP_FRIENDLY_Mama Campedra|r
    .accept 85 >>Aceite O Colar Perdido
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
    .accept 88 >>Aceite Princesa Tem Que Morrer!
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone1
    #completewith NecklaceStart
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Abra os |cRXP_PICK_Baús Danificados|r. Saque-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Abra os |cRXP_PICK_Baús Danificados|r. Saque-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone1
    #label RoughStoneCraft1
    #completewith NecklaceStart
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_em|r |T135248:0|t[Pedras de Afiar Rústicas] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_em|r |T135255:0|t[Contra-Pesos Rústicos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft1
    #completewith NecklaceStart
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na sua arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na sua arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith NecklaceStart
    .goto Elwynn Forest,37.81,85.40,0
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saque-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Torta para o Guinho
    .target Billy Maclure
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .accept 106 >>Aceite Jovens Amantes
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué Madruga|r
    .vendor >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_WARN_que você puder pagar|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Vendor trash|r << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Abra os |cRXP_PICK_Baús Danificados|r. Saque-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Abra os |cRXP_PICK_Baús Danificados|r. Saque-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone2
    #label RoughStoneCraft2
    #completewith Lovers
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_em|r |T135248:0|t[Pedras de Afiar Rústicas] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_em|r |T135255:0|t[Contra-Pesos Rústicos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft2
    #completewith Lovers
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na sua arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na sua arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith Lovers
    .goto Elwynn Forest,37.81,85.40,0
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saque-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomasino Campedra|r
    .turnin 106 >>Entregue Jovens Amantes
    .accept 111 >>Aceite Fale com a Vovó
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 86 >>Entregue Torta para o Guinho
    .accept 84 >>Aceite De Volta para o Guinho
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vovó Campedra|r dentro
    .turnin 111 >>Entregue Fale com a Vovó
    .accept 107 >>Aceite Bilhete para Durval
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Abra os |cRXP_PICK_Baús Danificados|r. Saque-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Abra os |cRXP_PICK_Baús Danificados|r. Saque-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone3
    #label RoughStoneCraft3
    #completewith Exchange
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_em|r |T135248:0|t[Pedras de Afiar Rústicas] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_em|r |T135255:0|t[Contra-Pesos Rústicos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft3
    #completewith Exchange
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na sua arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na sua arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step
    #sticky
    #label KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saque-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 84 >>Entregue De Volta para o Guinho
    .accept 87 >>Aceite Dentadouro
    .target Billy Maclure
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>Entre em um dos maiores espaços abertos em Fargodeep Mina
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto 1429,41.732,78.024
    >>Mate |cRXP_ENEMY_Dentadouro|r. Saqueie |T133970:0|t|cRXP_LOOT_Bernice's Colar|r dele
    >>|cRXP_WARN_Tenha cuidado pois ele normalmente puxa com o |cRXP_ENEMY_Minerador Kobold|r ao seu lado|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step << Warrior
    #optional
    #completewith Exchange
    +|cRXP_WARN_Tente guardar um único|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_a partir de agora pois você precisará dele para Cadáver de Rolf mais tarde|r
    .subzoneskip 87 --Goldshire
step
    .isQuestTurnedIn 5624 << Priest
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1800 >>Triture até 1800+/4500 XP
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Priest
    .isOnQuest 5624
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1460 >>Triture até 1460+/4500 XP << Priest
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 87 >>Entregue Dentadouro
    .target "Auntie" Bernice Stonefield
step
    #completewith Exchange
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Este é um item incrivelmente valioso durante todo o caminho até o nível 70|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .accept 40 >>Aceite Perigo Anfíbio
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor >>Comerciante Lixo
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135321:0|t [Gládio] |cRXP_BUY_dela se você puder pagar|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
--  .money <0.0536
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith CandlesEnd
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135641:0|t [Estilete] |cRXP_BUY_dela se você puder pagar|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--   .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dela se puder|r
    .collect 2493,1 --Collect Wooden Mallet (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0631
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #completewith CandlesEnd
    +|cRXP_WARN_Equipe o|r |T133053:0|t [Malho de Madeira]
    .use 2493
    .itemcount 2493,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.0
step << Paladin
    #optional
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
    .xp <8,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
    .xp <8,1
step
    #label CandlesEnd
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
    .turnin 107 >>Entregue Bilhete para Durval
    .accept 112 >>Aceite Coletando Alga
    .target William Pestle
step
    .xp 8 >>Suba até o nível 8
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Vá para cima na Estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.target Priestess Josetta
    .turnin 5624 >>Entregue Vestes da Luz
    .trainer >>Treine suas magias de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>Treine suas magias de classe
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para baixo na Estalagem
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >>Treine suas magias de classe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    .vendor >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório de Seta de Fogo (Rank 2)] |cRXP_BUY_dela se puder. Se não, você pode comprar depois|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step
    .goto Elwynn Forest,43.96,65.92
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .vendor >>|cRXP_WARN_Compre um|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_WARN_se necessário|r
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .vendor >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se puder|r << !Warrior !Rogue !Paladin
    .vendor >>|cRXP_BUY_Compre até 20|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_dele se puder|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Compre até 10|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_e 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se puder|r << Paladin
    .target Innkeeper Farley
step << Paladin
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
    .train 853,1
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
step
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .goto 1429,50.833,65.453,50,0
    .goto 1429,52.020,65.177,50,0
    .goto 1429,54.144,62.468,50,0
    .goto 1429,56.332,63.538,50,0
    .goto 1429,57.162,62.157,50,0
    .goto 1429,57.435,63.662,50,0
    .goto 1429,58.237,64.888,50,0
    .goto 1429,56.897,67.017,50,0
    .goto 1429,55.523,66.707,50,0
    .goto 1429,55.203,66.171,50,0
    .goto 1429,54.236,66.888,50,0
    >>Abate os |cRXP_ENEMY_Murlocs|r e os |cRXP_ENEMY_Murloc Streamrunners|r. Saque-os para obter |cRXP_LOOT_Frondes de Alga Cristal|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Abate os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Baús Amassados|r. Saque-os para obter seus |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Abate os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Baús Amassados|r. Saque-os para obter seus |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone4
    #label RoughStoneCraft4
    #completewith JasperlodeExplore
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_em|r |T135248:0|t[Pedras de Afiar Rústicas] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_em|r |T135255:0|t[Contra-Pesos Rústicos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft4
    #completewith JasperlodeExplore
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na sua arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na sua arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >>Entre na Mina Jasperlode
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Siga o caminho pelo meio para explorar Jasperlode Mina
    .complete 76,1 --Scout through the Jasperlode Mine
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Abate os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Baús Amassados|r. Saque-os para obter seus |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Abate os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Baús Amassados|r. Saque-os para obter seus |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
    .collect 2835,1 --Rough Stone (1+)
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .itemcount 2862,<1 << Rogue/Warrior --Rough Sharpening Stone (<1)
    .itemcount 3239,<1 << Paladin --Rough Weightstone (<1)
    .train 2018,3 --Blacksmithing Trained
    .mob Kobold Miner
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStone5
    #label RoughStoneCraft5
    #completewith Find
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_em|r |T135248:0|t[Pedras de Afiar Rústicas] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_a|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_em|r |T135255:0|t[Contra-Pesos Rústicos] << Paladin
    .collect 2862,5 << Rogue/Warrior --Rough Sharpening Stone (5)
    .disablecheckbox
    .collect 3239,5 << Paladin --Rough Weightstone (5)
    .disablecheckbox << Paladin
    .collect 2835,5 --Rough Stone (5)
    .disablecheckbox
    .collect 2589,1 << Paladin --Linen Cloth (1+)
    .disablecheckbox << Paladin
    .itemcount 2835,1 --Rough Stone (1+)
    .itemcount 2589,1 << Paladin --Linen Cloth (1+)
    .usespell 2018
    .train 2018,3
    .subzoneskip 54,1
step << Warrior/Paladin/Rogue
    #optional
    #requires RoughStoneCraft5
    #completewith Find
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na sua arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na sua arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    .goto 1429,61.820,53.871,15 >>Saia Jasperlode Mina
    .subzoneskip 54,1
step
    #optional
    #completewith Find
    +|cRXP_WARN_Atraia o |cRXP_ENEMY_Jovem Urso da Floresta|r para o|r |cRXP_FRIENDLY_Guarda Tomás|r
    >>|cRXP_WARN_Tente falar com o |cRXP_FRIENDLY_Guarda Tomás|r antes que o |cRXP_ENEMY_Jovem Urso da Floresta|r morra para os |cRXP_FRIENDLY_Stormwind Guards|r obter crédito de missão|r
    >>|cRXP_WARN_Garanta 51%+ de dano para obter crédito|r
    .mob Young Forest Bear
step
    #label Find
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .turnin 35 >>Entregue Mais Preocupações
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
    .target Guard Thomas
step
    #completewith AcceptBundle
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você vir|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,72.656,60.334
    >>Clique em |cRXP_PICK_Cadáver Meio Comido|r no chão
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .accept 5545 >>Aceite Um Feixe de Encrenca
    .target Supervisor Raelen
step
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricardo Fino|r
    .vendor >>Lixo Comerciante
    .target Rallic Finn
    .subzoneskip 88,1
step
    #completewith Prowlers
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você vir|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith next
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    >>Pegue os |cRXP_LOOT_Bundles of Madeira|r no chão na base das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>|cRXP_WARN_Corra no topo de |cRXP_PICK_Rolf's corpse|r, depois lance|r |T135954:0|t[Proteção Divina] |cRXP_WARN_e depois clique imediatamente|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_WARN_Corra para longe e reinicie os |cRXP_ENEMY_Murlocs|r após completar a missão|r
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step << !Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Clique em |cRXP_PICK_Cadáver de Rolf|r no chão
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Murloc Foragers|r lançarão|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_que cura 61-68 de vida|r
    >>|cRXP_WARN_Lance|r |T135953:0|t[Renovar] |cRXP_WARN_e|r |T135940:0|t[Palavra de Poder: Escudo] |cRXP_WARN_depois obtenha mana cheia. Puxe os 2 |cRXP_ENEMY_Murlocs|r à frente das cabanas, afaste-se e depois mate um. Fuja quando matar um e depois mate o outro|r << Priest
    >>|cRXP_WARN_Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e|r |T136071:0|t[Polimorfia] |cRXP_WARN_um enquanto mata o outro. Abata o|r |T136071:0|t[Polimorfado] |cRXP_WARN_depois|r << Mage
    >>|cRXP_WARN_Acumule 100 Raiva. Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_à frente das cabanas, afaste-se e mantenha|r |T132316:0|t[Cortar Tendão] |cRXP_WARN_em um enquanto mata o outro. Também use|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_no que você está matando. Fuja e reinicie a levada com|r |T132316:0|t[Cortar Tendão] |cRXP_WARN_depois de matar um|r << Warrior
    >>|cRXP_WARN_Puxar os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e foque em matar um deles. Usar|r |T136205:0|t[Evasão] |cRXP_WARN_quando ambos estiverem atacando você. Esta é uma boa oportunidade para usar|r |T133581:0|t[Bolsa of Marbles]|cRXP_WARN_. Saia correndo e resete após ter matado um|r << Rogue
    >>|cRXP_WARN_Puxar os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e lance|r |T136183:0|t[Medo] |cRXP_WARN_em um deles constantemente, e tente manter DoTs em ambos|r << Warlock
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
    #completewith BundleOT
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você vir|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #loop
    .goto Elwynn Forest,80.48,55.18,0
    .goto Elwynn Forest,80.15,60.03,0
    .goto Elwynn Forest,83.48,59.19,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,79.68,52.31,40,0
    .goto Elwynn Forest,80.86,52.17,40,0
    .goto Elwynn Forest,80.88,53.88,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,79.76,56.70,40,0
    .goto Elwynn Forest,80.15,60.03,40,0
    .goto Elwynn Forest,80.24,61.46,40,0
    .goto Elwynn Forest,81.27,61.59,40,0
    .goto Elwynn Forest,81.58,62.64,40,0
    .goto Elwynn Forest,82.79,60.12,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    .goto Elwynn Forest,81.77,59.17,40,0
    .goto Elwynn Forest,80.48,55.18,40,0
    .goto Elwynn Forest,83.25,61.12,40,0
    .goto Elwynn Forest,83.48,59.19,40,0
    >>Pegue os |cRXP_LOOT_Bundles of Madeira|r no chão na base das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .turnin 5545 >>Entregue Um Feixe de Encrenca
    .target Supervisor Raelen
step
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .accept 83 >>Aceite Mercadorias de Linho Vermelho
    .target Sara Timberlain
step
    #loop
    .goto 1429,77.499,74.518,0
    .goto 1429,80.496,78.223,0
    .goto 1429,87.342,63.763,0
    .goto 1429,77.499,74.518,55,0
    .goto 1429,77.222,77.499,55,0
    .goto 1429,78.483,79.323,55,0
    .goto 1429,80.496,78.223,55,0
    .goto 1429,81.434,76.695,55,0
    .goto 1429,87.145,69.922,55,0
    .goto 1429,87.342,63.763,55,0
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .accept 109 >>Aceite Entregar para Miguel Mantoforte
    .xp <9,1
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
step
    #completewith Deed << !Warlock
    #completewith WarlockPrincess << Warlock
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os para obter o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    .use 1972>>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    >>|cRXP_WARN_O|r |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] |cRXP_WARN_é um drop muito raro. Ignorar este passo se você não conseguir|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>Aceite Escritura do Taturana
step
    #completewith next
    >>Mate |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter suas |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label WarlockPrincess << Warlock
    .goto Elwynn Forest,69.3,79.0
    >>Mate a |cRXP_ENEMY_Princesa|r. Saqueie-a para obter o |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_atacará com ambas as suas|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_também lançará|r |T132368:0|t[Investida Impetuosa] |cRXP_WARN_que causa dano pesado|r
    >>|cRXP_WARN_Acumule 100 Raiva antes de enfrentar|r |cRXP_ENEMY_Princesa|r << Warrior
    >>|cRXP_WARN_Certifique-se de que |T136205:0|t[Evasão] |cRXP_WARN_está pronta. Se estiver com dificuldades, você pode usar a Cerca com Arremessando Armas para abusar do pathing e ganhar tempo|r << Rogue
    >>|cRXP_WARN_Esteja pronto para usar|r |T134830:0|t[Poção Inferior de Cura]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    #label Deed << !Warlock
    >>Mate |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter suas |cRXP_LOOT_Red Linen Bandanas|r
    >>|cRXP_WARN_Você não precisa completar este passo agora. Pule este passo se desejar, pois você voltará aqui novamente em breve|r << Warlock
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    .goto Elwynn Forest,69.3,79.0
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << !Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 83 >>Entregue Mercadorias de Linho Vermelho
    .target Sara Timberlain
    .isQuestComplete 83
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step << !Warlock
    .goto Redridge Mountains,10.76,77.64,0
    .goto Redridge Mountains,10.76,77.64,40,0
    .goto Redridge Mountains,15.79,64.37
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step
    #completewith ElmoresTask
    .hs >>Volte para Goldshire
step
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 112 >>Entregue Coletando Alga
    .timer 9,Coletando Alga RP
    .accept 114 >>Aceite A Fuga
    .target William Pestle
step << Paladin/Warrior/Rogue
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Vá para cima na Estalagem
step << Paladin/Warrior/Rogue
    .money <0.01 << Paladin
    .money <1 << Warrior/Rogue -- don't want them training FA unless rich alts, money too tight later
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
step << Rogue
    #optional
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    >>|cRXP_WARN_Apenas treine|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada] |cRXP_WARN_. Não treine outras habilidades para guardar seu dinheiro para depois|r
    >>|cRXP_WARN_Não se preocupe se você não tiver uma segunda arma ainda, você receberá uma muito em breve|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 39 >>Entregue O Relatório de Tomás
    .turnin 76 >>Entregue A Mina de Jaspe
    .accept 239 >>Aceite Ribeira d'Oeste Precisa de Ajuda!
    .accept 59 >>Aceite Armadura de Pano e Couro << Warlock
    .accept 109 >>Aceite Entregar para Miguel Mantoforte
    .target Marshal Dughan
step
    #label ElmoresTask
    .goto Elwynn Forest,41.706,65.544
	>>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    .accept 1097 >>Aceite Tarefa de Elmore
    .target Smith Argus
step << Warlock
    #optional
    #completewith WarlockTraining
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para baixo na Estalagem
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wagner Nascimento|r e |cRXP_FRIENDLY_Rêmulo Marcos|r
    .train 980 >>|T136139:0|t[Maldição da Agonia]
    .train 5782 >>|T136183:0|t[Medo]
    .train 6201 >>|T135230:0|t[Criar Pedra de Vida (Menor)]
    .train 696 >>|T136185:0|t[Pele de Demônio (Rank 2)]
    .train 1120 >>|T136163:0|t[Drenar Alma]
    .train 707 >>|T135817:0|t[Imolação (Rank 2)]
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >>Aceite Convocação de Gakin
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
    .xp <10,1
step << Warlock
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .train 980 >>|T136139:0|t[Maldição da Agonia]
    .train 5782 >>|T136183:0|t[Medo]
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .xp <8,1
step << Warlock
    #optional
    .goto Elwynn Forest,44.397,65.989
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Seta de Fogo (Rank 2)] |cRXP_BUY_e o|r |T133738:0|t[Grimório of Pacto de Sangue (Rank 1)] |cRXP_BUY_dela, se você puder pagar. Se não, você pode comprar depois|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0300
    .train 20270,1 --Firebolt (Rank 2)
    .train 20397,1 --Blood Pact (Rank 1)
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório de Seta de Fogo (Rank 2)] |cRXP_BUY_dela se puder. Se não, você pode comprar depois|r
    .collect 16302,1 -- Grimoire of Firebolt (Rank 2)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16302,<1 --Grimoire of Firebolt (Rank 2)
    .train 20270,1 --Firebolt (Rank 2)
step << Warlock
    #label WarlockTraining
    .goto Elwynn Forest,44.397,65.989
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    >>|cRXP_BUY_Compre o|r |T133738:0|t [Grimório do Pacto de Sangue (Ranque 1)] |cRXP_BUY_dela se você puder pagar. Caso não, compre depois|r
    .collect 16321,1 -- Grimoire of Blood Pact (Rank 1)
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Priest
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Vá para cima na Estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << Priest
    #optional
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
    .accept 5635 >>Aceite Prece Desesperada << Human/Dwarf
    .trainer >>Treine suas magias de classe
    .target Priestess Josetta
    .xp <10,1
step << Priest
    .goto Elwynn Forest,43.283,65.721
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.target Priestess Josetta
    .trainer >>Treine suas magias de classe
    .xp >10,1
    .xp <9,1
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <8,1
    .xp >10,1
step << Warrior
    #optional
    .money >1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_NÃO treine|r |T132277:0|t[Fúria Sanguinária] |cRXP_WARN_ainda, você precisa economizar um pouco do seu dinheiro para treinamento adicional em breve|r
    .trainer >>Treine suas magias de classe
    .accept 1638 >>O Treinamento do Guerreiro
    .target Lyria Du Lac
    .train 1715,1
    .train 284,1
    .xp <10,1
step << Warrior
    #optional
    .money <1.0000
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .accept 1638 >>O Treinamento do Guerreiro
    .target Lyria Du Lac
    .xp <10,1
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .turnin 114 >>Entregue A Fuga
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .turnin 88 >>Entregue Princesa tem que Morrer!
    .target Ma Stonefield
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >>Aceite Recompensa por Gnolls Riverpaw
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >>Aceite Procurado: "Porqueiro"
    .goto Elwynn Forest,24.548,74.672,-1
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >>Aceite Recompensa por Gnolls Riverpaw
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .xp 9.65,1
step << Rogue/Warrior
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >>Aceite Recompensa por Gnolls Riverpaw
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    .money >0.2600
step << !Warlock
    .solo
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda!
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
step << !Warlock
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >>Aceite Recompensa por Gnolls Riverpaw
    .goto Elwynn Forest,24.234,74.450,-1
    .target +Deputy Rainer
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >>Aceite Procurado: "Porqueiro"
    .goto Elwynn Forest,24.548,74.672,-1
step
    #completewith GnollEnd
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saque-os pela |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r]
    .use 1307 >>|cRXP_WARN_Use a |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] |cRXP_WARN_é um drop muito raro. Ignorar este passo se você não a conseguir|r
    >>|cRXP_ENEMY_Rude Mordelogo|r |cRXP_WARN_a rare spawn, does have a 100% drop chance|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>Aceite O Coletor
    .unitscan Gruff Swiftbite
step << !Warlock
    .group
    .isOnQuest 11
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter suas |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
    .group
    .isOnQuest 176
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Abate |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r.
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em vários locais|r
    >>|cRXP_WARN_Você pode arrastá-lo de volta para a torre da guarda, certifique-se de que você cause pelo menos 51% de dano a ele|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    .isOnQuest 11
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter suas |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
    .isOnQuest 176
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Abate |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r.
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em vários locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Você pode arrastá-lo de volta para a torre da guarda, certifique-se de que você cause pelo menos 51% de dano a ele|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
    .isOnQuest 11
    #label GnollEnd
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter suas |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warrior/Rogue
    .money >0.2600
    +Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r
    >>|cRXP_WARN_Triture até ter 26 prata em itens para vender/dinheiro. Isso é para treinamento de Arremesso, Maça 2h e Espada 2h. Também é para comprar uma Arma de Arremesso nível 3 e voar para Ventobravo em breve|r
    >>|cRXP_WARN_Pule manualmente este passo uma vez que tiver dinheiro suficiente|r
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    >>|cRXP_WARN_Escolha as|r |T134583:0|t[|cRXP_FRIENDLY_Perneiras da Guarda de Ventobravo|r] |cRXP_WARN_como recompensa. Você receberá uma Maça 2h muito em breve|r << Warrior
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 176 >>Entregue Wanted: "Hogger"
    .isQuestComplete 176
step << !Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 123 >>Entregue O Coletor
    .isOnQuest 123
step
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 11 >>Entregue Recompensa por Gnolls Riverpaw
    .target Deputy Rainer
    .isQuestComplete 11
step
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    >>|cRXP_WARN_Não aceite as outras missões|r
    .turnin 184 >>Entregue Escritura do Taturana
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vera Taturana|r
    >>|cRXP_WARN_Não aceite as outras missões|r
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r dentro
    >>|cRXP_WARN_Não aceite as outras missões|r
    .turnin 36 >>Entregue Ensopado de Cerro Oeste
    .target Salma Saldean
step
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >>Entregue Relatório para Gryan Mantoforte
    .target Gryan Stoutmantle
step << Human
    #optional
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .accept 6181 >>Aceite Um Recado Rápido
    .target Quartermaster Lewis
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Érica|r
    >>|cRXP_BUY_Buy up to 20|r Compre até 20[Longjaw Mud Snappers]|cRXP_BUY_from her|r
    .collect 4592,20 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
    .zoneskip Westfall,1
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >>Entregue Um Recado Rápido
    .accept 6281 >>Aceite Continue para Ventobravo
    .target Thor
step
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step << Rogue
    #optional
    .abandon 123 >>Abandone O Coletor
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos o|r |T132383:0|t[Foguetes Explosivos] |cRXP_WARN_como recompensa. Causa bom dano e pode ser usado para "Dividir puxadas", o que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência de vídeo sobre 'Divisão pulling'. É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step
    #optional << Warlock/Mage/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine Espadas de 1 Mão e Báculos << Warlock/Mage
    .trainer >>Treine Espadas de Uma Mão << Rogue
    .trainer >>Treine Cajados << Priest
    .trainer >>Treine Espadas de Duas Mãos << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, procure na Casa de Leilões por algo melhor ou mais barato|r
    >>|cRXP_WARN_Certifique-se de guardar 6s para o treinamento depois|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
step << Rogue
#ah
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, procure na Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Certifique-se de guardar 6s para o treinamento depois|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
step << Rogue
#ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
step << Rogue
    #optional
    .equip 16,851 >>|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje] |cRXP_WARN_na sua mão principal|r
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step << Rogue
    #optional
    .equip 17,2494 >>|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete] |cRXP_WARN_em sua mão secundária|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .isOnQuest 1685
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1685 >>Entregue Gakin's Summons
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #completewith WLHoggerEnd
    .deathskip >>Morra e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r usando |T136126:0|t[Conversão de Vida] e ficando na Fogueira ao seu lado
    .zoneskip Stormwind City,1
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>Viaje para Goldshire
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[Vara de Luta Balanceada]
    .turnin 176 >>Entregue Wanted: "Hogger"
    .turnin 123 >>Entregue O Coletor
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[Vara de Luta Balanceada]
    .turnin 176 >>Entregue Wanted: "Hogger"
    .target Marshal Dughan
step << Warlock
    #optional
    #completewith WLBandanaEnd
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Vara de Luta Balanceada]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #optional
    .subzone 62 >>Viaje para o Brackwell Abóbora Mathiaz
    .isOnQuest 1688
step << Warlock
    #sticky
    #label WLBandanaEnd
    #loop
    .goto Elwynn Forest,70.5,77.6,0
    .goto Elwynn Forest,70.8,80.9,0
    .waypoint Elwynn Forest,70.5,77.6,60,0
    .waypoint Elwynn Forest,68.1,77.5,60,0
    .waypoint Elwynn Forest,68.2,81.4,60,0
    .waypoint Elwynn Forest,70.8,80.9,60,0
    >>Mate |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter suas |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    .goto Elwynn Forest,71.10,80.66
    >>Mate |cRXP_ENEMY_Surena Caledon|r. Saque o |cRXP_LOOT_Choker|r dela
    >>|cRXP_WARN_Concentre-se em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 59 >>Entregue Armadura de Pano e Couro
    .turnin 83 >>Entregue Mercadorias de Linho Vermelho
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 59 >>Entregue Armadura de Pano e Couro
    .target Sara Timberlain
step << Warlock
    #optional
    #completewith TheBinding
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    >>|cRXP_WARN_Triturar no caminho. Certifique-se de que você tem no mínimo 2|r |T134075:0|t[Estilhaços de Alma] |cRXP_WARN_usando|r |T136163:0|t[Drenar Alma]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Encroaching Gnolls
    .target Guard Parker
step << Warlock
    #softcore
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_Cuidado com os inimigos no caminho|r
    .turnin 244 >>Entregue Encroaching Gnolls
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1688 >>Entregue Surena Caledon
    .accept 1689 >>Aceite A vinculação
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 7728 >>|cRXP_WARN_Use o|r |T133292:0|t[Gargantilha de Pedra-sangrenta] |cRXP_WARN_para chamar um|r |cRXP_ENEMY_Emissário do Caos Invocado|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>Mate o |cRXP_ENEMY_Emissário do Caos Invocado|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>Entregue A Vinculação
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilsa Corbin|r no andar superior
    >>|cRXP_WARN_Você deve guardar 20 prata para treinamento de Maça 2h e Arremesso em Ironforge!|r
    .trainer >>Treine suas magias de classe
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .accept 1638 >>Aceite Treinamento do Guerreiro
    .target Ilsa Corbin
    .train 6546,1
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Osric Strang|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    .target Osric Strang
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1638 >>Entregue Treinamento do Guerreiro
    .accept 1639 >>Aceite Bartolino o Bêbado - Missão
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1639 >>Entregue Bartolino o Bêbado - Missão
    .accept 1640 >>Aceite Derrote Bartolino - Missão
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Ataque |cRXP_ENEMY_Bartolino|r. Ele se renderá em 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >>Entregue Derrote Bartolino - Missão
    .accept 1665 >>Aceite Caneca do Bartolino
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1665 >>Entregue Caneca do Bartolino
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto StormwindClassic,42.51,33.51,20 >>Entre na Catedral de Ventobravo
step << Priest
    #optional
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .turnin 5635 >>Entregue Prece Desesperada
    .train 8092 >>Treine suas magias de classe
    .target High Priestess Laurena
    .isOnQuest 5635
step << Human Priest/Dwarf Priest
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .turnin 5634 >>Entregue Prece Desesperada
    .train 8092 >>Treine suas magias de classe
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto StormwindClassic,38.54,26.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .trainer >>Treine suas magias de classe
    .target High Priestess Laurena
    .train 13908,3
step << Warrior/Paladin/Rogue
    .goto Stormwind City,51.192,17.309
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gelman Stonehand|r
    .train 2575 >>Aprenda |T134708:0|t[Mineração]
    >>|cRXP_WARN_Isto é usado em conjunto com|r |T136241:0|t[Ferraria] |cRXP_WARN_para fazer|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_e|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_para aumentar seu dano de arma|r
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .target Gelman Stonehand
    .train 2018,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step << Warrior/Paladin/Rogue
    #optional
    #completewith EnterIF
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining Trained
step << Warrior/Paladin/Rogue
    #optional
    .goto Stormwind City,51.021,16.862
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brooke Stonebraid|r
    .collect 2901,1 >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dela|r
    .target Brooke Stonebraid
    .train 2575,3 --Blacksmithing
    .money <0.2100 << Warrior -- needs to train 2h mace + thrown + buy throwing weps in IF
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >>Entregue Tarefa de Elmore
    .accept 353 >>Aceite Entrega para Lançatroz
    .target Grimand Elmore
step
    #completewith EnterIF
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Ironforge
step
    #optional
    >>|cRXP_WARN_Pegue o Deeprun Tram para o lado de Ironforge|r
    >>|cRXP_WARN_Aumente seu nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto aguarda o Tram para Ironforge se necessário|r
    >>|cRXP_WARN_Você precisará de seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar no nível 80 para uma missão no nível 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Use|r |T136221:0|t[Evocar Emissário do Caos] |cRXP_WARN_e|r |T135230:0|t[Criar Pedra de Vida] |cRXP_WARN_enquanto aguarda o Tram para Ironforge se necessário|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio no lado de Ironforge do Deeprun Tram
    .accept 6661 >>Aceite Ratos de Porão
    .target Monty
    .skill firstaid,<1,1
step
    #optional
    >>|cRXP_WARN_Pegue o Deeprun Tram para o lado de Ironforge|r
    >>|cRXP_WARN_Você precisará de seu|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar no nível 80 para uma missão no nível 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Use|r |T136221:0|t[Evocar Emissário do Caos] |cRXP_WARN_e|r |T135230:0|t[Criar Pedra de Vida] |cRXP_WARN_enquanto aguarda o Tram para Ironforge se necessário|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio no lado de Ironforge do Deeprun Tram
    .accept 6661 >>Aceite Ratos de Porão
    .target Monty
step
    .use 17117 >>|cRXP_WARN_Use a|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_nos |cRXP_ENEMY_Ratos Deeprun|r dentro do Deeprun Tram|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r dentro do Deeprun Tram
    .turnin 6661 >>Virar em Ratos de Porão
    .target Monty
step
    #label EnterIF
    .zone Ironforge >>Entre em Ironforge
step << skip
    .link https://www.youtube.com/watch?v=M_tXROi9nMQ >>https://www.youtube.com/watch?v=M_tXROi9nMQ >> Clique aqui para pular o logout dentro do bonde
    .goto Ironforge,77.0,51.0
    .zone Ironforge >>Entre em Ironforge
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >>Entre no edifício Timberline Armas
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r e |cRXP_FRIENDLY_Bulif Manopedra|r
    .train 2567 >>Treine Arremesso
    .goto Ironforge,62.237,89.628
    .target +Bixi Wobblebonk
    .train 199 >>Treine Maças de Duas Mãos
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre as|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre as|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre as|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Warrior
#xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre as|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Warrior
    #optional
    #completewith Rudra
    +|cRXP_WARN_Equipe as|r |T135641:0|t[Adagas de Arremesso Balanceadas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith Rudra
    .goto 1455,61.356,88.398,6 >>Saia do edifício Timberline Armas
step << Warrior
    .money <0.06
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    >>|cRXP_WARN_Se você não tiver dinheiro suficiente, não é grande coisa|r
    .train 6546 >>Treine |T132155:0|t[Dilacerar (Rank 2)]
    .train 2687 >>Treine |T132277:0|t[Fúria Sanguinária]
    .target Bilban Tosslespanner
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step
#xprate <1.5
#ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre os itens a seguir para entregar mais rápido em Loch Modan em breve:|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|T134342:0|t[Intestinos de Javali]
    >>|T134027:0|t[Carne de Urso]
    >>|T134437:0|t[Ícor de Aranha]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .isQuestAvailable 418
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Ironforge,1
step
#xprate >1.49
    .goto Ironforge,60.072,36.416
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daryl Ricinum|r
    .target Daryl Riknussun
    .train 2550 >>Treine |T133971:0|t[Culinária]
step << Warrior/Paladin/Rogue
#xprate >1.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Geofram Digisseixo|r no andar de baixo do prédio
    .goto Ironforge,51.8,29.5,15,0
    .goto Ironforge,49.6,28.2,12,0
    .goto Ironforge,49.9,26.3
    .train 2575 >>Aprenda |T134708:0|t[Mineração]
    .target Geofram Bouldertoe
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
#xprate >1.49
    #optional
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
#xprate >1.49
#ah
    #sticky
    #optional
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
step
#xprate >1.49
#ah
    #sticky
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)

--
--

step
#xprate <1.5
    .goto Ironforge,18.14,51.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Aguardente|r
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step
#xprate <1.5
    #optional
    #completewith Dirt
    .goto 1426,53.47,35.02
    >>Saia de Altaforja
    .zone Dun Morogh >>Vá para Dun Morogh
step
#xprate <1.5
    #optional
    #label Dirt
    #completewith Rudra
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Suba o caminho de terra
    .isQuestAvailable 314
step
#xprate <1.5
    #completewith VagashEnd
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_Leve |cRXP_ENEMY_Ragash|r para|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLIQUE AQUI Se você está tendo dificuldades|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .mob Vagash
step << Warrior/Rogue
#xprate <1.5
    #optional
    #requires Dirt
    #completewith VagashEnd
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
#xprate <1.5
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
#xprate <1.5
    #label VagashEnd
    .goto 1426,62.778,54.591,0
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Abate |cRXP_ENEMY_Ragash|r. Saqueie-o para obter sua |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Leve-o até o guarda ao sul da fazenda. Certifique-se de causar 51%+ de dano a ele|r
    >>|cRXP_WARN_Vigie o vídeo abaixo antes de tentar matar |cRXP_ENEMY_Ragash|r. Pode ser derrotado sozinho em qualquer classe|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
#xprate <1.5
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Senator Mehr Stonehallow|r e |cFF00FF25Foreman Stonebrow|r
    .accept 433 >>Aceite O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
#xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Dank Drizzlecut|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Aprenda |T134708:0|t[Mineração]
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
#xprate <1.5
    #optional
    #completewith QuarryEnd
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
#xprate <1.5
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Abate os |cRXP_ENEMY_Rockjaw Skullthumpers|r e os |cRXP_ENEMY_Rockjaw Bonesnappers|r dentro da caverna
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
#xprate <1.5
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r e o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
    .turnin 433 >>Entregue O Funcionário Público
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step << !Warrior !Rogue !Paladin
#xprate <1.5
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .target Kazan Mogosh
    .xp >15,1
step
#xprate <1.5
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cFF00FF25Cook Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step
#xprate <1.5
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step
#xprate <1.5
    .goto Dun Morogh,79.672,36.171
    >>Clique em |cRXP_PICK_Cadáver Anão|r no chão
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
#xprate <1.5
    .goto Dun Morogh,78.97,37.14
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie a |cRXP_LOOT_Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
#xprate <1.5
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417,1 >>Entregue A Vingança do Piloto << Rogue
    .turnin 417 >>Entregue A Vingança do Piloto << !Rogue
    .target Pilot Hammerfoot
step
#xprate <1.5
    .goto Dun Morogh,84.4,31.1,25 >>Passe pelo túnel para Loch Modan
    .zoneskip Loch Modan

--
--

step
#xprate >1.49
    .goto 1426,53.042,35.383
    .zone Dun Morogh >>Saia de Altaforja
step
#xprate >1.49
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >>Vá para Dun Morogh -> local de deathskip em Pantanal
step
#xprate >1.49
    .goto Dun Morogh,31.51,29.99,20,0
    .goto Dun Morogh,32.4,29.1,20 >>Siga pela montanha até o local de deathskip
step
#xprate >1.49
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >>Corra direto para fora da borda para o norte e caia. Morra e ressurja no |cRXP_FRIENDLY_Anjo da Cura|r
step
#xprate >1.49
    #completewith next
    .goto Wetlands,11.95,50.24,80 >>Nade em direção à margem perto de Menethil Harbor
    .subzoneskip 150 --Menethil Harbor
step
#xprate >1.49
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neal Allen|r no andar inferior do quartel
    .vendor 1448 >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
#xprate >1.49
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >>Saia de Menethil Keep
    .subzoneskip 2103,1 --Menethil Keep
step
#xprate >1.49
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r do lado de fora
    .fp Wetlands >>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step
#xprate >1.49
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dewin Shimmerdawn|r dentro
    .vendor 1453 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Dewin Shimmerdawn
step
#xprate >1.49
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Viaje até a doca para pegar o barco para Auberdine
    .zoneskip Darkshore
step
#xprate >1.49
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
step
#xprate >1.49
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
step
#xprate >1.49
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
step
#xprate >1.49
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
step
#xprate >1.49
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
step
#xprate >1.49
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
step
#xprate >1.49
    #optional
    .goto 1437,4.370,56.762
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para Costa Negra
    .zone Darkshore >>Pegue o barco para Costa Negra
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
#xprate >1.49
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >>Pegue o barco para Costa Negra
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance
#xprate <1.5
#name 11-12 Loch Modan << !Warlock
#name 12-14 Loch Modan << Warlock
#subgroup RestedXP Aliança 1-20
#defaultfor Human
#next 12-14 Costa Negra << Warlock
#next 12-14 Costa Negra << !Warlock

step
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vá ao Comerciante e repare se necessário|r
    .target Gothor Brumn
step
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 353 >>Entregue Entrega para Lançatroz
    .accept 307 >>Aceite Patas Nojentas << Warlock/Mage/Rogue
    .target Mountaineer Stormpike
step << !Warlock !Mage !Rogue
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Warlock/Mage/Rogue
    #optional
    #completewith FlyIF
    .goto Loch Modan,28.14,18.29
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .itemcount 3172,3 -- Boar Intestines (3)
    .itemcount 3173,3 -- Bear Meat (3)
    .itemcount 3174,3 -- Spider Ichor (3)
    .target Vidra Hearthstove
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    .abandon 1338 >>Abandone Ordens dos Lançatroz. Isto é para desbloquear Tarefa do Montanhista Lançatroz que dará um envio gratuito de 550xp
step << Warlock/Mage/Rogue
    #optional
    #completewith StormpikeO
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    >>|cRXP_WARN_Save any|r a|cRXP_LOOT_[Chunks of Boar Meat]|r|cRXP_WARN_to use for leveling|r |T133970:0|t[Cooking]|cRXP_WARN_Mais tarde|r
    .subzoneskip 144
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    .subzone 144 >>Voe para Thelsamar
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >>|cRXP_BUY_Compre até 2|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_dela se necessário|r
    .target Yanni Stoutheart
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .vendor 6734 >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_. Tenha cerca de 20|r << Rogue
    .vendor 6734 >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_. Tenha cerca de 10|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e 20|r |T132815:0|t[Leite Gelado] << Mage/Warlock
    .target Innkeeper Hearthstove
    .subzoneskip 144,1
step << Warlock/Mage/Rogue
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .accept 416 >>Aceite Pegando Ratos
    .accept 1339 >>Aceite Tarefa do Montanhista Lançatroz
    .target Mountaineer Kadrell
step << Warlock/Mage/Rogue
    #optional
    #completewith SilverStream
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 149 --Silver Stream Mine
step << Warlock/Mage/Rogue
    #completewith SilverStream
    >>Mate os |cRXP_ENEMY_Ratos do Túnel|r. Saque-os pelos seus |cRXP_LOOT_Orelhas de Rato do Túnel|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Warlock/Mage/Rogue
    #label SilverStream
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >>Entre na Mina do Riacho Prateado
step << Warlock/Mage/Rogue
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r. Saqueie-os para o |cRXP_LOOT_Miners' Equipamento|r
    >>|cRXP_WARN_Os |cRXP_PICK_Caixotes da Liga dos Mineiros|r podem ser encontrados por toda a Mina|r
    .complete 307,1 -- Miners' Gear (4)
step << Warlock/Mage/Rogue
    #optional
    #completewith FilthyMountaineer
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step << Warlock/Mage/Rogue
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mate os |cRXP_ENEMY_Tunnel Ratos|r. Saqueie-os pelas |cRXP_LOOT_Orelhas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step << Warlock/Mage/Rogue
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Vá ao Comerciante e repare se necessário|r
    .target Gothor Brumn
step << Warlock/Mage/Rogue
    #label FilthyMountaineer
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .turnin 1339 >>Entregue Montanhista Lançatroz's Task
    .target Mountaineer Stormpike
step << Warlock/Mage/Rogue
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
    .collect 3173,3,418,1 --Bear Meat (3)
    .mob +Elder Black Bear
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7,90,0
    .goto Loch Modan,30.9,10.6,90,0
    .goto Loch Modan,28.6,15.4,90,0
    .goto Loch Modan,30.5,26.6,90,0
    .goto Loch Modan,33.4,30.3,90,0
    .goto Loch Modan,39.4,33.3,90,0
    .goto Loch Modan,26.9,10.7
    .collect 3172,3,418,1 --Boar Intestines (3)
    .mob +Mountain Boar
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9,90,0
    .goto Loch Modan,37.1,39.8,90,0
    .goto Loch Modan,29.8,35.9,90,0
    .goto Loch Modan,27.7,25.3,90,0
    .goto Loch Modan,28.6,22.6,90,0
    .goto Loch Modan,38.0,34.9
    .collect 3174,3,418,1 --Spider Ichor (3)
    .mob +Forest Lurker
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4,90,0
    .goto Loch Modan,28.0,20.6,90,0
    .goto Loch Modan,33.8,40.5,90,0
    .goto Loch Modan,36.2,30.9,90,0
    .goto Loch Modan,39.0,32.1,90,0
    .goto Loch Modan,31.9,16.4
step << Warlock/Mage/Rogue
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>O |cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada em Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Rato Pegando
step << Warlock/Mage/Rogue
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Isto é utilizado para preparar|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em barcos ou bondes para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- step only displays if skill is 1 or higher
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r do lado de fora
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .target Thorgrum Borrelson
step << !Warlock
    .hs >>Voe para Ironforge
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << !Warlock
    #label FlyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r do lado de fora
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>Corra para cima pelo caminho de terra, depois desça para o bunker
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r no bunker
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step << Warlock
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step << Warlock
    .goto Loch Modan,27.33,56.70
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os pelos seus |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << Warlock
    #completewith TroggT
    .money >0.7150
    .goto Loch Modan,27.33,56.70
    +Triture os |cRXP_ENEMY_Troggs|r até ter 71 prata 50 cobre de sucata para vender/dinheiro, depois entregue as missões
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 13+9600 >>Triture até 9600+/11400xp
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>Corra para cima pelo caminho de terra, depois desça para o bunker
step << Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step << Warlock
    #label TroggT
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step << Warlock
    .goto Loch Modan,27.33,56.70
    .xp 14 >>Triture até o nível 14
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step << Warlock
    .hs >>Voe para Ironforge
    .cooldown item,6948,>2,1
    .zoneskip Loch Modan,1
    .bindlocation 1537
step << Warlock
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r do lado de fora
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
    .zoneskip Loch Modan,1
step << Paladin
    #optional
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brandur Ferromalho|r dentro
    .trainer >>Treine suas magias de classe
    .target Brandur Ironhammer
    .xp <12,1
step << Rogue
    #optional
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r
    .trainer >>Treine suas magias de classe
    .target Fenthwick
    .xp <12,1
step << Warrior
    #optional
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
    .xp <12,1
step << Mage/Priest/Warlock
#ah
    #sticky
    #label AH1
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>|cRXP_BUY_Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_se custar menos de 30 prata 6 cobre|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7579 << Warlock/Mage
step
#ah
    #sticky
    #label AH2
    #optional
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
step
#ah
    #sticky
    #label AH3
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .train 2550,1 -- skips if cooking is trained (Apprentice)
    .train 3102,1 -- skips if cooking is trained (Journeyman)
step
    #requires AH1
step
    #requires AH2
step
    #requires AH3
step << Mage/Priest/Warlock
    #optional
    +|cRXP_WARN_Equipe o|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .xp <13,1
step << Priest/Warlock/Mage
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harick Batesseixo|r embaixo
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dele|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7579 << Warlock
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Priest/Warlock/Mage
    #optional
    #completewith next
    +|cRXP_WARN_Lembre-se de equipar o|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_mais tarde quando você atingir o nível 15|r
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
step << Warlock
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor >>|cRXP_BUY_Compre|r |T133738:0|t[Grimório of Consumir Sombras (Rank 1)] |cRXP_BUY_e|r |T133738:0|t[Grimório de Sacrificar (Rank 1)] |cRXP_BUY_se você puder pagar|r
    .target Jubahl Corpseseeker
step << Priest
    #optional
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron
    .xp <12,1
step << Mage
    #optional
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
    .xp <12,1
step
    .goto 1426,53.042,35.383
    .zone Dun Morogh >>Saia de Altaforja
step
    #completewith next
    .goto Dun Morogh,30.9,33.1,20 >>Vá para Dun Morogh -> local de deathskip em Pantanal
step
    .goto Dun Morogh,31.51,29.99,20,0
    .goto Dun Morogh,32.4,29.1,20 >>Siga pela montanha até o local de deathskip
step
    .goto Dun Morogh,33.0,27.2,20,0
    .goto Dun Morogh,33.0,25.2,20,0
    .goto Wetlands,11.727,43.306
    .deathskip >>Corra direto para fora da borda para o norte e caia. Morra e ressurja no |cRXP_FRIENDLY_Anjo da Cura|r
step
    #completewith next
    .goto Wetlands,11.95,50.24,80 >>Nade em direção à margem perto de Menethil Harbor
    .subzoneskip 150 --Menethil Harbor
step
    .goto Wetlands,10.4,56.0,15,0
    .goto Wetlands,10.1,56.9,15,0
    .goto Wetlands,10.6,57.2,15,0
    .goto 1437,10.760,56.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neal Allen|r no andar inferior do quartel
    .vendor 1448 >>|cRXP_WARN_Compre um|r |T133024:0|t[Tubo de Bronze] |cRXP_BUY_dele (se estiver disponível)|r
	.target Neal Allen
    .bronzetube
    .money <0.08
step
    #optional
    #completewith next
    .goto 1437,10.233,56.201,15 >>Saia de Menethil Keep
    .subzoneskip 2103,1 --Menethil Keep
step
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r do lado de fora
    .fp Wetlands >>Pegue a rota de voo de Pantanal
    .target Shellei Brondir
step
    .goto Wetlands,7.95,56.38
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dewin Shimmerdawn|r dentro
    .vendor 1453 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Dewin Shimmerdawn
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Viaje até a doca para pegar o barco para Auberdine
    .zoneskip Darkshore
step
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
step
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
step
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
step
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
step
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
step
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
step
    #optional
    .goto 1437,4.370,56.762
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para Costa Negra
    .zone Darkshore >>Pegue o barco para Costa Negra
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    .zone Darkshore >>Pegue o barco para Costa Negra
]])

RXPGuides.RegisterGuide([[
#tbc
#wotlk
#version 7
#group Guia RestedXP TBC (A)
<< Alliance Warlock
#xprate <1.5
#name 12-14 Costa Negra
#subgroup RestedXP Aliança 1-20
#defaultfor Human Warlock
#next 14-20 Névoa Rubra

step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gubber Blump|r
    .goto Darkshore,36.096,44.931
    .accept 1141 >>Aceite Vara de canoeiro, prefere pescar
    .turnin 1141 >>Entregue Vara de canoeiro, prefere pescar
    .itemcount 12238,6 -- Darkshore Grouper (6)
    .target Gubber Blump
step
    #optional
    .goto 1439,36.767,44.285
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laird|r
    >>Compre até 20 [Pargo-da-lama Bocalonga] dele
    .collect 4592,15 --Longjaw Mud Snapper (40)
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
step
    .goto Darkshore,36.336,45.574
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caylais Plumaluna|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
    .zoneskip Darkshore,1
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
    #requires BuzzBox1
    .goto 1439,36.634,46.250
    >>Clique na |cRXP_PICK_Caixazorra 827|r que está no chão
    .turnin 983 >>Entregue Caixazorra 827
step
    #label FirstWashed
    .goto 1439,36.701,45.122,8,0
    .goto 1439,36.621,45.596
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gwennyth Bly'Leggonde|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
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
    #optional
    #sticky
    .abandon 1001 >>Abandone Buzzbox 411. Você não completará esta missão
step
    #optional
    #sticky
    .abandon 4681 >>Abandone Trazida pela Água. Você não completará esta missão
step
    #optional
    .goto Darkshore,30.749,40.995
    >>Evolua sua [Primeiros Socorros] enquanto espera pelo barco para a Ilha Névoa Lazúli
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
    .skill firstaid,75,1 -- shows if firstaid is <75
    .skill firstaid,<1,1 -- shows if firstaid is >1
step
    .goto Darkshore,30.749,40.995
    .zone Azuremyst Isle >>Pegue o barco para a Ilha Névoa Lazúli
]])
