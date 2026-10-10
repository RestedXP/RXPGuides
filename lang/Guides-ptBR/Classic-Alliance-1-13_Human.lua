if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
<< Alliance
#name 1-6 Northshire
#version 1
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#defaultfor Human
#next 6-11 Elwynn Forest


step << !Human
    #completewith next
    +Você selecionou um guia destinado a Humanos. Você deve escolher a zona inicial que corresponda à zona em que você começa
step << Mage
    #completewith next
    +Observe que você selecionou o guia de Mago de alvo único. Alvo único é muito mais seguro que Mago de AdE, mas muito mais lento
step << !Human Mage
    #season 2
    #completewith next
    +Em Season of Descoberta, você NÃO deveria começar fora da zona inicial da sua raça como um Mago, pois você será incapaz de obter sua primeira runa aqui (|T135844:0|t[Lança de Gelo])
step
    #softcore << Warlock
    #optional
    #completewith Within
    .destroy 6948 >>Exclua a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessário
step << Warlock
    #season 2
    #sticky
    #label WarlockVendor << Human
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dimas Victório|r
    .vendor >>|cRXP_WARN_Venda sua Armadura Corporal, Camisa, Calças e Botas junto com a Comida e Água nas suas bolsas. Você precisa de 10c no total|r
    .target Dane Winslow
step << Human Warlock
    #season 2
    #loop
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
    .xp 2 >>Farme até o nível 2
    .mob Young Wolf
step << Warlock
    #season 0,1
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dimas Victório|r
    .vendor >>|cRXP_WARN_Venda sua Armadura Corporal, Camisa, Calças e Botas junto com a Comida e Água nas suas bolsas. Você precisa de 10c no total|r
    .target Dane Winslow
step << Warlock
    #season 0,1
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >>Aceite O Tomo Roubado
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Drusilla La Salle
step << Warlock
    #season 2
    #requires WarlockVendor << Human
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >>Aceite O Tomo Roubado
    .accept 77621 >>Aceite Poder Roubado << Human
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Drusilla La Salle
step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_Evite cuidadosamente quantos |cRXP_ENEMY_Capangas Defias|r você puder no caminho para o |cRXP_PICK_Defias Stashbox|r
    >>|cRXP_WARN_Abata os |cRXP_ENEMY_Capangas Defias|r ao redor do |cRXP_PICK_Defias Stashbox|r
    >>|cRXP_WARN_Abra o |cRXP_PICK_Defias Stashbox|r no chão. Saque-o para obter |T134419:0|t|cRXP_LOOT_[Runa da Assombração]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    #label RoH
    .train 403919 >>|cRXP_WARN_Use a |T134419:0|t|cRXP_LOOT_[Runa da Assombração]|r |cRXP_WARN_para aprender |T236298:0|t[Assombrar]|r
    .use 205230
    .itemcount 205230,1
step << Warlock
    #hardcore
--   .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Corra para dentro da Tenda no Acampamento Défias|r
    >>Abra os |cRXP_PICK_Livros Roubados|r. Saque-os para obter o |cRXP_LOOT_Poderes do Caos|r
    >>|cRXP_WARN_Você pode saquear o |cRXP_LOOT_Powers of the Caos|r com segurança enquanto está dentro da Tenda! Assista ao vídeo sobre como fazer isso|r
    .link https://youtu.be/3qQwsJhAZIk >>https://youtu.be/3qQwsJhAZIk >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #hardcore
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_Permaneça dentro da Tenda para que os |cRXP_ENEMY_Capangas Defias|r não possam acertá-lo|r
    .hs >>Volte para Northshire Valley
step << Warlock
    #softcore
--  .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Corra para dentro da Tenda no Acampamento Défias|r
    >>Abra os |cRXP_PICK_Livros Roubados|r. Saque-os para obter o |cRXP_LOOT_Poderes do Caos|r
    >>|cRXP_WARN_Você pode saquear o |cRXP_LOOT_Powers of the Caos|r com segurança enquanto está dentro da Tenda! Assista ao vídeo sobre como fazer isso|r
    .link https://www.youtube.com/watch?v=_-KEke9Yeik >>https://www.youtube.com/watch?v=KEke9Yei >> |cRXP_WARN_Clique aqui para referência em vídeo|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << Warlock
    #season 0,1
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >>Entregue O Tomo Roubado
    .target Drusilla La Salle
step << Warlock
    #season 2
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >>Entregue O Tomo Roubado
    .turnin 77621 >>Entregue Poder Roubado << Human
    .target Drusilla La Salle
step << Human Warlock
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .itemStat 10,LEVEL,<5
    .train 403919,3
step << Human Warlock
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Grave |T132961:0|t[Luvas de Tecido Esfarrapado] |cRXP_WARN_com |T236298:0|t[Assombrar]|r
    .train 403919,3
step << Warlock
    #optional
    #completewith next
    .cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t [Invocar Diabrete]
    .usespell 688
step
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .accept 783 >>Aceite Uma Ameaça Interior
    .target Deputy Willem
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Mate |cRXP_ENEMY_Lobos Jovens|r até ter 10c+ em itens de lixo para vender
    >>|cRXP_WARN_Você irá treinar|r |T132333:0|t [Grito de Guerra] |cRXP_WARN_que aumenta a velocidade de progressão nos níveis iniciais|r
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    #label Within
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
    #label EaganWolves
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
    >>Lixo de Mercador
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
    #xprate >1.59
    #optional
    #completewith next
    .goto 1429,45.718,40.733,0
    .xp 3+720 >>Farme até 720+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step
    #requires WolfMeatEnd
    .goto Elwynn Forest,48.941,40.166
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 33,2 >>Entregue Lobos Além da Fronteira << Warrior/Paladin/Rogue
    .turnin 33,1 >>Entregue Lobos Além da Fronteira << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step
    #xprate >1.59
    #optional
    #loop
    .goto 1429,45.718,40.733,0
    .goto 1429,47.976,39.422,45,0
    .goto 1429,47.703,40.299,45,0
    .goto 1429,46.741,40.987,45,0
    .goto 1429,46.399,41.838,45,0
    .goto 1429,45.718,40.733,45,0
    .goto 1429,46.302,39.994,45,0
    .goto 1429,45.708,38.720,45,0
    .goto 1429,45.896,38.013,45,0
    .xp 3+1060 >>Farme até 1060+/1400xp
    .mob Young Wolf
	.mob Timber Wolf
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith CleanupEnd
    +|cRXP_WARN_Triture e venda lixo até que você tenha 1s 35c|r
    .money >0.0135
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement
    .isOnQuest 7
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    >>Lixo de Mercador
    >>|cRXP_BUY_Compre mais 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    >>|cRXP_WARN_Certifique-se de guardar 10c ou mais para depois|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto Elwynn Forest,47.691,41.417
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .vendor >>Lixo de Mercador
    .target Godric Rothgar
step << Rogue
    #season 0,1
    .goto Elwynn Forest,47.240,41.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Janos Punhoforte|r
    .vendor 78 >>|cRXP_BUY_Compre um|r |T135650:0|t [Punhal] |cRXP_BUY_com ele se você puder pagar|r
    .collect 2139,1 -- Dirk (1)
    .disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step << Rogue
    #season 0,1
    #completewith next
    +Equipe o|cRXP_WARN_ |T135650:0|t [Punhal]|r
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.2
step
    #label CleanupEnd
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
step << Paladin/Warrior
    #xprate >1.59
    #optional
    #completewith next
    +|cRXP_WARN_Triture e venda lixo até que você tenha 2s 10c|r
    .money >0.0210
    .train 100,1 << Warrior --Charge
    .train 20271,1 << Paladin --Judgement



----Start of 2x level 4 training----




step << Mage
    #xprate >1.59
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
    #xprate >1.59
    #season 0,1
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >>Entregue Carta Glífica
    .trainer >>Treine suas magias de classe
    .target Khelden Bremen
step << Mage
    #xprate >1.59
    #season 2
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >>Entregue Carta Glífica
    .accept 77620 >>Aceite Pesquisa de Feitiços << Human Mage
    .trainer >>Treine suas magias de classe
    .target Khelden Bremen
step << Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>Vá em direção à |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
step << Priest
    #xprate >1.59
    #season 0,1
    .goto Elwynn Forest,49.808,39.489
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
    .turnin 3103 >>Entregue Carta Santificada
    .trainer >>Treine suas magias de classe
    .target Priestess Anetta
step << Priest
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
    .turnin 3103 >>Entregue Carta Santificada
    .accept 77619 >>Aceite Meditação da Luz << Human Priest
    .trainer >>Treine suas magias de classe
    .target Priestess Anetta
step << Warrior/Paladin
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção à |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção ao |cRXP_FRIENDLY_Irmão Samuel|r no andar de baixo << Paladin
step << Warrior
    #xprate >1.59
    #season 0,1
    .goto Elwynn Forest,50.242,42.287
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .turnin 3100 >>Entregue Carta Simples
    .trainer >>Treine suas magias de classe
    .target Llane Beshere
step << Warrior
    #xprate >1.59
    #season 2
    .goto Elwynn Forest,50.242,42.287
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .turnin 3100 >>Entregue Carta Simples
    .accept 77616 >>Aceite A Runa Perdida << Human
    .trainer >>Treine suas magias de classe
    .target Llane Beshere
step << Paladin
    #xprate >1.59
    #season 0,1
    .goto Elwynn Forest,50.433,42.124
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .turnin 3101 >>Entregue Carta Consagrada
    .trainer >>Treine suas magias de classe
    .target Brother Sammuel
step << Human Priest
    #xprate >1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>Vá em direção à |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
step << Warlock
    #xprate >1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Entregue Carta Corrompida
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Drusilla La Salle



----End of 2x training section----




step
    #season 0,1 << Priest/Warrior
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



----Start of 1x train section----




step
    #xprate <1.59
    #requires Memory << Priest --Season 2
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
    #xprate <1.59
    #season 0,1 << Warrior
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    .target Godric Rothgar
--N need SoM xp note
step
    #xprate <1.59
    #requires xp3
    #label Investigate
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 15 >>Entregue Investigar a Serra do Eco
    .accept 21 >>Aceite Escaramuça na Serra do Eco
    .target Marshal McBride
step << Mage
    #xprate <1.59
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
    #xprate <1.59
    #season 0,1
    .goto Elwynn Forest,49.661,39.402
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
    .turnin 3104 >>Entregue Carta Glífica
    .trainer >>Treine suas magias de classe
    .target Khelden Bremen
step << Priest
    #xprate <1.59
    #optional
    #completewith next
    .goto Elwynn Forest,49.3,40.7,15,0
    .goto Elwynn Forest,49.8,40.2,10 >>Vá em direção à |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
step << Priest
    #xprate <1.59
    #season 0,1
    .goto Elwynn Forest,49.808,39.489
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
    .turnin 3103 >>Entregue Carta Santificada
    .trainer >>Treine suas magias de classe
    .target Priestess Anetta
step << Warrior/Paladin
    #xprate <1.59
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção à |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção ao |cRXP_FRIENDLY_Irmão Samuel|r no andar de baixo << Paladin
step << Warrior
    #xprate <1.59
    #season 0,1
    .goto Elwynn Forest,50.242,42.287
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .turnin 3100 >>Entregue Carta Simples
    .trainer >>Treine suas magias de classe
    .target Llane Beshere
step << Paladin
    #xprate <1.59
    #season 0,1
    .goto Elwynn Forest,50.433,42.124
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .turnin 3101 >>Entregue Carta Consagrada
    .trainer >>Treine suas magias de classe
    .target Brother Sammuel
step
    #xprate <1.59
    #season 0,1 << Warrior
    .goto Elwynn Forest,48.171,42.943
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r do lado de fora
    .accept 18 >>Aceite Irmandade de Ladrões
    .target Deputy Willem
step << Warlock
    #xprate <1.59
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Entregue Carta Corrompida
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Drusilla La Salle



----End of 1x train section----




step
    #season 0,1
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
step << Rogue
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,50.314,39.916
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .turnin 3102 >>Entregue Carta Criptografada
    .accept 77618 >>Aceite Três Vezes Roubado << Human
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .target Jorik Kerridan
step << Rogue
    #xprate <1.59
    #season 2
    #sticky
    #label Shadowstrike1
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_Abra o |cRXP_PICK_Defias Stashbox|r no chão. Saque-o para o |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #xprate <1.59
    #season 2
    #sticky
    #requires Shadowstrike1
    #label Shadowstrike2
    .train 400105 >>|cRXP_WARN_Use o|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T132291:0|t[Golpe Sombrio]
    .use 204795
    .itemcount 204795,1
step << Mage
    #season 2
    #loop
    #sticky
    #completewith RedBurlapBandana << !Human
    #label CALEENCI
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .waypoint Elwynn Forest,52.55,48.79,30,0
    .waypoint Elwynn Forest,53.89,50.52,30,0
    .waypoint Elwynn Forest,55.09,49.00,30,0
    .waypoint Elwynn Forest,55.43,45.87,30,0
    .waypoint Elwynn Forest,53.86,47.05,30,0
    >>Abate |cRXP_ENEMY_Defias Capangas|r. Saque-os para obter a |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    >>|cRXP_WARN_NOTA: Você não conseguirá treinar|r |T135844:0|t[Lança de Gelo] |cRXP_WARN_aqui, pois você só consegue obter um|r |T133736:0|t[Compreensão Primer] |cRXP_WARN_na zona inicial da sua raça|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human Mage
    #season 2
    #requires CALEENCI
    #label CALEENCI2
    .train 401760 >>|cRXP_WARN_Use o|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_para aprender|r |T135844:0|t[Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step << Paladin
    #xprate <1.59
    #season 2
    #loop
    #label Libram1
    #sticky
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .waypoint Elwynn Forest,52.55,48.79,30,0
    .waypoint Elwynn Forest,53.89,50.52,30,0
    .waypoint Elwynn Forest,55.09,49.00,30,0
    .waypoint Elwynn Forest,55.43,45.87,30,0
    .waypoint Elwynn Forest,53.86,47.05,30,0
    >>Mate os |cRXP_ENEMY_Defias Thugs|r. Saque-os para o |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r
    .collect 205420,1 -- Libram of Judgement (1)
    .mob Defias Thug
    .train 410002,1
step << Paladin
    #xprate <1.59
    #season 2
    #sticky
    #label Libram2
    #requires Libram1
    .equip 18,205420 >>|cRXP_WARN_Equipe o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r
    .use 205420
    .itemcount 205420,1 --Libram of Judgement (1)
    .train 410002,1
step << Paladin
    #xprate <1.59
    #season 2
    #loop
    #sticky
    #label Libram3
    #requires Libram2
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .waypoint Elwynn Forest,53.86,47.05,30,0
    .waypoint Elwynn Forest,55.43,45.87,30,0
    .waypoint Elwynn Forest,55.09,49.00,30,0
    .waypoint Elwynn Forest,53.89,50.52,30,0
    .waypoint Elwynn Forest,52.55,48.79,30,0
    .aura 408828 >>|cRXP_WARN_Lance|r |T135959:0|t[Julgamento] |cRXP_WARN_10 vezes para obter o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    .itemStat 18,QUALITY,2
    .train 410002,1
step << Paladin
    #xprate <1.59
    #season 2
    #sticky
    #label Libram4
    #requires Libram3
    .cast 409920 >>|cRXP_WARN_Use o|r |T134916:0|t|cRXP_LOOT_[Incunábulo do Julgamento]|r |cRXP_WARN_para aprender|r |T135891:0|t[Golpe do Cruzado]
    .use 205420
    .aura -408828
    .train 410002,1
step << Paladin
    #xprate <1.59
    #season 2
    #label Libram5
    #requires Libram4
    #completewith RedBurlapBandana
    .equip 10 >>|cRXP_WARN_Equipe um par de|r |T132938:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_se você tiver alguns ou quando saquear alguns|r
    .train 410002,3
step << Paladin
    #xprate <1.59
    #season 2
    #requires Libram5
    #completewith RedBurlapBandana
    .engrave 10 >>|cRXP_WARN_Grave seu|r |T132938:0|t|cRXP_LOOT_[Gloves]|r |cRXP_WARN_com|r |T135891:0|t[Golpe do Cruzado]
    .train 410002,3
step
    #xprate <1.59 << Paladin/Rogue
    #season 2
    #loop
    #label RedBurlapBandana
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
step << Rogue
    #xprate <1.59
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 4 >>Farme até o nível 4
step << Human Rogue
    #xprate <1.59
    #season 2
    .goto Elwynn Forest,50.314,39.916
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .turnin 77618 >>Entregue Três Vezes Roubado << Human
    .target Jorik Kerridan
step << Human Rogue
    #xprate <1.59
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,2125 >>|cRXP_WARN_Equipe o|r |T132952:0|t[Luvas de Couro Rachado]
    .use 2125
    .itemcount 2125,1 --Cracked Leather Gloves (1)
    .itemStat 10,LEVEL,<5
    .train 400105,3
step << Human Rogue
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Grave seu|r |T132952:0|t[Luvas de Couro Rachado] |cRXP_WARN_com|r |T132291:0|t[Golpe Sombrio]
    .train 400105,3
step << !Human/!Rogue
    #xprate <1.59
    #season 2
    #softcore
    #completewith next
    #requires CALEENCI2 << Mage
    #requires Libram4 << Paladin
    #requires Shadowstrike2 << Rogue
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
--   .subzoneskip 59,1
step << Human Rogue
    #xprate <1.59
    #season 2
    #requires Shadowstrike2
    .goto Elwynn Forest,50.314,39.916
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .turnin 77618 >>Entregue Três Vezes Roubado
    .target Jorik Kerridan
    .isOnQuest 77618
step << !Paladin !Rogue
    #xprate >1.59
    #season 2
    #requires CALEENCI2 << Mage
--   #requires Libram4 << Paladin
--  #requires Shadowstrike2 << Rogue
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .turnin 18,1 >>Entregue Irmandade de Ladrões << Rogue/Warlock
    .turnin 18,2 >>Entregue Irmandade de Ladrões << Priest
    .turnin 18,3 >>Entregue Irmandade de Ladrões << Warrior
    .turnin 18,4 >>Entregue Irmandade de Ladrões << Paladin
    .turnin 18,5 >>Entregue Irmandade de Ladrões << Mage
    .turnin 18 >>Entregue Irmandade de Ladrões << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
--   .accept 3903 >> Accept Milly Osworth
    .accept 6 >>Aceite Recompensa por Garrick Patatenra
    .target Deputy Willem
step
    #xprate <1.59
    #season 2
    #requires CALEENCI2 << Mage
    #requires Libram4 << Paladin
    #requires Shadowstrike2 << Rogue
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .turnin 18,1 >>Entregue Irmandade de Ladrões << Rogue/Warlock
    .turnin 18,2 >>Entregue Irmandade de Ladrões << Priest
    .turnin 18,3 >>Entregue Irmandade de Ladrões << Warrior
    .turnin 18,4 >>Entregue Irmandade de Ladrões << Paladin
    .turnin 18,5 >>Entregue Irmandade de Ladrões << Mage
    .turnin 18 >>Entregue Irmandade de Ladrões << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 3903 >>Aceite Madel Quintana
    .accept 6 >>Aceite Recompensa por Garrick Patatenra
    .target Deputy Willem
step
    #season 0,1
    .goto Elwynn Forest,48.17,42.94
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .turnin 18,1 >>Entregue Irmandade de Ladrões << Rogue/Warlock
    .turnin 18,2 >>Entregue Irmandade de Ladrões << Priest
    .turnin 18,3 >>Entregue Irmandade de Ladrões << Warrior
    .turnin 18,4 >>Entregue Irmandade de Ladrões << Paladin
    .turnin 18,5 >>Entregue Irmandade de Ladrões << Mage
    .turnin 18 >>Entregue Irmandade de Ladrões << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 3903 >>Aceite Madel Quintana
    .accept 6 >>Aceite Recompensa por Garrick Patatenra
    .target Deputy Willem
step << Paladin
    #season 0,1
    #completewith RestandR
    .equip 16,5579 >>|cRXP_WARN_Equipe o|r |T133052:0|t [Martelo de Guerra da Milícia]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Paladin
    #xprate <1.59
    #season 2
    #completewith RestandR
    .equip 16,5579 >>|cRXP_WARN_Equipe o|r |T133052:0|t [Martelo de Guerra da Milícia]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << Rogue
    #xprate <1.59
    #season 2
    #completewith RestandR
    .equip 16,2224 >>Equipe o |T135641:0|t [Punhal da Milícia]
    .use 2224
    .itemcount 2224,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.0
step << Rogue
    #season 0,1
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
    #xprate >1.59
    #season 0,1 << Priest/Warrior
    .goto Elwynn Forest,48.923,41.606
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 15 >>Entregue Investigar a Serra do Eco
    .accept 21 >>Aceite Escaramuça na Serra do Eco
    .target Marshal McBride
step << Human Mage
    #season 2
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
    .isQuestComplete 77620
step << Human Mage
    #season 2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaspar Melchior|r dentro
    .turnin 77620 >>Entregue Pesquisa de Feitiços
    .target Khelden Bremen
    .isQuestComplete 77620
step << Human Mage
    #season 2
    #label GlovesEquip
    #completewith RestandR
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .itemcount 711,1 --Tattered Cloth Gloves (1)
    .itemStat 10,LEVEL,<5
    .train 401760,3
step << Human Mage
    #xprate <1.59
    #season 2
    #requires GlovesEquip
    #completewith RestandR
    .engrave 10 >>|cRXP_WARN_Grave seu|r |T132961:0|t[Luvas de Tecido Esfarrapado] |cRXP_WARN_com|r |T135844:0|t[Lança de Gelo]
    .train 401760,3
step << Warrior/Paladin
    #xprate <1.59
    #season 2
    #optional
    #completewith next
    .goto Elwynn Forest,48.85,41.76,15,0
    .goto Elwynn Forest,49.6,41.8,15 >>Vá em direção ao |cRXP_FRIENDLY_Irmão Samuel|r no andar de baixo
step << Human Paladin
    #xprate <1.59
    #season 2
    .isQuestComplete 77617
    .goto Elwynn Forest,50.433,42.124
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .turnin 77617 >>Entregue Relíquias da Luz
    .target Brother Sammuel
step << Human Paladin
    #xprate <1.59
    #season 2
    #completewith RestandR
    #label GlovesEquip
    .equip 10,2385 >>|cRXP_WARN_Equipe o|r |T132938:0|t|cRXP_LOOT_[Luvas Encadeadas Manchadas]|r
    .use 2385
    .itemcount 2385,1
    .itemStat 10,LEVEL,<5
    .train 410002,3
step << Human Paladin
    #xprate <1.59
    #season 2
    #completewith RestandR
    #requires GlovesEquip
    .engrave 10 >>|cRXP_WARN_Grave o|r |T132938:0|t|cRXP_LOOT_[Luvas Encadeadas Manchadas]|r |cRXP_WARN_com|r |T135891:0|t[Golpe do Cruzado]
    .itemStat 10,LEVEL,<5
    .train 410002,3
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
    #xprate <1.59
    .goto Elwynn Forest,50.692,39.347
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Madel Quintana|r
    >>|cRXP_WARN_Pule a missão seguinte|r << !Priest !Mage
    .turnin 3903 >>Entregue Madel Quintana
    .accept 3904 >>Aceite Colheita da Madel << Priest/Mage
    .target Milly Osworth
step << Rogue
    #season 0,1
    .goto Elwynn Forest,50.314,39.916
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .turnin 3102 >>Entregue Carta Criptografada
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .target Jorik Kerridan
step << Priest/Mage
    #xprate <1.5
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
step << Rogue
    #sticky
    #label CuttyNote
    #season 2
    .goto 1429,57.518,48.253
    >>|T133644:0|t[Bater Carteira] |cRXP_ENEMY_Garrick Patatenra|r para |T134331:0|t[Picote's Nota]
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 203723,1 -- Cutty's Note (1)
    .mob Garrick Padfoot
    .train 400094,1
step
    .goto 1429,57.518,48.253
    >>Mate |cRXP_ENEMY_Garrick Patatenra|r. Saqueie-o para obter a |cRXP_LOOT_Cabeça|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step
    #xprate >1.49 << Priest/Mage
    #optional
    #completewith RestandR
    .abandon 3904 >>Abandone Colheita da Madel
step
    #xprate <1.5
    #requires CuttyNote << Rogue --Season 2
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1735 >>Faça grind até 1735+/2800xp << Paladin/Warrior
    .xp 5+1625 >>Farme até 1625+/2800xp << !Paladin !Warrior !Priest !Mage
    .xp 5+1085 >>Faça grind até 1085+/2800xp << Mage
    .xp 5+975 >>Farme até 975+/2800xp << Priest
    .mob Defias Thug
step
    #xprate >1.49
    #requires CuttyNote << Rogue --Season 2
    #optional
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
    .xp 5+1205 >>Farme até 1205+/2800xp << Paladin/Warrior
    .xp 5+1040 >>Farme até 1040+/2800xp << !Paladin !Warrior !Priest
    .xp 5+875 >>Farme até 875+/2800xp << Priest
    .mob Defias Thug
step
    #optional
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
-- .subzoneskip 59,1
step << Priest/Mage
    #xprate <1.5
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
    #xprate <1.5
    #optional
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Vá para o andar de cima
step << Priest/Mage
    #xprate <1.5
    .goto Elwynn Forest,49.471,41.586
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Neals|r no andar de cima
    .turnin 3905,1 >>Entregue Manifesto das Uvas
    .target Brother Neals
step << Priest
    #optional
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r dentro
    .accept 5623 >>Aceite In Simpatia of the Luz - Missão
    .target Priestess Anetta
step << Priest
    #season 0,1
    .goto Elwynn Forest,49.808,39.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r dentro
    .accept 5623 >>Aceite In Simpatia of the Luz - Missão
    .target Priestess Anetta
step
    .goto Elwynn Forest,45.563,47.742
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Falcão Lencastre|r
    .accept 2158 >>Aceite Descanso e Relaxamento
    .target Falkhaan Isenstrider
step << Rogue
    #season 2
    .goto Elwynn Forest,49.983,52.012
    >>Fale com |cRXP_FRIENDLY_Picote|r bem ao sul da parede de Northshire Valley
    >>Ele te dará a |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .collect 203990,1 -- Rune of Mutilation (1)
    .skipgossip
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .train 400094 >>|cRXP_WARN_Use o|r |T134419:0|t|cRXP_LOOT_[Runa da Mutilação]|r |cRXP_WARN_para aprender|r |T132304:0|t[Mutilar]
    .use 203990 -- Rune of Mutilation (1)
    .target Cutty
    .train 400094,1
step << Rogue
    #season 2
    .goto Elwynn Forest,46.122,62.937,5,0
    .goto Elwynn Forest,46.175,62.124
    >>|cRXP_WARN_Usando as caixas fora da casa, pule para o telhado e corra atrás da chaminé|r
    >>Abra a |cRXP_PICK_Ferrugem Caixa-forte|r. Saque a |T134419:0|t|cRXP_LOOT_[Runa do Massacre]|r
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa do Massacre]|r |cRXP_WARN_para treinar|r |T236280:0|t[Atacar das Sombras]
    .use 203993
    .itemcount 203993,1
]])


RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 6-11 Elwynn Forest
#displayname 6-13 Elwynn Forest << SoD
#next 11-13 Loch Modan
#defaultfor Human

step
    #season 0,1 << Rogue
    #hardcore
    #completewith next
    .subzone 87 >>Voe para Goldshire
step
    #hardcore
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
    .target Marshal Dughan
step
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
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
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
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
    .vendor >>Lixo de Mercador
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
step
    #optional
    .xp 6 >>Faça grind até 6
step << Rogue
    .goto Elwynn Forest,43.96,65.92
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .vendor 151 >>|cRXP_BUY_Compre o|r |T135641:0|t [Adagas de Arremesso Balanceadas] |cRXP_BUY_dele se você puder pagar|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .disablecheckbox
    .target Brog Hamfist
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #label BalancedDaggers1
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #sticky
    #requires BalancedDaggers1
    #label DeleteOldDaggers
    .destroy 2947 >>Apague o |T135426:0|t[Faca de Arremesso Pequena Degradada] de sua mochila, pois não é mais necessário
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
    .goto Elwynn Forest,43.877,66.546,9 >>Suba na Estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.target Priestess Josetta
    .goto Elwynn Forest,43.283,65.721
    .turnin 5623 >>Entregue Em Favor da Luz
    .accept 5624 >>Aceite Vestimentas da Luz
    .trainer >>Treine suas magias de classe
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>Treine suas magias de classe
step << Rogue/Warrior
    .money <0.01
    .goto Elwynn Forest,43.877,66.546,9,0 << Warrior
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r lá em cima
    .target Michelle Belle
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step
    #requires DeleteOldDaggers << Rogue
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .accept 47 >>Aceite Trocando Pó de Ouro
    .target Remy "Two Times"
step << Priest
    .goto Elwynn Forest,48.148,68.046
    >>|cRXP_WARN_Lance|r |T135929:0|t[Cura Inferior (Rank 2)] |cRXP_WARN_e|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_no|r |cRXP_FRIENDLY_Guarda Roberts|r
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
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step
    #optional
    #requires BoarMeatQuest
    #label BoarMeatCooking1
    #completewith Pie
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Auberdine depois|r
    .collect 769,10,86,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatCooking1
    #completewith Pie
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire depois.|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,86,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
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
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e o |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
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
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
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
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
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
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Juntando a Fome...
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
    .vendor >>|cRXP_BUY_Compre o máximo de|r |T132815:0|t[Leite Gelado] |cRXP_WARN_que puder pagar|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Venda lixo|r << !Priest !Warlock !Mage
    .target Joshua Maclure
    .subzoneskip 64,1 --The Maclure Vineyards
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone2
    #completewith Lovers
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e o |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
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
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
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
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
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
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
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
    #label Pie
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 86 >>Entregue Juntando a Fome...
    .accept 84 >>Aceite ...com a Vontade de Comer
    .target "Auntie" Bernice Stonefield
step
    .goto 1429,34.945,83.855
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vovó Campedra|r lá dentro
    .turnin 111 >>Entregue Fale com a Vovó
    .accept 107 >>Aceite Bilhete para Durval
    .target Gramma Stonefield
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone3
    #completewith Exchange
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Abra os |cRXP_PICK_Battered Chests|r. Saqueie-os para obter a |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e o |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
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
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
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
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 87 --Goldshire
step << Warrior
    #season 2
    #sticky
    #label KoboldRune
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Abate os |cRXP_ENEMY_Minadores Kobold|r e os |cRXP_ENEMY_Cavadores Kobold|r. Saque-os para obter um |T134168:0|t|cRXP_LOOT_[Cabeça de Kobold Decepada]|r
    >>|cRXP_WARN_Este é um dos três itens que você precisa para desbloquear sua|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r] |cRXP_WARN_para quando você chegar a Ventobravo mais tarde|r
    .collect 204476,1 -- Severed Kobold Head (1)
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label KoboldRune
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .waypoint Elwynn Forest,39.14,82.87,35,0
    .waypoint Elwynn Forest,39.16,84.79,35,0
    .waypoint Elwynn Forest,37.81,85.40,35,0
    .waypoint Elwynn Forest,36.76,83.19,35,0
    .waypoint Elwynn Forest,38.02,81.70,35,0
    >>Use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Minadores Kobold|r e nos |cRXP_ENEMY_Cavadores Kobold|r. Saque-os para obter |T134327:0|t|cRXP_LOOT_[Top-Direita Mapa Piece]|r
    >>|cRXP_WARN_Você deve estar|r |T132320:0|t[Furtivo] |cRXP_WARN_para usar|r |T133644:0|t[Bater Carteira]
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
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
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,43.131,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 84 >>Entregue ...com a Vontade de Comer
    .accept 87 >>Aceite Dentadouro
    .target Billy Maclure
step
    .goto Elwynn Forest,39.01,82.20,15,0
    .goto Elwynn Forest,39.92,80.11
    >>Entre em um dos maiores espaços abertos da Mina Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #season 0,1
    .goto 1429,41.732,78.024
    >>Mate o |cRXP_ENEMY_Dentadouro|r. Saqueie-o para |cRXP_LOOT_Bernice's Colar|r
    >>|cRXP_WARN_Tenha cuidado, pois ele geralmente puxa junto com o |cRXP_ENEMY_Minerador Kobold|r ao lado dele|r
    .complete 87,1 --Bernice's Necklace (1)
    .mob Goldtooth
step
    #season 2
    .goto 1429,41.732,78.024
    >>Mate o |cRXP_ENEMY_Dentadouro|r. Saqueie-o para |cRXP_LOOT_Bernice's Colar|r << !Warrior !Priest
    >>Abate |cRXP_ENEMY_Dentadouro|r. Saque-o para obter |cRXP_LOOT_Colar de Bernice|r e a |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r << Warrior
    >>Abate |cRXP_ENEMY_Dentadouro|r. Saque-o para obter |cRXP_LOOT_Colar de Bernice|r e a |T136222:0|t|cRXP_LOOT_[Memória de um Propósito Sombrio]|r << Priest
    >>|cRXP_WARN_Tenha cuidado, pois ele geralmente puxa junto com o |cRXP_ENEMY_Minerador Kobold|r ao lado dele|r
    .complete 87,1 --Bernice's Necklace (1)
    .collect 204809,1 << Warrior -- Rune of Furious Thunder (1)
    .collect 205940,1 << Priest -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step << Warrior
    #season 2
    #sticky
    #label GoldtoothRune
    .train 403476 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r |cRXP_WARN_para aprender|r |T136048:0|t[Trovão Furioso]
    .use 204809
    .itemcount 204809,1
step << Priest
    #season 2
    #sticky
    #label GoldtoothRune
    >>|cRXP_WARN_Você deve ter um buff|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_digitando /kneel em uma área sagrada como a Abadia do Northshire ou a Catedral de Ventobravo|r
    .train 425216 >>|cRXP_WARN_Use a|r |T136222:0|t|cRXP_LOOT_[Memória de um Propósito Sombrio]|r |cRXP_WARN_para aprender|r |T237514:0|t[Peste do Caos]
    .use 205940
step << Warrior
    #optional
    #completewith Exchange
    +|cRXP_WARN_Tente guardar um único|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_de agora em diante, pois você precisará dela para Rolf's Cadáver mais tarde|r
    .subzoneskip 87 --Goldshire
step << Warrior
    #season 2
    #optional
    #requires KoboldRune
--XXREQ Placeholder invis step
step
    #xprate <1.5
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1800 >>Farme até 1800+/4500xp << !Priest
    .xp 7+1460 >>Farme até 1460+/4500xp << Priest
    .mob Kobold Tunneler
    .mob Kobold Miner
--XX <1.5x turns in goldtooth early
step
    #xprate >1.49
    #requires KoboldEnd
    #loop
    .goto Elwynn Forest,37.81,85.40,0
    .goto Elwynn Forest,39.14,82.87,35,0
    .goto Elwynn Forest,39.16,84.79,35,0
    .goto Elwynn Forest,37.81,85.40,35,0
    .goto Elwynn Forest,36.76,83.19,35,0
    .goto Elwynn Forest,38.02,81.70,35,0
    .xp 7+1770 >>Farme até 1770+/4500xp << !Priest
    .xp 7+1260 >>Farme até 1260+/4500xp << Priest
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #xprate <1.5
    #label Goldtooth
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 87 >>Entregue Dentadouro
    .target "Auntie" Bernice Stonefield
step << skip --logout skip
    #xprate >1.49
    #hardcore
    #optional
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Salte no topo de um destruidor, os troncos flutuantes, as caixas, ou o carrinho de mina brilhante dentro da caverna. Realize um logout skip saindo do jogo e voltando|r
    .subzoneskip 57,1 --Fargodeep Mine
    .isOnQuest 47
step
    #optional
    #label BoarMeatCooking2
    #completewith Exchange
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 57 --Fargodeep Mine
step
    #optional
    #requires BoarMeatCooking2
    #completewith Exchange
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 57 --Fargodeep Mine
step
    #hardcore
    #optional
    #completewith Exchange
    .goto Elwynn Forest,42.140,67.254,125 >>Retorne para Goldshire
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #label Exchange
    .goto Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Este é um item incrivelmente valioso durante todo o percurso até o nível 60|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .accept 40 >>Aceite Perigo Anfíbio
    .target Remy "Two Times"
step << Priest
    #season 2
    #optional
    #completewith GoldshireEnd
    +|cRXP_WARN_Se possível, encontre um sacerdote em Goldshire com outros|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_bônus|r
    >>|cRXP_WARN_Digite /kneel, então faça outro sacerdote digitar /pray em você enquanto está ajoelhado para ganhar seus|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_bônus para usar depois|r
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
    .vendor >>Lixo de Mercador
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
    .vendor 54 >>|cRXP_BUY_Compre uma|r |T133053:0|t[Marreta de Madeira] |cRXP_BUY_dela se você puder pagar|r
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
    #season 2
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    >>|cRXP_WARN_Treine|r |T135949:0|t[Purificar] |cRXP_WARN_para adquirir|r |T133815:0|t[Gravar Peitoral - Égide] |cRXP_WARN_logo|r
    .train 1152 >>Treine |T135949:0|t[Purificar]
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step << Paladin
    #season 0,1
    #xprate >1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step << Warrior
    #xprate >1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
    .turnin 107 >>Entregue Bilhete para Durval
    .accept 112 >>Aceite Coletando Algas
    .target William Pestle
step
    #xprate <1.5
    #optional
    .xp 8 >>Farme até o nível 8
step << Warrior
    #xprate <1.59
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step << Paladin
    #season 2
    #xprate <1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    >>|cRXP_WARN_Treine|r |T135949:0|t[Purificar] |cRXP_WARN_para adquirir|r |T133815:0|t[Gravar Peitoral - Égide] |cRXP_WARN_logo|r
    .train 1152 >>Treine |T135949:0|t[Purificar]
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step << Paladin
    #season 0,1
    #xprate <1.59
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
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
    .vendor >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Seta de Fogo (Rank 2)] |cRXP_BUY_dela se você puder pagar. Se não, você pode comprá-lo mais tarde|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Suba na Estalagem
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
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
step
    #label GoldshireEnd << Priest --Season 2
    .goto Elwynn Forest,43.96,65.92
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .vendor >>|cRXP_WARN_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_WARN_se necessário|r
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .vendor >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se você puder pagar|r << !Warrior !Rogue !Paladin
    .vendor >>|cRXP_BUY_Compre até 20|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_dele se você puder pagar|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Compre até 10|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_e 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se você puder pagar|r << Paladin
    .target Innkeeper Farley
step << Warrior
    #season 2
    #sticky
    #label MurlocRune
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>Abate os |cRXP_ENEMY_Murlocs|r e os |cRXP_ENEMY_Murloc Streamrunners|r. Saqueie-os para obter uma |T134169:0|t|cRXP_LOOT_[Cabeça de Murloc Decepada]|r
    >>|cRXP_WARN_Este é um dos três itens que você precisa desbloquear|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r] |cRXP_WARN_para quando você chegar a Objetos de TBC no nível 10|r
    .collect 204477,1 -- Severed Murloc Head (1)
    .mob Murloc Streamrunner
	.mob Murloc
    .train 403475,1
step << Rogue
    #season 2
    #sticky
    #label MurlocRune
    #loop
    .goto 1429,50.833,65.453,0
    .goto 1429,57.435,63.662,0
    .goto 1429,54.236,66.888,0
    .waypoint 1429,50.833,65.453,50,0
    .waypoint 1429,52.020,65.177,50,0
    .waypoint 1429,54.144,62.468,50,0
    .waypoint 1429,56.332,63.538,50,0
    .waypoint 1429,57.162,62.157,50,0
    .waypoint 1429,57.435,63.662,50,0
    .waypoint 1429,58.237,64.888,50,0
    .waypoint 1429,56.897,67.017,50,0
    .waypoint 1429,55.523,66.707,50,0
    .waypoint 1429,55.203,66.171,50,0
    .waypoint 1429,54.236,66.888,50,0
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Murloc Streamrunners|r e os |cRXP_ENEMY_Murlocs|r. Saqueie-os para o |T134269:0|t|cRXP_LOOT_[Bottom-Direita Mapa Piece]|r
    >>|cRXP_WARN_Você deve estar|r |T132320:0|t[Furtivo] |cRXP_WARN_para usar|r |T133644:0|t[Bater Carteira]
--   >>|cRXP_WARN_Note: This can also come from any other |cRXP_ENEMY_Murloc|r in Elwynn Forest|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Streamrunner
    .mob Murloc
--   .mob Murloc Forager
--    .mob Murloc Lurker
    .train 398196,1
step
    #optional
    #label WolfMeatCooking1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>Mate os |cRXP_ENEMY_Mangy Wolves|r. Saqueie-os para |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Mangy Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 54
step
    #optional
    #requires WolfMeatCooking1
    #completewith Jasperlode
    .goto 1429,52.242,62.919,0
    .goto 1429,53.837,60.950,0
    .goto 1429,56.793,60.340,0
    .goto 1429,59.033,60.673,0
    >>Mate os |cRXP_ENEMY_Mangy Wolves|r. Saqueie-os para |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Mangy Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 54
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
    >>Mate os |cRXP_ENEMY_Murlocs|r e os |cRXP_ENEMY_Murloc Streamrunners|r. Saqueie-os para obter |cRXP_LOOT_Crystal Alga Fronds|r
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone4
    #completewith JasperlodeExplore
    >>Mate |cRXP_ENEMY_Kobold Miners|r. Abra |cRXP_PICK_Battered Chests|r. Pegue-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate |cRXP_ENEMY_Kobold Miners|r. Abra |cRXP_PICK_Battered Chests|r. Pegue-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
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
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
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
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
step
    #optional
    #requires MurlocRune << Warrior/Rogue --Season 2
    #label Jasperlode
    #completewith JasperlodeExplore
    .goto Elwynn Forest,61.654,53.608,15 >>Entre na Mina de Jasperlode
step << Mage
    #season 2
    #sticky
    #loop
    #label JasperlodeRune
    .goto 1429,60.599,50.811,0
    .goto 1429,60.789,56.641,0
    .goto 1429,64.528,56.678,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,62.121,55.579,45,0
    .waypoint 1429,60.789,56.641,45,0
    .waypoint 1429,62.587,57.974,45,0
    .waypoint 1429,63.724,58.199,45,0
    .waypoint 1429,64.528,56.678,45,0
    .waypoint 1429,62.656,54.266,45,0
    .waypoint 1429,60.599,50.811,45,0
    .waypoint 1429,61.296,51.676,45,0
    >>Abate os |cRXP_ENEMY_Kobold Geomancers|r. Saqueie-os para obter |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: VACMA IHAV]|r
    .collect 203752,1
    .mob Kobold Geomancer
    .train 401768,1
step
    #label JasperlodeExplore
    .goto Elwynn Forest,61.20,51.46,15,0
    .goto Elwynn Forest,60.72,50.85,15,0
    .goto Elwynn Forest,60.39,50.16
    >>Siga o caminho pelo meio para explorar a Mina de Jasperlode
    .complete 76,1 --Scout through the Jasperlode Mine
step << Warrior/Paladin/Rogue
    #optional
    #label RoughStone5
    #completewith Find
    >>Mate |cRXP_ENEMY_Kobold Miners|r. Abra |cRXP_PICK_Battered Chests|r. Pegue-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r << Warrior/Rogue
    >>Mate |cRXP_ENEMY_Kobold Miners|r. Abra |cRXP_PICK_Battered Chests|r. Pegue-os para obter |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r e |T132889:0|t|cRXP_LOOT_[Linho]|r << Paladin
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
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_para criar|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    +|T136241:0|t[Ferraria] |cRXP_WARN_na|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_e|r |T132889:0|t|cRXP_LOOT_[Linho]|r |cRXP_WARN_para criar|r |T135255:0|t[Rough Weightstones] << Paladin
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
    .cast 2828 >>|cRXP_WARN_Use a|r |T135248:0|t[Pedra de Afiar Rústica] |cRXP_WARN_na arma atual|r << Warrior/Rogue
    .cast 3112 >>|cRXP_WARN_Use o|r |T135255:0|t[Contrapeso Rústico] |cRXP_WARN_na arma atual|r << Paladin
    .use 2862 << Rogue/Warrior --Rough Sharpening Stone (1)
    .use 3239 << Paladin --Rough Weightstone (1)
    .itemcount 2862,1 << Rogue/Warrior --Rough Sharpening Stone (1)
    .itemcount 3239,1 << Paladin --Rough Weightstone (1)
    .aura 2828 << Warrior/Rogue
    .aura 3112 << Paladin
    .train 2018,3
    .subzoneskip 54,1
step << Paladin
    #season 2
    #completewith next
    .goto Elwynn Forest,61.97,47.31
    .cast 1152 >>|cRXP_WARN_Lance|r |T135949:0|t[Purificar] |cRXP_WARN_no |cRXP_FRIENDLY_Aventureiro Ferido|r dentro|r
    .target Wounded Adventurer
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Paladin
    #season 2
    .goto Elwynn Forest,61.97,47.31
    >>|cRXP_WARN_Converse com o |cRXP_FRIENDLY_Aventureiro Ferido|r depois de lançar|r |T135949:0|t[Purificar] |cRXP_WARN_nele para receber|r |T134419:0|t[Runa de Égide]
    .collect 205685,1 --Rune of Aegis (1)
    .target Wounded Adventurer
    .skipgossip
    .train 425619,1
    .train 1152,3 --Purify Trained
--XX gossipoption 109556
step << Paladin
    #season 2
    #completewith Find
    .cast 402265 >>|cRXP_WARN_Use|r |T134419:0|t[Runa de Égide] |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Égide]
    .use 205685
    .itemcount 205685,1 --Rune of Aegis (1)
    .train 425619,1
    .train 1152,3 --Purify Trained
step << Mage
    #season 2
    #requires JasperlodeRune
    #completewith Find
    .train 401768 >>|cRXP_WARN_Use|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: VACMA IHAV]|r |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
step
    #optional
    #label ExitJasperlode
    #completewith Find
    .goto 1429,61.820,53.871,15 >>Saia da Mina de Jasperlode
    .subzoneskip 54,1
step
    #optional
    #requires ExitJasperlode
    #label WolfMeatCooking2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>Mate os |cRXP_ENEMY_Gray Forest Wolves|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking2
    #completewith Find
    .goto 1429,69.348,67.452,0
    .goto 1429,67.244,63.880,0
    .goto 1429,63.748,64.710,0
    >>Mate os |cRXP_ENEMY_Gray Forest Wolves|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #completewith Find
    +|cRXP_WARN_Atraia um |cRXP_ENEMY_Jovem Urso da Floresta|r em direção|r ao |cRXP_FRIENDLY_Guarda Tomás|r
    >>|cRXP_WARN_Tente falar com o |cRXP_FRIENDLY_Guarda Tomás|r antes que o |cRXP_ENEMY_Jovem Urso da Floresta|r morra para os |cRXP_FRIENDLY_Stormwind Guards|r para ganhar crédito da missão|r
    >>|cRXP_WARN_Você deve causar 51%+ de dano para ganhar crédito da missão|r
    .mob Young Forest Bear
step
    #label Find
    #requires JasperlodeRune << Mage --Season 2
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .turnin 35 >>Entregue Mais Preocupações
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
    .target Guard Thomas
step << Rogue/Priest
    #season 2
    #completewith LostGuards
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você encontrar|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #season 0,1 << Rogue/Priest
    #completewith AcceptBundle
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você encontrar|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #optional
    #label WolfMeatCooking3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Gray Forest Wolves|r e os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Gray Forest Wolf
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking3
    #completewith LostGuards
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Gray Forest Wolves|r e os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Gray Forest Wolf
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #label LostGuards
    .goto Elwynn Forest,72.656,60.334
    >>Clique em um |cRXP_PICK_Corpo Meio Comido|r no chão
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    #optional
    #label WolfMeatCooking4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 88 --Eastvale Logging Camp
step
    #optional
    #requires WolfMeatCooking4
    #completewith AcceptBundle
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 88 --Eastvale Logging Camp
step
    #label AcceptBundle
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .accept 5545 >>Aceite Um Feixe de Encrenca
    .target Supervisor Raelen
step
    #season 0,1 << Rogue
    #optional
    .goto Elwynn Forest,83.283,66.089
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricardo Fino|r
    .vendor >>Lixo de vendedor
    .target Rallic Finn
    .subzoneskip 88,1
step
    #optional
    #label WolfMeatCooking5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 86 --Stone Cairn Lake
step
    #optional
    #requires WolfMeatCooking5
    #completewith Prowlers
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 86 --Stone Cairn Lake
step
    #completewith Prowlers
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você encontrar|r
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
    >>Pegue os |cRXP_LOOT_Bundles of Madeira|r no chão, na base das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #softcore
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>|cRXP_WARN_Corra no topo de |cRXP_PICK_Rolf's corpse|r, depois lance|r |T135954:0|t[Proteção Divina] |cRXP_WARN_e depois imediatamente clique em|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_WARN_Corra para longe e reinicie os |cRXP_ENEMY_Murlocs|r após completar a missão|r
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step << Paladin
    #hardcore
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Clique em |cRXP_PICK_Rolf's corpse|r no chão
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Murloc Foragers|r irão conjurar|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_o que cura eles por 61-68 de vida|r
    >>|cRXP_WARN_Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e destrua um deles rapidamente. Usar|r |T135954:0|t[Proteção Divina] |cRXP_WARN_e sua cura conforme necessário. Esta é uma boa oportunidade para usar|r |T133581:0|t[Bolsa of Marbles]|cRXP_WARN_. Corra para longe e reinicie uma vez que tenha matado um|r << Paladin
    >>|cRXP_WARN_Lembre-se durante|r |T135954:0|t[Proteção Divina] |cRXP_WARN_que você é incapaz de atacar|r << Paladin
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step << !Paladin
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Clique em |cRXP_PICK_Rolf's corpse|r no chão
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Murloc Foragers|r irão conjurar|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_o que cura eles por 61-68 de vida|r
    >>|cRXP_WARN_Conjure|r |T135953:0|t[Renovar] |cRXP_WARN_e|r |T135940:0|t[Palavra de Poder: Escudo] |cRXP_WARN_depois obtenha mana cheia. Puxe os 2 |cRXP_ENEMY_Murlocs|r na frente das cabanas, afaste-se, depois destrua um. Corra quando você matar um, depois mate o outro|r << Priest
    >>|cRXP_WARN_Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e|r |T136071:0|t[Polimorfia] |cRXP_WARN_em um enquanto mata o outro. Mate o|r |T136071:0|t[Polimorfado] |cRXP_WARN_depois|r << Mage
    >>|cRXP_WARN_Acumule 100 Raiva. Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e mantenha|r |T132316:0|t[Cortar Tendão] |cRXP_WARN_em um enquanto mata o outro. Também use|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_no que você está matando. Corra e reinicie o que está sendo evitado com|r |T132316:0|t[Cortar Tendão] |cRXP_WARN_depois que matar um|r << Warrior
    >>|cRXP_WARN_Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e foque em matar um deles. Usar|r |T136205:0|t[Evasão] |cRXP_WARN_uma vez que ambos estão te atacando. Esta é uma boa oportunidade para usar|r |T133581:0|t[Bolsa of Marbles]|cRXP_WARN_. Corra para longe e reinicie uma vez que tenha matado um|r << Rogue
    >>|cRXP_WARN_Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e conjure|r |T136183:0|t[Medo] |cRXP_WARN_em um deles constantemente, e tente manter DoTs em ambos|r << Warlock
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
    #optional
    #label WolfMeatCooking6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking6
    #completewith BundleOT
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith BundleOT
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você encontrar|r
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
    >>Pegue os |cRXP_LOOT_Bundles of Madeira|r no chão, na base das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .turnin 5545 >>Entregue Um Feixe de Encrenca
    .target Supervisor Raelen
step << skip --Paladin
    #xprate >1.59
    #optional
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .accept 83 >>Aceite Tecidos de Linho Vermelho
    .target Sara Timberlain
    .itemcount 2589,<10 --Linen Cloth (<10)
step
    #xprate <1.5 << !Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .accept 83 >>Aceite Tecidos de Linho Vermelho
    .target Sara Timberlain
step
    #optional
    #label WolfMeatCooking7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires WolfMeatCooking7
    #completewith DeliverStart
    .goto 1429,73.679,67.978,0
    .goto 1429,72.275,65.278,0
    .goto 1429,71.605,61.294,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
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
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #label DeliverStart
    .goto Elwynn Forest,73.973,72.179
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .target Guard Thomas
step
    #xprate >1.49
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith PrincessC << !Warlock !Warrior !Rogue
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    .use 1972>>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] |cRXP_WARN_é uma queda muito rara. Ignorar este passo se você não conseguir|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>Aceite Escritura de Furlbrow
step
    #xprate <1.5
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith DefiasBandits << !Warlock !Warrior !Rogue
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    .use 1972>>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] |cRXP_WARN_é uma queda muito rara. Ignorar este passo se você não conseguir|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>Aceite Escritura de Furlbrow
step << skip --Paladin
    #xprate >1.59
    #optional
    #completewith next
    >>Abate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os pelas |cRXP_LOOT_Red Linen Bandanas|r e |T132889:0|t[Linho]
    >>|cRXP_WARN_Guarde o|r |T132889:0|t[Linho] |cRXP_WARN_para uma missão mais tarde|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .disablecheckbox
    .mob Defias Bandit
    .isOnQuest 83
step
    #xprate <1.5 << !Warlock
    #completewith next
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os por seus |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label PrincessC
    .goto Elwynn Forest,69.3,79.0
    >>Mate a |cRXP_ENEMY_Princesa|r. Saque-a por seu |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_virá junto com ambas as suas|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_também vai lançar|r |T132368:0|t[Investida Impetuosa] |cRXP_WARN_que causa dano pesado|r
    >>|cRXP_WARN_Acumule 100 Raiva antes de enfrentar|r |cRXP_ENEMY_Princesa|r << Warrior
    >>Tenha certeza de que|cRXP_WARN_ |T136205:0|t[Evasão] |cRXP_WARN_está pronta. Se tiver dificuldades, pode usar o Fence com Arremessando Armas para explorar a física e ganhar tempo|r << Rogue
    >>|cRXP_WARN_Esteja pronto para usar uma|r |T134830:0|t[Poção Inferior de Cura]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step << Rogue
    #season 2
    .goto Elwynn Forest,67.4,78.6,60,0
    .goto Elwynn Forest,70.8,79.8,60,0
    .goto Elwynn Forest,89.2,78.8
    >>|T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Defias|r. Saqueie-os pelo |T134327:0|t[|cRXP_LOOT_Top-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_Nota: Isto também pode vir de qualquer outro membro |cRXP_ENEMY_Defias|r em Elwynn Forest|r
    .collect 203785,1 -- Top-Left Map Piece (1)
    .mob Defias Bandit
    .train 398196,1
step << skip --Paladin
    #xprate >1.59
    #label DefiasBandits
    #loop
    .goto Elwynn Forest,70.5,77.6,0
    .goto Elwynn Forest,70.8,80.9,0
    .goto Elwynn Forest,70.5,77.6,60,0
    .goto Elwynn Forest,68.1,77.5,60,0
    .goto Elwynn Forest,68.2,81.4,60,0
    .goto Elwynn Forest,70.8,80.9,60,0
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os por seus |cRXP_LOOT_Red Linen Bandanas|r
    >>Abate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os pelas |cRXP_LOOT_Red Linen Bandanas|r e |T132889:0|t[Linho]
    >>|cRXP_WARN_Guarde o|r |T132889:0|t[Linho] |cRXP_WARN_para uma missão mais tarde|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 2589,10,1644,1 --Linen Cloth (10)
    .disablecheckbox
    .mob Defias Bandit
    .isOnQuest 83
step
    #completewith Level9Grind << Warlock
    #xprate <1.5 << !Warlock
    #label DefiasBandits
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os por seus |cRXP_LOOT_Red Linen Bandanas|r
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
step << Warlock/Warrior/Rogue
    #xprate <1.5
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3510 >>Suba até 3510+/6500 XP << Warlock
    .xp 9+3420 >>Suba até 3420+/6500 XP << Warrior/Rogue
step << Warlock/Warrior/Rogue
    #xprate >1.49
    #optional
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+2015 >>Suba até 2015+/6500xp << Warlock
    .xp 9+3050 >>Suba até 3050+/6500xp << Warrior/Rogue
--XX Warlock and Warrior
step << Rogue
    #season 2
    .cast 401847 >>|cRXP_WARN_Use qualquer um dos|r |T134327:0|t[|cRXP_LOOT_Map Pieces|r] |cRXP_WARN_para combiná-los no|r |T134269:0|t[|cRXP_LOOT_Elwynn Mapa do Tesouro|r]
    .collect 203750,1
    .itemcount 203787,1
    .itemcount 203784,1
    .itemcount 203785,1
    .itemcount 203786,1
    .use 203787
    .use 203784
    .use 203785
    .use 203786
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Elwynn Forest,80.365,79.134
    .cast 401617 >>|cRXP_WARN_Use o|r |T134269:0|t[|cRXP_LOOT_Elwynn Mapa do Tesouro|r] |cRXP_WARN_na localização da seta. Isto fará com que um |cRXP_PICK_Tesouro Enterrado|r apareça|r
    .use 203750
    .itemcount 203750,1
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,80.365,79.134
    >>Abra o |cRXP_PICK_Tesouro Enterrado|r. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1
step << !Warlock
    #season 0,1 << Rogue
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .zoneskip Redridge Mountains
--XX not worth deathskipping as a warlock due to having to resumm pet
step << skip --Paladin
    #xprate >1.59
    #optional
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 83 >>Entregue Tecidos de Linho Vermelho
    .target Sara Timberlain
    .isQuestComplete 83
step
    #xprate <1.5 << !Warlock
    #optional << Warlock
    .goto Elwynn Forest,79.457,68.789
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 83 >>Entregue Tecidos de Linho Vermelho
    .target Sara Timberlain
    .isQuestComplete 83
step << !Warlock
    #optional
    #label WolfMeatCooking8
    #requires EVDeathskip
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << !Warlock
    #optional
    #requires WolfMeatCooking8
    #completewith RedridgeS
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << !Warlock
    #label RedridgeS
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step << !Warlock
    #optional
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
    .xp <11,1
step << !Warlock
    #softcore
    #completewith RRFP
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step << !Warlock
    #hardcore
    #optional
    #completewith RRFP
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410,15 >>|cRXP_WARN_CUIDADO: Vá para a estrada principal e evite qualquer inimigo próximo no caminho|r
step << !Warlock
    #optional
    .goto Redridge Mountains,30.73,59.99
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
step << !Warlock
    #season 0,1 << Paladin
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step << Paladin
    #xprate <1.5
    #season 2
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step << Paladin
    #xprate >1.49
    #season 2
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
    .train 410015,3
step << Paladin
    #xprate >1.49
    #season 2
    #label RRFP
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .fly Stormwind >>Voe para Cidade de Ventobravo
    .target Ariena Stormfeather
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos os|r |T132383:0|t[Explosivo Foguetes] |cRXP_WARN_como a recompensa. Causa bom dano e pode ser usado para \"split pulling\", que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência em vídeo sobre \"split pulling\". É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
    .train 410015,1
step << Paladin
    #season 2
    #xprate >1.59
    #optional
    #completewith Romulus
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
    .train 410015,1
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
    .xp <12,1
--XX so you can get the 500xp breadcrumb in goldshire
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1642 >>Aceite Tomo de Divindade
    .use 6775
    .xp <12,1
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1642 >>Entregue Tomo de Divindade
    .accept 1643 >>Aceite Tomo de Divindade
    .target Duthorian Rall
    .xp <12,1
step << Paladin
    #xprate >1.49
    #season 2
    #label Romulus
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Fale com o |cRXP_FRIENDLY_Irmão Rômulo|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step << Paladin
    #xprate >1.49
    #season 2
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>Desça para o lado ocidental da Cripta da Catedral
    .goto StormwindClassic,32.86,24.77,8 >>Viaje em direção a |cRXP_LOOT_Nota Calcinada|r na cripta
    .train 410015,1
step << Paladin
    #season 2
    #xprate >1.49
    .goto StormwindClassic,32.86,24.87
    >>Saque a |cRXP_LOOT_Nota Calcinada|r ao lado das velas
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step
    #optional
    #completewith CollectKelp
    .hs >>Use sua Pedra de Retorno para Goldshire
step << Warrior/Rogue
    #xprate <1.5
    #optional
    #completewith Escape
    +|cRXP_WARN_Tenha cuidado com seu dinheiro, pois você deve tentar economizar 32s 8c para Ventobravo mais tarde|r << Rogue
    +|cRXP_WARN_Tenha cuidado com seu dinheiro, pois você precisa economizar 31s 85c para Ventobravo e Ironforge mais tarde|r << Warrior
    >>|cRXP_WARN_Você vai receber 16s 50c das entregas até então|r << Rogue
    >>|cRXP_WARN_Você vai receber 18s 25c das entregas até então|r << Warrior
    .money >0.50
--XX 1s 10c flight to SW, 20s 23c cutlass, 10s 1h sword, 30c/75c level 3/11 thrown - Rogue
--XX 1s 10c flight to SW, 10s 2h sword, 10s 2h mace, 10s thrown, 30c/75c level 3/11 thrown, 81c mining pick - Warrior
--XX 7s from 39, 3.5s from 76, 3.5s from 61, 2.5s from 109, 1.75 from 6281 (warrior)
step
    #label CollectKelp
    .goto Elwynn Forest,43.318,65.705
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 112 >>Entregue Coletando Alga
    .timer 9,Colete alga RP
    .accept 114 >>Aceite A fuga
    .target William Pestle
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto Elwynn Forest,43.877,66.546,9 >>Suba na Estalagem
step << Warrior/Rogue
    .goto Elwynn Forest,43.392,65.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    >>|cRXP_WARN_apenas treine|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada]|cRXP_WARN_. Não treine outros feitiços para economizar dinheiro para depois|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto Elwynn Forest,42.105,65.927
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 39 >>Entregue Relatório de Tomás
    .turnin 76 >>Entregue A Mina de Jaspe
    .accept 239 >>Aceite Ribeira d'Oeste Precisa de Ajuda
    .accept 59 >>Aceite Armadura de Pano e Couro << Warlock
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
    .target Marshal Dughan
step
    #sticky
    #label GoldshireVendor
    .goto Elwynn Forest,41.529,65.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor >>Lixo de Mercador
    .target Corina Steele
    .money >0.75
step
    .goto Elwynn Forest,41.706,65.544
	>>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    .accept 1097 >>Aceite Tarefa de Elmore
    .target Smith Argus
step << Warlock/Warrior
    #requires GoldshireVendor
    #optional
    .xp 10 >>Suba até o nível 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .accept 1638 >>Aceite O Treinamento do Guerreiro
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
    .money <0.5
step << Warrior
    #optional
    .goto Elwynn Forest,41.087,65.768
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_não treine pois você precisa economizar dinheiro para depois|r
    .accept 1638 >>Aceite O Treinamento do Guerreiro
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,41.096,66.041
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .accept 2998 >>Aceite Tomo de Divindade
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para baixo na Estalagem
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wagner Nascimento|r e |cRXP_FRIENDLY_Rêmulo Marcos|r
    .trainer >>Treine suas magias de classe
    .goto Elwynn Forest,44.392,66.240
    .target +Maximillian Crowe
    .accept 1685 >>Aceite Convocação de Gakin
    .goto Elwynn Forest,44.485,66.268
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Suba
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
    .accept 5635 >>Aceite Prece Desesperada
    .trainer >>Treine suas magias de classe
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.25,66.19
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >>Treine suas magias de classe
    .target Zaldimar Wefhellt
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto Elwynn Forest,43.872,65.937
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    >>|cRXP_WARN_apenas treine|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada]|cRXP_WARN_. Não treine outros feitiços para economizar dinheiro para depois|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Keryn Sylvius
--XX skip quest, not worth going inside for
step << !Warlock
    #completewith PrincessFinish
    #optional
    .abandon 59 >>Abandone Armadura de Pano e Couro
step
    #optional
    #label BoarMeatCooking3
    #completewith Garrison
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatCooking3
    #completewith Garrison
    .goto Elwynn Forest,32.516,85.443,0
    .goto Elwynn Forest,31.081,81.488,0
    .goto Elwynn Forest,36.182,87.799,0
    .goto Elwynn Forest,41.733,86.986,0
    .goto Elwynn Forest,37.741,78.265,0
    .goto Elwynn Forest,41.576,69.499,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Stonetusk Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >>Viaje para The Maclure Vineyards
step
--  #xprate <1.59
    #label Escape
    #requires GoldshireVendor
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .turnin 114 >>Entregue A Fuga
    .target Maybell Maclure
step
    #xprate <1.5
    #label PrincessFinish
    .goto Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .turnin 88,1 >>Entregue Princesa Tem que Morrer << Rogue/Hunter
    .turnin 88,2 >>Entregue Princesa Tem que Morrer << Warrior/Paladin
    .turnin 88,3 >>Entregue Princesa Tem que Morrer << !Rogue !Hunter !Warrior !Paladin
    .target Ma Stonefield
step
    #xprate >1.49
    #label PrincessFinish
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r e |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 88,1 >>Entregue Princesa Tem que Morrer << Rogue/Hunter
    .turnin 88,2 >>Entregue Princesa Tem que Morrer << Warrior/Paladin
    .turnin 88,3 >>Entregue Princesa Tem que Morrer << !Rogue !Hunter !Warrior !Paladin
    .goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
    .turnin 87 >>Entregue Dentadouro
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith Garrison
    .xp 9+4510 >>Farme até 4510+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith Garrison
    .xp 9+5110 >>Farme até 5110+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step
    #optional
    #completewith Garrison
    .goto Elwynn Forest,24.82,76.25,80 >>Viaje para Westbrook Garrison
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda
    .accept 11 >>Aceite Caçando gnolls << Warlock
    .goto Elwynn Forest,24.234,74.450
    .target +Deputy Rainer
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r << Warlock
    .accept 176 >>Aceite Wanted: "Hogger" << Warlock
    .goto Elwynn Forest,24.548,74.672 << Warlock
step << Warlock
    #completewith GnollEnd
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter a |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r]
    .use 1307 >>|cRXP_WARN_Use a |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Agenda de Coleta de Ouro|r] |cRXP_WARN_é um drop extremamente raro. Ignorar este passo se você não conseguir|r
    >>|cRXP_ENEMY_Rude Mordelogo|r |cRXP_WARN_é um spawn raro, mas tem 100% de chance de drop|r
    .collect 1307,1,123 --Collect Gold Pickup Schedule (x1)
    .accept 123 >>Aceite O Coletor
    .unitscan Gruff Swiftbite
step << Warlock
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter seus |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << Warlock
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
    >>Mate o |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em múltiplos locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_no |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Atraia-o de volta para a torre da guarda se necessário, certificando-se de ter feito pelo menos 50% de dano a ele|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
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
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter seus |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
step << Warlock
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 11 >>Entregue Recompensa Gnoll de Riopatas
    .target Deputy Rainer
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+4575 >>Acumule até 4575+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+5175 >>Acumule até 5175+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >>Abandone O Coletor
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>Viaje até Cerro Oeste
step
#xprate >1.49
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    >>|cRXP_WARN_Não aceite as outras missões|r
    .turnin 184 >>Entregue Escritura do Furlbrow
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
#xprate >1.49
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vera Taturana|r
    >>|cRXP_WARN_Não aceite as outras missões|r
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
#xprate <1.50
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .turnin 184 >>Entregue Escritura do Furlbrow
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
    .isOnQuest 184
step
#xprate <1.50
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .goto Westfall,59.95,19.35
    .target +Farmer Furlbrow
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target +Verna Furlbrow
step
    #optional
    #completewith next
    +|cRXP_WARN_NÃO saqueie|r nenhum dos |T134059:0|t[|cRXP_PICK_Saco de Aveia|r] ainda |cRXP_WARN_a menos que você tenha enviado bolsas de grande capacidade para si|r pois você precisará preservar espaço na mochila para o próximo segmento
    .isOnQuest 151
step
#xprate <1.50
    #sticky
    #label Fields
    .goto Westfall,56.04,31.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .accept 9 >>Aceite Os Campos da Morte
    .target Farmer Saldean
step
#xprate >1.49
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r dentro
    >>|cRXP_WARN_Não aceite as outras missões|r
    .turnin 36 >>Entregue Cozido de Costa Negra
    .target Salma Saldean
step
#xprate <1.50
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r dentro
    .turnin 36 >>Entregue Cozido de Costa Negra
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
    .target Salma Saldean
step
    #xprate <1.5
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5775 >>Acumule até 5775+/6500xp
    .subzoneskip 108
step
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto Westfall,56.327,47.520
    .xp 9+5410 >>Acumule até 5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >>Acumule até 5360+/8800xp
--XX 625+210+85+800 = 1720 x2 = 3440
step
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
-- .subzoneskip 108
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r e o |cRXP_FRIENDLY_Capitão Danuvin|r
    .turnin 109 >>Entregue Miguel Mantoforte
    .accept 12 >>Aceite A Milícia do Povo
    .goto Westfall,56.327,47.520
    .target +Gryan Stoutmantle
    .accept 102 >>Aceite Patrulhando Cerro Oeste
    .goto Westfall,56.421,47.623
    .target +Captain Danuvin
step
    #xprate >1.49
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >>Entregue Miguel Mantoforte
    .target Gryan Stoutmantle
step << Human
    #optional
    .goto Westfall,56.04,31.23
    .xp 10 >>Suba até o nível 10
step
    .goto Westfall,57.002,47.169
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .accept 6181 >>Aceite Um Recado Rápido << Human
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
step
    .goto Westfall,52.86,53.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Érica|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dela. Elas são comidas de nível 5 muito baratas|r
    .collect 4592,20,314,1 --Longjaw Mud Snapper (20)
	.target Innkeeper Heather
step << Human
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >>Entregue Um Recado Rápido
    .accept 6281 >>Aceite Continue para Ventobravo
    .target Thor
step << skip --Rogue
    #season 2
    #completewith FlySW
    #label RoSS
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>Use o |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Defias Batedor|r para o |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_Há uma chance muito alta de que o|r |T133644:0|t[Bater Carteira] |cRXP_WARN_falhará porque você está sub-level. Se isso acontecer, pule este passo e voe para Ventobravo. Você o completará em Loch Modan em breve|r
    >>|cRXP_WARN_NÃO atraia o |cRXP_ENEMY_Batedor Défias|r SENÃO ELE IRÁ|r |T132331:0|t[Sumir] |cRXP_WARN_E DESAPARECER POR 3-5 MINUTOS. ENTRE EM|r |T132320:0|t[Furtividade] |cRXP_WARN_CEDO!|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Defias Batedor|r pode aparecer nas colinas|r
    .collect 208772,1 -- Rune of Saber Slash (1)
    .unitscan Defias Scout
    .train 424785,1
--XX Moved/forced to Loch/Darkshore
step << skip --Rogue
    #season 2
    #completewith next
    #requires RoSS
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .itemcount 208772,1
    .train 424785,1
step
    #label FlySW
    .goto Westfall,56.55,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step << skip --Human Paladin
    #season 2
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Entregue Tomo de Divindade
    .accept 1644 >>Aceite Tomo de Divindade
    .turnin 1644 >>Entregue Tomo de Divindade
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
    .isQuestTurnedIn 1643
    .xp 12,1
step << Paladin
    #xprate >1.49
    #season 2
    #optional
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos os|r |T132383:0|t[Explosivo Foguetes] |cRXP_WARN_como a recompensa. Causa bom dano e pode ser usado para \"split pulling\", que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência em vídeo sobre \"split pulling\". É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step << Paladin
    #xprate <1.5
    #season 2
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos os|r |T132383:0|t[Explosivo Foguetes] |cRXP_WARN_como a recompensa. Causa bom dano e pode ser usado para \"split pulling\", que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência em vídeo sobre \"split pulling\". É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step
    #season 0,1 << Paladin
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos os|r |T132383:0|t[Explosivo Foguetes] |cRXP_WARN_como a recompensa. Causa bom dano e pode ser usado para \"split pulling\", que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência em vídeo sobre \"split pulling\". É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step << Rogue
    #optional
    #completewith next
    .goto 1453,57.764,61.412,6 >>Entre no Prédio de Mercadorias Cotidianas
step << Rogue
    #xprate <1.5
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dele|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Rogue
    #xprate <1.5
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dele|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #xprate >1.49
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dele|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Thurman Mullby
    .xp <10+5035,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Rogue
    #xprate >1.49
    .goto 1453,58.380,61.683
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dele|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Thurman Mullby
    .xp >10+5035,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step
    #optional << Warlock/Mage/Warrior
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine 1h Espadas e Báculos << Warlock/Mage
    .trainer >>Treine Espadas de Uma Mão << Rogue
    .trainer >>Treine Cajados << Priest
    .trainer >>Treine Espadas de Duas Mãos << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
step << Warlock/Mage
    .goto StormwindClassic,57.129,57.698
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine Cajados
    .target Woo Ping
step << Rogue
    #ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2623
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
step << Rogue
    #ssf
    #optional
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    >>|cRXP_WARN_Economize 6s para treinamento depois|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,1 --Sprint not Trained
    .money <0.06
--XX No money gate factoring cutlass in case something cheaper on AH
step << Rogue
    #optional
    #ah
    .goto StormwindClassic,57.547,57.076
    .goto 1453,53.615,59.767,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre um|r |T135346:0|t[Alfanje] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    .collect 851,1 -- Cutlass (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .train 2983,3 --Sprint Trained
--XX No money gate factoring cutlass in case something cheaper on AH
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step
    #xprate <1.5
    .goto StormwindClassic,52.623,65.701
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >>Defina sua Pedra de Retorno em Cidade de Ventobravo
    .target Innkeeper Allison
step << skip --Warrior
    #season 2
    .gossipoption 109045 >>Fale com o |cRXP_FRIENDLY_Lívia Valforte <Garçom>|r dentro da Estalagem do Parque
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >>Fale com |cRXP_ENEMY_Estuardo|r, depois derrote-o. Ele ficará inconsciente a 0%
    .goto Stormwind City,21.213,62.781
    >>Se |cRXP_ENEMY_Estuardo|r não estiver lá, aguarde o seu reaparecimento
    .gossipoption 109044 >>Fale com o |cRXP_FRIENDLY_Lívia Valforte <Garçom>|r novamente após derrotar |cRXP_ENEMY_Estuardo|r para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] |cRXP_WARN_para treinar|r |T236317:0|t[Ataque Frenético]
    >>|cRXP_WARN_Nota: Isto pode ser bastante difícil para fazer sozinho neste nível. Procure ajuda ou você o completará em breve no nível 12|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 2998 >>Entregue Tomo de Divindade
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
    .isOnQuest 2998
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1642 >>Aceite Tomo de Divindade
    .use 6775
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1642 >>Entregue Tomo de Divindade
    .accept 1643 >>Aceite Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19834 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Human Paladin
    #xprate >1.59
    #optional
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 647 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <14,1
step << Human Paladin
    #xprate >1.59
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Entregue Tomo de Divindade
    .accept 1644 >>Aceite Tomo de Divindade
    .turnin 1644 >>Entregue Tomo de Divindade
    --.accept 1780 >> Accept The Tome of Divinity
    .target Stephanie Turner
----XX if ever in the future, add Level 12 xp grind for 1.5x Tome of Divinity




----Warlock Elwynn Voidwalker Section Start----




step << Warlock
    #optional
    #completewith GakinStart
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    #xprate >1.59
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >>Treine suas magias de classe
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto StormwindClassic,26.11,77.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >>Treine suas magias de classe
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1685 >>Entregue Gakin's Summons
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step << Warlock
    #softcore
    .deathskip >>Morra e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r usando |T136126:0|t[Conversão de Vida] e ficando parado sobre a Objetos de Cata ao seu lado
    .target Anjo da Cura
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>Saia de Ventobravo
step << Warlock
    #completewith WLHoggerEnd
    .goto Elwynn Forest,42.105,65.927
    .subzone 87 >>Voe para Goldshire
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
    +|cRXP_WARN_Equipe o|r |T135145:0|t[Vara de Luta Balanceada]
    .use 6215
    .itemcount 6215,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.9
step << Warlock
    #optional
    #label BoarMeatCooking4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Abate os |cRXP_ENEMY_Javalis Casca de Pedra|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Rockhide Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    #requires BoarMeatCooking4
    #completewith SChoker
    .goto 1429,49.917,72.959,0
    .goto 1429,54.444,75.879,0
    .goto 1429,57.620,76.213,0
    .goto 1429,61.911,78.274,0
    .goto 1429,65.619,78.388,0
    >>Abate os |cRXP_ENEMY_Javalis Casca de Pedra|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Rockhide Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 62 --Brackwell Pumpkin Patch
step << Warlock
    #optional
    >>|cRXP_WARN_Triture no caminho. Procure treinar sua|r |T135145:0|t[Vara de Luta Balanceada] |cRXP_WARN_habilidade|r
    .subzone 62 >>Vá para o Brackwell Abóbora Mathiaz
    .isOnQuest 1688
step << Warlock
    #xprate <1.5
    #optional
    #completewith SChoker
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    .use 1972>>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] |cRXP_WARN_é uma queda muito rara. Ignorar este passo se você não conseguir|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>Aceite Escritura de Furlbrow
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
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os por seus |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    #label SChoker
    .goto Elwynn Forest,71.10,80.66
    >>Abate |cRXP_ENEMY_Surena Caledon|r. Saqueie-a para obter sua |cRXP_LOOT_Choker|r
    >>|cRXP_WARN_Foque em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    #optional
    #label WolfMeatCooking9
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 2672,10,2178,1,0x20,cooking --Stringy Wolf Meat (1-10)
    .mob Prowler
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step << Warlock
    #optional
    #requires WolfMeatCooking8
    #completewith WlockRedridge
    .goto 1429,84.448,72.486,0
    .goto 1429,88.611,71.379,0
    .goto 1429,89.657,75.373,0
    .goto 1429,87.250,75.853,0
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter seus |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
    .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step << Warlock
    #requires WLBandanaEnd
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 59 >>Entregue Armadura de Pano e Couro
    .turnin 83 >>Entregue Tecidos de Linho Vermelho
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
    #completewith Gnolls
    #label SoulShards
    >>|cRXP_WARN_Farme no caminho. Certifique-se de ter pelo menos 2|r |T134075:0|t[|cRXP_LOOT_Estilhaços de Alma|r] antes de chegar a Redridge |cRXP_WARN_usando|r |T136163:0|t[|cRXP_FRIENDLY_Drenar Alma|r] quando os inimigos estiverem prestes a morrer
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    #optional
    #label WlockRedridge
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step << Warlock
    #label Gnolls
    #requires SoulShards
    .goto Redridge Mountains,17.4,69.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
step << Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996,25 >>Voe para Lakeshire
    >>|cRXP_WARN_MANTENHA-SE NA ESTRADA PRINCIPAL E EVITE QUALQUER INIMIGO PRÓXIMO NO CAMINHO|r
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Gnolls Invasores
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
    #optional
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
    .xp <12,1
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
    .cast 7728 >>|cRXP_WARN_Use a|r |T133292:0|t[Gargantilha de Pedra-sangrenta] |cRXP_WARN_para invocar um|r |cRXP_ENEMY_Invocado Emissário do Caos|r
    .use 6928
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 6928 >>Abate o |cRXP_ENEMY_Invocado Emissário do Caos|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .target Gakin the Darkbinder
    .goto StormwindClassic,25.25,78.59
    .turnin 1689 >>Entregue A Vinculação


----Warlock Elwynn Voidwalker Section End----

step << Rogue
    #xprate <1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Treine apenas|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada]
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Osborne the Night Man
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .train 1766 >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <12,1
    .xp >14,1
step << Rogue
    #xprate >1.59
    #optional
    .goto 1453,74.645,52.818
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <14,1
step << Rogue
    #optional
    #label StilettoDW
    #completewith Continue
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Estilete] |cRXP_WARN_na mão secundária|r
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>6.7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #optional
    #requires StilettoDW
    #completewith Continue
    +|cRXP_WARN_Não se preocupe se você não estiver usando|r |T132147:0|t[Dual Empunhando] |cRXP_WARN_agora, você comprará uma arma mais tarde quando necessário|r
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
step << Human
    #xprate <1.5
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larso Norde|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    .accept 6261 >>Aceite Dungar Tragolongo
    .target Osric Strang
step << Human
    #xprate >1.49
    #label Continue
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larso Norde|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    .target Osric Strang
step << Warrior
    .goto StormwindClassic,74.249,37.244
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1638 >>Entregue A Warrior's Treinamento
    .accept 1639 >>Aceite Bartolino the Bêbado - Missão
    .target Harry Burlguard
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1639 >>Entregue Bartolino the Bêbado - Missão
    .accept 1640 >>Aceite Beat Bartolino - Missão
    .target Bartleby
step << Warrior
    .goto StormwindClassic,73.787,36.323
    >>Ataque |cRXP_ENEMY_Bartolino|r. Ele se renderá a 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1640 >>Entregue Beat Bartolino - Missão
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
step << Priest
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
step << Rogue
    #season 2
    #optional
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >>Entre no Beco da Garganta Cortada na Cidade de Objetos de TBC no Distrito dos Anões
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .goto Stormwind City,63.201,29.491,5,0
    .goto Stormwind City,61.728,29.190
    >>|cRXP_WARN_Suba as escadas da casa|r
    >>Abra o |cRXP_PICK_Baú Empoeirado|r. Saque-o para obter o |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    >>|cRXP_WARN_Fazer isso irá invocar dois |cRXP_ENEMY_Cut-throat Muggers|r de nível 10 que irão atacá-lo|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    #optional
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
step
    .goto StormwindClassic,51.757,12.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >>Entregue Tarefa de Elmore
    .accept 353 >>Aceite Entrega para Lançatroz
    .target Grimand Elmore
step << Warrior
    #season 0,1
    #optional
    #completewith DeeprunEnter
    +|cRXP_WARN_Coloque|r |T132363:0|t[Fender Armadura] |cRXP_WARN_na sua barra de ação e certifique-se de usá-la constantemente. É mais eficaz do que usar|r |T132282:0|t[Golpe Heroico]
step << Warrior/Paladin/Rogue
    #optional
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaita Baixaforja|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Compre|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Você aprenderá|r |T134708:0|t[Mineração] |cRXP_WARN_mais tarde|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453,60.972,11.690,30,0
    .goto 1453,65.933,5.771
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Ironforge
step
    #optional
    #label TramCook1
    #completewith TramEnd
    >>|cRXP_WARN_No Bonde quando chegar:|r
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook1
    #label TramCook2
    #completewith TramEnd
    >>|cRXP_WARN_No Bonde quando chegar:|r
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook2
    #label TramCook3
    #completewith TramEnd
    >>|cRXP_WARN_No Bonde quando chegar:|r
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #optional
    #requires TramCook3
    #label TramCook4
    #completewith TramEnd
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires TramCook4
    #label TramCook5
    #completewith TramEnd
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #optional
    #requires TramCook5
    #label TramCook6
    #completewith TramEnd
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Ironforge
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate <1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Pegue o Bonde das Profundezas para o lado de Ironforge|r
    >>|cRXP_WARN_Aumente de Nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera pelo Bonde para Ironforge se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Lance|r |T136221:0|t[Evocar Emissário do Caos] |cRXP_WARN_e|r |T135230:0|t[Criar Pedra de Vida] |cRXP_WARN_enquanto espera pelo Bonde para Ironforge se necessário|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio no lado de Ironforge do Tram de Profundezas
    .accept 6661 >>Aceite Caçada aos Ratos das Profundezas
    .target Monty
step
    #xprate <1.59
    >>|cRXP_WARN_Use a|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em |cRXP_ENEMY_Deeprun Ratos|r dentro do Bonde das Profundezas|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
step
    #xprate <1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r dentro do Tram de Profundezas
    .turnin 6661 >>Entregue Caçada aos Ratos das Profundezas
    .target Monty
step
    #xprate >1.59
    #optional
    #label TramEnd
    >>|cRXP_WARN_Pegue o Bonde das Profundezas para o lado de Ironforge|r
    >>|cRXP_WARN_Aumente de Nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera pelo Bonde para Ironforge se necessário|r << Rogue/Warrior/Paladin
    >>|cRXP_WARN_Você precisará de sua|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_estar em nível 80 para uma missão do nível 24|r << Rogue !Dwarf
    >>|cRXP_WARN_Lance|r |T136221:0|t[Evocar Emissário do Caos] |cRXP_WARN_e|r |T135230:0|t[Criar Pedra de Vida] |cRXP_WARN_enquanto espera pelo Bonde para Ironforge se necessário|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r na plataforma do meio no lado de Ironforge do Tram de Profundezas
    .accept 6661 >>Aceite Caçada aos Ratos das Profundezas
    .target Monty
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|cRXP_WARN_Use a|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em |cRXP_ENEMY_Deeprun Ratos|r dentro do Bonde das Profundezas|r
    .complete 6661,1 --Rats Captured (x5)
    .use 17117
    .mob Deeprun Rat
    .zoneskip Ironforge
step
    #xprate >1.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r dentro do Tram de Profundezas
    .turnin 6661 >>Entregue Caçada aos Ratos das Profundezas
    .target Monty
    .zoneskip Ironforge
step
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    >>|cRXP_WARN_Aumente seu Nível de|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_se necessário enquanto espera o trem|r << Rogue/Warrior/Paladin
    .zone Ironforge >>Pegue o Bonde para Ironforge
step
    .zone Ironforge >>Entre em Ironforge
    .isQuestAvailable 314
step << Paladin/Warrior
    #season 2
    #optional
    #completewith next
    .goto Ironforge,71.54,73.46,10,0
    .goto Ironforge,72.53,76.94,10 >>Vá para |cRXP_FRIENDLY_Bruuk Cevabarba|r na Estalagem
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.53,76.94
    .gossipoption 110791 >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r dentro
    .target Bruuk Barleybeard
    .skipgossip 5570,1,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 110793 "How's business?"
--XX 110791 "Sounds like you need someone to bounce him for you."
step << Paladin/Warrior
    #season 2
    .goto Ironforge,72.40,73.63
    .gossipoption 109084 >>Fale com |cRXP_FRIENDLY_Dumalte|r para iniciar uma luta
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r << Paladin
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r << Paladin
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e conjure|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r << Paladin
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e use|r |T133688:0|t[Bandages] |cRXP_WARN_se os tiver/se necessário|r << Warrior
    .mob Bruart
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109084 "Seems you've had a few too many"
--XX Check if another player can skip the "how's business" dialogue for you (paladin, warrior)
step << Paladin/Warrior
    #season 2
    #optional
    .goto Ironforge,72.40,73.63,-1
    .goto Ironforge,72.53,76.94,-1
    >>Derrote o |cRXP_ENEMY_Dumalte|r
    >>|cRXP_WARN_Tenha cuidado quando ele conjura|r |T132939:0|t[Revés] |cRXP_WARN_(te atordoa por 2 segundos)|r
    >>|cRXP_WARN_Lembrar de pré-conjurar|r |T135924:0|t[Selo do Cruzado] |cRXP_WARN_nele|r << Paladin
    >>|cRXP_WARN_NÃO conjure acidentalmente|r |T135906:0|t[Bênção do Poder] |cRXP_WARN_nele|r << Paladin
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e conjure|r |T135920:0|t[Luz Sagrada] |cRXP_WARN_se necessário|r << Paladin
    >>|cRXP_WARN_Arraste-o para cima até a varanda, depois pule para baixo fora da estalagem e use|r |T133688:0|t[Bandages] |cRXP_WARN_se os tiver/se necessário|r << Warrior
    >>|cRXP_WARN_Depois de derrotar |cRXP_ENEMY_Dumalte|r:|r
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r novamente para receber o |T134419:0|t[Runa of Repreensão] << Paladin
    >>|cRXP_WARN_Se ele não lhe der o|r |T134419:0|t[Runa of Repreensão]|cRXP_WARN_, você pode precisar lutar contra |cRXP_ENEMY_Dumalte|r novamente|r << Paladin
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r novamente para receber o |T134419:0|t[Runa of Ataque Frenético] << Warrior
    >>|cRXP_WARN_Se ele não lhe der o|r |T134419:0|t[Runa of Ataque Frenético]|cRXP_WARN_, você pode precisar lutar contra |cRXP_ENEMY_Dumalte|r novamente|r << Warrior
    >>|cRXP_WARN_NOTA: Isto pode ser difícil de fazer sozinho. Procure por ajuda, ou você será instruído a completá-lo novamente mais tarde no guia|r << Warrior
    .collect 205683,1 << Paladin --Rune of Rebuke (1)
    .collect 204716,1 << Warrior --Rune of Frenzied Assault (1)
    .target Bruuk Barleybeard
    .skipgossip 5570,2,1
    .skipgossip 209004,1
    .train 425621,1 << Paladin
    .train 425447,1 << Warrior
--XX 109539 "I've taken care of Stuart. He shouldn't be a problem anymore."
step << Paladin
    #season 2
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Repreensão] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Repreensão]
    .use 205683
    .itemcount 205683,1 --Rune of Rebuke (1)
    .train 425621,1
step << Paladin
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Grave seu|r |T134596:0|t|cRXP_LOOT_[Calças]|r |cRXP_WARN_com|r |T134596:0|t[Gravar Calça - Repreensão]
    >>|cRXP_WARN_Lembre-se de colocar|r |T134919:0|t[Repreensão] |cRXP_WARN_nas suas barras de ações|r
    .train 425621,3
step << Warrior
    #season 2
    .train 425447 >>|cRXP_WARN_Use a|r |T134419:0|t[Runa of Ataque Frenético] |cRXP_WARN_para aprender|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .use 204716
    .itemcount 204716,1 --Rune of Frenzied Assault (1)
step << Warrior
    #season 2
    #completewith Dirt
    .engrave 7 >>|cRXP_WARN_Grave seu|r |T134596:0|t|cRXP_LOOT_[Calças]|r |cRXP_WARN_com|r |T134596:0|t[Gravar Calça - Ataque Frenético]
    .train 425447,3
step << Warrior
    #optional
    #completewith WarriorTrain
    .goto 1455,67.400,84.909,15,0
    .goto Ironforge,65.905,88.405,12 >>Vá para |cRXP_FRIENDLY_Bilban Lançachave|r
step << Warrior
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    >>|cRXP_WARN_Guarde 20s 70c para depois|r
    .train 2687 >>Treine suas magias de classe
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #xprate >1.59
    #optional
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    >>|cRXP_WARN_Guarde 20s 70c para depois|r
    .train 5242 >>Treine suas magias de classe
    .target Bilban Tosslespanner
    .xp <12,1
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >>Entre no Timberline Armas Building
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
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
    #xprate <1.5
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,200 --Collect Balanced Throwing Dagger (200)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,200 --Collect Keen Throwing Knife (200)
    .target Brenwyn Wintersteel
    .xp <10+7310,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
step << Warrior
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
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
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Equilibrado Arremessando Adagas]
    .use 2946
    .itemcount 2946,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.0
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.356,88.398,6 >>Saia do Timberline Armas Building
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #completewith IFHS
    .goto 1455,43.883,59.467,15,0
    .goto 1455,38.497,71.135,15,0
    .goto 1455,25.658,61.707,20,0
    .goto 1455,20.419,53.269,10 >>Entre na Taverna Pedrafogue
    .train 122,3 << Mage
    .train 633,3 << Paladin
step << Mage/Paladin
    #xprate >1.49
    #optional
    #completewith MageIFTrain << Mage
    #completewith PaladinIFTrain << Paladin
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,27.17,8.58,12 >>Vá para |cRXP_FRIENDLY_Dink|r << Mage
    .goto Ironforge,23.131,6.143,12 >>Vá para |cRXP_FRIENDLY_Brandur Ferromalho|r << Paladin
step << Mage
    #xprate >1.49
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r dentro
    .train 122 >>Treine suas magias de classe
    .target Dink
    .xp <10,1
    .xp >12,1
step << Mage
    #xprate >1.49
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r dentro
    .train 145 >>Treine suas magias de classe
    .target Dink
    .xp <12,1
    .xp >14,1
step << Mage
    #xprate >1.49
    #label MageIFTrain
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r dentro
    .train 1460 >>Treine suas magias de classe
    .target Dink
    .xp <14,1
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Brandur Ferromalho dentro
    .train 633 >>Treine suas magias de classe
    .target Brandur Ironhammer
    .xp <10,1
    .xp >12,1
step << Paladin
    #xprate >1.49
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 19834 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <12,1
    .xp >14,1
step << Paladin
    #xprate >1.49
    #optional
    #label PaladinIFTrain
    .goto StormwindClassic,38.67,32.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .train 647 >>Treine suas magias de classe
    .target Arthur the Faithful
    .xp <14,1
--XX Alternative paladin train if they didn't get 10 in Goldshire
step
    #xprate >1.49
    #label IFHS
    .goto 1455,20.419,53.269,10,0 << Mage/Paladin
    .goto Ironforge,18.14,51.45
    >>Fale com o |cRXP_FRIENDLY_Estalajadeiro Aguardente|r dentro
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
step << skip --logout skip
    #ssf
    #xprate >1.49
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Salte em cima das Velas na mesa. Execute um Pulo de Logout desconectando e reconectando|r
    .isQuestAvailable 314
step << skip --logout skip
    #xprate <1.5
    #ssf
    #optional
    #completewith next
    .goto 1455,48.773,55.875,20,0
    .goto 1455,48.257,55.177,20,0
    .goto 1455,46.648,50.482,20,0
    .goto 1455,44.781,49.811,20,0
    .goto 1455,38.628,56.436,20 >>Entre no Alto Trono
    .zoneskip Dun Morogh
    .isQuestAvailable 314
    .train 122,3 << Mage
    .train 633,3 << Paladin
step << skip --logout skip
    #xprate <1.5
    #ssf
    #optional
    .goto 1455,38.628,56.436
    .zone Dun Morogh >>|cRXP_WARN_Salte para o topo de um dos ombros do trono, depois execute um Logout Pular saindo e entrando novamente no jogo|r
    .isQuestAvailable 314
    .train 122,3 << Mage
    .train 633,3 << Paladin
step << Mage/Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.17,12.58,20,0 << Paladin
    .goto Ironforge,27.60,11.06,20,0 << Mage
    .goto Ironforge,27.17,8.58,12 >>Vá para |cRXP_FRIENDLY_Dink|r << Mage
    .goto Ironforge,23.131,6.143,12 >>Vá para |cRXP_FRIENDLY_Brandur Ferromalho|r << Paladin
step << Mage
    #xprate <1.5
    .goto Ironforge,27.17,8.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r dentro
    .train 122 >>Treine suas magias de classe
    .target Dink
--XX Alternative mage train if they didn't get 10 in Goldshire
step << Paladin
    #xprate <1.5
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Brandur Ferromalho dentro
    .train 633 >>Treine suas magias de classe
    .target Brandur Ironhammer
--XX Alternative paladin train if they didn't get 10 in Goldshire
step << skip --logout skip << Mage/Paladin
    #xprate <1.5
    #ssf
    #optional
    .goto 1455,25.238,10.965,-1
    .goto 1455,24.300,8.708,-1
    .zone Dun Morogh >>|cRXP_WARN_Salte em cima de qualquer pilar acima de |cRXP_FRIENDLY_Toldren Ferrofundo|r ou |cRXP_FRIENDLY_Braenna Rochassílex|r, posicione seu personagem até parecer que está flutuando, depois execute um Pulo de Logout desconectando e reconectando|r
    .isQuestAvailable 314
    .train 122,3 << Mage
    .train 633,3 << Paladin
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para aumentar sua|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para uma entrega mais rápida em Loch Modan em breve e para subir seu nível de|r |T133971:0|t[Culinária] |cRXP_BUY_habilidade com:|r
    >>|T134342:0|t[Javali Intestines]
    >>|T134027:0|t[Urso Carne]
    >>|T134437:0|t[Aranha Ichor]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #ah
    #optional
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para uma entrega mais rápida em Loch Modan em breve:|r
    >>|T134342:0|t[Javali Intestines]
    >>|T134027:0|t[Urso Carne]
    >>|T134437:0|t[Aranha Ichor]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .zoneskip Dun Morogh
    .isQuestAvailable 418
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << skip --logout skip
    #ah
    #optional
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Salte bem no topo da |cRXP_PICK_Caixa de correio|r, depois realize um Pulo de Logout ao fazer logout e voltar|r
    .isQuestAvailable 314
step
    .goto 1426,53.47,35.02
    >>Saia de Altaforja
    .zone Dun Morogh >>Vá para Dun Morogh
--logout skip - remove if logout skips re-added
step
    #optional
    #label BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Mate os |cRXP_ENEMY_Javalis de Rochedo Anciões|r. Saque-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Auberdine depois|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh1
    #completewith Dirt
    .goto 1426,57.936,50.787,0
    >>Mate os |cRXP_ENEMY_Javalis de Rochedo Anciões|r. Saque-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #optional
    #label Dirt
    #completewith Rudra
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Suba pelo caminho de terra
    .isQuestAvailable 314
step
    #completewith VagashEnd
    #requires Dirt
    .goto 1426,62.778,54.591,0
    .goto 1426,62.538,46.195,0
    +|cRXP_WARN_Atraia |cRXP_ENEMY_Ragash|r para baixo até|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLIQUE AQUI se você está tendo dificuldades|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .mob Vagash
step << Warrior/Rogue
    #optional
    #requires Dirt
    #completewith VagashEnd
    +|cRXP_WARN_Equipe as|r |T135425:0|t[Facas de Arremesso Afiadas]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
    .xp <11,1
step
    #label Rudra
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step
    #label VagashEnd
    .goto 1426,62.778,54.591,0
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mate |cRXP_ENEMY_Ragash|r. Saque-o para obter sua |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Atraia-o até o guarda ao sul do rancho. Certifique-se de fazer mais de 51% de dano|r
    >>|cRXP_WARN_Vigiar o vídeo abaixo antes de tentar matar |cRXP_ENEMY_Ragash|r. Pode ser feito solo em qualquer classe|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << Mage
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Mage
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.082,49.851
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Rudra Ambarmanso|r
    .turnin 314 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step
    #optional
    #label BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Mate os |cRXP_ENEMY_Grandes Javalis de Rochedo|r. Saque-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Large Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 134 --Gol'Bolar Quarry
step
    #optional
    #requires BoarMeatDunMorogh2
    #completewith QuarryStart
    .goto 1426,66.356,51.02,0
    >>Mate os |cRXP_ENEMY_Grandes Javalis de Rochedo|r. Saque-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Large Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 134 --Gol'Bolar Quarry
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step << !Human
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_se necessário|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_se necessário|r << !Warrior !Rogue
    .target Kazan Mogosh
    .xp >15,1
step << Rogue
    #completewith QuarryEnd
    #label RogueWep
    .goto 1426,68.866,55.958,8,0
    .goto 1426,69.002,55.896
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frast Dokner|r
    >>|cRXP_WARN_Compre um|r |T135321:0|t[Gládio] |cRXP_WARN_dele|r
    .collect 2488,1 --Collect Gladius (1)
    .target Frast Dokner
    .money <0.0482
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
--XX Shows if you didn't get a cutlass or better wep earlier
step << Rogue
    #optional
    #completewith QuarryEnd
    #requires RogueWep
    #label Gladius
    .equip 16,2488 >>|cRXP_WARN_Equipe o|r |T135321:0|t[Gládio] |cRXP_WARN_na sua mão principal|r
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.4
step << Rogue
    #optional
    #completewith QuarryEnd
    #requires Gladius
    .equip 17,2494 >>|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete] |cRXP_WARN_na sua mão secundária|r
    .use 2494
    .itemcount 2494,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step
    #xprate <1.5
    #label QuarryStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r e com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 433 >>Aceite O Funcionário Público
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
    .accept 432 >>Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #xprate >1.49
    #label QuarryStart
    .goto Dun Morogh,69.084,56.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Encarregada Pedracenho|r
    .accept 432 >>Aceite Malditos Troggs!
    .target Foreman Stonebrow
    .xp >14,1
step << Warrior/Paladin/Rogue
    .goto Dun Morogh,69.324,55.456
    #requires RogueWep << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dank Chuviscorte|r
    .train 2575 >>Treine |T134708:0|t[Mineração]
    >>|cRXP_WARN_Isto é usado em conjunto com|r |T136241:0|t[Ferraria] |cRXP_WARN_para fazer|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_e|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_para aumentar seu dano de arma|r
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .target Dank Drizzlecut
    .train 2018,3 --Blacksmithing
step << Warrior/Paladin/Rogue
    #optional
    #completewith QuarryEnd
    .cast 2580 >>|cRXP_WARN_Lance|r |T136025:0|t[Localizar Minérios]
    .usespell 2580
    .train 2575,3 --Mining Trained
step
    #xprate <1.5
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Abata |cRXP_ENEMY_Rockjaw Skullthumpers|r e |cRXP_ENEMY_Rockjaw Bonesnappers|r dentro da caverna
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    #xprate >1.49
    .goto Dun Morogh,70.49,58.35,50,0
    .goto Dun Morogh,68.23,59.37,50,0
    .goto Dun Morogh,70.49,58.35
    >>Abata os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
    .isOnQuest 432
step
    #xprate <1.5
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r e com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
    .turnin 433 >>Entregue O Funcionário Público
    .goto Dun Morogh,68.671,55.969
    .target +Senator Mehr Stonehallow
step
    #xprate >1.49
    #label QuarryEnd
    .goto Dun Morogh,69.084,56.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Encarregada Pedracenho|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target Foreman Stonebrow
    .isQuestComplete 432
step << !Warrior !Rogue !Paladin
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .target Kazan Mogosh
    .xp >15,1
step
    #optional
    #label BoarMeatDunMorogh3
    #completewith Revenge
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Scarred Crag Boars|r e os |cRXP_ENEMY_Elder Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatDunMorogh3
    #completewith Revenge
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Scarred Crag Boars|r e os |cRXP_ENEMY_Elder Crag Boars|r. Saqueie-os pelos seus |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Scarred Crag Boar
    .mob Elder Crag Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,79.672,36.171
    >>Clique no |cRXP_PICK_Cadáver Anão|r no chão
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step << Mage
    #season 2
    #completewith next
    >>Abate o |cRXP_ENEMY_Ronhagarra|r. Saqueie-o para obter o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r]
    .collect 203753,1 -- Spell Notes: RING SEFF OSTROF (1)
    .train 401765,1
step
    .goto Dun Morogh,78.97,37.14
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o para a |cRXP_LOOT_Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step << Mage
    #season 2
    #completewith enterloch
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r]
    .train 401765 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: COLESDI DASGAI|r] |cRXP_WARN_para treinar|r |T236227:0|t[Dedos Glaciais]
    .use 203753
step
    #label Revenge
    .goto Dun Morogh,83.892,39.188
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417,1 >>Entregue A Vingança do Piloto << Rogue
    .turnin 417 >>Entregue A Vingança do Piloto << !Rogue
    .target Pilot Hammerfoot
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Adaga do Artífice] |cRXP_WARN_na sua mão secundária|r
    .use 2218
    .itemcount 2218,1
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
step
    #label enterloch
    .goto Dun Morogh,84.4,31.1,25 >>Passe pelo túnel para Loch Modan
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
#season 0,1
#version 1
<< Alliance
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan
#displayname 13-15 Loch Modan << SoD
#next 13-15 Cerro Oeste; 14-16 Costa Negra
#defaultfor Human

step
    #optional
    #completewith next
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Comerciante e Conserto
    .target Gothor Brumn
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    >>|cRXP_WARN_Não aceite Ordens dos Lançatroz ainda|r
    .turnin 353 >>Entregue Entrega para Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 10|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Auberdine depois|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
step
    #optional
    #requires BoarMeatLoch1
    #completewith ThelsamarFirst
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Isto será usado para melhorar sua|r |T133971:0|t[Culinária] |cRXP_WARN_depois|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144
step
    #optional
    #completewith ThelsamarFirst
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |T134027:0|t|cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T134342:0|t|cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |T134437:0|t|cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Elder Black Bear
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Mountain Boar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 144
step
    #optional
    #completewith next
    #label Thelsamar
    .subzone 144 >>Vá para Thelsamar
step
    #requires Thelsamar
    #completewith next
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    #label ThelsamarFirst
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
    .isQuestComplete 418
step
    #optional
    #completewith StormpikeO
    .abandon 1338 >>Abandone Ordens dos Lançatroz. Isto é para desbloquear a Tarefa de Montanhista Lançatroz, que dará uma entrega grátis de 550 xp
step
    #completewith next
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >>|cRXP_BUY_Compre até 2|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_dela se necessário|r
    .target Yanni Stoutheart
step
    .goto Loch Modan,35.534,48.404
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .vendor 6734 >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_. Procure ter cerca de 20|r << !Warrior !Rogue
    .target Innkeeper Hearthstove
    .xp >15,1
step
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
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    #optional
    #label BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #requires BoarMeatLoch2
    #completewith SilverStream
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #completewith SilverStream
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |T134027:0|t|cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T134342:0|t|cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |T134437:0|t|cRXP_LOOT_Spider Ichor|r
    .mob +Elder Black Bear
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Mountain Boar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #xprate <1.59
    #completewith MinerGear
    >>Mate os |cRXP_ENEMY_Ratos de Túnel|r. Saqueie-os para obter |T133854:0|t|cRXP_LOOT_Orelhas de Rato de Túnel|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #label SilverStream
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >>Vá para Prateado Stream Mina, mate os |cRXP_ENEMY_Kobolds|r para obter |T133854:0|t[|cRXP_LOOT_Ears|r] no caminho
step
    #xprate >1.59
    #completewith BuyMace << Paladin/Warrior
    #completewith MinerGear << !Paladin !Warrior
    >>Mate os |cRXP_ENEMY_Ratos de Túnel|r. Saqueie-os para obter |T133854:0|t|cRXP_LOOT_Orelhas de Rato de Túnel|r
    >>|cRXP_WARN_Não desvie-se do seu caminho por isso, pois você provavelmente pulará essa missão|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #requires SilverStream
    #label MinerGear
    .goto Loch Modan,35.93,22.55
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r. Saqueie-os para obter o |cRXP_LOOT_Equipamento dos Mineiros|r
    >>|cRXP_WARN_Os |cRXP_PICK_Caixotes da Liga dos Mineiros|r podem ser encontrados por toda a Mina|r
    >>|cRXP_WARN_Você poderá fazer esta missão em um nível mais alto se desejar pular por enquanto|r
    .complete 307,1 -- Miners' Gear (4)
step << Paladin/Warrior
    #label BuyMace
    .goto Loch Modan,42.867,9.885
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nillen Andemar|r
    >>|cRXP_BUY_Compre a|r |T133476:0|t[Maça Pesada com Pontas] |cRXP_BUY_OU o|r |T133053:0|t[Malho de Pau-ferro] |cRXP_BUY_dele (se estiverem disponíveis)|r
    >>|cRXP_WARN_Se você não tiver dinheiro suficiente, então farme ouro nos |cRXP_ENEMY_Tunnel Ratos|r próximos até ter o suficiente|r
    >>|cRXP_WARN_Faça isto rapidamente pois outro jogador pode comprá-lo antes de você|r
    >>|cRXP_WARN_Se você não quer fazer isto, pule este passo|r
    .collect 4778,1,307,1 --Heavy Spiked Mace (1)
    .collect 4777,1,307,1 --Ironwood Maul (1)
    .target Nillen Andemar
    .itemcount 4778,<1 --Heavy Spiked Mace (<1)
    .itemcount 4777,<1 --Ironwood Maul (<1)
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_Equipe a|r |T133476:0|t[Maça Pesada com Pontas]
    .use 4778
    .itemcount 4778,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <14,1
step << Paladin/Warrior
    #optional
    #completewith StormpikeDelivery
    +|cRXP_WARN_Equipe o|r |T133053:0|t[Malho de Pau-ferro]
    .use 4777
    .itemcount 4777,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.7
    .xp <13,1
step
    #xprate <1.59
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82
    >>Mate os |cRXP_ENEMY_Ratos de Túnel|r. Saqueie-os para obter suas |T133854:0|t|cRXP_LOOT_Orelhas|r
    >>|cRXP_WARN_Certifique-se de que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe de Paladino|r << Paladin
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #xprate >1.59
    #loop
    .goto Loch Modan,25.05,30.19,0
    .goto Loch Modan,26.06,43.44,0
    .goto Loch Modan,37.71,16.84,0
    .goto Loch Modan,37.71,16.84,50,0
    .goto Loch Modan,35.48,16.82,50,0
    .goto Loch Modan,25.05,30.19,50,0
    .goto Loch Modan,26.06,43.44,50,0
    >>Mate os |cRXP_ENEMY_Ratos de Túnel|r. Saqueie-os para obter suas |T133854:0|t|cRXP_LOOT_Orelhas|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
    .itemcount 3110,6 --Tunnel Rat Ear
step
    #optional
    #label BoarMeatLoch3
    #completewith ThelsamarTwo
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Mountain Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #optional
    #requires BoarMeatLoch3
    #completewith ThelsamarTwo
    .goto 1426,70.845,51.784,0
    .goto 1426,73.533,50.850,0
    .goto 1426,75.353,48.533,0
    .goto 1426,79.881,46.805,0
    .goto 1426,81.040,43.456,0
    .goto 1426,80.583,36.040,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os por sua |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
    .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 144 --Thelsamar
    .subzoneskip 925 --Algaz Station
step
    #sticky
    #label CookingQEnd
    #loop
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |T134027:0|t|cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T134342:0|t|cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |T134437:0|t|cRXP_LOOT_Spider Ichor|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .goto Loch Modan,26.9,10.7,0
    .goto Loch Modan,28.6,15.4,0
    .goto Loch Modan,39.4,33.3,0
    .waypoint Loch Modan,26.9,10.7,90,0
    .waypoint Loch Modan,30.9,10.6,90,0
    .waypoint Loch Modan,28.6,15.4,90,0
    .waypoint Loch Modan,30.5,26.6,90,0
    .waypoint Loch Modan,33.4,30.3,90,0
    .waypoint Loch Modan,39.4,33.3,90,0
    .mob +Elder Black Bear
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .goto Loch Modan,38.0,34.9,0
    .goto Loch Modan,29.8,35.9,0
    .goto Loch Modan,28.6,22.6,0
    .waypoint Loch Modan,38.0,34.9,90,0
    .waypoint Loch Modan,37.1,39.8,90,0
    .waypoint Loch Modan,29.8,35.9,90,0
    .waypoint Loch Modan,27.7,25.3,90,0
    .waypoint Loch Modan,28.6,22.6,90,0
    .mob +Mountain Boar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .goto Loch Modan,31.9,16.4,0
    .goto Loch Modan,33.8,40.5,0
    .goto Loch Modan,39.0,32.1,0
    .waypoint Loch Modan,31.9,16.4,90,0
    .waypoint Loch Modan,28.0,20.6,90,0
    .waypoint Loch Modan,33.8,40.5,90,0
    .waypoint Loch Modan,36.2,30.9,90,0
    .waypoint Loch Modan,39.0,32.1,90,0
    .mob +Forest Lurker
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto Loch Modan,24.134,18.208
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Venda ao Comerciante e repare se necessário|r
    .target Gothor Brumn
step << Human
    #xprate <1.59
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .target Mountaineer Stormpike
    .dungeon !DM
step << Human
    #xprate >1.59
    #label StormpikeDelivery
    .goto Loch Modan,24.77,18.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz << Mage/Warlock/Rogue
    .target Mountaineer Stormpike
    .dungeon !DM
step
    #label ThelsamarTwo
    .subzone 144 >>Viaje para Thelsamar
step
    #requires CookingQEnd
    #xprate <1.59
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
step
    #requires CookingQEnd
    #xprate >1.59
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto Loch Modan,36.72,41.97,15,0
    .goto Loch Modan,37.24,43.19,15,0
    .goto Loch Modan,37.33,45.63,15,0
    .goto Loch Modan,36.77,46.20,15,0
    .goto Loch Modan,35.19,46.88,15,0
    .goto Loch Modan,32.67,49.71,20,0
    .goto Loch Modan,36.77,46.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
    .isQuestComplete 416
step
    #xprate >1.59
    #optional
    #sticky
    #label RatAbandon
    .abandon 416 >>Abandone Capturando Ratos
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>Entre na Stoutlager Estalagem
step
    .goto Loch Modan,34.828,49.283
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
step
    #label FlintTinder
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e uma|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Isto é usado para fazer|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em Navios ou Bondes para aumentar seu|r |T133971:0|t[Culinária] |cRXP_WARN_sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r lá fora
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .target Thorgrum Borrelson
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>Suba o caminho de terra e desça para o bunker
step
    #xprate <1.59
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r no bunker
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step
    #xprate <1.59
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #xprate >1.59
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r no bunker
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
    .xp >14,1 << !Warrior
step
    #xprate >1.59
    #label DefenseStart
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
    .xp >14,1 << !Warrior
step << Warrior
    #season 2
    #sticky
    #label Geode
    #loop
    .goto Loch Modan,27.01,48.74,0
    .goto Loch Modan,27.68,56.83,0
    .goto Loch Modan,33.35,71.59,0
    .goto Loch Modan,31.54,74.96,0
    .waypoint Loch Modan,27.01,48.74,50,0
    .waypoint Loch Modan,27.68,56.83,50,0
    .waypoint Loch Modan,33.35,71.59,50,0
    .waypoint Loch Modan,31.54,74.96,50,0
    .waypoint Loch Modan,33.88,76.58,50,0
    >>Mate os |cRXP_ENEMY_Troggs|r. Saqueie-os para obter um |cRXP_LOOT_Geodo de Caveira|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step
    #xprate <1.5
    .goto Loch Modan,27.33,56.70
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os para obter |cRXP_LOOT_Teeth|r
    >>|cRXP_WARN_Certifique-se de que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe de Paladino|r << Paladin
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    #xprate >1.49
    .goto Loch Modan,27.33,56.70
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os para obter |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
    .isOnQuest 224
    .isOnQuest 267
step << Warlock
    #xprate <1.5
    #optional
    #completewith TroggT
    .goto Loch Modan,27.33,56.70,0
    +Farme os |cRXP_ENEMY_Troggs|r até conseguir 75 prata e 79 cobre em lixo de vendedor/dinheiro
    .money >0.7579
step << Warlock
    #xprate >1.49
    #optional
    #completewith TroggT
    .goto Loch Modan,27.33,56.70,0
    +Mate os |cRXP_ENEMY_Troggs|r até ter 42s 39c de lixo de vendedor
    .money >0.4239
step << Warlock
    #xprate <1.5
    #optional
    .goto Loch Modan,27.33,56.70
    .xp 13+9600 >>Mate até 9600+/11400xp
step
    #optional
    #xprate 1.49-1.59
    .goto Loch Modan,27.33,56.70
    .xp 13+8700 >>Mate até 8700+/11400xp
step
    #optional
    #xprate >1.59
    .goto Loch Modan,27.33,56.70
    .xp 13+7800 >>Mate até 7800+/11400xp
step << Mage
    #xprate <1.5
    #season 2
    .goto Loch Modan,29.2,81.2,50,0
    .goto Loch Modan,28.8,83.4,50,0
    .goto Loch Modan,30.0,83.8,50,0
    .goto Loch Modan,32.2,87.2,50,0
    .goto Loch Modan,33.8,88.6,50,0
    .goto Loch Modan,36.0,88.0,50,0
    .goto Loch Modan,36.6,81.2,50,0
    .goto Loch Modan,36.6,79.6
    >>Mate os |cRXP_ENEMY_Stonesplinter Seers|r. Saqueie-os para |T134939:0|t[|cRXP_FRIENDLY_Chewed Feitiço Notes]|r
    .collect 208854,1
    .mob Stonesplinter Seer
    .train 415936,1
step << Mage
    #xprate <1.5
    #season 2
    #completewith HumbleBeginnings
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o |T134939:0|t[|cRXP_FRIENDLY_Chewed Feitiço Notes]|r
    .train 415936 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Chewed Feitiço Notes|r] |cRXP_WARN_to train|r |T236220:0|t[Bomba Viva]
    .use 208854
step << Warrior
    #season 2
    #requires Geode
    .goto Loch Modan,30.47,79.71
    >>Mate o |cRXP_ENEMY_Batecrânios Lascapedra|r
    >>|cRXP_WARN_Durante o combate isso te atingirá, transformando o |cRXP_LOOT_Geodo de Caveira|r em um|r |T236489:0|t[|cRXP_LOOT_Geodo de Caveira Rachado|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    #season 2
    .use 208848 >>|cRXP_WARN_Use o|r |T236489:0|t[|cRXP_LOOT_Geodo Rachado de Caveira|r] |cRXP_WARN_para receber|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    #season 2
    .train 425443 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r] |cRXP_WARN_para treinar|r |T132394:0|t[Golpe Rápido]
    .use 208778
    .itemcount 208778,1
step
    #xprate <1.5
    #optional
    .goto Loch Modan,27.33,56.70
    +Farme |cRXP_ENEMY_Troggs|r até você ter <1 minuto em sua |T134414:0|t[Pedra de Regresso]
    .cooldown item,6948,<60
step
    #optional
    #completewith next
    .goto Loch Modan,24.78,70.17,10,0
    .goto Loch Modan,23.73,75.52,15 >>Suba o caminho de terra e desça para o bunker
step
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    #label TroggT
    .goto Loch Modan,22.071,73.127
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
    .isQuestComplete 224
step
    #xprate >1.49
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
    .zoneskip Ironforge
    .cooldown item,6948,<0
step
    #xprate >1.49
    .hs >>Use sua Pedra de Retorno para ir a Ironforge
    .zoneskip Ironforge
    .cooldown item,6948,>0,1
step
    #xprate <1.5
    #completewith HumbleBeginnings
    .hs >>Use sua Pedra de Retorno para ir à Cidade de Ventobravo
    .zoneskip Stormwind City
--XX Start of <1.5x section
step << Warlock/Priest
    #xprate <1.5
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dela|r
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
step << Warlock/Priest
    #xprate <1.5
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dela ou procure na Casa de Leilões por uma|r |T135144:0|t[Varinha Mágica Maior]
    .goto StormwindClassic,42.65,67.16,14,0
    .goto StormwindClassic,42.88,65.11
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_Lembrar de equipar a|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_Mais tarde quando atingir o nível 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    #xprate <1.5
    .goto StormwindClassic,26.117,77.225
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    #xprate <1.5
    .goto StormwindClassic,25.665,77.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Spackle Cardopomo|r
    .vendor >>|cRXP_BUY_Compre|r |T133738:0|t[Grimório of Consumir Sombras (Rank 1)] |cRXP_BUY_e|r |T133738:0|t[Grimório de Sacrificar (Rank 1)] |cRXP_BUY_se você conseguir pagá-los. Se não, você pode comprá-los mais tarde|r
    .target Spackle Thornberry
step << Mage
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,37.69,82.09,10 >>Vá para a Torre dos Magos
step << Mage
    #xprate <1.5
    .goto StormwindClassic,36.87,81.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
step << Priest/Paladin
    #xprate <1.5
    #optional
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,39.80,29.77
    >>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1642 >>Aceite Tomo de Divindade
    .use 6775
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,39.80,29.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1642 >>Entregue Tomo de Divindade
    .accept 1643 >>Aceite Tomo de Divindade
    .target Duthorian Rall
step << Paladin
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto StormwindClassic,38.82,31.27,10,0
    .goto StormwindClassic,38.67,32.82
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Paladin
    #xprate <1.5
    #season 2
    .goto StormwindClassic,38.10,28.10
    .gossipoption 109653 >>Fale com o |cRXP_FRIENDLY_Irmão Rômulo|r
    .target Brother Romulus
    .skipgossip
    .train 410015,1
step << Paladin
    #xprate <1.5
    #season 2
    #optional
    #completewith next
    .goto StormwindClassic,37.39,29.76,5,0
    .goto StormwindClassic,37.87,29.10,5,0
    .goto StormwindClassic,36.52,32.67,8,0
    .goto StormwindClassic,36.55,33.45,8,0
    .goto StormwindClassic,35.95,34.05,8,0
    .goto StormwindClassic,35.46,33.03,8,0
    .goto StormwindClassic,35.95,31.54,8,0
    .goto StormwindClassic,34.79,29.31,8,0
    .goto StormwindClassic,33.69,29.69,8,0
    .goto StormwindClassic,32.57,27.49,8,0
    .goto StormwindClassic,33.41,25.61,8,0
    >>Desça para o lado ocidental da Cripta da Catedral
    .goto StormwindClassic,32.86,24.77,8 >>Viaje em direção a |cRXP_LOOT_Nota Calcinada|r na cripta
    .train 410015,1
step << Paladin
    #xprate <1.5
    #season 2
    .goto StormwindClassic,32.86,24.87
    >>Saque a |cRXP_LOOT_Nota Calcinada|r ao lado das velas
    .collect 205864,1 --Charred Note (1)
    .train 410015,1
step << Priest
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto StormwindClassic,38.54,26.86
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
step << Warrior
    #xprate <1.5
    #season 2
    .gossipoption 109045 >>Fale com o |cRXP_FRIENDLY_Lívia Valforte <Garçom>|r dentro da Estalagem do Parque
    .gossipoption 109047
    .goto Stormwind City,22.608,64.621
    .gossipoption 109084 >>Fale com |cRXP_ENEMY_Estuardo|r, depois derrote-o. Ele ficará inconsciente a 0%
    .goto Stormwind City,21.213,62.781
    >>Se |cRXP_ENEMY_Estuardo|r não estiver lá, aguarde o seu reaparecimento
    .gossipoption 109044 >>Fale com o |cRXP_FRIENDLY_Lívia Valforte <Garçom>|r novamente após derrotar |cRXP_ENEMY_Estuardo|r para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .goto Stormwind City,22.608,64.621
    .train 425447,1 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] |cRXP_WARN_para treinar|r |T236317:0|t[Ataque Frenético]
    .use 204716
    .target Liv Bradford
    .mob Stuart
step
    #xprate <1.5
    #label HumbleBeginnings
    .goto StormwindClassic,49.194,30.284
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .accept 399 >>Aceite Humildes Começos
    .target Baros Alexston
step
    #xprate <1.5
    .goto StormwindClassic,58.091,16.552
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .turnin 1338 >>Entregue Pedidos de Pico da Tempestade
    .dungeon !DM
step << Rogue
    #xprate <1.5
    .goto StormwindClassic,74.65,52.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << Warrior
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.68,45.79
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Human Paladin
    #xprate <1.5
    .goto StormwindClassic,57.08,61.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Entregue Tomo de Divindade
    .target Stephanie Turner
    .accept 1644 >>Aceite Tomo de Divindade
    .turnin 1644 >>Entregue Tomo de Divindade
    --.accept 1780 >> Accept The Tome of Divinity
step << Rogue
    #xprate <1.5
    #ah
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Scimitars] |cRXP_BUY_dela se conseguir pagá-los, ou você pode comprar algo melhor/mais barato do Auction House|r
    >>|cRXP_WARN_Equipe ambos assim que atingir o nível 14|r
    .collect 2027,2 --Scimitar
    .target Marcia Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate <1.5
    #ssf
    .goto StormwindClassic,57.38,56.77
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Cimidarras] |cRXP_BUY_dela se você puder pagar|r
    >>|cRXP_WARN_Equipe ambos assim que atingir o nível 14|r
    .collect 2027,2 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Rogue
    #xprate <1.5
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1
step
    #xprate <1.5
    #ah
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para aumentar sua|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Cerro Oeste e Costa Negra em breve:|r
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    >>|T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (1-50)
    .disablecheckbox
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (1-50)
    .disablecheckbox
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate <1.5
    #ah
    #optional
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Cerro Oeste e Costa Negra em breve:|r
    >>|T133972:0|t[Stringy Vulture Carne]
    >>|T133884:0|t[Murloc Eye]
    >>|T135997:0|t[Goretusco Snout]
    >>|T134185:0|t[Okra]
    >>|T134341:0|t[Goretusco Liver]
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 729,3,38,1 -- Stringy Vulture Meat (3)
    .collect 730,3,38,1 -- Murloc Eye (3)
    .collect 731,3,38,1 -- Goretusk Snout (3)
    .collect 732,3,38,1 -- Okra (3)
    .collect 723,8,22,1 -- Goretusk Liver (8)
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step
    #xprate <1.5
    .goto StormwindClassic,66.28,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .turnin 6261 >>Entregue Dungar Tragolongo
    .accept 6285 >>Aceite Retornar a Lewis
    .target Dungar Longdrink
step
    #xprate <1.5
    .goto StormwindClassic,66.277,62.137
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .fly Westfall >>Voe para Cerro Oeste
    .target Dungar Longdrink



--XX End of <1.5x section
----Darkshore transit (>1.49x)----




step << Mage
    #xprate >1.49
    .goto Ironforge,27.18,8.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine suas magias de classe
    .target Dink
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>|cRXP_BUY_Compre uma|r |T135144:0|t[Varinha Mágica Maior] |cRXP_BUY_se custar menos de 33p 40c|r
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    .collect 11288,1 --Greater Magic Wand (1)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
    .money <0.7579 << Warlock/Mage
step << Mage/Priest/Warlock
    #xprate >1.49
    #ah
    #optional
    +|cRXP_WARN_Equipe a|r |T135144:0|t[Varinha Mágica Maior]
    .use 11288
    .itemcount 11288,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.5
step << Priest/Warlock
    #xprate >1.49
    #optional
    .goto Ironforge,22.837,17.094,8,0
    .goto Ironforge,21.131,17.276,5,0
    .goto Ironforge,23.135,15.936
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harick Batesseixo|r lá em baixo
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dele|r
    .collect 5208,1 --Smoldering Wand (1)
    .target Harick Boulderdrum
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .money <0.7579 << Warlock
step << Priest/Warlock
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Priest/Warlock
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_Lembrar de equipar a|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_Mais tarde quando atingir o nível 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step
    #xprate >1.49
    #ah
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para aumentar sua|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
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
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #ah
    #optional
    .goto 1455,33.225,64.648,0
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro|r de Ironforge
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Costa Negra em breve:|r
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << skip --logout skip << Mage
    #xprate >1.49
    #ah
    #hardcore << !Human
    #optional
    #completewith next
    .goto 1455,33.220,64.649
    .zone Dun Morogh >>|cRXP_WARN_Salte bem no topo da |cRXP_PICK_Caixa de correio|r, depois realize um Pulo de Logout ao fazer logout e voltar|r
step << Rogue
    #xprate >1.49
    #ah
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    .vendor 5120 >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dela se puder pagar, ou pode comprar algo melhor/mais barato na Casa de Leilões|r
    .target Brenwyn Wintersteel
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #xprate >1.49
    #ssf
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    .vendor 5120 >>|cRXP_BUY_Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dela se puder pagar|r
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Brenwyn Wintersteel
step << Rogue
    #xprate >1.49
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre uma|r |T135425:0|t[Faca de Arremesso Afiada] |cRXP_BUY_dela|r
    .collect 3107,100 -- Keen Throwing Knife
    .target Brenwyn Wintersteel
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Rogue
    #xprate >1.49
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135425:0|t[Faca de Arremesso Afiada]
    .use 3107
    .itemcount 3107,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
step << Warrior
    #xprate >1.49
    .goto Ironforge,65.905,88.405
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
step << skip --logout skip << Warrior
    #xprate >1.49
    #hardcore << !Human
    #optional
    #completewith next
    .goto 1455,68.198,89.713
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Pule para o topo do suporte de armas. Execute um Logout Pular saindo do jogo e retornando|r
step << Warlock
    #xprate >1.49
    .goto Ironforge,51.1,8.7,15,0
    .goto Ironforge,50.343,5.657
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cravespinho|r
    .trainer >>Treine suas magias de classe
    .target Briarthorn
step << Gnome Rogue/Dwarf Rogue
    #xprate 1.49-1.59
    #optional
    .goto Ironforge,51.958,14.838
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hulfdan Barbanegra|r em baixo
    .turnin 2218 >>Entregue Road to Salvação
    .target Hulfdan Blackbeard
    .isOnQuest 2218
step << Rogue
    #xprate >1.49
    .goto Ironforge,51.495,15.330
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fenthwick|r
    .trainer >>Treine suas magias de classe
    .target Fenthwick
step << Warlock/Rogue
    #xprate >1.49
    #hardcore << !Human Rogue
    #optional
    #label Jubahl
    #completewith next
    .goto 1455,53.164,7.037,10 >>Entre na casa de |cRXP_FRIENDLY_Jubahl Catadefunto|r
step << Warlock
    #xprate >1.49
    .goto Ironforge,53.2,7.8,15,0
    .goto Ironforge,52.701,6.070
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jubahl Catadefunto|r
    .vendor >>|cRXP_BUY_Compre|r |T133738:0|t[Grimório of Consumir Sombras (Rank 1)] |cRXP_BUY_e|r |T133738:0|t[Grimório de Sacrificar (Rank 1)] |cRXP_BUY_se puder pagar|r
    .target Jubahl Corpseseeker
step << skip --logout skip << Warlock/Rogue
    #xprate >1.49
    #hardcore << !Human
    #optional
    #requires Jubahl
    #completewith next
    .goto 1455,52.825,5.060
    .goto 1455,76.414,51.226,20 >>|cRXP_WARN_Caminhe até o topo da cama, depois pule para o topo da estante. Execute um Logout Pular saindo do jogo e retornando|r
step << Priest
    #xprate >1.49
    .goto Ironforge,25.207,10.756
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toldren Ferrofundo|r
    .trainer >>Treine suas magias de classe
    .target Toldren Deepiron
step << Paladin
    #xprate >1.49
    .goto Ironforge,23.131,6.143
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Brandur Ferromalho dentro
    .trainer >>Treine suas magias de classe
    .target Brandur Ironhammer
step << skip --logout skip << Priest/Paladin/Mage
    #xprate >1.49
    #ssf << Mage
    #hardcore << !Human
    #optional
    .goto 1455,25.254,10.981
    .zone Dun Morogh >>|cRXP_WARN_Salto em cima do pilar acima de |cRXP_FRIENDLY_Toldren Ferrofundo|r, posicione seu personagem até parecer que está flutuando, depois execute um logout pular ao desconectar e conectar novamente|r
step << Dwarf/Gnome
    #xprate >1.49
    #softcore
    #completewith DarkshoreBoat
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Wetlands>>Voe para Pantanal
    .target Gryth Thurden
step
    #xprate >1.49
    #optional
    #hardcore << !Human
    .goto 1426,53.042,35.383
    .zone Dun Morogh >>Saia de Altaforja
step
    #xprate >1.49
    #hardcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>Viaje para o ponto de skip Dun Morogh -> Pantanal
step
    #xprate >1.49
    #hardcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,20,0
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
    >>|cRXP_WARN_Assista ao guia de vídeo como referência sobre como fazer o skip primeiro!|r
    >>|cRXP_WARN_Faça o salto Deathless Dun Morogh -> Pantanal|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Wetlands Crocolisks|r e |cRXP_ENEMY_Murlocs|r ao atravessar a água|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .goto Wetlands,12.1,60.3,80 >>Vá para Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
step << Human
    #xprate >1.49
    #season 2
    #softcore
    #completewith next
    .goto Dun Morogh,59.43,42.85,150 >>Viaje para o ponto de skip Dun Morogh -> Pantanal
    .aura -438536 --Player has Spark of Inspiration (Alliance)
step << Human
    #xprate >1.49
    #season 2
    #softcore
    .goto Dun Morogh,59.5,42.8,40,0
    .goto Dun Morogh,60.4,44.1,40,0
    .goto Dun Morogh,61.1,44.1,20,0
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
    .goto Wetlands,12.1,60.3
    >>|cRXP_WARN_Assista ao guia de vídeo como referência sobre como fazer o skip primeiro!|r
    >>|cRXP_WARN_Faça o salto Deathless Dun Morogh -> Pantanal|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Wetlands Crocolisks|r e |cRXP_ENEMY_Murlocs|r ao atravessar a água|r
    >>|cRXP_WARN_NOTA: Você está fazendo o skip mais lento sem mortes já que você tem o|r |T134916:0|t[Centelha da Inspiração] |cRXP_WARN_buff do mundo|r
    .link https://www.youtube.com/watch?v=9afQTimaiZQ >>https://www.youtube.com/watch?v=9afQTimaiZQ >> |cRXP_WARN_Clique aqui para um guia de vídeo|r
    .subzone 150 >>Vá para Menethil Harbor
    .mob Wetlands Crocolisk
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .aura -438536 --Player has Spark of Inspiration (Alliance)
step << Human
    #xprate >1.49
    #softcore
    #label WetlandsDS1
    #completewith next
    .goto 1426,30.741,34.269,15,0
    .goto 1426,30.812,33.548,15,0
    .goto 1426,31.060,32.543,15,0
    .goto 1426,31.439,32.356,15,0
    .goto 1426,31.675,29.636,15,0
    .goto 1426,32.209,28.777,15,0
    .goto 1426,32.645,27.740,15,0
    .goto 1415,44.910,52.022,15,0
    >>|cRXP_WARN_Faça o deathskip Dun Morogh -> Pantanal. Siga a seta de perto|r
    >>|cRXP_WARN_NÃO pule de nenhuma altura ainda|r
    .goto 1415,44.910,52.030,15 >>|cRXP_WARN_Subir a montanha, depois caminhe para baixo passando pelo padrão irregular até sua subzona mudar para The Great Sea|r
    .zoneskip Wetlands
    .subzoneskip 207 --The Great Sea
--XX neither of these zoneskips/subzoneskips want to work, so using waypoint obj instead
step << Human
    #xprate >1.49
    #softcore
    #requires WetlandsDS1
    #label WetlandsDS2
    .goto 1415,44.733,51.882,-1
    .goto 1437,11.730,43.304,-1
    >>|cRXP_WARN_Salto da montanha em direção ao norte ou noroeste|r
    .deathskip >>Morra e reviva na Baía Baradin |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 150 --Menethil Harbor
    .isQuestAvailable 984
step << Human
    #xprate >1.49
    #softcore
    #optional
    #requires WetlandsDS2
    #completewith next
    .goto Wetlands,11.95,50.24,60 >>Nade para a costa perto de Menethil Harbor
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
    #hardcore << !Human
    .goto Wetlands,9.49,59.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shellei|r fora
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
    #optional
    #label DockTravel
    #completewith next
    .goto Wetlands,7.10,57.96,30,0
    .goto Wetlands,4.61,57.26,15 >>Vá até o cais do barco de Auberdine
    .zoneskip Darkshore
step
    #xprate >1.49
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>Crie uma [Fogueira Básica] (na aba Geral do seu Livro de Magias)
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook3
    #label DarkshoreCook4
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os seguintes itens
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook4
    #label DarkshoreCook5
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] a |cRXP_LOOT_[Acém de Lobo]|r em [Carne Tostada de Lobo]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #optional
    #requires DarkshoreCook5
    #label DarkshoreCook6
    #completewith DarkshoreBoat
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    >>|T133971:0|t[Cozinhe] os |cRXP_LOOT_[Naco de Carne de Javali]|r em [Carne Assada de Porco]
    .usespell 2550
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1
step
    #xprate >1.49
    #label DarkshoreBoat
    .goto 1437,4.370,56.762
    >>|cRXP_WARN_Suba de Nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Costa Negra se necessário|r
    .zone Darkshore >>Pegue o barco para Costa Negra
]])
