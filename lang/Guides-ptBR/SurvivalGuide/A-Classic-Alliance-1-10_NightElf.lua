if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 1-6 Shadowglen
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#defaultfor NightElf
#next 6-11 Teldrassil
step << !NightElf
    #sticky
    #completewith next
    +Você selecionou um guia destinado a Noite Elves. Você deve escolher a mesma zona inicial em que começa
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Ilthalaine|r
    .accept 456 >> Aceite O Equilíbrio da Natureza
step
    #sticky
    #label balance1
    >>Mate os |cRXP_ENEMY_Nightsabers Jovens|r e os |cRXP_ENEMY_Thistle Boars|r
    .goto Teldrassil,62.0,42.6
    .complete 456,1 --Kill Young Nightsaber (x7)
    .mob +Young Nightsaber
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob +Young Thistle Boar
step
    .xp 2
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r e |cRXP_FRIENDLY_Melithar Guenelmo|r
    .accept 4495 >> Aceite A Good Amigo
    .target +Dirania Silvershine
    .goto Teldrassil,60.899,41.961
    .accept 458 >> Aceite A Protetora dos Bosques
	.goto Teldrassil,59.924,42.474
    .target +Melithar Staghelm
step << Hunter
    #era
    .goto Teldrassil,59.8,34.1
    .xp 4-610 >> Farme até estar a 610xp de distância do nível 4 (790/1400)
step << Hunter
    #som--xpgate
    .goto Teldrassil,59.8,34.1
    .xp 4-755 >> Farme até estar a 755xp de distância do nível 4 (645/1400)
step << Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entregue A Good Amigo
    .target Iverron
    .accept 3519 >> Aceite Um Amigo em Apuros
step << Hunter
    #completewith next
    .hs >> Vá para Shadowglen
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Entregue A Protetora dos Bosques
    .target Tarindrella
    .accept 459 >> Aceite A Protetora dos Bosques
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 456,1 >> Entregue O Equilíbrio da Natureza << Hunter
    .turnin 456 >> Entregue O Equilíbrio da Natureza << !Hunter
    .target Conservator Ilthalaine
    .accept 457 >> Aceite O Equilíbrio da Natureza
	.accept 3116 >> Aceite The Simple Seal << Warrior
	.accept 3117 >> Aceite The Chiseled Seal << Hunter
--	.accept 3118 >> Accept Encrypted Sigil << Rogue
	.accept 3119 >> Aceite The Sacred Seal << Priest
	.accept 3120 >> Aceite The Verdant Seal << Druid
step << Warrior
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Venda os itens de lixo|r
    .target Keina
step << Warrior
	.goto Teldrassil,59.637,38.442
    .target Alyissia
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
	.turnin 3116 >> Entregue The Simple Seal
    .trainer >> Treine suas magias de classe
step << !Hunter
    .goto Teldrassil,59.8,34.1
    >>Mate os |cRXP_ENEMY_Mangy Nightsabers|r e os |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step << !Hunter
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >> Entregue Um Bom Amigo
    .target Iverron
    .accept 3519 >> Aceite A Amigo in Need
step << !Hunter
    #completewith next
    .hs >> Use sua Pedra de Retorno para ir a Shadowglen
step << !Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >> Entregue A Protetora dos Bosques
    .target Tarindrella
    .accept 459 >> Aceite The Protector of the Woods
step << !Hunter
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 457 >> Entregue O Equilíbrio da Natureza
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .turnin 3519 >> Entregue A Amigo in Need
    .target Dirania Silvershine
    .accept 3521 >> Aceite O Antídoto de Iverron
step << Hunter
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_BUY_Compre 3 maços de|r |T132382:0|t[Rough Flechas]
    .target Keina
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilshalan Andavento|r
    .accept 916 >> Aceite Webwood Corruption
step << Hunter
    #era
    .xp 4-40
step << Hunter
    #som--xpgate
    .xp 4-50
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Suba para a Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayanna Perenanda|r
    .turnin 3117 >> Entregue The Chiseled Seal
    .train 1978 >>Aprenda Picada de Serpente
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>Saque as |cRXP_LOOT_Moonpetal Lilies|r no chão
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    .goto Teldrassil,56.8,31.7
    >>Abate as |cRXP_ENEMY_Webwood Aranhas|r. Saqueie-as para obter seus |cRXP_LOOT_Ichor|r e |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>Abate os |cRXP_ENEMY_Capeta|r e os |cRXP_ENEMY_Tinhoso|r. Saque-os para obter seus |cRXP_LOOT_Mushrooms|r e |cRXP_LOOT_Limo Vil|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    .turnin 459 >> Entregue A Protetora dos Bosques
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .turnin 3521 >> Entregue Antídoto de Iverron
    .target Dirania Silvershine
    .accept 3522 >> Aceite O Antídoto de Iverron
step << !Priest
    #completewith next
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >> |cRXP_WARN_Venda os itens de lixo|r << !Hunter
	.vendor >> |cRXP_BUY_Compre 3 ou 4 pilhas de|r |T132382:0|t[Rough Flechas] << Hunter
    .target Keina
step << Warrior
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
	.trainer >> Treine suas magias de classe
    .target Alyissia
step << Priest
    #completewith next
    .goto Teldrassil,59.456,41.050
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Janna Lunaclara|r escadas acima
	.vendor >> |cRXP_WARN_Venda os itens de lixo|r
    .target Janna Brightmoon
step << Priest
	.goto Teldrassil,59.174,40.442
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r escadas acima
	.turnin 3119 >> Entregue O Selo Sagrado
	.trainer >> Treine suas magias de classe
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilshalan Andavento|r
    .turnin 916 >> Entregue Webwood Corruption
    .target Gilshalan Windwalker
    .accept 917 >> Aceite Webwood Ovo
step << Druid
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Suba a Árvore Aldrassil
    .target Mardant Strongoak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mardant Carvalhaço|r
	.turnin 3120 >> Entregue O Selo Verdejante
	.train 8921 >>Aprenda Fogo Lunar
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    .turnin 3522 >> Entregue O Antídoto de Iverron
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >> Entre na Caverna Shadowthread
step
    .goto Teldrassil,57.0,26.4
    >>Saque a |cRXP_LOOT_Webwood Ovo|r no chão no fundo da caverna
    .complete 917,1 --Collect Webwood Egg (x1)
step
	#softcore
	#completewith next
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << skip --logout skip
	#hardcore
	#completewith next
	+|cRXP_WARN_Saia do jogo na saliência atrás dos |cRXP_LOOT_Webwood Eggs|r. Mova seu personagem até parecer que está flutuando, depois saia do jogo e entre novamente|r
	>>|cRXP_WARN_Se você cair, apenas corra para fora da caverna normalmente para entregar a missão|r
	.link https://www.youtube.com/watch?v=TTZZT3jpv1s >>|cRXP_WARN_Clique aqui para um guia em vídeo|r
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Gilshalan Andavento|r
    .turnin 917 >> Entregue Webwood Ovo
    .target Gilshalan Windwalker
    .accept 920 >> Aceite Tenaron's Summons
step
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Suba a Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tenaron Fortagarras|r
    .turnin 920 >> Entregue Tenaron's Summons
    .target Tenaron Stormgrip
    .accept 921 >> Aceite Coroa da Terra
step
    #sticky
    #label vial1
    .goto Teldrassil,59.9,33.0
	.use 5185 >> |cRXP_WARN_Use o|r |T134776:0|t[Frasco de Cristal] |cRXP_WARN_no Moonwell|r
    .complete 921,1 --Collect Filled Crystal Phial (x1)
step << Hunter
    .goto Teldrassil,59.8,34.1
    >>Mate os |cRXP_ENEMY_Mangy Nightsabers|r e os |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .mob +Mangy Nightsaber
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob +Thistle Boar
step
    #requires vial1
    #completewith next
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << Hunter
    #requires vial1
    .goto Teldrassil,58.6,44.3
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 457,2 >> Entregue O Equilíbrio da Natureza
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >> Aceite Em Simpatia de Elune
step
    #requires vial1
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,59.062,39.448
    >>Suba na Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tenaron Fortagarras|r
    .turnin 921 >> Entregue A Coroa da Terra
    .target Tenaron Stormgrip
    .accept 928 >> Aceite Coroa da Terra
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >> Aceite Entrega para Dolanaar
]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Alliance
#name 6-11 Teldrassil
#version 1
#group Sobrevivência Guia (A)
#subgroup RXP Sobrevivência Guia 1-20
#defaultfor NightElf
#next 11-13 Costa Negra (Elfo da Noite)
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .accept 488 >> Aceite O Comando de Zenn
step
    #sticky
    #completewith zenn
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saque-os para obter |cRXP_LOOT_Presas|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r. Saque-os para obter |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saque-os para obter |cRXP_LOOT_Silk|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob +Webwood Lurker
step
    #sticky
	#completewith spiderLegs
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os pelas |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_Você precisa desses para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .accept 997 >> Aceite A Terra de Denalan
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .accept 475 >> Aceite Uma Leve Brisa
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .turnin 5622 >> Entregue Simpatia de Elune
    .target Laurna Morninglight
    .accept 5621 >> Aceite Garments of the Lua
	.trainer >> Treine suas magias de classe
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áldia|r acima da escada
    .vendor >> |cRXP_BUY_Compre e equipe uma|r |T135426:0|t[Pequeno Arremessando Faca]
    .target Aldia
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .accept 932 >> Aceite Aversão Pervertida
    .accept 2438 >> Aceite O Apanhador de Sonhos de Esmeralda
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .accept 932 >> Aceite Aversão Pervertida << !Hunter
    .accept 2438 >> Aceite O Apanhador de Sonhos de Esmeralda
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_se você conseguir pagar (2s 85c), senão pule este passo|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Rústicas] |cRXP_BUY_até encher sua aljava|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >> Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >> Treine suas magias de classe
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio] |cRXP_BUY_se você puder pagar (5s 36c), se não pule este passo|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete] |cRXP_BUY_se você puder pagar (4s 1c), se não pule este passo|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala] |cRXP_BUY_se você puder pagar (5s 4c), se não pule este passo|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r
    .turnin 2159,2 >> Entregue Entrega de Dolanaar << Hunter
    .turnin 2159 >> Entregue Entrega em Dolanaar << !Hunter
    .home >> Defina sua Pedra de Retorno em Dolanaar
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
	.train 3044>> Aprenda Tiro Arcano
    .target Dazalar
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
	.trainer >> Treine suas magias de classe
    .target Kal
step
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 928 >> Entregue A Coroa da Terra
    .target Corithras Moonrage
    .accept 929 >> Aceite Coroa da Terra
step << Druid
    .goto Teldrassil,57.721,60.641
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Malorne Folhâmina|r
    .train 2366 >> Treine |T136065:0|t[Herborismo]
    >>|T136065:0|t[Herborismo] |cRXP_WARN_É necessário para coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_Para uma missão de nível 15 mais tarde. Você pode desaprender depois|r
    .target Malorne Bladeleaf
step << Druid
    #completewith end
    >>|cRXP_WARN_Nível|r |T136065:0|t[Herborismo] |cRXP_WARN_até 15|r
    >>|cRXP_WARN_Pegue 5 Earthroot do chão para uma missão de nível 15 mais tarde|r
    .collect 2449,5
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Selecione |cRXP_FRIENDLY_Sentinela Shaya|r
    >>|cRXP_WARN_Lance|r |T135929:0|t[Cura Inferior (Rank 2)] |cRXP_WARN_e|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_em|r |cRXP_FRIENDLY_Sentinela Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 997 >> Entregue A Terra de Denalan
    .target Denalan
    .accept 918 >> Aceite Sementes de Muscoide
    .accept 919 >> Aceite Brotos de Muscoide
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Mate os |cRXP_ENEMY_Timberlings|r. Saque-os para obter |cRXP_LOOT_Sementes|r
    >>Pegue os |cRXP_LOOT_Brotos de muscoide|r no chão
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 --Collect Timberling Sprout (x12)
    .mob Timberling
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >> Entregue Sementes de Muscoide
    .target Denalan
    .accept 922 >> Aceite Rellian Spiraverde
    .turnin 919 >> Entregue Brotos de Muscoide
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >> Vá para Starbreeze Village
step
    .goto Teldrassil,68.02,59.66
    >>Abra o |cRXP_PICK_Tallonkai's Objetos de TBC|r. Saqueie-o para obter o |cRXP_LOOT_Emerald Apanhador de Sonhos|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garyol Talvethren|r acima das escadas
    .turnin 475 >> Entregue Uma Leve Brisa
    .target Gaerolas Talvethren
    .accept 476 >> Aceite Corrupção Masca-Pinho
step
    #label zenn
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_Use the|r |T134721:0|t[Frasco de Jade] |cRXP_WARN_at the Starbreeze Village Moonwell|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saque-os para obter |cRXP_LOOT_Presas|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r. Saque-os para obter |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saque-os para obter |cRXP_LOOT_Seda|r
    >>Save any|cRXP_WARN_ |T132832:0|t[Pequeno Eggs] |rand|cRXP_WARN_ |T134321:0|t[Aranhinha Pernas] |rto use for leveling|cRXP_WARN_ |T133971:0|t[Culinária] |cRXP_WARN_later|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .mob +Nightsaber
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .mob +Strigid Owl
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob +Webwood Lurker
step
    #era
    .goto Teldrassil,60.7,54.4
	.xp 7+3500 >> Suba até o nível 7 +3500xp
step
    #som--xpgate
    .goto Teldrassil,60.7,54.4
	.xp 7+2900 >> Suba até o nível 7 +2900xp
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 488 >> Entregue O Comando de Zenn
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .accept 489 >> Aceite Consiga Redenção
    .target Syral Bladeleaf
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .turnin 476 >> Entregue Corrupção Masca-Pinho
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .turnin 5621 >> Entregue Vestes da Lua
	.trainer >> Treine suas magias de classe
step
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 2438 >> Entregue O Apanhador de Sonhos de Esmeralda
    .target Tallonkai Swiftroot
    .accept 2459 >> Aceite Ferócitas, o Comedor de Sonhos
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-Chifre] |cRXP_BUY_se você puder se dar ao luxo (2s 85c), caso contrário pule este passo|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
	.vendor >>|cRXP_BUY_Compre até 800|r |T132382:0|t[Rough Flechas]
    .target Jeena Featherbow
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
	.trainer >> Treine suas magias de classe
    .target Dazalar
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >> Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >> Treine suas magias de classe
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio] |cRXP_BUY_se você puder pagar (5s 36c), se não pule este passo|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete] |cRXP_BUY_se você puder pagar (4s 1c), se não pule este passo|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala] |cRXP_BUY_se você puder pagar (5s 4c), se não pule este passo|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
step << Druid
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >> Entregue A Coroa da Terra
    .target Corithras Moonrage
    .accept 933 >> Aceite Coroa da Terra
step << Druid
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
	.trainer >> Treine suas magias de classe
    .target Kal
step
	#completewith jewel
    >>Saque os |cRXP_LOOT_Fel Cones|r no chão
    >>|cRXP_WARN_Eles geralmente são localizados próximo a troncos de árvores|r
    .complete 489,1 --Collect Fel Cone (x3)
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Gnarlpine Mystics|r
    >>|cRXP_WARN_Se não houver muitos |cRXP_ENEMY_Gnarlpine Mystics|r, você pode ter que matar |cRXP_ENEMY_Gnarlpine Warriors|r para fazê-los aparecer|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
	.goto Teldrassil,69.37,53.41
	>>Abate |cRXP_ENEMY_Ferócitas, o Comedor de Sonhos|r. Saqueie-o para obter o |T133288:0|t[|cRXP_LOOT_Colar de Masca-pinho|r]
    .use 8049 >>|cRXP_WARN_Use o |T133288:0|t[|cRXP_LOOT_Colar de Masca-pinho|r] para saquear|r |cRXP_LOOT_Joia de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Abate os |cRXP_ENEMY_Gnarlpine Místicos|r
    >>|cRXP_WARN_Se não houver muitos |cRXP_ENEMY_Gnarlpine Místicos|r você pode ter que matar os |cRXP_ENEMY_Gnarlpine Guerreiros|r para fazê-los aparecer|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Saque o |cRXP_LOOT_Fel Cones|r no chão
    >>|cRXP_WARN_Eles geralmente são localizados ao lado de troncos de árvore|r
    .complete 489,1 --Collect Fel Cone (x3)
step
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 489 >> Entregue Consiga Redenção
step
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >> Vá para Vileza Pedra
step << Hunter
    #era
    .goto Teldrassil,51.2,50.6
    >>Abate o |cRXP_ENEMY_Senhor Málinus|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Senhor Málinus|r pode estar localizado em muitos locais de aparição diferentes por toda a Vileza Pedra
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << !Hunter
    .goto Teldrassil,51.2,50.6
    >>Abate |cRXP_ENEMY_Senhor Málinus|r. Saque-o para obter sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Senhor Málinus|r pode ser encontrado em vários locais diferentes por toda Vileza Pedra
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step
    #softcore
    #completewith next
    .deathskip >> Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
step << !Druid
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >> Entregue A Coroa da Terra
step
	#era/som
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .accept 933 >> Aceite Coroa da Terra
step
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >> Vá para o sudoeste de Teldrassil
step
	#era/som
	.goto Teldrassil,42.61,76.18
	>>Clique em |cRXP_PICK_Strange Fruited Plantar|r
	.accept 930 >> Aceite A Fruta Brilhante
step
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >> Vá para Pools of Arlithrien
step
	#era/som
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_Use o|r |T134765:0|t[Frasco de Turmalina] |cRXP_WARN_no poço lunar de Poços de Arlithrien|r
	.complete 933,1
step
	#era/som
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Abate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saque-os por suas |cRXP_LOOT_Small Pernas de Aranha|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >> Vá para Dolanaar
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 933 >> Entregue A Coroa da Terra
    .target Corithras Moonrage
    .accept 7383 >> Aceite Coroa da Terra
step
	#era/som
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Treine Culinária
    .accept 4161 >> Aceite Receita dos Kaldorei
    .turnin 4161 >> Entregue Receita dos Kaldorei
    .target Zarrin
step
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Byonsa|r
    .train 3273 >> Aprenda |T135966:0|t[Primeiros Socorros]
    .target Byancie
step
    #som
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 932 >> Entregue Aversão Pervertida << !Hunter
    .turnin 2459 >> Entregue em Ferócitas, o Comedor de Sonhos
step
    #era
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 932 >> Entregue em Aversão pervertida
    .turnin 2459 >> Entregue Ferócitas, o Comedor de Sonhos
step
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada a oeste de Dolanaar|r
    .accept 487 >> Aceite A Estrada para Darnassus
    .target Moon Priestess Amara
step
    .goto Teldrassil,46.6,53.0
    >>Abate os |cRXP_ENEMY_Gnarlpine Emboscadores|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada a oeste de Dolanaar|r
    .turnin 487 >> Entregue A Estrada para Darnassus
    .target Moon Priestess Amara
step
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >> Vá para Oráculo Glade
step
	#era/som
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .accept 937 >> Aceite A Clareira Encantada
step
	#era/som
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_Use the|r |T134798:0|t[Frasco de Ametista] |cRXP_WARN_at O Oráculo Glade moonwell|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step
	#era/som
    #completewith xp10
	#label harpies
    >>Abate |cRXP_ENEMY_Bloodfeather Harpias|r. Saque-as por seus |cRXP_LOOT_Belts|r
    >>|cRXP_ENEMY_Bloodfeather Matriarcas|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que causa muito dano. Tente derrotá-las rapidamente|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#era/som
    .goto Teldrassil,34.61,28.79
    >>Clique na |cRXP_PICK_Planta Frondiosa Estranha|r
    .accept 931 >> Aceite A Fronde Cintilante
step << Hunter
	#era/som
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    .accept 938 >> Aceite Bruma
    .target Mist
step << Hunter
    #era
    #sticky
    #label xp10
    .xp 10-2670 >> Suba até ficar a 2670 xp do nível 10 (3830/6500)
    >>|cRXP_WARN_Quando você atingir este ponto de ruptura de xp, pule a missão de hárpia/escolta e vá direto para Darnassus. Você terá outra oportunidade de terminar essas missões depois|r
step << Hunter skip
    #era/som--xpgate
    #sticky
    #label xp10
    .xp 10-3330 >> Suba até ficar a 3330 xp do nível 10 (3170/6500)
    >>|cRXP_WARN_Assim que atingir este ponto de xp, pule a missão de harpia/escolta e vá direto para Darnassus. Você terá outra oportunidade de completar essas missões mais tarde|r
step << Hunter
	#era/som
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 938 >> Entregue Bruma
step << Hunter
	#era/som
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >> Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Aceite Teldrassil
step << !Hunter
	#era/som
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    .accept 938 >> Aceite Bruma
    .target Mist
step << !Hunter
	#era/som
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >> Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Aceite Teldrassil
    .turnin 938 >> Entregue Bruma
step << !Hunter
    #era
    #label xp10
    .xp 10-750 << Druid
    .xp 10-3110 << !Druid
step << !Hunter
	#som--xpgate
    #phase 1-2
	#label xp10
   .xp 10-930 << Druid
   .xp 10-3880 << !Druid
step
	#som--xpgate
    #phase 3-6
	.goto Teldrassil,38.6,58.0
	>>Colete 7 Pernas de Aranhinha
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
	#som--xpgate
	#phase 3-6
	#label xp10
	.xp 10-640
    .goto Teldrassil,38.3,34.4
	>>Se você ainda está atrasado em xp, complete a missão de harpia ao norte
step << !Druid
	#som--xpgate
	#phase 3-6
	#label xp10
	.xp 10-3300
step << !Rogue
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Viagem para Darnassus
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 922 >> Entregue Rellian Spiraverde
    .target Rellian Greenspyre
    .accept 923 >> Aceite Tumores
step << !Hunter !Rogue
	#era/som
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r no topo da Árvore
    .turnin 940 >> Entregue Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no andar intermediário
    .accept 5921 >> Aceite Moonglade
	.trainer >> Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .accept 2518 >> Aceite Lágrima da Lua
step << Druid
	#completewith next
	.cast 18960 >> Lance Teleporte: Clareira da Lua
    >>|cRXP_WARN_Estará no seu livro de magia|r
	.zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 5921 >> Entregue Moonglade
    .target Dendrite Starblaze
    .accept 5929 >> Aceite Espírito do Grande Urso
step << Druid
    .goto Moonglade,45.12,26.78,15,0
    .goto Moonglade,39.17,27.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Grande Urso|r
    .complete 5929,1 --Seek out the Great Bear Spirit and learn what it has to share with you about the nature of the bear.
    .skipgossip
    .target Great Bear Spirit
step << Druid
	#completewith next
	.cast 18960 >> Use Teleporte: Clareira da Lua
    >>|cRXP_WARN_Isso fará você voltar mais rápido|r
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite Estrelalama|r no andar superior
    .turnin 5929 >> Entregue Espírito do Grande Urso
    .target Dendrite Starblaze
    .accept 5931 >> Aceite De Volta para Darnassus
step
    #requires xp10 << Rogue
    #completewith next << !Rogue
    .hs >> Vá para Dolanaar
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
	.vendor >> |cRXP_BUY_Compre 4 pilhas de|r |T132382:0|t[Sharp Flechas]|cRXP_BUY_. Equipe-as assim que atingir o nível 10|r
    .target Jeena Featherbow
step
	#som
	#phase 3-6
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Treine Culinária
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >> Aceite Receita dos Kaldorei
    .turnin 4161 >> Entregue Receita dos Kaldorei
step
	#som
	#phase 3-6
    .goto Teldrassil,51.9,56.4
    >>Encontre Sacerdotisa da Lua Amara, ela patrula a estrada a oeste de Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    .turnin 487 >> Vá para a estrada para Darnassus
	.maxlevel 9
step << Hunter
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Aceite Domando a Fera
	.train 13165 >> Aprenda seus feitiços de nível 10
step << Hunter
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6101 >> Aceite Domando a Fera
step
	#era/som
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 7383 >> Entregue A Coroa da Terra
    .target Corithras Moonrage
    .accept 935 >> Aceite Coroa da Terra
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >> Entregue A Fronde Cintilante
    .turnin 930 >> Entregue A Fruta Brilhante
step
	#era/som
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >> Entregue O Coração Enroscado em Musgo
    .isOnQuest 927
step
	#era/som
	.goto Teldrassil,60.78,68.59
	>>Clique em |cRXP_LOOT_Denalans Planter|r
	.turnin 941 >> Entregue Plantando Coração
	.isQuestTurnedIn 927
step << Hunter
	#era/som
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Espreitador Sabre-da-noite|r
    >>|cRXP_WARN_Você deve clicar com o botão direito em seu Ajudante Frame e dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
    #label L10
    .xp 10
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
	.trainer >> Treine suas magias de classe
    .target Laurna Morninglight
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >> Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >> Treine suas magias de classe
    .target Jannok Breezesong
step << Hunter
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >> Aceite Domando a Fera
	.trainer >> Treine suas magias de classe
step << Hunter
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >> Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6101 >> Aceite Domando a Fera
step << Hunter
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Espreitador Sabre-da-noite|r
    >>|cRXP_WARN_Você deve clicar com o botão direito no Frame de Mascote e Dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >> Entregue Taming the Fera
    .target Dazalar
    .accept 6102 >> Aceite Domando a Fera
step << Hunter
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Guinchadora Estrígida|r
    >>|cRXP_WARN_Você deve clicar com o botão direito no Frame de Mascote e Dispensar seu mascote antes de poder domar outro|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >> Entregue Domar a Fera - Missão
    .target Dazalar
    .accept 6103 >> Aceite Treinando a Fera
step << Warrior
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada oeste de Dolanaar|r
    .accept 1684 >> Aceite Elanaria
    .target Moon Priestess Amara
step << Rogue
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .accept 2241 >> Aceite The Maçã Falls
step << Hunter
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre uma|r |T135145:0|t[Bengala]
    >>|cRXP_WARN_Você equipará isto depois. Pule este passo se você encontrou um bastão diferente|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
step << !Druid
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada a oeste de Dolanaar|r
    .turnin 487 >> Entregue A Estrada para Darnassus
    .target Moon Priestess Amara
step << Rogue
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Viagem para Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 922 >> Entregue Rellian Spiraverde
    .target Rellian Greenspyre
    .accept 923 >> Aceite Tumors
step << Rogue
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r no topo da Árvore
    .turnin 935 >> Entregue A Coroa da Terra
    .turnin 940 >> Entregue Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Aceite Grove of the Ancients
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >> Entregue The Maçã Falls
    .target Syurna
    .accept 2242 >> Aceite Destino Calls
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .accept 2518 >> Aceite Lágrima da Lua
step << Hunter
    #sticky
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>|cRXP_WARN_Lance|r |T132164:0|t[Domar Fera] |cRXP_WARN_em uma |cRXP_ENEMY_Caçadora Estrígida|r para domá-la|r -- .tame 1997
    .train 2981 >> Ataque criaturas com ele para aprender [Garra (Grau 2)]
    .link https://www.wow-petopia.com/classic/training.php >> Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
	.unitscan Strigid Hunter
step
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Abate os |cRXP_ENEMY_Timberling Tramplers|r, os |cRXP_ENEMY_Timberling Charco Beasts|r e os |cRXP_ENEMY_Elder Timberlings|r. Saqueie os |cRXP_LOOT_Tumors|r deles
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Mate a |cRXP_ENEMY_Dama Sathrah|r. Saque-a pelos seus |cRXP_LOOT_Spinnerets|r
    >>|cRXP_ENEMY_Dama Sathrah|r |cRXP_WARN_pode aparecer em 3 locais diferentes|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>|cRXP_WARN_Lance|r |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Sethir, o Antigo|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_ENEMY_Sethir, o Antigo|r |cRXP_WARN_caminha ao longo do grande galho da árvore|r
    >>|cRXP_WARN_Evite lutar com |cRXP_ENEMY_Sethir, o Antigo|r. Deixe-o passar, depois|r |T132320:0|t[Furtividade] |cRXP_WARN_e|r |T133644:0|t[Bater Carteira] |cRXP_WARN_quando estiver atrás dele|r
    .complete 2242,1
    .mob Sethir the Ancient
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .accept 937 >> Aceite A Clareira Encantada
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819
    >>Abate as |cRXP_ENEMY_Bloodfeather Harpias|r. Saque-as pelos seus |cRXP_LOOT_Cintos|r
    >>as |cRXP_ENEMY_Bloodfeather Matriarcas|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que causam muito dano. Tente arrebentá-las rápido|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,31.54,31.62
    .target Mist
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    .accept 938 >> Aceite Bruma
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 938 >> Entregue Bruma
step
	#som << !Hunter
	#phase 3-6 << !Hunter
    #requires harpies2
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >> Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >> Aceite Teldrassil
step
    #completewith NessaShadowsong
    .goto Darnassus,82.01,36.70,100 >> Viagem para Darnassus
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Leiloeiro de Darnassus|r
    >>Compre os itens a seguir para entrega instantânea em Costa Negra em breve. Pule este passo se não desejar comprar nenhum
    >>|T133972:0|t[Strider Carne]
    >>|T133912:0|t[Costa Negra Grouper]
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step
    #label NessaShadowsong
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >> Aceite Nessa Cantonegro
step
	.abandon 927 >> Abandone O Coração Enroscado em Musgo
step << Warrior
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >> Entregue a Elanaria
    .target Elanaria
    .accept 1683 >> Aceite Vorlus Cascruel
step << Warrior
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >> Viaje para |cRXP_ENEMY_Vorlus Cascruel|r
step << Warrior
    .goto Teldrassil,47.2,63.7
    >>Abata |cRXP_ENEMY_Vorlus Cascruel|r. Saque-o pelo |cRXP_LOOT_Chifre|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
    #completewith next
    .goto Darnassus,82.01,36.70,100 >> Viagem para Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >> Entregue Vorlus Cascruel
--	.accept 1686 >> Accept The Shade of Elura
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .turnin 5931 >> Volte para Darnassus - Missão
    .target Mathrengyl Bearwalker
    .accept 6001 >> Aceite Corpo e Coração
step
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r
    .turnin 935 >> Entregue A Coroa da Terra
    .turnin 940 >> Entregue Teldrassil << Hunter
    .target Arch Druid Fandral Staghelm
    .accept 952 >> Aceite Bosque dos Anciãos
step << Hunter
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >> Entregue Treinamento da Fera - Missão
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >> Entregue Destino Calls
step
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 923 >> Entregue Tumors
step << Rogue
    #completewith next
    .goto Darnassus,62.68,65.58,30 >> Viaje para |cRXP_FRIENDLY_Turian|r
step << Rogue
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r no segundo andar
    >>|cRXP_BUY_Compre um|r |T135641:0|t[Adaga Equilibrada de Arremesso]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2518 >> Entregue Lágrima da Lua
    .target Priestess A'moora
    .accept 2520 >> Aceite Sathrah's Sacrificar
step
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Usar|r |T135652:0|t[Sathrah's Sacrificar] |cRXP_WARN_na fonte|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com a |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2520 >> Entregue Sathrah's Sacrificar
step << Druid
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Firodren Clamaluna|r
    .train 2366 >> Treine |T136065:0|t[Herborismo]
    >>|T136065:0|t[Herborismo] |cRXP_WARN_É necessário para coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_Para uma missão de nível 15 mais tarde. Você pode desaprender depois|r
    .target Firodren Mooncaller
step << Hunter/Warrior/Priest
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .train 227 >>Treine Cajados
    >>Se você tiver um Cajado na mochila, equipe-o << Hunter
    .target Ilyenia Moonfire
step << Hunter
    #completewith FlyDS
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter
    .goto Darnassus,58.76,44.48
	.money <0.1751
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
	>>|cRXP_BUY_Compre e equipe um|r |T135489:0|t[Arco Recurvo Laminado]
    >>|cRXP_BUY_Compre|r [Flechas Afiadas]
	.collect 2507,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.3022
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135154:0|t[Cajado de Combate]|cRXP_BUY_. Equipe-o no nível 11|r
	.collect 854,1
    .target Ariyell Skyshadow
step << Warrior
    .goto Darnassus,58.76,44.48
    .money <0.2023
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
	>>|cRXP_BUY_Compre e equipe um|r |T135346:0|t[Alfanje] |cRXP_BUY_se você não puder pagar por um|r |T135154:0|t[Cajado de Combate]
	.collect 851,1
    .target Ariyell Skyshadow
step
    #completewith next
    .goto Darnassus,30.00,41.43,10 >> Viaje pelo portal roxo até a Vila de Rut'theran
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6344 >> Entregue para Nessa Cantonegro
    .target Nessa Shadowsong
    .accept 6341 >> Aceite O Contrato de Teldrassil
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >> Entregue O Contrato de Teldrassil
    .target Vesprystus
    .accept 6342 >> Aceite Voo para Auberdine
step
    #label FlyDS
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >> Voe para Costa Negra
    .target Vesprystus
]])
