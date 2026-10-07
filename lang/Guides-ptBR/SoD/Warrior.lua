if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Ímpeto da Vitória - 1 (Elwynn Forest)
#title Ímpeto da Vitória

step << Warrior
    #season 2
    #optional
    #completewith next
    .goto 1429,48.086,30.502,20,0
    .goto 1429,48.379,29.579,20,0
    .goto 1429,48.336,28.597,20,0
    .goto 1429,48.679,26.618,20,0
    .goto 1429,49.919,25.792,20,0
    .goto 1429,50.639,27.274,15 >>Viaje para o |cRXP_PICK_Kobold Stashbox|r dentro da Mina Eco Serra
    .train 403470,1
step << Warrior
    #season 2
    .goto Elwynn Forest,50.640,27.276
    >>Abra o |cRXP_PICK_Kobold Stashbox|r no chão. Saqueie-o para obter a |T134419:0|t|cRXP_LOOT_[Runa do Ímpeto da Vitória]|r
    .collect 204806,1 -- Rune of Victory Rush (1)
    .train 403470,1
step << Warrior
    #season 2
    .train 403470 >>|cRXP_WARN_Use the|r |T134419:0|t|cRXP_LOOT_[Runa do Ímpeto da Vitória]|r |cRXP_WARN_to learn|r |T132342:0|t[Ímpeto da Vitória]
    .use 204806
    .itemcount 204806,1 -- Rune of Victory Rush (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Ímpeto da Vitória - 3 (Dun Morogh)
#title Ímpeto da Vitória

step << Warrior
    #season 2
    .goto Dun Morogh,26.3,79.2,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7,40,0
    .goto Dun Morogh,22.7,79.3,40,0
    .goto Dun Morogh,20.9,75.7
    >>Mate os |cRXP_ENEMY_Frostmane Trolls Whelps|r. Saqueie-os para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r]
    .collect 204806,1
    .mob Frostmane Troll Whelp
    .train 403470,1
step << Warrior
    #season 2
    #label WarriorVR
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Ímpeto da Vitória - 3 (Shadowglen)
#title Ímpeto da Vitória

step << Warrior
    #season 2
    .goto Teldrassil,56.8,31.7
    >>Mate as |cRXP_ENEMY_Webwood Aranhas|r. Saqueie-as para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r]
    .collect 204806,1 -- Rune of Victory Rush (1)
    .mob Webwood Spider
    .train 403470,1
step << Warrior
    #season 2
    .cast 402265 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r]
    .use 204806
    .itemcount 204806,1
    .train 403470,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Frenesi de Sangue - 10 (Elwynn Forest)
#title Frenesi de Sangue

step << Warrior
    #season 2
    .goto Elwynn Forest,25.5,70.1,0
    .goto Elwynn Forest,22.1,73.8,0
    .goto Elwynn Forest,29.9,73.3,0
    .goto Elwynn Forest,36.1,80.4,0
    .goto Elwynn Forest,38.0,75.4,0
    .goto Elwynn Forest,25.5,70.1,70,0
    .goto Elwynn Forest,22.1,73.8,70,0
    .goto Elwynn Forest,29.9,73.3,70,0
    .goto Elwynn Forest,36.1,80.4,70,0
    .goto Elwynn Forest,38.0,75.4,70,0
    .goto Elwynn Forest,40.6,74.7
    >>Fale com o |cRXP_FRIENDLY_Espadachim Errante|r em Elwynn Forest
    >>Derrote o |cRXP_ENEMY_Espadachim Errante|r em um duelo
    >>Abra o |cRXP_PICK_Swordsman's Recompensa|r que ele dropa no chão. Saqueie-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenesi de Sangue|r]
    >>|cRXP_WARN_Nota: O |cRXP_FRIENDLY_Espadachim Errante|r pode aparecer em qualquer lugar de Elwynn Forest|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frenesi de Sangue|r] |cRXP_WARN_to train|r |T136012:0|t[Frenesi de Sangue]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Frenesi de Sangue - 10 (Dun Morogh)
#title Frenesi de Sangue

step << Warrior
    #season 2
    .goto Dun Morogh,53.47,47.60
    >>Fale com o |cRXP_FRIENDLY_Espadachim Errante|r em Dun Morogh
    >>Derrote o |cRXP_ENEMY_Espadachim Errante|r em um duelo
    >>Abra o |cRXP_PICK_Swordsman's Recompensa|r que ele dropa no chão. Saqueie-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenesi de Sangue|r]
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frenesi de Sangue|r] |cRXP_WARN_to train|r |T136012:0|t[Frenesi de Sangue]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Frenesi de Sangue - 10 (Teldrassil)
#title Frenesi de Sangue

step << Warrior
    #season 2
    .goto Teldrassil,39.8,69.6,60,0
    .goto Teldrassil,43.8,76.8,60,0
    .goto Teldrassil,54.6,66.0,60,0
    .goto Teldrassil,62.6,71.8,60,0
    .goto Teldrassil,39.6,37.6
    >>Fale com o |cRXP_FRIENDLY_Espadachim Errante|r em Teldrassil
    >>Derrote o |cRXP_ENEMY_Espadachim Errante|r em um duelo
    >>Abra o |cRXP_PICK_Swordsman's Recompensa|r que ele dropa no chão. Saqueie-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Rune of Frenesi de Sangue|r]
    >>|cRXP_WARN_Nota: O |cRXP_FRIENDLY_Espadachim Errante|r pode aparecer em qualquer lugar de Teldrassil|r
    .collect 204441,1 -- Rune of Blood Frenzy (1)
    .train 403474,1
    .skipgossip
    .unitscan Wandering Swordsman
step << Warrior
    #season 2
    .train 403474 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune de Frenesi de Sangue|r] |cRXP_WARN_to train|r |T136012:0|t[Frenesi de Sangue]
    .use 204441
    .itemcount 204441,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Trovão Furioso - 6 (Elwynn Forest)
#title Trovão Furioso

step << Warrior
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >>Entre em Fargodeep Mina
    .train 403476,1
step << Warrior
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Mate |cRXP_ENEMY_Dentadouro|r. Saque a |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r]
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Goldtooth
    .train 403476,1
step << Warrior
    #season 2
    .train 403476 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r] |cRXP_WARN_para treinar|r |T136048:0|t[Trovão Furioso]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Trovão Furioso - 9 (Dun Morogh)
#title Trovão Furioso

step << Warrior
    #season 2
    .goto 1426,31.87,38.45,0
    .goto 1426,30.42,39.84,0
    .goto 1426,30.02,39.08,0
    .goto 1426,33.82,37.26,0
    .goto 1426,31.87,38.45,50,0
    .goto 1426,30.42,39.84,50,0
    .goto 1426,30.02,39.08,50,0
    .goto 1426,33.82,37.26,50,0
    >>Mate |cRXP_ENEMY_Fyodi|r. Saque a |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r
    >>|cRXP_WARN_Embora |cRXP_ENEMY_Fyodi|r apareça como uma élite, seus valores de vida, dano e armadura são os de um inimigo padrão|r
    >>|cRXP_WARN_Tenha cuidado enquanto ele conjura|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 35-80 de dano corpo a corpo ao acertar. Apenas lançável à distância)|r
    >>|cRXP_WARN_NOTA: O|r |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r |cRXP_WARN_também pode cair de qualquer inimigo raro em Dun Morogh, bem como de |cRXP_ENEMY_Ragash|r, |cRXP_ENEMY_Ronhagarra|r, e|r |cRXP_ENEMY_Velho Barbafria|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Fyodi
    .train 403476,1
    .xp >10,1
step << Warrior
    #season 2
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Mate |cRXP_ENEMY_Ragash|r. Saque a |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r
    >>|cRXP_WARN_NOTA: O|r |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r |cRXP_WARN_também pode cair de qualquer inimigo raro em Dun Morogh, bem como de |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Ronhagarra|r, e|r |cRXP_ENEMY_Velho Barbafria|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .mob Vagash
    .train 403476,1
    .xp <10,1
step << Warrior
    #label FuriousThunder
    #season 2
    .train 403476 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa do Trovão Furioso]|r |cRXP_WARN_para treinar|r |T136048:0|t[Trovão Furioso]
    .use 204809
    .itemcount 204809,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Ataque Frenético - 10 (Objetos de TBC)
#title Ataque Frenético

step << Warrior
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
    >>|cRXP_WARN_Nota: Isso pode ser bastante difícil em solo dependendo do seu nível. Procure ajuda se necessário|r
    .use 204716
    .target Liv Bradford
    .mob Stuart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Ataque Frenético - 10 (Ironforge)
#title Ataque Frenético

step << Warrior
    #season 2
    .goto Ironforge,72.512,76.942
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r na Proteção Militar
    >>Fale com |cRXP_ENEMY_Dumalte|r pela porta, depois derrote-o. Ele desmaiará a 0%.
    >>Se |cRXP_ENEMY_Dumalte|r não estiver lá, espere-o reaparecer.
    >>Fale com |cRXP_FRIENDLY_Bruuk Cevabarba|r novamente depois de derrotar |cRXP_ENEMY_Dumalte|r para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .train 425447,1 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] |cRXP_WARN_para treinar|r |T236317:0|t[Ataque Frenético]
    >>|cRXP_WARN_Nota: Isso pode ser bastante difícil em solo dependendo do seu nível. Procure ajuda se necessário|r
    .use 204716
    .target Bruuk Barleybeard
    .mob Bruart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Ataque Frenético - 10 (Teldrassil)
#title Ataque Frenético

step << Warrior
    #season 2
    .goto Teldrassil,55.619,59.787
    >>Fale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r em Dolanaar
    >>Fale com |cRXP_ENEMY_Syllart|r no andar de cima, depois o derrote. Ele desmaiará em 0%
    >>Se |cRXP_ENEMY_Syllart|r não estiver lá, espere-o ressurgir
    >>Fale com o |cRXP_FRIENDLY_Estalajadeiro Keldamyr|r novamente após derrotar |cRXP_ENEMY_Syllart|r para receber o |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r]
    .train 425447,1 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Ataque Frenético|r] |cRXP_WARN_para treinar|r |T236317:0|t[Ataque Frenético]
    >>|cRXP_WARN_Nota: Isso pode ser bastante difícil em solo dependendo do seu nível. Procure ajuda se necessário|r
    .use 204716
    .target Innkeeper Keldamyr
    .mob Syllart
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#name Raiva Infinita - 20 (Cerro Oeste)
#title Raiva Infinita

step << Warrior
    #season 2
    .goto Westfall,34.43,83.93,55,0
    .goto Westfall,29.55,79.90,60,0
    .goto Westfall,28.29,71.07,60,0
    .goto Westfall,26.42,65.88,60,0
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mate |cRXP_ENEMY_Velho Olho-turvo|r. Saque a |T132347:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r]
    >>|cRXP_ENEMY_Velho Olho-turvo|r |cRXP_WARN_patrulha para cima e para baixo pela Costa Longa. Se você não o vir ao longo da Costa Longa, espere-o aparecer no acampamento |cRXP_ENEMY_Murloc|r mais ao sul|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Old Murk-Eye
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Use a|r |T132347:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r] |cRXP_WARN_para treinar|r |T132347:0|t[Raiva Infinita]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Raiva Infinita - 16 (Costa Negra)
#title Raiva Infinita

step << Warrior
    #season 2
    #completewith next
    .goto Darkshore,55.106,33.621,30 >>Entre na caverna Naga Cliffspring
    .train 403489,1
step << Warrior
    #season 2
    .goto Darkshore,55.40,36.05
    >>Mate |cRXP_ENEMY_Lady Sedorax|r. Saque-a pela |T132347:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r]
    >>|cRXP_ENEMY_Lady Sedorax|r |cRXP_WARN_é uma élite de nível 18 que também tem outros inimigos ao redor dela. Você pode obtê-lo em vez disso de Cerro Oeste, que é muito mais fácil|r
    .collect 208741,1 -- Rune of Endless Rage (1)
    .unitscan Lady Sedorax
    .train 403489,1
step << Warrior
    #season 2
    .train 403489 >>|cRXP_WARN_Use a|r |T132347:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r] |cRXP_WARN_para treinar|r |T132347:0|t[Raiva Infinita]
    .use 208741
    .itemcount 208741,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Devastar - 8 (Elwynn Forest)
#title Devastar

step << Warrior
    #season 2
    >>Mate os |cRXP_ENEMY_Kobold Miners|r e os |cRXP_ENEMY_Kobold Tunnelers|r. Saqueie-os para obter |T134168:0|t[|cRXP_LOOT_Cabeça de Kobold Decepada|r]
    >>Mate os |cRXP_ENEMY_Murlocs|r e os |cRXP_ENEMY_Murloc Streamrunners|r. Saqueie-os para obter |T134169:0|t[|cRXP_LOOT_Cabeça de Murloc Decepada|r]
    >>Mate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para obter |T134163:0|t[|cRXP_LOOT_Cabeça de Gnoll Decepada|r]
    .collect 204476,1 -- Severed Kobold Head (1)
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3,25,0
    .goto Elwynn Forest,37.71,83.76,25,0
    .goto Elwynn Forest,40.5,82.3
    .collect 204477,1 -- Severed Murloc Head (1)
    .goto Elwynn Forest,47.6,63.3,60,0
    .goto Elwynn Forest,51.4,64.6,60,0
    .goto Elwynn Forest,57.6,62.8,60,0
    .goto Elwynn Forest,57.6,62.8
    .collect 204478,1 -- Severed Gnoll Head (1)
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,25.9,93.9
    .mob Kobold Tunneler
    .mob Kobold Miner
    .mob Goldtooth
    .mob Murloc
	.mob Murloc Streamrunner
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 403475,1
step << Warrior
    #completewith RoDSW
    .zone Stormwind City >>Vá para Ventobravo
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109028 >>Fale com |cRXP_FRIENDLY_Viktoria Mattos <Caçadora de Monstros>|r para entregar |T134168:0|t[|cRXP_LOOT_Cabeça de Kobold Decepada|r] e receber |T134455:0|t[Monster Hunter's First Runa Fragmento]
    .collect 204688,1 -- Monster Hunter's First Rune Fragment (1)
    .itemcount 204476,1 -- Severed Kobold Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109027 >>Fale com |cRXP_FRIENDLY_Viktoria Mattos <Caçadora de Monstros>|r para entregar |T134169:0|t[|cRXP_LOOT_Cabeça de Murloc Decepada|r] e receber |T134455:0|t[Monster Hunter's Second Runa Fragmento]
    .collect 204689,1 -- Monster Hunter's Second Rune Fragment (1)
    .itemcount 204477,1 -- Severed Murloc Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label GnollHead
    #completewith RoDSW
    .goto Stormwind City,69.690,51.023
    .gossipoption 109026 >>Fale com |cRXP_FRIENDLY_Viktoria Mattos <Caçadora de Monstros>|r para entregar |T134163:0|t[|cRXP_LOOT_Cabeça de Gnoll Decepada|r] e receber |T134455:0|t[Monster Hunter's Third Runa Fragmento]
    .collect 204690,1 -- Monster Hunter's Third Rune Fragment (1)
    .itemcount 204478,1 -- Severed Gnoll Head (1)
    .target Viktoria Woods
    .train 403475,1
step << Warrior
    #season 2
    #label RoDSW
    #requires GnollHead
    .cast 406651 >>|cRXP_WARN_Use qualquer um dos|r |T134455:0|t[Monster Hunter's Runa Fragmentos] |cRXP_WARN_para criar a|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .collect 204703,1 -- Rune of Devastate (1)
    .use 204690
    .use 204689
    .use 204688
    .itemcount 204688,1
    .itemcount 204689,1
    .itemcount 204690,1
    .train 403475,1
step << Warrior
    #season 2
    .train 403475 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para treinar|r |T135291:0|t[Devastar]
    .use 204703
    .itemcount 204703,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Devastar - 6 (Teldrassil)
#title Devastar

step << Warrior
    #season 2
    >>Mate os |cRXP_ENEMY_Nightsabers|r ou os |cRXP_ENEMY_Nightsaber Stalkers|r. Saqueie-os para as |cRXP_LOOT_Severed Tigre Cabeça|r
    >>Mate os |cRXP_ENEMY_Strigid Owls|r ou os |cRXP_ENEMY_Strigid Guinchadora|r. Saqueie-os para as |cRXP_LOOT_Severed Owl Cabeça|r
    >>Mate os |cRXP_ENEMY_Webwood Lurkers|r ou os |cRXP_ENEMY_Webwood Peçonhentos|r. Saqueie-os para as |cRXP_LOOT_Severed Aranha Cabeça|r
    .collect 208611,1 -- Severed Tiger Head (1)
    .goto Teldrassil,53.6,62.4
    .collect 208610,1 -- Severed Owl Head (1)
    .goto Teldrassil,54.6,60.4
    .collect 208612,1 -- Severed Spider Head (1)
    .goto Teldrassil,53.0,67.0
    .mob Nightsaber
    .mob Nightsaber Stalker
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Webwood Lurker
    .mob Webwood Venomfang
    .train 403475,1
step << Warrior
    #completewith next
    .zone Darnassus >>Viagem para Darnassus
step << Warrior
    #season 2
    .goto Darnassus,63.108,21.858
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Delwynna <Caçadora de Monstros>|r no andar de cima
    >>|cRXP_WARN_Depois de entregar as três |cRXP_LOOT_Cabeça Decepada|r você receberá a|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .train 403475 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para treinar|r |T135291:0|t[Devastar]
    .use 204703
    .skipgossip
    .target Delwynna
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Devastar - 6 (Dun Morogh)
#title Devastar

step << Warrior
    #season 2
    >>Mate os |cRXP_ENEMY_Wendigos|r. Saqueie-os para obter a |cRXP_LOOT_Severed Wendigo Paw|r
    >>Mate os |cRXP_ENEMY_Frostmane Trolls|r. Saqueie-os para obter a |cRXP_LOOT_Severed Trolls Cabeça|r
    >>Mate os |cRXP_ENEMY_Rockjaw Troggs|r. Saqueie-os para obter o |cRXP_LOOT_Pristine Trogg Coração|r
    .collect 208160,1 -- Severed Wendigo Paw (1)
    .goto Dun Morogh,42.2,52.6
    .collect 208159,1 -- Severed Troll Head (1)
    .goto Dun Morogh,41.6,43.8,60,0
    .goto Dun Morogh,42.2,35.0
    .collect 208158,1 -- Pristine Trogg Heart (1)
    .goto Dun Morogh,70.6,56.6
    .mob Young Wendigo
    .mob Wendigo
    .mob Frostmane Troll
    .mob Frostmane Headhunter
    .mob Frostmane Snowstrider
    .mob Frostmane Seer
    .mob Rockjaw Ambusher
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .train 403475,1
step << Warrior
    #season 2
    .goto Dun Morogh,46.611,53.335
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Junni Varoaço <Caçadora de Monstros>|r
    >>|cRXP_WARN_Depois de entregar os três itens, você receberá a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r]
    .train 403475 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Devastar|r] |cRXP_WARN_para treinar|r |T135291:0|t[Devastar]
    .use 204703
    .skipgossip
    .target Junni Steelpass
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Ímpeto da Vitória - 2 (Durotar)
#title Ímpeto da Vitória


    --Rune of Victory Rush

step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .accept 77588 >>Aceite Prova de Resistência << Troll
    .accept 77582 >>Aceite Prova de Resistência << Orc
    .target Frang
step
    #season 2
    .goto Durotar,43.27,69.51
    >>Saque o |cRXP_PICK_Escondido Cache|r para a |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r]
    >>|cRXP_WARN_Passo ao redor de|r |cRXP_ENEMY_Sarkoth|r |cRXP_WARN_e pule para baixo para alcançar o baú|r
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r]
    .use 204806
    .itemcount 204806,1
step << Orc/Troll
    #season 2
    .goto Durotar,42.89,69.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Frang|r
    .turnin 77588 >>Entregue Prova de Resistência << Troll
    .turnin 77582 >>Entregue Prova de Resistência << Orc
    .target Frang

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Ímpeto da Vitória - 2 (Mulgore)
#title Ímpeto da Vitória


    --Rune of Victory Rush

step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .accept 77651 >>Aceite Entre as Espinheiras
    .target Harutt Thunderhorn
step
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Pegue o |cRXP_PICK_Bristleback Saque Cache|r para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r]
    .use 204806
    .itemcount 204806,1
step << Tauren
    #season 2
    .goto Mulgore,44.02,76.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Harutt|r
    .turnin 77651 >>Entregue Entre as Espinheiras
    .target Harutt Thunderhorn

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Ímpeto da Vitória - 2 (Tirisfal)
#title Ímpeto da Vitória

    --Rune of Victory Rush

step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .accept 77668 >>Aceite A Runa Perdida
    .target Dannal Stern
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Pegue o |cRXP_PICK_Lost Stache|r dentro da caverna para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Ímpeto da Vitória|r]
    .collect 204806,1 --Rune of Victory Rush (1)
    .train 403470,1
step
    #season 2
    .train 403470 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Ímpeto da Vitória|r]
    .use 204806
    .itemcount 204806,1
step << Undead
    #season 2
    .goto Tirisfal Glades,32.68,65.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dannal|r
    .turnin 77668 >>Entregue A Runa Perdida
    .target Dannal Stern

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Trovão Furioso - 2 (Durotar)
#title Trovão Furioso

    --Rune of Furious Thunder

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Abate |cRXP_ENEMY_Sarkoth|r. Saqueie-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Trovão Furioso|r]
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Sarkoth
    .train 403476,1
step
    #season 2
    .train 403476 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Trovão Furioso - 10 (Tirisfal)
#title Trovão Furioso


    --Rune of Furious Thunder

step
    #season 2
    .goto Tirisfal Glades,25.79,48.00
    >>Abate |cRXP_ENEMY_Guelgar|r. Saqueie-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Trovão Furioso|r]
    >>|cRXP_WARN_Este é um élite de nível 7|r
    .collect 204809,1 --Rune of Furious Thunder(1)
    .mob Gillgar
    .train 403476,1
step
    #season 2
    .train 403476 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r]
    .use 204809
    .itemcount 204809,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Ataque Frenético - 10 (Orgrimmar)
#title Ataque Frenético


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Orgrimmar,57.40,53.93,-1
    .goto Orgrimmar,58.05,51.40,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamja|r e |cRXP_FRIENDLY_Gru'ark|r
    +Abate |cRXP_ENEMY_Gru'ark|r quando ficar hostil
    .target Zamja
    .target Gru'ark
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Orgrimmar,58.52,52.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamja|r
    >>Obtenha |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r] dela
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Zamja
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Ataque Frenético - 10 (Penhasco do Trovão)
#title Ataque Frenético


    --Rune of Frenzied Assault

step
    #season 2
    #completewith next
    .goto Thunder Bluff,28.73,18.00,-1
    .goto Thunder Bluff,26.19,18.65,-1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Netali|r e |cRXP_FRIENDLY_Mugildo|r no Espírito Erga-se
    +Mate |cRXP_FRIENDLY_Mugildo|r quando ele fica hostil
    .target Netali Proudwind
    .target Mooart
    .skipgossip
    --Gossipoption
step
    #season 2
    .goto Thunder Bluff,28.73,18.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Netali|r
    >>Obtenha |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r] dela
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Ataque Frenético - 10 (Tirisfal)
#title Ataque Frenético


    --Rune of Frenzied Assault

step
    .goto Tirisfal Glades,61.73,51.91
    .gossipoption 110750 >>Fale com |cRXP_FRIENDLY_Magali|r
    .target Penny Hawkins
    .train 425447,1
step
    .goto Tirisfal Glades,61.72,51.72
    .gossipoption 109084 >>Fale com |cRXP_FRIENDLY_Severaldo|r (andar de baixo) dentro da estalagem
    .target Blueheart
    .train 425447,1
step
    #season 2
    .goto Tirisfal Glades,61.72,51.91
    >>Abate |cRXP_ENEMY_Severaldo|r, depois fale com |cRXP_FRIENDLY_Magali|r no andar de cima
    .gossipoption 110751 >>Obtenha |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r] dela
    .collect 204716,1 --Rune of Frenzied Assault (1)
    .target Netali
    .mob Blueheart
    .train 425447,1
    .skipgossip
step
    #season 2
    .train 425447 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Rune of Ataque Frenético|r]
    .use 204716
    .itemcount 204716,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Devastar - 8 (Durotar)
#title Devastar


    --Rune of Devastate

step
    #season 2
    .goto Durotar,50.10,79.24,40,0
    .goto Durotar,47.74,80.35,40,0
    .goto Durotar,46.54,80.12,40,0
    .goto Durotar,50.10,79.24
    >>Abate os |cRXP_ENEMY_Kolkar Drudges|r e os |cRXP_ENEMY_Kolkar Outrunners|r. Saqueie-os por um |cRXP_LOOT_Severed Centaur Cabeça|r
    .collect 207062,1 --Severed Centaur Head (1)
    .mob Kolkar Drudge
    .mob Kolkar Outrunner
    .train 403475,1
step
    #season 2
    .goto Durotar,54.02,27.23,40,0
    .goto Durotar,52.82,24.27,40,0
    .goto Durotar,51.85,23.95,40,0
    .goto Durotar,54.01,23.63,40,0
    .goto Durotar,52.13,20.77,40,0
    .goto Durotar,51.26,19.19,40,0
    .goto Durotar,53.98,23.70
    >>Abate os |cRXP_ENEMY_Dustwind Harpies|r. Saqueie-os por uma |cRXP_LOOT_Severed Harpia Cabeça|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Dustwind Savage
    .mob Dustwind Storm Witch
    .mob Dustwind Pillager
    .mob Dustwind Harpy
    .train 403475,1
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
    >>Abate os |cRXP_ENEMY_Razormane Quilboars|r. Saqueie-os por um |cRXP_LOOT_Severed Quilboar Cabeça|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 403475,1
step
    #season 2
    .goto Durotar,53.14,43.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vahi|r
    >>Entregue as |cRXP_LOOT_Cabeças|r que coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vahi Bonesplitter
    .train 403475,1
step
    #season 2
    .use 204688 >>Usar |T134455:0|t[Runa Fragmentos] para criar |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Devastar - 8 (Mulgore)
#title Devastar


    --Rune of Devastate

step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Abate os |cRXP_ENEMY_Palemane Gnolls|r. Saqueie-os por uma |cRXP_LOOT_Cabeça de Gnoll Decepada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,34.08,43.71,32.98,42.96,31.72,43.08,31.08,42.09,31.12,40.87,31.74,40.31,32.44,41.17,33.57,41.30,33.82,40.26,34.48,41.21,34.50,42.29
	.goto Mulgore,34.08,43.71,25,0
	.goto Mulgore,32.98,42.96,25,0
	.goto Mulgore,31.72,43.08,25,0
	.goto Mulgore,31.08,42.09,25,0
	.goto Mulgore,31.12,40.87,25,0
	.goto Mulgore,31.74,40.31,25,0
	.goto Mulgore,32.44,41.17,25,0
	.goto Mulgore,33.57,41.30,25,0
	.goto Mulgore,33.82,40.26,25,0
	.goto Mulgore,34.48,41.21,25,0
	.goto Mulgore,34.50,42.29,25,0
    >>Abate os |cRXP_ENEMY_Windfury Vento Witches|r e os |cRXP_ENEMY_Windfury Harpies|r. Saqueie-os por uma |cRXP_LOOT_Severed Harpia Cabeça|r
    .collect 206995,1 ---Severed Harpy Head (1)
    .mob Windfury Wind Witch
    .mob Windfury Harpy
    .train 403475,1
step
    #season 2
#loop
	.line Mulgore,59.85,25.62,61.14,22.93,61.77,22.49,62.18,22.05,62.32,20.89,61.62,19.50,60.44,19.50,60.16,21.06,60.41,21.96,61.12,22.88
	.goto Mulgore,59.85,25.62,25,0
	.goto Mulgore,61.14,22.93,25,0
	.goto Mulgore,61.77,22.49,25,0
	.goto Mulgore,62.18,22.05,25,0
	.goto Mulgore,62.32,20.89,25,0
	.goto Mulgore,61.62,19.50,25,0
	.goto Mulgore,60.44,19.50,25,0
	.goto Mulgore,60.16,21.06,25,0
	.goto Mulgore,60.41,21.96,25,0
	.goto Mulgore,61.12,22.88,25,0
    >>Abate |cRXP_ENEMY_Bristleback Interlopers|r. Saque-os para uma |cRXP_LOOT_Severed Quilboar Cabeça|r
    .collect 206994,1 ---Severed Quilboar Head (1)
    .mob Bristleback Interloper
    .train 403475,1
step
    #season 2
    .goto Mulgore,46.29,61.76
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Vateya em Bloodhoof Village
    >>Entregue as |cRXP_LOOT_Cabeças|r que coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Vateya Timberhoof
    .train 403475,1
step
    #season 2
    .use 204688 >>Usar |T134455:0|t[Runa Fragmentos] para criar |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Devastar - 8 (Tirisfal)
#title Devastar


    --Rune of Devastate

step
    #season 2
    .goto Tirisfal Glades,58.20,58.15,50,0
    .goto Tirisfal Glades,57.98,61.66,50,0
    .goto Tirisfal Glades,56.45,62.62,50,0
    .goto Tirisfal Glades,54.73,64.28,50,0
    .goto Tirisfal Glades,52.84,62.26,50,0
    .goto Tirisfal Glades,50.52,61.21,50,0
    .goto Tirisfal Glades,47.88,60.87,50,0
    .goto Tirisfal Glades,46.09,59.70,50,0
    .goto Tirisfal Glades,43.49,61.81,50,0
    .goto Tirisfal Glades,56.45,62.62
    >>Abate os |cRXP_ENEMY_Duskbats|r. Saqueie-os por uma |cRXP_LOOT_Severed Morcego Cabeça|r
    .collect 207975,1 --Severed Bat Head (1)
    .mob Greater Duskbat
    .mob Vampiric Duskbat
    .train 403475,1
step
    #season 2
    .goto Tirisfal Glades,56.31,39.67,40,0
    .goto Tirisfal Glades,54.71,41.19,40,0
    .goto Tirisfal Glades,53.90,43.93,40,0
    .goto Tirisfal Glades,55.24,42.54,40,0
    .goto Tirisfal Glades,56.43,43.92,40,0
    .goto Tirisfal Glades,55.24,42.54
    >>Abate os |cRXP_ENEMY_Rot Esconder-se Gnolls|r. Saqueie-os por uma |cRXP_LOOT_Cabeça de Gnoll Decepada|r
    .collect 204478,1 --Severed Gnoll Head (1)
    .mob Rot Hide Mongrel
    .mob Rot Hide Graverobber
    .mob Rot Hide Gnoll
    .train 403475,1
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
    >>Abate os |cRXP_ENEMY_Murlocs|r. Saqueie-os por uma |cRXP_LOOT_Cabeça de Murloc Decepada|r
    .collect 204477,1 --Severed Murloc Head (1)
    .mob Vile Fin Puddlejumper
    .mob Vile Fin Minor Oracle
    .mob Vile Fin Muckdweller
    .train 403475,1
step
    #season 2
    .goto Undercity,48.03,70.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorac|r em Undercity
    >>Entregue as |cRXP_LOOT_Cabeças|r que coletou em troca de |T134455:0|t[Runa Fragmentos]
    .collect 204688,1 --Monster Hunter's First Rune Fragment (1)
    .collect 204689,1 --Monster Hunter's Second Rune Fragment (1)
    .collect 204690,1 --Monster Hunter's Third Rune Fragment (1)
    .target Dorac Graves
    .train 403475,1
step
    #season 2
    .use 204688 >>Usar |T134455:0|t[Runa Fragmentos] para criar |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .collect 204703,1 --Rune of Devastate (1)
    .train 403475,1
step
    #season 2
    .train 403475 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Rune of Devastar|r]
    .use 204703
    .itemcount 204703,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Frenesi de Sangue - 8 (Durotar)
#title Frenesi de Sangue


    --Rune of Blood Frenzy

step
    #season 2
    .goto Durotar,56.10,21.61,0
    .goto Durotar,56.98,24.42,0
    .goto Durotar,55.42,38.55,0
    .goto Durotar,40.65,48.24,0
    .goto Durotar,36.11,47.85,0
    .goto Durotar,56.10,21.61,100,0
    .goto Durotar,56.98,24.42,100,0
    .goto Durotar,55.42,38.55,100,0
    .goto Durotar,40.65,48.24,100,0
    .goto Durotar,36.11,47.85,100,0
    .goto Durotar,56.10,21.61
    >>Encontre e enfrente em duelo o |cRXP_FRIENDLY_Espadachim Errante|r. Saque o |cRXP_PICK_Box|r que ele solta para obter o |T134419:0|t[|cRXP_FRIENDLY_Runa of Frenesi de Sangue|r]
    >>|cRXP_ENEMY_Ele patrulha por toda a zona e é difícil de encontrar. O marcador o guia por locais de desova conhecidos|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa of Frenesi de Sangue|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Frenesi de Sangue - 8 (Mulgore)
#title Frenesi de Sangue


--Rune of Blood Frenzy

step
    #season 2
    .goto Mulgore,37.38,56.58,0
    .goto Mulgore,45.11,37.75,0
    .goto Mulgore,52.56,43.61,0
    .goto Mulgore,60.43,68.56,0
    .goto Mulgore,37.38,56.58,100,0
    .goto Mulgore,45.11,37.75,100,0
    .goto Mulgore,52.56,43.61,100,0
    .goto Mulgore,60.43,68.56,100,0
    .goto Mulgore,37.38,56.58
    >>Encontre e enfrente em duelo o |cRXP_FRIENDLY_Espadachim Errante|r. Saque o |cRXP_PICK_Box|r que ele solta para obter o |T134419:0|t[|cRXP_FRIENDLY_Runa of Frenesi de Sangue|r]
    >>|cRXP_ENEMY_Ele patrulha por toda a zona e é difícil de encontrar. O marcador o guia por locais de desova conhecidos|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa of Frenesi de Sangue|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Frenesi de Sangue - 8 (Tirisfal)
#title Frenesi de Sangue


    --Rune of Blood Frenzy

step
    #season 2
    .goto Tirisfal Glades,79.25,65.02
    >>Encontre e enfrente em duelo o |cRXP_FRIENDLY_Espadachim Errante|r. Saque o |cRXP_PICK_Box|r que ele solta para obter o |T134419:0|t[|cRXP_FRIENDLY_Runa of Frenesi de Sangue|r]
    >>|cRXP_ENEMY_Ele desova logo a leste de Balnir Farmstead|r
    .collect 204441,1 --Rune of Blood Frenzy (1)
    .unitscan Wandering Swordsman
    .train 403474,1
step
    #season 2
    .train 403474 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa of Frenesi de Sangue|r]
    .use 204441
    .itemcount 204441,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Golpe Rápido - 12 (Loch Modan)
#title Golpe Rápido

step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Mate os |cRXP_ENEMY_Troggs|r. Saqueie-os para obter um |cRXP_LOOT_Geodo de Caveira|r
    .collect 208847,1 -- Skull-Shaped Geode (1)
    .mob Stonesplinter Scout
    .mob Stonesplinter Trogg
    .train 425443,1
step << Warrior
    .goto Loch Modan,33.2,73.8
    >>Mate o |cRXP_ENEMY_Batecrânios Lascapedra|r
    >>|cRXP_WARN_Durante o combate, ele lhe dará um bom golpe, que transformará o |cRXP_LOOT_Geodo de Caveira|r em um|r |T236489:0|t[|cRXP_LOOT_Geodo de Caveira Rachado|r]
    .collect 208848,1 -- Cracked Skull-Shaped Geode (1)
    .mob Stonesplinter Skullthumper
    .train 425443,1
step << Warrior
    .use 208848 >>|cRXP_WARN_Use o|r |T236489:0|t[|cRXP_LOOT_Geodo Rachado de Caveira|r] |cRXP_WARN_para receber|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r]
    .collect 208778,1 -- Rune of Quick Strike (1)
    .train 425443,1
step << Warrior
    .train 425443 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r] |cRXP_WARN_para treinar|r |T132394:0|t[Golpe Rápido]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Raiva Infinita - 15 (Savanas)
#title Raiva Infinita


    --Rune of Endless Rage

step
    #season 2
    .goto The Barrens,52.27,31.08,
    .aura 420667 >>Clique no |cRXP_PICK_Estandarte de Guerra da Horda|r
    .train 403489,1
step
    #season 2
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Devrak
step
    #completewith next
    .subzone 385 >>Vá para Northwatch Segurar
step
    #season 2
    .goto The Barrens,62.55,56.31
    >>Clique no |cRXP_PICK_Estandarte de Guerra da Aliança|r
    >>Abata |cRXP_ENEMY_Lieutenant Stonebrew|r assim que ele aparecer. Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r]
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Lieutenant Stonebrew
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r] |cRXP_WARN_para treinar|r |T132347:0|t[Raiva Infinita]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Raiva Infinita - 15 (Floresta de Pinhaprata)
#title Raiva Infinita


    --Rune of Endless Rage

step
    #season 2
    #completewith next
    +|cRXP_WARN_É recomendado se agrupar, pois você terá que matar um Élite de nível 17|r
step
    #season 2
    .goto Silverpine Forest,35.03,7.73
    >>Ataque o |cRXP_ENEMY_Vítima Encasulada|r e mate o |cRXP_ENEMY_Aventureiro Perdido|r que desova. Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r]
    >>|cRXP_WARN_Você tem que usar dano explosivo no|r |cRXP_ENEMY_Vítima Encasulada|r |cRXP_WARN_pois ele recupera vida a cada poucos segundos|r
    .collect 208741,1 --Rune of Endless Rage (1)
    .mob Webbed Victim
    .mob Lost Adventurer
    .train 403489,1
step
    #season 2
    .train 403489 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Raiva Infinita|r] |cRXP_WARN_para treinar|r |T132347:0|t[Raiva Infinita]
    .use 208741
    .itemcount 208741,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Golpe Rápido - 20 (Costa Negra)
#title Golpe Rápido

step << Warrior
    .goto 1439,44.081,20.739
    >>Saque o |T135129:0|t[Arpão Nodoso] no olho do esqueleto
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 425443,1
step << Warrior
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_Use o|r |T135129:0|t[Arpão Nodoso] |cRXP_WARN_em |cRXP_ENEMY_Paxnozz|r para reduzir a saúde máxima dele para 743|r
    .train 425443,1
step << Warrior
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>Abate |cRXP_ENEMY_Paxnozz|r. Saque-o para obter uma |T134419:0|t|cRXP_LOOT_[Runa de Golpe Rápido]|r
    >>|cRXP_WARN_Tenha cuidado pois ele é uma élite de nível 20|r
    .collect 208778,1 -- Rune of Quick Strike (1)
    .unitscan Paxnozz
    .use 209047
    .train 425443,1
step << Warrior
    .train 425443 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Golpe Rápido|r] |cRXP_WARN_para treinar|r |T132394:0|t[Golpe Rápido]
    .use 208778
    .itemcount 208778,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Rebentação de Sangue - 40 (Azeroth)
#title Rebentação de Sangue

step
    .train 416004,1
    #completewith SpiceBlend
    .zone Arathi Highlands >>Vá para Planalto Arathi
step
    #completewith IllegibleReciple
    +|cRXP_WARN_Você pode querer encontrar um grupo pois você deve matar élites de nível 37+ para obter a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Rebentação de Sangue|r]
    .subzoneskip 324
step
    #label IllegibleReciple
    .train 416004,1
    #loop
    .goto Alterac Mountains,39.0,54.6,0
    .goto Arathi Highlands,24.14,61.85,0
    .goto Arathi Highlands,24.14,61.85,30,0
    .goto Arathi Highlands,24.25,64.97,30,0
    .goto Arathi Highlands,21.22,66.52,40,0
    .goto Arathi Highlands,20.21,67.17,40,0
    >>Abate |cRXP_ENEMY_Boulderfist Ogres|r na Fortaleza de Stromgarde. Saqueie-os para obter uma |T237451:0|t[|cRXP_LOOT_Illegible Recipe|r]
    >>|cRXP_WARN_Use a|r |T237451:0|t[|cRXP_LOOT_Illegible Recipe|r] |cRXP_WARN_para começar a missão|r
    >>|cRXP_WARN_Você também pode matar |cRXP_ENEMY_Crushridge Ogres|r em Alterac Mountains|r
    .collect 213422,1,79624 --Illegible Recipe (1x)
    .accept 79624 >>Aceite Qualquer um Cozinha
    .mob Boulderfist Shaman
    .mob Boulderfist Mauler
    .mob Boulderfist Lord
    .mob Crushridge Mauler
    .mob Crushridge Mage
    .mob Crushridge Enforcer
    .mob Crushridge Warmonger
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >>Suba a montanha para chegar a |cRXP_FRIENDLY_[[Skonk] <[Amateur Chef]>] <[Amateur Chef]>|r
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_[[Skonk] <[Amateur Chef]>] <[Amateur Chef]>|r
    .turnin 79624 >>Entregue Qualquer um Cozinha
    .accept 79677 >>Aceite Ida Rápida ao Mercado
    .target Skonk
step
    #completewith SpiceBlend
    .goto Arathi Highlands,30.74,66.94,60,0
    .goto Arathi Highlands,22.72,71.98,50,0
    .goto Arathi Highlands,21.50,75.91,40,0
    .goto Arathi Highlands,21.98,79.96,30 >>Vá para Faldir's Cove
step
    #label SpiceBlend
    .train 416004,1
    .goto Arathi Highlands,20.47,84.90,8,0
    .goto Arathi Highlands,21.379,83.919
    >>Abra o |cRXP_PICK_Sealed Barril|r. Pegue-o para obter o |cRXP_LOOT_Smuggler's Spice Blend|r
    >>|cRXP_WARN_Ele está localizado no fundo do navio naufragado. Nade pela grande abertura no fundo extremo para chegar até ele|r
    .complete 79677,2 --Smuggler's Spice Blend (1x)
step
    .train 416004,1
    #completewith next
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes
step
    .train 416004,1
    #loop
    .goto Hillsbrad Foothills,84.34,32.40,0
    .goto Hillsbrad Foothills,81.33,34.03,50,0
    .goto Hillsbrad Foothills,84.34,32.40,50,0
    .goto Hillsbrad Foothills,82.09,36.92,50,0
    >>Abate |cRXP_ENEMY_Wild Gryphons|r. Saqueie-os para obter o |cRXP_LOOT_Hybrid Haunch|r
    .complete 79677,1 --Hybrid Haunch (1x)
    .mob Kurdros << Horde
    .mob Granistad << Horde
    .mob Wild Gryphon
step
    .train 416004,1
    #completewith next
    .zone Badlands >>Viaje para Ermos
step
    #completewith next
    .goto Badlands,42.87,29.77,60 >>Entre em Angor Fortaleza
step
    .train 416004,1
    .goto Badlands,41.92,26.26,20,0
    .goto Badlands,41.383,27.964
    >>Clique no |cRXP_PICK_Tapped Shadowforge Keg|r. Pegue-o para obter o |cRXP_LOOT_Balmy Preparar|r
    >>|cRXP_WARN_Fique à distância máxima para evitar provocar inimigos|r |cRXP_ENEMY_Embaixador Infernus|r
    .complete 79677,3 --Balmy Brew (1x)
step
    .train 416004,1
    #completewith next
    .zone Swamp of Sorrows >>Vá para Pântano das Mágoas
step
    .train 416004,1
    #loop
    .goto Swamp of Sorrows,56.16,61.19,0
    .goto Swamp of Sorrows,62.11,65.79,0
    .goto Swamp of Sorrows,68.52,73.12,0
    .goto Swamp of Sorrows,72.50,82.18,0
    .goto Swamp of Sorrows,78.49,88.19,0
    .goto Swamp of Sorrows,56.16,61.19,60,0
    .goto Swamp of Sorrows,62.11,65.79,60,0
    .goto Swamp of Sorrows,68.52,73.12,60,0
    .goto Swamp of Sorrows,72.50,82.18,60,0
    .goto Swamp of Sorrows,78.49,88.19,60,0
    >>Abate |cRXP_ENEMY_Deathstrike Tarantulas|r. Saqueie-os para obter o |cRXP_LOOT_Viscous Venenom|r
    >>|cRXP_WARN_Podem ser encontrados na área Sudeste de Pântano das Mágoas|r
    .complete 79677,4 --Viscous Venom (1x)
    .mob Deathstrike Tarantula
step
    .train 416004,1
    #completewith GroceryRun
    .zone Arathi Highlands >>Vá para Planalto Arathi
step
    #completewith next
    .goto Arathi Highlands,57.587,72.499,10 >>Suba a montanha para chegar a |cRXP_FRIENDLY_[[Skonk] <[Amateur Chef]>] <[Amateur Chef]>|r
step
    #label GroceryRun
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_[[Skonk] <[Amateur Chef]>] <[Amateur Chef]>|r
    .turnin 79677 >>Entregue Ida Rápida ao Mercado
    .accept 79678 >>Aceite Degustação
    .timer 23,Degustação RP
    .target Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>Derrote |cRXP_ENEMY_[[Skonk] <[Amateur Chef]>] <[Amateur Chef]>|r depois que comer sua refeição
    .complete 79678,1 --Taste Testing
    .mob Skonk
step
    .train 416004,1
    .goto Arathi Highlands,57.68,74.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_[[Skonk] <[Amateur Chef]>] <[Amateur Chef]>|r
    .turnin 79678 >>Entregue Degustação
    .target Skonk
step
    .train 416004 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Rebentação de Sangue|r] |cRXP_WARN_para treinar|r |T236306:0|t[Rebentação de Sangue]
    .use 213103
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Raiva Concentrada - 35 (Planalto Arathi)
#title Raiva Concentrada

-- Focused Rage

step
    .train 409163,1
    #completewith WitherbarkCave
    +|cRXP_WARN_Considere procurar membros de festa adicionais antes de tentar adquirir a|r |T134419:0|t[|cRXP_LOOT_Runa de Raiva Concentrada|r] |cRXP_WARN_pois requer matar uma élite de nível 35 e 2 inimigos ao mesmo tempo|r
step
    .train 409163,1
    #completewith WitherbarkCave
    .zone Arathi Highlands >>Vá para |cFFfa9602Planalto Arathi|r
step
    .train 409163,1
    .goto Arathi Highlands,72.51,65.67,70,0
    .goto Arathi Highlands,70.334,69.93,70,0
    .goto Arathi Highlands,64.06,72.51,70,0
    .goto Arathi Highlands,61.35,71.72,70,0
    .goto Arathi Highlands,64.23,67.72,70,0
    .goto Arathi Highlands,66.56,63.98
    >>Mate os |cRXP_ENEMY_Cascasseca Trolls|r. Saqueie-os pelo |T133057:0|t[|cRXP_LOOT_Cascasseca Mallet|r]
    >>|cRXP_WARN_Você também pode comprar o|r |T133057:0|t[|cRXP_LOOT_Witherbark Mallet|r] |cRXP_WARN_na Casa de Leilões|r
    .collect 216483,1
    .mob Witherbark Shadow Hunter
    .mob Witherbark Axe Thrower
    .mob Witherbark Headhunter
    .mob Witherbark Witch Doctor
step
    .train 409163,1
    #label WitherbarkCave
    .goto Arathi Highlands,68.363,75.806,25 >>Entre na Caverna Cascasseca
step
    .train 409163,1
    #completewith next
    .goto Arathi Highlands,69.502,81.924
    .cast 436278 >>|cRXP_WARN_Use a|r |T133057:0|t[|cRXP_LOOT_Cascasseca Mallet|r] |cRXP_WARN_no |cRXP_PICK_Gongo|r dentro da caverna|r
    .use 216483 >>|cRXP_WARN_Isto desova um |cRXP_ENEMY_Golias Cascasseca|r (nível 35 elite) bem como 2 inimigos adicionais|r
step
    .train 409163,1
    .goto Arathi Highlands,69.61,81.60
    >>Mate o |cRXP_ENEMY_Cascasseca Golias|r. Saqueie-o pela |T134419:0|t[|cRXP_LOOT_Runa de Raiva Concentrada|r]
    .collect 213109,1
    .mob Witherbark Goliath
step
    .train 409163 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_LOOT_Runa de Raiva Concentrada|r] |cRXP_WARN_para aprender|r |T132345:0|t[Raiva Concentrada]
    .use 213109
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Comprar Briga - 24 (Mil Agulhas)
#title Comprar Briga

-- Intervene

step
    #optional
    .train 403472,1
    +|cRXP_WARN_Você deve ter pelo menos nível 24 antes de poder adquirir a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervenção|r]
    .xp >24,1
step
    .train 403472,1
    #completewith next
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_Você deve treinar|r |T132357:0|t[Trombada com Escudo] |cRXP_WARN_para adquirir a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervenção|r]
step
    .train 403472,1
    .train 5308,1
    .train 20658,1
    .train 20660,1
    .train 20661,1
    .train 20662,1
    +|cRXP_WARN_Você deve treinar|r |T135358:0|t[Executar] |cRXP_WARN_para adquirir a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervenção|r]
step
    .train 403472,1
    #optional
    .train 72,1
    .train 1671,1
    .train 1672,1
    +|cRXP_WARN_Você deve treinar|r |T132357:0|t[Trombada com Escudo] |cRXP_WARN_para adquirir a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervenção|r]
step
    .train 403472,1
    #completewith next
    >>|cRXP_WARN_Antes de ir para Mil Agulhas, assegure-se de que tem o seguinte (a força deles não importa)|r
    +Uma arma de uma mão
    +Um escudo
step
    .train 403472,1
    .goto Thousand Needles,67.84,89.50,100 >>Vá para o Rustmaul Digsite em |cFFfa9602Mil Agulhas|r
step
    #completewith next
    +|cRXP_WARN_Certifique-se de que você equipou sua arma de uma mão e seu escudo|r
step
    .train 403472,1
    .goto Thousand Needles,67.968,89.800
    .cast 5308,20658,20660,20661,20662 >>|cRXP_WARN_Lance|r |T135358:0|t[Executar] |cRXP_WARN_no |cRXP_ENEMY_Boneco de Combate|r, depois mova para o próximo|r |cRXP_ENEMY_Boneco de Combate|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.845,89.511
    .cast 355 >>|cRXP_WARN_Lance|r |T136080:0|t[Provocar] |cRXP_WARN_no |cRXP_ENEMY_Boneco de Combate|r, depois mova para o próximo|r |cRXP_ENEMY_Boneco de Combate|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.713,89.245
    .cast 72,1671,1672 >>|cRXP_WARN_Lance|r |T132357:0|t[Trombada com Escudo] |cRXP_WARN_no|r |cRXP_ENEMY_Boneco de Combate|r
    .mob Combat Dummy
step
    .train 403472,1
    .goto Thousand Needles,67.933,89.408
    >>Abra o baú |cRXP_PICK_Warrior's Contrato|r. Pegue dele o |T134419:0|t[|cRXP_FRIENDLY_Runa da Intervenção|r]
    .collect 213111,1 --Rune of Intervention (1x)
step
    .train 403472 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Intervenção|r] |cRXP_WARN_para treinar|r |T132365:0|t[Comprar Briga]
    .use 213111
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Brado de Convocação - 40 (Ermos)
#title Brado de Convocação

-- Rallying Cry

step
    .train 426491,1
    #completewith next
    .zone Badlands >>Viaje para Ermos
step
    .train 426491,1
    #loop
    .goto Badlands,15.6,45.8,0
    .goto Badlands,20.0,57.0,0
    .goto Badlands,27.8,67.8,0
    .goto Badlands,33.0,66.2,0
    .goto Badlands,36.6,56.8,0
    .goto Badlands,15.6,45.8,30,0 << Alliance
    .goto Badlands,20.0,57.0,30,0 << Alliance
    .goto Badlands,27.8,67.8,30,0 << Alliance
    .goto Badlands,33.0,66.2,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Alliance
    .goto Badlands,36.6,56.8,30,0 << Horde
    .goto Badlands,33.0,66.2,30,0 << Horde
    .goto Badlands,27.8,67.8,30,0 << Horde
    .goto Badlands,20.0,57.0,30,0 << Horde
    .goto Badlands,15.6,45.8,30,0 << Horde
    >>Fale com o |cRXP_FRIENDLY_Espadachim Errante|r em Ermos
    >>Derrote o |cRXP_ENEMY_Espadachim Errante|r em um duelo
    >>Abra o |cRXP_PICK_Recompensa do Espadachim|r que cai no chão. Saqueie-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa da Comandante|r]
    >>|cRXP_WARN_Nota: O |cRXP_FRIENDLY_Espadachim Errante|r pode aparecer em muitos locais em Ermos|r
    .collect 213110,1 --Rune of the Commander (1x)
    .unitscan Wandering Swordsman
    .skipgossip
step
    .train 426491 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Comandante|r] |cRXP_WARN_para aprender|r |T132339:0|t[Brado de Convocação]
    .use 213110
]])


RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Alvoroço
#name Alvoroço - 43 (Feralas)


step
    #completewith next
    .zone Feralas >>Viaje para Feralas
step
    .goto Feralas,75,35.2,20 >>Dirija-se para a caverna do Posto Avançado Gordunni ao norte de Camp Mojache
    .train 427081,1
step
    .goto Feralas,74.8,24.9
    >>Entre na caverna, procure um Ogro de nível 43 élite. Abata-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa dos Desenfreados|r]
    .collect 220682,1 -- Rune of Unbridled 1/1
    .unitscan Ohk'zi
    .train 427081,1
step
    .train 427081 >>|cRXP_WARN_Usar o|r |T134419:0|t[|cRXP_FRIENDLY_Runa dos Desenfreados|r] |cRXP_WARN_para aprender|r |T132352:0|t[Alvoroço]
    .use 220682

]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Violência Gratuita
#name Violência Gratuita - 40 (Terras Agrestes)

step
    #completewith next
    .zone The Hinterlands >>Vá para Terras Agrestes
step
    #loop
    .goto The Hinterlands,23.6,57.4
    .goto The Hinterlands,36.6,66.2,0
    .goto The Hinterlands,31.6,59.8,0
    >>Mate qualquer um dos |cRXP_ENEMY_Trolls Cascasseca|r na parte ocidental do mapa até saquear um |T133054:0|t|cRXP_LOOT_Martelo de Geodo|r deles
    .collect 220912,1 --Geode Hammer 1/1
    .mob Witherbark Sadist
    .mob Witherbark Scalper
    .mob Witherbark Zealot
    .mob Witherbark Hideskinner
    .mob Witherbark Venomblood
    .train 427084,1
step
    .equip 16,220912 >>Equipe o |T133054:0|t|cRXP_LOOT_Martelo de Geodo|r como sua arma de mão principal. Continue combatendo inimigos até que o martelo se quebre e vire um |T133054:0|t|cRXP_LOOT_Martelo de Geodo Quebrado|r
    .collect 220914,1 --Broken Geode Hammer
    .train 427084,1
step
    >>Clique com o botão direito em |T133054:0|t|cRXP_LOOT_Martelo de Geodo Quebrado|r para saqueá-lo e obter |T134419:0|t[|cRXP_FRIENDLY_Runa da Demolição|r]
    .collect 220913,1 --Rune of the Demolition
    .train 427084,1
step
    .train 427084 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Demolição|r] |cRXP_WARN_para aprender|r |T132364:0|t[Violência Gratuita]
    .use 220913
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#title Gosto por Sangue
#name Gosto por Sangue - 50 (Garganta Abrasadora)

step
    #completewith SlagPits
    .zone Searing Gorge >>Vá para Garganta Abrasadora
step
    #sticky
    #completewith summonIodax
    >>|cRXP_WARN_Para completar esta missão, você precisará invocar e matar um golem de élite nível 50 com cerca de 12k de vida. É possível fazer sozinho, mas recomendo procurar um grupo. Para invocar o golem, você precisa coletar 4 partes de Slag Pits em Garganta Abrasadora. No entanto, você não precisa coletar se conseguir encontrar alguém para invocar o chefe para você. Nesse caso, você pode pular direto para a etapa 13|r
    .collect 221258,1 --Right Foot of the Obliterator
    .collect 221256,1 --Right Arm of the Obliterator
    .collect 221259,1 --Left Foot of the Obliterator
    .collect 221257,1 --Left Arm of the Obliterator
step
    #label SlagPits
    .goto 1427/0,-1247.100,-6906.900,10 >>Entre no Slag Pits pela caverna aqui
    .train 427076,1
step
    .goto 1427/0,-1257.200,-6764.300
    >>Siga o caminho curvo para frente depois de entrar na caverna. O |cRXP_LOOT_Right Arma of the Obliterador|r está no chão ao lado de uma pilha de caixas e barris
    .collect 221256,1 --Right Arm of the Obliterator 1/1
    .train 427076,1
step
    .goto 1427/0,-1161.500,-6756.500,10 >>Corra em direção ao portão e atravesse-o
    .train 427076,1
step
    .goto 1427/0,-1303.200,-6461.500,15 >>Siga para frente pelo caminho. Na sala grande com um golem massivo no chão, pegue a rampa para o nível superior do Pits
    .train 427076,1
step
    .goto 1427/0,-1301.900,-6584.700
    >>Pegue o |cRXP_LOOT_Right Foot of the Obliterador|r no chão
    .collect 221258,1 --Right Foot of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1387.200,-6722.700,10 >>Vá em direção ao final sul da ponte
    .train 427076,1
step
    .goto 1427/0,-1428.600,-6656.800
    >>Salte da ponte em direção à caverna do Incendossauro. Pegue o |cRXP_LOOT_Left Arma of the Obliterador|r do chão ao lado do lago de lava
    .collect 221257,1 --Left Arm of the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1271.900,-6553.500
    >>Vá para o fundo da caverna do Incendossauro. Pegue o |cRXP_LOOT_Left Foot of the Obliterador|r do chão
    .collect 221259,1
    .train 427076,1
step
	#completewith next
	+Para fazer skip, pule na rocha atrás do pé e faça logout
	.link https://youtu.be/oBnDG1AWcxU >>https://youtu.be/oBnDG1AWcxU >> CLIQUE AQUI para referência
step
    #label summonIodax
    #optional
    #completewith next
    .goto 1427/0,-1791.400,-6774.900
    .cast 446363 >>Vá para a Cabeça do Obliterador marcada no seu mapa. Usar as partes que você coletou para invocar |cRXP_ENEMY_Iodax o Obliterador|r um gigante de élite nível 50
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .goto 1427/0,-1791.400,-6774.900
    >>Mate |cRXP_ENEMY_Iodax the Obliterador|r e saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa do Sedento de Sangue|r]
    .collect 221267,1 --Rune of the Bloodthirsty
    .unitscan Iodax the Obliterator
    .train 427076,1
step
    .train 427076 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Sedento de Sangue|r] |cRXP_WARN_para aprender|r |T236276:0|t[Gosto por Sangue]
    .use 221267
    .itemcount 221267,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#title Vigilância
#name Vigilância - 46 (Feralas)

step
    #completewith next
    .zone Feralas >>Viaje para Feralas
step
    .goto Feralas,77.6,62.0,30 >>Vá para Profundeza Atormentada, uma colmeia silithid em Feralas. |cRXP_WARN_Você precisará matar um mob de élite nível 46 com golpes fortes. Procure um grupo se você não estiver no nível 50|r
    .train 427078,1
step
    .goto Feralas,77.6,62.0
    >>Procure o |cRXP_ENEMY_Tyrant of the Hive|r, mate-o e saqueie para o |T134419:0|t[|cRXP_FRIENDLY_Runa do Vigia|r]
    .collect 221473,1 --Rune of the watchman
    .unitscan Tyrant of the Hive
    .train 427078,1
step
    .train 427078 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Vigia|r] |cRXP_WARN_para aprender|r |T236318:0|t[Vigilância]
    .use 221473
]])
RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#title Postura do Gladiador
#name Postura do Gladiador - 45 (Tanaris & Azshara)

step
    #completewith theOldChamp
    +|cRXP_WARN_Para desbloquear|r |T236541:0|t[Postura do Gladiador] |cRXP_WARN_você precisa ter derrotado os dois espadachins errantes que recompensam|r |T132334:0|t[Frenesi de Sangue] e |T132339:0|t[Brado de Convocação] |cRXP_WARN_runas. Certifique-se de que fez isso antes de continuar. Usar seus respectivos guias de runas se não tem certeza onde encontrá-los|r
    +|cRXP_WARN_NÃO AGRUPE-SE com ninguém enquanto progride esta cadeia de missões. Atualmente é relatado que muitas vezes bugam a missão, impossibilitando de completar|r
step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
step
    #label theOldChamp
    .goto Tanaris,51.6,27.6
    >>Fale com |cRXP_FRIENDLY_Fizbuz Mithril|r em Gadgetzan
    .accept 81682 >>Aceite O Campeão
    .target Fizbuz Mithril
step
    #completewith next
    .zone Azshara >>Voe para Azshara
step
    .goto Azshara,27,61,40 >>Procure um caminho levando para cima da montanha. Está marcado com bandeiras da Horda
    .train 416002,1
step
    .goto Azshara,25.4,66.2
    >>Fale com |cRXP_FRIENDLY_Kajind <Campeão da Arena>|r no topo do caminho da montanha
    .turnin 81682 >>Entregue O Campeão
    .accept 81697 >>Aceite Sem Presas
    .target Kajind
step
    .goto Azshara,39.4,72.4
    >>Procure o |cRXP_ENEMY_Cerúleo|r um dragão azul nível 50. Ele patrulha ao redor do lado norte do lago. Saqueie-o para obter a |T251962:0|t|cRXP_LOOT_Lâmina de Kajind <Campeão da Arena>|r
    .complete 81697,1 --Kajind's Blade
    .unitscan Ceruleos
step
    .goto Azshara,25.4,66.2
    >>Volte para |cRXP_FRIENDLY_Kajind <Campeão da Arena>|r
    .turnin 81697 >>Entregue Sem Presas
    .accept 81801 >>Aceite Retorno à Arena
    .target Kajind
step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
step
    .goto Tanaris,51.6,27.6
    >>Volte para Gadgetzan e fale com |cRXP_FRIENDLY_Fizbuz Mithril|r
    .turnin 81801 >>Entregue Retorno à Arena
    .accept 81877 >>Aceite Noite de Luta
    .target Fizbuz Mithril
step
    >>Derrote |cRXP_ENEMY_Kajind <Campeão da Arena>|r na Arena de Gadgetzan
    .complete 81877,1 --Arena Victory 1/1
    .unitscan Kajind
step
    .goto Tanaris,51.6,27.6
    >>Entregue a missão em |cRXP_FRIENDLY_Fizbuz Mithril|r
    .turnin 81877 >>Entregue Noite de Luta
    .target Fizbuz Mithril
step
    .train 416002 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Gladiador|r] |cRXP_WARN_para aprender|r |T236541:0|t[Postura do Gladiador]
    .use 220164
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Carne Fresca
#name Carne Fresca - 55 (Estepes Ardentes)

step
    #completewith next
    .zone Burning Steppes >>Vá para Estepes Ardentes
step
    .train 440492,1
    .goto Burning Steppes,40.4,33.6
    .aura 459616 >>|cRXP_WARN_Mate |cRXP_ENEMY_Blackrock Orcs|r no Baluarte da Pedra Negra até receber o|r |T132353:0|t[Ritmo da Guerra] |cRXP_WARN_buff|r
    .mob Blackrock Battlemaster
    .mob Blackrock Slayer
    .mob Blackrock Warlock
    .mob Blackrock Sorcerer
step
    .train 440492,1
    .goto Burning Steppes,39.549,27.828
    >>|cRXP_WARN_Dirija-se ao|r |cRXP_PICK_Altar da Reverência|r
    >>|cRXP_WARN_Uma vez lá, digite "/salute" no seu chat. Isso invocará um|r |cRXP_ENEMY_Campeão Reverenciado|r
    >>Abata o |cRXP_ENEMY_Campeão Reverenciado|r e depois clique no |cRXP_PICK_Altar da Reverência|r
    .accept 84124 >>Aceite Legado da Bravura
    .turnin 84124 >>Entregue Legado da Bravura
    .mob Revered Champion
step
    .train 440492 >>|cRXP_WARN_Use o|r |T133747:0|t[|cRXP_LOOT_Runa do Primeiro Guerreiro|r] |cRXP_WARN_para aprender|r |T237516:0|t[Carne Fresca]
    .use 226680
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Morte Súbita
#name Morte Súbita - 57 (Silithus)

step
    #completewith next
    .zone Silithus >>Vá para Silithus
step
    .train 440494,1
    #loop
    .goto Silithus,55.4,53.2,60,0
    .goto Silithus,47.0,53.6,60,0
    .goto Silithus,45.0,74.0,60,0
    .goto Silithus,44.2,83.4,60,0
    .goto Silithus,33.6,69.2,60,0
    .goto Silithus,41.0,65.2,60,0
    .goto Silithus,34.8,33.6,60,0
    .goto Silithus,31.0,17.2,60,0
    .gossip 228611,2 >>|cRXP_WARN_Procure um |cRXP_FRIENDLY_Espadachim Errante|r por todo Silithus|r
    >>|cRXP_WARN_Converse com o |cRXP_FRIENDLY_Espadachim Errante|r. Você deve selecionar a dificuldade Média ou Difícil para ser recompensado com a runa|r
    >>|cRXP_WARN_Você será teleportado instantaneamente para uma pequena plataforma e o encontro começará contra|r |cRXP_ENEMY_Khonsu|r
    >>|cRXP_WARN_Ele vai lançar habilidades semelhantes a [Cutilada]. Quando você ver essas animações, afaste-se rapidamente|r
    >>|cRXP_WARN_Quando ele lançar [Pisada Trovejante], você DEVE se mover para uma das pequenas saliências da plataforma, caso contrário será derrubado|r
    >>|cRXP_WARN_Também é recomendado que você use a|r |T132342:0|t[Ímpeto da Vitória] |cRXP_WARN_runa enquanto estará matando inimigos adicionais durante o combate|r
    .unitscan Wandering Swordsman
step
    .train 440494,1
    >>|cRXP_WARN_Derrote |cRXP_ENEMY_Khonsu|r
    >>|cRXP_WARN_Ele vai lançar habilidades semelhantes a [Cutilada]. Quando você ver essas animações, afaste-se rapidamente|r
    >>|cRXP_WARN_Quando ele lançar [Pisada Trovejante], você DEVE se mover para uma das pequenas saliências da plataforma, caso contrário será derrubado|r
    >>|cRXP_WARN_Ao ser bem-sucedido, aceite e entregue a missão|r
    .accept 84317 >>Aceite Meia-noite Infinita
    .turnin 84317 >>Entregue Meia-noite Infinita
    .mob Titanic Watcher
step
    .train 440494 >>|cRXP_WARN_Use as|r |T133739:0|t[|cRXP_LOOT_Percepções do Errante Atemporal|r] |cRXP_WARN_para aprender|r |T132346:0|t[Morte Súbita]
    .use 226679
]])

RXPGuides.RegisterGuide([[
#classic
<< Warrior SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Onda de Choque
#name Onda de Choque - 60 (Azeroth)

step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
step
    .train 440496,1
    .goto Tanaris,59.2,91.5
    >>|cRXP_WARN_Vá para o sul de Tanaris ao longo da costa|r
    >>Clique em |cRXP_PICK_Half-Enterrado Mech|r e em |cRXP_PICK_Access Chocar|r no chão
    .accept 84135 >>Aceite Robô praiano
    .turnin 84135 >>Entregue Robô praiano
    .accept 84137 >>Aceite Amor de máquina
step
    .train 440496,1
    #completewith next
    .cast 459613 >>|cRXP_WARN_Use o|r |T134731:0|t[Acelerador de Flutuação Guiado] |cRXP_WARN_para aumentar sua velocidade de nado pelos próximos 4 min|r
    .use 226856
step
    .train 440496,1
    >>|cRXP_WARN_NOTA: NÃO HÁ SETA PARA ESTE PASSO!|r
    >>|cRXP_WARN_Você deve nadar para o sul até a ilha remota e falar com |cRXP_FRIENDLY_[[Sebastian Jurgens] <[Mad Doctor]>] <[Mad Doctor]>|r. Você deve nadar pelas águas de fadiga para alcançá-lo. Vá em direção ao Oilrig localizado na ilha para encontrá-lo|r
    .turnin 84137 >>Entregue Amor de máquina
    .accept 84138 >>Aceite Favores gelados
    .target Sebastian Jurgens
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>Vá para Hibérnia
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Numi|r
    .turnin 84138 >>Entregue Favores gelados
    .accept 84146 >>Aceite Ao Resgate da Bolsa Vermelha
    .target Numi
step
    #completewith next
    .zone Burning Steppes >>Vá para Estepes Ardentes
step
    .train 440496,1
    .goto Burning Steppes,52.955,24.374
    >>Clique em |cRXP_PICK_Red Bolsa|r no chão
    .turnin 84146 >>Entregue Ao Resgate da Bolsa Vermelha
    .accept 84211 >>Aceite Covil dos Larápios
    .target Red Bag
step
    .train 440496,1
    #loop
    .goto Burning Steppes,47.0,27.2,45,0
    .goto Burning Steppes,46.4,21.4,45,0
    .goto Burning Steppes,52.95,24.37,45,0
    >>Mate os |cRXP_ENEMY_Blackrock Bootleggers|r e os |cRXP_ENEMY_Sulfuron Smugglers|r. Saqueie-os por seus |cRXP_LOOT_Vertically Composited Mathiaz Hamplers|r e |cRXP_LOOT_Brass-fitted Flam-Tamp Flange|r
    .complete 84211,1
    .complete 84211,2
    .mob Blackrock Bootlegger
    .mob Sulfuron Smuggler
step
    .train 440496,1
    #completewith next
    .zone Winterspring >>Vá para Hibérnia
step
    .train 440496,1
    .goto Winterspring,61.2,37.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Numi|r
    .turnin 84211 >>Entregue Covil dos Larápios
    .accept 84212 >>Entregue De Volta à Estante
    .target Numi
step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
step
    .train 440496,1
    >>|cRXP_WARN_Volte para |cRXP_FRIENDLY_[[Sebastian Jurgens] <[Mad Doctor]>] <[Mad Doctor]>|r na ilha remota ao sul novamente|r
    .turnin 84212 >>Entregue De Volta à Estante
    .accept 84213 >>Aceite Fenda Afora
    .target Sebastian Jurgens
step
    .train 440496,1
    .zone Westfall >>|cRXP_WARN_Siga |cRXP_FRIENDLY_[[Sebastian Jurgens] <[Mad Doctor]>] <[Mad Doctor]>|r para o teletransportador. Ele o teletransportará para Cerro Oeste|r << Alliance
    .zone Tirisfal Glades >>|cRXP_WARN_Siga |cRXP_FRIENDLY_[[Sebastian Jurgens] <[Mad Doctor]>] <[Mad Doctor]>|r para o teletransportador. Ele o teletransportará para Tirisfal Glades|r << Horde
    .target Sebastian Jurgens
step
    .train 440496,1
    >>|cRXP_WARN_Encontre um grupo para ajudá-lo com isto! Você precisa de pelo menos um tanque e um curador para lhe ajudar!|r
    >>Converse com |cRXP_FRIENDLY_[[Sebastian Jurgens] <[Mad Doctor]>] <[Mad Doctor]>|r para invocar o |cRXP_ENEMY_Harvest Golem V000-A|r
    >>Mate |cRXP_ENEMY_Harvest Golem V000-A|r
    .complete 84213,1
    .mob Harvest Golem V000-A
step
    .train 440496,1
    >>Clique em |cRXP_PICK_Mech Arma|r no chão
    .turnin 84213 >>Entregue Fenda Afora
step
    .train 440496 >>|cRXP_WARN_Use the|r |T133738:0|t[|cRXP_LOOT_Premonição e Antecipação de Combate|r] |cRXP_WARN_to learn|r |T236312:0|t[Onda de Choque]
    .use 226678
]])
