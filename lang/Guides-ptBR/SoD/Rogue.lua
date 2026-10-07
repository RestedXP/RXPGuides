if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Golpe Sombrio - 3 (Elwynn Forest)
#title Golpe Sombrio

step << Rogue
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>|cRXP_WARN_Abra o |cRXP_PICK_Defias Stashbox|r no chão. Saque-o para o |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Use o|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T132291:0|t[Golpe Sombrio]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Golpe Sombrio - 3 (Dun Morogh)
#title Golpe Sombrio

step
    #optional
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >>Entre na Frostmane Cave
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>Viaje para o |cRXP_PICK_Frostmane Saque Cache|r dentro
step
    .goto Dun Morogh,30.773,80.063
    >>Abra o |cRXP_PICK_Frostmane Saque Baú de Saque Jubafria|r no chão lá dentro. Saqueie-o para obter a |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    .train 400105 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Golpe Sombrio - 3 (Shadowglen)
#title Golpe Sombrio

step << Rogue
    #season 2
    .goto Teldrassil,57.922,40.687,25,0
    .goto Teldrassil,58.709,38.782,10,0
    .goto Teldrassil,59.15,40.66,20,0
    .goto Teldrassil,59.674,42.613
    >>|cRXP_WARN_Suba pela rampa na árvore Aldrassil e pule para o telhado|r
    >>|cRXP_WARN_O |cRXP_PICK_Ídolo|r fica no topo do telhado|r
    >>Abra o |cRXP_PICK_Ídolo|r. Saque-o para o |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r
    >>|cRXP_WARN_Se você está tendo dificuldade em pular para o telhado, tente pular por cima do corrimão enquanto corre pela rampa|r
    .collect 204795,1 -- Rune of Shadowstrike (1)
    .train 400105,1
step << Rogue
    #season 2
    .train 400105 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Saque Rápido - 8 (Elwynn Forest)
#title Saque Rápido

step << Rogue
    #season 2
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Riverpaw Corredores|r e os |cRXP_ENEMY_Riverpaw Nanico|r. Saque-os para obter |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 203787,1 -- Bottom-Left Map Piece (1)
    .mob Riverpaw Outrunner
    .mob Riverpaw Runt
    .train 398196,1
step << Rogue
    #season 2
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76
    >>|T133644:0|t[Bater Carteira] |cRXP_ENEMY_Kobold Miners|r e |cRXP_ENEMY_Kobold Tunnelers|r. Saque-os para o |T134327:0|t[|cRXP_LOOT_Top-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 203784,1 -- Top-Right Map Piece (1)
    .mob Kobold Miner
    .mob Kobold Tunneler
    .train 398196,1
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
step << Rogue
    #season 2
    .goto Elwynn Forest,75.4,85.4,60,0
    .goto Elwynn Forest,77.8,82.2,60,0
    .goto Elwynn Forest,83.2,87.0,60,0
    .goto Elwynn Forest,75.4,82.4
    >>|T133644:0|t[Bater Carteira] |cRXP_ENEMY_Murloc Foragers|r e |cRXP_ENEMY_Murloc Lurkers|r. Saque-os para o |T134269:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    >>|cRXP_WARN_Nota: Você também pode obter isto de qualquer outro |cRXP_ENEMY_Murloc|r em Elwynn Forest|r
    .collect 203786,1 -- Bottom-Right Map Piece (1)
    .mob Murloc Forager
    .mob Murloc Lurker
    .mob Murloc Streamrunner
    .mob Murloc
    .train 398196,1
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
    >>Abra o |cRXP_PICK_Tesouro Enterrado|r. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 -- Rune of Quick Draw (1)
    .train 398196,1
step << Rogue
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Saque Rápido - 8 (Dun Morogh)
#title Saque Rápido

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Escuridão Ferro Spies|r. Saque-os para o |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208219,1 -- Bottom-Left Map Piece (1)
    .mob Dark Iron Spy
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,25.4,50.8
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Frostmane Trolls|r. Saque de |T134327:0|t[|cRXP_LOOT_Top-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208213,1 -- Top-Right Map Piece (1)
    .mob Frostmane Headhunter
    .mob Frostmane Hideskinner
    .mob Frostmane Shadowcaster
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,70.8,56.0
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Pedraqueixo Skullthumpers|r e os |cRXP_ENEMY_Pedraqueixo Bonesnappers|r. Saque-os para o |T134327:0|t[|cRXP_LOOT_Top-Esquerda Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208215,1 -- Top-Left Map Piece (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 398196,1
step << Rogue
    #season 2
    .goto Dun Morogh,26.0,41.8
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Leper Gnomes|r. Saque de |T134269:0|t[|cRXP_LOOT_Bottom-Direita Mapa Piece]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208218,1 -- Bottom-Right Map Piece (1)
    .mob Leper Gnome
    .train 398196,1
step << Rogue
    #season 2
    .cast 418600 >>|cRXP_WARN_Use qualquer uma das|r |T134327:0|t[|cRXP_LOOT_Map Pieces|r |cRXP_WARN_para combiná-las em um|r |T134269:0|t[|cRXP_LOOT_Dun Morogh Mapa do Tesouro|r]
    .collect 208220,1
    .itemcount 208219,1
    .itemcount 208213,1
    .itemcount 208215,1
    .itemcount 208218,1
    .use 208219
    .use 208213
    .use 208215
    .use 208218
    .train 398196,1
step << Rogue
    #season 2
    #completewith next
    .goto Dun Morogh,46.985,43.632
    .cast 418599 >>|cRXP_WARN_Use o|r |T134269:0|t[|cRXP_LOOT_Dun Morogh Mapa do Tesouro|r] |cRXP_WARN_embaixo da pequena ponte. Um |cRXP_PICK_Enterrado Tesouro|r aparecerá|r
    .use 208220
    .itemcount 208220,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Saque Rápido - 8 (Teldrassil)
#title Saque Rápido

step << Rogue
    #season 2
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Vá para Vileza Pedra
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,77.86,61.66
    >>Mate |cRXP_ENEMY_Capeta Cruel|r, |cRXP_ENEMY_Rascal Sprites|r e |cRXP_ENEMY_Shadow Sprites|r. Saqueie-os para obter |T134327:0|t[|cRXP_LOOT_Bottom-Esquerda Mapa Piece]|r
    .collect 208604,1 -- Bottom-Left Map Piece (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,61.2,67.0
    >>Abate os Timberlings. Saqueie-os para obter o |T134327:0|t[|cRXP_LOOT_Top-Direita Mapa Piece]|r
    .collect 208601,1 -- Top-Right Map Piece (1)
    .mob Timberling
    .mob Timberling Bark Ripper
    .mob Timberling Trampler
    .train 398196,1
step << Rogue
    #season 2
    .goto Teldrassil,46.8,54.6,60,0
    .goto Teldrassil,44.2,59.2
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
    .goto Teldrassil,37.8,43.0,60,0
    .goto Teldrassil,36.0,34.4,60,0
    .goto Teldrassil,34.6,28.8,60,0
    .goto Teldrassil,37.8,43.0
    >>Mate ou |T133644:0|t[Bater Carteira] as |cRXP_ENEMY_Bloodfeather Harpies|r. Saque-as para obter |T134327:0|t[|cRXP_LOOT_Top-Esquerda Mapa Piece|r]
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
step << Rogue
    #season 2
    #completewith next
    .goto Darnassus,29.466,41.405
    .zone Teldrassil >>Pegue o portal púrpura para Rut'theran
    .train 398196,1
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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Atacar das Sombras - 1 (Elwynn Forest)
#title Atacar das Sombras

step << Rogue
    #season 2
    .goto Elwynn Forest,46.122,62.937,5,0
    .goto Elwynn Forest,46.175,62.124
    >>|cRXP_WARN_Usando as caixas fora da casa, pule para o telhado e corra atrás da chaminé|r
    >>Abra o |cRXP_PICK_Rusty Caixa-forte|r. Saqueie-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r] |cRXP_WARN_to train|r |T236280:0|t[Atacar das Sombras]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Atacar das Sombras - 1 (Dun Morogh)
#title Atacar das Sombras

step << Rogue
    #season 2
    .goto Dun Morogh,47.658,51.706,5,0
    .goto Dun Morogh,47.160,52.335,5,0
    .goto Dun Morogh,46.917,51.995
    >>|cRXP_WARN_Suba no telhado do Kharanos Estalagem, depois pule no topo do grande barril. Siga a seta|r
    >>Abra o |cRXP_PICK_Rusty Caixa-forte|r. Saqueie-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r]
    .collect 203993,1 -- Rune of Slaughter (1)
    .train 424992,1
step << Rogue
    #season 2
    .train 424992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r] |cRXP_WARN_to train|r |T236280:0|t[Atacar das Sombras]
    .use 203993
    .itemcount 203993,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name No Meio da Testa - 8 (Objetos de TBC)
#title No Meio da Testa

step << Rogue
    #season 2
    #completewith next
    .goto Stormwind City,56.93,29.54,8,0
    .goto Stormwind City,58.65,27.56,10 >>Entre no Beco da Garganta Cortada na Cidade de Objetos de TBC no Distrito dos Anões
    .train 400081,1
step << Rogue
    #season 2
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
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name No Meio da Testa - 8 (Ironforge)
#title No Meio da Testa

step << Rogue
    #season 2
    .goto Ironforge,51.913,13.383
    >>Abra o |cRXP_PICK_Baú Empoeirado|r. Saque-o para obter o |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    >>|cRXP_WARN_Fazer isso irá invocar dois |cRXP_ENEMY_Cut-throat Muggers|r de nível 10 que irão atacá-lo|r
    .collect 204174,1 -- Rune of Precision (1)
    .mob Cut-throat Mugger
    .train 400081,1
step << Rogue
    #season 2
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name No Meio da Testa - 8 (Teldrassil)
#title No Meio da Testa

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
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Dança de Lâminas - 10 (Cerro Oeste)
#title Dança de Lâminas

step << Rogue
    #season 2
    .goto Westfall,48.27,46.91,60,0
    .goto Westfall,46.39,37.38,60,0
    .goto Westfall,48.27,46.91
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Defias|r em todo Cerro Oeste. Saque-os por uma |T133463:0|t[|cRXP_LOOT_Discreet Envolver]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 209031,1 -- Discreet Envelope (1)
    .mob Defias Trapper
    .mob Defias Smuggler
    .mob Defias Looter
    .train 400099,1
step << Rogue
    #season 2
    >>Abra o |cRXP_PICK_Discreet Envolver|r. Saque-a pela |T134237:0|t[|cRXP_LOOT_Equipment Stash Chave]|r
    .collect 209030,1 -- Equipment Stash Key (1)
    .use 209031
    .itemcount 209031,1
    .train 400099,1
step << Rogue
    #season 2
    #map Westfall
    .goto 1415,40.805,80.235
    >>Cabeça para a entrada de trás das Minas Mortas
    >>Abra o |cRXP_PICK_Equipment Stash|r. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Rune of Dança de Lâminas|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Dança de Lâminas|r] |cRXP_WARN_para treinar|r |T132350:0|t[Dança de Lâminas]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Dança de Lâminas - 16 (Dun Morogh)
#title Dança de Lâminas

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Bater Carteira] |cRXP_ENEMY_Dark Ferro Spies|r. Saque-os por uma |T133875:0|t[|cRXP_LOOT_Dark Ferro Caixa-forte]|r
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208838,1 -- Dark Iron Lockbox (1)
    .mob Dark Iron Spy
    .train 400099,1
step << Rogue
    #season 2
    >>Abra a |T133875:0|t[|cRXP_LOOT_Dark Ferro Caixa-forte]|r. Saque-a pela |T134419:0|t[|cRXP_FRIENDLY_Rune of Dança de Lâminas|r]
    >>|cRXP_WARN_Nota: Você deve ter|r |T136058:0|t[Arrombamento] |cRXP_WARN_do seu treinador para abrir|r
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 208838,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa of Dança de Lâminas|r] |cRXP_WARN_para treinar|r |T132350:0|t[Dança de Lâminas]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Dança de Lâminas - 16 (Costa Negra)
#title Dança de Lâminas

step << Rogue
    #season 2
    #completewith learnBD
    .goto Darkshore,55.106,33.621,30 >>Entre na caverna Naga Cliffspring
    .train 400099,1
step << Rogue
    #season 2
    .goto Darkshore,56.253,34.877
    >>Abate os |cRXP_ENEMY_Stormscale Sirens|r e |cRXP_ENEMY_Cavalga-onda Escamarraio|r. Saque-os por uma |T134242:0|t[|cRXP_LOOT_Cliffspring Chave]|r
    .collect 211471,1 -- Cliffspring Key (1)
    .mob Stormscale Wave Rider
    .mob Stormscale Siren
    .train 400099,1
step << Rogue
    .goto Darkshore,56.253,34.877
    >>Abra o |cRXP_PICK_Clliffspring Baú|r dentro da caverna. Saque-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Dança de Lâminas|r]
    .collect 208771,1 -- Rune of Blade Dance (1)
    .itemcount 211471,1
    .train 400099,1
step << Rogue
    #season 2
    .train 400099 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa of Dança de Lâminas|r] |cRXP_WARN_para treinar|r |T132350:0|t[Dança de Lâminas]
    .use 208771
    .itemcount 208771,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Mutilar - 5 (Elwynn Forest)
#title Mutilar

step << Rogue
    #season 2
    .goto Elwynn Forest,57.5,48.2
    >>|T133644:0|t[Bater Carteira] |cRXP_ENEMY_Garrick Patatenra|r para |T134331:0|t[Picote's Nota]
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 203723,1 -- Cutty's Note (1)
    .mob Garrick Padfoot
    .train 400094,1
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
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .use 203990 -- Rune of Mutilation (1)
    .target Cutty
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Mutilar - 8 (Dun Morogh)
#title Mutilar

step << Rogue
    #season 2
    .goto Dun Morogh,77.86,61.66
    >>|T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Dark Ferro Spies|r. Saqueie-os pelo |T134331:0|t[Blackrat's Nota]
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208205,1 --Blackrat's Note (1)
    .mob Dark Iron Spy
    .train 400094,1
step << Rogue
    #season 2
    .goto Dun Morogh,57.256,45.227
    >>Fale com |cRXP_FRIENDLY_Blackrat|r para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .collect 203990,1
    .skipgossip
    .train 400094,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    .use 203990 -- Rune of Mutilation (1)
    .train 400094,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Talho de Sabre - 12 (Cerro Oeste)
#title Talho de Sabre

step << Rogue
    #season 2
    .goto Westfall,51.540,55.361,30,0
    .goto Westfall,51.093,54.642,30,0
    .goto Westfall,50.81,47.15,50,0
    .goto Westfall,51.093,54.642
    >>Use o |T133644:0|t[Bater Carteira] no |cRXP_ENEMY_Defias Batedor|r para o |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    >>Você deve estar em [Furtividade] para usar [Bater Carteira]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .mob Defias Scout
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Talho de Sabre - 12 (Loch Modan)
#title Talho de Sabre

step << Rogue
    #season 2
    #completewith next
    .goto Loch Modan,41.01,12.60,50,0
    .goto Loch Modan,42.86,10.36,60,0
    .goto Loch Modan,46.20,13.15,10 >>|cRXP_WARN_Vá para a muralha da barragem de Loch Modan e desça cuidadosamente até a saliência no centro. Siga a seta|r
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,46.373,12.666
    >>Abra a |cRXP_PICK_Stonemason's Caixa de Ferramentas|r no patamar. Pegue a |T134419:0|t[|cRXP_FRIENDLY_Rune of Talho de Sabre|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .goto Loch Modan,45.823,12.652
    .cast 6477 >>Clique na |cRXP_PICK_Corda de Fuga|r para voltar ao topo
    .subzoneskip 146,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Talho de Sabre - 1 (Costa Negra)
#title Talho de Sabre

step << Rogue
    #season 2
    #completewith next
    .goto Darkshore,32.80,37.72,20 >>Nade para a pequena ilha com o Farol nela
    .train 424785,1
step << Rogue
    #season 2
    .goto Darkshore,32.729,37.093
    >>Abra a |cRXP_PICK_Lighthouse Stash|r dentro do tronco da árvore. Saque-a para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa of Talho de Sabre|r]
    .collect 208772,1 -- Rune of Saber Slash (1)
    .train 424785,1
step << Rogue
    #season 2
    .cast 402265 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    .use 208772 -- Rune of Saber Slash (1)
    .train 424785,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Golpe Sombrio - 2 (Durotar)
#title Golpe Sombrio


    --Rune of Shadowstrike

step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .accept 77592 >>Aceite No alto dos penhascos << Troll
    .accept 77583 >>Aceite No Alto dos Penhascos << Orc
    .target Rwag
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Abra o |cRXP_PICK_Cache Escondido|r. Pegue a |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r
    >>|cRXP_WARN_Passo ao redor de|r |cRXP_ENEMY_Sarkoth|r |cRXP_WARN_e pule para baixo para alcançar o baú|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Troll/Orc
    #season 2
    .goto Durotar,41.27,68.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rwag|r
    .turnin 77592 >>Entregue No Alto dos Penhascos << Troll
    .turnin 77583 >>Entregue No alto dos penhascos << Orc
    .target Rwag
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Golpe Sombrio - 2 (Tirisfal)
#title Golpe Sombrio


    --Rune of Shadowstrike

step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .accept 77669 >>Aceite A Runa Escarlate
    .target David Trias
step
    #season 2
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
    >>Abata ou roube de |cRXP_ENEMY_Convertidos Escarlates|r. Saque-os para obter a |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r
    .collect 204795,1 --Rune of Shadowstrike (1)
    .mob Scarlet Convert
    .train 400105,1
step
    #season 2
    .train 400105 >>|cRXP_WARN_Use|r |T134419:0|t|cRXP_LOOT_[Runa do Golpe Sombrio]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Golpe Sombrio]
    .use 204795
    .itemcount 204795,1 --Rune of Shadowstrike (1)
step << Undead
    #season 2
    .goto Tirisfal Glades,32.53,65.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_David|r
    .turnin 77669 >>Entregue A Runa Escarlate
    .target David Trias
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Mistura Mortífera - 25 (Floresta de Pinhaprata)
#title Mistura Mortífera


    --Rune of Deadly Brew

step
    #season 2
    .goto Silverpine Forest,47.12,71.01
    >>Clique em |cRXP_PICK_Entrega Morta|r em Floresta de Pinhaprata
    .accept 78261 >>Aceite A Trompa de Xelthos
step
    #season 2
    #completewith next
    .zone 209 >>Entre em Bastilha da Presa Negra
    >>|cRXP_WARN_Você tem que fazer a próxima parte sozinho! Se agrupar vai impedir você de obter as chaves que precisa|r
step << Horde
    #season 2
    .gossipoption 96495,1 >>Esgueira-se por |cRXP_ENEMY_Rethilgore|r, fale com o |cRXP_FRIENDLY_Sicário Admeto|r e |T132331:0|t[Sumir] depois. Ele abrirá a porta para você
    .target Deathstalker Adamant
    .train 400080,1
step << Alliance
    #season 2
    .gossipoption 96494 >>Passe furtivamente por |cRXP_ENEMY_Rethilgore|r, fale com o |cRXP_FRIENDLY_Feiticeiro Ashcrombe|r e use |T132331:0|t[Sumir] depois. Ele abrirá a porta para você
    .target Sorcerer Ashcrombe
    .train 400080,1
step
    #season 2
    #completewith next
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Gemela|r para obter |T134243:0|t[|cRXP_LOOT_Sister's Half-Chave|r]
    >>|cRXP_WARN_Ela está localizada no salão de jantar no andar inferior|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
step
    #season 2
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Gefell|r para obter |T134244:0|t[|cRXP_LOOT_Brother's Half-Chave|r]
    >>|cRXP_WARN_Ele está localizado acima do salão de jantar no segundo andar|r
    .collect 210212,1 --Brother's Half-Key (1)
    .mob Gefell
    .train 400080,1
step
    #season 2
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Gemela|r para obter |T134243:0|t[|cRXP_LOOT_Sister's Half-Chave|r]
    >>|cRXP_WARN_Ela está localizada no salão de jantar no andar inferior|r
    .collect 210213,1 --Sister's Half-Key (1)
    .mob Gemela
    .train 400080,1
step
    #season 2
    .use 210212 >>Retorne para o pátio externo e entre nos Estábulos. Combinar as duas chaves para obter a |T237379:0|t[|cRXP_LOOT_Chave Gêmea|r]
    .collect 210209,1 --Twin Key (1)
    .train 400080,1
step
    #season 2
    >>Abra o |cRXP_PICK_Baú Ornamentado|r nos estábulos para obter o |cRXP_LOOT_Chifre de Xelthos|r
    .complete 78261,1 --Horn of Xelthos (1)
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Clique em |cRXP_PICK_Entrega Morta|r em Floresta de Pinhaprata
    .turnin 78261 >>Entregue A Trompa de Xelthos
step
    #season 2
    #completewith next
    +|cRXP_WARN_Você agora precisa entrar em uma cidade capital para receber correio de *C*|r
    .train 400080,1
step << Horde
    #season 2
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Karos|r
    .fly Undercity >>Voe para Undercity
    .target Karos Razok
    .zoneskip Undercity
    .train 400080,1
step << Alliance
    >>Corra para Costa Sul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >>Voe para Altaforja
    .target Darla Harris
    .train 400080,1
step
    .goto Undercity,68.290,38.043,5 >>|cRXP_WARN_Entre em Undercity. Verifique sua caixa de correio pela carta de *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >>|cRXP_WARN_Entre em Ironforge. Verifique sua caixa de correio para a carta de *C*. Pule este passo se você estiver fazendo em outra cidade importante|r << Alliance
    .train 400080,1
step
    #season 2
    #completewith next
    +|cRXP_WARN_Abra sua caixa de correio para ler o correio de *C* uma vez que chegou. Voe de volta para Silverpine quando estiver pronto|r << Horde
    +|cRXP_WARN_Abra sua caixa de correio para ler o correio de *C* uma vez que tenha chegado. Voe de volta para Costa Sul e depois vá para Silverpine quando estiver pronto|r << Alliance
step << Horde
    #season 2
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fly The Sepulcher>>Voe para The Sepulcher
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Southshore >>Voe para Southshore
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400080,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
    .train 400080,1
step
    #season 2
    .goto Silverpine Forest,47.114,70.974
    >>Clique em |cRXP_PICK_Entrega Morta|r em Floresta de Pinhaprata para obter |T134419:0|t[|cRXP_FRIENDLY_Runa da Mistura Mortífera|r]
    .collect 203994,1 --Rune of Deadly Brew (1)
    .train 400080,1
step
    #season 2
    .train 400080 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Mistura Mortífera|r]
    .use 204795
    .itemcount 204795,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Saque Rápido - 10 (Durotar)
#title Saque Rápido


    --Rune of Quick Draw

step
    #season 2
    .goto Durotar,57.65,58.52,30,0
    .goto Durotar,57.36,56.59,30,0
    .goto Durotar,58.10,55.52,30,0
    .goto Durotar,58.54,53.68,30,0
    .goto Durotar,56.54,54.52,30,0
    .goto Durotar,56.37,58.35,30,0
    .goto Durotar,58.99,58.30
    >>Mate ou use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Marinheiros Kul Tiras|r e nos |cRXP_ENEMY_Fuzileiros Kul Tiras|r. Saque-os para |T134327:0|t[|cRXP_LOOT_Peça do Mapa Superior-Direita|r]
    .collect 207109,1 --Top-Right Map Piece (1)
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
    .train 400095,1
step
    #season 2
    .goto Durotar,50.21,50.78,30,0
    .goto Durotar,50.18,49.23,30,0
    .goto Durotar,49.48,49.14,30,0
    .goto Durotar,49.32,48.18,30,0
    .goto Durotar,48.81,49.00,30,0
    .goto Durotar,48.49,49.29,30,0
    .goto Durotar,47.58,49.62,30,0
    .goto Durotar,47.06,49.53,30,0
    .goto Durotar,46.90,48.11,30,0
    .goto Durotar,49.22,48.96
    >>Mate ou use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Navalha Quilboares|r e nos |cRXP_ENEMY_Batedores Navalha|r. Saque-os para |T134327:0|t[|cRXP_LOOT_Peça do Mapa Inferior-Direita|r]
    .collect 207107,1 --Bottom-Right Map Piece (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 400095,1
step
    #season 2
#loop
	.line Durotar,67.23,88.76,66.52,87.74,65.94,86.72,65.90,84.04,65.88,82.85,67.38,82.61,68.42,82.43,68.50,84.32,68.47,86.77,67.23,88
	.goto Durotar,67.23,88.76,25,0
	.goto Durotar,66.52,87.74,25,0
	.goto Durotar,65.94,86.72,25,0
	.goto Durotar,65.90,84.04,25,0
	.goto Durotar,65.88,82.85,25,0
	.goto Durotar,67.38,82.61,25,0
	.goto Durotar,68.42,82.43,25,0
	.goto Durotar,68.50,84.32,25,0
	.goto Durotar,68.47,86.77,25,0
	.goto Durotar,67.23,88.00,25,0
    >>Mate ou use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Trolls Amaldiçoados|r e nos |cRXP_ENEMY_Trolls Vodu|r. Saqueie-os para |T134327:0|t[|cRXP_LOOT_Peça do Mapa Inferior-Esquerda|r]
    .collect 207106,1 --Bottom-Left Map Piece (1)
    .mob Hexed Troll
    .mob Voodoo Troll
    .train 400095,1
step
    #completewith next
    .goto Durotar,55.12,10.10,60 >>Viaje em direção a Crânio Pedra
step
    #season 2
    .goto Durotar,54.72,8.78,15,0
    .goto Durotar,54.29,8.89,15,0
    .goto Durotar,53.77,8.87,15,0
    .goto Durotar,53.37,7.73,15,0
    .goto Durotar,52.73,7.85,15,0
    .goto Durotar,52.42,8.59,15,0
    .goto Durotar,51.65,8.19,15,0
    .goto Durotar,51.39,8.71,15,0
    .goto Durotar,51.48,9.71,15,0
    .goto Durotar,53.77,8.87
    >>Mate ou use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Orcs da Lâmina Ardente|r. Saqueie-os para |T134327:0|t[|cRXP_LOOT_Peça do Mapa Superior-Esquerda|r]
    .collect 207108,1 --Top-Left Map Piece (1)
    .mob Burning Blade Thug
    .mob Burning Blade Fanatic
    .mob Burning Blade Apprentice
    .train 400095,1
step
    #season 2
    .use 207108 >>Usar as |T134327:0|t[|cRXP_LOOT_Peças do Mapa|r] para criar |T134269:0|t[|cRXP_LOOT_Durotar Mapa do Tesouro|r]
    .collect 207110,1 --Durotar Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Durotar,62.14,94.66
    .use 207110 >>Usar o |T134269:0|t[|cRXP_LOOT_Durotar Mapa do Tesouro|r] na Eco Ilha mais ao sul
    >>Pegue o |cRXP_PICK_Tesouro Enterrado|r baú que aparece para |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Saque Rápido - 10 (Tirisfal)
#title Saque Rápido


    --Rune of Quick Draw

step
    #season 2
    .goto Tirisfal Glades,37.20,52.17,50,0
    .goto Tirisfal Glades,36.64,50.09,50,0
    .goto Tirisfal Glades,36.10,49.07,50,0
    .goto Tirisfal Glades,35.08,49.82,50,0
    .goto Tirisfal Glades,35.30,50.91,50,0
    .goto Tirisfal Glades,34.57,51.58,50,0
    .goto Tirisfal Glades,36.63,50.09
    >>Mate ou use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Agricultores Tirisfal|r e nos |cRXP_ENEMY_Ajudantes de Fazenda Tirisfal|r. Saque-os para |T134327:0|t[|cRXP_LOOT_Peça do Mapa Superior-Esquerda|r]
    .collect 208036,1 --Top-Left Map Piece (1)
    .mob Tirisfal Farmer
    .mob Tirisfal Farmhand
    .train 400095,1
step
    #season 2
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
    >>Mate ou use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Guerreiros Escarlates|r. Saque-os para |T134327:0|t[|cRXP_LOOT_Peça do Mapa Superior-Direita|r]
    >>|cRXP_WARN_Qualquer um dos humanoides escarlates em Tirisfal pode soltar a peça do mapa|r
    .collect 208035,1 --Top-Right Map Piece (1)
    .mob Scarlet Warrior
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Mate ou use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Gnolls Pele Podre|r. Saqueie-os para |T134327:0|t[|cRXP_LOOT_Peça do Mapa Inferior-Esquerda|r]
    .collect 208038,1 --Bottom-Left Map Piece (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Mate ou use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Murlocs|r. Saque-os para |T134327:0|t[|cRXP_LOOT_Peça do Mapa Inferior-Direita|r]
    .collect 208037,1 --Bottom-Right Map Piece (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400095,1
step
    #season 2
    .use 208036 >>Usar as |T134327:0|t[|cRXP_LOOT_Peças do Mapa|r] para criar |T134269:0|t[|cRXP_LOOT_Tirisfal Mapa do Tesouro|r]
    .collect 208034,1 --Tirisfal Treasure Map (1)
    .train 400095,1
step
    #season 2
    .goto Tirisfal Glades,52.89,54.03
    .use 208034 >>Usar o |T134269:0|t[|cRXP_LOOT_Tirisfal Mapa do Tesouro|r] abaixo da ponte
    >>Saque o baú |cRXP_PICK_Enterrado Tesouro|r para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r]
    .collect 203991,1 --Rune of Quick Draw (1s)
    .train 400095,1
step
    #season 2
    .train 400095 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Saque Rápido|r] |cRXP_WARN_para treinar|r |T134536:0|t[Saque Rápido]
    .use 203991
    .itemcount 203991,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Atacar das Sombras - 10 (Durotar)
#title Atacar das Sombras


    --Rune of Slaughter from the Shadows

step
    #completewith next
    .goto Durotar,54.25,27.64,40 >>Vá para o local de salto logo a leste da Caverna de Lufada de Poeira
step
    #season 2
    .goto Durotar,54.25,27.64,40,0
    .goto Durotar,53.74,27.14
    >>Pegue o |cRXP_PICK_Cofre Enferrujado|r para obter |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r]
    >>|cRXP_WARN_Você precisará fazer um pequeno salto para conseguir alcançar o baú|r
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r] |cRXP_WARN_to train|r |T236280:0|t[Atacar das Sombras]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Atacar das Sombras - 10 (Tirisfal)
#title Atacar das Sombras


    --Rune of Slaughter from the Shadows


step
    #season 2
    .goto Tirisfal Glades,47.39,43.64,150,0
    .goto Tirisfal Glades,52.23,26.91,20,0
    .goto Tirisfal Glades,52.29,26.40,8 >>Vá para a cripta em Agamand Mills
step
    #season 2
#loop
	.line Tirisfal Glades,51.88,25.86,52.61,25.85,52.60,26.88,51.90,26.87
	.goto Tirisfal Glades,51.88,25.86,15,0
	.goto Tirisfal Glades,52.61,25.85,15,0
	.goto Tirisfal Glades,52.60,26.88,15,0
	.goto Tirisfal Glades,51.90,26.87,15,0
    >>Mate os |cRXP_ENEMY_Wailing Ancestors|r e os |cRXP_ENEMY_Rotting Ancestors|r. Saqueie-os por uma |T134245:0|t[|cRXP_LOOT_Agamand Relíquia Coffer Chave|r]
    >>|cRXP_WARN_Tenha cuidado! Os inimigos nesta cripta reaparecem dinamicamente!|r
    .collect 208005,1 --Agamand Relic Coffer Key (1)
    .mob Wailing Ancestor
    .mob Rotting Ancestor
    .train 42992,1
step
    #season 2
    .goto Tirisfal Glades,52.53,26.91
    >>Abra o |cRXP_PICK_Cofre de Relíquia|r para |T134419:0|t[|cRXP_FRIENDLY_Runa de Massacre|r]
    .collect 203993,1 --Rune of Slaughter (1)
    .train 42992,1
step
    #season 2
    .train 42992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r] |cRXP_WARN_to train|r |T236280:0|t[Atacar das Sombras]
    .use 203993
    .itemcount 203993,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Mutilar - 8 (Tirisfal)
#title Mutilar


    --Rune of Mutilate

step
    #season 2
    .goto Tirisfal Glades,51.17,67.81
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Captain Perrine|r para conseguir um |T133385:0|t[|cRXP_LOOT_Anel-sinete do Tenente Escarlate|r]
    .collect 208085,1 --Scarlet Lieutenant Signet Ring (1)
    .mob Captain Perrine
    .train 400094,1
step
    #season 2
    #completewith next
    .goto Tirisfal Glades,60.90,51.49,10 >>Viagem para a Brill Town Hall
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    .use 208085 >>Usar o |T133385:0|t[|cRXP_LOOT_Anel-sinete do Tenente Escarlate|r] para criar |T134328:0|t[|cRXP_LOOT_Memorando Escarlate Forjado|r]
    .collect 208086,1 --Forged Scarlet Memorandum (1)
    .train 400094,1
step
    #season 2
    .goto Tirisfal Glades,60.73,50.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Jamie Noré|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] dela
    .collect 203990,1 --Rune of Mutilation (1)
    .target Jamie Nore
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Mutilar - 10 (Durotar)
#title Mutilar


    --Rune of Mutilate

step
    #season 2
    #completewith next
    .goto Durotar,53.18,29.15,50 >>Vá para a Caverna Sopravento
step
    #season 2
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,52.70,27.97
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Burning Blade Thugs|r por |T134331:0|t[|cRXP_LOOT_Note from Ba'so|r]
    .collect 207098,1 --Note from Ba'so (1)
    .mob Burning Blade Thug
    .train 400094,1
step
    .goto Durotar,51.82,58.67
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ba'so|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r]
    >>|cRXP_WARN_Ele está oculto!|r
    .collect 203990,1 --Rune of Mutilation (1)
    .target Ba'so
    .skipgossip
    .train 400094,1
step
    #season 2
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name No Meio da Testa - 8 (Tirisfal)
#title No Meio da Testa


    --Rune of Between the Eyes

step
    #season 2
    .goto Tirisfal Glades,59.38,29.05,50,0
    .goto Tirisfal Glades,59.54,27.86,50,0
    .goto Tirisfal Glades,60.64,28.66,50,0
    .goto Tirisfal Glades,61.49,29.40,50,0
    .goto Tirisfal Glades,62.96,29.46,50,0
    .goto Tirisfal Glades,65.68,30.22,50,0
    .goto Tirisfal Glades,67.48,28.97,50,0
    .goto Tirisfal Glades,68.22,26.46,50,0
    .goto Tirisfal Glades,59.54,27.86
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Vile Fin Murlocs|r por |T134241:0|t[|cRXP_LOOT_Shipwreck Cache Chave|r]
    .collect 208007,1 --Shipwreck Cache Key (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 400081,1
step
    #season 2
    .goto Tirisfal Glades,66.66,24.41
    >>Saqueie o |cRXP_PICK_Shipwreck Cache|r para |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name No Meio da Testa - 8 (Orgrimmar)
#title No Meio da Testa


    --Rune of Between the Eyes

step
    #season 2
    .goto Orgrimmar,55.87,44.89
    >>Pegue o |cRXP_PICK_Dusty Baú|r por |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    >>|cRXP_WARN_Está localizado em The Arrastar no andar superior|r
    .collect 204174,1 --Rune of Precision (1)
    .train 400081,1
step
    #season 2
    .train 400081 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r] |cRXP_WARN_para treinar|r |T135610:0|t[No Meio da Testa]
    .use 204174
    .itemcount 204174,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Dança de Lâminas - 15 (Savanas)
#title Dança de Lâminas


    --Rune of Blade Dance

step
    #season 2
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Southsea Brigands|r por |T132761:0|t[|cRXP_LOOT_Buccaneer's Matchbox|r]
    .collect 208768,1 --Buccaneer's Matchbox (1)
    .mob Southsea Brigand
    .train 400099,1
step
    #season 2
    .goto The Barrens,61.82,45.80
    >>Clique no Barril de Pólvora. Pegue o |cRXP_PICK_Southsea Saque Stash|r que surge por |T134419:0|t[|cRXP_FRIENDLY_Rune of Dança de Lâminas|r]
    .collect 208771,1 --Rune of Blade Dance (1)
    .train 400099,1
step
    #season 2
    .train 400099 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dança de Lâminas|r] |cRXP_WARN_to train|r |T132350:0|t[Dança de Lâminas]
    .use 208771
    .itemcount 208771,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Talho de Sabre - 15 (Savanas)
#title Talho de Sabre


    --Rune of Saber Slash

step
    #season 2
    #completewith next
    +|cRXP_WARN_Sua habilidade de quebra de fechaduras deve ser pelo menos 80 para obter esta runa!|r
    .skill pick lock,>80,1
step
    #season 2
    .goto The Barrens,62.31,54.22
    >>Saqueie o |cRXP_PICK_Stable Hand's Trunk|r no topo do estábulo para |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    >>|cRXP_WARN_Corra pela colina acima e pule no topo da muralha do castelo. De lá, você pode pular no topo do estábulo|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r] |cRXP_WARN_para treinar|r |T132375:0|t[Talho de Sabre]
    .use 208772
    .itemcount 208772,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Talho de Sabre - 15 (Silverpine)
#title Talho de Sabre

    --Rune of Saber Slash

step
    #season 2
    .goto Silverpine Forest,45.25,68.06,20,0
    .goto Silverpine Forest,45.26,67.21
    >>Saque o |cRXP_PICK_Baú Ferrugem|r ao lado da entrada da Bastilha da Presa Negra para |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r]
    >>|cRXP_WARN_Usar|r |T132307:0|t[Disparada] |cRXP_WARN_e depois pule da ponte até o baú|r
    .collect 208772,1 --Rune of Saber Slash (1)
    .train 424984,1
step
    #season 2
    .train 424984 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Talho de Sabre|r] |cRXP_WARN_para treinar|r |T132375:0|t[Talho de Sabre]
    .use 208772
    .itemcount 208772,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#title Passo Furtivo
#name Passo Furtivo - 30 (Floresta de Pinhaprata)

step
    #completewith next
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
step
    .train 400101,1
    >>Clique no baú |cRXP_PICK_Dead Largar|r no chão
    .goto Silverpine Forest,47.114,70.974
    .accept 78676 >>Aceite Olho de Bhossca
step
    #completewith next
    .zone Tirisfal Glades >>Vá para Tirisfal Glades até o Monastério Escarlate
step
    >>|cRXP_WARN_Abrir a|r |cRXP_PICK_Supply Locker|r |cRXP_WARN_dentro do estábulo para pegar o|r |T132665:0|t[Uniforme de Iniciado Escarlate]
    .goto Tirisfal Glades,81.2,32.12
    .collect 210955,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.44,19.69,10,0
    .goto Eastern Kingdoms,47.73,19.39,5 >>Entre no Monastério Escarlate: masmorra |cRXP_WARN_Graveyard|r |cRXP_WARN_ALONE|r
step
    >>Usar |T133644:0|t[Bater Carteira] em um |cRXP_ENEMY_Áugur Escarlate|r para obter |T134241:0|t[Chave do Áugur]
    >>|cRXP_WARN_Faça uso de|r |T132289:0|t[Distração] |cRXP_WARN_para não ser detectado|r
    .goto Eastern Kingdoms,47.73,19.39
    .collect 210963,1
    .mob Scarlet Scryer
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >>Entre no Monastério Escarlate: masmorra |cRXP_WARN_Library|r |cRXP_WARN_ALONE|r
step
    #completewith next
    +|cRXP_WARN_Corra até o corredor antes do último chefe|r
step
    >>Saque a |cRXP_PICK_Personal Letterbox|r à esquerda para |T134331:0|t[|cRXP_LOOT_Confidential Message|r]
    .use 210955 >>|cRXP_WARN_Use o|r |T132665:0|t[Uniforme de Iniciado Escarlate] |cRXP_WARN_para deixar os NPCs neutros|r
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210967,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.73,19.39,5 >>Entre no Monastério Escarlate: |cRXP_WARN_Cemitério|r masmorra |cRXP_WARN_SOZINHO|r
step
    >>|cRXP_WARN_Vá para a área externa dentro da masmorra e procure por um banco entre duas estátuas nas paredes direita e esquerda|r
    *|cRXP_WARN_Dos dois lados|r use /sit (possível enquanto em furtividade) nos bancos até a emote |cRXP_WARN_"Você ouve o som de pedra se movendo"|r apareça no chat.
    *Depois vá para o Túmulo ao lado da |cRXP_WARN_parede direita|r e abra o |cRXP_PICK_Pedra Coffer|r para o |T134242:0|t[Reliquary Chave]
    .goto Eastern Kingdoms,47.79,19.59
    .collect 210968,1
    .train 400101,1
step
    #completewith next
    .goto Eastern Kingdoms,47.79,19.59,5 >>Entre no Monastério Escarlate: |cRXP_WARN_Biblioteca|r masmorra |cRXP_WARN_SOZINHO|r
step
    #completewith next
    +|cRXP_WARN_Corra até a "Galeria de Tesouros"|r
step
    >>Saque a |cRXP_PICK_Padlocked Reliquary|r na primeira sala à esquerda para |T134331:0|t[|cRXP_LOOT_Eye of Bhossca|r]
    .use 210955 >>|cRXP_WARN_Usar o|r |T132665:0|t[Uniforme de Iniciado Escarlate] |cRXP_WARN_para tornar os NPCs neutros|r
    .goto Eastern Kingdoms,47.79,19.59
    .complete 78676,1 --1/1 Eye of Bhossca
    .train 400101,1
step
    #completewith next
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
step
    .train 400101,1
    >>Clique no |cRXP_PICK_Baú Morto Largar|r no chão
    .goto Silverpine Forest,47.1,71.1
    .turnin 78676 >>Entregue Olho de Bhossca
step
    #completewith next
    +|cRXP_WARN_Você agora precisa entrar em uma cidade capital para receber correio de *C*|r
    .train 400101,1
step << Horde
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Karos|r
    .fly Undercity >>Voe para Undercity
    .target Karos Razok
    .zoneskip Undercity
    .train 400101,1
step << Alliance
    >>Corra para Costa Sul
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darla Espargosa|r
    .goto Hillsbrad Foothills,49.338,52.272
    .fly Ironforge >>Voe para Altaforja
    .target Darla Harris
    .train 400101,1
step
    .goto Undercity,68.290,38.043,5 >>|cRXP_WARN_Entre em Undercity. Verifique sua caixa de correio pela carta de *C*|r << Horde
    .goto Ironforge,71.485,72.280,5 >>|cRXP_WARN_Entre em Ironforge. Verifique sua caixa de correio para a carta de *C*. Pule este passo se estiver fazendo isso em outra cidade principal|r << Alliance
    .train 400101,1
step
    #completewith next
    +|cRXP_WARN_Abra sua caixa de correio para ler o correio de *C* uma vez que chegou. Voe de volta para Silverpine quando estiver pronto|r << Horde
    +|cRXP_WARN_Abra sua caixa de correio para ler a correspondência de *C* quando chegar. Voe de volta para Costa Sul e depois vá para Silverpine quando estiver pronto|r << Alliance
step << Horde
    .goto Undercity,63.27,48.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fly The Sepulcher>>Voe para The Sepulcher
    .target Michael Garrett
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    .goto Ironforge,55.501,47.742
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grif Trovino|r
    .fly Southshore >>Voe para Southshore
    .target Gryth Thurden
    .zoneskip Silverpine Forest
    .train 400101,1
step << Alliance
    #completewith next
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
    .train 400101,1
step
    .goto Silverpine Forest,47.114,70.974
    >>Clique no baú |cRXP_PICK_Dead Largar|r para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Passo Furtivo|r]
    .collect 210979,1 --Rune of Shadowstep (1)
    .train 400101,1
step
    .train 400101 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Passo Furtivo|r] |cRXP_WARN_para aprender|r |T132303:0|t[Passo Furtivo]
    .use 210979
    .itemcount 210979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Lançar Shuriken - 30 (Pântano das Mágoas)
#title Lançar Shuriken

step
    .train 400096,1
    .train 1842 >>|cRXP_WARN_Você tem que aprender|r |T136162:0|t[Desarmar Armadilha] |cRXP_WARN_antes que possa obter|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Assassino|r]
    .collect 5060,1 >>|cRXP_WARN_Você também precisa|r |T134065:0|t[Ferramentas de Ladrões]
step
    #completewith next
    .zone Swamp of Sorrows >>Vá para Pântano das Mágoas
step
    .goto Swamp of Sorrows,41.48,29.97
    .train 400096,1
    .cast 1842 >>|cRXP_WARN_Use|r |T136162:0|t[Desarmar Armadilha] |cRXP_WARN_na|r |cRXP_PICK_Armadilha de Dardos|r |cRXP_WARN_na árvore|r
step
    .goto Swamp of Sorrows,42.76,30.77
    >>Saque o |cRXP_PICK_Conspicuous Cache|r que apareceu para obter |T134419:0|t[|cRXP_FRIENDLY_Runa do Assassino|r]
    .collect 213139,1
step
    .itemcount 213139,1
    .use 213139
    .train 400096 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Assassino|r] |cRXP_WARN_para aprender|r |T132330:0|t[Lançar Shuriken]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Mestre do Subterfúgio - 34 (Stranglethorn Vale)
#title Mestre do Subterfúgio

step
    .train 425103,1
    .skill lockpicking,125 >>|cRXP_WARN_Você deve treinar|r |T136058:0|t[Arrombamento] |cRXP_WARN_até 125 para obter a|r |T132299:0|t[Mestre do Subterfúgio] |cRXP_WARN_runa|r
step
    .train 425103,1
    #completewith next
    .zone Stranglethorn Vale >>Viagem para Stranglethorn Vale
step
    .train 425103,1
    #completewith Uniform
    .goto Stranglethorn Vale,46.30,7.61,30 >>Entre em The Stockpile (Kurzen's Cave)
step
    .train 425103,1
    #completewith next
    >>Lance |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Kurzen Élites|r e nos |cRXP_ENEMY_Kurzen Subchefes|r para obter o |cRXP_LOOT_Chave Composta da Jaula|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    #label Uniform
    .train 425103,1
    .goto Stranglethorn Vale,49.616,7.743
    >>Abra o |cRXP_PICK_Caixote de Suprimentos de Kurzen|r. Saque o |cRXP_LOOT_Uniforme do Combatente de Kurzen|r
    .collect 216617,1
step
    .train 425103,1
    .goto Stranglethorn Vale,49.943,3.953,40,0
    .goto Stranglethorn Vale,49.617,7.562,40,0
    .goto Stranglethorn Vale,49.25,6.18
    >>Use |T133644:0|t[Bater Carteira] nos |cRXP_ENEMY_Kurzen Elites|r e nos |cRXP_ENEMY_Kurzen Subchiefs|r para obter a |cRXP_LOOT_Chave da Jaula Composta|r
    .collect 216616,1
    .mob Kurzen Elite
    .mob Kurzen Subchief
step
    .train 425103,1
    #completewith next
    .goto Stranglethorn Vale,44.261,7.908,60 >>Saia da caverna. Caminhe em direção a |cRXP_FRIENDLY_Nando Matreiro|r na torre lá fora
step
    .train 425103,1
    .goto Stranglethorn Vale,44.261,7.908
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nando Matreiro|r na torre
    >>|cRXP_WARN_Ele tem um tempo de reaparição de cerca de 3 minutos|r
    .destroy 216616 >>Entregue a |cRXP_LOOT_Chave da Jaula Composta|r para ele
    .destroy 216617 >>Entregue o |cRXP_LOOT_Uniforme do Combatente de Kurzen|r para ele
    .skipgossip 218230,1
    .target Wendel Mathers
step
    .train 425103,1
    #completewith next
    .subzone 35 >>Viaje para Booty Bay
step
    .train 425103,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Capitã Aransas|r
    >>Ela lhe dará |T133640:0|t[|cRXP_LOOT_Recompensa da Capitã Aransas|r]
    .goto Stranglethorn Vale,27.681,76.648
    .skipgossip
    .collect 216618,1
    .target Captain Aransas
step
    .train 425103,1
    .use 216618 >>Abra |T133640:0|t[|cRXP_LOOT_Recompensa da Capitã Aransas|r] para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Subterfúgio|r] e |T338666:0|t[|cRXP_FRIENDLY_Patuá de Jani|r]
    >>|cRXP_WARN_NÃO destrua|r |T338666:0|t[|cRXP_FRIENDLY_Patuá de Jani|r] |cRXP_WARN_pois é usado para coletar runas futuras|r
    .collect 213136,1
step
    .itemcount 213136,1
    .use 213136
    .train 425103 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Subterfúgio|r] |cRXP_WARN_para treinar|r |T132299:0|t[Mestre do Subterfúgio]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#title Adaptar à Situação
#name Adaptar à Situação - 27 (Mil Agulhas)


step
    #optional
    .train 400093,1
    .skill lockpicking,45 >>|cRXP_WARN_Você deve treinar|r |T136058:0|t[Arrombamento] |cRXP_WARN_até 45 para obter a|r |T134919:0|t[Adaptar à Situação] |cRXP_WARN_runa|r
step
    .train 400093,1
    #completewith next
    .zone Thousand Needles >>Vá para |cFFfa9602Mil Agulhas|r
step
    .train 400093,1
    #completewith next
    .goto Thousand Needles,18.44,21.58,10 >>Entre na barraca grande no Acampamento E'thok
step
    .train 400093,1
    .goto Thousand Needles,18.686,21.126
    >>Abra o |cRXP_PICK_Sizable Stolen Strongbox|r. Saqueie-o para obter |T132597:0|t[|cRXP_LOOT_Cofre Grande|r]
    .collect 215451,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Lance|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_no|r |T132597:0|t[|cRXP_LOOT_Cofre Grande|r] |cRXP_WARN_para destrancá-lo|r
    .usespell 1804
    .use 215451
step
    .train 400093,1
    .use 215451 >>Abra o |T132597:0|t[|cRXP_LOOT_Cofre Grande|r]. Saqueie-o para obter |T132597:0|t[|cRXP_LOOT_Cofre Médio|r]
    .collect 215452,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Lance|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_no|r |T132597:0|t[|cRXP_LOOT_Cofre Médio|r] |cRXP_WARN_para destrancá-lo|r
    .usespell 1804
    .use 215452
step
    .train 400093,1
    .use 215452 >>Abra o |T132597:0|t[|cRXP_LOOT_Cofre Médio|r]. Saqueie-o para obter |T132597:0|t[|cRXP_LOOT_Cofre Pequeno|r]
    .collect 215453,1
step
    .train 400093,1
    .cast 1804 >>|cRXP_WARN_Lance|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_no|r |T132597:0|t[|cRXP_LOOT_Cofre Pequeno|r] |cRXP_WARN_para destrancá-lo|r
    .usespell 1804
    .use 215453
step
    .train 400093,1
    .use 215453 >>Abra o |T132597:0|t[|cRXP_LOOT_Cofre Pequeno|r]. Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa do Canhoto|r]
    .collect 213138,1
step
    .itemcount 213138,1
    .use 213138
    .train 400093 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Canhoto|r] |cRXP_WARN_para treinar|r |T134919:0|t[Adaptar à Situação]
]])

 RXPGuides.RegisterGuide([[
 #classic
 << Rogue SoD
 #group Guia Runas e Livros RestedXP
 #subgroup Capacete
 #title Ataques Concentrados
 #name Ataques Concentrados - 34 (Terras Agrestes)

 step
    >>|cRXP_WARN_Você precisará|r |T136175:0|t[Cegar] |cRXP_WARN_e|r |T133587:0|t[Pó Cegante] |cRXP_WARN_para obter a|r |T236274:0|t[Ataques Concentrados] |cRXP_WARN_runa|r
    .train 2094 >>Treine |T136175:0|t[Cegar]
    .collect 5530,1 -- Blinding Powder 1/1
    .train 432291,1
step
    #completewith next
    .zone The Hinterlands >>Vá para |cFFfa9602Terras Agrestes|r
step
    .goto The Hinterlands,72.76,52.91
    >>Use |T136175:0|t[Cegar] na |cRXP_ENEMY_Máscara Ramatorpe|r, depois pegue o baú |cRXP_PICK_Tesouro do Morcego|r para |T134419:0|t[|cRXP_FRIENDLY_Runa da Concentração|r]
    .collect 221433,1 -- rune of focus
    .mob Vilebranch Mask
    .train 432291,1
step
    .itemcount 221433,1
    .use 221433
    .train 432291 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Concentração|r] |cRXP_WARN_para treinar|r |T236274:0|t[Ataques Concentrados]
 ]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Vantagem Desleal
#name Vantagem Desleal - 40 (Tanaris)

step
    .train 921 >>|cRXP_WARN_Você precisa treinar|r |T133644:0|t[Bater Carteira] |cRXP_WARN_para obter a|r |T236285:0|t[Vantagem Desleal] |cRXP_WARN_runa|r
    .train 432301,1
step
    #completewith CoinPurse
    .zone Tanaris >>|cRXP_WARN_Viagem para|r |cFFfa9602Tanaris|r
step
    #completewith next
    .subzone 1336 >>Vá para a Enseada dos Riggers Perdidos
step
    #label CoinPurse
	.line Tanaris,70.94,42.85,72.22,44.35,72.58,45.30,71.07,46.03,71.25,47.98,72.39,48.23,72.59,47.10,73.27,47.99,74.25,47.27,73.68,45.89,72.58,45.30,72.22,44.35,70.94,42.85
	.goto Tanaris,70.94,42.85,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,71.07,46.03,50,0
	.goto Tanaris,71.25,47.98,50,0
	.goto Tanaris,72.39,48.23,50,0
	.goto Tanaris,72.59,47.10,50,0
	.goto Tanaris,73.27,47.99,50,0
	.goto Tanaris,74.25,47.27,50,0
	.goto Tanaris,73.68,45.89,50,0
	.goto Tanaris,72.58,45.30,50,0
	.goto Tanaris,72.22,44.35,50,0
	.goto Tanaris,70.94,42.85,50,0
    >>|cRXP_WARN_Lance|r |T133644:0|t[Bater Carteira] |cRXP_WARN_em|r |cRXP_ENEMY_Southsea Piratas|r |cRXP_WARN_e|r |cRXP_ENEMY_Southsea Freebooters|r |cRXP_WARN_até receber um|r |T133639:0|t|cRXP_LOOT_Kidnapper's Moeda Purse|r
    .collect 221371,1 - Kidnapper's Coin Purse 1/1
    .mob Southsea Pirate
    .mob Southsea Freebooter
    .train 432301,1
step
    >>Abra o |T133639:0|t|cRXP_LOOT_Kidnapper's Moeda Purse|r e saque-o para obter um |T133302:0|t|cRXP_LOOT_Precious Precious Medallion|r
    .collect 221370,1 -- Precious Precious Medallion 1/1
    .use 221371
    .train 432301,1
step << Rogue
    .goto Tanaris,67,22
    .gossipoption 122303 >>Converse com |cRXP_FRIENDLY_Jebbs|r para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa de Imundo Brincar|r]
    .collect 221428,1 -- Rune of Foul Play
    .target Jabbey
    .train 432301,1
    .itemcount 221370,1
step << Rogue
    .itemcount 221428,1
    .use 221428
    .train 432301 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Imundo Brincar|r] |cRXP_WARN_para treinar|r |T236285:0|t[Vantagem Desleal]

]])
RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Chacina
#name Chacina - 45 (Barreira do Inferno)

step
    #optional
    .skill lockpicking,225 >>|cRXP_WARN_Você deve aumentar seu|r |T136058:0|t[Arrombamento] |cRXP_WARN_para pelo menos 225 para obter a|r |T236268:0|t[Chacina] |cRXP_WARN_runa|r
step
    #completewith next
    .zone Blasted Lands >>Vá para |cFFfa9602Barreira do Inferno|r
step
    #completewith next
    .goto Blasted Lands,45.27,16.52,10 >>Viaje para o topo da torre em frente ao Dreadmaul Segurar
step
    .goto Blasted Lands,45.27,16.52
    >>Abra a |cRXP_PICK_Abandoned Cache|r. Mate o |cRXP_ENEMY_Murderous Perdida Um|r (nível 46) que aparece
    >>Saque-a para a |T134419:0|t[|cRXP_FRIENDLY_Runa de Chacina|r]
    .collect 221461,1 -- Rune of Carnage 1/1
    .unitscan Murderous Lost One
    .train 432299,1
step
    .use 221461
    .itemcount 221461,1
    .train 432299 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Chacina|r] |cRXP_WARN_para treinar|r |T236268:0|t[Chacina]

]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#title Honra Entre Ladrões
#name Honra Entre Ladrões - 45 (Azeroth)

step
    #optional
    .xp 45 >>|cRXP_WARN_Você precisa atingir o nível 45 para obter esta runa|r
step
    #optional
    .train 400101 >>|cRXP_WARN_Você deve ter treinado|r |T132303:0|t[Passo Furtivo] |cRXP_WARN_para obter esta runa|r
step
    #optional
    .train 400080,1 >>|cRXP_WARN_Você deve ter treinado|r |T236270:0|t[Mistura Mortífera] |cRXP_WARN_para obter esta runa|r
step
    #optional
    #completewith letterC
    >>|cRXP_WARN_In order to start the quest for this rune you need to have completed "The Manor, Ravenholdt" quest introducing you to the Ravenholdt rogue faction. In order to receive it talk to|r |cRXP_FRIENDLY_Osborne, o Homem da Madrugada|r |cRXP_WARN_in Objetos de TBC|r << Alliance
    +|cRXP_WARN_Para iniciar a missão desta runa você precisa ter completado a missão "The Manor, Ravenholdt" que o introduz à facção de ladinos Ravenholdt. Para recebê-la fale com|r |cRXP_FRIENDLY_Ormok|r |cRXP_WARN_em Orgrimmar|r << Horde
    .accept 6681 >>Aceite The Manor, Ravenholdt << Alliance
    .isQuestAvailable 6681
step << Horde
    .goto Orgrimmar,43.91,54.69
    .gossipoption 96925 >>Fale com |cRXP_FRIENDLY_Ormok|r para receber uma |T133460:0|t[|cRXP_LOOT_Carta Elegante|r]. Usar-a para aceitar a missão
    .disablecheckbox
    .collect 17126,1,6681
    .accept 6681 >>Aceite The Manor, Ravenholdt
    .target Ormok
    .isQuestAvailable 6681
step
    #completewith next
    .zone Hillsbrad Foothills >>Voe para |cFFfa9602Contraforte de Eira dos Montes|r
    .isOnQuest 6681
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entre Ravenholdt Manor
    .isOnQuest 6681
step
    .goto Hillsbrad Foothills,78.62,17.96
    >>Mova-se para o |cRXP_PICK_Baú|r
    .complete 6681,1 --Rite of Cunning: 1/1
    .isOnQuest 6681
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fahrad|r acima
    .turnin 6681 >>Entregue The Manor, Ravenholdt
    .target Fahrad
    .isOnQuest 6681
step << Alliance
    +|cRXP_WARN_Viagem para qualquer cidade importante|r
    >>Darnassus
    >>Ironforge
    >>Objetos de TBC City
    .zoneskip Darnassus
    .zoneskip Ironforge
    .zoneskip Stormwind City
    .train 432295,1
step << Horde
    +|cRXP_WARN_Viaje para qualquer cidade principal|r
    >>Undercity
    >>Trovão Blefe
    >>Orgrimmar
    .zoneskip Undercity
    .zoneskip Thunder Bluff
    .zoneskip Orgrimmar
    .train 432295,1
step
    #label letterC
    +|cRXP_WARN_Verifique na caixa de correio pela carta de *Fahrad*|r
    >>|cRXP_WARN_Pule este passo quando pronto|r
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Voe para |cFFfa9602Contraforte de Eira dos Montes|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entre Ravenholdt Manor
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fahrad|r acima
    .accept 80526 >>Aceite A Segunda Vez que Você Me Engana
    .turnin 80526 >>Entregue A Segunda Vez que Você Me Engana
    .accept 80411 >>Aceite O Talismã de Kazdor
    .target Fahrad
step
    #optional
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
step
    #completewith next
    .goto Tanaris,38.69,20.20
    .subzone 1176 >>Entre em Zul'Farrak
    >>|cRXP_WARN_Você não pode estar em um grupo para completar a missão desta runa|r
step
    .goto Tanaris,38.69,20.20
    >>Abra |cRXP_PICK_Clay Vessels|r para |T134799:0|t[|cRXP_LOOT_Torpe Concoctions|r]
    >>|cRXP_WARN_Eles estão em tendas de troll por todo Zul'Farrak|r
    .collect 217716,2
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Mova em direção à caverna de|r |cRXP_ENEMY_Antu'sul|r
step
    >>|T134799:0|tUse uma Torpe Concoction no caldeirão. |cRXP_WARN_Isso não vai quebrar sua invisibilidade|r
    >>Enquanto o chefe está distraído saque |cRXP_PICK_Antu'Sul's Satchel|r para uma |T133724:0|t[|cRXP_LOOT_Oferenda de Osso|r]
    .collect 217721,1 --Offering of Bone
    .use 217716
    .train 432295,1
step
    #completewith next
    +|cRXP_WARN_Mova em direção a|cRXP_ENEMY_ Mandingueiro Zum'rah|r na área do cemitério|r
step
    >>Usar seu segundo |T134799:0|t[|cRXP_LOOT_Torpe Concoction|r] no caldeirão ao lado de |cRXP_ENEMY_Mandingueiro Zum'rah|r. |cRXP_WARN_Isso não vai quebrar sua invisibilidade|r
    >>Enquanto ele está distraído saque |cRXP_PICK_Zum'rahs Satchel|r para |T136232:0|t|cRXP_LOOT_Proteção dos Mortos|r
    .collect 217727,1 --ward of the dead
    .use 217716
    .train 432295,1
step
    #completewith next
    .equip 13,217727 >>Equipe a |T136232:0|t|cRXP_LOOT_Proteção dos Mortos|r que você acabou de saquear
    >>|cRXP_WARN_Isso vai revelar qual|r |cRXP_PICK_Cova Rasa|r |cRXP_WARN_precisa ser saqueada|r
step
    >>Saque a |cRXP_PICK_Cova Rasa|r que é revelada com uma aura azul para a |T236304:0|t|cRXP_LOOT_Oferenda de Carne|r
    .collect 217720,1 --offering of flesh
    .use 217727
    .train 432295,1
step
    >>Usar a |T236304:0|t[|cRXP_LOOT_Oferenda de Carne|r] que você acabou de coletar para combiná-la com a |T133724:0|t[|cRXP_LOOT_Oferenda de Osso|r] em uma |T236305:0|t[|cRXP_LOOT_Blood Magic Essência|r]
    .collect 217719,1 --Blood Magic Essence
    .use 217720
    .train 432295,1
step
    >>Vá até a base da escada da pirâmide e olhe para a sua direita. No lado da parede você verá um pequeno bloco de pedra. Salte para ele e depois caminhe até a borda
    >>No segundo balcão de madeira à direita você encontrará um |cRXP_PICK_Sandfury Cache|r. Saque-a para a |T237274:0|t[|cRXP_LOOT_Hollow Emblem|r]
    .collect 217717,1 --Hollow Emblem
    .train 432295,1
step
    >>Usar o |T237274:0|t|cRXP_LOOT_Hollow Emblem|r que você acabou de saquear para combiná-lo com a |T236305:0|t[|cRXP_LOOT_Blood Magic Essência|r] em um |T133572:0|t[|cRXP_LOOT_Emblem of Sanguíneo Magic|r]
    .collect 217718,1 --Emblem of Blood Magic
    .use 217717
    .train 432295,1
step
    >>Suba a escada até o topo da pirâmide e saque o |cRXP_PICK_Baú de Guerra Enfeitiçado|r para obter o |T133313:0|t[|cRXP_LOOT_Talisman of Kazdor|r]
    .collect 217609,1 --Talisman of Kazdor
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Voe para |cFFfa9602Contraforte de Eira dos Montes|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entre Ravenholdt Manor
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fahrad|r acima
    .turnin 80411 >>Entregue O Talismã de Kazdor
    .accept 80453 >>Aceite Tintim por Tintim
    .target Fahrad
step
    .goto Alterac Mountains,86.0,80.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zan Estoquesseta|r no porão
    .turnin 80453 >>Entregue Tintim por Tintim
    .accept 80454 >>Aceite Último Esconderijo
    .target Zan Shivsproket
step
    #completewith next
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
step
    .goto Silverpine Forest,47.114,70.974
    >>Clique no |cRXP_PICK_Dead Largar|r
    .turnin 80454 >>Entregue Último Esconderijo
    .accept 80455 >>Aceite Esperando a Nossa Hora
    .train 432295,1
step
    #completewith next
    .zone Hillsbrad Foothills >>Voe para |cFFfa9602Contraforte de Eira dos Montes|r
step
    #completewith next
    .goto Hillsbrad Foothills,75.27,23.66,15,0
    .goto Hillsbrad Foothills,75.66,20.30,15,0
    .goto Hillsbrad Foothills,77.24,21.98,15,0
    .goto Hillsbrad Foothills,78.62,17.96,20 >>Entre Ravenholdt Manor
step
    .goto Alterac Mountains,85.51,79.41,10,0
    .goto Alterac Mountains,86.11,80.22,10,0
    .goto Alterac Mountains,84.45,80.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Fahrad|r acima
    .turnin 80455 >>Entregue Esperando a Nossa Hora
    .target Fahrad
step
    .train 432295 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Coterie|r] |cRXP_WARN_para treinar|r |T236275:0|t[Honra Entre Ladrões]
    .use 217736
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Tempestade Carmesim - Feitiço
#name Tempestade Carmesim - Feitiço - 60 (Terras Pestilentas Ocidentais)

step
    .train 415918,1
    .zone Western Plaguelands >>Vá para Terras Pestilentas Ocidentais
step
    .train 415918,1
    #completewith next
    .subzone 190 >>Vá para Hearthglen
step
    #label ToolboxKey
    .train 415918,1
    .goto Western Plaguelands,45.0,13.6
    >>Mate ou |T133644:0|t[Bater Carteira] os |cRXP_ENEMY_Scarlet Workers|r. Saqueie-os pela |cRXP_LOOT_Toolbox Chave|r
    .collect 227928,1 -- Toolbox Key 1/1
    .mob Scarlet Worker
step
    .train 415918,1
    .goto Western Plaguelands,45.0,14.2
    >>Abra a |cRXP_PICK_Scarlet Caixa de Ferramentas|r. Pegue-a para obter o |cRXP_LOOT_Rusty Pé-de-cabra|r
    .collect 227932,1 -- Rusty Crowbar 1/1
step
    .goto Western Plaguelands,49.5,18.5
    >>Vá para o topo da torre no meio de Hearthglen. Abra o |cRXP_PICK_Marked Caixote|r lá. Pegue-o para obter o |T133640:0|t[|cRXP_LOOT_Hidden Bundle|r] e abra-o para obter uma |T134237:0|t[|cRXP_LOOT_Safe Caixa Chave|r]
    .collect 227930,1
step
    .goto Western Plaguelands,46.3,14.6
    >>Vá para o andar intermediário da segunda torre em Hearthglen, localizada no lado norte da cidade. Usar a |T134237:0|t[|cRXP_LOOT_Safe Caixa Chave|r] para abrir o [|cRXP_PICK_Belavus' Seguro Caixa|r] e pegue-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa da Tempestade Carmesim - Feitiço|r]
    .collect 227456,1 --Rune of the crimson tempest
step
    .use 227456
    .itemcount 227456,1
    .train 415918 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Tempestade Carmesim - Feitiço|r] |cRXP_WARN_para treinar|r |T135315:0|t[Tempestade Carmesim - Feitiço]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Leque de Facas
#name Leque de Facas - 55 (Hibérnia)

step
    .train 436609,1
    .zone Winterspring >>Vá para Hibérnia
step
    .train 436609,1
    .goto Winterspring,67.7,35.4
    >>Abra o |cRXP_PICK_Baú de Madeira|r. Pegue-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Facas|r]
    >>|cRXP_WARN_Enquanto abre o |cRXP_PICK_Baú de Madeira|r, escolha as opções a seguir nesta ordem:|r
    >>|cRXP_WARN_Sabre-de-gelo|r
    >>|cRXP_WARN_Owl|r
    >>|cRXP_WARN_Urso|r
    >>|cRXP_WARN_Owl|r
    .collect 227921,1
step
    .use 227921
    .itemcount 227921,1
    .train 436609 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Facas|r] |cRXP_WARN_para treinar|r |T236273:0|t[Leque de Facas]
]])

RXPGuides.RegisterGuide([[
#classic
<< Rogue SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Bacamarte
#name Bacamarte - 60 (Terras Pestilentas Orientais)

step
    .train 415922,1
    .zone Eastern Plaguelands >>Viaje para as Terras Pestilentas Orientais
step
    .train 415922,1
    .goto Eastern Plaguelands,83,85
    >>Abra |cRXP_LOOT_Scarlet Footlockers|r por toda Try's Hand até obter um |cRXP_LOOT_Signo de Envio|r
    .collect 227451,1
step
    .train 415922,1
    #completewith FinalPillar
    >>|cRXP_WARN_Para os próximos passos, você deve clicar QUATRO |cRXP_PICK_Sending Pilares|r na ordem correta. Após clicar em um, você será aleatoriamente teleportado para um diferente. Certifique-se de estar no local correto antes de clicar em outro!|r
step
    .train 415922,1
    .goto Eastern Plaguelands,82,57
    .cast 6477,6478 >>Clique no primeiro |cRXP_PICK_Sending Pilar|r |cRXP_WARN_atrás da Capela Esperança da Luz|r
step
    .train 415922,1
    .goto Eastern Plaguelands,40,92
    .cast 6477,6478 >>Clique no segundo |cRXP_PICK_Sending Pilar|r |cRXP_WARN_em Darrowshire|r
step
    .train 415922,1
    .goto Eastern Plaguelands,70,34
    .cast 6477,6478 >>Clique no terceiro |cRXP_PICK_Sending Pilar|r |cRXP_WARN_em Northdale|r
step
    .train 415922,1
    #label FinalPillar
    .goto Eastern Plaguelands,14,30
    .cast 6477,6478 >>Clique no quarto |cRXP_PICK_Sending Pilar|r |cRXP_WARN_em Terrordale|r
step
    .train 415922,1
    >>|cRXP_WARN_Entre na casa|r
    >>Abra o |cRXP_PICK_Baú de Adon|r no chão. Saqueie-o para obter o |T134419:0|t[|cRXP_LOOT_Runa do Espadachim|r]
    .collect 227922,1
step
    .use 227922
    .itemcount 227922,1
    .train 415922 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Espadachim|r] |cRXP_WARN_para treinar|r |T134538:0|t[Bacamarte]
]])
