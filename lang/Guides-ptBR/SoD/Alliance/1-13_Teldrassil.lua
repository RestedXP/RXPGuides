if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Horde" then return end

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 1-7 Shadowglen SoD
#displayname 1-7 Shadowglen
#version 1
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 7-13 Teldrassil SoD
step << !NightElf
    #sticky
    #completewith next
    +Você selecionou um guia destinado a Elfos Noturnos. Você deve escolher a mesma zona inicial em que começa
step
    .goto Teldrassil,58.695,44.266
    .target Conservator Ilthalaine
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .accept 456 >>Aceite O Equilíbrio da Natureza
step << Druid/Warrior/Rogue/Hunter/Priest
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Shirt] |cRXP_BUY_e compre o |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] dele|r << Priest
    >>|cRXP_BUY_Venda seu|r |T133975:0|t[Apples] |cRXP_BUY_e compre as runas a seguir:|r << Druid
    >>|cRXP_BUY_Venda um de seus |T133972:0|t|cRXP_LOOT_[Fortalecer Jerky]|r e compre a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r] << Warrior
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Camiseta] e |T132540:0|t[Botas] |cRXP_WARN_(não podem ser gravadas)|r |cRXP_BUY_e compre a |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Sombrio|r] |cRXP_BUY_e|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r] << Rogue
    >>|cRXP_BUY_Venda sua|r |T135005:0|t[Camiseta] e |T132540:0|t[Botas] |cRXP_WARN_(não podem ser gravadas)|r |cRXP_BUY_e compre a |T134419:0|t[|cRXP_FRIENDLY_Runa de Comando para Matar|r] |cRXP_BUY_e|r |T133739:0|t[|cRXP_FRIENDLY_Tratado do Coração de Leão|r] dele|r << Hunter
    .collect 205947,1 << Priest --Prophecy of a Desecrated Citadel
    .collect 209852,1 << Hunter --Rune of Kill Command
    .collect 226401,1 << Hunter --Treatise on the Heart of the Lion
    .collect 208414,1 << Druid --Lunar Idol
    .collect 210500,1 << Druid --Rune of the Stars
    .collect 206989,1 << Druid --Rune of the Sun
    .collect 227749,1 << Druid --Rune of the Falling Star
    .collect 204806,1 << Warrior --Rune of Victory Rush
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 208772,1 << Rogue --Rune of Saber Slash
    >>Você receberá o resto de suas runas muito em breve
    .target Rune Broker
    .skipgossip
step << Warrior/Rogue/Hunter/Druid/Priest
    .equip 18 >>Equipe o |T134903:0|t[|cRXP_FRIENDLY_Ídolo Lunar|r], você pode usá-lo após 30 segundos para treinar |T237472:0|t[Fúria de Tempesfúria] << Druid
    .train 402852 >>Usar o |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] para treinar |T237570:0|t[Homúnculos] << Priest
    .train 400105 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Sombrio|r] para treinar |T132323:0|t[Golpe Sombrio] << Rogue
    .train 424984 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r] para treinar |T132375:0|t[Talho de Sabre] << Rogue
    .train 403470 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r] para treinar |T132342:0|t[Ímpeto da Vitória], você a graverá em breve << Warrior
    .train 410111 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Comando para Matar|r] << Hunter
    .train 409580 >>Usar o |T133739:0|t[|cRXP_FRIENDLY_Tratado do Coração de Leão|r] para treinar |T132185:0|t[Coração de Leão] << Hunter
    .train 424718 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa das Estrelas|r] para treinar |T135730:0|t[Surto Estelar] << Druid
    .train 416044 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r] para treinar |T236216:0|t[Fogo Solar] << Druid
    .train 439770 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa da Estrela Cadente|r] para treinar |T236168:0|t[Chuva Estelar] << Druid
    .use 205947 << Priest --Prophecy of a Desecrated Citadel
    .use 204806 << Warrior --Rune of Victory Rush
    .use 204795 << Rogue --Rune of Shadowstrike
    .use 208772 << Rogue --Rune of Saber Slash
    .use 209852 << Hunter --Rune of Kill Command
    .use 226401 << Hunter --Treatise on the Heart of the Lion
    .use 208414 << Druid --Lunar Idol
    .use 210500 << Druid --Rune of the Stars
    .use 206989 << Druid --Rune of the Sun
    .use 227749 << Druid --Rune of the Falling Star
    .engrave 7 >>Grave |T237570:0|t[Homúnculos] em suas calças << Priest
    .engrave 7 >>Grave |T236174:0|t[Tiro Mortal] nas calças << Hunter
    .engrave 7 >>Grave |T135730:0|t[Surto Estelar] nas calças << Druid
step << Hunter
    #optional
    #sticky
    .aura 409583 >>Lembre de ativar o |T132185:0|t[Coração de Leão]
step << Druid
    #season 2
    #optional
    #sticky
    .train 410061 >>Usar o |T134903:0|t[|cRXP_FRIENDLY_Ídolo Lunar|r] do painel de personagem para treinar |T237472:0|t[Fúria de Tempesfúria]
    .engrave 5 >>Grave |T237472:0|t[Fúria de Tempesfúria] no peito
step
    #sticky
    #label balance1
    #completewith GoodProtector
    >>Abate os |cRXP_ENEMY_Jovens Nightsabers|r e os |cRXP_ENEMY_Jovens Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    >>Saqueie os inimigos que você mata, certifique-se de ter pelo menos 10 cobre em sucata de vendedor, você precisará disso para treinar |T132333:0|t[Brado de Batalha]<< Warrior
    .xp 2 >>Farme até o nível 2
step << !Warrior !Rogue
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r e |cRXP_FRIENDLY_Melithar Guenelmo|r
    #label GoodProtector
    .accept 4495 >>Aceite Um Bom Amigo
    .goto Teldrassil,60.899,41.961
    .accept 458 >>Aceite A Protetora dos Bosques
	.goto Teldrassil,59.924,42.474
    .target Dirania Silvershine
    .target Melithar Staghelm
step << Warrior
    #season 2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melithar Guenelmo|r
    #label GoodProtector
    .accept 458 >>Aceite A Protetora dos Bosques
	.goto Teldrassil,59.924,42.474
    .target Melithar Staghelm
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >>|cRXP_WARN_Venda lixo|r
    .target Keina
step << Rogue
    .goto Teldrassil,59.63,38.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frahun Umbrurmúrio|r
    .accept 77573 >>Aceite Obras no Andar de Cima
    .turnin 77573 >>Entregue Obras no Andar de Cima
    .target Frahun Shadewhisper
step << Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
    .accept 77575 >>Aceite Em Meio às Teias Sombrias
    .turnin 77575 >>Entregue Em Meio às Teias Sombrias
    .trainer >>Treine |T132333:0|t[Brado de Batalha]
    .target Alyissia
step << Warrior/Rogue
    .equip 10 >>Equipe as |T132938:0|t[Luvas Encadeadas Manchadas] << Warrior
    .engrave 10 >>Grave |T132342:0|t[Ímpeto da Vitória] nas luvas << Warrior
    .use 2385 << Warrior -- Tarnished Chain Gloves
    .equip 10 >>Equipe as |T132952:0|t[Luvas de Couro Rachado] << Rogue
    .engrave 10 >>Grave |T132375:0|t[Talho de Sabre] em suas luvas << Rogue
    .use 2125 << Rogue --Cracked Leather Gloves
step << Warrior/Rogue
    #season 2
    .goto Teldrassil,60.8,42.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .accept 4495 >>Aceite Um Bom Amigo
    .target Dirania Silvershine
step
    >>|cRXP_WARN_Certifique-se de equipar todas as peças de equipamento que puder se caírem. Você precisará delas para gravar|r |T134419:0|t|[Runas] |cRXP_WARN_em|r
    >>Abate os |cRXP_ENEMY_Jovens Nightsabers|r e os |cRXP_ENEMY_Jovens Thistle Boars|r
    .goto Teldrassil,62.0,42.6,0,0
    .complete 456,1 --Kill Young Nightsaber (x7)
    .complete 456,2 --Kill Young Thistle Boar (x4)
    .mob Young Nightsaber
    .mob Young Thistle Boar
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    >>Pegue o |T132939:0|t[Luvas] como recompensa para gravar uma runa nela << Druid/Hunter
    >>Pegue os |T132611:0|t[Braçadeiras] como recompensa para gravar uma runa nelas << Priest
    .turnin 456 >>Entregue O Equilíbrio da Natureza
    .target Conservator Ilthalaine
    .accept 457 >>Aceite O Equilíbrio da Natureza
step << Hunter/Rogue/Priest
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    >>|cRXP_BUY_Venda o lixo e compre todas as runas a seguir:|r << Hunter/Rogue/Priest
    .collect 212552,1 << Priest --Psychosophic Epiphany
    .collect 221481,1 << Priest --Nihilist Epiphany
    .collect 205940,1 << Priest --Memory of a Dark Purpose
    .collect 205951,1 << Priest --Memory of a Troubled Acolyte
    .collect 205932,1 << Priest --Prophecy of a King's Demise
    .collect 206168,1 << Hunter --Rune of the Chimera
    .collect 216770,1 << Hunter --Treatise on Aspect of the Viper
    .collect 210818,1 << Hunter --Rune of Lone Wolf
    .collect 213124,1 << Hunter --Rune of Close Combat
    .collect 226252,1 << Hunter --Rune of the Guerrilla
    .collect 210979,1 << Rogue --Rune of Shadowstep
    .collect 221428,1 << Rogue --Rune of Foul Play
    .collect 227922,1 << Rogue --Rune of the Swashbuckler
    >>Você receberá o resto de suas runas muito em breve
    .target Rune Broker
    .skipgossip
step << Hunter/Rogue/Priest
    .use 212552 << Priest --Psychosophic Epiphany
    .use 221481 << Priest --Nihilit Epiphany
    .use 205940 << Priest --Memory of a Dark Purpose
    .use 205951 << Priest --Memory of a Troubled Acolyte
    .use 205932 << Priest --Prophecy of a King's Demise
    .use 206168 << Hunter --Rune of the Chimera
    .use 216770 << Hunter --Treatise on Aspect of the Viper
    .use 210818 << Hunter --Rune of Lone Wolf
    .use 213124 << Hunter --Rune of Close Combat
    .use 226252 << Hunter --Rune of the Guerrilla
    .use 210979 << Rogue --Rune of Shadowstep
    .use 221428 << Rogue --Rune of Foul Play
    .use 227922 << Rogue --Rune of the Swashbuckler
    .train 431663 >>Usar o |T135791:0|t[|cRXP_FRIENDLY_Psychosophic Epifania|r] para treinar |T136181:0|t[Aparições Corrompidas] << Priest
    .train 431705 >>Usar o |T135791:0|t[|cRXP_FRIENDLY_Nihilist Epifania|r] para treinar |T132886:0|t[Área de Caos] << Priest
    .train 425216 >>Usar o |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r] para treinar |T237514:0|t[Peste do Caos] << Priest
    .train 402862 >>Usar o |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Acólito Perturbado|r] para treinar |T237545:0|t[Penitência] << Priest
    .train 402849 >>Usar o |T135975:0|t[|cRXP_FRIENDLY_Profecia da Morte de um Rei|r] para treinar |T136149:0|t[Palavra Sombria: Morte] << Priest
    .train 410121 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa da Quimera|r] para treinar |T236176:0|t[Tiro Quimérico] << Hunter
    .train 415423 >>Usar o |T133739:0|t[|cRXP_FRIENDLY_Tratado do Aspecto da Víbora|r] para treinar |T132160:0|t[Coração of the Viper] << Hunter
    .train 410122 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Lobo Solitário|r] para treinar |T132266:0|t[Lobo solitário] << Hunter
    .train 416086 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Rune of Fechar Combate|r] para treinar |T132394:0|t[Especialista em Corpo a Corpo] << Hunter
    .train 440563 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Guerrilla|r] para treinar |T132171:0|t[Bater e Correr] << Hunter
    .train 400101 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Passo Furtivo|r] para treinar |T132303:0|t[Passo Furtivo] << Rogue
    .train 432301 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Jogo Sujo|r] para treinar |T236285:0|t[Vantagem Desleal] << Rogue
    .train 415922 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa do Espadachim|r] para treinar |T134538:0|t[Bacamarte] << Rogue
step << Druid
    #sticky
    #optional
    >>|cRXP_WARN_Fique atento a qualquer|r Manto |cRXP_WARN_queda|r|cRXP_WARN_. Equipe-o e grave|r |T236168:0|t[Chuva Estelar] |cRXP_WARN_nele|r
    .engrave 15 >>Grave |T236168:0|t[Chuva Estelar] no |T133771:0|t[Manto]
step << Hunter
    #sticky
    #optional
    >>|cRXP_WARN_Fique atento a quaisquer|r Baú/Belt/Manto |cRXP_WARN_quedas|r|cRXP_WARN_. Equipe-os e grave as runas respectivas|r
    .engrave 5 >>Grave |T132266:0|t[Lobo solitário] no |T132724:0|t[Baú]
    .engrave 6 >>Grave |T132394:0|t[Especialista em Corpo a Corpo] no |T132513:0|t[Belt]
    .engrave 15 >>Grave |T132171:0|t[Bater e Correr] no |T133771:0|t[Manto]
step << Rogue
    #sticky
    #optional
    >>|cRXP_WARN_Procure por qualquer|r Cinto/Manto/Braçadeira |cRXP_WARN_que caiam|r |cRXP_WARN_. Equipe-os e grave as runas respectivas|r
    .engrave 5 >>Grave |T236285:0|t[Vantagem Desleal] nas |T133830:0|t[Braçadeiras]
    .engrave 6 >>Grave |T132303:0|t[Passo Furtivo] no |T132513:0|t[Cinto]
    .engrave 15 >>Grave |T134538:0|t[Bacamarte] no |T133771:0|t[Manto]
step << Hunter/Druid
    #optional
    #sticky
    .equip 10 >>Equipe as |T132939:0|t[Luvas de Treinamento em Arco e Flecha]
    .engrave 10 >>Grave |T236176:0|t[Tiro Quimérico] nas luvas << Hunter
    .engrave 10 >>Grave |T236216:0|t[Fogo Solar] nas luvas << Druid
    .use 5394
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,41.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Janna Lunaclara|r no andar de cima
    >>|cRXP_BUY_Venda sucata para o Comerciante e compre|r |T132495:0|t[Cinto de Tecido Fino] |cRXP_BUY_e|r |T132543:0|t[Sapatos de Tecido Fino] |cRXP_BUY_. Você precisará deles para gravar runas em|r
    .collect 3599,1 --Thin Cloth Belt (1)
    .collect 2117,1 --Thin Cloth Shoes (1)
    .target Janna Brightmoon
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r no andar de cima
    .accept 77574 >>Aceite Meditação de Eluna
    .turnin 77574 >>Entregue Meditação de Eluna
    .target Shanda
step << Priest
    #optional
    #completewith next
    .equip 10 >>Equipe as |T132961:0|t[Luvas de Tecido Esfarrapado]
    .equip 6 >>Equipe o |T132495:0|t[Cinto de Tecido Fino]
    .equip 8 >>Equipe os |T132543:0|t[Sapatos de Tecido Fino]
    .equip 9 >>Equipe as |T132611:0|t[Braçadeiras Folhaste]
    .engrave 10 >>Grave |T136149:0|t[Palavra Sombria: Morte] nas luvas
    .engrave 6 >>Grave |T136181:0|t[Aparições Corrompidas] nas braçadeiras
    .engrave 8 >>Grave |T237514:0|t[Peste do Caos] nos seus pés
    .engrave 9 >>Grave |T132886:0|t[Área de Caos] nas suas pulseiras
    .use 711 --Tattered Cloth Gloves
    .use 3599 --Thin Cloth Belt
    .use 2117 --Thin Cloth Shoes
    .use 11187 --Stemleaf Bracers
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.6,40.8
    >>|cRXP_WARN_Salto para baixo|r e fale com |Tinterface/worldmap/chatbubble_64grey.blp:20|t |cRXP_FRIENDLY_Delailah|r
    .vendor >>|cRXP_BUY_Compre 10 de|r |T132794:0|t|cRXP_LOOT_Água Refrescante da Fonte|r
    .target Dellylah
step
    #label balancetwocomplete
    .goto Teldrassil,59.8,34.1
    >>Mate os |cRXP_ENEMY_Mangy Nightsabers|r e os |cRXP_ENEMY_Thistle Boars|r
    .complete 457,1 --Kill Mangy Nightsaber (x7)
    .complete 457,2 --Kill Thistle Boar (x7)
    .mob Mangy Nightsaber
    .mob Thistle Boar
step
    .goto Teldrassil,54.593,32.992
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    .turnin 4495 >>Entregue Um Bom Amigo
    .target Iverron
    .accept 3519 >>Aceite Um Amigo em Necessidade
step
    #season 2
    .goto Teldrassil,59.8,34.1
    .xp 3-400 >>Triture até você estar 400xp longe do nível 3 (500/900)
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Shadowglen
step << Hunter
    .goto Teldrassil,57.9,45.1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    .turnin 458 >>Entregue A Protetora dos Bosques
    .target Tarindrella
    .accept 459 >>Aceite A Protetora dos Bosques
step
    #requires balance1
	.goto Teldrassil,58.695,44.266
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilthalaine|r
    .turnin 457 >>Entregue O Equilíbrio da Natureza
    .target Conservator Ilthalaine
	.accept 3116 >>Aceite O Selo Simples << Warrior
	.accept 3117 >>Aceite O Selo Cinzelado << Hunter
    .accept 3119 >>Aceite O Selo Sagrado << Priest
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .turnin 3519 >>Entregue Um Amigo Necessitado
    .target Dirania Silvershine
    .accept 3521 >>Aceite O Antídoto de Iverron
step << Hunter
    #season 2
    #completewith htraining
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
    >>|cRXP_WARN_Verifique que você tem 1 moeda de prata sobrando após sair do vendedor para poder arcar com|r |T132204:0|t[|cRXP_FRIENDLY_Picada de Serpente|r]. |cRXP_WARN_Não compre o arco se você não conseguir arcar com o treinamento depois|r
	.vendor >>|cRXP_BUY_Compre um maço de|r |T132382:0|t[Rough Flechas]
    .vendor >>|cRXP_BUY_Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .target Keina
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << !Hunter !Druid !Priest
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >>|cRXP_WARN_Venda lixo|r
    .target Keina
 step << NightElf Warrior
    #season 2
    .goto Teldrassil,59.637,38.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Alyissia|r
    .turnin 3116 >>Entregue O Selo Simples
    .train 772 >>Treine |T132155:0|t[Dilacerar]
    .train 100 >>Treine |T132337:0|t[Carga]
    .target Alyissia
step << Druid/Priest
    #season 2
    #label DTrain4
    .goto Teldrassil,59.602,40.696
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delailah|r
    .vendor >>|cRXP_WARN_Venda lixo|r
    >>|cRXP_BUY_Compre 10|r |T132794:0|t[Água Refrescante da Fonte]
    .collect 159,10 --Collect Refreshing Spring Water (x10)
    .target Dellylah
step
    .goto Teldrassil,57.807,41.653
    .target Gilshalan Windwalker
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilshalan Andavento|r
    .accept 916 >>Aceite Veneno do Bosque Aracnídeo
    .target Gilshalan Windwalker
step << Hunter
    .xp 4-40
step << Hunter
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.659,40.449
    >>Suba a Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ayanna Perenanda|r
    .turnin 3117 >>Entregue O Selo Cinzelado
    .accept 77568 >>Aceite A Força de um Caçador
    .turnin 77568 >>Entregue A Força de um Caçador
    .train 1978 >>Treine Picada de Serpente
    .target Ayanna Everstride
step
    .goto Teldrassil,57.95,38.20,10,0
    .goto Teldrassil,57.76,37.27,10,0
    .goto Teldrassil,58.21,36.40,10,0
    .goto Teldrassil,58.81,37.83,10,0
    .goto Teldrassil,57.95,38.20
    >>Saque o |cRXP_LOOT_Moonpetal Lilies|r no chão
    .complete 3521,2 --Collect Moonpetal Lily (x4)
step
    #label IchorVenomSac
    .goto Teldrassil,56.8,31.7
    >>Mate as |cRXP_ENEMY_Webwood Aranhas|r. Saqueie-as para obter |cRXP_LOOT_Ichor|r e |cRXP_LOOT_Venom Sacs|r
    .complete 3521,3 --Collect Webwood Ichor (x1)
    .complete 916,1 --Collect Webwood Venom Sac (x10)
    .mob Webwood Spider
step
    .goto Teldrassil,55.0,43.7
    >>Abata os |cRXP_ENEMY_Capeta|r e os |cRXP_ENEMY_Tinhoso|r. Saqueie-os por seus |cRXP_LOOT_Mushrooms|r e |cRXP_LOOT_Limo Vil|r
    .complete 3521,1 --Collect Hyacinth Mushroom (x7)
    .complete 459,1 --Collect Fel Moss (x8)
    .mob Grell
    .mob Grellkin
step
    .goto Teldrassil,57.8,45.1
    .target Tarindrella
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarindrella|r
    >>DICA: |cRXP_WARN_Pegue as perneiras como recompensa e guarde-as. Você as utilizará para engravar uma runa depois|r << sod Hunter/sod Rogue/sod Warrior/sod Druid
    .turnin 459 >>Entregue A Protetora dos Bosques
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .turnin 3521 >>Entregue Antídoto de Iverron
    .accept 3522 >>Aceite O Antídoto de Iverron
    .target Dirania Silvershine
    .xp >7,1
step
    .goto Teldrassil,60.899,41.961
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dirânia Pratafulge|r
    .turnin 3521 >>Entregue Antídoto de Iverron
    .target Dirania Silvershine
    .xp <7,1
step << !Hunter
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >>|cRXP_WARN_Venda lixo|r << !Hunter
    .target Keina
step << Hunter
    #season 2
    .goto Teldrassil,59.306,41.091
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keina|r
	.vendor >>|cRXP_WARN_Venda lixo|r << !Hunter
	.vendor >>|cRXP_BUY_Compre 3 ou 4 pilhas de|r |T132382:0|t[Rough Flechas] << Hunter
    .vendor >>|cRXP_BUY_Compre um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_Compre se você ainda não tem|r << Hunter
    .target Keina
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilshalan Andavento|r
    .turnin 916 >>Entregue Veneno do Bosque-aracnídeo
    .target Gilshalan Windwalker
    .accept 917 >>Aceite Ovo do Bosque-aracnídeo
    .xp >7,1
step
    .goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilshalan Andavento|r
    .turnin 916 >>Entregue Veneno do Bosque-aracnídeo
    .target Gilshalan Windwalker
    .xp <7,1,ExitRune
step << Hunter/Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Adaga de Pau-cardo]
    .use 5392
    .itemcount 5392,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.05
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Suba a Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mardant Carvalhaço|r
	.turnin 3120 >>Entregue O Selo Verdejante
    .train 5177 >>Treine |T136006:0|t[|cRXP_FRIENDLY_Ira|r] nível 2
    .target Mardant Strongoak
step
    .goto Teldrassil,54.593,32.992
    .target Iverron
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Iverron|r
    >>DICA: |cRXP_WARN_Pegar as calças como recompensa dele. Você as usará para gravar uma runa mais tarde|r << Priest sod
    .turnin 3522 >>Entregue Antídoto de Iverron
    .isOnQuest 3522
step
    #completewith next
    .goto Teldrassil,56.73,31.17,25 >>Entre na Caverna Shadowthread
    .isOnQuest 917
step
    .goto Teldrassil,57.0,26.4
    >>Saque a |cRXP_LOOT_Webwood Ovo|r no chão no fundo da Caverna
    .complete 917,1 --Collect Webwood Egg (x1)
    .isOnQuest 917
step
	#softcore
	#completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
    .isOnQuest 917
step
	.goto Teldrassil,57.807,41.653
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gilshalan Andavento|r
    >>DICA: |cRXP_WARN_Pegar a Túnica como recompensa dessa missão e equipá-la. Você a usará para gravar uma runa depois|r << Hunter/Rogue
    .turnin 917 >>Entregue Webwood Ovo
    .target Gilshalan Windwalker
    .isQuestComplete 917
step
    #season 2
    #label ExitRune
    .goto Teldrassil,58.88,43.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Corretor de Runas|r
    >>|cRXP_WARN_Não venda itens que possam ser equipados|r
    .vendor >>|cRXP_BUY_Venda o refugo para ele e compre todas as |T134419:0|t|cRXP_WARN_[Runas]|r que você precisar|r
    .target Rune Broker
    .skipgossip
step << Priest
    #requires vial1
    .goto Teldrassil,59.2,40.5
    .target Shanda
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r
    .accept 5622 >>Aceite Em Simpatia de Elune
    .turnin 3119 >>Entregue O Selo Sagrado
step
    .goto Teldrassil,61.159,47.644
    .target Porthannius
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Porthannius|r
    .accept 2159 >>Aceite Entrega para Dolanaar
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance
#season 2
#name 7-13 Teldrassil SoD
#displayname 7-13 Teldrassil
#version 1
#group RestedXP Aliança 1-20
#groupid RXP-SRGCE-A1
#defaultfor NightElf
#next 13-20 Costa Negra SoD


step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .accept 488 >>Aceite O Comando de Zenn
step << Hunter
    #season 2
    #completewith FlankingStrike
    #sticky
    >>Enquanto faz missões, mate os |cRXP_ENEMY_Strigid Owls|r ou os |cRXP_ENEMY_Strigid Guinchadora|r. Saque-os para |T134025:0|t|cRXP_LOOT_Teldrassil Bird Carne|r
    .collect 208608,1 -- Teldrassil Bird Meat 1/1
    .train 425762,1 --Flanking Strike
step << Warrior
    #season 2
    #completewith zenn
    >>Mate os |cRXP_ENEMY_Nightsabers|r ou os |cRXP_ENEMY_Nightsaber Stalkers|r. Saqueie-os para as |cRXP_LOOT_Severed Tigre Cabeça|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r ou os |cRXP_ENEMY_Strigid Guinchadora|r. Saqueie-os para as |cRXP_LOOT_Severed Owl Cabeça|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r ou os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para as |cRXP_LOOT_Severed Aranha Cabeça|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    #sticky
    #completewith zenn
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saqueie-os para obter as |cRXP_LOOT_Presas|r
    >>Abate os |cRXP_ENEMY_Corujas Strigid|r. Saque-os em busca de |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie o |cRXP_LOOT_Silk|r
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    #sticky
	#completewith SoDSpiderLegs
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_você precisa disto para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    .goto Teldrassil,56.08,57.72
    .target Syral Bladeleaf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    >>|cRXP_WARN_Certifique-se de que você tem 1 espaço vazio na mochila antes de aceitar esta missão|r
    .accept 997 >>Aceite A Terra de Denalan
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .accept 475 >>Aceite Uma Leve Brisa
step << Priest
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .turnin 5622 >>Entregue Em Simpatia de Elune
    .target Laurna Morninglight
    .accept 5621 >>Aceite Vestes da Lua
	.trainer >>Treine suas magias de classe
step << Rogue
    .goto Teldrassil,55.508,57.145
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Áldia|r subindo as escadas
    .vendor >>|cRXP_BUY_Compre e equipe um|r |T135426:0|t[Pequeno Arremessando Faca]
    .target Aldia
step
#xprate <1.99 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .accept 932 >>Aceite Aversão Pervertida
    .accept 2438 >>Aceite O Apanhador de Sonhos de Esmeralda
step << Hunter/Warrior/Druid
#xprate >1.99
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .accept 2438 >>Aceite O Apanhador de Sonhos de Esmeralda
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    >>|cRXP_BUY_Compre|r |T132382:0|t[Rough Flechas] |cRXP_BUY_até sua Aljava estar cheia|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Hunter
    #season 0
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    .vendor >>|cRXP_BUY_Compre|r |T132382:0|t[Rough Flechas] |cRXP_BUY_até sua Aljava estar cheia|r
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    .vendor >>|cRXP_BUY_Compre|r |T132382:0|t[Rough Flechas] |cRXP_BUY_até ter 2 de prata restante ou ter 3 pilhas|r
    .target Jeena Featherbow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135499:0|t[Arco Recurvo de Pau-de-chifre]
    .use 2506
    .itemcount 2506,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.37
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio] |cRXP_BUY_se você pode pagar (5s 36c), se não, pule este passo|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete] |cRXP_BUY_se você pode pagar (4s 1c), se não, pule este passo|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala] |cRXP_BUY_se você pode pagar (5s 4c), se não, pule este passo|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step
    .goto Teldrassil,55.619,59.788
    .target Innkeeper Keldamyr
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r
    .turnin 2159,2 >>Entregue Entrega para Dolanaar << Hunter
    .turnin 2159 >>Entregue Entrega para Dolanaar << !Hunter
    .vendor >>|cRXP_BUY_Compre 10 |T132815:0|t|cRXP_LOOT_Leite Gelado|r ou o máximo que você puder pagar << Priest
    .home >>Defina sua Pedra de Retorno em Dolanaar
step << Warrior
    #season 2
    .goto Teldrassil,54.8,66.0,25 >>Vá para o local marcado. Verifique se o |cRXP_FRIENDLY_Espadachim Errante|r está lá. Se você o encontrar, pode desafiá-lo para um duelo que lhe concederá |T132334:0|t[|cRXP_FRIENDLY_Frenesi de Sangue|r]
    >>|cRXP_WARN_Ele tem múltiplos pontos de invocação e pode estar presente apenas em um deles por vez. Pule este passo se ele não estiver lá|r
    >>|cRXP_WARN_Você provavelmente será incapaz de lutar contra ele sozinho neste nível, pule este passo se não houver ninguém por perto para ajudá-lo. Você pode voltar depois de obter seu trava-perna + lançamento no nível 10 e verificar se ele ainda está lá|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .train 1130 >>Aprenda Marca do Caçador
    .train 3044 >>Aprenda Tiro Arcano
    .target Dazalar
    .xp >8,1
step << Hunter
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .train 5116 >>Aprenda Tiro de Concussão
    .target Dazalar
    .xp <8,1
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
	.trainer >>Treine suas magias de classe
    .target Kal
step
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 928 >>Entregue Coroa da Terra
    .target Corithras Moonrage
    .accept 929 >>Aceite Coroa da Terra
step << Priest
    .goto Teldrassil,57.242,63.511
    >>Alvo |cRXP_FRIENDLY_Sentinela Shaya|r
    >>|cRXP_WARN_Lance|r |T135929:0|t[Cura Inferior (Rank 2)] |cRXP_WARN_e|r |T135987:0|t[Palavra de Poder: Fortitude] |cRXP_WARN_em|r |cRXP_FRIENDLY_Sentinela Shaya|r
    .complete 5621,1 --Heal and fortify Sentinel Shaya
    .target Sentinel Shaya
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    >>|cRXP_WARN_Não aceite Brotos de Muscoide|r << !sod/Warrior/Rogue
    .turnin 997 >>Entregue A Terra de Denalan
    .target Denalan
    .accept 918 >>Aceite Sementes de muscoide
    .accept 919 >>Aceite Brotos de muscoide << !sod/Warrior/Rogue
step << Rogue
    #season 2
    #completewith next
    >>Abate os Timberlings. Saqueie-os para obter o |T134327:0|t[|cRXP_LOOT_Top-Direita Mapa Piece]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Druid
    #season 2
    #completewith next
    >>Abate os |cRXP_ENEMY_Timberlings|r. Saque-os para suas |cRXP_LOOT_Sementes|r
    >>Pegue os |cRXP_LOOT_Brotos de muscoide|r no chão
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod --Collect Timberling Sprout (x12)
    .mob Timberling
step << Druid
    #season 2
    #completewith next
    .goto Teldrassil,52.831,78.731,100 >>Vá para o galho gigante da árvore
    .train 416044,1
step << Druid
    #season 2
    .goto Teldrassil,52.831,78.731,20,0
    .goto Teldrassil,52.988,80.086,15,0
    .goto Teldrassil,52.831,78.731
    >>|cRXP_WARN_No grande galho da árvore você verá 3|r |cRXP_ENEMY_Lunar Stones|r
    >>|cRXP_WARN_Cast|r |T136096:0|t[Fogo Lunar] |cRXP_WARN_on all 3|r |cRXP_ENEMY_Lunar Stones|r |cRXP_WARN_on the branch, then loot the chest at the arrow location which spawns after|r
    .collect 206989,1 -- Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step << Druid
    #season 2
    #hardcore
    .train 416044 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r] |cRXP_WARN_para treinar|r |T236216:0|t[Fogo Solar]
    .use 206989
    .itemcount 206989,1
    .train 416044,1
step << Druid
    #season 2
    #softcore
    #completewith next
    .train 416044 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r] |cRXP_WARN_para treinar|r |T236216:0|t[Fogo Solar]
    .deathskip >>Morra e ressuscite em Dolanaar
    .use 206989
    .itemcount 206989,1
    .train 416044,1
step
    .goto Teldrassil,61.63,68.89,55,0
    .goto Teldrassil,60.52,70.47,55,0
    .goto Teldrassil,59.04,72.52,55,0
    .goto Teldrassil,57.69,69.92,55,0
    .goto Teldrassil,55.33,67.22,55,0
    .goto Teldrassil,57.89,64.84,55,0
    .goto Teldrassil,61.21,66.28
    >>Abate os |cRXP_ENEMY_Timberlings|r. Saque-os para suas |cRXP_LOOT_Sementes|r
    >>Pegue os |cRXP_LOOT_Brotos de muscoide|r no chão << !sod
    .complete 918,1 --Collect Timberling Seed (x8)
    .complete 919,1 << !sod/Warrior/Rogue --Collect Timberling Sprout (x12)
    .mob Timberling
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Abate os Timberlings. Saqueie-os para obter o |T134327:0|t[|cRXP_LOOT_Top-Direita Mapa Piece]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step
    .goto Teldrassil,60.900,68.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 918 >>Entregue Sementes de Muscoide
    .target Denalan
    .accept 922 >>Aceite Rellian Spiraverde
    .turnin 919 >>Entregue Brotos de Muscoide << !sod/Warrior/Rogue
step
    #season 2 << Hunter/Druid/Priest
    #season 1 << Warrior/Rogue
	.abandon 919 >>Abandone Brotos de Muscoide, não vale a pena fazer
step << Warrior
    #season 2
    .goto Teldrassil,62.6,71.8,25 >>Vá para o local marcado. Verifique se o |cRXP_FRIENDLY_Espadachim Errante|r está lá. Se você o encontrar, pode desafiá-lo para um duelo que lhe concederá |T132334:0|t[|cRXP_FRIENDLY_Frenesi de Sangue|r]
    >>|cRXP_WARN_Ele tem múltiplos pontos de invocação e pode estar presente apenas em um deles por vez. Pule este passo se ele não estiver lá|r
    >>|cRXP_WARN_Você provavelmente será incapaz de lutar contra ele sozinho neste nível, pule este passo se não houver ninguém por perto para ajudá-lo. Você pode voltar depois de obter seu trava-perna + lançamento no nível 10 e verificar se ele ainda está lá|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #completewith next
    .goto Teldrassil,68.02,59.66,120 >>Vá para Starbreeze Village
step
    .goto Teldrassil,68.02,59.66
    >>Abra |cRXP_PICK_Aparador de Tallonkai|r. Pegue o |cRXP_LOOT_Emerald Apanhador de Sonhos|r
    .complete 2438,1 --Collect Emerald Dreamcatcher (x1)
step
    #label zenn
    .goto Teldrassil,66.26,58.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Garyol Talvethren|r acima das escadas
    .turnin 475 >>Entregue A Leve Brisa
    .target Gaerolas Talvethren
    .accept 476 >>Aceite Corrupção Masca-pinho
step
    #xprate <1.99
    .goto Teldrassil,63.38,58.10
    >>|cRXP_WARN_Use o|r |T134721:0|t[Frasco de Jade] |cRXP_WARN_na Nascente Lunar de Starbreeze Village|r
    .complete 929,1 --Collect Filled Jade Phial (x1)
step << Warrior
    #season 2
    #completewith TeldrassilEnd
    #sticky
    >>Mate os |cRXP_ENEMY_Nightsabers|r ou os |cRXP_ENEMY_Nightsaber Stalkers|r. Saqueie-os para as |cRXP_LOOT_Severed Tigre Cabeça|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r ou os |cRXP_ENEMY_Strigid Guinchadora|r. Saqueie-os para as |cRXP_LOOT_Severed Owl Cabeça|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r ou os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para as |cRXP_LOOT_Severed Aranha Cabeça|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .collect 208610,1 -- Severed Owl Head (1)
    .collect 208612,1 -- Severed Spider Head (1)
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step
    >>Mate os |cRXP_ENEMY_Nightsabers|r. Saqueie-os para obter as |cRXP_LOOT_Presas|r
    >>Abate os |cRXP_ENEMY_Corujas Strigid|r. Saque-os em busca de |cRXP_LOOT_Peninha|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r. Saqueie o |cRXP_LOOT_Silk|r
    >>|cRXP_WARN_Save any|r |T132832:0|t[Pequeno Eggs] |cRXP_WARN_and|r |T134321:0|t[Aranhinha Pernas] |cRXP_WARN_to use for leveling |T133971:0|t[Culinária] |cRXP_WARN_later|r
    >>Pule este passo se você tiver azar com os itens obtidos e ficar sem inimigos nas proximidades
    .complete 488,1 --Collect Nightsaber Fang (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,61.95,61.07,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,2 --Collect Strigid Owl Feather (x3)
    .goto Teldrassil,66.10,52.43,60,0
    .goto Teldrassil,63.39,64.22,50,0
    .goto Teldrassil,59.14,60.91
    .complete 488,3 --Collect Webwood Spider Silk (x3)
    .goto Teldrassil,61.06,54.66,50,0
    .goto Teldrassil,60.17,59.62,50,0
    .goto Teldrassil,58.22,56.32
    .mob Nightsaber
    .mob Strigid Owl
    .mob Webwood Lurker
step
    .goto Teldrassil,60.5,56.3
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 488 >>Entregue O Comando de Zenn
    .isQuestComplete 488
step
    #xprate < 1.5
    .goto Teldrassil,60.7,54.4
	.xp 7+3520 >>Farme até o nível 7 +3520xp
step
    #xprate >1.49
    .xp 7+2350 >>Farme até o nível 7 +2350xp
step
	.goto Teldrassil,56.078,57.723
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syral Folhâmina|r
    .accept 489 >>Aceite Consiga Redenção
    .target Syral Bladeleaf
    .isQuestTurnedIn 488
step
    .goto Teldrassil,55.954,57.272
    .target Athridas Bearmantle
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Athridas Mantursino|r
    .turnin 476 >>Entregue Corrupção Masca-Pinho
step << Priest
    .goto Teldrassil,55.564,56.746
    .target Laurna Morninglight
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
    .turnin 5621 >>Entregue Vestes da Lua
	.trainer >>Treine suas magias de classe
step
    #season 1 << Priest/Rogue
    #season 2 << Hunter/Warrior/Druid
    .goto Teldrassil,55.574,56.948
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 2438 >>Entregue O Apanhador de Sonhos de Esmeralda
    .target Tallonkai Swiftroot
    .accept 2459 >>Aceite Ferócitas, o Comedor de Sonhos << !sod/Warrior
step << Hunter
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe um|r |T135499:0|t[Arco Recurvo de Pau-de-chifre] |cRXP_BUY_se você conseguir arcar com isso (2s 85c), se não pule este passo|r
    .collect 2506,1 --Collect Hornwood Recurve Bow
    .target Jeena Featherbow
    .money <0.0285
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<2.38
step << Rogue
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .target Jannok Breezesong
step << Warrior
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135321:0|t[Gládio] |cRXP_BUY_se você pode pagar (5s 36c), se não, pule este passo|r
    .collect 2488,1 --Collect Gladius
    .target Shalomon
    .money <0.0536
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.80
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135321:0|t [Gládio]
    .use 2488
    .itemcount 2488,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.79
    step << Warrior
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe um|r |T135641:0|t[Estilete] |cRXP_BUY_se você pode pagar (4s 1c), se não, pule este passo|r
    .collect 2494,1 --Stiletto (1)
    .target Shalomon
    .money <0.0401
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.3
step << Rogue
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135641:0|t[Estilete]
    .use 2494
    .itemcount 2494,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<3.29
step << Druid
    .goto Teldrassil,56.308,59.488
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre e equipe uma|r |T135145:0|t[Bengala] |cRXP_BUY_se você pode pagar (5s 4c), se não, pule este passo|r
    .collect 2495,1 --Walking Stick (1)
    .target Shalomon
    .money <0.0504
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Druid
    #completewith next
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Druid
#xprate 1.49-1.99
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >>Entregue Coroa da Terra
    .target Corithras Moonrage
step << Druid
#xprate <1.50
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >>Entregue Coroa da Terra
    .target Corithras Moonrage
    .accept 933 >>Aceite Coroa da Terra
step << Druid
    #season 0
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
	.trainer >>Treine suas magias de classe
    .target Kal
step
    #loop
    .goto 1438/1,854.400,9952.500,6 >>Ao lado de uma árvore pequena
    .goto 1438/1,822.200,9948.500,6 >>Na pequena colina
    .goto 1438/1,809.800,9926.400,6 >>Ao lado da enorme árvore
    >>Saque os 3 |cRXP_LOOT_Fel Cones|r dos locais marcados no seu mapa
    >>|cRXP_WARN_Pule este passo se qualquer um deles não estiver lá e você não conseguir completar o objetivo|r
    .complete 489,1 --Fel Cone 3/3
    .isOnQuest 489
step
    #label SoDSpiderLegs
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 489 >>Entregue Consiga Redenção
    .itemcount 3418,3
    .isOnQuest 489
    .target Zenn Foulhoof
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	#completewith jewel
    >>Saque os |cRXP_LOOT_Fel Cones|r no chão
    >>|cRXP_WARN_Eles geralmente estão localizados ao lado de troncos de árvore|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #completewith next
    >>Abate |cRXP_ENEMY_Místicos Gnarlpine|r
    >>|cRXP_WARN_Se não houver muitos |cRXP_ENEMY_Místicos Gnarlpine|r você pode ter que matar |cRXP_ENEMY_Guerreiros Gnarlpine|r para fazê-los aparecer|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
	.goto Teldrassil,69.37,53.41
	>>Mate |cRXP_ENEMY_Ferócitas, o Comedor de Sonhos|r. Saqueie-o pelo |T133288:0|t[|cRXP_LOOT_Colar de Masca-pinho|r]
    .use 8049 >>|cRXP_WARN_Use o |T133288:0|t[|cRXP_LOOT_Colar de Masca-pinho|r] para saquear|r |cRXP_LOOT_Joia de Tallonkai|r
    .complete 2459,2 --Collect Tallonkai's Jewel (x1)
    .mob Ferocitas the Dream Eater
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #label jewel
    .goto Teldrassil,68.38,52.06,30,0
    .goto Teldrassil,69.37,53.41
    >>Abate |cRXP_ENEMY_Místicos Gnarlpine|r
    >>|cRXP_WARN_Se não houver muitos |cRXP_ENEMY_Místicos Gnarlpine|r você pode ter que matar |cRXP_ENEMY_Guerreiros Gnarlpine|r para fazê-los aparecer|r
    .complete 2459,1 --Kill Gnarlpine Mystic (x7)
    .mob Gnarlpine Mystic
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    #softcore
    .goto Teldrassil,56.2,60.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Brannol Lunáguia|r
    .vendor >>|cRXP_BUY_Visite o vendedor e repare se necessário|r
    .target Brannol Eaglemoon
    .isQuestTurnedIn 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,59.0,56.1,50,0
    .goto Teldrassil,56.5,65.5,50,0
    .goto Teldrassil,53.0,59.5,50,0
    .goto Teldrassil,63.6,62.3,50,0
    .goto Teldrassil,58.7,55.7
    >>Saque os |cRXP_LOOT_Fel Cones|r no chão
    >>|cRXP_WARN_Eles geralmente estão localizados ao lado de troncos de árvore|r
    .complete 489,1 --Collect Fel Cone (x3)
    .isOnQuest 489
step
    #season 0 << Priest/Hunter/Druid/Rogue
    #season 2 << Warrior
    .goto Teldrassil,60.4,56.4
    .target Zenn Foulhoof
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zenn Cascovil|r
    .turnin 489 >>Entregue Consiga Redenção
    .isOnQuest 489
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Tente terminar a missão |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_Pule este passo se não houver aranhas perto de Zenn|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 0
    #sticky
	#completewith spiderLegs
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    >>|cRXP_WARN_você precisa disto para uma missão posterior|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
    #season 2
    .abandon 489 >>Abandone Busca de Redenção. Não vale a pena sair do seu caminho para entregá-la depois
step << !sod/Priest/Rogue
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Vá para Vileza Pedra
step << Rogue
    #season 2
    #completewith MutiRune
    >>Mate |cRXP_ENEMY_Capeta Cruel|r, |cRXP_ENEMY_Rascal Sprites|r e |cRXP_ENEMY_Shadow Sprites|r. Saqueie-os para obter |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    >>Mate o |cRXP_ENEMY_Senhor Málinus|r. Saque-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Priest
    #season 2
    #completewith next
    >>Mate |cRXP_ENEMY_Capetas Cruéis|r, |cRXP_ENEMY_Rascal Sprites|r e |cRXP_ENEMY_Shadow Sprites|r. Saqueie-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << !sod/Priest/Rogue
    .goto Teldrassil,51.2,50.6
    >>Abate o |cRXP_ENEMY_Senhor Málinus|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>O |cRXP_ENEMY_Senhor Málinus|r pode estar em vários locais de spawn diferentes em Vileza Pedra
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Priest
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Mate |cRXP_ENEMY_Capetas Cruéis|r, |cRXP_ENEMY_Rascal Sprites|r e |cRXP_ENEMY_Shadow Sprites|r. Saqueie-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    #season 2
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] |cRXP_WARN_to train|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs digitando /kneel em uma área sagrada como um poço lunar, Northshire Abbey, Objetos de TBC Cathedral, os Altares da Luz em Anvilmar, Loch Modan ou o Bairro Místico em Ironforge|r
    .use 205947
    .itemcount 205947,1
step << Rogue
    #season 2
    .goto Teldrassil,51.2,50.6
    >>Mate o |cRXP_ENEMY_Senhor Málinus|r. Saque-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .collect 203990,1
    .unitscan Lord Melenas
    .train 400094,1
step << Rogue
    #season 2
    #label MutiRune
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Mate |cRXP_ENEMY_Capeta Cruel|r, |cRXP_ENEMY_Rascal Sprites|r e |cRXP_ENEMY_Shadow Sprites|r. Saqueie-os para obter |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << !sod/Priest/Rogue
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << !Druid
#xprate <1.99
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 929 >>Entregue Coroa da Terra
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    .target Corithras Moonrage
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .accept 933 >>Aceite Coroa da Terra
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.61,76.18,50 >>Viaje para o sudoeste de Teldrassil
step
	#xprate <1.5
	.goto Teldrassil,42.61,76.18
	>>Clique em |cRXP_PICK_Planta de Frutos Estranhos|r
	.accept 930 >>Aceite A Fruta Brilhante
step
	#xprate <1.5
    #completewith next
    .goto Teldrassil,42.41,67.07,50 >>Viaje para as Piscinas de Arlithrien
step
	#xprate <1.5
	#label spiderLegs
	.goto Teldrassil,42.41,67.07
    .use 5621 >>|cRXP_WARN_Use o|r |T134765:0|t[Frasco de Turmalina]|cRXP_WARN_ no Poço da Lua em Arlithrien|r
	.complete 933,1
step
	#xprate <1.5
    .goto Teldrassil,44.69,70.52,40,0
    .goto Teldrassil,44.88,73.83
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r e os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para obter as |cRXP_LOOT_Small Pernas de Aranha|r
    .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
    .mob Webwood Lurker
    .mob Webwood Venomfang
step
	#xprate <1.5
    #hardcore
    #completewith next
    .goto Teldrassil,56.142,61.714,90 >>Viaje para Dolanaar
step
	#xprate <1.5
    #softcore
	#completewith next
    .goto Teldrassil,43.50,68.42
    .deathskip >>Morra no cemitério de Dolanaar. Certifique-se de morrer a leste do poço da lua, senão você pode acabar em Darnassus
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 933 >>Entregue Coroa da Terra
    .target Corithras Moonrage
    .accept 7383 >>Aceite Coroa da Terra
step
	#xprate <1.5
    .goto Teldrassil,57.121,61.296
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .train 2550 >>Treine Culinária
    .accept 4161 >>Aceite Recipe of the Kaldorei
    .turnin 4161 >>Entregue Recipe of the Kaldorei
    .target Zarrin
step << Warrior/Rogue
    #season 0
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Byonsa|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Byancie
step
    #season 1 << Warrior
    #season 2 << Hunter/Druid/Priest/Rogue
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Treine Culinária
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >>Aceite Recipe of the Kaldorei
    .turnin 4161 >>Entregue Recipe of the Kaldorei
    >>|cRXP_WARN_Se você já está no nível 10 e ainda não tem as pernas de aranha, pule esta missão. Treine culinária de qualquer forma|r
step << Rogue
    #season 2
    .goto Teldrassil,55.29,56.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Byonsa|r
    .train 3273 >>Aprenda |T135966:0|t[Primeiros Socorros]
    .target Byancie
step << !sod/Priest/Rogue
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 2438 >>Entregue O Apanhador de Sonhos de Esmeralda << sod Priest/sod Rogue
    .turnin 932 >>Entregue Aversão Pervertida
    .turnin 2459 >>Entregue Ferócitas, o Comedor de Sonhos << !sod
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 2459 >>Entregue Ferócitas, o Comedor de Sonhos
    .accept 932 >>Aceite Aversão Pervertida
step
#xprate >1.99
    .xp 10
   >>|cRXP_WARN_Se você não está nem perto, faça a missão do Senhor Málinus|r
step << Druid
    #season 2
    .goto Teldrassil,55.945,61.566
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kal|r
	.trainer >>Treine suas magias de classe
    .accept 5925 >>Aceite Heeding the Call - Missão - Missão
    .target Kal
step << Priest
#xprate >1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
	.trainer >>Treine suas magias de classe
    .accept 5629 >>Aceite O Retorno ao Lar << sod
    .target Laurna Morninglight
step << Warrior
#xprate >1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .train 5171 >>Treine |T132306:0|t[Retalhar] << !sod
    .train 921 >>Aprenda |T133644:0|t[Bater Carteira] também, que é necessária para sua missão de Ladino nível 10
    .target Jannok Breezesong
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >>Aceite Adestramento da Fera - Missão
	.trainer >>Treine suas magias de classe
step << Hunter
#xprate >1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6101 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate >1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Sabre-da-noite Espreitador|r
    >>|cRXP_WARN_Você deve clicar com o botão direito na Moldura de Mascote e dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6102 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate >1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Guinchadora Estrígida|r
    >>|cRXP_WARN_Você deve clicar com o botão direito na Moldura de Mascote e dispensar seu mascote antes de poder domar outro|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate >1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6103 >>Aceite Treinamento da Fera - Missão
    .train 1130 >>|cRXP_WARN_Certifique-se de ter treinado Marca do Caçador. Você precisará dela para obter uma runa em breve|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada oeste de Dolanaar|r
    .accept 1684 >>Aceite Elanaria
    .accept 487 >>Aceite A Estrada para Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate >1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .accept 2241 >>Aceite The Maçã Falls
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada oeste de Dolanaar|r
    .accept 487 >>Aceite A Estrada para Darnassus
    .target Moon Priestess Amara
step << Rogue
    #season 2
    #completewith runeOfPrecision
    #optional
    #label topleft
    >>Mate ou |T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Gnarlpine Furbolgs|r. Saqueie-os para o |T134327:0|t[|cRXP_LOOT_Top-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step
    #season 0
    .goto Teldrassil,46.6,53.0
    >>Mate os |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step << Warrior
    #season 2
    .goto Teldrassil,46.6,53.0
    >>Mate os |cRXP_ENEMY_Gnarlpine Ambushers|r
    .complete 487,1 --Kill Gnarlpine Ambusher (x6)
    .mob Gnarlpine Ambusher
step
    #season 0
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada oeste de Dolanaar|r
    .turnin 487 >>Entregue A Estrada para Darnassus
    .target Moon Priestess Amara
step << Priest
    #season 2
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >>Entre no Ban'ethil Barrow Den. Isto pode ser difícil sem um grupo. Você também pode fazer isto um pouco mais tarde para obter sua |T237514:0|t[Peste do Caos] runa
    .train 425216,1 << Priest
step << Priest
    #season 2
    .goto Teldrassil,44.401,60.655
    >>Abra o |cRXP_PICK_Gnarlpine Cache|r. Pegue uma |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r]
    >>|cRXP_WARN_Nota: O |cRXP_PICK_Gnarlpine Cache|r pode ter múltiplos locais de aparecimento dentro de Ban'ethil Barrows|r
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
    >>|cRXP_WARN_Você deve ter uma|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff ao digitar /kneel em uma área sagrada, como um poço lunar, Northshire Abbey, Objetos de TBC Cathedral, os Altares de Luz em Anvilmar, Loch Modan ou o Mystic Proteção em Ironforge|r
    .use 205940
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Mate ou |T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Gnarlpine Desbravadores|r e os |cRXP_ENEMY_Gnarlpine Avengers|r. Saque-os para uma |T134241:0|t[|cRXP_LOOT_Gnarlpine Stash Chave]|r
    .collect 208749,1 -- Gnarlpine Stash Key (1)
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Avenger
    .train 400081,1
step << Rogue
    #season 2
    #label runeOfPrecision
    .goto Teldrassil,37.836,82.588
    >>Abra o |cRXP_PICK_Gnarlpine Stash|r. Saque-a para a |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 204174 -- Rune of Precision (1)
    .itemcount 208749,1
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
step << Rogue
    #season 2
    .goto Teldrassil,38.92,79.93
    >>Mate ou |T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Gnarlpine Furbolgs|r. Saqueie-os para o |T134327:0|t[|cRXP_LOOT_Top-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208602,1 -- Top-Left Map Piece (1)
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Shaman
    .mob Gnarlpine Defender
    .mob Gnarlpine Augur
    .train 398196,1
step << Rogue
    #season 2
    #softcore
    #completewith next
    .deathskip >>Morra e reaparça no Anjo da Cura em Darnassus
    .target Anjo da Cura
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe um|r |T135489:0|t[Arco Recurvo Laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135489:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #season 2
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
    >>|cRXP_BUY_Compre e equipe 400|r |T132382:0|t[Sharp Flechas]
    .target Jeena Featherbow
step << Hunter
    #season 2
    .goto Teldrassil,46.6,46.3
    >>|cRXP_WARN_Lance|r |T132212:0|t[Marca do Caçador] |cRXP_WARN_no|r |cRXP_ENEMY_Rustling Arbusto|r
    >>Mate o |cRXP_ENEMY_Larápio Satíricon|r que surge. Saque-o para uma |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1 --Master Marksman
step
	#xprate < 1.5
    #completewith next
    .goto Teldrassil,38.32,34.36,50 >>Vá para A Clareira do Oráculo
step
	#xprate < 1.5
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .accept 937 >>Aceite A Clareira Encantada
step
	#xprate < 1.5
    .goto Teldrassil,38.43,34.03
    .use 18152 >>|cRXP_WARN_Use o|r |T134798:0|t[Frasco de Ametista] |cRXP_WARN_no poço lunar de O Oráculo Glade|r
    .complete 7383,1 --Collect Filled Amethyst Phial (x1)
step << Rogue
	#xprate < 1.5
    #season 2
    #completewith xp10
    >>Mate ou |T133644:0|t[Bater Carteira] as |cRXP_ENEMY_Bloodfeather Harpies|r. Saqueie-as para a |T134327:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step
	#xprate < 1.5
    #completewith xp10
	#label harpies
    >>Mate as |cRXP_ENEMY_Harpias Sangue-Pena|r. Saqueie-as para obter os |cRXP_LOOT_Cintos|r
    >>|cRXP_ENEMY_Sangue-Pena Matriarcas|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que causam muito dano. Tente matá-las rápido|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step
	#xprate < 1.5
    .goto Teldrassil,34.61,28.79
    >>Clique na |cRXP_PICK_Planta de Fronde Estranha|r
    .accept 931 >>Aceite A Fronde Cintilante

step << Hunter
	#xprate <1.5
    #completewith xp10
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    .accept 938 >>Aceite Bruma
    .target Mist
step << Hunter
	#xprate <1.5
    #sticky
    #label xp10
    .xp 10-2670 >>Farme até estar 2670 xp longe do nível 10 (3830/6500)
    >>|cRXP_WARN_Quando você atingir este ponto de xp, pule a missão Hárpia/Escolta e vá direto para Darnassus. Você terá outra oportunidade para terminar essas missões mais tarde|r
step << Hunter
	#xprate <1.5
    #completewith xp10
    #requires mist1
    .goto Teldrassil,38.32,34.36
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 938 >>Entregue Bruma
step << Hunter
	#xprate <1.5
    #completewith xp10
	#requires harpies
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >>Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>Aceite Teldrassil
step << !Hunter
	#xprate <1.5
    #label mist1
    .goto Teldrassil,31.54,31.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    .accept 938 >>Aceite Bruma
    .target Mist
step << !Hunter
	#xprate <1.5
    .goto Teldrassil,38.32,34.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >>Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>Aceite Teldrassil
    .turnin 938 >>Entregue Bruma
step << Druid
    #xprate <1.5
    #label xp10
    #season 2
    .xp 10
step << Druid
    #xprate <1.5
    #season 0,1
    #label xp10
    .xp 10-750
step << !Hunter !Druid
	#xprate <1.5
    #label xp10
    .xp 10-3110
step << Rogue
	#xprate <1.5
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Mate ou |T133644:0|t[Bater Carteira] as |cRXP_ENEMY_Bloodfeather Harpies|r. Saqueie-as para a |T134327:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
	#xprate < 1.5
    #season 2
    .cast 418600 >>|cRXP_WARN_Use qualquer um dos|r |T134327:0|t[|cRXP_LOOT_Fragmentos do Mapa|r] |cRXP_WARN_para combiná-los em|r |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro de Teldrassil|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step
	#xprate 1.49-1.99
   .goto Teldrassil,38.6,58.0
   >>Complete coletando 7 Perninhas de Aranha
   .collect 5465,7,4161,1 --Collect Small Spider Leg (x7)
step << Druid
   #xprate 1.49-1.99
   #label xp10
   .xp 10-850
   .goto Teldrassil,38.3,34.4
   >>Se você ainda está atrasado em XP, faça a missão das harpias ao norte
step << !Druid
    #xprate 1.49-1.99
	#label xp10
	.xp 10-4415
step << Hunter
    #season 2
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T132177:0|t[Mestre Atirador Perito]
    .use 206155
    .train 410113,1
step << !Rogue
    #softcore
    #requires xp10
    #completewith next
    .deathskip >>Morra e reaparça no Anjo da Cura em Darnassus
    >>|cRXP_WARN_Certifique-se de estar mais perto do cemitério de Darnassus do que do de Dolanaar, senão você pode acabar indo na direção errada. Corra completamente para fora da toca e depois morra se você não tiver certeza sobre isso|r << sod Priest
    >>|cRXP_WARN_Certifique-se de estar mais perto do cemitério de Darnassus do que do de Dolanaar, senão você pode acabar indo na direção errada. Corra para o lado oeste do rio se você não tiver certeza sobre isso|r << sod Hunter/sod Warrior/sod Druid
    .target Anjo da Cura
step << !Rogue
    #hardcore
    #requires xp10
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>Viagem para Darnassus
step << Druid
    #optional
    #season 2
    .xp <10,1
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >>Aceite Nessa Cantonegro
 step << Warrior
    #season 2
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .train 227 >>Treine Cajados << Warrior
    .train 2567 >>Treine Arremesso << Warrior
    .target Ilyenia Moonfire
step << Warrior
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre e equipe uma pilha de |r |T135425:0|t[Facas Apuradas de Arremesso]
    .collect 3107,200
    .target Ariyell Skyshadow
step << Warrior
    #season 2
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Compre um |T134830:0|t[|cRXP_LOOT_Poção Menor de Cura|r]. Isso vai ajudar você a obter a runa de |T236317:0|t[Ataque Frenético] em Dolanaar
    .collect 929,1 --Lesser Healing Potion (1)
    .target Auctioneer Tolon
    .target Auctioneer Golothas
    .train 425412,1 --Skips if you already have Frenzied Assault
step << Warrior
#xprate >1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >>Entregue para Elanaria
    .target Elanaria
    .accept 1683 >>Aceite Vorlus Cascruel
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delwynna <Caçadora de Monstros>|r no andar de cima
    >>|cRXP_WARN_Entregue as três |cRXP_LOOT_Cabeça Decepada|r para receber|r |T134455:0|t[|cRXP_FRIENDLY_Monster Caçador's Runa Fragmentos|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Usar qualquer um dos |T134455:0|t[|cRXP_FRIENDLY_Fragmentos de Runa do Caçador de Monstros|r] para combiná-los em |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .train 403475 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para treinar|r |T135291:0|t[Devastar]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << !Rogue !Hunter !Warrior
#xprate >1.99
    .goto Darnassus,67.427,15.655
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Saliennte|r
    .home >>Defina sua Pedra de Retorno em Darnassus << !Warrior
    .vendor >>|cRXP_BUY_Compre mais|r |T132815:0|t|cRXP_LOOT_Leite Gelado|r << Priest
    .target Innkeeper Saelienne
step << !Rogue
    #requires xp10
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 922 >>Entregue Rellian Spiraverde
    .target Rellian Greenspyre
    .accept 923 >>Aceite Tumors
step << !Hunter !Rogue
	#xprate <1.5
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r no topo da Árvore
    .turnin 940 >>Entregue em Teldrassil
	.isOnQuest 940
    .target Arch Druid Fandral Staghelm
step << Druid
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .turnin 5925 >>Entregue Heeding the Call - Missão << sod
    .accept 5921 >>Aceite Moonglade
	.trainer >>Treine suas magias de classe
    .target Mathrengyl Bearwalker
step << Hunter
#xprate >1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >>Entregue Treinamento da Fera - Missão
step << !Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .accept 2518 >>Aceite Lágrima da Lua
step << Warrior
    #season 2
    .hs >>Pedra de Retorno para Dolanaar
    .vendor >>|cRXP_BUY_Procure um comerciante e compre 5-10 |T133968:0|t[|cRXP_LOOT_Pão Fresquinho|r] do estalajadeiro
step << Warrior
    #season 2
    #sticky
    #completewith FrenziedAssault
    >>Entregue a missão da |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r se você a encontrar enquanto completa os outros passos
    >>|cRXP_WARN_Não procure por ela ainda|r
    .turnin 487 >>Entregue A Estrada para Darnassus
    .target Moon Priestess Amara
step << Warrior
	#season 2
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre uma|r |T135145:0|t[Bengala], equipe-a.
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << Warrior
    #season 2
    #completewith melenas
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Vá para Vileza Pedra
step << Warrior
    #season 2
    #label melenas
    .goto Teldrassil,51.2,50.6
    >>Abate o |cRXP_ENEMY_Senhor Málinus|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>O |cRXP_ENEMY_Senhor Málinus|r pode estar em vários locais de spawn diferentes em Vileza Pedra
    .complete 932,1 --Collect Melenas' Head (x1)
    .unitscan Lord Melenas
step << Warrior
	#season 2
    #softcore
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << Warrior
    #season 2
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Treine Culinária
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >>Aceite Recipe of the Kaldorei
    .turnin 4161 >>Entregue Recipe of the Kaldorei
    >>|cRXP_WARN_Pule a missão se você não tiver 7 pernas de aranha pequenas. Treine culinária mesmo assim, você precisará disso depois|r
step << Warrior
    #season 2
    #label FrenziedAssault
    .goto Teldrassil,55.619,59.787
    >>Fale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r em Dolanaar
    >>Fale com |cRXP_ENEMY_Syllart|r no andar de cima, depois o derrote. Ele desmaiará em 0%
    >>Se |cRXP_ENEMY_Syllart|r não estiver lá, espere-o ressurgir
    >>Fale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r novamente após derrotar |cRXP_ENEMY_Syllart|r para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .train 425447 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] |cRXP_WARN_para treinar|r |T236317:0|t[Ataque Frenético]
    >>|cRXP_WARN_Nota: Isso pode ser bastante difícil em solo dependendo do seu nível. Procure ajuda se necessário|r
    >>|cRXP_WARN_Você pode derrotá-lo sozinho com kiting de lançamento. Tente desacelerá-lo usando|r |T132316:0|t[Cortar Tendão] |cRXP_WARN_depois corra e|r |r |T132324:0|t[Lançar] |cRXP_WARN_nele à distância.|r |cRXP_WARN_Use uma|r |T134830:0|t[Poção de Cura] |cRXP_WARN_e|r |T133685:0|t[Bandagens] |cRXP_WARN_para se curar se necessário|r
    --Might wanna add a guide video
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
step << Warrior
    #season 2
    .goto Teldrassil,55.574,56.948
    .target Tallonkai Swiftroot
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tallonkai Radicélere|r no topo da Árvore
    .turnin 932 >>Entregue Aversão Pervertida
step << Warrior
    #season 2
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada oeste de Dolanaar|r
    .turnin 487 >>Entregue A Estrada para Darnassus
    .target Moon Priestess Amara
    .target Laird
step
#xprate <1.99
    #requires xp10 << Rogue
    .hs >>Use sua Pedra de Retorno para Dolanaar
    .subzoneskip 186
step << Hunter
#xprate <1.99
    .goto Teldrassil,55.890,59.205
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jiyna Penarco|r
	.vendor >>|cRXP_BUY_Compre 4 pilhas de|r |T132382:0|t[Sharp Flechas]|cRXP_BUY_. Equipe-as assim que atingir o nível 10|r
    .target Jeena Featherbow
step
	#xprate 1.49-1.99
    .goto Teldrassil,57.121,61.296
    .train 2550 >>Treine Culinária
    .target Zarrin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zarrin|r
    .accept 4161 >>Aceite Recipe of the Kaldorei
    .turnin 4161 >>Entregue Recipe of the Kaldorei
step
	#xprate 1.49-1.99
    .goto Teldrassil,51.9,56.4
    >>Procure Sacerdotisa da Lua Amara, ela patrulha a estrada oeste de Dolanaar
    .target Moon Priestess Amara
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    .turnin 487 >>Entregue A Estrada para Darnassus
	.maxlevel 9
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #label beast1
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >>Aceite Adestramento da Fera - Missão
	.train 13165 >>Treine seus feitiços de nível 10
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast1
    #label beast2
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    #optional
    #completewith L10
    #level 10
    #requires beast2
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6101 >>Aceite Adestramento da Fera - Missão
step
	#xprate <1.5
    .goto Teldrassil,56.142,61.714
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Corithras Lunafúria|r
    .turnin 7383 >>Entregue Coroa da Terra
    .target Corithras Moonrage
    .accept 935 >>Aceite Coroa da Terra
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
    .turnin 931 >>Entregue A Fronde Cintilante
    .turnin 930 >>Entregue A Fruta Brilhante
step
	#xprate <1.5
	.goto Teldrassil,60.900,68.489
    .target Denalan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denalan|r
	.turnin 927 >>Entregue O Coração Enroscado em Musgo
    .isOnQuest 927
step
	#xprate <1.5
	.goto Teldrassil,60.78,68.59
	>>Clique em |cRXP_LOOT_Denalans Planter|r
	.turnin 941 >>Entregue Plantando Coração
	.isQuestTurnedIn 927
step << Hunter
	#xprate <1.5
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Sabre-da-noite Espreitador|r
    >>|cRXP_WARN_Você deve clicar com o botão direito na Moldura de Mascote e dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
	.isOnQuest 6101
    .mob Nightsaber Stalker
step
#xprate <1.99
    #label L10
    .xp 10
step
	#xprate <1.5
    #softcore
	#sticky
    #completewith next
    .deathskip >>Morra e reviva no Anjo da Cura
    .target Anjo da Cura
step << Priest
#xprate <1.99
    .goto Teldrassil,55.564,56.746
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laurna Luzalbor|r
	.trainer >>Treine suas magias de classe
    .target Laurna Morninglight
step << Warrior
#xprate <1.99
    .goto Teldrassil,56.221,59.198
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kyra Laminéola|r
	.trainer >>Treine suas magias de classe
    .target Kyra Windblade
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
	.trainer >>Treine suas magias de classe
    .train 5171 >>Treine |T132306:0|t[Retalhar]
    .train 921 >>Aprenda |T133644:0|t[Bater Carteira] também, que é necessária para sua missão de Ladino nível 10
    .target Jannok Breezesong
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    .target Dazalar
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .accept 6063 >>Aceite Adestramento da Fera - Missão
	.trainer >>Treine suas magias de classe
step << Hunter
#xprate <1.99
    .goto Teldrassil,59.9,58.8
    .use 15921 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Tocaieira Lenhateia|r
    .complete 6063,1 --Tame a Webwood Lurker
    .mob Webwood Lurker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6063 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6101 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate <1.99
    .goto Teldrassil,62.6,72.2
    .use 15922 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em um|r |cRXP_ENEMY_Sabre-da-noite Espreitador|r
    >>|cRXP_WARN_Você deve clicar com o botão direito na Moldura de Mascote e dispensar seu mascote antes de poder domar outro|r
    .complete 6101,1 --Tame a Nightsaber Stalker
    .mob Nightsaber Stalker
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6101 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6102 >>Aceite Adestramento da Fera - Missão
step << Hunter
#xprate <1.99
    .goto Teldrassil,64.7,66.7
    .use 15923 >>|cRXP_WARN_Use o|r |T132164:0|t[Bastão de Adestramento] |cRXP_WARN_em uma|r |cRXP_ENEMY_Guinchadora Estrígida|r
    >>|cRXP_WARN_Você deve clicar com o botão direito na Moldura de Mascote e dispensar seu mascote antes de poder domar outro|r
    .complete 6102,1 --Tame a Strigid Screecher
    .mob Strigid Screecher
step << Hunter
#xprate <1.99
    .goto Teldrassil,56.676,59.489
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dazalar|r
    .turnin 6102 >>Entregue Adestramento da Fera - Missão
    .target Dazalar
    .accept 6103 >>Aceite Treinamento da Fera - Missão
step << Warrior
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada oeste de Dolanaar|r
    .accept 1684 >>Aceite Elanaria
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    .goto Teldrassil,56.381,60.139
    .target Jannok Breezesong
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jannok Brisacanto|r
    .accept 2241 >>Aceite The Maçã Falls
step << Hunter
	#xprate <1.5--money issues 1.5x
    .goto Teldrassil,56.308,59.488
    .money <0.0504
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shalomon|r
    >>|cRXP_BUY_Compre uma|r |T135145:0|t[Bengala]
    >>|cRXP_WARN_Você vai equipar isto mais tarde. Pule este passo se você encontrou um bastão diferente|r
    .collect 2495,1 -- Walking Stick (1)
    .target Shalomon
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.20
step << !Druid
#xprate <1.99
    .goto Teldrassil,55.83,58.31,40,0
    .goto Teldrassil,50.22,53.83
    .goto Teldrassil,55.83,58.31,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r
    >>|cRXP_FRIENDLY_Sacerdotisa da Lua Amara|r |cRXP_WARN_patrulha a estrada oeste de Dolanaar|r
    .turnin 487 >>Entregue A Estrada para Darnassus
    .target Moon Priestess Amara
step << Rogue
#xprate <1.99
    #softcore
    #completewith next
    .goto Teldrassil,44.0,54.6
    .deathskip >>Depois que você passar pela área de furbolg, morra de propósito e ressurja no cemitério de Darnassus
    .target Anjo da Cura
step << Rogue
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>Viagem para Darnassus
step << Rogue
    .goto Darnassus,38.18,21.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 922 >>Entregue Rellian Spiraverde
    .target Rellian Greenspyre
    .accept 923 >>Aceite Tumors
step << Rogue
    #season 0
    .goto Darnassus,34.96,9.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r no topo da Árvore
    .turnin -935 >>Entregue Coroa da Terra
    .turnin -940 >>Entregue em Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >>Aceite Bosque dos Antigos
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .turnin 2241 >>Entregue The Maçã Falls
    .target Syurna
    .accept 2242 >>Aceite Destino Calls
step << Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .accept 2518 >>Aceite Lágrima da Lua
step << Warrior
#xprate >1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>Viaje para |cRXP_ENEMY_Vorlus Cascruel|r
step << Warrior
#xprate >1.99
    .goto Teldrassil,47.2,63.7
    >>Mate |cRXP_ENEMY_Vorlus Cascruel|r. Saque-o pelo seu |cRXP_LOOT_Chifre|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Hunter
    #season 2
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tProcure |cRXP_FRIENDLY_Jaeana|r, ela patrulha ao redor de Tradesmen's Terrace
    >>Compre uma pilha de|cRXP_BUY_ |T133972:0|t[Fortalecer Jerky] |rdela|cRXP_BUY_.
    >>|cRXP_WARN_Você precisará dela para alimentar sua coruja, elas apenas comem carne e não há vendedor de carne em Costa Negra|r
    .collect 117,15
    .target Jaeana
step << !Warrior
    #season 2
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >>Aceite Nessa Cantonegro
step << Hunter
    #season 2
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre e equipe um|r |T135489:0|t[Arco Recurvo Laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 2
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135489:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Hunter
    #sticky
    #label StrigidHunter
	.goto Teldrassil,41.2,44.4,0
	.goto Teldrassil,44.2,39.8,0
	.goto Teldrassil,45.6,31.4,0
	.goto Teldrassil,37.6,28.8,0
    >>Use |T132164:0|t[Domar Fera]|r em uma |cRXP_ENEMY_Caçadora Estrígida|r para domá-la -- .tame 1997
    .train 2981 >>Ataque criaturas com ele para aprender [Garra (Grau 2)]
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
	.unitscan Strigid Hunter
step << Hunter
    #sticky
    #requires StrigidHunter
    .engrave 5 >>Grave |T132270:0|t[Domínio das Feras] em seu |T132724:0|t[Baú]
step
    #season 0 << Rogue/Druid
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Mate os |cRXP_ENEMY_Timberling Tramplers|r, os |cRXP_ENEMY_Timberling Charco Beasts|r e os |cRXP_ENEMY_Elder Timberlings|r. Saqueie-os pelos seus |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Hunter
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Usar |T134025:0|t[Teldrassil Bird Carne] perto do cadáver para invocar |cRXP_ENEMY_Mowgh|r
    >>Mate |cRXP_ENEMY_Mowgh|r e saqueie-o para obter |T134419:0|t|cRXP_LOOT_[Runa de Flanqueamento]|r
    .collect 205979,1
    .train 425762,1 --Flanking Strike
    .use 208608
    .mob Mowgh
step << Hunter
    #season 2
    .train 425762 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueamento|r] |cRXP_WARN_para treinar|r |T132175:0|t[Ataque Flanqueante]
    .use 205979
    .itemcount 205979,1
    .train 425762,1 --Flanking Strike
step << Hunter
    #season 2
    #optional
    #completewith next
    .engrave 7 >>Abra sua folha de personagem e grave suas pernas com |T132175:0|t[Ataque Flanqueante]
step
    #season 0 << Rogue/Druid
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Mate |cRXP_ENEMY_Lady Sathrah|r. Saque-o para obter seus |cRXP_LOOT_Fiandeiras|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_pode aparecer em 3 locais diferentes|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.3
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .accept 937 >>Aceite A Clareira Encantada
step << Rogue
    #season 2
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Mate |cRXP_ENEMY_Lady Sathrah|r. Saque-o para obter seus |cRXP_LOOT_Fiandeiras|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_pode aparecer em 3 locais diferentes|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Rogue
    .goto Teldrassil,38.0,25.2
    >>Use|cRXP_WARN_ |T133644:0|t[Bater Carteira]|r em|cRXP_ENEMY_ Sethir, o Antigo|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_ENEMY_Sethir, o Antigo|r |cRXP_WARN_caminha ao longo do grande galho da árvore|r
    >>|cRXP_WARN_Evite lutar contra |cRXP_ENEMY_Sethir, o Antigo|r. Deixe-o passar por você, então|r |T132320:0|t[Furtividade] |cRXP_WARN_e|r |T133644:0|t[Bater Carteira] |cRXP_WARN_quando você estiver atrás dele|r
    .complete 2242,1
    .mob Sethir the Ancient
step << Rogue
    #season 2
    #sticky
    #completewith MistStart
    #label BottomRightMapPiece
    >>Mate ou |T133644:0|t[Bater Carteira] as |cRXP_ENEMY_Bloodfeather Harpies|r. Saqueie-as para a |T134327:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    #sticky
	#label harpies2
    .goto Teldrassil,33.619,29.819,0,0
    >>Mate as |cRXP_ENEMY_Harpias Sangue-Pena|r. Saqueie-as para obter os |cRXP_LOOT_Cintos|r
    >>|cRXP_ENEMY_Sangue-Pena Matriarcas|r |cRXP_WARN_lançam|r |T136052:0|t[Onda Curativa] |cRXP_WARN_e|r |T136048:0|t[Raio] |cRXP_WARN_que causam muito dano. Tente matá-las rápido|r
    .complete 937,1 --Collect Bloodfeather Belt (x6)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
step << Rogue
    #season 2
    #sticky
    #completewith next
    #requires BottomRightMapPiece
    .cast 418600 >>|cRXP_WARN_Use qualquer um dos|r |T134327:0|t[|cRXP_LOOT_Fragmentos do Mapa|r] |cRXP_WARN_para combiná-los em|r |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro de Teldrassil|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,31.54,31.62
    .target Mist
    #label MistStart
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Bruma|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta|r
    >>|cRXP_WARN_Pular esta missão se o NPC não estiver lá|r
    .accept 938 >>Aceite Bruma
step << Rogue
    #season 2
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    >>Mate ou |T133644:0|t[Bater Carteira] as |cRXP_ENEMY_Bloodfeather Harpies|r. Saqueie-as para a |T134327:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208603,1 -- Bottom-Right Map Piece (1)
    .mob Bloodfeather Harpy
    .mob Bloodfeather Rogue
    .mob Bloodfeather Sorceress
    .mob Bloodfeather Fury
    .mob Bloodfeather Wind Witch
    .mob Bloodfeather Matriarch
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Use qualquer um dos|r |T134327:0|t[|cRXP_LOOT_Fragmentos do Mapa|r] |cRXP_WARN_para combiná-los em|r |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro de Teldrassil|r]
    .collect 208605,1
    .itemcount 208604,1
    .itemcount 208601,1
    .itemcount 208602,1
    .itemcount 208603,1
    .use 208604
    .use 208601
    .use 208602
    .use 208603
    .train 398196,1
step << !sod/Warrior/Rogue/Druid
    .goto Teldrassil,38.3,34.4
    .target Sentinel Arynia Cloudsbreak
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 938 >>Entregue Bruma
    .isOnQuest 938
step << !sod/Warrior/Rogue/Druid
    #requires harpies2
    #label TeldrassilEnd
    .goto Teldrassil,38.3,34.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sentinela Arynia Rasganimbus|r
    .turnin 937 >>Entregue A Clareira Encantada
    .target Sentinel Arynia Cloudsbreak
    .accept 940 >>Aceite Teldrassil
step << Druid
    #season 2
    #label Spinnerets
	.goto Teldrassil,47.3,26.0,0
    .goto Teldrassil,37.9,25.1,0
    .goto Teldrassil,47.3,26.0,30,0
    .goto Teldrassil,37.9,25.1,30,0
    .goto Teldrassil,40.7,25.4
    >>Mate |cRXP_ENEMY_Lady Sathrah|r. Saque-o para obter seus |cRXP_LOOT_Fiandeiras|r
    >>|cRXP_ENEMY_Lady Sathrah|r |cRXP_WARN_pode aparecer em 3 locais diferentes|r
    .complete 2518,1 --Collect Silvery Spinnerets (x1)
    .mob Lady Sathrah
step << Druid
    #season 2
    .goto Teldrassil,43.2,42.8,55,0
    .goto Teldrassil,43.2,32.8,55,0
    .goto Teldrassil,43.6,26.0,55,0
    .goto Teldrassil,43.2,42.8
	>>Mate os |cRXP_ENEMY_Timberling Tramplers|r, os |cRXP_ENEMY_Timberling Charco Beasts|r e os |cRXP_ENEMY_Elder Timberlings|r. Saqueie-os pelos seus |cRXP_LOOT_Tumors|r
    .complete 923,1 --Collect Mossy Tumor (x5)
    .mob Elder Timberling
    .mob Timberling Trampler
    .mob Timberling Mire Beast
step << Warrior
    #season 2
    .goto Teldrassil,39.8,37.4,25 >>Vá para o local marcado. Verifique se o |cRXP_FRIENDLY_Espadachim Errante|r está lá. Se você o encontrar, pode desafiá-lo para um duelo que lhe concederá |T132334:0|t[|cRXP_FRIENDLY_Frenesi de Sangue|r]
    >>|cRXP_WARN_Ele tem múltiplos pontos de invocação e pode estar presente apenas em um deles por vez. Pule este passo se ele não estiver lá|r
    .unitscan Wandering Swordsman
    .train 412507,1
step
    #softcore
	#completewith darn << era
    #completewith darnSoD << sod
    .deathskip >>Morra e renasça no cemitério de Darnassus
    >>|cRXP_WARN_Certifique-se de que você está no lado oeste do rio ou você pode acabar indo pelo caminho errado|r << sod
    .target Anjo da Cura
step
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>Viagem para Darnassus
step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,25 >>Vá para o local marcado. Verifique se o |cRXP_FRIENDLY_Espadachim Errante|r está lá se você ainda não o encontrou. Se você o encontrar, pode desafiá-lo para um duelo, que lhe concederá a runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesi de Sangue|r]
    >>|cRXP_WARN_Ele tem múltiplos pontos de invocação e pode estar presente apenas em um deles por vez. Pule este passo se ele não estiver lá|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #season 2
    .goto Teldrassil,43.8,77.0,25 >>Vá para o local marcado. Verifique se o |cRXP_FRIENDLY_Espadachim Errante|r está lá se você ainda não o encontrou. Se você o encontrar, pode desafiá-lo para um duelo, que lhe concederá a runa de |T132334:0|t[|cRXP_FRIENDLY_Frenesi de Sangue|r]
    >>|cRXP_WARN_Ele tem múltiplos pontos de invocação e pode estar presente apenas em um deles por vez. Pule este passo se ele não estiver lá|r
    .unitscan Wandering Swordsman
    .train 412507,1
step << Warrior
    #softcore
    #completewith next
    #sesaon 2
    .goto Teldrassil,40.8,75.6
    .deathskip >>Morra e renasça no cemitério de Darnassus
    >>|cRXP_WARN_Certifique-se de estar mais perto do cemitério de Darnassus do que de Dolanaar, ou você pode acabar indo pelo caminho errado. Se não tem certeza, morra a leste do local marcado no mapa|r
    .target Anjo da Cura
step
    #hardcore
    #completewith next
    #season 2
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>Viagem para Darnassus
step
    .goto Darnassus,70.679,45.379
    .target Mydrannul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mydrannul|r
    .accept 6344 >>Aceite Nessa Cantonegro
step
    #softcore
    #label darn
    #optional
    .goto Darnassus,82.01,36.70
    .zone Darnassus >>Viagem para Darnassus
step
	.abandon 927 >>Abandone O Coração Enroscado em Musgo. Você nunca tem uma oportunidade para entregá-la.
step << Warrior
#xprate <1.99
    .goto Darnassus,57.305,34.606
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1684 >>Entregue para Elanaria
    .target Elanaria
    .accept 1683 >>Aceite Vorlus Cascruel
step << Warrior
#xprate <1.99
    #sticky
    #completewith next
    .goto Teldrassil,48.7,62.2,18 >>Viaje para |cRXP_ENEMY_Vorlus Cascruel|r
step << Warrior
#xprate <1.99
    .goto Teldrassil,47.2,63.7
    >>Mate |cRXP_ENEMY_Vorlus Cascruel|r. Saque-o pelo seu |cRXP_LOOT_Chifre|r
    .complete 1683,1 --Collect Horn of Vorlus (x1)
    .mob Vorlus Vilehoof
step << Warrior
#xprate <1.99
    #softcore
	#sticky
    #completewith next
    .goto Teldrassil,43.6,54.3
    .deathskip >>Morra de propósito depois que você passar pela área dos Furbolg e renasça em Darnassus
step << Warrior
#xprate <1.99
    #hardcore
    #completewith next
    .goto Darnassus,82.01,36.70,100 >>Viagem para Darnassus
step << Warrior
    .goto Darnassus,57.305,34.606
    .target Elanaria
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elanaria|r
    .turnin 1683 >>Entregue Vorlus Cascruel
--	.accept 1686 >> Accept The Shade of Elura
step << Warrior
    #season 2
    #requires xp10
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delwynna <Caçadora de Monstros>|r no andar de cima
    >>|cRXP_WARN_Entregue as três |cRXP_LOOT_Cabeça Decepada|r para receber|r |T134455:0|t[|cRXP_FRIENDLY_Monster Caçador's Runa Fragmentos|r]
    .collect 204689,1
    .collect 204690,1
    .collect 204688,1
    .use 204703
    .skipgossip
    .target Delwynna
    .itemcount 208612,1 --Severed Spider Head (1)
    .itemcount 208611,1 --Severed Tiger Head (1)
    .itemcount 208610,1 --Severed Owl Head
    .train 403475,1 --Rune not known
step << Warrior
    #season 2
    >>Usar qualquer um dos |T134455:0|t[|cRXP_FRIENDLY_Fragmentos de Runa do Caçador de Monstros|r] para combiná-los em |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .train 403475 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para treinar|r |T135291:0|t[Devastar]
    .use 204689
    .itemcount 204689,1
    .itemcount 204690,1
    .itemcount 204688,1
step << Hunter
#xprate <1.99
    .goto Darnassus,40.377,8.545
    .target Jocaste
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jocaste|r
    .turnin 6103 >>Entregue Treinamento da Fera - Missão
step << Druid
    #season 0
    .goto Darnassus,35.38,8.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mathrengyl Ursivagus|r no nível intermediário
    .turnin 5931 >>Entregue De Volta para Darnassus - Missão
    .target Mathrengyl Bearwalker
    .accept 6001 >>Aceite Corpo e Coração
step
    #season 0
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r
    .turnin -935 >>Entregue Coroa da Terra
    .turnin -940 >>Entregue em Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >>Aceite Bosque dos Antigos
step << !Rogue
    #season 2
    #label darnSoD
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 923 >>Entregue Tumors
step << Rogue
    #season 2
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2518 >>Entregue Lágrima da Lua
    .target Priestess A'moora
    .accept 2520 >>Aceite Sathrah's Sacrificar
step << Rogue
    #season 2
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Use|r |T135652:0|t[Sathrah's Sacrificar] |cRXP_WARN_na fonte|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << Rogue
    #season 2
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2520 >>Entregue Sathrah's Sacrificar
step << Warrior/Rogue/Druid
    #season 2
    .goto Darnassus,34.814,9.255
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Arquidruida Fandral Guenelmo|r
    .turnin 940 >>Entregue em Teldrassil
    .target Arch Druid Fandral Staghelm
    .accept 952 >>Aceite Bosque dos Antigos
step
    #season 0
    .goto Darnassus,38.184,21.639
    .target Rellian Greenspyre
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r
    .turnin 923 >>Entregue Tumors
step << Hunter
    .goto Darnassus,40.2,9.8
    .trainer >>Treine feitiços de nível 12 << sod
    >>|cRXP_WARN_Pule este passo e volte depois de entregar Lágrima da Lua se você não tiver dinheiro suficiente ou ainda não está no nível 12|r << sod
    .target Jocaste
step << Hunter
    .goto Darnassus,42.2,8.8
    .trainer >>Treine habilidades de mascote
    .target Silvaria
step << Rogue
    #season 2
    .goto Darnassus,38.6,15.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lelanai|r
    .vendor >>|cRXP_BUY_Lixo de venda|r
    .target Lelanai
step << Rogue
    .goto Darnassus,31.21,17.72,8,0
    .goto Darnassus,36.99,21.91
    .target Syurna
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Syurna|r
    .turnin 2242 >>Entregue Destino Calls
step << Rogue
    #season 2
    >>|cRXP_WARN_Tenha certeza de que tem pelo menos 29 de prata depois do treinamento. Você precisará disso para comprar um arco|r
    .trainer >>Treine feitiços de nível 12
step << !sod/!Rogue
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2518 >>Entregue Lágrima da Lua
    .target Priestess A'moora
    .accept 2520 >>Aceite Sathrah's Sacrificar
step << !sod/!Rogue
    .goto Darnassus,39.7,85.8
	.use 8155 >>|cRXP_WARN_Use|r |T135652:0|t[Sathrah's Sacrificar] |cRXP_WARN_na fonte|r
    .complete 2520,1 --Offer the sacrifice at the fountain
step << !sod/!Rogue
    #label end
    .goto Darnassus,39.72,92.68,10,0
    .goto Darnassus,36.65,85.93
    .target Priestess A'moora
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sacerdotisa A'mura|r
    .turnin 2520 >>Entregue Sathrah's Sacrificar
step << Priest
    #season 2
    .goto Darnassus,40.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Sacerdotisa Alathea|r
    .turnin 5629 >>Entregue O Retorno ao Lar
    .target Priestess Alathea
step << Priest
    #season 2
    .goto Darnassus,38.6,82.0
    .trainer >>Treine Feitiços nível 12
step << Druid
#ssf
    #season 0
    .goto Darnassus,47.95,68.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Firodren Clamaluna|r
    .train 2366 >>Treine |T136065:0|t[Herborismo]
    >>|T136065:0|t[Herborismo] |cRXP_WARN_é necessário para coletar 5|r |T134187:0|t[Earthroot] |cRXP_WARN_para uma importante missão de classe em breve. Você pode desaprender depois|r
    .target Firodren Mooncaller
step
    #ah
    .goto Darnassus,56.245,54.039,-1
    .goto Darnassus,56.374,51.820,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com um |cRXP_FRIENDLY_Darnassus Auctioneer|r
    >>Compre os itens a seguir para entrega imediata em Costa Negra mais tarde:
    >>|T134187:0|t[Earthroot] << Druid era
    >>|T133912:0|t[Costa Negra Grouper]
    >>|T133972:0|t[Strider Carne]
    *Pule esta etapa se você não quiser comprar nenhum
    .collect 5469,5,2178,1 -- Strider Meat (5)
    .collect 12238,6,1141,1 -- Darkshore Grouper (6)
    .collect 2449,5,6123,1 << Druid
    .target Auctioneer Tolon
    .target Auctioneer Golothas
step << Hunter
    .goto Darnassus,64.2,63.0
    .line Darnassus,60.65,66.47,61.68,63.73,62.36,58.91,62.32,55.22,65.77,55.75,67.88,57.48,68.35,59.98,65.14,68.14,64.34,71.36,62.28,68.79,60.65,66.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tProcure |cRXP_FRIENDLY_Jaeana|r, ela patrulha ao redor de Tradesmen's Terrace
    >>Compre uma pilha de|cRXP_BUY_ |T133972:0|t[Fortalecer Jerky] |rdela|cRXP_BUY_.
    >>|cRXP_WARN_Você precisará dela para alimentar sua coruja, elas apenas comem carne e não há vendedor de carne em Costa Negra|r
    .collect 117,15
    .target Jaeana
step << Hunter
    #season 2
    .goto Darnassus,64.2,59.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kieran|r. Ele está no nível superior da cabana
    >>|cRXP_BUY_Compre uma|r |T135145:0|t[Bengala]
    >>|cRXP_WARN_Pule este passo se você tiver um cajado diferente pronto na mochila|r
    .collect 2495,1
    .target Kieran
    .money <0.1539
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Warrior/Priest/Sod Rogue
    .goto Darnassus,57.56,46.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ilyenia Flameluna|r
    .skipgossip 11866,1
    .train 227 >>Treine Cajados << Hunter/Warrior/Priest
    .train 265 >>Treine Arcos << Sod Rogue
    >>Se você tem um Cajado na mochila, equipe-o << Hunter
    >>Se você tem um Arco na mochila, equipe-o << Rogue
    .target Ilyenia Moonfire
step << Hunter
    #optional
    #completewith end
    +|cRXP_WARN_Equipe a|r |T135145:0|t[Bengala]
    .use 2495
    .itemcount 2495,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.19
step << Hunter/Sod Rogue
    .goto Darnassus,58.76,44.48
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre e equipe um|r |T135489:0|t[Arco Recurvo Laminado]
    .collect 2507,1
    .target Ariyell Skyshadow
    .money <0.1751
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.77
step << Hunter
    #season 0
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
	.vendor >>|cRXP_BUY_Compre|r [Flechas Afiadas]
    .target Ariyell Skyshadow
step << Hunter/Sod Rogue
    #season 2
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
	.vendor >>|cRXP_BUY_Compre|r [Flechas Afiadas]
    .vendor >>|cRXP_BUY_Compre um|r |T134410:0|t[Aljava Média] |cRXP_BUY_se você tiver dinheiro extra|r << Hunter
    .target Ariyell Skyshadow
step << Hunter
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135489:0|t[Arco Recurvo Laminado]
    .use 2507
    .itemcount 2507,1
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<5.76
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135147:0|t[Cajado Nodoso]|cRXP_BUY_. Equipe-o no nível 15|r
	.collect 2030,1
    .target Ariyell Skyshadow
    .money <0.5022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
    >>|cRXP_BUY_Compre um|r |T135154:0|t[Cajado de Combate]|cRXP_BUY_. Equipe-o no nível 11|r << era
    >>|cRXP_BUY_Compre e equipe um|r |T135154:0|t[Cajado de Combate] |cRXP_BUY_se você não conseguir arcar com um|r |T135147:0|t[Cajado Nodoso] << sod
	.collect 854,1
    .target Ariyell Skyshadow
    .money <0.3022
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.44
step << Warrior
    .goto Darnassus,58.76,44.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ariyell Caelumbra|r
	>>|cRXP_BUY_Compre e equipe um|r |T135346:0|t[Alfanje] |cRXP_BUY_se você não conseguir arcar com um|r |T135154:0|t[Cajado de Combate]
	.collect 851,1
    .target Ariyell Skyshadow
    .money <0.2023
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.82
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135346:0|t[Alfanje]
    .use 851
    .itemcount 851,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<6.81
step << Warrior
    #completewith next
    +|cRXP_WARN_Equipe o|r |T135154:0|t[Cajado de Combate]
    .use 854
    .itemcount 854,1
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.43
step << Warrior
    #season 2
	.goto Darnassus,58.6,35.6
    .target Arias'ta Bladesinger
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Arias'ta Cantalâmina|r
    .trainer >>Treine suas magias de classe
step << Rogue
    #season 0
    .goto Darnassus,62.68,65.58
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rellian Spiraverde|r no segundo andar
    >>|cRXP_BUY_Compre uma|r |T135641:0|t[Adaga Equilibrada de Arremesso]
    .collect 2946,1 -- Balanced Throwing Dagger
    .target Turian
step
    #completewith NessaShadowsong
    .goto Darnassus,28.52,39.89
    .zone Teldrassil >>Viaje pelo portal roxo até a Vila de Rut'theran
    .zoneskip Darkshore
    .subzoneskip 702
step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,55.339,90.818
    .cast 421424 >>|cRXP_WARN_Use o|r |T134269:0|t[|cRXP_LOOT_Mapa do Tesouro de Teldrassil|r] |cRXP_WARN_dentro do tronco da árvore em Vila de Rut'theran. Isto fará um |cRXP_PICK_Tesouro Enterrado|r aparecer|r
    .use 208605
    .itemcount 208605,1
    .train 398196,1
step << Rogue
    #season 2
    >>Abra o |cRXP_PICK_Tesouro Enterrado|r. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1
step
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6344 >>Entregue Nessa Cantonegro
    .target Nessa Shadowsong
    .accept 6341 >>Aceite A Recompensa de Teldrassil
step
    #label NessaShadowsong
    #optional
    .goto Teldrassil,56.25,92.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nessa Cantonegro|r
    .turnin 6343 >>Entregue Retornar para Nessa
    .isOnQuest 6343
    .target Nessa Shadowsong
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .turnin 6341 >>Entregue A Recompensa de Teldrassil
    .target Vesprystus
    .accept 6342 >>Aceite Voo para Auberdine
step
    .goto Teldrassil,58.399,94.016
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vesprystus|r
    .fly Darkshore >>Voe para Costa Negra
    .target Vesprystus
]])
