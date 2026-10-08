if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Human
#group RXP TBC Guia de Sobrevivência (A)
#subgroup RXP Sobrevivência Guia 1-20
#name 1-11 Floresta de Elwynn
#next 11-12 Dun Morogh/Loch Modan

step << !Human
    #sticky
    #completewith next
    .goto Elwynn Forest,48.171,42.943
    +Você selecionou um guia destinado a Humanos. Você deve escolher a zona inicial que corresponda à zona em que você começa
step << Warlock
    #completewith next
    .goto Elwynn Forest,50.051,42.689
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dimas Victório|r
    .vendor >>|cRXP_WARN_Venda sua Armadura Corporal, Camisa, Calças e Botas junto com a Comida e Água nas suas bolsas. Você precisa de 10c no total|r
    .target Dane Winslow
step << Warlock
    .goto Elwynn Forest,49.873,42.649
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .accept 1598 >>Aceite O Tomo Roubado
    .train 348 >>Treine |T135817:0|t[Imolação]
    .target Drusilla La Salle
step << Warlock
    --#hardcore
    .goto Elwynn Forest,52.9,44.3,60,0
    .goto Elwynn Forest,56.7,44.0
    >>|cRXP_WARN_Corra para dentro da Tenda no Acampamento Défias|r
    >>Abra os |cRXP_PICK_Livros Roubados|r. Saque-os para obter o |cRXP_LOOT_Poderes do Caos|r
    >>|cRXP_WARN_Você pode saquear o |cRXP_LOOT_Powers of the Caos|r com segurança enquanto estiver dentro da tenda! Vigie o vídeo sobre como fazer isso|r
    .link https://youtu.be/3qQwsJhAZIk >>https://youtu.be/3qQwsJhAZIk >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 1598,1 --Collect Powers of the Void (x1)
step << Warlock
    #completewith next
    .goto Elwynn Forest,56.828,43.734
    >>|cRXP_WARN_Permaneça dentro da tenda então os |cRXP_ENEMY_Defias Thugs|r não conseguem acertar você|r
    .hs >>Vá para o Vale de Northshire
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .goto Elwynn Forest,49.873,42.649
    .turnin 1598 >>Entregue O Tomo Roubado
    .target Drusilla La Salle
step << Warlock
    #completewith next
    .cast 688 >>|cRXP_WARN_Lance|r |T136218:0|t[Evocar Diabrete]
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .accept 783 >>Aceite Uma Ameaça Interior
step << Warrior
    .goto Elwynn Forest,46.4,40.3,35,0
    >>Mate |cRXP_ENEMY_Lobos Jovens|r até ter 10c+ em itens de lixo para vender
    >>|cRXP_WARN_Você irá treinar|r |T132333:0|t [Grito de Guerra] |cRXP_WARN_que aumenta a velocidade de progressão nos níveis iniciais|r
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    .vendor >> |cRXP_WARN_Vendor trash|r
    .target +Brother Danil
    .goto Elwynn Forest,47.486,41.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hipólito Valentim|r
    .train 6673 >>Treine |T132333:0|t[Brado de Batalha]
    .target +Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .mob Young Wolf
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 783 >>Entregue Uma Ameaça Interior
    .accept 7 >>Aceite Limpeza do Acampamento Kobold
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 5261 >>Aceite Enzo Peleteiro
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .target Eagan Peltskinner
    .goto Elwynn Forest,48.941,40.166
    .turnin 5261 >>Entregue em Enzo Peleteiro
    .accept 33 >>Aceite Lobos Além da Fronteira
step << Priest/Mage/Warlock
    #completewith next
    .goto Elwynn Forest,46.2,40.4,40,0
    .goto Elwynn Forest,47.486,41.566
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    .vendor >>|cRXP_WARN_Depois que você tiver 50c em valor de lixo de vendedor, compre 10|r |T132794:0|t[Água Refrescante da Fonte]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Young Wolves|r e os |cRXP_ENEMY_Timber Wolves|r. Saque-os para obter seus |cRXP_LOOT_Carne|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,47.6,35.9,40,0
    .goto Elwynn Forest,49.6,35.8,40,0
    .goto Elwynn Forest,51.6,37.0,40,0
    .goto Elwynn Forest,49.6,35.8
    >>Mate |cRXP_ENEMY_Kobold Daninho|r
	.mob Kobold Vermin
    .complete 7,1 --Kill Kobold Vermin (x10)
step
    .goto Elwynn Forest,46.41,41.94,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,51.91,37.85,40,0
    .goto Elwynn Forest,46.61,35.09,40,0
    .goto Elwynn Forest,46.41,41.94
    >>Mate os |cRXP_ENEMY_Young Wolves|r e os |cRXP_ENEMY_Timber Wolves|r. Saque-os para obter seus |cRXP_LOOT_Carne|r
	.mob Young Wolf
	.mob Timber Wolf
    .complete 33,1 --Collect Tough Wolf Meat (x8)
step
    .goto Elwynn Forest,48.941,40.166
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Enzo Peleteiro|r
    .target Eagan Peltskinner
    .turnin 33,2 >>Entregue Lobos Além da Fronteira << Warrior/Paladin/Rogue
    .turnin 33,1 >>Entregue Lobos Além da Fronteira << !Warrior !Paladin !Rogue
step << Priest/Mage/Warlock
    .goto Elwynn Forest,47.486,41.566
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Dânio|r
    .vendor >>|cRXP_WARN_Vendor trash|r
    >>|cRXP_WARN_Compre 10|r |T132794:0|t[Água Refrescante da Fonte]
    .target Brother Danil
    .collect 159,10 --Collect Refreshing Spring Water (x10)
step << !Priest !Mage !Warlock !Rogue
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.691,41.417
    .vendor >>|cRXP_WARN_Vendor trash|r
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Janos|r
    .goto Elwynn Forest,47.240,41.900
    .vendor >>|cRXP_BUY_Compre um|r |T135650:0|t[Punhal]
    .target Janos Hammerknuckle
step << Rogue
    #completewith next
    +Equipe o|cRXP_WARN_ |T135650:0|t [Punhal]|r
    .use 2139
    .itemcount 2139,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<1.3
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 7 >>Entregue Limpeza do Acampamento Kobold
    .accept 15 >>Aceite Investigar a Serra do Eco
    .accept 3100 >>Aceite Carta Simples << Warrior
    .accept 3101 >>Aceite Carta Consagrada << Paladin
    .accept 3102 >>Aceite Carta Criptografada << Rogue
    .accept 3103 >>Aceite Carta Santificada << Priest
    .accept 3104 >>Aceite Carta Glífica << Mage
    .accept 3105 >>Aceite Carta Corrompida << Warlock
step
    .xp 3 >>Farme até 3
step
    .goto Elwynn Forest,47.2,35.1,40,0
    .goto Elwynn Forest,48.9,32.8,40,0
    .goto Elwynn Forest,51.7,37.7,40,0
    .goto Elwynn Forest,47.2,35.1
    >>Mate |cRXP_ENEMY_Operários Kobold|r
	.mob Kobold Worker
    .complete 15,1 --Kill Kobold Worker (x10)
step
    #sticky
    #label xp3
    .xp 3+1110 >>Farme até 1110+/1400xp no seu caminho de volta
step
    #completewith next
    .goto Elwynn Forest,47.691,41.417
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .target Godric Rothgar
    .vendor >> |cRXP_WARN_Vendor trash|r
--N need SoM xp note
step
    #requires xp3
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Major Belmonte|r
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 15 >>Entregue Investigar a Serra do Eco
    .accept 21 >>Aceite Escaramuça na Serra do Eco
step << Priest/Mage
    #completewith next
    .goto Elwynn Forest,49.52,39.99,10 >>Vá para o andar de cima << Mage
    .goto Elwynn Forest,49.3,40.7,15 >>Viaje em direção a |cRXP_FRIENDLY_Sacerdotisa Anita|r << Priest
step << Mage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaspar Melchior|r
    .target Khelden Bremen
    .goto Elwynn Forest,49.661,39.402
    .turnin 3104 >>Entregue Carta Glífica
    .trainer >>Treine suas magias de classe
step << Priest
    #completewith next
    .goto Elwynn Forest,49.8,40.2,10 >>Viaje pela porta
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .turnin 3103 >>Entregue Carta Santificada
    .trainer >>Treine suas magias de classe
step << Warrior/Paladin
    #completewith next
    .goto Elwynn Forest,49.6,41.8,15 >>Viaje em direção a |cRXP_FRIENDLY_Hipólito Valentim|r << Warrior
    .goto Elwynn Forest,49.6,41.8,15 >>Viaje em direção ao |cRXP_FRIENDLY_Irmão Samuel|r << Paladin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hipólito Valentim|r
    .target Llane Beshere
    .goto Elwynn Forest,50.242,42.287
    .turnin 3100 >>Entregue Carta Simples
    .trainer >>Treine suas magias de classe
step << Paladin
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Samuel|r
    .target Brother Sammuel
    .goto Elwynn Forest,50.433,42.124
    .turnin 3101 >>Entregue Carta Consagrada
    .trainer >>Treine suas magias de classe
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .target Deputy Willem
    .goto Elwynn Forest,48.171,42.943
    .accept 18 >>Aceite Irmandade de Ladrões
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drusilla La Salle|r
    .target Drusilla La Salle
    .goto Elwynn Forest,49.873,42.649
    .turnin 3105 >>Entregue Carta Corrompida
    .xp 4 >>Suba até o nível 4
    .trainer >>Treine |T136118:0|t[Corrupção]
step
    .goto Elwynn Forest,53.9,49.2,50,0
    .goto Elwynn Forest,55.5,42.1,50,0
    .goto Elwynn Forest,53.9,49.2
    .goto Elwynn Forest,54.57,49.03
    >>Mate os |cRXP_ENEMY_Defias Thugs|r. Saque-os para obter seus |cRXP_LOOT_Bandanas|r
	.mob Defias Thug
    .complete 18,1 --Collect Red Burlap Bandana (x12)
step << Rogue
    .xp 4 >>Suba até o nível 4
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 18,4 >>Entregue Irmandade de Ladrões << Paladin
    .turnin 18,1 >>Entregue Irmandade de Ladrões << Rogue/Warlock
    .turnin 18,5 >>Entregue Irmandade de Ladrões << Mage
    .turnin 18,2 >>Entregue Irmandade de Ladrões << Priest
    .turnin 18,3 >>Entregue Irmandade de Ladrões << Warrior
    .turnin 18 >>Entregue Irmandade de Ladrões << !Warrior !Priest !Mage !Rogue !Warlock !Paladin
    .accept 6 >>Aceite Recompensa por Garrick Patatenra
    .accept 3903 >>Aceite Madel Quintana
step << Paladin
    #completewith next
    +Equipe o |T133052:0|t[Martelo de Guerra de Milícia]
    .use 5579
    .itemcount 5579,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.6
step << skip
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Godrico Rothgar|r
    .target Godric Rothgar
    .goto Elwynn Forest,47.7,41.4
    .vendor >>Venda lixo de vendedor e repare
step
    #completewith next
    .goto Elwynn Forest,47.63,32.07,20 >>Entre na Mina da Serra do Eco
step
    .goto Elwynn Forest,48.61,27.63
    >>Mate os |cRXP_ENEMY_Kobold Laborers|r
	.mob Kobold Laborer
    .complete 21,1 --Kill Kobold Laborer (x12)
step
    .xp 5 >>Faça grind até 5
step << !Priest !Mage
    .goto Elwynn Forest,50.692,39.347
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .turnin 3903 >>Entregue Madel Quintana
    >>|cRXP_WARN_Pule a missão seguinte|r
    .target Milly Osworth
step << Priest/Mage
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3903 >>Entregue Madel Quintana
    .accept 3904 >>Aceite Colheita da Madel
step << Rogue
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Rufino Raposo|r
    .target Jorik Kerridan
    .goto Elwynn Forest,50.314,39.916
    .turnin 3102 >>Entregue Carta Criptografada
    >>|cRXP_WARN_Você não precisa treinar nenhuma magia|r
step << Priest/Mage
    >>Saqueie |cRXP_PICK_Colheita da Madel|r no chão
    .goto Elwynn Forest,54.5,49.4
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.5,48.2
    >>Mate |cRXP_ENEMY_Garrick Patatenra|r. Saqueie-o para obter a |cRXP_LOOT_Cabeça|r
	.mob Garrick Padfoot
    .complete 6,1 --Collect Garrick's Head (x1)
step << !Priest !Mage
    #sticky
    .abandon 3904 >>Abandone Colheita da Madel
step << !Priest !Mage
    .xp 5+1715 >>Farme no seu caminho de volta até 1715+/2800xp
    .goto Elwynn Forest,48.171,42.943
--N SoM xp values
step << Priest/Mage
    .xp 5+1175 >>Farme até 1175+/2800 XP no caminho de volta
    .goto Elwynn Forest,50.7,39.2
step << Priest/Mage
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Madel Quintana|r
    .target Milly Osworth
    .goto Elwynn Forest,50.692,39.347
    .turnin 3904 >>Entregue Colheita da Madel
    .accept 3905 >>Aceite Manifesto das Uvas
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cabo Vilém|r
    .target Deputy Willem
    .goto Elwynn Forest,48.17,42.94
    .turnin 6,2 >>Entregue Recompensa por Garrick Patatenra << Warrior/Rogue/Paladin
    .turnin 6,1 >>Entregue Recompensa por Garrick Patatenra << !Warrior !Rogue !Paladin
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Major Belmonte|r dentro da Abadia
    .target Marshal McBride
    .goto Elwynn Forest,48.923,41.606
    .turnin 21,1 >>Entregue Escaramuça na Serra do Eco << Rogue
    .turnin 21,2 >>Entregue Escaramuça na Serra do Eco << Warrior/Paladin
    .turnin 21,3 >>Entregue Escaramuça na Serra do Eco << !Warrior !Paladin
    .accept 54 >>Aceite Relatório para Vila Dourada
step << Priest/Mage
    #sticky
    #completewith next
    .goto Elwynn Forest,49.6,41.6,15,0
    .goto Elwynn Forest,48.9,41.3,10 >>Vá para o andar de cima
step << Priest/Mage
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Irmão Neals|r no andar de cima
    .target Brother Neals
    .goto Elwynn Forest,49.471,41.586
    .turnin 3905,1 >>Entregue Manifesto das Uvas
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Anita|r
    .target Priestess Anetta
    .goto Elwynn Forest,49.808,39.489
    .accept 5623 >>Aceite A Simpatia da Luz
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Falcão Lencastre|r
    .target Falkhaan Isenstrider
    .goto Elwynn Forest,45.563,47.742
    .accept 2158 >>Aceite Descanso e Relaxamento
step
    #completewith next
    .subzone 87 >>Viaje para Goldshire
step
    --#hardcore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
step << Warrior/Rogue/Paladin
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .trainer >>Treine |T136241:0|t[Ferraria]
    >>|cRXP_WARN_Isso vai permitir que você faça |T135248:0|t[Rough Sharpening Stones] que aumentam os ataques corpo-a-corpo em +2 Dano. Isso é muito significativo no começo|r << Warrior/Rogue
    >>|cRXP_WARN_Isso vai permitir que você faça |T135255:0|t[Rough Weightstones] que aumentam os ataques corpo-a-corpo em +2 Dano. Isso é muito significativo no começo|r << Paladin
step << Warrior
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    >>|cRXP_WARN_Compre e equipe um|r |T135321:0|t[Gládio]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    >>|cRXP_WARN_Compre e equipe um|r |T135641:0|t[Estilete]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    >>|cRXP_WARN_Compre e equipe uma|r |T133053:0|t[Marreta de Madeira]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step << Mage/Priest/Warlock
    #completewith next
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_André Cravo|r
    .target Andrew Krighton
    .goto Elwynn Forest,41.706,65.786
    .vendor >> |cRXP_WARN_Vendor trash|r
step
    #label Goldshire
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .accept 60 >>Aceite Velas Kobold
step
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .target Innkeeper Farley
    .turnin 2158,1 >>Entregue Descanso e Relaxamento << Rogue/Warrior
    .turnin 2158,2 >>Entregue Descanso e Relaxamento << !Rogue !Warrior
    .home >>Defina sua Pedra de Regresso para Vila Dourada
step
    .xp 6 >>Faça grind até 6
step << Rogue
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .target Brog Hamfist
    .goto Elwynn Forest,43.96,65.92
    .vendor 151 >>|cRXP_WARN_Compre uma|r |T135641:0|t[Adaga Equilibrada de Arremesso] |cRXP_WARN_e equipe-a|r
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para o andar de baixo
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >>Treine suas magias de classe
step << Warlock
    .goto Elwynn Forest,44.397,65.989
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Cylina Corenero|r
    .vendor >>|cRXP_WARN_Compre o|r |T133738:0|t[Grimório of Pacto de Sangue (Rank 1)] |cRXP_WARN_se você puder pagar. Se não, você vai comprar depois|r
    .target Cylina Darkheart
step << Mage/Rogue/Priest
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Vá para cima na Estalagem
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
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
step << Warrior/Rogue
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .vendor >>|cRXP_BUY_Compre|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_BUY_até você ficar com 1 Prateado|r << Warrior
    .vendor >>|cRXP_BUY_Compre até 20|r |T133995:0|t[Queijo Azedo de Dalaran] << Rogue
    .target Innkeeper Farley
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >>Treine suas magias de classe
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >>Treine suas magias de classe
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .accept 47 >>Aceite Trocando Pó de Ouro
step << Priest
    >>|cRXP_WARN_Lance|r |T135929:0|t[Cura Inferior (Rank 2)] |cRXP_WARN_e|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_em|r |cRXP_FRIENDLY_Guarda Roberts|r
    .target Guard Roberts
    .goto Elwynn Forest,48.148,68.046
    .complete 5624,1 --Heal and fortify Guard Roberts
step
    #completewith BoarMeat1
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saque-os por suas |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Mama Campedra|r e a |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .accept 85 >>Aceite O Colar Perdido
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >>Aceite Princesa Tem Que Morrer!
    .target +Ma Stonefield
	.goto Elwynn Forest,34.660,84.482
    .xp <6,1
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .accept 85 >>Aceite O Colar Perdido
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Torta para o Guinho
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .accept 106 >>Aceite Jovens Amantes
    .target Maybell Maclure
step
    #completewith next
    .goto Elwynn Forest,42.357,89.373
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Josué Madruga|r
    .target Joshua Maclure
    .vendor >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_WARN_que você puder pagar|r << Priest/Warlock/Mage
    .vendor >>|cRXP_WARN_Vendor trash|r << !Priest !Warlock !Mage
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label BoarMeat1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomasino Campedra|r
    .goto Elwynn Forest,29.840,85.997
    .turnin 106 >>Entregue Jovens Amantes
    .accept 111 >>Aceite Fale com a Vovó
    .target Tommy Joe Stonefield
step
    .goto Elwynn Forest,32.5,85.5
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saque-os por suas |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .complete 86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 86 >>Entregue Torta para o Guinho
    .accept 84 >>Aceite De Volta para o Guinho
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Vovó Campedra|r
    .target Gramma Stonefield
    .goto 1429,34.945,83.855
    .turnin 111 >>Entregue Fale com a Vovó
    .accept 107 >>Aceite Bilhete para Durval
step
    .xp 6
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .accept 88 >>Aceite Princesa Tem Que Morrer!
    .target Ma Stonefield
	.goto Elwynn Forest,34.660,84.482
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Guinho Madruga|r
    .target Billy Maclure
    .goto Elwynn Forest,43.131,85.722
    .turnin 84 >>Entregue De Volta para o Guinho
    .accept 87 >>Aceite Dentadouro
step
    #completewith KillGoldtooth
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #completewith next
    .goto Elwynn Forest,38.677,81.778,50,0
    .goto Elwynn Forest,40.5,82.3
    >>Explore a Mina Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #label KillGoldtooth
    >>Mate |cRXP_ENEMY_Dentadouro|r. Saqueie |T133970:0|t|cRXP_LOOT_Bernice's Colar|r dele
    .goto Elwynn Forest,41.7,78.1
    .complete 87,1 --Collect Bernice's Necklace  (x1)
    .unitscan Goldtooth
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    .goto Elwynn Forest,40.5,82.3
    >>Explore a Mina Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    >>Abate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineradores|r. Saque-os por suas |cRXP_LOOT_Velas|r e |cRXP_LOOT_Poeira|r
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135248:0|t[Rough Sharpening Stones] << Warrior/Rogue
    >>|cRXP_WARN_Se você apanhar qualquer|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r |cRXP_WARN_transforme-os em|r |T135255:0|t[Rough Weightstones] << Paladin
    .complete 60,1 --Kobold Candle (8)
    .complete 47,1 --Gold Dust (10)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << Warrior
    #completewith Goldtooth
    +|cRXP_WARN_Tente guardar um único|r |T134829:0|t[Poção Menor de Cura] |cRXP_WARN_a partir de agora pois você precisará dele para Cadáver de Rolf mais tarde|r
step << Warrior/Rogue
    >>|cRXP_WARN_Lembre de fazer|r |T135248:0|t[Rough Sharpening Stones] |cRXP_WARN_se você pegou uma|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r
    .xp 7+1600 >>Triture até 1600+/4500xp
step << Paladin
    >>|cRXP_WARN_Lembre de fazer|r |T135255:0|t[Rough Weightstones] |cRXP_WARN_se você pegou uma|r |T135232:0|t|cRXP_LOOT_[Pedra Rústica]|r
    .xp 7+1600 >>Triture até 1600+/4500xp
step << !Priest !Paladin !Warrior !Rogue
    .xp 7+1600 >>Triture até 1600+/4500xp
step << Priest
    .xp 7+1260 >>Triture até 1260+/4500xp
step
    #label Goldtooth
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_"Titia" Berenice Campedra|r
    .target "Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 87 >>Entregue Dentadouro
step
    .xp 7+2690 >>Triture até 2690+/4500xp << !Priest
    .xp 7+2350 >>Triture até 2350+/4500xp << Priest
    .goto Elwynn Forest,42.1,67.3
step
    #completewith next
    .goto Elwynn Forest,42.20,66.00,100 >>Viaje para Goldshire
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Remy "Duas Vezes"|r
    .target Remy "Two Times"
    .goto Elwynn Forest,42.140,67.254
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .accept 40 >>Aceite Perigo Anfíbio
    >>|cRXP_WARN_NÃO venda o|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_de recompensa. Este é um item incrivelmente valioso durante todo o caminho até o nível 60|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
step
    #completewith next
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    .goto Elwynn Forest,41.529,65.900
    .vendor >>|cRXP_WARN_Vendor trash|r
    .target Corina Steele
step << Warrior
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    >>|cRXP_WARN_Compre e equipe um|r |T135321:0|t[Gládio]
    .target Corina Steele
    .money <0.0536
    .goto Elwynn Forest,41.529,65.900
    .collect 2488,1 --Collect Gladius (1)
step << Rogue
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    >>|cRXP_WARN_Compre e equipe um|r |T135641:0|t[Estilete]
    .target Corina Steele
    .money <0.0400
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step << Paladin
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    >>|cRXP_WARN_Compre e equipe uma|r |T133053:0|t[Marreta de Madeira]
    .target Corina Steele
    .money <0.0631
    .goto Elwynn Forest,41.529,65.900
    .collect 2493,1 --Collect Wooden Mallet (1)
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .target William Pestle
    .goto Elwynn Forest,43.318,65.705
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
    .turnin 107 >>Entregue Bilhete para Durval
    .accept 112 >>Aceite Coletando Alga
step
    .xp 8 >>Suba até o nível 8
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    .target Lyria Du Lac
    .goto Elwynn Forest,41.087,65.768
    .trainer >>Treine suas magias de classe
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >>Treine suas magias de classe
step << Warlock
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
    .vendor >>|cRXP_WARN_Compre o|r |T133738:0|t[Grimório of Seta de Fogo (Rank 2)] |cRXP_WARN_se você puder pagar. Se não, você comprará mais tarde|r
    .target Cylina Darkheart
step << Mage/Priest/Rogue/Warrior/Paladin
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
step << Rogue/Warrior/Paladin
    .money <0.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
step
    .money <0.1250
    .goto Elwynn Forest,43.96,65.92
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Brog Atolão|r
    .vendor >>|cRXP_WARN_Compre um|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_WARN_se necessário|r
	.target Brog Hamfist
step
    #completewith next
    .goto Elwynn Forest,43.771,65.803
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Estalajadeiro Fábio|r
    .vendor >>|cRXP_WARN_Compre até 40|r |T132815:0|t[Leite Gelado] << !Warrior !Rogue !Paladin
    .vendor >>|cRXP_WARN_Compre até 40|r |T133995:0|t[Queijo Azedo de Dalaran] << Warrior/Rogue
    .vendor >>|cRXP_WARN_Compre até 10|r |T133995:0|t[Queijo Azedo de Dalaran] |cRXP_WARN_e 10|r |T132815:0|t[Leite Gelado] << Paladin
    .target Innkeeper Farley
step
    >>Abate os |cRXP_ENEMY_Murlocs|r e os |cRXP_ENEMY_Murloc Streamrunners|r. Saque-os para obter |cRXP_LOOT_Frondes de Alga|r
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,56.4,66.6,60,0
    .goto Elwynn Forest,53.8,66.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc
	.mob Murloc Streamrunner
step
    #completewith next
    .goto Elwynn Forest,61.654,53.608,15 >>Entre na Mina Jasperlode
step
    >>|cRXP_WARN_Siga o caminho pelo meio para explorar a Mina Jasperlode|r
    >>|cRXP_WARN_Saia da Mina Jasperlode assim que o objetivo for concluído|r
    .goto Elwynn Forest,60.4,50.2
    .complete 76,1 --Scout through the Jasperlode Mine
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Tomás|r
    .target Guard Thomas
    .goto Elwynn Forest,73.973,72.179
    .turnin 35 >>Entregue Mais Preocupações
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
step
    #completewith AcceptBundle
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você vir|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    >>Clique em |cRXP_PICK_Cadáver Meio Comido|r no chão
    .goto Elwynn Forest,72.656,60.334
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    #label AcceptBundle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .accept 5545 >>Aceite Um Feixe de Encrenca
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ricardo Fino|r
    .target Rallic Finn
    .goto Elwynn Forest,83.283,66.089
    .vendor >> |cRXP_WARN_Vendor trash|r
    .zoneskip Elwynn Forest,1
step
    #completewith Prowlers
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    >>|cRXP_WARN_Priorize matar qualquer |cRXP_ENEMY_Young Forest Ursos|r que você vir|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    #completewith Bundles
    >>Pegue o |cRXP_LOOT_Bundle of Madeira|r no chão. |cRXP_WARN_Encontram-se sob as árvores|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    #label Prowlers
    .goto Elwynn Forest,79.80,55.50
    >>Clique em |cRXP_PICK_Cadáver de Rolf|r no chão
    >>|cRXP_ENEMY_Murloc Foragers|r |cRXP_WARN_vão lançar|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_que os curam em 61-68|r
    >>|cRXP_WARN_Lance|r |T135953:0|t[Renovar] |cRXP_WARN_e|r |T135940:0|t[Palavra de Poder: Escudo] |cRXP_WARN_depois obtenha mana cheia. Puxe os 2 |cRXP_ENEMY_Murlocs|r à frente das cabanas, afaste-se e depois mate um. Fuja quando matar um e depois mate o outro|r << Priest
    >>|cRXP_WARN_Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_à frente das cabanas, afaste-se e|r |T136071:0|t[Polimorfia] |cRXP_WARN_um enquanto mata o outro. Abate o|r |T136071:0|tPolimorfado |cRXP_WARN_depois|r << Mage
    >>|cRXP_WARN_Acumule 100 Raiva. Puxe os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_à frente das cabanas, afaste-se e mantenha|r |T132316:0|t[Cortar Tendão] |cRXP_WARN_em um enquanto mata o outro. Também use|r |T133581:0|t[Bolsa of Marbles] |cRXP_WARN_no que você está matando. Fuja e reinicie a levada com|r |T132316:0|t[Cortar Tendão] |cRXP_WARN_depois de matar um|r << Warrior
    >>|cRXP_WARN_Puxar os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e foque em matar um deles. Usar|r |T136205:0|t[Evasão] |cRXP_WARN_quando ambos estiverem atacando você. Esta é uma boa oportunidade para usar|r |T133581:0|t[Bolsa of Marbles]|cRXP_WARN_. Saia correndo e resete após ter matado um|r << Rogue
    >>|cRXP_WARN_Puxar os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e lance|r |T136183:0|t[Medo] |cRXP_WARN_em um deles constantemente, e tente manter DoTs em ambos|r << Warlock
    >>|cRXP_WARN_Puxar os 2|r |cRXP_ENEMY_Murlocs|r |cRXP_WARN_na frente das cabanas, afaste-se e destrua um deles rapidamente. Usar|r |T135954:0|t[Proteção Divina] |cRXP_WARN_e suas Curas conforme necessário. Esta é uma boa oportunidade para usar|r |T133581:0|t[Bolsa of Marbles]|cRXP_WARN_. Saia correndo e resete após ter matado um|r << Paladin
    >>|cRXP_WARN_Lembrar durante|r |T135954:0|t[Proteção Divina] |cRXP_WARN_você é incapaz de atacar|r << Paladin
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
    #label Bundles
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,76.7,75.6,60,0
    .goto Elwynn Forest,79.7,83.7,60,0
    .goto Elwynn Forest,82.0,76.8,60,0
    .goto Elwynn Forest,86.99,64.83
    >>Abate os |cRXP_ENEMY_Prowlers|r e os |cRXP_ENEMY_Young Forest Ursos|r
    .complete 52,1 --Kill Prowler (x8)
    .mob +Prowler
    .complete 52,2 --Kill Young Forest Bear (x5)
    .mob +Young Forest Bear
step
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4,40,0
    .goto Elwynn Forest,76.8,62.4,40,0
    .goto Elwynn Forest,83.7,59.4
    >>Pegue o |cRXP_LOOT_Bundle of Madeira|r no chão. |cRXP_WARN_Encontram-se sob as árvores|r
    .complete 5545,1 -- Bundle of Wood (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Supervisora Raquel|r
    .target Supervisor Raelen
    .goto Elwynn Forest,81.382,66.112
    .turnin 5545 >>Entregue Um Feixe de Encrenca
step
	.goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4,90,0
    .goto Elwynn Forest,83.7,59.4,90,0
    .goto Elwynn Forest,76.8,62.4
    .xp 9 >>Farme até o nível 9
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .accept 83 >>Aceite Mercadorias de Linho Vermelho
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
    #era
    #completewith next
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .mob Defias Bandit
    .isOnQuest 83
step
    .goto Elwynn Forest,69.3,79.0
    >>Mate a |cRXP_ENEMY_Princesa|r. Saqueie-a para obter o |cRXP_LOOT_Collar|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_atacará com ambas as suas|r |cRXP_ENEMY_Porcine Entourage|r
    >>|cRXP_ENEMY_Princesa|r |cRXP_WARN_também lançará|r |T132368:0|t[Investida Impetuosa] |cRXP_WARN_que causa dano pesado|r
    >>|cRXP_WARN_Acumule 100 Raiva antes de enfrentar|r |cRXP_ENEMY_Princesa|r << Warrior
    >>|cRXP_WARN_Certifique-se de que |T136205:0|t[Evasão] |cRXP_WARN_está pronta. Se estiver com dificuldades, você pode usar a Cerca com Arremessando Armas para abusar do pathing e ganhar tempo|r << Rogue
    >>|cRXP_WARN_Esteja pronto para usar|r |T134830:0|t[Poção Inferior de Cura]
    .link https://www.youtube.com/watch?v=GRrXOV-UvD4 >>https://www.youtube.com/watch?v=GRrXOV-UvD4 >> |cRXP_WARN_Clique aqui para referência de vídeo|r << !Warrior
    .complete 88,1
    .mob Princess
step
    #completewith Level9Grind
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os para obter o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    .use 1972>>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    >>|cRXP_WARN_O|r |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] |cRXP_WARN_é um drop muito raro. Ignorar este passo se você não conseguir|r
    .collect 1972,1,184 --Collect Westfall Deed (x1)
    .accept 184 >>Aceite Escritura do Taturana
step
    #era
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saqueie-os para obter |cRXP_LOOT_Bandanas|r
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
step
    #label Level9Grind
	.goto Elwynn Forest,69.53,79.47
    .xp 9+3400 >>Farme até 3400+/6500xp
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .target Sara Timberlain
    .goto Elwynn Forest,79.457,68.789
    .turnin 83 >>Entregue Mercadorias de Linho Vermelho
    .isQuestComplete 83
step << !Warlock
    .goto Redridge Mountains,8.5,72.0
    .xp 9+4475 >>Farme até 4475+/6500xp
step << !Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step << !Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.590,59.410
    >>|cRXP_WARN_SIGA A ESTRADA PRINCIPAL E EVITE QUALQUER INIMIGO PRÓXIMO|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step
    #completewith next
    .hs >>Volte para Goldshire
step
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Durval Pilão|r
    .goto Elwynn Forest,43.318,65.705
    .turnin 112 >>Entregue Coletando Alga
    .accept 114 >>Aceite A Fuga
    .target William Pestle
step
    #completewith next
    .goto Elwynn Forest,43.877,66.546,9 >>Vá para cima na Estalagem
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Michelle Belle|r
    .target Michelle Belle
    .goto Elwynn Forest,43.392,65.550
    .train 3273 >>Treine |T135966:0|t[Primeiros Socorros]
step
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .target Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .turnin 39 >>Entregue O Relatório de Tomás
    .turnin 76 >>Entregue A Mina de Jaspe
    .accept 239 >>Aceite Ribeira d'Oeste Precisa de Ajuda!
    .accept 59 >>Aceite Armadura de Pano e Couro << Warlock
    .accept 109 >>Aceite Entregar para Miguel Mantoforte
step
	>>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Ferreiro Argus|r
    .target Smith Argus
    .goto Elwynn Forest,41.706,65.544
    .accept 1097 >>Aceite Tarefa de Elmore
step
    .xp 10 >>Suba até 10
step << Warrior
    .goto Elwynn Forest,41.087,65.768
    .target Ilsa Corbin
    .target Lyria Du Lac
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lyria Du Lac|r
    -->>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Ilsa Corbin|r
    .accept 1638 >>Aceite Treinamento do Guerreiro
    .trainer >>Treine suas magias de classe
    .xp <10,1
step << Paladin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Irmão Guilhermino|r
    .target Brother Wilhelm
    .goto Elwynn Forest,41.096,66.041
    .trainer >>Treine suas magias de classe
step << Warlock
    #completewith next
    .goto Elwynn Forest,44.1,66.0,10 >>Vá para baixo na Estalagem
step << Warlock
    .goto Elwynn Forest,44.392,66.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillian Crowe|r
    .target Maximillian Crowe
    .trainer >>Treine suas magias de classe
step << Warlock
    .goto Elwynn Forest,44.485,66.268
    .target Remen Marcot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rêmulo Marcos|r
    .accept 1685 >>Aceite Convocação de Gakin
step << Mage/Priest/Rogue
    #sticky
    #completewith next
    .goto Elwynn Forest,43.7,66.4,10 >>Vá para cima
step << Priest
    .goto Elwynn Forest,43.283,65.721
    .target Priestess Josetta
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Joselita|r
    .accept 5635 >>Aceite Prece Desesperada
    .trainer >>Treine suas magias de classe
step << Mage
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
	.target Zaldimar Wefhellt
    .goto Elwynn Forest,43.25,66.19
    .trainer >>Treine suas magias de classe
step << Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Anabela Cabreira|r
    .target Keryn Sylvius
    .goto Elwynn Forest,43.872,65.937
    .trainer >>Treine suas magias de classe
    >>|cRXP_WARN_Treine|r |T132147:0|t[Empunhar Duas Armas] |cRXP_WARN_e|r |T132307:0|t[Disparada] |cRXP_WARN_no mínimo. Não treine habilidades em excesso. Economize seu dinheiro|r
    .train 674 >>Treine |T132147:0|t[Empunhar Duas Armas]
    .train 2983 >>Treine |T132307:0|t[Disparada]
step << Rogue
    #era
    >>|interface/worldmap/chatbubble_64grey.blp:20|t Fale com |cRXP_FRIENDLY_Corina Ácero|r
    >>|cRXP_WARN_Compre e equipe um|r |T135641:0|t[Estilete] |cRXP_WARN_para sua mão secundária|r
    .target Corina Steele
    .money >0.3152
    .goto Elwynn Forest,41.529,65.900
    .collect 2494,1 --Collect Stiletto (1)
step
    #completewith next
    .goto Elwynn Forest,43.154,89.625,50 >>Vá para The Maclure Vineyards
step
    .goto Elwynn Forest,43.154,89.625
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mabel Madruga|r
    .turnin 114 >>Entregue A Fuga
    .target Maybell Maclure
step
    .goto Elwynn Forest,34.660,84.482
    .target Ma Stonefield
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mama Campedra|r
    .turnin 88,1 >>Entregue Princesa tem que Morrer! << Rogue/Hunter
    .turnin 88,2 >>Entregue Princesa tem que Morrer! << Warrior/Paladin
    .turnin 88,3 >>Entregue Princesa tem que Morrer! << !Rogue !Hunter !Warrior !Paladin
step
    #completewith next
    .goto Elwynn Forest,24.82,76.25,80 >>Vá para Westbrook Garrison
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >>Aceite Recompensa por Gnolls Riverpaw
    .goto Elwynn Forest,24.234,74.450
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >>Aceite Procurado: "Porqueiro"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .group
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >>Aceite Recompensa por Gnolls Riverpaw
    .goto Elwynn Forest,24.234,74.450
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 176 >>Aceite Procurado: "Porqueiro"
    .goto Elwynn Forest,24.548,74.672
    .target Deputy Rainer
step
    .solo
    .goto Elwynn Forest,24.234,74.450
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Ranieri|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda!
    .accept 11 >>Aceite Recompensa por Gnolls Riverpaw
    .target Deputy Rainer
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
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter suas |cRXP_LOOT_Armbands|r
    .complete 11,1 -- Painted Gnoll Armband (8)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
step << !Warlock
    .group
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
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step << Warlock
    #completewith next
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter suas |cRXP_LOOT_Armbands|r
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
    >>Abate |cRXP_ENEMY_Hogger|r. Saqueie-o para obter sua |cRXP_LOOT_Garra|r.
    >>|cRXP_ENEMY_Hogger|r |cRXP_WARN_pode aparecer em vários locais|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Hogger|r continuamente e use seus DoTs regulares para matá-lo|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    .complete 176,1 --Huge Gnoll Claw (1)
    .unitscan Hogger
step
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
step << Warrior
    .money >0.3129
    #era
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r
    >>|cRXP_WARN_Triturar até você ter 31s 29c+ em ouro vendável. Isto é para treinamento de arremesso, maça 2h e espada 2h. É também para comprar uma arma arremessando de nível 3 e voar para Ventobravo em breve|r
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
step
    #completewith WestEntry
    .goto Westfall,59.95,19.35
    .zone Westfall >>Viaje até Cerro Oeste
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r
    .target Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 184 >>Entregue Escritura do Taturana
    .isOnQuest 184
step
    #label WestEntry
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vera Taturana|r
    >>|cRXP_WARN_Não aceite as outras missões|r
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .goto Westfall,59.92,19.42
	.target Verna Furlbrow
step
    .goto Westfall,56.416,30.519
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma Saldanha|r
    >>|cRXP_WARN_Não aceite as outras missões|r
    .turnin 36 >>Entregue Ensopado de Cerro Oeste
    .target Salma Saldean
step
    .goto Westfall,56.327,47.520
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel Mantoforte|r
    .turnin 109 >>Entregue Relatório para Gryan Mantoforte
    .target Gryan Stoutmantle
step << Human
    .goto Westfall,57.002,47.169
    .target Quartermaster Lewis
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Intendente Ludovico|r
    .accept 6181 >>Aceite Um Recado Rápido
    .vendor >>|cRXP_WARN_Vendor trash|r
step << Rogue
    #era
    .money >0.3152
    +|cRXP_WARN_Triturar até ter 31p 52c de itens vendáveis/dinheiro|r
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
    #era
    .goto StormwindClassic,57.32,62.08,20,0
    .goto StormwindClassic,58.362,61.678
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Túlio Malheiros|r
    .vendor >>|cRXP_WARN_Compre uma|r |T135641:0|t[Adaga Equilibrada de Arremesso]|cRXP_WARN_. Equipe-a|r
    .target Thurman Mullby
step
    .goto StormwindClassic,56.201,64.585
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morgado Pilão|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    >>|cRXP_WARN_Escolhemos o|r |T132383:0|t[Foguetes Explosivos] |cRXP_WARN_como recompensa. Causa bom dano e pode ser usado para "Dividir puxadas", o que é incrivelmente útil|r
    .link https://www.youtube.com/watch?v=H-IwZ6P-ldY >>https://www.youtube.com/watch?v=H-IwZ6P-ldY >> |cRXP_WARN_Clique aqui para referência de vídeo sobre 'Divisão pulling'. É um vídeo curto e inestimável para aprender|r
    .target Morgan Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Woo Ping|r
    .target Woo Ping
    .goto StormwindClassic,57.129,57.698
    .trainer >>Treine Espadas de Uma Mão << Rogue
    .trainer >>Treine Cajados << Warlock/Priest
    .trainer >>Treine Espadas de Duas Mãos << Warrior/Paladin
    >>|cRXP_WARN_Aprenda Espadas de Duas Mãos se você tiver dinheiro suficiente. Você deve economizar 20 prata para depois|r << Warrior
    >>|cRXP_WARN_Train 1h Swords também se você ainda tiver dinheiro|r << Mage/Warlock
step << Rogue
#ah
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
	>>|cRXP_BUY_Buy and equip a|r |T135346:0|t[Cutlass] |cRXP_BUY_ou|r check the Auction House for something better/cheaper|r
	.collect 851,1
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Rogue
#ssf
    .goto StormwindClassic,57.547,57.076
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gunther Weller|r
	>>|cRXP_BUY_Compre e equipe um|r |T135346:0|t[Alfanje]
	.collect 851,1
    .target Gunther Weller
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Rogue
    #sticky
    .equip 16,851 >>|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r
    .turnin 1685 >>Entregue Gakin's Summons
    .target Gakin the Darkbinder
    .accept 1688 >>Aceite Surena Caledon
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .zone Elwynn Forest >>Saia de Objetos de TBC. Vá para Goldshire
step << Warlock
    .isOnQuest 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 176 >>Entregue Wanted: "Hogger"
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[|cRXP_FRIENDLY_Vara de Combate Equilibrada|r] |cRXP_WARN_como sua recompensa. Equipe-o|r
    .turnin 123 >>Entregue O Coletor
    .accept 147 >>Aceite Perseguição Implacável
step << Warlock
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 176 >>Entregue Wanted: "Hogger"
    >>|cRXP_WARN_Escolha a|r |T135145:0|t[|cRXP_FRIENDLY_Vara de Combate Equilibrada|r] |cRXP_WARN_como sua recompensa. Equipe-o|r
step << Warlock
    .isQuestTurnedIn 123
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .accept 147 >>Aceite Perseguição Implacável
step << Warlock
    .xp 11
step << Warlock
    #completewith LockVW
    .goto Elwynn Forest,71.0,80.8,150 >>Viaje até the Brackwell Pumpkin Patch.Grind en-route
step << Warlock
    .isOnQuest 147
    .goto Elwynn Forest,71.10,80.66
    >>Mate |cRXP_ENEMY_Surena Caledon|r. Saque o |cRXP_LOOT_Choker|r dela
    >>Mate |cRXP_ENEMY_Morgan, o Coletor|r. Saque dele o |cRXP_LOOT_Anel do Coletor|r
    >>|cRXP_WARN_Concentre-se em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob +Surena Caledon
    .complete 147,1 -- The Collector's Ring (1)
    .mob +Morgan the Collector
step << Warlock
    #label LockVW
    .goto Elwynn Forest,71.10,80.66
    >>Mate |cRXP_ENEMY_Surena Caledon|r. Saque o |cRXP_LOOT_Choker|r dela
    >>|cRXP_WARN_Concentre-se em matar |cRXP_ENEMY_Surena Caledon|r muito rapidamente|r
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em |cRXP_ENEMY_Morgan, o Coletor|r continuamente|r
    .complete 1688,1 --Surena's Choker (1)
    .mob Surena Caledon
step << Warlock
    .goto Elwynn Forest,79.457,68.789
    .target Sara Timberlain
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara Albernaz|r
    .turnin 59 >>Entregue Armadura de Pano e Couro
step << Warlock
    #completewith next
    .goto Redridge Mountains,17.4,69.6
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
    >>|cRXP_WARN_Triturar no caminho. Certifique-se de que você tem no mínimo 2|r |T134075:0|t[Estilhaços de Alma] |cRXP_WARN_usando|r |T136163:0|t[Drenar Alma]
    .collect 6265,2 --Soul Shard (2)
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão da Guarda Florestan|r
    .target Guard Parker
    .goto Redridge Mountains,17.4,69.6
    .accept 244 >>Aceite Encroaching Gnolls
step << Warlock
    .goto Redridge Mountains,18.581,69.208,15,0
    .goto Redridge Mountains,23.325,71.373,25,0
    .goto Redridge Mountains,29.565,67.930,25,0
    .goto Redridge Mountains,30.733,59.996
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Subdelegado David|r
    >>|cRXP_WARN_SIGA A ESTRADA PRINCIPAL E EVITE QUALQUER INIMIGO PRÓXIMO|r
    .turnin 244 >>Entregue Encroaching Gnolls
    .target Deputy Feldon
step << Warlock
    .goto Redridge Mountains,30.590,59.410
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena Penafúria|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .fly Stormwind >>Voe para Ventobravo
    .target Ariena Stormfeather
step << Warlock
    .isQuestComplete 147
    #completewith next
    .goto Elwynn Forest,42.105,65.927,100 >>Saia de Objetos de TBC. Vá para Goldshire
step << Warlock
    .isQuestComplete 147
    .goto Elwynn Forest,42.105,65.927
    .target Marshal Dughan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Delegado Durão|r
    .turnin 147 >>Entregue Perseguição Implacável
step << Warlock
    #completewith TravelIF
    .isQuestTurnedIn 147
    .goto StormwindClassic,70.07,86.82
    .zone Stormwind City >>Vá para Ventobravo
    .zoneskip Elwynn Forest,1
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
step << Human
    .goto StormwindClassic,74.312,47.240
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Larso Norde|r
    >>|cRXP_WARN_Não aceite a próxima|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    .target Osric Strang
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilsa|r
    .goto StormwindClassic,73.33,52.43,20,0
    .goto StormwindClassic,76.08,50.14,15,0
    .goto StormwindClassic,80.22,45.37,15,0
	.goto StormwindClassic,78.554,45.771
    .accept 1638 >>Aceite Treinamento do Guerreiro
    .target Ilsa Corbin
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1638 >>Entregue Treinamento do Guerreiro
    .accept 1639 >>Aceite Bartolino o Bêbado - Missão
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bartolino|r
    .target Bartleby
    .goto StormwindClassic,73.787,36.323
    .turnin 1639 >>Entregue Bartolino o Bêbado - Missão
    .accept 1640 >>Aceite Derrote Bartolino - Missão
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ari Barbotina|r
    .target Harry Burlguard
    .goto StormwindClassic,74.249,37.244
    .turnin 1665 >>Entregue Caneca do Bartolino
step << Priest
    #completewith next
    .goto StormwindClassic,42.51,33.51,20 >>Viaje até a Catedral de Ventobravo
step << Priest
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .target High Priestess Laurena
    .goto StormwindClassic,38.54,26.86
    .trainer >>Treine suas magias de classe
    .turnin 5635 >>Entregue Prece Desesperada
step << Priest
    .goto StormwindClassic,38.62,26.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r
    .train 13908 >>Treine |T135954:0|t[Prece Desesperada]
    .target High Priestess Laurena
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .turnin 1097 >>Entregue Tarefa de Elmore
step
    .goto StormwindClassic,51.757,12.091
    .target Grimand Elmore
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grimand Elmore|r
    .accept 353 >>Aceite Entrega para Lançatroz
step << Warrior
    #completewith next
    +|cRXP_WARN_Coloque|r |T132363:0|t[Fender Armadura] |cRXP_WARN_na barra de ações e use-a constantemente. É mais eficaz do que usar|r |T132282:0|t[Golpe Heroico]
step << Warrior/Paladin/Rogue
    .goto StormwindClassic,56.3,17.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaita Baixaforja|r
    .vendor >>|cRXP_WARN_Compre|r |T134708:0|t[Picareta de Mineração] |cRXP_WARN_. Você treinará|r |T134708:0|t[Mineração] |cRXP_WARN_muito em breve|r
    .target Kaita Deepforge
step
    #label TravelIF
    #completewith next
    .goto StormwindClassic,61.149,11.568,25,0
    .goto StormwindClassic,64.0,8.10
    .zone Ironforge >>Entre no Bondinho Deeprun. Pegue o Bondinho para Ironforge
    >>|cRXP_WARN_Aumente|r |T135966:0|t[Primeiros Socorros] |cRXP_WARN_se necessário enquanto aguarda o bonde|r
step
    >>|cRXP_WARN_Suba no Bondinho quando chegar. Desça no outro lado e procure |cRXP_FRIENDLY_Monty|r na plataforma do meio|r
    >>|cRXP_WARN_Lance|r |T136221:0|t[Evocar Emissário do Caos]|cRXP_WARN_ e|r |T135230:0|t[Criar Pedra de Vida]|cRXP_WARN_ enquanto espera|r << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .accept 6661 >>Aceite Ratos de Porão
    .target Monty
step
    .use 17117 >>|cRXP_WARN_Use o|r |T133942:0|t[Rato Catcher's Flute] |cRXP_WARN_em|r |cRXP_ENEMY_Deeprun Ratos|r
    .complete 6661,1 --Rats Captured (x5)
    .mob Deeprun Rat
step
    .target Monty
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Monty|r
    .turnin 6661 >>Virar em Ratos de Porão
step
    .zone Ironforge >>Entre em Ironforge
step
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step << Warrior
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bixi Bateagita|r e |cRXP_FRIENDLY_Bulif Manopedra|r
    .train 2567 >>Treine Arremesso
    .target +Bixi Wobblebonk
    .goto Ironforge,62.237,89.628
    .train 199 >>Treine Maças de Duas Mãos
    .goto Ironforge,61.177,89.508
    .target +Buliwyf Stonehand
step << Warrior
    .goto Ironforge,62.375,88.679
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brenwyn Invernácero|r descendo as escadas
    .vendor >>|cRXP_WARN_Compre uma|r |T135641:0|t[Adaga Equilibrada de Arremesso] |cRXP_WARN_e equipe-a|r
    .target Brenwyn Wintersteel
step
    #ah
    .goto Ironforge,25.800,75.500,-1
    .goto Ironforge,24.200,74.600,-1
    .goto Ironforge,23.800,71.800,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Leiloeiro de Ironforge|r
    >>Compre os seguintes itens para uma entrega mais rápida em Loch Modan
    >>Isso vai economizar tempo, pois você não precisará ficar procurando inimigos para matar. Pule esta etapa se preferir não comprar nenhum
-->>|cRXP_WARN_NOTE: You must be able to buy ALL otherwise don't buy any at all|r
    >>|T134342:0|t[Intestinos de Javali]
    >>|T134027:0|t[Carne de Urso]
    >>|T134437:0|t[Ícor de Aranha]
    .collect 3172,3,418,1 -- Boar Intestines (3)
    .collect 3173,3,418,1 -- Bear Meat (3)
    .collect 3174,3,418,1 -- Spider Ichor (3)
    .target Auctioneer Lympkin
    .target Auctioneer Redmuse
    .target Auctioneer Buckler
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
<< Alliance
#defaultfor Human
#group RXP TBC Guia de Sobrevivência (A)
#subgroup RXP Sobrevivência Guia 1-20
#name 11-12 Dun Morogh/Loch Modan
#next 12-14 Costa Negra

step
    #completewith OperationRecombobulation
	.goto Dun Morogh,53.5,34.9,60,0
    .goto Dun Morogh,52.251,37.592,150 >>Saia de Altaforja
step
    #completewith OperationRecombobulation
    .goto Dun Morogh,46.005,48.637,50 >>Voe para Kharanos
step
    #label OperationRecombobulation
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .target Razzle Sprysprocket
    .goto Dun Morogh,46.005,48.637,10,0
    .goto Dun Morogh,45.846,49.365
    .accept 412 >>Aceite Operação Remendão
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .accept 287 >>Aceite A Fortaleza Jubafria
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto 1426/0,-130.800,-5477.800,50,0
    .goto Dun Morogh,34.577,51.652
    .accept 312 >>Aceite Por Baixo da Carne-seca
step << !Mage !Warlock
    .goto Dun Morogh,38.517,53.927
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Pegue |cRXP_LOOT_MacGrann's Dried Meats|r
    >>|cRXP_WARN_Espere até que |cRXP_ENEMY_Velho Barbafria|r patrule para fora da caverna. Uma vez que ele saia da caverna, você pode entrar e saquear|r |cRXP_PICK_MacGrann's Carne Locker|r
    .link https://www.youtube.com/watch?v=o55Y3LjgKoE >> |cRXP_WARN_Click here for video reference|r
    .complete 312,1 --MacGrann's Dried Meats (1)
step << Mage/Warlock
    .goto Dun Morogh,38.517,53.927
    >>|cRXP_WARN_Lance|r |T136071:0|t[Polimorfia] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Mage
    >>|cRXP_WARN_Lance|r |T136183:0|t[Medo] |cRXP_WARN_em|r |cRXP_ENEMY_Velho Barbafria|r << Warlock
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r. Pegue |cRXP_LOOT_MacGrann's Dried Meats|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tundra MacGrann|r
    .target Tundra MacGrann
    .goto Dun Morogh,34.577,51.652
    .turnin 312 >>Entregue O Saque Roubado de Tundra MacGrann
step
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Abata os |cRXP_ENEMY_Leper Gnomes|r. Saque-os para obter |cRXP_LOOT_Engrenagens|r e |cRXP_LOOT_Cogs|r
    .complete 412,2 --Collect Gyromechanic Gear (x8)
    .complete 412,1 --Collect Restabilization Cog (x8)
    .mob Leper Gnome
step
    #completewith next
    .goto Dun Morogh,24.509,50.831,20 >>Entre na Fortaleza Jubafria
step
    #completewith next
    >>Abata os |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    >>Largue-se|cRXP_WARN_ para baixo neste local para explorar A Fortaleza Jubafria. Se houver inimigos abaixo, limpe ao redor normalmente e NÃO desça|r
    .goto Dun Morogh,22.86,52.16
    .complete 287,2 --Fully explore Frostmane Hold
step
    .goto Dun Morogh,24.5,50.8,40,0
    .goto Dun Morogh,22.1,50.3,40,0
    .goto Dun Morogh,21.3,52.9,40,0
    .goto Dun Morogh,24.5,50.8,0
    .goto Dun Morogh,22.1,50.3,0
    .goto Dun Morogh,21.3,52.9,0
    >>Abata os |cRXP_ENEMY_Frostmane Headhunters|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #completewith next
    .goto Dun Morogh,45.846,49.365,150 >>Voe para Kharanos
step
    .goto Dun Morogh,46.005,48.637,8,0
    .goto Dun Morogh,45.846,49.365
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Razzle Molavivaz|r
    .target Razzle Sprysprocket
    .turnin 412 >>Entregue Operação Remendão
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senir Barbabranca|r
    .target Senir Whitebeard
    .goto Dun Morogh,46.726,53.826
    .turnin 287 >>Entregue A Fortaleza Jubafria
    .accept 291 >>Aceite Os Relatórios
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .target Rudra Amberstill
    .goto Dun Morogh,60.1,52.6,50,0
    .goto Dun Morogh,63.082,49.851
    .accept 314 >>Aceite Amarre sua Cabra pois Ragash Está Solto
step
    #completewith next
    .goto Dun Morogh,62.3,50.3,14,0
    .goto Dun Morogh,62.2,49.4,10 >>Suba por esta parte da montanha
step
    .goto Dun Morogh,62.6,46.1
    >>Abate |cRXP_ENEMY_Ragash|r. Saqueie-o para obter sua |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Esta missão é difícil. Encontre um grupo se necessário. Pule esta etapa se não conseguir grupo ou solar|r
    >>|cRXP_WARN_Vigie o vídeo abaixo antes de tentar matar |cRXP_ENEMY_Ragash|r. Pode ser derrotado sozinho em qualquer classe|r
    .link https://www.youtube.com/watch?v=ZJX6sCkm5JY >>https://www.youtube.com/watch?v=ZJX6sCkm5JY >> |cRXP_WARN_Clique aqui para referência de vídeo|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rudra Ambarmanso|r
    .target Rudra Amberstill
    .goto Dun Morogh,63.082,49.851
    .turnin 314 >>Entregue Amarre sua Cabra pois Ragash Está Solto
step
    #completewith troggs
    .subzone 134 >>Vá para Pedreira Gol'Bolar
step
    .goto Dun Morogh,68.379,54.492
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cozinheiro Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_se necessário|r << Warrior/Rogue
    .vendor >>|cRXP_BUY_Compre|r |T133968:0|t[Pão Fresquinho] |cRXP_BUY_e|r |T132815:0|t[Leite Gelado] |cRXP_BUY_se necessário|r << !Warrior !Rogue
    .target Kazan Mogosh
step
    #label troggs
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r e o |cRXP_FRIENDLY_Encarregado Pedracenho|r
    .accept 433 >>Aceite O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
    .accept 432 >>Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step << Warrior/Paladin/Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dank Chuviscorte|r
    .goto Dun Morogh,69.324,55.456
    .train 2575 >>Aprenda |T134708:0|t[Mineração]
step << Warrior/Paladin/Rogue
    .cast 2580 >>|cRXP_WARN_Use|r |T136025:0|t[Localizar Minérios]
step
    .goto Dun Morogh,70.7,56.4,40,0
    .goto Dun Morogh,70.62,52.39,25,0
    .goto Dun Morogh,70.7,56.4
    >>Abate os |cRXP_ENEMY_Rockjaw Skullthumpers|r e os |cRXP_ENEMY_Rockjaw Bonesnappers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob +Rockjaw Skullthumper
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob +Rockjaw Bonesnapper
step << !Warlock
    .xp 10+6350 >>Triture até 6350+/7600
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Encarregado Pedracenho|r e o |cRXP_FRIENDLY_Senador Mehr Sacrapetra|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>Entregue O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto Dun Morogh,68.671,55.969
step
    .goto Dun Morogh,68.614,54.643
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kazan Mogosh|r
    .vendor >> |cRXP_WARN_Vendor trash|r << !Priest !Warlock !Mage
    .vendor >>|cRXP_BUY_Compre 20|r |T132815:0|t[Leite Gelado] << Priest/Warlock/Mage
    .target Kazan Mogosh
step << !Warlock
    .xp 11
step
    .goto Dun Morogh,81.2,42.7,45,0
    .goto Dun Morogh,83.892,39.188
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .accept 419 >>Aceite O Piloto Perdido
step
    >>Clique no |cRXP_PICK_Dwarven Cadáver|r
    .goto Dun Morogh,79.672,36.171
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    >>Abate |cRXP_ENEMY_Ronhagarra|r. Saqueie a |cRXP_LOOT_Garra|r
    .goto Dun Morogh,78.97,37.14
    .complete 417,1 --Collect Mangy Claw (x1)
    .unitscan Mangeclaw
step
    #som
    .goto Dun Morogh,83.892,39.188
    >>Escolha a adaga, use-a como sua Off-Hand até obter uma espada de vendedor << Rogue
    .target Pilot Hammerfoot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    .turnin 417 >>Entregue A Vingança do Piloto
step
    #era
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Piloto Pisafundo|r
    >>|cRXP_WARN_Escolha a|r |T135641:0|t[|cRXP_FRIENDLY_Adaga do Artífice|r] |cRXP_WARN_como sua recompensa. Equipe-a em sua Off-Hand|r << Rogue
    .target Pilot Hammerfoot
    .goto Dun Morogh,83.892,39.188
    .turnin 417 >>Entregue A Vingança do Piloto
step
    #completewith next
    .goto Dun Morogh,84.4,31.1,25 >>Voe para Loch Modan
step
    .goto Loch Modan,24.764,18.397
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Lançatroz|r
    >>|cRXP_WARN_Não aceite a próxima|r
    .turnin 353 >>Entregue Entrega para Lançatroz
    .target Mountaineer Stormpike


--I want Humans to hit 12 here before going Darkshore, Warlocks will already be 12 comfortably
step << !Warlock
    #completewith TroggT
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Save any|r |T133970:0|t[|cRXP_LOOT_Chunks of Boar Meat|r]|r |cRXP_WARN_to use for leveling |T133971:0|t[Cooking] |cRXP_WARN_Mais tarde|r
    >>|cRXP_WARN_Pular este passo se atingir o nível 12 durante ele|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .xp >12,1 -- shows to 11 and under
step
    #optional
    #completewith next
    .goto Loch Modan,34.828,49.283,130 >>Voe para Thelsamar
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >>Aceite Chouriço de Thelsamar
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .itemcount 3172,3
    .itemcount 3173,3
    .itemcount 3174,3
step << !Warlock
    #completewith next
    .subzone 924 >>Viaje até the Valley of Kings
    .xp >12,1 -- shows to 11 and under
step << !Warlock
    .goto Loch Modan,22.071,73.127
    .target Mountaineer Cobbleflint
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .xp >12,1 -- shows to 11 and under
step << !Warlock
    .goto Loch Modan,23.233,73.675
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r no bunker
    .target Captain Rugelfuss
    .accept 267 >>Aceite A Ameaça Trogg
    .xp >12,1 -- shows to 11 and under
step << !Warlock
    .isOnQuest 224,267
    .goto 1432/0,-2756.300,-5527.800
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os pelos seus |cRXP_LOOT_Teeth|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step << !Warlock
    .isQuestComplete 224
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Montanhista Sapatorro|r
    .target Mountaineer Cobbleflint
    .goto Loch Modan,22.071,73.127
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
step << !Warlock
    .isQuestComplete 267
    #label TroggT
    .goto Loch Modan,23.233,73.675
    .target Captain Rugelfuss
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Balbúrdia|r
    .turnin 267 >>Entregue A Ameaça Trogg
step << !Warlock -- skipping if already level 12
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os pelos seus |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Save any|r |T133970:0|t[|cRXP_LOOT_Chunks of Boar Meat|r]|r |cRXP_WARN_to use for leveling |T133971:0|t[Cooking] |cRXP_WARN_Mais tarde|r
    >>|cRXP_WARN_Pular este passo se já está no nível 12|r
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
    .xp >12,1 -- shows to 11 and under
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vidra Fornalenha|r
    .target Vidra Hearthstove
    .goto Loch Modan,34.828,49.283
    .accept 418 >>Aceite Chouriço de Thelsamar
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .itemcount 3172,3
    .itemcount 3173,3
    .itemcount 3174,3
step
    .xp 12
    .goto 1432/0,-2756.300,-5527.800
    .mob Stonesplinter Trogg
    .mob Stonesplinter Scout
step
    .goto Loch Modan,34.757,48.618
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yanni Cuoreforte|r
    >>|cRXP_WARN_Compre um|r |T135237:0|t[Pederneira e Lenha] |cRXP_WARN_e|r |T135435:0|t[Simple Madeira]|cRXP_WARN_. Compre |r|T133634:0|t[Bolsa Marrom Pequena] |cRXP_WARN_se necessário|r
    .collect 4470,1 --Simple Wood (1)
    .collect 4471,1 --Flint and Tinder (1)
    .target Yanni Stoutheart
    .skill cooking,<1,1 -- shows if cooking is >1
step
    #label flyIF
    .goto Loch Modan,33.938,50.954
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thorgrum Borrelson|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
]])
