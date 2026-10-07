if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#forever
<< Human Mage
#name 1-10 ADV Elwynn Forest Humano Mago AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor Human Mage
#next 10-11 ADV Dun Morogh Humano Mago AdE


step << !Human Mage
    #season 2
    #completewith next
    +Na Temporada de Descoberta, você não deveria começar fora da zona de início de sua raça como um Mago, pois você será incapaz de obter sua primeira runa aqui (|T133816:0|t[Gravar Luvas - Lança de Gelo])
step
    #completewith next
    +Você selecionou o guia Avançado. Este é o guia mais rápido para a classe mais rápida do jogo (Maga da Aliança). Assim, haverá muitas mecânicas de nicho e puxes AdE altamente difíceis. Mantenha-se persistente enquanto aprende! Boa Sorte!
step
    #completewith next
    .goto 1429/0,-146.20,-8999.660,50,0
    +|cRXP_WARN_Abate |cRXP_ENEMY_Lobos Jovens|r. Saque-os até ter 10 de cobre em itens para vender|r
    .mob Young Wolf
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willem|r
    .accept 783 >>Aceite Uma Ameaça Interior
    .target Deputy Willem
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danil|r
    .vendor >>Venda itens de valor trivial até ter 10+ de cobre
    .target Brother Danil
step
    .goto 1429/0,-139.61,-8910.09,15,0
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_McBride|r dentro
    .turnin 783 >>Entregue Uma Ameaça Interior
    .accept 7 >>Aceite Limpeza do Acampamento Kobold
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Pule das escadas para o corrimão
    .goto 1429/0,-188.20,-8851.76,10 >>Vá para |cRXP_FRIENDLY_Khelden|r lá em cima
step
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khelden|r
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Vá para |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willem|r
    .accept 5261 >>Aceite Enzo Peleteiro
    .target Deputy Willem
step
    #completewith next
    .goto 1429/0,-64.64,-8924.9,70,0
    .goto 1429/0,-81.64,-8850.37
    +|cRXP_WARN_Abate |cRXP_ENEMY_Lobos Jovens|r. Saque-os até ter 50 de cobre em itens para vender (incluindo sua armadura)|r
    .mob Young Wolf
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .vendor >>Lixo de Comerciante
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eagan|r
    .turnin 5261 >>Entregue em Enzo Peleteiro
    .accept 33 >>Aceite Lobos Além da Fronteira
    .target Eagan Peltskinner
step
    #completewith next
    >>Abata |cRXP_LOOT_Young Wolves|r e |cRXP_LOOT_Timber Wolves|r. Saqueie-os para obter |cRXP_LOOT_Tough Lobo Carne|r
    >>Concentre-se nos |cRXP_LOOT_Lobos Jovens|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
#loop
	.line Elwynn Forest,47.01,35.68,47.70,35.04,49.81,35.14,49.82,36.23,49.18,37.16,47.01,35.68
	.goto 1429/0,-96.22,-8765.43,35,0
	.goto 1429/0,-120.17,-8750.61,35,0
	.goto 1429/0,-193.41,-8752.93,35,0
	.goto 1429/0,-193.75,-8778.16,35,0
	.goto 1429/0,-171.54,-8799.68,35,0
	.goto 1429/0,-96.22,-8765.43,35,0
    >>Abate |cRXP_ENEMY_Kobold Daninho|r
    >>|cRXP_WARN_Abate Nível 1 |cRXP_ENEMY_Kobold Daninho|r se possível|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    >>Abata |cRXP_LOOT_Young Wolves|r e |cRXP_LOOT_Timber Wolves|r. Saqueie-os para obter |cRXP_LOOT_Tough Lobo Carne|r
    >>Concentre-se nos |cRXP_LOOT_Lobos Jovens|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto 1429/0,-163.21,-8869.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eagan|r
    .turnin 33,1 >>Entregue Lobos Além da Fronteira
    .target Eagan Peltskinner
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danil|r
    |cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Lixo de Comerciante
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_McBride|r dentro
    .turnin 7 >>Entregue Limpeza do Acampamento Kobold
    .accept 15 >>Aceite Investigar a Serra do Eco
    .accept 3104 >>Aceite Carta Glífica
    .target Marshal McBride
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto 1429/0,-104.55,-8782.32,35,0
	.goto 1429/0,-109.41,-8767.51,35,0
	.goto 1429/0,-108.02,-8727.93,35,0
	.goto 1429/0,-71.23,-8689.97,35,0
	.goto 1429/0,-121.91,-8698.07,35,0
	.goto 1429/0,-203.82,-8749.22,35,0
	.goto 1429/0,-104.55,-8782.32,35,0
    >>Mate |cRXP_ENEMY_Operários Kobold|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto 1429/0,-176.40,-8817.04,35,0
	.goto 1429/0,-138.91,-8816.35,35,0
	.goto 1429/0,-67.41,-8802.69,35,0
	.goto 1429/0,-50.41,-8843.43,35,0
	.goto 1429/0,-62.21,-8886.48,35,0
	.goto 1429/0,-131.97,-8855.00,35,0
	.goto 1429/0,-176.40,-8817.04,35,0
    .xp 3+1110 >>Faça grind até 1110+/1400xp
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .vendor >>Lixo de Comerciante
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_McBride|r dentro
    .turnin 15 >>Entregue Investigar a Serra do Eco
    .accept 21 >>Aceite Escaramuça na Serra do Eco
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-180.56,-8862.87,5,0
    >>Pule das escadas para o corrimão
    .goto 1429/0,-188.20,-8851.76,10 >>Vá para |cRXP_FRIENDLY_Khelden|r lá em cima
step
    #season 0
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khelden|r
    .turnin 3104 >>Entregue Carta Glífica
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Khelden Bremen
step
    #season 2
    .goto 1429/0,-188.20,-8851.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khelden|r
    .accept 77620 >>Aceite Pesquisa de Feitiços << Human
    .turnin 3104 >>Entregue Carta Glífica
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Khelden Bremen
step
    #completewith next
    .goto 1429/0,-188.20,-8868.89,10,0
    .goto 1429/0,-174.32,-8880.92,10,0
    .goto 1429/0,-164.25,-8891.80,10,0
    .goto 1429/0,-136.52,-8933.53,10 >>Vá para |cRXP_FRIENDLY_Willem|r
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willem|r
    .accept 18 >>Aceite Irmandade de Ladrões
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    >>Abate |cRXP_ENEMY_Defias Capangas|r. Saque-os para obter a |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    >>|cRXP_WARN_NOTA: Você será incapaz de treinar|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_aqui, pois você só pode obter um|r |T133736:0|t[Compreensão Primer] |cRXP_WARN_na zona de início de sua raça|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #season 2
    #requires CALEENCI
    #completewith RedBurlapBandana
    .train 401760 >>|cRXP_WARN_Use o|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #loop
    #label RedBurlapBandana
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,30,0
    .goto 1429/0,-335.02,-9108.91,30,0
    .goto 1429/0,-376.67,-9073.73,30,0
    .goto 1429/0,-388.47,-9001.28,30,0
    .goto 1429/0,-333.97,-9028.59,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto 1429/0,-239.57,-9080.44,35,0
	.goto 1429/0,-288.51,-9067.94,35,0
	.goto 1429/0,-332.24,-9052.67,35,0
	.goto 1429/0,-358.96,-9074.19,35,0
	.goto 1429/0,-378.75,-9047.34,35,0
	.goto 1429/0,-365.21,-9003.37,35,0
	.goto 1429/0,-332.24,-8976.29,35,0
	.goto 1429/0,-239.57,-9080.44,35,0
    >>Abate |cRXP_ENEMY_Defias Capangas|r. Saque-os para |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto 1429/0,-288.51,-9068.87,0
    .goto 1429/0,-388.47,-9001.28,0
    .goto 1429/0,-288.51,-9068.87,50,0
    .goto 1429/0,-335.02,-9108.91,50,0
    .goto 1429/0,-376.67,-9073.73,50,0
    .goto 1429/0,-388.47,-9001.28,50,0
    .goto 1429/0,-333.97,-9028.59,50,0
    >>Abate |cRXP_ENEMY_Defias Capangas|r. Saque-os para obter a |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    >>|cRXP_WARN_NOTA: Você será incapaz de treinar|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_aqui, pois você só pode obter um|r |T133736:0|t[Compreensão Primer] |cRXP_WARN_na zona de início de sua raça|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #optional
    #season 2
    .train 401760 >>|cRXP_WARN_Use o|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willem|r
    .turnin 18,5 >>Entregue Irmandade de Ladrões
    .accept 6 >>Aceite Recompensa por Garrick Patatenra
    .accept 3903 >>Aceite Madel Quintana
    .target Deputy Willem
step
    #completewith Laborer
    +Equipe o |T135145:0|t[Cajado de Milícia]
    .use 1159
    .itemcount 1159,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.7
step
    .goto 1429/0,-112.54,-8899.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .vendor >>Lixo de Comerciante
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto 1429/0,-122.25,-8671.45,40 >>Entre na mina
step
    #label Laborer
    .goto 1429/0,-130.24,-8649.23,40,0
    .goto 1429/0,-141.69,-8607.11,40,0
    .goto 1429/0,-150.71,-8554.57,40,0
    .goto 1429/0,-198.26,-8535.36,40,0
    .goto 1429/0,-209.37,-8560.59
    >>Abate |cRXP_ENEMY_Operários Kobold|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >>Entregue Madel Quintana
    .accept 3904 >>Aceite Colheita da Madel
    .target Milly Osworth
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >>Farme até 1175+/2800 XP
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Saque o |cRXP_PICK_Buckets of Grapes|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto 1429/0,-461.01,-9056.37
    >>Mate o |cRXP_ENEMY_Garrick Padfoot|r. Saqueie-o para |cRXP_LOOT_Garrick's Cabeça|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    >>Saque o |cRXP_PICK_Buckets of Grapes|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto 1429/0,-327.73,-9034.15,35,0
	.goto 1429/0,-297.88,-9068.64,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-333.63,-9112.61,35,0
	.goto 1429/0,-356.88,-9087.15,35,0
	.goto 1429/0,-353.76,-9052.900,35,0
	.goto 1429/0,-327.73,-9034.15,35,0
    .xp 5+1175 >>Farme até 1175+/2800xp
    .mob Defias Thug
step
    .goto 1429/0,-224.3,-8850.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>Entregue Colheita da Madel
    .accept 3905 >>Aceite Manifesto das Uvas
    .target Milly Osworth
step
    .goto 1429/0,-136.52,-8933.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willem|r
    .turnin 6,1 >>Entregue Recompensa por Garrick Patatenra
    .target Deputy Willem
step
    .goto 1429/0,-162.62,-8902.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_McBride|r dentro
    .turnin 21,3 >>Entregue Escaramuça na Serra do Eco
    .accept 54 >>Aceite Relatório para Vila Dourada
    .target Marshal McBride
step
    #completewith next
    .goto 1429/0,-171.54,-8908.00,10,0
    .goto 1429/0,-184.38,-8901.52,10,0
    .goto 1429/0,-178.83,-8888.10,10,0
    .goto 1429/0,-164.60,-8892.50,10,0
    .goto 1429/0,-172.23,-8907.31,10,0
    .goto 1429/0,-185.08,-8899.21,10,0
    .goto 1429/0,-176.75,-8886.94,10,0
    >>Suba as escadas
    .goto 1429/0,-181.64,-8902.13,10 >>Vá para |cRXP_FRIENDLY_Neals|r
step
    .goto 1429/0,-181.64,-8902.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neals|r
    .turnin 3905,1 >>Entregue Manifesto das Uvas
    .target Brother Neals
step << Human
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
    .goto 1429/0,-188.23,-8851.58,12 >>Desça, depois vá para |cRXP_FRIENDLY_Gaspar Melchior|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto 1429/0,-188.23,-8851.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaspar Melchior|r dentro
    .turnin 77620 >>Entregue Pesquisa de Feitiços
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto 1429/0,-45.90,-9044.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falkhaan|r
    .accept 2158 >>Aceite Descanso e Relaxamento
    .target Falkhaan Isenstrider
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dughan|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_William|r através da parede ao entrar na Estalagem
    .accept 60 >>Aceite Velas Kobold
    .target William Pestle
step
    #completewith next
    .home >>Defina sua Pedra de Regresso para Vila Dourada
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Farley|r
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Farley|r
    .turnin 2158,2 >>Entregue Descanso e Relaxamento
    .vendor 295 >>Comerciante de Lixo. |cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_até 2 prata|r
    .target Innkeeper Farley
step
    .goto 1429/0,34.28,-9472.99
    >>Pule no Lustre no andar de baixo
    >>Fale com |cRXP_FRIENDLY_Zaldimar|r através da parede
    .trainer >>Treine seus feitiços de classe (Bola de Fogo R2, Impacto de Fogo)
	.target Zaldimar Wefhellt
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Remy|r
    .accept 47 >>Aceite Trocando Pó de Ouro
    .target Remy "Two Times"
step
    #completewith BoarMeat1
    >>Abate os |cRXP_ENEMY_Javalis de Pedra|r. Saque-os para |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bernice|r e |cRXP_FRIENDLY_Ma|r
    .accept 85 >>Aceite O Colar Perdido
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.69
    .accept 88 >>Aceite Princesa Tem Que Morrer!
	.goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r. Saqueie-os para |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Velas dos Kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billy|r
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Juntando a Fome...
    .target Billy Maclure
step
    #label BoarMeat1
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maybell|r dentro
    .accept 106 >>Aceite Jovens Amantes
    .target Maybell Maclure
step
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_BUY_quanto você conseguir pagar|r
    .vendor 258 >>Lixo de Comerciante
    .target Joshua Maclure
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Javalis de Pedra|r. Saque-os para |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto 1429/0,499.72,-9930.05--c:Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tommy|r
    .turnin 106 >>Entregue Jovens Amantes
    .accept 111 >>Aceite Fale com a Vovó
    .target Tommy Joe Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    >>Abate os |cRXP_ENEMY_Javalis de Pedra|r. Saque-os para |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto 1429/0,338.47,-9889.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bernice|r e depois |cRXP_FRIENDLY_Gramma|r dentro
    .turnin 86 >>Entregue Juntando a Fome...
    .accept 84 >>Aceite ...com a Vontade de Comer
    .target +"Auntie" Bernice Stonefield
    .goto 1429/0,338.47,-9889.69
    .turnin 111 >>Entregue Fale com a Vovó
    .accept 107 >>Aceite Bilhete para Durval
    .target +Gramma Stonefield
    .goto 1429/0,322.71,-9880.59
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r. Saqueie-os para |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Velas dos Kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto 1429/0,38.38,-9923.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billy|r
    .turnin 84 >>Entregue ...com a Vontade de Comer
    .accept 87 >>Aceite Dentadouro
    .target Billy Maclure
step
    .goto 1429/0,65.17,-10008.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_BUY_quanto você conseguir pagar|r
    .vendor 258 >>Lixo de Comerciante
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto 1429/0,181.79,-9843.79,15 >>Entre na Mina Fargodeep
step
    #completewith Goldtooth
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineiros|r. Saqueie-os para |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Velas dos Kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto 1429/0,179.36,-9811.39,12,0
    .goto 1429/0,157.15,-9789.40
    >>Entre em um dos maiores espaços abertos da Mina Fargodeep
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto 1429/0,148.82,-9763.71,12,0
    .goto 1429/0,132.16,-9752.60,12,0
    .goto 1429/0,87.04,-9745.65,40 >>Vá para o |cRXP_ENEMY_Dentadouro|r
step
    #label Goldtooth
    .goto 1429/0,87.04,-9745.65
    >>Mate o |cRXP_ENEMY_Dentadouro|r. Saqueie-o para |cRXP_LOOT_Bernice's Colar|r
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto 1429/0,176.93,-9857.68,35,0
	.goto 1429/0,176.24,-9902.12,35,0
	.goto 1429/0,223.09,-9916.240,35,0
	.goto 1429/0,259.54,-9865.09,35,0
	.goto 1429/0,215.81,-9830.600,35,0
	.goto 1429/0,176.93,-9857.68,35,0
    >>Mate os |cRXP_ENEMY_Kobold Escavadores|r e os |cRXP_ENEMY_Kobold Mineiros|r. Saqueie-os para |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Velas dos Kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #completewith next
    .goto 1429/0,102.31,-9787.78,-1
    .goto 1429/0,86.34,-9756.30,-1
    .goto 1429/0,80.79,-9740.56,-1
    .goto 1429/0,141.88,-9794.03,-1
    .goto 1429/0,150.55,-9825.04,-1
    .goto 1429/0,117.23,-9819.95,-1
    .goto 1429/0,135.98,-9775.28,-1
    .goto 1429/0,171.38,-9339.44,30 >>|cRXP_WARN_Faça um Logout Pular dentro da caverna pulando sobre um triturador, os troncos flutuantes, as caixas ou a luz do carrinho de mina dentro da caverna, depois desconecte e conecte novamente|r
    >>|cRXP_WARN_Alternativamente, corra de volta para Goldshire|r
    >>|cRXP_WARN_NOTA: Itemrack atualmente pode causar problemas após o logout skip, em que a UI no jogo congela. Certifique-se de desabilitar o addon ou criar uma macro /reload que você possa usar quando/se isso acontecer|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_CLIQUE AQUI para aprender a fazer o logout skip|r
step
    #completewith next
    .subzone 87 >>Retorne para Goldshire
step
    .goto 1429/0,72.81,-9496.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Remy|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .accept 40 >>Aceite Perigo Anfíbio
    .target Remy "Two Times"
step
    .goto 1429/0,74.02,-9465.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dughan|r
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
    .target Marshal Dughan
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_William|r através da parede ao entrar na Estalagem
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
    .turnin 107 >>Entregue Bilhete para Durval
    .accept 112 >>Aceite Coletando Algas
    .target William Pestle
step
    .goto 1429/0,16.20,-9462.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Compre 35|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .vendor >>Lixo de Comerciante
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto 1429/0,9.64,-9465.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Compre um|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_dele|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto 1429/0,34.63,-9466.28,10,0
    .goto 1429/0,47.12,-9456.10,12 >>Saia da Estalagem
step
    .goto 1429/0,-215.62,-9390.60,50,0
    .goto 1429/0,-237.83,-9438.28,50,0
    .goto 1429/0,-292.32,-9442.91,50,0
    .goto 1429/0,-342.3,-9391.75,50,0
    .goto 1429/0,-459.62,-9402.63,50,0
    .goto 1429/0,-421.09,-9478.780
    >>Mate os |cRXP_ENEMY_Murloc Streamrunners|r e os |cRXP_ENEMY_Murlocs|r. Saqueie-os para obter |cRXP_LOOT_Crystal Alga Frond|r
    >>|cRXP_WARN_Tenha cuidado, pois |cRXP_ENEMY_Murloc Streamrunners|r têm|r |T132307:0|t[Increased Movespeed]
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto 1429/0,-604.70,-9188.53,12 >>Entre na Mina de Jasperlode
step
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-560.97,-9100.58
    >>Siga o caminho do meio da caverna
    >>|cRXP_WARN_Tenha cuidado, pois |cRXP_ENEMY_Kobold Geomancers|r lançam|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_(Ataque à Distância: Causa aproximadamente 30 de dano)|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto 1429/0,-570.68,-9116.32,12,0
    .goto 1429/0,-588.39,-9130.90,12,0
    .goto 1429/0,-609.91,-9186.91,15 >>Saia da Mina Jasperlode
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomás|r
    .turnin 35 >>Entregue Mais Preocupações
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
    .target Guard Thomas
step
    #completewith next
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-984.06,-9457.950,45,0
    .goto 1429/0,-950.05,-9347.31,50,0
    >>Mate todos os |cRXP_ENEMY_Young Forest Ursos|r que você vir e os |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-986.14,-9335.97
	>>Clique em |cRXP_PICK_corpo semicomido|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    #completewith Bears
    .goto 1429/0,-1198.91,-9350.09,70,0
    >>Mate todos os |cRXP_ENEMY_Young Forest Ursos|r que você vir e os |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raelen|r
    .accept 5545 >>Aceite Um Feixe de Encrenca
    .target Supervisor Raelen
step
    #completewith next
    >>Pegue os |cRXP_PICK_Feixes de Madeira|r na base das árvores
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1233.96,-9224.41,45 >>Viaje para |cRXP_PICK_Cadáver de Rolf|r
    .isOnQuest 45
step
    .goto 1429/0,-1233.96,-9224.41
    >>Mate os |cRXP_ENEMY_Murloc Lurkers|r e os |cRXP_ENEMY_Murloc Foragers|r guardando |cRXP_PICK_Cadáver de Rolf|r
    >>|cRXP_WARN_Você pode ter que matar um e depois reiniciar|r
    >>Tenha cuidado, pois |cRXP_ENEMY_Murloc Lurkers|r lançam |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_(Ataque Corpo a Corpo Instantâneo: Causa dano duplo quando atacado pelas costas) e |cRXP_ENEMY_Murloc Foragers|r lançam|r |T135915:0|t[Beber Poção Menor] |cRXP_WARN_(Auto-lançamento: Cura aproximadamente 65 de vida)|r
	>>Clique em |cRXP_PICK_Cadáver de Rolf|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
#loop
	.line Elwynn Forest,80.48,55.18,80.88,53.88,79.68,52.31,80.86,52.17,80.88,53.88,80.48,55.18,79.76,56.70,80.15,60.03,80.24,61.46,81.27,61.59,81.58,62.64,82.79,60.12,83.25,61.12,83.48,59.19,81.77,59.17,80.48,55.18
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1230.14,-9150.34,35,0
	.goto 1429/0,-1271.10,-9147.10,35,0
	.goto 1429/0,-1271.79,-9186.68,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
	.goto 1429/0,-1232.92,-9251.950,35,0
	.goto 1429/0,-1246.46,-9329.03,35,0
	.goto 1429/0,-1249.58,-9362.13,35,0
	.goto 1429/0,-1285.33,-9365.14,35,0
	.goto 1429/0,-1296.09,-9389.44,35,0
	.goto 1429/0,-1338.09,-9331.11,35,0
	.goto 1429/0,-1354.05,-9354.26,35,0
	.goto 1429/0,-1362.03,-9309.59,35,0
	.goto 1429/0,-1302.68,-9309.12,35,0
	.goto 1429/0,-1257.91,-9216.77,35,0
    >>Pegue os |cRXP_PICK_Feixes de Madeira|r na base das árvores
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto 1429/0,-1289.22,-9469.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raelen|r
    .turnin 5545 >>Entregue Um Feixe de Encrenca
    .target Supervisor Raelen
step
    #label Bears
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara|r
    .accept 83 >>Aceite Tecidos de Linho Vermelho
    .target Sara Timberlain
step
    .goto 1429/0,-1069.44,-9618.58,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34,45,0
    .goto 1429/0,-1063.89,-9494.980,45,0
    .goto 1429/0,-1093.74,-9665.57,45,0
    .goto 1429/0,-1125.32,-9714.41,45,0
    .goto 1429/0,-1215.91,-9778.29,45,0
    .goto 1429/0,-1295.74,-9718.34
    >>Mate todos os |cRXP_ENEMY_Young Forest Ursos|r que você vir e os |cRXP_ENEMY_Prowlers|r
    >>|cRXP_WARN_Inflija 51%+ de dano aos |cRXP_ENEMY_Young Forest Ursos|r e aos |cRXP_ENEMY_Prowlers|r, depois puxe-os para o |cRXP_FRIENDLY_Guarda de Ventobravo|r para matá-los com mais eficiência|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan Young Forest Bear
    .mob Prowler
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomás|r
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
    .target Guard Thomas
    .xp <9,1
step
    .goto 1429/0,-1032.06,-9610.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomás|r
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .target Guard Thomas
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto 1429/0,-909.79,-9720.42,40,0
	.goto 1429/0,-848.35,-9714.64,40,0
	.goto 1429/0,-832.73,-9739.87,40,0
	.goto 1429/0,-817.81,-9808.84,40,0
	.goto 1429/0,-841.76,-9853.28,40,0
	.goto 1429/0,-918.81,-9825.51,40,0
	.goto 1429/0,-916.03,-9806.53,40,0
	.goto 1429/0,-946.58,-9767.18,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-942.06,-9716.49,40,0
	.goto 1429/0,-927.14,-9727.60,40,0
	.goto 1429/0,-909.79,-9720.42,40,0
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os por |cRXP_LOOT_Red Linen Bandanas|r e o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    >>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 1972,1,184,1 --Collect Westfall Deed (x1)
    .disablecheckbox
	.mob Defias Bandit
    .isOnQuest 83
step
    #label Deed
    >>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    .accept 184 >>Aceite Escritura de Furlbrow
    .itemcount 1972,1
step
    .goto 1429/0,-890.35,-9780.14
    >>Mate a |cRXP_ENEMY_Princesa|r. Saque-a pelo |cRXP_LOOT_Colar de Latão|r
    >>|cRXP_WARN_Lembre-se de kitá-la usando a cerca|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto 1429/0,-1222.40,-9531.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara|r
    .turnin 83 >>Entregue Tecidos de Linho Vermelho
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto 1433/0,-1779.67,-9608.23
    .zone Redridge Mountains >>Viaje para Montanhas Cristarrubra
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_Siga cuidadosamente a estrada para |cRXP_FRIENDLY_Ariena|r. Evite os |cRXP_ENEMY_Tarantulas|r e os |cRXP_ENEMY_Black Dragão Whelps|r no caminho|r
    .mob Black Dragon Whelp
    .mob Tarantula
step << skip
    .goto 1433/0,-2234.89,-9435.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para Goldshire
step
    .goto 1429/0,33.14,-9460.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_William|r
    .turnin 112 >>Entregue Coletando Alga
    .accept 114 >>Aceite A fuga
    .target William Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dughan|r e |cRXP_FRIENDLY_Argus|r
    .turnin 39 >>Entregue Relatório de Tomás
    .turnin 76 >>Entregue A Mina de Jaspe
    .accept 239 >>Aceite Ribeira d'Oeste Precisa de Ajuda
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
    .target +Marshal Dughan
    .goto 1429/0,74.02,-9465.52
    .accept 1097 >>Aceite Tarefa de Elmore
    .target +Smith Argus
    .goto 1429/0,87.87,-9456.65
step
    .goto 1429/0,37.40,-10014.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maybell|r dentro
    .turnin 114 >>Entregue A Fuga
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ma|r e |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >>Entregue Princesa Tem que Morrer
    .target +Ma Stonefield
    .goto 1429/0,332.43,-9894.99--c:Elwynn Forest,34.660,84.482
    .turnin 87 >>Entregue Dentadouro
    .goto 1429/0,338.47,-9889.69
    .target +"Auntie" Bernice Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >>Farme até 4225+/6500 xp
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto 1429/0,454.25,-9915.31,35,0
	.goto 1429/0,387.26,-9944.94,35,0
	.goto 1429/0,372.34,-9912.07,35,0
	.goto 1429/0,418.85,-9881.06,35,0
	.goto 1429/0,454.25,-9915.31,35,0
    .xp 9+4825 >>Farme até 4825+/6500 xp
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto 1429/0,694.43,-9662.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rainer|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda
    .target Deputy Rainer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Verna|r
    .accept 64 >>Aceite A Herança Esquecida
    .turnin 184 >>Entregue Escritura do Furlbrow
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Verna|r
    .accept 64 >>Aceite A Herança Esquecida
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .target +Verna Furlbrow
    .goto 1436/0,919.82,-9852.90
step
    #completewith next
    >>Abra os |cRXP_PICK_Sacos de Aveia|r no chão. Saque-os por |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r e depois com |cRXP_FRIENDLY_Salma|r dentro
    .accept 9 >>Aceite Os Campos da Morte
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >>Entregue Cozido de Costa Negra
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
    .target +Salma Saldean
    .goto 1436/0,1041.97,-10112.13
step
    #completewith next
    >>|cRXP_WARN_Tenha MUITO cuidado com os |cRXP_ENEMY_Harvest Watchers|r e os |cRXP_ENEMY_Harvest Golems|r no caminho|r
    .goto 1436/0,1045.12,-10508.80,20 >>Viaje para |cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gryan|r, |cRXP_FRIENDLY_Danuvin|r e depois com |cRXP_FRIENDLY_Lewis|r dentro
    .turnin 109 >>Entregue Miguel Mantoforte
    .accept 12 >>Aceite A Milícia do Povo
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .accept 102 >>Aceite Patrulhando Cerro Oeste
    .target +Captain Danuvin
    .goto 1436/0,1041.97,-10511.13
    .accept 6181 >>Aceite Um Recado Rápido
    .goto 1436/0,1021.60,-10500.61
    .target +Quartermaster Lewis
step
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >>Entregue Um Recado Rápido
    .accept 6281 >>Aceite Continue para Ventobravo
    .target Thor
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
	.target Thor
step
    #completewith next
    .goto 1453/0,532.74,-8863.09,20,0
    .goto 1453/0,599.55,-8811.28,20,0
    .goto 1453/0,613.93,-8833.07,20,0
    .goto 1453/0,620.79,-8859.6,12,0
    .goto 1453/0,625.49,-8857.89,12 >>Viaje para |cRXP_FRIENDLY_Morgan|r
step
    .goto 1453/0,625.49,-8857.890
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morgan|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    .target Morgan Pestle
step
    .goto 1453/0,635.44,-8863.81
    >>Fale com |cRXP_FRIENDLY_Keldric|r
    .vendor 1257 >>|cRXP_BUY_Compre|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Orlande Bórgia
step << skip
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Pule para cima da tocha, depois caia para ficar sob Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Fair" ou "Low", fique no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe em linha reta para frente|r
    .goto 1453/0,861.95,-8990.47,10 >>Viaje para |cRXP_FRIENDLY_Jennea|r
step << skip
    .goto 1453/0,861.95,-8990.47
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine seus feitiços de classe (Armadura Gélida r2, Novane Congelante, Polimorfia, Conjurar Água r1 & r2)
    >>Custo Total: 15s
    >>Lembre-se que você pode querer dinheiro para Poções de Cura (3s cada), Tubo de Bronze (8s cada), e comida de nível 5 (20c por 5)
    .target Jennea Cannon
step << skip
    #completewith next
    .goto 1453/0,893.0,-9021.93,6 >>Passe pelo portal verde
step
    #completewith next
    .goto 1453/0,610.44,-8809.04,10,0
    .goto 1453/0,599.01,-8797.84,12,0
    .goto 1453/0,603.85,-8769.42,12,0
    .goto 1453/0,573.74,-8741.37,12,0
    .goto 1453/0,473.05,-8699.06,12,0
    .goto 1453/0,426.4,-8714.66,12,0
    .goto 1453/0,382.04,-8702.11,12 >>Vá para |cRXP_FRIENDLY_Osric|r
step
    .goto 1453/0,382.04,-8702.11
    >>Fale com |cRXP_FRIENDLY_Osric|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    .accept 6261 >>Aceite Dungar Tragolongo
    .target Osric Strang
step
    #completewith next
    .goto 1453/0,450.74,-8644.11,15,0
    .goto 1453/0,479.91,-8639.81,15,0
    .goto 1453/0,514.05,-8608.26,15,0
    .goto 1453/0,507.6,-8541.66,15,0
    .goto 1453/0,683.43,-8397.08,12,0
    .goto 1453/0,685.18,-8387.13,12 >>Vá para |cRXP_FRIENDLY_Grimand|r
step
    .goto 1453/0,685.18,-8387.13
    >>Fale com |cRXP_FRIENDLY_Grimand|r
    .turnin 1097 >>Entregue Tarefa de Elmore
    .accept 353 >>Aceite Entrega para Lançatroz
    .target Grimand Elmore
step
    .goto 1453/0,638.26,-8342.22
    >>Fale com |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >>Vá para o Deeprun Tram
step
    #completewith next
    +|cRXP_WARN_Monte o Deeprun Tram enquanto lança continuamente|r |T132794:0|t[Conjurar Água r2]
step
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
    >>Fale com |cRXP_FRIENDLY_Monty|r depois de pegar o bonde
    .accept 6661 >>Aceite Ratos de Porão
    .target Monty
step
    >>Usar o |T133942:0|t[Rato Catcher's Flute] nos |cRXP_FRIENDLY_Deeprun Ratos|r no Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Fale com |cRXP_FRIENDLY_Monty|r
--  >>|cRXP_WARN_Wait out the RP|r
    .turnin 6661 >>Entregue Ratos de Porão
    .target Monty
    .zoneskip Stormwind City
step
    .zone Ironforge >>Entre em Ironforge
    .isQuestAvailable 314
step
    .goto 1455/0,-1249.87,-4793.31
    >>Fale com |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1455/0,-1266.48,-4749.31,30,0
    .goto 1455/0,-1211.92,-4728.00,30,0
    .goto 1455/0,-1170.41,-4754.48,30,0
    .goto 1455/0,-1152.31,-4821.12,10 >>Vá para |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Vá para |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine seus feitiços de classe (Armadura Gélida r2, Novane Congelante, Polimorfia, Conjurar Água r1 & r2)
    >>Custo Total: 15s
    >>Lembre-se que você pode querer dinheiro para Poções de Cura (3s cada), Tubo de Bronze (8s cada), e comida de nível 5 (20c por 5)
    .target Dink
step
    #completewith next
    .goto 1455/0,-929.04,-4636.72,20,0
    .goto 1455/0,-892.19,-4770.42,20,0
    .goto 1455/0,-874.88,-4849.87,20,0
    >>Entre no prédio
    .goto 1455/0,-857.01,-4840.69,10 >>Vá para |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Fale com |cRXP_FRIENDLY_Firebrew|r
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto 1455/0,-974.89,-4902.21,20,0
    .goto 1455/0,-997.66,-4886.49,30 >>Entre no Banco de Ironforge
step
    .goto 1455/0,-997.66,-4886.49
    >>Fale com |cRXP_FRIENDLY_Bailey|r
    .bankdeposit 4371,16115 >>Deposite os itens a seguir no banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T132763:0|t[Caixote de Osric]
    .target Bailey Stonemantle
step << skip
    .goto 1455/0,-1000.98,-4874.62
    .goto 1426/0,-809.64,-5049.56,10 >>|cRXP_WARN_Salte no topo dos lados do cofre. Faça logout para pular para Dun Morogh|r
    .isQuestAvailable 314
step
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >>Saia de Altaforja
]])

RXPGuides.RegisterGuide([[
#forever
<< Human Mage
#name 10-11 ADV Dun Morogh Humano Mago AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor Human Mage
#next 10-12 ADV Costa Negra 1 Mago AdE

step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Suba pelo caminho de terra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Atraia |cRXP_ENEMY_Ragash|r para baixo até|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLIQUE AQUI se você está tendo dificuldades|r
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Fale com |cRXP_FRIENDLY_Rudra|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Abata o |cRXP_ENEMY_Ragash|r. Saque-o para obter a |cRXP_LOOT_Presa de Ragash|r
    >>|cRXP_WARN_Arraste o |cRXP_ENEMY_Ragash|r para o |cRXP_FRIENDLY_Montanhista de Dun Morogh|r ao sul do rancho. Certifique-se de causar 51%+ de dano a ele|r
    >>|cRXP_WARN_Lembre-se de obter pontos de experiência de exploração de The Tundrid Hills e puxe o |cRXP_ENEMY_Leopardo da Neve|r para o |cRXP_FRIENDLY_Montanhista de Dun Morogh|r se conveniente|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Fale com |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_Lembre-se de guardar|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você obtém ao subir de nível|r |T133971:0|t[Culinária] |cRXP_WARN_até nível 50 depois|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Arraste o |cRXP_ENEMY_Urso de Garra de Gelo|r para o |cRXP_FRIENDLY_Montanhista de Ironforge|r (certifique-se de causar 51%+ de dano para obter crédito)|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 dano adicional de combate)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Fale com |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 15|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 5|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Fale com |cRXP_FRIENDLY_Mehr|r e |cRXP_FRIENDLY_Stonebrow|r
    .accept 433 >>Aceite O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >>Aceite Malditos Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Abata os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_Não saia do seu caminho para matá-los|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Entre na caverna
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Abata os |cRXP_ENEMY_Rockjaw Bonesnappers|r dentro da caverna
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132154:0|t[Derrubar] |cRXP_WARN_(Corpo a Corpo Instantâneo: Imobiliza por 2 segundos)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Abata os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Fale com |cRXP_FRIENDLY_Frast|r
    .vendor >>Lixo de Comerciante
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Fale com |cRXP_FRIENDLY_Stonebrow|r e |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >>Entregue O Funcionário Público
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Fale com |cRXP_FRIENDLY_Umídio|r
    .train 2575 >>Treine |T136248:0|t[Mineração]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_Clique aqui se você está tendo dificuldades|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Pegue o atalho atrás de |cRXP_FRIENDLY_Umídio|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Atraia os |cRXP_ENEMY_Emboscadores Pedraqueixo|r para os |cRXP_FRIENDLY_Montanhistas de Altaforja|r que podem patrulhar na estrada (certifique-se de causar 51%+ de dano para obter crédito)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Atraia um |cRXP_ENEMY_Rochetusco Cicatrizado|r através do túnel
    >>|cRXP_WARN_Tenha cuidado enquanto eles conjuram|r |T132337:0|t[Carga] |cRXP_WARN_(Auto Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 40-100 dano corpo a corpo ao atingir. Lançável apenas a distância)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Fale com |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Clique no |cRXP_PICK_Cadáver Anão|r no chão
    >>|cRXP_WARN_Tenha certeza de que você tem um espaço livre no inventário. |cRXP_ENEMY_Ronhagarra|r não descerá se você não aceitar a próxima missão|r
    >>|cRXP_WARN_Lembre-se de que você está atraindo |cRXP_ENEMY_Ronhagarra|r de volta para |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Mate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o pelo |cRXP_LOOT_Mangy Garra|r
    >>|cRXP_WARN_Atraia-o até |cRXP_FRIENDLY_Hammerfoot|r (certifique-se de causar 51%+ de dano para obter crédito)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Fale com |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >>Entregue A Vingança do Piloto
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Corra de volta pelo túnel
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Atraia um |cRXP_ENEMY_Rochetusco Cicatrizado|r no caminho
    .goto 1426/0,-2347.72,-5483.62,20 >>Faça o Pulo da Montanha. Lembre-se de descer com cuidado
    .mob Scarred Crag Boar
step
    .goto 1432/0,-2518.11,-5625.83
    >>Atraia um |cRXP_ENEMY_Rochetusco Cicatrizado|r através do túnel
    >>|cRXP_WARN_Tenha cuidado enquanto eles conjuram|r |T132337:0|t[Carga] |cRXP_WARN_(Auto Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 40-100 dano corpo a corpo ao atingir. Lançável apenas a distância)|r
    .zone Loch Modan >>Vá pelo túnel para Loch Modan
    .mob Scarred Crag Boar
step
    #completewith Rugelfuss
    +|cRXP_WARN_Tente atrair um próximo |cRXP_ENEMY_Ancião Urso Preto|r ou |cRXP_ENEMY_Tocaieira da Floresta|r para o Bunker com você (lembre-se de causar 51%+ de dano para obter crédito)|r
    >>|cRXP_WARN_Saqueie os |cRXP_ENEMY_Elder Preto Ursos|r pelos seus|r |T134027:0|t[|cRXP_LOOT_Bear Carne|r]
    >>|cRXP_WARN_Saqueie os |cRXP_ENEMY_Tocaieiras da Floresta|r para seus|r |T134437:0|t[|cRXP_LOOT_Spider Ichor|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravelgaw|r, e |cRXP_FRIENDLY_Wallbang|r não o ajudarão|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    >>Fale com |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >>Entre no Bunker. Vá para o andar superior
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Fale com |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Volte para o Túnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_Clique aqui se você está tendo dificuldades|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Saltando o Pulo de Logout do Braseiro dentro do túnel para Thelsamar|r
    .isOnQuest 267
step
    #completewith next
    .subzone 144 >>Vá para Thelsamar
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Fale com |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_Patrulha pela estrada principal de Thelsamar|r
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Fale com |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >>Aprenda a rota de voo de Thelsamar
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
step
    .zone Ironforge >>Viaje para Ironforge
    .isOnQuest 416
step << skip
    #completewith next
    .goto 1455/0,-1060.12,-4883.59,20,0
    .goto 1455/0,-1016.16,-4946.11,20,0
    .goto 1455/0,-980.03,-4971.49,10 >>|cRXP_WARN_Viagem em direção ao ponto de Pulo|r
step << skip
    .goto 1455/0,-980.03,-4971.49
    .zone Dun Morogh >>|cRXP_WARN_Posicione seu personagem até parecer que você está flutuando na borda do corrimão de metal. Faça logout para Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
<< Gnome Mage
#name 1-10 ADV Dun Morogh Mago Gnomo AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor Gnome Mage
#next 10-12 ADV Costa Negra 1 Mago AdE


step << !Gnome Mage
    #season 2
    #completewith next
    +Na Temporada de Descoberta, você não deveria começar fora da zona de início de sua raça como um Mago, pois você será incapaz de obter sua primeira runa aqui (|T133816:0|t[Gravar Luvas - Lança de Gelo])
step
    #completewith next
    +Você selecionou o guia Avançado. Este é o guia mais rápido para a classe mais rápida do jogo (Maga da Aliança). Assim, haverá muitas mecânicas de nicho e puxes AdE altamente difíceis. Mantenha-se persistente enquanto aprende! Boa Sorte!
step
    #completewith Adlin
	.destroy 6948 >>Exclua a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessário
step
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .accept 179 >>Aceite Equipadores Anões
    .target Sten Stoutarm
step
    .goto 1426,29.529,73.286,0
    .goto 1426,28.117,75.088,0
    .goto 1426,28.557,72.487,0
    .goto 1426,29.529,73.286,60,0
    .goto 1426,29.054,74.608,60,0
    .goto 1426,28.558,75.781,60,0
    .goto 1426,28.117,75.088,60,0
    .goto 1426,27.562,74.331,60,0
    .goto 1426,27.793,73.123,60,0
    .goto 1426,28.557,72.487,60,0
    >>Mate os |cRXP_ENEMY_Ragged Young Wolves|r. Saqueie-os para obter |cRXP_LOOT_Tough Lobo Carne|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #season 0
    #sticky
    #label Adlin
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Comerciante
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Farme mais |cRXP_ENEMY_Ragged Young Wolves|r se você não tiver dinheiro suficiente|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto 1426/0,320.30,-6226.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Lixo de Comerciante
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Farme mais |cRXP_ENEMY_Ragged Young Wolves|r se você não tiver dinheiro suficiente|r
    >>|cRXP_WARN_Tenha certeza de que você guarda 10c para depois|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r e |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 179,3 >>Entregue Equipadores Anões
    .accept 233 >>Aceite Entrega de Correio do Vale Coldridge
    .accept 3114 >>Aceite Memorando Glífico
    .target +Sten Stoutarm
    .goto 1426/0,328.18,-6214.85
    .accept 170 >>Aceite Uma Nova Ameaça
    .goto 1426/0,338.87,-6216.46
    .target +Balir Frosthammer
step
    #xprate >1.09
    .goto 1426/0,328.18,-6214.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .turnin 179,3 >>Entregue Equipadores Anões
    .accept 233 >>Aceite Entrega de Correio do Vale Coldridge
    .accept 3114 >>Aceite Memorando Glífico
    .target Sten Stoutarm
step
    #season 2
    #xprate <1.1
    #completewith EnterAnvilmar
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #season 2
    .goto 1426/0,485.48,-6259.21
    >>Abra o |cRXP_PICK_Baú de Pedraqueixo|r no chão. Saqueie-o para o |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    >>|cRXP_WARN_NOTA: Você será incapaz de treinar|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_aqui, pois você só pode obter um|r |T133736:0|t[Compreensão Primer] |cRXP_WARN_na zona de início de sua raça|r << !Gnome
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
step << Gnome
    #season 2
    .train 401760 >>|cRXP_WARN_Use o|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #season 2
    #label EnterAnvilmar
    #optional
    #completewith next
    .goto 1426,28.792,68.804,12,0
    .goto 1426,28.642,68.375,12 >>Entre em Anvilmar
step
    #season 2
    .goto 1426/0,388.17,-6056.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Glyphic Memorandum << Gnome
    .accept 77667 >>Aceite Pesquisa de Feitiços << Gnome
    .turnin 77667 >>Entregue Pesquisa de Feitiços << Gnome
    .train 1459 >>Aprenda |T135932:0|t[Inteligência Arcana]
    .target Marryk Nurribit
step << Gnome
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equipe o|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .train 401760,1
step << Gnome
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Grave suas|r |T132961:0|t[Luvas de Tecido Esfarrapado] com|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .train 401760,1
step
    #season 2
    #optional
    #completewith Talin
    .goto 1426,28.792,68.804,12 >>Saia de Anvilmar
    .subzoneskip 77,1
step
    #xprate <1.1
    #completewith Rockjaw
    .goto 1426,27.096,72.545,0
    .goto 1426,26.620,73.548,0
    .goto 1426,25.722,72.261,0
    .goto 1426,24.878,72.329,0
    .goto 1426,24.100,73.749,0
    .goto 1426,24.920,74.697,0
    .goto 1426,21.813,72.584,0
    .goto 1426,19.578,72.086,0
    .goto 1426,20.627,70.415,0
    >>Mate os |cRXP_ENEMY_Troggs Pedraqueixo|r e os |cRXP_ENEMY_Troggs Pedraqueixo Parrudo|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label Talin
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 233 >>Entregue Coldridge Valley Malha Entrega
    .accept 183 >>Aceite O Caçador de Javalis
    .accept 234 >>Aceite Entrega de Correio do Vale Coldridge
    .target Talin Keeneye
step
    #loop
    .goto 1426,22.276,72.549,0
    .goto 1426,20.924,70.393,0
    .goto 1426,22.662,69.331,0
    .goto 1426,24.358,72.591,0
    .goto 1426,22.276,72.549,45,0
    .goto 1426,21.209,72.266,45,0
    .goto 1426,20.880,71.470,45,0
    .goto 1426,20.924,70.393,45,0
    .goto 1426,21.330,69.261,45,0
    .goto 1426,22.035,69.231,45,0
    .goto 1426,22.662,69.331,45,0
    .goto 1426,24.317,68.026,45,0
    .goto 1426,24.754,69.257,45,0
    .goto 1426,24.878,71.191,45,0
    .goto 1426,24.358,72.591,45,0
    >>Mate os |cRXP_ENEMY_Javalis Pequenos do Penhasco|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    .goto 1426/0,688.98,-6222.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 183 >>Entregue O Caçador de Javalis
    .target Talin Keeneye
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 234 >>Entregue Coldridge Valley Malha Entrega
    .accept 182 >>Aceite The Trolls Cave
    .target Grelin Whitebeard
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,485.63,-6494.56,30 >>Entre na caverna
    .isOnQuest 182
step
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,457.56,-6531.66,20,0
    .goto 1426/0,408.80,-6498.83,20,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,408.80,-6498.83
    >>Abate |cRXP_ENEMY_Frostmane Trolls Whelps|r dentro da caverna
    >>|cRXP_WARN_Limpe um caminho até logo antes da sala do Lago Congelado|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto 1426/0,408.80,-6498.83,50,0
    .goto 1426/0,457.56,-6531.66,40,0
    .goto 1426/0,532.42,-6448.26,40,0
    .goto 1426/0,466.42,-6460.41,40,0
    .goto 1426/0,524.05,-6516.56,40,0
    .goto 1426/0,532.42,-6448.26
    >>Abate |cRXP_ENEMY_Frostmane Trolls Whelps|r no caminho de volta para |cRXP_FRIENDLY_Grolin Barbabranca|r
    .complete 182,1--Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << skip
    #completewith next
    +|cRXP_WARN_Se você não sabe como fazer logout skip, assista primeiro este vídeo|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_CLIQUE AQUI para aprender a fazer o logout skip|r
step << skip
    >>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r e |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Saiba que "Entrega de Mornbrew Escaldante" tem um cronômetro de 5 minutos|r
    >>|cRXP_WARN_Certifique-se de ter 3 espaços de inventário para estas entregas/aceitações|r
    .turnin 182,4 >>Entregue The Trolls Cave
    .accept 218 >>Aceite O Diário Roubado
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    >>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    >>|cRXP_WARN_Certifique-se de ter 3 espaços de inventário para estas entregas/aceitações|r
    .turnin 182,4 >>Entregue The Trolls Cave
    .accept 218 >>Aceite O Diário Roubado
    .goto 1426/0,567.09,-6362.99
    .target +Grelin Whitebeard
step
    .goto 1426/0,485.63,-6494.56,40,0
    .goto 1426/0,357.09,-6473.87,30,0
    .goto 1426/0,340.84,-6493.24,10 >>|cRXP_WARN_Entre na caverna. Corra pelo caminho que você limpou (sem lutar, se possível) em direção ao Lago Congelado no interior|r
    .isOnQuest 218
step
    .goto 1426/0,300.94,-6509.00
    >>|cRXP_WARN_Abate o |cRXP_ENEMY_Jovem Trolls Jubafria|r na sua frente|r
    >>Abate |cRXP_ENEMY_Grik'nir, o Frio|r. Saque o |cRXP_LOOT_Diário de Grolin Barbabranca|r
    >>|cRXP_WARN_Tenha cuidado, pois ele lança|r |T135849:0|t[Choque Gélido] |cRXP_WARN_(Distância Instantânea: Causa 10 de dano Gélido e reduz a velocidade de movimento em 50% por 8 segundos)|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << skip
    #completewith Rybrad
    #label LogoutSkip1
    .goto 1426/0,342.81,-6487.330
    .goto 1426/0,336.40,-6164.25,30 >>|cRXP_WARN_Posicione seu personagem até parecer que está flutuando na beirada do penhasco acima do Lago Congelado, depois faça logout skip de volta para Anvilmar|r
    .isOnQuest 218
step
    >>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r e |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .goto 1426/0,567.09,-6362.99,-1
    .target +Grelin Whitebeard
    .accept 3364 >>Aceite Rabo-de-galo Escaldante Entrega
    .goto 1426/0,571.82,-6371.10,-1
    .target +Nori Pridedrift
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto 1426/0,384.18,-6143.90,20,0
    .goto 1426/0,392.06,-6123.87,10 >>Entre em Anvilmar
    .isOnQuest 218,3364
step
    #label Rybrad
    .goto 1426/0,390.58,-6101.21
    >>Fale com |cRXP_FRIENDLY_Rybrad Friamargem|r
    .vendor >>Lixo de Comerciante
    .target Rybrad Coldbank
    .isOnQuest 218,3364
step
    >>Fale com |cRXP_FRIENDLY_Durnan Cortapelo|r e |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3364 >>Entregue Rabo-de-galo Escaldante Entrega
    .accept 3365 >>Aceite Trazer a Caneca
    .goto 1426/0,385.16,-6056.23
    .target +Durnan Furcutter
    .turnin 3114 >>Entregue Glyphic Memorandum
    .trainer >>Treine seus feitiços de classe (Inteligência Arcana, Seta de Gelo)
    .goto 1426/0,388.17,-6056.10
    .target +Marryk Nurribit
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto 1426/0,338.87,-6216.46
    >>Fale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170,3 >>Entregue Uma Nova Ameaça
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #xprate <1.1
    #sticky
    #label TroggEnd
    .goto 1426,27.858,76.482,0
    .goto 1426,30.727,76.831,0
    .goto 1426,29.280,75.500,0
    .waypoint 1426,27.858,76.482,50,0
    .waypoint 1426,28.946,77.153,50,0
    .waypoint 1426,29.716,77.605,50,0
    .waypoint 1426,30.727,76.831,50,0
    .waypoint 1426,32.814,75.221,50,0
    .waypoint 1426,31.138,74.048,50,0
    .waypoint 1426,30.077,74.479,50,0
    .waypoint 1426,29.280,75.500,50,0
    >>|cRXP_WARN_Abate TODOS os |cRXP_ENEMY_Rockjaw Troggs|r que você vir e TODOS os |rBurly Pedraqueixo Troggs|cRXP_ENEMY_|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label StolenJ
    >>Fale com |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    -- >>Talk to |cRXP_FRIENDLY_Grelin Whitebeard|r and |cRXP_FRIENDLY_Nori Pridedrift|r
    -- .turnin 218,2 >> Turn in The Stolen Journal
    -- .accept 282 >> Accept Senir's Observations
    -- .goto 1426/0,567.09,-6362.99
    -- .target +Grelin Whitebeard
    .turnin 3365 >>Entregue Trazer a Caneca
    .goto 1426/0,571.82,-6371.10
    .target +Nori Pridedrift
step
    #xprate <1.1
    #requires TroggEnd
    .goto 1426/0,338.87,-6216.46
    >>Fale com |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 170,3 >>Entregue Uma Nova Ameaça
    .target Balir Frosthammer
    .isQuestComplete 170
step
    #requires TroggEnd
    #label Observations
    >>Fale com o |cRXP_FRIENDLY_Montanhista Thalos|r e |cRXP_FRIENDLY_Mãos Rodamola|r
    .turnin 282 >>Entregue Observações de Senir
    .accept 420 >>Aceite Observações de Senir
    .goto 1426/0,153.00,-6235.86
    .target +Mountaineer Thalos
    .accept 2160 >>Aceite Suprimentos para Tannok
    .goto 1426/0,134.97,-6248.96
    .target +Hands Springsprocket
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >>Abandone Uma Nova Ameaça
step
    .goto 1426/0,111.82,-6206.61,15,0
    .goto 1426/0,46.32,-6037.19,15 >>Atravesse Coldridge Passe
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto 1426/0,3.97,-5943.61,40,0
    >>Mate os |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado, pois eles lançam|r |T132337:0|t[carga] |cRXP_WARN_(Auto Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto 1426/0,-67.94,-5908.48,30,0
    .goto 1426/0,-162.50,-5822.79,45 >>|cRXP_WARN_Cause 51%+ de dano aos |cRXP_ENEMY_Juvenile Neve Leopards|r e aos |cRXP_ENEMY_Young Preto Ursos|r próximos, depois puxe-os para o |cRXP_FRIENDLY_Ironforge Montanhista|r para matá-los com mais eficiência|r
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto 1426/0,-337.34,-5703.93,50,0
    .goto 1426/0,-371.81,-5605.43,50,0
    .goto 1426/0,-464.45,-5573.78,20 >>Viaje para |cRXP_FRIENDLY_Tharek|r
step
    .goto 1426/0,-464.45,-5573.78
    >>Fale com |cRXP_FRIENDLY_Tharek|r
    .accept 400 >>Aceite Ferramentas Para Gradaço
    .target Tharek Blackstone
step
    #label StockingJ
    .goto 1426/0,-632.15,-5466.540
    >>Atraia |cRXP_ENEMY_Young Preto Ursos|r pelo caminho |cRXP_WARN_(certifique-se de causar 51%+ de dano para receber crédito)|r
    >>Fale com |cRXP_FRIENDLY_Bellowfiz|r
    .accept 317 >>Aceite Provisões Para a Vaporeta
    .mob Young Black Bear
    .target Pilot Bellowfiz
step
    >>Fale com |cRXP_FRIENDLY_Stonegear|r, |cRXP_FRIENDLY_Beldin|r, e |cRXP_FRIENDLY_Loslor|r
    >>|cRXP_WARN_Atraia os |cRXP_ENEMY_Young Preto Ursos|r para o |cRXP_FRIENDLY_Ironforge Montanhista|r se você puxou algum (certifique-se de causar 51%+ de dano para receber crédito)|r
    .accept 313 >>Aceite The Grizzled Den
    .target +Pilot Stonegear
    .goto 1426/0,-641.80,-5473.18
    .turnin 400 >>Entregue Ferramentas Para Gradaço
    .target +Beldin Steelgrill
    .goto 1426/0,-682.58,-5488.87
    .accept 5541 >>Aceite Sem Munição Não Tem Negócio
    .vendor >>Lixo de Comerciante
    .goto 1426/0,-664.55,-5499.710
    .target +Loslor Rudge
    .isQuestAvailable 312
step
    #completewith next
    >>Abata os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para pegar |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132337:0|t[Investida] |cRXP_WARN_(Autoalvo Instantâneo: aumenta a velocidade de movimento por 3 segundos, causando 25-70 de dano corpo-a-corpo ao acertar. Lançável apenas à distância)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56,50,0
    .goto 1426/0,-422.05,-5775.18,50,0
    .goto 1426/0,-679.62,-5573.58,50,0
    .goto 1426/0,-678.64,-5618.89,50,0
    .goto 1426/0,-620.03,-5550.60,50,0
    .goto 1426/0,-432.39,-5502.330,50,0
    .goto 1426/0,-349.65,-5586.06,50,0
    .goto 1426/0,-423.03,-5662.56
    >>Abata os |cRXP_ENEMY_Young Preto Ursos|r e os |cRXP_ENEMY_Ice Garra Ursos|r. Saqueie-os para pegar a |cRXP_LOOT_Thick Urso Fur|r
    >>|cRXP_WARN_Atraia os |cRXP_ENEMY_Young Preto Ursos|r e os |cRXP_ENEMY_Ice Garra Ursos|r para os |cRXP_FRIENDLY_Ironforge Mountaineers|r próximos (certifique-se de causar 51%+ de dano para receber crédito)|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 dano adicional de combate)|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
    .mob Ice Claw Bear
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
    >>Abata os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para pegar |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132337:0|t[Investida] |cRXP_WARN_(Autoalvo Instantâneo: aumenta a velocidade de movimento por 3 segundos, causando 25-70 de dano corpo-a-corpo ao acertar. Lançável apenas à distância)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto 1426/0,-632.15,-5466.540
    >>Fale com |cRXP_FRIENDLY_Bellowfiz|r
    .turnin 317 >>Entregue Provisões Para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
    .target Pilot Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto 1426/0,-744.14,-5507.59,40,0
	.goto 1426/0,-713.61,-5598.21,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
	.goto 1426/0,-663.37,-5573.25,40,0
	.goto 1426/0,-638.75,-5545.67,40,0
	.goto 1426/0,-567.83,-5489.200,40,0
	.goto 1426/0,-572.26,-5417.95,40,0
	.goto 1426/0,-437.81,-5520.06,40,0
	.goto 1426/0,-368.36,-5600.830,40,0
	.goto 1426/0,-349.65,-5702.29,40,0
	.goto 1426/0,-304.83,-5743.99,40,0
	.goto 1426/0,-387.08,-5825.09,40,0
	.goto 1426/0,-478.68,-5907.83,40,0
	.goto 1426/0,-476.22,-5830.34,40,0
	.goto 1426/0,-565.86,-5815.89,40,0
	.goto 1426/0,-630.87,-5813.27,40,0
	.goto 1426/0,-576.69,-5743.99,40,0
	.goto 1426/0,-615.60,-5674.38,40,0
	.goto 1426/0,-641.21,-5660.59,40,0
	.goto 1426/0,-730.84,-5624.15,40,0
    .xp 5+2690 >>Suba até 2690+/2800xp
    .mob Young Black Bear
    .mob Crag Boar
step
    #completewith InnLS1
    +|cRXP_WARN_Desequipar seu atual|r |T135148:0|t[Cajado]
    -- +|cRXP_WARN_Remember the Inn Logout Skip soon. Unequip your current|r |T135148:0|t[Staff]
    -- >>|cRXP_WARN_NOTE: Itemrack currently can cause problems after logout skipping where your ingame UI freezes. Make sure to disable the addon or make a /reload command you can click when/if that happens|r
step
    #completewith Tannok
    .cast 1459 >>Aplique |T135932:0|t[Inteligência Arcana]
    .cast 168 >>Aplique |T135843:0|t[Armadura Gélida]
step
    .goto 1426/0,-504.29,-5596.24
    >>Fale com |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Entre
step
    .goto 1426/0,-523.35,-5590.82
    >>Fale com |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >>Entregue Suprimentos para Tannok
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-537.29,-5587.04,12 >>Entre
step
    #sticky
    #label Tannok
    .goto 1426/0,-523.35,-5590.82,0,0
    >>Fale com |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >>Entregue Suprimentos para Tannok
    .target Tannok Frosthammer
step
    .goto 1426/0,-537.29,-5587.04
    >>Fale com |cRXP_FRIENDLY_Magis|r acima
    .trainer >>Treine seus feitiços de classe (Bola de Fogo R2, Impacto de Fogo)
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    .home >>Defina sua Pedra de Retorno em Cervaforte Distillery
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto 1426/0,-504.29,-5596.24
    >>Fale com |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 15|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 5|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 20|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 5|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_dele|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step << skip
    #completewith SenirO
    .goto 1426/0,-535.32,-5604.120,-1
    .goto 1426/0,-519.07,-5679.96,35 >>|cRXP_WARN_Salto para cima dos barris na parede atrás de |cRXP_FRIENDLY_Belm|r. Logout Pular para Kharanos|r
step
    #sticky
    #label Golorn
    .goto 1426/0,-501.34,-5640.89,-1
    >>Fale com |cRXP_FRIENDLY_Golorn|r
    >>|cRXP_BUY_Compre um|r |T135637:0|t[Faca de Esfolamento] |cRXP_BUY_dele|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto 1426/0,-499.17,-5644.37,-1
    >>Fale com |cRXP_FRIENDLY_Senir|r
    .turnin 420 >>Entregue Observações de Senir
    .target Senir Whitebeard
step
    #completewith next
    #requires Golorn
    +Equipe a |T135637:0|t[Faca de Esfolamento]
    .use 7005
    .itemcount 7005,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.2
step
    #requires Golorn
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto 1426/0,-294.49,-5676.350,10,0
	.goto 1426/0,-261.00,-5666.83,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-261.98,-5565.70,10,0
	.goto 1426/0,-289.07,-5583.10,10,0
	.goto 1426/0,-272.82,-5606.74,10,0
	.goto 1426/0,-294.49,-5676.350,10,0
    >>Mate os |cRXP_ENEMY_Young Wendigos|r e os |cRXP_ENEMY_Wendigos|r. Saque-os por suas |cRXP_LOOT_Wendigo Manes|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135848:0|t[Sopro Gélido] |cRXP_WARN_(Corpo a Corpo Cast: Deals 6-10 Gélido damage) and have increased|r |T135849:0|t[Resistência ao Gelo]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto 1426/0,-371.32,-5746.94
    >>Abra o |cRXP_PICK_Caixote de Munição|r no chão. Saque-o por |cRXP_LOOT_Munição de Rumbleshot|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Juvenile Neve Leopards|r pelo caminho
    >>Saqueie os |cRXP_ENEMY_Crag Boars|r por suas |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Crag Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto 1426/0,-201.51,-6015.520,20 >>Vá para |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto 1426/0,-197.47,-5920.63,45,0
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Juvenile Neve Leopards|r pelo caminho
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Crag Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .goto 1426/0,-201.51,-6015.520,20 >>Vá para |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto 1426/0,-197.47,-5920.63,45,0
    .goto 1426/0,-201.51,-6015.520,20 >>Vá para |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto 1426/0,-201.51,-6015.520
    >>Fale com |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >>Entregue Sem Munição Não Tem Negócio
    .vendor >>Lixo de Comerciante
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
    >>|cRXP_WARN_Inflija 51%+ de dano nos |cRXP_ENEMY_Juvenile Neve Leopards|r e |cRXP_ENEMY_Young Preto Ursos|r próximos, então puxe-os para o |cRXP_FRIENDLY_Ironforge Montanhista|r para matá-los com mais eficiência|r
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r pelo caminho. Saqueie-os por suas |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .xp 7 >>Suba até o Nível 7 no caminho para |cRXP_FRIENDLY_Tundra|r antes de falar com ele
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestAvailable 384
step
    #completewith next
    .goto 1426/0,-68.43,-5909.470,50,0
    .goto 1426/0,72.92,-5741.36,45,0
    .goto 1426/0,47.80,-5674.05,50,0
    .goto 1426/0,10.37,-5600.51,40,0
    >>|cRXP_WARN_Inflija 51%+ de dano nos |cRXP_ENEMY_Juvenile Neve Leopards|r e |cRXP_ENEMY_Young Preto Ursos|r próximos, então puxe-os para o |cRXP_FRIENDLY_Ironforge Montanhista|r para matá-los com mais eficiência|r
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r pelo caminho
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Crag Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .xp 7 >>Suba até o Nível 7 no caminho para |cRXP_FRIENDLY_Tundra|r antes de falar com ele
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestTurnedIn 384
step
    #label TundraOne
    .goto 1426/0,99.51,-5573.25
    >>Fale com |cRXP_FRIENDLY_Tundra|r
    .accept 312 >>Aceite Por Baixo da Carne-Seca
    .target Tundra MacGrann
step
    #completewith next
    +|cRXP_WARN_Arraste um |cRXP_ENEMY_Urso Garra de Gelo|r para|r |cRXP_FRIENDLY_Rejold|r
    >>|cRXP_WARN_Tente aceitar a missão antes que o |cRXP_ENEMY_Urso Garra de Gelo|r morra para receber crédito|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 dano adicional de combate)|r
    >>|cRXP_WARN_Você deve causar 51%+ de dano para ganhar crédito da missão|r
    .mob Ice Claw Bear
step
    >>Fale com |cRXP_FRIENDLY_Rejold|r e |cRXP_FRIENDLY_Marleth|r
    .turnin 318 >>Entregue Sempre-aceso
    .accept 319 >>Aceite Tudo Pela Sempre-aceso
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
    .target +Rejold Barleybrew
    .goto 1426/0,315.23,-5378.55
    .accept 310 >>Aceite A Guerra das Cervejas
    .goto 1426/0,315.42,-5372.02
    .target +Marleth Barleybrew
step
    .goto 1426/0,302.42,-5387.74,0,0
    >>Fale com |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compre até 10 a mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .vendor >>Lixo de Comerciante
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto 1426/0,302.42,-5387.74,0,0
    >>Fale com |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compre até 5 a mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .vendor >>Lixo de Comerciante
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .itemcount 1179,5
    .money <0.0225
    .isOnQuest 319
step
    #completewith CaveLS
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_Elder Crag Boars|r e os |cRXP_ENEMY_Snow Leopards|r a caminho da Caverna. Saqueie os |cRXP_ENEMY_Elder Crag Boars|r por suas |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Foque nos|r |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Ice Garra Ursos|r lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instant: Causa 4 de dano corpo a corpo adicional), e |cRXP_ENEMY_Elder Crag Boars|r lançam|r |T132337:0|t[carga] |cRXP_WARN_(Self Instant: Aumenta a velocidade de movimento por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .mob +Elder Crag Boar
    .isQuestAvailable 384
step
    #completewith CaveLS
    .goto 1426/0,151.72,-5436.670,50,0
    .goto 1426/0,-12.78,-5370.34,50,0
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_Elder Crag Boars|r e os |cRXP_ENEMY_Snow Leopards|r a caminho da caverna
    >>|cRXP_WARN_Foque nos|r |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Ice Garra Ursos|r lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instant: Causa 4 de dano corpo a corpo adicional), e |cRXP_ENEMY_Elder Crag Boars|r lançam|r |T132337:0|t[carga] |cRXP_WARN_(Self Instant: Aumenta a velocidade de movimento por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step << skip
    #completewith next
    .goto 1426/0,-69.42,-5281.36,30 >>Entre na caverna
    .isOnQuest 319
step << skip
    #label CaveLS
    .goto 1426/0,-85.18,-5300.74
    .goto 1426/0,-519.07,-5679.96,30 >>|cRXP_WARN_Faça um Logout Pular dentro da caverna para se teleportar de volta para Kharanos|r
    .isOnQuest 319
step
    .goto 1426/0,-499.17,-5644.37
    >>Fale com |cRXP_FRIENDLY_Senir|r
    .accept 287 >>Aceite A Fortaleza Jubafria
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-522.02,-5585.07,12 >>Entre
step
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_e|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto 1426/0,-537.29,-5597.55,8,0
    .goto 1426/0,-548.13,-5598.54,8 >>Desça
step
    #completewith next
    .goto 1426/0,-544.68,-5606.09
    >>Fale com |cRXP_FRIENDLY_Jarven|r no andar de baixo
    .turnin 308 >>Entregue Distraindo Jarven
    .target Jarven Thunderbrew
step
    .goto 1426/0,-548.13,-5607.400
    >>Fique passando o mouse sobre o |cRXP_PICK_Guarded Trovão Ale Barril|r no andar de baixo. Espere o |cRXP_PICK_Guarded Trovão Ale Barril|r ficar sem guarda
    >>Clique no |cRXP_PICK_Unguarded Trovão Ale Barril|r
    .turnin 310 >>Entregue A Guerra das Cervejas
    .accept 311 >>Aceite Fale Novamente com Marleth
step
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre até 10 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre até 5 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto 1426/0,-522.02,-5585.07,12,0
    .goto 1426/0,-511.19,-5584.09,10,0
    .goto 1426/0,-504.29,-5596.24,20 >>Saia da Estalagem
    .isOnQuest 287
step
    .goto 1426/0,-504.29,-5596.24
    >>Fale com |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto 1426/0,-495.43,-5434.04,40,0
    +|cRXP_WARN_Cause 51%+ de dano aos |cRXP_ENEMY_Snow Farejador Wolves|r, aos |cRXP_ENEMY_Winter Wolves|r e aos |cRXP_ENEMY_Young Preto Ursos|r. Puxe-os para o |cRXP_FRIENDLY_Ironforge Montanhista|r para matá-los de forma mais eficiente|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Snow Farejador Wolves|r têm|r |T132150:0|t[Increased Agro Distância] |cRXP_WARN_(o alcance de agro é aumentado em cerca de 8 jardas)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob Young Black Bear
    .target Ironforge Mountaineer
step
    .goto 1426/0,-311.23,-5360.16,25,0
    .goto 1426/0,-282.18,-5363.45,45 >>Corra pela rampa em direção aos |cRXP_ENEMY_Frostmane Seers|r
    .isOnQuest 315
step
    #requires SeerRamp
    #completewith next
    >>Mate a patrulha de |cRXP_ENEMY_Caçador de Cabeças Jubafria|r
    >>|cRXP_WARN_Tenha cuidado, pois ele patrulha entre todos os que estão parados|r |cRXP_ENEMY_Frostmane Seers|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Ataque à Distância: Causa 8-15 dano)|r
    .complete 287,1 --Kill Frostmane Headhunters (5)
    .mob Frostmane Headhunter
step
    #label ShimmerB
    .goto 1426/0,-269.86,-5370.34,40,0
    .goto 1426/0,-271.83,-5342.43,40,0
    .goto 1426/0,-250.16,-5306.32,40,0
    .goto 1426/0,-230.46,-5333.90,20,0
    .goto 1426/0,-240.81,-5354.91,30,0
    .goto 1426/0,-221.11,-5349.99,30,0
    .goto 1426/0,-224.06,-5372.31,40,0
    .goto 1426/0,-184.66,-5283.66,40,0
    .goto 1426/0,-151.66,-5186.15,20,0
    .goto 1426/0,-164.96,-5114.900,20,0
    .goto 1426/0,-258.54,-5046.93
    >>Mate os |cRXP_ENEMY_Frostmane Seers|r. Saque-os para obter suas |cRXP_LOOT_Tremulerva|r
    >>Abra os |cRXP_PICK_Tremulerva Cestos|r no chão. Saque-os para obter |cRXP_LOOT_Tremulerva|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T136048:0|t[Raio] |cRXP_WARN_(Ataque à Distância: Causa 15-30 dano de Natureza)|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    #completewith IBCave
    >>Mate os |cRXP_ENEMY_Large Crag Boars|r e os |cRXP_ENEMY_Elder Crag Boars|r. Saque-os para obter |cRXP_LOOT_Crag Javali Ribs|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Large Crag Boar
    .mob Elder Crag Boar
step
    #completewith next
    .goto 1426/0,-190.08,-5427.80,40,0
    .goto 1426/0,-55.63,-5580.48,40,0
    >>Mate os dois |cRXP_ENEMY_Elder Crag Boars|r a caminho da caverna (se estão aí)
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132337:0|t[carga] |cRXP_WARN_(Self Instant: Aumenta a velocidade de movimento por 3 segundos, causando 25-85 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob Elder Crag Boar
step
    #label IBCave
    .goto 1426/0,-62.03,-5640.56,50 >>Viaje para a Caverna
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_Após saqueá-lo, lembre-se de pular virando para desviar seus ataques, evitar o Tontear e pular no tronco para evadi-lo temporariamente|r
step
    .goto 1426/0,-94.53,-5647.79
    >>|cRXP_WARN_Se o |cRXP_ENEMY_Velho Barbafria|r está na caverna, puxe-o pela lateral da caverna, depois todo o caminho acima dela. Espere ele chegar perto, depois pule para baixo e vá em direção ao fundo da caverna|r
    >>Abra |cRXP_PICK_MacGrann's Carne Locker|r no chão. Saque-o para obter |cRXP_LOOT_Macgrann's Dried Meats|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_CLIQUE AQUI Se você está tendo dificuldades|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto 1426/0,99.51,-5573.25
    >>Fale com |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >>Entregue O Esconderijo Roubado de Tundra MacGrann
    .target Tundra MacGrann
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_Elder Crag Boars|r e os |cRXP_ENEMY_Snow Leopards|r. Saque os |cRXP_ENEMY_Elder Crag Boars|r para obter |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Lembre-se de puxar um |cRXP_ENEMY_Urso Garra de Gelo|r ou |cRXP_ENEMY_Snow Leopards|r de volta para o fornecedor da missão, se possível|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Ice Garra Ursos|r lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instant: Causa 4 de dano corpo a corpo adicional), e |cRXP_ENEMY_Elder Crag Boars|r lançam|r |T132337:0|t[carga] |cRXP_WARN_(Self Instant: Aumenta a velocidade de movimento por 3 segundos, causando 35-85 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .mob Elder Crag Boar
    .isQuestAvailable 384
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_Elder Crag Boars|r e os |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Lembre-se de puxar um |cRXP_ENEMY_Urso Garra de Gelo|r ou |cRXP_ENEMY_Snow Leopards|r de volta para o fornecedor da missão, se possível|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Ice Garra Ursos|r lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instant: Causa 4 de dano corpo a corpo adicional), e |cRXP_ENEMY_Elder Crag Boars|r lançam|r |T132337:0|t[carga] |cRXP_WARN_(Self Instant: Aumenta a velocidade de movimento por 3 segundos, causando 35-85 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    >>Fale com |cRXP_FRIENDLY_Rejold|r e |cRXP_FRIENDLY_Marleth|r
    .turnin 315,1 >>Entregue em Em Busca da Cerveja Perfeita
    .accept 413 >>Aceite Cerveja Tremeluz
    .turnin 319 >>Entregue Tudo Pela Sempre-aceso
    .accept 320 >>Aceite Fale Novamente com Urrabolha
    .goto 1426/0,315.28,-5378.39
    .turnin 311 >>Fale novamente com Marleth
    .goto 1426/0,315.42,-5372.02
    .target Rejold Barleybrew
step
    .goto 1426/0,302.42,-5387.74
    >>Fale com |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compre até 10 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto 1426/0,302.42,-5387.74
    >>Fale com |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compre até 5 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16,40,0
    .goto 1426/0,220.67,-5509.56,40,0
    .goto 1426/0,355.12,-5644.50,40,0
    .goto 1426/0,378.27,-5520.39,40,0
    .goto 1426/0,402.40,-5359.18,40,0
    .goto 1426/0,381.22,-5247.87,40,0
    .goto 1426/0,260.56,-5163.16
    >>Mate os |cRXP_ENEMY_Elder Crag Boars|r. Saqueie-os para obter seus |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132337:0|t[carga] |cRXP_WARN_(Self Instant: Aumenta a velocidade de movimento por 3 segundos, causando 35-85 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Elder Crag Boar
step
    #completewith Explore
    .goto 1426/0,564.92,-5503.65,35,0
    .goto 1426/0,573.79,-5538.78,12 >>Entre na caverna pelo lado norte
step
    .goto 1426/0,605.80,-5545.020,40,0
    .goto 1426/0,654.07,-5563.40
    >>Mate os |cRXP_ENEMY_Frostmane Headhunters|r dentro da caverna
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Ataque à Distância: Causa 8-15 dano)|r
    >>|cRXP_WARN_Tenha cuidado com o |cRXP_ENEMY_Caçador de Cabeças Jubafria|r em patrulha lá dentro|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto 1426/0,668.84,-5585.73,8,0
    .goto 1426/0,674.26,-5587.37
    >>|cRXP_WARN_Caminhe cuidadosamente para baixo até o recanto abaixo (NÃO caia). Caminhe cuidadosamente pelo recanto até obter crédito|r
    >>|cRXP_WARN_Tenha cuidado com o |cRXP_ENEMY_Esfolador Jubafria|r abaixo, pois ele pode atacar você no recanto se estiver perto de lá|r
    >>|cRXP_WARN_Esteja pronto para lançar|r |T134414:0|t[Pedra de Regresso]
    .link https://youtu.be/Zg4FNWw-P5k?t=3619 >>https://youtu.be/Zg4FNWw-P5k?t=3619 >>|cRXP_WARN_Clique aqui se você estiver tendo dificuldade|r
    .complete 287,2 --Fully explore Frostmane Hold
step << skip
    #completewith next
    +|cRXP_WARN_Lembre-se do Pular de Saída da Estalagem em breve!|r
step
    #completewith Senir2
    .hs >>Vá para Kharanos
step
    .goto 1426/0,-531.38,-5601.49
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto 1426/0,-537.29,-5587.04
    >>Fale com |cRXP_FRIENDLY_Magis|r acima
    .trainer >>Treine seus feiços de classe (Seta de Gelo r2, Polimorfia)
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_Lembre-se de guardar|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você obtém ao subir de nível|r |T133971:0|t[Culinária] |cRXP_WARN_até nível 50 depois|r
step
    .goto 1426/0,-504.29,-5596.24
    >>Fale com |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto 1426/0,-499.17,-5644.37
    >>Fale com |cRXP_FRIENDLY_Senir|r
    .turnin 287,2 >>Entregue em A Fortaleza Jubafria
    .accept 291 >>Aceite Os Relatórios
    .target Senir Whitebeard
step
    #completewith next
    .cast 1459 >>Aplique |T135932:0|t[Inteligência Arcana]
    .cast 168 >>Aplique |T135843:0|t[Armadura Gélida]
step
    >>Fale com |cRXP_FRIENDLY_Bellowfiz|r e |cRXP_FRIENDLY_Stonegear|r
    .turnin 320,2 >>Fale novamente com Urrabolha
    .target +Pilot Bellowfiz
    .goto 1426/0,-632.15,-5466.540
    .turnin 313 >>Entregue O Covil Canjento
    .goto 1426/0,-641.80,-5473.18
    .target +Pilot Stonegear
step
    #completewith next
    +|cRXP_WARN_Inflija 51%+ de dano nas |cRXP_ENEMY_Winter Wolves|r próximas, então puxe-as para os |cRXP_FRIENDLY_Montanhistas de Altaforja|r que podem estar patrulhando na estrada para eliminá-las de forma mais eficiente|r
    >>|cRXP_WARN_Se você não vir os |cRXP_FRIENDLY_Montanhistas de Altaforja|r, pule este passo|r
    .mob Winter Wolf
    .target Ironforge Mountaineer
step
    #completewith Rudra
    #label Dirt
    .goto 1426/0,-1145.04,-5504.30,40,0
    .goto 1426/0,-1219.90,-5422.55,40 >>Suba pelo caminho de terra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLIQUE AQUI se você está tendo dificuldades|r
    +|cRXP_WARN_Atraia |cRXP_ENEMY_Ragash|r para baixo até|r |cRXP_FRIENDLY_Rudra|r
    .mob Vagash
step
    #label Rudra
    .goto 1426/0,-1304.61,-5513.82
    >>Fale com |cRXP_FRIENDLY_Rudra|r
    .accept 314 >>Aceite Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step
    .goto 1426/0,-1279.49,-5392.01,0
    .goto 1426/0,-1289.83,-5669.780,40,0
    .goto 1426/0,-1291.80,-5706.89
    >>Abata o |cRXP_ENEMY_Ragash|r. Saque-o para obter a |cRXP_LOOT_Presa de Ragash|r
    >>|cRXP_WARN_Arraste o |cRXP_ENEMY_Ragash|r para o |cRXP_FRIENDLY_Montanhista de Dun Morogh|r ao sul do rancho. Certifique-se de causar 51%+ de dano a ele|r
    >>|cRXP_WARN_Lembre-se de obter pontos de experiência de exploração de The Tundrid Hills e puxe o |cRXP_ENEMY_Leopardo da Neve|r para o |cRXP_FRIENDLY_Montanhista de Dun Morogh|r se conveniente|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLIQUE AQUI se você está tendo dificuldades|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto 1426/0,-1304.61,-5513.82
    >>Fale com |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >>Entregue Amarre Sua Cabra Pois Ragash Está Solto
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_Lembre-se de guardar|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você obtém ao subir de nível|r |T133971:0|t[Culinária] |cRXP_WARN_até nível 50 depois|r
step
    #completewith next
    .goto 1426/0,-1465.16,-5548.96,50,0
    .goto 1426/0,-1533.13,-5638.92,30,0
    +|cRXP_WARN_Arraste o |cRXP_ENEMY_Urso de Garra de Gelo|r para o |cRXP_FRIENDLY_Montanhista de Ironforge|r (certifique-se de causar 51%+ de dano para obter crédito)|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 dano adicional de combate)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto 1426/0,-1566.62,-5664.86,0,0
    >>Fale com |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 15|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto 1426/0,-1568.09,-5665.19,8,0
    .goto 1426/0,-1573.02,-5671.10
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 5|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,5,432,1 --Ice Cold Milk (5)
    .target Kazan Mogosh
    .money <0.0135
step
    #requires Ghilm
    >>Fale com |cRXP_FRIENDLY_Mehr|r e |cRXP_FRIENDLY_Stonebrow|r
    .accept 433 >>Aceite O Funcionário Público
    .target +Senator Mehr Stonehallow
    .goto 1426/0,-1579.91,-5714.77
    .accept 432 >>Aceite Malditos Troggs!
    .goto 1426/0,-1600.30,-5726.590
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Abata os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_Não saia do seu caminho para matá-los|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto 1426/0,-1681.86,-5723.30,30 >>Entre na caverna
step
    #label Bonesnappers
    .goto 1426/0,-1693.68,-5660.26,40,0
    .goto 1426/0,-1686.29,-5622.83,40,0
    .goto 1426/0,-1740.96,-5534.51,40,0
    .goto 1426/0,-1771.00,-5568.000,40,0
    .goto 1426/0,-1774.45,-5602.80
    >>Abata os |cRXP_ENEMY_Rockjaw Bonesnappers|r dentro da caverna
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132154:0|t[Derrubar] |cRXP_WARN_(Corpo a Corpo Instantâneo: Imobiliza por 2 segundos)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto 1426/0,-1681.86,-5723.30,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto 1426/0,-1641.97,-5758.11,30,0
	.goto 1426/0,-1673.49,-5801.45,30,0
	.goto 1426/0,-1629.66,-5826.40,30,0
	.goto 1426/0,-1564.65,-5832.97,30,0
	.goto 1426/0,-1604.05,-5765.33,30,0
	.goto 1426/0,-1641.97,-5758.11,30,0
    >>Abata os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto 1426/0,-1589.76,-5714.44,0,0
    >>Fale com |cRXP_FRIENDLY_Frast|r
    .vendor >>Lixo de Comerciante
    .target Frast Dokner
step
    >>Fale com |cRXP_FRIENDLY_Stonebrow|r e |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Foreman Stonebrow
    .goto 1426/0,-1600.30,-5726.590
    .turnin 433 >>Entregue O Funcionário Público
    .goto 1426/0,-1579.91,-5714.77
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto 1426/0,-1612.42,-5698.02
    >>Fale com |cRXP_FRIENDLY_Umídio|r
    .train 2575 >>Treine |T136248:0|t[Mineração]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto 1426/0,-1662.65,-5692.11,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_Clique aqui se você está tendo dificuldades|r
    .goto 1426/0,-1671.03,-5674.71,12 >>Pegue o atalho atrás de |cRXP_FRIENDLY_Umídio|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto 1426/0,-1693.19,-5541.730,50,0
    .goto 1426/0,-1788.24,-5511.85,50,0
    .goto 1426/0,-1995.58,-5480.01,50 >>|cRXP_WARN_Atraia os |cRXP_ENEMY_Emboscadores Pedraqueixo|r para os |cRXP_FRIENDLY_Montanhistas de Altaforja|r que podem patrulhar na estrada (certifique-se de causar 51%+ de dano para obter crédito)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto 1426/0,-2198.49,-5277.75,50,0
    .goto 1426/0,-2286.16,-5200.59,30 >>Atraia um |cRXP_ENEMY_Rochetusco Cicatrizado|r através do túnel
    >>|cRXP_WARN_Tenha cuidado enquanto eles conjuram|r |T132337:0|t[Carga] |cRXP_WARN_(Auto Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 40-100 dano corpo a corpo ao atingir. Lançável apenas a distância)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto 1426/0,-2329.50,-5163.82
    >>Fale com |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto 1426/0,-2205.39,-5092.57,30,0
    .goto 1426/0,-2121.66,-5064.66
    >>Clique no |cRXP_PICK_Cadáver Anão|r no chão
    >>|cRXP_WARN_Certifique-se de ter 1 espaço livre no inventário para esta entrega|r
    >>|cRXP_WARN_Lembre-se de que você vai arrastar |cRXP_ENEMY_Ronhagarra|r de volta para |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    .goto 1426/0,-2059.61,-5118.180,60,0
    .goto 1426/0,-2329.50,-5163.82
    >>Mate |cRXP_ENEMY_Ronhagarra|r. Saqueie-o pelo |cRXP_LOOT_Mangy Garra|r
    >>|cRXP_WARN_Atraia-o até |cRXP_FRIENDLY_Hammerfoot|r (certifique-se de causar 51%+ de dano para obter crédito)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto 1426/0,-2329.60,-5163.76
    >>Fale com |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >>Entregue A Vingança do Piloto
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto 1426/0,-2286.16,-5200.59,30,0
    .goto 1426/0,-2198.49,-5277.75,30 >>Corra de volta pelo túnel
step
    .goto 1426/0,-2075.37,-5511.20
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Scarred Crag Boars|r e |cRXP_ENEMY_Elder Crag Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range), e |cRXP_ENEMY_Ice Garra Ursos|r lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instant: Deals an additional 4 melee damage)|r
    .xp 9+5450 >>Farme até 5450+/6500xp
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto 1426/0,-2118.71,-5516.78,20,0
    .goto 1426/0,-2192.09,-5510.87,20,0
    .goto 1426/0,-2216.72,-5519.08,20,0
    .goto 1426/0,-2314.72,-5491.83,20,0
    >>Atraia um |cRXP_ENEMY_Rochetusco Cicatrizado|r no caminho
    >>|cRXP_WARN_Tenha cuidado enquanto eles conjuram|r |T132337:0|t[Carga] |cRXP_WARN_(Auto Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 40-100 dano corpo a corpo ao atingir. Lançável apenas a distância)|r
    .goto 1426/0,-2347.72,-5483.62,20 >>Faça o Pulo da Montanha. Lembre-se de descer com cuidado
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Scarred Crag Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .xp 9+5990 >>Farme até 5990+/6500xp
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto 1426/0,-2447.11,-5479.74
    >>Fale com |cRXP_FRIENDLY_Barleybrew|r
    .turnin 413 >>Entregue Cerveja Tremeluz
    .accept 414 >>Aceite Cerveja para Kadrell
    .target Mountaineer Barleybrew
step
    .goto 1426/0,-2469.86,-5504.96,40,0
    .goto 1426/0,-2451.15,-5432.07
    .xp 9+6320 >>Farme até 6320+/6500xp
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Scarred Crag Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 40-100 melee damage on hit. Only castable at range)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto 1432/0,-2447.50,-5564.39,20,0
    .goto 1432/0,-2534.11,-5642.02,30 >>Atraia um |cRXP_ENEMY_Rochetusco Cicatrizado|r através do túnel
    >>|cRXP_WARN_Tenha cuidado enquanto eles conjuram|r |T132337:0|t[Carga] |cRXP_WARN_(Auto Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 40-100 dano corpo a corpo ao atingir. Lançável apenas a distância)|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto 1432/0,-2576.86,-5805.01,35,0
	.goto 1432/0,-2519.49,-5875.65,35,0
	.goto 1432/0,-2570.52,-5916.30,35,0
	.goto 1432/0,-2576.86,-5805.01,35,0
    .xp 10 >>Farme até Nível 10
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #requires CragB1
    #completewith Rugelfuss
    +|cRXP_WARN_Tente atrair um próximo |cRXP_ENEMY_Ancião Urso Preto|r ou |cRXP_ENEMY_Tocaieira da Floresta|r para o Bunker com você (lembre-se de causar 51%+ de dano para obter crédito)|r
    >>|cRXP_WARN_Saqueie os |cRXP_ENEMY_Elder Preto Ursos|r pelos seus|r |T134027:0|t[|cRXP_LOOT_Bear Carne|r]
    >>|cRXP_WARN_Saqueie os |cRXP_ENEMY_Tocaieiras da Floresta|r para seus|r |T134437:0|t[|cRXP_LOOT_Spider Ichor|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravelgaw|r, e |cRXP_FRIENDLY_Wallbang|r não o ajudarão|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto 1432/0,-2602.54,-5832.73
    >>Fale com |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >>Entre no Bunker. Vá para o andar superior
step
    #label Rugelfuss
    .goto 1432/0,-2634.59,-5842.81
    >>Fale com |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Volte para o Túnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_Clique aqui se você está tendo dificuldades|r
    .goto 1432/0,-2881.66,-5351.18,30 >>|cRXP_WARN_Saltando o Pulo de Logout do Braseiro dentro do túnel para Thelsamar|r
    .isOnQuest 414
step
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Fale com |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_Patrulha pela estrada principal de Thelsamar|r
    .turnin 414 >>Entregue Cerveja para Kadrell
    .accept 416 >>Aceite Caçando Ratos
    .accept 1339 >>Aceite Tarefa de Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Fale com |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Ele pode estar dentro ou fora do edifício|r
    .accept 6387 >>Aceite Alunos Brilhantes
    .target Brock Stoneseeker
step
    .goto 1432/0,-2929.93,-5424.95
    >>Fale com |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >>Aprenda a rota de voo de Thelsamar
    .turnin 6387 >>Entregue Alunos Brilhantes
    .accept 6391 >>Aceite Carona para Altaforja
    .target Thorgrum Borrelson
step
    #completewith next
    .goto 1432/0,-2929.93,-5424.95
    >>Fale com |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >>Viaje para Ironforge
    .isOnQuest 6391
step
    #completewith next
    .goto 1455/0,-1154.84,-4771.58,30,0
    .goto 1455/0,-1123.37,-4726.31,15,0
    .goto 1455/0,-1106.29,-4718.18,12,0
    >>Entre no prédio
    .goto 1455/0,-1121.08,-4708.000,10 >>Vá para |cRXP_FRIENDLY_Golnir|r
step
    .goto 1455/0,-1121.08,-4708.000
    >>Fale com |cRXP_FRIENDLY_Golnir|r
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
    .vendor >>Lixo de Comerciante
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto 1455/0,-1106.29,-4718.18,12,0
    .goto 1455/0,-1154.84,-4771.58,30,0
    >>Saia do edifício
    .goto 1455/0,-1152.31,-4821.12,10 >>Vá para |cRXP_FRIENDLY_Gryth|r
step
    .goto 1455/0,-1152.39,-4820.914
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .turnin 6388 >>Entregue Grif Trovino
--   .accept 6392 >>Accept Return to Brock
-- .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step
    #completewith next
    .goto 1455/0,-1148.99,-4840.22,30,0
    .goto 1455/0,-1101.87,-4864.81,30,0
    .goto 1455/0,-1082.58,-4836.00,20,0
    .goto 1455/0,-1062.42,-4835.00,20,0
    .goto 1455/0,-1026.28,-4872.56,10 >>Vá para |cRXP_FRIENDLY_Barin|r
step
    .goto 1455/0,-1026.28,-4872.56
    >>Fale com |cRXP_FRIENDLY_Barin|r
    .turnin 291 >>Entregue Os Relatórios
    .target Senator Barin Redstone
step
    #completewith next
    .goto 1455/0,-1064.87,-4828.19,20,0
    .goto 1455/0,-1062.10,-4815.100,20,0
    .goto 1455/0,-1036.48,-4804.50,20,0
    .goto 1455/0,-992.68,-4742.08,20,0
    .goto 1455/0,-931.8,-4627.59,20,0
    .goto 1455/0,-928.40,-4614.51,10 >>Vá para |cRXP_FRIENDLY_Dink|r
step
    .goto 1455/0,-928.40,-4614.51
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine seus feitiços de classe (Armadura Gélida r2, Novane Congelante, Polimorfia, Conjurar Água r1 & r2)
    >>Custo Total: 15s
    >>Lembre-se que você pode querer dinheiro para Poções de Cura (3s cada), Tubo de Bronze (8s cada), e comida de nível 5 (20c por 5)
    .target Dink
step << skip
    #completewith IFHS
    +|cRXP_WARN_Lembre-se de Pular o Logout nas Velas depois de definir sua|r |T134414:0|t[Pedra de Regresso]
step
    #completewith next
    --.goto 1455/0,-929.04,-4636.72,20,0
    --.goto 1455/0,-892.19,-4770.42,20,0
    --.goto Ironforge,20.40,53.19,20,0
    >>Entre no prédio
    .goto 1455/0,-857.01,-4840.69,10 >>Vá para |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto 1455/0,-857.01,-4840.69
    >>Fale com |cRXP_FRIENDLY_Firebrew|r
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
step << skip
    .goto 1455/0,-864.68,-4847.820
    .zone Dun Morogh >>|cRXP_WARN_Salte no topo das velas na mesa. Faça o logout skip para Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 10-12 ADV Costa Negra 1 Mago AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 12-14 ADV Loch Modan Mago AdE

step
    #completewith DeathlessSkip
    .goto 1455/0,-833.45,-5021.400,20,0
    .goto 1426/0,-1145.04,-5504.30
    .zone Dun Morogh >>Saia de Altaforja
step
    #completewith next
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >>Vá para o ponto de salto. Passe rente ao lado esquerdo da montanha durante o trajeto
step
    #label DeathlessSkip
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>|cRXP_WARN_Faça o salto Deathless Dun Morogh -> Pantanal|r
    >>|cRXP_WARN_Coma até estar satisfeito após cada queda se você não se sentir confiante|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >>https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_clique aqui para referência (é FORTEMENTE aconselhado que você o faça)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Desça cuidadosamente pela encosta da montanha
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>|cRXP_WARN_Faça o Deathless Dun Morogh -> Pantanal skip|r
    >>|cRXP_WARN_cuidado com |cRXP_ENEMY_Lodogã|r (raro) antes de descer em direção à costa (se ele estiver presente)|r
    >>|cRXP_WARN_cuidado com os |cRXP_ENEMY_Bluegill Raiders|r a oeste quando você chegar ao mar|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Young Pantanal Crocolisks|r ao atravessar o mar. Espere eles patrulharem para longe|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >>https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_clique aqui para referência (é FORTEMENTE aconselhado que você o faça)|r
    .goto 1437/0,-914.37,-3828.40,15 >>Vá para Menethil Harbor
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Entre na Estalagem
step
    .goto 1437/0,-823.8,-3807.180
    >>Pule no Lustre no andar de baixo
    >>Fale com |cRXP_FRIENDLY_Samor|r pela parede
    >>|cRXP_WARN_Nota: Para fazer isso, vincule 'Interagir com Alvo' em Gameplay -> Controles no menu Opções|r
    >>|cRXP_WARN_se o Barco acaba de chegar, pule este passo|r
    .vendor 1457 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Fale com |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_se o Barco acaba de chegar, pule este passo|r
    +|cRXP_WARN_Cozinhe qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você tem de fora (há uma fogueira dentro)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Fale com |cRXP_FRIENDLY_Dewin|r pela parede
    >>|cRXP_WARN_se o Barco acaba de chegar, pule este passo|r
    .vendor 1453 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Viaje para o Barco da Costa Negra
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Fique conjurando repetidamente|r |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >>Pegue o barco para Costa Negra
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Pule do barco quando você estiver mais perto da costa
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Leve 2-3 |cRXP_ENEMY_Pygmy Tide Crawlers|r em direção a |cRXP_FRIENDLY_Wizbang|r (Lembre-se de usar|r |T135848:0|t[Novane Congelante]|cRXP_WARN_) Abata-os quando aceitar a missão|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Lixo de Comerciante
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Suba até o andar superior
    .goto 1439/1,519.48,6405.89,8 >>Viaje para |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
    >>Fale com |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step
    #completewith next
    >>Abata os |cRXP_ENEMY_Pigmeus Tide Crawlers|r que você desviou. Saque-os por suas |cRXP_LOOT_Pernas Rastejantes|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Viaje para |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre o máximo|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_que você precisa/consegue|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Fale com |cRXP_FRIENDLY_Thundris|r e |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .target +Thundris Windweaver
    .goto 1439/1,492.62,6580.99
    .accept 2178 >>Aceite Vida Fácil de Moa
    .goto 1439/1,472.97,6557.85
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Viaje para |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>Fale com |cRXP_FRIENDLY_Terenthis|r e |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Aceite Uma grande ameaça?
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 2118 >>Aceite Terras Pestilentas
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
 step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Lixo de Comerciante
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Abata os |cRXP_ENEMY_Pigmeus Tide Crawlers|r. Saque-os por suas |cRXP_LOOT_Pernas Rastejantes|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto 1439/1,437.60,6025.99,75,0
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_em um |cRXP_ENEMY_Ursocardo Raivoso|r. Tem alcance de 50 jardas|r
    >>|cRXP_WARN_Cuidado pois eles lançam |T135914:0|t[Hidrofobia] (Instantâneo Corpo a Corpo: Reduz TODA regeneração de saúde em 50% por 10 minutos)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,393.72,5993.24
    >>Corra em direção ao Acampamento Furbolg
    >>|cRXP_WARN_Não tente lutar contra o|r |cRXP_ENEMY_Voz-do-vento Bosquenero|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,411.40,5873.15,60,0
    .goto 1439/1,400.27,5788.0,60,0
    .goto 1439/1,427.78,5680.58,60,0
    .goto 1439/1,415.33,5434.30
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_em um |cRXP_ENEMY_Ursocardo Raivoso|r. Tem alcance de 50 jardas|r
    >>|cRXP_WARN_Cuidado pois eles lançam |T135914:0|t[Hidrofobia] (Instantâneo Corpo a Corpo: Reduz TODA regeneração de saúde em 50% por 10 minutos)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto 1439/1,302.02,5726.433
    >>Fale com |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Relics
    +|cRXP_WARN_Evite puxar |cRXP_ENEMY_Lady Miralua|r (rara) se ela estiver presente|r
    .unitscan Lady Moongazer
step
    #completewith Fall
    >>Abata os |cRXP_ENEMY_Highbornes Amaldiçoados|r e os |cRXP_ENEMY_Writhing Highbornes|r. Saque-os por |cRXP_LOOT_Highborne Relics|r
    >>|cRXP_WARN_Abate os |cRXP_ENEMY_Highbornes Ululantes|r apenas se estiverem no seu caminho|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,148.09,5575.78
    >>Clique em |cRXP_PICK_The Queda of Ameth'Aran|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Clique em |cRXP_PICK_The Lay of Ameth'Aran|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Fale com |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
    >>Abata os |cRXP_ENEMY_Highbornes Amaldiçoados|r e os |cRXP_ENEMY_Writhing Highbornes|r
    >>|cRXP_WARN_Mate os |cRXP_ENEMY_Wailing Highbornes|r apenas se estiverem no seu caminho|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #completewith next
    +|cRXP_WARN_Leve 2-3 |cRXP_ENEMY_Vile Sprites|r em direção a |cRXP_FRIENDLY_Asterion|r (Lembre-se de usar|r |T135848:0|t[Novane Congelante]|cRXP_WARN_) Mate-os quando você aceitar a missão|r
    .mob Vile Sprite
step
    .goto 1439/1,48.53,6748.67
    >>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Licillino|r (raro) pode estar presente|r
    >>|cRXP_WARN_Ele lança|r |T136197:0|t[Seta Sombria] |cRXP_WARN_(Lançamento à Distância: Causa 55-70 de dano de Sombra)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Mate os |cRXP_ENEMY_Vile Sprites|r e os |cRXP_ENEMY_Wild Grells|r. Saqueie-os pelos |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Vile Sprites|r lançam |T136016:0|t[Veneno] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 3 de dano a cada 3 segundos por 15 segundos) e os |cRXP_ENEMY_Wild Grells|r lançam |T136215:0|t[Enlouquecido] |cRXP_WARN_(Auto Instantâneo: Aumenta a velocidade de ataque em 20% com menos de 20% de vida)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Mate |cRXP_ENEMY_Sátiro Deth'ryll|r. Saqueie-os para obter |cRXP_LOOT_Selo Antigo de Pedra-da-lua|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 15-25 dano)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    .xp 11+1100 >>Farme para 1100+/8800xp
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (Turnins starting from Bashal Seal turnin)
--675+975 = 1650 (Turtle turnins)
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor >>Lixo de Comerciante
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
    >>Fale com |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    >>Fale com |cRXP_FRIENDLY_Terenthis|r e |cRXP_FRIENDLY_Tharnariun|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
    .goto 1439/1,397.65,6437.76
    .target +Tharnariun Treetender
step
    #sticky
    #label Gwennyth
    .goto 1439/1,543.06,6342.57
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Fale com |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Guarde os |T133884:0|t[Murloc Olhos] |cRXP_WARN_que você saqueia dos |cRXP_ENEMY_Greymist Coastrunners|r e dos |cRXP_ENEMY_Greymist Raiders|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto 1439/1,558.78,6111.57
    >>Saqueie a |cRXP_LOOT_Beached Sea Criatura - Missão|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Brumagris Coastrunners|r próximos têm |T132307:0|t[Velocidade de Movimento Aumentada]
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto 1439/1,541.75,6313.31
    >>Clique em |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Fale com |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Mate os |cRXP_ENEMY_Darkshore Threshers|r
    >>|cRXP_WARN_NÃO se desvie para estes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >>Corra ao longo do cais em direção à |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
step
    .goto 1439/1,854.84,6310.26
    >>Nade debaixo da água
    >>Saqueie a |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >>Farme para 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Equipe seus novos creps (Equipe as |T132537:0|t[Botas do Rastelo de Areia])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===PRESTE ATENÇÃO===|r
    >>|cRXP_WARN_Fale com|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Se esta é sua primeira vez fazendo um Batch de Pedra de Regresso, assista ao guia abaixo|r
    >>|cRXP_WARN_Abra o menu "Definir Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Batch de Pedra de Regresso de Auberdine para Ironforge|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >>https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLIQUE AQUI (é ALTAMENTE aconselhado que você faça isso). Certifique-se de ter definido e testado seu Tamanho de Janela de Batching antes para reduzir o risco de falha|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Aprenda seus feitiços de classe (Bola de Fogo r3, Atenuar Magia)
    >>Custo Total: 12s
    >>Lembre-se de que você pode querer dinheiro para um |T133024:0|t[Tubo de Bronze] (8s cada) e para o voo de Thelsamar (1s 10c)
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >>Faça logout na coluna acima de |cRXP_FRIENDLY_Dink|r para procurar um |T133024:0|t[Tubo de Bronze] em |cRXP_FRIENDLY_Cogspinner|r se desejar
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Comece a fazer spam com |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Aceite Retornar com Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >>Voe para Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 10-12 LANÇAMENTO ADV Costa Negra 1 Mago AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor none
#next 12-14 ADV Loch Modan Mago AdE

--VV Make this an alternative route that must be manually selected
step
    #completewith next
    +|cRXP_WARN_NOTA: A rota Lançar contém missões que são MUITO difíceis de fazer solo. Isto é especificamente para servidores muito lotados onde você pode se agrupar para as missões mais difíceis, OU para jogadores que têm mob taggers|r
step
    #completewith next
    .goto 1426/0,-831.81,-5108.330,30,0
    .goto 1426/0,-859.39,-5144.450,30,0
    .goto 1426/0,-1124.84,-5283.99,150 >>Vá para o ponto de salto. Passe rente ao lado esquerdo da montanha durante o trajeto
step
    .goto 1426/0,-1161.78,-5289.24,12,0
    .goto 1426/0,-1173.60,-5313.54,12,0
    .goto 1426/0,-1187.88,-5327.66,4,0
    .goto 1426/0,-1199.70,-5327.00,6,0
    .goto 1426/0,-1224.33,-5245.58,10,0
    .goto 1426/0,-1239.60,-5239.670,4,0
    .goto 1426/0,-1243.54,-5243.93,4,0
    .goto 1426/0,-1251.91,-5233.100,8,0
    .goto 1426/0,-1241.07,-5180.89,15,0
    .goto 1426/0,-1225.81,-5086.99,12,0
    .goto 1426/0,-1224.82,-4952.70,15,0
    .goto 1426/0,-1220.88,-4826.62,30,0
    .goto 1426/0,-1197.73,-4626.34,30,0
    .goto 1426/0,-1178.03,-4408.980,5,0
    .goto 1426/0,-1178.53,-4396.18,5,0
    .goto 1426/0,-1189.36,-4374.84,15,0
    .goto 1426/0,-1173.11,-4348.24,8,0
    .goto 1426/0,-1184.44,-4333.14,6,0
    .goto 1426/0,-1221.87,-4312.78,10,0
    .goto 1426/0,-1227.78,-4290.13,8,0
    >>|cRXP_WARN_Faça o salto Deathless Dun Morogh -> Pantanal|r
    >>|cRXP_WARN_Coma até ficar cheio após cada queda se você não se sente confiante|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >>https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLIQUE AQUI para referência (é FORTEMENTE aconselhado que você faça isso)|r
    .goto 1426/0,-1184.93,-4250.73,20 >>Desça cuidadosamente a encosta da montanha
    .isQuestAvailable 983
step
    .goto 1426/0,-1192.32,-4216.25,10,0
    .goto 1426/0,-1182.96,-4196.55,8,0
    .goto 1437/0,-1166.63,-4147.02,12,0
    .goto 1437/0,-1162.91,-4104.03,12,0
    .goto 1437/0,-1154.64,-4060.48,12,0
    .goto 1437/0,-1118.24,-4031.81,15,0
    .goto 1437/0,-1092.6,-4013.35,12,0
    .goto 1437/0,-1049.60,-3998.74,12,0
    .goto 1437/0,-1012.79,-3978.34,20,0
    .goto 1437/0,-1022.72,-3952.43,20,0
    .goto 1437/0,-1014.03,-3904.2,12,0
    >>|cRXP_WARN_Faça o salto Deathless Dun Morogh -> Pantanal|r
    >>|cRXP_WARN_Cuidado com |cRXP_ENEMY_Lodogã|r (raro) antes de descer em direção à costa (se ele estiver aparecido)|r
    >>|cRXP_WARN_Cuidado com os |cRXP_ENEMY_Bluegill Raiders|r a oeste quando você chegar ao mar|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Young Pantanal Crocolisks|r ao cruzar o mar. Espere que eles patrulhem para longe|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >>https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLIQUE AQUI para referência (é FORTEMENTE aconselhado que você faça isso)|r
    .goto 1437/0,-914.37,-3828.40,15 >>Vá para Menethil Harbor
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto 1437/0,-836.21,-3796.15,10,0
    .goto 1437/0,-829.18,-3804.420,10 >>Entre na Estalagem
step
    .goto 1437/0,-823.8,-3807.180
    >>Pule no Lustre no andar de baixo
    >>Converse com |cRXP_FRIENDLY_Samor|r através da parede
    >>|cRXP_WARN_NOTA: Para fazer isso, vincule "Interagir com Alvo" em Jogabilidade → Controles no menu de Opções|r
    >>|cRXP_WARN_Se o Barco acabou de chegar, pule este passo|r
    .vendor 1457 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Samor Festivus
    .money <0.03
step
    .goto 1437/0,-782.03,-3793.12
    >>Converse com |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto 1437/0,-715.87,-3697.48
    >>|cRXP_WARN_Se o Barco acabou de chegar, pule este passo|r
    +|cRXP_WARN_Cozinhe qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você tem de fora (há uma fogueira dentro)|r
    .itemcount 769,1
step
    .goto 1437/0,-715.87,-3697.48
    >>Converse com |cRXP_FRIENDLY_Dewin|r através da parede
    >>|cRXP_WARN_Se o Barco acabou de chegar, pule este passo|r
    .vendor 1453 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto 1437/0,-641.43,-3758.94,20,0
    .goto 1437/0,-575.68,-3719.53,20 >>Vá em direção ao Barco Costa Negra
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Fique conjurando repetidamente|r |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível|r
step
    #label Darkshore
    .goto 1437/0,-565.34,-3724.77
    .zone Darkshore >>Pegue o barco para Costa Negra
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto 1439/1,601.35,6358.29,60 >>Pule do barco quando você estiver mais próximo da costa
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Atraia 2-3 |cRXP_ENEMY_Pygmy Tide Crawlers|r em direção a |cRXP_FRIENDLY_Wizbang|r (Lembre-se de usar|r |T135848:0|t[Novane Congelante]|cRXP_WARN_) Abata-os quando aceitar a missão|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,533.23,6399.77,0,0
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Lixo de Comerciante
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto 1439/1,536.51,6389.29,20,0
    .goto 1439/1,528.65,6404.14,10,0
    .goto 1439/1,537.16,6417.68,10,0
    >>Suba até o andar superior
    .goto 1439/1,519.48,6405.89,8 >>Vá em direção a |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto 1439/1,519.48,6405.89
    >>Converse com |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>Abata os |cRXP_ENEMY_Pygmy Tide Crawlers|r que você atraiu. Saqueie-os para conseguir suas |cRXP_LOOT_Pernas de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Lixo de Comerciante
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto 1439/1,462.49,6525.97,20,0
    .goto 1439/1,414.68,6472.70,20,0
    .goto 1439/1,383.89,6445.62,20,0
    .goto 1439/1,362.93,6434.27,12 >>Vá em direção a |cRXP_FRIENDLY_Terenthis|r
step
    >>Fale com |cRXP_FRIENDLY_Terenthis|r e |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Aceite Uma grande ameaça?
    .target +Terenthis
    .goto 1439/1,362.93,6434.27,-1
    .accept 2118 >>Aceite Terras Pestilentas
    .goto 1439/1,397.65,6437.76,-1
    .target +Tharnariun Treetender
step << skip
    #completewith next
    .goto 1439/1,489.35,6450.43,20,0
    .goto 1439/1,470.35,6525.530,20,0
    .goto 1439/1,492.62,6580.99,10 >>Vá em direção a |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto 1439/1,488.69,6564.830
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre o máximo|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_que você precisa/consegue|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto 1439/1,492.62,6580.99
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Converse com |cRXP_FRIENDLY_Thundris|r e |cRXP_FRIENDLY_Alanndarian|r
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .target +Thundris Windweaver
    .goto 1439/1,492.62,6580.99,-1
    .accept 2178 >>Aceite Vida Fácil de Moa
    .goto 1439/1,472.97,6557.85,-1
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto 1439/1,-117.84,6820.72
    >>|cRXP_WARN_Se você encontrar um |cRXP_ENEMY_Ursocardo Raivoso|r, use|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_e então agrida-o|r
    >>|cRXP_WARN_Cuidado pois eles lançam |T135914:0|t[Hidrofobia] (Instantâneo Corpo a Corpo: Reduz TODA regeneração de saúde em 50% por 10 minutos)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    #completewith next
    +|cRXP_WARN_Leve 2-3 |cRXP_ENEMY_Vile Sprites|r em direção a |cRXP_FRIENDLY_Asterion|r (Lembre-se de usar|r |T135848:0|t[Novane Congelante]|cRXP_WARN_) Mate-os quando você aceitar a missão|r
    .mob Vile Sprite
step
    #label Bash1
    .goto 1439/1,48.53,6748.67
    >>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Licillino|r (raro) pode estar presente|r
    >>|cRXP_WARN_Ele lança|r |T136197:0|t[Seta Sombria] |cRXP_WARN_(Lançamento à Distância: Causa 55-70 de dano de Sombra)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto 1439/1,22.33,6736.44,35,0
	.goto 1439/1,28.88,6669.20,35,0
	.goto 1439/1,58.36,6649.98,35,0
	.goto 1439/1,-6.49,6603.26,35,0
	.goto 1439/1,-45.79,6638.63,35,0
	.goto 1439/1,-17.62,6695.40,35,0
	.goto 1439/1,-62.16,6719.41,35,0
	.goto 1439/1,-130.94,6712.86,35,0
	.goto 1439/1,-36.62,6760.90,35,0
	.goto 1439/1,22.33,6736.44,35,0
    >>Mate os |cRXP_ENEMY_Vile Sprites|r e os |cRXP_ENEMY_Wild Grells|r. Saqueie-os pelos |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Vile Sprites|r lançam |T136016:0|t[Veneno] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 3 de dano a cada 3 segundos por 15 segundos) e os |cRXP_ENEMY_Wild Grells|r lançam |T136215:0|t[Enlouquecido] |cRXP_WARN_(Auto Instantâneo: Aumenta a velocidade de ataque em 20% com menos de 20% de vida)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto 1439/1,48.53,6748.67
    >>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15,45,0
    .goto 1439/1,-38.58,6739.5,45,0
    .goto 1439/1,-66.75,6683.61,45,0
    .goto 1439/1,-67.40,6672.25,45,0
    .goto 1439/1,-34.00,6601.51,45,0
    .goto 1439/1,-115.22,6626.40,45,0
    .goto 1439/1,-160.41,6690.16,45,0
    .goto 1439/1,-187.27,6708.930,45,0
    .goto 1439/1,-165.65,6728.15
    >>Mate |cRXP_ENEMY_Sátiro Deth'ryll|r. Saqueie-os para obter |cRXP_LOOT_Selo Antigo de Pedra-da-lua|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 15-25 dano)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto 1439/1,48.53,6748.67
    >>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto 1439/1,397.65,6437.76
    .xp 10+6625 >>Farme 6625+/7600 de experiência no caminho de volta para |cRXP_FRIENDLY_Tharnariun|r
step
    .goto 1439/1,397.65,6437.76
    >>Converse com |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
    .target Tharnariun Treetender
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Fale com |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith next
    >>Abata os |cRXP_ENEMY_Pygmy Tide Crawlers|r. Saqueie-os para conseguir suas |cRXP_LOOT_Pernas de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #sticky
    #label Gwennyth
    .goto 1439/1,543.06,6342.57
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,561.40,6343.01
    >>Fale com |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto 1439/1,569.26,6373.14,50,0
    .goto 1439/1,596.11,6334.27,50,0
    .goto 1439/1,592.84,6265.72,50,0
    .goto 1439/1,600.70,6228.600,50,0
    .goto 1439/1,567.29,6154.370,50,0
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Guarde os |T133884:0|t[Murloc Olhos] |cRXP_WARN_que você saqueia dos |cRXP_ENEMY_Greymist Coastrunners|r e dos |cRXP_ENEMY_Greymist Raiders|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto 1439/1,558.78,6111.57
    >>Saqueie a |cRXP_LOOT_Beached Sea Criatura - Missão|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Brumagris Coastrunners|r próximos têm |T132307:0|t[Velocidade de Movimento Aumentada]
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto 1439/1,569.26,6373.14
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto 1439/1,393.72,5993.24
    >>Corra em direção ao Acampamento Furbolg
    >>|cRXP_WARN_Não tente lutar contra o|r |cRXP_ENEMY_Voz-do-vento Bosquenero|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto 1439/1,302.02,5726.433
    >>Fale com |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_Evite puxar |cRXP_ENEMY_Lady Miralua|r (rara) se ela estiver presente|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto 1439/1,161.19,5684.51,0
    >>Abate |cRXP_ENEMY_Anaya Correalba|r. Saque-a para o |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith Fall
    >>Abata os |cRXP_ENEMY_Highbornes Amaldiçoados|r e os |cRXP_ENEMY_Writhing Highbornes|r. Saque-os por |cRXP_LOOT_Highborne Relics|r
    >>|cRXP_WARN_Abate os |cRXP_ENEMY_Highbornes Ululantes|r apenas se estiverem no seu caminho|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto 1439/1,166.43,5633.86
    >>Clique na |cRXP_PICK_Chama Antiga|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,148.09,5575.78
    >>Clique em |cRXP_PICK_The Queda of Ameth'Aran|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto 1439/1,105.52,5770.100
    >>Clique em |cRXP_PICK_The Lay of Ameth'Aran|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto 1439/1,302.02,5726.433
    >>Fale com |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto 1439/1,206.39,5802.41,50,0
    .goto 1439/1,117.96,5820.32,50,0
    .goto 1439/1,71.46,5788.00,50,0
    .goto 1439/1,87.18,5713.77,50,0
    .goto 1439/1,93.07,5585.83,50,0
    .goto 1439/1,165.78,5564.870,50,0
    .goto 1439/1,242.41,5641.72,50,0
    .goto 1439/1,206.39,5802.41
    >>Abata os |cRXP_ENEMY_Highbornes Amaldiçoados|r e os |cRXP_ENEMY_Writhing Highbornes|r
    >>|cRXP_WARN_Abate os |cRXP_ENEMY_Highbornes Ululantes|r apenas se estiverem no seu caminho|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #label Anaya
    .goto 1439/1,161.19,5684.51
    >>Abate |cRXP_ENEMY_Anaya Correalba|r. Saque-a para o |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto 1439/1,-22.21,5999.79,30 >>Vá para dentro da caverna
    >>|cRXP_WARN_Evite |cRXP_ENEMY_Thistle Ursos|r, |cRXP_ENEMY_Moonkins|r e |cRXP_ENEMY_Raging Moonkins|r no caminho (se possível)|r
    .isOnQuest 958
step
    .goto 1439/1,-54.96,6015.51
    .goto 1439/1,210.32,6739.501,30 >>Abate o |cRXP_WARN_Luniscante Oráculo|cRXP_ENEMY_ dentro da caverna|r --, then drink Logout Skip by logging out on top of the Mushroom at the back of the cave|r
    >>|cRXP_WARN_Tenha cuidado pois ele lança|r |T136006:0|t[Ira] |cRXP_WARN_(Lançamento à distância: Causa 30-45 de dano da Natureza),|r |T136096:0|t[Fogo Lunar] |cRXP_WARN_(Instantâneo à distância: Causa 20-30 de dano da Natureza, depois 44 de dano da Natureza ao longo de 12 segundos), e|r |T136085:0|t[Recrescimento] |cRXP_WARN_(Lançamento pessoal: Cura cerca de 150 de dano. Raro, mas fuja se isso acontecer)|r
    >>|cRXP_WARN_Você pode contornar seu|r |T136006:0|t[Ira] |cRXP_WARN_por trás das rochas dentro da boca da caverna|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto 1439/1,47.88,6748.67
    >>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957,3 >>Entregue Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto 1439/1,488.69,6564.830,0,0
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor >>Lixo de Comerciante
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto 1439/1,491.97,6582.303
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto 1439/1,472.97,6557.85
    >>Fale com |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto 1439/1,362.93,6434.27
    >>Fale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
    .target Terenthis
step
    .goto 1439/1,541.75,6313.31
    >>Clique em |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
 step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Fale com |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Mate os |cRXP_ENEMY_Darkshore Threshers|r
    >>|cRXP_WARN_NÃO se desvie para estes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto 1439/1,786.06,6488.85,15,0
    .goto 1439/1,818.81,6419.86,25 >>Corra ao longo do cais em direção à |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
step
    .goto 1439/1,854.84,6310.26
    >>Nade debaixo da água
    >>Saqueie a |cRXP_LOOT_Carcaça de Tartaruga Marinha|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.4,50,0
    .goto 1439/1,575.81,6381.430,50,0
    .goto 1439/1,596.77,6329.91,50,0
    .goto 1439/1,581.05,6209.82,50,0
    .goto 1439/1,575.15,6144.32,50,0
    .goto 1439/1,545.68,6010.270,50,0
    .goto 1439/1,634.10,5983.63,50,0
    .goto 1439/1,634.76,5915.51,50,0
    .goto 1439/1,537.82,5840.40
    .xp 11+7825 >>Farme para 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto 1439/1,539.78,6364.84,12,0
    .goto 1439/1,543.06,6342.57
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Equipe seus novos creps (Equipe as |T132537:0|t[Botas do Rastelo de Areia])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===PRESTE ATENÇÃO===|r
    >>|cRXP_WARN_Fale com|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Se esta é sua primeira vez fazendo um Batch de Pedra de Regresso, assista ao guia abaixo|r
    >>|cRXP_WARN_Abra o menu "Definir Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Batch de Pedra de Regresso de Auberdine para Ironforge|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >>https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLIQUE AQUI (é ALTAMENTE aconselhado que você faça isso). Certifique-se de ter definido e testado seu Tamanho de Janela de Batching antes para reduzir o risco de falha|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto 1455/0,-928.40,-4614.51
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Aprenda seus feitiços de classe (Bola de Fogo r3, Atenuar Magia)
    >>Custo Total: 12s
    >>Lembre-se de que você pode querer dinheiro para um |T133024:0|t[Tubo de Bronze] (8s cada) e para o voo de Thelsamar (1s 10c)
    .target Dink
step << skip
    .goto 1455/0,-928.80,-4614.51,-1
    .goto 1455/0,-1249.87,-4793.31,-1
    .vendor 5175 >>Faça logout na coluna acima de |cRXP_FRIENDLY_Dink|r para procurar um |T133024:0|t[Tubo de Bronze] em |cRXP_FRIENDLY_Cogspinner|r se desejar
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Comece a fazer spam com |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step << Gnome
    .goto 1455/0,-1152.39,-4820.914
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Aceite Retornar com Brock
    .target Gryth Thurden
step
    .goto 1455/0,-1152.39,-4820.914
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >>Voe para Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 12-14 ADV Loch Modan Mago AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 14-16 ADV Costa Negra 2 Mago AdE
step
    #completewith next
    +|cRXP_WARN_Enquanto você faz missões em Loch Modan, guarde TUDO dos |T133970:0|t[|cRXP_LOOT_Chunks of Javali Carne]|r que você saqueia para depois|r
step
    .zone Loch Modan >>Voe para Loch Modan
    .isOnQuest 6392 << Gnome
step
    .goto 1432/0,-2602.54,-5832.73
    >>Fale com |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >>Entre no Bunker. Vá para o andar superior
step
    .goto 1432/0,-2634.59,-5842.81
    >>Fale com |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step
    #completewith Rugel2
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Cuidado quando os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Auto-Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo-a-corpo no acerto. Só pode ser lançado à distância)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2729.40,-5534.96
    >>Mate os |cRXP_ENEMY_Stonesplinter Troggs|r e os |cRXP_ENEMY_Stonesplinter Batedores|r. Saqueie-os para seus |cRXP_LOOT_Trogg Pedra Teeth|r
    >>|cRXP_WARN_Cuidado, pois os |cRXP_ENEMY_Stonesplinter Batedores|r lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 14-20 de dano)|r
    >>|cRXP_WARN_Esta é uma área de hiperspawn. Você não deveria precisar sair daqui|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    .goto 1432/0,-2602.54,-5832.73
    >>Fale com |cRXP_FRIENDLY_Cobbleflint|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto 1432/0,-2635.61,-5879.14,12,0
    .goto 1432/0,-2645.27,-5874.91,12,0
    .goto 1432/0,-2631.48,-5847.50,12 >>Entre no Bunker. Vá para o andar superior
step
    #label Rugel2
    .goto 1432/0,-2634.59,-5842.81
    >>Fale com |cRXP_FRIENDLY_Rugelfuss|r
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto 1432/0,-2586.52,-5740.99,20,0
    .goto 1432/0,-2569.14,-5673.30,20,0
    .goto 1432/0,-2531.62,-5638.34,30 >>Volte para o Túnel
step << skip
    .goto 1432/0,-2513.42,-5618.48
    .goto 1432/0,-2881.66,-5351.18,30 >>Pule o logout de Braseiro dentro do túnel para Thelsamar
    .isOnQuest 1339
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Cuidado quando os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Auto-Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo-a-corpo no acerto. Só pode ser lançado à distância)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2643.89,-4817.34,30 >>Vá para Algaz Station
    .isOnQuest 1339
step
    .goto 1432/0,-2659.34,-4822.300
    >>Fale com |cRXP_FRIENDLY_Gothor|r
    .vendor >>Lixo de Comerciante
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto 1432/0,-2676.82,-4825.93
    >>Suba
    >>Converse com |cRXP_FRIENDLY_Stormpike|r
    .turnin 353 >>Entregue Entrega para Lançatroz << Human
    .turnin 1339 >>Entregue Tarefa de Montanhista Lançatroz
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
step
    #completewith Entrance
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Cuidado quando os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Auto-Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo-a-corpo no acerto. Só pode ser lançado à distância)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith Exit
    >>Abate os |cRXP_ENEMY_Ratos do Túnel|r. Saqueie-os para obter |cRXP_LOOT_Orelhas de Ratos do Túnel|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
step
    #label Entrance
    .goto 1432/0,-2972.13,-4836.10,40 >>Vá para a entrada da Mina
    .isOnQuest 307
step
    #label Gear
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37,12,0
    .goto 1432/0,-2971.58,-4854.31,12,0
    .goto 1432/0,-2998.33,-4868.66,12,0
    .goto 1432/0,-2965.79,-4891.84,12,0
    .goto 1432/0,-2983.99,-4892.58,12,0
    .goto 1432/0,-2955.86,-4919.99,12,0
    .goto 1432/0,-2989.51,-4910.05,12,0
    .goto 1432/0,-2993.09,-4945.19,12,0
    .goto 1432/0,-2957.24,-4945.37
    >>Pegue o |cRXP_LOOT_Equipamento de Mineiros|r do chão. |cRXP_WARN_Eles compartilham pontos de desova|r
    >>Tenha cuidado pois os |cRXP_WARN_Geomantes de Ratos do Túnel|cRXP_ENEMY_ lançam|r |T135824:0|t[Proteção Rápida contra Chamas] |r(Lançamento de Si: Confere imunidade a fogo por 10 segundos) e|cRXP_WARN_ |T135824:0|t[Impacto de Fogo] |r(Instantâneo a Distância: Causa 20-30 de dano de Fogo)|cRXP_WARN_
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto 1432/0,-2972.13,-4836.10,40 >>Saia da Mina
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto 1432/0,-2942.06,-4812.55,40,0
	.goto 1432/0,-2971.30,-4769.69,40,0
	.goto 1432/0,-3018.47,-4681.21,40,0
	.goto 1432/0,-3079.98,-4688.38,40,0
	.goto 1432/0,-3054.60,-4752.95,40,0
	.goto 1432/0,-3087.98,-4820.83,40,0
	.goto 1432/0,-3092.67,-4944.27,40,0
	.goto 1432/0,-3023.71,-4980.88,40,0
	.goto 1432/0,-3018.47,-4938.75,40,0
	.goto 1432/0,-3065.36,-4878.41,40,0
	.goto 1432/0,-3038.88,-4834.81,40,0
	.goto 1432/0,-2942.06,-4812.55,40,0
    >>Abate os |cRXP_ENEMY_Batedores de Ratos do Túnel|r, os |cRXP_ENEMY_Daninho Ratatúnel|r, os |cRXP_ENEMY_Kobolds do Túnel|r, e os |cRXP_ENEMY_Forrageadores de Ratos do Túnel|r. Saqueie-os para obter |cRXP_LOOT_Orelhas de Ratos do Túnel|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Kobolds do Túnel|r lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Carrega 2 ataques extras a cada 10 segundos)|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Cuidado quando os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Auto-Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo-a-corpo no acerto. Só pode ser lançado à distância)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto 1432/0,-2643.89,-4817.34,30 >>Vá para Algaz Station
    .isOnQuest 307
step
    .goto 1432/0,-2659.34,-4822.300
    >>Fale com |cRXP_FRIENDLY_Gothor|r
    .vendor >>Lixo de Comerciante
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto 1432/0,-2676.82,-4825.93
    >>Suba
    >>Converse com |cRXP_FRIENDLY_Stormpike|r
    .turnin 307,2 >>Entregue Patas Nojentas
    .target Mountaineer Stormpike
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,35,0
	.goto 1432/0,-2895.45,-5014.91,35,0
	.goto 1432/0,-2957.24,-5067.89,35,0
	.goto 1432/0,-3008.26,-5098.06,35,0
	.goto 1432/0,-3087.43,-5091.25,35,0
	.goto 1432/0,-3046.05,-5189.48,35,0
	.goto 1432/0,-2918.62,-5233.08,35,0
	.goto 1432/0,-2817.66,-5471.86,35,0
	.goto 1432/0,-2809.66,-5343.64,35,0
	.goto 1432/0,-2819.87,-5220.39,35,0
	.goto 1432/0,-2740.98,-5225.170,35,0
	.goto 1432/0,-2794.49,-5102.66,35,0
	.goto 1432/0,-2743.74,-5021.16,35,0
	.goto 1432/0,-2704.57,-4958.430,35,0
	.goto 1432/0,-2645.82,-4895.890,35,0
	.goto 1432/0,-2849.11,-4944.45,35,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Cuidado quando os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Auto-Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo-a-corpo no acerto. Só pode ser lançado à distância)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .xp <13+5500,1 << Gnome
step
    #completewith Boast
    >>Mate os |cRXP_ENEMY_Mangy Mountain Boars|r e os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Grizzled Preto Ursos|r e os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Cliff Lurkers|r e os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Cuidado quando os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Auto-Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo-a-corpo no acerto. Só pode ser lançado à distância)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
    .xp >13+5500,1 << Gnome
step
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Converse com |cRXP_FRIENDLY_Brock|r e com |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Eles podem estar dentro ou fora do prédio|r
    .turnin 6392 >>Entregue Retornar com Brock << Gnome
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 436 >>Aceite Escavação de Ironband
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto 1432/0,-3020.68,-5358.91
    >>Fale com |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Ele pode estar dentro ou fora do edifício|r
    .accept 436 >>Aceite Escavação de Ironband
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+8675 >>Triture até 8675+/11400xp
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6545 >>Triture até 6545+/11400xp
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto 1432/0,-3266.44,-5656.19,50,0
    .goto 1432/0,-3354.99,-5726.64,50,0
    .goto 1432/0,-3425.60,-5738.42,50,0
    .goto 1432/0,-3781.98,-5702.54,20 >>Vá para |cRXP_FRIENDLY_Aldren|r
step << Gnome
    #completewith Boast
    .goto 1432/0,-3781.98,-5702.54
    >>Fale com |cRXP_FRIENDLY_Aldren|r
    .vendor 1214 >>|cRXP_BUY_Compre o |r |T132491:0|t[Cinto do Homem Sábio] |cRXP_BUY_dele (se disponível)|r
    .isQuestAvailable 298
step << Gnome
    >>Fale com |cRXP_FRIENDLY_Ironband|r e |cRXP_FRIENDLY_Magmar|r
    .accept 298 >>Aceite Relatório de Progresso da Escavação
    .target +Prospector Ironband
    .goto 1432/0,-3812.59,-5694.63
    .turnin 436 >>Entregue Escavação de Ironband
    .goto 1432/0,-3783.63,-5713.77
    .target +Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto 1432/0,-3812.59,-5694.63
    >>Fale com |cRXP_FRIENDLY_Ironband|r
    .accept 298 >>Aceite Relatório de Progresso da Escavação
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto 1432/0,-3816.18,-5786.250,30,0
    .goto 1432/0,-4013.68,-5791.58,40,0
    .goto 1432/0,-4124.56,-5742.100,40,0
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Vá para |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto 1432/0,-4296.41,-5694.63
    >>Fale com |cRXP_FRIENDLY_Daryl|r
    .accept 257 >>Aceite Jactância do Caçador
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto 1432/0,-4197.38,-5699.97,45,0
	.goto 1432/0,-4109.39,-5856.89,45,0
	.goto 1432/0,-4055.33,-5760.68,45,0
	.goto 1432/0,-4118.49,-5601.37,45,0
	.goto 1432/0,-4092.57,-5553.35,45,0
	.goto 1432/0,-4128.42,-5517.30,45,0
	.goto 1432/0,-4190.21,-5588.49,45,0
	.goto 1432/0,-4197.38,-5699.97,45,0
    >>Abate os |cRXP_ENEMY_Mountain Buzzards|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto 1432/0,-4258.62,-5650.48,15,0
    .goto 1432/0,-4296.41,-5694.63,20 >>Vá para |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto 1432/0,-4296.41,-5694.63
    >>Fale com |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >>Entregue Jactância do Caçador
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    >>Mate os |cRXP_ENEMY_Mangy Mountain Boars|r e os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os para obter |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Grizzled Preto Ursos|r e os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os para obter |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Cliff Lurkers|r e os |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os para obter |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Cuidado quando os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Auto-Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo-a-corpo no acerto. Só pode ser lançado à distância)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mangy Mountain Boar
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Grizzled Black Bear
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Cliff Lurker
    .mob +Forest Lurker
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto 1432/0,-2849.11,-4944.45,50,0
	.goto 1432/0,-2895.45,-5014.91,50,0
	.goto 1432/0,-2957.24,-5067.89,50,0
	.goto 1432/0,-3008.26,-5098.06,50,0
	.goto 1432/0,-3087.43,-5091.25,50,0
	.goto 1432/0,-3046.05,-5189.48,50,0
	.goto 1432/0,-2918.62,-5233.08,50,0
	.goto 1432/0,-2817.66,-5471.86,50,0
	.goto 1432/0,-2809.66,-5343.64,50,0
	.goto 1432/0,-2819.87,-5220.39,50,0
	.goto 1432/0,-2740.98,-5225.170,50,0
	.goto 1432/0,-2794.49,-5102.66,50,0
	.goto 1432/0,-2743.74,-5021.16,50,0
	.goto 1432/0,-2704.57,-4958.430,50,0
	.goto 1432/0,-2645.82,-4895.890,50,0
	.goto 1432/0,-2849.11,-4944.45,50,0
    .xp 13+6780 >>Farme até 6780+/11400 XP
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto 1432/0,-2902.07,-5398.28,40,0
    .goto 1432/0,-2945.10,-5360.20,40,0
    .goto 1432/0,-3015.71,-5335.73,40,0
    .goto 1432/0,-3025.09,-5318.44,40,0
    .goto 1432/0,-3017.64,-5274.66
    >>Fale com |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_Patrulha pela estrada principal de Thelsamar|r
    .turnin 416,2 >>Entregue Pegando Ratos
    .target Mountaineer Kadrell
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Converse com |cRXP_FRIENDLY_Brock|r e com |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Eles podem estar dentro ou fora do prédio|r
    .turnin 6392 >>Entregue Retornar com Brock
    .target +Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .turnin 298 >>Entregue Relatório de Progresso da Escavação
    .accept 301 >>Aceite Apresente-se a Altaforja
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    >>Converse com |cRXP_FRIENDLY_Brock|r e com |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Eles podem estar dentro ou fora do prédio|r
    .turnin 6392 >>Entregue Retornar com Brock
    .target Brock Stoneseeker
    .goto 1432/0,-3014.88,-5366.820
    .accept 301 >>Aceite Apresente-se a Altaforja
    .goto 1432/0,-3020.68,-5358.91
    .target +Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto 1432/0,-3019.30,-5354.50,10,0
    .goto 1432/0,-3014.88,-5366.820
    >>Fale com |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Ele pode estar dentro ou fora do edifício|r
    .turnin 6392 >>Entregue Retornar com Brock
    .target Brock Stoneseeker
step
    #completewith next
    .goto 1432/0,-2966.06,-5365.72,12,0
    .goto 1432/0,-2969.92,-5377.12,12,0
    >>Entre na Estalagem
    .goto 1432/0,-2954.42,-5394.10,10 >>Vá para |cRXP_FRIENDLY_Vidra|r
step
    .goto 1432/0,-2954.42,-5394.10
    >>Converse com |cRXP_FRIENDLY_Vidra|r
    .accept 418 >>Aceite Chouriço de Thelsamar
    .turnin 418 >>Entregue Chouriço em Thelsamar
    .target Vidra Hearthstove
step
    .goto 1432/0,-2952.55,-5381.91
    >>|cRXP_WARN_NÃO descarte nenhum dos seus extras|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .skill cooking,10 >>Cozinhe |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r em |T133974:0|t[Carne Assada de Porco] até sua |T133971:0|t[Culinária] atingir nível 10
step
    .goto 1432/0,-2952.55,-5381.91
    >>Converse com |cRXP_FRIENDLY_Yanni|r
    >>|cRXP_BUY_Compre o máximo|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_que você precisa/consegue|r
    >>|cRXP_WARN_NÃO desça abaixo de 45 Prateado|r
    .vendor >>Lixo de Comerciante
    .isOnQuest 1338
step
    #completewith next
    #requires Kadrell
    +|cRXP_WARN_Comece a fazer spam com |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step
    #requires Kadrell
    .goto 1432/0,-2929.93,-5424.95
    >>Fale com |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto 1455/0,-1303.71,-4631.08
    >>Converse com |cRXP_FRIENDLY_Stormpike|r
    .turnin 301 >>Entregue Apresente-se a Altaforja
    .target Prospector Stormpike
    .isOnQuest 301
step << skip
    #completewith Monty
    .goto 1455/0,-1305.14,-4615.09,-1
    .goto 1455/0,-1158.00,-4816.48,-1
    .goto 1455/0,-1317.71,-4839.48,30 >>Use Logout Pular para chegar à parte externa do Deeprun Tram
step
    .goto 1455/0,-1249.87,-4793.31
    >>Fale com |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto 1455/0,-1317.71,-4839.48,30,0
    >>Entre no Deeprun Tram
    >>Fale com |cRXP_FRIENDLY_Monty|r
    .accept 6661 >>Aceite Ratos de Porão
    .target Monty
step << Gnome
    >>Usar o |T133942:0|t[Rato Catcher's Flute] nos |cRXP_FRIENDLY_Deeprun Ratos|r no Deeprun Tram
    .complete 6661,1 --Rats Captured (x5)
    .target Deeprun Rat
    .use 17117
step
    >>Fale com |cRXP_FRIENDLY_Monty|r
    >>|cRXP_WARN_Espere a sequência de RP terminar|r << Gnome
    .turnin 6661 >>Entregue Ratos de Porão << Gnome
    .timer 13,Ratos de Deeprun RP << Gnome
    .accept 6662 >>Aceite Espetinhos de... Rato
    .target Monty
    .zoneskip Stormwind City
step
    >>|cRXP_WARN_Monte o Deeprun Tram enquanto lança continuamente|r |T132794:0|t[Conjurar Água r2]
    >>Converse com |cRXP_FRIENDLY_Nipsy|r no outro lado do Deeprun Tram
    .turnin 6662 >>Entregue Espetinhos de... Rato
    .target Nipsy
    .isOnQuest 6662
step
    #label Monty << Human
    .zone Stormwind City >>Entre na Cidade de Ventobravo
    .isOnQuest 1338
step
    #completewith next
    .goto 1453/0,574.95,-8388.30,20,0
    .goto 1453/0,614.33,-8380.77,20,0
    .goto 1453/0,638.26,-8342.22,15 >>Vá para |cRXP_FRIENDLY_Billibub|r
step
    .goto 1453/0,638.26,-8342.22
    >>Fale com |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto 1453/0,600.08,-8427.20
    >>Converse com |cRXP_FRIENDLY_Furen|r
    .turnin 1338 >>Entregue Pedidos de Pico da Tempestade
    .target Furen Longbeard
step
    #completewith next
    .goto 1453/0,663.94,-8451.76,20,0
    .goto 1453/0,686.79,-8473.27,20,0
    .goto 1453/0,678.86,-8562.64,20,0
    .goto 1453/0,711.26,-8587.38,20,0
    .goto 1453/0,737.60,-8557.89,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Vá para |cRXP_FRIENDLY_Baros|r
step
    .goto 1453/0,719.86,-8550.36
    >>Entre no prédio
    >>Converse com |cRXP_FRIENDLY_Baros|r
    .accept 399 >>Aceite Humildes Começos
    .target Baros Alexston
step
    #completewith next
    .goto 1453/0,739.49,-8661.68,15,0
    .goto 1453/0,720.67,-8699.06,15,0
    .goto 1453/0,728.33,-8718.06,15,0
    .goto 1453/0,699.16,-8743.88,15,0
    .goto 1453/0,674.29,-8775.79,15,0
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Pule para cima da tocha, depois caia para ficar sob Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Fair" ou "Low", fique no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe em linha reta para frente|r
    >>|cRXP_WARN_NOTA: Há uma pequena chance de morrer usando este método. Você também pode caminhar normalmente para a Mago Torre se desejar|r
    .link https://youtu.be/gV8-wgQEomc >>https://youtu.be/gV8-wgQEomc >> CLIQUE AQUI para um guia
    .goto 1453/0,861.95,-8990.47,10 >>Viaje para |cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .accept 1861 >>Aceite Lago Espelho << Gnome
    .trainer >>Treine seus feitiços de classe (Impacto de Fogo r2, Inteligência Arcana r2, Explosão Arcana)
    >>Custo Total: 27s
    >>Lembre-se de que você pode querer dinheiro para poções (1-3s cada) e Pergaminhos (50c-3s cada)
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Saia da Torre do Mago
    .goto 1453/0,948.65,-8994.50,10 >>Voe para |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dela (se estiverem disponíveis)|r
    .money <0.0120
    .target Andréa Iserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Voe para |cRXP_FRIENDLY_Adair|r
    .money <0.0090
step
    .goto 1453/0,822.16,-8865.60
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Voe para |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto 1453/0,681.28,-8888.01
    >>Entre no prédio
    >>Fale com |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compre um|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_dele|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Voe para |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto 1453/0,635.44,-8863.81
    >>Fale com |cRXP_FRIENDLY_Keldric|r pela parede
    .vendor 1257 >>|cRXP_BUY_Compre|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .money <0.01
    .target Orlande Bórgia
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Entre no Banco de Ventobravo
step
    .goto 1453/0,614.33,-8932.92
    >>Fale com |cRXP_FRIENDLY_Newton|r
    .bankdeposit 769,4371,730,7207,1941,1711,1478,1712,3012,1180,1181,3013,6889 >>Deposite os itens a seguir no banco:
    >>|T133970:0|t[Pedaço de Carne de Javali]
    >>|T133024:0|t[Tubo de Bronze]
    >>|T133884:0|t[Olhos Murloc]
    >>|T132788:0|t[Frasco de Jennea]
    >>|T132620:0|t[Cask of Merlot]
    >>|T134943:0|t[Pergaminhos]
    >>|T132832:0|t[Ovo Pequeno]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,4371,7207 >>Deposite os itens a seguir no banco:
    >>|T133970:0|t[Pedaço de Carne de Javali]
    >>|T133024:0|t[Tubo de Bronze]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,730,7207 >>Deposite os itens a seguir no banco:
    >>|T133970:0|t[Pedaço de Carne de Javali]
    >>|T133884:0|t[Olhos Murloc]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,730,7207 >>Deposite os itens a seguir no banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T133884:0|t[Olhos Murloc]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 769,7207 >>Deposite os itens a seguir no banco:
    >>|T133970:0|t[Pedaço de Carne de Javali]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 4371,7207 >>Deposite os itens a seguir no banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 730,7207 >>Deposite os itens a seguir no banco:
    >>|T133884:0|t[Olhos Murloc]
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto 1453/0,614.33,-8932.92
    .bankdeposit 7207 >>Deposite o item a seguir no banco:
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto 1453/0,662.46,-8860.76,10,0
    >>Entre na Estalagem
    .goto 1453/0,673.75,-8867.93,10 >>Voe para |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===PRESTE ATENÇÃO===|r
    >>|cRXP_WARN_Fale com|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Abra o menu "Definir Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Hearthstone BATCH de Ventobravo para Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 14-16 ADV Costa Negra 2 Mago AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 16-18 ADV Cerro Oeste Mago AdE


step
    #completewith DeepO
    +|cRXP_WARN_Salve qualquer |T132917:0|t[Luz Peninha] que você conseguir para depois|r
step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>Fale com |cRXP_FRIENDLY_Barithras|r e |cRXP_FRIENDLY_Glynda|r
    .accept 947 >>Aceite Cogumelos da Caverna
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4811 >>Aceite O Cristal Vermelho
    .goto 1439/1,473.63,6439.07
    .target +Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
step
    .goto 1439/1,492.62,6580.99
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .target Thundris Windweaver
step
    #completewith MistV
    .goto 1439/1,592.18,6666.14,50,0
    .goto 1439/1,565.33,6925.96,50,0
    .goto 1439/1,478.21,6985.78,50,0
    >>Mate os |cRXP_ENEMY_Darkshore Threshers|r na água. Saqueie-os para obter seus |cRXP_LOOT_Thresher Olhos|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto 1439/1,438.91,7077.48
--  .goto 1439/1,437.60,7076.17
    >>Pegue a |cRXP_LOOT_Silver Dawning Caixa-forte|r através da parede do barco
    >>|cRXP_WARN_Use a tecla de atalho 'Interagir com Alvo' debaixo da água ao lado da seta|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto 1439/1,349.18,7133.81
--  .goto 1439/1,345.90,7134.68
   >>Pegue a |cRXP_LOOT_Mist Véu Caixa-forte|r através da parede do barco
   >>|cRXP_WARN_Use a tecla de atalho 'Interagir com Alvo' debaixo da água ao lado da seta|r
   >>|cRXP_WARN_Isto leva 5 segundos|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78,50,0
   .goto 1439/1,292.85,7083.16,50,0
   .goto 1439/1,592.18,6666.14,50,0
   .goto 1439/1,565.33,6925.96,50,0
   .goto 1439/1,478.21,6985.78
   >>Mate os |cRXP_ENEMY_Darkshore Threshers|r na água. Saqueie-os para obter seus |cRXP_LOOT_Thresher Olhos|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_Salve os|r |T133884:0|t[Murloc Olhos] |cRXP_WARN_que você obtém dos|r |cRXP_ENEMY_Greymist Coastrunners|r |cRXP_WARN_e dos|r |cRXP_ENEMY_Greymist Seers|r
step
   .goto 1439/1,196.56,6958.71
   >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
   >>|cRXP_WARN_Isto leva 5 segundos|r
   .accept 4723 >>Aceite Criatura Marinha Encalhada
step
   .goto 1439/1,193.29,7084.03
   >>Clique em |cRXP_PICK_Buzzbox 411|r
   .turnin 1001 >>Entregue Buzzbox 411
   .accept 1002 >>Aceite NO TRANSLATION FOUND TO THIS ELEMENT
step
    #completewith SeaTurtle1
    .goto 1439/1,81.28,7118.96,50,0
    >>Use AdE nos |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith SeaTurtle1
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>|cRXP_WARN_Cuidado pois eles lançam |T135914:0|t[Hidrofobia] (Instantâneo Corpo a Corpo: Reduz TODA regeneração de saúde em 50% por 10 minutos)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label SeaTurtle1
    .goto 1439/1,46.57,7433.8,80 >>Vá para o |cRXP_LOOT_Beached Tartaruga Marinha|r
    .isQuestAvailable 4725
step
    #completewith next
    +Salve os |T133884:0|t[Murloc Olhos] que você obtém dos |cRXP_ENEMY_Greymist Warriors|r e |cRXP_ENEMY_Greymist Netters|r
step
    .goto 1439/1,46.57,7433.800
    >>Pegue o |cRXP_LOOT_Beached Tartaruga Marinha|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
step
    #completewith River
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith River
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith RedC
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>|cRXP_WARN_Cuidado pois eles lançam |T135914:0|t[Hidrofobia] (Instantâneo Corpo a Corpo: Reduz TODA regeneração de saúde em 50% por 10 minutos)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label River
    .goto 1439/1,-383.77,7222.89
    >>Usar o |T134865:0|t[Tubo de Amostragem Vazio] na água
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #completewith RedC
    >>Abate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider
step
    #completewith RedC
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #label RedC
    .goto 1439/1,-144.04,6209.82,400 >>Vá para o |cRXP_PICK_The Vermelho Cristal|r
    .isOnQuest 4811
step
    #completewith Bash
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith Bash
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
    .goto 1439/1,-144.04,6209.82
    >>Corra até o |cRXP_PICK_The Vermelho Cristal|r
    >>|cRXP_WARN_Lembre-se de puxar os |cRXP_ENEMY_Raging Moonkins|r que estão ligados entre si|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto 1439/1,166.43,5633.86,175 >>Vá para o |cRXP_PICK_Ancient Chamas|r
    .isOnQuest 957
step
    #completewith next
    .goto 1439/1,161.19,5684.51,0
    >>Abate |cRXP_ENEMY_Anaya Correalba|r. Saque-a para o |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto 1439/1,166.43,5633.86
    >>Clique na |cRXP_PICK_Chama Antiga|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10,50,0
    .goto 1439/1,155.95,5757.00,50,0
    .goto 1439/1,161.19,5684.51,50,0
    .goto 1439/1,108.79,5608.10
    >>Abate |cRXP_ENEMY_Anaya Correalba|r. Saque-a para o |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith RBears
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith RBears
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    +Salve os |T133884:0|t[Murloc Olhos] que você obtém dos |cRXP_ENEMY_Greymist Coastrunners|r e |cRXP_ENEMY_Greymist Seers|r
step
    #label BeachedST
    .goto 1439/1,511.62,5618.58
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto 1439/1,404.20,5796.300,45,0
	.goto 1439/1,327.56,5778.830,45,0
	.goto 1439/1,372.10,5556.130,45,0
	.goto 1439/1,330.18,5437.80,45,0
	.goto 1439/1,322.98,5252.65,45,0
	.goto 1439/1,491.97,5274.48,45,0
	.goto 1439/1,411.40,5376.23,45,0
	.goto 1439/1,419.92,5550.46,45,0
	.goto 1439/1,404.20,5796.300,45,0
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>|cRXP_WARN_Cuidado pois eles lançam |T135914:0|t[Hidrofobia] (Instantâneo Corpo a Corpo: Reduz TODA regeneração de saúde em 50% por 10 minutos)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label RBears
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto 1439/1,370.14,5856.56,50,0
	.goto 1439/1,307.91,5877.96,50,0
	.goto 1439/1,324.29,5922.06,50,0
	.goto 1439/1,328.22,5958.74,50,0
	.goto 1439/1,305.95,5998.48,50,0
	.goto 1439/1,373.41,6018.56,50,0
	.goto 1439/1,328.22,5958.74,50,0
    >>Mate |cRXP_ENEMY_Desbravador Bosquenero|r e |cRXP_ENEMY_Xamã Bosquenero|r
    >>|cRXP_WARN_Cuidado enquanto |cRXP_ENEMY_Blackwood Desbravadores|r lançam|r |T132152:0|t[Surra]|cRXP_WARN_ (Cargas: 2 ataques extras a cada 10 segundos), e |cRXP_ENEMY_Blackwood Windtalkers|r lançam|r |T136022:0|t[Rajada de Vento]|cRXP_WARN_ (atordoamento aoe corpo a corpo)|r
    .complete 985,1 --Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 --Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith Auberdine
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
#loop
	.line Darkshore,38.63,51.25,38.33,50.00,38.18,48.42,38.73,47.62,39.49,47.65,41.40,47.13,41.67,49.47,41.45,50.84,38.63,51.25
	.goto 1439/1,411.40,6095.42,50,0
	.goto 1439/1,431.05,6150.00,50,0
	.goto 1439/1,440.88,6218.99,50,0
	.goto 1439/1,404.85,6253.93,50,0
	.goto 1439/1,355.07,6252.62,50,0
	.goto 1439/1,229.97,6275.32,50,0
	.goto 1439/1,212.28,6173.14,50,0
	.goto 1439/1,226.69,6113.32,50,0
	.goto 1439/1,411.40,6095.42,50,0
    >>Abate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saque-os para obter sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto 1439/1,543.06,6342.57,150 >>Vá para |cRXP_FRIENDLY_Gwennyth|r
    .isOnQuest 982
step
    .goto 1439/1,536.51,6365.28,12,0
    .goto 1439/1,543.06,6342.57
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4723 >>Entregue Beached Sea Criatura - Missão
    .turnin 4725 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Lixo de Comerciante
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto 1439/1,539.13,6409.82,12,0
    .goto 1439/1,600.70,6425.100
    >>Fale com |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith CliffRi
    +Equipe o |T134797:0|t[Lágrima de Luto]
    .use 5611
    .itemcount 5611,1
    .itemStat 17,LEVEL,<16
step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compre 15|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compre 10|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compre 5|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto 1439/1,488.69,6451.300,20,0
    .goto 1439/1,487.38,6481.870,20,0
    .goto 1439/1,489.35,6506.32,15 >>Vá para |cRXP_FRIENDLY_Hollee|r
step
    .goto 1439/1,489.35,6506.32
    >>Fale com |cRXP_FRIENDLY_Hollee|r
    .accept 729 >>Aceite The Absent Minded Prospector
    .target Archaeologist Hollee
step
    .goto 1439/1,488.69,6564.830
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre o máximo|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_que você precisa/consegue|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto 1439/1,488.69,6564.830
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre uma|r |T133634:0|t[Brown Couro Satchel] |cRXP_BUY_dele|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto 1439/1,492.62,6580.99
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 4762 >>Entregue Rio Fontescarpa
    .accept 4763 >>Aceite A Corrupção de Bosque Negro
    .target Thundris Windweaver
step
    .goto 1439/1,472.97,6557.85
    >>Fale com |cRXP_FRIENDLY_Alanndarian|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto 1439/1,445.46,6536.01
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    .turnin 982,2 >>Entregue Oceano Profundo, Vasto Mar
    .target Gorbold Steelhand
step
    #completewith next
    .goto 1439/1,476.25,6479.25,15,0
    .goto 1439/1,478.21,6446.50,15,0
    .goto 1439/1,473.63,6439.07,20 >>Vá para Glynda
step
    .goto 1439/1,473.63,6439.07
    >>Fale com |cRXP_FRIENDLY_Glynda|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
step
    .goto 1439/1,465.11,6416.80
    >>Usar |T133748:0|t[Vazio Purificação Tigela] e |T134865:0|t[Vazio Água Tube] no Poço da Lua
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .collect 14339,1,4812,1 --Moonwell Water Tube (1)
    .use 12346
    .use 14338
step
    >>Fale com |cRXP_FRIENDLY_Tharnariun|r, |cRXP_FRIENDLY_Terenthis|r, e depois |cRXP_FRIENDLY_Elissa|r acima
    .turnin 2138 >>Entregue Purificação dos infectados
    .accept 2139 >>Aceite A Esperança de Tharnariun
    .target +Tharnariun Treetender
    .goto 1439/1,397.65,6437.33
    .turnin 985 >>Entregue Uma grande ameaça?
    .accept 986 >>Aceite Um Mestre Perdido
    .target +Terenthis
    .goto 1439/1,362.93,6434.27
    .accept 965 >>Aceite The Torre of Althalaxx
    .goto 1439/1,369.48,6449.99,8,0
    .goto 1439/1,384.55,6431.65
    .target +Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +Equipe |T132491:0|t[Cinto do Homem Sábio]
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto 1439/1,-157.79,6206.770
    >>Clique em |cRXP_PICK_The Vermelho Cristal|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    >>|cRXP_WARN_Lembre-se de puxar os |cRXP_ENEMY_Raging Moonkins|r que estão ligados entre si|r
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
step
    #completewith GrainSample
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saque-os para obter suas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .goto 1439/1,47.88,6748.67
    >>Fale com |cRXP_FRIENDLY_Astérion|r
    .turnin 957,3 >>Entregue Bashal'Aran
    .target Asterion
step
    #label GrainSample
    .goto 1439/1,-376.56,6805.87
    >>Abra |cRXP_PICK_Blackwood Grão Stores|r. Saque a |cRXP_LOOT_Amostra de Grão Bosquenero|r
    >>|cRXP_WARN_Agro os inimigos que o protegem, lance|r |T135848:0|t[Novane Congelante]|cRXP_WARN_, saque a |cRXP_LOOT_Amostra de Grão Bosquenero|r, depois corra em direção à |cRXP_ENEMY_Matriarca do Covil|r para longe dos inimigos que aparecem|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .collect 12342,1,4673,1 --Blackwood Grain Sample (1)
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    #completewith DenM
    .goto 1439/1,-485.95,6763.95,20,0
    .goto 1439/1,-489.88,6724.22,20,0
    .goto 1439/1,-436.82,6694.96,30 >>Vá para |cRXP_ENEMY_Matriarca do Covil|r
step
    .goto 1439/1,-432.24,6664.39
    >>Mate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Cuidado quando a |cRXP_ENEMY_Matriarca do Covil|r e seus |cRXP_ENEMY_Filhotes Espinhosos|r lançarem|r |T132141:0|t[Assolar] |cRXP_WARN_(atordoamento de 2 segundos)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto 1439/1,-432.24,6664.39
    >>Mate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Cuidado quando a |cRXP_ENEMY_Matriarca do Covil|r e seus |cRXP_ENEMY_Filhotes Espinhosos|r lançarem|r |T132141:0|t[Assolar] |cRXP_WARN_(atordoamento de 2 segundos)|r
    >>|cRXP_WARN_Divida e Puxe |cRXP_ENEMY_Matriarca do Covil|r com sua|r |T133714:0|t[Dinamite Grosseira]
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,1
step
    #completewith Talisman
    >>Abate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-451.23,6870.06
    >>Abra |cRXP_PICK_Blackwood Nut Stores|r. Saque a |cRXP_LOOT_Amostra de Castanha Bosquenero|r :3
    >>|cRXP_WARN_Agro os inimigos que o protegem, lance|r |T135848:0|t[Novane Congelante]|cRXP_WARN_, saque a |cRXP_LOOT_Amostra de Castanha Bosquenero|r, depois corra para o norte|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto 1439/1,-520.01,6873.99
    >>Abra |cRXP_PICK_Blackwood Fruit Stores|r. Saque a |cRXP_LOOT_Amostra de Fruta Bosquenero|r
    >>Mate os |cRXP_ENEMY_Blackwood Warriors|r que atacam
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto 1439/1,-497.74,6887.53
    .cast 16072 >>Usar |T134712:0|t[Cheio Purificação Tigela] perto da fogueira para invocar |cRXP_ENEMY_Zabraxxis|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .timer 20,O RP Corrompido Bosquenero
    .use 12347
step
    #label Talisman
    .goto 1439/1,-480.05,6888.84
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>Mate |cRXP_ENEMY_Zabraxxis|r
    >>Saque |cRXP_PICK_Saco de Demônio de Zabraxxis|r que cai no chão. Saque dele o |cRXP_LOOT_Talisman of Corrupção|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto 1439/1,-417.83,7262.19
    >>Clique em |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
    .isQuestComplete 1002
step
    .goto 1439/1,-417.83,7262.19
    >>Clique em |cRXP_PICK_Buzzbox 323|r
    .accept 1003 >>Aceite Buzzbox 525
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    >>Abate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-537.04,7542.970
    >>Saque a |cRXP_LOOT_Tartaruga Marinha Encalhada|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02,60,0
    .goto 1439/1,-578.30,6956.96,60,0
    .goto 1439/1,-629.39,7042.98,60,0
    .goto 1439/1,-538.35,7099.75,60,0
    .goto 1439/1,-499.70,7221.14,60,0
    .goto 1439/1,-674.59,7333.80,60,0
    .goto 1439/1,-637.91,7415.02
    >>Abate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto 1439/1,-417.83,7262.19
    >>Clique em |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>Entregue NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
step
    .goto 1439/1,-658.87,7246.47
    >>Fale com |cRXP_FRIENDLY_Balthule|r
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite The Torre of Althalaxx
    .target Balthule Shadowstrike
step
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90,50,0
    .goto 1439/1,-875.02,7228.570,50,0
    .goto 1439/1,-684.41,7176.60,50,0
    .goto 1439/1,-749.91,7153.90
    >>Mate |cRXP_ENEMY_Dark Strand Fanatics|r. Saque deles |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto 1439/1,-658.87,7246.47
    >>Fale com |cRXP_FRIENDLY_Balthule|r
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite The Torre of Althalaxx
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto 1439/1,-660.83,6873.99,30 >>Entre na caverna
step << skip
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_Lembre-se de Pular a Caverna em breve|r
step
    #completewith next
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67,8,0
    >>Saque os azuis |cRXP_LOOT_Scaber Stalks|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto 1439/1,-690.31,6751.29,12,0
    .goto 1439/1,-706.68,6748.23,12,0
    .goto 1439/1,-719.13,6787.530,12,0
    >>Fique no nível superior da caverna. Desça se não houver |cRXP_LOOT_Death Cap|r no nível superior
    >>Saque a laranja |cRXP_LOOT_Death Cap|r no chão, no final do caminho superior da caverna
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto 1439/1,-663.45,6877.49,8,0
    .goto 1439/1,-679.17,6848.67,8,0
    .goto 1439/1,-666.73,6819.41,8,0
    .goto 1439/1,-680.48,6779.67
    >>Saque a primeira |cRXP_LOOT_Scaber Stalks|r na entrada da caverna depois de saquear a |cRXP_LOOT_Death Cap|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 947,1 --Scaber Stalk (5)
step << skip
    .goto 1439/1,-658.21,6825.96
    .goto 1439/1,210.32,6739.501,30 >>|cRXP_WARN_Faça um Logout Pular dentro da caverna|r
    .isOnQuest 4763
step
    #completewith next
    .subzone 442 >>Viaje para Auberdine
    .isOnQuest 4763
step
    .goto 1439/1,492.62,6580.99
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 4763,1 >>Entregue O Bosque Negro Corrompido
    .target Thundris Windweaver
step
    .goto 1439/1,488.69,6564.830
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre um|r |T133634:0|t[Bolsa de Couro Marrom] |cRXP_BUY_dele|r
    >>|cRXP_WARN_NÃO desça de 30 Pratas|r
    .target Dalmond
step
    .goto 1439/1,397.65,6437.33
    >>Converse com |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2139,1 >>Entregue A Esperança de Tharnariun
    .target Tharnariun Treetender
step
    >>Fale com |cRXP_FRIENDLY_Glynda|r, |cRXP_FRIENDLY_Barithras|r, e |cRXP_PICK_Cartaz de Procurado|r
    .turnin 4813,2 >>Entregue Fragmentos incrustados
    .target +Sentinel Glynda Nal'Shea
    .goto 1439/1,473.63,6439.07
    .turnin 947 >>Entregue Cogumelos da Caverna
    .accept 948 >>Aceite Onu
    .target +Barithras Moonshade
    .goto 1439/1,497.21,6427.72
    .accept 4740 >>Aceite WANTED: Lodofundo!
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto 1439/1,543.06,6342.57
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4727 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step
    .goto 1439/1,515.55,6406.32
    >>|cRXP_WARN_===PRESTE ATENÇÃO===|r
    >>|cRXP_WARN_Fale com|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Abra o menu "Definir Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Pedra de Retorno BATCH de Auberdine para Cidade de Ventobravo|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 16-18 ADV Cerro Oeste Mago AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 18-20 ADV Costa Negra 3 Mago AdE

step
    #completewith JenneaT
    +|cRXP_WARN_NOTA: Você precisa de 12 pilhas de cada pano (|r|T132911:0|t[Lã]|cRXP_WARN_,|r |T132905:0|t[Seda]|cRXP_WARN_,|r |T132892:0|t[Magitrama]|cRXP_WARN_,|r e |T132903:0|t[Runatrama]|cRXP_WARN_) para fazer as entregas de pano depois. Você obterá estes naturalmente conforme sobe de nível|r
step << skip
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Voe para |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto 1453/0,681.28,-8888.01
    >>Entre no prédio
    >>Fale com |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compre um|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_dele|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #sticky
    #label Bank2
    >>Fale com |cRXP_FRIENDLY_Newton|r
    .bankdeposit 17056,5354,2592,6889 >>Deposite os itens a seguir no banco:
    >>|T132917:0|t[Pena de Luz]
    >>|T133469:0|t[Carta para Delgren]
    >>|T132911:0|t[Lã]
    >>|T132832:0|t[Ovo Pequeno]
    .target Newton Burnside
step
    .goto 1453/0,614.33,-8932.92
    >>Fale com |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 730,7207 >>Retire os seguintes itens do seu banco: << Gnome
    .bankwithdraw 730,16115 >>Retire os seguintes itens do seu banco: << Human
    >>|T133884:0|t[Olhos Murloc]
    >>|T132788:0|t[Frasco de Jennea] << Gnome
    >>|T132763:0|t[Caixote de Osric] << Human
    .target Newton Burnside
step
    #requires Bank2
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Pule para cima da tocha, depois caia para ficar sob Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Fair" ou "Low", fique no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe em linha reta para frente|r
    >>|cRXP_WARN_NOTA: Há uma pequena chance de morrer usando este método. Você também pode caminhar normalmente para a Mago Torre se desejar|r
    .link https://youtu.be/gV8-wgQEomc >>https://youtu.be/gV8-wgQEomc >> CLIQUE AQUI para um guia
    .goto 1453/0,861.95,-8990.47,10 >>Viaje para |cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto 1453/0,861.95,-8990.47
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine seus feitiços de classe (Golpe Flamejante)
    >>Custo Total: 15s
    .target Jennea Cannon
step
    .goto 1453/0,635.44,-8863.81
    >>Fale com |cRXP_FRIENDLY_Keldric|r pela parede
    .vendor 1257 >>|cRXP_BUY_Compre|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Orlande Bórgia
    .money <0.14
step
    #completewith next
    .goto 1453/0,618.90,-8796.58,12,0
    .goto 1453/0,612.99,-8795.96,10 >>Vá para |cRXP_FRIENDLY_Woo Enviar Ping|r
step
    .goto 1453/0,612.99,-8795.96
    >>Fale com |cRXP_FRIENDLY_Woo Enviar Ping|r
    .train 1180 >>Treine |T132321:0|t[Adagas]
    .target Woo Ping
step
    #completewith next
    .goto 1453/0,612.45,-8806.18,12,0
    .goto 1453/0,528.43,-8850.28,20,0
    .goto 1453/0,532.20,-8863.72,15,0
    .goto 1453/0,490.12,-8835.67,10 >>Vá para |cRXP_FRIENDLY_Dungar|r
step << Human
    .goto 1453/0,490.12,-8835.67
    >>Fale com |cRXP_FRIENDLY_Dungar|r
    .turnin 6261 >>Entregue Dungar Tragolongo
    .accept 6285 >>Aceite Retornar a Lewis
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto 1453/0,490.12,-8835.67
    >>Fale com |cRXP_FRIENDLY_Dungar|r
    .fp Stormwind City >>Aprenda a rota de voo para a Cidade de Ventobravo << Gnome
    .fly Westfall >>Voe para Cerro Oeste << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Desça para o ressalto abaixo de |cRXP_FRIENDLY_Dungar|r
step << Gnome
    #completewith next
    .goto 1429/0,421.28,-9104.28,40 >>Saia de Ventobravo
step << skip
    #completewith next
    #requires Stormwind1
    .goto 1429/0,44.35,-9458.41,30 >>Vá para a Estalagem de Vila de Ouro do Sol
step << skip
    #label GoldshireTrain
    .goto 1429/0,34.28,-9472.99
    >>Pule para o Lustre no andar de baixo se você não tiver a montaria, caso contrário pule para cima a partir da Cadeira
    >>Fale com |cRXP_FRIENDLY_Zaldimar|r através da parede
    .accept 1919 >>Aceite Relatório para Jennea
    .trainer >>Treine seus feitiços de classe (Golpe Flamejante)
    >>Custo Total: 15s
step << skip
    .goto 1429/0,8.25,-9460.03
    >>Fale com |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Compre um|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_do vendedor|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto 1429/0,16.23,-9462.580
    >>Fale com |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Compre 45|r |T132796:0|t[Melão Suco] |cRXP_BUY_do vendedor|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto 1429/0,529.57,-9363.050
    >>Usar |T132788:0|t[Jennea's Frasco] na cachoeira
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>Fale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Verna|r
    .accept 64 >>Aceite A Herança Esquecida
    .accept 109 >>Aceite Reportar-se a Miguel Mantoforte
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .accept 151 >>Aceite Pobre Velha Brancurinha
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
step << Gnome
    #completewith Gryan
    >>Abra os |cRXP_PICK_Sacos de Aveia|r no chão. Saque-os por |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    >>Fale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r e depois |cRXP_FRIENDLY_Salma|r dentro
    .accept 9 >>Aceite Os Campos da Morte
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 36 >>Entregue Cozido de Costa Negra
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step << Gnome
    #completewith Gryan
    .goto 1436/0,1142.77,-10140.13,60,0
    >>Ataque em área os |cRXP_ENEMY_Harvest Watchers|r e os |cRXP_ENEMY_Harvest Golems|r. Saque-os para obter |cRXP_LOOT_Flasks of Oil|r e |cRXP_LOOT_Hops|r
    >>|cRXP_WARN_Lembre-se de|r |T135826:0|t[Golpe Flamejante]|cRXP_WARN_/|r|T136116:0|t[Explosão Arcana] |cRXP_WARN_AoE agora|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step << Gnome
    #completewith next
    >>Ataque em área os |cRXP_ENEMY_Young Goretusks|r. Saque-os para obter |cRXP_LOOT_Goretusk Livers|r e |cRXP_LOOT_Goretusk Snouts|r
    >>Ataque em área os |cRXP_ENEMY_Young Fleshrippers|r. Saque-os para obter |cRXP_LOOT_Stringy Vulture Carne|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
step
    #label Gryan << Gnome
	>>Fale com |cRXP_FRIENDLY_Gryan|r e |cRXP_FRIENDLY_Danuvin|r << Gnome
	>>Fale com |cRXP_FRIENDLY_Gryan|r e depois com |cRXP_FRIENDLY_Lewis|r dentro << Human
    .turnin 109 >>Entregue Miguel Mantoforte << Gnome
    .accept 65 >>Aceitar A Irmandade Défias
    .accept 12 >>Aceite A Milícia do Povo << Gnome
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 6285 >>Entregue Volte para Lewis << Human
    .goto 1436/0,1021.60,-10500.61 << Human
    .accept 102 >>Aceite Patrulhando Cerro Oeste << Gnome
    .goto 1436/0,1041.97,-10511.13 << Gnome
	.target +Captain Danuvin << Gnome
    .target +Quartermaster Lewis << Human
step
    .goto 1436/0,1127.37,-10636.43
	>>Fale com |cRXP_FRIENDLY_Galiaan|r
    .accept 153 >>Aceite Bandanas de Couro Vermelho
	.target Scout Galiaan
step
    .goto 1436/0,1166.57,-10653.47
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 45|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto 1436/0,1166.57,-10653.47
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 40|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto 1436/0,1166.57,-10653.47
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 35|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto 1436/0,1166.57,-10653.47
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 30|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto 1436/0,1166.57,-10653.47
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 25|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto 1436/0,1166.57,-10653.47
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 20|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto 1436/0,1166.57,-10653.47
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 15|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto 1436/0,1166.57,-10653.47
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 10|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto 1436/0,1166.57,-10653.47
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 5|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,5,64,1 --Melon Juice (5)
	.target Innkeeper Heather
    .money <0.05
step
    #completewith Grayson
    >>Abra os |cRXP_PICK_Sacos de Aveia|r no chão. Saque-os por |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith Oil
    >>Ataque em área os |cRXP_ENEMY_Goretusks|r. Saque-os para obter |cRXP_LOOT_Goretusk Livers|r e |cRXP_LOOT_Goretusk Snouts|r
    >>Ataque em área os |cRXP_ENEMY_Fleshrippers|r. Saque-os para obter |cRXP_LOOT_Stringy Vulture Carne|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith Compass
    .goto 1436/0,1635.92,-10621.27,60,0
    >>Ataque em área os |cRXP_ENEMY_Harvest Watchers|r. Saque-os para obter |cRXP_LOOT_Flasks of Oil|r e |cRXP_LOOT_Hops|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
step
    #completewith Oil
    >>Ataque em área os |cRXP_ENEMY_Defias|r. Saque-os para obter |cRXP_LOOT_Red Couro Bandanas|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Smuggler
    .mob Defias Trapper
    .mob Defias Looter
    .mob Defias Pillager
step
    #label Compass
    .goto 1436/0,1748.27,-10672.13
    >>Abra o |cRXP_PICK_Alexston's Baú|r. Saqueie-o para obter o |cRXP_LOOT_A Simple Compass|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27,60,0
    .goto 1436/0,1708.02,-10578.80,60,0
    .goto 1436/0,1772.07,-10493.63,60,0
    .goto 1436/0,1839.27,-10496.90,60,0
    .goto 1436/0,1863.07,-10251.20,60,0
    .goto 1436/0,1635.92,-10621.27
    >>Ataque em área os |cRXP_ENEMY_Harvest Watchers|r e os |cRXP_ENEMY_Harvest Golems|r. Saque-os para obter |cRXP_LOOT_Flasks of Oil|r e |cRXP_LOOT_Hops|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step
    #completewith next
    +|cRXP_WARN_Procure por |cRXP_ENEMY_Velho Olho-turvo|r. Tente ficar perto da borda da crista para não perdê-lo|r
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1952.67,-10751.7,60,0
    .goto 1436/0,1991.52,-10927.40,60,0
    .goto 1436/0,1874.97,-10996.000,60,0
    .goto 1436/0,1929.22,-11019.80,60,0
    .goto 1436/0,1917.67,-11086.77,30 >>Ataque em área os Acampamentos Gnoll
    >>Ataque em área os |cRXP_ENEMY_Riverpaw Herbalists|r, os |cRXP_ENEMY_Riverpaw Mongrels|r e os |cRXP_ENEMY_Riverpaw Brutes|r. Saque-os para obter |cRXP_LOOT_Gnoll Paws|r
    >>Se você encontrar |cRXP_ENEMY_Velho Olho-turvo|r, pule este passo
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Herbalist
    .mob Riverpaw Mongrel
    .mob Riverpaw Brute
step
    #completewith next
    +|cRXP_WARN_Encontre |cRXP_ENEMY_Velho Olho-turvo|r. Leve-o para|r |cRXP_FRIENDLY_Grayson|r
    .unitscan Old Murk-Eye
step
    #label Grayson
    .goto 1436/0,1965.97,-11407.13
    >>Fale com |cRXP_FRIENDLY_Grayson|r
    .accept 104 >>Aceite O Mar Não Está para Peixe
    .target Captain Grayson
step
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1795.87,-11402.47,70,0
    .goto 1436/0,1778.37,-11374.70,70,0
    .goto 1436/0,1829.47,-11357.20,70,0
    .goto 1436/0,1900.52,-11319.87,70,0
    .goto 1436/0,1955.12,-11284.17,70,0
    .goto 1436/0,1984.17,-11236.33,70,0
    .goto 1436/0,1999.57,-11160.50,70,0
    .goto 1436/0,2009.37,-11093.53,70,0
    .goto 1436/0,2042.27,-11064.37,70,0
    .goto 1436/0,2062.22,-11032.40,70,0
    .goto 1436/0,2076.57,-10959.13,70,0
    .goto 1436/0,2097.22,-10934.40
    >>Ataque em área o |cRXP_ENEMY_Velho Olho-turvo|r. Saque-o para obter a |cRXP_LOOT_Escama de Velho Olho-turvo|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto 1436/0,1965.97,-11407.13
    >>Fale com |cRXP_FRIENDLY_Grayson|r
    .accept 103 >>Aceite Keeper of the Chamas
    .turnin 103,1 >>Entregue Keeper of the Chamas
    .turnin 104,3 >>Entregue O Mar Não Está para Peixe
    .target Captain Grayson
step
    #completewith next
    >>Ataque em área os |cRXP_ENEMY_Defias Knuckledusters|r e os |cRXP_ENEMY_Defias Highwaymen|r. Saque-os para obter |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Defias Highwaymen|r lançam|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_(causa o dobro de dano por trás)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto 1436/0,1454.97,-11272.73
    >>Fale com |cRXP_FRIENDLY_Grimbooze|r
    .accept 117 >>Aceite Cervaforte
    .turnin 117 >>Entregue Cervaforte
    .target Grimbooze Thunderbrew
step
    #completewith next
    .goto 1436/0,1309.72,-11213.000,60,0
    .goto 1436/0,1206.12,-11142.30,60,0
    .goto 1436/0,1177.07,-11100.30,60,0
    >>Ataque em área os |cRXP_ENEMY_Defias Knuckledusters|r e os |cRXP_ENEMY_Defias Highwaymen|r. Saque-os para obter |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Defias Highwaymen|r lançam|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_(causa o dobro de dano por trás)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto 1436/0,1193.87,-11078.60,60 >>Vá para o final de The Dagger Hills
    .isOnQuest 153
step
    #completewith Footpads
    >>Abra os |cRXP_PICK_Sacos de Aveia|r no chão. Saque-os por |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith AoE1
    >>Ataque em área os |cRXP_ENEMY_Goretusks|r. Saque-os para obter |cRXP_LOOT_Goretusk Livers|r e |cRXP_LOOT_Goretusk Snouts|r
    >>Ataque em área os |cRXP_ENEMY_Fleshrippers|r. Saque-os para obter |cRXP_LOOT_Stringy Vulture Carne|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Great Goretusk
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith next
    >>Ataque em área os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os em busca de seus |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Defias Trappers|r usam|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_(causa dano dobrado pelas costas) e|r |T132149:0|t[Rede] |cRXP_WARN_(imobiliza por 9 segundos)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label AoE1
    .goto 1436/0,1383.92,-10636.43,60,0
    .goto 1436/0,1328.97,-10454.90,60,0
    .goto 1436/0,1414.72,-10314.43,60,0
    .goto 1436/0,1389.52,-10270.330,60,0
    .goto 1436/0,1457.77,-10209.90,150 >>Vá para The Molsen Farm
    .isOnQuest 153
step
    #completewith Watch
    .goto 1436/0,1457.77,-10209.90,60,0
    >>Ataque em área os |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    #completewith Furlbrows
    >>Ataque em área os |cRXP_ENEMY_Young Goretusks|r. Saqueie-os em busca de seus |cRXP_LOOT_Fígados de Goretusco|r e |cRXP_LOOT_Focinhos de Goretusco|r
    >>Ataque em área os |cRXP_ENEMY_Fleshrippers|r e os |cRXP_ENEMY_Young Fleshrippers|r. Saqueie-os em busca de sua |cRXP_LOOT_Carne de Abutre Fibrosa|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto 1436/0,1471.77,-10022.07,60,0
    .goto 1436/0,1402.12,-10018.80,60,0
    .goto 1436/0,1310.77,-9885.10
    >>Ataque em área os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os em busca de seus |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Defias Trappers|r usam|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_e|r |T132149:0|t[Rede]
    >>|cRXP_WARN_Pule este passo se você não tem pelo menos 10/15 em ambos |cRXP_ENEMY_Defias Trappers|r e|r |cRXP_ENEMY_Defias Smugglers|r
    .complete 153,1,1 --Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
    .complete 12,1 --Defias Trapper (15)
    .mob +Defias Trapper
    .complete 12,2 --Defias Smuggler (15)
    .mob +Defias Smuggler
step
    #completewith next
    .goto 1436/0,1310.77,-9885.10,60,0
    >>Ataque em área os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os em busca de seus |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Defias Trappers|r usam|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_e|r |T132149:0|t[Rede]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto 1436/0,1290.12,-9849.40
    >>Abra o |cRXP_PICK_Furlbrow's Wardrobe|r. Saqueie-o para obter o |cRXP_LOOT_Furlbrow's Pocket Vigiar|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto 1436/0,1249.17,-9898.87,60,0
    .goto 1436/0,1207.17,-9940.4,60,0
    >>Ataque em área os |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1195.97,-9750.00,60,0
    .goto 1436/0,1024.12,-9697.50
    >>Ataque em área os |cRXP_ENEMY_Riverpaw Batedores|r e os |cRXP_ENEMY_Riverpaw Gnolls|r. Saqueie-os em busca de suas |cRXP_LOOT_Garras de Gnoll|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto 1436/0,1184.07,-9623.77,60,0
    .goto 1436/0,1133.67,-9649.43,60,0
    .goto 1436/0,1058.07,-9591.80
    >>Ataque em área os |cRXP_ENEMY_Murloc Coastrunners|r e os |cRXP_ENEMY_Murloc Raiders|r. Saqueie-os em busca de seus |cRXP_LOOT_Olhos de Murloc|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto 1436/0,1037.07,-9849.17
    >>Ataque em área os |cRXP_ENEMY_Defias Footpads|r. Saqueie-os em busca de seus |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Defias Footpads|r usam|r |T132090:0|t[Punhalada pelas Costas]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto 1436/0,1037.07,-9849.17
    >>Abra os |cRXP_PICK_Sacos de Aveia|r no chão. Saque-os por |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>Fale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Verna|r
    .turnin 64 >>Entregue A Herança Esquecida
    .target +Farmer Furlbrow
    .goto 1436/0,918.42,-9851.50
    .turnin 151 >>Entregue Pobre Velha Brancurinha
    .goto 1436/0,919.82,-9852.90
    .target +Verna Furlbrow
step
    .goto 1436/0,926.47,-10207.80,80,0
    .goto 1436/0,908.27,-10506.000
    >>Ataque em área os |cRXP_ENEMY_Goretusks|r e os |cRXP_ENEMY_Young Goretusks|r. Saqueie-os em busca de seus |cRXP_LOOT_Fígados de Goretusco|r e |cRXP_LOOT_Focinhos de Goretusco|r
    >>Ataque em área os |cRXP_ENEMY_Fleshrippers|r e os |cRXP_ENEMY_Young Fleshrippers|r. Saqueie-os em busca de sua |cRXP_LOOT_Carne de Abutre Fibrosa|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto 1436/0,1167.27,-10110.73,60,0
    .goto 1436/0,1207.17,-9940.40
    >>Ataque em área os |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto 1436/0,1207.17,-9940.40
    .xp 17+11890 >>Suba até 11890+/17700xp
    .isQuestComplete 12
step
    .goto 1436/0,1207.17,-9940.40
    >>|cRXP_WARN_Pule este passo se você completou o objetivo de The People's Militia|r
    .xp 17+12800 >>Suba até 12800+/17700xp
step
    >>Fale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r e depois |cRXP_FRIENDLY_Salma|r dentro
    .turnin 9,1 >>Entregue Campos de Matança
    .vendor >>Lixo de Comerciante
    .target +Farmer Saldean
    .goto 1436/0,1055.27,-10128.70
    .turnin 22 >>Vá para Empadão de Fígado de Goretusco
    .turnin 38 >>Entregue Cozido de Costa Negra
    .goto 1436/0,1041.97,-10112.13
    .target +Salma Saldean
step
	>>Fale com |cRXP_FRIENDLY_Gryan|r e com |cRXP_FRIENDLY_Danuvin|r
    .turnin 12 >>Entregue The People's Militia
    .target +Gryan Stoutmantle
    .goto 1436/0,1045.12,-10508.80
    .turnin 102,1 >>Entregue Patrulhando Cerro Oeste
    .goto 1436/0,1041.97,-10511.13
	.target +Captain Danuvin
    .isQuestComplete 12
step
    .goto 1436/0,1041.97,-10511.13
	>>Fale com |cRXP_FRIENDLY_Danuvin|r
    .turnin 102,1 >>Entregue Patrulhando Cerro Oeste
	.target Captain Danuvin
step
    .goto 1436/0,1127.37,-10636.43
	>>Fale com |cRXP_FRIENDLY_Galiaan|r
    .turnin 153,2 >>Entregue Bandanas de Couro Vermelho
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_Comece a fazer spam com |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step
    #completewith next
    .goto 1436/0,1037.07,-10628.27
	>>Fale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
	.target Thor
step
    #completewith next
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Pule para cima da tocha, depois caia para ficar sob Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Fair" ou "Low", fique no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe em linha reta para frente|r
    >>|cRXP_WARN_NOTA: Há uma pequena chance de morrer usando este método. Você também pode caminhar normalmente para a Mago Torre se desejar|r
    .link https://youtu.be/gV8-wgQEomc >>https://youtu.be/gV8-wgQEomc >> CLIQUE AQUI para um guia
    .goto 1453/0,861.95,-8990.47,10 >>Viaje para |cRXP_FRIENDLY_Jennea|r
step
    .goto 1453/0,861.95,-8990.47
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .turnin 1861,1 >>Vá para o Lago Espelho
--   .turnin 1919 >> Turn in Report to Jennea
    .trainer >>Treine seus feitiços de classe (Bola de Fogo r4)
    >>Custo Total: 18s
    .target Jennea Cannon
step
    #completewith next
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Saia da Torre do Mago
    .goto 1453/0,948.65,-8994.50,10 >>Voe para |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dela (se estiverem disponíveis)|r
    .target Andréa Iserian
step
    #completewith next
    .goto 1453/0,958.74,-8987.870,20,0
    .goto 1453/0,941.80,-8918.49,20,0
    .goto 1453/0,916.79,-8891.960,20,0
    .goto 1453/0,948.65,-8816.30,20,0
    .goto 1453/0,946.64,-8803.31,20,0
    .goto 1453/0,970.57,-8772.740,20,0
    .goto 1453/0,1030.92,-8747.20,20,0
    .goto 1453/0,1049.34,-8750.330,20,0
    .goto 1453/0,1093.16,-8779.020,10 >>Vá para |cRXP_FRIENDLY_Argos|r
step
    .goto 1453/0,1093.16,-8779.020
    >>Fale com |cRXP_FRIENDLY_Argos|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
step
    .goto 1453/0,822.16,-8865.60
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,661.38,-8858.16,12,0
    .goto 1453/0,680.61,-8829.39,12,0
    .goto 1453/0,717.44,-8847.32,12,0
    .goto 1453/0,693.24,-8891.51,12,0
    .goto 1453/0,681.28,-8888.01,10 >>Voe para |cRXP_FRIENDLY_Roberto|r
step
    .goto 1453/0,681.28,-8888.01
    >>Entre no prédio
    >>Fale com |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compre um|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_dele|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto 1453/0,680.61,-8828.67,15,0
    .goto 1453/0,635.44,-8863.81,8 >>Voe para |cRXP_FRIENDLY_Keldric|r
step
    .goto 1453/0,635.44,-8863.81
    >>Fale com |cRXP_FRIENDLY_Keldric|r pela parede
    .vendor 1257 >>|cRXP_BUY_Compre|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Orlande Bórgia
step
    #completewith Bank3
    .goto 1453/0,637.59,-8889.81,10 >>Entre no Banco de Ventobravo
step
    #sticky
    #label Bank4
    .goto 1453/0,614.33,-8932.92
    >>Fale com |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 769,5354,6889 >>Retire os seguintes itens do seu banco:
    >>|T133970:0|t[Pedaço de Carne de Javali]
    >>|T133469:0|t[Carta para Delgren]
    >>|T132832:0|t[Ovo Pequeno]
step
    #label Bank3
    .goto 1453/0,614.33,-8932.92
    >>Fale com |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_NOTA: Você precisa de 12 pilhas de cada pano (|r|T132911:0|t[Lã]|cRXP_WARN_,|r |T132905:0|t[Seda]|cRXP_WARN_,|r |T132892:0|t[Magitrama]|cRXP_WARN_,|r e |T132903:0|t[Runatrama]|cRXP_WARN_) para fazer as entregas de pano depois. Você obterá estes naturalmente conforme sobe de nível|r
    .bankdeposit 2998,4371,1711,1478,1712,3012,1180,1181,3013,17056,2592,2998,1941 >>Deposite os itens a seguir no banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T134943:0|t[Pergaminhos]
    >>|T132917:0|t[Pena de Luz]
    >>|T132911:0|t[Lã]
    >>|T134377:0|t[A Simple Compass]
    >>|T132620:0|t[Cask of Merlot]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step
    #completewith next
    .goto 1453/0,662.46,-8860.76,10,0
    >>Entre na Estalagem
    .goto 1453/0,673.75,-8867.93,10 >>Voe para |cRXP_FRIENDLY_Allison|r
    .target Innkeeper Allison
step
    .goto 1453/0,673.75,-8867.93
    >>|cRXP_WARN_===PRESTE ATENÇÃO===|r
    >>|cRXP_WARN_Fale com|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Abra o menu "Definir Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Hearthstone BATCH de Ventobravo para Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 18-20 ADV Costa Negra 3 Mago AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 20-22 ADV Redridge 1 Mago AdE

step
    .goto 1439/1,529.30,6415.93
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 45|r |T132796:0|t[Melão Suco] |cRXP_BUY_do vendedor|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto 1439/1,529.30,6415.93
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 40|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto 1439/1,529.30,6415.93
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 35|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto 1439/1,529.30,6415.93
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 30|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto 1439/1,529.30,6415.93
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 25|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto 1439/1,529.30,6415.93
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 20|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto 1439/1,529.30,6415.93
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 15|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto 1439/1,529.30,6415.93
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 10|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto 1439/1,529.30,6415.93
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 5|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto 1439/1,533.23,6399.77
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>REMOVE THIS STEP LATER
    .accept 4740 >>Aceite WANTED: Lodofundo!
    .goto 1439/1,503.76,6402.39
step
    .goto 1439/1,577.77,6371.39
    >>Fale com |cRXP_FRIENDLY_Gubber|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
step
    .goto 1439/1,89.14,5002.00
    >>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 948 >>Entregue Onu
    .accept 944 >>Aceite A Alameda do Mestre
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Fale com |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Kerlonian|r não está lá, pule este passo|r
    .accept 5321 >>Aceite A Adormecida Despertou
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
    >>Abra |cRXP_PICK_Baú de Kerlonian|r. Saque-o para obter a |cRXP_LOOT_Corneta do Despertar|r
    >>|cRXP_WARN_Use a|r |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r] |cRXP_WARN_em |cRXP_FRIENDLY_Kerlonian|r quando ele adormecer|r
    >>|cRXP_WARN_ambos têm um tempo de lançamento de 5 segundos|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith Glaive1
    >>AdE os |cRXP_ENEMY_Moonstalker Sires|r. Saque-os para seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
   .complete 986,1 --Fine Moonstalker Pelt (5)
   .mob Moonstalker Sire
   .use 13536
   .isOnQuest 5321
step
    #completewith next
    >>AdE os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os para seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Moonstalker Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
   .complete 1003,1 --Grizzled Scalp (4)
   .mob Grizzled Thistle Bear
   .use 13536
   .isOnQuest 5321
step
    #label Glaive1
   .goto 1439/1,410.09,4519.49
    >>Vá para The Master's Glaive
   .complete 944,1 --Enter the Master's Glaive (1)
   .use 13536
   .isOnQuest 5321
step
    #completewith Therylune1
    >>AdE os |cRXP_ENEMY_Twilight Disciples|r e os |cRXP_ENEMY_Twilight Thugs|r. Saque-os para o |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >>Aceite The Powers Below
    .mob Twilight Disciple
    .mob Twilight Thug
    .use 13536
    .isOnQuest 5321
step
    #completewith next
    .goto 1439/1,410.09,4519.49
    >>Coloque o |T134715:0|t[Frasco de Vidência] no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    >>Clique no |cRXP_PICK_Frasco de Vidência|r no chão
    .turnin 944 >>Entregue The Master's Glaive
    .accept 949 >>Aceite O Acampamento Crepuscular
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto 1439/1,410.09,4519.49
    >>Fale com |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_se |cRXP_FRIENDLY_Therylune|r não estiver lá, ataque em AdE os |cRXP_ENEMY_Twilight Disciples|r e os |cRXP_ENEMY_Twilight Thugs|r para obter |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] até ela aparecer|r
   .accept 945 >>Aceite A Fuga de Therylune
   .target Therylune
   .use 13536
   .isOnQuest 5321
step
    #completewith Tome1
    >>Escorte |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
    .isOnQuest 5321
step
   .goto 1439/1,416.64,4576.69
   >>Coloque o |T134715:0|t[Frasco de Vidência] no chão
   >>|cRXP_WARN_Isto leva 5 segundos|r
   >>Clique no |cRXP_PICK_Frasco de Vidência|r no chão
   .turnin 944 >>Entregue The Master's Glaive
   .accept 949 >>Aceite O Acampamento Crepuscular
   .use 13536
   .use 5251
   .isOnQuest 5321
step
    #label Tome1
   .goto 1439/1,416.64,4576.69
    >>Clique no |cRXP_PICK_Twilight Tomo|r
   .turnin 949 >>Entregue O Acampamento Crepuscular
   .accept 950 >>Aceite Devolver a Onu
   .use 13536
   .isOnQuest 5321
step
   #label Therylune1
   >>Escorte |cRXP_FRIENDLY_Therylune|r
   >>|cRXP_WARN_certifique-se de que Therylune permaneça no alcance de renderização ou você falhará a missão|r
   .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
   .use 13536
   .target Therylune
   .isOnQuest 950
step
    #completewith Remtravel1
    >>AdE os |cRXP_ENEMY_Moonstalker Sires|r. Saque-os para seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith next
    >>AdE os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os para seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Moonstalker Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #label Remtravel1
    .goto 1439/1,602.01,4678.87
    >>Fale com |cRXP_FRIENDLY_Remtravel|r para iniciar a escolta
    .turnin 729 >>Entregue The Absent Minded Prospector
    .accept 731 >>Aceite The Absent Minded Prospector
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,892.83,4517.30
    >>Escorte |cRXP_FRIENDLY_Remtravel|r
    >>Quando os |cRXP_ENEMY_Quebraossos Pedrarneira|r e os |cRXP_ENEMY_Geomante Pedrarneira|r aparecerem, deixe o |cRXP_ENEMY_Geomante Pedrarneira|r lançar |T135812:0|t[Bola de Fogo] em |cRXP_FRIENDLY_Remtravel|r, depois lance |T136071:0|t[Polimorfia] nele. Abata os |cRXP_ENEMY_Quebraossos Pedrarneira|r e depois os |cRXP_ENEMY_Geomante Pedrarneira|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>AdE os |cRXP_ENEMY_Moonstalker Sires|r. Saque-os para seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>AdE os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os para seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Moonstalker Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #completewith next
    +Não desperte novamente |cRXP_FRIENDLY_Kerlonian|r de agora em diante
    >>Fique atento para a |cRXP_ENEMY_Mamãe Moa da Floresta|r
    .unitscan Strider Clutchmother
    .isOnQuest 950
step
    #label SeaC
    .goto 1439/1,892.83,4517.30
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_saque-o no Neck|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4733 >>Aceite Criatura Marinha Encalhada
    .isOnQuest 950
step
    #completewith next
    .abandon 5321 >>Abandone A Adormecida que Despertou
    .isOnQuest 950
step
    .goto 1439/1,896.76,4597.21
    >>Pegue o |cRXP_LOOT_Beached Tartaruga Marinha|r no chão
    >>|cRXP_WARN_a concha da Tartaruga tem LoS|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
    .isOnQuest 950
step
    #completewith SeaCreature
    >>AdE os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para seus |cRXP_LOOT_Fine Caranguejo Chunks|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Encrusted Tide Crawler
   .isOnQuest 950
step
    .goto 1439/1,865.32,4678.432
    >>Pegue o |cRXP_LOOT_Beached Tartaruga Marinha|r no chão
    >>|cRXP_WARN_a concha da Tartaruga tem LoS|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
    .isOnQuest 950
step
    #label SeaCreature
    .goto 1439/1,799.82,4808.12
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4730 >>Aceite Criatura Marinha Encalhada
    .isOnQuest 950
step
    #completewith next
    >>AdE os |cRXP_ENEMY_Reef Crawlers|r. Saque-os para seus |cRXP_LOOT_Fine Caranguejo Chunks|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Reef Crawler
   .isOnQuest 950
step
   .goto 1439/1,549.61,4990.65
   >>Limpe o Acampamento Murloc sem se mover para o centro do acampamento
   >>Depois de limpar tudo, mova-se para o centro do acampamento para invocar 3 ondas (3 Coastrunners, 2 Warriors, Lodofundo e um Caçador)
   >>|cRXP_WARN_se tiver sorte, |cRXP_ENEMY_Lodofundo|r já pode estar presente cerca de 30 metros da costa para o oeste (se alguém morreu nele antes)|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,621.66,5210.29,60,0
    >>AdE os |cRXP_ENEMY_Reef Crawlers|r. Saque-os para seus |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto 1439/1,585.63,5237.370
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4728 >>Aceite Criatura Marinha Encalhada
    .isOnQuest 950
step
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00
    >>AdE os |cRXP_ENEMY_Reef Crawlers|r. Saque-os para seus |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    #completewith SeaCreatureGiga
    >>AdE os |cRXP_ENEMY_Moonstalker Sires|r. Saque-os para seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith SeaCreatureGiga
    >>AdE os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os para seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Moonstalker Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label Onu2
    .goto 1439/1,89.14,5002.00
    >>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Devolver a Onu
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto 1439/1,585.63,5237.370
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4728 >>Aceite Criatura Marinha Encalhada
step
    #completewith next
    .goto 1439/1,621.66,5210.29,60,0
    .goto 1439/1,647.86,5180.600,60,0
    .goto 1439/1,583.01,5124.71,60,0
    .goto 1439/1,586.29,5048.73,60,0
    >>AdE os |cRXP_ENEMY_Reef Crawlers|r. Saque-os para seus |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,549.61,4990.65
    >>Limpe o Acampamento Murloc sem se mover para o centro do acampamento
    >>Depois de limpar tudo, vá para o centro do acampamento para invocar 3 ondas (3 Coastrunners, 2 Warriors, Lodofundo e um Caçador)
    >>|cRXP_WARN_Se tiver sorte, |cRXP_ENEMY_Lodofundo|r pode já estar ativo a cerca de 30 jardas da costa para o oeste (se alguém morreu nele antes)|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto 1439/1,609.21,4921.66,60,0
    .goto 1439/1,631.48,4858.78,60,0
    .goto 1439/1,702.88,4809.00,60,0
    >>AdE os |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter seus |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto 1439/1,799.82,4808.12
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4730 >>Aceite Criatura Marinha Encalhada
step
    .goto 1439/1,793.27,4764.89,60,0
    .goto 1439/1,840.43,4696.77
    >>AdE os |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter seus |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto 1439/1,865.32,4678.432
    >>Pegue o |cRXP_LOOT_Beached Tartaruga Marinha|r no chão
    >>|cRXP_WARN_The Tartaruga Casca has LoS|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
    .goto 1439/1,896.76,4597.21
    >>Pegue o |cRXP_LOOT_Beached Tartaruga Marinha|r no chão
    >>|cRXP_WARN_The Tartaruga Casca has LoS|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
    .goto 1439/1,892.83,4517.30
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Saqueie-o no Neck|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .accept 4733 >>Aceite Criatura Marinha Encalhada
step
    #completewith Remtravel3
    >>AdE os |cRXP_ENEMY_Moonstalker Sires|r. Saqueie-os para obter seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r aparecem junto com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith Remtravel3
    >>AdE os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r aparecem junto com |cRXP_ENEMY_Moonstalker Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #completewith next
    +Não desperte |cRXP_FRIENDLY_Kerlonian|r novamente
    >>Fique de olho em |cRXP_ENEMY_Mamãe Moa da Floresta|r
    .unitscan Strider Clutchmother
 step
    #label Remtravel3
    .goto 1439/1,602.01,4678.87
    >>Fale com |cRXP_FRIENDLY_Remtravel|r para começar a escolta
    .turnin 729 >>Entregue The Absent Minded Prospector
    .accept 731 >>Aceite The Absent Minded Prospector
    .target Prospector Remtravel
step
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,569.26,4572.76,40,0
    .goto 1439/1,626.24,4633.89,40,0
    .goto 1439/1,602.01,4678.87,40,0
    .goto 1439/1,410.09,4519.49
    >>Escolte |cRXP_FRIENDLY_Remtravel|r
    >>Quando os |cRXP_ENEMY_Quebraossos Pedrarneira|r e |cRXP_ENEMY_Geomante Pedrarneira|r aparecerem, deixe o |cRXP_ENEMY_Geomante Pedrarneira|r conjurar |T135812:0|t[Bola de Fogo] em |cRXP_FRIENDLY_Remtravel|r, depois conjure |T136071:0|t[Polimorfia] nele. Mate os |cRXP_ENEMY_Quebraossos Pedrarneira|r e depois o |cRXP_ENEMY_Geomante Pedrarneira|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
step
    #completewith Glaive2
    >>AdE os |cRXP_ENEMY_Moonstalker Sires|r. Saqueie-os para obter seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r aparecem junto com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith next
    >>AdE os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r aparecem junto com |cRXP_ENEMY_Moonstalker Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #label Glaive2
   .goto 1439/1,410.09,4519.49
    >>Vá para The Master's Glaive
   .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith Therylune2
    >>AdE os |cRXP_ENEMY_Twilight Disciples|r e os |cRXP_ENEMY_Twilight Thugs|r. Saqueie-os para obter o |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >>Aceite The Powers Below
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #completewith next
    .goto 1439/1,410.09,4519.49
    >>Coloque |T134715:0|t[Frasco de Vidência] no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    >>Clique em |cRXP_PICK_Frasco de Vidência|r no chão
    .turnin 944 >>Entregue The Master's Glaive
    .accept 949 >>Aceite O Acampamento Crepuscular
    .use 5251
step
    .goto 1439/1,410.09,4519.49
    >>Fale com |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Therylune|r não estiver lá, Ataque os |cRXP_ENEMY_Twilight Disciples|r e os |cRXP_ENEMY_Twilight Thugs|r para obter o |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] até ela aparecer|r
    .accept 945 >>Aceite A Fuga de Therylune
    .target Therylune
step
    #completewith Tome2
    >>Escolte |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .target Therylune
step
    .goto 1439/1,416.64,4576.69
    >>Coloque |T134715:0|t[Frasco de Vidência] no chão
    >>|cRXP_WARN_Isto leva 5 segundos|r
    >>Clique em |cRXP_PICK_Frasco de Vidência|r no chão
    .turnin 944 >>Entregue The Master's Glaive
    .accept 949 >>Aceite O Acampamento Crepuscular
    .use 5251
step
    #label Tome2
    .goto 1439/1,416.64,4576.69
    >>Clique em |cRXP_PICK_Twilight Tomo|r
    .turnin 949 >>Entregue O Acampamento Crepuscular
    .accept 950 >>Aceite Devolver a Onu
    .use 13536
step
    #label Therylune2
    >>Escolte |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Certifique-se de que |cRXP_FRIENDLY_Therylune|r permaneça no alcance de renderização ou você falhará na missão|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
step
    #completewith Onu3
    >>AdE os |cRXP_ENEMY_Moonstalker Sires|r. Saqueie-os para obter seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r aparecem junto com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith Onu3
    #label Scalps2
    >>AdE os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r aparecem junto com |cRXP_ENEMY_Moonstalker Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #requires Scalps2
    #completewith next
    .goto 1439/1,229.97,4815.55,-1
    >>Clique em |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>Entregue Buzzbox 525
step
    #label Onu3
    .goto 1439/1,89.14,5002.00,-1
    >>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Devolver a Onu
    .target Onu
step
    .goto 1439/1,33.47,4996.33
    >>Fale com |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Kerlonian|r não está lá, pule este passo|r
    .accept 5321 >>Aceite A Adormecida Despertou
    .target Kerlonian Evershade
step
    .goto 1439/1,34.12,5001.570
    >>Abra |cRXP_PICK_Baú de Kerlonian|r. Saque-o para obter a |cRXP_LOOT_Corneta do Despertar|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith 525
    >>AdE os |cRXP_ENEMY_Moonstalker Sires|r. Saqueie-os para obter seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r aparecem junto com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11,60,0
    .goto 1439/1,63.60,4833.89,60,0
    .goto 1439/1,119.27,4764.89,60,0
    .goto 1439/1,217.52,4686.29,60,0
    .goto 1439/1,311.84,4708.13,60,0
    .goto 1439/1,406.82,4733.45,60,0
    .goto 1439/1,444.15,4850.92,60,0
    .goto 1439/1,287.61,4815.11
    >>AdE os |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saqueie-os para obter seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r aparecem junto com |cRXP_ENEMY_Moonstalker Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label 525
    .goto 1439/1,229.97,4815.55
    >>Clique em |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>Entregue Buzzbox 525
    .use 13536
step
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02,70,0
    .goto 1439/1,249.62,4657.91,70,0
    .goto 1439/1,296.78,4381.94,70,0
    .goto 1439/1,545.68,4379.32,70,0
    .goto 1439/1,537.82,4202.47,70,0
    .goto 1439/1,140.89,4372.770,70,0
    .goto 1439/1,205.73,4495.91,70,0
    .goto 1439/1,22.33,4271.02
    >>AdE os |cRXP_ENEMY_Moonstalker Matriarchs|r e os |cRXP_ENEMY_Moonstalker Sires|r. Saqueie-os para obter seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Moonstalker Sires|r aparecem junto com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .unitscan Moonstalker Matriarch
    .use 13536
step
    #completewith Sleeper
    .xp 19+4635 >>Tritúre até 4635+/21300xp
    .isOnQuest 5321
step
    #completewith Delgren
    >>AdE |cRXP_ENEMY_Ghostpaw Runners|r. Saqueie-os para obter |cRXP_LOOT_Lean Lobo Flanks|r
    .collect 1015,10,90,1 --Lean Wolf Flank (10)
    .mob Ghostpaw Runner
step
    #label Sleeper
    .goto 1440/1,128.01,3305.31
    >>Fale com |cRXP_FRIENDLY_Liladris|r
    .turnin 5321,1 >>Entregue A Adormecida Despertou
    .target Liladris Moonriver
    .use 13536
    .isOnQuest 5321
step
    #label Delgren
    .goto 1440/1,189.71,3185.390
    >>Fale com |cRXP_FRIENDLY_Delgren|r
    .turnin 967 >>Entregue A Torre de Althalaxx
    .target Delgren the Purifier
step
    .goto 1440/1,394.43,2677.63
    >>Fale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A Fuga de Therylune
    .target Therysil
step
    .goto 1440/1,-284.31,2828.30
    .xp 19+8720 >>Tritúre até 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_Comece a fazer spam com |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step
    #completewith next
    .goto 1440/1,-284.31,2828.30
    >>Fale com |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >>Voe para Auberdine
    .target Daelyshia
step
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r e |cRXP_FRIENDLY_Gubber|r
    .turnin 4728 >>Entregue Beached Sea Criatura - Missão
    .turnin 4730 >>Entregue Beached Sea Criatura - Missão
    .turnin 4731 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4732 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4733 >>Entregue Beached Sea Criatura - Missão
    .target +Gwennyth Bly'Leggonde
    .goto 1439/1,543.06,6342.130
    .turnin 1138,2 >>Entregue Frutos do mar
    .goto 1439/1,577.77,6371.39
    .target +Gubber Blump
step
    .goto 1439/1,470.35,6439.07
    >>Fale com |cRXP_FRIENDLY_Glynda|r
    .turnin 4740 >>Entregue WANTED: Lodofundo!
    .target Sentinel Glynda Nal'Shea
step
    >>Fale com |cRXP_FRIENDLY_Terenthis|r e |cRXP_FRIENDLY_Gershala|r
    .turnin 986 >>Entregue Um Mestre Perdido
    --.accept 993 >>Accept A Lost Master
    .target +Terenthis
    .goto 1439/1,362.93,6434.71
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .goto 1439/1,431.71,6453.92
    .target +Gershala Nightwhisper
step
    .goto 1439/1,445.46,6536.01
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compre 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_com ele|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compre 15|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_com ele|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compre 10|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_com ele|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto 1439/1,445.46,6536.01
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compre 5|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_com ele|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto 1439/1,488.69,6564.830
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Simple Madeira] |cRXP_BUY_e|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_com ele|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto 1439/1,489.35,6506.32
    >>Fale com |cRXP_FRIENDLY_Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .accept 741 >>Aceite The Absent Minded Prospector
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto 1439/1,487.38,6479.68,20,0
    .goto 1439/1,489.35,6454.36,20,0
    .goto 1439/1,527.99,6409.82,20,0
    .goto 1439/1,782.79,6504.57,20,0
    .goto 1439/1,765.10,6590.60,50 >>Vá para o barco de Darnassus
step
    #completewith Teldrassil
    #requires BoatT
    .cast 818 >>Use |T135805:0|t[Fogo para Cozinhar] no barco (ou no Dock se o barco ainda não estiver visível)
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .skill cooking,50,1
step
    #completewith Teldrassil
    #requires BoatT
    #label BoarM
    +Cozinhe qualquer |T133970:0|t[Naco de Carne de Javali]|cRXP_LOOT_ em |T133974:0|t[Carne Assada de Porco]|r
    .itemcount 769,1
    .skill cooking,50,1
step
    #completewith next
    #requires BoarM
    +|cRXP_WARN_Fique conjurando repetidamente|r |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível|r
step
    #label Teldrassil
    .goto 1438/1,1018.75,8564.77,100 >>Pegue o barco para Teldrassil
step
    #completewith next
    .goto 1438/1,987.69,8651.99,60,0
    .goto 1438/1,922.52,8678.46,40,0
    .goto 1438/1,888.40,8676.08,20,0
    .goto 1438/1,841.05,8641.121,20 >>Vá para |cRXP_FRIENDLY_Vesprystus|r
step
    .goto 1438/1,841.05,8641.121
    >>Fale com |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >>Aprenda a rota de voo para Vila de Rut'theran
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >>Atravesse o portal roxo para Darnassus
step
    #completewith next
    .goto 1457/1,2536.83,9898.58,30,0
    .goto 1457/1,2534.08,9772.82,30,0
    .goto 1457/1,2549.00,9727.09,30,0
    .goto 1457/1,2607.74,9642.04,20 >>Vá para |cRXP_FRIENDLY_Greywhisker|r
step
    .goto 1457/1,2607.74,9642.04
    >>Fale com |cRXP_FRIENDLY_Greywhisker|r
    .turnin 741,3 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite The Absent Minded Prospector
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#forever
<< Alliance Mage
#name 20-22 ADV Redridge 1 Mago AdE
#version 2
#group RestedXP ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 22-26 Avançado Pantanal 1 Mago AdE

step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir à Cidade de Ventobravo
    .zoneskip Stormwind City
step
    .goto 1453/0,635.44,-8863.81
    >>Fale com |cRXP_FRIENDLY_Keldric|r pela parede
    .vendor 1257 >>Vendedor de Lixo. |cRXP_BUY_Compre|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Orlande Bórgia
step
    #completewith Bank
    .goto 1453/0,637.59,-8889.81,10 >>Entre no Banco de Ventobravo
step
    #sticky
    #label Bank1
    .goto 1453/0,614.33,-8932.92
    >>Fale com |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >>Retire os seguintes itens do seu banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T134943:0|t[Pergaminhos]
    >>|T132620:0|t[Cask of Merlot]
    >>|T134377:0|t[A Simple Compass]
    .target Newton Burnside
step
    #label Bank
    .goto 1453/0,614.33,-8932.92
    >>Fale com |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_NOTA: Você precisa de 12 pilhas de cada pano (|r|T132911:0|t[Lã]|cRXP_WARN_,|r |T132905:0|t[Seda]|cRXP_WARN_,|r |T132892:0|t[Magitrama]|cRXP_WARN_,|r e |T132903:0|t[Runatrama]|cRXP_WARN_) para fazer as entregas de pano depois. Você obterá estes naturalmente conforme sobe de nível|r
    .bankdeposit 17056,2592,1015,4654 >>Deposite os itens a seguir no banco:
    >>|T132917:0|t[Pena de Luz]
    >>|T132911:0|t[Lã]
    >>|T133970:0|t[Lean Lobo Flank]
    >>|T134431:0|t[Mysterious Fossil]
    .target Newton Burnside
step
    #completewith next
    #requires Bank1
    .goto 1453/0,679.80,-8829.57,12,0
    .goto 1453/0,716.77,-8847.23,12,0
    .goto 1453/0,693.24,-8891.33,12 >>Voe para |cRXP_FRIENDLY_Roberto|r
step
    #requires Bank1
    .goto 1453/0,681.28,-8888.01
    >>Entre no prédio
    >>Fale com |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compre um|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_dele|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto 1453/0,686.25,-8815.41,8,0
    .goto 1453/0,684.24,-8820.34,4,0
    .goto 1453/0,687.46,-8818.01,6,0
    .goto 1453/0,854.42,-8965.28,12,0
    >>|cRXP_WARN_Pule para cima da tocha, depois caia para ficar sob Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Fair" ou "Low", fique no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe em linha reta para frente|r
    >>|cRXP_WARN_NOTA: Há uma pequena chance de morrer usando este método. Você também pode caminhar normalmente para a Mago Torre se desejar|r
    .link https://youtu.be/gV8-wgQEomc >>https://youtu.be/gV8-wgQEomc >> CLIQUE AQUI para um guia
    .goto 1453/0,861.95,-8990.47,10 >>Vá para |cRXP_FRIENDLY_Larimaine|r
step
    #requires Bank1
    .goto 1453/0,847.43,-8991.99
    >>Fale com |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
    >>Custo Total: 20s
    .target Larimaine Purdue
step
    .goto 1453/0,861.95,-8990.47
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine seus feitiços de classe (Lampejo, Evocação, Armadura Gélida r3, Escudo de Mana, Conjurar Água r3)
    >>|cRXP_WARN_NÃO treine Nevasca ainda|r
    >>Custo Total: 1g
    .target Jennea Cannon
step
    #completewith Charys
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Saia da Torre do Mago
    .goto 1453/0,948.65,-8994.50,10 >>Voe para |cRXP_FRIENDLY_Charys|r
step
    .goto 1453/0,948.65,-8994.50
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Compre 2|r |T134419:0|t[Runa de Teleporte]|cRXP_BUY_,|r |T134851:0|t[Poções de Mana Inferior]|cRXP_BUY_,|r |T134831:0|t[Poções de Cura]|cRXP_BUY_, e um|r |T132515:0|t[Cinto de Tecido] |cRXP_BUY_dela (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 18s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Andréa Iserian
    .itemcount 4371,1
step
    #label Charys
    .goto 1453/0,948.65,-8994.50
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Compre dois|r |T134419:0|t[Runa de Teleporte]|cRXP_BUY_,|r |T134851:0|t[Poções de Mana Inferior]|cRXP_BUY_,|r |T134831:0|t[Poções de Cura]|cRXP_BUY_, e um|r |T132515:0|t[Cinto de Tecido] |cRXP_BUY_dela (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 26s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Andréa Iserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Voe para |cRXP_FRIENDLY_Adair|r
step
    .goto 1453/0,822.16,-8865.60
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 18s 31c|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto 1453/0,822.16,-8865.60
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 26s 31c|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Suba a borda da parede em vez de contornar
step
    .goto 1453/0,766.64,-8623.23
    >>Fale com |cRXP_FRIENDLY_Kristoff|r
    .accept 343 >>Aceite Speaking of Fortitude
    .target Brother Kristoff
step
    #completewith next
    .goto 1453/0,737.74,-8571.69,15,0
    .goto 1453/0,736.26,-8558.06,12,0
    .goto 1453/0,719.86,-8550.36,12 >>Vá para |cRXP_FRIENDLY_Baros|r
step
    .goto 1453/0,719.86,-8550.36
    >>Entre no prédio
    >>Converse com |cRXP_FRIENDLY_Baros|r
    .turnin 399 >>Entregue Começos Humildes
    .target Baros Alexston
step
    .goto 1453/0,638.26,-8342.22
    >>Fale com |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto 1453/0,453.16,-8533.33,30,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,383.66,-8345.63,12 >>Vá para |cRXP_FRIENDLY_Milton|r
step
    .goto 1453/0,383.66,-8345.63
    >>Fale com |cRXP_FRIENDLY_Milton|r
    .turnin 343 >>Entregue Speaking of Fortitude
    .accept 344 >>Aceite Irmão Paxeco
    .target Milton Sheaf
step
    #completewith next
    .goto 1453/0,435.41,-8381.66,20,0
    .goto 1453/0,442.94,-8427.47,20,0
    .goto 1453/0,405.03,-8486.89,20,0
    .goto 1453/0,450.74,-8539.51,30,0
    .goto 1453/0,551.02,-8658.37,20,0
    .goto 1453/0,509.88,-8819.71,12,0
    .goto 1453/0,518.35,-8822.040,12 >>Vá para |cRXP_FRIENDLY_Felicia|r
step
    .goto 1453/0,518.35,-8822.040
    >>Fale com |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_Compre o|r |T133849:0|t[Objetos de TBC Seasoning Herbs] |cRXP_BUY_dela|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto 1453/0,508.41,-8803.04,30,0
    .goto 1453/0,575.62,-8741.370,30,0
    .goto 1453/0,603.58,-8771.67,30,0
    .goto 1453/0,530.45,-8847.41,20,0
    .goto 1453/0,532.33,-8863.54,20,0
    .goto 1453/0,494.56,-8865.78,12,0
    .goto 1453/0,495.77,-8870.44,8,0
    .goto 1453/0,504.24,-8956.31,40 >>Desça para o ressalto abaixo de |cRXP_FRIENDLY_Dungar|r
step
    #completewith next
    .goto 1429/0,44.35,-9458.41,30 >>Vá para a Estalagem de Vila de Ouro do Sol
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto 1429/0,398.72,-9085.76,50,0
    .goto 1429/0,125.22,-9079.98,20,0
    .goto 1429/0,-139.95,-8910.09,50,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    >>Pegue a Trajetória da Montanha em direção a |cRXP_FRIENDLY_Paxton|r
    .goto 1429/0,-186.46,-8874.91,10 >>Vá para |cRXP_FRIENDLY_Paxton|r
step
    .goto 1429/0,8.25,-9460.03
    >>Fale com |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Compre um|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_do vendedor|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto 1429/0,16.23,-9462.580,0,0
    >>Fale com |cRXP_FRIENDLY_Farley|r
    .home >>Defina sua Pedra de Regresso para Vila Dourada
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Vá para |cRXP_FRIENDLY_Paxton|r
step
    #requires FarleyHome
    .goto 1429/0,-186.46,-8874.91
    >>Fale com |cRXP_FRIENDLY_Paxton|r
    .turnin 344 >>Entregue Irmão Paxeco
    .accept 345 >>Aceite Suprimentos de Tinta
    .target Brother Paxton
step
    #completewith Theo
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-140.30,-8916.57,10,0
    .goto 1429/0,-464.48,-9142.47,30,0
    .goto 1429/0,-701.54,-9538.960,15 >>Pegue a Trajetória da Montanha em direção a Torre de Azora
step
    #sticky
    #label Dawn
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Fale com |cRXP_FRIENDLY_Sol|r lá em cima
    .vendor 958 >>|cRXP_BUY_Compre não-Intelecto|r |T134943:0|t[Pergaminhos]|cRXP_BUY_,|r |T134850:0|t[Poções de Mana Menor]|cRXP_BUY_, e|r |T134830:0|t[Poções de Cura Menores] |cRXP_BUY_dela (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 11s 38c|r
    .money <0.1138
    .target Dawn Brightstar
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto 1429/0,-716.46,-9541.04,0,0
    >>Fale com |cRXP_FRIENDLY_Sol|r em cima
    .vendor 958 >>|cRXP_BUY_Compre sem inteligência|r |T134943:0|t[Pergaminhos]|cRXP_BUY_,|r |T134850:0|t[Mana Menor Potions]|cRXP_BUY_, e|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dela (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 19s 38c|r
    .money <0.1938
    .target Dawn Brightstar
    .itemcount 4371,<1
step
    #label Theo
    .goto 1429/0,-728.26,-9553.08
    >>Suba as escadas
    >>Fale com |cRXP_FRIENDLY_Teócrito|r
    .accept 94 >>Aceite A Olho Vigilante
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto 1431/0,-1159.00,-10544.31,20,0
    .goto 1431/0,-1164.94,-10533.15,10 >>Entre na Estalagem
step
    #requires Dawn2
    .goto 1431/0,-1159.54,-10509.03
    >>Fale com |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_Compre a|r |T132798:0|t[Garrafa de Pinga] |cRXP_BUY_dela|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto 1431/0,-1164.94,-10533.15,10,0
    .goto 1431/0,-1159.00,-10544.31,10 >>Saia da Estalagem
step
    #completewith next
    .goto 1431/0,-1197.61,-10585.35,12 >>Entre no prédio
step
    .goto 1431/0,-1200.85,-10593.99
    >>Fale com |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>Aceite Corvo Hill
    .accept 164 >>Aceite Entregas para Sven
    .accept 165 >>Aceite O Eremita
    .target Elaine Carevin
step
    .goto 1431/0,-1272.67,-10586.073
    >>Fale com |cRXP_FRIENDLY_Herble|r
    .vendor 3133 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto 1431/0,-1320.73,-10581.75
    >>Fale com |cRXP_FRIENDLY_Viktori|r
    .accept 174 >>Aceite Ora (direis) ouvir Estrelas!
    .turnin 174 >>Entregue Ora (direis) ouvir Estrelas!
    .accept 175 >>Aceite Ora (direis) ouvir Estrelas!
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto 1431/0,-1320.73,-10581.75
    >>Fale com |cRXP_FRIENDLY_Viktori|r
    .accept 175 >>Aceite Ora (direis) ouvir Estrelas!
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1366.09,-10779.03
    >>Fale com |cRXP_FRIENDLY_Mary|r
    .turnin 175 >>Entregue Ora (direis) ouvir Estrelas!
    .accept 177 >>Aceite Ora (direis) ouvir Estrelas!
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto 1431/0,-1258.63,-10513.89
    >>Fale com |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >>Aprenda a rota de voo para Floresta do Crepúsculo
    .target Felicia Mane
step
    #completewith Kzixx
    .goto 1431/0,-1236.49,-10139.49,60,0
    .goto 1431/0,-1375.81,-10072.35,20 >>Vá em direção a |cRXP_FRIENDLY_Kzixx|r
step
    .goto 1431/0,-1375.81,-10072.35
    >>Fale com |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Fale com |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto 1431/0,-1375.81,-10072.35
    >>Fale com |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto 1431/0,-1375.81,-10072.35
    >>Fale com |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions]|cRXP_BUY_,|r |T134831:0|t[Cura Potions]|cRXP_BUY_, e um|r |T132515:0|t[Tecido Belt] |cRXP_BUY_dele (se estiverem disponíveis e se necessário)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Kzixx
step
    #completewith Gnolls
    >>AdE |cRXP_ENEMY_Tarantulas|r. Saqueie-as para obter |cRXP_LOOT_Crisp Aranha Carne|r
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r e |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls
    >>AdE |cRXP_ENEMY_Tarantulas|r. Saqueie-as para obter |cRXP_LOOT_Crisp Aranha Carne|r
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Fale com |cRXP_FRIENDLY_Parker|r
    .accept 244 >>Aceite Gnolls Invasores
    .target Guard Parker
step << skip
    #label AoE1
    .goto 1433/0,-1912.31,-9479.51,60 >>AdE os |cRXP_ENEMY_Redridge Mongrels|r e os |cRXP_ENEMY_Redridge Thrashers|r
    .isOnQuest 244
step << skip
    #completewith Gnolls
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r e |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step << skip
    #completewith next
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,50
step
    #label Gnolls
    .goto 1433/0,-2238.15,-9443.60
    >>Fale com |cRXP_FRIENDLY_Feldon|r
    .turnin 244 >>Entregue Gnolls Invasores
    .accept 246 >>Aceite Avaliando a Ameaça
    .target Deputy Feldon
step
    .goto 1433/0,-2234.89,-9435.060
    >>Fale com |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
step
    >>Fale com |cRXP_FRIENDLY_Marris|r e |cRXP_FRIENDLY_Oslow|r
    .accept 20 >>Aceite A Ameaça de Rocha Negra
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .accept 125 >>Aceite As Ferramentas Perdidas
    .turnin 345 >>Entregue Suprimentos de Tinta
    .accept 347 >>Aceite Rethban Ore
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2219.70,-9260.73
    >>Fale com |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_Compre|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Você precisará disso depois|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>Fale com |cRXP_FRIENDLY_Conacher|r
--  .accept 120 >>Accept Messenger to Stormwind
--  .goto 1433/0,-2221.87,-9218.60
    .accept 91 >>Aceite Solomon's Law
    .goto 1433/0,-2216.00,-9215.85
--  .target Magistrate Solomon
    .target Bailiff Conacher
step
    >>Fale com |cRXP_FRIENDLY_Baren|r e o |cRXP_PICK_Wanted Poster|r
    .accept 127 >>Aceite Vendendo Peixe
    .goto 1433/0,-2172.59,-9261.02
    .accept 180 >>Aceite Wanted: General Mordente
    .goto 1433/0,-2151.53,-9247.12
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto 1433/0,-2155.22,-9225.84,0,0
    >>Entre na Estalagem
    >>Fale com |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Aceite Um Almoço Grátis
    .target Darcy
step
    .goto 1433/0,-2145.89,-9211.36
    >>Entre na Estalagem
    >>Fale com |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>Aceite Secar Times
    .turnin 116 >>Entregue Secar Times
    .target Barkeep Daniels
step
    .goto 1433/0,-2145.45,-9231.34
    >>Entre na Estalagem
    >>Fale com |cRXP_FRIENDLY_Wiley|r ao pular do corrimão no andar de baixo
    .turnin 65 >>Entregue A Irmandade Défias
--  .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto 1433/0,-2207.32,-9351.66
    >>Fale com |cRXP_FRIENDLY_Shawn|r
    .accept 3741 >>Aceite Nida's Colar
    .target Shawn
step
    .goto 1433/0,-2250.09,-9360.78,90,0
    .goto 1433/0,-2174.32,-9386.56,90,0
    .goto 1433/0,-2147.41,-9308.08,90,0
    .goto 1433/0,-2090.96,-9373.82,90,0
    .goto 1433/0,-1986.76,-9324.30,90,0
    .goto 1433/0,-2246.40,-9359.92,90,0
    .goto 1433/0,-2309.57,-9376.28,90,0
    .goto 1433/0,-2397.70,-9363.97
    >>|cRXP_WARN_Nade debaixo d'água e verifique os locais de spawn. Existem 8 locais com 2 aparições de uma vez|r
    >>Abra a |cRXP_PICK_Glinting Mud|r. Saqueie-a para |cRXP_LOOT_Hilary's Colar|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto 1433/0,-2205.58,-9351.52
    >>Fale com |cRXP_FRIENDLY_Nida|r
    .turnin 3741 >>Entregue Nida's Colar
    .target Hilary
step
    #completewith Gnolls2
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r e |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step
    #completewith next
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,<50,1
step
    #label Gnolls2
    .goto 1433/0,-1912.31,-9479.51
    >>AdE os |cRXP_ENEMY_Redridge Mongrels|r e os |cRXP_ENEMY_Redridge Thrashers|r
    .complete 246,1,1 --Redridge Mongrel (1)
    .mob Redridge Mongrel
    .mob Redridge Thrasher
step
    #completewith Gnolls3
    >>AdE |cRXP_ENEMY_Tarantulas|r. Saqueie-as para obter |cRXP_LOOT_Crisp Aranha Carne|r
    >>Ataque em área os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r e |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls3
    >>Ataque em área os |cRXP_ENEMY_Tarantulas|r. Saqueie-os para obter |cRXP_LOOT_Crisp Aranha Carne|r
    >>Ataque em área os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto 1433/0,-1907.75,-9625.90,60,0
    .goto 1433/0,-1893.64,-9592.880,60,0
    .goto 1433/0,-1938.36,-9591.440
    >>Fale com |cRXP_FRIENDLY_Parker|r
    .turnin 129 >>Entregue Um Almoço Grátis
    .accept 130 >>Aceite Visite a Herbalista
    .target Guard Parker
step
    #label Gnolls3
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17,60,0
    .goto 1433/0,-2209.06,-9790.24,60,0
    .goto 1433/0,-2242.71,-9792.700,60,0
    .goto 1433/0,-2271.14,-9774.31,60,0
    .goto 1433/0,-2321.94,-9776.63,60,0
    .goto 1433/0,-2512.32,-9603.17
    >>Mate com AdE os |cRXP_ENEMY_Redridge Mongrels|r, os |cRXP_ENEMY_Redridge Thrashers|r e os |cRXP_ENEMY_Redridge Poachers|r
    >>|cRXP_WARN_Lembre-se de ficar na zona morta dos|r |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
    .mob +Redridge Poacher
step
    .goto 1433/0,-2238.15,-9443.60
    >>Fale com |cRXP_FRIENDLY_Feldon|r
    .turnin 246 >>Entregue Assessing the Ameaça
    .target Deputy Feldon
step
    .goto 1433/0,-2472.16,-9366.72,-1
    >>Vá para debaixo da água
    >>Abra o |cRXP_PICK_Sunken Baú|r. Pegue |cRXP_LOOT_Oslow's Caixa de Ferramentas|r
    >>|cRXP_WARN_Isto leva 5 segundos|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto 1433/0,-2445.68,-9240.75,60,0
    >>Mate com AdE os |cRXP_ENEMY_Murloc Flesheaters|r e os |cRXP_ENEMY_Murloc Batedores|r. Saqueie-os para obter alguns dos |cRXP_LOOT_Spotted Sunfish|r e |cRXP_LOOT_Murloc Fins|r
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto 1433/0,-2268.54,-9279.12
    >>Fale com |cRXP_FRIENDLY_Oslow|r
    .turnin 125 >>Entregue The Perdida Ferramentas
    .accept 89 >>Aceite The Everstill Ponte
    .target Foreman Oslow
step
    .goto 1433/0,-2240.10,-9248.14
    >>Fale com |cRXP_FRIENDLY_Dorin|r
    .vendor >>Lixo de Comerciante
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto 1433/0,-2205.58,-9232.350,10,0
    .goto 1433/0,-2197.99,-9224.68,8 >>Vá para dentro do Salão da Prefeitura
step
    .goto 1433/0,-2377.51,-9229.460,60,0
    .goto 1433/0,-2403.56,-9173.57,60,0
    .goto 1433/0,-2415.07,-9034.28,60,0
    .goto 1433/0,-2509.72,-9067.73,60,0
    .goto 1433/0,-2599.16,-9078.44,60,0
    .goto 1433/0,-2772.39,-9226.85,60,0
    .goto 1433/0,-2808.64,-9313.58,60,0
    .goto 1433/0,-2791.71,-9355.86,60,0
    .goto 1433/0,-2838.17,-9350.50,60,0
    .goto 1433/0,-2840.12,-9220.92,60,0
    .goto 1433/0,-2854.01,-9211.65,60,0
    .goto 1433/0,-2867.69,-9183.27,60,0
    .goto 1433/0,-2924.13,-9179.65,60,0
    .goto 1433/0,-2928.91,-9231.77,60,0
    >>Mate com AdE os |cRXP_ENEMY_Blackrock Outrunners|r, os |cRXP_ENEMY_Blackrock Renegades|r e os |cRXP_ENEMY_Blackrock Grunts|r. Saqueie-os para obter seus |cRXP_LOOT_Battleworn Machados|r
    >>Mate com AdE os |cRXP_ENEMY_Murloc Tidecallers|r e os |cRXP_ENEMY_Murloc Batedores|r. Saqueie-os para obter seus |cRXP_LOOT_Spotted Sunfish|r e |cRXP_LOOT_Murloc Fins|r
    >>Mate com AdE os |cRXP_ENEMY_Dire Condors|r. Saqueie-os para obter seus |cRXP_LOOT_Tough Condor Carne|r
    >>Mate com AdE os |cRXP_ENEMY_Greater Tarantulas|r. Saqueie-os para obter sua |cRXP_LOOT_Crisp Aranha Carne|r
    >>Ataque em área os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r
    >>Mate com AdE os |cRXP_ENEMY_Redridge Mystics|r e os |cRXP_ENEMY_Redridge Brutes|r. Saqueie-os para obter seus |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    >>|cRXP_WARN_Cuidado, pois os |cRXP_ENEMY_Blackrock Outrunners|r lançam|r |T132149:0|t[Rede]|cRXP_WARN_ e os |cRXP_ENEMY_Dire Condors|r lançam|r |T132154:0|t[Derrubar]
    .complete 20,1 --Blackrock Axe (10)
#loop
	.line Redridge Mountains,37.16,45.20,38.36,41.34,40.09,40.64,42.89,39.26,59.36,44.56,59.79,42.05,62.58,41.46,62.57,45.48,59.36,44.56
	.goto 1433/0,-2377.51,-9229.460,30,0
	.goto 1433/0,-2403.56,-9173.57,30,0
	.goto 1433/0,-2441.12,-9163.43,30,0
	.goto 1433/0,-2501.90,-9143.45,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
	.goto 1433/0,-2868.77,-9183.85,30,0
	.goto 1433/0,-2929.34,-9175.31,30,0
	.goto 1433/0,-2929.12,-9233.51,30,0
	.goto 1433/0,-2859.44,-9220.19,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto 1433/0,-2831.22,-9328.06,40,0
    .goto 1433/0,-2809.95,-9313.87,40,0
    .goto 1433/0,-2789.11,-9350.36,40,0
    .goto 1433/0,-2831.22,-9328.06
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto 1433/0,-2509.72,-9067.73,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2599.16,-9078.44,30,0
	.goto 1433/0,-2655.60,-9061.500,30,0
	.goto 1433/0,-2697.5,-9150.55,30,0
	.goto 1433/0,-2760.67,-9163.72,30,0
	.goto 1433/0,-2758.28,-9225.55,30,0
	.goto 1433/0,-2821.88,-9247.99,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto 1433/0,-2705.31,-9104.36,30,0
	.goto 1433/0,-2744.82,-9129.26,30,0
	.goto 1433/0,-2764.36,-9158.65,30,0
	.goto 1433/0,-2803.65,-9173.86,30,0
	.goto 1433/0,-2813.85,-9264.210,30,0
	.goto 1433/0,-2759.58,-9234.96,30,0
	.goto 1433/0,-2714.21,-9193.69,30,0
	.goto 1433/0,-2667.1,-9176.61,30,0
	.goto 1433/0,-2705.31,-9104.36,30,0
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto 1433/0,-2415.07,-9034.28
    .mob Blackrock Outrunner
    .mob Blackrock Grunt
    .mob Blackrock Renegade
    .mob Murloc Scout
    .mob Murloc Tidecaller
    .mob Dire Condor
    .mob Greater Tarantula
    .mob Great Goretusk
    .mob Redridge Mystic
    .mob Redridge Brute
step
    #completewith Herbalist
    .goto 1433/0,-2366.23,-9110.87,60,0
    .goto 1433/0,-2270.06,-9155.47,60,0
    >>Mate com AdE os |cRXP_ENEMY_Redridge Mystics|r e os |cRXP_ENEMY_Redridge Brutes|r. Saqueie-os para obter seus |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-2063.18,-9209.62
    >>Entre
    >>Fale com |cRXP_FRIENDLY_Breanna|r
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .target Chef Breanna
    .itemcount 1080,5
    .itemcount 1081,5
    .itemcount 2296,5
step
    #label Herbalist
    .goto 1433/0,-2045.38,-9245.82
    >>Fale com |cRXP_FRIENDLY_Martie|r
    .turnin 130 >>Entregue Visite a Herbalista
    .accept 131 >>Aceite Entregando Daffodils
    .accept 34 >>Aceite O Penetra
    .target Martie Jainrose
step
    #completewith next
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    >>Ataque em área os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto 1433/0,-1910.79,-9288.97
    >>Mate |cRXP_ENEMY_Ronquifuça|r
    >>|cRXP_WARN_Leve-a em direção à cerca ao norte de |cRXP_FRIENDLY_Lamar|r. Pule para frente e para trás para se manter seguro sem sofrer danos|r
    >>Tenha cuidado com |cRXP_ENEMY_Ronquifuça|r lançando |T132337:0|t[carga] e |T136025:0|t[Tremor]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto 1433/0,-2045.38,-9245.82
    >>Fale com |cRXP_FRIENDLY_Martie|r
    .turnin 34 >>Entregue O Penetra
    .target Martie Jainrose
step
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55,60,0
    .goto 1433/0,-1950.08,-9206.58,60,0
    .goto 1433/0,-2024.97,-9145.04,60,0
    .goto 1433/0,-1955.50,-9381.63,60,0
    .goto 1433/0,-1920.12,-9343.55
    >>Ataque em área os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    #completewith next
    .goto 1433/0,-2034.31,-9101.17,60,0
    >>Mate com AdE os |cRXP_ENEMY_Redridge Mystics|r e os |cRXP_ENEMY_Redridge Brutes|r. Saqueie-os para obter seus |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto 1433/0,-1994.15,-9037.03,60,0
    .goto 1433/0,-2017.59,-8984.62,40 >>Vá para as Cavernas de Rethban
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    >>Mate com AdE os |cRXP_ENEMY_Redridge Drudgers|r. Saqueie-os para obter seu |cRXP_LOOT_Rethban Ore|r, |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    >>Mate com AdE os |cRXP_ENEMY_Redridge Bashers|r. Saqueie-os para obter seus |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    >>Minere os |cRXP_PICK_Copper Veins|r na caverna. Saqueie-os para obter o |cRXP_LOOT_Rethban Ore|r
    .complete 347,1 --Rethban Ore (5)
    .mob +Redridge Drudger
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Basher
    .complete 89,2 --Iron Rivet (5)
    .mob +Redridge Basher
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+14365 >>Farme até 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto 1433/0,-1982.21,-8929.740,20,0
	.goto 1433/0,-2040.17,-8918.45,20,0
	.goto 1433/0,-2046.03,-8793.06,20,0
	.goto 1433/0,-2009.56,-8766.85,20,0
	.goto 1433/0,-1979.38,-8792.62,20,0
	.goto 1433/0,-1919.47,-8822.30,20,0
	.goto 1433/0,-1950.29,-8858.07,20,0
	.goto 1433/0,-1919.25,-8879.64,20,0
	.goto 1433/0,-1982.21,-8929.740,20,0
    .xp 21+15715 >>Farme até 15715+/25200xp
    .isQuestTurnedIn 92
step << skip
    #completewith next
    .goto 1433/0,-1978.73,-8775.39,-1
    .goto 1433/0,-2049.28,-8823.17,-1
    .goto 1433/0,-1970.27,-8924.38,-1
    .goto 1433/0,-2033.00,-8923.37,-1
    .goto 1433/0,-1930.76,-8878.63,-1
    .goto 1433/0,-2305.01,-9271.01,30 >>Use Logout Pular para sair da caverna (no lado LESTE) de volta para Lakeshire
step
    #completewith next
    .subzone 69 >>Volte para Lakeshire
step
    >>Fale com |cRXP_FRIENDLY_Marris|r e |cRXP_FRIENDLY_Oslow|r
    .turnin 20 >>Entregue Blackrock Ameaça
    .accept 19 >>Aceite Tharil'zun
    .target +Marshal Marris
    .goto 1433/0,-2298.28,-9283.90
    .turnin 89,1 >>Entregue The Everstill Ponte
    .goto 1433/0,-2268.54,-9279.27
    .target +Foreman Oslow
step
    .goto 1433/0,-2242.49,-9259.00
    >>Fale com |cRXP_FRIENDLY_Verner|r
    .accept 118 >>Aceite O Preço dos Sapatos
    .target Verner Osgood
step
    .goto 1433/0,-2172.59,-9261.02
    >>Fale com |cRXP_FRIENDLY_Baren|r
    .turnin 127 >>Entregue Venda de Peixes
    .accept 150 >>Aceite Caçadores Murloc
    .turnin 150 >>Entregue Murloc Poachers
    .goto 1433/0,-2172.59,-9261.02
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto 1433/0,-2158.69,-9234.38,0,0
    .vendor >>Lixo de vendedor. Você pode vender a |T134708:0|t[Picareta de Mineração] agora se desejar
    .target Kimberly Hiett
step
    .goto 1433/0,-2155.22,-9225.84
    >>Vá para dentro da Estalagem
    >>Fale com |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Entregue Entregando Daffodils
    .target Darcy
step
    #completewith next
    .goto 1433/0,-2146.54,-9246.54,12,0
    .goto 1433/0,-2067.09,-9220.34,12,0
    >>Vá em direção a |cRXP_FRIENDLY_Breanna|r
step
    .goto 1433/0,-2063.18,-9209.62
    >>Entre
    >>Fale com |cRXP_FRIENDLY_Breanna|r
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .target Chef Breanna
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para Goldshire
step
    .goto 1429/0,87.73,-9456.79
    >>Fale com |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>Entregue O Preço dos Sapatos
    .accept 119 >>Aceite Retornar a Verner
    .target Smith Argus
step
    #completewith next
    .goto 1429/0,-158.00,-8901.52,10,0
    .goto 1429/0,-174.32,-8881.39,10,0
    .goto 1429/0,-186.46,-8874.91,10 >>Vá para |cRXP_FRIENDLY_Paxton|r
step
    .goto 1429/0,-186.46,-8874.91
    >>Fale com |cRXP_FRIENDLY_Paxton|r
    .turnin 347 >>Entregue Minério de Rethban
    .accept 346 >>Aceite Devolver a Kristoff
    .target Brother Paxton
step
    #completewith CharysEnd
    .cast 3561 >>Use |T135763:0|t[Teleporte: Ventobravo]
    .zoneskip Stormwind City
step
    #completewith CharysEnd
    >>|cRXP_WARN_===PRESTE ATENÇÃO===|r
    +|cRXP_WARN_Mude para Gélido AdE|r
    .xp <22,1
step
    .goto 1453/0,867.06,-9012.61
    >>Fale com |cRXP_FRIENDLY_Dumas|r
    .train 10 >>Treine Nevasca
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto 1453/0,887.22,-9017.80,10,0
    .goto 1453/0,871.36,-9013.14,10,0
    .goto 1453/0,868.8,-9004.27,8,0
    .goto 1453/0,877.00,-9008.03,6,0
    .goto 1453/0,863.96,-9001.40,8,0
    .goto 1453/0,928.62,-9010.10,15,0
    .goto 1453/0,962.63,-8990.73,15,0
    .goto 1453/0,949.86,-9009.380,10,0
    .goto 1453/0,942.34,-9001.49,8,0
    >>Saia da Torre do Mago
    .goto 1453/0,948.65,-8994.50,10 >>Voe para |cRXP_FRIENDLY_Charys|r
step
    #completewith BankDeposit
    +|cRXP_WARN_NÃO fique abaixo de 1g 43s 30c|r
    .xp >22,1
step
    .goto 1453/0,948.65,-8994.50
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4827,1
    .target Andréa Iserian
step
    .goto 1453/0,948.65,-8994.50
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4828,1
    .target Andréa Iserian
step
    .goto 1453/0,948.65,-8994.50
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4829,1
    .target Andréa Iserian
step
    #label CharysEnd
    .goto 1453/0,948.65,-8994.50
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions]|cRXP_BUY_,|r |T134831:0|t[Cura Potions]|cRXP_BUY_, e um|r |T132515:0|t[Tecido Belt] |cRXP_BUY_dele (se estiverem disponíveis e se necessário)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Andréa Iserian
step
    #completewith next
    .goto 1453/0,852.40,-8920.10,20,0
    .goto 1453/0,829.01,-8901.28,20,0
    .goto 1453/0,789.22,-8904.59,20,0
    .goto 1453/0,758.31,-8878.78,20,0
    .goto 1453/0,810.33,-8832.44,20,0
    .goto 1453/0,827.54,-8850.19,15,0
    .goto 1453/0,822.16,-8865.60,10 >>Voe para |cRXP_FRIENDLY_Adair|r
step
    #label AdairX
    .goto 1453/0,822.16,-8865.60
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Adair Gilroy
step
    #completewith next
    .goto 1453/0,872.30,-8803.220,5,0
    .goto 1453/0,872.70,-8682.39,20 >>Suba a borda da parede em vez de contornar
step
    .goto 1453/0,766.64,-8623.23
    >>Fale com |cRXP_FRIENDLY_Kristoff|r
    .turnin 346 >>Entregue Devolver a Kristoff
    .target Brother Kristoff
step
    .goto 1453/0,638.26,-8342.22
    >>Fale com |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto 1453/0,522.12,-8352.80,20 >>Vá para o Deeprun Tram
step
    #completewith next
    +|cRXP_WARN_Monte o Deeprun Tram enquanto faz spam de conjuração|r |T132816:0|t[Conjurar Água r3]
step
    .zone Ironforge >>Pegue o Deeprun Tram para Ironforge
step
    .goto 1455/0,-1249.87,-4793.31
    >>Fale com |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175>>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto 1455/0,-977.98,-4904.59,30 >>Entre no Banco de Ironforge
step
    .goto 1455/0,-997.66,-4886.49
    >>Fale com |cRXP_FRIENDLY_Bailey|r
    >>|cRXP_WARN_NOTA: Você precisa de 12 pilhas de cada pano (|r|T132911:0|t[Lã]|cRXP_WARN_,|r |T132905:0|t[Seda]|cRXP_WARN_,|r |T132892:0|t[Magitrama]|cRXP_WARN_,|r e |T132903:0|t[Runatrama]|cRXP_WARN_) para fazer as entregas de pano depois. Você obterá estes naturalmente conforme sobe de nível|r
    .bankdeposit 17056,2592,1015,1083,2665,1922,1284 >>Deposite os itens a seguir no banco:
    >>|T132917:0|t[Pena de Luz]
    >>|T132911:0|t[Lã]
    >>|T133970:0|t[Lean Lobo Flank]
    >>|T133277:0|t[Glifo de Azora]
    >>|T133849:0|t[Objetos de TBC Seasoning Herbs]
    >>|T133629:0|t[Suprimentos para Sven]
    >>|T132761:0|t[Caixote de Ferraduras]
    .target Bailey Stonemantle
step
    #label BankDeposit
    .goto 1455/0,-997.66,-4886.49
    .bankwithdraw 4654 >>Retire os seguintes itens do seu banco:
    >>|T134431:0|t[Mysterious Fossil]
    .target Bailey Stonemantle
step
    .goto 1455/0,-915.2,-4606.38
    >>Fale com |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >>Treine [Teleporte: Altaforja]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===PRESTE ATENÇÃO===|r
    +|cRXP_WARN_Mude para Gélido AdE|r
step
    .goto 1455/0,-928.48,-4614.620
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .train 10 >>Treine Nevasca
    .target Dink
step
    #completewith next
    +|cRXP_WARN_Inicie spam de conjuração|r |T132816:0|t[Conjurar Água r3] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step
    #completewith next
    #label FlyMene
    .goto 1455/0,-1152.39,-4820.914
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .fly Menethil >>Voe para Menethil Harbor
    .target Gryth Thurden
step
    .zone Wetlands >>Viagem para Pantanal
]])
