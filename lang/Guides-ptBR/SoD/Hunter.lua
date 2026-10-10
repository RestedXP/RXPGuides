if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Tiro Quimérico - 2 (Dun Morogh)
#title Tiro Quimérico


step
    +|cRXP_WARN_Você deve estar no mínimo no nível 2 para obter|r |T133816:0|t[Gravar Luvas - Tiro Quimérico] |cRXP_WARN_em Dun Morogh sozinho|r
    .train 410121,1
    .xp >2,1
step
    #completewith Rune
    #label Dun1
    .zone Dun Morogh >>Vá para Dun Morogh
    .train 410121,1
step
    #optional
    #requires Dun1
    #label FrostMCave1
    #completewith Rune
    .goto 1426,27.098,80.707,20 >>Entre na Frostmane Cave
    .train 410121,1
step
    #optional
    #requires FrostMCave1
    #completewith Rune
    .goto 1426,28.298,79.836,15,0
    .goto 1426,29.252,79.043,15,0
    .goto 1426,30.489,80.165,50 >>Viaje para o |cRXP_PICK_Frostmane Saque Cache|r dentro
    .train 410121,1
step
    #label Rune
    .goto Dun Morogh,30.773,80.063
    >>Abra o |cRXP_PICK_Frostmane Saque Cache|r no chão dentro. Saque-o para obter |T134419:0|t|cRXP_LOOT_[Runa da Quimera]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa da Quimera]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Tiro Quimérico]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Tiro Quimérico - 3 (Teldrassil)
#title Tiro Quimérico

step
    +|cRXP_WARN_Você deve estar no mínimo no nível 3 para obter|r |T133816:0|t[Gravar Luvas - Tiro Quimérico] |cRXP_WARN_em Teldrassil sozinho|r
    .train 410121,1
    .xp >3,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >>Viagem para Teldrassil
    .train 410121,1
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,56.694,31.485
    .subzone 25 >>Entre na Caverna Shadowthread
    .train 410121,1
step
    #optional
    #requires ShadowCave1
    #completewith Rune
    .goto 1438,56.137,24.971,15,0
    .goto 1438,55.785,25.341,15,0
    .goto 1438,56.137,24.971,15,0
    .goto 1438,56.358,25.242,20,0
    .goto 1438,56.654,26.430,50,0
    .goto 1438,56.874,26.323,10 >>Viagem para o |cRXP_ENEMY_Githyiss the Torpe|r dentro
    .train 410121,1
step
    #label Rune
    .goto Teldrassil,56.68,26.12
    >>Abate |cRXP_ENEMY_Githyiss the Torpe|r. Saque-a para obter |T134419:0|t|cRXP_LOOT_[Runa da Quimera]|r
    .collect 206168,1 -- Rune of the Chimera (1)
    .mob Githyiss the Vile
    .train 410121,1
step
    .train 410121 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa da Quimera]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Tiro Quimérico]
    .use 206168
    .itemcount 206168,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Tiro Explosivo - 5 (Dun Morogh)
#title Tiro Explosivo

step
    +|cRXP_WARN_Você deve estar no mínimo no nível 5 para obter|r |T133816:0|t[Gravar Luvas - Tiro Explosivo] |cRXP_WARN_em Dun Morogh sozinho|r
    .train 410123,1
    .xp >5,1
step
    #completewith Rune
    .zone Dun Morogh >>Vá para Dun Morogh
    .train 410123,1
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
    >>Abate |cRXP_ENEMY_Fyodi|r. Saque-o para obter |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r
    >>|cRXP_WARN_Embora |cRXP_ENEMY_Fyodi|r apareça como uma élite, seus valores de vida, dano e armadura são os de um inimigo padrão|r
    >>|cRXP_WARN_Tenha cuidado enquanto ele conjura|r |T132337:0|t[Investida] |cRXP_WARN_(Instantâneo: Aumenta velocidade de movimento por 3 segundos, causando 35-80 de dano corpo a corpo ao acertar. Apenas lançável à distância)|r
    >>|cRXP_WARN_NOTA: O|r |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r |cRXP_WARN_também pode cair de todo inimigo raro em Dun Morogh, assim como |cRXP_ENEMY_Ragash|r, |cRXP_ENEMY_Ronhagarra|r, e|r |cRXP_ENEMY_Velho Barbafria|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Fyodi
    .train 410123,1
    .xp >10,1
step
    #label Rune
    .goto 1426,62.094,47.154,40,0
    .goto 1426,62.434,48.989,40,0
    .goto 1426,62.538,46.195
    >>Abate |cRXP_ENEMY_Ragash|r. Saque-o para obter |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r
    >>|cRXP_WARN_NOTA: O|r |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r |cRXP_WARN_também pode cair de todo inimigo raro em Dun Morogh, assim como |cRXP_ENEMY_Fyodi|r, |cRXP_ENEMY_Ronhagarra|r, e|r |cRXP_ENEMY_Velho Barbafria|r
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Vagash
    .train 410123,1
    .xp <10,1
step
    .train 410123 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Tiro Explosivo]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Tiro Explosivo - 2 (Durotar)
#title Tiro Explosivo


    --Rune of Explosive Shot

step
    #season 2
    .goto Durotar,40.60,66.80
    >>Abate |cFFFF5722Sarkoth|r. Saque-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Tiro Explosivo|r]
    .collect 206169,1 --Rune of Explosive Shot (1)
    .mob Sarkoth
    .train 410123,1
step
    #season 2
    .train 410123 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Tiro Explosivo|r]
    .use 206169
    .itemcount 206169,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Tiro Quimérico - 2 (Durotar)
#title Tiro Quimérico


    --Rune of Chimera Shot

step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cFF00FF25Jen'shan|r
    .accept 77590 >>Aceite Terreno Acidentado << Troll Hunter
    .accept 77584 >>Aceite Caçada pela Runa << Orc Hunter
    .target Jen'shan
step
    #season 2
#loop
	.line Durotar,43.26,58.28,42.81,58.41,41.90,58.35,41.97,59.20,41.36,60.35,40.66,61.27,40.07,61.35,39.42,61.29,39.46,62.17,39.55,63.10,40.13,64.04,40.84,64.06,40.74,65.86,39.93,66.03,40.04,66.99,40.09,67.66,40.13,68.50,40.72,68.55,41.30,67.84,41.37,66.72,41.89,66.05,41.27,65.71,41.36,64.07,41.33,63.12,41.35,61.98,41.49,61.25,41.90,60.24,42.51,59.34,43.08,59.62,43.91,59.33,45.15,59.46,45.81,59.30,45.85,60.34,46.46,61.11,47.09,62.24,47.08,63.15,47.14,64.08,47.58,64.04,47.08,63.15,47.09,62.24,46.90,61.15,46.98,60.18,47.07,59.34,46.47,58.28,45.81,59.30,45.15,59.46,43.91,59.33,43.26,58.28
	.goto Durotar,43.26,58.28,25,0
	.goto Durotar,42.81,58.41,25,0
	.goto Durotar,41.90,58.35,25,0
	.goto Durotar,41.97,59.20,25,0
	.goto Durotar,41.36,60.35,25,0
	.goto Durotar,40.66,61.27,25,0
	.goto Durotar,40.07,61.35,25,0
	.goto Durotar,39.42,61.29,25,0
	.goto Durotar,39.46,62.17,25,0
	.goto Durotar,39.55,63.10,25,0
	.goto Durotar,40.13,64.04,25,0
	.goto Durotar,40.84,64.06,25,0
	.goto Durotar,40.74,65.86,25,0
	.goto Durotar,39.93,66.03,25,0
	.goto Durotar,40.04,66.99,25,0
	.goto Durotar,40.09,67.66,25,0
	.goto Durotar,40.13,68.50,25,0
	.goto Durotar,40.72,68.55,25,0
	.goto Durotar,41.30,67.84,25,0
	.goto Durotar,41.37,66.72,25,0
	.goto Durotar,41.89,66.05,25,0
	.goto Durotar,41.27,65.71,25,0
	.goto Durotar,41.36,64.07,25,0
	.goto Durotar,41.33,63.12,25,0
	.goto Durotar,41.35,61.98,25,0
	.goto Durotar,41.49,61.25,25,0
	.goto Durotar,41.90,60.24,25,0
	.goto Durotar,42.51,59.34,25,0
	.goto Durotar,43.08,59.62,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.85,60.34,25,0
	.goto Durotar,46.46,61.11,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.14,64.08,25,0
	.goto Durotar,47.58,64.04,25,0
	.goto Durotar,47.08,63.15,25,0
	.goto Durotar,47.09,62.24,25,0
	.goto Durotar,46.90,61.15,25,0
	.goto Durotar,46.98,60.18,25,0
	.goto Durotar,47.07,59.34,25,0
	.goto Durotar,46.47,58.28,25,0
	.goto Durotar,45.81,59.30,25,0
	.goto Durotar,45.15,59.46,25,0
	.goto Durotar,43.91,59.33,25,0
	.goto Durotar,43.26,58.28,25,0
    >>Abate |cFFFF5722Escorpídeos Trabalhadores|r. Saque-os para |T134419:0|t[|cRXP_FRIENDLY_Runa de The Chimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Scorpid Worker
    .train 410121,1
step
    #season 2
    .train 410121 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de The Chimera|r]
    .use 206168
    .itemcount 206168,1
step << !Tauren
    #season 2
    .goto Durotar,42.84,69.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cFF00FF25Jen'shan|r
    .turnin 77590 >>Entregue Terreno Acidentado << Troll Hunter
    .turnin 77584 >>Entregue Caçada da Runa << Orc Hunter
    .target Jen'shan
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Tiro Quimérico - 2 (Mulgore)
#title Tiro Quimérico


    --Rune of Chimera Shot

step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .accept 77649 >>Aceite A Força de um Caçador
    .target Lanka Farshot
step
    #season 2
    .goto Mulgore,63.81,76.65,40,0
    .goto Mulgore,62.92,76.91,40,0
    .goto Mulgore,61.31,77.22,40,0
    .goto Mulgore,61.58,78.89,40,0
    .goto Mulgore,62.53,79.52,40,0
    .goto Mulgore,64.20,79.01,40,0
    .goto Mulgore,65.82,78.13,40,0
    .goto Mulgore,63.93,78.34
    >>Mate os |cRXP_ENEMY_Bristleback Battleboars|r. Saqueie-os para |T134419:0|t[|cRXP_FRIENDLY_Runa da Quimera|r]
    .collect 206168,1 --Rune of the Chimera (1)
    .mob Bristleback Battleboar
    .train 410121,1
step
    #season 2
    .train 410121 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de The Chimera|r]
    .use 206168
    .itemcount 206168,1
step << Tauren
    #season 2
    .goto Mulgore,44.26,75.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lanka|r
    .turnin 77649 >>Entregue A Força de um Caçador
    .target Lanka Farshot
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Mestre Atirador Perito - 6 (Durotar)
#title Mestre Atirador Perito


    --Rune of Master Marksman

step
    #season 2
    .goto Durotar,40.61,52.19
    >>Use a |T132212:0|t[Marca do Caçador] no |cRXP_ENEMY_Rustling Arbusto|r
    >>Mate |cRXP_ENEMY_Razormane Poacher|r que aparece. Saqueie |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Mestre Atirador Perito - 6 (Mulgore)
#title Mestre Atirador Perito


    --Rune of Master Marksman

step
    #season 2
    .goto Mulgore,59.02,54.36
    >>Use a |T132212:0|t[Marca do Caçador] no |cRXP_ENEMY_Rustling Arbusto|r
    >>Mate o |cRXP_ENEMY_Venture Co. Poacher|r que aparece. Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Venture Co. Poacher
    .train 410113,1
step
    #season 2
    .train 410113 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    .use 206155
    .itemcount 206155,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Mestre Atirador Perito - 6 (Dun Morogh)
#title Mestre Atirador Perito


    --Rune of Master Marksman

step
    #season 2
    .goto Dun Morogh,28.852,49.859
    >>Use a |T132212:0|t[Marca do Caçador] no |cRXP_ENEMY_Rustling Arbusto|r
    >>Mate |cRXP_ENEMY_Razormane Poacher|r que aparece. Saqueie |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Razormane Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Mestre Atirador Perito - 6 (Teldrassil)
#title Mestre Atirador Perito


    --Rune of Master Marksman

step
    #season 2
    .goto Teldrassil,46.6,46.3
    >>Use a |T132212:0|t[Marca do Caçador] no |cRXP_ENEMY_Rustling Arbusto|r
    >>Mate o |cRXP_ENEMY_Larápio Satíricon|r que surge. Saque-o para uma |T134419:0|t[|cRXP_FRIENDLY_Runa de Precisão|r]
    .collect 206155,1 --Rune of Marksmanship (1)
    .mob Rustling Bush
    .mob Fallenroot Poacher
    .train 410113,1
step
    #season 2
    .cast 402265 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Rune of Precisão|r]
    .use 206155
    .train 410113,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Flanquear - 6 (Mulgore)
#title Flanquear


    --Rune of Flanking

step
    #season 2
    .goto Mulgore,41.41,66.32,60,0
    .goto Mulgore,38.66,66.29,60,0
    .goto Mulgore,37.63,63.00,60,0
    .goto Mulgore,36.74,58.53
    >>Mate os |cRXP_ENEMY_Plainstriders|r e os |cRXP_ENEMY_Swoops|r. Saqueie-os para |T134025:0|t[|cRXP_LOOT_Mulgore Bird Carne|r]
    .collect 205961,1 --Mulgore Bird Meat (1)
    .mob Elder Plainstrider
    .mob Adult Plainstrider
    .mob Swoop
    .mob Wiry Swoop
    .mob Taloned Swoop
    .train 425762,1
step
    #season 2
    .goto Mulgore,35.22,57.42
    >>Usar o |T134025:0|t[|cRXP_LOOT_Mulgore Bird Carne|r] no cadáver para invocar |cRXP_ENEMY_Mokwa|r
    >>Mate-o e saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueamento|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Mokwa
    .use 205961
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueamento|r] |cRXP_WARN_para treinar|r |T132175:0|t[Ataque Flanqueante]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Flanquear - 6 (Durotar)
#title Flanquear


    --Rune of Flanking

step
    #season 2
    .goto Durotar,53.43,48.62,70,0
    .goto Durotar,51.77,56.01,70,0
    .goto Durotar,54.04,67.14
    >>Mate os |cRXP_ENEMY_Dire Mottled Boars|r. Saqueie-os para obter |T134026:0|t[|cRXP_LOOT_Carne de Porco de Durotar|r]
    .collect 207590,1 --Durotar Pig Meat (1)
    .mob Dire Mottled Boar
    .train 425762,1
step
    #season 2
    .goto Durotar,68.67,71.68
    .use 207590 >>Usar o |T134026:0|t[|cRXP_LOOT_Carne de Porco de Durotar|r] no cadáver para convocar |cRXP_ENEMY_Raluk|r
    >>Mate-o e saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueamento|r]
    .collect 205979,1 --Rune of Flanking (1)
    .mob Raluk
    .train 425762,1
step
    #season 2
    .train 425762 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueamento|r] |cRXP_WARN_para treinar|r |T132175:0|t[Ataque Flanqueante]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Trinchar - 10 (Durotar)
#title Trinchar


    --Rune of Carve

step
    #season 2
    #completewith n`t
    +|cRXP_WARN_Você precisa ter aprendido|r |T132164:0|t[Domar Fera] |cRXP_WARN_para poder obter esta runa|r
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
    >>Mate os |cRXP_ENEMY_Razormane Quilboars|r. Saqueie-os para obter |T134743:0|t[|cRXP_LOOT_Feromônio de Áspide|r]
    .collect 207631,1 --Adder Pheromone (1)
    .mob Razormane Quilboar
    .mob Razormane Scout
    .train 425758,1
step
    #season 2
    #completewith next
    +Encontre um |cRXP_ENEMY_Áspide|r (criatura). Usar seu |T134743:0|t[|cRXP_LOOT_Feromônio de Áspide|r] e lance |T132164:0|t[Domar Fera]
    >>|cRXP_WARN_Eles podem ser encontrados mais facilmente perto de Razor Hill|r
    .use 207631
    .unitscan Adder
step
    #season 2
    .goto Durotar,52.15,44.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com [[Razzil] <[Snake Charmer]>] <[Snake Charmer]>
    >>Entregue a |cRXP_ENEMY_Áspide|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Trinchar|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Razzil
    .train 425758,1
step
    #season 2
    .train 425758 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Trinchar|r]
    .use 206032
    .itemcount 206032,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Trinchar - 10 (Mulgore)
#title Trinchar


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_Você precisa ter aprendido|r |T132164:0|t[Domar Fera] |cRXP_WARN_para poder obter esta runa|r
step
    #season 2
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0,90,0
    .goto Mulgore,53.5,73.0,90,0
    .goto Mulgore,48.3,72.0
    >>Mate os |cRXP_ENEMY_Palemane Gnolls|r. Saqueie-os para obter |T134419:0|t[|cRXP_LOOT_Almíscar de Cão-da-pradaria|r]
    .collect 205995,1 --Prairie Dog Musk (1)
    .unitscan Snagglespear
    .mob Palemane Tanner
    .mob Palemane Skinner
    .mob Palemane Poacher
    .train 425758,1
step
    #season 2
    #completewith next
    +Encontre um |cRXP_ENEMY_Cão-da-pradaria|r (criatura). Usar seu |T134419:0|t[|cRXP_LOOT_Almíscar de Cão-da-pradaria|r] e lance |T132164:0|t[Domar Fera]
    >>|cRXP_WARN_Eles podem ser encontrados mais facilmente ao longo da estrada, apenas ao sul/leste de Bloodhoof Village|r
    .use 205995
    .unitscan Prairie Dog
step
    #season 2
    .goto Mulgore,46.19,60.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takoda|r
    >>Entregue o |cRXP_ENEMY_Cão-da-pradaria|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Trinchar|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Takoda Sunmane
    .train 425758,1
step
    #season 2
    .train 425758 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Trinchar|r]
    .use 206032
    .itemcount 206032,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Trinchar - 10 (Dun Morogh)
#title Trinchar


    --Rune of Carve
step
    #season 2
    #completewith next
    +|cRXP_WARN_Você precisa ter aprendido|r |T132164:0|t[Domar Fera] |cRXP_WARN_para poder obter esta runa|r
step
    #season 2
    #loop
    .goto Dun Morogh,68.2,56.2,20,0
    .goto Dun Morogh,68.8,58.2,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,71.0,58.0,20,0
    .goto Dun Morogh,72.6,52.6,20,0
    >>Mate os |cRXP_ENEMY_Rockjaw Troggs|r. Saqueie-os para obter |T134419:0|t[|cRXP_LOOT_Almíscar de Coelho.|r]
    .collect 208180,1 --Rabbit Musk (1)
    .mob Rockjaw Skullthumper
    .mob Rockjaw Bonesnapper
    .mob Rockjaw Backbreaker
    .mob Rockjaw Ambusher
    .train 425758,1
step
    #season 2
    #completewith next
    .goto Dun Morogh,44.4,56.2,20,0
    .goto Dun Morogh,44.8,59.8,20,0
    .goto Dun Morogh,47.4,54.4,20,0
    .goto Dun Morogh,49.2,46.0,20,0
    .goto Dun Morogh,47.0,44.6,20,0
    .goto Dun Morogh,46.8,47.8
    >>Usar |T134419:0|t[Almíscar de Coelho] em um |cRXP_ENEMY_Coelho|r |cRXP_WARN_Não dispense seu Mascote atual|r
    .use 208180
    .unitscan Rabbit
step
    #season 2
    .goto Dun Morogh,63.40,50.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Toby|r
    >>Entregue o |cRXP_ENEMY_Coelho|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Trinchar|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Toby
    .train 425758,1
step
    #season 2
    .cast 402265 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Trinchar|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Trinchar - 10 (Teldrassil)
#title Trinchar


    --Rune of Carve

step
    #season 2
    #completewith next
    +|cRXP_WARN_Você precisa ter aprendido|r |T132164:0|t[Domar Fera] |cRXP_WARN_para poder obter esta runa|r
step
    #season 2
    .goto Teldrassil,46.2,51.2,20,0
    .goto Teldrassil,46.8,54.6,20,0
    .goto Teldrassil,48.8,55.4,20,0
    .goto Teldrassil,71.0,58.0,20,0
    .goto Teldrassil,44.8,61.2
    >>Mate os |cRXP_ENEMY_Gnarlpines|r. Saqueie-os para obter |T134419:0|t[|cRXP_LOOT_Almíscar de Cervo|r]
    .collect 208607,1 --Deer Musk (1)
    .train 425758,1
    .mob Gnarlpine Augur
    .mob Gnarlpine Pathfinder
    .mob Gnarlpine Totemic
    .mob Gnarlpine Ambusher
    .mob Gnarlpine Defender
    .mob Gnarlpine Avenger
    .mob Gnarlpine Shaman
step
    #season 2
    #completewith next
    .goto Teldrassil,42.2,71.6,20,0
    .goto Teldrassil,43.2,74.2,20,0
    .goto Teldrassil,47.6,74.0,20,0
    .goto Teldrassil,53.4,77.0,20,0
    .goto Teldrassil,54.8,58.4
    >>Usar |T134419:0|t[Almíscar de Cervo] em um |cRXP_ENEMY_Cervo|r |cRXP_WARN_Não dispense seu Mascote atual|r
    .use 208607,1
    .unitscan Deer
step
    #season 2
    .goto Teldrassil,39.8,9.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Relaeron|r em |cFFfa9602Darnassus|r
    >>Entregue o |cRXP_ENEMY_Cervo|r para receber |T134419:0|t[|cRXP_FRIENDLY_Runa de Trinchar|r]
    .collect 206032,1 --Rune of Carve (1)
    .target Relaeron
    .train 425758,1
step
    #season 2
    .cast 402265 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Runa de Trinchar|r]
    .use 206032
    .train 425758,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Domínio das Feras - 16 (The Barrens)
#title Domínio das Feras

    --Rune of Beast Mastery

step
    #season 2
    #completewith next
    +|cRXP_WARN_Você precisa ter aprendido|r |T135813:0|t[Armadilha Imolante] |cRXP_WARN_ou qualquer outra armadilha para poder obter esta runa|r
step
    #season 2
    .goto The Barrens,44.60,55.51,40,0
    .goto The Barrens,44.05,56.20,40,0
    .goto The Barrens,43.12,57.37
    .line The Barrens,44.60,55.51,44.60,55.51,43.12,57.37
    >>Usar a |T135813:0|t[Armadilha Imolante] no caminho de patrulha do |cRXP_ENEMY_Guepardo Rondante|r para remover seu buff
    >>Abate-o e saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Patrolling Cheetah
    .train 410110,1
step
    #season 2
    .train 410110 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r] |cRXP_WARN_para treinar|r |T132270:0|t[Domínio das Feras]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Domínio das Feras - 16 (Silverpine)
#title Domínio das Feras

    --Rune of Beast Mastery

step
    #season 2
    .goto Silverpine Forest,41.37,19.64,50,0
    .goto Silverpine Forest,41.60,21.65,50,0
    .goto Silverpine Forest,42.36,23.77,50,0
    .goto Silverpine Forest,44.67,24.84,50,0
    .goto Silverpine Forest,46.08,26.62,50,0
    .goto Silverpine Forest,41.60,21.65
    >>Kill |cRXP_ENEMY_Ferocious Grizzled Bears|r until a |cRXP_ENEMY_Grizzled Protector|r (16 elite) spawns
    >>Abate-o e saqueie-o para |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r]
    .collect 208701,1 --Rune of Beast Mastery (1)
    .mob Ferocious Grizzled Bear
    .mob Grizzled Protector
step
    #season 2
    .train 410110 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r] |cRXP_WARN_para treinar|r |T132270:0|t[Domínio das Feras]
    .use 208701
    .itemcount 208701,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Treinamento de Franco-atirador - 18 (Costa Negra)
#title Treinamento de Franco-atirador


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Darkshore >>Vá para a Costa Negra
step
    #season 2
    .goto 1439,44.081,20.739
    >>Saque o |T135129:0|t[Arpão Nodoso] no olho do esqueleto
    .collect 209047,1 --Gnarled Harpoon (1)
    .train 416091,1
step
    #completewith next
    .goto 1439,44.081,20.739
    .cast 422397 >>|cRXP_WARN_Use o|r |T135129:0|t[Arpão Nodoso] |cRXP_WARN_em |cRXP_ENEMY_Paxnozz|r para reduzir a saúde máxima dele para 743|r
    .train 416091,1
step
    #season 2
    #loop
    .goto Darkshore,48.0,18.0,0
    .goto Darkshore,47.6,13.2,0
    .goto Darkshore,50.4,12.0,0
    .goto Darkshore,48.8,16.0,0
    .goto Darkshore,48.0,18.0,40,0
    .goto Darkshore,47.6,13.2,40,0
    .goto Darkshore,50.4,12.0,40,0
    .goto Darkshore,48.8,16.0,40,0
    >>Abate-o. Saque-o para a |T134419:0|t|cRXP_LOOT_[Runa do Franco-atirador]|r
    >>|cRXP_WARN_Tenha cuidado pois ele é uma élite de nível 20|r
    .collect 208777,1 --Rune of the Sniper (1)
    .train 416091,1
    .use 209047
    .mob Paxnozz
step
    #season 2
    .train 416091 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Franco-atirador|r] |cRXP_WARN_para treinar|r |T132212:0|t[Treinamento de Franco-atirador]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Treinamento de Franco-atirador - 16 (Cerro Oeste)
#title Treinamento de Franco-atirador


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Westfall >>Viaje até Cerro Oeste
step
    #season 2
    #loop
    .goto Westfall,51.2,47.0,20,0
    .goto Westfall,50.2,48.6,20,0
    .goto Westfall,51.6,55.6,20,0
    >>Mate o |cRXP_ENEMY_Batedor Défias|r. Saqueie-o para a |T134419:0|t[|cRXP_LOOT_Rune of the Sniper|r]
    .collect 208777,1
    .train 416091,1
    .mob Defias Scout
step
    #season 2
    .train 416091 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Franco-atirador|r] |cRXP_WARN_para treinar|r |T132212:0|t[Treinamento de Franco-atirador]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Treinamento de Franco-atirador - 16 (Loch Modan)
#title Treinamento de Franco-atirador


    --Rune of the Sniper

step
    #season 2
    #completewith next
    .train 416091,1
    .zone Loch Modan >>Voe para Loch Modan
step
    #season 2
    #loop
    .goto Loch Modan,55.6,52.2,20,0
    .goto Loch Modan,55.8,54.4,20,0
    .goto Loch Modan,54.2,56.8,20,0
    .goto Loch Modan,53.8,54.4,20,0
    >>Abate |cRXP_ENEMY_Rizo|r. Saque-o para a |T134419:0|t[|cRXP_LOOT_Runa do Franco-atirador|r]
    .collect 208777,1
    .train 416091,1
    .mob Kackle
step
    #season 2
    .train 416091 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Franco-atirador|r] |cRXP_WARN_para treinar|r |T132212:0|t[Treinamento de Franco-atirador]
    .use 208777
    .itemcount 208777,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Flanquear - 7 (Dun Morogh)
#title Flanquear


    --Rune of Flanking

step
    #season 2
    #loop
    .goto Dun Morogh,43.4,65.6,20,0
    .goto Dun Morogh,49.2,61.4,20,0
    .goto Dun Morogh,51.0,51.8,20,0
    .goto Dun Morogh,45.8,50.0,20,0
    .goto Dun Morogh,42.6,60.2,20,0
    .goto Dun Morogh,38.2,60.6,20,0
    .train 425762,1
    >>Mate os |cRXP_ENEMY_Javalis|r. Saque-os para |T134026:0|t[Dun Morogh Pig Carne]
    .collect 208192,1
    .mob Crag Boar
    .mob Large Crag Boar
    .mob Elder Crag Boar
    .mob Scarred Crag Boar
step
    #season 2
    .train 425762,1
    .goto Dun Morogh,37.78,42.55
    >>Usar |T134026:0|t[Dun Morogh Porco Carne]| perto do cadáver em |cFFfa9602Iceflow Cavern|r para invocar |cRXP_ENEMY_Jorul|r
    >>Abate |cRXP_ENEMY_Jorul|r e saque-o para |T135142:0|t|cRXP_LOOT_[Runa de Flanqueamento]|r
    .collect 205979,1
    .use 208192
    .mob Jorul
step
    #season 2
    .train 425762 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueamento|r] |cRXP_WARN_para treinar|r |T132175:0|t[Ataque Flanqueante]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Flanquear - 7 (Teldrassil)
#title Flanquear


    --Rune of Flanking
step
    #season 2
    #loop
    .goto Teldrassil,42.6,52.6,20,0
    .goto Teldrassil,39.8,53.2,20,0
    .goto Teldrassil,39.4,36.2,20,0
    .goto Teldrassil,40.8,31.6,20,0
    .goto Teldrassil,46.6,31.2,20,0
    .train 425762,1
    >>Abate |cRXP_ENEMY_Aves|r em |cFFfa9602Teldrassil|r e saque-os para |T134025:0|t[Teldrassil Ave Carne]
    .collect 208608,1
    .mob Strigid Owl
    .mob Strigid Screecher
    .mob Strigid Hunter
step
    #season 2
    .train 425762,1
    .goto Teldrassil,48.3,31.4
    >>Usar |T134025:0|t[Teldrassil Bird Carne] perto do cadáver para invocar |cRXP_ENEMY_Mowgh|r
    >>Mate |cRXP_ENEMY_Mowgh|r e saqueie-o para obter |T134419:0|t|cRXP_LOOT_[Runa de Flanqueamento]|r
    .collect 205979,1
    .use 208608
    .mob Mowgh
step
    #season 2
    .train 425762 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Flanqueamento|r] |cRXP_WARN_para treinar|r |T132175:0|t[Ataque Flanqueante]
    .use 205979
    .itemcount 205979,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#title Expor Fraqueza
#name Expor Fraqueza - 40 (Azeroth)


-- Expose Weakness

step
    #optional
    .train 426445,1
    +|cRXP_WARN_Você deve estar em pelo menos nível 32 antes de poder obter a|r |T132353:0|t[Expor Fraqueza] |cRXP_WARN_runa|r
    .xp >26,1
step
    #completewith next
    .zone Badlands >>Viaje para Ermos
step
    .goto Badlands,66.6,23.4,0
    .goto Badlands,51.2,69.4,0
    .goto Badlands,29.6,56.8,0
    .goto Badlands,62.6,69.2,0
    .goto Badlands,9.6,77.6,0
    .goto Badlands,66.6,23.4,50,0
    .goto Badlands,51.2,69.4,50,0
    .goto Badlands,29.6,56.8,50,0
    .goto Badlands,62.6,69.2,50,0
    .goto Badlands,9.6,77.6
    .use 211269 >>Mate qualquer |cRXP_ENEMY_Ogro Arrota-pó|r ou |cRXP_ENEMY_Trogg da Abóbada de Pedra|r. Saqueie-os para obter o |T237388:0|t[|cRXP_LOOT_Desenho Primitivo|r]
    >>|cRXP_WARN_Use a|r |T237388:0|t[|cRXP_LOOT_Desenho Primitivo|r] |cRXP_WARN_para iniciar a missão|r
    >>|cRXP_WARN_Suas localizações estão marcadas no seu mapa|r
    .collect 211269,1,78823,1 --Primitive Drawing
    .accept 78823 >>Aceite Terror dos Céus do Deserto
    .mob Dustbelcher Ogre
    .mob Dustbelcher Brute
    .mob Dustbelcher Mauler
    .mob Dustbelcher Mystic
    .mob Dustbelcher Shaman
    .mob Dustbelcher Warrior
    .mob Dustbelcher Wyrmhunter
    .mob Stonevault Bonesnapper
    .mob Stonevault Shaman
    .train 410114,1
step
    #optional
    #completewith next
    .zone Stranglethorn Vale >>Viagem para Stranglethorn Vale
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rosarães Guima|r
    .turnin 78823 >>Entregue Terror dos Céus do Deserto
    .accept 78830 >>Aceite Terror dos Céus do Deserto
    .target Hemet Nesingwary
    .train 410114,1
step
    #loop
    .goto Stranglethorn Vale,43.8,18.6,20,0
    .goto Stranglethorn Vale,45.2,19.6,20,0
    .goto Stranglethorn Vale,44.2,22.0,20,0
    .goto Stranglethorn Vale,45.6,23,0,20,0
    .use 211272 >>|cRXP_WARN_Use a|r |T132599:0|t[Gaiola de Isca Vazia] |cRXP_WARN_em uma criatura |cRXP_ENEMY_Tarântula-arbórea|r em STV. Elas são encontradas no topo de tocos de árvore|r
    >>|cRXP_WARN_Você também pode usá-la em qualquer criatura que vir no mundo|r
    .collect 211273,1 --Trapped Critter
    .mob Arbor Tarantula
    .mob Rat
    .mob Black Rat
    .mob Chicken
    .train 410114,1
step
    #completewith next
    .zone Badlands >>Viaje para Ermos
    .train 410114,1
step
    #completewith next
    .goto Badlands,22.352,67.733
    +Clique em |cRXP_PICK_Large Ninho|r no topo da montanha para invocar |cRXP_ENEMY_Gharrik|r
    .itemcount 211272,<1
step
    .goto Badlands,22.352,67.733
    >>Mate |cRXP_ENEMY_Gharrik|r. Saqueie-a para obter o |cRXP_LOOT_Crimson Trophy Quill|r
    .complete 78830,1 --Crimson Trophy Quill (1)
    .mob Gharrik
    .train 410114,1
step
    #completewith next
    .zone Stranglethorn Vale >>Viagem para Stranglethorn Vale
    .train 410114,1
step
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rosarães Guima|r
    .turnin 78830 >>Entregue Terror dos Céus do Deserto
    .target Hemet Nesingwary
    .train 410114,1
step
    #season 2
    .train 410114 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Expor Fraqueza|r] |cRXP_WARN_para treinar|r |T132353:0|t[Expor Fraqueza]
    .use 211301
    .itemcount 211301,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#title Tiro firme
#name Tiro firme - 30 (Planalto Arathi)

step
    #completewith next
    .zone Arathi Highlands >>Vá para Planalto Arathi
step
    .train 410109,1
    #loop
    .goto Arathi Highlands,67.8,66.0,0
    .goto Arathi Highlands,69.4,63.2,25,0
    .goto Arathi Highlands,67.8,66.0,25,0
    .goto Arathi Highlands,68.4,68.2,25,0
    >>Mate |cRXP_ENEMY_Presacúlea|r. Saqueie-a pela |T134419:0|t[|cRXP_FRIENDLY_Runa de Tiro firme|r]
    >>|cRXP_ENEMY_Presacúlea|r |cRXP_WARN_é um peixe que nada no lago de Cascasseca Village|r
    .collect 213122,1
    .mob Needletooth
step
    .train 410109 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Tiro firme|r] |cRXP_WARN_para aprender|r |T132213:0|t[Tiro firme]
    .use 213122
    .itemcount 213122,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#title Dual-Wield Specialization
#name Dual-Wield Specialization - 32 (Stranglethorn Vale)

step
    #optional
    .train 410116,1
    +|cRXP_WARN_You must be at least level 32 before you can acquire the|r |T132147:0|t[Dual Wield Specialization] |cRXP_WARN_rune|r
    .xp >32,1
step
    .train 410116,1
    #optional
    .train 1543 >>|cRXP_WARN_You must train|r |T135815:0|t[Flare] |cRXP_WARN_to acquire the|r |T132147:0|t[Dual Wield Specialization] |cRXP_WARN_rune|r
step
    #completewith next
    .zone Stranglethorn Vale >>Viagem para Stranglethorn Vale
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    +|cRXP_WARN_Vá até a localização da seta e corra por perto até que o efeito chamado|r |T132118:0|t[Perigo!] |cRXP_WARN_apareça em você|r
    .aura 435548
    .aura 435428
    .aura 435546
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    #completewith next
    .cast 1543 >>|cRXP_WARN_Use|r |T135815:0|t[Sinalizador] |cRXP_WARN_para revelar o|r |cRXP_ENEMY_Bloodscalp Guerrilla|r
    .usespell 1543
step
    .train 410116,1
    .goto Stranglethorn Vale,31.84,15.61
    >>Mate o |cRXP_ENEMY_Bloodscalp Guerrilla|r. Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa do Desmanchador|r]
    .collect 213126,1
    .mob Bloodscalp Guerrilla
step
    .itemcount 213126,1
    .use 213126
    .train 410116 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of the Scrapper|r] |cRXP_WARN_to train|r |T132147:0|t[Dual Wield Specialization]
]])

RXPGuides.RegisterGuide([[
#classic
<< Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Fogo Concentrado
#name Fogo Concentrado - 40 (Garganta Abrasadora)

step
    #completewith next
    +|cRXP_WARN_Você terá que matar um inimigo de nível 45 em uma área hostil para obter esta runa. Certifique-se de trazer ajuda se você for de um nível inferior|r
    .xp <45,1
step
    .goto Searing Gorge,53.10,55.85
    >>Caminhe cuidadosamente ao longo do galho de árvore em direção ao ninho de pássaro. Pegue o |cRXP_PICK_Ovo do Corvo da Tormenta|r do ninho.
    .collect 221544,1 --Stormcrow Egg
step
    .goto 1427/0,-1532.400,-6953.600
    >>Volte ao longo do galho de árvore. Espere alguns segundos para o |cRXP_ENEMY_Enraivecido Corvo da Tormenta|r aparecer. Mate-o e saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Fogo Focalizado|r]
    .collect 221445,1
    .mob Enraged Stormcrow
    .train 431601,1
step
    .itemcount 221445,1
    .use 221445
    .train 431601 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Fogo Focalizado|r] |cRXP_WARN_para treinar|r |T135548:0|t[Fogo Concentrado]
 ]])

 RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group Guia Runas e Livros RestedXP
    #subgroup Braçadeiras
    #title Fúria do Raptor
    #name Fúria do Raptor - 40 (Tanaris)

step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
step
    #loop
    .goto 1446/1,-3973.700,-7372.900,0
    .goto 1446/1,-3777.100,-7358.200,0
    .goto 1446/1,-3290.200,-7330.700,0
    .goto 1446/1,-3563.000,-7352.400,0
    .goto 1446/1,-3386.400,-7337.400,0
    .goto 1446/1,-3290.200,-7330.700,0
    >>Mate |cRXP_ENEMY_Zopilote|r. Saque-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa do Raptor|r]
    >>|cRXP_ENEMY_Zopilote|r |cRXP_WARN_é um pássaro necrófago que patrulha de leste a oeste numa grande área que vai do sul de Posto Silitriste até Gadgetzan|r
    >>DICA: Em vez de correr por aí, você pode usar |T132172:0|t[|cRXP_FRIENDLY_Olho de Águia|r] para investigar a posição dele. Se você não conseguir encontrá-lo, ele provavelmente está morto e deve reaparecer perto do ponto marcado com "2+" no seu mapa
    .collect 220687,1
    .unitscan Zopilote
    .train 416093,1
step
    .train 416093 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Raptor|r] |cRXP_WARN_para treinar|r |T132253:0|t[Fúria do Raptor]
    .use 2220687
    .itemcount 220687,1

    ]])
RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group Guia Runas e Livros RestedXP
    #subgroup Capacete
    #title Reflexos Felinos
    #name Reflexos Felinos - 40 (Feralas)

step
    #completewith next
    .zone Feralas >>Viaje para Feralas
step
    +|cRXP_WARN_Você precisará de um dos dois para adquirir esta runa: |T133951:0|t|cRXP_PICK_Pão de Banana Macio|r ou |T133980:0|t|cRXP_PICK_Tel'Abim Banana|r. |cRXP_FRIENDLY_Mardrack Fonteverde|r vende o pão em Feathermoon para Aliança. |cRXP_FRIENDLY_Estalajadeiro Greul|r vende em Camp Mojache para Horda.
    .itemcount 4601,<1 --Soft Banana Bread
    .itemcount 4537,<1 --Tel'Abim Banana
    .target Innkeeper Greul
    .target Mardrack Greenwell
    .train 416083,1
step
    >>Vá para a caverna Yeti em The High Wilderness
    .goto 1444/1,1599.300,-4977.800,10
    .train 416083,1
step
    .goto 1444/1,1778.900,-5179.100,
    >>Pegue o caminho do meio na encruzilhada depois de entrar na segunda caverna. No fundo dela você encontrará um |cRXP_FRIENDLY_Groddoc Filhote|r
    .gossip 222376,1 >>Sucesso o diálogo dos macacos para alimentá-lo com |T133951:0|t|cRXP_PICK_Pão de Banana Macio|r ou |T133980:0|t|cRXP_PICK_Tel'Abim Banana|r. Ele irá criar uma versão dele que segue você.
    .target Groddoc Infant
    .train 416083,1
step
    .goto 1444/1,1330.900,-5078.100
    >>Escorte o |cRXP_FRIENDLY_Groddoc Filhote|r para uma |cRXP_FRIENDLY_Groddoc Matriarch|r marcada no seu mapa. Cuidado, o filhote é agressivo e vai atacar inimigos próximos, incluindo jogadores da facção inimiga.
    .gossip 222406,1 >>Quando chegar lá, fale com a Matriarca e complete seu diálogo para receber |T134419:0|t[|cRXP_FRIENDLY_Runa do Gato da Selva|r]
    .collect 220791,1 -- Rune of the Jungle Cat
    .train 416083,1
step
    .train 416083 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa do Gato da Selva|r] |cRXP_WARN_para aprender|r |T132167:0|t[Reflexos Felinos]
    .use 220791
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group Guia Runas e Livros RestedXP
    #subgroup Capacete
    #title Matança Veloz
    #name Matança Veloz - 45 (Garganta Abrasadora & Barreira do Inferno)
step
    #completewith next
    .zone Searing Gorge >>Vá para Garganta Abrasadora
step
    .goto 1427/0,-832.800,-6647.500,10
    >>Voe para a entrada da caverna em Firewatch Serra. Nota que você precisará entrar em uma caverna cheia de elites de nível 47-48. Dito isto, é possível completar esta parte usando deathruns.
    .train 416090,1
step
    .goto Searing Gorge,14.5,36.5
    >>|cRXP_WARN_Conforme você entra na caverna, pegue o caminho para a direita. Você verá rapidamente um grande tablet chamado |cRXP_FRIENDLY_Gravura Desgastada|r em cima de uma elevação na seção do meio da caverna. Corra para ele e aceite a missão.
    >>DICA: Se você estiver sozinho, tente usar armadilhas e seu mascote para chegar o mais longe possível antes de usar |T132293:0|t[|cRXP_FRIENDLY_Morte Fingida|r] para perder a agressão dos inimigos. Alternativamente, você pode correr o cadáver até o item.
    .accept 81900 >>Aceite A Fera Ardente
step
    #completewith next
    .zone Blasted Lands >>Viaje para as Terras Devastadas
step
    .goto Blasted Lands,50.6,14.2
    >>Fale com |cRXP_FRIENDLY_Maga Sangrenta Lynnore|r
    .turnin 81900 >>Entregue A Fera Ardente
    .accept 81917 >>Aceite A Corrente que Ata
    .target Bloodmage Lynnore
step
    .goto Blasted Lands,64.24,32.36
    >>Voe para a área da caverna Shadowsworn e mate qualquer |cRXP_ENEMY_Sectário Shadowsworn, Bandido ou Adepto|r para obter |cRXP_LOOT_Correntes Infernais|r
    .complete 81917,1 --Infernal Chains 5/5
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
step
    .goto Blasted Lands,50.6,14.2
    >>Fale com |cRXP_FRIENDLY_Maga Sangrenta Lynnore|r
    .turnin 81917 >>Entregue A Corrente que Ata
    .accept 81919 >>Aceite É o Cão
    .target Bloodmage Lynnore
step
    #loop
    .goto 1419/0,-2976.500,-11483.101
    .goto 1419/0,-2778.300,-11420.800
    .goto 1419/0,-2821.900,-11353.700
    .goto 1419/0,-2934.700,-11419.101
    >>Procure |cRXP_ENEMY_Calefactus o Libertado|r, um Corehound verde de nível 50. Ele tem múltiplos pontos de spawn na borda sul da parte vermelha do mapa. Tente usar |T132172:0|t[|cRXP_FRIENDLY_Olho de Águia|r] para procurar por ele. Quando o encontrar, use |T136091:0|t|cRXP_LOOT_Laço Infernal|r nele, mate-o e depois o saqueie para obter seu sangue.
    .complete 81919,1 --Fel Lifeblood 1/1
    .use 220216
    .unitscan Calefactus the Unleashed
step
    .goto Blasted Lands,50.6,14.2
    >>Fale com |cRXP_FRIENDLY_Maga Sangrenta Lynnore|r
    .turnin 81919 >>Entregue É o Cão
    .target Bloodmage Lynnore
step
    .train 416090 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa do Voraz|r] |cRXP_WARN_para treinar|r |T132205:0|t[Matança Veloz]
    >>Você também recebeu um trinquete |T136091:0|t|cRXP_LOOT_Laço Infernal|r que pode ser usado para domesticar Corehounds
    .use 220217
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group Guia Runas e Livros RestedXP
    #subgroup Manto
    #title Bater e Correr
    #name Bater e Correr - 50 (Estepes Ardentes)
step
    #completewith next
    .zone Burning Steppes >>Vá para Estepes Ardentes
step
    >>Procure um |cRXP_ENEMY_Cão-Magma Fugido|r que pode fazer spawn em múltiplos lugares na zona. |cRXP_WARN_verifique seu mapa para pontos de sinalização com possíveis locais de spawn|r. Saque-o para obter a runa
    >>DICA: Em vez de correr pela área, você pode usar |T132172:0|t[|cRXP_FRIENDLY_Olho de Águia|r] para explorar sua posição
    .goto Burning Steppes,84.8,68.0,0
    .goto Burning Steppes,83.8,60.0,0
    .goto Burning Steppes,88.6,54.8
    .goto Burning Steppes,61.6,54.4,0
    .goto Burning Steppes,39.8,59.4,0
    .goto Burning Steppes,31.8,53.0,0
    .goto Burning Steppes,24.8,55.6,0
    .unitscan Escaped Core Hound
    .collect 226252,1 --rune of the guerrilla (1)
step
    .train 440563 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa do Guerrilheiro|r] |cRXP_WARN_para treinar|r |T132171:0|t[Bater e Correr]
    .use 226252
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group Guia Runas e Livros RestedXP
    #subgroup Manto
    #title Desenvoltura
    #name Desenvoltura - 58 (Terras Pestilentas Orientais)
step
    #completewith next
    .zone Eastern Plaguelands >>Viaje para as Terras Pestilentas Orientais
step
    .goto Eastern Plaguelands,74.4,62.7
    .goto Eastern Plaguelands,72.5,66.4,0
    .goto Eastern Plaguelands,72.6,63.7,0
    .goto Eastern Plaguelands,76.7,62.6,0
    .goto Eastern Plaguelands,74.8,58.9,0
    .goto Eastern Plaguelands,76.7,58.7,0
    .goto Eastern Plaguelands,55.6,67.0,0
    .goto Eastern Plaguelands,54.3,70.1,0
    .goto Eastern Plaguelands,51.9,70.0,0
    >>Mate os |cRXP_ENEMY_Rotting Sludges|r e a |cRXP_ENEMY_Decomposição Viva|r até conseguir saquear um |T132108:0|t[|cRXP_LOOT_Bubbling Verde Ichor|r]
    >>|cRXP_WARN_O ichor é um item cinzento, tome cuidado para não vendê-lo!|r
    .collect 20770,1 --Bubbling Green Ichor (1)
    .mob Living Decay
    .mob Rotting Sludge
step
    .goto Eastern Plaguelands,17.8,30.2
    >>Vá para Terrordale e mate os |cRXP_ENEMY_Plagued Swines|r até conseguir saquear um |T134046:0|t[|cRXP_LOOT_Tainted Javali Carne|r]
    .collect 225942,1 --Tainted Boar Meat (1)
    .mob Plagued Swine
step
    >>Usar o |T134046:0|t[|cRXP_LOOT_Tainted Javali Carne|r] para combiná-lo com o |T132108:0|t[|cRXP_LOOT_Bubbling Verde Ichor|r] e criar um |T134047:0|t[Naco de Carne Rançoso]
    .collect 225943,1 --Rancid Hunk of Flesh (1)
    .use 225942
step
    .goto Eastern Plaguelands,22.68,37.12,-1
    .goto Eastern Plaguelands,19.37,26.42,-1
    .goto Eastern Plaguelands,29.83,39.05,-1
    >>Procure um |cRXP_ENEMY_Carrion Grude|r ou um |cRXP_ENEMY_Carrion Devorador|r. Os spawns mais próximos de Terrordale estão logo ao norte e ao sul dela
    >>Usar o |T134047:0|t[Naco de Carne Rançoso] nele para alimentá-lo. |cRXP_WARN_O verme vai invocar um esqueleto após uma curta animação, saqueie-o para|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Desenvolto|r]
    .use 225943
    .collect 225955,1 --Rune of the resourceful (1)
    .mob Carrion Grub
    .mob Carrion Devourer
step
    .train 440557 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa do Desenvolto|r] |cRXP_WARN_para treinar|r |T132178:0|t[Desenvoltura]
    .use 225955
]])

RXPGuides.RegisterGuide([[
    #classic
    << Hunter SoD
    #group Guia Runas e Livros RestedXP
    #subgroup Manto
    #title Salva Aprimorada
    #name Salva Aprimorada - 60 (Silithus)
step
    #completewith next
    .zone Silithus >>Vá para Silithus
step
    >>Mate |cRXP_WARN_QUALQUER inimigo|r em Silithus até conseguir saquear um |T132997:0|t[|cRXP_LOOT_Busted Gizmo|r]. A taxa de queda é relativamente baixa, mas pode soltar de todos os inimigos na zona
    .collect 226526,1
    .itemcount 226546,<1
step
    .goto Silithus,41.2,88.8
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com Edwi Copperbolt no Acampamento Bronzebeard. Siga o seu diálogo para receber um |T133878:0|t[Sonar do Deserto]
    .collect 226546,1 --Desert Sonar (1)
    .itemcount 226546,<1
step
    .goto Silithus,36.00,71.00
    >>|cRXP_WARN_Corra ao redor do ponto marcado no seu mapa até ver o chão se movendo. Quando isso acontecer, use o|r |T133878:0|t[Sonar do Deserto] |cRXP_WARN_para invocar um |cRXP_ENEMY_Verme da Areia|r. Mate-o e saqueie-o pela runa|r
    >>O verme tem uma quantidade sólida de HP e uma habilidade de escavar, permitindo que desapareça por um tempo. Certifique-se de estar pronto para o combate antes de convocá-lo
    .collect 226587,1 --rune of shelling
    .mob Sandworm
step
    .train 440560 >>Usar o |T134419:0|t[|cRXP_FRIENDLY_Rune of Shelling|r] para treinar |T236179:0|t[|cRXP_FRIENDLY_Improved Salva|r]
    .use 226587
]])
