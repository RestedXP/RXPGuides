if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Lança de Gelo - 2 (Elwynn Forest)
#title Lança de Gelo
<< Human Mage SoD


step
    +|cRXP_WARN_Você PRECISA estar no mínimo nível 2 para obter|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_pois é o requisito de nível para obter o|r |T133736:0|t[Compreensão Primer]
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar obter|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .train 401760,1
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Research
    .goto Elwynn Forest,48.33,41.90,15 >>Entre Northshire Abbey
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Research
    .goto 1429,48.79,41.58,12,0
    .goto 1429,48.975,41.146,12,0
    .goto 1429,49.262,40.633,12,0
    .goto 1429,49.510,40.095,6,0
    .goto 1429,49.691,40.230,6,0
    .goto 1429,49.595,40.673,6,0
    .goto 1429,49.324,40.492,6,0
    .goto 1429,49.436,39.881,10,0
    .goto Elwynn Forest,49.661,39.402,12 >>Vá em direção à |cRXP_FRIENDLY_Khelden Bremen|r no andar de cima
    .train 401760,1
    .xp <2,1
step
    #label Research
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaspar Melchior|r dentro
    .accept 77620 >>Aceite Pesquisa de Feitiços
    .target Khelden Bremen
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1429,48.303,42.098,15 >>Saia de Northshire Abbey
    .train 401760,1
    .xp <2,1
step
    #loop
    .goto Elwynn Forest,52.55,48.79,0
    .goto Elwynn Forest,55.43,45.87,0
    .goto Elwynn Forest,52.55,48.79,50,0
    .goto Elwynn Forest,53.89,50.52,50,0
    .goto Elwynn Forest,55.09,49.00,50,0
    .goto Elwynn Forest,55.43,45.87,50,0
    .goto Elwynn Forest,53.86,47.05,50,0
    >>Mate os |cRXP_ENEMY_Defias Capangas|r. Saqueie-os para obter |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    .collect 203751,1,77620,1 -- Spell Notes: CALE ENCI (1)
    .mob Defias Thug
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_to learn|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #label IceLance2
    #completewith Research2
    .goto Elwynn Forest,48.33,41.90,15 >>Entre Northshire Abbey
    .isOnQuest 77620
    .xp <2,1
step
    #optional
    #requires IceLance2
    #completewith Research2
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
    .xp <2,1
step
    #label Research2
    .goto Elwynn Forest,49.661,39.402
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaspar Melchior|r dentro
    .turnin 77620 >>Entregue Pesquisa de Feitiços
    .target Khelden Bremen
    .isQuestComplete 77620
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Lança de Gelo - 2 (Dun Morogh)
#title Lança de Gelo

<< Gnome Mage SoD


step
    +|cRXP_WARN_Você PRECISA estar no mínimo nível 2 para obter|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_pois é o requisito de nível para obter o|r |T133736:0|t[Compreensão Primer]
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar obter|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Dun Morogh >>Vá para Dun Morogh
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.910,69.703,15,0
    .goto 1426,28.835,69.050,10,0
    .goto 1426,28.835,68.702,10,0
    .goto 1426,28.939,68.387,12 >>Entre em Anvilmar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r dentro
    .accept 77667 >>Aceite Pesquisa de Feitiços
    .target Marryk Nurribit
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.751,69.058,12,0
    .goto 1426,28.676,69.669,15 >>Saia de Anvilmar
    .train 401760,1
    .xp <2,1
step
    .goto Dun Morogh,26.733,72.552
    >>Abra o |cRXP_PICK_Baú dos Pedraqueixo|r. Saqueie-o para obter |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    .collect 203751,1,77667,1 -- Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_to learn|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1426,28.676,69.669,15,0
    .goto 1426,28.751,69.058,10,0
    .goto 1426,28.758,68.721,10,0
    .goto 1426,28.645,68.364,12 >>Entre em Anvilmar
    .isQuestComplete 77667
    .xp <2,1
step
    .goto Dun Morogh,28.709,66.366
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Marryk Nurribit|r
    .turnin 77667 >>Entregue Pesquisa de Feitiços
    .target Marryk Nurribit
    .isQuestComplete 77667
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Lança de Gelo - 2 (Durotar)
#title Lança de Gelo

<< Troll Mage SoD


step
    +|cRXP_WARN_Você PRECISA estar no mínimo nível 2 para obter|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_pois é o requisito de nível para obter o|r |T133736:0|t[Compreensão Primer]
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar obter|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .train 401760,1
    .xp >2,1
step
    #completewith next
    .zone Durotar >>Vá para Durotar
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .accept 77643 >>Aceite Pesquisa de Feitiços
    .target Mai'ah
    .xp <2,1
step
    #optional
    #label IceLance1
    #completewith Stashbox
    .goto 1411,45.363,55.673
    .subzone 365 >>Entre na Lâmina Ardente Coven
    .train 401760,1
    .xp <2,1
step
    #optional
    #requires IceLance1
    #completewith Stashbox
    .goto 1411,45.306,55.177,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,43.241,55.384,12,0
    .goto Durotar,43.004,54.456,15 >>Vá para o |cRXP_PICK_Estoque Encharcado|r
    .train 401760,1
    .xp <2,1
step
    #label Stashbox
    .goto Durotar,43.004,54.456
    >>Abra o |cRXP_PICK_Estoque Encharcado|r debaixo da água dentro da caverna. Saqueie-o para obter |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    .collect 203751,1 --Spell Notes: CALE ENCI (1)
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_to learn|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1411,43.241,55.384,12,0
    .goto 1411,44.103,55.254,12,0
    .goto 1411,45.306,55.177,12,0
    .goto 1411,45.245,56.520,15 >>Saia da Lâmina Ardente Coven
    .isQuestComplete 77643
    .subzoneskip 363
    .train 401760,1
    .xp <2,1
step
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77643 >>Entregue Pesquisa de Feitiços
    .target Mai'ah
    .isQuestComplete 77643
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Lança de Gelo - 2 (Tirisfal)
#title Lança de Gelo
<< Undead Mage SoD


step
    +|cRXP_WARN_Você PRECISA estar no mínimo nível 2 para obter|r |T133816:0|t[Gravar Luvas - Lança de Gelo] |cRXP_WARN_pois é o requisito de nível para obter o|r |T133736:0|t[Compreensão Primer]
    >>|cRXP_WARN_Você precisa subir de nível antes de tentar obter|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .train 401760,1
    .xp >2,1
step
    #optional
    #completewith next
    .zone Tirisfal Glades >>Vá para Claras da Tirisfal
    .train 401760,1
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Entre na Capela de Morteiro
    .train 401760,1
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .accept 77671 >>Aceite Pesquisa de Feitiços
    .target Isabella
    .xp <2,1
step
#loop
	.line Tirisfal Glades,36.13,68.74,36.46,69.49,36.85,70.02,37.42,69.58,38.05,69.79,37.91,69.22,38.03,68.77,38.49,68.28,38.72,67.07,38.59,66.25,38.65,65.07,37.62,65.36,36.93,65.38,36.51,65.42,36.85,66.59,37.45,67.95,36.93,68.16,36.13,68.74
	.goto Tirisfal Glades,36.13,68.74,25,0
	.goto Tirisfal Glades,36.46,69.49,25,0
	.goto Tirisfal Glades,36.85,70.02,25,0
	.goto Tirisfal Glades,37.42,69.58,25,0
	.goto Tirisfal Glades,38.05,69.79,25,0
	.goto Tirisfal Glades,37.91,69.22,25,0
	.goto Tirisfal Glades,38.03,68.77,25,0
	.goto Tirisfal Glades,38.49,68.28,25,0
	.goto Tirisfal Glades,38.72,67.07,25,0
	.goto Tirisfal Glades,38.59,66.25,25,0
	.goto Tirisfal Glades,38.65,65.07,25,0
	.goto Tirisfal Glades,37.62,65.36,25,0
	.goto Tirisfal Glades,36.93,65.38,25,0
	.goto Tirisfal Glades,36.51,65.42,25,0
	.goto Tirisfal Glades,36.85,66.59,25,0
	.goto Tirisfal Glades,37.45,67.95,25,0
	.goto Tirisfal Glades,36.93,68.16,25,0
	.goto Tirisfal Glades,36.13,68.74,25,0
    >>Mate os |cRXP_ENEMY_Scarlet Initiates|r. Saque-os para o |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: ALEG DEN AÇOL]|r
    .collect 203751,1,77671,1 --Spell Notes: CALE ENCI (1)
    .mob Scarlet Initiate
    .train 401760,1
    .xp <2,1
step
    .train 401760 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: ALEG DEN AÇOL]|r |cRXP_WARN_to learn|r |T133816:0|t[Gravar Luvas - Lança de Gelo]
    .use 203751
    .itemcount 203751,1 -- Spell Notes: CALE ENCI (1)
    .xp <2,1
step
    #optional
    #completewith next
    .goto 1420,31.324,66.173,15 >>Entre na Capela de Morteiro
    .isQuestComplete 77671
    .xp <2,1
step
    .goto 1420,30.931,66.060
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Isabella|r
    .turnin 77671 >>Entregue Pesquisa de Feitiços
    .target Isabella
    .isQuestComplete 77671
    .xp <2,1
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Regeneração - 12 (Cerro Oeste)
#title Regeneração

<< Alliance Mage SoD


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 12 para obter|r |T133815:0|t[Gravar Peitoral - Regeneração] |cRXP_WARN_em Cerro Oeste sozinho|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >>Vá para Ventobravo
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Entre na Apotecária de Pestle
    .train 401767,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kavia Bórgia|r lá dentro
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dela|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401767,1
step
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
    .train 401767,1
step
    #loop
    .goto 1436,35.043,53.785,0
    .goto 1436,43.045,67.127,0
    .goto 1436,43.459,70.800,0
    .goto 1436,45.458,70.322,0
    .goto 1436,44.547,65.624,0
    .goto 1436,35.043,53.785,40,0
    .goto 1436,35.952,53.085,40,0
    .goto 1436,36.549,54.105,40,0
    .goto 1436,36.025,54.822,40,0
    .goto 1436,38.732,56.872,40,0
    .goto 1436,43.045,67.127,40,0
    .goto 1436,42.825,68.290,40,0
    .goto 1436,42.524,69.212,40,0
    .goto 1436,42.103,69.530,40,0
    .goto 1436,42.240,70.517,40,0
    .goto 1436,43.459,70.800,40,0
    .goto 1436,43.698,69.251,40,0
    .goto 1436,43.798,67.692,40,0
    .goto 1436,44.042,69.247,40,0
    .goto 1436,44.333,68.588,40,0
    .goto 1436,45.458,70.322,40,0
    .goto 1436,45.794,69.292,40,0
    .goto 1436,44.952,67.095,40,0
    .goto 1436,44.547,65.624,40,0
    >>Mate os |cRXP_ENEMY_Defias Pillagers|r. Saque-os para o |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Defias Pillager
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Use a|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: TENGI RONEERA]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Regeneração]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Regeneração - 13 (Loch Modan)
#title Regeneração

<< Alliance Mage SoD


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 13 para obter|r |T133815:0|t[Gravar Peitoral - Regeneração] |cRXP_WARN_em Loch Modan sozinho|r
    .train 401767,1
    .xp >13,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >>Viaje para Ironforge
    .train 401767,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Entre na casa de |cRXP_FRIENDLY_Ginny Longafruta|r
    .train 401767,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ginny Longafruta|r dentro
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dela|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401767,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Voe para Loch Modan
    .train 401767,1
step
    #optional
    #requires Loch1
    #completewith next
    .goto 1432,54.33,26.82,5 >>Entre na tenda
    .train 401767,1
step
    #label Tengi
    .goto 1432,54.33,26.82,5,0
    .goto 1432,54.17,27.03
    >>Abra o |cRXP_PICK_Pile of Stolen Books|r dentro. Saque-os para o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Use a|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: TENGI RONEERA|r] |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Regeneração]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Regeneração - 12 (Savanas)
#title Regeneração

<< Horde Mage SoD


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 12 para obter|r |T133815:0|t[Gravar Peitoral - Regeneração] |cRXP_WARN_em Savanas sozinho|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #ah
    .goto Orgrimmar,50.67,70.39,0
    .goto Orgrimmar,53.74,64.60,15,0
    .goto Orgrimmar,55.54,64.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Leiloeiro Wabang|r
    >>|cRXP_BUY_Compre uma|r |T134237:0|t[Kolkar Booty Chave] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Isso economizará alguns minutos depois|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Wabang
    .zoneskip Orgrimmar,1
    .train 401767,1
step
    #optional
    #ah
    .goto Thunder Bluff,45.23,59.40,0
    .goto Thunder Bluff,40.41,51.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeiro Stampi|r
    >>|cRXP_BUY_Compre uma|r |T134237:0|t[Kolkar Booty Chave] |cRXP_BUY_da Casa de Leilões|r
    >>|cRXP_WARN_Isso economizará alguns minutos depois|r
    .collect 5020,1 --Kolkar Booty Key (1)
    .target Auctioneer Stampi
    .zoneskip Thunder Bluff,1
    .train 401767,1
step
    #completewith Regeneration
    .zone The Barrens >>Viaje para os Sertões
    .train 401767,1
step
    .goto 1413,51.393,30.203
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hula'mahi|r
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dele|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Hula'mahi
    .train 401767,1
step
    #loop
    .goto The Barrens,45.78,25.52,0
    .goto The Barrens,43.86,21.38,0
    .goto The Barrens,43.56,26.30,0
    .goto The Barrens,45.78,25.52,50,0
    .goto The Barrens,46.54,22.99,50,0
    .goto The Barrens,45.03,20.09,50,0
    .goto The Barrens,43.86,21.38,50,0
    .goto The Barrens,43.49,23.57,50,0
    .goto The Barrens,43.56,26.30,50,0
    >>Mate os |cRXP_ENEMY_Kolkar Wranglers|r e os |cRXP_ENEMY_Kolkar Stormers|r. Saque-os para um |T134237:0|t[Kolkar Booty Chave]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 401767,1
step
    #label Regeneration
    .goto The Barrens,43.02,23.52,-1
--  .goto The Barrens,52.73,41.84,-1
--   .goto The Barrens,44.33,37.66,-1
    >>Abra o |cRXP_PICK_Kolkars' Booty|r no chão. Saque-o para o |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r]
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_para treinar|r |T132869:0|t[Regeneração]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Regeneração - 12 (Floresta de Pinhaprata)
#title Regeneração
<< Horde Mage SoD


step
    +|cRXP_WARN_You should be at least level 12 in order to acquire|r |T133815:0|t[Gravar Peitoral - Regeneração] |cRXP_WARN_in Floresta de Pinhaprata alone|r
    .train 401767,1
    .xp >12,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >>Viaje para Undercity
    .train 401767,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dele|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401767,1
step
    #completewith next
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
    .train 401767,1
step
    #loop
    .goto 1421,52.375,56.808,0
    .goto 1421,49.614,60.886,0
    .goto 1421,51.556,64.300,0
    .goto 1421,52.689,71.258,0
    .goto 1421,52.375,56.808,45,0
    .goto 1421,51.644,57.939,45,0
    .goto 1421,50.539,59.184,45,0
    .goto 1421,50.826,59.697,45,0
    .goto 1421,50.053,60.021,45,0
    .goto 1421,49.614,60.886,45,0
    .goto 1421,50.449,60.894,45,0
    .goto 1421,50.914,61.289,45,0
    .goto 1421,51.749,61.612,45,0
    .goto 1421,50.566,62.991,45,0
    .goto 1421,51.556,64.300,45,0
    .goto 1421,52.412,63.834,45,0
    .goto 1421,51.969,65.028,45,0
    .goto 1421,52.850,66.113,45,0
    .goto 1421,51.986,66.138,45,0
    .goto 1421,52.689,71.258,45,0
    >>Abata os |cRXP_ENEMY_Dalaran Apprentices|r. Saque-o para o |T134939:0|t|cRXP_FRIENDLY_[Feitiço Notes: TENGI RONEERA]|r
    .collect 208754,1 --Spell Notes: TENGI RONEERA (1)
    .mob Dalaran Apprentice
    .train 401767,1
step
    .train 401767 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: TENGI RONEERA|r] |cRXP_WARN_para treinar|r |T132869:0|t[Regeneração]
    .use 208754
    .itemcount 208754,1 --Spell Notes: TENGI RONEERA (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Dedos Glaciais - 10 (Elwynn Forest)
#title Dedos Glaciais

<< Alliance Mage SoD


step
    +|cRXP_WARN_You should be at least level 10 in order to acquire|r |T133815:0|t[Gravar Peitoral - Dedos Glaciais] |cRXP_WARN_in Elwynn Forest alone|r
    .train 401765,1
    .xp >10,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Stormwind City >>Vá para Ventobravo
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Stormwind City,56.54,64.77,8 >>Entre na Apotecária de Pestle
    .train 401765,1
step
    #label Comprehension
    .goto 1453,56.038,65.401
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kavia Bórgia|r lá dentro
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dela|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Kyra Boucher
    .train 401765,1
step
    #completewith next
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .train 401765,1
step
    #loop
    .goto Elwynn Forest,27.0,86.7,0
    .goto Elwynn Forest,26.1,89.9,0
    .goto Elwynn Forest,25.2,92.7,0
    .goto Elwynn Forest,27.0,93.9,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    >>Abata o |cRXP_ENEMY_Hogger|r. Saque-o para o |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .unitscan Hogger
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_to learn|r |T133815:0|t[Gravar Peitoral - Dedos Glaciais]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Dedos Glaciais - 5 (Dun Morogh)
#title Dedos Glaciais
<< Alliance Mage SoD


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 5 para obter|r |T133815:0|t[Gravar Peitoral - Dedos Glaciais] |cRXP_WARN_apenas em Dun Morogh|r
    .train 401765,1
    .xp >5,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >>Viaje para Ironforge
    .train 401765,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Entre na casa de |cRXP_FRIENDLY_Ginny Longafruta|r
    .train 401765,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ginny Longafruta|r dentro
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dela|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 401765,1
step
    #completewith next
    .zone Dun Morogh >>Vá para Dun Morogh
    .train 401765,1
step
    #loop
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Abate |cRXP_ENEMY_Fyodi|r. Saque-o para obter o |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r
    >>|cRXP_WARN_Embora |cRXP_ENEMY_Fyodi|r apareça como uma élite, seus valores de vida, dano e armadura são os de um inimigo padrão|r
    >>|cRXP_WARN_Tenha cuidado enquanto ele conjura|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 35-80 de dano corpo a corpo ao acertar. Apenas lançável à distância)|r
    >>|cRXP_WARN_NOTA: O|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_também pode cair de cada inimigo raro em Dun Morogh, assim como |cRXP_ENEMY_Ragash|r, |cRXP_ENEMY_Ronhagarra|r, e|r |cRXP_ENEMY_Velho Barbafria|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fyodi
    .train 401765,1
    .xp >10,1
step
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Abate |cRXP_ENEMY_Ragash|r. Saque-o para obter o |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r
    >>|cRXP_WARN_NOTA: O|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_também pode cair de cada inimigo raro em Dun Morogh, assim como |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Ronhagarra|r, e|r |cRXP_ENEMY_Velho Barbafria|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Vagash
    .train 401765,1
    .xp <10,1
step
    .train 401765 >>|cRXP_WARN_Use as|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Dedos Glaciais]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Dedos Glaciais - 8 (Tirisfal Glades)
#title Dedos Glaciais
<< Horde Mage SoD


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 8 para obter|r |T133815:0|t[Gravar Peitoral - Dedos Glaciais] |cRXP_WARN_apenas em Tirisfal Glades|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #label Charm
    #completewith next
    .zone Undercity >>Viaje para Undercity
    .train 401765,1
step
    #label Comprehension
    .goto 1458,69.700,39.052
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thomas Mordan|r
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dele|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Thomas Mordan
    .train 401765,1
step
    #completewith next
    .zone Tirisfal Glades >>Vá para Claras da Tirisfal
    .train 401765,1
step
    #optional
    #completewith next
    .goto 1420,28.649,46.992,40,0
    .goto 1420,27.849,46.734,40,0
    .goto 1420,27.076,46.855,40,0
    .goto 1420,26.213,47.473,40,0
    .goto Tirisfal Glades,25.53,48.39,60 >>Vá em direção ao |cRXP_ENEMY_Guelgar|r
step
    .goto Tirisfal Glades,25.53,48.39
    >>Abate |cRXP_ENEMY_Guelgar|r. Saque-o para as |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Gillgar
    .train 401765,1
step
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_to learn|r |T133815:0|t[Gravar Peitoral - Dedos Glaciais]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Mage SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Dedos Glaciais - 8 (Durotar)
#title Dedos Glaciais


step
    +|cRXP_WARN_Você deve estar em pelo menos nível 8 para obter|r |T133815:0|t[Gravar Peitoral - Dedos Glaciais] |cRXP_WARN_em Durotar sozinho|r
    .train 401765,1
    .xp >8,1
step
    #optional
    #completewith next
    .zone Orgrimmar >>Viaje para Orgrimmar
    .train 401765,1
step
    #label Comprehension
    .goto 1454,45.439,56.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Horthus|r dentro
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dele|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Horthus
    .train 401765,1
step
    #completewith next
    .zone Durotar >>Vá para Durotar
    .train 401765,1
step
    .goto 1411,66.936,87.360,40,0
    .goto 1411,67.376,86.710,40,0
    .goto 1411,67.502,87.618
    >>Abate |cRXP_ENEMY_Zalazane|r. Saque-o para as |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Zalazane
    .train 401765,1
    .xp >12,1
step
    .goto 1411,42.123,26.666,40,0
    .goto 1411,42.654,26.448,40,0
    .goto 1411,42.123,26.666
    >>Abate |cRXP_ENEMY_Crepitar Bulho Garrumbra|r. Saque-o para as |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r
    .collect 203753,1 --Spell Notes: RING SEFF OSTROF (1)
    .mob Fizzle Darkstorm
    .train 401765,1
    .xp <12,1
step
    .train 401765 >>|cRXP_WARN_Use the|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: COLESDI DASGAI]|r |cRXP_WARN_to learn|r |T133815:0|t[Gravar Peitoral - Dedos Glaciais]
    .use 203753
    .itemcount 203753,1 --Spell Notes: RING SEFF OSTROF (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Combustão - 6 (Dun Morogh)
#title Combustão

<< Alliance Mage SoD


step
    +|cRXP_WARN_Você deve estar em pelo menos nível 6 para obter|r |T132686:0|t[Gravar Peitoral - Combustão] |cRXP_WARN_em Dun Morogh com outro jogador|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Dun Morogh >>Vá para Dun Morogh
    .train 401759,1
step
    .goto 1426,69.369,58.311
    >>|cRXP_WARN_Procure por outros Magos ou Bruxos perto do |cRXP_ENEMY_Trogg Congelado|r ou em General Bate-papo (Digite /1 no chat)|r
    >>|cRXP_WARN_Lançe|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_em |cRXP_ENEMY_Trogg Congelado|r para aplicar um acúmulo de|r |T135805:0|t[Aplicando Calor]|cRXP_WARN_. Aplique 5 acúmulos de uma vez juntos para matar o |cRXP_ENEMY_Trogg Congelado|r. Saque-o para obter|r |T134939:0|t|cRXP_FRIENDLY_[Feitiço Notes: Combustão]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Trogg
step
    .train 401759 >>|cRXP_WARN_Use as|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: Combustão]|r |cRXP_WARN_para aprender|r |T132686:0|t[Gravar Peitoral - Combustão]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Combustão - 6 (Elwynn Forest)
#title Combustão

<< Alliance Mage SoD

step
    +|cRXP_WARN_Você deve estar em pelo menos nível 6 para obter|r |T132686:0|t[Gravar Peitoral - Combustão] |cRXP_WARN_em Elwynn Forest com outro jogador|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .train 401759,1
step
    .goto 1429,77.015,51.901
    >>|cRXP_WARN_Procure por outros Magos ou Bruxos perto do |cRXP_ENEMY_Murloc Congelado|r ou em General Bate-papo (Digite /1 no chat)|r
    >>|cRXP_WARN_Lançe|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_em |cRXP_ENEMY_Murloc Congelado|r para aplicar um acúmulo de|r |T135805:0|t[Aplicando Calor]|cRXP_WARN_. Aplique 5 acúmulos de uma vez juntos para matar o |cRXP_ENEMY_Murloc Congelado|r. Saque-o para obter|r |T134939:0|t|cRXP_FRIENDLY_[Feitiço Notes: Combustão]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Use as|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: Combustão]|r |cRXP_WARN_para aprender|r |T132686:0|t[Gravar Peitoral - Combustão]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Combustão - 6 (Durotar)
#title Combustão

<< Horde Mage SoD

step
    +|cRXP_WARN_Você deve estar em pelo menos nível 6 para obter|r |T132686:0|t[Gravar Peitoral - Combustão] |cRXP_WARN_em Durotar com outro jogador|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Durotar >>Vá para Durotar
    .train 401579,1
step
    .goto Durotar,58.69,45.53
    >>|cRXP_WARN_Procure por outros Magos, Bruxos ou Xamãs perto do |cRXP_ENEMY_Makrura Congelado|r ou em General Bate-papo (Digite /1 no chat)|r
    >>|cRXP_WARN_Lançe|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_em |cRXP_ENEMY_Makrura Congelado|r para aplicar um acúmulo de|r |T135805:0|t[Aplicando Calor]|cRXP_WARN_. Aplique 5 acúmulos de uma vez juntos para matar o |cRXP_ENEMY_Makrura Congelado|r. Saque-o para obter|r |T134939:0|t|cRXP_FRIENDLY_[Feitiço Notes: Combustão]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .mob Frozen Makrura
    .train 401579,1
step
    .train 401759 >>|cRXP_WARN_Use as|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: Combustão]|r |cRXP_WARN_para aprender|r |T132686:0|t[Gravar Peitoral - Combustão]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Combustão - 6 (Tirisfal Glades)
#title Combustão

<< Horde Mage SoD


step
    +|cRXP_WARN_Você deve estar em pelo menos nível 6 para obter|r |T132686:0|t[Gravar Peitoral - Combustão] |cRXP_WARN_em Tirisfal Glades com outro jogador|r
    .train 401759,1
    .xp >6,1
step
    #completewith next
    .zone Tirisfal Glades >>Vá para Claras da Tirisfal
    .train 401759,1
step
    .goto 1420,66.337,40.059
    >>|cRXP_WARN_Procure por outros Magos ou Bruxos perto do |cRXP_ENEMY_Murloc Congelado|r ou em General Bate-papo (Digite /1 no chat)|r
    >>|cRXP_WARN_Lançe|r |T135812:0|t[Bola de Fogo] |cRXP_WARN_em |cRXP_ENEMY_Murloc Congelado|r para aplicar um acúmulo de|r |T135805:0|t[Aplicando Calor]|cRXP_WARN_. Aplique 5 acúmulos de uma vez juntos para matar o |cRXP_ENEMY_Murloc Congelado|r. Saque-o para obter|r |T134939:0|t|cRXP_FRIENDLY_[Feitiço Notes: Combustão]|r
    .collect 203748,1 --Spell Notes: Burnout (1)
    .train 401759,1
    .mob Frozen Murloc
step
    .train 401759 >>|cRXP_WARN_Use as|r |T134939:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: Combustão]|r |cRXP_WARN_para aprender|r |T132686:0|t[Gravar Peitoral - Combustão]
    .use 203748
    .itemcount 203748,1 --Spell Notes: Burnout (1)
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Esclarecimento - 8 (Elwynn Forest)
#title Esclarecimento

<< Alliance Mage SoD


step
    +|cRXP_WARN_Você DEVE ter pelo menos nível 8 para adquirir|r |T133815:0|t[Gravar Peitoral - Esclarecimento] |cRXP_WARN_pois é o requisito de nível do treinamento|r |T136071:0|t[Polimorfia]
    >>|cRXP_WARN_Você precisa subir de nível mais antes de mesmo tentar adquirir|r |T133815:0|t[Gravar Peitoral - Esclarecimento]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Elwynn Forest >>Vá para Elwynn Forest
    .train 415942,1
    .xp <8,1
step
    #optional
    #completewith next
    .goto 1429,43.133,65.740,8,0
    .goto 1429,43.226,65.953,8,0
    .goto 1429,43.824,66.361,8 >>Entre na Estalagem de Goldshire. Vá para cima
    .train 415942,1
    .xp <8,1
step
    .goto 1429,43.248,66.192
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zaldimar Wefhellt|r
    .train 118 >>Treine |T136071:0|t[Polimorfia]
    .target Zaldimar Wefhellt
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1429,49.68,73.74,0
    .goto 1429,79.92,64.51,0
    .goto 1429,83.61,83.86,0
    .goto 1429,77.54,40.05,0
    .goto 1429,83.67,83.53,0
    .goto 1429,49.68,73.74,40,0
    .goto 1429,49.04,55.23,40,0
    .goto 1429,58.93,59.8,40,0
    .goto 1429,62.95,63.3,40,0
    .goto 1429,70.46,63.41,40,0
    .goto 1429,79.92,64.51,40,0
    .goto 1429,85.79,65.94,40,0
    .goto 1429,82.89,70.69,40,0
    .goto 1429,79.07,79.02,40,0
    .goto 1429,82.61,86.35,40,0
    .goto 1429,83.61,83.86,40,0
    .goto 1429,87.27,82.16,40,0
    .goto 1429,90.67,77.25,40,0
    .goto 1429,86.02,66.26,40,0
    .goto 1429,80.6,50.21,40,0
    .goto 1429,77.54,40.05,40,0
    .goto 1429,73.96,41.08,40,0
    .goto 1429,65.67,41.75,40,0
    .goto 1429,58.87,59.97,40,0
    .goto 1429,79.37,78.84,40,0
    .goto 1429,83.67,83.53,40,0
    >>Lance |T136071:0|t[Polimorfia] nas seguintes criaturas incomuns: os |cRXP_ENEMY_Gazelas|r, os |cRXP_ENEMY_Vermes|r, os |cRXP_ENEMY_Papagaios|r, os |cRXP_ENEMY_Besouros de Fogo|r, os |cRXP_ENEMY_Carneiros|r, os |cRXP_ENEMY_Larvas|r e os |cRXP_ENEMY_Gatos|r. Espere a encenação terminar
    >>Abra o |cRXP_PICK_Spell Notes|r no chão. Saque-o para |T134332:0|t|cRXP_LOOT_[Azora Aprendiz Notes]|r
    .collect 204864,6 --Azora Apprentice Notes (6)
    .mob Gazelle
    .mob Maggot
    .mob Parrot
    .mob Fire Beetle
    .mob Ram
    .mob Larva
    .mob Cat
    .train 415942,1
    .xp <8,1
step
    >>Usar o |T134332:0|t|cRXP_LOOT_[Azora Aprendiz Notes]|r para criar |T134332:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: Esclarecimento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 204864
    .train 415942,1
    .xp <8,1
step
    .train 415942 >>|cRXP_WARN_Use a|r |T134332:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: Esclarecimento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Esclarecimento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
    .xp <8,1
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Esclarecimento - 8 (Tirisfal Glades)
#title Esclarecimento

<< Horde Mage SoD

step
    +|cRXP_WARN_Você DEVE ter pelo menos nível 8 para adquirir|r |T133815:0|t[Gravar Peitoral - Esclarecimento] |cRXP_WARN_pois é o requisito de nível do treinamento|r |T136071:0|t[Polimorfia]
    >>|cRXP_WARN_Você precisa subir de nível mais antes de mesmo tentar adquirir|r |T133815:0|t[Gravar Peitoral - Esclarecimento]
    .train 415942,1
    .xp >8,1
step
    #completewith Enlightenment
    .zone Tirisfal Glades >>Vá para Claras da Tirisfal
    .train 415942,1
step
    #optional
    #completewith next
    .goto 1420,61.619,52.856,8,0
    .goto 1420,61.734,52.720,8,0
    .goto 1420,61.958,52.066,8 >>Entre na Estalagem de Brill. Vá para cima
    .train 415942,1
    .xp <8,1
step
    .goto 1420,61.972,52.476
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Caio Cantígnea|r
    .train 118 >>Treine |T136071:0|t[Polimorfia]
    .target Cain Firesong
    .train 415942,1
    .xp <8,1
step
    #label Enlightenment
    #loop
    .goto 1420,58.840,58.321,0
    .goto 1420,52.861,57.885,0
    .goto 1420,47.292,50.612,0
    .goto 1420,58.840,58.321,30,0
    .goto 1420,54.062,60.058,30,0
    .goto 1420,53.920,58.332,30,0
    .goto 1420,54.000,56.767,30,0
    .goto 1420,52.861,57.885,30,0
    .goto 1420,51.611,57.241,30,0
    .goto 1420,50.303,61.941,30,0
    .goto 1420,49.885,59.576,30,0
    .goto 1420,50.073,50.644,30,0
    .goto 1420,49.573,46.473,30,0
    .goto 1420,47.292,50.612,30,0
    >>Lance |T136071:0|t[Polimorfia] nos |cRXP_ENEMY_Melões Estranhos|r, depois aguarde a encenação
    >>Saque o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r no chão
    .collect 208183,6 --Apothecary Notes (6)
    .mob Odd Melon
    .train 415942,1
step
    >>Usar o |T134332:0|t|cRXP_LOOT_[Apothecary Notes]|r para criar |T134332:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: Esclarecimento]|r
    .collect 203749,1 --Spell Notes: Enlightenment (1)
    .use 208183 --Apothecary Notes
    .train 415942,1
step
    .train 415942 >>|cRXP_WARN_Use a|r |T134332:0|t|cRXP_FRIENDLY_[Anotações de Feitiços: Esclarecimento]|r |cRXP_WARN_para aprender|r |T133815:0|t[Gravar Peitoral - Esclarecimento]
    .use 203749
    .itemcount 203749,1 --Spell Notes: Enlightenment (1)
]])

RXPGuides.RegisterGuide[[
#classic
#group Guia Runas e Livros RestedXP
<<Alliance Mage SoD
#subgroup Pernas/Botas/Elmo
#name Veias Gélidas/Poder Mágico/Congelamento Profundo - 40 (Azeroth)
#title Veias Gélidas & Poder Mágico & Congelamento Profundo

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.
--QQQ WIP to here

step
    .zone Stormwind City >>Vá para |cFFfa9602Stormwind.|r
    .cast 3561 >>Usar [Teleportar Ventobravo] |cRXP_WARN_Se você tiver|r |T134419:0|t[Runa de Teleporte]
    .disablecheckbox
step
    .money <0.20
    .goto Stormwind City,55.8,65.2
    .collect 17031,10 >>Compre |T134419:0|t[Runa of Teleportations] de um |cRXP_FRIENDLY_Reagente, Mercadorias Arcanas, Pergaminhos & Poção Comerciante.|r |cRXP_WARN_Isso reduzirá muito o tempo de viagem.|r
    >>|cRXP_WARN_Pule manualmente este passo se quiser prosseguir sem.|r
step
    .goto Stormwind City,56.4,73.2
    .bankwithdraw 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523,209846 >>|cRXP_WARN_Verifique seu banco para qualquer livro que possa ter sido depositado.|r
step
    .goto Stormwind City,57.2,57.2
    .vendor >>|cRXP_WARN_É altamente recomendado reparar, pois usaremos pulos de morte.|r
    >>|cFFFF0000Se você preferir não usar pulos de morte, pule este passo manualmente.|r
step
    .goto 1429,64.41,69.08,10,0
    .goto 1429,64.69,69.58,5,0
    .goto 1429,64.73,70.32,5,0
    .goto 1429,64.83,69.87,5,0
    .goto 1429,65.16,69.69,5,0
    .goto 1429,65.24,70.25,5,0
    .goto 1429,65.02,70,5,0
    .goto 1429,65.47,70.07
    >>Clique no |cRXP_PICK_Library Livro|r localizado |cFFfa9602em uma prateleira em Elwynn Forest|r para obter |T133744:0|t[Archmage Theocrituss Pesquisa Diário.]
    .collect 203755,1
    .isQuestAvailable 79092
step
    #completewith Rumi of Gnomeregan the Collected Works
    .zone Westfall >>Vá para |cFFfa9602Cerro Oeste|r a pé se você estiver |cRXP_WARN_em|r |cFFfa9602Elwynn Forest.|r|r
    .fly Westfall >>Aprenda a rota de voo para |cFFfa9602Cerro Oeste|r se você |cRXP_WARN_não estiver em|r |cFFfa9602Elwynn Forest.|r|r
    .disablecheckbox
    .isQuestAvailable 79093
-- step
--     #completewith Rumi of Gnomeregan the Collected Works
--
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r |cRXP_WARN_Additionally skip any deathskip by choice if you want to save repair costs!|r
--     >>|cRXP_WARN_manually skip this step if you are on a flightpath.|r
--     .isQuestAvailable 79092
step
    #label Rumi of Gnomeregan the Collected Works
    .goto 1436,53.01,53.34,10,0
    .goto 1436,52.64,53.83
    >>Clique no |cRXP_PICK_Gnomish Tomo|r |cFFfa9602on the table in the Cerro Oeste Estalagem|r para obter |T133744:0|t[Rumi of Gnomeregan the Coletado Works.]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for human, can be picked up as a gnome.
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Vá para |cFFfa9602Cerro Oeste|r |cRXP_WARN_pegando uma rota de voo.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Clique no |cRXP_PICK_Spellbook|r localizado |cFFfa9602on the Alquimia Cabinet in a small house in Moonbrook, Cerro Oeste|r para obter |T133733:0|t[Encantamentos e esplendores.]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Vá para |cFFfa9602Floresta do Crepúsculo|r
    .fly Westfall >>Pegue a rota de voo para |cFFfa9602Cerro Oeste|r |cRXP_WARN_se você a desbloqueou e ainda não está lá.|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Clique em |cRXP_PICK_Livro|r |cFFfa9602dentro das Catacumbas de Madeira Amanhecer na Mesa de Alquimia em Floresta do Crepúsculo|r para obter |T133738:0|t[Crimes contra a Anatomia]
    >>|cRXP_WARN_É recomendado correr até o final das catacumbas e morrer. Além disso, você pode considerar se agrupar.|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Vá para |cFFfa9602Pântano das Mágoas|r
    .fly Swamp of Sorrows >>Pegue a rota de voo para |cFFfa9602Pântano das Mágoas|r |cRXP_WARN_se você a tem desbloqueada e ainda não está lá.|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Mate |cRXP_ENEMY_Caçador dos Perdidos|r, |cRXP_ENEMY_Moralodo dos Perdidos|r, |cRXP_ENEMY_Cozinheiro dos Perdidos|r e |cRXP_ENEMY_Vidente dos Perdidos|r. Saqueie-os para obter |cRXP_LOOT_|T237379:0|t[Chave da Jaula Enferrujada]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Clique na |cRXP_PICK_Jaula Enferrujada|r para obter o Livro |T133742:0|t[Um guia ludita para cuidar da sua mascote demoníaca]
    .collect 215824,1
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,70,51
    >>Clique em |cRXP_PICK_Livro|r para obter |T133738:0|t[Feitiçaria sanguínea]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Vá para |cFFfa9602Barreira do Inferno|r
    .fly Blasted Lands >>Pegue a rota de voo para |cFFfa9602Barreira do Inferno|r |cRXP_WARN_se você a tem desbloqueada e ainda não está lá.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Clique em |cRXP_PICK_Livro|r para obter |T133736:0|t[Códice do Conjurador]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Vá para |cFFfa9602Stranglethorn Vale|r
    .fly Stranglethorn Vale >>Pegue a rota de voo para |cFFfa9602Stranglethorn Vale|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Clique em |cRXP_PICK_Research Notes|r no banco para receber o Livro |T237162:0|t[Basiliscos: quem tem medo de virar pedra?]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Vá para |cFFfa9602Garganta Abrasadora|r
    .fly Searing Gorge >>Pegue a rota de voo para |cFFfa9602Garganta Abrasadora|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Clique em |cRXP_PICK_Livro|r para obter |T133743:0|t[Desenho forjado em pedra]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Vá para |cFFfa9602Garganta Abrasadora|r
    .fly Searing Gorge >>Pegue a rota de voo para |cFFfa9602Garganta Abrasadora|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Clique em |cRXP_PICK_Livro|r para obter |T133743:0|t[Desenho forjado em pedra]
    .collect 220349,1
    .isQuestAvailable 81953
step
    .zone Ironforge >>Vá |cFFfa9602para Ironforge|r.
    .cast 3562 >>Usar [Teleporte Ironforge] |cRXP_WARN_Se você tiver|r |T134419:0|t[Runa de Teleporte]
    .disablecheckbox
step
    .goto 1455,31.96,57.93
    .vendor >>|cRXP_WARN_É altamente recomendado reparar, pois estaremos utilizando pulos de morte.|r
    >>|cFFFF0000Se você preferir não usar pulos de morte, pule este passo manualmente.|r
step
    .goto 1455,69.76,24.39,10,0
    .goto 1455,70.43,18.37,10,0
    .goto 1455,75.99,10.55
    >>Clique em |cRXP_PICK_Livro da Biblioteca|r |cFFfa9602na mesa em Ironforge, Hall of Explorers|r para obter |T133744:0|t[Archmage Antonidas the Unabridged Autobiography.]
    .collect 203754,1
    .isQuestAvailable 79091
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zone Loch Modan >>Vá para |cFFfa9602Loch Modan|r.
    .fly Loch Modan >>Usar a rota de voo para |cFFfa9602Loch Modan|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79093
step
    .goto 1432,35.2,47.76,10,0
    .goto 1432,35.5,48.98
    >>Clique em |cRXP_PICK_Tomo Gnômico|r |cFFfa9602na mesa em Loch Modan Estalagem|r para obter |T133744:0|t[Rumi of Gnomeregan the Coletado Works.]
    .collect 208860,1
    .isQuestAvailable 79093
    --x shiek: designed for gnome, can be picked up as human.
step
    #completewith next
    .goto 1455,55.51,47.78,10,0
    .zoneskip Loch Modan
    .zone Loch Modan >>Vá para |cFFfa9602Loch Modan|r.
    .fly Loch Modan >>Pegue a rota de voo para |cFFfa9602Loch Modan|r |cRXP_WARN_se você a tem.|r
    .disablecheckbox
    .isQuestAvailable 78148
step
    .goto 1432,74.61,19.91,10,0
    .goto 1432,75.46,18.66,5,0
    .goto 1432,75.18,16.41,5,0
    .goto 1432,76.42,14.67,5,0
    .goto 1432,77.45,14.15
    >>Clique em |cRXP_PICK_Pergaminho|r em |cFFfa9602Caverna de Ogro Elite em Loch Modan|r para obter |T134938:0|t[Runas of the Sorcerer Kings.]
    >>|cRXP_WARN_É recomendado correr até o final da caverna e morrer. Além disso, considere se agrupar.|r
    .collect 209850,1
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zoneskip Ironforge
    .deathskip >>Morra e ressurja em |cFF00FF25Anjo da Cura|r |cRXP_WARN_Alternativamente, você pode não fazer o pulo de morte para economizar custos de reparo!|r
    .isQuestAvailable 78148
step
    #completewith Goaz Scrolls
    .zone Badlands >>Voe para |cFFfa9602Ermos|r
    .fly >>Usar a rota de voo para |cFFfa9602Ermos|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    #label Goaz Scrolls
    .goto Badlands,56.7,39.9
    >>Clique no Livro |T134937:0|t[Múmias: um guia para os desagradáveis mortos-vivos]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .fly Menethil Harbor >>Voe para |cFFfa9602Menethil Harbor|r
    .isQuestAvailable 78146
step
    .goto 1437,33.61,47.82
    >>Clique em |cRXP_PICK_Pergaminho|r |cFFfa9602no vaso nos Pântanos|r para obter |T237450:0|t[Pergaminhos de Goaz.]
    .collect 209848,1
    .isQuestAvailable 78146
-- step
--     #loop
--     .goto 1437,32.93,49.21,15,0
--     .goto 1437,34.1,49.75,15,0
--     .goto 1437,35.45,49.47,15,0
--     .goto 1437,35.41,47.44,15,0
--     .goto 1437,35.62,45.27,15,0
--     .goto 1437,34.2,43.89,15,0
--     .deathskip >>Die and respawn at the |cFF00FF25Spirit Healer|r
--     .isQuestAvailable 78146
--     .zoneskip Ironforge
step
    .zoneskip Ironforge
    .goto Wetlands,8.0,55.8
    .vendor >>|cRXP_WARN_É altamente recomendado reparar, pois usaremos pulos de morte.|r
    >>|cFFFF0000Se você preferir não usar pulos de morte, pule este passo manualmente.|r
step
    #completewith next
    .goto 1437,4.64,57.24,20,0
    .zone Darkshore >>Vá para |cFFfa9602Costa Negra|r de Barco.
    .fly Menethil Harbor >>Voe para |cFFfa9602Menethil Harbor|r |cRXP_WARN_se você ainda não está lá.|r
    .disablecheckbox
    .isQuestAvailable 78124
    --x shiek might add teleport darnassus step later
step
    #completewith next
    .deathskip >>Afogue-se na Água, depois ressurja em |cFF00FF25Anjo da Cura|r |cRXP_WARN_Alternativamente, você pode não fazer o pulo de morte para economizar custos de reparo!|r
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Clique em |cRXP_PICK_Pergaminho|r em |cFFfa9602Costa Negra|r para obter |T237447:0|t[Narthalas Almanac vol 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith Everyday Etiquette
    .goto 1439,59.35,22.55
    .isQuestAvailable 78146
    .deathskip >>Morra e ressurja em |cFF00FF25Anjo da Cura|r
step
    #completewith Everyday Etiquette
    .isQuestAvailable 81952
    .zone Azshara >>Vá para |cFFfa9602Azshara|r
    .fly Ashenvale >>Voe para |cFFfa9602Vale Gris|r
    .disablecheckbox
step
    #label Everyday Etiquette
    .goto Azshara,20.7,62
    >>Clique em |cRXP_PICK_Livro|r para obter |T133740:0|t[Etiqueta Cotidiana.]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .isQuestAvailable 78146
    .zone Stonetalon Mountains >>Vá para |cFFfa9602Cordilheira das Torres de Pedra|r |cRXP_WARN_a pé se nenhuma rota de voo está desbloqueada|r
    .fly Stonetalon Mountains >>Voe para |cFFfa9602Cordilheira das Torres de Pedra|r |cRXP_WARN_se você tem a rota de voo desbloqueada.|r
    .disablecheckbox
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Clique em |cRXP_PICK_Pergaminho|r |cFFfa9602na tenda, em um barril em Cordilheira das Torres de Pedra|r para obter |T133209:0|t[Fúria da terra.]
    .collect 209851,1
    .isQuestAvailable 78149
step
    #completewith next
    .zone Desolace >>Vá para |cFFfa9602Desolação|r
    .fly Desolace >>Pegue a rota de voo para |cFFfa9602Desolação|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Clique em Pergaminho|cRXP_PICK_ para receber o livro |T133733:0|t[Demônios e Você]|r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Vá para |cFFfa9602Savanas|r |cRXP_WARN_a pé se você não tem nenhuma rota de voo.|r
    .fly Ratchet >>Aprenda a rota de voo para |cFFfa9602Ratchet|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Clique em |cRXP_PICK_Goblin Tomo|r |cFFfa9602em Ponto de Ancoragem ao lado de|r |cRXP_FRIENDLY_Gasganete|r para obter |T133744:0|t[Baxtan on Destructive Magics.]
    .collect 208800,1
    .isQuestAvailable 79097
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>Clique em |cRXP_PICK_Pergaminho|r |cFFfa9602no chão perto do Portal da Caverna Ululante em Savanas|r para obter |T135142:0|t[Segredos dos sonhadores.]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith next
    .goto 1414,52.83,54.71
    .deathskip >>Morra e ressurja em |cFF00FF25Anjo da Cura|r
    .isQuestAvailable 78143
step
    .goto The Barrens,56.3,8.8
    >>Clique em |cRXP_PICK_Manual|r |cFFfa9602no topo do Oil Rig em Savanas|r para obter |T134509:0|t[Manual de Sistemas Arcânicos.]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Dustwallow Marsh >>Vá para |cFFfa9602Pântano Vadeoso|r
    .fly Dustwallow Marsh >>Aprenda a rota de voo para |cFFfa9602Pântano Vadeoso|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Clique em |cRXP_PICK_Livro Encharcado|r para receber o livro |T133740:0|t[RwlRwlRwlRwl!].
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Vá para |cFFfa9602Mil Agulhas|r
    .fly Thousand Needles >>Aprenda a rota de voo para |cFFfa9602Mil Agulhas|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Clique em |cRXP_PICK_Pergaminho|r para receber o livro |T133740:0|t[Geomancia: a verdade nua e crua] dentro da tenda ao lado de um saco.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Vá para |cFFfa9602Tanaris|r
    .fly Tanaris >>Aprenda a rota de voo para |cFFfa9602Tanaris|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Clique em |cRXP_PICK_Livro|r para obter |T134941:0|t[Lendas dos Sábios das Marés]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Ironforge >>Vá |cFFfa9602para Ironforge|r.
    .cast 3562 >>Usar |T135757:0|t[Teleporte Ironforge] |cRXP_WARN_se você tem|r |T134419:0|t[Runa de Teleporte]
    .disablecheckbox
step
    #completewith next
    .isQuestAvailable 78127
    -- .zone Silverpine Forest >>Travel to |cFFfa9602Silverpine Forest|r primarily on foot.
    -- .fly Hillsbrad Foothills >> |cRXP_WARN_Fly to Hillsbrad Foothills if you have the flight path unlocked.|r
    -- .disablecheckbox
    .fly Arathi Highlands >>|cRXP_WARN_Voe para Planalto Arathi se você não tem a rota de voo de Hillsbrad Foothills desbloqueada.|r
    .disablecheckbox
    .fly Wetlands >>|cRXP_WARN_Voe para Pantano se você não tem Planalto Arathi desbloqueada.|r
    .disablecheckbox
step
    #completewith next
    .zone Arathi Highlands >>Vá para |cFFfa9602Planalto Arathi|r
    .fly Arathi Highlands >>Aprenda a rota de voo para |cFFfa9602Planalto Arathi|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Clique em |cRXP_PICK_Pergaminho|r para receber o Livro |T134331:0|t[A Teia of Lies: Debunking Myths and Legends]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone The Hinterlands >>Vá para |cFFfa9602Terras Agrestes|r
    .fly The Hinterlands >>Aprenda a rota de voo para |cFFfa9602Terras Agrestes|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36,72.7
    >>Clique em |cRXP_PICK_Livro|r para obter |T134942:0|t[Jornadas Venenosas]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Alterac Mountains >>Vá para |cFFfa9602Alterac Mountains|r
    .fly Alterac Mountains >>Aprenda a rota de voo para |cFFfa9602Alterac Mountains|r |cRXP_WARN_se você a tiver desbloqueado.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Clique em |cRXP_PICK_Manual|r dentro da torre em caixas para receber o Livro |T133736:0|t[Magia defensiva básica].
    .collect 215815,1
    .isQuestAvailable 79948
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Clique em |cRXP_PICK_Book|r |cFFfa9602dentro do Castelo Principal de Ambermill em uma prateleira de livros em Floresta de Silverpine|r para obter |T134917:0|t[O Compêndio de Dalaran vol 23.]
    .collect 209844,1
    .isQuestAvailable 78127
step
    .zone Stormwind City >>Vá para |cFFfa9602Stormwind.|r
    .cast 3561 >>Usar [Teleportar Ventobravo] |cRXP_WARN_Se você tiver|r |T134419:0|t[Runa de Teleporte]
    .disablecheckbox
step
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garion Wendell <Bibliotecário>|r |cFFfa9602em Ventobravo, Mago Torre.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Vire em Almanaque de Nar'thalas
    .accept 78127 >>Vire em O Compêndio de Dalaran
    .accept 78142 >>Vire em Encantamentos e esplendores
    .accept 78143 >>Vire em Segredos dos sonhadores
    .accept 78145 >>Vire em Manual de Sistemas Arcânicos
    .accept 78146 >>Vire em Pergaminhos de Goaz
    .accept 78147 >>Vire em Crimes contra a Anatomia
    .accept 78148 >>Vire em Runas dos Reis Feiticeiros
    .accept 78149 >>Vire em Fúria da terra
    .accept 79091 >>Vire em Arquimago Antônidas: A Biografia Completa
    .accept 79092 >>Vire em Diário de Pesquisa do Arquimago Teócrito
    .accept 79093 >>Vire em Rumi de Gnomeregan: Trabalhos Reunidos
    .accept 79094 >>Vire em As Lições de Ta'zo
    .accept 79095 >>Entregue A Cartilha Metafísica do Boticário
    .accept 79096 >>Vire em Ataeric: Sobre Curiosidades Arcanas
    .accept 79097 >>Vire em Ataeric: Baxtan: Sobre Magias Destrutivas
    .accept 79535 >>Vire em Basiliscos: quem tem medo de virar pedra?
    .accept 79947 >>Vire em Geomancia: a verdade nua e crua
    .accept 79948 >>Virar para Magia Defensiva Básica
    .accept 77949 >>Virar para A Teia de Mentiras: Desmascarando Mitos e Lendas
    .accept 79950 >>Virar para Demônios e Você
    .accept 79951 >>Virar para Múmias: Um Guia para os Desagradáveis Mortos-vivos
    .accept 79952 >>Virar para RwlRwlRwlRwl!
    .accept 81947 >>Virar para Feitiçaria Sanguínea
    .accept 81949 >>Virar para Lendas dos Sábios das Marés
    .accept 81951 >>Virar para O Liminar e o Arcano
    .accept 81952 >>Virar para Etiqueta Cotidiana
    .accept 81953 >>Virar para Desenho Forjado em Pedra
    .accept 81954 >>Virar para Jornadas Venenosas
    .accept 81955 >>Virar para A Mente Metálica
    .accept 81956 >>Virar para Códice do Conjurador
    .accept 79953 >>Virar para Um Guia Ludita para Cuidar da Sua Mascote Demoníaca
    .accept 78150 >>Virar para Rato de Biblioteca
    .accept 79536 >>Virar para Rato de Biblioteca Mór
    .accept 82208 >>Virar para Rato de Biblioteca Mór
    .target Garion Wendell
step
    .goto Stormwind City,56.4,73.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mumu Ardelado|r.
    .bankdeposit 209850,203755,208860,209845,209849,203754,208860,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >>|cRXP_WARN_Deposite os livros restantes.|r
    .target Newton Burnside
]]

RXPGuides.RegisterGuide[[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Pernas/Botas
#subgroup Pernas/Botas/Elmo
#name Veias Gélidas/Poder Mágico/Congelamento Profundo - 40 (Azeroth)
#title Veias Gélidas & Poder Mágico & Congelamento Profundo

<< Horde Mage SoD

--x Shiek: The guide is specifically tailored for players who have reached level 25, rather than being intended for use during the leveling process.
--x Shiek: Although there are a total of 16 books in the game, only 10 are necessary for this particular purpose. The additional books, while not included in the current version of the guide, have been noted and could be referenced later if needed.
--x Shiek: Furthermore, I have created distinct routes for both Horde and Alliance players. These routes are designed to be generally effective, considering the varying locations and book possessions players might have when they start following this guide.

step
    #completewith next
    .zone Orgrimmar >>Voe para |cFFfa9602Orgrimmar|r
    .cast 3567 >>Usar [Teleportar Orgrimmar] |cRXP_WARN_se você tiver|r |T134419:0|t[Runa de Teleporte]
    .disablecheckbox
    .isQuestAvailable 79094
step
    .money <0.20
    .goto Orgrimmar,45.6,56.8
    .collect 17031,10 >>Compre |T134419:0|t[Runa of Teleportations] de um |cRXP_FRIENDLY_Reagente, Mercadorias Arcanas, Pergaminhos & Poção Comerciante.|r |cRXP_WARN_Isso reduzirá muito o tempo de viagem.|r
    >>|cRXP_WARN_Pule manualmente este passo se quiser prosseguir sem.|r
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_banqueiro|r
    .bankwithdraw 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >>|cRXP_WARN_Verifique o banco por qualquer livro depositado.|r
    .target Karus
    .target Komawa
    .target Soran
step
    .goto Orgrimmar,55.8,73.0
    .vendor >>|cRXP_WARN_É altamente recomendado reparar, pois usaremos pulos de morte.|r
    >>|cFFFF0000Se você preferir não usar pulos de morte, pule este passo manualmente.|r
step
    .goto 1454,38.66,78.43
    >>Clique na |cRXP_PICK_Giant Pedra|r |cFFfa9602na parede em Orgrimmar|r para obter |T134938:0|t[As Lições de Ta'zo.]
    .collect 207972,1
    .isQuestAvailable 79094
step
    #completewith next
    .zone The Barrens >>Vá para |cFFfa9602Savanas|r |cRXP_WARN_a pé se você não tem nenhuma rota de voo.|r
    .fly Ratchet >>Aprenda a rota de voo para |cFFfa9602Ratchet|r |cRXP_WARN_se você a tem desbloqueada.|r
    .fly Crossroads >>Aprenda a rota de voo para a |cFFfa9602Encruzilhada|r |cRXP_WARN_se você não tiver a de Ponto de Ancoragem.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    .goto The Barrens,62.665,36.222
    >>Clique em |cRXP_PICK_Goblin Tomo|r |cFFfa9602em Ponto de Ancoragem ao lado de|r |cRXP_FRIENDLY_Gasganete|r para obter |T133744:0|t[Baxtan on Destructive Magics.]
    .collect 208800,1
    .isQuestAvailable 79097
step
    #completewith next
    .fly Crossroads >>Aprenda a rota de voo para a |cRXP_WARN_Encruzilhada|r se tiver desbloqueada, |cRXP_WARN_caso contrário, vá a pé.|r
    .disablecheckbox
    .isQuestAvailable 78143
step
    .goto 1413,45.98,36.39,15,0
    .goto 1414,51.91,55.42,15,0
    .goto 1414,51.98,55.23,15,0
    .goto 1414,51.95,55.11,15,0
    .goto 1414,51.89,54.79,15,0
    .goto 1414,51.94,54.63,15,0
    .goto 1414,52.01,54.57,15,0
    .goto 1414,52.26,54.63,15,0
    .goto 1414,52.48,54.93,15,0
    .goto 1414,52.62,54.94,15,0
    .goto 1414,52.83,54.71
    >>Clique em |cRXP_PICK_Pergaminho|r |cFFfa9602no chão perto do Portal da Caverna Ululante em Savanas|r para obter |T135142:0|t[Segredos dos sonhadores.]
    .collect 209846,1
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zoneskip Orgrimmar
    .goto 1414,52.83,54.71
    .deathskip >>Morra e ressurja em |cFF00FF25Anjo da Cura|r
    .isQuestAvailable 78143
step
    #completewith Arcanic Systems Manual
    .zone The Barrens >>Vá para |cFFfa9602Savanas|r
    .fly Crossroads >>Aprenda a rota de voo para a |cRXP_WARN_Encruzilhada|r se tiver desbloqueada, |cRXP_WARN_caso contrário, vá a pé.|r
    .disablecheckbox
    .isQuestAvailable 78145
step
    #label Arcanic Systems Manual
    .goto The Barrens,56.3,8.8
    >>Clique em |cRXP_PICK_Manual|r |cFFfa9602no topo do Oil Rig em Savanas|r para obter |T134509:0|t[Manual de Sistemas Arcânicos.]
    .collect 209847,1
    .isQuestAvailable 78145
step
    #completewith next
    .zone Desolace >>Vá para |cFFfa9602Desolação|r
    .fly Desolace >>Pegue a rota de voo para |cFFfa9602Desolação|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79950
step
    .goto Desolace,55.0,26.0
    >>Clique em Pergaminho|cRXP_PICK_ para receber o livro |T133733:0|t[Demônios e Você]|r
    .collect 215817,1
    .isQuestAvailable 79950
step
    #completewith next
    .zone The Barrens >>Vá para |cFFfa9602Savanas|r |cRXP_WARN_a pé se você não tem nenhuma rota de voo.|r
    .fly Ratchet >>Aprenda a rota de voo para |cFFfa9602Ratchet|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79097
step
    #completewith next
    .zone Stonetalon Mountains >>Vá para a |cFFfa9602Cordilheira das Torres de Pedra|r a pé se você estiver nas |cFFfa9602Savanas|r.
    .fly Stonetalon Mountains >>Aprenda a rota de voo de |cFFfa9602Orgrimmar|r se tiver desbloqueada.
    .disablecheckbox
    .isQuestAvailable 78149
step
    .goto 1442,74.27,85.72,5,0
    .goto 1442,74.37,85.75
    >>Clique no |cRXP_PICK_Pergaminho|r |cFFfa9602em Stonetalon Mountain|r para obter |T133209:0|t[Fúria da terra.]
    .collect 209851,1
    .isQuestAvailable 78149
step
    .isQuestAvailable 81952
    .zone Azshara >>Vá para |cFFfa9602Azshara|r
    .fly Ashenvale >>Voe para |cFFfa9602Vale Gris|r
    .disablecheckbox
step
    .goto Azshara,20.7,62
    >>Clique em |cRXP_PICK_Livro|r para obter |T133740:0|t[Etiqueta Cotidiana.]
    .collect 220348,1
    .isQuestAvailable 81952
step
    #completewith next
    .zone Darkshore >>Viaje para |cFFfa9602Costa Negra|r a pé |cRXP_WARN_se você não tem nenhuma rota de voo.|r
    .disablecheckbox
    .isQuestAvailable 78124
step
    .goto 1439,59.51,23.05,10,0
    .goto 1439,58.99,22.49,10,0
    .goto 1439,59.07,23.07,15,0
    .goto 1439,59.62,22.13
    >>Clique em |cRXP_PICK_Pergaminho|r em |cFFfa9602Costa Negra|r para obter |T237447:0|t[Narthalas Almanac vol 74.]
    .collect 209843,1
    .isQuestAvailable 78124
step
    #completewith next
    .zone Dustwallow Marsh >>Vá para |cFFfa9602Pântano Vadeoso|r
    .fly Dustwallow Marsh >>Aprenda a rota de voo para |cFFfa9602Pântano Vadeoso|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79952
step
    .goto Dustwallow Marsh,57.5,21.0
    >>Clique em |cRXP_PICK_Livro Encharcado|r para receber o livro |T133740:0|t[RwlRwlRwlRwl!].
    .collect 215822,1
    .isQuestAvailable 79952
step
    #completewith next
    .zone Thousand Needles >>Vá para |cFFfa9602Mil Agulhas|r
    .fly Thousand Needles >>Aprenda a rota de voo para |cFFfa9602Mil Agulhas|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79947
step
    .goto Thousand Needles,34.0,40.0
    >>Clique em |cRXP_PICK_Pergaminho|r para receber o livro |T133740:0|t[Geomancia: a verdade nua e crua] dentro da tenda ao lado de um saco.
    .collect 215683,1
    .isQuestAvailable 79947
step
    #completewith next
    .zone Tanaris >>Vá para |cFFfa9602Tanaris|r
    .fly Tanaris >>Aprenda a rota de voo para |cFFfa9602Tanaris|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81949
step
    .goto Tanaris,72.6,47.8
    >>Clique em |cRXP_PICK_Livro|r para obter |T134941:0|t[Lendas dos Sábios das Marés]
    .collect 220346,1
    .isQuestAvailable 81949
step
    .zone Undercity >>Voe para |cFFfa9602Undercity|r
    .cast 3563 >>Usar [Teleporte Undercity] |cRXP_WARN_Se você tem|r |T134419:0|t[Runa de Teleporte]
    .disablecheckbox
step
    .goto Undercity,69.8,27.6
    .vendor >>|cRXP_WARN_É altamente recomendado reparar, pois usaremos pulos de morte.|r
    >>|cFFFF0000Se você preferir não usar pulos de morte, pule este passo manualmente.|r
step
    .goto 1420,59.62,52.05,5,0
    .goto 1420,59.39,52.29
    >>Clique no |cRXP_PICK_The Apothecary's Society Primer|r |cFFfa9602em Tirisfal Glades, Brill|r para obter |T133737:0|t[A Cartilha Metafísica do Boticário.]
    .collect 208185,1
    .isQuestAvailable 79095
step
    #completewith next
    .zone Silverpine Forest >>Vá para |cFFfa9602Floresta de Pinhaprata|r a pé |cRXP_WARN_se você está em|r |cFFfa9602Tirisfal Glades.|r
    .fly Silverpine Forest >>Pegue a rota de voo para |cFFfa9602Floresta de Pinhaprata|r |cRXP_WARN_se você está em|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 79096
step
    .goto 1421,43.12,41.39,5,0
    .goto 1421,42.7,41.37,5,0
    .goto 1421,42.72,40.85,5,0
    .goto 1421,43.43,41.29
    >>Clique no |cRXP_PICK_Segredos Arcanos|r |cFFfa9602em Floresta de Pinhaprata|r para obter |T133744:0|t[Ataeric: Sobre Curiosidades Arcanas.]
    .collect 219177,1
    .isQuestAvailable 79096
step
    #completewith next
    .zone Silverpine Forest >>Vá para |cFFfa9602A Floresta de Pinhaprata.|r
    .fly Silverpine Forest >>Pegue a rota de voo para |cFFfa9602Floresta de Pinhaprata|r |cRXP_WARN_se você está em|r |cFFfa9602Undercity.|r
    .disablecheckbox
    .isQuestAvailable 78127
step
    .goto 1421,62.01,64.19,10,0
    .goto 1421,63.08,63.99,5,0
    .goto 1421,63.08,63.48,5,0
    .goto 1421,63.54,63.13
    >>Clique em |cRXP_PICK_Book|r |cFFfa9602dentro do Castelo Principal de Ambermill em Floresta de Silverpine|r para obter |T134917:0|t[O Compêndio de Dalaran vol 23.]
    .collect 209844,1
    .isQuestAvailable 78127
step
    #completewith next
    .zone Alterac Mountains >>Vá para |cFFfa9602Alterac Mountains|r
    .fly Alterac Mountains >>Aprenda a rota de voo para |cFFfa9602Alterac Mountains|r |cRXP_WARN_se você a tiver desbloqueado.|r
    .disablecheckbox
    .isQuestAvailable 79948
step
    .goto Alterac Mountains,48.5,57.6
    >>Clique em |cRXP_PICK_Manual|r dentro da torre em caixas para receber o Livro |T133736:0|t[Magia defensiva básica].
    .collect 215815,1
    .isQuestAvailable 79948
step
    #completewith next
    .zone The Hinterlands >>Vá para |cFFfa9602Terras Agrestes|r
    .fly Hinterlands >>Pegue a rota de voo para |cFFfa9602Terras Agrestes|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81954
step
    .goto The Hinterlands,36.0,72.7
    >>Clique em |cRXP_PICK_Livro|r para obter |T134942:0|t[Jornadas Venenosas]
    .collect 220350,1
    .isQuestAvailable 81954
step
    #completewith next
    .zone Arathi Highlands >>Vá para |cFFfa9602Planalto Arathi|r
    .fly Arathi Highlands >>Aprenda a rota de voo para |cFFfa9602Planalto Arathi|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79949
step
    .goto Arathi Highlands,74.0,65.0
    >>Clique em |cRXP_PICK_Pergaminho|r para receber o Livro |T134331:0|t[A Teia of Lies: Debunking Myths and Legends]
    .collect 215816,1
    .isQuestAvailable 79949
step
    #completewith next
    .zone Badlands >>Voe para |cFFfa9602Ermos|r
    .fly >>Usar a rota de voo para |cFFfa9602Ermos|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79951
step
    .goto Badlands,56.7,39.9
    >>Clique no Livro |T134937:0|t[Múmias: um guia para os desagradáveis mortos-vivos]
    .collect 215820,1
    .isQuestAvailable 79951
step
    .goto 1437,33.61,47.82
    >>Clique em |cRXP_PICK_Pergaminho|r |cFFfa9602no vaso nos Pântanos|r para obter |T237450:0|t[Pergaminhos de Goaz.]
    .collect 209848,1
    .isQuestAvailable 78146
step
    #completewith next
    .zoneskip Westfall
    .fly Westfall >>Vá para |cFFfa9602Cerro Oeste|r |cRXP_WARN_pegando uma rota de voo.|r
    .isQuestAvailable 78142
    .disablecheckbox
step
    .goto 1436,45.41,69.93,10,0
    .goto 1436,45.36,70.43
    >>Clique no |cRXP_PICK_Spellbook|r localizado |cFFfa9602on the Alquimia Cabinet in a small house in Moonbrook, Cerro Oeste|r para obter |T133733:0|t[Encantamentos e esplendores.]
    .collect 209845,1
    .isQuestAvailable 78142
step
    #completewith next
    .zone Duskwood >>Vá para |cFFfa9602Floresta do Crepúsculo|r
    .fly Westfall >>Pegue a rota de voo para |cFFfa9602Cerro Oeste|r |cRXP_WARN_se você a desbloqueou e ainda não está lá.|r
    .disablecheckbox
    .isQuestAvailable 78147
step
    .goto 1431,15.9,38.74,10,0
    .goto 1431,15.3,38.52,15,0
    .goto 1431,15.61,36.52,15,0
    .goto 1431,16.12,33.43,15,0
    .goto 1431,16.15,30.75,15,0
    .goto 1431,16.64,28.33
    >>Clique em |cRXP_PICK_Livro|r |cFFfa9602dentro das Catacumbas de Madeira Amanhecer na Mesa de Alquimia em Floresta do Crepúsculo|r para obter |T133738:0|t[Crimes contra a Anatomia]
    >>|cRXP_WARN_É recomendado correr até o final das catacumbas e morrer. Além disso, você pode considerar se agrupar.|r
    .collect 209849,1
    .isQuestAvailable 78147
step
    #completewith next
    .zone Swamp of Sorrows >>Vá para |cFFfa9602Pântano das Mágoas|r
    .fly Swamp of Sorrows >>Pegue a rota de voo para |cFFfa9602Pântano das Mágoas|r |cRXP_WARN_se você a tem desbloqueada e ainda não está lá.|r
    .disablecheckbox
    .isQuestAvailable 79953
step
    #loop
    .goto 55.6,29.0,25,0
    .goto 65.0,23.2,25,0
    .goto 63.6,27.2,25,0
    .goto 57.0,33.0,25,0
    >>Mate |cRXP_ENEMY_Caçador dos Perdidos|r, |cRXP_ENEMY_Moralodo dos Perdidos|r, |cRXP_ENEMY_Cozinheiro dos Perdidos|r e |cRXP_ENEMY_Vidente dos Perdidos|r. Saqueie-os para obter |cRXP_LOOT_|T237379:0|t[Chave da Jaula Enferrujada]|r
    .collect 216523,1
    .mob Lost One Hunter
    .mob Lost One Muckdweller
    .mob Lost One Cook
    .mob Lost One Seer
    .isQuestAvailable 79953
step
    .goto Swamp of Sorrows,61.0,22.0
    >>Clique na |cRXP_PICK_Jaula Enferrujada|r para obter o Livro |T133742:0|t[Um guia ludita para cuidar da sua mascote demoníaca]
    .collect 215824,1
    .isQuestAvailable 79953
step
    #completewith next
    .zone Swamp of Sorrows >>Vá para |cFFfa9602Pântano das Mágoas|r
    .fly Swamp of Sorrows >>Pegue a rota de voo para |cFFfa9602Pântano das Mágoas|r |cRXP_WARN_se você a tem desbloqueada e ainda não está lá.|r
    .disablecheckbox
    .isQuestAvailable 81947
step
    .goto Swamp of Sorrows,70,51
    >>Clique em |cRXP_PICK_Livro|r para obter |T133738:0|t[Feitiçaria sanguínea]
    .collect 220345,1
    .isQuestAvailable 81947
step
    #completewith next
    .zone Blasted Lands >>Vá para |cFFfa9602Barreira do Inferno|r
    .fly Blasted Lands >>Pegue a rota de voo para |cFFfa9602Barreira do Inferno|r |cRXP_WARN_se você a tem desbloqueada e ainda não está lá.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Blasted Lands,55.3,32.2
    >>Clique em |cRXP_PICK_Livro|r para obter |T133736:0|t[Códice do Conjurador]
    .collect 220353,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Stranglethorn Vale >>Vá para |cFFfa9602Stranglethorn Vale|r
    .fly Stranglethorn Vale >>Pegue a rota de voo para |cFFfa9602Stranglethorn Vale|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 79535
step
    .goto Stranglethorn Vale,41.0,51.0
    >>Clique em |cRXP_PICK_Research Notes|r no banco para receber o Livro |T237162:0|t[Basiliscos: quem tem medo de virar pedra?]
    .collect 213165,1
    .isQuestAvailable 79535
step
    #completewith next
    .zone Searing Gorge >>Vá para |cFFfa9602Garganta Abrasadora|r
    .fly Searing Gorge >>Pegue a rota de voo para |cFFfa9602Garganta Abrasadora|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81955
step
    .goto Searing Gorge,37.8,49.6
    >>Clique em |cRXP_PICK_Livro|r para obter |T133743:0|t[Desenho forjado em pedra]
    .collect 220352,1
    .isQuestAvailable 81955
step
    #completewith next
    .zone Searing Gorge >>Vá para |cFFfa9602Garganta Abrasadora|r
    .fly Searing Gorge >>Pegue a rota de voo para |cFFfa9602Garganta Abrasadora|r |cRXP_WARN_se você a tem desbloqueada.|r
    .disablecheckbox
    .isQuestAvailable 81953
step
    .goto 1415,20.7,62
    >>Clique em |cRXP_PICK_Livro|r para obter |T133743:0|t[Desenho forjado em pedra]
    .collect 220349,1
    .isQuestAvailable 81953
step
    #completewith next
    .zone Undercity >>Voe para |cFFfa9602Undercity|r
    .cast 3563 >>Usar |T135766:0|t[Teleporte Undercity] |cRXP_WARN_Se você tem|r |T134419:0|t[Runa de Teleporte]
    .disablecheckbox
step
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Adélio Tadeu <Bibliotecário>|r |cFFfa9602em Undercity, Magic Quarter.|r
    --x .accept is correct here because its a special kind of quest shiek
    .accept 78124 >>Vire em Almanaque de Nar'thalas
    .accept 78127 >>Vire em O Compêndio de Dalaran
    .accept 78142 >>Vire em Encantamentos e esplendores
    .accept 78143 >>Vire em Segredos dos sonhadores
    .accept 78145 >>Vire em Manual de Sistemas Arcânicos
    .accept 78146 >>Vire em Pergaminhos de Goaz
    .accept 78147 >>Vire em Crimes contra a Anatomia
    .accept 78148 >>Vire em Runas dos Reis Feiticeiros
    .accept 78149 >>Vire em Fúria da terra
    .accept 79094 >>Vire em As Lições de Ta'zo
    .accept 79095 >>Entregue A Cartilha Metafísica do Boticário
    .accept 79096 >>Vire em Ataeric: Sobre Curiosidades Arcanas
    .accept 79097 >>Vire em Ataeric: Baxtan: Sobre Magias Destrutivas
    .accept 79535 >>Vire em Basiliscos: quem tem medo de virar pedra?
    .accept 79947 >>Vire em Geomancia: a verdade nua e crua
    .accept 79948 >>Virar para Magia Defensiva Básica
    .accept 77949 >>Virar para A Teia de Mentiras: Desmascarando Mitos e Lendas
    .accept 79950 >>Virar para Demônios e Você
    .accept 79951 >>Virar para Múmias: Um Guia para os Desagradáveis Mortos-vivos
    .accept 79952 >>Virar para RwlRwlRwlRwl!
    .accept 81947 >>Virar para Feitiçaria Sanguínea
    .accept 81949 >>Virar para Lendas dos Sábios das Marés
    .accept 81951 >>Virar para O Liminar e o Arcano
    .accept 81952 >>Virar para Etiqueta Cotidiana
    .accept 81953 >>Virar para Desenho Forjado em Pedra
    .accept 81954 >>Virar para Jornadas Venenosas
    .accept 81955 >>Virar para A Mente Metálica
    .accept 81956 >>Virar para Códice do Conjurador
    .accept 79953 >>Virar para Um Guia Ludita para Cuidar da Sua Mascote Demoníaca
    .accept 78150 >>Virar para Rato de Biblioteca
    .accept 79536 >>Virar para Rato de Biblioteca Mór
    .accept 82208 >>Virar para Rato de Biblioteca Mór
    .target Owen Thadd
    .target Garion Wendell
step
    .goto Orgrimmar,50.0,68.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_The Banker|r
    .bankdeposit 209850,208185,208860,209845,209849,207972,210177,209848,209843,209851,209844,215817,215822,215683,215815,215816,215820,213165,215824,216523 >>|cRXP_WARN_Deposite os livros restantes.|r
    .target Karus
    .target Komawa
    .target Soran
]]

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Chama Viva - 6 (Elwynn Forest)
#title Chama Viva

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4,56.6,-1
    >>Compre um ou mais |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Elwynn Forest >>Vá para |cFFfa9602Elwynn Forest|r
step
    #loop
    .goto Elwynn Forest,61.0,49.2,20,0
    .goto Elwynn Forest,61.2,51.6,20,0
    .goto Elwynn Forest,62.6,54.2,20,0
    .goto Elwynn Forest,63.6,58.6,20,0
    .train 401556,1
    >>Abate |cRXP_ENEMY_Kobold Geomante|r, saqueie-os pelo |cRXP_LOOT_|T134939:0|t[Anotações de Feitiços: VACMA IHAV]|r
    .collect 203752,1
    .mob Kobold Geomancer
step
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401768 >>|cRXP_WARN_Usar|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Chama Viva - 7 (Dun Morogh)
#title Chama Viva

<< Alliance Mage SoD


step
    .train 401768,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Compre um ou mais |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Dun Morogh >>Vá para |cFFfa9602Dun Morogh|r
step
    #loop
    .goto Dun Morogh,42.0,45.6,10,0
    .goto Dun Morogh,40.2,42.8,10,0
    .goto Dun Morogh,42.0,44.6,10,0
    .goto Dun Morogh,41.4,36.0,10,0
    .goto Dun Morogh,42.6,33.6,10,0
    .goto Dun Morogh,42.8,36.6,10,0
    .train 401556,1
    >>Abate |cRXP_ENEMY_Frostmane Lança-sombras|r e |cRXP_ENEMY_Frostmane Vidente|r, saqueie-os pelo |cRXP_LOOT_|T134939:0|t[Anotações de Feitiços: VACMA IHAV]|r
    .collect 203746,1
    .mob Frostmane Shadowcaster
    .mob Frostmane Seer
step
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401768 >>|cRXP_WARN_Usar|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
-- step
    --.engrave 7,401556 >> Open your character sheet and engrave your legs with |T135820:0|t[Living Flame.] |cRXP_WARN_highly recommended.|r
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Chama Viva - 6 (Durotar)
#title Chama Viva

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Compre um ou mais |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante.|r
    .collect 211779,1
step
    #completewith Flame
    .train 401768,1
    .zone Durotar >>Vá para |cFFfa9602Durotar|r
step
    .train 401768,1
    >>Abate |cRXP_ENEMY_Burning Blade Orcs|r dentro da Caverna Lufada de Poeira. Saqueie-os pelo |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1
    .goto Durotar,52.83,29.02
    .mob Burning Blade Thug
    .mob Burning Blade Neophyte
    .xp >10,1
step
    #label Flame
    .train 401768,1
    >>Abate |cRXP_ENEMY_Burning Blade Orcs|r dentro da Caverna Crânio Pedra. Saqueie-os pelo |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1
    .goto Durotar,55.0,9.8
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
step
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401768 >>|cRXP_WARN_Usar|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Chama Viva - 6 (Tirisfal Glades)
#title Chama Viva

<< Horde Mage SoD


step
    .train 401768,1
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Compre um ou mais |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante.|r
    .collect 211779,1
step
    .train 401768,1
    #completewith next
    .zone Tirisfal Glades >>Voe para |cFFfa9602Tirisfal Glades|r
step
    .train 401768,1
    #loop
    .goto Tirisfal Glades,31.78,51.36,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    .goto Tirisfal Glades,33.65,51.07,50,0
    .goto Tirisfal Glades,31.78,51.36,50,0
    .goto Tirisfal Glades,30.02,50.48,50,0
    .goto Tirisfal Glades,29.91,49.24,50,0
    .goto Tirisfal Glades,30.62,47.53,50,0
    .goto Tirisfal Glades,31.01,46.50,50,0
    .goto Tirisfal Glades,32.15,44.83,50,0
    .goto Tirisfal Glades,33.73,45.29,50,0
    .goto Tirisfal Glades,34.10,47.88,50,0
    .goto Tirisfal Glades,33.73,49.34,50,0
    >>Abate |cRXP_ENEMY_Scarlet Humans|r. Saque-os pelo |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r]
    .collect 203752,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
    .mob Scarlet Zealot
step
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401768 >>|cRXP_WARN_Usar|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: VACMA IHAV|r] |cRXP_WARN_para aprender|r |T135820:0|t[Chama Viva]
    .use 203752
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Impacto Arcano - 18 (Vale Gris)
#title Impacto Arcano

<< Mage SoD

step << Alliance
    .train 401757,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Compre um ou mais |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante.|r
    .collect 211779,1
step << Horde
    .goto Orgrimmar,45.6,56.8,
    .goto Orgrimmar,46.2,46.6,
    .goto Orgrimmar,45.8,40.6,
    .goto The Barrens,51.4,30.2,
    .goto Swamp of Sorrows,45.8,53.0,
    .goto Thunder Bluff,42.6,55.4,
    .goto Dustwallow Marsh,36.4,30.4,
    .goto Undercity,82.6,16.0,
    .goto Thunder Bluff,41.8,55.0,
    .goto Thousand Needles,45.2,50.6,
    .goto Stonetalon Mountains,47.6,61.6,
    >>Compre um ou mais |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante.|r
    .collect 211779,1
step
    .train 401757,1
    #completewith next
    .zone Ashenvale >>Vá para |cFFfa9602Vale Gris|r
step
    .aura 430139,1 >>|cRXP_WARN_Cast|r |T136116:0|t[Explosão Arcana] |cRXP_WARN_next to the|r |cRXP_PICK_Purple Cristal|r |cRXP_WARN_to gain the|r |T135734:0|t[Carga Arcana] |cRXP_WARN_buff|r
    .goto Ashenvale,13.06,24.84
    .train 401757,1
step
    .aura 430139,2+ >>|cRXP_WARN_Cast|r |T136116:0|t[Explosão Arcana] |cRXP_WARN_next to the|r |cRXP_PICK_Purple Cristal|r |cRXP_WARN_to gain another stack of the|r |T135734:0|t[Carga Arcana] |cRXP_WARN_buff|r
    .goto Ashenvale,14.04,19.80
    .train 401757,1
step
    .aura 430139,3+ >>|cRXP_WARN_Cast|r |T136116:0|t[Explosão Arcana] |cRXP_WARN_next to the|r |cRXP_PICK_Purple Cristal|r |cRXP_WARN_to gain another stack of the|r |T135734:0|t[Carga Arcana] |cRXP_WARN_buff|r
    .goto Ashenvale,13.50,15.75
    .train 401757,1
step
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 401757 >>|cRXP_WARN_Use the|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Impacto Arcano|r] |cRXP_WARN_to train|r |T135820:0|t[Impacto Arcano]
    .use 211691
step
    #optional
    .destroy 211777 >>Destrua o |T133737:0|t[Naga Manuscript]. Você não o precisa mais
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Bomba Viva - 11 (Loch Modan)
#title Bomba Viva

<< Alliance Mage SoD


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 11 para adquirir|r |T236220:0|t[Bomba Viva] |cRXP_WARN_em Loch Modan sozinho|r
    .train 415936,1
    .xp >11,1
step
    #optional
    #label Charm
    #completewith Comprehension
    .zone Ironforge >>Viaje para Ironforge
    .train 415936,1
step
    #optional
    #requires Charm
    #completewith Comprehension
    .goto Ironforge,31.33,27.80,8,0
    .goto Ironforge,30.47,26.57,6 >>Entre na casa de |cRXP_FRIENDLY_Ginny Longafruta|r
    .train 415936,1
step
    #label Comprehension
    .goto Ironforge,31.33,27.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ginny Longafruta|r dentro
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Patuá da Compreensão] |cRXP_BUY_dela|r
    .collect 211779,1 --Comprehension Charm (1)
    .target Ginny Longberry
    .train 415936,1
step
    #label Loch1
    #completewith Tengi
    .zone Loch Modan >>Voe para Loch Modan
    .train 415936,1
step
    .goto Loch Modan,29.2,81.2,15,0
    .goto Loch Modan,28.8,83.4,15,0
    .goto Loch Modan,30.0,83.8,15,0
    .goto Loch Modan,32.2,87.2,15,0
    .goto Loch Modan,33.8,88.6,15,0
    .goto Loch Modan,36.0,88.0,15,0
    .goto Loch Modan,36.6,81.2,15,0
    .goto Loch Modan,36.6,79.6,15,0
    .train 415936,1
    >>Abate os |cRXP_ENEMY_Vidente Lascapedra|r e saqueie-os para obter |cRXP_LOOT_|T134939:0|t[Chewed Feitiço Notes]|r
    .collect 208854,1
    .mob Stonesplinter Seer
step
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Chewed Feitiço Notes|r] para aprender |T236220:0|t[Bomba Viva]
    .use 208854
-- step
    --.engrave 9,400613 >> Open your character sheet and engrave your gloves with |T236220:0|t[Living Bomb.]
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Bomba Viva - 18 (Cerro Oeste)
#title Bomba Viva

<< Alliance Mage SoD


step
    .train 415936,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>Compre um ou mais |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante.|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone Westfall >>Vá para |cFFfa9602Cerro Oeste|r
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>Abate os |cRXP_ENEMY_Guarda-colheitas|r para obter |cRXP_LOOT_|T132996:0|t[Spare Retalhador Parts]|r
    .train 401417,1
    .collect 209056,1
    .mob Harvest Golem
    .mob Harvest Repair
    .mob Harvest Watcher
    .mob Rusty Harvest Golem
step
    #loop
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    >>Abate os |cRXP_ENEMY_Redemoinhos de Poeira|r para obter |cRXP_LOOT_|T132842:0|t[Núcleo Elemental]|r
    .train 401417,1
    .collect 209058,1
    .mob Dust Devil
step
    .train 401417,1
    >>Usar |T132996:0|t[Spare Retalhador Parts]|r| para criar |T133000:0|t[Prototype Engine]
    .collect 209057,1
    .use 209058
    .use 209056
step
    .train 401417,1
    .goto Westfall,55.2,33.6,20,0
    .goto Westfall,45.0,40.8,20,0
    .goto Westfall,35.6,52.2,20,0
    .collect 208851,1 >>Encontre um |cRXP_FRIENDLY_Protótipo de Ceifa-colheitas|r e use o |T133000:0|t[Prototype Engine] nele. Depois mate o |cRXP_ENEMY_Protótipo de Ceifa-colheitas|r.
    .target Harvest Reaper Prototype
    .mob Harvest Reaper Prototype
    .use 209057
step
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Compreensão Da Sorte] de um |cRXP_FRIENDLY_Reagent Comerciante|r para usar o item.
    .train 415936 >>|T134939:0|t[|cRXP_FRIENDLY_Chewed Feitiço Notes|r] para aprender |T236220:0|t[Bomba Viva]
    .use 208854
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Bomba Viva - 17 (Floresta de Pinhaprata)
#title Bomba Viva

<< Horde Mage SoD

step
    .train 415936,1
    #completewith next
    .zone Silverpine Forest >>Vá para |cFFfa9602Floresta de Pinhaprata|r
step
    .train 415936,1
    >>Abate os |cRXP_ENEMY_Rot Hides|r |cFFfa9602em Fenris Isle.|r Saque-os para obter |T134173:0|t[Uma Cabeça Falante]. |cRXP_WARN_Clique nele na mochila.|r
    .goto Silverpine Forest,66.0,24.7
    .collect 3317,1
    .accept 460 >>Aceite Descansando in Pieces
    .use 3317
    .mob Rot Hide Brute
    .mob Rot Hide Plague Weaver
    .mob Rot Hide Savage
    .mob Raging Rot Hide
step
    .train 415936,1
    >>Interaja com a |cRXP_PICK_Cova Rasa|r
    .goto Silverpine Forest,67.8,24.8
    .turnin 460 >>Entregue Descansando in Pieces
    .accept 461 >>Aceite The Escondido Niche
    .target Shallow Grave
step
    .train 415936,1
    >>Interaja com a |cRXP_PICK_Dusty Shelf|r |cRXP_WARN_dentro do castelo na torre superior esquerda (vá à esquerda após a primeira escada)|r
    .goto Silverpine Forest,65.3,24.8
    .turnin 461 >>Entregue The Escondido Niche
    .accept 491 >>Aceite Varinha para Bethor
    .target Dusty Shelf
step
    .train 415936,1
    #completewith next
    .zone Undercity >>Vá para |cFFfa9602Undercity|r (se você tem o ponto de voo de Undercity, você pode deathskip para The Sepulcher e voar de lá)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boanerges Stalactus|r.
    .goto Undercity,83.8,16.2
    .turnin 491 >>Entregue Varinha para Bethor
    .accept 78277 >>Aceite Um Símbolo de Gratidão
    .turnin 78277 >>Entregue Um Símbolo de Gratidão
    .train 415936 >>|cRXP_WARN_Você treinará automaticamente a runa ao entregar a missão|r
    .target Bethor Iceshard
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Bomba Viva - 20 (Savanas)
#title Bomba Viva

<< Horde Mage SoD

step
    #optional
    .train 415936,1
    .train 1953,1
    +|cRXP_WARN_Você deve treinar|r |T135736:0|t[Lampejo] |cRXP_WARN_para adquirir a|r |T236220:0|t[Bomba Viva] |cRXP_WARN_runa|r
step
    #optional
    .train 415936,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Compreensão Da Sorte] |cRXP_BUY_de um|r |cRXP_FRIENDLY_Reagent Comerciante|r
    .collect 211779,1
step
    .train 415936,1
    #completewith next
    .zone The Barrens >>Vá para |cFFfa9602Savanas|r
step
    .train 415936,1
    .goto The Barrens,45.45,80.00
    .aura 421063,1 >>|cRXP_WARN_Faça Lampejo contra|r |cRXP_PICK_Etched Entalhe|r |cRXP_WARN_na parede para obter o|r |T236168:0|t[Caminho Sem Passos] |cRXP_WARN_Bônus|r
step
    .train 415936,1
    .goto The Barrens,45.28,80.14,5,0
    .goto The Barrens,45.23,80.42,5,0
    .goto The Barrens,45.06,80.57,5,0
    .goto The Barrens,44.94,80.80,5,0
    .goto The Barrens,44.87,81.08,5,0
    .goto The Barrens,44.80,81.37
    .train 415936 >>|cRXP_WARN_Lance|r |T135736:0|t[Lampejo] |cRXP_WARN_nos círculos verdes um a um. No final, faça Lampejo contra o|r |cRXP_PICK_Etched Entalhe|r |cRXP_WARN_para treinar|r |T236220:0|t[Bomba Viva]
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#title Seta de Gelo Mágico/Seta de Fogofrio
#name Seta de Gelo Mágico/Seta de Fogofrio - 37 (Stranglethorn Vale)

step << Alliance
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Compreensão Da Sorte] |cRXP_BUY_de um|r |cRXP_FRIENDLY_Reagent Comerciante|r
    .collect 211779,1
step << Horde
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Compreensão Da Sorte] |cRXP_BUY_de um|r |cRXP_FRIENDLY_Reagent Comerciante|r
    .collect 211779,1
step
    .train 415948,1
    .train 401762,1
    #completewith next
    .zone Stranglethorn Vale >>Vá para |cFFfa9602Stranglethorn Vale|r
step
    .train 415948,1
    .train 401762,1
    #loop
    .goto Stranglethorn Vale,46.6,30.0,60,0
    .goto Stranglethorn Vale,43.6,33.2,60,0
    .goto Stranglethorn Vale,46.4,40.6,60,0
    .goto Stranglethorn Vale,48.6,40.8,60,0
    >>Mate os |cRXP_ENEMY_Místicos Rachacrânio|r. Saqueie-os pelas |T134939:0|t[|cRXP_LOOT_Spell Notes: PELFRB STOLLOTS]|r e pelas |T134939:0|t[|cRXP_LOOT_Anotações de Feitiços: ETAF ED GOROIFROF|r]
    .collect 213127,1
    .collect 217161,1
    .mob Skullsplitter Mystic
step << Alliance
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Stormwind City,55.8,65.2,-1
    .goto Stormwind City,32.4,80.0,-1
    .goto Stormwind City,43.4,26.8,-1
    .goto Stormwind City,36.0,74.8,-1
    .goto Elwynn Forest,64.8,69.2,-1
    .goto Ironforge,19.6,56.2,-1
    .goto Undercity,69.6,39.2,-1
    .goto Darnassus,38.8,60.4,-1
    .goto Ashenvale,35.0,48.6,-1
    .goto Ironforge,31.2,27.6,-1
    .goto Duskwood,76.0,45.2,-1
    .goto Darnassus,34.6,9.8,-1
    .goto Wetlands,8.4, 56.6,-1
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Compreensão Da Sorte] |cRXP_BUY_de um |cRXP_FRIENDLY_Reagent Comerciante|r para decifrar a runa|r
    .collect 211779,1
step << Horde
    #optional
    #completewith next
    .train 415948,1
    .train 401762,1
    .goto Orgrimmar,45.6,56.8,-1
    .goto Orgrimmar,46.2,46.6,-1
    .goto Orgrimmar,45.8,40.6,-1
    .goto The Barrens,51.4,30.2,-1
    .goto Swamp of Sorrows,45.8,53.0,-1
    .goto Thunder Bluff,42.6,55.4,-1
    .goto Dustwallow Marsh,36.4,30.4,-1
    .goto Undercity,82.6,16.0,-1
    .goto Thunder Bluff,41.8,55.0,-1
    .goto Thousand Needles,45.2,50.6,-1
    .goto Stonetalon Mountains,47.6,61.6,-1
    >>|cRXP_BUY_Compre um ou mais|r |T135933:0|t[Compreensão Da Sorte] |cRXP_BUY_de um |cRXP_FRIENDLY_Reagent Comerciante|r para decifrar a runa|r
    .collect 211779,1
step
    .train 415948 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_LOOT_Feitiço Anotações de Feitiços: TCOESGIE LAOMDEÁG|r] |cRXP_WARN_para treinar|r |T135780:0|t[Seta de Gelo Mágico]
    .train 401762 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_LOOT_Feitiço Anotações de Feitiços: ETAF ED GOROIFROF|r] |cRXP_WARN_para treinar|r |T236217:0|t[Seta de Fogofrio]
    .use 213127
    .use 217161
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#name Embalo de Fogo - 32 (Alterac Mountains)
#title Embalo de Fogo

-- Hot Streak

step
    #optional
    .train 401749,1
    .train 2121,1 -- flamestrike r2
    .train 8422,1 -- flamestrike r3
    .train 8423,1 -- flamestrike r4
    .train 2120 >>|cRXP_WARN_Você deve ter|r |T135826:0|t[Golpe Flamejante] |cRXP_WARN_treinado para adquirir a|r |T236218:0|t[Embalo de Fogo] |cRXP_WARN_runa|r
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286
    .zone Alterac Mountains >>Viagem para Alterac Mountains
step
    .train 401749,1
    .goto Alterac Mountains,60.510,46.286,-1
    .goto Alterac Mountains,60.278,44.900,-1
    >>|cRXP_WARN_Lance|r |T135826:0|t[Golpe Flamejante] |cRXP_WARN_nos dois foles anexados ao prédio da ferraria em Strahnbrad. Uma vez que um dos foles começa a brilhar em vermelho e fogo, lance|r |T135826:0|t[Golpe Flamejante] |cRXP_WARN_novamente no segundo fole para acendê-lo também. Isso acionará o |cRXP_ENEMY_Elemental do Fogo Ancestral|r para aparecer|r
    >>Abate o |cRXP_ENEMY_Elemental do Fogo Ancestral|r. Saque-o para obter o |T134939:0|t[|cRXP_LOOT_Spell Notes: Embalo de Fogo|r]
    .collect 213113,1
    .mob Ancient Fire Elemental
step
    .train 401749 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Embalo de Fogo|r] |cRXP_WARN_para treinar|r |T236218:0|t[Embalo de Fogo]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Embalo de Fogo - 37 (Planalto Arathi)
#title Embalo de Fogo

-- Hot Streak

step
    .train 401749,1
    #completewith next
    .zone Arathi Highlands >>Vá para Planalto Arathi
step
    .train 401749,1
    .goto Arathi Highlands,67.46,28.79,40,0
    .goto Arathi Highlands,65.47,28.77,40,0
    .goto Arathi Highlands,65.87,31.24,40,0
    .goto Arathi Highlands,67.47,30.65,40,0
    .goto Arathi Highlands,66.82,29.77
    >>Abate os |cRXP_ENEMY_Burning Exiles|r. Saque-os para obter os |T134939:0|t[|cRXP_LOOT_Spell Notes: Embalo de Fogo|r]
    >>|cRXP_WARN_Nota: Isso foi relatado como tendo uma taxa de queda relativamente baixa. Você pode querer considerando obtê-lo das Montanhas de Alterac em vez disso|r
    .collect 213113,1
    .mob Burning Exile
step
    .train 401749 >>|cRXP_WARN_Use o|r |T134939:0|t[|cRXP_LOOT_Spell Notes: Embalo de Fogo|r] |cRXP_WARN_para treinar|r |T236218:0|t[Embalo de Fogo]
    .use 213113
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Preservação Cronostática - 30 (Mil Agulhas)
#title Preservação Cronostática

step
    .train 416028,1
    #completewith SpellNotes
    +|cRXP_WARN_Certifique-se de trazer pelo menos um outro |cFF69CCF0Mago|r amigo para os próximos passos! Esta próxima parte não pode ser completada em solitário!|r
step
    .train 425189,1
    .zone Thousand Needles >>Viagem para Mil Agulhas
step
    .train 425189,1
    #loop
    .goto Thousand Needles,23.2,25.0,25,0
    .goto Thousand Needles,20.2,22.0,25,0
    .goto Thousand Needles,17.6,19.6,25,0
    .goto Thousand Needles,18.6,24.6,25,0
    >>Mate os |cRXP_ENEMY_Galak Marauders|r, os |cRXP_ENEMY_Galak Maulers|r e os |cRXP_ENEMY_Galak Stormers|r. Saqueie-os para obter a |cRXP_LOOT_Chave de Jaula de Puma|r
    .collect 214435,1
    .mob Galak Mauler
    .mob Galak Marauder
    .mob Galak Stormer
    .itemcount 213634,<1
step
    #completewith next
    .goto Thousand Needles,23.714,24.780
    +Abra a |cRXP_PICK_Jaula de Puma|r para soltar o |cRXP_ENEMY_Seared Espinhos Cougar|r
    .itemcount 214435,1
step
    .train 425189,1
    .goto Thousand Needles,23.714,24.780
    >>Mate o |cRXP_ENEMY_Seared Espinhos Cougar|r. Saqueie-a para obter |T134943:0|t[|cRXP_LOOT_Partial Feitiço Notes|r]
    >>|cRXP_WARN_Você deve usar apenas feitiços Gélido para enfraquecê-lo para que ele possa ser danificado|r
    .mob Seared Needles Cougar
    .collect 213634,1
step
    .train 425189,1
    .goto Thousand Needles,13.598,33.854,40,0
    .goto Thousand Needles,10.81,39.60
    >>Mate o |cRXP_ENEMY_Singed Consorte de Alcândora|r. Saqueie-o para obter as |T134938:0|t[|cRXP_LOOT_Partial Feitiço Notes|r]
    >>|cRXP_WARN_Você deve usar apenas feitiços Gélido para enfraquecê-lo para que ele possa ser danificado|r
    .collect 213633,1
    .mob Singed Highperch Consort
step
    #label SpellNotes
    .train 425189,1
    .goto Thousand Needles,26.66,46.38
    >>Mate a |cRXP_ENEMY_Calcinado Plumerrante Guinchadora|r. Saque-a para obter |T134937:0|t[|cRXP_LOOT_Notas Parciais de Feitiço|r]
    >>|cRXP_WARN_Você deve usar apenas feitiços Gélido para enfraquecê-lo para que ele possa ser danificado|r
    .collect 213632,1
    .mob Scorched Screeching Roguefeather
step
    .train 425189,1
    >>|cRXP_WARN_Use as|r |T134943:0|t|T134938:0|t|T134937:0|t[|cRXP_LOOT_Partial Feitiço Notes|r] |cRXP_WARN_para criar as|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Preservação Cronostática|r]
    .collect 213116,1
    .use 213634
    .use 213633
    .use 213632
step
    .train 425189 >>|cRXP_WARN_Use a|r |T134939:0|t[|cRXP_FRIENDLY_Spell Notes: Preservação Cronostática|r] |cRXP_WARN_para treinar|r |T135729:0|t[Preservação Cronostática]
    .use 213116
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#name Anomalia Temporal - 42 (Azeroth)


<< Mage SoD

step
    .train 429306,1
    .zone Feralas >>Viaje para Feralas
step
    .train 429306,1
    #loop
    .goto Feralas,76.0,58.4,20,0
    .goto Feralas,76.8,63.6,20,0
    .goto Feralas,72.6,63.8,20,0
    .goto Feralas,75.0,59.2,20,0
    >>Mate os |cRXP_ENEMY_Zukk'ash Forces|r. Saque-os para |T237070:0|t[Zukk'ash Resin.]
    .collect 221361,5
    .mob Zukk'ash Worker
    .mob Zukk'ash Stinger
    .mob Zukk'ash Tunneler
    .mob Zukk'ash Wasp
step
    .train 429306,1
    .zone The Hinterlands >>Vá para Terras Agrestes
step
    .train 429306,1
    >>Mate os |cRXP_ENEMY_Owlbeast|r. Saque-os para |cRXP_LOOT_|T132914:0|tPristine Owlbeast Quill.|r
    .collect 221359,1
    .mob Primitive Owlbeast
    .mob Savage Owlbeast
    .mob Vicious Owlbeast
step
    .train 429306,1
    .zone Tanaris >>Viaje para Tanaris
step
    .train 429306,1
    >>Mate os |cRXP_ENEMY_Zumbi de Zul'Farrak|r. Saqueie-os para |cRXP_LOOT_|T237132:0|tFarraki Papyrus.|r
    .collect 221360,8
    .mob Zul'Farrak Zombie
step << Horde
    .train 429306,1
    .goto 1458,73.47,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Adélio Tadeu <Bibliotecário>|r |cFFfa9602em Undercity, Magic Quarter.|r
    .accept 82054
step << Alliance
    .train 429306,1
    .goto Stormwind City,37.81,79.98
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garion Wendell <Bibliotecário>|r |cFFfa9602em Ventobravo, Mago Torre.|r
    .accept 82054
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 15 (Cerro Oeste)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >>Vá para Ventobravo
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>Vá para Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
step
    .train 429311,1
    #loop
    .goto Westfall,47.0,39.4,40,0
    .goto Westfall,51.0,32.6,40,0
    .goto Westfall,47.6,22.0,40,0
    .goto Westfall,46.8,12.6,40,0
    .goto Westfall,41.6,15.2,40,0
    .goto Westfall,32.4,29.2,40,0
    .goto Westfall,29.8,34.4,40,0
    .goto Westfall,31.8,39.4,40,0
    .goto Westfall,28.6,44.0,40,0
    .goto Westfall,29.0,47.8,40,0
    .goto Westfall,29.0,58.8,40,0
    .goto Westfall,31.4,65.6,40,0
    .goto Westfall,29.6,69.4,40,0
    .goto Westfall,32.2,76.0,40,0
    .goto Westfall,32.2,80.2,40,0
    .goto Westfall,34.0,82.2,40,0
    .goto Westfall,37.8,85.4,40,0
    .goto Westfall,47.6,79.6,40,0
    .goto Westfall,51.6,71.4,40,0
    .goto Westfall,47.6,67.2,40,0
    .goto Westfall,62.6,26.6,40,0
    .goto Westfall,57.0,10.6,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Seta Incendiária|r |cRXP_WARN_para treinar|r |T135809:0|t[Seta Incendiária]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 35 (Desolação)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>Viagem para Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>Viaje para Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Desolace >>Viaje para a Desolação
step
    .train 429311,1
    #loop
    .goto Desolace,71.6,18.4,40,0
    .goto Desolace,73.6,24.8,40,0
    .goto Desolace,80.4,17.0,40,0
    .goto Desolace,74.6,10.4,40,0
    .goto Desolace,54.4,19.2,40,0
    .goto Desolace,47.4,22.2,40,0
    .goto Desolace,56.0,74.8,40,0
    .goto Desolace,52.0,85.6,40,0
    .goto Desolace,49.6,74.8,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 45 (Feralas)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>Viagem para Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>Viaje para Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Feralas >>Viaje para Feralas
step
    .train 429311,1
    #loop
    .goto Feralas,74.2,50.8,40,0
    .goto Feralas,73.2,54.4,40,0
    .goto Feralas,74.2,56.8,40,0
    .goto Feralas,76.2,56.6,40,0
    .goto Feralas,74.2,60.0,40,0
    .goto Feralas,76.6,63.6,40,0
    .goto Feralas,72.6,63.8,40,0
    .goto Feralas,70.6,62.6,40,0
    .goto Feralas,68.2,58.8,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 45 (Azshara)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>Viagem para Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>Viaje para Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Azshara >>Voe para Azshara
step
    .train 429311,1
    #loop
    .goto Azshara,17.6,58.8,40,0
    .goto Azshara,16.6,51.0,40,0
    .goto Azshara,21.2,54.0,40,0
    .goto Azshara,24.8,47.8,40,0
    .goto Azshara,33.0,81.6,40,0
    .goto Azshara,30.2,79.8,40,0
    .goto Azshara,25.2,81.6,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 35 (Barreira do Inferno)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City>>Vá para Ventobravo
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>Vá para Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Blasted Lands >>Viaje para as Terras Devastadas
step
    .train 429311,1
    #loop
    .goto Blasted Lands,56.2,36.6,40,0
    .goto Blasted Lands,62.0,39.2,40,0
    .goto Blasted Lands,60.2,46.8,40,0
    .goto Blasted Lands,49.0,48.2,40,0
    .goto Blasted Lands,46.8,39.2,40,0
    .goto Blasted Lands,41.4,33.6,40,0
    .goto Blasted Lands,43.8,25.0,40,0
    .goto Blasted Lands,35.0,54.8,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 15 (Savanas)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>Viagem para Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>Viaje para Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
step
    .train 429311,1
    #loop
    .goto The Barrens,60.2,36.0,40,0
    .goto The Barrens,60.8,29.0,40,0
    .goto The Barrens,59.8,27.6,40,0
    .goto The Barrens,57.6,23.6,40,0
    .goto The Barrens,42.0,14.2,40,0
    .goto The Barrens,40.0,18.4,40,0
    .goto The Barrens,44.4,50.0,40,0
    .goto The Barrens,46.4,52.6,40,0
    .goto The Barrens,47.6,49.4,40,0
    .goto The Barrens,54.4,48.6,40,0
    .goto The Barrens,58.2,49.6,40,0
    .goto The Barrens,51.8,53.4,40,0
    .goto The Barrens,48.6,83.0,40,0
    .goto The Barrens,46.2,85.6,40,0
    .goto The Barrens,43.8,83.8,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 15 (Costa Negra)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Darnassus >>Viagem para Darnassus
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Orgrimmar >>Viaje para Orgrimmar
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Darkshore >>Vá para a Costa Negra
step
    .train 429311,1
    #loop
    .goto Darkshore,43.2,27.0,40,0
    .goto Darkshore,47.4,28.8,40,0
    .goto Darkshore,56.4,24.8,40,0
    .goto Darkshore,59.8,21.8,40,0
    .goto Darkshore,49.8,36.8,40,0
    .goto Darkshore,46.2,46.8,40,0
    .goto Darkshore,37.6,63.8,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 15 (Floresta de Pinhaprata)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Ironforge >>Viaje para Ironforge
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>Vá para Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Westfall >>Viaje até Cerro Oeste
step
    .train 429311,1
    #loop
    .goto Silverpine Forest,45.6,31.8,40,0
    .goto Silverpine Forest,44.6,25.8,40,0
    .goto Silverpine Forest,38.8,23.4,40,0
    .goto Silverpine Forest,38.8,18.4,40,0
    .goto Silverpine Forest,49.8,13.4,40,0
    .goto Silverpine Forest,55.6,24.6,40,0
    .goto Silverpine Forest,50.2,56.8,40,0
    .goto Silverpine Forest,50.2,65.2,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 35 (Pântano das Mágoas)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >>Vá para Ventobravo
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>Vá para Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Swamp of Sorrows >>Vá para Pântano das Mágoas
step
    .train 429311,1
    #loop
    .goto Swamp of Sorrows,36.6,50.0,40,0
    .goto Swamp of Sorrows,27.0,49.8,40,0
    .goto Swamp of Sorrows,22.8,64.6,40,0
    .goto Swamp of Sorrows,16.6,63.6,40,0
    .goto Swamp of Sorrows,10.6,60.2,40,0
    .goto Swamp of Sorrows,12.6,29.6,40,0
    .goto Swamp of Sorrows,34.6,28.0,40,0
    .goto Swamp of Sorrows,49.8,38.6,40,0
    .goto Swamp of Sorrows,61.0,43.4,40,0
    .goto Swamp of Sorrows,60.8,27.4,40,0
    .goto Swamp of Sorrows,72.8,10.4,40,0
    .goto Swamp of Sorrows,87.6,26.0,40,0
    .goto Swamp of Sorrows,81.4,34.6,40,0
    .goto Swamp of Sorrows,91.6,56.4,40,0
    .goto Swamp of Sorrows,91.0,65.6,40,0
    .goto Swamp of Sorrows,83.8,66.4,40,0
    .goto Swamp of Sorrows,77.4,89.6,40,0
    .goto Swamp of Sorrows,77.6,90.0,40,0
    .goto Swamp of Sorrows,69.8,78.0,40,0
    .goto Swamp of Sorrows,56.8,65.6,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras (Seta Incendiária)
#name Seta Incendiária - 28 (Montanhas Cristarrubra)

<< Mage SoD

step << Alliance
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Stormwind City >>Vá para Ventobravo
step << Horde
    .train 429311,1
    #completewith Scroll of Spatial Mending
    .zone Undercity >>Vá para Undercity
step
    .train 429311,1
    #label Scroll of Spatial Mending
    >>|cRXP_BUY_Compre um|r |T134945:0|t[Pergaminho da Recomposição Espacial] |cRXP_BUY_da Casa de Leilão.|r |cRXP_WARN_Alternativamente, um encantador pode criá-lo para você.|r
    .collect 220792,1 --Scroll of Spatial Mending
step
    .train 429311,1
    #completewith next
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step
    .train 429311,1
    #loop
    .goto Redridge Mountains,29.8,30.4,40,0
    .goto Redridge Mountains,79.2,33.8,40,0
    .goto Redridge Mountains,83.2,45.2,40,0
    .goto Redridge Mountains,81.8,60.8,40,0
    .goto Redridge Mountains,79.0,73.0,40,0
    .goto Redridge Mountains,71.4,83.6,40,0
    .cast 448381 >>Usar |cRXP_FRIENDLY_Pergaminho da Recomposição Espacial|r no |cRXP_PICK_Portal|r para invocar um |cRXP_ENEMY_Fel Interloper|r.
    .target Fel Silver
    .target Fel Crack
    .target Fel Tear
    .target Fel Scar
    .target Fel Rift
    .use 220792
step
    >>Mate o |cRXP_ENEMY_Fel Interloper|r. Saqueie-o para |cRXP_LOOT_|T134939:0|tAnotações de Feitiços: Seta Incendiária.|r
    .collect 223147,1 --Spell Notes: Balefire Bolt
    .mob Fel Interloper
step
    .train 429311 >>|cRXP_WARN_Use as|r |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: Seta Incendiária|r |cRXP_WARN_para aprender|r |T135809:0|t[Seta Incendiária.]
    .use 223147
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Superaquecimento - 55 (Terras Pestilentas Ocidentais)
#title Superaquecimento

step
    .train 401764,1
    .zone Western Plaguelands >>Vá para Terras Pestilentas Ocidentais
step
    .train 401764,1
    #loop -- not sure which coord is tied to which itemid, update in future
    .goto Western Plaguelands,36.8,54.7,30,0
    .goto Western Plaguelands,64.2,57.7,30,0
    .goto Western Plaguelands,53.3,64.5,30,0
    .goto Western Plaguelands,45.1,51.9,30,0
    >>|cRXP_WARN_Usando feitiços de Fogo, descongele os|r |cRXP_FRIENDLY_Magos Gélidos Aprendizes|r|cRXP_WARN_. NÃO OS MATE!|r
    >>|cRXP_WARN_Depois lance|r |T136082:0|t[Remover Maldição Inferior] |cRXP_WARN_neles e fale com eles para receber seus|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Anotações de Feitiços Rasgadas|r]
    >>|cRXP_WARN_Repita isso para cada |cRXP_FRIENDLY_Mago de Gelo Noviço|r nas Terras Pestilentas Ocidentais Fields|r
    .collect 225938,1 --Felstone Field
    .collect 225939,1
    .collect 225940,1
    .collect 225941,1
    .target Novice Frost Mage
    .skipgossip
step
    .train 401764,1
    .use 225938 >>|cRXP_WARN_use qualquer uma dessas|r |T134937:0|t|T134938:0|t|T134943:0|t|T134945:0|t[|cRXP_LOOT_Anotações de Feitiços Rasgadas|r] |cRXP_WARN_para combiná-las em|r |T134939:0|t[|cRXP_LOOT_Anotações de Feitiços: Superaquecimento|r]
    .use 225939
    .use 225940
    .use 225941
    .collect 225691,1
step
    .train 401764 >>|cRXP_WARN_use a|r |T134939:0|t[|cRXP_LOOT_Anotações de Feitiços: Superaquecimento|r] |cRXP_WARN_para aprender|r |T135813:0|t[Superaquecimento]
    .use 225691
]])

RXPGuides.RegisterGuide([[
#classic
<< Mage SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Orbe Congelado - 55 (Selva Maleva/Hibérnia)
#title Orbe Congelado

step
    #completewith next
    .train 440858,1
    .zone Felwood >>Voe para Selva Maleva
step
    .train 440858,1
    .goto Felwood,63.0,9.0
    >>Mate os |cRXP_ENEMY_Vingadores de Madeira Morta|r e os |cRXP_ENEMY_Xamãs de Madeira Morta|r. Saqueie-os para pegar o |T237446:0|t[|cRXP_LOOT_Pergaminho Mistério Darnassiano|r]
    .collect 227796,1 -- Mysterious Darnassian Scroll 1/1
    .mob Deadwood Shaman
    .mob Deadwood Avenger
step
    .train 440858,1
    >>|cRXP_WARN_Use a|r |T135933:0|t[|cRXP_LOOT_Comprehension Da Sorte|r] |cRXP_WARN_no|r |T237446:0|t[|cRXP_LOOT_Mysterious Darnassian Pergaminho|r] |cRXP_WARN_para decifrá-lo em|r |T134937:0|t[|cRXP_LOOT_Pergaminho Darnassiano Decifrado|r]
    .collect 227797,1 -- Deciphered Darnassian Scroll 1/1
    .use 211779
    .use 227796
step
    .train 440858,1
    .goto Felwood,61.0,12.0
    .use 227797 >>|cRXP_WARN_use o|r |T134937:0|t[|cRXP_LOOT_Pergaminho Darnassiano Decifrado|r] |cRXP_WARN_em |cRXP_FRIENDLY_Calyx Greenglow|r e aceite a missão dele|r
    >>|cRXP_FRIENDLY_Calyx Greenglow|r |cRXP_WARN_patrulha em volta ligeiramente|r
    .accept 84369 >>Aceite Curando o Curandeiro
    .unitscan Calyx Greenglow
step
    .train 440858,1
    .goto Winterspring,55.0,22.0
    >>Abata os |cRXP_ENEMY_Irontree Stompers|r. Saque-os para obter o |cRXP_LOOT_Unusual Frasco|r
    .collect 227924,1,84369,1 -- Unusual Flask 1/1
    .mob Irontree Stomper
step
    .train 440858,1
    #completewith next
    .zone Winterspring >>Vá para Hibérnia
step
    .train 440858,1
    .goto Winterspring,29.0,35.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Calyx Greenglow|r
    >>|cRXP_WARN_você precisará matar |cRXP_ENEMY_Calyx Greenglow|r após entregar esta missão|r
    .turnin 84369 >>Entregue Curando o Curandeiro
    .unitscan Calyx Greenglow
step
    .train 440858,1
    >>Abate o |cRXP_ENEMY_Fido Enraivecido|r. Saque-o para obter |T134939:0|t[|cRXP_LOOT_Anotações de Feitiços: Orbe Congelado|r]
    .collect 225690,1 -- Spell Notes: Frozen Orb 1/1
    .mob Enraged Shade
step
    .train 440858 >>|cRXP_WARN_use o|r |T134939:0|t[|cRXP_LOOT_Anotações de Feitiços: Orbe Congelado|r] |cRXP_WARN_para aprender|r |T135851:0|t[Orbe Congelado]
    .use 225690
]])

RXPGuides.RegisterGuide([[
#classic
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Salva Arcana - 60 (Azeroth)
#title Salva Arcana

<< Mage SoD

step
    .train 401722,1
    #completewith Necromancy101
    .zone Western Plaguelands >>Vá para Terras Pestilentas Ocidentais
step
    .train 401722,1
    .goto Western Plaguelands,38.3,54.6
    >>Saqueie o livro |cRXP_LOOT_Batata de morto-vivo|r na fazenda do Campo de Pedravil, no andar de cima
    .collect 228132,1
    .isQuestAvailable 84395
step
    .train 401722,1
    #label Necromancy101
    .goto Western Plaguelands,69.41,72.84
    >>Saqueie o livro |cRXP_LOOT_Introdução à Necromancia|r na Fortaleza Scolomântia
    .collect 228141,1
    .isQuestAvailable 84402
step
    .train 401722,1
    #completewith UndeadMenace
    .zone Eastern Plaguelands >>Vá para Terras Pestilentas Ocidentais
step
    .train 401722,1
    .goto Eastern Plaguelands,81.7,57.8
    >>Saqueie o livro |cRXP_LOOT_A Luz: um estudo|r
    .collect 228135,1
    .isQuestAvailable 84398
step
    .train 401722,1
    .goto Eastern Plaguelands,54.5,50.8
    >>Saqueie o livro |cRXP_LOOT_O cavaleiro e a senhora|r
    .collect 228138,1
    .isQuestAvailable 84400
step
    .train 401722,1
    #label UndeadMenace
    .goto Eastern Plaguelands,31.250,21.000
    >>Saqueie o livro |cRXP_LOOT_Flagelo: ameaça morta-viva ou sociedade incompreendida?|r
    .collect 228140,1
    .isQuestAvailable 84401
step
    .train 401722,1
    #completewith next
    .subzone 1445 >>Viagem para Garganta Abrasadora ou Estepes Ardentes e dirija-se para a Montanha Blackrock
step
    .train 401722,1
    .goto 1415,48.388,63.626
    >>|cRXP_WARN_Desça pela corrente e siga em direção à entrada das Profundezas de Rocha Negra|r
    >>Saqueie o livro |cRXP_LOOT_Magma ou lava?|r no chão
    .collect 228133,1
    .isQuestAvailable 84396
step
    .train 401722,1
    #completewith next
    .zone Winterspring >>Vá para Hibérnia
step
    .train 401722,1
    .goto Winterspring,60.7,37.7
    >>Saqueie o livro |cRXP_LOOT_Ka-Cabum!|r na prateleira
    .collect 228136,1
    .isQuestAvailable 84399
step
    .train 401722,1
    #completewith next
    .zone Felwood >>Voe para Selva Maleva
    .subzoneskip 1216
step
    .train 401722,1
    .goto Felwood,65.214,3.248
    >>|cRXP_WARN_Dirija-se para o túnel do Domínio dos Presamatos. Nota: se você não estiver pelo menos Sem Hostilidade com Domínio dos Presamatos, os furbolgs o atacarão|r
    >>Saqueie o livro |cRXP_LOOT_Atlas de Kalimdor Setentrional|r no chão
    .collect 228134,1
    .isQuestAvailable 84397
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jana Catão|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urraca Convulserpe|r  << Horde
    .accept 84395 >>Entregue Batata de Morto-vivo
    .accept 84402 >>Entregue Introdução à Necromancia
    .accept 84398 >>Entregue A Luz: um estudo
    .accept 84400 >>Entregue O cavaleiro e a senhora
    .accept 84401 >>Entregue Flagelo: ameaça morta-viva ou sociedade incompreendida?
    .accept 84396 >>Entregue Magmático ou lava?
    .accept 84399 >>Entregue Ka-Cabum!
    .accept 84397 >>Entregue Atlas de Kalimdor Setentrional
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
step
    .train 401722,1
    .goto Stormwind City,38.6,79.6 << Alliance
    .goto 1458,73.6,32.6 << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jana Catão|r << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Urraca Convulserpe|r << Horde
    >>|cRXP_WARN_Se você não conseguir aceitar esta missão, certifique-se de que adquiriu as runas para Veias Gélidas/Poder Mágico/Congelamento Profundo, pois esta é uma continuação dessas runas e é necessária.|r
    .accept 84394 >>Aceite Rato de biblioteca mor
    .turnin 84394 >>Virar para Rato de Biblioteca Mór
    .target Jennea Cannon << Alliance
    .target Oran Snakewrithe << Horde
]])
