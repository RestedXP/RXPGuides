if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
#season 0,1
<< Alliance
#name 1-6 Northshire
#version 1
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
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
step
    .goto 1429/0,-136.48,-8933.47
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .accept 783 >>Aceite Uma Ameaça Interior
    .target Deputy Willem
step << Warrior
    .goto 1429/0,-75.05,-8872.36,35,0
    >>Mate |cRXP_ENEMY_Lobos Jovens|r até ter 10c+ em itens de lixo para vender
    >>|cRXP_WARN_Você irá treinar|r |T132333:0|t [Grito de Guerra] |cRXP_WARN_que aumenta a velocidade de progressão nos níveis iniciais|r
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    .target +Brother Danil
    .goto 1429/0,-112.74,-8901.66
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target +Llane Beshere
    .goto 1429/0,-208.40,-8918.35
    .mob Young Wolf
step
    #label Within
    .goto 1429/0,-162.62,-8902.59
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 783 >>Entregue Uma Ameaça Interior
    .accept 7 >>Aceite Limpeza do Acampamento Kobold
    .target Marshal McBride
step
    .goto 1429/0,-136.52,-8933.53
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .accept 5261 >>Aceite Enzo Peleteiro
    .target Deputy Willem
step
    #label EaganWolves
    .goto 1429/0,-163.24,-8869.26
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 5261 >>Entregue em Enzo Peleteiro
    .accept 33 >>Aceite Lobos Além da Fronteira
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    #completewith next
    .goto 1429/0,-68.11,-8874.67,40,0
    .goto 1429/0,-112.74,-8901.66
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
    >>Abate |cRXP_ENEMY_Kobold Vermins|r. Saque-os pelo |T133736:0|t[|cRXP_LOOT_Livro Roído|r]
    .use 247834 >>|cRXP_WARN_Use o|r |T133736:0|t[|cRXP_LOOT_Livro Roído|r] |cRXP_WARN_para começar a missão|r
    >>|cRXP_WARN_É importante entregar esta missão assim que você obtiver o|r |T133736:0|t[|cRXP_LOOT_Livro Roído|r] |cRXP_WARN_Largar|r
    .collect 247834,1,91741,1 -- Nibbled-On Book (1)
    .accept 91741 >>Aceite Livro Roído
    .complete 7,1 --Kill Kobold Vermin (x10)
    .disablecheckbox
    .mob Kobold Vermin
step
    #completewith next
    .goto 1429/0,-136.900,-8913.800,10,0
    .goto 1429/0,-176.000,-8880.900,10 >>|cRXP_WARN_Viaje para o |cRXP_FRIENDLY_Irmão Paxeco|r em Northshire Abbey. Não se preocupe em completar |cRXP_ENEMY_Vermins|r ou |cRXP_ENEMY_Wolves|r imediatamente|r
step
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Paxeco|r
    .turnin 91741 >>Entregue Livro Roído
    .accept 92124 >>Aceite Livro do Inventário
    .target Brother Paxton
step
    .goto 1429/0,-182.65,-8881.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Daniel|r
    .turnin 92124 >>Entregue Livro do Inventário
    .target Daniel
step
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Paxeco|r
    .accept 91743 >>Aceite Roedores Marotos
    .target Brother Paxton
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
    >>Abate |cRXP_ENEMY_Kobold Vermins|r. Saque-os pelos |cRXP_LOOT_Livros Roubados|r
    >>|cRXP_WARN_Não procure por todos os |cRXP_LOOT_Livros Roubados|r ainda|r
    .complete 7,1 --Kill Kobold Vermin (x10)
    .complete 91743,1 -- Stolen Book (8)
    .disablecheckbox
    .mob Kobold Vermin
step
    #requires WolfMeatEnd
    .goto 1429/0,-163.24,-8869.26
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .turnin 33,2 >>Entregue Lobos Além da Fronteira << Warrior/Paladin/Rogue
    .turnin 33,1 >>Entregue Lobos Além da Fronteira << !Warrior !Paladin !Rogue
    .target Eagan Peltskinner
step << Priest/Mage/Warlock
    .goto 1429/0,-112.74,-8901.66
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    >>Lixo de Mercador
    >>|cRXP_BUY_Compre mais 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    >>|cRXP_WARN_Certifique-se de guardar 10c ou mais para depois|r << Priest/Mage
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step << !Priest !Mage !Warlock !Rogue
    .goto 1429/0,-119.86,-8898.21
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .vendor >>Lixo de Mercador
    .target Godric Rothgar
step << Rogue
    #season 0,1
    .goto 1429/0,-104.21,-8909.39--c:Elwynn Forest,47.240,41.900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Janos Punhoforte|r
    .vendor 78 >>|cRXP_BUY_Compre um|r |T135650:0|t[Punhal] |cRXP_BUY_ou|r |T132410:0|t[Machado Pequeno] |cRXP_BUY_dele se você puder pagar|r
    --.collect 2139,1 -- Dirk (1)
    --.disablecheckbox
    .target Janos Hammerknuckle
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step << Rogue
    #season 0,1
    #completewith CleanupEnd
    +Equipe o|cRXP_WARN_ |T135650:0|t [Punhal]|r
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step << Rogue
    #season 0,1
    #completewith CleanupEnd
    +|cRXP_WARN_Equipe o|r |T132410:0|t[Machado Pequeno]
    .use 2134
    .itemcount 2134,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.5
step
    #label CleanupEnd
    .goto 1429/0,-162.62,-8902.59
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 7 >>Entregue Limpeza do Acampamento Kobold
    .accept 15 >>Aceite Investigar a Serra do Eco
    .accept 3100 >>Aceite Carta Simples << Human Warrior
    .accept 3101 >>Aceite Carta Consagrada << Human Paladin
    .accept 3102 >>Aceite Carta Criptografada << Human Rogue
    .accept 3103 >>Aceite Carta Santificada << Human Priest
    .accept 3104 >>Aceite Carta Glífica << Human Mage
    .accept 3105 >>Aceite Carta Corrompida << Human Warlock
    .accept 92479 >>Aceite A Carta Rabiscada << Human Hunter
    .target Marshal McBride

step << Warlock
    .goto 1429/0,-136.52,-8933.53
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r do lado de fora
    .accept 18 >>Aceite Irmandade de Ladrões
    .target Deputy Willem
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 3105 >>Entregue Carta Corrompida
    .accept 1598 >>Aceite O Tomo Roubado
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Drusilla La Salle


step << Warlock
    #hardcore
--   .goto 1429/0,-300.65,-8964.94,60,0
    .goto 1429/0,-432.55,-8958.00
    >>Abra os |cRXP_PICK_Livros Roubados|r. Saque-os para obter o |cRXP_LOOT_Poderes do Caos|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
--  .goto 1429/0,-300.65,-8964.94,60,0
    .goto 1429/0,-432.55,-8958.00
    >>Abra os |cRXP_PICK_Livros Roubados|r. Saque-os para obter o |cRXP_LOOT_Poderes do Caos|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #softcore
    #completewith next
    .goto 1429,49.527,43.491,0
    .deathskip >>Morra e reviva no Anjo da Cura
    >>|cRXP_WARN_Se não houver |cRXP_ENEMY_Defias|r próximos, corra de volta|r
    .target Anjo da Cura
step << Warlock
    #season 0,1
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .turnin 1598 >>Entregue O Tomo Roubado
    .target Drusilla La Salle
step << Warlock
    #optional
    #completewith next
    .cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t [Invocar Diabrete]
    .usespell 688

step
    #completewith next
    >>Abate |cRXP_ENEMY_Kobolds|r. Saque-os pelos |cRXP_LOOT_Livros Roubados|r
    .complete 91743,1 -- Stolen Book (8)
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
    #label xp3
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
    .xp 3+1110 >>|cRXP_WARN_Farmar até 1110+/1400xp|r
    >>Abate |cRXP_ENEMY_Kobold Workers|r pelos |cRXP_LOOT_Livros Roubados|r se você ainda precisar deles
    .complete 91743,1 -- Stolen Book (8)
    .disablecheckbox
    .mob Kobold Worker
step << !Hunter
    #season 0,1 << Warrior
    #completewith next
    .goto 1429/0,-119.86,-8898.21
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    .target Godric Rothgar
step << Hunter
    .goto 1429/0,-112.800,-8901.601
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    .vendor >>|cRXP_BUY_Compre 2 pilhas de|r |T132382:0|t[Rough Flechas]
    .target Brother Danil
step
    #requires xp3
    #label Investigate
    .goto 1429/0,-162.62,-8902.59
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .turnin 15 >>Entregue Investigar a Serra do Eco
    .accept 21 >>Aceite Escaramuça na Serra do Eco
    .target Marshal McBride

step
    .isQuestComplete 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Paxeco|r
    .turnin 91743 >>Entregue Roedores Marotos
    .accept 91745 >>Aceite Consultor de Mineração
    .target Brother Paxton
step
    .isQuestTurnedIn 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Paxeco|r
    .accept 91745 >>Aceite Consultor de Mineração
    .target Brother Paxton

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
    .goto 1429/0,-188.23,-8851.58,12 >>Vá em direção à |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
step << Mage
    #season 0,1
    .goto 1429/0,-188.23,-8851.58
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
    .turnin 3104 >>Entregue Carta Glífica
    .trainer >>Treine suas magias de classe
    .target Khelden Bremen
step << Priest
    #optional
    #completewith next
    .goto 1429/0,-175.70,-8881.62,15,0
    .goto 1429/0,-193.06,-8870.05,10 >>Vá em direção à |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
step << Priest
    .goto 1429/0,-193.34,-8853.59
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Sacerdotisa Anetta|r no andar de baixo
    .turnin 3103 >>Entregue Carta Santificada
    .trainer >>Treine suas magias de classe
    .target Priestess Anetta
step << Warrior/Paladin
    #optional
    #completewith next
    .goto 1429/0,-186.12,-8907.08,15 >>Vá em direção à |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo << Warrior
    .goto 1429/0,-186.12,-8907.08,15 >>Vá em direção ao |cRXP_FRIENDLY_Irmão Samuel|r no andar de baixo << Paladin
step << Warrior
    #season 0,1
    .goto 1429/0,-208.40,-8918.35
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Lane Beshere|r no andar de baixo
    .turnin 3100 >>Entregue Carta Simples
    .trainer >>Treine suas magias de classe
    .target Llane Beshere
step << Paladin
    #season 0,1
    .goto 1429/0,-215.03,-8914.58
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .turnin 3101 >>Entregue Carta Consagrada
    .trainer >>Treine suas magias de classe
    .target Brother Sammuel
step
    #season 0,1 << Warrior
    .goto 1429/0,-136.52,-8933.53
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r do lado de fora
    .accept 18 >>Aceite Irmandade de Ladrões
    .target Deputy Willem
step << Hunter
    .goto 1429/0,-242.100,-8884.200
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tordrin Sternblade::248415|r
    .target Tordrin Sternblade::248415
    .turnin 92479 >>Entregue A Carta Rabiscada
    .trainer >>Treine suas magias de classe
step << Warlock
    .goto 1429/0,-195.59,-8926.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .train 172 >>Treine |T136118:0|t[Corrupção]
    .target Drusilla La Salle



----End of 1x train section----




step
    #season 0,1
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    >>Mate |cRXP_ENEMY_Capangas Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas Vermelhas de Burlap|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
    .mob Defias Thug
step << Rogue
    #optional
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 4 >>Farme até o nível 4
step
    #season 0,1
    .goto 1429/0,-136.48,-8933.47
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
    #optional
    .isOnQuest 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kelsey Fargo::247226|r
    .target Kelsey Fargo::247226
    .turnin 91745 >>Entregue Consultor de Mineração
    .accept 91752 >>Aceite The Big Picture
step
    #optional
    .isQuestTurnedIn 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kelsey Fargo::247226|r
    .target Kelsey Fargo::247226
    .accept 91752 >>Aceite The Big Picture
step
    #optional
    #completewith KoboldLaborers
    .goto 1429/0,-117.74,-8681.87,20 >>Entre na Mina da Serra do Eco
step
    #completewith KoboldLaborers
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>Abate |cRXP_ENEMY_Shinyfinder Narf|r. Saque-o pelo |cRXP_LOOT_Sack of "Picture" Books|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf
step
    #completewith KoboldLaborers
    .isOnQuest 91743
    >>Abate |cRXP_ENEMY_Kobold Laborers|r e |cRXP_ENEMY_Kobold Workers|r. Saque-os pelos |cRXP_LOOT_Livros Roubados|r
    .complete 91743,1 -- Stolen Book (8)
step
    #label KoboldLaborers
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
    .isOnQuest 91743
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
    >>Abate |cRXP_ENEMY_Kobold Laborers|r e |cRXP_ENEMY_Kobold Workers|r. Saque-os pelos |cRXP_LOOT_Livros Roubados|r
    .complete 91743,1 -- Stolen Book (8)
    .mob Kobold Laborer
    .mob Kobold Worker
step
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>Abate |cRXP_ENEMY_Shinyfinder Narf|r. Saque-o pelo |cRXP_LOOT_Sack of "Picture" Books|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf

step
    .goto 1429/0,-224.02,-8850.30
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Madel Quintana|r
    >>|cRXP_WARN_Pule a missão seguinte|r << !Priest !Mage
    .turnin 3903 >>Entregue Madel Quintana
    .accept 3904 >>Aceite Colheita da Madel << Priest/Mage
    .target Milly Osworth
step << Rogue
    #season 0,1
    .goto 1429/0,-210.90,-8863.47
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .turnin 3102 >>Entregue Carta Criptografada
    .train 1784 >>Treine |T132320:0|t [Furtividade]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .target Jorik Kerridan
step << Priest/Mage
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    >>Saqueie |cRXP_PICK_Colheita da Madel|r no chão
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429,57.518,48.253
    >>Mate |cRXP_ENEMY_Garrick Patatenra|r. Saqueie-o para obter a |cRXP_LOOT_Cabeça|r
    .complete 6,1 --Collect Garrick's Head (x1)
    .mob Garrick Padfoot
step
    #requires CuttyNote << Rogue --Season 2
    #optional
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
    .xp 5 >>Farme até o nível 5
    .mob Defias Thug
    --no need for extra grinding. being level 5 and doing the kobold quest chain will get you 6 once you arrive in goldshire
step
    #optional
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
-- .subzoneskip 59,1
step << Priest/Mage
    .goto 1429/0,-224.02,-8850.30
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 3904 >>Entregue Colheita da Madel
    .accept 3905 >>Aceite Manifesto das Uvas
    .target Milly Osworth
step
    .goto 1429/0,-136.48,-8933.47
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .turnin 6,2 >>Entregue Recompensa por Garrick Patatenra << Warrior/Rogue/Paladin
    .turnin 6,1 >>Entregue Recompensa por Garrick Patatenra << !Warrior !Rogue !Paladin
    .target Deputy Willem
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r no interior
    .turnin 91752 >>Entregue The Big Picture
    .accept 91758 >>Aceite Seguir That Kobold!
    .target Marshal McBride
    .isOnQuest 91752
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r no interior
    .accept 91758 >>Aceite Seguir That Kobold!
    .target Marshal McBride
    .isQuestTurnedIn 91752
step
    #label RestandR
    .goto 1429/0,-162.62,-8902.59
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r no interior
    .turnin 21,1 >>Entregue Escaramuça na Serra do Eco << Rogue
    .turnin 21,2 >>Entregue Escaramuça na Serra do Eco << Warrior/Paladin
    .turnin 21,3 >>Entregue Escaramuça na Serra do Eco << !Warrior !Paladin !Rogue
    .accept 54 >>Aceite Relatório para Vila Dourada
    .accept 96627 >>Aceite O Aventureiro
    .target Marshal McBride
step
    #optional
    .isQuestComplete 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Paxeco|r
    .turnin 91743 >>Entregue Rascally Rodents
    .accept 91745 >>Aceite Mineração Consultant
    .target Brother Paxton
step
    #optional
    .isQuestTurnedIn 91743
    .goto 1429/0,-186.12,-8874.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Paxeco|r
    .accept 91745 >>Aceite Mineração Consultant
    .target Brother Paxton
step << Priest/Mage
    #optional
    #completewith next
    .goto 1429/0,-186.12,-8902.45,15,0
    .goto 1429/0,-161.82,-8895.51,10 >>Vá para o andar de cima
step << Priest/Mage
    .goto 1429/0,-181.64,-8902.13
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Neals|r no andar de cima
    .turnin 3905,1 >>Entregue Manifesto das Uvas
    .target Brother Neals
step << Priest
    #season 0,1
    .goto 1429/0,-193.34,-8853.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r dentro
    .accept 5623 >>Aceite In Simpatia of the Luz - Missão
    .target Priestess Anetta
step
    #optional
    .isOnQuest 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kelsey Fargo::247226|r
    .target Kelsey Fargo::247226
    .turnin 91745 >>Entregue Mineração Consultant
    .accept 91752 >>Aceite The Big Picture
step
    #optional
    .isQuestTurnedIn 91745
    .goto 1429/0,-102.300,-8684.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kelsey Fargo::247226|r
    .target Kelsey Fargo::247226
    .accept 91752 >>Aceite The Big Picture
step
    #optional
    #completewith KoboldLaborers
    .goto 1429/0,-117.74,-8681.87,20 >>Entre na Mina da Serra do Eco
step
    .isOnQuest 91752
    .goto 1429/0,-172.700,-8587.601
    >>Mate |cRXP_ENEMY_Shinyfinder Narf|r. Saqueie-o para obter o |cRXP_LOOT_Sack of "Picture" Books|r
    .complete 91752,1 --|1/1 Sack of "Picture" Books
    .target Shinyfinder Narf
step
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r no interior
    .turnin 91752 >>Entregue The Big Picture
    .accept 91758 >>Aceite Seguir That Kobold!
    .target Marshal McBride
    .isOnQuest 91752
step
    #optional
    .goto 1429/0,-162.62,-8902.59
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r no interior
    .accept 91758 >>Aceite Seguir That Kobold!
    .target Marshal McBride
    .isQuestTurnedIn 91752
step
    .isOnQuest 91758
    .goto 1429/0,-242.000,-8884.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tordrin Sternblade::248415|r fora da Abbey
    .target Tordrin Sternblade::248415
    .turnin 91758 >>Entregue Seguir That Kobold!
    .accept 91772 >>Aceite Shhh! We're Caçando Kobolds
step
    .isQuestTurnedIn 91758
    .goto 1429/0,-242.000,-8884.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tordrin Sternblade::248415|r fora da Abbey
    .target Tordrin Sternblade::248415
    .accept 91772 >>Aceite Shhh! We're Caçando Kobolds
step
    #completewith RnR
    .cast 1246031 >>|cRXP_WARN_Use o|r |T132995:0|t[Kobold Rastreamento Kit] |cRXP_WARN_para ver o |cRXP_PICK_Kobold Tracks|r no minimapa|r
    .use 247970
step
    #completewith RnR
    .isOnQuest 91772
    .goto 1429/0,-46.00,-9044.61,5 >>Clique nas |cRXP_PICK_Kobold Tracks|r verdes no chão ao viajar em direção a Goldshire
    .use 247970 
    .complete 91772,1 -- Followed Kobold Tracks 6/6
    .disablecheckbox
step
    #label RnR
    .goto 1429/0,-46.00,-9044.61
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Falcão Lencastre|r
    .accept 2158 >>Aceite Descanso e Relaxamento
    .target Falkhaan Isenstrider
]])


RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 6-11 Elwynn Forest
#displayname 6-13 Elwynn Forest << SoD
#next 11-13 Loch Modan
#defaultfor Human

step << skip -- removing for now for camp fire buff/questline
    #season 0,1 << Rogue
    #softcore
    #completewith Goldshire
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .subzoneskip 87

step
    #completewith CampQuest
    .isOnQuest 91772
    >>Clique nas |cRXP_PICK_Kobold Tracks|r verdes no chão ao viajar em direção a Goldshire
    .use 247970 >>|cRXP_WARN_Use o|r |T132995:0|t[Kobold Rastreamento Kit] |cRXP_WARN_para rastreá-los no seu minimapa|r
    .complete 91772,1 -- Followed Kobold Tracks 6/6
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_Use o|r |T4624731:0|t[Selvagem Colher] |cRXP_WARN_para aumentar sua|r |T136065:0|t[Herborismo] |cRXP_WARN_habilidade em 2 ou para treinar|r |T136065:0|t[Herborismo] |cRXP_WARN_se você não tiver duas profissões|r
    .itemcount 247841,1 -- Wild Harvest
    .use 247841
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_Use o|r |T4625106:0|t[Pelt Coletando for Beginners] |cRXP_WARN_para aumentar sua|r |T134366:0|t[Esfolamento] |cRXP_WARN_habilidade em 2 ou para treinar|r |T134366:0|t[Esfolamento] |cRXP_WARN_se você não tiver duas profissões|r
    .itemcount 247846,1 -- Pelt Collecting for Beginners
    .use 247846
step
    --#optional
    #completewith CampQuest
    +|cRXP_WARN_Use o|r |T4625105:0|t[Mineração for Dummies] |cRXP_WARN_para aumentar sua|r |T136248:0|t[Mineração] |cRXP_WARN_habilidade em 2 ou para treinar|r |T136248:0|t[Mineração] |cRXP_WARN_se você não tiver duas profissões|r
    .itemcount 247840,1 -- Mining for Dummies
    .use 247840

step
    #label CampQuest
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 96627 >>Entregue O Aventureiro
    .accept 95998 >>Aceite Os Territórios Selvagens
    .target Sam Sarsaparilla
step
    .goto 1429/0,-22.99,-9402.40
    >>|cRXP_WARN_Digite "/sit" no chat e aguarde um minuto ao redor da fogueira|r
    .complete 95998,1 -- /sit emote in chat 1/1
    .complete 95998,2 -- Gain boosted rest buff 1/1

step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 95998 >>Entregue Os Territórios Selvagens
    .accept 96626 >>Aceite Acampamento 101: Culinária
    .accept 97924 >>Aceite Acampamento 101: Esfolamento
    .target Sam Sarsaparilla
    .skill skinning,<1,1 -- shows if skinning is >1
step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 95998 >>Entregue Os Territórios Selvagens
    .accept 96626 >>Aceite Acampamento 101: Culinária
    .accept 97921 >>Aceite Acampamento 101: Herborismo
    .target Sam Sarsaparilla
    .skill herbalism,<1,1 -- shows if herbalism is >1
step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 95998 >>Entregue Os Territórios Selvagens
    .accept 96626 >>Aceite Acampamento 101: Culinária
    .accept 97923 >>Aceite Acampamento 101: Mineração
    .target Sam Sarsaparilla
    .skill mining,<1,1 -- shows if mining is >1

--Add turnins for skinning/herb/mining later

step
    .goto 1429/0,-22.99,-9404.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sam Sarsaparilla|r
    .turnin 95998 >>Entregue Os Territórios Selvagens
    .accept 96626 >>Aceite Acampamento 101: Culinária
    .target Sam Sarsaparilla


step
    .isOnQuest 91772
    #loop
    .goto 1429/0,-77.600,-9140.900,55,0
    .goto 1429/0,-44.100,-9246.500,55,0
    .goto 1429/0,8.800,-9327.900,55,0
    .goto 1429/0,66.000,-9374.000,55,0
    >>Clique nas |cRXP_PICK_Kobold Tracks|r verdes no chão
    .use 247970 >>|cRXP_WARN_Use o|r |T132995:0|t[Kobold Rastreamento Kit] |cRXP_WARN_para rastreá-los no seu minimapa|r
    .complete 91772,1 -- Followed Kobold Tracks 6/6

step << Warrior/Rogue/Paladin
    .goto 1429/0,87.87,-9456.65
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135248:0|t [Pedras de Amolar Ásperas] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Warrior/Rogue
    >>|cRXP_WARN_Isso permitirá que você crie|r |T135255:0|t [Contrapesos Ásperos] |cRXP_WARN_que aumentam seu dano corpo a corpo em 2|r << Paladin
    >>|cRXP_WARN_Se você não quiser fazer isso, pule esta etapa|r
    .train 2018 >>Treine |T136241:0|t [Ferraria]
    .target Smith Argus
step << Warrior
    .goto 1429/0,94.01,-9464.8900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135321:0|t [Gládio] |cRXP_BUY_dela se você puder pagar|r
    .collect 2488,1 --Collect Gladius (1)
    .disablecheckbox
    .target Corina Steele
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    .goto 1429/0,94.01,-9464.8900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135421:0|t[Machadinha] |cRXP_BUY_ou|r |T135641:0|t[Estilete] |cRXP_BUY_dela se você puder pagar|r
    .target Corina Steele
--  .money <0.0540
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #label RogueTomahawk
    #completewith GSHS
    +|cRXP_WARN_Equipe a|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #completewith GSHS
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto 1429/0,94.01,-9464.8900
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
    .goto 1429/0,87.87,-9462.26
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_André Cravo|r
    .vendor >>Lixo de Mercador
    .target Andrew Krighton
--  .money >1.0
step
    .isOnQuest 91772
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .turnin 91772 >>Entregue Shhh! We're Caçando Kobolds
    .accept 62 >>Aceite A Mina Fundaprofunda
    .accept 91775 >>Aceite Devolução de Livro
    .target Marshal Dughan
step
    .isQuestTurnedIn 91772
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
    .accept 91775 >>Aceite Devolução de Livro
    .target Marshal Dughan
step
    #label Goldshire
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
    .target Marshal Dughan
step
    .goto 1429/0,31.92,-9460.38
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .accept 60 >>Aceite Velas Kobold
    .target William Pestle
step
    #label GSHS
    .goto 1429/0,16.20,-9462.65
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .turnin 2158,1 >>Entregue Descanso e Relaxamento << Rogue/Warrior
    .turnin 2158,2 >>Entregue Descanso e Relaxamento << !Rogue !Warrior
    .home >>Defina sua Pedra de Regresso para Vila Dourada
    .target Innkeeper Farley

step
    .goto 1429/0,-5.63,-9467.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomas|r
    >>|cRXP_WARN_Pule este passo se você não tem 1 prata, ou se você desejar fazê-lo mais tarde|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .turnin 96626 >>Entregue Acampamento 101: Culinária
    .target Tomas
    .money <0.0100
step
    #optional
    .isQuestComplete 96626
    .goto 1429/0,-5.63,-9467.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomas|r
    .turnin 96626 >>Entregue Acampamento 101: Culinária
    .target Tomas
step
    #optional
    .xp 6 >>Faça grind até 6
step << Rogue
    .goto 1429/0,9.64,-9465.36
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .vendor 151 >>|cRXP_BUY_Compre o|r |T135641:0|t [Adagas de Arremesso Balanceadas] |cRXP_BUY_dele se você puder pagar|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
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
    .destroy 2947 >>|cRXP_WARN_Remova o|r |T135426:0|t[Pequeno Arremessando Faca] |cRXP_WARN_da mochila, pois não é mais necessário|r
    .itemcount 2946,1
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,-5.63,-9460.26,5 >>Vá para o andar de baixo
step << Warlock
    .goto 1429/0,-5.36,-9472.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wagner Nascimento|r no andar de baixo
    .trainer >>Treine suas magias de classe
    .target Maximillian Crowe
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    .vendor 6374 >>|cRXP_BUY_Compre o|r |T133738:0|t [Grimório do Pacto de Sangue (Ranque 1)] |cRXP_BUY_dela se você puder pagar. Caso não, compre depois|r
    .target Cylina Darkheart
    .money <0.0100
    .itemcount 16321,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20397,1 --Blood Pact (Rank 1)
step << Mage/Rogue/Priest
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >>Suba na Estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >>Treine suas magias de classe
step << Priest
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.target Priestess Josetta
    .goto 1429/0,33.14,-9460.75
    .turnin 5623 >>Entregue Em Favor da Luz
    .accept 5624 >>Aceite Vestimentas da Luz
    .trainer >>Treine suas magias de classe
step << Rogue
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >>Treine suas magias de classe
step << Warrior/Rogue
    .goto 1429/0,16.20,-9462.65
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .vendor 295 >>|cRXP_BUY_Compre|r |T133995:0|t [Punhal de Dalaran] |cRXP_BUY_dele até ficar com 1 prata|r << Warrior
    .vendor 295 >>|cRXP_BUY_Compre até 20|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_dele se você puder pagar|r << Rogue
    .collect 414,20 --Dalaran Sharp (20)
    .disablecheckbox
    .target Innkeeper Farley
    .itemcount 414,<7 --Dalaran Sharp (<7)
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step << Paladin
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step
    #requires DeleteOldDaggers << Rogue
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .accept 47 >>Aceite Trocando Pó de Ouro
    .target Remy "Two Times"
step << Hunter
    .goto 1429/0,75.400,-9480.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nordun Steadysight|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    >>|cRXP_BUY_Compre|r |T132382:0|t[Rough Flechas] |cRXP_BUY_até sua Aljava estar cheia|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Nordun Steadysight
    .money <0.0281
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    .goto 1438/1,968.85,9821.98--c:Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    .vendor >>|cRXP_BUY_Compre|r |T132382:0|t[Rough Flechas] |cRXP_BUY_até sua Aljava estar cheia|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    .equip 18,2506 >>|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1 --Hornwood Recurve Bow (1)
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josephine Carson|r
    .trainer >>Treine suas magias de classe
    .target Josephine Carson
step << Priest
    .goto 1429/0,-135.72,-9514.56
    >>|cRXP_WARN_Lance|r |T135929:0|t[Cura Inferior (Rank 2)] |cRXP_WARN_e|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_no|r |cRXP_FRIENDLY_Guarda Roberts|r
    .complete 5624,1 --Heal and fortify Guard Roberts
    .target Guard Roberts
step
    #sticky
    #label BoarMeatQuest
    #loop
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    .waypoint 1429/0,454.25,-9915.31,40,0
    .waypoint 1429/0,387.26,-9944.94,40,0
    .waypoint 1429/0,372.34,-9912.07,40,0
    .waypoint 1429/0,418.85,-9881.06,40,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Chunk of Boar Meat (4)
    .mob Stonetusk Boar
step
    #optional
    #requires BoarMeatQuest
    #label BoarMeatCooking1
    #completewith Pie
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
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
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
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
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
    .accept 88 >>Aceite Princesa Tem Que Morrer!
	.goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
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
    .isNotOnQuest 91775
    #optional
    #completewith NecklaceStart
    .goto 1429/0,223.09,-9916.240,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .isOnQuest 91775
    #optional
    #completewith NecklaceStart
    .goto 1429/0,223.09,-9916.240,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r, |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Lost Books|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label NecklaceStart
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Juntando a Fome...
    .target Billy Maclure
step
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .accept 106 >>Aceite Jovens Amantes
    .target Maybell Maclure
step
    #optional
    #completewith Lovers
    .goto 1429/0,65.28,-10008.20
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
    .isNotOnQuest 91775
    #optional
    #completewith Lovers
    .goto 1429/0,223.09,-9916.240,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .isOnQuest 91775
    #optional
    #completewith Lovers
    .goto 1429/0,223.09,-9916.240,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r, |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Lost Books|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Lovers
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomasino Campedra|r
    .turnin 106 >>Entregue Jovens Amantes
    .accept 111 >>Aceite Fale com a Vovó
    .target Tommy Joe Stonefield
step
    #requires BoarMeatQuest
    #label Pie
    .goto 1429/0,338.47,-9889.69
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
step
    .isNotOnQuest 91775
    #sticky
    #label KoboldEnd1
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .waypoint 1429/0,176.93,-9857.68,35,0
    .waypoint 1429/0,176.24,-9902.12,35,0
    .waypoint 1429/0,223.09,-9916.240,35,0
    .waypoint 1429/0,259.54,-9865.09,35,0
    .waypoint 1429/0,215.81,-9830.600,35,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r e |cRXP_LOOT_Pó de Ouro|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .isOnQuest 91775
    #sticky
    #label KoboldEnd2
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .waypoint 1429/0,176.93,-9857.68,35,0
    .waypoint 1429/0,176.24,-9902.12,35,0
    .waypoint 1429/0,223.09,-9916.240,35,0
    .waypoint 1429/0,259.54,-9865.09,35,0
    .waypoint 1429/0,215.81,-9830.600,35,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Velas dos kobolds|r, |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Lost Books|r
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .complete 91775,2 -- Lost Book (6)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto 1429/0,38.41,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .turnin 84 >>Entregue ...com a Vontade de Comer
    .accept 87 >>Aceite Dentadouro
    .target Billy Maclure
step
    .goto 1429/0,181.44,-9842.170,15,0
    .goto 1429/0,149.86,-9793.80
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
    .isOnQuest 91775
    .goto 1429/0,91.200,-9788.500
    >>Mate |cRXP_ENEMY_Nimsy|r dentro da Mina Fargodeep. Saqueie-o para |cRXP_LOOT_Picture Livro: Fun with Elementals|r
    >>|cRXP_WARN_Tente encontrar um grupo para este passo. Os |cRXP_ENEMY_Kobolds|r aparecem novamente muito rapidamente na caverna|r
    >>|cRXP_WARN_Ele também invocará um |cRXP_ENEMY_Rumbler|r add. Tenha cuidado se você está tentando fazer isso solo. Pule este passo se você não conseguir matá-lo|r
    .complete 91775,1 --|1/1 Picture Book: Fun with Elementals
    .mob Nimsy
step << Warrior
    #optional
    #completewith Exchange
    +|cRXP_WARN_Tente guardar um único|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_de agora em diante, pois você precisará dela para Rolf's Cadáver mais tarde|r
    .subzoneskip 87 --Goldshire
step
    #requires KoboldEnd1
step
    #requires KoboldEnd2
step
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.240,35,0
    .goto 1429/0,259.54,-9865.09,35,0
    .goto 1429/0,215.81,-9830.600,35,0
    .xp 7+1140 >>Faça grind até 1140+/4500xp
    .mob Kobold Tunneler
    .mob Kobold Miner
    .isQuestComplete 91775 -- elite quest
step
    #loop
    .goto 1429/0,223.09,-9916.240,0
    .goto 1429/0,176.93,-9857.68,35,0
    .goto 1429/0,176.24,-9902.12,35,0
    .goto 1429/0,223.09,-9916.240,35,0
    .goto 1429/0,259.54,-9865.09,35,0
    .goto 1429/0,215.81,-9830.600,35,0
    .xp 7+1815 >>Faça grind até 1815+/4500xp
    .mob Kobold Tunneler
    .mob Kobold Miner
    .isQuestNotComplete 91775 -- elite quest
step
    #label Goldtooth
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .turnin 87 >>Entregue Dentadouro
    .target "Auntie" Bernice Stonefield
step
    #optional
    #label BoarMeatCooking2
    #completewith Exchange
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
    .subzoneskip 57 --Fargodeep Mine
step
    #optional
    #requires BoarMeatCooking2
    #completewith Exchange
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
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
    .goto 1429/0,72.81,-9496.23,125 >>Retorne para Goldshire--c:Elwynn Forest,42.140,67.254
    .subzoneskip 87 --Goldshire
step
    #softcore
    #completewith Exchange
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
step
    #label Exchange
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_recompensa. Este é um item incrivelmente valioso durante todo o percurso até o nível 60|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .accept 40 >>Aceite Perigo Anfíbio
    .target Remy "Two Times"
step
    .isQuestComplete 91775
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 91775 >>Entregue Devolução de Livro
    .accept 91777 >>Aceite Livros Raros
    .target Marshal Dughan
step
    .isQuestTurnedIn 91775
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .accept 91777 >>Aceite Livros Raros
    .target Marshal Dughan
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .target Marshal Dughan
step
    #optional << Warrior/Rogue/Paladin
    #completewith CandlesEnd
    .goto 1429/0,94.01,-9464.8900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor >>Lixo de Mercador
    .target Corina Steele
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.3 << Rogue
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>3.8 << Warrior
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,>5.0 << Paladin
step << Warrior
    .goto 1429/0,94.01,-9464.8900
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
    .goto 1429/0,94.01,-9464.8900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre uma|r |T135421:0|t[Machadinha] |cRXP_BUY_dela se você puder pagar|r
    .collect 2490,1 --Collect Tomahawk (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0540
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #label RogueTomahawk2
    +|cRXP_WARN_Equipe a|r |T135421:0|t[Machadinha]
    .use 2490
    .itemcount 2490,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.8
step << Rogue
    #requires RogueTomahawk2
    .goto 1429/0,94.01,-9464.8900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor 54 >>|cRXP_BUY_Compre um|r |T135641:0|t [Estilete] |cRXP_BUY_dela se você puder pagar|r
    .collect 2494,1 --Collect Stiletto (1)
    .disablecheckbox
    .target Corina Steele
--  .money <0.0400
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith CandlesEnd
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Paladin
    .goto 1429/0,94.01,-9464.8900
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
step
    #label CandlesEnd
    #requires GoldtoothRune << Warrior/Priest --Season 2
    .goto 1429/0,31.92,-9460.38
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
    .turnin 107 >>Entregue Bilhete para Durval
    .accept 112 >>Aceite Coletando Algas
    .target William Pestle
step
    #optional
    .xp 8 >>Farme até o nível 8
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josephine Carson|r
    .trainer >>Treine suas magias de classe
    .target Josephine Carson
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
step << Paladin
    #season 0,1
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,4.78,-9467.21,10 >>Vá para baixo na Estalagem
step << Warlock
    .goto 1429/0,-5.36,-9472.760
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >>Treine suas magias de classe
step << Warlock
    .goto 1429/0,-5.53,-9466.95
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    .vendor >>|cRXP_BUY_Compre o|r |T133738:0|t[Grimório of Seta de Fogo (Rank 2)] |cRXP_BUY_dela se você puder pagar. Se não, você pode comprá-lo mais tarde|r
    .target Cylina Darkheart
    .money <0.100
    .itemcount 16302,<1 --Grimoire of Blood Pact (Rank 1)
    .train 20270,1 --Blood Pact (Rank 1)
step << Mage/Priest/Rogue/Warrior/Paladin
    #optional
    #completewith next
    .goto 1429/0,12.52,-9479.85,9 >>Suba na Estalagem
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto 1429/0,34.28,-9471.61
    .trainer >>Treine suas magias de classe
step << Priest
    .goto 1429/0,33.14,-9460.75
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
	.target Priestess Josetta
    .turnin 5624 >>Entregue Vestes da Luz
    .trainer >>Treine suas magias de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto 1429/0,12.69,-9465.75
    .trainer >>Treine suas magias de classe
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto 1429/0,29.35,-9456.790
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
step
    #label GoldshireEnd << Priest --Season 2
    .goto 1429/0,9.64,-9465.36
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .vendor >>|cRXP_WARN_Compre uma|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_WARN_se necessário|r
	.target Brog Hamfist
    .money <0.1250
step
    #completewith next
    .goto 1429/0,16.20,-9462.65
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .vendor >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se você puder pagar|r << !Warrior !Rogue !Paladin !Hunter
    .vendor >>|cRXP_BUY_Compre até 20|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_dele se você puder pagar|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Compre até 10|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_e 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele se você puder pagar|r << Paladin/Hunter
    .target Innkeeper Farley
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
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jason Mathers|r
    .accept 99127 >>Aceite Um Desastre de Rede
    .target Jason Mathers
step
    #softcore
    .goto 1429,47.6,62.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lee Brown|r
    .accept 99143 >>Aceite Garrafas e Bugigangas
    .target Lee Brown
step
    #loop
    .goto 1429,48.5,58.3,40,0
    .goto 1429,47.7,65.9,40,0
    .goto 1429,49.9,66.5,40,0
    >>Pegue as |cRXP_PICK_Fishing Nets|r na água para obter |cRXP_LOOT_Half-Comido Peixe|r
    >>|cRXP_WARN_Estes podem ser difíceis de ver|r
    .complete 99127,1 -- Half-Eaten Fish (7)
step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jason Mathers|r
    .turnin 99127 >>Entregue Um Desastre de Rede
    .accept 99128 >>Aceite Ameaça Pegajosa
    .target Jason Mathers
step
    #softcore
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
    >>Pegue as |cRXP_PICK_Junk Piles|r no chão para obter |cRXP_LOOT_Shiny Sucata|r. |cRXP_WARN_Se você não conseguir pegá-las por haver |cRXP_ENEMY_Murlocs|r demais, pule este objetivo|r
    .complete 99128,2 -- Murloc slain (7)
    .mob +Murloc
    .complete 99128,1 -- Murloc Streamrunners slain (4)
    .mob +Murloc Streamrunner
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob +Murloc
    .mob +Murloc Streamrunner
    .complete 99143,1 -- Shiny Junk (6)
    .disablecheckbox
step
    #hardcore
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
    .complete 99128,2 -- Murloc slain (7)
    .mob +Murloc
    .complete 99128,1 -- Murloc Streamrunners slain (4)
    .mob +Murloc Streamrunner
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
    .mob +Murloc
    .mob +Murloc Streamrunner
step
    #softcore
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
    >>Pegue as |cRXP_PICK_Junk Piles|r no chão para obter |cRXP_LOOT_Shiny Sucata|r
    >>|cRXP_WARN_Se você não conseguir saquear estes |cRXP_ENEMY_Murlocs|r, pule este passo|r
    .complete 99143,1 -- Shiny Junk (6)
step
    .isQuestComplete 99143
    .goto 1429,47.6,62.3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lee Brown|r
    .turnin 99143 >>Entregue Bottles and Baubles
    .target Lee Brown
--xx abandon if didnt complete/check routing for potential later turnin
step
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jason Mathers|r
    .turnin 99128 >>Entregue Ameaça Pegajosa
    .accept 99129 >>Aceite A Man About a Murloc
    .target Jason Mathers

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
    .goto 1429/0,-604.49,-9180.39,15 >>Entre na Mina de Jasperlode
step
    #label JasperlodeExplore
    .goto 1429/0,-588.73,-9130.67,15,0
    .goto 1429/0,-572.07,-9116.55,15,0
    .goto 1429/0,-560.62,-9100.58
    >>Siga o caminho pelo meio para explorar a Mina de Jasperlode
    .complete 76,1 --Scout through the Jasperlode Mine
step
    .isOnQuest 91777
    .goto 1429/0,-595.100,-9072.200
    >>Mate |cRXP_ENEMY_Geosculptor Yip|r. Saqueie-o para obter |cRXP_LOOT_Geomancy for Curious Young Wizards|r
    >>|cRXP_WARN_Ele vai invocar três |cRXP_ENEMY_Rumblers|r. Pule este passo se você não conseguir matá-lo|r
    .complete 91777,1 --|1/1 Geomancy for Curious Young Wizards
    .mob Geosculptor Yip
step
    .isOnQuest 91777
    .goto 1429/0,-620.200,-9050.800
    >>Mate |cRXP_ENEMY_Mãe Veneno|r. Saqueie-a para obter |cRXP_LOOT_Arcane Explainer: Magical Stuff in Simple Words|r
    >>|cRXP_WARN_Ela usa Redes e Venenos. Pule este passo se você não conseguir matá-la|r
    .complete 91777,2 --|1/1 Arcane Explainer: Magical Stuff in Simple Words
    .mob Mother Fang
step
    .isQuestComplete 91777
    #completewith next
    .goto 1429/0,-590.300,-9208.101,10,0
    .goto 1429/0,-508.400,-9249.101,10,0
    .goto 1429/0,-493.900,-9208.000,10,0
    .goto 1429/0,-493.000,-9157.400,18 >>|cRXP_WARN_Siga a seta de perto até Northshire para entregar a missão que você acabou de completar e receber uma recompensa de arma|r
step
    .isQuestComplete 91777
    .goto 1429/0,-135.800,-8913.700,10,0
    .goto 1429/0,-186.200,-8874.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brother Paxton::951|r
    .target Brother Paxton::951
    .turnin 91777 >>Entregue Livros Raros
step
    .isQuestTurnedIn 91777
    #completewith Find
    .goto 1429/0,-439.500,-9118.500,25,0
    .goto 1429/0,-468.400,-9147.200,10,0
    .goto 1429/0,-497.100,-9173.000,20 >>|cRXP_WARN_Volte para as colinas que você acabou de passar para um atalho até a Floresta de Elwynn oriental|r
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
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .turnin 35 >>Entregue Mais Preocupações
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
    .target Guard Thomas
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
    .goto 1429/0,-986.35,-9336.06
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
    >>|cRXP_WARN_Não se esforce para farmar isso agora. Simplesmente mate e saqueie todos os lobos que você encontrar|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 88 --Eastvale Logging Camp
step
    #label AcceptBundle
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .accept 5545 >>Aceite Um Feixe de Encrenca
    .target Supervisor Raelen
step
    #season 0,1 << Rogue
    #optional
    .goto 1429/0,-1355.20,-9469.27
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
    >>|cRXP_WARN_Não se esforce para farmar isso agora. Simplesmente mate e saqueie todos os lobos que você encontrar|r
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
    >>|cRXP_WARN_Não se esforce para farmar isso agora. Simplesmente mate e saqueie todos os lobos que você encontrar|r
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
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    >>Pegue os |cRXP_LOOT_Bundles of Madeira|r no chão, na base das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step << Paladin
    #softcore
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>|cRXP_WARN_Corra no topo de |cRXP_PICK_Rolf's corpse|r, depois lance|r |T135954:0|t[Proteção Divina] |cRXP_WARN_e depois imediatamente clique em|r |cRXP_PICK_Rolf's corpse|r
    >>|cRXP_WARN_Corra para longe e reinicie os |cRXP_ENEMY_Murlocs|r após completar a missão|r
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step << Paladin
    #hardcore
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
    >>Clique em |cRXP_PICK_Rolf's corpse|r no chão
    >>|cRXP_WARN_Tome cuidado, pois |cRXP_ENEMY_Murloc Foragers|r irão conjurar|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_o que cura eles por 61-68 de vida|r
    >>|cRXP_WARN_Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e destrua um deles rapidamente. Usar|r |T135954:0|t[Proteção Divina] |cRXP_WARN_e sua cura conforme necessário. Esta é uma boa oportunidade para usar|r |T133581:0|t[Bolsa of Marbles]|cRXP_WARN_. Corra para longe e reinicie uma vez que tenha matado um|r << Paladin
    >>|cRXP_WARN_Lembre-se durante|r |T135954:0|t[Proteção Divina] |cRXP_WARN_que você é incapaz de atacar|r << Paladin
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step << !Paladin
    #label Prowlers
    .goto 1429/0,-1234.31,-9224.180
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
    >>|cRXP_WARN_Não se esforce para farmar isso agora. Simplesmente mate e saqueie todos os lobos que você encontrar|r
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
    .goto 1429/0,-1257.91,-9216.77,0
    .goto 1429/0,-1246.46,-9329.03,0
    .goto 1429/0,-1362.03,-9309.59,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1230.14,-9150.34,40,0
    .goto 1429/0,-1271.10,-9147.10,40,0
    .goto 1429/0,-1271.79,-9186.68,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1232.92,-9251.950,40,0
    .goto 1429/0,-1246.46,-9329.03,40,0
    .goto 1429/0,-1249.58,-9362.13,40,0
    .goto 1429/0,-1285.33,-9365.14,40,0
    .goto 1429/0,-1296.09,-9389.44,40,0
    .goto 1429/0,-1338.09,-9331.11,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    .goto 1429/0,-1302.68,-9309.12,40,0
    .goto 1429/0,-1257.91,-9216.77,40,0
    .goto 1429/0,-1354.05,-9354.26,40,0
    .goto 1429/0,-1362.03,-9309.59,40,0
    >>Pegue os |cRXP_LOOT_Bundles of Madeira|r no chão, na base das árvores
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label BundleOT
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .turnin 5545 >>Entregue Um Feixe de Encrenca
    .target Supervisor Raelen
step
    #xprate <1.5 << !Warlock
    .goto 1429/0,-1222.40,-9531.76
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
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
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
    >>Mate os |cRXP_ENEMY_Prowlers|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r
    >>|cRXP_WARN_Não desvie do caminho para coletar agora. Apenas mate e saqueie todos os lobos que você está encontrando|r
    .collect 2672,50,2178,1,0x20,cooking --Stringy Wolf Meat (10-50)
    .mob Prowler
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
step
    #completewith WaterloggedToolbox
    >>Mate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear

step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormin Pelford|r
    .accept 91733 >>Aceite Downstream
    .target Ormin Pelford
step
    >>Pegue o |cRXP_PICK_Serrote Encharcado|r no chão
    .complete 91733,2 -- Waterlogged Saw 1/1
    .goto 1429,74.3,76.4
step
    >>Pegue o |cRXP_PICK_Machado Encharcado|r no chão
    .complete 91733,1 -- Waterlogged Axe 1/1
    .goto 1429,76.7,82.5
step
    #label WaterloggedToolbox
    >>Pegue a |cRXP_PICK_Caixa de Ferramentas Encharcada|r no chão
    .complete 91733,3 -- Waterlogged Toolbox 1/1
    .goto 1429,77.3,86.8
step
    .group 3
    .goto 1429/0,-1119.800,-9931.300
    >>Mate o |cRXP_ENEMY_Croaky|r. Saqueie-o para obter |T134169:0|t[|cRXP_LOOT_Croaky's Cabeça|r]
    .use 247826 >>|cRXP_WARN_Use|r |T134169:0|t[|cRXP_LOOT_Croaky's Cabeça|r] |cRXP_WARN_para iniciar a missão|r
    >>|cRXP_WARN_Ele é um elite nível 11. Pule este passo se você for incapaz de matá-lo|r
    .collect 247826,1,91740,1 -- Croaky's Head (1)
    .accept 91740 >>Aceite Croaky's Cabeça
    .mob Croaky
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
    #completewith Level9Grind << Warlock/Warrior/Rogue
    #completewith DefiasBandits << !Warlock !Warrior !Rogue
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    .use 1972>>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    >>|cRXP_WARN_A|r |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] |cRXP_WARN_é uma queda muito rara. Ignorar este passo se você não conseguir|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>Aceite Escritura de Furlbrow
step
    #xprate <1.5 << !Warlock
    #completewith next
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os por seus |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    #label PrincessC
    .goto 1429/0,-869.87,-9768.10
    >>Mate a |cRXP_ENEMY_Princesa|r. Saque-a por seu |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_virá junto com ambas as suas|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_também vai lançar|r |T132368:0|t[Investida Impetuosa] |cRXP_WARN_que causa dano pesado|r
    >>|cRXP_WARN_Acumule 100 Raiva antes de enfrentar|r |cRXP_ENEMY_Princesa|r << Warrior
    >>Tenha certeza de que|cRXP_WARN_ |T136205:0|t[Evasão] |cRXP_WARN_está pronta. Se tiver dificuldades, pode usar o Fence com Arremessando Armas para explorar a física e ganhar tempo|r << Rogue
    >>|cRXP_WARN_Esteja pronto para usar uma|r |T134830:0|t[Poção Inferior de Cura]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Warrior
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    #label DefiasBandits
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os por seus |cRXP_LOOT_Red Linen Bandanas|r
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-911.52,-9735.70,60,0
    .goto 1429/0,-828.22,-9733.39,60,0
    .goto 1429/0,-831.69,-9823.65,60,0
    .goto 1429/0,-921.93,-9812.08,60,0
    .goto 1429/0,-869.87,-9768.10
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto 1429/0,-1032.06,-9610.23
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
    .xp <9,1
step
    #label DeliverStart
    .goto 1429/0,-1032.06,-9610.23
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .target Guard Thomas
step
    .goto 1429/0,-1119.7708,-9603.7687
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormin Pelford|r
    .turnin 91733 >>Entregue em Downstream
    .target Ormin Pelford
step << Warlock/Warrior/Rogue/Hunter
    .isQuestNotComplete 91740
	.goto 1429/0,-877.85,-9778.98
    .xp 9+3510 >>Suba até 3510+/6500 XP << Warlock/Hunter
    .xp 9+3420 >>Suba até 3420+/6500 XP << Warrior/Rogue
step << Warlock/Warrior/Rogue/Hunter
    .isQuestComplete 91740
    #label Level9Grind
	.goto 1429/0,-877.85,-9778.98
    .xp 9+2670 >>Suba até 2670+/6500 XP << Warlock/Hunter
    .xp 9+2580 >>Suba até 2580+/6500 XP << Warrior/Rogue
step << !Warlock
    #season 0,1 << Rogue
    #softcore
    #label EVDeathskip
    #completewith RedridgeS
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .zoneskip Redridge Mountains
    .xp >10,1 -- shows to 9 and under
--XX not worth deathskipping as a warlock due to having to resumm pet
step
    #xprate <1.5 << !Warlock
    #optional << Warlock
    .goto 1429/0,-1222.40,-9531.76
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 83 >>Entregue Tecidos de Linho Vermelho
    .target Sara Timberlain
    .isQuestComplete 83
step
    #optional
    #completewith next
    .subzone 798 >>Vá para Ridgepoint Torre
step
    #optional
    .isQuestComplete 91740
    .goto 1429/0,-1406.200,-9775.500
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Merell Ross::248277|r
    .target Merell Ross::248277
    .turnin 91740 >>Entregue Cabeça do Croaky
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
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step << !Warlock
    #optional
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
    .xp <11,1
step << !Warlock
    #softcore
    #completewith RRFP
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
    .target Anjo da Cura
    .xp >10,1 -- shows to 9 and under
step << !Warlock
    #hardcore
    #optional
    #completewith RRFP
    .goto 1433/0,-1974.20,-9577.07,15,0
    .goto 1433/0,-2077.18,-9608.42,25,0
    .goto 1433/0,-2212.64,-9558.570,25 >>|cRXP_WARN_CUIDADO: Vá para a estrada principal e evite qualquer inimigo próximo no caminho|r
step << !Warlock
    #optional
    .goto 1433/0,-2237.93,-9443.60
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Gnolls Invasores
    .target Deputy Feldon
    .isOnQuest 244
    .xp <11,1
step << !Warlock
    #season 0,1 << Paladin
    #label RRFP
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step
    #optional
    #completewith CollectKelp
    .hs >>Use sua Pedra de Retorno para Goldshire
step << Warrior/Rogue
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
    .goto 1429/0,31.92,-9460.38
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .turnin 112 >>Entregue Coletando Alga
    .timer 9,Colete alga RP
    .accept 114 >>Aceite A fuga
    .target William Pestle
step << Warrior/Rogue
    #optional
    #completewith next << Warrior
    #completewith RogueOptTrain << Rogue
    .goto 1429/0,12.52,-9479.85,9 >>Suba na Estalagem
step << Warrior/Rogue
    .goto 1429/0,29.35,-9456.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Michelle Belle
step << Rogue
    #optional
    #label RogueOptTrain
    .goto 1429/0,12.69,-9465.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    >>|cRXP_WARN_Aprenda apenas|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada]|cRXP_WARN_. Não aprenda outras habilidades para economizar seu dinheiro para depois|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Keryn Sylvius
    .xp <10,1
step
    .goto 1429/0,74.02,-9465.52
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
    .goto 1429/0,94.01,-9464.8900
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .vendor >>Lixo de Mercador
    .target Corina Steele
    .money >0.75
step
    .goto 1429/0,87.87,-9456.65
	>>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    .accept 1097 >>Aceite Tarefa de Elmore
    .target Smith Argus
step
    #optional
    #completewith RoughWolfPelts
    .goto 1429/0,-81.900,-9381.800,5 >>Vá para Helene Peltskinner na casa
step
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 91746
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helene Peltskinner|r
    .turnin 91746 >>Entregue Cabeça de Elmpaw
    .target Helene Peltskinner
step
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 97924
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helene Peltskinner|r
    .turnin 97924 >>Entregue Acampamento 101: Esfolamento
    .target Helene Peltskinner
step
    #label RoughWolfPelts
    #optional
    .goto 1429/0,-69.500,-9380.200
    .isQuestComplete 91751
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helene Peltskinner|r
    .turnin 91751 >>Entregue Peles de Lobo Brutas
    .target Helene Peltskinner
step << Warlock/Warrior/Hunter
    #requires GoldshireVendor
    #optional
    .xp 10 >>Suba até o nível 10
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josephine Carson::251507|r
    .target Josephine Carson::251507
    .accept 94792 >>Aceite Adestramento da Fera - Missão
    .trainer >>Treine suas magias de classe
step << Hunter
    #loop
    .goto 1429/0,28.100,-9768.101,40,0
    .goto 1429/0,-36.100,-9814.500,40,0
    .use 266158 >>|cRXP_WARN_use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Javali Couropedra|r
    .complete 94792,1 -- Tame a Rockhide Boar (1)
    .mob Rockhide Boar
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josephine Carson::251507|r
    .target Josephine Carson::251507
    .turnin 94792 >>Entregue Adestramento da Fera - Missão
    .accept 94863 >>Aceite Adestramento da Fera - Missão
step << Hunter
    #loop
    .goto 1429/0,-556.600,-9524.300,40,0
    .goto 1429/0,-626.200,-9430.800,40,0
    .use 266253 >>|cRXP_WARN_use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Lobo Cinza da Floresta|r
    >>|cRXP_WARN_assegure-se de que dispensou seu anterior|r |cRXP_ENEMY_Javali Couropedra|r
    .complete 94863,1 -- Tame a Gray Forest Wolf (1)
    .mob Gray Forest Wolf
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josephine Carson::251507|r
    .target Josephine Carson::251507
    .turnin 94863 >>Entregue Adestramento da Fera - Missão
    .accept 94864 >>Aceite Adestramento da Fera - Missão
step << Hunter
    #loop
    .goto 1429/0,-14.600,-9797.800,40,0
    .goto 1429/0,-146.800,-9784.500,40,0
    .goto 1429/0,-325.300,-9844.300,40,0
    .use 266254 >>|cRXP_WARN_use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Urso Jovem da Floresta|r
    >>|cRXP_WARN_assegure-se de que dispensou seu anterior|r |cRXP_ENEMY_Lobo Cinza da Floresta|r
    .complete 94864,1 -- Tame a Young Forest Bear (1)
    .mob Young Forest Bear
step << Hunter
    .goto 1429/0,107.200,-9472.400
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josephine Carson::251507|r
    .target Josephine Carson::251507
    .turnin 94864 >>Entregue Adestramento da Fera - Missão
    .accept 94793 >>Aceite Treinamento da Fera - Missão
step << Hunter
    .goto 1429/0,85.000,-9475.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isaac Chan::258930|r
    .target Isaac Chan::258930
    .turnin 94793 >>Entregue Treinamento da Fera - Missão
    .trainer >>Treine as magias do seu mascote
step << Warrior
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .accept 1638 >>Aceite O Treinamento do Guerreiro
    .trainer >>Treine suas magias de classe
    .target Lyria Du Lac
    .money <0.5
step << Warrior
    #optional
    .goto 1429/0,109.36,-9461.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    >>|cRXP_WARN_não treine pois você precisa economizar dinheiro para depois|r
    .accept 1638 >>Aceite O Treinamento do Guerreiro
    .target Lyria Du Lac
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
    .xp <10,1
    .xp >12,1
step << Paladin
    #optional
    #requires GoldshireVendor
    .goto 1429/0,109.04,-9468.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .accept 2998 >>Aceite Tomo de Divindade
    .trainer >>Treine suas magias de classe
    .target Brother Wilhelm
    .xp <12,1
step << Warlock
    #optional
    #completewith next
    .goto 1429/0,4.78,-9467.21,10 >>Vá para baixo na Estalagem
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wagner Nascimento|r e |cRXP_FRIENDLY_Rêmulo Marcos|r
    .trainer >>Treine suas magias de classe
    .goto 1429/0,-5.36,-9472.760
    .target +Maximillian Crowe
    .accept 1685 >>Aceite Convocação de Gakin
    .goto 1429/0,-8.58,-9473.41
    .target +Remen Marcot
step << Mage/Priest
    #optional
    #requires GoldshireVendor
    #completewith next
    .goto 1429/0,18.66,-9476.47,10 >>Suba
    .xp <10,1
step << Priest
    #optional
    #requires GoldshireVendor
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
    .accept 5635 >>Aceite Prece Desesperada
    .trainer >>Treine suas magias de classe
    .target Priestess Josetta
    .xp <10,1
step << Mage
    #optional
    #requires GoldshireVendor
    .goto 1429/0,34.28,-9471.61
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .trainer >>Treine suas magias de classe
    .target Zaldimar Wefhellt
    .xp <10,1
step << skip --Rogue
    #optional
    #requires GoldshireVendor
    .goto 1429/0,12.69,-9465.75
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
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .turnin 99129 >>Entregue A Man About a Murloc
    --.accept 99130 >> Accept An Enticing Offer
    .target Remy "Two Times"
    --skipping the follow up. terrible drop rates/respawn times

step << skip
    >>Saque o |cRXP_PICK_Duskweed Petals|r nas fazendas em Elwynn Forest
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os pelos seus |cRXP_LOOT_Vials of Sangue Animal|r
    .complete 99130,1 -- Duskweed Petal 18/18
    .complete 99130,2 -- Vial of Animal Blood 6/6
    .mob +Stonetusk Boar
step << skip
    .goto 1429/0,72.81,-9496.23--c:Elwynn Forest,42.140,67.254
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .turnin 99130 >>Entregue Uma Oferta Atraente
    .accept 99131 >>Aceite Isca para Sucesso
    .target Remy "Two Times"
sstep << skip
    .goto 1429,47.5,62.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jason Mathers|r
    .turnin 99131 >>Entregue Isca para Sucesso
    .target Jason Mathers



step
    #optional
    #label BoarMeatCooking3
    #completewith Garrison
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter o |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,10,2178,1,0x20,cooking --Chunk of Boar Meat (1-10)
    .mob Stonetusk Boar
    .skill cooking,10,1 --XX Shows if cooking skill is <10
step
    #optional
    #requires BoarMeatCooking3
    #completewith Garrison
    .goto 1429/0,406.84,-9917.23,0
    .goto 1429/0,456.65,-9825.69,0
    .goto 1429/0,279.60,-9971.76,0
    .goto 1429/0,86.93,-9952.95,0
    .goto 1429/0,225.49,-9751.09,0
    .goto 1429/0,92.38,-9548.20,0
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
    .goto 1429/0,37.61,-10014.03,50 >>Viaje para The Maclure Vineyards
step
    #label Escape
    #requires GoldshireVendor
    .goto 1429/0,37.61,-10014.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .turnin 114 >>Entregue A Fuga
    .target Maybell Maclure
step
    #label PrincessFinish
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .turnin 88,1 >>Entregue Princesa Tem que Morrer << Rogue/Hunter
    .turnin 88,2 >>Entregue Princesa Tem que Morrer << Warrior/Paladin
    .turnin 88,3 >>Entregue Princesa Tem que Morrer << !Rogue !Hunter !Warrior !Paladin
    .target Ma Stonefield
step << !Warrior !Warlock
    #optional
    #completewith Garrison
    .xp 9+4510 >>Farme até 4510+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock
    #optional
    #completewith Garrison
    .xp 9+5110 >>Farme até 5110+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step
    #optional
    #completewith Garrison
    .goto 1429/0,673.96,-9704.45,80 >>Viaje para Westbrook Garrison
step
    #label Garrison
    #season 0,1 << Warrior/Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda
    .accept 11 >>Aceite Caçando gnolls << Warlock
    .goto 1429/0,694.29,-9662.790
    .target +Deputy Rainer
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r << Warlock
    .accept 176 >>Aceite Wanted: "Hogger" << Warlock
    .goto 1429/0,683.40,-9667.93 << Warlock
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
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>Mate o |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em múltiplos locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_no |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Atraia-o de volta para a torre da guarda se necessário, certificando-se de ter feito pelo menos 50% de dano a ele|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    #label GnollEnd
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,598.29,-9946.33,70,0
    .goto 1429/0,629.53,-10020.39,70,0
    .goto 1429/0,660.77,-10085.20,70,0
    .goto 1429/0,598.29,-10112.98,70,0
    .goto 1429/0,636.47,-10112.98
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter seus |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .isOnQuest 11
step << Warlock
    .goto 1429/0,694.29,-9662.790
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 11 >>Entregue Recompensa Gnoll de Riopatas
    .target Deputy Rainer
step << !Warrior !Warlock !Hunter
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+4575 >>Acumule até 4575+/6500xp
    .itemcount 1971,1 --Westfall Deed (1)
step << !Warrior !Warlock !Hunter
    #xprate <1.5
    #optional
    #completewith WestEntry
    .xp 9+5175 >>Acumule até 5175+/6500xp
    .itemcount 1971,<1 --Westfall Deed (0)
step << !Warlock
    #optional
    #completewith WestEntry
    .abandon 123 >>Abandone O Coletor
step << !Hunter
    #completewith WestEntry
    .goto 1436/0,918.42,-9851.50
    .zone Westfall >>Viaje até Cerro Oeste
step << !Hunter
    #optional
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .turnin 184 >>Entregue Escritura do Furlbrow
    .goto 1436/0,918.42,-9851.50
    .target +Farmer Furlbrow
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
    .isOnQuest 184
step << !Hunter
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Vera Taturana|r
    .accept 64 >>Aceite A Herança Esquecida
    .goto 1436/0,918.42,-9851.50
    .target +Farmer Furlbrow
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto 1436/0,919.47,-9853.13
	.target +Verna Furlbrow
step << !Hunter
    #optional
    #completewith next
    +|cRXP_WARN_Não saque nenhum dos|r |T134059:0|t[|cRXP_PICK_Saco de Aveia|r] |cRXP_WARN_ainda, a menos que você tenha se enviado bolsas de grande capacidade, pois precisará de espaço na mochila para o próximo segmento|r
    .isOnQuest 151
step << !Hunter
    #sticky
    #label Fields
    .goto 1436/0,1055.27,-10128.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fazendeiro Saldanha|r
    .accept 9 >>Aceite Os Campos da Morte
    .target Farmer Saldean
step << !Hunter
    .goto 1436/0,1042.11,-10112.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r dentro
    .turnin 36 >>Entregue Cozido de Costa Negra
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
    .target Salma Saldean
step << !Hunter
    #requires Fields
    .goto 1436/0,1045.22,-10508.800
    .xp 9+5775 >>Acumule até 5775+/6500xp
    .subzoneskip 108
step << !Hunter
    #xprate >1.49 << !Paladin
    #xprate 1.49-1.59 << Paladin
    #optional
    #requires Fields
    .goto 1436/0,1045.22,-10508.800
    .xp 9+5410 >>Acumule até 5410+/6500xp
    .subzoneskip 108
step << Paladin
    #xprate >1.59
    #optional
    .goto 1436,48.249,46.729
    .xp 11+5360 >>Acumule até 5360+/8800xp
--XX 625+210+85+800 = 1720 x2 = 3440
step << skip
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
-- .subzoneskip 108
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r e o |cRXP_FRIENDLY_Capitão Danuvin|r << !Hunter
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r << Hunter
    .turnin 109 >>Entregue Miguel Mantoforte
    .accept 12 >>Aceite A Milícia do Povo << !Hunter
    .goto 1436/0,1045.22,-10508.800
    .target +Gryan Stoutmantle
    .accept 102 >>Aceite Patrulhando Cerro Oeste << !Hunter
    .goto 1436/0,1041.93,-10511.20 << !Hunter
    .target +Captain Danuvin << !Hunter
step << Human
    #optional
    .goto 1436/0,1055.27,-10128.70
    .xp 10 >>Suba até o nível 10
step
    .goto 1436/0,1021.60,-10500.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .accept 6181 >>Aceite Um Recado Rápido << Human
    .target Quartermaster Lewis
    .isQuestAvailable 6181 << Human
step << Human
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >>Entregue Um Recado Rápido
    .accept 6281 >>Aceite Continue para Ventobravo
    .target Thor
step
    #label FlySW
    .goto 1436/0,1037.42,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
    .target Thor
step
    #season 0,1 << Paladin
    .goto 1453/0,625.48,-8857.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos os|r |T132383:0|t[Explosivo Foguetes] |cRXP_WARN_como a recompensa. Causa bom dano e pode ser usado para \"split pulling\", que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência em vídeo sobre \"split pulling\". É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step << Rogue
    .goto 1453/0,596.43,-8831.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dele|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Thurman Mullby
    .xp <10+5890,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Rogue
    .goto 1453/0,596.43,-8831.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dele|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Thurman Mullby
    .xp >10+5890,1
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
    #optional << Warlock/Mage/Warrior/Rogue
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine 1h Espadas e Báculos << Warlock/Mage
    .trainer >>Treine Espadas de Uma Mão << Rogue
    .trainer >>Treine Cajados << Priest
    .trainer >>Treine Espadas de Duas Mãos << Warrior/Paladin
    .target Woo Ping
    .money <0.2 << Warlock/Mage
    .money <0.3 << Warrior
    .money <0.55 << Rogue
step << Warlock/Mage
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine Cajados
    .target Woo Ping
step << Priest/Mage/Warlock
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_WARN_Compre o seguinte se puder pagar:|r
    >>|T134711:0|t[Óleo Menor de Teurgo] |cRXP_WARN_e|r |T133906:0|t[Sabichão Defumado]
    >>|cRXP_WARN_Procure por atualizações|r |T132317:0|t[Varinha] |cRXP_WARN_com DPS alto que você pode usar agora/em breve|r
    >>|cRXP_WARN_Estes fornecerão um grande aumento de DPS nos primeiros níveis. Se você não quer ou não pode fazer isso, pule este passo|r
    .collect 20744,1 -- Minor Wizard Oil (1)
    .collect 21072,20 -- Smoked Sagefish (20)
    .target Auctioneer Jaxon
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre uma|r |T132402:0|t[Machadinha] |cRXP_BUY_dela. Equipe-a quando atingir o nível 11|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .money <0.2490
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .xp >11,1
step << Rogue
    #ssf
    #optional
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre uma|r |T132402:0|t[Machadinha] |cRXP_BUY_dela|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .money <0.2490
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.8
    .xp <11,1
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre uma|r |T132402:0|t[Machadinha] |cRXP_BUY_dela. Equipe-a quando atingir o nível 11|r
    >>|cRXP_WARN_Alternativamente, verifique a Casa de Leilões por algo melhor ou mais barato|r
    >>|cRXP_WARN_Economize 6s para treinamento depois|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp >11,1
step << Rogue
    #optional
    #ah
    .goto 1453/0,607.38,-8790.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
    >>|cRXP_BUY_Compre uma|r |T132402:0|t[Machadinha] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Como alternativa, procure na Casa de Leilões algo melhor ou mais barato|r
    >>|cRXP_WARN_Economize 6s para treinamento depois|r
    .collect 853,1 -- Hatchet (1)
    .target Gunther Weller
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp <11,1
step << Rogue
    #optional
    #completewith Continue
    +|cRXP_WARN_Equipe a|r |T132402:0|t[Machadinha]
    .use 853
    .itemcount 853,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.2
    .xp <11,1
step
    .goto 1453/0,673.58,-8867.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Cristine|r
    .home >>Defina sua Pedra de Retorno em Cidade de Ventobravo
    .target Innkeeper Allison
    .bindlocation 16509
step << Hunter
    .goto 1453/0,702.700,-8791.800
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lina Fornalha|r
    >>|cRXP_BUY_Compre e equipe um|r |T135489:0|t[Arco Recurvo Laminado]
    .collect 2507,1
    .target Lina Stover
    .money <0.1664
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    .goto 1453/0,702.700,-8791.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lina Fornalha|r
	.vendor >>|cRXP_BUY_Compre 6 pilhas de|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_e destrua quaisquer restantes|r |T132382:0|t[Rough Flechas]
    .target Lina Stover
step << Hunter
    #completewith next
    .equip 18,2507 >>|cRXP_WARN_Equipe o|r |T135489:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1 --Hornwood Recurve Bow (1)


----Warlock Elwynn Voidwalker Section Start----
step << Warlock
    #optional
    #completewith GakinStart
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    #xprate >1.59
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 705 >>Treine suas magias de classe
    .target Ursula Deline
    .xp <12,1
    .xp >14,1
step << Warlock
    #xprate >1.59
    #optional
    .goto 1453/0,1029.98,-8971.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .train 689 >>Treine suas magias de classe
    .target Ursula Deline
    .xp <14,1
step << Warlock
    #label GakinStart
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1685 >>Entregue Gakin's Summons
    .accept 1688 >>Aceite Surena Caledon
    .target Gakin the Darkbinder
step << Warlock skip
    #softcore
    .deathskip >>Morra e reapareça no |cRXP_FRIENDLY_Anjo da Cura|r usando |T136126:0|t[Conversão de Vida] e ficando parado sobre a Objetos de Cata ao seu lado
    .target Anjo da Cura
--  .subzoneskip 87
step << Warlock
    #hardcore
    #completewith WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    .zone Elwynn Forest >>Saia de Ventobravo
step << Warlock
    #completewith WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    .subzone 87 >>Voe para Goldshire
step << Warlock
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    -->>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
    .turnin 176 >>Entregue Wanted: "Hogger"
    .turnin 123 >>Entregue O Coletor
    .target Marshal Dughan
    .isOnQuest 123
step << Warlock
    #label WLHoggerEnd
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    -->>|cRXP_WARN_Choose the|r |T135145:0|t[Balanced Fighting Stick]
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
    #completewith SChoker
    .subzone 62 >>Vá para o Brackwell Abóbora Mathiaz
    .isOnQuest 1688
step << Warlock
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
    .goto 1429/0,-911.52,-9735.70,0
    .goto 1429/0,-921.93,-9812.08,0
    .waypoint 1429/0,-911.52,-9735.70,60,0
    .waypoint 1429/0,-828.22,-9733.39,60,0
    .waypoint 1429/0,-831.69,-9823.65,60,0
    .waypoint 1429/0,-921.93,-9812.08,60,0
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os por seus |cRXP_LOOT_Red Linen Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step << Warlock
    #label SChoker
    .goto 1429/0,-932.35,-9806.53
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
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 59 >>Entregue Armadura de Pano e Couro
    .turnin 83 >>Entregue Tecidos de Linho Vermelho
    .target Sara Timberlain
    .isOnQuest 83
step << Warlock
    #optional
    #requires WLBandanaEnd
    .goto 1429/0,-1222.40,-9531.76
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
    .goto 1433/0,-1948.56,-9582.75
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step << Warlock
    #label Gnolls
    #requires SoulShards
    .goto 1433/0,-1906.400,-9606.800
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Capitão da Guarda Florestan|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
step << Warlock
    .goto 1433/0,-1974.20,-9577.07,15,0
    .goto 1433/0,-2077.18,-9608.42,25,0
    .goto 1433/0,-2212.64,-9558.570,25,0
    .goto 1433/0,-2238.00,-9443.69,25 >>Voe para Lakeshire
    >>|cRXP_WARN_MANTENHA-SE NA ESTRADA PRINCIPAL E EVITE QUALQUER INIMIGO PRÓXIMO NO CAMINHO|r
    .target Deputy Feldon
step << Warlock
    .goto 1433/0,-2238.00,-9443.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    .turnin 244 >>Entregue Gnolls Invasores
step << Warlock
    .goto 1433/0,-2234.900,-9435.300
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
step << Warlock
    #completewith TheBinding
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    #optional
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
    .xp <12,1
step << Warlock
    #label TheBinding
    .goto 1453/0,1041.54,-8983.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1688 >>Entregue Surena Caledon
    .accept 1689 >>Aceite A vinculação
    .target Gakin the Darkbinder
step << Warlock
    #completewith next
    .goto 1453/0,1042.22,-9002.21,18,0
    .goto 1453/0,1069.1,-8991.45,18,0
    .goto 1453/0,1027.43,-8991.45,18,0
    .goto 1453/0,1042.83,-8972.68
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 7728 >>|cRXP_WARN_Use a|r |T133292:0|t[Gargantilha de Pedra-sangrenta] |cRXP_WARN_para invocar um|r |cRXP_ENEMY_Invocado Emissário do Caos|r
    .use 6928
step << Warlock
    .goto 1453/0,1042.83,-8972.68
    .use 6928 >>Abate o |cRXP_ENEMY_Invocado Emissário do Caos|r
    .complete 1689,1 --Kill Summoned Voidwalker (x1)
    .mob Summoned Voidwalker
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .target Gakin the Darkbinder
    .goto 1453/0,1041.54,-8983.29
    .turnin 1689 >>Entregue A Vinculação


----Warlock Elwynn Voidwalker Section End----

step << Rogue
    #xprate <1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    >>|cRXP_WARN_Treine apenas|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada]
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Osborne the Night Man
step << Rogue
    #xprate >1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
    .target Osborne the Night Man
    .xp <10,1
    .xp >12,1
step << Rogue
    #xprate >1.59
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r
    .train 1766 >>Treine suas magias de classe
    .target Osborne the Night Man
    .xp <12,1
    .xp >14,1
step << Rogue
    #xprate >1.59
    #optional
    .goto 1453/0,377.47,-8752.39
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
    #label Continue
    .goto 1453/0,382.02,-8702.290
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larso Norde|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    .accept 6261 >>Aceite Dungar Tragolongo << !Hunter
    .target Osric Strang
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1638 >>Entregue A Warrior's Treinamento
    .accept 1639 >>Aceite Bartolino the Bêbado - Missão
    .target Harry Burlguard
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .turnin 1639 >>Entregue Bartolino the Bêbado - Missão
    .accept 1640 >>Aceite Beat Bartolino - Missão
    .target Bartleby
step << Warrior
    .goto 1453/0,389.07,-8604.43
    >>Ataque |cRXP_ENEMY_Bartolino|r. Ele se renderá a 1%
    .complete 1640,1 --Beat Bartleby
    .mob Bartleby
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .target Bartleby
    .goto 1453/0,389.07,-8604.43
    .turnin 1640 >>Entregue Beat Bartolino - Missão
    .accept 1665 >>Aceite Caneca do Bartolino
step << Warrior
    .goto 1453/0,382.86,-8612.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .turnin 1665 >>Entregue Caneca do Bartolino
    .target Harry Burlguard
step << Priest
    #optional
    #completewith Prayer
    .goto 1453/0,809.52,-8579.22,20 >>Entre na Catedral de Ventobravo
step << Priest
    #optional
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .turnin 5635 >>Entregue Prece Desesperada
    .train 8092 >>Treine suas magias de classe
    .target High Priestess Laurena
    .isOnQuest 5635
step << Priest
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .turnin 5634 >>Entregue Prece Desesperada
    .train 8092 >>Treine suas magias de classe
    .target High Priestess Laurena
    .train 13908,1
step << Priest
    #optional
    #label Prayer
    .goto 1453/0,862.89,-8519.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .trainer >>Treine suas magias de classe
    .target High Priestess Laurena
    .train 13908,3
step
    .goto 1453/0,685.22,-8387.23
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
    .goto 1453/0,624.15,-8431.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaita Baixaforja|r
    .collect 2901,1,432,1 >>|cRXP_BUY_Compre|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Você aprenderá|r |T134708:0|t[Mineração] |cRXP_WARN_mais tarde|r
    .target Kaita Deepforge
    .train 2018,3 --Blacksmithing
--XX 81c, 1s 75c from 6281
step
    #label DeeprunEnter
    .goto 1453/0,562.300,-8385.300,20,0
    .goto 1453/0,522.000,-8352.101
    .subzone 2257 >>Entre no Metrô Correfundo
    .zoneskip Ironforge
step << skip
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
step << skip
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
step << skip
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
step << skip
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
step << skip
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
step << skip
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
    .zone Ironforge >>Entre em Ironforge
    .isQuestAvailable 314
step << Warrior
    #optional
    #completewith next
    .goto 1455,67.400,84.909,15,0
    .goto 1455/0,-1234.65,-5035.67,12 >>Vá para |cRXP_FRIENDLY_Bilban Lançachave|r
step << Warrior
    .goto 1455/0,-1234.65,-5035.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    >>|cRXP_WARN_Guarde 20s 70c para depois|r
    .train 2687 >>Treine suas magias de classe
    .target Bilban Tosslespanner
    .xp <10,1
    .xp >12,1
step << Warrior
    #optional
    #completewith next
    .goto 1455,61.552,85.636,10,0
    .goto 1455,61.356,88.398,6 >>Entre no Timberline Armas Building
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r e |cRXP_FRIENDLY_Bulif Manopedra|r
    .train 2567 >>Treine Arremesso
    .goto 1455/0,-1205.65,-5042.12
    .target +Bixi Wobblebonk
    .train 199 >>Treine Maças de Duas Mãos
    .goto 1455/0,-1197.27,-5041.49
    .target +Buliwyf Stonehand
step << Warrior
    .goto 1455/0,-1206.74,-5037.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre|r |T135425:0|t[Keen Arremessando Knives] |cRXP_BUY_dela|r
    .collect 3107,1 --Collect Keen Throwing Knife (1)
    .target Brenwyn Wintersteel
    .xp <10+7405,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.3
--XX 420 6281, 110 1097, 900 6661, 85 IF, 65 Gate IF, 65 refuge, 65 Amberstill
--XX (WARR ONLY): 90 1638, 90 1639, 210 1640, 420 1665
step << Warrior
    #xprate <1.5
    .goto 1455/0,-1206.74,-5037.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    >>|cRXP_BUY_Compre|r |T135641:0|t[Equilibrado Arremessando Adagas] |cRXP_BUY_dela|r
    .collect 2946,1 --Collect Balanced Throwing Dagger (1)
    .target Brenwyn Wintersteel
    .xp >10+7405,1
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
    .goto 1455/0,-1152.40,-4821.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step << Mage/Paladin
    #optional
    #completewith next
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-928.40,-4635.61,20,0 << Paladin
    .goto 1455/0,-931.8,-4627.59,20,0 << Mage
    .goto 1455/0,-928.40,-4614.51,12 >>Vá para |cRXP_FRIENDLY_Dink|r << Mage
    .goto 1455/0,-896.47,-4601.65,12 >>Vá para |cRXP_FRIENDLY_Brandur Ferromalho|r << Paladin
step << Mage
    .goto 1455/0,-928.40,-4614.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dink|r dentro
    .train 122 >>Treine suas magias de classe
    .target Dink
step << Paladin
    .goto 1455/0,-896.47,-4601.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Brandur Ferromalho dentro
    .train 633 >>Treine suas magias de classe
    .target Brandur Ironhammer
step << skip -- for dungeon route only
    .goto 1455/0,-856.69,-4841.490
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Aguardente|r
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
    .bindlocation 1537
step
    #ah
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
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
    .goto 1455/0,-917.57,-4967.58,-1--c:Ironforge,25.800,75.500
    .goto 1455/0,-904.92,-4962.83,-1--c:Ironforge,24.200,74.600
    .goto 1455/0,-901.76,-4948.06,-1--c:Ironforge,23.800,71.800
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
step
    .goto 1426,53.47,35.02
    >>Saia de Altaforja
    .zone Dun Morogh >>Vá para Dun Morogh
--logout skip - remove if logout skips re-added
step
    .goto 1426/0,-682.300,-5489.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Beldin Steelgrill::1376|r 
    .target Beldin Steelgrill::1376
    .accept 96408 >>Aceite Uma Visita a Dun Morogh
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
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Suba pelo caminho de terra
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
    .goto 1426/0,-1304.71,-5513.86
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
    .goto 1426/0,-1304.71,-5513.86
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
    #label QuarryStart
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin -96408 >>Entregue Uma Visita a Dun Morogh
    .accept 96392 >>Aceite Vigiar de Farsen
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .goto 1426/0,-1394.24,-5797.83
    .gossipoption 139831 >>Fale com |cRXP_FRIENDLY_Earthseer Farsen|r para ver sua visão distante
    >>|cRXP_WARN_Você pode cancelar a Visão Distante quando o objetivo for concluído|r
    .target Earthseer Farsen
step
    .isOnQuest 96392
    .aura -1293681 >>|cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
step << skip
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Você pode cancelar a Visão Distante quando o objetivo for concluído|r
    .complete 96392,1 -- Use Farsen's Farsight
    .skipgossip
    .target Earthseer Farsen
step
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    >>|cRXP_WARN_Pressione ESCAPE para cancelar a Visão Distante|r
    .turnin 96392 >>Entregue A Vigília de Farsen
    .accept 96390 >>Aceite Nip 'Em in the Migo
    .target Earthseer Farsen
step
    #optional
    .goto 1426/0,-1565.58,-5666.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step << !Human
    .goto 1426/0,-1577.16,-5671.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_se necessário|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_se necessário|r << !Warrior !Rogue
    .target Kazan Mogosh
    .xp >15,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r e com o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 433 >>Aceite O Funcionário Público
    .goto 1426/0,-1579.96,-5714.73
    .target +Senator Mehr Stonehallow
    .accept 432 >>Aceite Malditos Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
    .goto 1426/0,-1612.12,-5697.89
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
    .goto 1426/0,-1679.89,-5728.88,40,0
    .goto 1426/0,-1675.95,-5597.22,25,0
    .goto 1426/0,-1679.89,-5728.88
    >>Abata |cRXP_ENEMY_Rockjaw Skullthumpers|r e |cRXP_ENEMY_Rockjaw Bonesnappers|r dentro da caverna
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step
    #label QuarryEnd
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r e com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
    .turnin 433 >>Entregue O Funcionário Público
    .goto 1426/0,-1579.96,-5714.73
    .target +Senator Mehr Stonehallow
step << !Warrior !Rogue !Paladin !Hunter
    .goto 1426/0,-1577.16,-5671.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >>|cRXP_BUY_Compre até 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .target Kazan Mogosh
    .xp >15,1
step
    #completewith OII
    >>Abata |cRXP_ENEMY_Rockjaw Ambushers|r. Saqueie-os para obter |T132621:0|t[|cRXP_LOOT_Barril de Pólvora Vazio|r]
    .use 268548 >>|cRXP_WARN_Use |r|T132621:0|t[|cRXP_LOOT_Barril de Pólvora Vazio|r] |cRXP_WARN_para iniciar a missão|r
    >>|cRXP_WARN_NOTA: Este item tem uma chance de drop baixa. Pule este passo se você não o encontrar até terminar com o|r |cRXP_ENEMY_Dark Ferro Spies|r
    .collect 268548,1,95213,1 -- Empty Powder Keg (1)
    .accept 95213 >>Aceite Stolen Impacto Powder
    .mob Rockjaw Ambusher
step
    .goto 1426/0,-2009.87,-5860.22,40,0
    .goto 1426/0,-2034.49,-5922.60
    >>Mate os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os para obter o |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r]
    .use 274268 >>|cRXP_WARN_Use o|r |T237385:0|t[|cRXP_LOOT_Dark Ferro Mapa|r] |cRXP_WARN_para iniciar a missão|r
    .complete 96390,1 -- Dark Iron Spy slain 10/10
    .collect 274268,1,96391,1 -- Dark Iron Map (1)
    .accept 96391 >>Aceite Mapa Subterrâneo
    .mob Dark Iron Spy
step
    #label OII
    .goto 1426/0,-1394.24,-5797.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Earthseer Farsen|r
    .turnin 96390 >>Entregue Nip 'Em in the Migo
    .turnin 96391 >>Entregue Mapa Subterrâneo
    .accept 96393 >>Aceite Old Ironforge Incursion
    .target Earthseer Farsen
step
    .isOnQuest 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .turnin 95213 >>Entregue Stolen Impacto Powder
    .accept 95214 >>Aceite Stolen Impacto Powder
    .target Quarrymaster Thesten
step
    .isQuestTurnedIn 95213
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .accept 95214 >>Aceite Stolen Impacto Powder
    .target Quarrymaster Thesten
step
    .isOnQuest 95214
    #loop
    .goto 1426/0,-1881.82,-5735.45,50,0
    .goto 1426/0,-1832.57,-5571.28,50,0
    .goto 1426/0,-1724.22,-5636.95,50,0
    .goto 1426/0,-1881.82,-5735.45,0
    .goto 1426/0,-1832.57,-5571.28,0
    .goto 1426/0,-1724.22,-5636.95,0
    >>Abata |cRXP_ENEMY_Rockjaw Ambushers|r. Saqueie-os para obter |cRXP_LOOT_Stolen Impacto Powder|r
    .complete 95214,1 -- Stolen Blasting Powder (16)
    .mob Rockjaw Ambusher
step
    .isQuestComplete 95214
    .goto 1426/0,-1606.02,-5676.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Quarrymaster Thesten|r
    .turnin 95214 >>Entregue Stolen Impacto Powder
    .target Quarrymaster Thesten
step
    .goto 1426/0,-2197.02,-5279.07,45,0
    .goto 1426/0,-2329.60,-5163.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2121.76,-5064.70
    >>Clique no |cRXP_PICK_Cadáver Anão|r no chão
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    .goto 1426/0,-2087.19,-5096.51
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o para a |cRXP_LOOT_Garra|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
step
    #label Revenge
    .goto 1426/0,-2329.60,-5163.76
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
    .goto 1426/0,-2354.62,-4898.20,25 >>Passe pelo túnel para Loch Modan
    .zoneskip Loch Modan
]])

RXPGuides.RegisterGuide([[
#forever
#season 0,1
#version 1
<< Alliance
#group Guia Forever (A)
#subgroup Guia Speedrun 1-20
--#groupid RXP-SRGCE-A1
#name 11-13 Loch Modan
#displayname 13-15 Loch Modan << SoD
#next 13-15 Cerro Oeste << !Hunter
#next 14-16 Costa Negra << Hunter
#defaultfor Human

step -- dont delete
    #label NormalRouteStart
step
    #optional
    #completewith next
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>Comerciante e Conserto
    .target Gothor Brumn
step
    .goto 1432/0,-2676.82,-4825.93
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
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_Naco de Carne de Javali|r
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
    >>Abate |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para o seu |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
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
    >>Mate os |cRXP_ENEMY_Ursos Pretos Anciãos|r. Saqueie-os para obter |T134027:0|t|cRXP_LOOT_Carne de Urso|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T134342:0|t|cRXP_LOOT_Intestinos de Javali|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |T134437:0|t|cRXP_LOOT_Icor de Aranha|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 144
step
    #optional
    #completewith next
    #label Thelsamar
    .subzone 144 >>Vá para Thelsamar
    .isQuestAvailable 1339
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
    .goto 1432/0,-3003.30,-5376.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grenilda Garranegra|r
    .accept 86667 >>Aceite Snowbound
    .target Grenhild Darktalon
step
    #label ThelsamarFirst
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .accept 418 >>Aceite Chouriço de Thelsamar
    .target Vidra Hearthstove
step
    #optional
    .goto 1432/0,-2954.42,-5394.10
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
    .goto 1432/0,-2952.46,-5381.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    .vendor 1682 >>|cRXP_BUY_Compre até 2|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_dela se necessário|r
    .target Yanni Stoutheart
step << !Warrior !Rogue !Hunter
    .goto 1432/0,-2973.90,-5377.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Fornalenha|r
    .vendor 6734 >>|cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_. Procure ter cerca de 20|r
    .target Innkeeper Hearthstove
    .xp >15,1
step
    #label StormpikeO
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .target Thorgrum Borrelson
step
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >>|cRXP_WARN_Corra pela estrada de terra e depois pule para dentro do bunker|r
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r no bunker
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step
    #label DefenseStart
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2534.38,-5648.28,5 >>Vá para a mancha nevada no chão logo fora do túnel da Passagem do Portão Sul
step
    .goto 1432/0,-2534.38,-5648.28
    .use 279380 >>|cRXP_WARN_Use o|r |T1387609:0|t[Ceramic Jar] |cRXP_WARN_enquanto estiver em pé na área nevada para coletar o|r |T1387609:0|t[Jar of Neve]
    .complete 86667,1 -- Jar of Snow 1/1
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
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_Naco de Carne de Javali|r
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
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_Naco de Carne de Javali|r
    >>|cRXP_WARN_Não faça um esforço especial. Simplesmente mate e saqueie todos os javalis que encontrar.|r
    .collect 769,50,2178,1,0x20,cooking --Chunk of Boar Meat (10-50)
    .mob Mountain Boar
--  .skill cooking,<10,1
    .skill cooking,50,1 --XX Shows if cooking skill is between 1-50
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
    #optional
    #sticky
    #label BoarBearSpider
    >>Mate os |cRXP_ENEMY_Ursos Pretos Anciãos|r. Saqueie-os para obter |T134027:0|t|cRXP_LOOT_Carne de Urso|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T134342:0|t|cRXP_LOOT_Intestinos de Javali|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |T134437:0|t|cRXP_LOOT_Icor de Aranha|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .subzoneskip 146 --Stonewrought Dam
    .subzoneskip 149 --Silver Stream Mine
step
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
    .goto 1432/0,-3146.73,-4837.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Norric Lochthane|r
    .turnin 86667 >>Entregue Snowbound
    .target Norric Lochthane
step
    #requires BoarBearSpider
    #label SilverStream
    #completewith MinerGear
    .goto 1432/0,-2972.96,-4835.187,20 >>Entre na Mina do Riacho Prateado, mate |cRXP_ENEMY_Kobolds|r para |T133854:0|t[|cRXP_LOOT_Orelhas|r] no caminho
step
    #label MinerGear
    .goto 1432/0,-2984.82,-4902.33
    >>Abra os |cRXP_PICK_Caixotes da Liga dos Mineiros|r. Saqueie-os para obter o |cRXP_LOOT_Equipamento dos Mineiros|r
    >>|cRXP_WARN_Os |cRXP_PICK_Caixotes da Liga dos Mineiros|r podem ser encontrados por toda a Mina|r
    >>|cRXP_WARN_Você poderá fazer esta missão em um nível mais alto se desejar pular por enquanto|r
    .complete 307,1 -- Miners' Gear (4)
step << Paladin/Warrior
    #label BuyMace
    .goto 1432/0,-3176.16,-4669.34
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
    .goto 1432/0,-2684.71,-5042.87,0
    .goto 1432/0,-2712.57,-5286.61,0
    .goto 1432/0,-3033.92,-4797.29,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92,50,0
    .goto 1432/0,-2684.71,-5042.87,50,0
    .goto 1432/0,-2712.57,-5286.61,50,0
    .goto 1432/0,-3033.92,-4797.29,50,0
    .goto 1432/0,-2972.41,-4796.92
    >>Mate os |cRXP_ENEMY_Ratos de Túnel|r. Saqueie-os para obter suas |T133854:0|t|cRXP_LOOT_Orelhas|r
    >>|cRXP_WARN_Certifique-se de que você tem 10|r |T132889:0|t[Linho] |cRXP_WARN_para sua próxima missão de classe A Irmandade Defias|r << Paladin
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .collect 2589,10,1644,1,1 << Human Paladin -- Linen Cloth (10)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
    .mob Tunnel Rat Surveyor
step
    #optional
    #completewith StormpikeDelivery
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |T134027:0|t|cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T134342:0|t|cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |T134437:0|t|cRXP_LOOT_Spider Ichor|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith StormpikeDelivery
    #label StormpikeStop
    .goto 1432/0,-2659.45,-4822.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gothor Brumn|r
    .vendor >>|cRXP_WARN_Venda ao Comerciante e repare se necessário|r
    .target Gothor Brumn
step << Human
    #label StormpikeDelivery
    .goto 1432/0,-2676.99,-4825.980
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    .turnin 307 >>Entregue Patas Nojentas
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .target Mountaineer Stormpike
step
    #optional
    #label BoarMeatLoch3
    #completewith FlintTinder
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
    #completewith FlintTinder
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
    #loop
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |T134027:0|t|cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |T134342:0|t|cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |T134437:0|t|cRXP_LOOT_Spider Ichor|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .goto 1432/0,-2735.74,-4684.34,0
    .goto 1432/0,-2782.63,-4770.80,0
    .goto 1432/0,-3080.53,-5100.08,0
    .waypoint 1432/0,-2735.74,-4684.34,90,0
    .waypoint 1432/0,-2846.07,-4682.50,90,0
    .waypoint 1432/0,-2782.63,-4770.80,90,0
    .waypoint 1432/0,-2835.04,-4976.83,90,0
    .waypoint 1432/0,-2915.03,-5044.89,90,0
    .waypoint 1432/0,-3080.53,-5100.08,90,0
    .mob +Elder Black Bear
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .goto 1432/0,-3041.92,-5129.51,0
    .goto 1432/0,-2815.73,-5147.91,0
    .goto 1432/0,-2782.63,-4903.25,0
    .waypoint 1432/0,-3041.92,-5129.51,90,0
    .waypoint 1432/0,-3017.09,-5219.65,90,0
    .waypoint 1432/0,-2815.73,-5147.91,90,0
    .waypoint 1432/0,-2757.81,-4952.91,90,0
    .waypoint 1432/0,-2782.63,-4903.25,90,0
    .mob +Mountain Boar
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .goto 1432/0,-2873.66,-4789.19,0
    .goto 1432/0,-2926.07,-5232.53,0
    .goto 1432/0,-3069.5,-5078.01,0
    .waypoint 1432/0,-2873.66,-4789.19,90,0
    .waypoint 1432/0,-2766.08,-4866.45,90,0
    .waypoint 1432/0,-2926.07,-5232.53,90,0
    .waypoint 1432/0,-2992.27,-5055.93,90,0
    .waypoint 1432/0,-3069.5,-5078.01,90,0
    .mob +Forest Lurker
step
    #completewith FlintTinder
    .subzone 144 >>Retorne a Thelsamar
step
    #completewith FlintTinder
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
    .isQuestComplete 416
step
    #optional
    #completewith FlintTinder
    .goto 1432,35.273,47.750,10,0
    .goto 1432,35.433,48.243,12 >>Entre na Stoutlager Estalagem
step
    .isQuestComplete 418
    #label FlintTinder
    .goto 1432/0,-2954.42,-5394.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vidra Fornalenha|r
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
step
    .line Loch Modan,36.72,41.97,37.24,43.19,37.33,45.63,36.77,46.20,35.19,46.88,32.67,49.71,35.19,46.88,36.77,46.20,37.33,45.63,37.24,43.19,36.72,41.97
    .goto 1432/0,-3006.61,-5259.57,15,0
    .goto 1432/0,-3020.95,-5282.02,15,0
    .goto 1432/0,-3023.44,-5326.90,15,0
    .goto 1432/0,-3007.99,-5337.390,15,0
    .goto 1432/0,-2964.41,-5349.90,15,0
    .goto 1432/0,-2894.90,-5401.96,20,0
    .goto 1432/0,-3007.99,-5337.390
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Kadrell|r
    >>|cRXP_FRIENDLY_Montanhista Kadrell|r |cRXP_WARN_patrulha a estrada através de Thelsamar|r
    .target Mountaineer Kadrell
    .turnin 416 >>Entregue Pegando Ratos
    .isQuestComplete 416
step
    .goto 1432/0,-2747.60,-5530.540
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os para obter |cRXP_LOOT_Teeth|r
    >>|cRXP_WARN_Cuidado, pois os |cRXP_ENEMY_Stonesplinter Batedores|r lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 14-20 de dano)|r
    >>|cRXP_WARN_Esta é uma área de hiperspawn. Você não deveria precisar sair daqui|r
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
    #optional
    #completewith next
    .goto 1432/0,-2677.26,-5778.34,10,0
    .goto 1432/0,-2648.30,-5876.75,15 >>|cRXP_WARN_suba a trilha de terra e depois desça para o bunker|r
step
    .goto 1432/0,-2634.59,-5842.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
    .isQuestComplete 267
step
    .goto 1432/0,-2602.54,-5832.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
    .isQuestComplete 224

step << Warlock
    #optional
    #completewith next
    .goto 1432/0,-2747.60,-5530.540,0
    +Farme os |cRXP_ENEMY_Troggs|r até conseguir 75 prata e 79 cobre em lixo de vendedor/dinheiro
    .money >0.7579
step << Warlock
    #optional
    .goto 1432/0,-2747.60,-5530.540
    .xp 14 >>Suba até o nível 14
    >>|cRXP_WARN_voe para Ironforge e pule este passo se está planejando executar a masmorra Hall of Thanes em Ironforge|r

step << !Warrior
    #optional
    .goto 1432/0,-2747.60,-5530.540
    +Continue triturando os |cRXP_ENEMY_Troggs|r até sua |T134414:0|t[Pedra de Regresso] estar pronta
    .cooldown item,6948,<1
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout

step << Human Warrior -- flying IF to train thrown before going westfall/darkshore
    #completewith next
    #optional
    .goto 1432/0,-2929.87,-5424.84
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
    .zoneskip Ironforge
step << Human Warrior
    #optional
    .goto 1455/0,-1203.78,-5041.97
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r
    .train 2567 >>Treine Arremesso
    .target Bixi Wobblebonk
step << Human Warrior
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bilban Arremessaporca|r
    .goto 1455/0,-1234.65,-5035.67
    .trainer >>Treine suas magias de classe
    .target Bilban Tosslespanner
    .zoneskip Ironforge,1

step -- dont delete
    #label NormalRouteEnd

step
    .hs >>Use sua Pedra de Retorno para ir à Cidade de Ventobravo
    .zoneskip Stormwind City
    .zoneskip Darkshore
    .zoneskip Westfall

step << Hunter
    .goto 1453/0,596.400,-8831.700
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    >>|cRXP_BUY_Compre um|r [Simple Wood] |cRXP_BUY_and a|r [Flint and Tinder] |cRXP_BUY_from him|r
    >>|cRXP_WARN_Isto é usado para fazer|r |T135805:0|t[Basic Campfires] |cRXP_WARN_em Barcos para aumentar sua|r |T133971:0|t[Culinária] |cRXP_WARN_habilidade sem perder tempo|r
    >>Você precisa de 50 em [Culinária] para uma missão mais tarde na Floresta do Crepúsculo
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Thurman Mullby
    .skill cooking,50,1 --XX Shows if cooking skill is <50
    .skill cooking,<1,1 -- shows if cooking is >1
step << Hunter
    #ah
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>|cRXP_BUY_Compre|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_BUY_e/ou|r |T133970:0|t|cRXP_LOOT_[Stringy Lobo Carne]|r |cRXP_BUY_para aumentar sua|r |T133971:0|t[Culinária] |cRXP_BUY_mais tarde|r
    >>|cRXP_WARN_Você precisa de 50|r |T133971:0|t[Culinária] |cRXP_WARN_para uma missão em Darkshire mais tarde|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Cerro Oeste e Costa Negra em breve:|r
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
    .target Auctioneer Jaxon
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #ah
    #optional
    .goto 1453/0,660.28,-8814.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Se você não quiser ou não puder fazer isso, pule esta etapa
    >>|cRXP_BUY_Compre os itens a seguir para entregas mais rápidas em Cerro Oeste e Costa Negra em breve:|r
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Jaxon
    .skill cooking,<50,1 --XX Shows if cooking skill is 50+
step << Warlock/Mage/Rogue/Priest/Warrior/Paladin
    #optional
    .goto 1453/0,613.0,-8796.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .trainer >>Treine 1h Espadas e Báculos << Warlock/Mage
    .trainer >>Treine Espadas de Uma Mão << Rogue
    .trainer >>Treine Cajados << Priest
    .trainer >>Treine Espadas de Duas Mãos << Warrior/Paladin
    .target Woo Ping
step
    .isOnQuest 6261
    .goto 1453/0,489.99,-8835.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dungar Tragolongo|r
    .turnin 6261 >>Entregue Dungar Tragolongo
    .target Dungar Longdrink
    .xp <15,1
step << Warlock/Priest
    #ssf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dela|r
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
step << Warlock/Priest
    #ah
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adriana Cailen|r
    >>|cRXP_BUY_Compre uma|r |T135468:0|t[Varinha Fumegante] |cRXP_BUY_dela ou procure na Casa de Leilões por uma|r |T135144:0|t[Varinha Mágica Maior]
    .goto 1453/0,807.64,-8880.84,14,0
    .goto 1453/0,804.55,-8862.47
    .collect 5208,1 --Smoldering Wand (1)
    .target Ardwyn Cailen
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    --not adding .money tag to this step. user could have less silver than vendor wand but cheaper ones may exist on the AH
step << Warlock/Priest
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135468:0|t[Varinha Fumegante]
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp <15,1
step << Warlock/Priest
    #optional
    #completewith next
    +|cRXP_WARN_Lembrar de equipar a|r |T135468:0|t[Varinha Fumegante] |cRXP_WARN_Mais tarde quando atingir o nível 15|r
    .use 5208
    .itemcount 5208,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<13.4
    .xp >15,1
step << Warlock
    #optional
    #completewith next
    .goto 1453/0,988.44,-8942.15,20,0
    .goto 1453/0,1015.33,-8978.9,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto 1453/0,1029.89,-8971.06
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ursula Deline|r
    .trainer >>Treine suas magias de classe
    .target Ursula Deline
step << Warlock
    .goto 1453/0,1035.96,-8974.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Spackle Cardopomo|r
    .vendor >>|cRXP_BUY_Compre|r |T133738:0|t[Grimório of Consumir Sombras (Rank 1)] |cRXP_BUY_e|r |T133738:0|t[Grimório de Sacrificar (Rank 1)] |cRXP_BUY_se você conseguir pagá-los. Se não, você pode comprá-los mais tarde|r
    .target Spackle Thornberry
step << Mage
    #optional
    #completewith next
    .goto 1453/0,874.32,-9014.67,10 >>Vá para a Torre dos Magos
step << Mage
    .goto 1453/0,885.34,-9006.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elsharin|r
    .trainer >>Treine suas magias de classe
    .target Elsharin
step << Priest/Paladin
    #optional
    #completewith next
    .goto 1453/0,809.52,-8579.22,20 >>Viaje até a Catedral de Ventobravo
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .accept 1641 >>Aceite Tomo de Divindade
    .turnin 1641 >>Entregue Tomo de Divindade
    .target Duthorian Rall
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|cRXP_WARN_Use [|cRXP_LOOT_O Tomo da Divindade|r]| para iniciar a missão|r
    .accept 1642 >>Aceite Tomo de Divindade
    .use 6775
step << Human Paladin
    .goto 1453/0,845.95,-8545.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Benedito Brião|r
    .turnin 1642 >>Entregue Tomo de Divindade
    .accept 1643 >>Aceite Tomo de Divindade
    .target Duthorian Rall
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Artur, o Fiel|r
    .goto 1453/0,859.13,-8559.14,10,0
    .goto 1453/0,861.14,-8573.03
    .trainer >>Treine suas magias de classe
    .target Arthur the Faithful
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irmão Joshua|r
    .goto 1453/0,862.89,-8519.61
    .trainer >>Treine suas magias de classe
    .target Brother Joshua
step << !Hunter
    #label HumbleBeginnings
    .goto 1453/0,719.67,-8550.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Baros Aleixo|r
    .accept 399 >>Aceite Humildes Começos
    .target Baros Alexston
    .xp >15,1 -- shows to 14 and under
step
    .goto 1453/0,600.07,-8427.22
    .target Furen Longbeard
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Furen Barbalonga|r
    .turnin 1338 >>Entregue Pedidos de Pico da Tempestade
step << Hunter
    .goto 1453/0,552.78,-8415.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Einris Setalume|r dentro
    .trainer >>Treine suas magias de classe
    .target Einris Brightspear
step << Hunter
    .goto 1453/0,553.22,-8422.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karrina Mekenda|r
    .trainer >>Treine as magias do seu mascote
    .target Karrina Mekenda
step << Rogue
    .goto 1453/0,377.47,-8752.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Osborne|r
    .trainer >>Treine suas magias de classe
    .target Osborne the Night Man
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wu|r or |cRXP_FRIENDLY_Ilsa|r
    .goto 1453/0,358.25,-8728.28,15,0
    .goto 1453/0,302.6,-8685.53,15,0
	.goto 1453/0,323.3,-8689.29
    .trainer >>Treine suas magias de classe
    .target Wu Shen
    .target Ilsa Corbin
step << Human Paladin
    .goto 1453/0,613.66,-8832.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stephanie Turner|r
    .turnin 1643 >>Entregue Tomo de Divindade
    .target Stephanie Turner
    .accept 1644 >>Aceite Tomo de Divindade
    .turnin 1644 >>Entregue Tomo de Divindade
    .accept 1780 >>Aceite Tomo de Divindade
step << Rogue
    #ah
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Scimitars] |cRXP_BUY_dela se conseguir pagá-los, ou você pode comprar algo melhor/mais barato do Auction House|r
    >>|cRXP_WARN_Equipe ambos assim que atingir o nível 14|r
    .collect 2027,2 --Scimitar
    .target Marcia Weller
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
step << Rogue
    #ssf
    .goto 1453/0,609.63,-8787.71
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marcia Weller|r
    >>|cRXP_BUY_Compre até 2|r |T135343:0|t[Cimidarras] |cRXP_BUY_dela se você puder pagar|r
    >>|cRXP_WARN_Equipe ambos assim que atingir o nível 14|r
    .collect 2027,2 --Scimitar
    .money <0.3815
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .target Marcia Weller
step << Rogue
    #optional
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.7
    .xp <14,1

--Hunter going Darkshore, rest Westfall
step << Hunter
    .goto 1453/0,765.700,-8804.000
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Catarina Gurjão|r
    >>|cRXP_BUY_Compre um|r |T134335:0|t[MIçanga Brilhosa] |cRXP_BUY_e três|r |T134324:0|t[Reptantes] |cRXP_BUY_dela. Isto é para uma missão de 900xp|r
    .collect 6529,1,95065,1 --|1/1 Shiny Bauble
    .collect 6530,3,95065,1 --|3/3 Nightcrawlers
    .target Catherine Leland
step << Hunter
    .goto 1453/0,1269.100,-8540.601
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilbert Cinza::267118|r
    .target Gilbert Gray::267118
    .accept 95065 >>Aceite Fishin' Tempo
    .turnin 95065 >>Entregue Fishin' Tempo
step << Hunter
    #optional
    #requires DockTravel
    #label DarkshoreCook1
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>|cRXP_WARN_Crie|r |T135805:0|t[Fogo para Cozinhar] |cRXP_WARN_(no seu Livro de Profissão)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook1
    #label DarkshoreCook2
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>|cRXP_WARN_Crie|r |T135805:0|t[Fogo para Cozinhar] |cRXP_WARN_(no seu Livro de Profissão)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,<1 --Chunk of Boar Meat (<1)
    .itemcount 2672,1 --Stringy Wolf Meat (1+)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
    #optional
    #requires DarkshoreCook2
    #label DarkshoreCook3
    #completewith DarkshoreBoat
    >>No barco, se ele acabou de chegar, ou na doca, se o barco acabou de sair:
    .cast 818 >>|cRXP_WARN_Crie|r |T135805:0|t[Fogo para Cozinhar] |cRXP_WARN_(no seu Livro de Profissão)|r
    .usespell 818
    .zoneskip Darkshore
    .itemcount 769,1 --Chunk of Boar Meat (1+)
    .itemcount 2672,<1 --Stringy Wolf Meat (<1)
    .itemcount 4470,1 --Simple Wood (1+)
    .itemcount 4471,1 --Flint and Tinder (1)
    .skill cooking,50,1 --XX Shows if cooking skill is <50
step << Hunter
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
step << Hunter
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
step << Hunter
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
step << Hunter
    #optional
    .goto 1453/0,1330.100,-8645.400
    >>|cRXP_WARN_Suba de Nível em|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_enquanto espera o barco para Costa Negra se necessário|r
    .zone Darkshore >>Pegue o barco para Costa Negra
    .skill firstaid,<1,1 -- shows if firstaid is >1
step << Hunter
    #label DarkshoreBoat
    .goto 1453/0,1330.100,-8645.400
    .zone Darkshore >>Pegue o barco para Costa Negra
]])
