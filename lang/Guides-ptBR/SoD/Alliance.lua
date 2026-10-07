if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD/Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Lacerar - 12 (Costa Negra) << Druid
#name Domínio das Feras - 12 (Costa Negra) << Hunter
#title Lacerar << Druid
#title Domínio das Feras << Hunter

step << Druid/Hunter
    .goto Darkshore,39.84,53.82,50,0
    .goto Darkshore,40.03,56.24,50,0
    .goto Darkshore,39.34,56.58,50,0
    .goto Darkshore,39.84,53.82
    >>Abate os |cRXP_ENEMY_Blackwood Desbravadores|r e os |cRXP_ENEMY_Blackwood Windtalkers|r. Saque-os para obter seus |T237270:0|t[|cRXP_LOOT_Petiscos de Caranguejo|r]
    .collect 209027,1 -- Crab Treats (1)
    .mob Blackwood Pathfinder
    .mob Blackwood Windtalker
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step << Druid/Hunter
    .goto Darkshore,35.8,55.6
    .use 209027 >>|cRXP_WARN_Use the|r |T237270:0|t[|cRXP_LOOT_Petiscos de Caranguejo|r] |cRXP_WARN_on a |cRXP_ENEMY_Tiscoral Jovem|r to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Lacerar|r] << Druid
    .use 209027 >>|cRXP_WARN_Use the|r |T237270:0|t[|cRXP_LOOT_Petiscos de Caranguejo|r] |cRXP_WARN_on a |cRXP_ENEMY_Tiscoral Jovem|r to receive the|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Domínio das Feras|r] << Hunter
    .collect 208687,1 << Druid -- Rune of Lacerate (1)
    .collect 208701,1 << Hunter -- Beast Mastery (1)
    .target Young Reef Crawler
    .train 416049,1 << Druid
    .train 410110,1 << Hunter
step << Druid/Hunter
    .train 416049 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Lacerar|r] |cRXP_WARN_para treinar|r |T132131:0|t[Lacerar] << Druid
    .use 208687 << Druid
    .itemcount 208687,1 << Druid
    .train 410110 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Domínio das Feras|r] |cRXP_WARN_para treinar|r |T132270:0|t[Domínio das Feras] << Hunter
    .use 208701 << Hunter
    .itemcount 208701,1 << Hunter
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Druid SoD/Alliance Hunter SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Destroçar - 8 (Teldrassil) << Druid
#name Tiro Explosivo - 8 (Teldrassil) << Hunter
#title Destroçar << Druid
#title Tiro Explosivo << Hunter

step
    +|cRXP_WARN_Você deve estar pelo menos no nível 8 para adquirir|r |T133816:0|t[Gravar Luvas - Destroçar] |cRXP_WARN_em Teldrassil sozinho|r << Druid
    +|cRXP_WARN_Você deve estar pelo menos no nível 8 para adquirir|r |T133816:0|t[Gravar Luvas - Tiro Explosivo] |cRXP_WARN_em Teldrassil sozinho|r << Hunter
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .xp >8,1
step
    #completewith Rune
    #label Teld1
    .zone Teldrassil >>Viagem para Teldrassil
    .subzoneskip 262
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #optional
    #requires Teld1
    #label ShadowCave1
    #completewith Rune
    .goto 1438,44.197,58.040
    .subzone 262 >>Entre no Ban'ethil Barrow Den
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #optional
    #requires ShadowCave1
    #completewith Rune
    .goto 1438,44.064,58.196,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,45.118,57.701,20 >>Caminhe em direção ao |cRXP_ENEMY_Patafúria|r dentro
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
step
    #loop
    #label Rune
    .line 1438,45.055,57.739,45.008,58.055,45.091,58.386,45.256,58.538,45.492,58.609,45.668,58.356,45.702,57.980,45.604,57.699,45.370,57.566,45.161,57.638,45.118,57.701
    .goto 1438,45.055,57.739,12,0
    .goto 1438,45.008,58.055,12,0
    .goto 1438,45.091,58.386,12,0
    .goto 1438,45.256,58.538,12,0
    .goto 1438,45.492,58.609,12,0
    .goto 1438,45.668,58.356,12,0
    .goto 1438,45.702,57.980,12,0
    .goto 1438,45.604,57.699,12,0
    .goto 1438,45.370,57.566,12,0
    .goto 1438,45.161,57.638,12,0
    .goto 1438,45.118,57.701,12,0
    >>Abate o |cRXP_ENEMY_Patafúria|r no andar de baixo. Saque-o para obter o |T136061:0|t|cRXP_LOOT_[Ídolo de Raiva Ursina]|r << Druid
    >>Abate o |cRXP_ENEMY_Patafúria|r no andar de baixo. Saque-o para obter a |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r << Hunter
    .collect 206954,1 << Druid -- Idol of Ursine Rage (1)
    .collect 206169,1 << Hunter -- Rune of Explosive Shot (1)
    .train 410025,1 << Druid
    .train 410123,1 << Hunter
    .unitscan Rageclaw
step << Hunter
    .train 410123 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa de Tiro Explosivo]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Tiro Explosivo]
    .use 206169
    .itemcount 206169,1
step << Druid
    .equip 18,206954 >>|cRXP_WARN_Equipe o|r |T136061:0|t|cRXP_LOOT_[Ídolo de Raiva Ursina]|r
    .use 206954
    .itemcount 206954,1
    .train 410025,1
step << Druid
    #loop
    .goto 1438,44.731,57.355,0
    .goto 1438,44.254,59.083,0
    .goto 1438,44.064,58.196,0
    .goto 1438,44.731,57.355,15,0
    .goto 1438,43.947,57.297,15,0
    .goto 1438,43.944,57.918,15,0
    .goto 1438,44.292,58.555,15,0
    .goto 1438,44.254,59.083,15,0
    .goto 1438,43.602,59.799,15,0
    .goto 1438,43.399,59.885,15,0
    .goto 1438,43.073,59.123,15,0
    .goto 1438,44.167,58.204,15,0
    .goto 1438,44.196,58.597,15,0
    .goto 1438,43.975,58.537,15,0
    .goto 1438,44.064,58.196,15,0
    .aura 414824 >>|cRXP_WARN_Enquanto em|r |T132276:0|t[Forma de Urso]|cRXP_WARN_, mantenha 50 ou mais Raiva por 60 segundos|r
    .itemStat 18,QUALITY,2
    .train 410025,1
step << Druid
    .train 410025 >>|cRXP_WARN_Equipe o|r |T136061:0|t|cRXP_LOOT_[Ídolo de Raiva Ursina]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Destroçar]
    .use 206954
    .aura -414824
    .train 410025,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD/Alliance Warrior SoD/Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú << Rogue/Priest
#subgroup Pernas << Warrior
#name Atacar das Sombras - 8 (Teldrassil) << Rogue
#name Trovão Furioso - 8 (Teldrassil) << Warrior
#name Peste do Caos - 8 (Teldrassil) << Priest
#title Atacar das Sombras << Rogue
#title Trovão Furioso << Warrior
#title Peste do Caos << Priest

step
    #completewith next
    .goto Teldrassil,44.18,58.19
    .subzone 262 >>Entre no Ban'ethil Barrow Den
    .train 424992,1 << Rogue
    .train 403476,1 << Warrior
    .train 425216,1 << Priest
step << Rogue
    .goto Teldrassil,44.155,61.182
    >>Abra o |cRXP_PICK_Gnarlpine Stash|r. Saque-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa de Massacre|r]
    >>|cRXP_WARN_Nota: O |cRXP_PICK_Gnarlpine Stash|r aparece aleatoriamente dentro dos Ban'ethil Barrows|r
    .collect 203993 -- Rune of Slaughter (1)
    .train 424992 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa do Massacre|r] |cRXP_WARN_to train|r |T236280:0|t[Atacar das Sombras]
    .use 203993
step << Warrior
    .goto Teldrassil,44.401,60.655
    >>Abra o |cRXP_PICK_Gnarlpine Cache|r. Saque-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r]
    >>|cRXP_WARN_Nota: O |cRXP_PICK_Gnarlpine Cache|r pode ter múltiplos locais de aparecimento dentro de Ban'ethil Barrows|r
    .collect 204809,1 -- Rune of Furious Thunder (1)
    .train 403476 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Trovão Furioso|r] |cRXP_WARN_para treinar|r |T136048:0|t[Trovão Furioso]
    .use 204809
step << Priest
    .goto Teldrassil,44.401,60.655
    >>Abra o |cRXP_PICK_Gnarlpine Cache|r. Pegue uma |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r]
    >>|cRXP_WARN_Nota: O |cRXP_PICK_Gnarlpine Cache|r pode ter múltiplos locais de aparecimento dentro de Ban'ethil Barrows|r
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .train 425216 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Rogue SoD/Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves << Rogue
#subgroup Pernas << Priest
#name Mutilar - 8 (Teldrassil) << Rogue
#name Dor Compartilhada - 8 (Teldrassil) << Priest
#title Mutilar << Rogue
#title Dor Compartilhada << Priest

step << Rogue/Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Vá para Vileza Pedra
    .train 400094,1 << Rogue
    .train 402854,1 << Priest
step << Rogue/Priest
    .goto Teldrassil,51.2,50.6
    >>Mate o |cRXP_ENEMY_Senhor Málinus|r. Saque-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] << Rogue
    >>Abate |cRXP_ENEMY_Senhor Málinus|r. Saque-o para a |T136222:0|t[|cRXP_FRIENDLY_Memory of an Aprisionado Salvador|r] << Priest
    >>|cRXP_ENEMY_Senhor Málinus|r |cRXP_WARN_pode ser encontrado em vários locais de ressurgimento diferentes em Vileza Pedra|r
    .collect 203990,1 << Rogue
    .collect 205945,1 << Priest
    .unitscan Lord Melenas
    .train 400094,1 << Rogue
    .train 402854,1 << Priest
step << Rogue
    .train 400094 >>|cRXP_WARN_Use the|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Mutilação|r] |cRXP_WARN_to train|r |T132304:0|t[Mutilar]
    .use 203990
    .itemcount 203990,1
step << Priest
    .train 402854 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r] |cRXP_WARN_para treinar|r |T136160:0|t[Dor Compartilhada]
    >>|cRXP_WARN_Você deve ter uma|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff ao digitar /kneel em uma área sagrada, como um poço lunar, Northshire Abbey, Objetos de TBC Cathedral, os Altares de Luz em Anvilmar, Loch Modan ou o Mystic Proteção em Ironforge|r
    .use 205945
    .itemcount 205945,1
]])
