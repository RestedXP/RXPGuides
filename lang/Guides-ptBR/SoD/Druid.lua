if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Fúria de Tempesfúria - 4 (Shadowglen)
#title Fúria de Tempestade

step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Suba a Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mardant Carvalhaço|r
    .accept 77571 >>Aceite Relíquias dos Kaldorei
    .trainer >>Treine seus feitiços de classe. Aprenda |T136096:0|t[Fogo Lunar]
    .target Mardant Strongoak
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,55.0,43.7
    >>Abate os |cRXP_ENEMY_Capeta|r e os |cRXP_ENEMY_Tinhoso|r. Saque-os para obter o |T134903:0|t[|cRXP_FRIENDLY_Lunar Ídolo|r]
    .collect 208414,1 -- Lunar Idol (1)
    .mob Grell
    .mob Grellkin
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >>|cRXP_WARN_Equipe o|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Ídolo|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Abate um inimigo 6 vezes enquanto afligido por|r |T136096:0|t[Fogo Lunar] |cRXP_WARN_para obter pilhas de|r |T237556:0|t[Inspiração]
    >>|cRXP_WARN_Uma vez que você tem o|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito após 6 abates, use o|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Ídolo|r] |cRXP_WARN_novamente, que você equipou|r
    .complete 77571,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Teldrassil,57.80,40.97,25,0
    .goto Teldrassil,58.626,40.287
    >>Suba a Árvore Aldrassil
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mardant Carvalhaço|r
    .turnin 77571 >>Entregue Relíquias dos Kaldorei
    .target Mardant Strongoak
    .train 410061,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Semente Viva - 10 (Teldrassil)
#title Semente Viva

step << Druid
    .goto Teldrassil,64.0,54.0,60,0
    .goto Teldrassil,59.0,60.0,60,0
    .goto Teldrassil,57.0,65.0,60,0
    .goto Teldrassil,69.0,55.0,60,0
    .goto Teldrassil,58.0,73.0,60,0
    .goto Teldrassil,61.0,54.0,60,0
    .goto Teldrassil,66.55,51.52
    >>Saque |T133941:0|t|cRXP_LOOT_Glade Flores|r no chão
    >>|cRXP_WARN_Encontrados em toda Teldrassil|r
    .collect 208609,3 -- Glade Flower (3)
    .train 416050,1
step << Druid
    >>|cRXP_WARN_Use as|r |T133941:0|t|cRXP_LOOT_Glade Flores|r |cRXP_WARN_para combiná-las em uma|r |T132767:0|t[Glade Coroa]
    .collect 208760,1 -- Glade Flower (3)
    .train 416050,1
step << Druid
    #completewith NatureSpirit
    .subzone 260 >>Vá para Starbreeze Village
    .train 416050,1
step << Druid
    #completewith next
    .goto Teldrassil,67.026,58.039
    .cast 414724 >>|cRXP_WARN_Use a|r |T132767:0|t[Glade Coroa] |cRXP_WARN_na |cRXP_ENEMY_Efígie de Madeira|r. Isto irá criar um |cRXP_ENEMY_Libertado Espírito da Natureza|r
    >>|cRXP_WARN_Você pode precisar esperar alguns minutos para ele reaparecer|r
    .use 208760
    .mob Wooden Effigy
    .train 416050,1
step << Druid
    #label NatureSpirit
    .goto Teldrassil,67.026,58.039
    >>Abate o |cRXP_ENEMY_Libertado Espírito da Natureza|r. Saque-o para obter o |T134419:0|t[|cRXP_FRIENDLY_Runa do Potencial Natural|r]
    >>|cRXP_WARN_Este é um élite de nível 7|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step << Druid
    .train 416050 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Potencial Natural|r] |cRXP_WARN_para treinar|r |T136152:0|t[Semente Viva]
    .use 206963
    .itemcount 206963,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Brotar da Vida - 8 (Teldrassil)
#title Brotar da Vida

step << Druid
    #sticky
    +|cRXP_WARN_Você deve ter um ajudante para coletar esta runa! Não pode ser feito solo, pois eles devem ajudar a clicar em um ritual de invocação que requer um segundo jogador!|r
    .train 410033,1
step << Druid
    .goto Teldrassil,33.610,35.732
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com os |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r
    >>|cRXP_WARN_Isto iniciará o ritual de invocação que outro jogador também deve clicar|r
    >>Saque os |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa de Vida|r]
    .collect 206970,1 -- Rune of Life (1)
    .skipgossip
    .target Adventurer's Remains
    .train 410033,1
step << Druid
    .train 410033 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Vida|r] |cRXP_WARN_para treinar|r |T134206:0|t[Brotar da Vida]
    .use 206970
    .itemcount 206970,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Rugido Selvagem - 20 (Costa Negra)
#title Rugido Selvagem

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Nota|r: Você deve estar no nível 20 para equipar o |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_que é necessário para aprender|r |T236167:0|t[Rugido Selvagem]
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Darkshore,52.60,36.65,45,0
    .goto Darkshore,51.48,38.26
    >>Abate a |cRXP_ENEMY_Matriarca do Covil|r. Saque-a para obter o |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r]
    >>|cRXP_WARN_Fique atento ao|cRXP_ENEMY_ Ursocardinho|r que pode atordoar você por 2 segundos|r
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Den Mother
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >>|cRXP_WARN_Equipe o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Inflija 20 instâncias de dano de sangramento com|r |T132152:0|t[Rasgar] |cRXP_WARN_ou|r |T132122:0|t[Estraçalhar] |cRXP_WARN_em humanoides, depois use o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_novamente para aprender|r |T236167:0|t[Rugido Selvagem]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Rugido Selvagem - 20 (Cerro Oeste)
#title Rugido Selvagem

step << Druid
    #season 2
    #sticky
    +|cRXP_WARN_Nota|r: Você deve estar no nível 20 para equipar o |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_que é necessário para aprender|r |T236167:0|t[Rugido Selvagem]
    .xp 20,1
    .train 407988,1
step << Druid
    #season 2
    .goto Westfall,56.6,13.2,70,0
    .goto Westfall,52.8,15.4,70,0
    .goto Westfall,44.8,13.8,70,0
    .goto Westfall,41.6,20.6,70,0
    .goto Westfall,56.6,13.2
    >>Mate os |cRXP_ENEMY_Riverpaw Gnolls|r, os |cRXP_ENEMY_Riverpaw Batedores|r e os |cRXP_ENEMY_Riverpaw Mongrels|r. Saqueie-os para o |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r]
    .collect 208689,1 -- Ferocious Idol (1)
    .mob Riverpaw Gnoll
    .mob Riverpaw Scout
    .mob Riverpaw Mongrel
    .train 407988,1
step << Druid
    #season 2
    .equip 18,208689 >>|cRXP_WARN_Equipe o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step << Druid
    #season 2
    .train 407988 >>|cRXP_WARN_Inflija 20 instâncias de dano de sangramento com|r |T132152:0|t[Rasgar] |cRXP_WARN_ou|r |T132122:0|t[Estraçalhar] |cRXP_WARN_em humanoides, depois use o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_novamente para aprender|r |T236167:0|t[Rugido Selvagem]
    .use 208689
    .itemcount 208689,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Fogo Solar - 6 (Teldrassil)
#title Fogo Solar

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
    .train 416044 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r] |cRXP_WARN_para treinar|r |T236216:0|t[Fogo Solar]
    .use 206989
    .itemcount 206989,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Lacerar - 10 (Loch Modan)
#title Lacerar

step << Druid
    #season 2
    .goto Loch Modan,40.371,39.404,10,0
    .goto Loch Modan,39.467,39.207
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khara Aguafunda|r dentro do prédio
    >>|cRXP_BUY_Compre uma|r |T237270:0|t[Albacora Arco-íris Isquinha]
    .collect 208855,1 -- Rainbow Fin Albacore Chum (1)
    .target Khara Deepwater
    .train 416049,1
step << Druid
    #season 2
    .goto Loch Modan,46.6,35.6
    .use 208855 >>|cRXP_WARN_Use a|r |T237270:0|t[Albacora Arco-íris Isquinha] |cRXP_WARN_em um |cRXP_ENEMY_Manguadonte Jovem|r para receber a|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerar|r]
    .collect 208687,1 -- Rune of Lacerate (1)
    .target Young Threshadon
    .train 416049,1
step << Druid
    #season 2
    .train 416049 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r] |cRXP_WARN_para treinar|r |T132131:0|t[Lacerar]
    .use 208687
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Fúria de Tempestária - 4 (Mulgore)
#title Fúria de Tempestade


    --Rune of Fury of Stormrage

step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .accept 77648 >>Aceite Relíquias dos Taurens
    .trainer >>Treine seus feitiços de classe. Aprenda |T136096:0|t[Fogo Lunar]
    .target Gart Mistrunner
step << Druid
    #season 2
    .goto Mulgore,60.33,75.10,30,0
    .goto Mulgore,61.62,76.04
    >>Saqueie o |cRXP_PICK_Baú Costagulha|r para o |T134903:0|t[|cRXP_FRIENDLY_Ídolo Lunar|r]
    .collect 208414,1,77648,1 --Lunar Idol (1)
    .train 410061,1
step << Druid
    #season 2
    .equip 18,208414 >>|cRXP_WARN_Equipe o|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Ídolo|r]
    .use 208414
    .train 410061,1
step << Druid
    #season 2
    .use 208414 >>|cRXP_WARN_Abate um inimigo 6 vezes enquanto afligido por|r |T136096:0|t[Fogo Lunar] |cRXP_WARN_para obter pilhas de|r |T237556:0|t[Inspiração]
    >>|cRXP_WARN_Uma vez que você tem o|r |T136116:0|t[Inspirado] |cRXP_WARN_efeito após 6 abates, use o|r |T134903:0|t[|cRXP_FRIENDLY_Lunar Ídolo|r] |cRXP_WARN_novamente, que você equipou|r
    .complete 77648,1 -- Learn: Engrave Chest - Fury of Stormrage
    .train 410061,1
step << Druid
    #season 2
    .goto Mulgore,45.09,75.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gart|r
    .turnin 77648 >>Entregue Relíquias dos Taurens
    .target Gart Mistrunner

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Destroçar - 10 (Mulgore)
#title Destroçar


    --Rune of Mangle

step
    #season 2
    .goto Mulgore,43.78,10.96,90,0
    .goto Mulgore,39.62,13.35,90,0
    .goto Mulgore,37.12,16.84,90,0
    .goto Mulgore,44.57,17.39,90,0
    .goto Mulgore,48.70,20.85,90,0
    .goto Mulgore,43.78,10.96
    >>Mate os |cRXP_ENEMY_Flatland Prowlers|r e os |cRXP_ENEMY_Prairie Lobo Alphas|r. Saqueie-os para |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r]
    .collect 206954,1 --Idol of Ursine Rage (1)
    .mob Flatland Prowler
    .mob Prairie Wolf Alpha
    .train 410025,1
step
    #season 2
    .equip 18,206954 >>|cRXP_WARN_Equipe o|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r]
    .use 206954
    .train 410025,1
step
    #completewith next
    +|cRXP_WARN_Mantenha 50+ de Fúria por pelo menos 60 segundos para conseguir aprender|r |T132135:0|t[Destroçar]
step
    #season 2
    .train 410025 >>|cRXP_WARN_Use o|r |T134903:0|t[|cRXP_FRIENDLY_Ídolo de Raiva Ursina|r] |cRXP_WARN_para treinar|r |T132135:0|t[Destroçar]
    .use 206954
    .itemcount 206954,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Fogo Solar - 5 (Mulgore)
#title Fogo Solar


    --Rune of Sunfire

step
    #season 2
    .goto Mulgore,35.72,69.57
    >>Lance |T136096:0|t[Fogo Lunar] nos |cRXP_ENEMY_Lunar Stones|r. Um baú aparecerá entre as pedras.
    >>Abra o |cRXP_PICK_Baú Lunar|r para a |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r]
    .collect 206989,1 --Rune of the Sun (1)
    .mob Lunar Stone
    .train 416044,1
step
    #season 2
    .train 416044 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Sol|r] |cRXP_WARN_para treinar|r |T236216:0|t[Fogo Solar]
    .use 206989
    .itemcount 206989,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Brotar da Vida - 10 (Mulgore)
#title Brotar da Vida

    --Rune of Lifebloom

step
    #season 2
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Aventureiro|r fora da Mina da Venture Co.
    >>|cRXP_WARN_Outro jogador precisa clicar no portal. Saque o|r |cRXP_FRIENDLY_Espírito de Aventureiro|r |cRXP_WARN_depois para|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Vida|r]
    .collect 206970,1 --Rune of Life (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 410033,1
step << Druid
    #season 2
    .train 410033 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Vida|r] |cRXP_WARN_para treinar|r |T134206:0|t[Brotar da Vida]
    .use 206970
    .itemcount 206970,1

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Semente Viva - 8 (Mulgore)
#title Semente Viva

    --Rune of Living Seed

step
    #season 2
    .goto Mulgore,58.88,51.18,50,0
    .goto Mulgore,50.94,45.98,50,0
    .goto Mulgore,44.95,46.88,50,0
    .goto Mulgore,39.88,51.61,50,0
    .goto Mulgore,41.36,63.26
    >>Saque |T133941:0|t|cRXP_LOOT_Flor da Pradaria|r no chão
    >>|cRXP_WARN_Estes são encontrados em toda Mulgore|r
    .collect 206469,3 -- Glade Flower (3)
    .train 416050,1
step
    #season 2
    .use >>|cRXP_WARN_Use o|r |T133941:0|t|cRXP_LOOT_Flor da Pradaria|r |cRXP_WARN_para combiná-los em uma|r |T132767:0|t[Prairie Coroa]
    .collect 206466,1 -- Prairie Crown (1)
    .train 416050,1
step
    #season 2
    #completewith next
    .goto Mulgore,37.70,49.52
    .cast 414724 >>|cRXP_WARN_Use a|r |T132767:0|t[Glade Coroa] |cRXP_WARN_na |cRXP_ENEMY_Efígie de Madeira|r. Isto irá criar um |cRXP_ENEMY_Libertado Espírito da Natureza|r
    >>|cRXP_WARN_Você pode precisar esperar alguns minutos para ele reaparecer|r
    .use 206466
    .mob Wooden Effigy
    .train 416050,1
step
    #season 2
    .goto Mulgore,37.70,49.52
    >>Abate o |cRXP_ENEMY_Libertado Espírito da Natureza|r. Saque-o para obter o |T134419:0|t[|cRXP_FRIENDLY_Runa do Potencial Natural|r]
    >>|cRXP_WARN_Este é um élite de nível 7|r
    .collect 206963,1 -- Rune of Natural Potential (1)
    .mob Unleashed Nature Spirit
    .train 416050,1
step
    #season 2
    .train 416050 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Potencial Natural|r] |cRXP_WARN_para treinar|r |T136152:0|t[Semente Viva]
    .use 206963
    .itemcount 206963,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Lacerar - 15 (Savanas)
#title Lacerar

    --Rune of Lacerate

step
    #season 2
    #completewith next
    .subzone 386 >>Voe para as Poças Esquecidas
step
    #season 2
    .goto The Barrens,44.73,22.18
    >>Pegue o |cRXP_PICK_Abandoned Mordelisca Ninho|r no chão para |T294479:0|t[|cRXP_LOOT_Abandoned Mordelisca Ovo|r]
    .collect 208682,1 --Abandoned Snapjaw Egg (1)
    .train 416049,1
step
    #season 2
    #completewith next
    .subzone 387 >>Vá para o Lushwater Oasis
step
    #season 2
    .goto The Barrens,48.32,40.25
    >>Abra o |cRXP_PICK_Ninho Vazio de Mordeliscas|r no chão para obter |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerar|r]
    .collect 208687,1 --Unbalanced Idol (1)
    .train 416049,1
step
    #season 2
    .train 416049 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r] |cRXP_WARN_para treinar|r |T132131:0|t[Lacerar]
    .use 208687 --Rune of Lacerate (1)
    .itemcount 208687,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Rugido Selvagem - 15 (Savanas)
#title Rugido Selvagem

    --Rune of Savage Roar

step
    #season 2
    #sticky
    +|cRXP_WARN_Nota|r: Você deve estar no nível 20 para equipar o |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_que é necessário para aprender|r |T236167:0|t[Rugido Selvagem]
    .xp 20,1
    .train 407988,1
step
    #season 2
    .goto The Barrens,43.57,23.48,50,0
    .goto The Barrens,43.84,21.47,50,0
    .goto The Barrens,45.04,20.04,50,0
    .goto The Barrens,46.60,22.98,50,0
    .goto The Barrens,45.71,25.63,50,0
    .goto The Barrens,43.55,26.39,50,0
    .goto The Barrens,42.21,26.92,50,0
    .goto The Barrens,42.02,24.68,50,0
    .goto The Barrens,43.57,23.48
    >>Abate |cRXP_ENEMY_Kolkar Wranglers|r e |cRXP_ENEMY_Kolkar Stormers|r. Saque-os para |T134237:0|t[|cRXP_LOOT_Kolkar Booty Chave|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
    .train 407988,1
step
    #season 2
    #loop
    .goto The Barrens,44.3,37.7,0
    .goto The Barrens,43,23.5,0
    .goto The Barrens,52.7,41.8,0
    .goto The Barrens,44.3,37.7,20,0
    .goto The Barrens,43,23.5,20,0
    .goto The Barrens,52.7,41.8,20,0
    >>Abra um baú |cRXP_PICK_Kolkar Booty|r para obter |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r]
    .collect 5020,1 --Kolkar Booty Key (1)
    .collect 208689,1 --Ferocious Idol (1)
    .train 407988,1
step
    #season 2
    .equip 18,208689 >>|cRXP_WARN_Equipe o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r]
    .use 208689
    .itemcount 208689,1
    .train 407988,1
step
    #season 2
    .train 407988 >>|cRXP_WARN_Inflija 20 instâncias de dano de sangramento com|r |T132152:0|t[Rasgar] |cRXP_WARN_ou|r |T132122:0|t[Estraçalhar] |cRXP_WARN_em humanoides, depois use o|r |T132942:0|t[|cRXP_FRIENDLY_Ídolo Feroz|r] |cRXP_WARN_novamente para aprender|r |T236167:0|t[Rugido Selvagem]
    .use 208689
    .itemcount 208689,1


]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Berserk - Feitiço - Feitiço - 28 (Mil Agulhas)
#title Berserk - Feitiço - Feitiço

step
    #optional
    +|cRXP_WARN_Você deve estar pelo menos nível 28 para aprender|r |T236149:0|t[Berserk - Feitiço - Feitiço]
    .xp >29,1
step
    #optional
    .train 424760,1
    .train 5209 >>|cRXP_WARN_Você deve ter|r |T132117:0|t[Rugido Desafiador] |cRXP_WARN_treinado para adquirir a|r |T236149:0|t[Berserk - Feitiço - Feitiço] |cRXP_WARN_runa|r
step
    #completewith next
    .train 424760,1
    .zone Thousand Needles >>Viagem para Mil Agulhas
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .aura 435081 >>|cRXP_WARN_Fique ao lado da estátua |cRXP_PICK_Efígie Bestial|r para receber o|r |T134912:0|t[Efígie Bestial] |cRXP_WARN_buff|r
step
    #completewith next
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    .cast 5209 >>|cRXP_WARN_Entre em|r |T132276:0|t[Forma de Urso] |cRXP_WARN_e lance|r |T132117:0|t[Rugido Desafiador] |cRXP_WARN_para invocar|r |cRXP_ENEMY_Zai'enki|r |cRXP_WARN_(nível 28 élite)|r
step
    .train 424760,1
    .goto Thousand Needles,68.690,55.155
    >>Abate |cRXP_ENEMY_Zai'enki|r. Saque-o para obter o |T134912:0|t[|cRXP_FRIENDLY_Ídolo da Interpelação|r]
    .collect 213594,1
    .mob Zai'enki
step
    .train 424760,1
    .equip 18,213594 >>Equipe o |T134912:0|t[|cRXP_FRIENDLY_Ídolo da Interpelação|r]
    .use 213594
step
    #title Ganhe 5x |T237556:0|t[Inspiração para Construir]
    .itemcount 213594,1
    .train 424760,1
    .aura 408828 >>|cRXP_WARN_Lance|r |T132117:0|t[Rugido Desafiador] |cRXP_WARN_para intimidar pelo menos 2 inimigos e mate um deles enquanto eles têm o|r |T132117:0|t[Rugido Desafiador] |cRXP_WARN_debuff. Isto lhe dará uma carga do|r |T237556:0|t[Inspiração para Construir] |cRXP_WARN_Bônus. Repita isto 5 vezes até você obter o|r |T136116:0|t[Inspirado] |cRXP_WARN_Bônus|r
    *|cRXP_WARN_É recomendado que você lute contra um inimigo e quase o mate, depois puxe um 2º e lance|r |T132117:0|t[Rugido Desafiador]|cRXP_WARN_, depois mate o inimigo com pouca vida. Você perderá todas as cargas de|r |T237556:0|t[Inspiração para Construir] |cRXP_WARN_se você morrer|r
step
    .itemcount 213594,1
    .use 213594
    .train 424760 >>|cRXP_WARN_Use o|r |T134912:0|t[|cRXP_FRIENDLY_Ídolo da Interpelação|r] |cRXP_WARN_para treinar|r |T236149:0|t[Berserk - Feitiço - Feitiço]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Estado Onírico - 33 (Desolação)
#title Estado Onírico

step
    #completewith next
    .train 410060,1
    .zone Desolace >>Viaje para a Desolação
step
    .train 410060,1
    #loop
    .goto Desolace,70.6,39.8,0
    .goto Desolace,70.6,39.8,25,0
    .goto Desolace,69.2,46.6,25,0
    .goto Desolace,68.6,52.6,25,0
    >>Mate os |cRXP_ENEMY_Kolkars|r e saqueie-os para obter |T134187:0|t[Desidratado Vagem]
    .collect 213574,1
    .mob Kolkar Centaur
    .mob Kolkar Mauler
    .mob Kolkar Scout
    .mob Kolkar Windchaser
step
    .train 410060,1
    >>Nade na água e espere até que a vagem se transforme em |T134208:0|t[Satyrweed Bulb]
    .goto Desolace,70.8,71.8
    .collect 206966,1
step
    .goto Desolace,75.5,20.7
    .train 410060 >>Clique no Sandy Loam|cRXP_PICK_ para plantar a semente e aprender |T136090:0|t[Estado Onírico]|r
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Nutrir - 35 (Azeroth)
#title Nutrir

-- Probably needs better waypoints to avoid some dangerous mobs or anything else that could kill you

step
    #completewith next
    .train 410059,1
    .goto Dustwallow Marsh,30.2,47.3,200,0
    .zone Dustwallow Marsh >>Vá para Pântano Vadeoso
step
    .train 410059,1
    >>Mate o |cRXP_ENEMY_Anciente Apodrecido|r. Saqueie-o para a |T134217:0|t[Semente Podre]. |cRXP_WARN_Clique nela na mochila|r
    #loop
    .goto Dustwallow Marsh,43.6,41.0,40,0
    .goto Dustwallow Marsh,40.91,43.52,40,0
    .collect 212693,1
    .accept 79348 >>Aceite O Anciente Perdido
    .mob Rotting Ancient
step
    #completewith next
    .train 410059,1
    .zone Moonglade >>Usar |T135758:0|t[Teleporte Moonglade]
step
    #completewith next
    +|cRXP_WARN_Você tem que seguir rigorosamente cada instrução a seguir. Morrer, ser refasado, ser convocado, usar teleportação ou obter o efeito "Alvo Sem Honra" pode falhar a missão (você perde o efeito), então não use qualquer Ponto de Voo em áreas contestadas.|r
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orokai|r
    *|cRXP_WARN_aceitar a próxima missão inicia um temporizador de 1 hora. Certifique-se de que você pode dedicar a hora toda.|r
    .turnin 79348 >>Entregue O anciente perdido
    .accept 79377 >>Aceite Os Brotos Perdidos
    .timer 3600,Duração da Água
    .target Orokai
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sindray|r
    .goto Moonglade,48.11,67.37
    .fly Auberdine >>Voe para Auberdine
    .target Sindrayl
step << Alliance
    .train 410059,1
    .goto Darkshore,36.90,44.13,10,0
    .goto Darkshore,32.44,43.71
    .zone Wetlands >>Pegue o barco para Menethil Harbor. |cRXP_WARN_SAIA APÓS O BARCO COMEÇAR A SE MOVER. ESPERE 40 SEGUNDOS E DEPOIS FAÇA LOGIN NOVAMENTE.|r
step << Alliance
    #completewith next
    .zone Arathi Highlands >>Vá para Planalto Arathi. |cRXP_WARN_NÃO USE O MESTRE DE VOO|r
step << Alliance
    .train 410059,1
    >>Usar a |T132852:0|t[Água of Elun'ara] no |cRXP_FRIENDLY_Broto Ancestral|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Alterac Mountains >>Vá para Alterac Mountains. |cRXP_WARN_NÃO USE O MESTRE DE VOO|r
step << Alliance
    .train 410059,1
    >>Usar a |T132852:0|t[Água of Elun'ara] no |cRXP_FRIENDLY_Broto Ancestral|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
step << Alliance
    #completewith next
    .zone Western Plaguelands >>Siga o caminho para Terras Pestilentas Ocidentais
step << Alliance
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bibilfaz Penapita|r
    .goto Western Plaguelands,42.93,85.07
    .fly Stormwind >>Voe para Ventobravo
    .target Bibilfaz Featherwhistle
step << Alliance
    #completewith AncientSapling3Alliance
    .goto Deadwind Pass,32.5,35,7,50,0
    .zone Deadwind Pass >>Viaje para a Trilha do Vento Morto
step << Alliance
    #completewith AncientSapling3Alliance
    .zone Swamp of Sorrows >>Siga o caminho para o Pântano das Mágoas
step << Alliance
    #label AncientSapling3Alliance
    .train 410059,1
    >>Usar a |T132852:0|t[Água of Elun'ara] no |cRXP_FRIENDLY_Broto Ancestral|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Alliance
    #completewith next
    .goto Swamp of Sorrows,3.5,61.3,50,0
    .goto Deadwind Pass,32.3,36.0,50,0
    .goto Duskwood,44.6,87.3,50,0
    .zone Stranglethorn Vale >>Siga o caminho para Stranglethorn Vale
step << Alliance
    .train 410059,1
    >>Usar a |T132852:0|t[Água of Elun'ara] no |cRXP_FRIENDLY_Broto Ancestral|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bonthen Vento do Prado|r
    .goto Moonglade,44.29,45.86
    .skipgossip 11798,1
    .zone Thunder Bluff >>Voe para Trovão Blefe
    .target Bunthen Plainswind
step << Horde
    .train 410059,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .goto Thunder Bluff,47.00,49.82
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Tal
step << Horde
    .goto The Barrens,63.677,38.618
    .zone Stranglethorn Vale >>Pegue o barco para Booty Bay. |cRXP_WARN_SAIA DO JOGO APÓS O BARCO COMEÇAR A SE MOVER. ESPERE 40 SEGUNDOS E DEPOIS FAÇA LOGIN NOVAMENTE.|r
step << Horde
    .train 410059,1
    >>Usar a |T132852:0|t[Água of Elun'ara] no |cRXP_FRIENDLY_Broto Ancestral|r
    .complete 79377,1 --Summer Sapling
    .use 213036
    .goto Stranglethorn Vale,32.74,64.82
    .target Ancient Sapling
step << Horde
    #completewith next
    .goto Duskwood,44.0,66.4,100,0
    .goto Duskwood,89,4,41.2,50,0
    .goto Deadwind Pass,58.3,42.0,50,0
    .zone Swamp of Sorrows >>Vá para o norte através de Floresta do Crepúsculo e Trilha do Vento Morto até Pântano das Mágoas. |cRXP_WARN_Evite Darkshire|r
step << Horde
    .train 410059,1
    >>Usar a |T132852:0|t[Água of Elun'ara] no |cRXP_FRIENDLY_Broto Ancestral|r
    .complete 79377,2 --Spring Sapling
    .use 213036
    .goto Swamp of Sorrows,17.68,42.41,50,0
    .goto Swamp of Sorrows,10.98,38.40
    .target Ancient Sapling
step << Horde
    .goto Swamp of Sorrows,46.10,54.70
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Khebra|r
    .fly Undercity >>Voe para Undercity
	.target Breyk
step << Horde
    .goto Tirisfal Glades,61.6,62.2,50,0
    .goto Tirisfal Glades,54.7,73.0,50,0
    .goto Silverpine Forest,66.7,8.8,50,0
    .zone Alterac Mountains >>|cRXP_WARN_Saia de Undercity, vá para Floresta de Pinhaprata e nade através do lago para Alterac Mountains|r
step << Horde
    .train 410059,1
    >>Usar a |T132852:0|t[Água of Elun'ara] no |cRXP_FRIENDLY_Broto Ancestral|r
    .complete 79377,4 --Winter Sapling
    .use 213036
    .goto Alterac Mountains,58.27,43.57
    .target Ancient Sapling
    step << Horde
    #completewith next
    .zone Arathi Highlands >>Corra para o Planalto Arathi.
step << Horde
    .train 410059,1
    >>Usar a |T132852:0|t[Água of Elun'ara] no |cRXP_FRIENDLY_Broto Ancestral|r
    .complete 79377,3 --Fall Sapling
    .use 213036
    .goto Arathi Highlands,46.98,71.83
    .target Ancient Sapling
step
    #completewith next
    .train 410059,1
    .zone Moonglade >>Usar |T135758:0|t[Teleporte Moonglade]
step
    .train 410059,1
    .goto Moonglade,41.48,43.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Orokai|r
    .turnin 79377 >>Entregue Os Brotos Perdidos
    .target Orokai
step
    .itemcount 213594,1
    .use 213594
    .train 410059 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Nutrição|r] para aprender |T236162:0|t[Nutrir]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#name Eflorescência - 45 (Azeroth)

step
    #optional
    .train 431468,1
    .train 2728 >>|cRXP_WARN_Você deve ter|r |T135952:0|t[Remover Maldição] |cRXP_WARN_treinado para adquirir a|r |T134222:0|t[Eflorescência] |cRXP_WARN_runa|r
step
    #optional
    .train 431468,1
    .train 8946 >>|cRXP_WARN_Você deve ter|r |T136067:0|t[Curar Veneno] |cRXP_WARN_treinado para adquirir a|r |T134222:0|t[Eflorescência] |cRXP_WARN_runa|r
step
    #optional
    .train 431468,1
    .train 16914 >>|cRXP_WARN_Você deve ter|r |T136018:0|t[Furacão] |cRXP_WARN_treinado para adquirir a|r |T134222:0|t[Eflorescência] |cRXP_WARN_runa|r
step
    #optional
    .train 431468,1
    .train 740 >>|cRXP_WARN_Você deve ter|r |T136107:0|t[Tranquilidade] |cRXP_WARN_treinado para adquirir a|r |T134222:0|t[Eflorescência] |cRXP_WARN_runa|r
step
    #optional
    .train 431468,1
    .train 768 >>|cRXP_WARN_Você deve ter|r |T132115:0|t[Forma de Felino] |cRXP_WARN_treinado para adquirir a|r |T134222:0|t[Eflorescência] |cRXP_WARN_runa|r
step
    #completewith next
    .zone Feralas >>Viaje para Feralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_dentro da torre|r
    .goto Feralas,57.2,69.0
    .accept 81924 >>Aceite Sabedoria dos Guardiões
    .target Tyrisius
step
    .train 431468,1
    .aura 446488 >>Clique em |cRXP_PICK_Santuário da Guardiã|r para obter o |T132145:0|t[Dever do Guardião] efeito
    .goto Feralas,58.7,52.4
step
    .train 431468,1
    #sticky
    #label MarkoftheWarden
    .aura 446467 >>Siga os seguintes passos para obter o |T236157:0|t[Marca do Guardião] efeito
step
    .train 431468,1
    #loop
    .goto Feralas,61.8,55.6,35,0
    .goto Feralas,58.6,66.2,35,0
    >>Ataque o |cRXP_ENEMY_Gordunni Bruxo|r. |cRXP_WARN_Espere até que use|r |T136121:0|t[Encolhimento] |cRXP_WARN_em você.|r
    .cast 2728 >>|cRXP_WARN_Use|r |T135952:0|t[Remover Maldição] |cRXP_WARN_para remover o|r |T136121:0|t[Encolhimento] |cRXP_WARN_penalidade|r
    .mob Gordunni Warlock
step
    .train 431468,1
    .goto Feralas,73.8,61.6
    >>Ataque a |cRXP_ENEMY_Vespa Zukk'ash|r. |cRXP_WARN_Espere até que use|r |T136016:0|t[Veneno] |cRXP_WARN_em você.|r
    .cast 526 >>|cRXP_WARN_Use|r |T135952:0|t[Curar Veneno] |cRXP_WARN_para remover o|r |T136016:0|t[Veneno] |cRXP_WARN_penalidade|r
    .mob Zukk'ash Wasp
step
    #requires MarkoftheWarden
    .train 431468,1
    >>|cRXP_WARN_Clique em ou Corra para o|r |cRXP_PICK_Santuário da Guardiã|r |cRXP_WARN_para invocar o |cRXP_ENEMY_Arvoroso Avatar|r|r
    >>Abata o |cRXP_ENEMY_Arvoroso Avatar|r.
    .complete 81924,1 --Guardian of Feralas
    .goto Feralas,58.7,52.4
    .mob Treant Avatar
step
    .train 431468,1
    #completewith next
    .zone Azshara >>Viagem para Azshara (Teleporte Moonglade -> Rota de Voo Azshara)
step
    .train 431468,1
    .goto Azshara,34.6,49.0
    .gossip 441947,0 >>Clique em |cRXP_PICK_Santuário da Fera|r
    *|cRXP_WARN_Pule este passo manualmente se não completar|r
step
    .train 431468,1
    >>Abata |cRXP_ENEMY_Filhote de Apa'ro|r |cRXP_WARN_com Habilidades Corpo a Corpo (entre em Forma de Felino ou Forma de Urso)|r. Saque-o para obter o |T134338:0|t[|cRXP_LOOT_Coração do Cervo Sagrado|r]
    .collect 221326,1
    .mob Child of Apa'ro
step
    #completewith next
    .itemcount 221362,1
    .use 221326
    .goto Azshara,34.6,49.0
    .cast 446509 >>|cRXP_WARN_Use o|r |T134338:0|t[|cRXP_LOOT_Coração do Cervo Sagrado|r] |cRXP_WARN_ao lado do|r |cRXP_PICK_Santuário da Fera|r |cRXP_WARN_para invocar o|r |cRXP_ENEMY_Hipogrifo Avatar|r
    .train 431468,1
step
    .train 431468,1
    >>Abata o |cRXP_ENEMY_Hipogrifo Avatar|r
    .goto Azshara,34.6,49.0
    .complete 81924,3 --Guardian of Azshara
    .mob Hippogryph Avatar
step
    .train 431468,1
    #completewith next
    .zone The Hinterlands >>Vá para Terras Agrestes
step
    .train 431468,1
    .goto The Hinterlands,66.2,53.1
    .gossip 441946,0 >>Clique em |cRXP_PICK_Santuário da Lua|r no topo da colina
    *|cRXP_WARN_Pular este passo manualmente se não for concluído|r
step
    .train 431468,1
    .cast 740 >>|cRXP_WARN_Usar|r |T136107:0|t[Tranquilidade]
step
    .train 431468,1
    .cast 16914 >>|cRXP_WARN_Usar|r |T136018:0|t[Furacão]
step
    .train 431468,1
    >>Mate o |cRXP_WARN_Moonkin Avatar|r
    .goto The Hinterlands,66.2,53.1
    .complete 81924,2 --Guardian of the Hinterlands
    .mob Moonkin Avatar
step
    #completewith next
    .zone Feralas >>Viaje para Feralas
    .train 431468,1
step
    .train 431468,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tyrisius|r |cRXP_WARN_dentro da torre|r
    .goto Feralas,57.2,69.0
    .turnin 81924 >>Entregue Sabedoria dos Guardiões
    .target Tyrisius
step
    .itemcount 220360,1
    .use 220360
    .train 431468 >>Usar |T134419:0|t[|cRXP_FRIENDLY_Runa de Eflorescência|r] para aprender |T134222:0|t[Eflorescência]

]])


-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Bracers
-- #name Improved Frenzied Regeneration
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#name Ventos Tormentosos - 40 (Feralas)

step
    #completewith NamidaGrimtotem
    .train 431451,1
    .zone Feralas >>Viaje para Feralas
step
    #label NamidaGrimtotem
    .train 431451,1
    >>Mate |cRXP_ENEMY_Namida Grimtotem|r. Saqueie-a para pegar a |T134419:0|t[|cRXP_FRIENDLY_Runa do Vendaval|r]
    .goto Feralas,66.8,38.6
    .collect 220754,1
    .mob Namida Grimtotem
step
    .itemcount 220754,1
    .use 220754
    .train 431451 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Vendaval|r] |cRXP_WARN_para treinar|r |T236154:0|t[Ventos Tormentosos]

]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#name O fogo de Eluna - 45 (Azshara)

step
    #completewith next
    .zone Azshara >>Voe para Azshara
    .train 416051,1
step
    --PERMOK: Check coordiantes
    .train 416051,1
    >>Clique no |cRXP_PICK_Traveller's Knapsack|r para pegar o |T236229:0|t[|cRXP_LOOT_Field Medicine Kit|r] e o |T133741:0|t[|cRXP_LOOT_Keldara's Histórico|r]
    .goto Azshara,20.61,61.97
    .collect 221018,1
    .collect 221017,1
step
    .train 416051,1
    --PERMOK: Fix coordiantes
    #loop
    .goto Azshara,20,65,30,0
    .goto Azshara,20,62,30,0
    .goto Azshara,21,61,30,0
    >>Pegue 3 |T134218:0|t[|cRXP_PICK_Satyrweed Samples|r]
    .collect 221019,3
step
    >>|cRXP_WARN_Usar o|r |T236229:0|t[|cRXP_LOOT_Field Medicine Kit|r] |cRXP_WARN_para combinar as amostras na|r |T236868:0|t[Tintura de Satirídea]
    .collect 221199,1
step
    .train 416051,1
    #loop
    .goto Azshara,16.0,49.6,30,0
    .goto Azshara,18.6,66.6,30,0
    .goto Azshara,21.0,56.2,30,0
    >>Procure um |cRXP_ENEMY_Hipogrifo Cabeça-de-trovão|r com a |T136134:0|t[Corrupção dos Sátiros] Penalidade
    *|cRXP_WARN_Se tiver o efeito, emite uma nuvem de veneno verde|r.
    .cast 2637 >>Usar |T136090:0|t[Hibernar] no |cRXP_ENEMY_Cabeça-de-trovão Hipogrifo|r
    .mob Thunderhead Hippogryph
step
    .train 416051,1
    >>|cRXP_WARN_Use a|r |T236868:0|t[Tintura de Satirídea] |cRXP_WARN_no |cRXP_ENEMY_Hipogrifo Cabeça-de-trovão|r para remover a|r |T136134:0|t[Corrupção dos Sátiros] |cRXP_WARN_Penalidade|r e pegue a |T134419:0|t[|cRXP_FRIENDLY_Rune of the Lua Goddess|r]
    .itemcount 221199,1
    .use 221199
    .collect 221020,1
    .mob Thunderhead Hippogryph
step
    .itemcount 221020,1
    .use 221020
    .train 416051 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Vendaval|r] |cRXP_WARN_para treinar|r |T236154:0|t[Ventos Tormentosos]
]])

-- RXPGuides.RegisterGuide([[
-- #classic
-- << Druid SoD
-- #group RestedXP Rune & Books Guide
-- #subgroup Helmet
-- #name Gore
-- for phase 3


-- ]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#name Pele de Árvore Aprimorada - 44 (Tanaris)

step
    #optional
    .train 431449,1
    .train 22812 >>|cRXP_WARN_Você deve ter|r |T136097:0|t[Pele de Árvore] |cRXP_WARN_treinado para adquirir a|r |T136097:0|t[Pele de Árvore Aprimorada] |cRXP_WARN_runa|r
step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
    .train 431449,1
step
    #loop
    .goto Tanaris,28.2,63.0,40,0
    .goto Tanaris,28.2,68.6,40,0
    .goto Tanaris,30.8,63.4,40,0
    >>Mate |cRXP_ENEMY_Thistleshrub Dew Collector|r e |cRXP_ENEMY_Thistleshrub Rootshaper|r. Saqueie-os para obter o |T136061:0|t[|cRXP_LOOT_Ídolo do Trôpego Enraivecido|r]
    .collect 220915,1
    .mob Thistleshrub Dew Collector
    .mob Thistleshrub Rootshaper
    .train 431449,1
step
    .equip 18,220915 >>|cRXP_WARN_Equipe o|r |T136061:0|t[|cRXP_FRIENDLY_Ídolo do Shambler Enraivecedor|r]
    .train 431449,1
step
    .aura 408828 >>Mate inimigos com uma magia de natureza (p. ex. Ira) enquanto sob o efeito de|cRXP_WARN_ |T136097:0|t[Pele de Árvore].|r
    *|cRXP_WARN_Use |T136097:0|t[Pele de Árvore] quando o inimigo estiver com pouca vida e mate-o com Ira ou outra magia de natureza|r
    .train 431449,1
step
    .itemcount 221020,1
    .use 221020
    .train 431449 >>|cRXP_WARN_Use o|r |T136061:0|t[|cRXP_FRIENDLY_Ídolo do Trôpego Enraivecido|r] |cRXP_WARN_para treinar|r |T136097:0|t[Pele de Árvore Aprimorada]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Patada Aprimorada - 50 (Cratera Un'Goro)
#title Patada Aprimorada

step
    #completewith next
    .train 439765,1
    .zone Un'Goro Crater >>Viaje para a Cratera Un'Goro
step
    .train 439765,1
    .goto Un'Goro Crater,68.0,51.4
    >>Mate os |cRXP_ENEMY_Ravasaurs|r, os |cRXP_ENEMY_Ravasaur Hunters|r e os |cRXP_ENEMY_Venomhide Ravasaurs|r. Saqueie-os para obter o |T134912:0|t[|cRXP_FRIENDLY_Ídolo da Caçadora|r]
    .collect 227444,1
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .train 439765,1
    .equip 18,227444 >>Equipe o |T134912:0|t[|cRXP_FRIENDLY_Ídolo da Caçadora|r]
    .use 227444
step
    .goto Un'Goro Crater,68.0,51.4
    #title Ganhe 5x |T237556:0|t[Inspiração para Construir]
    .itemcount 227444,1
    .train 439765,1
    .aura 408828 >>|cRXP_WARN_Atacar um |cRXP_ENEMY_Ravassauro|r até que esteja com aproximadamente 5-10% de vida e garanta que você tem 5 pontos de combo nele|r
    >>|cRXP_WARN_Quando estiverem com 5-10% de vida, lance|r |T136090:0|t[Hibernar] |cRXP_WARN_depois mude para|r |T132115:0|t[Forma de Felino] |cRXP_WARN_e lance|r |T132127:0|t[Mordida Feroz] |cRXP_WARN_para derrotá-los e ganhar um acúmulo de|r |T237556:0|t[Inspiração para Construir]
    >>|cRXP_WARN_Repita este processo 5 vezes|r
    .mob Venomhide Ravasaur
    .mob Ravasaur Hunter
    .mob Ravasaur
step
    .itemcount 227444,1
    .use 227444
    .train 439765 >>|cRXP_WARN_Use o|r |T134912:0|t[|cRXP_FRIENDLY_Ídolo da Caçadora|r] |cRXP_WARN_para treinar|r |T134296:0|t[Patada Aprimorada]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Árvore da Vida - 50 (Selva Maleva)
#title Árvore da Vida

step
    #completewith next
    .train 439767,1
    .zone Felwood >>Voe para Selva Maleva
step
    .train 439767,1
    #loop
    .goto Felwood,42,15,70,0
    .goto Felwood,42,19,70,0
    .goto Felwood,42,15,0
    .goto Felwood,42,19,0
    >>|cRXP_WARN_Fale com um|r Fogo-fátuo Vingativo|cRXP_FRIENDLY_ no norte de Selva Maleva, depois siga-o através de Flamejade Correr e mate qualquer|r |cRXP_WARN_Satyrs|cRXP_ENEMY_ |rque encontre|r
    >>|cRXP_WARN_O |cRXP_FRIENDLY_Fogo-fátuo Vingativo|r tem múltiplos locais de aparecimento. Se você ver outro Druida já com o |cRXP_FRIENDLY_Fogo-fátuo Vingativo|r, você pode ajudá-los e ainda assim receber crédito|r
    >>Uma vez concluído, o |cRXP_FRIENDLY_Fogo-fátuo Vingativo|r soltará o |cRXP_PICK_Gift of the Fogo-fátuo|r no chão. Saqueie-o pela |T134419:0|t[|cRXP_FRIENDLY_Runa da Árvore do Mundo|r]
    .collect 227746,1
    .unitscan Vengeful Wisp
step
    .itemcount 227746,1
    .use 227746
    .train 439767 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Árvore do Mundo|r] |cRXP_WARN_para treinar|r |T132145:0|t[Árvore da Vida]
]])

RXPGuides.RegisterGuide([[
#classic
<< Druid SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Chuva Estelar - 60 (Hibérnia)
#title Chuva Estelar

step
    #completewith next
    .train 439770,1
    .zone Winterspring >>Vá para Hibérnia
    >>|cRXP_WARN_Nota que para esta runa você deve matar um Élite de nível 58. Considere convidar amigos para ajudá-lo|r
step
    .train 439770,1
    #loop
    .goto Winterspring,64.8,19.4,50,0
    .goto Winterspring,63.8,16.4
    >>Mate |cRXP_ENEMY_Arcterris|r. Saqueie-o para obter o |T134419:0|t[|cRXP_FRIENDLY_Rune of the Estrela Cadente|r]
    >>|cRXP_WARN_Nota: |cRXP_ENEMY_Arcterris|r é um Élite de nível 58. Considere convidar amigos para ajudá-lo|r
    .collect 227749,1
    .mob Arcterris
step
    .itemcount 227749,1
    .use 227749
    .train 439770 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Estrela Cadente|r] |cRXP_WARN_para treinar|r |T236168:0|t[Chuva Estelar]
]])
