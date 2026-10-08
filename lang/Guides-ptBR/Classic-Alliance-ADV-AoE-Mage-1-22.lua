if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 1-10 ADV Elwynn Forest Human Mago AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor Human Mage
#next 10-11 ADV Dun Morogh Human Mago AdE


step << !Human Mage
    #season 2
    #completewith next
    +Na Temporada de Descoberta, você NÃO deve começar fora da zona inicial de sua raça como um Mago, pois você não conseguirá obter sua primeira runa aqui (|T133816:0|t[Gravar Luvas - Lança de Gelo])
step
    #completewith next
    +Você selecionou o guia Avançado. Este é o guia mais rápido para a classe mais rápida do jogo (Maga da Aliança). Dessa forma, haverá muitas mecânicas de nicho utilizadas bem como puxadas de AdE altamente difíceis. Mantenha-se persistente enquanto aprende! Boa Sorte!
step
    #completewith next
    .goto Elwynn Forest,48.45,45.80,50,0
    +|cRXP_WARN_Abate |cRXP_ENEMY_Young Wolves|r. Saque-os até ter itens de vendedor no valor de 10 de cobre|r
    .mob Young Wolf
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willem|r
    .accept 783 >>Aceite Uma Ameaça Interior
    .target Deputy Willem
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danil|r
    .vendor >>Venda lixo até ter 10+ de cobre
    .target Brother Danil
step
    .goto Elwynn Forest,48.26,41.93,15,0
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_McBride|r dentro
    .turnin 783 >>Entregue Uma Ameaça Interior
    .accept 7 >>Aceite Limpeza do Acampamento Kobold
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>Salte das escadas para o corrimão
    .goto Elwynn Forest,49.66,39.41,10 >>Vá para |cRXP_FRIENDLY_Khelden|r lá em cima
step
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khelden|r
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>Viaje para |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willem|r
    .accept 5261 >>Aceite Enzo Peleteiro
    .target Deputy Willem
step
    #completewith next
    .goto Elwynn Forest,46.10,42.57,70,0
    .goto Elwynn Forest,46.59,39.35
    +|cRXP_WARN_Abate |cRXP_ENEMY_Young Wolves|r. Saque-os até ter itens de vendedor no valor de 50 de cobre (incluindo sua armadura)|r
    .mob Young Wolf
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .vendor >>Comerciante Lixo
    .collect 159,10,7,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.94,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Eagan|r
    .turnin 5261 >>Entregue em Enzo Peleteiro
    .accept 33 >>Aceite Lobos Além da Fronteira
    .target Eagan Peltskinner
step
    #completewith next
    >>Abate |cRXP_LOOT_Young Wolves|r e |cRXP_LOOT_Timber Wolves|r. Saqueie-os pelos seus |cRXP_LOOT_Tough Lobo Carne|r
    >>Concentre-se em |cRXP_LOOT_Young Wolves|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
#loop
	.line Elwynn Forest,47.01,35.68,47.70,35.04,49.81,35.14,49.82,36.23,49.18,37.16,47.01,35.68
	.goto Elwynn Forest,47.01,35.68,35,0
	.goto Elwynn Forest,47.70,35.04,35,0
	.goto Elwynn Forest,49.81,35.14,35,0
	.goto Elwynn Forest,49.82,36.23,35,0
	.goto Elwynn Forest,49.18,37.16,35,0
	.goto Elwynn Forest,47.01,35.68,35,0
    >>Abate |cRXP_ENEMY_Kobold Daninho|r
    >>|cRXP_WARN_Abate Nível 1 |cRXP_ENEMY_Kobold Daninho|r se possível|r
    .complete 7,1 --Kill Kobold Vermin (x10)
	.mob Kobold Vermin
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    >>Mate os |cRXP_LOOT_Young Wolves|r e os |cRXP_LOOT_Timber Wolves|r. Saqueie-os para obter |cRXP_LOOT_Tough Lobo Carne|r
    >>Concentre-se em |cRXP_LOOT_Young Wolves|r
    .complete 33,1 --Collect Tough Wolf Meat (x8)
	.mob Young Wolf
    .mob Timber Wolf
step
    .goto Elwynn Forest,48.94,40.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Eagan|r
    .turnin 33,1 >>Entregue Lobos Além da Fronteira
    .target Eagan Peltskinner
step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danil|r
    |cRXP_BUY_Buy 10|r |T132794:0|t[Refreshing Spring Water] |cRXP_BUY_from him|r
    .vendor >>Comerciante Lixo
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_McBride|r dentro
    .turnin 7 >>Entregue Limpeza do Acampamento Kobold
    .accept 15 >>Aceite Investigar a Serra do Eco
    .accept 3104 >>Aceite Carta Glífica
    .target Marshal McBride
step
#loop
	.line Elwynn Forest,47.25,36.41,47.39,35.77,47.35,34.06,46.29,32.42,47.75,32.77,50.11,34.98,47.25,36.41
	.goto Elwynn Forest,47.25,36.41,35,0
	.goto Elwynn Forest,47.39,35.77,35,0
	.goto Elwynn Forest,47.35,34.06,35,0
	.goto Elwynn Forest,46.29,32.42,35,0
	.goto Elwynn Forest,47.75,32.77,35,0
	.goto Elwynn Forest,50.11,34.98,35,0
	.goto Elwynn Forest,47.25,36.41,35,0
    >>Mate |cRXP_ENEMY_Operários Kobold|r
    .complete 15,1 --Kill Kobold Worker (x10)
	.mob Kobold Worker
step
#loop
	.line Elwynn Forest,49.32,37.91,48.24,37.88,46.18,37.29,45.69,39.05,46.03,40.91,48.04,39.55,49.32,37.91
	.goto Elwynn Forest,49.32,37.91,35,0
	.goto Elwynn Forest,48.24,37.88,35,0
	.goto Elwynn Forest,46.18,37.29,35,0
	.goto Elwynn Forest,45.69,39.05,35,0
	.goto Elwynn Forest,46.03,40.91,35,0
	.goto Elwynn Forest,48.04,39.55,35,0
	.goto Elwynn Forest,49.32,37.91,35,0
    .xp 3+1110 >>Faça grind até 1110+/1400xp
	.mob Young Wolf
	.mob Kobold Vermin
    .mob Timber Wolf
 step
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .vendor >>Comerciante Lixo
    .collect 159,10,15,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_McBride|r dentro
    .turnin 15 >>Entregue Investigar a Serra do Eco
    .accept 21 >>Aceite Escaramuça na Serra do Eco
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.44,39.89,5,0
    >>Pule das escadas para o corrimão
    .goto Elwynn Forest,49.66,39.41,10 >>Viaje para |cRXP_FRIENDLY_Khelden|r andar de cima
step
    #season 0
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Khelden|r
    .turnin 3104 >>Entregue Carta Glífica
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Khelden Bremen
step
    #season 2
    .goto Elwynn Forest,49.66,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khelden|r
    .accept 77620 >>Aceite Pesquisa de Feitiços << Human
    .turnin 3104 >>Entregue Carta Glífica
    .train 116 >>Treine |T135846:0|t[Seta de Gelo]
    .target Khelden Bremen
step
    #completewith next
    .goto Elwynn Forest,49.66,40.15,10,0
    .goto Elwynn Forest,49.26,40.67,10,0
    .goto Elwynn Forest,48.97,41.14,10,0
    .goto Elwynn Forest,48.171,42.943,10 >>Vá para |cRXP_FRIENDLY_Willem|r
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willem|r
    .accept 18 >>Aceite Irmandade de Ladrões
    .target Deputy Willem
step
    #season 2
    #loop
    #label CALEENCI
    #completewith RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    >>Abate os |cRXP_ENEMY_Defias Thugs|r. Saque-os para a |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    >>|cRXP_WARN_NOTA: Você não conseguirá treinar|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_aqui pois você só pode obter uma|r |T133736:0|t[Compreensão Primer] |cRXP_WARN_na zona inicial de sua raça|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #season 2
    #requires CALEENCI
    #completewith RedBurlapBandana
    .train 401760 >>|cRXP_WARN_Use as|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    #loop
    #label RedBurlapBandana
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,30,0
    .goto Elwynn Forest,53.89,50.52,30,0
    .goto Elwynn Forest,55.09,49.00,30,0
    .goto Elwynn Forest,55.43,45.87,30,0
    .goto Elwynn Forest,53.86,47.05,30,0
#loop
	.line Elwynn Forest,51.14,49.29,52.55,48.75,53.81,48.09,54.58,49.02,55.15,47.86,54.76,45.96,53.81,44.79,,51.14,49.29
	.goto Elwynn Forest,51.14,49.29,35,0
	.goto Elwynn Forest,52.55,48.75,35,0
	.goto Elwynn Forest,53.81,48.09,35,0
	.goto Elwynn Forest,54.58,49.02,35,0
	.goto Elwynn Forest,55.15,47.86,35,0
	.goto Elwynn Forest,54.76,45.96,35,0
	.goto Elwynn Forest,53.81,44.79,35,0
	.goto Elwynn Forest,51.14,49.29,35,0
    >>Abate |cRXP_ENEMY_Defias Thugs|r. Saque-os para |cRXP_LOOT_Red Burlap Bandanas|r
    .complete 18,1 --Collect Red Burlap Bandana (x12)
	.mob Defias Thug
step
    #optional
    #season 2
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Abate os |cRXP_ENEMY_Defias Thugs|r. Saque-os para a |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    >>|cRXP_WARN_NOTA: Você não conseguirá treinar|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_aqui pois você só pode obter uma|r |T133736:0|t[Compreensão Primer] |cRXP_WARN_na zona inicial de sua raça|r << !Human
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
step << Human
    #optional
    #season 2
    .train 401760 >>|cRXP_WARN_Use as|r |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Willem|r
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
    .goto Elwynn Forest,47.48,41.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Danil|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .vendor >>Comerciante Lixo
    .collect 159,10,21,1 --Collect Refreshing Spring Water (x10)
    .target Brother Danil
step
    #completewith next
    .goto Elwynn Forest,47.76,31.62,40 >>Entre na mina
step
    #label Laborer
    .goto Elwynn Forest,47.99,30.66,40,0
    .goto Elwynn Forest,48.32,28.84,40,0
    .goto Elwynn Forest,48.58,26.57,40,0
    .goto Elwynn Forest,49.95,25.74,40,0
    .goto Elwynn Forest,50.27,26.83
    >>Mate os |cRXP_ENEMY_Kobold Laborers|r
    .complete 21,1 --Kill Kobold Laborer (x12)
	.mob Kobold Laborer
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Milly|r
    .turnin 3903 >>Entregue Madel Quintana
    .accept 3904 >>Aceite Colheita da Madel
    .target Milly Osworth
step
    #completewith Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >>Farme até 1175+/2800xp
    .mob Defias Thug
step
    #completewith next
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>Pegue o |cRXP_PICK_Buckets of Grapes|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
    .goto Elwynn Forest,57.52,48.25
    >>Abate |cRXP_ENEMY_Garrick Patatenra|r. Saqueie-o para |cRXP_LOOT_Garrick's Cabeça|r
    .complete 6,1 --Collect Garrick's Head (x1)
	.mob Garrick Padfoot
step
    #label Harvest
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    >>Saque os |cRXP_PICK_Buckets of Grapes|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 3904,1 --Collect Milly's Harvest (x8)
step
#loop
	.line Elwynn Forest,53.68,47.29,52.82,48.78,54.43,48.10,54.52,49.58,53.85,50.68,54.52,49.58,54.43,48.10,53.68,47.29
	.goto Elwynn Forest,53.68,47.29,35,0
	.goto Elwynn Forest,52.82,48.78,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,53.85,50.68,35,0
	.goto Elwynn Forest,54.52,49.58,35,0
	.goto Elwynn Forest,54.43,48.10,35,0
	.goto Elwynn Forest,53.68,47.29,35,0
    .xp 5+1175 >>Triture até 1175+/2800 XP
    .mob Defias Thug
step
    .goto Elwynn Forest,50.70,39.35
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Milly|r
    .turnin 3904 >>Entregue Colheita da Madel
    .accept 3905 >>Aceite Manifesto das Uvas
    .target Milly Osworth
step
    .goto Elwynn Forest,48.171,42.943
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Willem|r
    .turnin 6,1 >>Entregue Recompensa por Garrick Patatenra
    .target Deputy Willem
step
    .goto Elwynn Forest,48.923,41.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_McBride|r dentro
    .turnin 21,3 >>Entregue Escaramuça na Serra do Eco
    .accept 54 >>Aceite Relatório para Vila Dourada
    .target Marshal McBride
step
    #completewith next
    .goto Elwynn Forest,49.18,41.84,10,0
    .goto Elwynn Forest,49.55,41.56,10,0
    .goto Elwynn Forest,49.39,40.98,10,0
    .goto Elwynn Forest,48.98,41.17,10,0
    .goto Elwynn Forest,49.20,41.81,10,0
    .goto Elwynn Forest,49.57,41.46,10,0
    .goto Elwynn Forest,49.33,40.93,10,0
    >>Vá para cima
    .goto Elwynn Forest,49.471,41.586,10 >>Vá em direção a |cRXP_FRIENDLY_Neals|r
step
    .goto Elwynn Forest,49.471,41.586
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
    .goto Elwynn Forest,49.661,39.402,12 >>Desça as escadas, depois vá em direção a |cRXP_FRIENDLY_Gaspar Melchior|r
    .isQuestComplete 77620
step << Human
    #season 2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaspar Melchior|r dentro
    .turnin 77620 >>Entregue Pesquisa de Feitiços
    .target Khelden Bremen
    .isQuestComplete 77620
step
    .goto Elwynn Forest,45.56,47.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falkhaan|r
    .accept 2158 >>Aceite Descanso e Relaxamento
    .target Falkhaan Isenstrider
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dughan|r
    .turnin 54 >>Entregue Relatório para Vila Dourada
    .accept 62 >>Aceite A Mina Fundaprofunda
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_William|r através da parede enquanto entra na Estalagem
    .accept 60 >>Aceite Velas Kobold
    .target William Pestle
step
    #completewith next
    .home >>Defina sua Pedra de Regresso para Vila Dourada
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Farley|r
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Farley|r
    .turnin 2158,2 >>Entregue Descanso e Relaxamento
    .vendor 295 >>Comerciante de Lixo. |cRXP_BUY_Compre|r |T132815:0|t[Leite Gelado] |cRXP_BUY_por até 2 prata|r
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.25,66.25
    >>Salte para o Lustre lá embaixo
    >>Fale com |cRXP_FRIENDLY_Zaldimar|r através da parede
    .trainer >>Treine seus feitiços de classe (Bola de Fogo R2, Impacto de Fogo)
	.target Zaldimar Wefhellt
step
    .goto Elwynn Forest,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Remy|r
    .accept 47 >>Aceite Trocando Pó de Ouro
    .target Remy "Two Times"
step
    #completewith BoarMeat1
    >>Abate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bernice|r e |cRXP_FRIENDLY_Ma|r
    .accept 85 >>Aceite O Colar Perdido
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .accept 88 >>Aceite Princesa Tem Que Morrer!
	.goto Elwynn Forest,34.660,84.482
    .target +Ma Stonefield
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r. Saque-os para |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Velas dos kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billy|r
    .turnin 85 >>Entregue O Colar Perdido
    .accept 86 >>Aceite Torta para o Guinho
    .target Billy Maclure
step
    #label BoarMeat1
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maybell|r dentro
    .accept 106 >>Aceite Jovens Amantes
    .target Maybell Maclure
step
    .goto Elwynn Forest,42.36,89.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_BUY_que você puder pagar dele|r
    .vendor 258 >>Comerciante Lixo
    .target Joshua Maclure
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto Elwynn Forest,29.840,85.997
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tommy|r
    .turnin 106 >>Entregue Jovens Amantes
    .accept 111 >>Aceite Fale com a Vovó
    .target Tommy Joe Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    >>Abate os |cRXP_ENEMY_Stonetusk Boars|r. Saqueie-os para |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 769,4,86,1 --Collect Chunk of Boar Meat (x4)
    .mob Stonetusk Boar
step
    .goto Elwynn Forest,34.486,84.253
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bernice|r e depois |cRXP_FRIENDLY_Gramma|r dentro
    .turnin 86 >>Entregue Torta para o Guinho
    .accept 84 >>Aceite De Volta para o Guinho
    .target +"Auntie" Bernice Stonefield
    .goto Elwynn Forest,34.486,84.253
    .turnin 111 >>Entregue Fale com a Vovó
    .accept 107 >>Aceite Bilhete para Durval
    .target +Gramma Stonefield
    .goto Elwynn Forest,34.94,83.86
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r. Saqueie-os para obter |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Velas dos kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
step
    .goto Elwynn Forest,43.132,85.722
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Billy|r
    .turnin 84 >>Entregue De Volta para o Guinho
    .accept 87 >>Aceite Dentadouro
    .target Billy Maclure
step
    .goto Elwynn Forest,42.36,89.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Joshua|r
    >>|cRXP_BUY_Compre o máximo|r |T132815:0|t[Leite Gelado] |cRXP_BUY_quanto você puder pagar dele|r
    .vendor 258 >>Comerciante Lixo
    .target Joshua Maclure
    .itemcount 1179,<8
step
    #completewith Mine
    .goto Elwynn Forest,39.00,82.27,15 >>Entre na Mina Fargodeep
step
    #completewith Goldtooth
    >>Abate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saque-os para |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Velas dos kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step
    #label Mine
    .goto Elwynn Forest,39.07,80.87,12,0
    .goto Elwynn Forest,39.71,79.92
    >>Entre em um dos maiores espaços abertos em Fargodeep Mina
    .complete 62,1 --Scout Through the Fargodeep Mine
step
    #completewith next
    .goto Elwynn Forest,39.95,78.81,12,0
    .goto Elwynn Forest,40.43,78.33,12,0
    .goto Elwynn Forest,41.73,78.03,40 >>Vá em direção a |cRXP_ENEMY_Dentadouro|r
step
    #label Goldtooth
    .goto Elwynn Forest,41.73,78.03
    >>Mate |cRXP_ENEMY_Dentadouro|r. Saqueie |T133970:0|t|cRXP_LOOT_Bernice's Colar|r dele
    .complete 87,1 --Collect Bernice's Necklace (x1)
    .mob Goldtooth
step
#loop
	.line Elwynn Forest,39.14,82.87,39.16,84.79,37.81,85.40,36.76,83.19,38.02,81.70,39.14,82.87
	.goto Elwynn Forest,39.14,82.87,35,0
	.goto Elwynn Forest,39.16,84.79,35,0
	.goto Elwynn Forest,37.81,85.40,35,0
	.goto Elwynn Forest,36.76,83.19,35,0
	.goto Elwynn Forest,38.02,81.70,35,0
	.goto Elwynn Forest,39.14,82.87,35,0
    >>Mate os |cRXP_ENEMY_Kobold Tunnelers|r e os |cRXP_ENEMY_Kobold Miners|r. Saqueie-os para obter |cRXP_LOOT_Pó de Ouro|r e |cRXP_LOOT_Velas dos kobolds|r
    .complete 47,1 --Collect Gold Dust (x10)
    .complete 60,1 --Collect Kobold Candle (x8)
    .mob Kobold Tunneler
    .mob Kobold Miner
step << skip
    #completewith next
    .goto Elwynn Forest,41.29,79.85,-1
    .goto Elwynn Forest,41.75,78.49,-1
    .goto Elwynn Forest,41.91,77.81,-1
    .goto Elwynn Forest,40.15,80.12,-1
    .goto Elwynn Forest,39.90,81.46,-1
    .goto Elwynn Forest,40.86,81.24,-1
    .goto Elwynn Forest,40.32,79.31,-1
    .goto Elwynn Forest,39.30,60.48,30 >>|cRXP_WARN_Faça um Pulo de Logout dentro da caverna pulando em um triturador, nos troncos flutuantes, nas caixas, ou na luz do minecart dentro da caverna, depois saia e entre de novo|r
    >>|cRXP_WARN_Alternativamente, volte correndo para Goldshire|r
    >>|cRXP_WARN_NOTA: Itemrack pode causar problemas após logout skip onde a UI do jogo congela. Desabilite o addon ou crie uma macro /reload para clicar se isso acontecer|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_Clique aqui para aprender como fazer skip de logout|r
step
    #completewith next
    .subzone 87 >>Volte para Goldshire
step
    .goto Elwynn Forest,42.14,67.26
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Remy|r
    .turnin 47 >>Entregue Trocando Pó de Ouro
    .accept 40 >>Aceite Perigo Anfíbio
    .target Remy "Two Times"
step
    .goto Elwynn Forest,42.105,65.927
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dughan|r
    .turnin 40 >>Entregue Perigo Anfíbio
    .accept 35 >>Aceite Mais Preocupações
    .turnin 62 >>Entregue A Mina Vailafundo
    .accept 76 >>Aceite A Mina de Jaspe
    .target Marshal Dughan
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_William|r pela parede ao entrar na Estalagem
    .turnin 60 >>Entregue Velas dos Kobolds
    .accept 61 >>Aceite Carregamento para Ventobravo
    .turnin 107 >>Entregue Bilhete para Durval
    .accept 112 >>Aceite Coletando Alga
    .target William Pestle
step
    .goto Elwynn Forest,43.771,65.803
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Compre 35|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .vendor >>Comerciante Lixo
    .collect 1179,35,432,1 --Ice Cold Milk (35)
    .target Innkeeper Farley
step
    .goto Elwynn Forest,43.96,65.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brog|r
    .vendor >>|cRXP_BUY_Compre um|r |T133634:0|t[Pequeno Brown Pouch] |cRXP_BUY_dele|r
	.target Brog Hamfist
    .money <0.05
step
    #completewith next
    .goto Elwynn Forest,43.24,65.96,10,0
    .goto Elwynn Forest,42.88,65.52,12 >>Saia da Estalagem
step
    .goto Elwynn Forest,50.45,62.69,50,0
    .goto Elwynn Forest,51.09,64.75,50,0
    .goto Elwynn Forest,52.66,64.95,50,0
    .goto Elwynn Forest,54.10,62.74,50,0
    .goto Elwynn Forest,57.48,63.21,50,0
    .goto Elwynn Forest,56.37,66.50
    >>Mate os |cRXP_ENEMY_Murloc Streamrunners|r e os |cRXP_ENEMY_Murlocs|r. Saqueie-os por |cRXP_LOOT_Crystal Alga Frond|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Murloc Streamrunners|r têm|r |T132307:0|t[Increased Movespeed]
    .complete 112,1 --Collect Crystal Kelp Frond (x4)
	.mob Murloc Streamrunner
	.mob Murloc
step
    #completewith next
    .goto Elwynn Forest,61.66,53.96,12 >>Entre na Mina Jasperlode
step
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,60.40,50.16
    >>Siga o caminho do meio da caverna
    >>|cRXP_WARN_Tome cuidado pois os |cRXP_ENEMY_Kobold Geomancers|r lançam |T135812:0|t[Bola de Fogo] |cRXP_WARN_(Lançamento à Distância: Causa cerca de 30 de dano)|r
    .complete 76,1 --Scout through the Jasperlode Mine
step
    #completewith next
    .goto Elwynn Forest,60.68,50.84,12,0
    .goto Elwynn Forest,61.19,51.47,12,0
    .goto Elwynn Forest,61.81,53.89,15 >>Saia da Mina Jasperlode
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomás|r
    .turnin 35 >>Entregue Mais Preocupações
    .accept 37 >>Aceite Encontre os Guardas Perdidos
    .accept 52 >>Aceite Proteja a Fronteira
    .target Guard Thomas
step
    #completewith next
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,72.59,65.60,45,0
    .goto Elwynn Forest,71.61,60.82,50,0
    >>Mate todos os |cRXP_ENEMY_Young Forest Ursos|r que você vê e os |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto Elwynn Forest,72.65,60.33
	>>Clique em |cRXP_PICK_half-eaten body|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .turnin 37 >>Entregue Encontre os Guardas Perdidos
    .accept 45 >>Aceite Descubra o Destino de Rodolfo
step
    #completewith Bears
    .goto Elwynn Forest,78.78,60.94,70,0
    >>Mate todos os |cRXP_ENEMY_Young Forest Ursos|r que você vê e os |cRXP_ENEMY_Prowlers|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .unitscan +Young Forest Bear
    .complete 52,1 --Kill Prowler (x8)
	.mob +Prowler
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raelen|r
    .accept 5545 >>Aceite Um Feixe de Encrenca
    .target Supervisor Raelen
step
    #completewith next
    >>Pegue os |cRXP_PICK_Bundles Of Madeira|r na base das árvores
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,79.79,55.51,45 >>Vá para |cRXP_PICK_Rolf's Cadáver|r
    .isOnQuest 45
step
    .goto Elwynn Forest,79.79,55.51
    >>Mate os |cRXP_ENEMY_Murloc Lurkers|r e os |cRXP_ENEMY_Murloc Foragers|r guardando |cRXP_PICK_Rolf's Cadáver|r
    >>|cRXP_WARN_Você pode ter que matar um e depois reiniciar|r
    >>Tenha cuidado pois |cRXP_ENEMY_Murloc Lurkers|r lançam |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_(Combate Corpo a Corpo Instantâneo: Causa dano dobrado vindo de trás)|cRXP_ENEMY_ e |rMurloc Foragers|r lançam |T135915:0|t[Beber Poção Menor] |cRXP_WARN_(Auto-uso: Cura cerca de 65 pontos)|r
	>>Clique em |cRXP_PICK_Rolf's Cadáver|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .turnin 45 >>Entregue Descubra o Destino de Rodolfo
    .accept 71 >>Aceite Apresente-se a Tomás
step
#loop
	.line Elwynn Forest,80.48,55.18,80.88,53.88,79.68,52.31,80.86,52.17,80.88,53.88,80.48,55.18,79.76,56.70,80.15,60.03,80.24,61.46,81.27,61.59,81.58,62.64,82.79,60.12,83.25,61.12,83.48,59.19,81.77,59.17,80.48,55.18
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,79.68,52.31,35,0
	.goto Elwynn Forest,80.86,52.17,35,0
	.goto Elwynn Forest,80.88,53.88,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
	.goto Elwynn Forest,79.76,56.70,35,0
	.goto Elwynn Forest,80.15,60.03,35,0
	.goto Elwynn Forest,80.24,61.46,35,0
	.goto Elwynn Forest,81.27,61.59,35,0
	.goto Elwynn Forest,81.58,62.64,35,0
	.goto Elwynn Forest,82.79,60.12,35,0
	.goto Elwynn Forest,83.25,61.12,35,0
	.goto Elwynn Forest,83.48,59.19,35,0
	.goto Elwynn Forest,81.77,59.17,35,0
	.goto Elwynn Forest,80.48,55.18,35,0
    >>Saque o |cRXP_PICK_Bundles Of Madeira|r na base das árvores
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 5545,1 --Collect Bundle of Wood (x8)
step
    .goto Elwynn Forest,81.382,66.112
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raelen|r
    .turnin 5545 >>Entregue Um Feixe de Encrenca
    .target Supervisor Raelen
step
    #label Bears
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara|r dentro
    .accept 83 >>Aceite Mercadorias de Linho Vermelho
    .target Sara Timberlain
step
    .goto Elwynn Forest,75.05,72.54,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85,45,0
    .goto Elwynn Forest,74.89,67.20,45,0
    .goto Elwynn Forest,75.75,74.57,45,0
    .goto Elwynn Forest,76.66,76.68,45,0
    .goto Elwynn Forest,79.27,79.44,45,0
    .goto Elwynn Forest,81.57,76.85
    >>Mate todos os |cRXP_ENEMY_Young Forest Ursos|r que você vê e os |cRXP_ENEMY_Prowlers|r
    >>|cRXP_WARN_Inflige 51%+ de dano nos |cRXP_ENEMY_Young Forest Ursos|r e nos |cRXP_ENEMY_Prowlers|r, depois puxe-os para o |cRXP_FRIENDLY_Guarda de Ventobravo|r para matá-los mais eficientemente|r
    .complete 52,2 --Kill Young Forest Bear (x5)
    .complete 52,1 --Kill Prowler (x8)
    .unitscan Young Forest Bear
    .mob Prowler
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomás|r
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .accept 109 >>Aceite Entregar para Miguel Mantoforte
    .target Guard Thomas
    .xp <9,1
step
    .goto Elwynn Forest,73.973,72.179
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tomás|r
    .turnin 52 >>Entregue Proteja a Fronteira
    .turnin 71 >>Entregue Apresente-se a Tomás
    .accept 39 >>Aceite Entregar o Relatório de Tomás
    .target Guard Thomas
step
#loop
	.line Elwynn Forest,70.45,76.94,68.68,76.69,68.23,77.78,67.80,80.76,68.49,82.68,70.71,81.48,70.63,80.66,71.51,78.96,70.95,77.25,71.38,76.77,70.95,77.25,70.45,76.94
	.goto Elwynn Forest,70.45,76.94,40,0
	.goto Elwynn Forest,68.68,76.69,40,0
	.goto Elwynn Forest,68.23,77.78,40,0
	.goto Elwynn Forest,67.80,80.76,40,0
	.goto Elwynn Forest,68.49,82.68,40,0
	.goto Elwynn Forest,70.71,81.48,40,0
	.goto Elwynn Forest,70.63,80.66,40,0
	.goto Elwynn Forest,71.51,78.96,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,71.38,76.77,40,0
	.goto Elwynn Forest,70.95,77.25,40,0
	.goto Elwynn Forest,70.45,76.94,40,0
    >>Mate os |cRXP_ENEMY_Bandidos Défias|r. Saque-os para obter |cRXP_LOOT_Red Linen Bandanas|r e |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r]
    >>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    .complete 83,1 --Collect Red Linen Bandana (x6)
    .collect 1972,1,184,1 --Collect Westfall Deed (x1)
    .disablecheckbox
	.mob Defias Bandit
    .isOnQuest 83
step
    #label Deed
    >>|cRXP_WARN_Use o |T134939:0|t[|cRXP_LOOT_Escritura de Cerro Oeste|r] para iniciar a missão|r
    .accept 184 >>Aceite Escritura do Taturana
    .itemcount 1972,1
step
    .goto Elwynn Forest,69.89,79.52
    >>Mate a |cRXP_ENEMY_Princesa|r. Saque-a para obter o |cRXP_LOOT_Colar de Latão|r
    >>|cRXP_WARN_Lembre-se de usar a cerca para kitar ela|r
    .complete 88,1 --Collect Brass Collar (x1)
    .mob Princess
step
    .goto Elwynn Forest,79.457,68.789
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sara|r
    .turnin 83 >>Entregue Mercadorias de Linho Vermelho
    .target Sara Timberlain
    .isQuestComplete 83
step << skip
    .goto Redridge Mountains,9.62,71.36
    .zone Redridge Mountains >>Vá para Montanhas Cristarrubra
    .isOnQuest 88
step << skip
    #completewith next
    +|cRXP_WARN_Siga cuidadosamente a estrada para |cRXP_FRIENDLY_Ariena|r. Evite os |cRXP_ENEMY_Tarantulas|r e os |cRXP_ENEMY_Black Dragão Whelps|r no caminho|r
    .mob Black Dragon Whelp
    .mob Tarantula
step << skip
    .goto Redridge Mountains,30.59,59.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
    .target Ariena Stormfeather
step
    #completewith next
    .hs >>Volte para Goldshire
step
    .goto Elwynn Forest,43.283,65.721
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_William Pegome|r
    .turnin 112 >>Entregue Coletando Alga
    .accept 114 >>Aceite A Fuga
    .target William Pestle
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dughan|r e |cRXP_FRIENDLY_Argus|r
    .turnin 39 >>Entregue O Relatório de Tomás
    .turnin 76 >>Entregue A Mina de Jaspe
    .accept 239 >>Aceite Ribeira d'Oeste Precisa de Ajuda!
    .accept 109 >>Aceite Entregar para Miguel Mantoforte
    .target +Marshal Dughan
    .goto Elwynn Forest,42.105,65.927
    .accept 1097 >>Aceite Tarefa de Elmore
    .target +Smith Argus
    .goto Elwynn Forest,41.706,65.544
step
    .goto Elwynn Forest,43.16,89.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maybell|r dentro
    .turnin 114 >>Entregue A Fuga
    .target Maybell Maclure
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ma|r e |cRXP_FRIENDLY_Bernice|r
    .turnin 88,3 >>Entregue Princesa tem que Morrer!
    .target +Ma Stonefield
    .goto Elwynn Forest,34.660,84.482
    .turnin 87 >>Entregue Dentadouro
    .goto Elwynn Forest,34.486,84.253
    .target +"Auntie" Bernice Stonefield
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >>Farme até 4225+/6500 XP
    .mob Stonetusk Boar
    .isOnQuest 184
step
#loop
	.line Elwynn Forest,31.15,85.36,33.08,86.64,33.51,85.22,32.17,83.88,31.15,85.36
	.goto Elwynn Forest,31.15,85.36,35,0
	.goto Elwynn Forest,33.08,86.64,35,0
	.goto Elwynn Forest,33.51,85.22,35,0
	.goto Elwynn Forest,32.17,83.88,35,0
	.goto Elwynn Forest,31.15,85.36,35,0
    .xp 9+4825 >>Farme até 4825+/6500 XP
    .mob Stonetusk Boar
    .itemcount 1972,<1
step
    .goto Elwynn Forest,24.23,74.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rainer|r
    .turnin 239 >>Entregue Ribeira d'Oeste Precisa de Ajuda!
    .target Deputy Rainer
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Verna|r
    .accept 64 >>Aceite A Herança Esquecida
    .turnin 184 >>Entregue Escritura do Taturana
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .accept 151 >>Aceite A Pobre Velhinha Brancurinha
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
    .isOnQuest 184
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Verna|r
    .accept 64 >>Aceite A Herança Esquecida
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .accept 151 >>Aceite A Pobre Velhinha Brancurinha
    .target +Verna Furlbrow
    .goto Westfall,59.91,19.41
step
    #completewith next
    >>Abra os |cRXP_PICK_Saco de Aveia|r no chão. Saqueie-os para |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r e depois |cRXP_FRIENDLY_Salma|r dentro
    .accept 9 >>Aceite Os Campos da Morte
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 36 >>Entregue Ensopado de Cerro Oeste
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
    .target +Salma Saldean
    .goto Westfall,56.42,30.52
step
    #completewith next
    >>|cRXP_WARN_Tenha MUITO cuidado com os |cRXP_ENEMY_Harvest Watchers|r e os |cRXP_ENEMY_Harvest Golems|r no caminho|r
    .goto Westfall,56.33,47.52,20 >>Vá para |cRXP_FRIENDLY_Gryan|r
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gryan|r, |cRXP_FRIENDLY_Danuvin|r, e depois |cRXP_FRIENDLY_Lewis|r dentro
    .turnin 109 >>Entregue Relatório para Gryan Mantoforte
    .accept 12 >>Aceite A Milícia do Povo
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .accept 102 >>Aceite Patrulhando Cerro Oeste
    .target +Captain Danuvin
    .goto Westfall,56.42,47.62
    .accept 6181 >>Aceite Um Recado Rápido
    .goto Westfall,57.002,47.169
    .target +Quartermaster Lewis
step
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .turnin 6181 >>Entregue Um Recado Rápido
    .accept 6281 >>Aceite Continue para Ventobravo
    .target Thor
step
    #completewith next
    .goto Westfall,56.56,52.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
	.target Thor
step
    #completewith next
    .goto StormwindClassic,63.10,65.18,20,0
    .goto StormwindClassic,58.13,59.40,20,0
    .goto StormwindClassic,57.06,61.83,20,0
    .goto StormwindClassic,56.55,64.79,12,0
    .goto StormwindClassic,56.20,64.60,12 >>Vá para |cRXP_FRIENDLY_Morgan|r
step
    .goto StormwindClassic,56.20,64.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Morgan|r
    .turnin 61,1 >>Entregue Carregamento para Ventobravo
    .target Morgan Pestle
step
    .goto Stormwind City,55.46,65.26
    >>Fale com |cRXP_FRIENDLY_Keldric|r
    .vendor 1257 >>|cRXP_BUY_Compre|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Orlande Bórgia
step << skip
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Suba na tocha, depois desça para ficar embaixo de Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Justo" ou "Baixo", entre no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe reto para frente|r
    .goto Stormwind City,38.61,79.39,10 >>Viaje para |cRXP_FRIENDLY_Jennea|r
step << skip
    .goto Stormwind City,38.61,79.39
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine seus feitiços de classe (Armadura de Gelo r2, Novane de Gelo, Polimorfia, Conjurar Água r1 & r2)
    >>Custo Total: 15s
    >>Lembre que você pode querer dinheiro para Poções de Cura (3s cada), Tubo de Bronze (8s cada) e comida de nível 5 (20c por 5)
    .target Jennea Cannon
step << skip
    #completewith next
    .goto Stormwind City,36.30,82.90,6 >>Passe pelo portal verde
step
    #completewith next
    .goto StormwindClassic,57.32,59.15,10,0
    .goto StormwindClassic,58.17,57.90,12,0
    .goto StormwindClassic,57.81,54.73,12,0
    .goto StormwindClassic,60.05,51.60,12,0
    .goto StormwindClassic,67.54,46.88,12,0
    .goto StormwindClassic,71.01,48.62,12,0
    .goto StormwindClassic,74.31,47.22,12 >>Vá em direção a |cRXP_FRIENDLY_Osric|r
step
    .goto StormwindClassic,74.31,47.22
    >>Fale com |cRXP_FRIENDLY_Osric|r
    .turnin 6281 >>Entregue Siga para Ventobravo
    .accept 6261 >>Aceite Dungar Tragolongo
    .target Osric Strang
step
    #completewith next
    .goto StormwindClassic,69.20,40.75,15,0
    .goto StormwindClassic,67.03,40.27,15,0
    .goto StormwindClassic,64.49,36.75,15,0
    .goto StormwindClassic,64.97,29.32,15,0
    .goto StormwindClassic,51.89,13.19,12,0
    .goto StormwindClassic,51.76,12.08,12 >>Vá em direção a |cRXP_FRIENDLY_Grimand|r
step
    .goto StormwindClassic,51.76,12.08
    >>Fale com |cRXP_FRIENDLY_Grimand|r
    .turnin 1097 >>Entregue Tarefa de Elmore
    .accept 353 >>Aceite Entrega para Lançatroz
    .target Grimand Elmore
step
    .goto Stormwind City,55.25,7.07
    >>Fale com |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .money <0.08
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >>Vá para o Deeprun Tram
step
    #completewith next
    +|cRXP_WARN_Ride the Deeprun Tram whilst spam casting|r |T132794:0|t[Conjurar Água r2]
step
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
    >>Fale com |cRXP_FRIENDLY_Monty|r depois de pegar o tram
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
    .turnin 6661 >>Virar em Ratos de Porão
    .target Monty
    .zoneskip Stormwind City
step
    .zone Ironforge >>Entre em Ironforge
    .isQuestAvailable 314
step
    .goto Ironforge,67.83,42.47
    >>Fale com |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Ironforge,69.93,34.13,30,0
    .goto Ironforge,63.03,30.09,30,0
    .goto Ironforge,57.78,35.11,30,0
    .goto Ironforge,55.49,47.74,10 >>Vá para |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .fp Ironforge >>Aprenda a rota de voo para Ironforge
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>Vá para |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine seus feitiços de classe (Armadura de Gelo r2, Novane de Gelo, Polimorfia, Conjurar Água r1 & r2)
    >>Custo Total: 15s
    >>Lembre que você pode querer dinheiro para Poções de Cura (3s cada), Tubo de Bronze (8s cada) e comida de nível 5 (20c por 5)
    .target Dink
step
    #completewith next
    .goto Ironforge,27.25,12.79,20,0
    .goto Ironforge,22.59,38.13,20,0
    .goto Ironforge,20.40,53.19,20,0
    >>Entre no prédio
    .goto Ironforge,18.14,51.45,10 >>Voe para |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Fale com |cRXP_FRIENDLY_Firebrew|r
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
step
    #completewith BankDeposit
    .goto Ironforge,33.05,63.11,20,0
    .goto Ironforge,35.93,60.13,30 >>Entre no Banco de Ironforge
step
    .goto Ironforge,35.93,60.13
    >>Fale com |cRXP_FRIENDLY_Bailey|r
    .bankdeposit 4371,16115 >>Deposite os itens a seguir no banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T132763:0|t[Caixote de Osric]
    .target Bailey Stonemantle
step << skip
    .goto Ironforge,36.35,57.88
    .goto Dun Morogh,53.03,35.71,10 >>|cRXP_WARN_Salte no topo dos lados do cofre. Faça logout e pule para Dun Morogh|r
    .isQuestAvailable 314
step
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >>Saia de Altaforja
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Human Mage
#name 10-11 ADV Dun Morogh Human Mago AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor Human Mage
#next 10-12 ADV Costa Negra 1 Mago AdE

step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Suba o caminho de terra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    +|cRXP_WARN_Leve |cRXP_ENEMY_Ragash|r para|r |cRXP_FRIENDLY_Rudra|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLIQUE AQUI Se você está tendo dificuldades|r
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>Fale com |cRXP_FRIENDLY_Rudra|r
    .accept 314 >>Aceite Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>Abate |cRXP_ENEMY_Ragash|r. Saque-o para obter o |cRXP_LOOT_Dentada de Ragash|r
    >>|cRXP_WARN_Atraia |cRXP_ENEMY_Ragash|r até o |cRXP_FRIENDLY_Dun Morogh Montanhista|r ao sul do rancho. Certifique-se de que você causa 51%+ de dano a ele|r
    >>|cRXP_WARN_Lembre-se de conseguir XP de exploração em Tundrid Hills e atraia o |cRXP_ENEMY_Neve Leopardo|r para o |cRXP_FRIENDLY_Dun Morogh Montanhista|r se for conveniente|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>Fale com |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >>Entregue Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
    #completewith Ghilm
    +|cRXP_WARN_Lembre-se de guardar|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você consegue ao subir de nível|r |T133971:0|t[Culinária] |cRXP_WARN_até 50 depois|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_Atraia o |cRXP_ENEMY_Urso de Garra de Gelo|r para o |cRXP_FRIENDLY_Ironforge Montanhista|r (certifique-se de que você causa 51%+ de dano para ganhar crédito)|r
    >>|cRXP_WARN_Tome cuidado pois eles lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instant: Causa dano adicional de 4 pontos de corpo a corpo)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>Fale com |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 15|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
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
    .goto Dun Morogh,68.67,55.97
    .accept 432 >>Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Abate os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_Não vá se desviar de seu caminho para matá-los|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>Entre na caverna
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>Abate |cRXP_ENEMY_Pedraqueixo Bonesnappers|r dentro da caverna
    >>|cRXP_WARN_Tome cuidado pois eles lançam|r |T132154:0|t[Derrubar] |cRXP_WARN_(Corpo a Corpo Instant: Atordoa por 2 segundos)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>Abate os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>Fale com |cRXP_FRIENDLY_Frast|r
    .vendor >>Comerciante Lixo
    .target Frast Dokner
    .isQuestAvailable 419
step
    >>Fale com |cRXP_FRIENDLY_Stonebrow|r e |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>Entregue O Funcionário Público
    .goto Dun Morogh,68.67,55.97
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Fale com |cRXP_FRIENDLY_Umídio|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLIQUE AQUI se você está tendo dificuldade|r
    .goto Dun Morogh,70.52,54.75,12 >>Pegue o atalho atrás de |cRXP_FRIENDLY_Umídio|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_Puxe os |cRXP_ENEMY_Rockjaw Ambushers|r próximos para os |cRXP_FRIENDLY_Montanhistas de Altaforja|r que podem patrulhar na estrada (certifique-se de causar 51%+ de dano para obter crédito)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>Arraste o |cRXP_ENEMY_Rochetusco Cicatrizado|r pelo túnel
    >>|cRXP_WARN_Tenha cuidado ao lançarem|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo Pessoal: Aumenta velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável à distância)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>Converse com |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>Clique em |cRXP_PICK_Cadáver Anão|r no chão
    >>|cRXP_WARN_CERTIFIQUE-SE de ter um espaço livre no inventário. |cRXP_ENEMY_Ronhagarra|r não descerá se você não aceitar a próxima missão|r
    >>|cRXP_WARN_LEMBRE-SE: você está conduzindo |cRXP_ENEMY_Ronhagarra|r de volta para |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>Mate |cRXP_ENEMY_Ronhagarra|r. Saqueie a |cRXP_LOOT_Mangy Garra|r dele
    >>|cRXP_WARN_Atraia-o para |cRXP_FRIENDLY_Hammerfoot|r (certifique-se de causar 51%+ de dano para receber crédito)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>Converse com |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >>Entregue A Vingança do Piloto
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>Corra de volta pelo túnel
step
    #requires Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>Atraia um |cRXP_ENEMY_Rochetusco Cicatrizado|r no caminho
    .goto Dun Morogh,84.26,48.93,20 >>Faça o Mountain Pular. Lembre-se de descer com cuidado
    .mob Scarred Crag Boar
step
    .goto Loch Modan,19.01,61.88
    >>Arraste o |cRXP_ENEMY_Rochetusco Cicatrizado|r pelo túnel
    >>|cRXP_WARN_Tenha cuidado ao lançarem|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo Pessoal: Aumenta velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável à distância)|r
    .zone Loch Modan >>Viaje através do túnel até Loch Modan
    .mob Scarred Crag Boar
step
    #completewith Rugelfuss
    +|cRXP_WARN_Tente atrair um |cRXP_ENEMY_Urso Preto|r ou |cRXP_ENEMY_Tocaieira da Floresta|r para o Bunker com você (lembre-se de causar 51%+ de dano para receber crédito)|r
    >>|cRXP_WARN_Saque os |cRXP_ENEMY_Anciões Ursos Pretos|r deles|r |T134027:0|t[|cRXP_LOOT_Urso Carne|r]
    >>|cRXP_WARN_Saque os |cRXP_ENEMY_Tocaieiras da Floresta|r delas|r |T134437:0|t[|cRXP_LOOT_Aranha Ichor|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravelgaw|r, e |cRXP_FRIENDLY_Wallbang|r não vão ajudá-lo|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto Loch Modan,22.071,73.127
    >>Fale com |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #optional
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>Entre no Bunker. Vá para o topo
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>Fale com |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Volte para o Túnel
step << skip
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLIQUE AQUI Se você está tendo dificuldades|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_Saltando Logout Pular do Braseiro dentro do túnel para Thelsamar|r
    .isOnQuest 267
step
    #completewith next
    .subzone 144 >>Voe para Thelsamar
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Fale com |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrula pela estrada principal de Thelsamar|r
    .accept 416 >>Aceite Pegando Ratos
    .accept 1339 >>Aceite Tarefa do Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>Fale com |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
step
    .zone Ironforge >>Viaje para Ironforge
    .isOnQuest 416
step << skip
    #completewith next
    .goto Ironforge,43.83,59.58,20,0
    .goto Ironforge,38.27,71.43,20,0
    .goto Ironforge,33.70,76.24,10 >>|cRXP_WARN_Viaje em direção ao local do Logout Pular|r
step << skip
    .goto Ironforge,33.70,76.24
    .zone Dun Morogh >>|cRXP_WARN_Posicione seu personagem até pareça estar flutuando na borda do corrimão de metal. Logout skip para Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Gnome Mage
#name 1-10 ADV Dun Morogh Mago Gnomo AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor Gnome Mage
#next 10-12 ADV Costa Negra 1 Mago AdE


step << !Gnome Mage
    #season 2
    #completewith next
    +Na Temporada da Descoberta, você NÃO deve começar fora da zona iniciante de sua raça como um Mago, pois você não conseguirá obter sua primeira runa aqui (|T133816:0|t[Gravar Luvas - Lança de Gelo])
step
    #completewith next
    +Você selecionou o guia Avançado. Este é o guia mais rápido para a classe mais rápida do jogo (Maga da Aliança). Como tal, haverá muitas mecânicas de nicho usadas bem como pulls de AdE altamente difíceis. Mantenha-se persistente enquanto aprende! Boa Sorte!
step
    #completewith Adlin
	.destroy 6948 >>Remova a |T134414:0|t[Pedra de Regresso] da mochila, pois não é mais necessária
step
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .accept 179 >>Aceite Fornecedores Anões
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
    >>Abate os |cRXP_ENEMY_Lobos Jovens Esfarrapados|r. Saqueie-os para sua |cRXP_LOOT_Tough Lobo Carne|r
    .complete 179,1 --Collect Tough Wolf Meat (x8)
    .mob Ragged Young Wolf
step
    #season 0
    #sticky
    #label Adlin
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Comerciante Lixo
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_do vendedor|r
    >>|cRXP_WARN_Triture extra |cRXP_ENEMY_Ragged Young Wolves|r se não tem dinheiro suficiente|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #season 2
    .goto Dun Morogh,30.087,71.563
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Adlin Altanário|r
    >>Comerciante Lixo
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_do vendedor|r
    >>|cRXP_WARN_Triture extra |cRXP_ENEMY_Lobos Jovens Esfarrapados|r se você não tiver dinheiro suficiente|r
    >>|cRXP_WARN_Certifique-se de economizar 10c para depois|r
    .collect 159,15 --Collect Refreshing Spring Water (x15)
    .target Adlin Pridedrift
    .xp >6,1
step
    #xprate <1.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r e |cRXP_FRIENDLY_Balir Gelomarra|r
    .turnin 179,3 >>Entregue Fornecedores Anões
    .accept 233 >>Aceite Entrega de Correspondência do Vale de Coldridge
    .accept 3114 >>Aceite Memorando Glífico
    .target +Sten Stoutarm
    .goto Dun Morogh,29.927,71.201
    .accept 170 >>Aceite Uma Nova Ameaça
    .goto Dun Morogh,29.71,71.25
    .target +Balir Frosthammer
step
    #xprate >1.09
    .goto Dun Morogh,29.927,71.201
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sten Braçoforte|r
    .turnin 179,3 >>Entregue Fornecedores Anões
    .accept 233 >>Aceite Entrega de Correspondência do Vale de Coldridge
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
    >>Mate os |cRXP_ENEMY_Rockjaw Troggs|r e os |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abra o |cRXP_PICK_Rockjaw Objetos de TBC|r no chão. Saqueie-o para |T134939:0|t|cRXP_LOOT_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    >>|cRXP_WARN_NOTA: Você não conseguirá treinar|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_aqui pois você só consegue obter um|r |T133736:0|t[Compreensão Primer] |cRXP_WARN_na zona iniciante de sua raça|r << !Gnome
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
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .turnin 3114 >>Entregue Memorando Glífico << Gnome
    .accept 77667 >>Aceite Pesquisa de Feitiços << Gnome
    .turnin 77667 >>Entregue Pesquisa de Feitiços << Gnome
    .train 1459 >>Treine |T135932:0|t[Inteligência Arcana]
    .target Marryk Nurribit
step << Gnome
    #season 2
    #label GlovesEquip
    #completewith Observations
    .equip 10,711 >>|cRXP_WARN_Equipe as|r |T132961:0|t[Luvas de Tecido Esfarrapado]
    .use 711
    .train 401760,1
step << Gnome
    #season 2
    #requires GlovesEquip
    #completewith Observations
    .engrave 10 >>|cRXP_WARN_Grave seu|r |T132961:0|t[Luvas de Tecido Esfarrapado] com|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
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
    >>Mate os |cRXP_ENEMY_Rockjaw Troggs|r e os |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
    .complete 170,1 --Kill Rockjaw Trogg (x6)
    .mob +Rockjaw Trogg
    .complete 170,2 --Kill Burly Rockjaw Trogg (x6)
    .mob +Burly Rockjaw Trogg
    .isOnQuest 170
step
    #label Talin
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 233 >>Entregue Entrega de Correspondência do Vale de Coldridge
    .accept 183 >>Aceite O Caçador de Javalis
    .accept 234 >>Aceite Entrega de Correspondência do Vale de Coldridge
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
    >>Mate os |cRXP_ENEMY_Pequenos Javalis de Pedra|r
    .complete 183,1 --Kill Small Crag Boar (x12)
    .mob Small Crag Boar
step
    .goto Dun Morogh,22.601,71.433
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Talin Olhobom|r
    .turnin 183 >>Entregue O Caçador de Javalis
    .target Talin Keeneye
step
    #label Rockjaw
    .goto 1426,25.077,75.711
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    .turnin 234 >>Entregue Entrega de Correspondência do Vale de Coldridge
    .accept 182 >>Aceite A Caverna dos Trolls
    .target Grelin Whitebeard
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r
    .complete 182,1 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto Dun Morogh,26.73,79.72,30 >>Entre na caverna
    .isOnQuest 182
step
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,27.30,80.85,20,0
    .goto Dun Morogh,28.29,79.85,20,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,28.29,79.85
    >>Abata os |cRXP_ENEMY_Frostmane Trolls Whelps|r dentro da caverna
    >>|cRXP_WARN_Limpe um caminho até pouco antes da Picolé falante Lake room|r
    .complete 182,1,10 --Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step
    .goto Dun Morogh,28.29,79.85,50,0
    .goto Dun Morogh,27.30,80.85,40,0
    .goto Dun Morogh,25.78,78.31,40,0
    .goto Dun Morogh,27.12,78.68,40,0
    .goto Dun Morogh,25.95,80.39,40,0
    .goto Dun Morogh,25.78,78.31
    >>Abata os |cRXP_ENEMY_Frostmane Trolls Whelps|r a caminho de volta para |cRXP_FRIENDLY_Grolin Barbabranca|r
    .complete 182,1--Kill Frostmane Troll Whelp (x14)
    .mob Frostmane Troll Whelp
step << skip
    #completewith next
    +|cRXP_WARN_Se você não sabe como fazer skip de logout, assista este vídeo primeiro|r
    .link https://www.youtube.com/watch?v=SWBtPqm5M0Q >>https://www.youtube.com/watch?v=SWBtPqm5M0Q >>|cRXP_WARN_Clique aqui para aprender como fazer skip de logout|r
step << skip
    >>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r e |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    >>|cRXP_WARN_Observe que "Rabo-de-galo Escaldante Entrega" tem um temporizador de 5 minutos|r
    >>|cRXP_WARN_Verifique se você tem 3 espaços de inventário para as entregas/aceitações|r
    .turnin 182,4 >>Entregue A Caverna dos Trolls
    .accept 218 >>Aceite O Diário Roubado
    .goto Dun Morogh,25.076,75.713,-1
    .target +Grelin Whitebeard
    .accept 3364 >>Aceite Entrega de Cerveja da Manhã Escaldante
    .goto Dun Morogh,24.98,75.96,-1
    .target +Nori Pridedrift
step
    >>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r
    >>|cRXP_WARN_Certifique-se de ter 3 espaços de inventário para essas entregas/aceitações|r
    .turnin 182,4 >>Entregue A Caverna dos Trolls
    .accept 218 >>Aceite O Diário Roubado
    .goto Dun Morogh,25.076,75.713
    .target +Grelin Whitebeard
step
    .goto Dun Morogh,26.73,79.72,40,0
    .goto Dun Morogh,29.34,79.09,30,0
    .goto Dun Morogh,29.67,79.68,10 >>|cRXP_WARN_Entre na Caverna. Corra pelo caminho que você limpou (sem lutar se possível) em direção ao Picolé falante Lake dentro|r
    .isOnQuest 218
step
    .goto Dun Morogh,30.48,80.16
    >>|cRXP_WARN_Abata o |cRXP_ENEMY_Frostmane Trolls Whelp|r na sua frente|r
    >>Abata |cRXP_ENEMY_Grik'nir the Frio|r. Saqueie o |cRXP_LOOT_Diário de Grolin Barbabranca|r
    >>|cRXP_WARN_Cuidado pois ele lança|r |T135849:0|t[Choque Gélido] |cRXP_WARN_(Alcance Instantâneo: Causa 10 de dano Gélido e reduz a velocidade de movimento em 50% por 8 segundos)|r
    .complete 218,1 --Collect Grelin Whitebeard's Journal (x1)
    .mob Grik'nir the Cold
step << skip
    #completewith Rybrad
    #label LogoutSkip1
    .goto Dun Morogh,29.63,79.50
    .goto Dun Morogh,29.76,69.66,30 >>|cRXP_WARN_Posicione seu personagem até parecer que está flutuando na borda do penhasco acima do Picolé falante Lake, então desconecte e volte para Anvilmar|r
    .isOnQuest 218
step
    >>Fale com |cRXP_FRIENDLY_Grolin Barbabranca|r e |cRXP_FRIENDLY_Nóri Fluiorgulho|r
    .turnin 218 >>Entregue O Diário Roubado
    .accept 282 >>Aceite Observações de Senir
    .goto Dun Morogh,25.076,75.713,-1
    .target +Grelin Whitebeard
    .accept 3364 >>Aceite Entrega de Cerveja da Manhã Escaldante
    .goto Dun Morogh,24.98,75.96,-1
    .target +Nori Pridedrift
step
    #completewith Rybrad
    #requires LogoutSkip1
    #label LogoutSkip2
    .goto Dun Morogh,28.79,69.04,20,0
    .goto Dun Morogh,28.63,68.43,10 >>Entre em Anvilmar
    .isOnQuest 218,3364
step
    #label Rybrad
    .goto Dun Morogh,28.66,67.74
    >>Fale com |cRXP_FRIENDLY_Rybrad Friamargem|r
    .vendor >>Comerciante Lixo
    .target Rybrad Coldbank
    .isOnQuest 218,3364
step
    >>Fale com |cRXP_FRIENDLY_Durnan Cortapelo|r e |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 3364 >>Entregue Entrega de Cerveja da Manhã Escaldante
    .accept 3365 >>Aceite Traga o Caneco
    .goto Dun Morogh,28.77,66.37
    .target +Durnan Furcutter
    .turnin 3114 >>Entregue Memorando Glífico
    .trainer >>Treine seus feitiços de classe (Inteligência Arcana, Seta de Gelo)
    .goto Dun Morogh,28.709,66.366
    .target +Marryk Nurribit
    .isQuestAvailable 420
step
    #optional
    #xprate <1.1
    .goto Dun Morogh,29.71,71.25
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
    >>|cRXP_WARN_Mate TODOS os |cRXP_ENEMY_Rockjaw Troggs|r que você vê e|r |cRXP_ENEMY_Burly Pedraqueixo Troggs|r
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
    -- .goto Dun Morogh,25.076,75.713
    -- .target +Grelin Whitebeard
    .turnin 3365 >>Entregue Traga o Caneco
    .goto Dun Morogh,24.98,75.96
    .target +Nori Pridedrift
step
    #xprate <1.1
    #requires TroggEnd
    .goto Dun Morogh,29.71,71.25
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
    .goto Dun Morogh,33.484,71.841
    .target +Mountaineer Thalos
    .accept 2160 >>Aceite Suprimentos para Tannok
    .goto Dun Morogh,33.85,72.24
    .target +Hands Springsprocket
step
    #xprate <1.1
    #optional
    #completewith StockingJ
    .abandon 170 >>Abandone Uma Nova Ameaça
step
    .goto Dun Morogh,34.32,70.95,15,0
    .goto Dun Morogh,35.65,65.79,15 >>Passe pelo Desfiladeiro de Coldridge
    .subzoneskip 800,1
    .isOnQuest 2160
step
    #completewith StockingJ
    .goto Dun Morogh,36.51,62.94,40,0
    >>Mate |cRXP_ENEMY_Crag Boars|r. Saqueie-os para obter |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Cuidado pois eles lançam|r |T132337:0|t[carga] |cRXP_WARN_(Auto Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser lançado à distância)|r
    .collect 769,4,317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
step
    .goto Dun Morogh,37.97,61.87,30,0
    .goto Dun Morogh,39.89,59.26,45 >>|cRXP_WARN_Cause 51%+ de dano aos |cRXP_ENEMY_Juvenile Neve Leopards|r e aos |cRXP_ENEMY_Young Preto Ursos|r próximos, depois arraste-os para o |cRXP_FRIENDLY_Ironforge Montanhista|r para matá-los mais eficientemente|r
    .mob Juvenile Snow Leopard
    .mob Young Black Bear
    .target Ironforge Mountaineer
    .isOnQuest 2160
step
    #completewith next
    .goto Dun Morogh,43.44,55.64,50,0
    .goto Dun Morogh,44.14,52.64,50,0
    .goto Dun Morogh,46.021,51.676,20 >>Vá para |cRXP_FRIENDLY_Tharek|r
step
    .goto Dun Morogh,46.021,51.676
    >>Fale com |cRXP_FRIENDLY_Tharek|r
    .accept 400 >>Aceite Ferramentas para Gradaço
    .target Tharek Blackstone
step
    #label StockingJ
    .goto Dun Morogh,49.426,48.410
    >>Fuja de |cRXP_ENEMY_Jovens Ursos Preto|r no caminho |cRXP_WARN_(certifique-se de causar 51%+ de dano para receber crédito)|r
    >>Fale com |cRXP_FRIENDLY_Bellowfiz|r
    .accept 317 >>Aceite Provisões para a Vaporeta
    .mob Young Black Bear
    .target Pilot Bellowfiz
step
    >>Fale com |cRXP_FRIENDLY_Stonegear|r, |cRXP_FRIENDLY_Beldin|r e |cRXP_FRIENDLY_Loslor|r
    >>|cRXP_WARN_Fuja de |cRXP_ENEMY_Jovens Ursos Preto|r para o |cRXP_FRIENDLY_Ironforge Montanhista|r se puxou algum (certifique-se de causar 51%+ de dano para receber crédito)|r
    .accept 313 >>Aceite O Covil dos Cansados
    .target +Pilot Stonegear
    .goto Dun Morogh,49.622,48.612
    .turnin 400 >>Entregue Ferramentas para Gradaço
    .target +Beldin Steelgrill
    .goto Dun Morogh,50.45,49.09
    .accept 5541 >>Aceite Sem Munição não Tem Negócio
    .vendor >>Comerciante Lixo
    .goto Dun Morogh,50.084,49.420
    .target +Loslor Rudge
    .isQuestAvailable 312
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saque-os por |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Costelas de Javali do Rochedo|r
    >>|cRXP_WARN_Tenha cuidado enquanto eles lançam|r |T132337:0|t[carga] |cRXP_WARN_(Pessoal Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 25-70 de dano corpo a corpo no acerto. Apenas lançável à distância)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38,50,0
    .goto Dun Morogh,45.16,57.81,50,0
    .goto Dun Morogh,50.39,51.67,50,0
    .goto Dun Morogh,50.37,53.05,50,0
    .goto Dun Morogh,49.18,50.97,50,0
    .goto Dun Morogh,45.37,49.50,50,0
    .goto Dun Morogh,43.69,52.05,50,0
    .goto Dun Morogh,45.18,54.38
    >>Mate os |cRXP_ENEMY_Jovens Ursos Preto|r e os |cRXP_ENEMY_Ursos de Garra Gélida|r. Saque-os para obter sua |cRXP_LOOT_Pelagem Espessa de Urso|r
    >>|cRXP_WARN_Fuja de |cRXP_ENEMY_Jovens Ursos Preto|r e |cRXP_ENEMY_Ursos de Garra Gélida|r para perto dos |cRXP_FRIENDLY_Montanhistas de Altaforja|r (certifique-se de causar 51%+ de dano para receber crédito)|r
    >>|cRXP_WARN_Tenha cuidado enquanto eles lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 de dano corpo a corpo adicional)|r
    .complete 317,2 --Collect Thick Bear Fur (x2)
    .mob Young Black Bear
    .mob Ice Claw Bear
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Large Crag Boars|r. Saqueie-os para |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r e |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado enquanto eles lançam|r |T132337:0|t[carga] |cRXP_WARN_(Pessoal Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 25-70 de dano corpo a corpo no acerto. Apenas lançável à distância)|r
    .complete 317,1 --Collect Chunk of Boar Meat (x4)
    .collect 2886,6,384,1 --Collect Crag Boar Rib (x6)
    .disablecheckbox
    .mob Crag Boar
    .mob Large Crag Boar
step
    .goto Dun Morogh,49.426,48.410
    >>Fale com |cRXP_FRIENDLY_Bellowfiz|r
    .turnin 317 >>Entregue Provisões para a Vaporeta
    .accept 318 >>Aceite Sempre-aceso
    .target Pilot Bellowfiz
step
#loop
	.line Dun Morogh,51.70,49.66,51.08,52.42,51.43,53.21,50.06,51.66,49.56,50.82,48.12,49.10,48.21,46.93,45.48,50.04,44.07,52.50,43.69,55.59,42.78,56.86,44.45,59.33,46.31,61.85,46.26,59.49,48.08,59.05,49.40,58.97,48.30,56.86,49.09,54.74,49.61,54.32,51.43,53.21
	.goto Dun Morogh,51.70,49.66,40,0
	.goto Dun Morogh,51.08,52.42,40,0
	.goto Dun Morogh,51.43,53.21,40,0
	.goto Dun Morogh,50.06,51.66,40,0
	.goto Dun Morogh,49.56,50.82,40,0
	.goto Dun Morogh,48.12,49.10,40,0
	.goto Dun Morogh,48.21,46.93,40,0
	.goto Dun Morogh,45.48,50.04,40,0
	.goto Dun Morogh,44.07,52.50,40,0
	.goto Dun Morogh,43.69,55.59,40,0
	.goto Dun Morogh,42.78,56.86,40,0
	.goto Dun Morogh,44.45,59.33,40,0
	.goto Dun Morogh,46.31,61.85,40,0
	.goto Dun Morogh,46.26,59.49,40,0
	.goto Dun Morogh,48.08,59.05,40,0
	.goto Dun Morogh,49.40,58.97,40,0
	.goto Dun Morogh,48.30,56.86,40,0
	.goto Dun Morogh,49.09,54.74,40,0
	.goto Dun Morogh,49.61,54.32,40,0
	.goto Dun Morogh,51.43,53.21,40,0
    .xp 5+2690 >>Farme até 2690+/2800 XP
    .mob Young Black Bear
    .mob Crag Boar
step
    #completewith InnLS1
    +|cRXP_WARN_Desequipe seu|r |T135148:0|t[Cajado]
    -- +|cRXP_WARN_Remember the Inn Logout Skip soon. Unequip your current|r |T135148:0|t[Staff]
    -- >>|cRXP_WARN_NOTE: Itemrack currently can cause problems after logout skipping where your ingame UI freezes. Make sure to disable the addon or make a /reload command you can click when/if that happens|r
step
    #completewith Tannok
    .cast 1459 >>Reative |T135932:0|t[Inteligência Arcana]
    .cast 168 >>Reative |T135843:0|t[Armadura Gélida]
step
    .goto Dun Morogh,46.83,52.36
    >>Fale com |cRXP_FRIENDLY_Ragnar|r
    .accept 384 >>Aceite Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>Entre
step
    .goto Dun Morogh,47.217,52.195
    >>Fale com |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >>Entregue Suprimentos para Tannok
    .target Tannok Frosthammer
    .xp >6,1
step
    #completewith next
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.50,52.08,12 >>Entre
step
    #sticky
    #label Tannok
    .goto Dun Morogh,47.217,52.195,0,0
    >>Fale com |cRXP_FRIENDLY_Tannok|r
    .turnin 2160,2 >>Entregue Suprimentos para Tannok
    .target Tannok Frosthammer
step
    .goto Dun Morogh,47.50,52.08
    >>Fale com |cRXP_FRIENDLY_Magis|r no andar superior
    .trainer >>Treine seus feitiços de classe (Bola de Fogo R2, Impacto de Fogo)
    .target Magis Sparkmantle
    .isQuestAvailable 312
step
    #completewith Golorn
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    .home >>Defina sua Pedra de Retorno na Destilaria Cervaforte
    .target Innkeeper Belm
    .isQuestAvailable 312
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .money <0.0050
step
    #requires Tannok
    .goto Dun Morogh,46.83,52.36
    >>Fale com |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 20|r |T132815:0|t[Leite Gelado] |cRXP_BUY_do vendedor|r
    .collect 1179,20,312,1 --Ice Cold Milk (20)
    .target Innkeeper Belm
    .money <0.0582
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 15|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,15,312,1 --Ice Cold Milk (15)
    .target Innkeeper Belm
    .money <0.0457
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0332
step
    #label InnLS1
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 5|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0207
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 20|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_do vendedor|r
    .collect 159,20,312,1 --Refreshing Spring Water (20)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0182
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 15|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_do vendedor|r
    .collect 159,15,312,1 --Refreshing Spring Water (15)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0157
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t [Água de Fonte Refrescante] |cRXP_BUY_com ele|r
    .collect 159,10,312,1 --Refreshing Spring Water (10)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0132
step
    #requires Tannok
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre 5|r |T132794:0|t[Água Refrescante da Fonte] |cRXP_BUY_do vendedor|r
    .collect 159,5,312,1 --Refreshing Spring Water (5)
    .itemcount 1179,<1
    .target Innkeeper Belm
    .money <0.0107
step << skip
    #completewith SenirO
    .goto Dun Morogh,47.46,52.60,-1
    .goto Dun Morogh,47.13,54.91,35 >>|cRXP_WARN_Salte acima dos barris na parede atrás de |cRXP_FRIENDLY_Belm|r ou desconecte-se e pule para Kharanos|r
step
    #sticky
    #label Golorn
    .goto Dun Morogh,46.77,53.72,-1
    >>Fale com |cRXP_FRIENDLY_Golorn|r
    >>|cRXP_BUY_Compre um|r |T135637:0|t[Faca de Esfolamento] |cRXP_BUY_do vendedor|r
    .collect 7005,1,312,1 --Skinning Knife (1)
    .target Golorn Frostbeard
step
    #label SenirO
    .goto Dun Morogh,46.726,53.826,-1
    >>Fale com |cRXP_FRIENDLY_Senir|r
    .turnin 420 >>Entregue Observações de Senir
    .target Senir Whitebeard
step
    #completewith next
    #requires Golorn
    +Equipe o |T135637:0|t[Faca de Esfolamento]
    .use 7005
    .itemcount 7005,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.2
step
    #requires Golorn
#loop
	.line Dun Morogh,42.57,54.80,41.89,54.51,42.13,52.68,42.46,51.96,41.91,51.43,42.46,51.96,42.13,52.68,42.57,54.80
	.goto Dun Morogh,42.57,54.80,10,0
	.goto Dun Morogh,41.89,54.51,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,41.91,51.43,10,0
	.goto Dun Morogh,42.46,51.96,10,0
	.goto Dun Morogh,42.13,52.68,10,0
	.goto Dun Morogh,42.57,54.80,10,0
    >>Mate os |cRXP_ENEMY_Jovens Wendigos|r e os |cRXP_ENEMY_Wendigos|r. Saqueie-os para obter seus |cRXP_LOOT_Wendigo Manes|r
    >>|cRXP_WARN_Tenha cuidado, pois eles lançam|r |T135848:0|t[Sopro Gélido] |cRXP_WARN_(Conjuração Corpo a Corpo: Causa 6-10 de dano Gélido) e têm aumentado|r |T135849:0|t[Resistência ao Gelo]
    .complete 313,1 --Collect Wendigo Mane (x8)
    .mob Young Wendigo
    .mob Wendigo
step
    .goto Dun Morogh,44.13,56.95
    >>Abra a |cRXP_PICK_Ammo Caixote|r no chão. Saqueie-a para obter |cRXP_LOOT_Rumbleshot's Ammo|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 5541,1 --Collect Rumbleshot's Ammo (x1)
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>Mate os |cRXP_ENEMY_Crag Boars|r e os |cRXP_ENEMY_Juvenile Neve Leopards|r no caminho
    >>Saqueie os |cRXP_ENEMY_Javalis da Rocha|r para obter suas |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Javalis da Rocha|r lançam|r |T132337:0|t[Investida] |cRXP_WARN_(Auto instantâneo: Aumenta velocidade de movimento por 3 segundos, infligindo 25-70 de dano corporal no acerto. Apenas conjurável a distância)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .goto Dun Morogh,40.682,65.130,20 >>Viaje para |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestAvailable 384
step
    #completewith Ammo
    .goto Dun Morogh,40.60,62.24,45,0
    >>Mate os |cRXP_ENEMY_Javalis da Rocha|r e os |cRXP_ENEMY_Leopardos da Neve Juvenis|r no caminho
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Crag Boars|r lançam|r |T132337:0|t[carga] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .goto Dun Morogh,40.682,65.130,20 >>Viaje para |cRXP_FRIENDLY_Hegnar|r
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .xp >7-1000,1
    .isQuestTurnedIn 384
step
    #completewith next
    .goto Dun Morogh,40.60,62.24,45,0
    .goto Dun Morogh,40.682,65.130,20 >>Viaje para |cRXP_FRIENDLY_Hegnar|r
    .xp <7-1000,1
step
    #label Ammo
    .goto Dun Morogh,40.682,65.130
    >>Fale com |cRXP_FRIENDLY_Hegnar|r
    .turnin 5541 >>Entregue Sem Munição não Tem Negócio
    .vendor >>Comerciante Lixo
    .target Hegnar Rumbleshot
    .isQuestAvailable 312
step
    #completewith TundraOne
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
    >>|cRXP_WARN_Inflige 51%+ dano aos |cRXP_ENEMY_Juvenile Neve Leopards|r e aos |cRXP_ENEMY_Young Preto Ursos|r, então puxe-os para o |cRXP_FRIENDLY_Ironforge Montanhista|r para matá-los mais eficientemente|r
    >>Mate os |cRXP_ENEMY_Grandes Javalis da Rocha|r e os |cRXP_ENEMY_Javalis da Rocha|r no caminho. Saqueie-os para obter suas |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Grandes Javalis da Rocha|r e |cRXP_ENEMY_Javalis da Rocha|r lançam|r |T132337:0|t[Investida] |cRXP_WARN_(Auto instantâneo: Aumenta velocidade de movimento por 3 segundos, infligindo 25-70 de dano corporal no acerto. Apenas conjurável a distância)|r
    .complete 384,1 --Crag Boar Rib (6)
    .disablecheckbox
    .xp 7 >>Farme até o nível 7 no caminho para |cRXP_FRIENDLY_Tundra|r antes de falar com ele
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestAvailable 384
step
    #completewith next
    .goto Dun Morogh,37.98,61.90,50,0
    .goto Dun Morogh,35.11,56.78,45,0
    .goto Dun Morogh,35.62,54.73,50,0
    .goto Dun Morogh,36.38,52.49,40,0
    >>|cRXP_WARN_Inflige 51%+ dano aos |cRXP_ENEMY_Juvenile Neve Leopards|r e aos |cRXP_ENEMY_Young Preto Ursos|r, então puxe-os para o |cRXP_FRIENDLY_Ironforge Montanhista|r para matá-los mais eficientemente|r
    >>Mate os |cRXP_ENEMY_Grandes Javalis da Rocha|r e os |cRXP_ENEMY_Javalis da Rocha|r no caminho
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Large Crag Boars|r e |cRXP_ENEMY_Crag Boars|r lançam|r |T132337:0|t[carga] |cRXP_WARN_(Self Instant: Increases movespeed for 3 seconds, dealing 25-70 melee damage on hit. Only castable at range)|r
    .xp 7 >>Suba até o Nível 7 no caminho para |cRXP_FRIENDLY_Tundra|r antes de falar com ele
    .target Ironforge Mountaineer
    .mob Crag Boar
    .mob Juvenile Snow Leopard
    .isQuestTurnedIn 384
step
    #label TundraOne
    .goto Dun Morogh,34.57,51.66
    >>Fale com |cRXP_FRIENDLY_Tundra|r
    .accept 312 >>Aceite Por Baixo da Carne-seca
    .target Tundra MacGrann
step
    #completewith next
    +|cRXP_WARN_Arraste um |cRXP_ENEMY_Urso Garra de Gelo|r para |cRXP_FRIENDLY_Rejold|r
    >>|cRXP_WARN_Tente aceitar a missão antes de o |cRXP_ENEMY_Urso Garra de Gelo|r morrer para obter crédito na missão|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instante: Inflige 4 danos adicionais de ataque físico)|r
    >>|cRXP_WARN_Garanta 51%+ de dano para obter crédito|r
    .mob Ice Claw Bear
step
    >>Fale com |cRXP_FRIENDLY_Rejold|r e |cRXP_FRIENDLY_Marleth|r
    .turnin 318 >>Entregue Sempre-aceso
    .accept 319 >>Aceite Tudo pela Sempre-aceso
    .accept 315 >>Aceite Em Busca da Cerveja Perfeita
    .target +Rejold Barleybrew
    .goto Dun Morogh,30.19,45.73
    .accept 310 >>Aceite A Guerra das Cervejas
    .goto Dun Morogh,30.186,45.531
    .target +Marleth Barleybrew
step
    .goto Dun Morogh,30.45,46.01,0,0
    >>Fale com |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compre até 10 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .vendor >>Comerciante Lixo
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .itemcount 1179,10
    .money <0.0350
    .isOnQuest 319
step
    .goto Dun Morogh,30.45,46.01,0,0
    >>Fale com |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compre até 5 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .vendor >>Comerciante Lixo
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .itemcount 1179,5
    .money <0.0225
    .isOnQuest 319
step
    #completewith CaveLS
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_anciões Crag Boars|r e os |cRXP_ENEMY_Neve Leopards|r a caminho da caverna. Saque os |cRXP_ENEMY_anciões Crag Boars|r para |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Concentração nos|r |cRXP_ENEMY_Neve Leopards|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Ice Garra Ursos|r conjuram|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 danos adicionais de corpo a corpo), e |cRXP_ENEMY_Elder Crag Boars|r conjuram|r |T132337:0|t[Carga] |cRXP_WARN_(Próprio Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 25-70 de dano corpo a corpo ao acertar. Só pode ser usado à distância)|r
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
    .goto Dun Morogh,33.51,47.50,50,0
    .goto Dun Morogh,36.85,45.48,50,0
    >>Mate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_anciões Crag Boars|r e os |cRXP_ENEMY_Neve Leopards|r a caminho da caverna
    >>|cRXP_WARN_Focus on the|r |cRXP_ENEMY_Snow Leopards|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Ice Garra Ursos|r lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 danos adicionais de corpo a corpo), e os |cRXP_ENEMY_anciões Crag Boars|r lançam|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo do Self: Aumenta velocidade de movimento por 3 segundos, causando 25-70 danos de corpo a corpo ao acertar. Apenas lançável à distância)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step << skip
    #completewith next
    .goto Dun Morogh,38.00,42.77,30 >>Entre na caverna
    .isOnQuest 319
step << skip
    #label CaveLS
    .goto Dun Morogh,38.32,43.36
    .goto Dun Morogh,47.13,54.91,30 >>|cRXP_WARN_Execute um Logout Pular dentro da caverna para voltar a Kharanos|r
    .isOnQuest 319
step
    .goto Dun Morogh,46.726,53.826
    >>Fale com |cRXP_FRIENDLY_Senir|r
    .accept 287 >>Aceite A Fortaleza Jubafria
    .target Senir Whitebeard
step
    #completewith Rhapsody1
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,47.19,52.02,12 >>Entre
step
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_e|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,6
    .isQuestAvailable 384
step
    #label Rhapsody1
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre um|r |T132800:0|t[Trovão Ale] |cRXP_BUY_dele|r
    .collect 2686,1,311,1 --Collect Thunder Ale (x1)
    .target Innkeeper Belm
    .itemcount 2886,<6
step
    #completewith next
    .goto Dun Morogh,47.50,52.40,8,0
    .goto Dun Morogh,47.72,52.43,8 >>Desça
step
    #completewith next
    .goto Dun Morogh,47.65,52.66
    >>Fale com |cRXP_FRIENDLY_Jarven|r no andar de baixo
    .turnin 308 >>Entregue Distraindo Jarven
    .target Jarven Thunderbrew
step
    .goto Dun Morogh,47.72,52.70
    >>Passe o mouse sobre o |cRXP_PICK_Guardado Trovão Ale Barril|r no andar de baixo. Espere o |cRXP_PICK_Guardado Trovão Ale Barril|r se tornar Unguarded
    >>Clique no |cRXP_PICK_Unguarded Trovão Ale Barril|r
    .turnin 310 >>Entregue A Guerra das Cervejas
    .accept 311 >>Aceite Fale Novamente com Marleth
step
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre até 10 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,312,1 --Ice Cold Milk (10)
    .target Innkeeper Belm
    .money <0.0250
step
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre até 5 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,5,312,1 --Ice Cold Milk (5)
    .target Innkeeper Belm
    .money <0.0125
step
    .goto Dun Morogh,47.19,52.02,12,0
    .goto Dun Morogh,46.97,51.99,10,0
    .goto Dun Morogh,46.83,52.36,20 >>Saia da Estalagem
    .isOnQuest 287
step
    .goto Dun Morogh,46.83,52.36
    >>Fale com |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
    .isQuestComplete 384
step
    #completewith next
    .goto Dun Morogh,46.65,47.42,40,0
    +|cRXP_WARN_Cause 51%+ damage to nearby os |cRXP_ENEMY_Neve Farejador Wolves|r, os |cRXP_ENEMY_Winter Wolves|r, and os |cRXP_ENEMY_Young Preto Ursos|r. Puxe-os para o |cRXP_FRIENDLY_Ironforge Montanhista|r para matá-los mais eficientemente|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Neve Farejador Wolves|r têm|r |T132150:0|t[Increased Agro Distância] |cRXP_WARN_(Alcance de Agro aumentado em cerca de 8 jardas)|r
    .mob Snow Tracker Wolf
    .mob Winter Wolf
    .mob Young Black Bear
    .target Ironforge Mountaineer
step
    .goto Dun Morogh,42.91,45.17,25,0
    .goto Dun Morogh,42.32,45.27,45 >>Corra para a rampa em direção aos |cRXP_ENEMY_Frostmane Seers|r
    .isOnQuest 315
step
    #requires SeerRamp
    #completewith next
    >>Abate a patrulha de |cRXP_ENEMY_Frostmane Caça-talentos|r
    >>|cRXP_WARN_Tenha cuidado, pois ele patrulha entre todos os estacionários|r |cRXP_ENEMY_Frostmane Seers|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 8-15 de dano)|r
    .complete 287,1 --Kill Frostmane Headhunters (5)
    .mob Frostmane Headhunter
step
    #label ShimmerB
    .goto Dun Morogh,42.07,45.48,40,0
    .goto Dun Morogh,42.11,44.63,40,0
    .goto Dun Morogh,41.67,43.53,40,0
    .goto Dun Morogh,41.27,44.37,20,0
    .goto Dun Morogh,41.48,45.01,30,0
    .goto Dun Morogh,41.08,44.86,30,0
    .goto Dun Morogh,41.14,45.54,40,0
    .goto Dun Morogh,40.34,42.84,40,0
    .goto Dun Morogh,39.67,39.87,20,0
    .goto Dun Morogh,39.94,37.70,20,0
    .goto Dun Morogh,41.84,35.63
    >>Abate |cRXP_ENEMY_Frostmane Seers|r. Saqueie-os para obter |cRXP_LOOT_Tremulerva|r
    >>Abra o |cRXP_PICK_Tremulerva Cestos|r no chão. Saque deles para obter |cRXP_LOOT_Tremulerva|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T136048:0|t[Raio] |cRXP_WARN_(Lançamento à Distância: Causa 15-30 de dano de Natureza)|r
    .complete 315,1 --Collect Shimmerweed (x6)
    .mob Frostmane Seer
step
    #completewith IBCave
    >>Abate os |cRXP_ENEMY_grandes Crag Boars|r e os |cRXP_ENEMY_anciões Crag Boars|r. Saque deles para obter |cRXP_LOOT_Crag Javali Ribs|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Large Crag Boar
    .mob Elder Crag Boar
step
    #completewith next
    .goto Dun Morogh,40.45,47.23,40,0
    .goto Dun Morogh,37.72,51.88,40,0
    >>Abate os dois |cRXP_ENEMY_anciões Crag Boars|r a caminho da caverna (se estiverem vivos)
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo do Self: Aumenta velocidade de movimento por 3 segundos, causando 25-85 danos de corpo a corpo ao acertar. Apenas lançável à distância)|r
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob Elder Crag Boar
step
    #label IBCave
    .goto Dun Morogh,37.85,53.71,50 >>Viaje em direção à Caverna
    .isOnQuest 312
step
    #completewith next
    +|cRXP_WARN_Depois de saquear, lembre-se de pular e se desviar de seus ataques para evitar o Tontear e pular no tronco da árvore para se evadir temporariamente dele|r
step
    .goto Dun Morogh,38.51,53.93
    >>|cRXP_WARN_Se |cRXP_ENEMY_Old Icebeard[=Velho Barbafria]|r está na caverna, leve-o para cima pelo lado da caverna, depois bem acima dela. Espere ele chegar perto, depois pule para baixo e vá para o fundo da caverna|r
    >>Abra o |cRXP_PICK_Armário de Carne de MacGrann|r no chão. Saque dele para obter |cRXP_LOOT_Carnes Secas de Macgrann|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3120 >>https://youtu.be/Zg4FNWw-P5k?t=3120 >>|cRXP_WARN_CLIQUE AQUI Se você está tendo dificuldades|r
    .complete 312,1 --Collect MacGrann's Dried Meats (x1)
    .mob Old Icebeard
step
    .goto Dun Morogh,34.57,51.66
    >>Fale com |cRXP_FRIENDLY_Tundra|r
    .turnin 312,1 >>Entregue O Saque Roubado de Tundra MacGrann
    .target Tundra MacGrann
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>Abate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_anciões Crag Boars|r e os |cRXP_ENEMY_Neve Leopards|r. Saque os |cRXP_ENEMY_anciões Crag Boars|r para |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Lembre-se de kitar um |cRXP_ENEMY_Urso Garra de Gelo|r ou |cRXP_ENEMY_Snow Leopards|r de volta até o mestre da missão se possível|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Ice Garra Ursos|r conjuram|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 danos adicionais de corpo a corpo), e |cRXP_ENEMY_Elder Crag Boars|r conjuram|r |T132337:0|t[Carga] |cRXP_WARN_(Próprio Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 35-85 de dano corpo a corpo ao acertar. Só pode ser usado à distância)|r
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
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>Abate os |cRXP_ENEMY_Ice Garra Ursos|r, os |cRXP_ENEMY_anciões Crag Boars|r e os |cRXP_ENEMY_Neve Leopards|r
    >>|cRXP_WARN_Lembre-se de levar um |cRXP_ENEMY_Ice Garra Urso|r ou os |cRXP_ENEMY_Neve Leopards|r de volta para o criador da missão se possível|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Ice Garra Ursos|r lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 danos adicionais de corpo a corpo), e os |cRXP_ENEMY_anciões Crag Boars|r lançam|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo do Self: Aumenta velocidade de movimento por 3 segundos, causando 35-85 danos de corpo a corpo ao acertar. Apenas lançável à distância)|r
    .complete 319,1 --Kill Ice Claw Bear (x6)
    .mob +Ice Claw Bear
    .complete 319,2 --Kill Elder Crag Boar (x8)
    .mob +Elder Crag Boar
    .complete 319,3 --Kill Snow Leopard (x8)
    .mob +Snow Leopard
    .isQuestTurnedIn 384
step
    >>Fale com |cRXP_FRIENDLY_Rejold|r e |cRXP_FRIENDLY_Marleth|r
    .turnin 315,1 >>Entregue Em Busca da Cerveja Perfeita
    .accept 413 >>Aceite Cerveja Tremeluz
    .turnin 319 >>Entregue Tudo pela Sempre-aceso
    .accept 320 >>Aceite Fale Novamente com Urrabolha
    .goto Dun Morogh,30.189,45.725
    .turnin 311 >>Fale novamente com Marleth
    .goto Dun Morogh,30.186,45.531
    .target Rejold Barleybrew
step
    .goto Dun Morogh,30.45,46.01
    >>Fale com |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compre até 10 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,287,1 --Ice Cold Milk (10)
    .target Keeg Gibn
    .money <0.0250
step
    .goto Dun Morogh,30.45,46.01
    >>Fale com |cRXP_FRIENDLY_Keeg|r
    >>|cRXP_BUY_Compre até 5 mais|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,5,287,1 --Ice Cold Milk (5)
    .target Keeg Gibn
    .money <0.0125
step
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17,40,0
    .goto Dun Morogh,32.11,49.72,40,0
    .goto Dun Morogh,29.38,53.83,40,0
    .goto Dun Morogh,28.91,50.05,40,0
    .goto Dun Morogh,28.42,45.14,40,0
    .goto Dun Morogh,28.85,41.75,40,0
    .goto Dun Morogh,31.30,39.17
    >>Mate os |cRXP_ENEMY_Elder Crag Boars|r. Saque-os para obter suas |cRXP_LOOT_Crag Javali Ribs|r
    >>|cRXP_WARN_Tenha cuidado pois eles conjuram|r |T132337:0|t[carga] |cRXP_WARN_(instantâneo: aumenta a velocidade de movimento por 3 segundos, causa 35-85 de dano corpo a corpo ao acertar. Só pode ser conjurado à distância)|r
    .complete 384,1 --Crag Boar Rib (6)
    .mob Elder Crag Boar
step
    #completewith Explore
    .goto Dun Morogh,25.12,49.54,35,0
    .goto Dun Morogh,24.94,50.61,12 >>Entre na caverna pelo lado norte
step
    .goto Dun Morogh,24.29,50.80,40,0
    .goto Dun Morogh,23.31,51.36
    >>Abate os |cRXP_ENEMY_Frostmane Headhunters|r dentro da caverna
    >>|cRXP_WARN_Tome cuidado pois eles lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 8-15 de dano)|r
    >>|cRXP_WARN_Tenha cuidado com o |cRXP_ENEMY_Caçador de Cabeças Jubafria|r patrulhando lá dentro|r
    .complete 287,1 --Kill Frostmane Headhunter (x5)
    .mob Frostmane Headhunter
step
    #label Explore
    .goto Dun Morogh,23.01,52.04,8,0
    .goto Dun Morogh,22.90,52.09
    >>|cRXP_WARN_Desça cuidadosamente até o nicho abaixo (NÃO caia). Desça cuidadosamente pelo nicho até obter crédito|r
    >>|cRXP_WARN_Tenha cuidado com o |cRXP_ENEMY_Esfolador Jubafria|r abaixo, pois ele pode ser capaz de atacá-lo no nicho se estiver perto|r
    >>|cRXP_WARN_Prepare-se para conjurar|r |T134414:0|t[Pedra de Regresso]
    .link https://youtu.be/Zg4FNWw-P5k?t=3619 >>https://youtu.be/Zg4FNWw-P5k?t=3619 >>|cRXP_WARN_CLIQUE AQUI Se você está tendo dificuldade|r
    .complete 287,2 --Fully explore Frostmane Hold
step << skip
    #completewith next
    +|cRXP_WARN_Lembre-se da Saída Rápida da Estalagem em breve!|r
step
    #completewith Senir2
    .hs >>Vá para Kharanos
step
    .goto Dun Morogh,47.38,52.52
    >>Fale com |cRXP_FRIENDLY_Belm|r
    >>|cRXP_BUY_Compre uma|r |T132800:0|t[Rapsódia Malt] |cRXP_BUY_dele|r
    .complete 384,2 --Collect Rhapsody Malt (x1)
    .target Innkeeper Belm
step
    .goto Dun Morogh,47.50,52.08
    >>Fale com |cRXP_FRIENDLY_Magis|r no andar de cima
    .trainer >>Treine seus feitiços de classe (Seta de Gelo r2, Polimorfia)
    .target Magis Sparkmantle
    .isQuestAvailable 314
step
    #completewith Senir2
    +|cRXP_WARN_Lembre-se de guardar|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você consegue ao subir de nível|r |T133971:0|t[Culinária] |cRXP_WARN_até 50 depois|r
step
    .goto Dun Morogh,46.83,52.36
    >>Fale com |cRXP_FRIENDLY_Ragnar|r
    .turnin 384 >>Entregue Costelinhas de Javali na Cerveja
    .target Ragnar Thunderbrew
step
    #label Senir2
    .goto Dun Morogh,46.726,53.826
    >>Fale com |cRXP_FRIENDLY_Senir|r
    .turnin 287,2 >>Entregue A Fortaleza Jubafria
    .accept 291 >>Aceite Os Relatórios
    .target Senir Whitebeard
step
    #completewith next
    .cast 1459 >>Reaplique |T135932:0|t[Inteligência Arcana]
    .cast 168 >>Reaplique |T135843:0|t[Armadura Gélida]
step
    >>Fale com |cRXP_FRIENDLY_Bellowfiz|r e |cRXP_FRIENDLY_Stonegear|r
    .turnin 320,2 >>Fale novamente com Urrabolha
    .target +Pilot Bellowfiz
    .goto Dun Morogh,49.426,48.410
    .turnin 313 >>Entregue O Covil dos Grisalhos
    .goto Dun Morogh,49.622,48.612
    .target +Pilot Stonegear
step
    #completewith next
    +|cRXP_WARN_Inflija 51%+ de dano aos |cRXP_ENEMY_Winter Wolves|r próximos, depois puxe-os para os |cRXP_FRIENDLY_Montanhistas de Altaforja|r que podem estar patrulhando na estrada para matá-los com mais eficiência|r
    >>|cRXP_WARN_Se você não vir os |cRXP_FRIENDLY_Montanhistas de Altaforja|r, pule este passo|r
    .mob Winter Wolf
    .target Ironforge Mountaineer
step
    #completewith Rudra
    #label Dirt
    .goto Dun Morogh,59.84,49.56,40,0
    .goto Dun Morogh,61.36,47.07,40 >>Suba o caminho de terra
    .isQuestAvailable 314
step
    #completewith next
    #requires Dirt
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLIQUE AQUI Se você está tendo dificuldades|r
    +|cRXP_WARN_Leve |cRXP_ENEMY_Ragash|r para|r |cRXP_FRIENDLY_Rudra|r
    .mob Vagash
step
    #label Rudra
    .goto Dun Morogh,63.08,49.85
    >>Fale com |cRXP_FRIENDLY_Rudra|r
    .accept 314 >>Aceite Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step
    .goto Dun Morogh,62.57,46.14,0
    .goto Dun Morogh,62.78,54.60,40,0
    .goto Dun Morogh,62.82,55.73
    >>Abate |cRXP_ENEMY_Ragash|r. Saque-o para obter o |cRXP_LOOT_Dentada de Ragash|r
    >>|cRXP_WARN_Atraia |cRXP_ENEMY_Ragash|r até o |cRXP_FRIENDLY_Dun Morogh Montanhista|r ao sul do rancho. Certifique-se de que você causa 51%+ de dano a ele|r
    >>|cRXP_WARN_Lembre-se de conseguir XP de exploração em Tundrid Hills e atraia o |cRXP_ENEMY_Neve Leopardo|r para o |cRXP_FRIENDLY_Dun Morogh Montanhista|r se for conveniente|r
    .link https://youtu.be/Zg4FNWw-P5k?t=3815 >>https://youtu.be/Zg4FNWw-P5k?t=3815 >>|cRXP_WARN_CLIQUE AQUI Se você está tendo dificuldades|r
    .complete 314,1 --Collect Fang of Vagash (1)
    .mob Vagash
step
    .goto Dun Morogh,63.08,49.85
    >>Fale com |cRXP_FRIENDLY_Rudra|r
    .turnin 314,3 >>Entregue Amarre sua Cabra pois Ragash Está Solto
    .target Rudra Amberstill
step << skip
    #completewith Ghilm
    +|cRXP_WARN_Lembre-se de guardar|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você consegue ao subir de nível|r |T133971:0|t[Culinária] |cRXP_WARN_até 50 depois|r
step
    #completewith next
    .goto Dun Morogh,66.34,50.92,50,0
    .goto Dun Morogh,67.72,53.66,30,0
    +|cRXP_WARN_Atraia o |cRXP_ENEMY_Urso de Garra de Gelo|r para o |cRXP_FRIENDLY_Ironforge Montanhista|r (certifique-se de que você causa 51%+ de dano para ganhar crédito)|r
    >>|cRXP_WARN_Tome cuidado pois eles lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instant: Causa dano adicional de 4 pontos de corpo a corpo)|r
    .mob Ice Claw Bear
step
    #sticky
    #label Ghilm
    .goto Dun Morogh,68.40,54.45,0,0
    >>Fale com |cRXP_FRIENDLY_Ghilm|r
    .train 2550 >>Treine |T133971:0|t[Culinária]
    .target Cook Ghilm
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 15|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,15,432,1 --Ice Cold Milk (15)
    .target Kazan Mogosh
    .money <0.0395
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
    >>Fale com |cRXP_FRIENDLY_Kazan|r
    >>|cRXP_BUY_Compre 10|r |T132815:0|t[Leite Gelado] |cRXP_BUY_dele|r
    .collect 1179,10,432,1 --Ice Cold Milk (10)
    .target Kazan Mogosh
    .money <0.0260
step
    .goto Dun Morogh,68.43,54.46,8,0
    .goto Dun Morogh,68.53,54.64
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
    .goto Dun Morogh,68.67,55.97
    .accept 432 >>Aceite Malditos Troggs!
    .goto Dun Morogh,69.084,56.330
    .target +Foreman Stonebrow
step
    #completewith Bonesnappers
    >>Abate os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    >>|cRXP_WARN_Não vá se desviar de seu caminho para matá-los|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #completewith next
    .goto Dun Morogh,70.74,56.23,30 >>Entre na caverna
step
    #label Bonesnappers
    .goto Dun Morogh,70.98,54.31,40,0
    .goto Dun Morogh,70.83,53.17,40,0
    .goto Dun Morogh,71.94,50.48,40,0
    .goto Dun Morogh,72.55,51.50,40,0
    .goto Dun Morogh,72.62,52.56
    >>Abate |cRXP_ENEMY_Pedraqueixo Bonesnappers|r dentro da caverna
    >>|cRXP_WARN_Tome cuidado pois eles lançam|r |T132154:0|t[Derrubar] |cRXP_WARN_(Corpo a Corpo Instant: Atordoa por 2 segundos)|r
    .complete 433,1 --Kill Rockjaw Bonesnapper (x10)
    .mob Rockjaw Bonesnapper
step
    .goto Dun Morogh,70.74,56.23,30,0
#loop
	.line Dun Morogh,69.93,57.29,70.57,58.61,69.68,59.37,68.36,59.57,69.16,57.51,69.93,57.29
	.goto Dun Morogh,69.93,57.29,30,0
	.goto Dun Morogh,70.57,58.61,30,0
	.goto Dun Morogh,69.68,59.37,30,0
	.goto Dun Morogh,68.36,59.57,30,0
	.goto Dun Morogh,69.16,57.51,30,0
	.goto Dun Morogh,69.93,57.29,30,0
    >>Abate os |cRXP_ENEMY_Rockjaw Skullthumpers|r
    .complete 432,1 --Kill Rockjaw Skullthumper (x6)
    .mob Rockjaw Skullthumper
step
    #sticky
    #label Frast
    .goto Dun Morogh,68.87,55.96,0,0
    >>Fale com |cRXP_FRIENDLY_Frast|r
    .vendor >>Comerciante Lixo
    .target Frast Dokner
step
    >>Fale com |cRXP_FRIENDLY_Stonebrow|r e |cRXP_FRIENDLY_Mehr|r
    .turnin 432 >>Entregue Malditos Troggs!
    .target +Foreman Stonebrow
    .goto Dun Morogh,69.084,56.330
    .turnin 433 >>Entregue O Funcionário Público
    .goto Dun Morogh,68.67,55.97
    .target +Senator Mehr Stonehallow
step
    #requires Frast
    .goto Dun Morogh,69.33,55.46
    >>Fale com |cRXP_FRIENDLY_Umídio|r
    .train 2575 >>Aprenda |T136248:0|t[Mineração]
    .target Dank Drizzlecut
step
    #label Shortcut1
    #completewith Pilot
    .goto Dun Morogh,70.35,55.28,5,0
    .link https://youtu.be/G2IscpFZVeQ?t=4034 >>https://youtu.be/G2IscpFZVeQ?t=4034 >>|cRXP_WARN_CLIQUE AQUI se você está tendo dificuldade|r
    .goto Dun Morogh,70.52,54.75,12 >>Pegue o atalho atrás de |cRXP_FRIENDLY_Umídio|r
step
    #completewith Pilot
    #requires Shortcut1
    #label Shortcut2
    .goto Dun Morogh,70.97,50.70,50,0
    .goto Dun Morogh,72.90,49.79,50,0
    .goto Dun Morogh,77.11,48.82,50 >>|cRXP_WARN_Puxe os |cRXP_ENEMY_Rockjaw Ambushers|r próximos para os |cRXP_FRIENDLY_Montanhistas de Altaforja|r que podem patrulhar na estrada (certifique-se de causar 51%+ de dano para obter crédito)|r
    .mob Rockjaw Ambusher
    .unitscan Ironforge Mountaineer
step
    #requires Shortcut2
    #completewith next
    .goto Dun Morogh,81.23,42.66,50,0
    .goto Dun Morogh,83.01,40.31,30 >>Arraste o |cRXP_ENEMY_Rochetusco Cicatrizado|r pelo túnel
    >>|cRXP_WARN_Tenha cuidado ao lançarem|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo Pessoal: Aumenta velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável à distância)|r
    .mob Scarred Crag Boar
step
    #label Pilot
    .goto Dun Morogh,83.89,39.19
    >>Converse com |cRXP_FRIENDLY_Hammerfoot|r
    .accept 419 >>Aceite O Piloto Perdido
    .target Pilot Hammerfoot
    .isQuestAvailable 419
step
    .goto Dun Morogh,81.37,37.02,30,0
    .goto Dun Morogh,79.67,36.17
    >>Clique em |cRXP_PICK_Cadáver Anão|r no chão
    >>|cRXP_WARN_Garanta que você tem 1 espaço de inventário livre para esta entrega|r
    >>|cRXP_WARN_Lembrar que você vai levar |cRXP_ENEMY_Ronhagarra|r de volta para |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 419 >>Entregue O Piloto Perdido
    .accept 417 >>Aceite A Vingança do Piloto
step
    .goto Dun Morogh,78.41,37.80,60,0
    .goto Dun Morogh,83.89,39.19
    >>Mate |cRXP_ENEMY_Ronhagarra|r. Saqueie a |cRXP_LOOT_Mangy Garra|r dele
    >>|cRXP_WARN_Atraia-o para |cRXP_FRIENDLY_Hammerfoot|r (certifique-se de causar 51%+ de dano para receber crédito)|r
    .complete 417,1 --Collect Mangy Claw (x1)
    .mob Mangeclaw
    .target Pilot Hammerfoot
step
    .goto Dun Morogh,83.892,39.188
    >>Converse com |cRXP_FRIENDLY_Hammerfoot|r
    .turnin 417,1 >>Entregue A Vingança do Piloto
    .target Pilot Hammerfoot
step
    #label Tunnel1
    #completewith Barleybrew
    .goto Dun Morogh,83.01,40.31,30,0
    .goto Dun Morogh,81.23,42.66,30 >>Corra de volta pelo túnel
step
    .goto Dun Morogh,78.73,49.77
    >>|cRXP_WARN_Cuidado enquanto |cRXP_ENEMY_Javalis de Pedregulho Cicatrizados|r e |cRXP_ENEMY_Javalis de Pedregulho Anciãos|r lançam|r |T132337:0|t[carga] |cRXP_WARN_(Instantâneo Próprio: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao atingir. Apenas lançável à distância), e |cRXP_ENEMY_Ice Garra Ursos|r lançam|r |T135853:0|t[Garra de Gelo] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 4 danos corpo a corpo adicionais)|r
    .xp 9+5450 >>Farme até 5450+/6500xp
    .mob Ice Claw Bear
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #requires Tunnel1
    #label Tunnel2
    #completewith Barleybrew
    .goto Dun Morogh,79.61,49.94,20,0
    .goto Dun Morogh,81.10,49.76,20,0
    .goto Dun Morogh,81.60,50.01,20,0
    .goto Dun Morogh,83.59,49.18,20,0
    >>Atraia um |cRXP_ENEMY_Rochetusco Cicatrizado|r no caminho
    >>|cRXP_WARN_Tenha cuidado ao lançarem|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo Pessoal: Aumenta velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável à distância)|r
    .goto Dun Morogh,84.26,48.93,20 >>Faça o Mountain Pular. Lembre-se de descer com cuidado
    .mob Scarred Crag Boar
step
    #requires Tunnel2
    #completewith next
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Scarred Crag Boars|r conjuram|r |T132337:0|t[carga] |cRXP_WARN_(Autoinstantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo-a-corpo ao acertar. Apenas conjurável à distância)|r
    .xp 9+5990 >>Farme até 5990+/6500xp
    .mob Scarred Crag Boar
step
    #label Barleybrew
    .goto Dun Morogh,86.278,48.812
    >>Fale com |cRXP_FRIENDLY_Barleybrew|r
    .turnin 413 >>Entregue Cerveja Tremeluz
    .accept 414 >>Aceite Cerveja para Kadrell
    .target Mountaineer Barleybrew
step
    .goto Dun Morogh,86.74,49.58,40,0
    .goto Dun Morogh,86.36,47.36
    .xp 9+6320 >>Farme até 6320+/6500xp
    >>|cRXP_WARN_Cuidado enquanto |cRXP_ENEMY_Javalis de Pedregulho Cicatrizados|r lançam|r |T132337:0|t[carga] |cRXP_WARN_(Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao atingir. Apenas lançável à distância)|r
    .mob Scarred Crag Boar
step
    #label CragB1
    #completewith Cobbleflint
    .goto Loch Modan,16.45,58.54,20,0
    .goto Loch Modan,19.59,62.76,30 >>Arraste o |cRXP_ENEMY_Rochetusco Cicatrizado|r pelo túnel
    >>|cRXP_WARN_Tenha cuidado ao lançarem|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo Pessoal: Aumenta velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável à distância)|r
    .mob Scarred Crag Boar
step
#loop
	.line Loch Modan,21.14,71.62,19.06,75.46,20.91,77.67,21.14,71.62
	.goto Loch Modan,21.14,71.62,35,0
	.goto Loch Modan,19.06,75.46,35,0
	.goto Loch Modan,20.91,77.67,35,0
	.goto Loch Modan,21.14,71.62,35,0
    .xp 10 >>Farme até o nível 10
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #requires CragB1
    #completewith Rugelfuss
    +|cRXP_WARN_Tente atrair um |cRXP_ENEMY_Urso Preto|r ou |cRXP_ENEMY_Tocaieira da Floresta|r para o Bunker com você (lembre-se de causar 51%+ de dano para receber crédito)|r
    >>|cRXP_WARN_Saque os |cRXP_ENEMY_Anciões Ursos Pretos|r deles|r |T134027:0|t[|cRXP_LOOT_Urso Carne|r]
    >>|cRXP_WARN_Saque os |cRXP_ENEMY_Tocaieiras da Floresta|r delas|r |T134437:0|t[|cRXP_LOOT_Aranha Ichor|r]
    >>|cRXP_FRIENDLY_Cobbleflint|r|cRXP_WARN_, |cRXP_FRIENDLY_Gravelgaw|r, e |cRXP_FRIENDLY_Wallbang|r não vão ajudá-lo|r
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .disablecheckbox
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .disablecheckbox
    .mob Elder Black Bear
    .mob Forest Lurker
step
    #label Cobbleflint
    .goto Loch Modan,22.071,73.127
    >>Fale com |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>Entre no Bunker. Vá para o topo
step
    #label Rugelfuss
    .goto Loch Modan,23.233,73.675
    >>Fale com |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Volte para o Túnel
step << skip
    .goto Loch Modan,18.84,61.48
    .link https://www.youtube.com/watch?v=AOAlX9B5aO0 >>https://www.youtube.com/watch?v=AOAlX9B5aO0 >>|cRXP_WARN_CLIQUE AQUI Se você está tendo dificuldades|r
    .goto Loch Modan,32.19,46.95,30 >>|cRXP_WARN_Saltando Logout Pular do Braseiro dentro do túnel para Thelsamar|r
    .isOnQuest 414
step
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Fale com |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrula pela estrada principal de Thelsamar|r
    .turnin 414 >>Entregue Cerveja para Kadrell
    .accept 416 >>Aceite Pegando Ratos
    .accept 1339 >>Aceite Tarefa do Montanhista Lançatroz
    .target Mountaineer Kadrell
step
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Fale com |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Ele pode estar dentro ou fora do prédio|r
    .accept 6387 >>Aceite Alunos Brilhantes
    .target Brock Stoneseeker
step
    .goto Loch Modan,33.94,50.96
    >>Fale com |cRXP_FRIENDLY_Thorgrum|r
    .fp Thelsamar >>Pegue a rota de voo de Thelsamar
    .turnin 6387 >>Entregue Alunos Brilhantes
    .accept 6391 >>Aceite Carona para Altaforja
    .target Thorgrum Borrelson
step
    #completewith next
    .goto Loch Modan,33.94,50.96
    >>Fale com |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
--VV Merge with step above
step
    .zone Ironforge >>Viaje para Ironforge
    .isOnQuest 6391
step
    #completewith next
    .goto Ironforge,55.81,38.35,30,0
    .goto Ironforge,51.83,29.77,15,0
    .goto Ironforge,49.67,28.23,12,0
    >>Entre no prédio
    .goto Ironforge,51.54,26.30,10 >>Vá para |cRXP_FRIENDLY_Golnir|r
step
    .goto Ironforge,51.54,26.30
    >>Fale com |cRXP_FRIENDLY_Golnir|r
    .turnin 6391 >>Entregue Carona para Altaforja
    .accept 6388 >>Aceite Grif Trovino
    .vendor >>Comerciante Lixo
    .target Golnir Bouldertoe
    .isOnQuest 291
step
    #completewith next
    .goto Ironforge,49.67,28.23,12,0
    .goto Ironforge,55.81,38.35,30,0
    >>Saia do prédio
    .goto Ironforge,55.49,47.74,10 >>Vá para |cRXP_FRIENDLY_Gryth|r
step
    .goto Ironforge,55.50,47.74
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .turnin 6388 >>Entregue Grif Trovino
--   .accept 6392 >>Accept Return to Brock
-- .fly Thelsamar >> Fly to Thelsamar
    .target Gryth Thurden
step
    #completewith next
    .goto Ironforge,55.07,51.36,30,0
    .goto Ironforge,49.11,56.02,30,0
    .goto Ironforge,46.67,50.56,20,0
    .goto Ironforge,44.12,50.37,20,0
    .goto Ironforge,39.55,57.49,10 >>Vá para |cRXP_FRIENDLY_Barin|r
step
    .goto Ironforge,39.55,57.49
    >>Fale com |cRXP_FRIENDLY_Barin|r
    .turnin 291 >>Entregue Os Relatórios
    .target Senator Barin Redstone
step
    #completewith next
    .goto Ironforge,44.43,49.08,20,0
    .goto Ironforge,44.08,46.60,20,0
    .goto Ironforge,40.84,44.59,20,0
    .goto Ironforge,35.30,32.76,20,0
    .goto Ironforge,27.60,11.06,20,0
    .goto Ironforge,27.17,8.58,10 >>Vá para |cRXP_FRIENDLY_Dink|r
step
    .goto Ironforge,27.17,8.58
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine seus feitiços de classe (Armadura de Gelo r2, Novane de Gelo, Polimorfia, Conjurar Água r1 & r2)
    >>Custo Total: 15s
    >>Lembre que você pode querer dinheiro para Poções de Cura (3s cada), Tubo de Bronze (8s cada) e comida de nível 5 (20c por 5)
    .target Dink
step << skip
    #completewith IFHS
    +|cRXP_WARN_Lembre-se de fazer Logout Pular nas Velas após definir sua|r |T134414:0|t[Pedra de Regresso]
step
    #completewith next
    --.goto Ironforge,27.25,12.79,20,0
    --.goto Ironforge,22.59,38.13,20,0
    --.goto Ironforge,20.40,53.19,20,0
    >>Entre no prédio
    .goto Ironforge,18.14,51.45,10 >>Voe para |cRXP_FRIENDLY_Firebrew|r
step
    #label IFHS
    .goto Ironforge,18.14,51.45
    >>Fale com |cRXP_FRIENDLY_Firebrew|r
    .home >>Defina sua Pedra de Regresso em Ironforge
    .target Innkeeper Firebrew
step << skip
    .goto Ironforge,19.11,52.80
    .zone Dun Morogh >>|cRXP_WARN_Salte no topo de Velas na mesa. Pule por logout para Dun Morogh|r
    .isOnQuest 416
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 ADV Costa Negra 1 Mago AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 12-14 ADV Loch Modan Mago AdE

step
    #completewith DeathlessSkip
    .goto Ironforge,15.16,85.70,20,0
    .goto Dun Morogh,59.84,49.56
    .zone Dun Morogh >>Saia de Altaforja
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >>Vá para o ponto de pulo. Mantenha-se junto ao lado esquerdo da montanha no caminho
step
    #label DeathlessSkip
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_Faça o Deathless Dun Morogh -> Os Pântanos skip|r
    >>|cRXP_WARN_Coma até se recuperar completamente após cada queda se não se sente confiante|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >>https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLIQUE AQUI para referência (é ALTAMENTE RECOMENDADO que você faça isso)|r
    .goto Dun Morogh,60.65,11.38,20 >>Desça com cuidado pela encosta da montanha
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_Faça o Deathless Dun Morogh -> Os Pântanos skip|r
    >>|cRXP_WARN_Tenha cuidado com |cRXP_ENEMY_Lodogã|r (raro) antes de descer em direção à costa (se ele estiver ativo)|r
    >>|cRXP_WARN_Tenha cuidado com os |cRXP_ENEMY_Bluegill Raiders|r a oeste quando você chegar ao mar|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Young Pantanal Crocolisks|r ao cruzar o mar. Espere que eles se afastem|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >>https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLIQUE AQUI para referência (é ALTAMENTE RECOMENDADO que você faça isso)|r
    .goto Wetlands,12.69,60.97,15 >>Vá para Menethil Harbor
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>Go dentro da Inn
step
    .goto Wetlands,10.50,60.20
    >>Pule para o Lustro abaixo
    >>Fale com |cRXP_FRIENDLY_Samor|r através da parede
    >>|cRXP_WARN_NOTA: Para fazer isso, vincule "Interagir com Alvo" em Gameplay -> Controles no menu de Opções|r
    >>|cRXP_WARN_Se o Barco acabou de chegar, pule este passo|r
    .vendor 1457 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>Fale com |cRXP_FRIENDLY_Shellei|r
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_Se o Barco acabou de chegar, pule este passo|r
    +|cRXP_WARN_Cozinhe qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você tem de fora (há uma fogueira dentro)|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>Fale com |cRXP_FRIENDLY_Dewin|r através da parede
    >>|cRXP_WARN_Se o Barco acabou de chegar, pule este passo|r
    .vendor 1453 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>Vá para o Barco da Costa Negra
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Comece|r |T132794:0|t[Conjurar Água r2]|cRXP_WARN_ rapidamente para conjurar o máximo de água possível|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >>Pegue o barco para Costa Negra
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>Pule do barco quando você estiver mais perto da costa
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Atraia 2-3 |cRXP_ENEMY_Pygmy Tide Crawlers|r em direção a |cRXP_FRIENDLY_Wizbang|r (Lembre-se de usar|r |T135848:0|t[Novane Congelante]|cRXP_WARN_) Mate-os quando você aceitar a missão|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Comerciante Lixo
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>Vá para cima até o andar superior
    .goto Darkshore,36.98,44.14,8 >>Vá para |cRXP_FRIENDLY_Wizbang|r
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
    >>Fale com |cRXP_FRIENDLY_Wizbang|r
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Pygmy Tide Crawlers|r que você atraiu. Saqueie-os por suas |cRXP_LOOT_Pernas de Caranguejo|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>Vá para |cRXP_FRIENDLY_Thundris|r
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre o máximo de|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_que precisar/conseguir|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
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
    .goto Darkshore,37.39,40.13
    .accept 2178 >>Aceite Vida Fácil de Moa
    .goto Darkshore,37.69,40.66
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>Vá para |cRXP_FRIENDLY_Terenthis|r
step
    #requires DalmondBags
    >>Fale com |cRXP_FRIENDLY_Terenthis|r e |cRXP_FRIENDLY_Tharnariun|r
    .accept 984 >>Aceite Uma grande ameaça?
    .target +Terenthis
    .goto Darkshore,39.37,43.49
    .accept 2118 >>Aceite Terras Pestilentas
    .goto Darkshore,38.84,43.41
    .target +Tharnariun Treetender
 step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Comerciante Lixo
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step
    #completewith next
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>Mate os |cRXP_ENEMY_Pygmy Tide Crawlers|r. Saqueie-os por suas |cRXP_LOOT_Pernas de Caranguejo|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #completewith next
    .goto Darkshore,38.23,52.84,75,0
    >>|cRXP_WARN_Use|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_em um |cRXP_ENEMY_Ursocardo Raivoso|r. Tem um alcance de 50 jardas|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135914:0|t[Hidrofobia] |cRXP_WARN_(Instantâneo Corpo a Corpo: Reduz toda regeneração de vida em 50% por 10 Minutos)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,38.90,53.59
    >>Corra para o Acampamento Furbolg
    >>|cRXP_WARN_Não tente lutar contra o|r |cRXP_ENEMY_Voz-do-vento Bosquenero|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,38.63,56.34,60,0
    .goto Darkshore,38.80,58.29,60,0
    .goto Darkshore,38.38,60.75,60,0
    .goto Darkshore,38.57,66.39
    >>|cRXP_WARN_Use|r |T134335:0|t[Esperança de Tharnariun] |cRXP_WARN_em um |cRXP_ENEMY_Ursocardo Raivoso|r. Tem um alcance de 50 jardas|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135914:0|t[Hidrofobia] |cRXP_WARN_(Instantâneo Corpo a Corpo: Reduz toda regeneração de vida em 50% por 10 Minutos)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    .goto Darkshore,40.30,59.73
    >>Fale com |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Relics
    +|cRXP_WARN_Evite atrair |cRXP_ENEMY_Lady Miralua|r (rara) se ela estiver ativa|r
    .unitscan Lady Moongazer
step
    #completewith Fall
    >>Abate os |cRXP_ENEMY_Amaldiçoado Highbornes|r e os |cRXP_ENEMY_Writhing Highbornes|r. Saque-os para |cRXP_LOOT_Highborne Relics|r
    >>|cRXP_WARN_Abate |cRXP_ENEMY_Ululante Highbornes|r apenas se estiverem no seu caminho|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto Darkshore,42.65,63.15
    >>Clique em |cRXP_PICK_The Queda of Ameth'Aran|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>Clique em |cRXP_PICK_The Lay of Ameth'Aran|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>Fale com |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
    >>Abate os |cRXP_ENEMY_Amaldiçoado Highbornes|r e os |cRXP_ENEMY_Writhing Highbornes|r
    >>|cRXP_WARN_Abate |cRXP_ENEMY_Ululante Highbornes|r apenas se estiverem no seu caminho|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #completewith next
    +|cRXP_WARN_Leve 2-3 |cRXP_ENEMY_Torpe Sprites|r em direção a |cRXP_FRIENDLY_Astérion|r (Lembre-se de usar|r |T135848:0|t[Novane Congelante]|cRXP_WARN_) Abate-os quando aceitar a missão|r
    .mob Vile Sprite
step
    .goto Darkshore,44.17,36.29
    >>Fale com o |cRXP_FRIENDLY_Astérion|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Licillino|r (raro) pode estar ativo|r
    >>|cRXP_WARN_Ele conjura|r |T136197:0|t[Seta Sombria] |cRXP_WARN_(Conjuração à Distância: Causa 55-70 dano de Sombra)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>Abate os |cRXP_ENEMY_Torpe Sprites|r e os |cRXP_ENEMY_Selvagem Grells|r. Saque-os para obter seus |cRXP_LOOT_Capeta Earrings|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Torpe Sprites|r lançam|r |T136016:0|t[Veneno] |cRXP_WARN_(Corpo a Corpo Instantâneo: Causa 3 dano a cada 3 segundos por 15 segundos) e os |cRXP_ENEMY_Selvagem Grells|r lançam|r |T136215:0|t[Enlouquecido] |cRXP_WARN_(Efeito Pessoal Instantâneo: Aumenta velocidade de ataque em 20% quando abaixo de 20% de vida)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>Fale com o |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>Mate |cRXP_ENEMY_Sátiro Deth'ryll|r. Saqueie-os para obter |cRXP_LOOT_Selo Antigo de Pedra-da-lua|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Conjuração à Distância: Causa 15-25 de dano)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    .xp 11+1100 >>Farme até 1100+/8800 xp
    .mob Vile Sprite
    .mob Wild Grell
--910+900+750+975+850 = 4385 (Turnins starting from Bashal Seal turnin)
--675+975 = 1650 (Turtle turnins)
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>Fale com o |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor >>Comerciante Lixo
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
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
    .goto Darkshore,39.37,43.49
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
    .goto Darkshore,38.84,43.41
    .target +Tharnariun Treetender
step
    #sticky
    #label Gwennyth
    .goto Darkshore,36.62,45.59
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Fale com |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Guarde os|r |T133884:0|t[Murloc Olhos]|cRXP_WARN_ que você saqueia dos |cRXP_ENEMY_Brumagris Coastrunners|r e dos |cRXP_ENEMY_Brumagris Raiders|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto Darkshore,36.38,50.88
    >>Saque a |cRXP_LOOT_Beached Sea Criatura|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Brumagris Coastrunners|r próximos têm|r |T132307:0|t[Increased Movespeed]
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    .goto Darkshore,36.64,46.26
    >>Clique em |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>Fale com |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Abate os |cRXP_ENEMY_Costa Negra Threshers|r
    >>|cRXP_WARN_Não se esforce para conseguir estes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >>Corra pelo cais em direção aos |cRXP_LOOT_Sea Tartaruga Remains|r
step
    .goto Darkshore,31.86,46.33
    >>Nade embaixo da água
    >>Saque os |cRXP_LOOT_Sea Tartaruga Remains|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >>Farme até 7825+/8800xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Equipe seus novos sapatos (Equipe as |T132537:0|t[Botas do Rastelo de Areia])
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===ATENÇÃO===|r
    >>|cRXP_WARN_Converse com|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Se esta é sua primeira vez fazendo um Lote de Pedra de Regresso, assista o guia para isto abaixo|r
    >>|cRXP_WARN_Abrir a menu "Set Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Pedra de Regresso de Auberdine para Ironforge|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >>https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLIQUE AQUI (é FORTEMENTE aconselhado que você o faça). Certifique-se de que você configurou e testou seu Tamanho de Janela de Lote antes para reduzir o risco de falha|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Treine seus feitiços de classe (Bola de Fogo r3, Atenuar Magia)
    >>Custo Total: 12s
    >>Lembre-se de que você pode precisar de dinheiro para um |T133024:0|t[Tubo de Bronze] (8s cada) e voo para Thelsamar (1s 10c)
    .target Dink
step << skip
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >>Faça logout no pilar acima de |cRXP_FRIENDLY_Dink|r para verificar |cRXP_FRIENDLY_Cogspinner|r para um |T133024:0|t[Tubo de Bronze] se desejar
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Início lançar feitiços repetidamente|r |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Aceite Retorno a Brock
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >>Voe para Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 10-12 LAUNCH ADV Costa Negra 1 Mago AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor none
#next 12-14 ADV Loch Modan Mago AdE

--VV Make this an alternative route that must be manually selected
step
    #completewith next
    +|cRXP_WARN_NOTA: A rota de Lançamento contém missões que são MUITO difíceis de fazer em solo. Isso é especificamente para servidores muito movimentados onde você pode se agrupar para as missões mais difíceis, OU jogadores que roubam kills|r
step
    #completewith next
    .goto Dun Morogh,53.48,37.50,30,0
    .goto Dun Morogh,54.04,38.60,30,0
    .goto Dun Morogh,59.43,42.85,150 >>Viaje para o local de pulo. Fique no lado esquerdo da montanha no caminho
step
    .goto Dun Morogh,60.18,43.01,12,0
    .goto Dun Morogh,60.42,43.75,12,0
    .goto Dun Morogh,60.71,44.18,4,0
    .goto Dun Morogh,60.95,44.16,6,0
    .goto Dun Morogh,61.45,41.68,10,0
    .goto Dun Morogh,61.76,41.50,4,0
    .goto Dun Morogh,61.84,41.63,4,0
    .goto Dun Morogh,62.01,41.30,8,0
    .goto Dun Morogh,61.79,39.71,15,0
    .goto Dun Morogh,61.48,36.85,12,0
    .goto Dun Morogh,61.46,32.76,15,0
    .goto Dun Morogh,61.38,28.92,30,0
    .goto Dun Morogh,60.91,22.82,30,0
    .goto Dun Morogh,60.51,16.20,5,0
    .goto Dun Morogh,60.52,15.81,5,0
    .goto Dun Morogh,60.74,15.16,15,0
    .goto Dun Morogh,60.41,14.35,8,0
    .goto Dun Morogh,60.64,13.89,6,0
    .goto Dun Morogh,61.40,13.27,10,0
    .goto Dun Morogh,61.52,12.58,8,0
    >>|cRXP_WARN_Faça o Deathless Dun Morogh -> Os Pântanos skip|r
    >>|cRXP_WARN_Coma até se recuperar completamente depois de cada queda se você não se sentir confiante|r
    .link https://youtu.be/QcEUvwu49KI?t=73 >>https://youtu.be/QcEUvwu49KI?t=73 >> |cRXP_WARN_CLIQUE AQUI para referência (é ALTAMENTE recomendado que você o faça)|r
    .goto Dun Morogh,60.65,11.38,20 >>Pule cuidadosamente pela encosta da montanha
    .isQuestAvailable 983
step
    .goto Dun Morogh,60.80,10.33,10,0
    .goto Dun Morogh,60.61,9.73,8,0
    .goto Wetlands,18.79,72.53,12,0
    .goto Wetlands,18.70,70.97,12,0
    .goto Wetlands,18.50,69.39,12,0
    .goto Wetlands,17.62,68.35,15,0
    .goto Wetlands,17.00,67.68,12,0
    .goto Wetlands,15.96,67.15,12,0
    .goto Wetlands,15.07,66.41,20,0
    .goto Wetlands,15.31,65.47,20,0
    .goto Wetlands,15.10,63.72,12,0
    >>|cRXP_WARN_Faça o Deathless Dun Morogh -> Os Pântanos skip|r
    >>|cRXP_WARN_Tenha cuidado com |cRXP_ENEMY_Lodogã|r (raro) antes de descer em direção à costa (se estiver ativo)|r
    >>|cRXP_WARN_Tenha cuidado com os |cRXP_ENEMY_Bluegill Raiders|r a oeste quando você chegar ao mar|r
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Young Pantanal Crocolisks|r ao atravessar o mar. Espere que se afastem patrulhando|r
    .link https://youtu.be/QcEUvwu49KI?t=336 >>https://youtu.be/QcEUvwu49KI?t=336 >> |cRXP_WARN_CLIQUE AQUI para referência (é ALTAMENTE recomendado que você o faça)|r
    .goto Wetlands,12.69,60.97,15 >>Vá para Menethil Harbor
    .mob Young Wetlands Crocolisk
    .mob Bluegill Raider
    .unitscan Sludginn
    .isQuestAvailable 983
--VV Custom Video
step
    #completewith next
    .goto Wetlands,10.80,59.80,10,0
    .goto Wetlands,10.63,60.10,10 >>Go dentro da Inn
step
    .goto Wetlands,10.50,60.20
    >>Salte para o Lustre lá embaixo
    >>Fale com Samor através da parede
    >>|cRXP_WARN_NOTA: Para fazer isso, vincule "Interagir com Alvo" em Gameplay -> Controles no menu de Opções|r
    >>|cRXP_WARN_Se o Barco acabou de chegar, pule este passo|r
    .vendor 1457 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Samor Festivus
    .money <0.03
step
    .goto Wetlands,9.49,59.69
    >>Fale com Shellei
    .fp Menethil Harbor >>Aprenda a rota de voo para Menethil Harbor
    .target Shellei Brondir
step
    #completewith DarkshoreBoat
    .goto Wetlands,7.89,56.22
    >>|cRXP_WARN_Se o barco acaba de chegar, pule este passo|r
    +|cRXP_WARN_Cozinhe qualquer|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r |cRXP_WARN_que você tenha de fora (há uma fogueira dentro)|r
    .itemcount 769,1
step
    .goto Wetlands,7.89,56.22
    >>Fale com Dewin através da parede
    >>|cRXP_WARN_Se o Barco acabou de chegar, pule este passo|r
    .vendor 1453 >>|cRXP_BUY_Compre|r [Poção de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Dewin Shimmerdawn
    .money <0.03
step
    #completewith Darkshore
    #label DarkshoreBoat
    .goto Wetlands,6.09,58.45,20,0
    .goto Wetlands,4.50,57.02,20 >>Viaje para o barco de Costa Negra
step
    #completewith next
    #requires DarkshoreBoat
    +|cRXP_WARN_Comece|r |T132794:0|t[Conjurar Água r2]|cRXP_WARN_ rapidamente para conjurar o máximo de água possível|r
step
    #label Darkshore
    .goto Wetlands,4.25,57.21
    .zone Darkshore >>Pegue o barco para Costa Negra
step
    #label Darkshoreshore
    #completewith Wizbang
    .goto Darkshore,35.73,45.23,60 >>Salte do barco quando você estiver mais próximo da costa
step
    #requires Darkshoreshore
    #completewith Wizbang
    +|cRXP_WARN_Puxe entre 2 e 3 |cRXP_ENEMY_Pygmy Tide Crawlers|r em direção a Wizbang (Lembre-se de usar|r |T135848:0|t[Novane Congelante]|cRXP_WARN_) Abata-os quando você aceitar a missão|r
    .mob Pygmy Tide Crawler
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.77,44.28,0,0
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Comerciante Lixo
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
step
    #requires Darkshoreshore
    #completewith next
    .goto Darkshore,36.72,44.52,20,0
    .goto Darkshore,36.84,44.18,10,0
    .goto Darkshore,36.71,43.87,10,0
    >>Vá para cima até o andar superior
    .goto Darkshore,36.98,44.14,8 >>Viaje para Wizbang
step
    #label Wizbang
    .goto Darkshore,36.98,44.14
    >>Fale com Wizbang
    .accept 983 >>Aceite Caixazorra 827
    .target Wizbang Cranktoggle
step
    #completewith DalmondBags
    >>Abata os |cRXP_ENEMY_Pygmy Tide Crawlers|r que você puxou. Saque-os para obter |cRXP_LOOT_Crawler Pernas|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Comerciante Lixo
    .collect 4592,20,983,1 --Longjaw Mud Snapper (20)
    .isQuestAvailable 983
    .itemcount 4592,<20
step << skip
    #requires DalmondBags
    #completewith next
    .goto Darkshore,37.85,41.39,20,0
    .goto Darkshore,38.58,42.61,20,0
    .goto Darkshore,39.05,43.23,20,0
    .goto Darkshore,39.37,43.49,12 >>Viaje para Terenthis
step
    >>Fale com Terenthis e Tharnariun
    .accept 984 >>Aceite Uma grande ameaça?
    .target +Terenthis
    .goto Darkshore,39.37,43.49,-1
    .accept 2118 >>Aceite Terras Pestilentas
    .goto Darkshore,38.84,43.41,-1
    .target +Tharnariun Treetender
step << skip
    #completewith next
    .goto Darkshore,37.44,43.12,20,0
    .goto Darkshore,37.73,41.40,20,0
    .goto Darkshore,37.39,40.13,10 >>Viaje para Thundris
step
    #sticky
    #label DalmondBags
    .goto Darkshore,37.45,40.50
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre o máximo de|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_que precisar/conseguir|r
    .target Dalmond
    .money <0.0500
    .isQuestAvailable 954
step
    .goto Darkshore,37.39,40.13
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .target Thundris Windweaver
	.skill cooking,10,1
step
    >>Fale com Thundris e Alanndarian
    .accept 954 >>Aceite Bashal'Aran
    .accept 958 >>Aceite Ferramentas dos Altaneiros
    .target +Thundris Windweaver
    .goto Darkshore,37.39,40.13,-1
    .accept 2178 >>Aceite Vida Fácil de Moa
    .goto Darkshore,37.69,40.66,-1
    .target +Alanndarian Nightsong
	.skill cooking,<10,1
step
    .goto Darkshore,46.71,34.64
    >>|cRXP_WARN_Se você encontrar um |cRXP_ENEMY_Rabid Ursocardo|r, use|r |T134335:0|t[Tharnariun's Esperança] |cRXP_WARN_depois provoque-o|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135914:0|t[Hidrofobia] |cRXP_WARN_(Instantâneo Corpo a Corpo: Reduz toda regeneração de vida em 50% por 10 Minutos)|r
    .complete 2118,1 --Rabid Thistle Bear Captured (1)
    .use 7586
    .unitscan Rabid Thistle Bear
step
    #completewith next
    +|cRXP_WARN_Puxe entre 2 e 3 |cRXP_ENEMY_Vile Sprites|r em direção a Astérion (Lembre-se de usar|r |T135848:0|t[Novane Congelante]|cRXP_WARN_) Abata-os quando você aceitar a missão|r
    .mob Vile Sprite
step
    #label Bash1
    .goto Darkshore,44.17,36.29
    >>Fale com o |cRXP_FRIENDLY_Astérion|r
    .turnin 954 >>Entregue Bashal'Aran
    .accept 955 >>Aceite Bashal'Aran
    .target Asterion
step
    #completewith BashalF
    +|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Licillino|r (raro) pode estar ativo|r
    >>|cRXP_WARN_Ele lança|r |T136197:0|t[Seta Sombria]|cRXP_WARN_ (Lançamento a Distância: Causa 55-70 de dano de Sombra)|r
    .unitscan Licillin
step
#loop
	.line Darkshore,44.57,36.57,44.47,38.11,44.02,38.55,45.01,39.62,45.61,38.81,45.18,37.51,45.86,36.96,46.91,37.11,45.47,36.01,44.57,36.57
	.goto Darkshore,44.57,36.57,35,0
	.goto Darkshore,44.47,38.11,35,0
	.goto Darkshore,44.02,38.55,35,0
	.goto Darkshore,45.01,39.62,35,0
	.goto Darkshore,45.61,38.81,35,0
	.goto Darkshore,45.18,37.51,35,0
	.goto Darkshore,45.86,36.96,35,0
	.goto Darkshore,46.91,37.11,35,0
	.goto Darkshore,45.47,36.01,35,0
	.goto Darkshore,44.57,36.57,35,0
    >>Abata os |cRXP_ENEMY_Vile Sprites|r e os |cRXP_ENEMY_Wild Grells|r. Saque-os para obter seus |cRXP_LOOT_Grell Earrings|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Vile Sprites|r lançam|r |T136016:0|t[Veneno]|cRXP_WARN_ (Corpo a Corpo Instantâneo: Causa 3 de dano a cada 3 segundos por 15 segundos) e os |cRXP_ENEMY_Wild Grells|r lançam|r |T136215:0|t[Enlouquecido]|cRXP_WARN_ (Instantâneo: Aumenta velocidade de ataque em 20% abaixo de 20% de vida)|r
    .complete 955,1 --Grell Earring (8)
    .mob Vile Sprite
    .mob Wild Grell
step
    .goto Darkshore,44.17,36.29
    >>Fale com o |cRXP_FRIENDLY_Astérion|r
    .turnin 955 >>Entregue Bashal'Aran
    .accept 956 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76,45,0
    .goto Darkshore,45.50,36.50,45,0
    .goto Darkshore,45.93,37.78,45,0
    .goto Darkshore,45.94,38.04,45,0
    .goto Darkshore,45.43,39.66,45,0
    .goto Darkshore,46.67,39.09,45,0
    .goto Darkshore,47.36,37.63,45,0
    .goto Darkshore,47.77,37.20,45,0
    .goto Darkshore,47.44,36.76
    >>Mate |cRXP_ENEMY_Sátiro Deth'ryll|r. Saqueie-os para obter |cRXP_LOOT_Selo Antigo de Pedra-da-lua|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132222:0|t[Atirar]|cRXP_WARN_ (Lançamento a Distância: Causa 15-25 de dano)|r
    .complete 956,1 --Ancient Moonstone Seal (1)
    .mob Deth'ryll Satyr
step
    #label BashalF
    .goto Darkshore,44.17,36.29
    >>Fale com o |cRXP_FRIENDLY_Astérion|r
    .turnin 956 >>Entregue Bashal'Aran
    .accept 957 >>Aceite Bashal'Aran
    .target Asterion
step
    .goto Darkshore,38.84,43.41
    .xp 10+6625 >>Farme até ter 6625+/7600xp no caminho de volta para Tharnariun
step
    .goto Darkshore,38.84,43.41
    >>Fale com |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2118 >>Entregue Terras Pestilentas
    .accept 2138 >>Aceite Purificação dos infectados
    .target Tharnariun Treetender
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>Fale com |cRXP_FRIENDLY_Cerellean|r
    .accept 963 >>Aceite Por Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Pygmy Tide Crawlers|r. Saqueie-os para obter as |cRXP_LOOT_Crawler Pernas|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
step
    #sticky
    #label Gwennyth
    .goto Darkshore,36.62,45.59
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .accept 3524 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,36.34,45.58
    >>Fale com |cRXP_FRIENDLY_Caylais|r
    .fp Auberdine >>Pegue o ponto de voo de Auberdine
    .target Caylais Moonfeather
step
    #requires Gwennyth
    #completewith Bones
    .goto Darkshore,36.22,44.89,50,0
    .goto Darkshore,35.81,45.78,50,0
    .goto Darkshore,35.86,47.35,50,0
    .goto Darkshore,35.74,48.20,50,0
    .goto Darkshore,36.25,49.90,50,0
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    #completewith next
    >>|cRXP_WARN_Guarde os|r |T133884:0|t[Murloc Olhos] |cRXP_WARN_que você saqueia dos |cRXP_ENEMY_Greymist Coastrunners|r e|r |cRXP_ENEMY_Greymist Raiders|r
    .collect 730,3,38,1 --Murloc Eyes (3)
    .mob Greymist Coastrunner
    .mob Greymist Raider
step
    #requires Gwennyth
    #label Bones
    .goto Darkshore,36.38,50.88
    >>Saqueie o |cRXP_LOOT_Beached Sea Criatura - Missão|r
    >>|cRXP_WARN_Cuidado, os |cRXP_ENEMY_Greymist Coastrunners|r próximos têm|r |T132307:0|t[Increased Movespeed]
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 3524,1 --Sea Creature Bones (1)
step
    .goto Darkshore,36.22,44.89
    >>Mate |cRXP_ENEMY_Maretisco Pigmeu|r e |cRXP_ENEMY_Tiscoral Jovem|r Saqueie-os para obter |cRXP_LOOT_Pata de Rastejante|r
    .complete 983,1 --Crawler Leg (6)
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #requires Gwennyth
    .goto Darkshore,38.90,53.59
    >>Corra para o Acampamento Furbolg
    >>|cRXP_WARN_Não tente lutar contra|r |cRXP_ENEMY_Voz-do-vento Bosquenero|r
    .complete 984,1 --Find a corrupt furbolg camp (1)
step
    .goto Darkshore,40.30,59.73
    >>Fale com |cRXP_FRIENDLY_Tysha|r
    .accept 953 >>Aceite A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #completewith Anaya
    +|cRXP_WARN_Evite puxar |cRXP_ENEMY_Lady Miralua|r (rara) se ela estiver ativa|r
    .unitscan Lady Moongazer
 step
    #completewith Relics
    .goto Darkshore,42.45,60.66,0
    >>Abate o |cRXP_ENEMY_Anaya Correalba|r. Saque-a pelo |cRXP_LOOT_Pingente de Anaya|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith Fall
    >>Abate os |cRXP_ENEMY_Cursed Highbornes|r e os |cRXP_ENEMY_Writhing Highbornes|r. Saqueie-os para obter as |cRXP_LOOT_Highborne Relics|r
    >>|cRXP_WARN_Mate os |cRXP_ENEMY_Wailing Highbornes|r apenas se estiverem no seu caminho|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    .goto Darkshore,42.37,61.82
    >>Clique na |cRXP_PICK_Chama Antiga|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.65,63.15
    >>Clique em |cRXP_PICK_A Queda de Ameth'Aran|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 953,2 --Read the Fall of Ameth'Aran (1)
step
    .goto Darkshore,43.30,58.70
    >>Clique em |cRXP_PICK_A Balada de Ameth'Aran|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 953,1 --Read the Lay of Ameth'Aran (1)
step
    #label Fall
    .goto Darkshore,40.30,59.73
    >>Fale com |cRXP_FRIENDLY_Tysha|r
    .turnin 953 >>Entregue A queda de Ameth’Aran
    .target Sentinel Tysha Moonblade
step
    #label Relics
    .goto Darkshore,41.76,57.96,50,0
    .goto Darkshore,43.11,57.55,50,0
    .goto Darkshore,43.82,58.29,50,0
    .goto Darkshore,43.58,59.99,50,0
    .goto Darkshore,43.49,62.92,50,0
    .goto Darkshore,42.38,63.40,50,0
    .goto Darkshore,41.21,61.64,50,0
    .goto Darkshore,41.76,57.96
    >>Abate os |cRXP_ENEMY_Cursed Highbornes|r e os |cRXP_ENEMY_Writhing Highbornes|r
    >>|cRXP_WARN_Abate os |cRXP_ENEMY_Wailing Highbornes|r apenas se eles estiverem no seu caminho|r
    .complete 958,1 --Highborne Relic (7)
    .mob Cursed Highborne
    .mob Writhing Highborne
step
    #label Anaya
    .goto Darkshore,42.45,60.66
    >>Abate o |cRXP_ENEMY_Anaya Correalba|r. Saque-a pelo |cRXP_LOOT_Pingente de Anaya|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith next
    .goto Darkshore,45.25,53.44,30 >>Vá para dentro da caverna
    >>|cRXP_WARN_Evite os |cRXP_ENEMY_Thistle Ursos|r, os |cRXP_ENEMY_Moonkins|r, e os |cRXP_ENEMY_Raging Moonkins|r em rota (se possível)|r
    .isOnQuest 958
step
    .goto Darkshore,45.75,53.08
    .goto Darkshore,41.70,36.51,30 >>Abate o |cRXP_WARN_Oráculo Luniscante|cRXP_ENEMY_ dentro da caverna|r --, then drink Logout Skip by logging out on top of the Mushroom at the back of the cave|r
    >>|cRXP_WARN_Cuidado, ele conjura|r |T136006:0|t[Ira] |cRXP_WARN_(Conjuração à Distância: Causa 30-45 de dano de natureza),|r |T136096:0|t[Fogo Lunar] |cRXP_WARN_(Conjuração Instantânea: Causa 20-30 de dano de natureza, depois 44 de dano de natureza durante 12 segundos), e|r |T136085:0|t[Recrescimento] |cRXP_WARN_(Conjuração Pessoal: Cura cerca de 150 de dano. Raro, mas corra se isto acontecer)|r
    >>|cRXP_WARN_Você pode LoS seu|r |T136006:0|t[Ira] |cRXP_WARN_atrás das rochas dentro da boca da caverna|r
    .mob Moonkin Oracle
    .isOnQuest 958
step
    .goto Darkshore,44.18,36.29
    >>Fale com o |cRXP_FRIENDLY_Astérion|r
    .turnin 957,3 >>Entregue Bashal'Aran
    .target Asterion
step
    #sticky
    #label DalmondBags1
    .goto Darkshore,37.45,40.50,0,0
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor >>Comerciante Lixo
    .target Dalmond
    .isQuestAvailable 3524
step
    .goto Darkshore,37.40,40.13
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 958 >>Entregue Ferramentas dos Altaneiros
    .target Thundris Windweaver
step
    #requires DalmondBags1
    .goto Darkshore,37.69,40.66
    >>Fale com |cRXP_FRIENDLY_Alanndarian|r
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
    .itemcount 5469,5
    .skill cooking,<10,1
step
    .goto Darkshore,39.37,43.49
    >>Fale com |cRXP_FRIENDLY_Terenthis|r
    .turnin 984 >>Entregue Uma grande ameaça?
    .accept 985 >>Aceite Uma grande ameaça?
    .accept 4761 >>Aceite Trovejius Tecevento
    .target Terenthis
step
    .goto Darkshore,36.64,46.26
    >>Clique em |cRXP_PICK_Buzzbox 827|r
    .turnin 983 >>Entregue Caixazorra 827
    .accept 1001 >>Aceite Buzzbox 411
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 3524 >>Entregue Deixa a água me levar
    .accept 4681 >>Aceite Deixa a água me levar
    .target Gwennyth Bly'Leggonde
 step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,40,4681,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>Fale com |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith Gwen
    >>Abate os |cRXP_ENEMY_Costa Negra Threshers|r
    >>|cRXP_WARN_NÃO saia do seu caminho para estes|r
    .complete 1001,1 --Thresher Eye (3)
    .mob Darkshore Thresher
step
    #completewith next
    .goto Darkshore,32.91,42.24,15,0
    .goto Darkshore,32.41,43.82,25 >>Corra ao longo do cais em direção aos |cRXP_LOOT_Restos de Tartaruga Marinha|r
step
    .goto Darkshore,31.86,46.33
    >>Nade embaixo da água
    >>Saqueie os |cRXP_LOOT_Restos de Tartaruga Marinha|r
    .complete 4681,1 --Sea Turtle Remains (1)
step
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09,50,0
    .goto Darkshore,36.12,44.70,50,0
    .goto Darkshore,35.80,45.88,50,0
    .goto Darkshore,36.04,48.63,50,0
    .goto Darkshore,36.13,50.13,50,0
    .goto Darkshore,36.58,53.20,50,0
    .goto Darkshore,35.23,53.81,50,0
    .goto Darkshore,35.22,55.37,50,0
    .goto Darkshore,36.70,57.09
    .xp 11+7825 >>Obtenha 7825+/8800 xp
    .mob Pygmy Tide Crawler
    .mob Young Reef Crawler
step
    #label Gwen
    .goto Darkshore,36.67,45.08,12,0
    .goto Darkshore,36.62,45.59
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4681,1 >>Entregue Deixa a água me levar
    .target Gwennyth Bly'Leggonde
step << skip
    #completewith next
    +Equipe suas novas |T132537:0|t[Botas do Rastelo de Areia]
    .use 15398
    .itemcount 15398,1
    .itemStat 8,LEVEL,<14
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===ATENÇÃO===|r
    >>|cRXP_WARN_Converse com|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Se esta é sua primeira vez fazendo um Lote de Pedra de Retorno, assista o guia abaixo|r
    >>|cRXP_WARN_Abrir a menu "Set Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Lote de Pedra de Regresso de Auberdine para Ironforge|r
    .link https://www.youtube.com/watch?v=Is-h2TJpL3M >>https://www.youtube.com/watch?v=Is-h2TJpL3M >> |cRXP_WARN_CLIQUE AQUI (é fortemente aconselhado que você faça). Certifique-se de que você configurou e testou seu Tamanho de Janela de Lote antes para reduzir o risco de falha|r
    .target Innkeeper Shaussiy
    .zoneskip Ironforge
step
    .goto Ironforge,27.17,8.58
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .trainer >>Aprenda seus feitiços de classe (Bola de Fogo r3, Atenuar Magia)
    >>Custo Total: 12s
    >>Lembre-se de guardar dinheiro para um |T133024:0|t[Tubo de Bronze] (8s cada) e para voar de Thelsamar (1s 10c)
    .target Dink
step << skip
    .goto Ironforge,27.22,8.58,-1
    .goto Ironforge,67.83,42.47,-1
    .vendor 5175 >>Faça logout no pilar acima de |cRXP_FRIENDLY_Dink|r para verificar |cRXP_FRIENDLY_Cogspinner|r por um |T133024:0|t[Tubo de Bronze] se desejar
    .itemcount 4371,<1
    .isQuestAvailable 418
step
    #completewith next
    +|cRXP_WARN_Início lançar feitiços repetidamente|r |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step << Gnome
    .goto Ironforge,55.50,47.74
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .accept 6392 >>Aceite Retorno a Brock
    .target Gryth Thurden
step
    .goto Ironforge,55.50,47.74
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .fly Thelsamar >>Voe para Thelsamar
    .target Gryth Thurden
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 12-14 ADV Loch Modan Mago AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 14-16 ADV Costa Negra 2 Mago AdE
step
    #completewith next
    +|cRXP_WARN_Enquanto você faz missões em Loch Modan, guarde TODOS os |T133970:0|t[|cRXP_LOOT_Pedaços de Carne de Javali|r] que você pega para depois|r
step
    .zone Loch Modan >>Voe para Loch Modan
    .isOnQuest 6392 << Gnome
step
    .goto Loch Modan,22.071,73.127
    >>Fale com |cRXP_FRIENDLY_Cobbleflint|r
    .accept 224 >>Aceite Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>Entre no Bunker. Vá para o topo
step
    .goto Loch Modan,23.233,73.675
    >>Fale com |cRXP_FRIENDLY_Rugelfuss|r
    .accept 267 >>Aceite A Ameaça Trogg
    .target Captain Rugelfuss
step
    #completewith Rugel2
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável em alcance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,26.67,56.94
    >>Mate os |cRXP_ENEMY_Troggs Lascadores de Pedra|r e os |cRXP_ENEMY_Batedores Lascadores de Pedra|r. Saque-os pelo seu |cRXP_LOOT_Dentes de Trogg de Pedra|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Batedores Lascadores de Pedra|r lançam|r |T132222:0|t[Atirar] |cRXP_WARN_(Lançamento à Distância: Causa 14-20 de dano)|r
    >>|cRXP_WARN_Esta é uma área de reaparição rápida. Você não deve precisar sair daqui|r
    .complete 224,1 --Kill Stonesplinter Trogg (x10)
    .mob +Stonesplinter Trogg
    .complete 224,2 --Kill Stonesplinter Scout (x10)
    .mob +Stonesplinter Scout
    .complete 267,1 --Collect Trogg Stone Tooth (x8)
    .mob +Stonesplinter Trogg
    .mob +Stonesplinter Scout
step
    .goto Loch Modan,22.071,73.127
    >>Fale com |cRXP_FRIENDLY_Cobbleflint|r
    .turnin 224 >>Entregue Em Defesa das Terras do Rei
    .target Mountaineer Cobbleflint
step
    #completewith next
    .goto Loch Modan,23.27,75.65,12,0
    .goto Loch Modan,23.62,75.42,12,0
    .goto Loch Modan,23.12,73.93,12 >>Entre no Bunker. Vá para o topo
step
    #label Rugel2
    .goto Loch Modan,23.233,73.675
    >>Fale com |cRXP_FRIENDLY_Rugelfuss|r
    .turnin 267 >>Entregue A Ameaça Trogg
    .target Captain Rugelfuss
step << skip
    #completewith next
    .goto Loch Modan,21.49,68.14,20,0
    .goto Loch Modan,20.86,64.46,20,0
    .goto Loch Modan,19.50,62.56,30 >>Volte para o Túnel
step << skip
    .goto Loch Modan,18.84,61.48
    .goto Loch Modan,32.19,46.95,30 >>Pulo de Logout do Braseiro dentro do túnel para Thelsamar
    .isOnQuest 1339
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Mate os |cRXP_ENEMY_Emboscadores da Floresta|r. Saque-os pelo seu |cRXP_LOOT_Ícor de Aranha|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável em alcance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,23.57,17.93,30 >>Vá para Algaz Station
    .isOnQuest 1339
step
    .goto Loch Modan,24.13,18.20
    >>Fale com |cRXP_FRIENDLY_Gothor|r
    .vendor >>Comerciante Lixo
    .target Gothor Brumn
    .isOnQuest 1339
step
    .goto Loch Modan,24.764,18.397
    >>Vá para cima
    >>Fale com |cRXP_FRIENDLY_Stormpike|r
    .turnin 353 >>Entregue Entrega para Lançatroz << Human
    .turnin 1339 >>Entregue Montanhista Lançatroz's Task
    .accept 1338 >>Aceite Ordens dos Lançatroz
    .accept 307 >>Aceite Patas Nojentas
    .target Mountaineer Stormpike
step
    #completewith Entrance
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável em alcance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    #completewith Exit
    >>Mate os |cRXP_ENEMY_Ratos do Túnel|r. Saque-os pelos seus |cRXP_LOOT_Orelhas de Rato do Túnel|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
    .mob Tunnel Rat Geomancer
    .mob Tunnel Rat Digger
step
    #label Entrance
    .goto Loch Modan,35.47,18.95,40 >>Viagem para a entrada da Mina
    .isOnQuest 307
step
    #label Gear
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89,12,0
    .goto Loch Modan,35.45,19.94,12,0
    .goto Loch Modan,36.42,20.72,12,0
    .goto Loch Modan,35.24,21.98,12,0
    .goto Loch Modan,35.90,22.02,12,0
    .goto Loch Modan,34.88,23.51,12,0
    .goto Loch Modan,36.10,22.97,12,0
    .goto Loch Modan,36.23,24.88,12,0
    .goto Loch Modan,34.93,24.89
    >>Saque o |cRXP_LOOT_Equipamento do Mineiro|r no chão. |cRXP_WARN_Eles compartilham pontos de aparição|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Ratos do Túnel Geomantes|r lançam|r |T135824:0|t[Proteção Rápida contra Chamas] |cRXP_WARN_(Lançamento Pessoal: Concede 10 segundos de imunidade ao fogo) e|r |T135824:0|t[Impacto de Fogo] |cRXP_WARN_(Lançamento Instantâneo à Distância: Causa 20-30 de dano de fogo)
    .complete 307,1 --Collect Miners' Gear (x4)
--VV Rat Diggers
step
    #label Exit
    .goto Loch Modan,35.47,18.95,40 >>Saia da Mina
    .isOnQuest 307
step
#loop
	.line Loch Modan,34.38,17.67,35.44,15.34,37.15,10.53,39.38,10.92,38.46,14.43,39.67,18.12,39.84,24.83,37.34,26.82,37.15,24.53,38.85,21.25,37.89,18.88,34.38,17.67
	.goto Loch Modan,34.38,17.67,40,0
	.goto Loch Modan,35.44,15.34,40,0
	.goto Loch Modan,37.15,10.53,40,0
	.goto Loch Modan,39.38,10.92,40,0
	.goto Loch Modan,38.46,14.43,40,0
	.goto Loch Modan,39.67,18.12,40,0
	.goto Loch Modan,39.84,24.83,40,0
	.goto Loch Modan,37.34,26.82,40,0
	.goto Loch Modan,37.15,24.53,40,0
	.goto Loch Modan,38.85,21.25,40,0
	.goto Loch Modan,37.89,18.88,40,0
	.goto Loch Modan,34.38,17.67,40,0
    >>Mate os |cRXP_ENEMY_Tunnel Rato Batedores|r, os |cRXP_ENEMY_Tunnel Rato Vermin|r, os |cRXP_ENEMY_Tunnel Rato Kobolds|r e os |cRXP_ENEMY_Tunnel Rato Foragers|r. Saqueie-os pelas suas |cRXP_LOOT_Tunnel Rato Orelhas|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Ratos do Túnel Kobolds|r lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Concede 2 ataques extras a cada 10 segundos)|r
    .complete 416,1 --Collect Tunnel Rat Ear (x12)
    .mob Tunnel Rat Vermin
    .mob Tunnel Rat Kobold
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Forager
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável em alcance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
step
    .goto Loch Modan,23.57,17.93,30 >>Viagem para Algaz Station
    .isOnQuest 307
step
    .goto Loch Modan,24.13,18.20
    >>Fale com |cRXP_FRIENDLY_Gothor|r
    .vendor >>Comerciante Lixo
    .target Gothor Brumn
    .isOnQuest 307
step
    .goto Loch Modan,24.764,18.397
    >>Vá para cima
    >>Fale com |cRXP_FRIENDLY_Stormpike|r
    .turnin 307,2 >>Entregue Patas Nojentas
    .target Mountaineer Stormpike
step
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,35,0
	.goto Loch Modan,32.69,28.67,35,0
	.goto Loch Modan,34.93,31.55,35,0
	.goto Loch Modan,36.78,33.19,35,0
	.goto Loch Modan,39.65,32.82,35,0
	.goto Loch Modan,38.15,38.16,35,0
	.goto Loch Modan,33.53,40.53,35,0
	.goto Loch Modan,29.87,53.51,35,0
	.goto Loch Modan,29.58,46.54,35,0
	.goto Loch Modan,29.95,39.84,35,0
	.goto Loch Modan,27.09,40.10,35,0
	.goto Loch Modan,29.03,33.44,35,0
	.goto Loch Modan,27.19,29.01,35,0
	.goto Loch Modan,25.77,25.60,35,0
	.goto Loch Modan,23.64,22.20,35,0
	.goto Loch Modan,31.01,24.84,35,0
    >>Mate os |cRXP_ENEMY_Mountain Boars|r. Saqueie-os pelos |cRXP_LOOT_Boar Intestines|r
    >>Mate os |cRXP_ENEMY_Elder Preto Ursos|r. Saqueie-os pelos seus |cRXP_LOOT_Bear Carne|r
    >>Abate |cRXP_ENEMY_Forest Lurkers|r. Saqueie-os por seus |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável em alcance)|r
    .collect 3172,3,418,1 --Collect Boar Intestines (x3)
    .mob +Mountain Boar
    .collect 3173,3,418,1 --Collect Bear Meat (x3)
    .mob +Elder Black Bear
    .collect 3174,3,418,1 --Collect Spider Ichor (x3)
    .mob +Forest Lurker
    .xp <13+5500,1 << Gnome
step
    #completewith Boast
    >>Abate os |cRXP_ENEMY_Mangy Mountain Boars|r e os |cRXP_ENEMY_Mountain Boars|r. Saque-os para obter seus |cRXP_LOOT_Boar Intestines|r
    >>Abate os |cRXP_ENEMY_Grizzled Preto Ursos|r e os |cRXP_ENEMY_Elder Preto Ursos|r. Saque-os para obter seus |cRXP_LOOT_Bear Carne|r
    >>Abate os |cRXP_ENEMY_Cliff Lurkers|r e os |cRXP_ENEMY_Forest Lurkers|r. Saque-os para obter seus |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável em alcance)|r
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
    .goto Loch Modan,37.18,47.13,10,0
    >>Fale com |cRXP_FRIENDLY_Brock|r e |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Eles podem estar dentro ou fora do prédio|r
    .turnin 6392 >>Entregue Retorno a Brock << Gnome
    .target +Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .accept 436 >>Aceite Ironband's Escavação
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .xp >13+5500,1 << Gnome
step
    .goto Loch Modan,37.23,47.37
    >>Fale com |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Ele pode estar dentro ou fora do prédio|r
    .accept 436 >>Aceite Ironband's Escavação
    .target Jern Hornhelm
    .xp >13+6550,1 << Gnome
    .isQuestTurnedIn 6392
step << Human
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+8675 >>Farme até 8675+/11400 xp
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6545 >>Farme até 6545+/11400 xp
    .xp <13+5500,1
    .isOnQuest 6392
step << Gnome
    #completewith next
    .goto Loch Modan,46.14,63.53,50,0
    .goto Loch Modan,49.35,67.36,50,0
    .goto Loch Modan,51.91,68.00,50,0
    .goto Loch Modan,64.83,66.05,20 >>Vá em direção a |cRXP_FRIENDLY_Aldren|r
step << Gnome
    #completewith Boast
    .goto Loch Modan,64.83,66.05
    >>Fale com |cRXP_FRIENDLY_Aldren|r
    .vendor 1214 >>|cRXP_BUY_Compre |r |T132491:0|t[Cinto do Homem Sábio] |cRXP_BUY_dele (se estiver disponível)|r
    .isQuestAvailable 298
step << Gnome
    >>Fale com |cRXP_FRIENDLY_Ironband|r e |cRXP_FRIENDLY_Magmar|r
    .accept 298 >>Aceite Relatório de Progresso da Escavação
    .target +Prospector Ironband
    .goto Loch Modan,65.94,65.62
    .turnin 436 >>Entregue A Escavação de Ironband
    .goto Loch Modan,64.89,66.66
    .target +Magmar Fellhew
    .isOnQuest 436
step << Gnome
    #label ExcavationP
    .goto Loch Modan,65.94,65.62
    >>Fale com |cRXP_FRIENDLY_Ironband|r
    .accept 298 >>Aceite Relatório de Progresso da Escavação
    .target Prospector Ironband
    .isQuestTurnedIn 436
step << Gnome
    #completewith next
    .goto Loch Modan,66.07,70.60,30,0
    .goto Loch Modan,73.23,70.89,40,0
    .goto Loch Modan,77.25,68.20,40,0
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>Vá para |cRXP_FRIENDLY_Daryl|r
step << Gnome
    #label Boast
    .goto Loch Modan,83.48,65.62
    >>Fale com |cRXP_FRIENDLY_Daryl|r
    .accept 257 >>Aceite A Jactância do Caçador
    .target Daryl The Youngling
    .isOnQuest 298
step << Gnome
#loop
	.line Loch Modan,79.89,65.91,76.70,74.44,74.74,69.21,77.03,60.55,76.09,57.94,77.39,55.98,79.63,59.85,79.89,65.91
	.goto Loch Modan,79.89,65.91,45,0
	.goto Loch Modan,76.70,74.44,45,0
	.goto Loch Modan,74.74,69.21,45,0
	.goto Loch Modan,77.03,60.55,45,0
	.goto Loch Modan,76.09,57.94,45,0
	.goto Loch Modan,77.39,55.98,45,0
	.goto Loch Modan,79.63,59.85,45,0
	.goto Loch Modan,79.89,65.91,45,0
    >>Abate os |cRXP_ENEMY_Mountain Buzzards|r
    .complete 257,1 --Mountain Buzzard (6)
    .mob Mountain Buzzard
    .isOnQuest 257
step << Gnome
    #completewith next
    .goto Loch Modan,82.11,63.22,15,0
    .goto Loch Modan,83.48,65.62,20 >>Vá para |cRXP_FRIENDLY_Daryl|r
step << Gnome
    .goto Loch Modan,83.48,65.62
    >>Fale com |cRXP_FRIENDLY_Daryl|r
    .turnin 257,2 >>Entregue A Jactância do Caçador
    .target Daryl The Youngling
    .isQuestComplete 257
step << Gnome
#loop
	.line Loch Modan,31.01,24.84,32.69,28.67,34.93,31.55,36.78,33.19,39.65,32.82,38.15,38.16,33.53,40.53,29.87,53.51,29.58,46.54,29.95,39.84,27.09,40.10,29.03,33.44,27.19,29.01,25.77,25.60,23.64,22.20,31.01,24.84
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    >>Abate os |cRXP_ENEMY_Mangy Mountain Boars|r e os |cRXP_ENEMY_Mountain Boars|r. Saque-os para obter seus |cRXP_LOOT_Boar Intestines|r
    >>Abate os |cRXP_ENEMY_Grizzled Preto Ursos|r e os |cRXP_ENEMY_Elder Preto Ursos|r. Saque-os para obter seus |cRXP_LOOT_Bear Carne|r
    >>Abate os |cRXP_ENEMY_Cliff Lurkers|r e os |cRXP_ENEMY_Forest Lurkers|r. Saque-os para obter seus |cRXP_LOOT_Spider Ichor|r
    >>|cRXP_WARN_Lembre-se de puxá-los para os |cRXP_FRIENDLY_Mountaineers|r se necessário|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Mountain Boars|r lançam|r |T132337:0|t[Carga] |cRXP_WARN_(Instantâneo: Aumenta a velocidade de movimento por 3 segundos, causando 40-100 de dano corpo a corpo ao acertar. Apenas lançável em alcance)|r
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
	.goto Loch Modan,31.01,24.84,50,0
	.goto Loch Modan,32.69,28.67,50,0
	.goto Loch Modan,34.93,31.55,50,0
	.goto Loch Modan,36.78,33.19,50,0
	.goto Loch Modan,39.65,32.82,50,0
	.goto Loch Modan,38.15,38.16,50,0
	.goto Loch Modan,33.53,40.53,50,0
	.goto Loch Modan,29.87,53.51,50,0
	.goto Loch Modan,29.58,46.54,50,0
	.goto Loch Modan,29.95,39.84,50,0
	.goto Loch Modan,27.09,40.10,50,0
	.goto Loch Modan,29.03,33.44,50,0
	.goto Loch Modan,27.19,29.01,50,0
	.goto Loch Modan,25.77,25.60,50,0
	.goto Loch Modan,23.64,22.20,50,0
	.goto Loch Modan,31.01,24.84,50,0
    .xp 13+6780 >>Farme até 6780+/11400 xp
    .isOnQuest 298
step
    #sticky
    #label Kadrell
    .goto Loch Modan,32.93,49.51,40,0
    .goto Loch Modan,34.49,47.44,40,0
    .goto Loch Modan,37.05,46.11,40,0
    .goto Loch Modan,37.39,45.17,40,0
    .goto Loch Modan,37.12,42.79
    >>Fale com |cRXP_FRIENDLY_Kadrell|r
    >>|cRXP_FRIENDLY_Kadrell|r |cRXP_WARN_patrula pela estrada principal de Thelsamar|r
    .turnin 416,2 >>Entregue Rato Pegando
    .target Mountaineer Kadrell
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>Fale com |cRXP_FRIENDLY_Brock|r e |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Eles podem estar dentro ou fora do prédio|r
    .turnin 6392 >>Entregue Retorno a Brock
    .target +Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .turnin 298 >>Entregue Relatório de Progresso da Escavação
    .accept 301 >>Aceite Apresente-se a Altaforja
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .isOnQuest 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    >>Fale com |cRXP_FRIENDLY_Brock|r e |cRXP_FRIENDLY_Jern|r
    >>|cRXP_WARN_Eles podem estar dentro ou fora do prédio|r
    .turnin 6392 >>Entregue Retorno a Brock
    .target Brock Stoneseeker
    .goto Loch Modan,37.02,47.80
    .accept 301 >>Aceite Apresente-se a Altaforja
    .goto Loch Modan,37.23,47.37
    .target +Jern Hornhelm
    .isQuestTurnedIn 298
step << Gnome
    .goto Loch Modan,37.18,47.13,10,0
    .goto Loch Modan,37.02,47.80
    >>Fale com |cRXP_FRIENDLY_Brock|r
    >>|cRXP_WARN_Ele pode estar dentro ou fora do prédio|r
    .turnin 6392 >>Entregue Retorno a Brock
    .target Brock Stoneseeker
step
    #completewith next
    .goto Loch Modan,35.25,47.74,12,0
    .goto Loch Modan,35.39,48.36,12,0
    >>Go dentro da Inn
    .goto Loch Modan,34.828,49.283,10 >>Vá em direção a |cRXP_FRIENDLY_Vidra|r
step
    .goto Loch Modan,34.828,49.283
    >>Fale com |cRXP_FRIENDLY_Vidra|r
    .accept 418 >>Aceite Chouriço de Thelsamar
    .turnin 418 >>Entregue Chouriço de Thelsamar
    .target Vidra Hearthstove
step
    .goto Loch Modan,34.76,48.62
    >>|cRXP_WARN_NÃO descarte nenhum de seus extras|r |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .skill cooking,10 >>Cozinhe |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r em |T133974:0|t[Carne Assada de Porco] até |T133971:0|t[Culinária] atingir 10
step
    .goto Loch Modan,34.76,48.62
    >>Fale com |cRXP_FRIENDLY_Yanni|r
    >>|cRXP_BUY_Compre tantas|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_quanto você precisar/conseguir|r
    >>|cRXP_WARN_NÃO fique abaixo de 45 Prateado|r
    .vendor >>Comerciante Lixo
    .isOnQuest 1338
step
    #completewith next
    #requires Kadrell
    +|cRXP_WARN_Início lançar feitiços repetidamente|r |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step
    #requires Kadrell
    .goto Loch Modan,33.94,50.96
    >>Fale com |cRXP_FRIENDLY_Thorgrum|r
    .fly Ironforge >>Voe para Altaforja
    .target Thorgrum Borrelson
    .isOnQuest 1338
--VV WIP. Report to Ironforge needed
step << Gnome
    .goto Ironforge,74.64,11.72
    >>Fale com |cRXP_FRIENDLY_Stormpike|r
    .turnin 301 >>Entregue Apresente-se a Altaforja
    .target Prospector Stormpike
    .isOnQuest 301
step << skip
    #completewith Monty
    .goto Ironforge,74.82,8.69,-1
    .goto Ironforge,56.21,46.86,-1
    .goto Ironforge,76.41,51.22,30 >>Faça logout e pule para fora do Deeprun Tram
step
    .goto Ironforge,67.83,42.47
    >>Fale com |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
step << Gnome
    #label Monty
    .goto Ironforge,76.41,51.22,30,0
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
    .turnin 6661 >>Virar em Ratos de Porão << Gnome
    .timer 13,Ratos de Porão RP << Gnome
    .accept 6662 >>Aceite Meu Irmão, Nipsy
    .target Monty
    .zoneskip Stormwind City
step
    >>|cRXP_WARN_Ride the Deeprun Tram whilst spam casting|r |T132794:0|t[Conjurar Água r2]
    >>Fale com |cRXP_FRIENDLY_Nipsy|r do outro lado do Deeprun Tram
    .turnin 6662 >>Entregue Espetinhos de... rato
    .target Nipsy
    .isOnQuest 6662
step
    #label Monty << Human
    .zone Stormwind City >>Entre em Ventobravo
    .isOnQuest 1338
step
    #completewith next
    .goto Stormwind City,59.96,12.21,20,0
    .goto Stormwind City,57.03,11.37,20,0
    .goto Stormwind City,55.25,7.07,15 >>Vá em direção a |cRXP_FRIENDLY_Billibub|r
step
    .goto Stormwind City,55.25,7.07
    >>Fale com |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    .goto Stormwind City,58.09,16.55
    >>Fale com |cRXP_FRIENDLY_Furen|r
    .turnin 1338 >>Entregue Ordens dos Lançatroz
    .target Furen Longbeard
step
    #completewith next
    .goto Stormwind City,53.34,19.29,20,0
    .goto Stormwind City,51.64,21.69,20,0
    .goto Stormwind City,52.23,31.66,20,0
    .goto Stormwind City,49.82,34.42,20,0
    .goto Stormwind City,47.86,31.13,12,0
    .goto Stormwind City,49.18,30.29,12 >>Viaje para |cRXP_FRIENDLY_Baros|r
step
    .goto Stormwind City,49.18,30.29
    >>Entre no prédio
    >>Fale com |cRXP_FRIENDLY_Baros|r
    .accept 399 >>Aceite Humilde Beginnings
    .target Baros Alexston
step
    #completewith next
    .goto Stormwind City,47.72,42.71,15,0
    .goto Stormwind City,49.12,46.88,15,0
    .goto Stormwind City,48.55,49.00,15,0
    .goto Stormwind City,50.72,51.88,15,0
    .goto Stormwind City,52.57,55.44,15,0
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Suba na tocha, depois desça para ficar embaixo de Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Justo" ou "Baixo", entre no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe reto para frente|r
    >>|cRXP_WARN_Nota: há uma pequena chance de morte ao usar este método. Você também pode caminhar até a Torre do Mago normalmente se preferir|r
    .link https://youtu.be/gV8-wgQEomc >>https://youtu.be/gV8-wgQEomc >> CLIQUE AQUI para o guia
    .goto Stormwind City,38.61,79.39,10 >>Viaje para |cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .accept 1861 >>Aceite Lago Espelho << Gnome
    .trainer >>Treine seus feiços de classe (Impacto de Fogo r2, Inteligência Arcana r2, Explosão Arcana)
    >>Custo Total: 27s
    >>Lembre que você pode querer dinheiro para Poções (1-3s cada) e Pergaminhos (50c-3s cada)
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Saia da Torre do Mago
    .goto Stormwind City,32.16,79.84,10 >>Vá para |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dela (se estiverem disponíveis)|r
    .money <0.0120
    .target Andréa Iserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Vá para |cRXP_FRIENDLY_Adair|r
    .money <0.0090
step
    .goto Stormwind City,41.57,65.46
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre itens sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .money <0.0090
    .target Adair Gilroy
step << skip
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Viaje para |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto Stormwind City,52.05,67.96
    >>Entre no prédio
    >>Fale com |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compre um|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_dele|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>Viaje para |cRXP_FRIENDLY_Keldric|r
    .money <0.01
step
    .goto Stormwind City,55.46,65.26
    >>Fale com |cRXP_FRIENDLY_Keldric|r através da parede
    .vendor 1257 >>|cRXP_BUY_Compre|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .money <0.01
    .target Orlande Bórgia
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>Entre no Banco de Ventobravo
step
    .goto Stormwind City,57.03,72.97
    >>Fale com |cRXP_FRIENDLY_Newton|r
    .bankdeposit 769,4371,730,7207,1941,1711,1478,1712,3012,1180,1181,3013,6889 >>Deposite os itens a seguir no banco:
    >>|T133970:0|t[Chunk of Javali Carne]
    >>|T133024:0|t[Tubo de Bronze]
    >>|T133884:0|t[Murloc Olhos]
    >>|T132788:0|t[Jennea's Frasco]
    >>|T132620:0|t[Barril de Merlot]
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
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,4371,7207 >>Deposite os itens a seguir no banco:
    >>|T133970:0|t[Chunk of Javali Carne]
    >>|T133024:0|t[Tubo de Bronze]
    >>|T132788:0|t[Jennea's Frasco]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,730,7207 >>Deposite os itens a seguir no banco:
    >>|T133970:0|t[Chunk of Javali Carne]
    >>|T133884:0|t[Murloc Olhos]
    >>|T132788:0|t[Jennea's Frasco]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,730,7207 >>Deposite os itens a seguir no banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T133884:0|t[Murloc Olhos]
    >>|T132788:0|t[Jennea's Frasco]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 769,7207 >>Deposite os itens a seguir no banco:
    >>|T133970:0|t[Chunk of Javali Carne]
    >>|T132788:0|t[Jennea's Frasco]
    .target Newton Burnside
    .itemcount 769,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 4371,7207 >>Deposite os itens a seguir no banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T132788:0|t[Jennea's Frasco]
    .target Newton Burnside
    .itemcount 4371,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 730,7207 >>Deposite os itens a seguir no banco:
    >>|T133884:0|t[Murloc Olhos]
    >>|T132788:0|t[Jennea's Frasco]
    .target Newton Burnside
    .itemcount 730,1
    .itemcount 7207,1
step << skip
    .goto Stormwind City,57.03,72.97
    .bankdeposit 7207 >>Deposite o seguinte item no banco:
    >>|T132788:0|t[Frasco de Jennea]
    .target Newton Burnside
    .itemcount 7207,1
step
    #completewith next
    .goto Stormwind City,53.45,64.92,10,0
    >>Entre na Estalagem
    .goto Stormwind City,52.61,65.72,10 >>Vá para Allison
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===ATENÇÃO===|r
    >>|cRXP_WARN_Conversar com|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Abrir a menu "Set Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Hearthstone BATCH from Objetos de TBC to Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore

]])
RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 14-16 ADV Costa Negra 2 Mago AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 16-18 ADV Cerro Oeste Mago AdE


step
    #completewith DeepO
    +|cRXP_WARN_Guarde qualquer |T132917:0|t[Luz Peninha] que você ganhar para mais tarde|r
step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,20,982,1 --Longjaw Mud Snapper (20)
    .target Laird
    .isQuestAvailable 982
step
    >>Fale com |cRXP_FRIENDLY_Barithras|r e |cRXP_FRIENDLY_Glynda|r
    .accept 947 >>Aceite Cave Mushrooms
    .target +Barithras Moonshade
    .goto Darkshore,37.32,43.64
    .accept 4811 >>Aceite O Cristal Vermelho
    .goto Darkshore,37.68,43.38
    .target +Sentinel Glynda Nal'Shea
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    .accept 982 >>Aceite Oceano Profundo, Mar Vasto
    .target Gorbold Steelhand
step
    .goto Darkshore,37.39,40.13
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 4761 >>Entregue Trovejius Tecevento
    .accept 4762 >>Aceite Rio Fontescarpa
    .target Thundris Windweaver
step
    #completewith MistV
    .goto Darkshore,35.87,38.18,50,0
    .goto Darkshore,36.28,32.23,50,0
    .goto Darkshore,37.61,30.86,50,0
    >>Mate os |cRXP_ENEMY_Darkshore Threshers|r na água. Saqueie-os para obter |cRXP_LOOT_Thresher Olhos|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   .goto Darkshore,38.21,28.76
--  .goto Darkshore,38.23,28.79
    >>Pegue o |cRXP_LOOT_Silver Dawning Caixa-forte|r através da parede do barco
    >>|cRXP_WARN_Use sua combinação de teclado "Interagir com Alvo" debaixo d'água ao lado da seta|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
   .complete 982,1 --Silver Dawning's Lockbox (1)
step
   #label MistV
   .goto Darkshore,39.58,27.47
--  .goto Darkshore,39.63,27.45
   >>Pegue o |cRXP_LOOT_Mist Véu Caixa-forte|r através da parede do barco
   >>|cRXP_WARN_Use o atalho "Interagir com Alvo" embaixo d'água, ao lado da seta|r
   >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
   .complete 982,2 --Mist Veil's Lockbox (1)
step
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86,50,0
   .goto Darkshore,40.44,28.63,50,0
   .goto Darkshore,35.87,38.18,50,0
   .goto Darkshore,36.28,32.23,50,0
   .goto Darkshore,37.61,30.86
   >>Mate os |cRXP_ENEMY_Darkshore Threshers|r na água. Saqueie-os pelos seus |cRXP_LOOT_Thresher Olhos|r
   .complete 1001,1 --Thresher Eye (3)
   .mob Darkshore Thresher
step
   #completewith next
   +|cRXP_WARN_Guarde os|r |T133884:0|t[Murloc Olhos] |cRXP_WARN_que você saqueia dos|r |cRXP_ENEMY_Greymist Coastrunners|r |cRXP_WARN_e|r |cRXP_ENEMY_Greymist Seers|r
step
   .goto Darkshore,41.91,31.48
   >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
   >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
   .accept 4723 >>Aceite Beached Sea Criatura - Missão
step
   .goto Darkshore,41.96,28.61
   >>Clique em |cRXP_PICK_Buzzbox 411|r
   .turnin 1001 >>Vire para Buzzbox 411
   .accept 1002 >>Aceite NO TRANSLATION FOUND TO THIS ELEMENT
step
    #completewith SeaTurtle1
    .goto Darkshore,43.67,27.81,50,0
    >>AdE os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith SeaTurtle1
    >>Abate os |cRXP_ENEMY_Espreitaluna Nanico|r e os |cRXP_ENEMY_Espreitalunas|r. Saque-os pelos seus |cRXP_LOOT_Espreitaluna Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135914:0|t[Hidrofobia] |cRXP_WARN_(Instantâneo Corpo a Corpo: Reduz toda regeneração de vida em 50% por 10 Minutos)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label SeaTurtle1
    .goto Darkshore,44.20,20.60,80 >>Viaje em direção a |cRXP_LOOT_Beached Tartaruga Marinha|r
    .isQuestAvailable 4725
step
    #completewith next
    +Guarde os |T133884:0|t[Murloc Olhos] que você saqueia dos |cRXP_ENEMY_Greymist Warriors|r e |cRXP_ENEMY_Greymist Netters|r
step
    .goto Darkshore,44.20,20.60
    >>Pegue a |cRXP_LOOT_Beached Tartaruga Marinha|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4725 >>Aceite Tartaruga Marinha Encalhada
step
    #completewith River
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgeling
step
    #completewith River
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith RedC
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135914:0|t[Hidrofobia] |cRXP_WARN_(Instantâneo Corpo a Corpo: Reduz toda regeneração de vida em 50% por 10 Minutos)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label River
    .goto Darkshore,50.77,25.43
    >>Usar o |T134865:0|t[Tubo de Amostragem Vazio] na água
    .complete 4762,1 --Cliffspring River Sample (1)
    .use 12350
step
    #completewith RedC
    >>Mate os |cRXP_ENEMY_Foreststriders|r. Saqueie-os para obter |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider
step
    #completewith RedC
    >>Abate os |cRXP_ENEMY_Espreitaluna Nanico|r e os |cRXP_ENEMY_Espreitalunas|r. Saque-os pelos seus |cRXP_LOOT_Espreitaluna Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #label RedC
    .goto Darkshore,47.11,48.63,400 >>Viaje em direção a |cRXP_PICK_The Vermelho Cristal|r
    .isOnQuest 4811
step
    #completewith Bash
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith Bash
    >>Mate os |cRXP_ENEMY_Moonstalker Nanico|r. Saqueie-os para obter |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
    .goto Darkshore,47.11,48.63
    >>Corra para |cRXP_PICK_The Vermelho Cristal|r
    >>|cRXP_WARN_Lembre-se de puxar os |cRXP_ENEMY_Raging Moonkins|r que estão presos juntos|r
    .complete 4811,1 --Locate the large, red crystal on Darkshore's eastern mountain range (1)
step
    #label Bash
    .goto Darkshore,42.37,61.82,175 >>Viaje em direção a |cRXP_PICK_Ancient Chamas|r
    .isOnQuest 957
step
    #completewith next
    .goto Darkshore,42.45,60.66,0
    >>Mate |cRXP_ENEMY_Anaya Correalba|r. Saque-a para obter |cRXP_LOOT_Anaya's Pendant|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    .goto Darkshore,42.37,61.82
    >>Clique na |cRXP_PICK_Chama Antiga|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 957,1 --Destroy the seal at the ancient flame (1)
step
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41,50,0
    .goto Darkshore,42.53,59.00,50,0
    .goto Darkshore,42.45,60.66,50,0
    .goto Darkshore,43.25,62.41
    >>Abate o |cRXP_ENEMY_Anaya Correalba|r. Saque-a pelo |cRXP_LOOT_Pingente de Anaya|r
    .complete 963,1 --Anaya's Pendant (1)
    .unitscan Anaya Dawnrunner
step
    #completewith RBears
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #completewith RBears
    >>Abate os |cRXP_ENEMY_Espreitaluna Nanico|r e os |cRXP_ENEMY_Espreitalunas|r. Saque-os pelos seus |cRXP_LOOT_Espreitaluna Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    #completewith next
    +Guarde os |T133884:0|t[Murloc Olhos] que você saqueia dos |cRXP_ENEMY_Greymist Coastrunners|r e |cRXP_ENEMY_Greymist Seers|r
step
    #label BeachedST
    .goto Darkshore,37.10,62.17
    >>Clique na |cRXP_PICK_Tartaruga Marinha Encalhada|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4722 >>Aceite Tartaruga Marinha Encalhada
step
#loop
	.line Darkshore,38.74,58.10,39.91,58.50,39.23,63.60,39.87,66.31,39.98,70.55,37.40,70.05,38.63,67.72,38.50,63.73,38.74,58.10
	.goto Darkshore,38.74,58.10,45,0
	.goto Darkshore,39.91,58.50,45,0
	.goto Darkshore,39.23,63.60,45,0
	.goto Darkshore,39.87,66.31,45,0
	.goto Darkshore,39.98,70.55,45,0
	.goto Darkshore,37.40,70.05,45,0
	.goto Darkshore,38.63,67.72,45,0
	.goto Darkshore,38.50,63.73,45,0
	.goto Darkshore,38.74,58.10,45,0
    >>Mate |cRXP_ENEMY_Ursocardos Raivosos|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T135914:0|t[Hidrofobia] |cRXP_WARN_(Instantâneo Corpo a Corpo: Reduz toda regeneração de vida em 50% por 10 Minutos)|r
    .complete 2138,1 --Rabid Thistle Bear (20)
    .mob Rabid Thistle Bear
step
    #label RBears
#loop
	.line Darkshore,39.26,56.72,40.21,56.23,39.96,55.22,39.90,54.38,40.24,53.47,39.21,53.01,39.90,54.38
	.goto Darkshore,39.26,56.72,50,0
	.goto Darkshore,40.21,56.23,50,0
	.goto Darkshore,39.96,55.22,50,0
	.goto Darkshore,39.90,54.38,50,0
	.goto Darkshore,40.24,53.47,50,0
	.goto Darkshore,39.21,53.01,50,0
	.goto Darkshore,39.90,54.38,50,0
    >>Mate |cRXP_ENEMY_Desbravador Bosquenero|r e |cRXP_ENEMY_Xamã Bosquenero|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Blackwood Desbravadores|r lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Aplica 2 ataques extras a cada 10 segundos), e |cRXP_ENEMY_Blackwood Windtalkers|r lançam|r |T136022:0|t[Rajada de Vento] |cRXP_WARN_(atordoamento corpo-a-corpo em aoe)|r
    .complete 985,1 --Blackwood Pathfinder (8)
    .mob +Blackwood Pathfinder
    .complete 985,2 --Blackwood Windtalker (5)
    .mob +Blackwood Windtalker
step
    #completewith Auberdine
    >>Mate os |cRXP_ENEMY_Espreitaluna Nanico|r. Saqueie-os para obter seus |cRXP_LOOT_Espreitaluna Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
step
#loop
	.line Darkshore,38.63,51.25,38.33,50.00,38.18,48.42,38.73,47.62,39.49,47.65,41.40,47.13,41.67,49.47,41.45,50.84,38.63,51.25
	.goto Darkshore,38.63,51.25,50,0
	.goto Darkshore,38.33,50.00,50,0
	.goto Darkshore,38.18,48.42,50,0
	.goto Darkshore,38.73,47.62,50,0
	.goto Darkshore,39.49,47.65,50,0
	.goto Darkshore,41.40,47.13,50,0
	.goto Darkshore,41.67,49.47,50,0
	.goto Darkshore,41.45,50.84,50,0
	.goto Darkshore,38.63,51.25,50,0
    >>Mate os |cRXP_ENEMY_Foreststrider Fledglings|r. Saqueie-os por sua |cRXP_LOOT_Strider Carne|r
    .collect 5469,5,2178,1 --Strider Meat (5)
    .mob Foreststrider Fledgling
step
    #label Auberdine
    .goto Darkshore,36.62,45.59,150 >>Vá para |cRXP_FRIENDLY_Gwennyth|r
    .isOnQuest 982
step
    .goto Darkshore,36.72,45.07,12,0
    .goto Darkshore,36.62,45.59
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4722 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4723 >>Entregue a Criatura Marinha Encalhada
    .turnin 4725 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
--Fruit of the Sea at 18
step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 20|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .vendor >>Comerciante Lixo
    .collect 4592,20,4763,1 --Longjaw Mud Snapper (40)
    .target Laird
    .isOnQuest 982
step
    .goto Darkshore,36.68,44.05,12,0
    .goto Darkshore,35.74,43.70
    >>Fale com |cRXP_FRIENDLY_Cerellean|r
    .turnin 963 >>Entregue Amor Eterno
    .target Cerellean Whiteclaw
step
    #completewith CliffRi
    +Equipe a |T134797:0|t[Lágrima de Luto]
    .use 5611
    .itemcount 5611,1
    .itemStat 17,LEVEL,<16
step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compre 15|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,15,4763,1 --Melon Juice (15)
    .target Allyndia
    .money <0.1500
step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compre 10|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,10,4763,1 --Melon Juice (10)
    .target Allyndia
    .money <0.1000
step
    .goto Darkshore,36.77,44.28
    >>Converse com |cRXP_FRIENDLY_Allyndia|r
    >>|cRXP_BUY_Compre 5|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,5,4763,1 --Melon Juice (5)
    .target Allyndia
    .money <0.0500
step
    #completewith next
    .goto Darkshore,37.45,43.10,20,0
    .goto Darkshore,37.47,42.40,20,0
    .goto Darkshore,37.44,41.84,15 >>Vá para |cRXP_FRIENDLY_Hollee|r
step
    .goto Darkshore,37.44,41.84
    >>Fale com |cRXP_FRIENDLY_Hollee|r
    .accept 729 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    .goto Darkshore,37.45,40.50
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre o máximo de|r |T133634:0|t[Bolsa Marrom Pequena] |cRXP_BUY_que precisar/conseguir|r
    .target Dalmond
    .money <0.0500
    .money >0.2500
step
    .goto Darkshore,37.45,40.50
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre uma|r |T133634:0|t[Brown Couro Satchel] |cRXP_BUY_com ele|r
    .target Dalmond
    .money <0.2500
step
    #label CliffRi
    .goto Darkshore,37.39,40.13
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 4762 >>Entregue Rio Fontescarpa
    .accept 4763 >>Aceite Os Corrompidos Bosquenero
    .target Thundris Windweaver
step
    .goto Darkshore,37.69,40.66
    >>Fale com |cRXP_FRIENDLY_Alanndarian|r
    .accept 2178 >>Aceite Vida Fácil de Moa
    .turnin 2178 >>Entregue Vida Fácil de Moa
    .target Alanndarian Nightsong
step
    #label DeepO
    .goto Darkshore,38.11,41.16
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    .turnin 982,2 >>Vá para o Oceano Profundo, no Mar Vasto
    .target Gorbold Steelhand
step
    #completewith next
    .goto Darkshore,37.64,42.46,15,0
    .goto Darkshore,37.61,43.21,15,0
    .goto Darkshore,37.68,43.38,20 >>Vá para Glynda
step
    .goto Darkshore,37.68,43.38
    >>Fale com |cRXP_FRIENDLY_Glynda|r
    .turnin 4811 >>Entregue O Cristal Vermelho
    .accept 4812 >>Aceite Como cascatas
    .target Sentinel Glynda Nal'Shea
step
    .goto Darkshore,37.81,43.89
    >>Usar a |T133748:0|t[Vazio Purificação Tigela] e a |T134865:0|t[Vazio Água Tube] no Moonwell
    .collect 12347,1,4763,1 --Filled Cleansing Bowl (1)
    .collect 14339,1,4812,1 --Moonwell Water Tube (1)
    .use 12346
    .use 14338
step
    >>Converse com |cRXP_FRIENDLY_Tharnariun|r, |cRXP_FRIENDLY_Terenthis|r, e depois |cRXP_FRIENDLY_Elissa|r acima
    .turnin 2138 >>Entregue Purificação dos infectados
    .accept 2139 >>Aceite Esperança de Tharnariun
    .target +Tharnariun Treetender
    .goto Darkshore,38.84,43.42
    .turnin 985 >>Entregue Uma grande ameaça?
    .accept 986 >>Aceite Um Mestre Perdido
    .target +Terenthis
    .goto Darkshore,39.37,43.49
    .accept 965 >>Aceite A Torre de Althalaxx
    .goto Darkshore,39.27,43.13,8,0
    .goto Darkshore,39.04,43.55
    .target +Sentinel Elissa Starbreeze
step << Gnome
    #completewith next
    +Equipe o |T132491:0|t[Cinto do Homem Sábio]
    .use 4786
    .itemcount 4786,1
    .itemStat 6,LEVEL,<20
step
    .goto Darkshore,47.32,48.70
    >>Clique |cRXP_PICK_O Cristal Vermelho|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    >>|cRXP_WARN_Lembrar de puxar o |cRXP_ENEMY_Enraivecedora Moonkins|r que estão amarrados juntos|r
    .turnin 4812 >>Entregue Como cascatas
    .accept 4813 >>Aceite Fragmentos incrustados
step
    #completewith GrainSample
    >>Abate os |cRXP_ENEMY_Moonstalker Nanico|r e os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os por seus |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker Runt
    .mob Moonstalker
step
    .goto Darkshore,44.18,36.29
    >>Fale com o |cRXP_FRIENDLY_Astérion|r
    .turnin 957,3 >>Entregue Bashal'Aran
    .target Asterion
step
    #label GrainSample
    .goto Darkshore,50.66,34.98
    >>Abra o |cRXP_PICK_Blackwood Grão Stores|r. Saqueie-o para obter o |cRXP_LOOT_Amostra de Grão Bosquenero|r
    >>|cRXP_WARN_Puxe os mobs que o protegem, use|r |T135848:0|t[Novane Congelante]|cRXP_WARN_, saqueie o |cRXP_LOOT_Amostra de Grão Bosquenero|r, depois corra em direção à |cRXP_ENEMY_Matriarca do Covil|r, escapando dos mobs que aparecerem|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .collect 12342,1,4673,1 --Blackwood Grain Sample (1)
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Moonstalkers|r. Saque-os por seus |cRXP_LOOT_Espreitaluna Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    #completewith DenM
    .goto Darkshore,52.33,35.94,20,0
    .goto Darkshore,52.39,36.85,20,0
    .goto Darkshore,51.58,37.52,30 >>Vá para a |cRXP_ENEMY_Matriarca do Covil|r
step
    .goto Darkshore,51.51,38.22
    >>Mate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Tenha cuidado pois a |cRXP_ENEMY_Matriarca do Covil|r e seus |cRXP_ENEMY_Thistle Cubs|r lançam|r |T132141:0|t[Assolar] |cRXP_WARN_(atordoamento de 2 segundos)|r
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,<1
step
    #label DenM
    .goto Darkshore,51.51,38.22
    >>Abate a |cRXP_ENEMY_Matriarca do Covil|r
    >>|cRXP_WARN_Tenha cuidado pois a |cRXP_ENEMY_Matriarca do Covil|r e seus |cRXP_ENEMY_Thistle Cubs|r lançam|r |T132141:0|t[Assolar] |cRXP_WARN_(2 second stun)|r
    >>|cRXP_WARN_Puxe separando a |cRXP_ENEMY_Matriarca do Covil|r com sua|r |T133714:0|t[Dinamite Grosseira]
    .complete 2139,1 --Den Mother (1)
    .mob Den Mother
    .itemcount 4358,1
step
    #completewith Talisman
    >>Mate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os para obter seus |cRXP_LOOT_Espreitaluna Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,51.80,33.51
    >>Abra o |cRXP_PICK_Blackwood Nut Stores|r. Saqueie-o para obter o |cRXP_LOOT_Amostra de Castanha Bosquenero|r :3
    >>|cRXP_WARN_Puxe os mobs que o protegem, use|r |T135848:0|t[Novane Congelante]|cRXP_WARN_, saqueie o |cRXP_LOOT_Amostra de Castanha Bosquenero|r, depois corra para o norte|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .collect 12343,1,4673,1 --Blackwood Nut Sample (1)
step
    .goto Darkshore,52.85,33.42
    >>Abra o |cRXP_PICK_Blackwood Fruit Stores|r. Saqueie-o para obter o |cRXP_LOOT_Amostra de Fruta Bosquenero|r
    >>Mate os |cRXP_ENEMY_Blackwood Warriors|r que atacam
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .collect 12341,1,4673,1 --Blackwood Fruit Sample (1)
step
    #completewith next
    .goto Darkshore,52.51,33.11
    .cast 16072 >>Usar o |T134712:0|t[Cheio Purificação Tigela] perto da fogueira para evocar |cRXP_ENEMY_Zabraxxis|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .timer 20,O RP Corrompido Bosquenero
    .use 12347
step
    #label Talisman
    .goto Darkshore,52.24,33.08
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>Mate |cRXP_ENEMY_Zabraxxis|r
    >>Saqueie a |cRXP_PICK_Bolsa de Demônio de Zabraxxis|r que cai no chão. Saqueie-o para obter o |cRXP_LOOT_Talismã da Corrupção|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 4763,1 --Talisman of Corruption (1)
    .mob Xabraxxis
step
    .goto Darkshore,51.29,24.53
    >>Clique |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>Entregue no NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
    .isQuestComplete 1002
step
    .goto Darkshore,51.29,24.53
    >>Clique em |cRXP_PICK_Buzzbox 323|r
    .accept 1003 >>Aceite Buzzbox 525
    .isQuestTurnedIn 1002
step
    #completewith next
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    >>Mate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os pelas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,53.11,18.10
    >>Saqueie o |cRXP_LOOT_Beached Tartaruga Marinha|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4727 >>Aceite Tartaruga Marinha Encalhada
step
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03,60,0
    .goto Darkshore,53.74,31.52,60,0
    .goto Darkshore,54.52,29.55,60,0
    .goto Darkshore,53.13,28.25,60,0
    .goto Darkshore,52.54,25.47,60,0
    .goto Darkshore,55.21,22.89,60,0
    .goto Darkshore,54.65,21.03
    >>Mate os |cRXP_ENEMY_Moonstalkers|r. Saqueie-os pelas |cRXP_LOOT_Moonstalker Presas|r
    .complete 1002,1 --Moonstalker Fang (6)
    .mob Moonstalker
step
    .goto Darkshore,51.29,24.53
    >>Clique |cRXP_PICK_Buzzbox 323|r
    .turnin 1002 >>Entregue no NO TRANSLATION FOUND TO THIS ELEMENT
    .accept 1003 >>Aceite Buzzbox 525
step
    .goto Darkshore,54.97,24.89
    >>Fale com |cRXP_FRIENDLY_Balthule|r
    .turnin 965 >>Entregue A Torre de Althalaxx
    .accept 966 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01,50,0
    .goto Darkshore,58.27,25.30,50,0
    .goto Darkshore,55.36,26.49,50,0
    .goto Darkshore,56.36,27.01
    >>Mate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saqueie-os para obter |cRXP_LOOT_Worn Parchments|r
    .complete 966,1 --Worn Parchment (4)
    .mob Dark Strand Fanatic
step
    .goto Darkshore,54.97,24.89
    >>Fale com |cRXP_FRIENDLY_Balthule|r
    .turnin 966 >>Entregue A Torre de Althalaxx
    .accept 967 >>Aceite A Torre de Althalaxx
    .target Balthule Shadowstrike
step
    #label CapCave
    #completewith CapCave1
    .goto Darkshore,55.00,33.42,30 >>Entre na caverna
step << skip
    #requires CapCave
    #completewith CapCave1
    +|cRXP_WARN_Remember the Cave Logout Pular soon|r
step
    #completewith next
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58,8,0
    >>Saqueie |cRXP_LOOT_os Scaber Stalks azuis|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 947,1,4 --Scaber Stalk (5)
step
    .goto Darkshore,55.45,36.23,12,0
    .goto Darkshore,55.70,36.30,12,0
    .goto Darkshore,55.89,35.40,12,0
    >>Permaneça no nível superior da caverna. Desça se não houver |cRXP_LOOT_Morte Cap|r no nível superior
    >>Saqueie |cRXP_LOOT_o Morte Cap laranja|r no chão ao final do caminho superior da caverna
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 947,2 --Death Cap (1)
step
    #label CapCave1
    .goto Darkshore,55.04,33.34,8,0
    .goto Darkshore,55.28,34.00,8,0
    .goto Darkshore,55.09,34.67,8,0
    .goto Darkshore,55.30,35.58
    >>Saqueie os primeiros |cRXP_LOOT_Scaber Stalks|r na boca da caverna após saquear |cRXP_LOOT_Morte Cap|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 947,1 --Scaber Stalk (5)
step << skip
    .goto Darkshore,54.96,34.52
    .goto Darkshore,41.70,36.51,30 >>|cRXP_WARN_Perform a Logout Pular inside the cave|r
    .isOnQuest 4763
step
    #completewith next
    .subzone 442 >>Viaje para Auberdine
    .isOnQuest 4763
step
    .goto Darkshore,37.39,40.13
    >>Fale com |cRXP_FRIENDLY_Thundris|r
    .turnin 4763,1 >>Entregue Os Corrompidos Blackwood
    .target Thundris Windweaver
step
    .goto Darkshore,37.45,40.50
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    .vendor 4182 >>|cRXP_BUY_Compre um|r |T133634:0|t[Brown Couro Satchel] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Não vá abaixo de 30 Prateado|r
    .target Dalmond
step
    .goto Darkshore,38.84,43.42
    >>Fale com |cRXP_FRIENDLY_Tharnariun|r
    .turnin 2139,1 >>Entregue A Esperança de Tharnariun
    .target Tharnariun Treetender
step
    >>Fale com |cRXP_FRIENDLY_Glynda|r, |cRXP_FRIENDLY_Barithras|r, e o |cRXP_PICK_Wanted Poster|r
    .turnin 4813,2 >>Entregue Fragmentos incrustados
    .target +Sentinel Glynda Nal'Shea
    .goto Darkshore,37.68,43.38
    .turnin 947 >>Entregue Cogumelos da Caverna
    .accept 948 >>Aceite Onu
    .target +Barithras Moonshade
    .goto Darkshore,37.32,43.64
    .accept 4740 >>Aceite Procurado: Lodofundo!
    .goto Darkshore,37.22,44.22
step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,40,729,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    .goto Darkshore,36.62,45.59
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r
    .turnin 4727 >>Entregue Tartaruga Marinha Encalhada
    .target Gwennyth Bly'Leggonde
step
    .goto Darkshore,37.04,44.13
    >>|cRXP_WARN_===ATENÇÃO===|r
    >>|cRXP_WARN_Converse com|r |cRXP_FRIENDLY_Shaussiy|r
    >>|cRXP_WARN_Abrir a menu "Set Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Hearthstone BATCH from Auberdine to Objetos de TBC City|r
    .target Innkeeper Shaussiy
    .zoneskip Stormwind City
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 16-18 Avançado Cerro Oeste Mago AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 18-20 ADV Costa Negra 3 Mago AdE

step
    #completewith JenneaT
    +|cRXP_WARN_NOTA: Você precisa de 12 pilhas de cada tecido (|r|T132911:0|t[Lã]|cRXP_WARN_,|r |T132905:0|t[Seda]|cRXP_WARN_,|r |T132892:0|t[Magitrama]|cRXP_WARN_,|r e |T132903:0|t[Runatrama]|cRXP_WARN_) para efetuar as entregas de tecido depois. Você obterá estes naturalmente ao subir de nível|r
step << skip
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Viaje para |cRXP_FRIENDLY_Roberto|r
step << skip
    .goto Stormwind City,52.05,67.96
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
    .goto Stormwind City,57.03,72.97
    >>Fale com |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 730,7207 >>Retire os seguintes itens do seu banco: << Gnome
    .bankwithdraw 730,16115 >>Retire os seguintes itens do seu banco: << Human
    >>|T133884:0|t[Murloc Olhos]
    >>|T132788:0|t[Jennea's Frasco] << Gnome
    >>|T132763:0|t[Caixote de Osric] << Human
    .target Newton Burnside
step
    #requires Bank2
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Suba na tocha, depois desça para ficar embaixo de Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Justo" ou "Baixo", entre no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe reto para frente|r
    >>|cRXP_WARN_Nota: há uma pequena chance de morte ao usar este método. Você também pode caminhar até a Torre do Mago normalmente se preferir|r
    .link https://youtu.be/gV8-wgQEomc >>https://youtu.be/gV8-wgQEomc >> CLIQUE AQUI para o guia
    .goto Stormwind City,38.61,79.39,10 >>Viaje para |cRXP_FRIENDLY_Jennea|r
step
    #requires Bank2
    #label JenneaT
    .goto Stormwind City,38.61,79.39
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Treine seus feitiços de classe (Golpe Flamejante)
    >>Custo Total: 15s
    .target Jennea Cannon
step
    .goto Stormwind City,55.46,65.26
    >>Fale com |cRXP_FRIENDLY_Keldric|r através da parede
    .vendor 1257 >>|cRXP_BUY_Compre|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Orlande Bórgia
    .money <0.14
step
    #completewith next
    .goto Stormwind City,56.69,57.76,12,0
    .goto Stormwind City,57.13,57.69,10 >>Voe para |cRXP_FRIENDLY_Woo Enviar Enviar Ping|r
step
    .goto Stormwind City,57.13,57.69
    >>Fale com |cRXP_FRIENDLY_Woo Enviar Enviar Ping|r
    .train 1180 >>Treine |T132321:0|t[Adagas]
    .target Woo Ping
step
    #completewith next
    .goto Stormwind City,57.17,58.83,12,0
    .goto Stormwind City,63.42,63.75,20,0
    .goto Stormwind City,63.14,65.25,15,0
    .goto Stormwind City,66.27,62.12,10 >>Voe para |cRXP_FRIENDLY_Dungar|r
step << Human
    .goto Stormwind City,66.27,62.12
    >>Fale com |cRXP_FRIENDLY_Dungar|r
    .turnin 6261 >>Entregue Dungar Tragolongo
    .accept 6285 >>Aceite Devolver para Lewis
    .target Dungar Longdrink
step
    #completewith next << Human
    .goto Stormwind City,66.27,62.12
    >>Fale com |cRXP_FRIENDLY_Dungar|r
    .fp Stormwind City >>Aprenda a rota de voo para Ventobravo << Gnome
    .fly Westfall >>Voe para Cerro Oeste << Human
    .target Dungar Longdrink
    .zoneskip Westfall << Human
step << Gnome
    #completewith next
    #label Stormwind1
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>Desça para a saliência abaixo de |cRXP_FRIENDLY_Dungar|r
step << Gnome
    #completewith next
    .goto Elwynn Forest,32.10,50.32,40 >>Saia de Ventobravo
step << skip
    #completewith next
    #requires Stormwind1
    .goto Elwynn Forest,42.96,65.62,30 >>Viaje para o Goldshire Estalagem
step << skip
    #label GoldshireTrain
    .goto Elwynn Forest,43.25,66.25
    >>Pule para o lustre no andar inferior se você não tiver a habilidade, senão pule de cima da Cadeira
    >>Fale com |cRXP_FRIENDLY_Zaldimar|r através da parede
    .accept 1919 >>Aceite Relatório a Jennea
    .trainer >>Treine seus feitiços de classe (Golpe Flamejante)
    >>Custo Total: 15s
step << skip
    .goto Elwynn Forest,44.00,65.69
    >>Fale com |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Compre um|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_dele|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step << skip
    .goto Elwynn Forest,43.77,65.80
    >>Fale com |cRXP_FRIENDLY_Farley|r
    >>|cRXP_BUY_Compre 45|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,45,64,1 --Melon Juice (45)
    .target Innkeeper Farley
    .money <0.45
step << Gnome
    .goto Elwynn Forest,28.98,61.50
    >>Usar |T132788:0|t[Jennea's Frasco] na cachoeira
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .use 7207
    .complete 1861,1 --Mirror Lake Water Sample (1)
step
    >>Fale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Verna|r
    .accept 64 >>Aceite A Herança Esquecida
    .accept 109 >>Aceite Entregar para Miguel Mantoforte
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .accept 36 >>Aceite Ensopado de Cerro Oeste
    .accept 151 >>Aceite A Pobre Velhinha Brancurinha
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
step << Gnome
    #completewith Gryan
    >>Abra o |cRXP_PICK_Sacks of Oats|r no chão. Saque-o para obter |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    >>Fale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r e depois |cRXP_FRIENDLY_Salma|r dentro
    .accept 9 >>Aceite Os Campos da Morte
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 36 >>Entregue Ensopado de Cerro Oeste
    .accept 38 >>Aceite Ensopado de Cerro Oeste
    .accept 22 >>Aceite Empadão de Fígado de Goretusco
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
step << Gnome
    #completewith Gryan
    .goto Westfall,53.54,31.72,60,0
    >>AdE os |cRXP_ENEMY_Harvest Watchers|r e os |cRXP_ENEMY_Harvest Golems|r. Saque-os para obter |cRXP_LOOT_Flasks of Oil|r e |cRXP_LOOT_Hops|r
    >>|cRXP_WARN_Lembrar de|r |T135826:0|t[Golpe Flamejante]|cRXP_WARN_/|r|T136116:0|t[Explosão Arcana] |cRXP_WARN_AoE agora|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step << Gnome
    #completewith next
    >>AdE os |cRXP_ENEMY_Young Goretusks|r. Saque-os para obter |cRXP_LOOT_Goretusk Livers|r e |cRXP_LOOT_Goretusk Snouts|r
    >>AdE |cRXP_ENEMY_Young Fleshrippers|r. Saque-os pelo |cRXP_LOOT_Stringy Vulture Carne|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Young Fleshripper
step
    #label Gryan << Gnome
	>>Fale com |cRXP_FRIENDLY_Gryan|r e |cRXP_FRIENDLY_Danuvin|r << Gnome
	>>Fale com |cRXP_FRIENDLY_Gryan|r e depois |cRXP_FRIENDLY_Lewis|r dentro << Human
    .turnin 109 >>Entregue Relatório para Gryan Mantoforte << Gnome
    .accept 65 >>Aceitar A Irmandade Défias
    .accept 12 >>Aceite A Milícia do Povo << Gnome
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 6285 >>Entregue para Lewis << Human
    .goto Westfall,57.002,47.169 << Human
    .accept 102 >>Aceite Patrulhando Cerro Oeste << Gnome
    .goto Westfall,56.42,47.62 << Gnome
	.target +Captain Danuvin << Gnome
    .target +Quartermaster Lewis << Human
step
    .goto Westfall,53.98,52.99
	>>Fale com |cRXP_FRIENDLY_Galiaan|r
    .accept 153 >>Aceite Vermelho Couro Bandanas
	.target Scout Galiaan
step
    .goto Westfall,52.86,53.72
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 45|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,45,64,1 --Melon Juice (45)
	.target Innkeeper Heather
    .money <0.45
step
    .goto Westfall,52.86,53.72
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 40|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,40,64,1 --Melon Juice (40)
	.target Innkeeper Heather
    .money <0.40
step
    .goto Westfall,52.86,53.72
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 35|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,35,64,1 --Melon Juice (35)
	.target Innkeeper Heather
    .money <0.35
step
    .goto Westfall,52.86,53.72
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 30|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,30,64,1 --Melon Juice (30)
	.target Innkeeper Heather
    .money <0.30
step
    .goto Westfall,52.86,53.72
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 25|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,25,64,1 --Melon Juice (25)
	.target Innkeeper Heather
    .money <0.25
step
    .goto Westfall,52.86,53.72
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 20|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,20,64,1 --Melon Juice (20)
	.target Innkeeper Heather
    .money <0.20
step
    .goto Westfall,52.86,53.72
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 15|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,15,64,1 --Melon Juice (15)
	.target Innkeeper Heather
    .money <0.15
step
    .goto Westfall,52.86,53.72
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 10|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,10,64,1 --Melon Juice (10)
	.target Innkeeper Heather
    .money <0.10
step
    .goto Westfall,52.86,53.72
	>>Fale com |cRXP_FRIENDLY_Heather|r
    >>|cRXP_BUY_Compre 5|r |T132796:0|t[Melão Suco] |cRXP_BUY_dela|r
    .collect 1205,5,64,1 --Melon Juice (5)
	.target Innkeeper Heather
    .money <0.05
step
    #completewith Grayson
    >>Abra os |cRXP_PICK_Saco de Aveia|r no chão. Saqueie-os para |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith Oil
    >>AdE os |cRXP_ENEMY_Goretusks|r. Saqueie seus |cRXP_LOOT_Goretusk Livers|r e |cRXP_LOOT_Goretusk Snouts|r
    >>AdE os |cRXP_ENEMY_Fleshrippers|r. Saqueie seus |cRXP_LOOT_Stringy Vulture Carne|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
step
    #completewith Compass
    .goto Westfall,39.45,52.34,60,0
    >>AdE os |cRXP_ENEMY_Harvest Watchers|r. Saqueie seus |cRXP_LOOT_Flasks of Oil|r e |cRXP_LOOT_Hops|r
    .complete 9,1 --Harvest Watcher (20)
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
step
    #completewith Oil
    >>AdE os |cRXP_ENEMY_Defias|r. Saqueie seus |cRXP_LOOT_Red Couro Bandanas|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Smuggler
    .mob Defias Trapper
    .mob Defias Looter
    .mob Defias Pillager
step
    #label Compass
    .goto Westfall,36.24,54.52
    >>Abra o |cRXP_PICK_Baú de Alexston|r. Saqueie-o pelo |cRXP_LOOT_A Simple Compass|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 399,1 --A Simple Compass (1)
step
    #label Oil
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34,60,0
    .goto Westfall,37.39,50.52,60,0
    .goto Westfall,35.56,46.87,60,0
    .goto Westfall,33.64,47.01,60,0
    .goto Westfall,32.96,36.48,60,0
    .goto Westfall,39.45,52.34
    >>AdE os |cRXP_ENEMY_Harvest Watchers|r e os |cRXP_ENEMY_Harvest Golems|r. Saqueie seus |cRXP_LOOT_Flasks of Oil|r e |cRXP_LOOT_Hops|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .collect 1274,5,117,1 --Hops (5)
    .mob Harvest Watcher
    .mob Harvest Golem
step
    #completewith next
    +|cRXP_WARN_Procure por |cRXP_ENEMY_Velho Olho-turvo|r. Tente ficar perto da borda do penhasco para não perdê-lo|r
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.40,57.93,60,0
    .goto Westfall,29.29,65.46,60,0
    .goto Westfall,32.62,68.40,60,0
    .goto Westfall,31.07,69.42,60,0
    .goto Westfall,31.40,72.29,30 >>AdE os Acampamentos Gnoll
    >>AdE os |cRXP_ENEMY_Riverpaw Herbalists|r, os |cRXP_ENEMY_Riverpaw Mongrels|r, e os |cRXP_ENEMY_Riverpaw Brutes|r. Saqueie seus |cRXP_LOOT_Gnoll Paws|r
    >>Se você encontrar |cRXP_ENEMY_Velho Olho-turvo|r, pule este passo
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Herbalist
    .mob Riverpaw Mongrel
    .mob Riverpaw Brute
step
    #completewith next
    +|cRXP_WARN_Procure |cRXP_ENEMY_Velho Olho-turvo|r. Leve-o em direção|r |cRXP_FRIENDLY_Grayson|r
    .unitscan Old Murk-Eye
step
    #label Grayson
    .goto Westfall,30.02,86.02
    >>Fale com |cRXP_FRIENDLY_Grayson|r
    .accept 104 >>Aceite Ameaça Costeira
    .target Captain Grayson
step
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,34.88,85.82,70,0
    .goto Westfall,35.38,84.63,70,0
    .goto Westfall,33.92,83.88,70,0
    .goto Westfall,31.89,82.28,70,0
    .goto Westfall,30.33,80.75,70,0
    .goto Westfall,29.50,78.70,70,0
    .goto Westfall,29.06,75.45,70,0
    .goto Westfall,28.78,72.58,70,0
    .goto Westfall,27.84,71.33,70,0
    .goto Westfall,27.27,69.96,70,0
    .goto Westfall,26.86,66.82,70,0
    .goto Westfall,26.27,65.76
    >>AdE o |cRXP_ENEMY_Velho Olho-turvo|r. Saqueie-o pela |cRXP_LOOT_Escama de Velho Olho-turvo|r
    .complete 104,1 --Scale of Old Murk-Eye
    .unitscan Old Murk-Eye
step
    .goto Westfall,30.02,86.02
    >>Fale com |cRXP_FRIENDLY_Grayson|r
    .accept 103 >>Aceite Guardião da Chama
    .turnin 103,1 >>Entregue Guardião da Chama
    .turnin 104,3 >>Entregue O Mar Não Está para Peixe
    .target Captain Grayson
step
    #completewith next
    >>Use AdE nos |cRXP_ENEMY_Defias Knuckledusters|r e nos |cRXP_ENEMY_Defias Highwaymen|r. Saqueie-os para obter |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Tenha cuidado pois os |cRXP_ENEMY_Defias Highwaymen|r lançam|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_(causa dano duplo pelas costas)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto Westfall,44.62,80.26
    >>Fale com |cRXP_FRIENDLY_Grimbooze|r
    .accept 117 >>Aceite Cervaforte
    .turnin 117 >>Entregue Cervaforte
    .target Grimbooze Thunderbrew
step
    #completewith next
    .goto Westfall,48.77,77.70,60,0
    .goto Westfall,51.73,74.67,60,0
    .goto Westfall,52.56,72.87,60,0
    >>AdE os |cRXP_ENEMY_Defias Knuckledusters|r e os |cRXP_ENEMY_Defias Highwaymen|r. Saqueie seus |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Tenha cuidado pois o |cRXP_ENEMY_Defias Highwaymen|r lança|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_(causa o dobro do dano vindo de trás)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Knuckleduster
    .mob Defias Highwaymen
step
    .goto Westfall,52.08,71.94,60 >>Vá para o final de The Dagger Hills
    .isOnQuest 153
step
    #completewith Footpads
    >>Abra os |cRXP_PICK_Saco de Aveia|r no chão. Saqueie-os para |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    #completewith AoE1
    >>Use AdE nos |cRXP_ENEMY_Goretusks|r. Saqueie-os para obter |cRXP_LOOT_Goretusk Livers|r e |cRXP_LOOT_Goretusk Snouts|r
    >>Use AdE nos |cRXP_ENEMY_Fleshrippers|r. Saqueie-os para obter |cRXP_LOOT_Stringy Vulture Carne|r
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
    >>Use AdE nos |cRXP_ENEMY_Defias Trappers|r e nos |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os para obter |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Tenha cuidado pois o |cRXP_ENEMY_Defias Trappers|r lança|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_(causa o dobro do dano vindo de trás) e|r |T132149:0|t[Rede] |cRXP_WARN_(Imobiliza por 9 segundos)|r
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label AoE1
    .goto Westfall,46.65,52.99,60,0
    .goto Westfall,48.22,45.21,60,0
    .goto Westfall,45.77,39.19,60,0
    .goto Westfall,46.49,37.30,60,0
    .goto Westfall,44.54,34.71,150 >>Vá para The Molsen Farm
    .isOnQuest 153
step
    #completewith Watch
    .goto Westfall,44.54,34.71,60,0
    >>Use AdE nos |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    #completewith Furlbrows
    >>AdE os |cRXP_ENEMY_Young Goretusks|r. Saqueie seus |cRXP_LOOT_Goretusk Livers|r e |cRXP_LOOT_Goretusk Snouts|r
    >>AdE os |cRXP_ENEMY_Fleshrippers|r e os |cRXP_ENEMY_Young Fleshrippers|r. Saqueie-os por sua |cRXP_LOOT_Stringy Vulture Carne|r
    .collect 723,8,22,1 --Goretusk Liver (8)
    .mob +Young Goretusk
    .collect 731,3,38,1 --Goretusk Snout (3)
    .mob +Young Goretusk
    .collect 729,3,38,1 --Stringy Vulture Meat (3)
    .mob +Fleshripper
    .mob +Young Fleshripper
step
    .goto Westfall,44.14,26.66,60,0
    .goto Westfall,46.13,26.52,60,0
    .goto Westfall,48.74,20.79
    >>AdE os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r. Saqueie seus |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Cuidado pois os |cRXP_ENEMY_Defias Trappers|r lançam|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_e|r |T132149:0|t[Rede]
    >>|cRXP_WARN_Pule este passo se você não estiver com pelo menos 10/15 em ambos os |cRXP_ENEMY_Defias Trappers|r e os |cRXP_ENEMY_Defias Smugglers|r
    .complete 153,1,1 --Red Leather Bandana (15)
    .mob +Defias Trapper
    .mob +Defias Smuggler
    .complete 12,1 --Defias Trapper (15)
    .mob +Defias Trapper
    .complete 12,2 --Defias Smuggler (15)
    .mob +Defias Smuggler
step
    #completewith next
    .goto Westfall,48.74,20.79,60,0
    >>Use AdE nos |cRXP_ENEMY_Defias Trappers|r e nos |cRXP_ENEMY_Defias Smugglers|r. Saqueie-os para obter |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Tenha cuidado pois o |cRXP_ENEMY_Defias Trappers|r lança|r |T132090:0|t[Punhalada pelas Costas] |cRXP_WARN_e|r |T132149:0|t[Rede]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Trapper
    .mob Defias Smuggler
step
    #label Watch
    .goto Westfall,49.33,19.26
    >>Abra o |cRXP_PICK_Furlbrow's Wardrobe|r. Saqueie-o para obter o |cRXP_LOOT_Furlbrow's Pocket Vigiar|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 64,1 --Furlbrow's Pocket Watch (1)
step
    #completewith Oats
    .goto Westfall,50.50,21.38,60,0
    .goto Westfall,51.70,23.16,60,0
    >>Use AdE nos |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,52.02,15.00,60,0
    .goto Westfall,56.93,12.75
    >>AdE os |cRXP_ENEMY_Riverpaw Batedores|r e os |cRXP_ENEMY_Riverpaw Gnolls|r. Saqueie seus |cRXP_LOOT_Gnoll Paws|r
    .complete 102,1 --Gnoll Paws (8)
    .mob Riverpaw Scout
    .mob Riverpaw Gnoll
step
    .goto Westfall,52.36,9.59,60,0
    .goto Westfall,53.80,10.69,60,0
    .goto Westfall,55.96,8.22
    >>AdE os |cRXP_ENEMY_Murloc Coastrunners|r e os |cRXP_ENEMY_Murloc Raiders|r. Saqueie seus |cRXP_LOOT_Murloc Olhos|r
    .collect 730,3,38,1 --Murloc Eye (3)
    .mob Murloc Coastrunner
    .mob Murloc Raider
step
    #label Footpads
    .goto Westfall,56.56,19.25
    >>AdE os |cRXP_ENEMY_Defias Footpads|r. Saqueie seus |cRXP_LOOT_Red Couro Bandanas|r
    >>|cRXP_WARN_Tenha cuidado pois |cRXP_ENEMY_Defias Footpads|r lança|r |T132090:0|t[Punhalada pelas Costas]
    .complete 153,1 --Red Leather Bandana (15)
    .mob Defias Footpad
step
    #label Oats
    .goto Westfall,56.56,19.25
    >>Abra os |cRXP_PICK_Saco de Aveia|r no chão. Saqueie-os para |cRXP_LOOT_Handfuls of Oats|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 151,1 --Handful of Oats (8)
step
    #label Furlbrows
    >>Fale com o |cRXP_FRIENDLY_Fazendeiro Taturana|r e |cRXP_FRIENDLY_Verna|r
    .turnin 64 >>Entregue A Herança Esquecida
    .target +Farmer Furlbrow
    .goto Westfall,59.95,19.35
    .turnin 151 >>Entregue Poor Velha Brancurinha
    .goto Westfall,59.91,19.41
    .target +Verna Furlbrow
step
    .goto Westfall,59.72,34.62,80,0
    .goto Westfall,60.24,47.40
    >>AdE os |cRXP_ENEMY_Goretusks|r e os |cRXP_ENEMY_Young Goretusks|r. Saqueie seus |cRXP_LOOT_Goretusk Livers|r e |cRXP_LOOT_Goretusk Snouts|r
    >>AdE os |cRXP_ENEMY_Fleshrippers|r e os |cRXP_ENEMY_Young Fleshrippers|r. Saqueie-os por sua |cRXP_LOOT_Stringy Vulture Carne|r
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
    .goto Westfall,52.84,30.46,60,0
    .goto Westfall,51.70,23.16
    >>AdE |cRXP_ENEMY_Harvest Watchers|r
    .complete 9,1 --Harvest Watcher (20)
    .mob Harvest Watcher
step
    .goto Westfall,51.70,23.16
    .xp 17+11890 >>Farme até 11890+/17700xp
    .isQuestComplete 12
step
    .goto Westfall,51.70,23.16
    >>|cRXP_WARN_Pule este passo se você já completou o objetivo de The People's Militia|r
    .xp 17+12800 >>Farme até 12800+/17700xp
step
    >>Fale com o |cRXP_FRIENDLY_Fazendeiro Saldanha|r e então com |cRXP_FRIENDLY_Salma|r dentro
    .turnin 9,1 >>Entregue The Matando Fields
    .vendor >>Comerciante Lixo
    .target +Farmer Saldean
    .goto Westfall,56.04,31.23
    .turnin 22 >>Entregue Empadão de Fígado de Goretusco
    .turnin 38 >>Entregue Ensopado de Cerro Oeste
    .goto Westfall,56.42,30.52
    .target +Salma Saldean
step
	>>Fale com |cRXP_FRIENDLY_Gryan|r e |cRXP_FRIENDLY_Danuvin|r
    .turnin 12 >>Entregue The People's Militia
    .target +Gryan Stoutmantle
    .goto Westfall,56.33,47.52
    .turnin 102,1 >>Entregue Patrulhando Cerro Oeste
    .goto Westfall,56.42,47.62
	.target +Captain Danuvin
    .isQuestComplete 12
step
    .goto Westfall,56.42,47.62
	>>Fale com |cRXP_FRIENDLY_Danuvin|r
    .turnin 102,1 >>Entregue Patrulhando Cerro Oeste
	.target Captain Danuvin
step
    .goto Westfall,53.98,52.99
	>>Fale com |cRXP_FRIENDLY_Galiaan|r
    .turnin 153,2 >>Entregue Vermelho Couro Bandanas
	.target Scout Galiaan
step
    #completewith next
    +|cRXP_WARN_Início lançar feitiços repetidamente|r |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step
    #completewith next
    .goto Westfall,56.56,52.64
	>>Fale com |cRXP_FRIENDLY_Thor|r
    .fly Stormwind >>Voe para Ventobravo
	.target Thor
step
    #completewith next
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Suba na tocha, depois desça para ficar embaixo de Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Justo" ou "Baixo", entre no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe reto para frente|r
    >>|cRXP_WARN_Nota: há uma pequena chance de morte ao usar este método. Você também pode caminhar até a Torre do Mago normalmente se preferir|r
    .link https://youtu.be/gV8-wgQEomc >>https://youtu.be/gV8-wgQEomc >> CLIQUE AQUI para o guia
    .goto Stormwind City,38.61,79.39,10 >>Viaje para |cRXP_FRIENDLY_Jennea|r
step
    .goto Stormwind City,38.61,79.39
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .turnin 1861,1 >>Entregue Espelho Lake
--   .turnin 1919 >> Turn in Report to Jennea
    .trainer >>Aprenda seus feitiços de classe (Bola de Fogo r4)
    >>Custo Total: 18s
    .target Jennea Cannon
step
    #completewith next
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Saia da Torre do Mago
    .goto Stormwind City,32.16,79.84,10 >>Vá para |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dela (se estiverem disponíveis)|r
    .target Andréa Iserian
step
    #completewith next
    .goto Stormwind City,31.41,79.10,20,0
    .goto Stormwind City,32.67,71.36,20,0
    .goto Stormwind City,34.53,68.40,20,0
    .goto Stormwind City,32.16,59.96,20,0
    .goto Stormwind City,32.31,58.51,20,0
    .goto Stormwind City,30.53,55.10,20,0
    .goto Stormwind City,26.04,52.25,20,0
    .goto Stormwind City,24.67,52.60,20,0
    .goto Stormwind City,21.41,55.80,10 >>Vá em direção a |cRXP_FRIENDLY_Argos|r
step
    .goto Stormwind City,21.41,55.80
    >>Fale com |cRXP_FRIENDLY_Argos|r
    .accept 3765 >>Aceite A Corrupção no Exterior
    .target Argos Nightwhisper
step
    .goto Stormwind City,41.57,65.46
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre itens sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,53.53,64.63,12,0
    .goto Stormwind City,52.10,61.42,12,0
    .goto Stormwind City,49.36,63.42,12,0
    .goto Stormwind City,51.16,68.35,12,0
    .goto Stormwind City,52.05,67.96,10 >>Viaje para |cRXP_FRIENDLY_Roberto|r
step
    .goto Stormwind City,52.05,67.96
    >>Entre no prédio
    >>Fale com |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compre um|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_dele|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    .goto Stormwind City,52.10,61.34,15,0
    .goto Stormwind City,55.46,65.26,8 >>Viaje para |cRXP_FRIENDLY_Keldric|r
step
    .goto Stormwind City,55.46,65.26
    >>Fale com |cRXP_FRIENDLY_Keldric|r através da parede
    .vendor 1257 >>|cRXP_BUY_Compre|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Orlande Bórgia
step
    #completewith Bank3
    .goto Stormwind City,55.30,68.16,10 >>Entre no Banco de Ventobravo
step
    #sticky
    #label Bank4
    .goto Stormwind City,57.03,72.97
    >>Fale com |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 769,5354,6889 >>Retire os seguintes itens do seu banco:
    >>|T133970:0|t[Chunk of Javali Carne]
    >>|T133469:0|t[Carta para Delgren]
    >>|T132832:0|t[Ovo Pequeno]
step
    #label Bank3
    .goto Stormwind City,57.03,72.97
    >>Fale com |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_NOTA: Você precisa de 12 pilhas de cada tecido (|r|T132911:0|t[Lã]|cRXP_WARN_,|r |T132905:0|t[Seda]|cRXP_WARN_,|r |T132892:0|t[Magitrama]|cRXP_WARN_,|r e |T132903:0|t[Runatrama]|cRXP_WARN_) para efetuar as entregas de tecido depois. Você obterá estes naturalmente ao subir de nível|r
    .bankdeposit 2998,4371,1711,1478,1712,3012,1180,1181,3013,17056,2592,2998,1941 >>Deposite os itens a seguir no banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T134943:0|t[Pergaminhos]
    >>|T132917:0|t[Pena de Luz]
    >>|T132911:0|t[Lã]
    >>|T134377:0|t[A Simple Compass]
    >>|T132620:0|t[Barril de Merlot]
    .target Newton Burnside
--   .itemcount 769,1
--   .itemcount 4371,1
-- .itemcount 730,1
--  .itemcount 7207,1
-- 1711 level 20 scroll
--VV Vendor Crisp Spider Meat for now
step
    #completewith next
    .goto Stormwind City,53.45,64.92,10,0
    >>Entre na Estalagem
    .goto Stormwind City,52.61,65.72,10 >>Vá para Allison
    .target Innkeeper Allison
step
    .goto Stormwind City,52.61,65.72
    >>|cRXP_WARN_===ATENÇÃO===|r
    >>|cRXP_WARN_Conversar com|r |cRXP_FRIENDLY_Allison|r
    >>|cRXP_WARN_Abrir a menu "Set Pedra de Regresso", depois lance|r |T134414:0|t[Pedra de Regresso]
    .hs >>|cRXP_WARN_Hearthstone BATCH from Objetos de TBC to Auberdine|r
    .target Innkeeper Allison
    .zoneskip Darkshore
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 18-20 ADV Costa Negra 3 Mago AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 20-22 Aventura Redridge 1 Mago AdE

step
    .goto Darkshore,36.83,43.91
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 45|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,45,4740,1 --Melon Juice (45)
    .target Taldan
    .money <0.45
step
    .goto Darkshore,36.83,43.91
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 40|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,40,4740,1 --Melon Juice (40)
    .target Taldan
    .money <0.40
step
    .goto Darkshore,36.83,43.91
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 35|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,35,4740,1 --Melon Juice (35)
    .target Taldan
    .money <0.35
step
    .goto Darkshore,36.83,43.91
    >>Converse com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 30|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,30,4740,1 --Melon Juice (30)
    .target Taldan
    .money <0.30
step
    .goto Darkshore,36.83,43.91
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 25|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,25,4740,1 --Melon Juice (25)
    .target Taldan
    .money <0.25
step
    .goto Darkshore,36.83,43.91
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 20|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,20,4740,1 --Melon Juice (20)
    .target Taldan
    .money <0.20
step
    .goto Darkshore,36.83,43.91
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 15|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,15,4740,1 --Melon Juice (15)
    .target Taldan
    .money <0.15
step
    .goto Darkshore,36.83,43.91
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 10|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,10,4740,1 --Melon Juice (10)
    .target Taldan
    .money <0.10
step
    .goto Darkshore,36.83,43.91
    >>Fale com |cRXP_FRIENDLY_Taldan|r
    >>|cRXP_BUY_Compre 5|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r
    .collect 1205,5,4740,1 --Melon Juice (5)
    .target Taldan
    .money <0.05
step
    .goto Darkshore,36.77,44.28
    >>Fale com |cRXP_FRIENDLY_Laird|r
    >>|cRXP_BUY_Compre até 40|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    .collect 4592,40,4740,1 --Longjaw Mud Snapper (40)
    .target Laird
step
    >>REMOVA ESTE PASSO DEPOIS
    .accept 4740 >>Aceite Procurado: Lodofundo!
    .goto Darkshore,37.22,44.22
step
    .goto Darkshore,36.09,44.93
    >>Converse com |cRXP_FRIENDLY_Gubber|r
    .accept 1138 >>Aceite Fruit of the Sea
    .target Gubber Blump
step
    .goto Darkshore,43.55,76.29
    >>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 948 >>Entregue em Onu
    .accept 944 >>Aceite A Foice do Mestre
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>Fale com |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Kerlonian|r não está lá, pule este passo|r
    .accept 5321 >>Aceite O Adormecido Despertou
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
    >>Abra o |cRXP_PICK_Kerlonian's Baú|r. Pegue-o para obter o |cRXP_LOOT_Corneta do Despertar|r
    >>|cRXP_WARN_Use a|r |T134229:0|t[|cRXP_LOOT_Corneta do Despertar|r] |cRXP_WARN_em |cRXP_FRIENDLY_Kerlonian|r quando ele adormecer|r
    >>|cRXP_WARN_Ambos têm um tempo de lançamento de 5 segundos|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith Glaive1
    >>Use AdE em |cRXP_ENEMY_Espreitaluna Sires|r. Saqueie-os pelos seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Espreitaluna Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
   .complete 986,1 --Fine Moonstalker Pelt (5)
   .mob Moonstalker Sire
   .use 13536
   .isOnQuest 5321
step
    #completewith next
    >>Use AdE em |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os pelos seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Espreitaluna Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
   .complete 1003,1 --Grizzled Scalp (4)
   .mob Grizzled Thistle Bear
   .use 13536
   .isOnQuest 5321
step
    #label Glaive1
   .goto Darkshore,38.65,87.34
    >>Voe para The Master's Glaive
   .complete 944,1 --Enter the Master's Glaive (1)
   .use 13536
   .isOnQuest 5321
step
    #completewith Therylune1
    >>AdE os |cRXP_ENEMY_Twilight Disciples|r e os |cRXP_ENEMY_Twilight Thugs|r. Saqueie-os para obter o |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >>Aceite Os Poderes de Baixo
    .mob Twilight Disciple
    .mob Twilight Thug
    .use 13536
    .isOnQuest 5321
step
    #completewith next
    .goto Darkshore,38.65,87.34
    >>Coloque o |T134715:0|t[Frasco de Vidência] no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    >>Clique em |cRXP_PICK_Frasco de Vidência|r no chão
    .turnin 944 >>Volte a The Master's Glaive
    .accept 949 >>Aceite O Acampamento do Crepúsculo
    .use 13536
    .use 5251
    .isOnQuest 5321
step
   .goto Darkshore,38.65,87.34
    >>Fale com |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Therylune|r não está lá, AdE os |cRXP_ENEMY_Twilight Disciples|r e os |cRXP_ENEMY_Twilight Thugs|r para obter |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] até ela aparecer|r
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
   .goto Darkshore,38.55,86.03
   >>Coloque o |T134715:0|t[Frasco de Vidência] no chão
   >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
   >>Clique em |cRXP_PICK_Frasco de Vidência|r no chão
   .turnin 944 >>Volte a The Master's Glaive
   .accept 949 >>Aceite O Acampamento do Crepúsculo
   .use 13536
   .use 5251
   .isOnQuest 5321
step
    #label Tome1
   .goto Darkshore,38.55,86.03
    >>Clique no |cRXP_PICK_Crepúsculo Tomo|r
   .turnin 949 >>Entregue O Acampamento do Crepúsculo
   .accept 950 >>Aceite Retorno a Onu
   .use 13536
   .isOnQuest 5321
step
   #label Therylune1
   >>Escorte |cRXP_FRIENDLY_Therylune|r
   >>|cRXP_WARN_Certifique-se de que |cRXP_FRIENDLY_Therylune|r permanece no alcance de renderização ou você falhará na missão|r
   .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
   .use 13536
   .target Therylune
   .isOnQuest 950
step
    #completewith Remtravel1
    >>Use AdE em |cRXP_ENEMY_Espreitaluna Sires|r. Saqueie-os pelos seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Espreitaluna Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith next
    >>Use AdE em |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os pelos seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Espreitaluna Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #label Remtravel1
    .goto Darkshore,35.72,83.69
    >>Fale com |cRXP_FRIENDLY_Remtravel|r para iniciar a escolta
    .turnin 729 >>Entregue The Absent Minded Prospector
    .accept 731 >>Aceite O Prospector Distraído
    .target Prospector Remtravel
    .use 13536
    .isOnQuest 950
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,31.28,87.39
    >>Escorte |cRXP_FRIENDLY_Remtravel|r
    >>Quando o |cRXP_ENEMY_Gravelflint Quebraossos|r e o |cRXP_ENEMY_Gravelflint Geomante|r aparecerem, deixe o |cRXP_ENEMY_Gravelflint Geomante|r lançar |T135812:0|t[Bola de Fogo] em |cRXP_FRIENDLY_Remtravel|r, depois lance |T136071:0|t[Polimorfia] nele. Abata o |cRXP_ENEMY_Gravelflint Quebraossos|r e depois o |cRXP_ENEMY_Gravelflint Geomante|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>Use AdE em |cRXP_ENEMY_Espreitaluna Sires|r. Saqueie-os pelos seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Espreitaluna Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
    .isOnQuest 950
step
    #completewith SeaC
    >>Use AdE em |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os pelos seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Espreitaluna Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
    .isOnQuest 950
step
    #completewith next
    +Não desperte |cRXP_FRIENDLY_Kerlonian|r de agora em diante
    >>Fique atento a |cRXP_ENEMY_Mamãe Moa da Floresta|r
    .unitscan Strider Clutchmother
    .isOnQuest 950
step
    #label SeaC
    .goto Darkshore,31.28,87.39
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Loot it at the Neck|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4733 >>Aceite Beached Sea Criatura - Missão
    .isOnQuest 950
step
    #completewith next
    .abandon 5321 >>Abandone A Adormecida has Desperto
    .isOnQuest 950
step
    .goto Darkshore,31.22,85.56
    >>Saque a |cRXP_LOOT_Tartaruga Marinha Encalhada|r no chão
    >>|cRXP_WARN_The Tartaruga Casca has LoS|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
    .isOnQuest 950
step
    #completewith SeaCreature
    >>AdE |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saque-os para seus |cRXP_LOOT_Pedaços Finos de Caranguejo|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Encrusted Tide Crawler
   .isOnQuest 950
step
    .goto Darkshore,31.70,83.72
    >>Saque a |cRXP_LOOT_Tartaruga Marinha Encalhada|r no chão
    >>|cRXP_WARN_The Tartaruga Casca has LoS|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
    .isOnQuest 950
step
    #label SeaCreature
    .goto Darkshore,32.70,80.73
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
    .isOnQuest 950
step
    #completewith next
    >>AdE |cRXP_ENEMY_Reef Crawlers|r. Saque-os para seus |cRXP_LOOT_Pedaços Finos de Caranguejo|r
   .complete 1138,1 --Fine Crab Chunks (6)
   .mob Reef Crawler
   .isOnQuest 950
step
   .goto Darkshore,36.52,76.55
   >>Limpe o Acampamento Murloc sem se mover para o centro do acampamento
   >>Depois de limpar tudo, mova-se para o centro do acampamento para convocar 3 ondas (3 Corredores de Costa, 2 Guerreiros, Lodofundo e um Caçador)
   >>|cRXP_WARN_Se você tiver sorte, |cRXP_ENEMY_Lodofundo|r talvez já esteja ativo cerca de 30 metros da costa a oeste (se alguém morreu nele antes)|r
   .complete 4740,1 --Murkdeep (1)
   .unitscan Murkdeep
   .isOnQuest 950
step
    #completewith next
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,35.42,71.52,60,0
    >>AdE |cRXP_ENEMY_Reef Crawlers|r. Saque-os para seus |cRXP_LOOT_Pedaços Finos de Caranguejo|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    .goto Darkshore,35.97,70.90
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4728 >>Aceite Beached Sea Criatura - Missão
    .isOnQuest 950
step
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71
    >>Use AdE em |cRXP_ENEMY_Reef Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
    .isOnQuest 950
step
    #completewith SeaCreatureGiga
    >>Use AdE em |cRXP_ENEMY_Espreitaluna Sires|r. Saqueie-os pelos seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Espreitaluna Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith SeaCreatureGiga
    >>Use AdE em |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os pelos seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Espreitaluna Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label Onu2
    .goto Darkshore,43.55,76.29
    >>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Retorno a Onu
    .target Onu
    .isQuestComplete 950
step
    #label SeaCreatureGiga
    .goto Darkshore,35.97,70.90
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4728 >>Aceite Beached Sea Criatura - Missão
step
    #completewith next
    .goto Darkshore,35.42,71.52,60,0
    .goto Darkshore,35.02,72.20,60,0
    .goto Darkshore,36.01,73.48,60,0
    .goto Darkshore,35.96,75.22,60,0
    >>AdE |cRXP_ENEMY_Reef Crawlers|r. Saque-os para seus |cRXP_LOOT_Pedaços Finos de Caranguejo|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,36.52,76.55
    >>Limpe o Acampamento Murloc sem se deslocar para o centro do acampamento
    >>Assim que limpar tudo, vá para o centro do acampamento para invocar 3 ondas (3 Coastrunners, 2 Guerreiros, Lodofundo e um Caçador)
    >>|cRXP_WARN_Se você tiver sorte, |cRXP_ENEMY_Lodofundo|r pode já estar em pé a 30 jardas da costa para o oeste (se alguém tiver morrido nele anteriormente)|r
    .complete 4740,1 --Murkdeep (1)
    .unitscan Murkdeep
step
    #completewith next
    .goto Darkshore,35.61,78.13,60,0
    .goto Darkshore,35.27,79.57,60,0
    .goto Darkshore,34.18,80.71,60,0
    >>AdE |cRXP_ENEMY_Reef Crawlers|r. Saque-os para seus |cRXP_LOOT_Pedaços Finos de Caranguejo|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Reef Crawler
step
    .goto Darkshore,32.70,80.73
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4730 >>Aceite Beached Sea Criatura - Missão
step
    .goto Darkshore,32.80,81.72,60,0
    .goto Darkshore,32.08,83.28
    >>Use AdE em |cRXP_ENEMY_Encrusted Tide Crawlers|r. Saqueie-os para obter |cRXP_LOOT_Fine Caranguejo Chunks|r
    .complete 1138,1 --Fine Crab Chunks (6)
    .mob Encrusted Tide Crawler
step
    .goto Darkshore,31.70,83.72
    >>Saque a |cRXP_LOOT_Tartaruga Marinha Encalhada|r no chão
    >>|cRXP_WARN_The Tartaruga Casca has LoS|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4731 >>Aceite Tartaruga Marinha Encalhada
step
    .goto Darkshore,31.22,85.56
    >>Pegue a |cRXP_LOOT_Beached Tartaruga Marinha|r no chão
    >>|cRXP_WARN_The Tartaruga Casca has LoS|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4732 >>Aceite Tartaruga Marinha Encalhada
step
    .goto Darkshore,31.28,87.39
    >>Pegue a |cRXP_LOOT_Beached Sea Criatura - Missão|r no chão
    >>|cRXP_WARN_Saque-o no Pescoço|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .accept 4733 >>Aceite Beached Sea Criatura - Missão
step
    #completewith Remtravel3
    >>Use AdE em |cRXP_ENEMY_Espreitaluna Sires|r. Saqueie-os pelos seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Espreitaluna Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
    .use 13536
step
    #completewith Remtravel3
    >>Use AdE em |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os pelos seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Espreitaluna Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #completewith next
    +Não desperte |cRXP_FRIENDLY_Kerlonian|r de agora em diante
    >>Fique atento a |cRXP_ENEMY_Mamãe Moa da Floresta|r
    .unitscan Strider Clutchmother
 step
    #label Remtravel3
    .goto Darkshore,35.72,83.69
    >>Fale com |cRXP_FRIENDLY_Remtravel|r para iniciar a escolta
    .turnin 729 >>Entregue The Absent Minded Prospector
    .accept 731 >>Aceite O Prospector Distraído
    .target Prospector Remtravel
step
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,36.22,86.12,40,0
    .goto Darkshore,35.35,84.72,40,0
    .goto Darkshore,35.72,83.69,40,0
    .goto Darkshore,38.65,87.34
    >>Escorte |cRXP_FRIENDLY_Remtravel|r
    >>Quando o |cRXP_ENEMY_Gravelflint Quebraossos|r e o |cRXP_ENEMY_Gravelflint Geomante|r aparecerem, deixe o |cRXP_ENEMY_Gravelflint Geomante|r lançar |T135812:0|t[Bola de Fogo] em |cRXP_FRIENDLY_Remtravel|r, depois lance |T136071:0|t[Polimorfia] nele. Abata o |cRXP_ENEMY_Gravelflint Quebraossos|r e depois o |cRXP_ENEMY_Gravelflint Geomante|r
    .complete 731,1 --Escort Prospector Remtravel (1)
    .target Prospector Remtravel
    .mob Gravelflint Geomancer
    .mob Gravelflint Bonesnapper
step
    #completewith Glaive2
    >>Use AdE em |cRXP_ENEMY_Espreitaluna Sires|r. Saqueie-os pelos seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Espreitaluna Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith next
    >>Use AdE em |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os pelos seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Espreitaluna Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #label Glaive2
   .goto Darkshore,38.65,87.34
    >>Voe para The Master's Glaive
   .complete 944,1 --Enter the Master's Glaive (1)
step
    #completewith Therylune2
    >>AdE os |cRXP_ENEMY_Twilight Disciples|r e os |cRXP_ENEMY_Twilight Thugs|r. Saqueie-os para obter o |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r]
    >>Use o [|cRXP_WARN_Livro: Os Poderes Inferiores|cRXP_LOOT_] |rpara iniciar a missão|r
    .collect 5352,1,968,1 --Book: The Powers Below (1)
    .accept 968 >>Aceite Os Poderes de Baixo
    .mob Twilight Disciple
    .mob Twilight Thug
step
    #completewith next
    .goto Darkshore,38.65,87.34
    >>Coloque o |T134715:0|t[Frasco de Vidência] no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    >>Clique no |cRXP_PICK_Frasco de Vidência|r no chão
    .turnin 944 >>Volte a The Master's Glaive
    .accept 949 >>Aceite O Acampamento do Crepúsculo
    .use 5251
step
    .goto Darkshore,38.65,87.34
    >>Fale com |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Therylune|r não está lá, AdE os |cRXP_ENEMY_Twilight Disciples|r e os |cRXP_ENEMY_Twilight Thugs|r para obter |T133743:0|t[|cRXP_LOOT_Book: The Powers Below|r] até ela aparecer|r
    .accept 945 >>Aceite A Fuga de Therylune
    .target Therylune
step
    #completewith Tome2
    >>Escorte |cRXP_FRIENDLY_Therylune|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .target Therylune
step
    .goto Darkshore,38.55,86.03
    >>Coloque o |T134715:0|t[Frasco de Vidência] no chão
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    >>Clique em |cRXP_PICK_Frasco de Vidência|r no chão
    .turnin 944 >>Volte a The Master's Glaive
    .accept 949 >>Aceite O Acampamento do Crepúsculo
    .use 5251
step
    #label Tome2
    .goto Darkshore,38.55,86.03
    >>Clique no |cRXP_PICK_Crepúsculo Tomo|r
    .turnin 949 >>Entregue O Acampamento do Crepúsculo
    .accept 950 >>Aceite Retorno a Onu
    .use 13536
step
    #label Therylune2
    >>Escorte |cRXP_FRIENDLY_Therylune|r
    >>|cRXP_WARN_Certifique-se de que |cRXP_FRIENDLY_Therylune|r permanece no alcance de renderização ou você falhará na missão|r
    .complete 945,1 --Escort Therylune away from the Master's Glaive (1)
    .use 13536
    .target Therylune
step
    #completewith Onu3
    >>Use AdE em |cRXP_ENEMY_Espreitaluna Sires|r. Saqueie-os pelos seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Espreitaluna Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    #completewith Onu3
    #label Scalps2
    >>Use AdE em |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os pelos seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Espreitaluna Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
step
    #requires Scalps2
    #completewith next
    .goto Darkshore,41.40,80.56,-1
    >>Clique em |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>Vá a Buzzbox 525
step
    #label Onu3
    .goto Darkshore,43.55,76.29,-1
    >>Fale com |cRXP_FRIENDLY_Onu|r
    .turnin 950 >>Entregue Retorno a Onu
    .target Onu
step
    .goto Darkshore,44.40,76.42
    >>Fale com |cRXP_FRIENDLY_Kerlonian|r
    >>|cRXP_WARN_Se |cRXP_FRIENDLY_Kerlonian|r não está lá, pule este passo|r
    .accept 5321 >>Aceite O Adormecido Despertou
    .target Kerlonian Evershade
step
    .goto Darkshore,44.39,76.30
    >>Abra o |cRXP_PICK_Kerlonian's Baú|r. Pegue-o para obter o |cRXP_LOOT_Corneta do Despertar|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 5321,1 --Horn of Awakening (1)
    .isOnQuest 5321
step
    #completewith 525
    >>Use AdE em |cRXP_ENEMY_Espreitaluna Sires|r. Saqueie-os pelos seus |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Espreitaluna Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .mob Moonstalker Sire
step
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57,60,0
    .goto Darkshore,43.94,80.14,60,0
    .goto Darkshore,43.09,81.72,60,0
    .goto Darkshore,41.59,83.52,60,0
    .goto Darkshore,40.15,83.02,60,0
    .goto Darkshore,38.70,82.44,60,0
    .goto Darkshore,38.13,79.75,60,0
    .goto Darkshore,40.52,80.57
    >>Use AdE em |cRXP_ENEMY_Grizzled Thistle Ursos|r. Saque-os pelos seus |cRXP_LOOT_Grizzled Scalps|r
    >>|cRXP_ENEMY_Grizzled Thistle Ursos|r compartilham spawns com |cRXP_ENEMY_Espreitaluna Sires|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 1003,1 --Grizzled Scalp (4)
    .mob Grizzled Thistle Bear
    .use 13536
step
    #label 525
    .goto Darkshore,41.40,80.56
    >>Clique em |cRXP_PICK_Buzzbox 525|r
    .turnin 1003 >>Vá a Buzzbox 525
    .use 13536
step
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03,70,0
    .goto Darkshore,41.10,84.17,70,0
    .goto Darkshore,40.38,90.49,70,0
    .goto Darkshore,36.58,90.55,70,0
    .goto Darkshore,36.70,94.60,70,0
    .goto Darkshore,42.76,90.70,70,0
    .goto Darkshore,41.77,87.88,70,0
    .goto Darkshore,44.57,93.03
    >>AdE os |cRXP_ENEMY_Moonstalker Matriarchs|r e os |cRXP_ENEMY_Moonstalker Sires|r. Saqueie-os para obter suas |cRXP_LOOT_Fine Espreitaluna Pelts|r
    >>|cRXP_ENEMY_Espreitaluna Sires|r compartilham spawns com |cRXP_ENEMY_Grizzled Thistle Ursos|r e |cRXP_ENEMY_Giant Foreststriders|r
    .complete 986,1 --Fine Moonstalker Pelt (5)
    .unitscan Moonstalker Sire
    .unitscan Moonstalker Matriarch
    .use 13536
step
    #completewith Sleeper
    .xp 19+4635 >>Farme até 4635+/21300xp
    .isOnQuest 5321
step
    #completewith Delgren
    >>AdE os |cRXP_ENEMY_Ghostpaw Runners|r. Saqueie-os para obter suas |cRXP_LOOT_Lean Lobo Flanks|r
    .collect 1015,10,90,1 --Lean Wolf Flank (10)
    .mob Ghostpaw Runner
step
    #label Sleeper
    .goto Ashenvale,27.26,35.58
    >>Fale com |cRXP_FRIENDLY_Liladris|r
    .turnin 5321,1 >>Entregue O Adormecido Despertou
    .target Liladris Moonriver
    .use 13536
    .isOnQuest 5321
step
    #label Delgren
    .goto Ashenvale,26.19,38.70
    >>Fale com |cRXP_FRIENDLY_Delgren|r
    .turnin 967 >>Entregue A Torre de Althalaxx
    .target Delgren the Purifier
step
    .goto Ashenvale,22.64,51.91
    >>Fale com |cRXP_FRIENDLY_Therysil|r
    .turnin 945 >>Entregue A fuga de Therylune
    .target Therysil
step
    .goto Ashenvale,34.41,47.99
    .xp 19+8720 >>Farme até 8720+/21300xp
step << skip
    #completewith next
    +|cRXP_WARN_Início lançar feitiços repetidamente|r |T132794:0|t[Conjurar Água r2] |cRXP_WARN_para conjurar o máximo de água possível antes de pegar o voo|r
step
    #completewith next
    .goto Ashenvale,34.41,47.99
    >>Fale com |cRXP_FRIENDLY_Daelyshia|r
    .fly Auberdine >>Voe para Auberdine
    .target Daelyshia
step
    >>Fale com |cRXP_FRIENDLY_Gwennyth|r e |cRXP_FRIENDLY_Gubber|r
    .turnin 4728 >>Entregue a Criatura Marinha Encalhada
    .turnin 4730 >>Entregue a Criatura Marinha Encalhada
    .turnin 4731 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4732 >>Entregue Tartaruga Marinha Encalhada
    .turnin 4733 >>Entregue a Criatura Marinha Encalhada
    .target +Gwennyth Bly'Leggonde
    .goto Darkshore,36.62,45.60
    .turnin 1138,2 >>Entregue Frutos do mar
    .goto Darkshore,36.09,44.93
    .target +Gubber Blump
step
    .goto Darkshore,37.73,43.38
    >>Fale com |cRXP_FRIENDLY_Glynda|r
    .turnin 4740 >>Entregue PROCURA-SE: Lodofundo!
    .target Sentinel Glynda Nal'Shea
step
    >>Fale com |cRXP_FRIENDLY_Terenthis|r e |cRXP_FRIENDLY_Gershala|r
    .turnin 986 >>Entregue Um Mestre Perdido
    --.accept 993 >>Accept A Lost Master
    .target +Terenthis
    .goto Darkshore,39.37,43.48
    .turnin 3765 >>Entregue A Corrupção no Estrangeiro
    .goto Darkshore,38.32,43.04
    .target +Gershala Nightwhisper
step
    .goto Darkshore,38.11,41.16
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compre 20|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_dele|r
    .collect 2678,20,90,1 --Mild Spices (20)
    .target Gorbold Steelhand
    .itemcount 6889,20
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compre 15|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_dele|r
    .collect 2678,15,90,1 --Mild Spices (15)
    .target Gorbold Steelhand
    .itemcount 6889,15
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compre 10|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_dele|r
    .collect 2678,10,90,1 --Mild Spices (10)
    .target Gorbold Steelhand
    .itemcount 6889,10
    .skill cooking,50,1
step
    .goto Darkshore,38.11,41.16
    >>Fale com |cRXP_FRIENDLY_Gorbold|r
    >>|cRXP_BUY_Compre 5|r |T134059:0|t[Temperos Suaves] |cRXP_BUY_dele|r
    .collect 2678,5,90,1 --Mild Spices (5)
    .target Gorbold Steelhand
    .itemcount 6889,5
    .skill cooking,50,1
step
    .goto Darkshore,37.45,40.50
    >>Fale com |cRXP_FRIENDLY_Dalmond|r
    >>|cRXP_BUY_Compre uma|r |T135435:0|t[Madeira Simples] |cRXP_BUY_e|r |T135237:0|t[Pederneira e Lenha] |cRXP_BUY_dele|r
    .collect 4470,1,90,1 --Simple Wood (1)
    .collect 4471,1,90,1 --Flint and Tinder (1)
    .target Dalmond
    .skill cooking,50,1
step
    .goto Darkshore,37.44,41.84
    >>Fale com |cRXP_FRIENDLY_Hollee|r
    .turnin 731 >>Entregue The Absent Minded Prospector
    .accept 741 >>Aceite O Prospector Distraído
    .target Archaeologist Hollee
step
    #completewith Teldrassil
    #label BoatT
    .goto Darkshore,37.47,42.45,20,0
    .goto Darkshore,37.44,43.03,20,0
    .goto Darkshore,36.85,44.05,20,0
    .goto Darkshore,32.96,41.88,20,0
    .goto Darkshore,33.23,39.91,50 >>Voe para o Barco de Darnassus
step
    #completewith Teldrassil
    #requires BoatT
    .cast 818 >>Use |T135805:0|t[Fogo para Cozinhar] no Barco (ou Cais se o barco ainda não está visível)
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .skill cooking,50,1
step
    #completewith Teldrassil
    #requires BoatT
    #label BoarM
    +Cozinhe qualquer |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r em |T133974:0|t[Carne Assada de Porco]
    .itemcount 769,1
    .skill cooking,50,1
step
    #completewith next
    #requires BoarM
    +|cRXP_WARN_Comece|r |T132794:0|t[Conjurar Água r2]|cRXP_WARN_ rapidamente para conjurar o máximo de água possível|r
step
    #label Teldrassil
    .goto Teldrassil,54.91,96.25,100 >>Pegue o Barco para Teldrassil
step
    #completewith next
    .goto Teldrassil,55.52,93.68,60,0
    .goto Teldrassil,56.80,92.90,40,0
    .goto Teldrassil,57.47,92.97,20,0
    .goto Teldrassil,58.40,94.01,20 >>Voe para |cRXP_FRIENDLY_Vesprystus|r
step
    .goto Teldrassil,58.40,94.01
    >>Fale com |cRXP_FRIENDLY_Vesprystus|r
    .fp Rut'theran >>Aprenda a rota de voo da Vila de Rut'theran
    .target Vesprystus
step
    #completewith next
    .goto 1438,55.885,89.350
    .zone Darnassus >>Passe através do portal roxo para Darnassus
step
    #completewith next
    .goto Darnassus,37.94,48.14,30,0
    .goto Darnassus,38.20,65.96,30,0
    .goto Darnassus,36.79,72.44,30,0
    .goto Darnassus,31.24,84.49,20 >>Voe para |cRXP_FRIENDLY_Greywhisker|r
step
    .goto Darnassus,31.24,84.49
    >>Fale com |cRXP_FRIENDLY_Greywhisker|r
    .turnin 741,3 >>Entregue The Absent Minded Prospector
    .accept 942 >>Aceite O Prospector Distraído
    .target Chief Archaeologist Greywhisker

]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Alliance Mage
#name 20-22 Aventura Redridge 1 Mago AdE
#version 2
#group ADV AdE Maga da Aliança
#defaultfor Human Mage/Gnome Mage
#next 22-26 ADV Pantanal 1 Mago AdE

step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Ventobravo
    .zoneskip Stormwind City
step
    .goto Stormwind City,55.46,65.26
    >>Fale com |cRXP_FRIENDLY_Keldric|r através da parede
    .vendor 1257 >>Comerciante Lixo. |cRXP_BUY_Compre|r |T134830:0|t[Poção de Cura Menor] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Orlande Bórgia
step
    #completewith Bank
    .goto Stormwind City,55.30,68.16,10 >>Entre no Banco de Ventobravo
step
    #sticky
    #label Bank1
    .goto Stormwind City,57.03,72.97
    >>Fale com |cRXP_FRIENDLY_Newton|r
    .bankwithdraw 4371,1941,1711,1478,1712,3012,1180,1181,3013,2998 >>Retire os seguintes itens do seu banco:
    >>|T133024:0|t[Tubo de Bronze]
    >>|T134943:0|t[Pergaminhos]
    >>|T132620:0|t[Barril de Merlot]
    >>|T134377:0|t[A Simple Compass]
    .target Newton Burnside
step
    #label Bank
    .goto Stormwind City,57.03,72.97
    >>Fale com |cRXP_FRIENDLY_Newton|r
    >>|cRXP_WARN_NOTA: Você precisa de 12 pilhas de cada tecido (|r|T132911:0|t[Lã]|cRXP_WARN_,|r |T132905:0|t[Seda]|cRXP_WARN_,|r |T132892:0|t[Magitrama]|cRXP_WARN_,|r e |T132903:0|t[Runatrama]|cRXP_WARN_) para efetuar as entregas de tecido depois. Você obterá estes naturalmente ao subir de nível|r
    .bankdeposit 17056,2592,1015,4654 >>Deposite os itens a seguir no banco:
    >>|T132917:0|t[Pena de Luz]
    >>|T132911:0|t[Lã]
    >>|T133970:0|t[Lombo de Lobo Magro]
    >>|T134431:0|t[Fóssil Misterioso]
    .target Newton Burnside
step
    #completewith next
    #requires Bank1
    .goto Stormwind City,52.16,61.44,12,0
    .goto Stormwind City,49.41,63.41,12,0
    .goto Stormwind City,51.16,68.33,12 >>Viaje para |cRXP_FRIENDLY_Roberto|r
step
    #requires Bank1
    .goto Stormwind City,52.05,67.96
    >>Entre no prédio
    >>Fale com |cRXP_FRIENDLY_Roberto|r
    >>|cRXP_BUY_Compre um|r |T132620:0|t[Cask of Merlot] |cRXP_BUY_dele|r
    .collect 1941,1,116,1 --Cask of Merlot
    .target Roberto Pupellyverbos
step
    #completewith next
    #requires Bank1
    .goto Stormwind City,51.68,59.86,8,0
    .goto Stormwind City,51.83,60.41,4,0
    .goto Stormwind City,51.59,60.15,6,0
    .goto Stormwind City,39.17,76.58,12,0
    >>|cRXP_WARN_Suba na tocha, depois desça para ficar embaixo de Ventobravo|r
    >>|cRXP_WARN_Com Sombras em "Justo" ou "Baixo", entre no meio dos pés de Derek the Dinosaur (a parte mais clara da terra) bem antes do vazio azul, depois caminhe reto para frente|r
    >>|cRXP_WARN_Nota: há uma pequena chance de morte ao usar este método. Você também pode caminhar até a Torre do Mago normalmente se preferir|r
    .link https://youtu.be/gV8-wgQEomc >>https://youtu.be/gV8-wgQEomc >> CLIQUE AQUI para o guia
    .goto Stormwind City,38.61,79.39,10 >>Voe para |cRXP_FRIENDLY_Larimaine|r
step
    #requires Bank1
    .goto Stormwind City,39.69,79.56
    >>Fale com |cRXP_FRIENDLY_Larimaine|r
    .train 3561 >>Treine [Teleporte: Ventobravo]
    >>Custo Total: 20s
    .target Larimaine Purdue
step
    .goto Stormwind City,38.61,79.39
    >>Fale com |cRXP_FRIENDLY_Jennea|r
    .trainer >>Aprenda seus feitiços de classe (Lampejo, Evocação, Armadura Gélida r3, Escudo de Mana, Conjurar Água r3)
    >>|cRXP_WARN_NÃO treine Nevasca ainda|r
    >>Custo Total: 1g
    .target Jennea Cannon
step
    #completewith Charys
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Saia da Torre do Mago
    .goto Stormwind City,32.16,79.84,10 >>Vá para |cRXP_FRIENDLY_Charys|r
step
    .goto Stormwind City,32.16,79.84
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Compre 2|r |T134419:0|t[Runa de Teleporte]|cRXP_BUY_,|r |T134851:0|t[Mana Inferior Potions]|cRXP_BUY_,|r |T134831:0|t[Cura Potions]|cRXP_BUY_, e um|r |T132515:0|t[Tecido Belt] |cRXP_BUY_dela (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 18s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Andréa Iserian
    .itemcount 4371,1
step
    #label Charys
    .goto Stormwind City,32.16,79.84
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    >>|cRXP_BUY_Compre dois|r |T134419:0|t[Runa de Teleporte]|cRXP_BUY_,|r |T134851:0|t[Mana Inferior Potions]|cRXP_BUY_,|r |T134831:0|t[Cura Potions]|cRXP_BUY_, e um|r |T132515:0|t[Tecido Belt] |cRXP_BUY_dela (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 26s 31c|r
    .collect 17031,2,344,1 --Rune of Teleportation (2)
    .target Andréa Iserian
    .itemcount 4371,<1
step
    #completewith Adair
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Vá para |cRXP_FRIENDLY_Adair|r
step
    .goto Stormwind City,41.57,65.46
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre itens sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 18s 31c|r
    .money <0.1831
    .target Adair Gilroy
step
    #label Adair
    .goto Stormwind City,41.57,65.46
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre itens sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 26s 31c|r
    .money <0.2631
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>Corra pela borda da parede em vez de dar a volta
step
    .goto Stormwind City,45.70,38.42
    >>Fale com |cRXP_FRIENDLY_Kristoff|r
    .accept 343 >>Aceite Speaking of Fortitude
    .target Brother Kristoff
step
    #completewith next
    .goto Stormwind City,47.85,32.67,15,0
    .goto Stormwind City,47.96,31.15,12,0
    .goto Stormwind City,49.18,30.29,12 >>Viaje para |cRXP_FRIENDLY_Baros|r
step
    .goto Stormwind City,49.18,30.29
    >>Entre no prédio
    >>Fale com |cRXP_FRIENDLY_Baros|r
    .turnin 399 >>Entregue Humilde Beginnings
    .target Baros Alexston
step
    .goto Stormwind City,55.25,7.07
    >>Fale com |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
step
    #completewith next
    .goto Stormwind City,69.02,28.39,30,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,74.19,7.45,12 >>Viaje para |cRXP_FRIENDLY_Milton|r
step
    .goto Stormwind City,74.19,7.45
    >>Fale com |cRXP_FRIENDLY_Milton|r
    .turnin 343 >>Entregue Speaking of Fortitude
    .accept 344 >>Aceite Irmão Paxeco
    .target Milton Sheaf
step
    #completewith next
    .goto Stormwind City,70.34,11.47,20,0
    .goto Stormwind City,69.78,16.58,20,0
    .goto Stormwind City,72.60,23.21,20,0
    .goto Stormwind City,69.20,29.08,30,0
    .goto Stormwind City,61.74,42.34,20,0
    .goto Stormwind City,64.80,60.34,12,0
    .goto Stormwind City,64.17,60.60,12 >>Viaje para |cRXP_FRIENDLY_Felicia|r
step
    .goto Stormwind City,64.17,60.60
    >>Fale com |cRXP_FRIENDLY_Felicia|r
    >>|cRXP_BUY_Compre o|r |T133849:0|t[Objetos de TBC Seasoning Herbs] |cRXP_BUY_dela|r
    .collect 2665,1,90,1 --Stormwind Seasoning Herbs
    .target Felicia Gump
step
    #completewith next
    .goto Stormwind City,64.91,58.48,30,0
    .goto Stormwind City,59.91,51.60,30,0
    .goto Stormwind City,57.83,54.98,30,0
    .goto Stormwind City,63.27,63.43,20,0
    .goto Stormwind City,63.13,65.23,20,0
    .goto Stormwind City,65.94,65.48,12,0
    .goto Stormwind City,65.85,66.00,8,0
    .goto Stormwind City,65.22,75.58,40 >>Desça para a saliência abaixo de |cRXP_FRIENDLY_Dungar|r
step
    #completewith next
    .goto Elwynn Forest,42.96,65.62,30 >>Viaje para o Goldshire Estalagem
step << skip
    #completewith Paxton
    #requires PaxtonT
    .goto Elwynn Forest,32.75,49.52,50,0
    .goto Elwynn Forest,40.63,49.27,20,0
    .goto Elwynn Forest,48.27,41.93,50,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    >>Pegue a Rota da Montanha em direção a |cRXP_FRIENDLY_Paxton|r
    .goto Elwynn Forest,49.61,40.41,10 >>Viaje para |cRXP_FRIENDLY_Paxton|r
step
    .goto Elwynn Forest,44.00,65.69
    >>Fale com |cRXP_FRIENDLY_Dobbins|r
    >>|cRXP_BUY_Compre um|r |T132794:0|t[Skin of Sweet Rum] |cRXP_BUY_dele|r
    .collect 1939,1,116,1 --Skin of Sweet Rum
    .target Barkeep Dobbins
step
    #sticky
    #label FarleyHome
    .goto Elwynn Forest,43.77,65.80,0,0
    >>Fale com |cRXP_FRIENDLY_Farley|r
    .home >>Defina sua Pedra de Regresso para Vila Dourada
    .target Innkeeper Farley
step
    #completewith next
    #requires FarleyHome
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>Viaje para |cRXP_FRIENDLY_Paxton|r
step
    #requires FarleyHome
    .goto Elwynn Forest,49.61,40.41
    >>Fale com |cRXP_FRIENDLY_Paxton|r
    .turnin 344 >>Entregue Irmão Paxeco
    .accept 345 >>Aceite Suprimentos de Tinta
    .target Brother Paxton
step
    #completewith Theo
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,48.28,42.21,10,0
    .goto Elwynn Forest,57.62,51.97,30,0
    .goto Elwynn Forest,64.45,69.10,15 >>Pegue a Rota da Montanha em direção à Torre de Azora
step
    #sticky
    #label Dawn
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Fale com |cRXP_FRIENDLY_Sol|r acima
    .vendor 958 >>|cRXP_BUY_Compre os|r |T134943:0|t[Pergaminhos]|cRXP_BUY_,|r |T134850:0|t[Mana Menor Potions]|cRXP_BUY_, e|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dela (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 11s 38c|r
    .money <0.1138
    .target Dawn Brightstar
    .itemcount 4371,1
step
    #sticky
    #label Dawn2
    .goto Elwynn Forest,64.88,69.19,0,0
    >>Fale com |cRXP_FRIENDLY_Sol|r em cima
    .vendor 958 >>|cRXP_BUY_Compre itens sem inteligência|r |T134943:0|t[Pergaminhos]|cRXP_BUY_,|r |T134850:0|t[Mana Menor Potions]|cRXP_BUY_, e|r |T134830:0|t[Lesser Cura Potions] |cRXP_BUY_dela (se estiverem disponíveis)|r
    >>|cRXP_WARN_NÃO vá abaixo de 19s 38c|r
    .money <0.1938
    .target Dawn Brightstar
    .itemcount 4371,<1
step
    #label Theo
    .goto Elwynn Forest,65.22,69.71
    >>Vá para cima
    >>Fale com |cRXP_FRIENDLY_Teócrito|r
    .accept 94 >>Aceite A Olho Vigilante
    .target Theocritus
step
    #requires Dawn
step
    #completewith next
    #requires Dawn2
    .goto Duskwood,73.79,45.98,20,0
    .goto Duskwood,74.01,45.36,10 >>Vá para dentro da Estalagem
step
    #requires Dawn2
    .goto Duskwood,73.81,44.02
    >>Fale com |cRXP_FRIENDLY_Hann|r
    >>|cRXP_BUY_Compre a|r |T132798:0|t[Garrafa de Pinga] |cRXP_BUY_dele|r
    .collect 1942,1,116,1 --Bottle of Moonshine (1)
    .target Barkeep Hann
step
    #completewith Viktori
    .goto Duskwood,74.01,45.36,10,0
    .goto Duskwood,73.79,45.98,10 >>Saia da Estalagem
step
    #completewith next
    .goto Duskwood,75.22,48.26,12 >>Entre no prédio
step
    .goto Duskwood,75.34,48.74
    >>Fale com |cRXP_FRIENDLY_Elaine|r
    .accept 163 >>Aceite Monte Corvo
    .accept 164 >>Aceite Entregas a Sven
    .accept 165 >>Aceite O Eremita
    .target Elaine Carevin
step
    .goto Duskwood,78.00,48.33
    >>Fale com |cRXP_FRIENDLY_Herble|r
    .vendor 3133 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Herble Baubbletump
    .itemcount 4371,<1
step
    .goto Duskwood,79.78,48.06
    >>Fale com |cRXP_FRIENDLY_Viktori|r
    .accept 174 >>Aceite Ora (direis) ouvir estrelas!
    .turnin 174 >>Entregue Olhe para as Estrelas
    .accept 175 >>Aceite Ora (direis) ouvir estrelas!
    .target Viktori Prism'Antras
    .itemcount 4371,1
step
    #label Viktori
    .goto Duskwood,79.78,48.06
    >>Fale com |cRXP_FRIENDLY_Viktori|r
    .accept 175 >>Aceite Ora (direis) ouvir estrelas!
    .target Viktori Prism'Antras
    .isQuestTurnedIn 174
step
    .goto Duskwood,81.46,59.02
    >>Fale com |cRXP_FRIENDLY_Mary|r
    .turnin 175 >>Entregue Ora (direis) ouvir estrelas!
    .accept 177 >>Aceite Olhe para as Estrelas
    .target Blind Mary
    .isQuestTurnedIn 174
step
    .goto Duskwood,77.48,44.29
    >>Fale com |cRXP_FRIENDLY_Felicia|r
    .fp Duskwood >>Aprenda a rota de voo para Floresta do Crepúsculo
    .target Felicia Mane
step
    #completewith Kzixx
    .goto Duskwood,76.66,23.49,60,0
    .goto Duskwood,81.82,19.76,20 >>Vá para |cRXP_FRIENDLY_Kzixx|r
step
    .goto Duskwood,81.82,19.76
    >>Fale com |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Compre|r |T134851:0|t[Poções de Mana Inferiores] |cRXP_BUY_e|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4827,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>Fale com |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Compre|r |T134851:0|t[Poções de Mana Inferiores] |cRXP_BUY_e|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4828,1
    .target Kzixx
step
    .goto Duskwood,81.82,19.76
    >>Fale com |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Compre|r |T134851:0|t[Poções de Mana Inferiores] |cRXP_BUY_e|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4829,1
    .target Kzixx
step
    #label Kzixx
    .goto Duskwood,81.82,19.76
    >>Fale com |cRXP_FRIENDLY_Kzixx|r
    .vendor 3134 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions]|cRXP_BUY_,|r |T134831:0|t[Cura Potions]|cRXP_BUY_, e um|r |T132515:0|t[Cinturão de Tecido] |cRXP_BUY_dele (se estiverem disponíveis e se necessário)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Kzixx
step
    #completewith Gnolls
    >>AdE |cRXP_ENEMY_Tarantulas|r. Saqueie-os para |cRXP_LOOT_Crisp Aranha Carne|r
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r e |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls
    >>AdE |cRXP_ENEMY_Tarantulas|r. Saqueie-os para |cRXP_LOOT_Crisp Aranha Carne|r
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Fale com |cRXP_FRIENDLY_Parker|r
    .accept 244 >>Aceite Encroaching Gnolls
    .target Guard Parker
step << skip
    #label AoE1
    .goto Redridge Mountains,15.73,62.47,60 >>AdE os |cRXP_ENEMY_Redridge Mongrels|r e os |cRXP_ENEMY_Redridge Thrashers|r
    .isOnQuest 244
step << skip
    #completewith Gnolls
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r e |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step << skip
    #completewith next
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,50
step
    #label Gnolls
    .goto Redridge Mountains,30.74,59.99
    >>Fale com |cRXP_FRIENDLY_Feldon|r
    .turnin 244 >>Entregue Encroaching Gnolls
    .accept 246 >>Aceite Assessing the Ameaça
    .target Deputy Feldon
step
    .goto Redridge Mountains,30.59,59.40
    >>Fale com |cRXP_FRIENDLY_Ariena|r
    .fp Redridge Mountains >>Aprenda a rota de voo para Montanhas Cristarrubra
step
    >>Fale com |cRXP_FRIENDLY_Marris|r e |cRXP_FRIENDLY_Oslow|r
    .accept 20 >>Aceite Ameaça Pedranegra
    .target +Marshal Marris
    .goto Redridge Mountains,33.51,48.96
    .accept 125 >>Aceite As Ferramentas Perdidas
    .turnin 345 >>Entregue Suprimentos de Tinta
    .accept 347 >>Aceite Minério de Rethban
    .goto Redridge Mountains,32.14,48.64
    .target +Foreman Oslow
step
    .goto Redridge Mountains,29.89,47.36
    >>Fale com |cRXP_FRIENDLY_Karen|r
    >>|cRXP_BUY_Compre uma|r |T134708:0|t[Picareta de Mineração] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Você vai precisar disso mais tarde|r
    .collect 2901,1,125,1 --Mining Pick (1)
    .target Karen Taylor
step
    >>Fale com |cRXP_FRIENDLY_Conacher|r
--  .accept 120 >>Accept Messenger to Stormwind
--  .goto Redridge Mountains,29.99,44.45
    .accept 91 >>Aceite A Lei de Salomão
    .goto Redridge Mountains,29.72,44.26
--  .target Magistrate Solomon
    .target Bailiff Conacher
step
    >>Fale com |cRXP_FRIENDLY_Baren|r e o |cRXP_PICK_Wanted Poster|r
    .accept 127 >>Aceite O lago está para peixe
    .goto Redridge Mountains,27.72,47.38
    .accept 180 >>Aceite Wanted: General Mordente
    .goto Redridge Mountains,26.75,46.42
    .target Dockmaster Baren
step
    #sticky
    #label Darcy1
    .goto Redridge Mountains,26.92,44.95,0,0
    >>Vá para dentro da estalagem
    >>Fale com |cRXP_FRIENDLY_Darcy|r
    .accept 129 >>Aceite Um Almoço Grátis
    .target Darcy
step
    .goto Redridge Mountains,26.49,43.95
    >>Entre na Estalagem
    >>Fale com |cRXP_FRIENDLY_Daniels|r
    .accept 116 >>Aceite Tempos Difíceis
    .turnin 116 >>Entregue Tempos Difíceis
    .target Barkeep Daniels
step
    .goto Redridge Mountains,26.47,45.33
    >>Entre na Estalagem
    >>Fale com |cRXP_FRIENDLY_Wiley|r pulando do corrimão
    .turnin 65 >>Entregue A Irmandade Défias
--  .accept 132 >>Accept The Defias Brotherhood
    .target Wiley the Black
step
    .goto Redridge Mountains,29.32,53.64
    >>Fale com Shawn
    .accept 3741 >>Aceite O Colar de Nida
    .target Shawn
step
    .goto Redridge Mountains,31.29,54.27,90,0
    .goto Redridge Mountains,27.80,56.05,90,0
    .goto Redridge Mountains,26.56,50.63,90,0
    .goto Redridge Mountains,23.96,55.17,90,0
    .goto Redridge Mountains,19.16,51.75,90,0
    .goto Redridge Mountains,31.12,54.21,90,0
    .goto Redridge Mountains,34.03,55.34,90,0
    .goto Redridge Mountains,38.09,54.49
    >>|cRXP_WARN_Nadar debaixo d'água e verifique os locais de aparecimento. Existem 8 locais com 2 aparecimentos simultaneamente|r
    >>Abra a |cRXP_PICK_Glinting Mud|r. Saque-a para |cRXP_LOOT_Colar de Nida|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 3741,1 --Hilary's Necklace (1)
step
    .goto Redridge Mountains,29.24,53.63
    >>Fale com |cRXP_FRIENDLY_Nida|r
    .turnin 3741 >>Entregue O Colar de Nida
    .target Hilary
step
    #completewith Gnolls2
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r e |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob Great Goretusk
    .skill cooking,50,1
step
    #completewith next
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
    .skill cooking,<50,1
step
    #label Gnolls2
    .goto Redridge Mountains,15.73,62.47
    >>AdE os |cRXP_ENEMY_Redridge Mongrels|r e os |cRXP_ENEMY_Redridge Thrashers|r
    .complete 246,1,1 --Redridge Mongrel (1)
    .mob Redridge Mongrel
    .mob Redridge Thrasher
step
    #completewith Gnolls3
    >>AdE |cRXP_ENEMY_Tarantulas|r. Saqueie-os para |cRXP_LOOT_Crisp Aranha Carne|r
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r e |T133970:0|t|cRXP_LOOT_[Naco de Carne de Javali]|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .collect 769,50,90,1,1 --Chunk of Boar Meat (50)
    .mob +Great Goretusk
    .skill cooking,50,1
step
    #completewith Gnolls3
    >>AdE os |cRXP_ENEMY_Tarantulas|r. Saqueie-os para |cRXP_LOOT_Crisp Aranha Carne|r
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
    .mob +Tarantula
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob +Great Goretusk
    .skill cooking,<50,1
step
    .goto Redridge Mountains,15.52,72.58,60,0
    .goto Redridge Mountains,14.87,70.30,60,0
    .goto Redridge Mountains,16.93,70.20
    >>Fale com |cRXP_FRIENDLY_Parker|r
    .turnin 129 >>Entregue Grátis Lunch
    .accept 130 >>Aceite Visit the Herbalist
    .target Guard Parker
step
    #label Gnolls3
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01,60,0
    .goto Redridge Mountains,29.40,83.93,60,0
    .goto Redridge Mountains,30.95,84.10,60,0
    .goto Redridge Mountains,32.26,82.83,60,0
    .goto Redridge Mountains,34.60,82.99,60,0
    .goto Redridge Mountains,43.37,71.01
    >>AdE os |cRXP_ENEMY_Redridge Mongrels|r, os |cRXP_ENEMY_Redridge Thrashers|r e os |cRXP_ENEMY_Redridge Poachers|r
    >>|cRXP_WARN_Lembre-se de manter na zona morta os|r |cRXP_ENEMY_Redridge Poachers|r
    .complete 246,1 --Redridge Mongrel (10)
    .mob +Redridge Mongrel
    .complete 246,2 --Redridge Poacher (6)
    .mob +Redridge Poacher
step
    .goto Redridge Mountains,30.74,59.99
    >>Fale com |cRXP_FRIENDLY_Feldon|r
    .turnin 246 >>Entregue Assessing the Ameaça
    .target Deputy Feldon
step
    .goto Redridge Mountains,41.52,54.68,-1
    >>Mergulhe
    >>Abra o |cRXP_PICK_Sunken Baú|r. Pegue |cRXP_LOOT_Oslow's Caixa de Ferramentas|r
    >>|cRXP_WARN_Tempo de lançamento de 5 segundos|r
    .complete 125,1 --Oslow's Toolbox (1)
step
    #completewith next
    .goto Redridge Mountains,40.30,45.98,60,0
    >>AdE os |cRXP_ENEMY_Murloc Flesheaters|r e os |cRXP_ENEMY_Murloc Batedores|r. Saqueie-os para obter alguns dos |cRXP_LOOT_Spotted Sunfish|r e |cRXP_LOOT_Murloc Fins|r
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .mob Murloc Flesheater
    .mob Murloc Scout
step
    .goto Redridge Mountains,32.14,48.63
    >>Fale com |cRXP_FRIENDLY_Oslow|r
    .turnin 125 >>Entregue Perdida Ferramentas
    .accept 89 >>Aceite The Everstill Ponte
    .target Foreman Oslow
step
    .goto Redridge Mountains,30.83,46.49
    >>Fale com |cRXP_FRIENDLY_Dorin|r
    .vendor >>Comerciante Lixo
    .target Dorin Songblade
    .isOnQuest 89
step << skip
    #completewith next
    .goto Redridge Mountains,29.24,45.40,10,0
    .goto Redridge Mountains,28.89,44.87,8 >>Entre no Town Hall
step
    .goto Redridge Mountains,37.16,45.20,60,0
    .goto Redridge Mountains,38.36,41.34,60,0
    .goto Redridge Mountains,38.89,31.72,60,0
    .goto Redridge Mountains,43.25,34.03,60,0
    .goto Redridge Mountains,47.37,34.77,60,0
    .goto Redridge Mountains,55.35,45.02,60,0
    .goto Redridge Mountains,57.02,51.01,60,0
    .goto Redridge Mountains,56.24,53.93,60,0
    .goto Redridge Mountains,58.38,53.56,60,0
    .goto Redridge Mountains,58.47,44.61,60,0
    .goto Redridge Mountains,59.11,43.97,60,0
    .goto Redridge Mountains,59.74,42.01,60,0
    .goto Redridge Mountains,62.34,41.76,60,0
    .goto Redridge Mountains,62.56,45.36,60,0
    >>AdE os |cRXP_ENEMY_Blackrock Outrunners|r, os |cRXP_ENEMY_Blackrock Renegades|r e os |cRXP_ENEMY_Blackrock Grunts|r. Saqueie-os pelos |cRXP_LOOT_Battleworn Machados|r
    >>AdE os |cRXP_ENEMY_Murloc Tidecallers|r e os |cRXP_ENEMY_Murloc Batedores|r. Saqueie-os pelos |cRXP_LOOT_Spotted Sunfish|r e |cRXP_LOOT_Murloc Fins|r
    >>AdE os |cRXP_ENEMY_Dire Condors|r. Saqueie-os pelos |cRXP_LOOT_Tough Condor Carne|r
    >>AdE os |cRXP_ENEMY_Greater Tarantulas|r. Saqueie-os pelos |cRXP_LOOT_Crisp Aranha Carne|r
    >>AdE os |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r
    >>AdE os |cRXP_ENEMY_Redridge Mystics|r e os |cRXP_ENEMY_Redridge Brutes|r. Saqueie-os pelos |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    >>|cRXP_WARN_Cuidado enquanto |cRXP_ENEMY_Blackrock Outrunners|r lançam|r |T132149:0|t[Rede]|cRXP_WARN_, |cRXP_ENEMY_Atroz Condors|r lançam|r |T132154:0|t[Derrubar]
    .complete 20,1 --Blackrock Axe (10)
#loop
	.line Redridge Mountains,37.16,45.20,38.36,41.34,40.09,40.64,42.89,39.26,59.36,44.56,59.79,42.05,62.58,41.46,62.57,45.48,59.36,44.56
	.goto Redridge Mountains,37.16,45.20,30,0
	.goto Redridge Mountains,38.36,41.34,30,0
	.goto Redridge Mountains,40.09,40.64,30,0
	.goto Redridge Mountains,42.89,39.26,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
	.goto Redridge Mountains,59.79,42.05,30,0
	.goto Redridge Mountains,62.58,41.46,30,0
	.goto Redridge Mountains,62.57,45.48,30,0
	.goto Redridge Mountains,59.36,44.56,30,0
    .complete 127,1 --Spotted Sunfish (10)
    .collect 1468,8,150,1 --Murloc Fin (8)
    .goto Redridge Mountains,58.06,52.01,40,0
    .goto Redridge Mountains,57.08,51.03,40,0
    .goto Redridge Mountains,56.12,53.55,40,0
    .goto Redridge Mountains,58.06,52.01
    .collect 1080,5,92,1 --Tough Condor Meat (5)
#loop
	.line Redridge Mountains,43.25,34.03,47.37,34.77,47.37,34.77,49.97,33.60,51.90,39.75,54.81,40.66,54.70,44.93,57.63,46.48
	.goto Redridge Mountains,43.25,34.03,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,47.37,34.77,30,0
	.goto Redridge Mountains,49.97,33.60,30,0
	.goto Redridge Mountains,51.90,39.75,30,0
	.goto Redridge Mountains,54.81,40.66,30,0
	.goto Redridge Mountains,54.70,44.93,30,0
	.goto Redridge Mountains,57.63,46.48,30,0
    .collect 1081,5,92,1 --Crisp Spider Meat (5)
#loop
	.line Redridge Mountains,52.26,36.56,54.08,38.28,54.98,40.31,56.79,41.36,57.26,47.60,54.76,45.58,52.67,42.73,50.50,41.55,52.26,36.56
	.goto Redridge Mountains,52.26,36.56,30,0
	.goto Redridge Mountains,54.08,38.28,30,0
	.goto Redridge Mountains,54.98,40.31,30,0
	.goto Redridge Mountains,56.79,41.36,30,0
	.goto Redridge Mountains,57.26,47.60,30,0
	.goto Redridge Mountains,54.76,45.58,30,0
	.goto Redridge Mountains,52.67,42.73,30,0
	.goto Redridge Mountains,50.50,41.55,30,0
	.goto Redridge Mountains,52.26,36.56,30,0
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .disablecheckbox
    .complete 89,1 --Iron Pike (5)
    .disablecheckbox
    .complete 89,2 --Iron Rivet (5)
    .disablecheckbox
    .goto Redridge Mountains,38.89,31.72
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
    .goto Redridge Mountains,36.64,37.01,60,0
    .goto Redridge Mountains,32.21,40.09,60,0
    >>AdE |cRXP_ENEMY_Redridge Mystics|r e |cRXP_ENEMY_Redridge Brutes|r. Saqueie-os para os |cRXP_LOOT_Iron Pikes|r e os |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,22.68,43.83
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
    .goto Redridge Mountains,21.86,46.33
    >>Fale com |cRXP_FRIENDLY_Martie|r
    .turnin 130 >>Entregue Visit the Herbalist
    .accept 131 >>Aceite Entregando Daffodils
    .accept 34 >>Aceite O Penetra
    .target Martie Jainrose
step
    #completewith next
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    .goto Redridge Mountains,15.66,49.31
    >>Mate |cRXP_ENEMY_Ronquifuça|r
    >>|cRXP_WARN_Arraste-a em direção à cerca ao norte de |cRXP_FRIENDLY_Lamar|r. Salte para frente e para trás para colocá-la em um lugar seguro sem receber nenhum dano|r
    >>Cuidado enquanto |cRXP_ENEMY_Ronquifuça|r lança |T132337:0|t[carga] e |T136025:0|t[Tremor]
    .complete 34,1 --Bellygrub's Tusk (1)
    .mob Bellygrub
    .target Lamar Veisilli
step
    .goto Redridge Mountains,21.86,46.33
    >>Fale com |cRXP_FRIENDLY_Martie|r
    .turnin 34 >>Entregue O penetra
    .target Martie Jainrose
step
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08,60,0
    .goto Redridge Mountains,17.47,43.62,60,0
    .goto Redridge Mountains,20.92,39.37,60,0
    .goto Redridge Mountains,17.72,55.71,60,0
    .goto Redridge Mountains,16.09,53.08
    >>AdE |cRXP_ENEMY_Great Goretusks|r. Saqueie-os para |cRXP_LOOT_Great Goretusco Snouts|r
    .collect 2296,5,92,1 --Great Goretusk Snout (5)
    .mob Great Goretusk
step
    #completewith next
    .goto Redridge Mountains,21.35,36.34,60,0
    >>AdE |cRXP_ENEMY_Redridge Mystics|r e |cRXP_ENEMY_Redridge Brutes|r. Saqueie-os para os |cRXP_LOOT_Iron Pikes|r e os |cRXP_LOOT_Iron Rivets|r
    .complete 89,1 --Iron Pike (5)
    .complete 89,2 --Iron Rivet (5)
    .mob Redridge Mystic
    .mob Redridge Brute
step
    .goto Redridge Mountains,19.50,31.91,60,0
    .goto Redridge Mountains,20.58,28.29,40 >>Vá para Rethban Caverns
    .isOnQuest 347
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    >>AdE os |cRXP_ENEMY_Redridge Drudgers|r. Saqueie-os pelos |cRXP_LOOT_Rethban Ore|r, |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    >>AdE os |cRXP_ENEMY_Redridge Bashers|r. Saqueie-os pelos |cRXP_LOOT_Iron Pikes|r e |cRXP_LOOT_Iron Rivets|r
    >>Extraia os |cRXP_PICK_Copper Veins|r na caverna. Saqueie-os pelos |cRXP_LOOT_Rethban Ore|r
    .complete 347,1 --Rethban Ore (5)
    .mob +Redridge Drudger
    .complete 89,1 --Iron Pike (5)
    .mob +Redridge Basher
    .complete 89,2 --Iron Rivet (5)
    .mob +Redridge Basher
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+14365 >>Farme até 14365+/25200xp
    .isQuestAvailable 92
step
#loop
	.line Redridge Mountains,18.95,24.50,21.62,23.72,21.89,15.06,20.21,13.25,18.82,15.03,16.06,17.08,17.48,19.55,16.05,21.04,18.95,24.50
	.goto Redridge Mountains,18.95,24.50,20,0
	.goto Redridge Mountains,21.62,23.72,20,0
	.goto Redridge Mountains,21.89,15.06,20,0
	.goto Redridge Mountains,20.21,13.25,20,0
	.goto Redridge Mountains,18.82,15.03,20,0
	.goto Redridge Mountains,16.06,17.08,20,0
	.goto Redridge Mountains,17.48,19.55,20,0
	.goto Redridge Mountains,16.05,21.04,20,0
	.goto Redridge Mountains,18.95,24.50,20,0
    .xp 21+15715 >>Farme até 15715+/25200xp
    .isQuestTurnedIn 92
step << skip
    #completewith next
    .goto Redridge Mountains,18.79,13.84,-1
    .goto Redridge Mountains,22.04,17.14,-1
    .goto Redridge Mountains,18.40,24.13,-1
    .goto Redridge Mountains,21.29,24.06,-1
    .goto Redridge Mountains,16.58,20.97,-1
    .goto Redridge Mountains,33.82,48.07,30 >>Pule para fora da caverna (no lado Leste) de volta para Lakeshire
step
    #completewith next
    .subzone 69 >>Volte para Lakeshire
step
    >>Fale com |cRXP_FRIENDLY_Marris|r e |cRXP_FRIENDLY_Oslow|r
    .turnin 20 >>Entregue Ameaça Blackrock
    .accept 19 >>Aceite Tharil'zun
    .target +Marshal Marris
    .goto Redridge Mountains,33.51,48.96
    .turnin 89,1 >>Entregue The Everstill Ponte
    .goto Redridge Mountains,32.14,48.64
    .target +Foreman Oslow
step
    .goto Redridge Mountains,30.94,47.24
    >>Fale com |cRXP_FRIENDLY_Verner|r
    .accept 118 >>Aceite The Price of Shoes
    .target Verner Osgood
step
    .goto Redridge Mountains,27.72,47.38
    >>Fale com |cRXP_FRIENDLY_Baren|r
    .turnin 127 >>Entregue O lago está para peixe
    .accept 150 >>Aceite Caçadores de murlocs
    .turnin 150 >>Entregue Caçadores de Murlocs
    .goto Redridge Mountains,27.72,47.38
    .target Dockmaster Baren
step
    #sticky
    #label Kimberly
    .goto Redridge Mountains,27.08,45.54,0,0
    .vendor >>Itens para Venda. Você pode vender a |T134708:0|t[Picareta de Mineração] agora se quiser
    .target Kimberly Hiett
step
    .goto Redridge Mountains,26.92,44.95
    >>Entre na Estalagem
    >>Fale com |cRXP_FRIENDLY_Darcy|r
    .turnin 131 >>Entregue Entregando Daffodils
    .target Darcy
step
    #completewith next
    .goto Redridge Mountains,26.52,46.38,12,0
    .goto Redridge Mountains,22.86,44.57,12,0
    >>Vá em direção a |cRXP_FRIENDLY_Breanna|r
step
    .goto Redridge Mountains,22.68,43.83
    >>Entre
    >>Fale com |cRXP_FRIENDLY_Breanna|r
    .accept 92 >>Aceite Gulache de Cristarrubra
    .turnin 92 >>Entregue Gulache de Cristarrubra
    .target Chef Breanna
step
    #completewith next
    .hs >>Volte para Goldshire
step
    .goto Elwynn Forest,41.71,65.55
    >>Fale com |cRXP_FRIENDLY_Argus|r
    .turnin 118 >>Entregue The Price of Shoes
    .accept 119 >>Aceite Devolver to Verner
    .target Smith Argus
step
    #completewith next
    .goto Elwynn Forest,48.79,41.56,10,0
    .goto Elwynn Forest,49.26,40.69,10,0
    .goto Elwynn Forest,49.61,40.41,10 >>Vá em direção a |cRXP_FRIENDLY_Paxton|r
step
    .goto Elwynn Forest,49.61,40.41
    >>Fale com |cRXP_FRIENDLY_Paxton|r
    .turnin 347 >>Entregue Rethban Ore
    .accept 346 >>Entregue para Kristoff
    .target Brother Paxton
step
    #completewith CharysEnd
    .cast 3561 >>Use |T135763:0|t[Teleporte: Ventobravo]
    .zoneskip Stormwind City
step
    #completewith CharysEnd
    >>|cRXP_WARN_===ATENÇÃO===|r
    +|cRXP_WARN_Mude para o spec Gélido AdE|r
    .xp <22,1
step
    .goto Stormwind City,38.23,81.86
    >>Fale com |cRXP_FRIENDLY_Dumas|r
    .train 10 >>Trem Nevasca
    .target Maginor Dumas
    .xp <22,1
step
    #completewith CharysEnd
    .goto Stormwind City,36.73,82.44,10,0
    .goto Stormwind City,37.91,81.92,10,0
    .goto Stormwind City,38.10,80.93,8,0
    .goto Stormwind City,37.49,81.35,6,0
    .goto Stormwind City,38.46,80.61,8,0
    .goto Stormwind City,33.65,81.58,15,0
    .goto Stormwind City,31.12,79.42,15,0
    .goto Stormwind City,32.07,81.50,10,0
    .goto Stormwind City,32.63,80.62,8,0
    >>Saia da Torre do Mago
    .goto Stormwind City,32.16,79.84,10 >>Vá para |cRXP_FRIENDLY_Charys|r
step
    #completewith BankDeposit
    +|cRXP_WARN_Não desça abaixo de 1g 43s 30c|r
    .xp >22,1
step
    .goto Stormwind City,32.16,79.84
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions] |cRXP_BUY_e|r |T134831:0|t[Cura Potions] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4827,1
    .target Andréa Iserian
step
    .goto Stormwind City,32.16,79.84
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Poções de Mana Inferiores] |cRXP_BUY_e|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4828,1
    .target Andréa Iserian
step
    .goto Stormwind City,32.16,79.84
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Poções de Mana Inferiores] |cRXP_BUY_e|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .itemcount 4829,1
    .target Andréa Iserian
step
    #label CharysEnd
    .goto Stormwind City,32.16,79.84
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Charys|r
    .vendor 1307 >>|cRXP_BUY_Compre|r |T134851:0|t[Mana Inferior Potions]|cRXP_BUY_,|r |T134831:0|t[Cura Potions]|cRXP_BUY_, e um|r |T132515:0|t[Cinturão de Tecido] |cRXP_BUY_dele (se estiverem disponíveis e se necessário)|r
    .itemcount 4827,<1
    .itemcount 4828,<1
    .itemcount 4829,<1
    .target Andréa Iserian
step
    #completewith next
    .goto Stormwind City,39.32,71.54,20,0
    .goto Stormwind City,41.06,69.44,20,0
    .goto Stormwind City,44.02,69.81,20,0
    .goto Stormwind City,46.32,66.93,20,0
    .goto Stormwind City,42.45,61.76,20,0
    .goto Stormwind City,41.17,63.74,15,0
    .goto Stormwind City,41.57,65.46,10 >>Vá para |cRXP_FRIENDLY_Adair|r
step
    #label AdairX
    .goto Stormwind City,41.57,65.46
    >>Entre no edifício
    >>Fale com |cRXP_FRIENDLY_Adair|r
    .vendor 1316 >>|cRXP_BUY_Compre itens sem inteligência|r |T134943:0|t[Pergaminhos] |cRXP_BUY_dele (se estiverem disponíveis)|r
    .target Adair Gilroy
step
    #completewith next
    .goto Stormwind City,37.84,58.50,5,0
    .goto Stormwind City,37.81,45.02,20 >>Corra pela borda da parede em vez de dar a volta
step
    .goto Stormwind City,45.70,38.42
    >>Fale com |cRXP_FRIENDLY_Kristoff|r
    .turnin 346 >>Entregue para Kristoff
    .target Brother Kristoff
step
    .goto Stormwind City,55.25,7.07
    >>Fale com |cRXP_FRIENDLY_Billibub|r
    .vendor 5519 >>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Billibub Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith next
    .goto Stormwind City,63.89,8.25,20 >>Vá para o Deeprun Tram
step
    #completewith next
    +|cRXP_WARN_Monte o Deeprun Tram ao conjurar|r |T132816:0|t[Conjurar Água r3]
step
    .zone Ironforge >>Pegue o Deeprun Tram para Ironforge
step
    .goto Ironforge,67.83,42.47
    >>Fale com |cRXP_FRIENDLY_Cogspinner|r
    .vendor 5175>>|cRXP_BUY_Compre um|r [Tubo de Bronze] |cRXP_BUY_com ele se estiver disponível|r
    .target Gearcutter Cogspinner
    .itemcount 4371,<1
    .isQuestAvailable 174
step
    #completewith BankDeposit
    .goto Ironforge,33.44,63.56,30 >>Entre no Banco de Ironforge
step
    .goto Ironforge,35.93,60.13
    >>Fale com |cRXP_FRIENDLY_Bailey|r
    >>|cRXP_WARN_NOTA: Você precisa de 12 pilhas de cada tecido (|r|T132911:0|t[Lã]|cRXP_WARN_,|r |T132905:0|t[Seda]|cRXP_WARN_,|r |T132892:0|t[Magitrama]|cRXP_WARN_,|r e |T132903:0|t[Runatrama]|cRXP_WARN_) para efetuar as entregas de tecido depois. Você obterá estes naturalmente ao subir de nível|r
    .bankdeposit 17056,2592,1015,1083,2665,1922,1284 >>Deposite os itens a seguir no banco:
    >>|T132917:0|t[Pena de Luz]
    >>|T132911:0|t[Lã]
    >>|T133970:0|t[Lombo de Lobo Magro]
    >>|T133277:0|t[Glifo de Azora]
    >>|T133849:0|t[Ervas Temperadas de Ventobravo]
    >>|T133629:0|t[Suprimentos para Sven]
    >>|T132761:0|t[Caixote de Horseshoes]
    .target Bailey Stonemantle
step
    #label BankDeposit
    .goto Ironforge,35.93,60.13
    .bankwithdraw 4654 >>Retire os seguintes itens do seu banco:
    >>|T134431:0|t[Fóssil Misterioso]
    .target Bailey Stonemantle
step
    .goto Ironforge,25.50,7.04
    >>Fale com |cRXP_FRIENDLY_Milstaff|r
    .train 3562 >>Treine [Teleporte: Altaforja]
    .target Milstaff Stormeye
step
    #completewith FlyMene
    >>|cRXP_WARN_===ATENÇÃO===|r
    +|cRXP_WARN_Mude para a especialização Gélido com foco em AdE|r
step
    .goto Ironforge,27.18,8.60
    >>Fale com |cRXP_FRIENDLY_Dink|r
    .train 10 >>Trem Nevasca
    .target Dink
step
    #completewith next
    +|cRXP_WARN_Início conjura constante|r |T132816:0|t[Conjurar Água r3] |cRXP_WARN_para conjurar o máximo de água possível antes de apanhar o voo|r
step
    #completewith next
    #label FlyMene
    .goto Ironforge,55.50,47.74
    >>Fale com |cRXP_FRIENDLY_Gryth|r
    .fly Menethil >>Voe para Menethil Harbor
    .target Gryth Thurden
step
    .zone Wetlands >>Viaje para os Pântanos
]])
