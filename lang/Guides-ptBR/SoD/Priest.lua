if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Penitência - 3 (Elwynn Forest)
#title Penitência

step << Priest
    #season 2
    .goto Elwynn Forest,48.61,27.63
    >>Mate os |cRXP_ENEMY_Kobold Laborers|r. Saqueie-os para a |T136222:0|t[|cRXP_FRIENDLY_Memória de um Acólito Conturbado|r]
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .mob Kobold Laborer
    .train 402862,1
step << Priest
    #season 2
    .goto Elwynn Forest,49.808,39.489
    >>|cRXP_WARN_Digite /kneel em seu chat enquanto estiver dentro de Northshire Abbey|r
    >>|cRXP_WARN_Você receberá o|r |T135934:0|t[Meditação da Luz] |cRXP_WARN_aprimoramento|r
    .cast 410958 >>|cRXP_WARN_Use o|r |T136222:0|t[|cRXP_FRIENDLY_Memória de um Acólito Conturbado|r] |cRXP_WARN_enquanto você tiver o|r |T135934:0|t[Meditação da Luz] |cRXP_WARN_aprimoramento|r
    .use 205951
    .itemcount 205951,1
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Penitência - 1 (Dun Morogh)
#title Penitência


step << Priest
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abra o |cRXP_PICK_Pedraqueixo Objetos de TBC|r no chão. Saqueie-o para a |T136222:0|t|cRXP_LOOT_[Memória de um Acólito Conturbado]|r
    .collect 205951,1 -- Memory of a Troubled Acolyte (1)
    .train 402862,1
step << Priest
    #season 2
    .goto 1426,28.922,66.378
    .aura 410935 >>|cRXP_WARN_Coloque o|cRXP_FRIENDLY_ Altar da Luz|r como alvo dentro para receber o|r |T135934:0|t[Meditação da Luz] |cRXP_WARN_aprimoramento|r
    >>|cRXP_WARN_Se isso não funcionar, digite /kneel tendo o|cRXP_FRIENDLY_ Altar da Luz|r como alvo|r
    .target Altar of the Light
    .emote KNEEL,208565
    .train 402862,1
step << Priest
    #season 2
    .train 402862 >>|cRXP_WARN_Use a|r |T136222:0|t|cRXP_LOOT_[Memória de um Acólito Conturbado]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Penitência]
    .aura -410935
    .use 205951
]])

RXPGuides.RegisterGuide([[
#classic
<< NightElf Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Penitência - 2 (Shadowglen)
#title Penitência

step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r no andar de cima
    .accept 77574 >>Aceite Meditação de Eluna
    .target Shanda
    .train 402862,1
step << NightElf Priest
    #season 2
    #completewith next
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052,10 >>Viaje para o moonwell em Shadowglen
    .train 402862,1
step << NightElf Priest
    #season 2
    .isOnQuest 77574
    .goto Teldrassil,59.940,33.052
    .aura 419307 >>|cRXP_WARN_Ao chegar no moonwell, digite /kneel no seu chat|r
    >>|cRXP_WARN_Você receberá o|r |T136057:0|t[Meditação de Eluna] |cRXP_WARN_aprimoramento|r
    .train 402862,1
step << NightElf Priest
    #season 2
    #label PenanceRune
    .isOnQuest 77574
    .use 205951 >>|cRXP_WARN_Use o|r |T136222:0|t[|cRXP_FRIENDLY_Memória de um Acólito Conturbado|r] |cRXP_WARN_enquanto você tiver o|r |T136057:0|t[Meditação de Eluna] |cRXP_WARN_aprimoramento|r
    .complete 77574,1 -- Learn: Engrave Gloves - Penance
    .target Altar of the Light
    .train 402862,1
step << NightElf Priest
    #season 2
    .goto Teldrassil,59.92,41.74,20,0
    .goto Teldrassil,59.174,40.442
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shanda|r no andar de cima
    .turnin 77574 >>Entregue Meditação de Eluna
    .target Shanda
    .train 402862,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Troll Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Penitência - 2 (Durotar)
#title Penitência


    --Rune of Penance

step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .accept 77642 >>Aceite Sabedoria dos Loas
    .target Ken'jai
step << Priest
    #season 2
    .goto Durotar,55.41,72.84
    >>Viaje para o |cRXP_PICK_Altar dos Loas|r em Sen'Jin Village e digite /kneel
    .use 205951 >>Fale com |cRXP_FRIENDLY_Loa Serpente|r quando ele aparecer, depois use |T136222:0|t[|cRXP_FRIENDLY_Memória de um Acólito Conturbado|r]
    .complete 77642,1 --Learn Spell: Engrave Gloves - Penance
    .target Serpent Loa
    .skipgossip
step << Priest
    #season 2
    .goto Durotar,42.36,68.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'jai|r
    .turnin 77642 >>Entregue Sabedoria dos Loas
    .target Ken'jai
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Undead Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Penitência - 2 (Tirisfal)
#title Penitência


    --Rune of Penance

step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .accept 77670 >>Aceite Meditação da Morte-Viva
    .target Dark Cleric Duesten
step << Priest
    #season 2
    .goto Tirisfal Glades,31.06,64.80
    >>Entre no cemitério e digite /kneel
    .use 205951 >>Usar o |T136222:0|t[|cRXP_FRIENDLY_Memória de um Acólito Conturbado|r] ao ganhar o |T237569:0|t[Meditação da morte-viva] aprimoramento
    .complete 77670,1 >>Aprenda o Feitiço: Gravar Luvas - Penitência
step << Priest
    #season 2
    .goto Tirisfal Glades,31.11,66.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duesten|r
    .turnin 77670 >>Entregue Meditação da Morte-Viva
    .target Dark Cleric Duesten

]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Homúnculos - 8 (Durotar)
#title Homúnculos

step
    .train 402852,1
    #completewith next
    .zone Durotar >>Vá para Durotar
step
    .train 402852,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Ajoelhe-se antes do |cRXP_PICK_Altar dos Loas|r e fale com |cRXP_FRIENDLY_Loa Serpente|r
    .skipgossip 208307,1
    .target Serpent Loa
step
    .train 402852,1
    >>Mate os |cRXP_ENEMY_Trolls Vodu|r. Saque-os para obter a |T135975:0|t[|cRXP_FRIENDLY_Profecia da Cidadela Profanada|r]
    .goto Durotar,67.6,86.4
    .collect 205947,1
    .mob Voodoo Troll
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Ajoelhe-se antes do |cRXP_PICK_Altar dos Loas|r e fale com |cRXP_FRIENDLY_Loa Serpente|r para obter a |T136077:0|t[Meditação dos Loas]
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Agora você tem que encontrar um Sacerdote Morto-vivo com um aprimoramento Loa. Você tem que se ajoelhar antes dele e ele tem que /pray para você.|r
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Ajoelhe-se antes do |cRXP_PICK_Altar dos Loas|r e fale com |cRXP_FRIENDLY_Loa Serpente|r para obter a |T136077:0|t[Meditação dos Loas]
step << Undead
    .train 402852,1
    .goto Durotar,55.32,72.66
    .aura 418459 >>|cRXP_WARN_Ajoelhe-se no Cemitério de Sen'jin|r para obter a |T237569:0|t[Meditação da morte-viva]
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] |cRXP_WARN_to train|r |T237570:0|t[Homúnculos]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Homúnculos - 7 (Tirisfal Glades)
#title Homúnculos

step
    .train 402852,1
    #completewith next
    .zone Tirisfal Glades >>Vá para Claras da Tirisfal
step
    .train 402852,1
    >>Mate os |cRXP_ENEMY_Guerreiros Escarlate|r ou os |cRXP_ENEMY_Missionários Escarlate|r. Saque-os para obter a |T135975:0|t[|cRXP_FRIENDLY_Profecia da Cidadela Profanada|r]
    .goto Tirisfal Glades,50.6,67.8,0
    .goto Tirisfal Glades,32.6,48.6
    .collect 205947,1
    .mob Scarlet Warrior
    .mob Scarlet Missionary
step << Troll
    .train 402852,1
    .aura 418459 >>|cRXP_WARN_Agora você tem que encontrar um Sacerdote Morto-vivo com um aprimoramento Loa. Você tem que se ajoelhar antes dele e ele tem que /pray para você para obter a |T237569:0|t[Meditação da morte-viva].|r
step << Troll
    #completewith next
    .zone Durotar >>Viagem para Durotar (pegue o zepelim para Orgrimmar)
step << Troll
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Ajoelhe-se antes do |cRXP_PICK_Altar dos Loas|r e fale com |cRXP_FRIENDLY_Loa Serpente|r para obter a |T136077:0|t[Meditação dos Loas]
step << Undead
    #completewith next
    .zone Durotar >>Viagem para Durotar (pegue o zepelim para Orgrimmar)
step << Undead
    .train 402852,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .skipgossip 208307,1
    .aura 417316 >>Ajoelhe-se antes do |cRXP_PICK_Altar dos Loas|r e fale com |cRXP_FRIENDLY_Loa Serpente|r para obter a |T136077:0|t[Meditação dos Loas]
    *|cRXP_WARN_Você também pode encontrar um Sacerdote Trolls com a |T136077:0|t[Meditação dos Loas]. Ajoelhe-se antes dele e ele tem que /pray para você|r.
step << Undead
    .train 402852,1
    .goto Durotar,57.15,73.36
    .aura 418459 >>|cRXP_WARN_Ajoelhe-se no Cemitério de Sen'jin|r para obter a |T237569:0|t[Meditação da morte-viva]
step
    .use 205947
    .itemcount 205947,1
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] |cRXP_WARN_to train|r |T237570:0|t[Homúnculos]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Dor Compartilhada - 13 (Durotar)
#title Dor Compartilhada

step
    #completewith next
    .zone Durotar >>Vá para Durotar
step
    .train 402854,1
    >>Mate |cRXP_ENEMY_Makelele|r ou |cRXP_ENEMY_Gazz'uz|r (na caverna), o que estiver mais próximo de você (o ponto de passagem o leva para o mais próximo). Saque-os para obter a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r]
    .goto Durotar,52.6,8.8,-1
    .goto Durotar,62.0,66.2,-1
    .collect 205945,1
    .mob Makasgar
    .mob Gazz'uz
step
    .train 402854,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Ajoelhe-se antes do |cRXP_PICK_Altar dos Loas|r e fale com |cRXP_FRIENDLY_Loa Serpente|r para obter a |T136077:0|t[Meditação dos Loas]
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r] |cRXP_WARN_para treinar|r |T136160:0|t[Dor Compartilhada]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Dor Compartilhada - 6 (Tirisfal Glades)
#title Dor Compartilhada

step
    #completewith next
    .zone Tirisfal Glades >>Vá para Claras da Tirisfal
step
    .train 402854,1
    >>Mate os |cRXP_ENEMY_Agricultores Tirisfal|r. Saque-os para obter a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r]
    .goto Tirisfal Glades,36.2,50.4
    .collect 205945,1
    .mob Tirisfal Farmer
step << Undead
    .train 402854,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Ajoelhe-se no cemitério até obter |T237569:0|t[Meditação da morte-viva]
step << Troll
    #completewith SharedPainTirisfalA
    .zone Durotar >>Viagem para Durotar (pegue o zepelim para Orgrimmar)
step << Troll
    #label SharedPainTirisfalA
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Ajoelhe-se antes do |cRXP_PICK_Altar dos Loas|r e fale com |cRXP_FRIENDLY_Loa Serpente|r para obter a |T136077:0|t[Meditação dos Loas]
    .aura -418459
    >>|cRXP_WARN_Você também pode encontrar um Sacerdote Morto-vivo com um aprimoramento Loa. Você tem que se ajoelhar antes dele e ele tem que /pray para você para obter a |T237569:0|t[Meditação da morte-viva].|r
    .skipgossip 208307,1
step
    .use 205945
    .itemcount 205945,1
    .train 402854 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r] |cRXP_WARN_para treinar|r |T136160:0|t[Dor Compartilhada]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Peste do Caos - 5 (Durotar)
#title Peste do Caos

step
    #completewith next
    .zone Durotar >>Vá para Durotar
step
    .train 425216,1
    >>Mate os |cRXP_ENEMY_Marinheiros|r e os |cRXP_ENEMY_Fuzileiros|r. Saque-os para obter a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r]
    .goto Durotar,57.6,55.4
    .collect 205940,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    .train 425216,1
    .goto Durotar,55.32,72.66
    .emote KNEEL,208309
    .aura 417316 >>Ajoelhe-se antes do |cRXP_PICK_Altar dos Loas|r e fale com |cRXP_FRIENDLY_Loa Serpente|r para obter a |T136077:0|t[Meditação dos Loas]
    .skipgossip 208307,1
    .target Serpent Loa
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Use|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Peste do Caos - 6 (Tirisfal Glades)
#title Peste do Caos

step
    #completewith next
    .zone Tirisfal Glades >>Vá para Claras da Tirisfal
step
    .train 425216,1
    >>Mate o |cRXP_ENEMY_Guelgar|r. Saqueie-o pela |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r]
    .goto Tirisfal Glades,25.6,48.2
    .collect 205940,1
    .mob Gillgar
step << Undead
    .train 425216,1
    .goto Tirisfal Glades,56.39,49.39
    .aura 418459 >>Ajoelhe-se no cemitério até obter |T237569:0|t[Meditação da morte-viva]
step << Troll
    #completewith next
    .zone Durotar >>Viagem para Durotar (pegue o zepelim para Orgrimmar)
step << Troll
    .train 402854,1
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66
    .aura 417316 >>Ajoelhe-se antes do |cRXP_PICK_Altar dos Loas|r e fale com |cRXP_FRIENDLY_Loa Serpente|r para obter a |T136077:0|t[Meditação dos Loas]
    .skipgossip 208307,1
step
    .use 205940
    .itemcount 205940,1
    .train 425216 >>|cRXP_WARN_Use|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Prece da Recomposição - 6 (Durotar)
#title Prece da Recomposição

step
    .goto Durotar,48.04,79.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Aventureiro|r dentro do Kolkar Crag
    >>|cRXP_WARN_Outro jogador (Sacerdote ou Xamã) precisa clicar no portal. Saqueie o|r |cRXP_FRIENDLY_Espírito do Aventureiro|r |cRXP_WARN_depois para|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_Use|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r] |cRXP_WARN_para treinar|r |T135944:0|t[Prece da Recomposição]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Prece da Recomposição - 10 (Mulgore)
#title Prece da Recomposição

step
    .goto Mulgore,60.39,33.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Espírito do Aventureiro|r fora da Mina da Venture Co.
    >>|cRXP_WARN_Outro jogador (Sacerdote ou Xamã) precisa clicar no portal. Saqueie o|r |cRXP_FRIENDLY_Espírito do Aventureiro|r |cRXP_WARN_depois para|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r]
    .collect 205944,1 --Reciprocal Epiphany (1)
    .target Adventurer's Spirit
    .skipgossip
    .train 402848,1
step
    .use 205944
    .itemcount 205944,1
    .train 402848 >>|cRXP_WARN_Use|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r] |cRXP_WARN_para treinar|r |T135944:0|t[Prece da Recomposição]
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Fé Corrompida - 10 (Loch Modan)
#title Fé Corrompida

step << Priest
    #completewith MinerGear
    .goto Loch Modan,35.50,18.97,20 >>Entre na Mina do Riacho Prateado
    .train 425215,1
step << Priest
    .goto Loch Modan,35.6,20.6
    >>Mate os |cRXP_ENEMY_Ratos de Túnel|r. Saqueie-os para uma |T237281:0|t[|cRXP_LOOT_Oferenda Moeda|r]
    .collect 208823,1 -- Offering Coin (1)
    .mob Tunnel Rat Scout
    .mob Tunnel Rat Geomancer
    .train 425215,1
step << Priest
    .goto Loch Modan,36.689,20.964
    .use 208823 >>|cRXP_WARN_Use a|r |T237281:0|t[|cRXP_LOOT_Moeda de Oferenda|r] |cRXP_WARN_no poço dentro da Prateado Stream Mina|r |cRXP_WARN_para receber a|r |T136222:0|t[|cRXP_FRIENDLY_Memory of a Devoto Campeão|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_Use|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Campeão Devoto|r] |cRXP_WARN_para treinar|r |T237566:0|t[Fé Corrompida]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Fé Corrompida - 14 (Cerro Oeste)
#title Fé Corrompida

step << Priest
    .goto Westfall,32.6,43.2,60,0
    .goto Westfall,29.8,46.6,60,0
    .goto Westfall,45.0,26.0,60,0
    .goto Westfall,45.6,21.2
    >>Mate o |cRXP_ENEMY_Operário Imortal|r. Saqueie-o para a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Campeão Devoto|r]
    >>|cRXP_WARN_Você deve usar um feitiço Sagrado para derrotar o|r |cRXP_ENEMY_Operário Imortal|r
    >>|cRXP_WARN_O |cRXP_ENEMY_Operário Imortal|r pode aparecer na Pedreira da Costa de Ouro e na Mina Jangolode|r
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .unitscan Undying Laborer
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_Use|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Campeão Devoto|r] |cRXP_WARN_para treinar|r |T237566:0|t[Fé Corrompida]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Fé Corrompida - 18 (Costa Negra)
#title Fé Corrompida

step << Priest
    .goto Darkshore,59.2,23.4,60,0
    .goto Darkshore,60.0,15.4
    >>Mate os |cRXP_ENEMY_Mirmidões Escamarraio|r, os |cRXP_ENEMY_Guerreiros Escamarraio|r e as |cRXP_ENEMY_Feiticeiras Escamarraio|r. Saqueie-os para uma |T236364:0|t[|cRXP_LOOT_Oferenda de Shatterspear|r]
    .collect 211482,1 -- Shatterspear Offering (1)
    .mob Stormscale Myrmidon
    .mob Stormscale Warrior
    .mob Stormscale Sorceress
    .train 425215,1
step << Priest
    .goto Darkshore,59.2,22.6
    .use 211482 >>|cRXP_WARN_Use|r |T236364:0|t[|cRXP_LOOT_Oferenda de Shatterspear|r] |cRXP_WARN_no Ídolo Shatterspear submerso para receber|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Campeão Devoto|r]
    .collect 205905,1 -- Memory of a Devout Champion (1)
    .train 425215,1
step << Priest
    .train 425215 >>|cRXP_WARN_Use|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Campeão Devoto|r] |cRXP_WARN_para treinar|r |T237566:0|t[Fé Corrompida]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Dor Compartilhada - 10 (Dun Morogh)
#title Dor Compartilhada

step << Priest
    .goto Loch Modan,77.894,62.236
    >>Mate |cRXP_ENEMY_Capitão Beld|r embaixo do prédio. Saque-o para obter |T136222:0|t[|cRXP_FRIENDLY_Lembrança do Aprisionado Salvador|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Captain Beld
    .train 402854,1
step << Priest
    .train 402854 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r] |cRXP_WARN_para treinar|r |T136160:0|t[Dor Compartilhada]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Dor Compartilhada - 6 (Elwynn Forest)
#title Dor Compartilhada

step << Priest
    .goto Elwynn Forest,40.6,81.8
    >>Mate os |cRXP_ENEMY_Mineiros Kobold|r. Saque-os para obter |T136222:0|t[|cRXP_FRIENDLY_Lembrança do Aprisionado Salvador|r]
    .collect 205945,1 -- Memory of an Imprisoned Savior (1)
    .mob Kobold Miner
    .train 402854,1
step << Priest
    .train 402854 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Aprisionado Salvador|r] |cRXP_WARN_para treinar|r |T136160:0|t[Dor Compartilhada]
    >>|cRXP_WARN_Você deve ter um|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buff digitando /kneel em uma área sagrada, como a Abadia do Norte, a Catedral de Ventobravo, os Altares da Luz em Bigorna, Modã ou o Bairro Místico em Ironforge|r
    .use 205945
    .itemcount 205945,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Homúnculos - 8 (Dun Morogh)
#title Homúnculos

step << Priest
    .goto Dun Morogh,42.0,44.6,50,0
    .goto Dun Morogh,42.4,35.8
    >>Mate os |cRXP_ENEMY_Videntes Frostmane|r. Saque-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia da Cidadela Profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Frostmane Seer
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] |cRXP_WARN_to train|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Você deve ter 2|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_bônus digitando /kneel em uma área sagrada como Northshire Abbey, Catedral TBC, os Altares da Luz em Anvilmar, Loch Modan ou a Proteção Mística em Ironforge|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Homúnculos - 8 (Elwynn Forest)
#title Homúnculos

step << Priest
    .goto Elwynn Forest,74.0,51.8
    >>Mate os |cRXP_ENEMY_Magos Defias Ladinos|r. Saque-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia da Cidadela Profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Defias Rogue Wizard
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] |cRXP_WARN_to train|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_Você deve ter 2|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_bônus digitando /kneel em uma área sagrada como Northshire Abbey, Catedral TBC, os Altares da Luz em Anvilmar, Loch Modan ou a Proteção Mística em Ironforge|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Homúnculos - 8 (Teldrassil)
#title Homúnculos

step << Priest
    #completewith next
    .goto Teldrassil,54.68,52.84,20,0
    .goto Teldrassil,54.42,51.19,15 >>Vá para Vileza Pedra
    .train 402852,1
step << Priest
    .goto Teldrassil,77.86,61.66
    >>Mate |cRXP_ENEMY_Capetas Cruéis|r, |cRXP_ENEMY_Rascal Sprites|r e |cRXP_ENEMY_Shadow Sprites|r. Saqueie-os para obter |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r]
    .collect 205947,1 -- Prophecy of a Desecrated Citadel (1)
    .mob Vicious Grell
    .mob Rascal Sprite
    .mob Shadow Sprite
    .train 402852,1
step << Priest
    .train 402852 >>|cRXP_WARN_Use the|r |T135975:0|t[|cRXP_FRIENDLY_Profecia de uma Cidadela Profanada|r] |cRXP_WARN_to train|r |T237570:0|t[Homúnculos]
    >>|cRXP_WARN_You must have 2|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs digitando /kneel em uma área sagrada como um poço lunar, Northshire Abbey, Objetos de TBC Cathedral, os Altares da Luz em Anvilmar, Loch Modan ou o Bairro Místico em Ironforge|r
    .use 205947
    .itemcount 205947,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Prece da Recomposição - 6 (Elwynn Forest)
#title Prece da Recomposição

step << Priest
    .goto Elwynn Forest,52.28,84.56
    >>|cRXP_WARN_Junte-se a um grupo com outro Sacerdote ou Paladino parado sobre |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r, ou procure ajuda de um Paladino ou Sacerdote no Bate-papo Geral (Digite /1 no chat)|r
    >>|cRXP_WARN_Converse com a |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r no chão para iniciar o ritual, OU clique em |T136223:0|t[Ritual do Espírito] |cRXP_WARN_do outro jogador (enquanto estiver no grupo deles)|r
    >>|cRXP_WARN_Um |cRXP_FRIENDLY_Espírito do Aventureiro|r aparecerá e morrerá depois de completar o ritual. Saque-o para obter|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r]
    .train 402848 >>|cRXP_WARN_Use a|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r] |cRXP_WARN_para aprender|r |T135944:0|t[Prece da Recomposição]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Prece da Recomposição - 8 (Teldrassil)
#title Prece da Recomposição

step << Priest
    .goto Teldrassil,33.610,35.732
    >>|cRXP_WARN_Junte-se a um grupo com outro Sacerdote ou Druida próximo ao |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r, ou procure ajuda de um Druida ou Sacerdote no Bate-papo Geral (Digite /1 no chat)|r
    >>|cRXP_WARN_Converse com a |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r no chão para iniciar o ritual, OU clique em |T136223:0|t[Ritual do Espírito] |cRXP_WARN_do outro jogador (enquanto estiver no grupo deles)|r
    >>|cRXP_WARN_Um |cRXP_FRIENDLY_Espírito do Aventureiro|r aparecerá e morrerá depois de completar o ritual. Saque-o para obter|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r]
    .train 402848 >>|cRXP_WARN_Use a|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r] |cRXP_WARN_para aprender|r |T135944:0|t[Prece da Recomposição]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Prece da Recomposição - 6 (Dun Morogh)
#title Prece da Recomposição

step << Priest
    .goto Dun Morogh,43.0,49.6
    >>|cRXP_WARN_Junte-se a um grupo com outro Sacerdote ou Paladino parado sobre |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r, ou procure ajuda de um Paladino ou Sacerdote no Bate-papo Geral (Digite /1 no chat)|r
    >>|cRXP_WARN_Converse com a |cRXP_FRIENDLY_Restos Mortais de Aventureiro|r no chão para iniciar o ritual, OU clique em |T136223:0|t[Ritual do Espírito] |cRXP_WARN_do outro jogador (enquanto estiver no grupo deles)|r
    >>|cRXP_WARN_Um |cRXP_FRIENDLY_Espírito do Aventureiro|r aparecerá e morrerá depois de completar o ritual. Saque-o para obter|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r]
    .train 402848 >>|cRXP_WARN_Use a|r |T135791:0|t[|cRXP_FRIENDLY_Epifania Recíproca|r] |cRXP_WARN_para aprender|r |T135944:0|t[Prece da Recomposição]
    .use 205942
    .use 205944
    .skipgossip
    .target Adventurer's Remains
    .target Adventurer's Spirit
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Palavra Sombria: Morte - 10 (Costa Negra)
#title Palavra Sombria: Morte

step << Priest
    .goto Darkshore,30.5,47.5
    >>Clique em |cRXP_PICK_Remnant|r na pequena ilha. Pegue-o para obter o |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Priest
    >>Agora você deve obter dois buffs |T135934:0|t|T136057:0|t[Meditação]
    >>Você deve /kneel dentro de um dos seguintes lugares: um poço lunar, Northshire Abbey, Catedral de Ventobravo, os Altares de Luz em Anvilmar, Loch Modan ou o Bairro Místico em Ironforge
    >>Para receber seu segundo buff |T135934:0|t|T136057:0|t[Meditação], você deve se ajoelhar diante de um Sacerdote que possui um |T135934:0|t|T136057:0|t[Meditação] diferente do seu, e eles devem /pray enquanto o visam
    .train 402849 >>|cRXP_WARN_Assim que tiver ambos os|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palavra Sombria: Morte]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Palavra Sombria - Morte - 12 (Loch Modan)
#title Palavra Sombria: Morte

step << Priest
    #completewith next
    .goto Loch Modan,71.8,27.6
    .subzone 143 >>Vá para o Mo'grosh Baluarte em Loch Modan
step << Priest
    #season 2
    .goto Loch Modan,71.8,27.6
    .aura 410935 >>|cRXP_WARN_Defina o |cRXP_FRIENDLY_Ídolo Herético|r como alvo para /kneel automaticamente|r
    .emote KNEEL,208565 >>|cRXP_WARN_If it does not work, type /kneel in your chatbox with the |cRXP_FRIENDLY_Heretic Idol|r targeted|r
    >>|cRXP_WARN_Você receberá o|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito|r]
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .target Heretic Idol
step << Priest
    >>Agora você deve obter dois buffs |T135934:0|t|T136057:0|t[Meditação]
    >>Você deve /kneel dentro de um dos seguintes lugares: um poço lunar, Northshire Abbey, Catedral de Ventobravo, os Altares de Luz em Anvilmar, Loch Modan ou o Bairro Místico em Ironforge
    >>Para receber seu segundo buff |T135934:0|t|T136057:0|t[Meditação], você deve se ajoelhar diante de um Sacerdote que possui um |T135934:0|t|T136057:0|t[Meditação] diferente do seu, e eles devem /pray enquanto o visam
    .train 402849 >>|cRXP_WARN_Assim que tiver ambos os|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palavra Sombria: Morte]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Palavra Sombria: Morte - 20 (The Barrens)
#title Palavra Sombria: Morte

step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step
    #loop
    .goto The Barrens,54.8,35.6,40,0
    .goto The Barrens,58.8,37.6,40,0
    >>Usar |T135894:0|t[Dissipar Magia] na |cRXP_ENEMY_Miragem do Deserto|r. Saqueie-o para obter o |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito|r]
    *|cRXP_WARN_É um espectro verde que patrulha por aí. Usar a macro de alvo RestedXP para focar nele.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
    .mob Desert Mirage
step << Troll
    >>Agora você deve obter dois buffs |T237569:0|t|T136077:0|t[Meditação]
    >>Você deve |cRXP_WARN_/kneel|r em um dos seguintes lugares em frente ao altar e fale com o espírito depois: Sen'jin ou Encruzilhada |cRXP_WARN_(os locais do santuário estão marcados no seu mapa, você também pode encontrar qualquer sacerdote com o buff que pode copiá-los para você)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>Para receber seu segundo |T237569:0|t|T136077:0|t[Meditação] buff, você deve |cRXP_WARN_/kneel|r em frente a um Sacerdote Morto-vivo que tem |T237569:0|t[Meditação da morte-viva], e ele deve /pray enquanto você é o alvo
    .train 402849 >>|cRXP_WARN_Assim que tiver ambos os|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palavra Sombria: Morte]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>Agora você deve obter dois buffs |T237569:0|t|T136077:0|t[Meditação]
    >>Você deve |cRXP_WARN_/kneel|r em um dos seguintes lugares em frente ao altar e fale com o espírito depois: Sen'jin ou Encruzilhada
    .emote KNEEL,208309
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.7,0
    >>Para receber seu segundo |T237569:0|t|T136077:0|t[Meditação] buff |cRXP_WARN_/kneel|r em um cemitério para obter o |T237569:0|t[Meditação da morte-viva] buff |cRXP_WARN_(o santuário e um cemitério estão marcados no seu mapa, você também pode encontrar qualquer sacerdote com o buff que pode copiá-los para você)|r
    .train 402849 >>|cRXP_WARN_Assim que tiver ambos os|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palavra Sombria: Morte]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Palavra Sombria: Morte - 24 (Floresta de Pinhaprata)
#title Palavra Sombria: Morte

step
    #completewith next
    .zone Silverpine Forest >>Viaje para a Floresta de Pinhaprata
step
    .goto Silverpine Forest,65.8,23.6
    >>Pegue o |cRXP_PICK_Pergaminho|r atrás do |cRXP_ENEMY_Thule Ravenclaw|r (lvl 24 elite) para |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito|r]
    *|cRXP_WARN_O pergaminho está no segundo andar. É mais fácil em um grupo.|r
    .collect 205932,1 -- Prophecy of a King's Demise (1)
    .train 402849,1
step << Troll
    >>Agora você deve obter dois buffs |T237569:0|t|T136077:0|t[Meditação]
    >>Você deve |cRXP_WARN_/kneel|r em um dos seguintes lugares em frente ao altar e fale com o espírito depois: Sen'jin ou Encruzilhada |cRXP_WARN_(os locais do santuário estão marcados no seu mapa, você também pode encontrar qualquer sacerdote com o buff que pode copiá-los para você)|r
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    >>Para receber seu segundo |T237569:0|t|T136077:0|t[Meditação] buff, você deve |cRXP_WARN_/kneel|r em frente a um Sacerdote Morto-vivo que tem |T237569:0|t[Meditação da morte-viva], e ele deve /pray enquanto você é o alvo
    .train 402849 >>|cRXP_WARN_Assim que tiver ambos os|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palavra Sombria: Morte]
    .use 205932
    .itemcount 205932,1
step << Undead
    >>Agora você deve obter dois buffs |T237569:0|t|T136077:0|t[Meditação]
    >>Você deve |cRXP_WARN_/kneel|r em um dos seguintes lugares em frente ao altar e fale com o espírito depois: Sen'jin ou Encruzilhada
    .emote KNEEL,208309
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,44.2,42.7,0
    >>Para receber seu segundo |T237569:0|t|T136077:0|t[Meditação] buff |cRXP_WARN_/kneel|r em um cemitério para obter o |T237569:0|t[Meditação da morte-viva] buff |cRXP_WARN_(o santuário e um cemitério estão marcados no seu mapa, você também pode encontrar qualquer sacerdote com o buff que pode copiá-los para você)|r
    .train 402849 >>|cRXP_WARN_Assim que tiver ambos os|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_buffs, use o|r |T135975:0|t[|cRXP_FRIENDLY_Prophecy of a King's Óbito]|r |cRXP_WARN_para aprender|r |T136149:0|t[Palavra Sombria: Morte]
    .use 205932
    .itemcount 205932,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Destino Tortuoso - 10 (Floresta de Pinhaprata)
#title Destino Tortuoso

step
    #completewith next
    .zone Silverpine Forest >>Viaje para a Floresta de Pinhaprata
step
    .train 425215,1
    >>Mate o Espírito Ululante|cRXP_ENEMY_. Saqueie-o para obter a |T136222:0|t[|rLembrança de um Devoto Campeão|cRXP_FRIENDLY_]
    .goto Silverpine Forest,57.9,71.5
    .collect 205905,1
    .mob Wailing Spirit
step
    .train 425215 >>|cRXP_WARN_Use|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Devoto Campeão] |cRXP_WARN_para treinar|r |T237566:0|t[Fé Corrompida]
    >>|cRXP_WARN_Você deve ter um|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_efeito digitando|r /kneel |cRXP_WARN_em frente de|cRXP_PICK_ Loa Altar|r (em Durotar ou The Barrens) ou ajoelhando-se em frente de outro sacerdote com o efeito quando eles /pray para você|r << Troll
    >>|cRXP_WARN_Você deve ter um|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_efeito digitando|r /kneel |cRXP_WARN_em um cemitério ou ajoelhando-se em frente de outro sacerdote com o efeito quando eles /pray para você|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto Silverpine Forest,55.6,73.3 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Destino Tortuoso - 10 (The Barrens)
#title Destino Tortuoso

step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step
    .train 425215,1
    >>Abate os Razormanes|cRXP_ENEMY_. Saqueie-os para a |T236248:0|t[|rMão Amiga|cRXP_FRIENDLY_]
    .goto The Barrens,54.6,25.6
    .collect 208765,1
    .mob Razormane Thornweaver
    .mob Razormane Hunter
    .mob Razormane Water Seeker
    .mob Razormane Defender
step
    .train 425215,1
    >>|cRXP_WARN_Encontre um jogador morto ou um animal de estimação morto que você possa ressuscitar (com |T135955:0|t[Ressurreição]) para obter a|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Devoto Campeão]
    .collect 205905,1
step
    .train 425215 >>|cRXP_WARN_Use|r |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Devoto Campeão] |cRXP_WARN_para treinar|r |T237566:0|t[Fé Corrompida]
    >>|cRXP_WARN_Você deve ter um|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_efeito digitando|r /kneel |cRXP_WARN_em frente de|cRXP_PICK_ Loa Altar|r (em Durotar ou The Barrens) ou ajoelhando-se em frente de outro sacerdote com o efeito quando eles /pray para você|r << Troll
    >>|cRXP_WARN_Você deve ter um|r |T237569:0|t|T136077:0|t[Meditação] |cRXP_WARN_efeito digitando|r /kneel |cRXP_WARN_em um cemitério ou ajoelhando-se em frente de outro sacerdote com o efeito quando eles /pray para você|r << Undead
    .goto Durotar,55.32,72.66,0
    .goto The Barrens,51.5,29.5,0
    .goto The Barrens,50.7,32.8 << Undead
    .use 205905
    .itemcount 205905,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Peste do Caos - 6 (Elwynn Forest)
#title Peste do Caos

step << Priest
    #season 2
    #completewith next
    .goto Elwynn Forest,38.34,81.54,20 >>Entre em Fargodeep Mina
    .train 425216,1
step << Priest
    #season 2
    .goto Elwynn Forest,41.7,78.1
    >>Abate |cRXP_ENEMY_Dentadouro|r. Saqueie-o para a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Goldtooth
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Peste do Caos - 6 (Dun Morogh)
#title Peste do Caos


step << Priest
    #season 2
    .goto Dun Morogh,27.2,43.0,60,0
    .goto Dun Morogh,24.8,39.3,60,0
    .goto Dun Morogh,25.6,43.4,60,0
    .goto Dun Morogh,24.3,44.0,60,0
    .goto Dun Morogh,25.4,45.4,60,0
    .goto Dun Morogh,25.00,43.50
    >>Abate |cRXP_ENEMY_Leper Gnomes|r. Saqueie-os para a |T136222:0|t[|cRXP_FRIENDLY_Lembrança de um Propósito Sombrio|r]
    .collect 205940,1 -- Memory of a Dark Purpose (1)
    .mob Leper Gnome
    .train 425216,1
step << Priest
    #season 2
    .train 425216 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_FRIENDLY_Memória de um Propósito Sombrio|r] |cRXP_WARN_para treinar|r |T237514:0|t[Peste do Caos]
    .use 205940
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Renovar Potencializado - 27 (Mil Agulhas)
#title Renovar Potencializado


-- Empowered Renew

step
    .train 425309,1
    .zone Thousand Needles >>Vá para |cFFfa9602Mil Agulhas|r
step
    .train 425309,1
    .goto Thousand Needles,31.33,37.05,10,0
    .goto Thousand Needles,33.17,35.38,15,0
    .goto Thousand Needles,31.96,31.32,15,0
    .goto Thousand Needles,33.04,27.61,30,0
    .goto Thousand Needles,35.20,31.09,30,0
    .goto Thousand Needles,34.17,38.81
    >>Mate os |cRXP_ENEMY_Grimtotem Geomancers|r, os |cRXP_ENEMY_Grimtotem Bandits|r, os |cRXP_ENEMY_Grimtotem Reavers|r e os |cRXP_ENEMY_Grimtotem Stompers|r. Saqueie-os para obter |T135975:0|t[|cRXP_LOOT_Profecia do Caminho Vivificado|r]
    .collect 213140,1
    .mob Grimtotem Geomancer
    .mob Grimtotem Bandit
    .mob Grimtotem Reaver
    .mob Grimtotem Stomper
step
    .train 425309 >>|cRXP_WARN_Use a|r |T135975:0|t[|cRXP_LOOT_Profecia do Caminho Vivificado|r] |cRXP_WARN_para treinar|r |T236254:0|t[Renovar Potencializado]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Renovar Potencializado - 33 (Alterac Mountains)
#title Renovar Potencializado

-- Empowered Renew

step
    .train 425309,1
    .zone Alterac Mountains >>Vá para |cFFfa9602Alterac Mountains|r
step
    .train 425309,1
    #loop
    .goto Alterac Mountains,47.48,58.94,0
    .goto Alterac Mountains,51.73,40.23,70,0
    .goto Alterac Mountains,45.19,33.91,70,0
    .goto Alterac Mountains,51.46,53.84,70,0
    .goto Alterac Mountains,48.54,40.72,70,0
    >>Abate os |cRXP_ENEMY_Crushridge Ogres|r e os |cRXP_ENEMY_Crushridge Brutes|r. Saque-os para o |T135975:0|t[|cRXP_LOOT_Prophecy of the Aceleração Trajetória|r]
    .collect 213140,1
    .mob Crushridge Ogre
    .mob Crushridge Brute
step
    .train 425309 >>|cRXP_WARN_Use a|r |T135975:0|t[|cRXP_LOOT_Profecia do Caminho Vivificado|r] |cRXP_WARN_para treinar|r |T236254:0|t[Renovar Potencializado]
    .use 213140
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Esperança Renovada - 31 (Desolação)
#title Esperança Renovada

-- Renewed Hope

step
    #optional
    .train 425310,1
    .train 605 >>|cRXP_WARN_Você deve ter|r |T136206:0|t[Controle mental] |cRXP_WARN_Treinado para obter a|r |T135923:0|t[Esperança Renovada] |cRXP_WARN_runa|r
step
    #optional
    .train 425310,1
    .xp 31
    >>|cRXP_WARN_Você deve estar com pelo menos nível 31 para lançar|r |T136206:0|t[Controle mental] |cRXP_WARN_em um|cRXP_ENEMY_ Slitherblade Tide Priestess|r nível 33 depois|r
step
    .train 425310,1
    #completewith next
    .zone Desolace >>Vá para |cFFfa9602Desolação|r
step
    #loop
    .goto Desolace,35.4,29.6,60,0
    .goto Desolace,33.6,15,0,60,0
    .goto Desolace,40.0,17.4,60,0
    .goto Desolace,38.6,23.6,60,0
    .train 425310,1
    >>Abate os |cRXP_ENEMY_Slitherblade Nagas|r. Saque-os para a |T136222:0|t[|cRXP_LOOT_Visão Perturbadora|r]
    .collect 213599,1
    .mob Slitherblade Naga
    .mob Slitherblade Warrior
    .mob Slitherblade Oracle
    .mob Slitherblade Myrmidon
    .mob Slitherblade Sea Witch
    .mob Slitherblade Tide Priestess
step -- step shows for players that are only level 31
    #optional
    #completewith next
    +NOTA: Você pode apenas lançar|cRXP_WARN_ |T136206:0|t[Controle mental] |rem um nível 33|cRXP_WARN_ Slitherblade Tide Priestess|cRXP_ENEMY_. |rO lançamento falhará em níveis 34|r
    .xp >32,1
    .xp <31,1
    .train 425310,1
step
    #label MCPriestess
    #loop
    .goto Desolace,38.8,24.0,60,0
    .goto Desolace,34.6,30.0,60,0
    .goto Desolace,34.6,20.2,60,0
    .aura 435117 >>|cRXP_WARN_Lance|r |T136206:0|t[Controle mental] |cRXP_WARN_em um|r |cRXP_ENEMY_Slitherblade Tide Priestess|r
    >>|cRXP_WARN_Enquanto estiver sob os efeitos de|r |T136206:0|t[Controle mental]|cRXP_WARN_, alvo você mesmo e lance|r |T136077:0|t[Meditação no Abismo] |cRXP_WARN_na barra de ações do mascote|r
    >>|cRXP_WARN_Pressione Fuga depois para cancelar o|r |T136206:0|t[Controle mental] |cRXP_WARN_e mate o|r |cRXP_ENEMY_Slitherblade Tide Priestess|r
    .mob Slitherblade Tide Priestess
    .train 425310,1
step
    .train 425310 >>|cRXP_WARN_Use a|r |T136222:0|t[|cRXP_LOOT_Visão Perturbadora|r] |cRXP_WARN_para treinar|r |T135923:0|t[Esperança Renovada]
    .use 213599
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Dispersão 40 (Stranglethorn Vale)
#title Dispersão

-- Dispersion

step
    .train 425314,1
    >>|cRXP_WARN_Procure um Ladino com a|r |T132299:0|t[Mestre do Subterfúgio] |cRXP_WARN_runa e|r |T338666:0|t[Patuá de Jani] |cRXP_WARN_trinket para usar|r |T133644:0|t[Bater Carteira] |cRXP_WARN_em qualquer |cRXP_ENEMY_Bloodscalp Trolls|r em Stranglethorn Vale para obter o|r |T237446:0|t[Mysterious Trolls Pergaminho]|cRXP_WARN_. Um Mago deve então usar um|r |T135933:0|t[Compreensão Da Sorte] |cRXP_WARN_para decifrá-lo e transformá-lo em |T134938:0|t[|cRXP_LOOT_Pergaminho Trólico Decifrado|r]|r
    >>|cRXP_WARN_Alternativamente compre um|r |T237446:0|t[Mysterious Trolls Pergaminho]|r |cRXP_WARN_na Casa de Leilões e peça a um Mago para decifrá-lo, ou compre o já pronto |T134938:0|t[|cRXP_LOOT_Pergaminho Trólico Decifrado|r]|r
    .use 216880 >>|cRXP_WARN_Use o |T134938:0|t[|cRXP_LOOT_Pergaminho Trólico Decifrado|r] para iniciar a missão|r
    >>|cRXP_WARN_Você também pode procurar um Sacerdote para compartilhar a missão com você|r
    .collect 216880,1
    .disablecheckbox
    .accept 79731 >>Aceite O Pergaminho Trólico
step
    .train 425314,1
    #completewith next
    .zone Stranglethorn Vale >>Vá para |cFFfa9602Stranglethorn Vale|r
    >>|cRXP_WARN_Certifique-se de ter 2 bufos|r |T135934:0|t|T136057:0|t[Meditação] |cRXP_WARN_ativos em execução antes de ir para lá|r
step
    .train 425314,1
    .goto Stranglethorn Vale,28.961,61.931
    >>Clique em |cRXP_PICK_A Fonte Sagrada|r. Saqueie-a para obter a |T134712:0|t[|cRXP_LOOT_Água da Fonte Abençoada|r]
    >>|cRXP_WARN_Você pode precisar matar |cRXP_ENEMY_Lorde Sakrasis|r (Raro de nível 45) que guarda em frente à|r |cRXP_PICK_Fonte Sagrada|r
    .collect 737,1 --Holy Spring Water
    .mob Lord Sakrasis
step
    #completewith next
    .subzone 102 >>Viaje para as Ruínas de Zul'Kunda
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    .cast 3591 >>|cRXP_WARN_Use a|r |T134712:0|t[|cRXP_LOOT_Água da Fonte Abençoada|r] |cRXP_WARN_na pequena fonte|r
    >>|cRXP_WARN_Você pode precisar matar|cRXP_ENEMY_ Gan'zulah|r (nível 41) e um pequeno grupo de|cRXP_ENEMY_ Trolls|r ao seu redor para chegar à pequena fonte|r
    .use 737
    .mob Gan'zulah
step
    .train 425314,1
    .goto Stranglethorn Vale,23.569,7.955
    >>Clique na |cRXP_PICK_Fonte|r que aparece. Saqueie-a para obter a |T135975:0|t|cRXP_LOOT_[Profecia da Malícia Aprisionada]|r
    .collect 213142,1
step
    .train 425314 >>|cRXP_WARN_Use a|r |T135975:0|t|cRXP_LOOT_[Profecia da Malícia Aprisionada]|r |cRXP_WARN_para treinar|r |T237563:0|t[Dispersão]
    .use 213142
step
    .isQuestComplete 79731
    .goto Stranglethorn Vale,35.658,10.808
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rosarães Guima|r
    .turnin 79731 >>Entregue O pergaminho trólico
    .target Hemet Nesingwary
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Supressão de Dor - 32 (Azeroth)
#title Supressão de Dor

-- Pain Suppression

step
    .train 402855,1
    .zone Tirisfal Glades >>Voe para |cFFfa9602Tirisfal Glades|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10,0
    .goto 1415,47.73,19.39,5 >>Entre na Masmorra Mosteiro Escarlate: Cemitério
step
    >>Clique no |cRXP_PICK_Lápide|r perto da localização de desova do Cavaleiro Sem Cabeça para coletar o |cRXP_LOOT_|T136222:0|t[Eco do Cemitério]|r |cRXP_WARN_É altamente recomendado formar um grupo de 5 jogadores para esta etapa.|r
    .link https://imgur.com/a/lqRc0i6 >>https://imgur.com/a/lqRc0i6 >> |cRXP_WARN_Clique aqui para uma referência de imagem.|r
    .collect 215426,1
step
    #optional
    .train 402855,1
    .zone Arathi Highlands >>Vá para Planalto Arathi
step
    .train 402855,1
    .goto Arathi Highlands,62.1,54.5
    >>Clique na |cRXP_PICK_Sepultura|r para coletar o |cRXP_LOOT_|T136222:0|t[Eco de Arathi]|r na Fazenda de Go'sheks ao lado do maior edifício.
    .collect 215427,1
step
    .train 402855,1
    .zone Dustwallow Marsh >>Vá para Pântano Vadeoso
step
    .train 402855,1
    .goto Dustwallow Marsh,63.7,42.3
    >>Clique em |cRXP_PICK_Lápide|r para coletar |cRXP_LOOT_|T136222:0|t[Theramore Eco]|r localizado perto do cemitério da Aliança.
    .collect 215428,1
step
    .train 402855,1
    .zone Swamp of Sorrows >>Vá para |cFFfa9602Pântano das Mágoas|r
step
    .train 402855,1
    .goto Swamp of Sorrows,16.7,53.8
    >>Clique em |cRXP_PICK_Túmulo|r para coletar |cRXP_LOOT_|T136222:0|t[Swamp Eco]|r localizado perto de um lago próximo a uma árvore.
    .collect 215425,1
step
    .train 402855,1
    .zone Tirisfal Glades >>Voe para |cFFfa9602Tirisfal Glades|r
step
    .train 402855,1
    .goto 1415,47.44,19.75,10,0
    .goto 1415,47.45,19.69,5,0
    .goto 1415,47.62,19.59,10 >>Entre no Monastério Escarlate, Biblioteca |cRXP_WARN_É altamente recomendado formar um grupo de 5 jogadores para os próximos passos.|r
step
    .train 402855,1
    .cast 437054 >>Usar o |T136222:0|t[Swamp Eco] em frente da Estátua do Guerreiro.
    .use 215425
step
    .train 402855,1
    .cast 437053 >>Usar o |T136222:0|t[Arathi Eco] em frente da Estátua do Mago.
    .use 215428
step
    .train 402855,1
    .cast 436952 >>Usar o |T136222:0|t[Theramore Eco] em frente da Estátua de The Defias Brotherhood.
    .use 215425
step
    .train 402855,1
    .cast 437055 >>Usar o |T136222:0|t[Cemitério Eco] em frente da Estátua do Sacerdote.
    .use 215426
step
    .train 402855 >>Clique em Remanescente Laranja no centro da sala para receber |T135791:0|t|cRXP_FRIENDLY_[Apocryphal Epifania]|r, use-a para aprender |T135936:0|t[Supressão de Dor]
    .use 213143
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#name Olho do Caos - 50 (Azeroth)

--x shiek: needs better coordinates and travelsteps
step
    #completewith next
    .zone The Hinterlands >>Vá para Terras Agrestes
    .train 402864,1
step
    .goto The Hinterlands,58.4,72.7
    >>Clique em |cRXP_PICK_|T236407:0|tGlowing Eye|r
    .collect 223334,1 --1/1 Glowing Eye
    .train 402864,1
step
    #completewith next
    .zone Blasted Lands >>Viaje para as Terras Devastadas
    .train 402864,1
step
    .goto Blasted Lands,43.8,45.8
    >>Clique em |cRXP_PICK_|T236407:0|tPulsating Eye|r
    .collect 223331,1 --1/1 Pulsating Eye
    .train 402864,1
step
    #completewith next
    .zone Searing Gorge >>Vá para Garganta Abrasadora
    .train 402864,1
step
    .goto Searing Gorge,43.8,45.8
    >>Clique em |cRXP_PICK_|T236407:0|tVibrating Eye|r
    .collect 223332,1 --1/1 Vibrating Eye
    .train 402864,1
step
    #completewith next
    .zone Stranglethorn Vale >>Viagem para Stranglethorn Vale
    .train 402864,1
step
    .goto Stranglethorn Vale,33,88
    >>Clique em |cRXP_PICK_|T236407:0|tBaleful Eye|r
    .collect 223333,1 --1/1 Baleful Eye
    .train 402864,1
step
    #completewith next
    .zone Feralas >>Viaje para Feralas
    .train 402864,1
step
    .goto Feralas,57.2,68.7
    >>Clique em |cRXP_PICK_|T236407:0|tOlho em Chamas|r
    .collect 223337,1 --1/1 Burning Eye
    .train 402864,1
step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
    .train 402864,1
step
    .goto Tanaris,56.4,73.7
    >>Clique em |cRXP_PICK_|T236407:0|tOlho Gosmento|r
    .collect 223335,1 --1/1 Oozing Eye
    .train 402864,1
step
    #completewith next
    .zone Felwood >>Voe para Selva Maleva
    .train 410013,1
step
    .goto Felwood,36.5,55.7
    >>Clique em |cRXP_PICK_|T236407:0|tOlho Perfurante|r
    .collect 223336,1 --1/1 Piercing Eye
    .train 402864,1
step
    #completewith next
    .zone Azshara >>Voe para Azshara
    .train 402864,1
step
    .goto Azshara,89.8,33.6
    >>Alvo |cRXP_FRIENDLY_Santuário da Vigia|r
    .emote KNEEL,223590
    .accept 82316,1 >>Aceite Sete Olhos Eu Busco...
    .target Shrine of the Watcher
    .train 402864,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Torrente de Luz
#name Torrente de Luz - 40 (Tanaris)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Você pode obter apenas|r |T135981:0|t[Torrente de Luz] |cRXP_WARN_a runa entre 21h e 6h em Tanaris.|r
    +Você pode procurar em Stranglethorn Vale quando quiser obter a runa fora deste horário.
    .train 431669,1
step
    #completewith next
    .zone Tanaris >>Viaje para Tanaris
    .train 431669,1
step
    .train 431669,1
    >>Abata o |cRXP_ENEMY_Eco da Alma Perdida|r |cRXP_WARN_com feitiços ou varinhas Sagrados ou Arcanos|r. Saqueie-a para receber |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r]
    .collect 221981,1
    .goto Tanaris,52,29
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Você precisa de DOIS benefícios de meditação: procure um sacerdote com múltiplos benefícios, /ajoelhe-se diante dele, espere ele rezar por você.|r
    .train 431669 >>|cRXP_WARN_Use a|r |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Torrente de Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Torrente de Luz
#name Torrente de Luz - 40 (Pântano das Mágoas)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Você pode obter apenas|r |T135981:0|t[Torrente de Luz] |cRXP_WARN_a runa entre 21h e 6h em Pântano das Mágoas.|r
    +Você pode procurar em Stranglethorn Vale quando quiser obter a runa fora deste horário.
    .train 431669,1
step
    #completewith next
    .zone Swamp of Sorrows >>Vá para Pântano das Mágoas
    .train 431669,1
step
    .train 431669,1
    >>Abata o |cRXP_ENEMY_Eco da Alma Perdida|r |cRXP_WARN_com feitiços ou varinhas Sagrados ou Arcanos|r. Saqueie-a para receber |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r]
    .collect 221981,1
    .goto Swamp of Sorrows,50,60
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Você precisa de DOIS benefícios de meditação: procure um sacerdote com múltiplos benefícios, /ajoelhe-se diante dele, espere ele rezar por você.|r
    .train 431669 >>|cRXP_WARN_Use a|r |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Torrente de Luz]
]])


RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Torrente de Luz
#name Torrente de Luz - 40 (Terras Agrestes)

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Você pode apenas obter a|r |T135981:0|t[Torrente de Luz] |cRXP_WARN_runa entre 21h e 6h em Terras Agrestes.|r
    +Você pode procurar em Stranglethorn Vale quando quiser obter a runa fora deste horário.
    .train 431669,1
step
    #completewith next
    .zone The Hinterlands>>Vá para Terras Agrestes
    .train 431669,1
step
    .train 431669,1
    >>Abata o |cRXP_ENEMY_Eco da Alma Perdida|r |cRXP_WARN_com feitiços ou varinhas Sagrados ou Arcanos|r. Saqueie-a para receber |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r]
    .collect 221981,1
    .goto The Hinterlands,73,68
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Você precisa de DOIS benefícios de meditação: procure um sacerdote com múltiplos benefícios, /ajoelhe-se diante dele, espere ele rezar por você.|r
    .train 431669 >>|cRXP_WARN_Use a|r |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Torrente de Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Torrente de Luz
#name Torrente de Luz - 40 (Stranglethorn Vale) 2

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_A alma pode apenas aparecer após um evento de Lua Sangrenta. Você também pode desabilitar o evento e correr para a localização do waypoint|r.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Viagem para Stranglethorn Vale
    .train 431669,1
step
    .train 431669,1
    >>Abata o |cRXP_ENEMY_Eco da Alma Perdida|r |cRXP_WARN_com feitiços ou varinhas Sagrados ou Arcanos|r. Saqueie-a para receber |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r]
    .collect 221981,1
    .goto Stranglethorn Vale,40.0,58.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Você precisa de DOIS benefícios de meditação: procure um sacerdote com múltiplos benefícios, /ajoelhe-se diante dele, espere ele rezar por você.|r
    .train 431669 >>|cRXP_WARN_Use a|r |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Torrente de Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Torrente de Luz
#name Torrente de Luz - 40 (Stranglethorn Vale) 1

-- Surge of Light

step
    #completewith RuneLearned
    +|cRXP_WARN_Você pode apenas obter a|r |T135981:0|t[Torrente de Luz] |cRXP_WARN_runa entre 21h e 6h.|r
    +Você pode consultar o Stranglethorn Vale 2 quando você quer obter a runa fora deste período.
    .train 431669,1
step
    #completewith next
    .zone Stranglethorn Vale >>Viagem para Stranglethorn Vale
    .train 431669,1
step
    .train 431669,1
    >>Abata o |cRXP_ENEMY_Eco da Alma Perdida|r |cRXP_WARN_com feitiços ou varinhas Sagrados ou Arcanos|r. Saqueie-a para receber |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r]
    .collect 221981,1
    .goto Stranglethorn Vale,30.0,73.0
    .mob Echo of a Lost Soul
step
    #label RuneLearned
    .itemcount 221981,1
    .use 221981
    *|cRXP_WARN_Você precisa de DOIS benefícios de meditação: procure um sacerdote com múltiplos benefícios, /ajoelhe-se diante dele, espere ele rezar por você.|r
    .train 431669 >>|cRXP_WARN_Use a|r |T135975:0|t[|cRXP_FRIENDLY_Profecia da Tribo Perdida|r] |cRXP_WARN_para aprender|r |T135981:0|t[Torrente de Luz]
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Cura Vinculada
#name Cura Vinculada - 58 (Terras Pestilentas Ocidentais e Terras Pestilentas Orientais)
#next Raciais do Sacerdote - 60 (Azeroth)

step << Alliance
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r na Catedral de Ventobravo
    .accept 84320 >>Aceite Herança perdida
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaje para Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrus Weber|r no Vale dos Espíritos
    .accept 84405 >>Aceite Herança perdida
    .target Dietrich Praice
step
    #completewith next
    .zone Western Plaguelands >>Vá para Terras Pestilentas Ocidentais
step
    .goto Western Plaguelands,51.9,82.4,50 >>Vá para a grande cripta localizada ao lado da Colina Tristeza
step
    .goto Western Plaguelands,54.8,81.2
    >>|cRXP_WARN_Entre na cripta e vá para a esquerda. Desça e procure por um pequeno baú de madeira em um pequeno nicho à sua direita. Saque o|r |T133299:0|t[|cRXP_PICK_Herança Familiar|r]
    .collect 227745,1 --Family Heirloom(1)
step
    .goto Western Plaguelands,53.8,80.2
    >>|cRXP_WARN_Vá para o fundo da cripta. Pegue os|r |T133741:0|t[|cRXP_PICK_Registros Familiares|r] |cRXP_WARN_de uma Estante de Livros à direita e o|r |T133735:0|t[|cRXP_PICK_Diário do Sobrevivente|r] |cRXP_WARN_da mesa à esquerda|r
    .collect 227747,1 --Family Records
    .collect 227748,1 --Survivor Journal
step << Alliance
    #completewith next
    .zone Stormwind City >>Retorne para Ventobravo
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r na Catedral de Ventobravo
    .turnin 84320 >>Entregue Herança perdida
    .accept 84321 >>Aceite Relíquia da Luz
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >>Retorne para Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrus Weber|r no Vale dos Espíritos
    .turnin 84405 >>Entregue Herança perdida
    .accept 84406 >>Aceite Relíquia da Luz
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_A próxima missão exigirá que você saque um item de uma área de elite. É possível fazer solo, mas se você for de nível mais baixo ou não estiver muito equipado, considere procurar alguém para ajudá-lo|r
    .zone Western Plaguelands >>Retorne para Terras Pestilentas Ocidentais
step
    .goto Western Plaguelands,48.2,21.7,50 >>Vá para Hearthglen, |cRXP_WARN_tenha em mente que esta é uma área de elite|r
step
    .goto Western Plaguelands,42.2,18.1
    >>|cRXP_WARN_Entre na Prefeitura em Hearthglen e interaja com o|r |cRXP_PICK_Registro Escarlate|r |cRXP_WARN_localizado no pódio. Cuidado, pois a área está cheia de inimigos de elite|r
    .turnin 84406 >>Entregue Relíquia da Luz << Horde
    .turnin 84321 >>Entregue Relíquia da Luz << Alliance
    .accept 84322 >>Aceite Pesquisa Escarlate
step
    #completewith next
    >>|cRXP_WARN_A próxima missão exigirá que você saque um item de uma área de elite. É possível fazer solo, mas se você for de nível mais baixo ou não estiver muito equipado, considere procurar alguém para ajudá-lo|r
    .zone Eastern Plaguelands >>Viaje para as Terras Pestilentas Orientais
step
    .goto Eastern Plaguelands,77.5,81.7,50 >>Viagem para Manopla de Tyr, |cRXP_WARN_lembre-se de que esta é uma área élite|r
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_A runa de|r |T237537:0|t[Especialização Sagrada] |cRXP_WARN_também está localizada em Manopla de Tyr, se você não quiser obtê-la agora pule este passo|r
    >>|cRXP_WARN_Se você quiser obtê-la, vá para a ala da biblioteca do prédio marcado no seu mapa e procure um livro localizado no topo de uma prateleira. Saque-o para obter a runa. Tenha em mente que você não pode saqueá-lo em combate|r
    >>|cRXP_WARN_Você pode eliminar todos os inimigos da sala ou morrer ao lado do livro e ressuscitar em um local que está fora da linha de visão dos inimigos para saquear a runa sem precisar matar nada|r
    .collect 226418,1 --Rune of Holy Specialization
    .train 453702,1
step
    #completewith next
    .train 453702 >>Usar a |T134419:0|t[|cRXP_FRIENDLY_Runa de Especialização Sagrada|r] para aprender |T237537:0|t[Especialização Sagrada]
    .train 453702,1
    .itemcount 226418,1
step
    .goto Eastern Plaguelands,83.6,78.2
    >>|cRXP_WARN_Entre na torre dos sinos e vá para o último andar. Interaja com a caixa trancada localizada lá|r
    .turnin 84322 >>Entregue Pesquisa Escarlate
    .accept 84323 >>Aceite Dentro, o Prêmio
step
    .goto Eastern Plaguelands,83.6,78.2
    >>Mate quaisquer inimigos Escarlate em Manopla de Tyr. Saqueie-os para obter a |T134245:0|t[|cRXP_LOOT_Chave de Armazenamento de Artefatos|r]
    >>|cRXP_WARN_Você pode pular a obtenção da chave e encontrar um Pícaro com destrave de 175+ pois ele também pode abrir a caixa para você. Pule esta etapa se preferir procurar por um Pícaro a obter a chave|r
    .collect 228912,1 --Artifact Storage Key
    .itemcount 132874,<1 --Skips if you get the Shard of Light without the key
step
    >>Usar a |T134245:0|t[|cRXP_LOOT_Chave de Armazenamento de Artefatos|r] para destrancar o |T133876:0|t[|cRXP_LOOT_Cubo Mágico|r] ou deixe um Pícaro abri-lo para você com destrave. Saqueie-o para obter o |T132874:0|t[|cRXP_LOOT_Estilhaço de Luz|r]
    .collect 227938,1 --Shard of Light(1)
step << Alliance
    #completewith next
    .zone Stormwind City >>Retorne para Ventobravo
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r na Catedral de Ventobravo
    .turnin 84323 >>Entregue Dentro, o Prêmio
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >>Retorne para Orgrimmar
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrus Weber|r no Vale dos Espíritos
    .turnin 84323 >>Entregue Dentro, o Prêmio
    .target Dietrich Praice
step
    .train 402853 >>Usar o |T135791:0|t[|cRXP_FRIENDLY_Epifania Jubilosa|r] para treinar |T135883:0|t[|cRXP_FRIENDLY_Cura Vinculada|r]
    .use 228123
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Toque Vampírico
#name Toque Vampírico - 60 (Cânion do Demônio Caído - Masmorra)

step
    #completewith next
    >>A runa de |T135978:0|t[|cRXP_FRIENDLY_Toque Vampírico|r] cai do chefe final do Cânion do Demônio Caído, a nova masmorra adicionada em SoD
    .zone Felwood >>|cRXP_WARN_Para entrar na masmorra, você primeiro precisa de um acessório recompensado de uma missão curta, vá para Selva Maleva para iniciá-la|r
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Emissária Caninegro|r
    .accept 84384 >>Aceite Artimanha Demônioíaca
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Winterspring >>Vá para Hibérnia
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Winterspring,65.6,21.4
    >>Procure os |cRXP_ENEMY_Owlbeasts Berserk - Feitiço - Feitiço|r ao norte de Everlook. Mate-os e saqueie-os para obter as |T237413:0|t[|cRXP_LOOT_Glândulas Pineais de Owlbeast|r]
    .complete 84384,1
    .mob Berserk Owlbeast
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    .zone Felwood >>Vá para Selva Maleva
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    .goto Felwood,51.4,82.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Emissária Caninegro|r
    .turnin 84384 >>Entregue Artimanha Demônioíaca
    .target Shadowtooth Emissary
    .itemcount 228172,<1 --Only shows if you don't have the trinket
step
    #completewith next
    +Equipe a |T136232:0|t[|cRXP_FRIENDLY_Proteção de Ilusão Caninegro|r] em qualquer um de seus encaixes de acessório. Você precisa equipá-la para poder entrar na masmorra
    .use 228172
    .itemcount 228172,<1
step
    >>|cRXP_WARN_A runa de|r |T135978:0|t[|cRXP_FRIENDLY_Toque Vampírico|r] |cRXP_WARN_cai do chefe final do Cânion do Demônio Caído, a nova masmorra adicionada em SoD. Comece a procurar por um grupo para ela enquanto você se dirige para Vale Gris|r
    >>Se você está voando, voe para Ponto Talendris em Azshara em vez de Astranaar. É mais próximo da entrada da masmorra << Alliance
    .zone Ashenvale >>Viaje para Vale Gris
step
    .goto Ashenvale,84.5,75.0,50 >>Vá para a entrada da masmorra Cânion do Demônio Caído
step
    >>Limpe a masmorra. O |T135791:0|t[|cRXP_FRIENDLY_Epifania Aperitiva|r] que te ensina |T135978:0|t[|cRXP_FRIENDLY_Toque Vampírico|r] cai do chefe final da masmorra, Phantom de |cRXP_ENEMY_Grito Infernal|r. |cRXP_WARN_Certifique-se de saqueá-lo para obter a runa!|r
    .collect 228126,1 --Apperitive Epiphany
    .mob Hellscream's Phantom
step
    .train 402857 >>Usar o |T135791:0|t[|cRXP_FRIENDLY_Epifania Aperitiva|r] para treinar |T135978:0|t[|cRXP_FRIENDLY_Toque Vampírico|r]
    .use 228126
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Extras
#title Habilidades Raciais de Sacerdote
#name Raciais do Sacerdote - 60 (Azeroth)


step
    #completewith next
    >>|cRXP_WARN_A habilidade sacerdotal extra é um desbloqueio em toda o servidor. Isso significa que se alguém já fez isso em seu servidor, você pode pular toda a cadeia de missões e ir direto para Karazhan para treinar sua nova habilidade racial. Se esse não for o caso, você pode usar o guia abaixo para ser a pessoa que o desbloqueia para seu servidor!|r
    .zone Deadwind Pass >>Viaje para a Trilha do Vento Morto
step
    .goto Deadwind Pass,40.8,78.4
    >>Vá para um pequeno santuário localizado perto de Karazhan
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Apprehension Divino|r em um santuário perto de Karazhan para escolher qual habilidade racial você gostaria de escolher
    .target Divine Apprehension
step
    #completewith PreQStart
    +Este é o início da cadeia de missões para o desbloqueio em toda o servidor da habilidade racial sacerdotal adicional. |cRXP_WARN_Há uma boa chance de que já tenha sido concluída em seu servidor e você não precise fazer o seguinte. Proceda com ela apenas se quiser tentar a cadeia ou se souber que ainda não foi desbloqueada|r
step
    #completewith QStart
    +|cRXP_WARN_Para começar esta missão, você precisa ter completado anteriormente a linha de história que concede|r |T135883:0|t[|cRXP_FRIENDLY_Cura Vinculada|r]|cRXP_WARN_. Você pode encontrar um guia para isso na seção de runas de capa|r
    .train 402853,1
step
    #label PreQStart
    .goto Eastern Plaguelands,48.1,24.0
    >>|cRXP_WARN_Para entregar a primeira missão nesta corrente, você precisará de 4|r |T134855:0|t[|cRXP_LOOT_Água Benta de Stratholme|r] |cRXP_WARN_além de outros materiais que podem ser comprados no leilão. Procure um grupo para fazer a masmorra Stratholme (mortos-vivos)|r
    >>|cRXP_WARN_Uma vez dentro, procure e saqueie Caixotes de Suprimentos no chão espalhados pela instância. Eles podem conter Água Benta mas também ser iscas que invocam inimigos chatos de lidar|r
    .collect 13180,4 --Stratholme Holy Water(4)
step << Alliance
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre 6 |T133682:0|t[|cRXP_LOOT_Heavy Runatrama Bandages|r], 4 |T134834:0|t[|cRXP_LOOT_Major Cura Potions|r] e 8 |T132834:0|t[|cRXP_LOOT_Giant Eggs|r] do leilão. Você precisará deles para a primeira missão desta cadeia junto com a |T134855:0|t[|cRXP_LOOT_Stratholme Sagrado Água|r] que você já coletou
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Auctioneer Jaxon
step << Alliance
    #label QStart
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r na Catedral de Ventobravo
    .accept 84324 >>Aceite Propostas Diplomáticas
    .turnin 84324 >>Entregue Propostas Diplomáticas
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >>Viaje para Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thathung|r
    >>Compre 6 |T133682:0|t[|cRXP_LOOT_Heavy Runatrama Bandages|r], 4 |T134834:0|t[|cRXP_LOOT_Major Cura Potions|r] e 8 |T132834:0|t[|cRXP_LOOT_Giant Eggs|r] do leilão. Você precisará deles para a primeira missão desta cadeia junto com a |T134855:0|t[|cRXP_LOOT_Stratholme Sagrado Água|r] que você já coletou
    .collect 14530,6 --Heavy runecloth bandage (6)
    .collect 13446,4 --Major Healing Potion (4)
    .collect 12207,8 --Giant Egg(8)
    .collect 13180,4 --Stratholme Holy Water(4)
    .target Thathung
step << Horde
    #label QStart
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrus Weber|r no Vale dos Espíritos
    .accept 84408 >>Aceite Propostas Diplomáticas
    .turnin 84408 >>Entregue Propostas Diplomáticas
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_Para a próxima parte da missão, você precisará encontrar um sacerdote da facção oposta que também está na mesma linha de história para progredir|r
    .zone Eastern Plaguelands >>Viaje para as Terras Pestilentas Orientais
step
    .goto Eastern Plaguelands,47,58
    >>|cRXP_WARN_Viaje para o|r |cRXP_FRIENDLY_Santuário da cooperação|r |cRXP_WARN_localizado em EPL. Causem dano um ao outro com o sacerdote da facção oposta e então usem o|r |T134918:0|t[|cRXP_FRIENDLY_Proteção Altruísta|r] |cRXP_WARN_item que você recebeu ao entregar a missão anterior para se curarem|r
    >>Se feito corretamente, o |cRXP_FRIENDLY_Santuário da cooperação|r oferecerá uma missão. Aceite-a
    .accept 84325 >>Aceite Santuário da Cooperação << Alliance
    .accept 84410 >>Aceite Santuário da Cooperação << Horde
    .use 228130
step << Alliance
    #completewith next
    .zone Stormwind City >>Retorne para Ventobravo
step << Alliance
    .goto Stormwind City,53.612,59.764
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Leiloeira Jasona|r
    >>Compre 2 |T134459:0|t[|cRXP_LOOT_Arcanite Bars|r], 2 |T134086:0|t[|cRXP_LOOT_Blood of the Mountain|r] e 3 |T134132:0|t[|cRXP_LOOT_Blue Sapphires|r] do leilão. Você precisará deles para uma entrega de missão em breve. Esses itens podem ser caros
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Auctioneer Jaxon
step << Alliance
    .goto Stormwind City,38.8,26.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r na Catedral de Ventobravo
    .turnin 84325 >>Entregue Santuário da Cooperação
    .accept 84326 >>Aceite Anel de Diplomata
    .turnin 84326 >>Entregue Anel de Diplomata
    .accept 84327 >>Aceite Uma Missão Diplomática
    .target High Priestess Laurena
step << Horde
    #completewith next
    .zone Orgrimmar >>Retorne para Orgrimmar
step << Horde
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thathung|r
    >>Compre 2 |T134459:0|t[|cRXP_LOOT_Arcanite Bars|r], 2 |T134086:0|t[|cRXP_LOOT_Blood of the Mountain|r] e 3 |T134132:0|t[|cRXP_LOOT_Blue Sapphires|r] do leilão. Você precisará deles para uma entrega de missão em breve. Esses itens podem ser caros
    .collect 12360,2 --Arcanite Bar(2)
    .collect 11382,2 --Blood of the Mountain(2)
    .collect 12361,3 --Blue Sapphire(3)
    .target Thathung
step << Horde
    .goto Orgrimmar,35.8,87.2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrus Weber|r no Vale dos Espíritos
    .turnin 84410 >>Entregue Santuário da Cooperação
    .accept 84411 >>Aceite Anel de Diplomata
    .turnin 84411 >>Entregue Anel de Diplomata
    .accept 84412 >>Aceite Uma Missão Diplomática
    .target Dietrich Praice
step << Horde
    #completewith next
    >>|cRXP_WARN_Para completar esta missão, você precisará novamente encontrar um sacerdote da facção oposta e fazer com que use seu|r |T133396:0|t[|cFF0070FFAnel de Diplomata|r] |cRXP_WARN_em você enquanto você fica próximo aos portões de Objetos de TBC. Isso fará com que os guardas da cidade não o ataquem mais e permitirá que você entre com segurança na capital inimiga|r
    >>|cRXP_WARN_Tenha em mente que jogadores da facção oposta ainda podem atacá-lo em um servidor JxJ!|r
    .zone Elwynn Forest >>Vá para os portões de Objetos de TBC
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Faça com que um sacerdote da facção oposta use seu |T133396:0|t[|cFF0070FFAnel de Diplomata|r] em você para que os guardas da cidade não o ataquem, e vá para a Catedral de Objetos de TBC. |cRXP_WARN_Você ainda pode ser atacado por outros jogadores!|r
    >>|cRXP_WARN_O sacerdote da facção oposta deve acompanhá-lo até quem oferece a missão, ou você perderá o buff de imunidade diplomática|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r na Catedral de Ventobravo
    .turnin 84412 >>Entregue Missão Diplomática
    .accept 84413 >>Aceite Consertando o Estilhaço
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_Para completar esta missão, você precisará novamente encontrar um sacerdote da facção oposta e fazer com que use seu|r |T133396:0|t[|cFF0070FFAnel de Diplomata|r] |cRXP_WARN_em você enquanto você fica próximo aos portões de Orgrimmar. Isso fará com que os guardas da cidade não o ataquem mais e permitirá que você entre com segurança na capital inimiga|r
    >>|cRXP_WARN_Tenha em mente que jogadores da facção oposta ainda podem atacá-lo em um servidor JxJ!|r
    .zone Durotar >>Vá para os portões de Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Faça com que um sacerdote da facção oposta use seu |T133396:0|t[|cFF0070FFAnel de Diplomata|r] em você para que os guardas da cidade não o ataquem, e vá para o Vale dos Espíritos. |cRXP_WARN_Você ainda pode ser atacado por outros jogadores!|r
    >>|cRXP_WARN_O sacerdote da facção oposta deve acompanhá-lo até quem oferece a missão, ou você perderá o buff de imunidade diplomática|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrus Weber|r no Vale dos Espíritos
    .turnin 84327 >>Entregue Uma Missão Diplomática
    .accept 84328 >>Aceite Consertando o Estilhaço
    .target Dietrich Praice
step
    #completewith next
    >>|cRXP_WARN_Comece a procurar um grupo para a masmorra Martelo do Gládio Cruel West, para a próxima missão você precisa matar|r |cRXP_ENEMY_Magister Kalendris|r |cRXP_WARN_um dos chefes da masmorra|r
    .zone Feralas >>Viaje para Feralas
step
    .goto Feralas,59.1,43.2,100 >>Entre em Martelo do Gládio Cruel Oeste
step
    .goto Feralas,60.4,30.2
    >>Entre em Martelo do Gládio Cruel Oeste e mate |cRXP_ENEMY_Magister Kalendris|r. Saqueie-o para o livro |T133737:0|t[|cRXP_LOOT_Applied Divindade|r]. Ele está localizado na seção de fantasmas da masmorra
    .collect 227912,1
step << Horde
    #completewith next
    >>|cRXP_WARN_Para completar esta missão, você precisará novamente encontrar um sacerdote da facção oposta e fazer com que use seu|r |T133396:0|t[|cFF0070FFAnel de Diplomata|r] |cRXP_WARN_em você enquanto você fica próximo aos portões de Objetos de TBC. Isso fará com que os guardas da cidade não o ataquem mais e permitirá que você entre com segurança na capital inimiga|r
    >>|cRXP_WARN_Tenha em mente que jogadores da facção oposta ainda podem atacá-lo em um servidor JxJ!|r
    .zone Elwynn Forest >>Vá para os portões de Objetos de TBC
step << Horde
    .goto Stormwind City,38.8,26.6
    >>Faça com que um sacerdote da facção oposta use seu |T133396:0|t[|cFF0070FFAnel de Diplomata|r] em você para que os guardas da cidade não o ataquem, e vá para a Catedral de Objetos de TBC. |cRXP_WARN_Você ainda pode ser atacado por outros jogadores!|r
    >>|cRXP_WARN_O sacerdote da facção oposta deve acompanhá-lo até quem oferece a missão, ou você perderá o buff de imunidade diplomática|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Alta-sacerdotisa Laurena|r na Catedral de Ventobravo
    .turnin 84413 >>Entregue Consertando o Estilhaço
    .accept 84329 >>Aceite A Convocação se Reúne
    .target High Priestess Laurena
step << Alliance
    #completewith next
    >>|cRXP_WARN_Para completar esta missão, você precisará novamente encontrar um sacerdote da facção oposta e fazer com que use seu|r |T133396:0|t[|cFF0070FFAnel de Diplomata|r] |cRXP_WARN_em você enquanto você fica próximo aos portões de Orgrimmar. Isso fará com que os guardas da cidade não o ataquem mais e permitirá que você entre com segurança na capital inimiga|r
    >>|cRXP_WARN_Tenha em mente que jogadores da facção oposta ainda podem atacá-lo em um servidor JxJ!|r
    .zone Durotar >>Vá para os portões de Orgrimmar
step << Alliance
    .goto Orgrimmar,35.8,87.2
    >>Faça com que um sacerdote da facção oposta use seu |T133396:0|t[|cFF0070FFAnel de Diplomata|r] em você para que os guardas da cidade não o ataquem, e vá para o Vale dos Espíritos. |cRXP_WARN_Você ainda pode ser atacado por outros jogadores!|r
    >>|cRXP_WARN_O sacerdote da facção oposta deve acompanhá-lo até quem oferece a missão, ou você perderá o buff de imunidade diplomática|r
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Petrus Weber|r no Vale dos Espíritos
    .turnin 84328 >>Entregue Consertando o Estilhaço
    .accept 84329 >>Aceite A Convocação se Reúne
    .target Dietrich Praice
step
    #completewith next
    .zone Deadwind Pass >>Viaje para a Trilha do Vento Morto
step
    .goto Deadwind Pass,40.8,78.4
    >>Vá para um pequeno santuário localizado perto de Karazhan
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maethra Almescória|r num santuário ao lado de Karazhan
    .turnin 84329 >>Entregue A Convocação se Reúne
step
    +Completar a missão acima deve completar a cadeia de missões e desbloquear a habilidade de treinar uma habilidade de sacerdote racial de outra raça por todo o servidor
]])

RXPGuides.RegisterGuide([[
#classic
<< Priest SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Proteção Anímica
#name Proteção Anímica - 60 (Stratholme)

step
    #completewith next
    >>|cRXP_WARN_Para completar esta runa, você precisará completar algumas tarefas dentro de Stratholme masmorra (lado dos vivos e dos mortos). Comece procurando um grupo para isto|r
    .zone Eastern Plaguelands >>Voe para as Terras Pestilentas Orientais
step
    .goto Eastern Plaguelands,47.8,24.2
    >>Entre em Stratholme
    >>|cRXP_WARN_leia esta seção com cuidado, pois esta missão de runa é um pouco não convencional|r
    >>Para obter a runa, você precisará coletar 3 essências dos chefes em Stratholme. Os chefes que têm as essências são |cRXP_WARN_aleatórios e diferentes a cada ID de masmorra|r. Para saber quais chefes têm a essência no seu ID, você precisa encontrar pistas localizadas em pilares dentro da Construção Escarlate no lado vivo
    >>Para coletar as essências, você precisará de 3 |T134799:0|t[|cRXP_LOOT_Stratholme Sombra Jars|r] que caem dos |cRXP_PICK_Postbox Parcels|r dentro da masmorra. Para abrir os |cRXP_PICK_Postboxes|r, você precisa matar o |cRXP_ENEMY_Stratholme Courier|r para obter as |T134237:0|t[|cRXP_LOOT_Postbox Keys|r] dele
    >>Quando você reunir todas as essências, você deve retornar aos pilares com as pistas e ativá-los com a essência correspondente à pista que deram. Isso cria uma esfera ao lado deles que você deve saquear para obter a runa
    +|cRXP_WARN_clique aqui depois de ler o que está acima e se quiser ver mais detalhes sobre qual pista corresponde a qual chefe. Você sempre pode voltar a este passo se precisar|r
step
    >>|cRXP_WARN_aqui estão as pistas e os chefes aos quais elas correspondem:|r
    >>Entre os mortos este mortal habita com acólitos e feitiços gelados = Malaki, o Pálido
    >>Um espectro amaldiçoado a guardar uma torre, nenhum consolo ganho de Riqueza ou poder = Baroness Anastari
    >>O reino antigo redescoberto. Troca um mestre por outro = Nerub'enkan
    >>Construído de carne, um pecado da ciência caçado pelos melhores Forsaken = Ramstein, o Devorador
    >>O povo o procurou para liderar em sua hora de maior necessidade = Magistrate Barthilas
    >>Um campeão de malícia perversa, horrores enormes guardam seu palácio = Barão Rivendare
    >>Fúria sagrada purga o pecado e ainda assim uma sombra espreita dentro = Balnazzar
    >>O cheiro de enxofre preenche a sala. Este zelota o cumprimenta com um estrondo = Canhão Master Willey
    +|cRXP_WARN_clique aqui se quiser ver a ordem eficiente recomendada de passos que você pode seguir para completar esta missão. Você sempre pode voltar a este passo para ler as pistas novamente se precisar|r
step
    >>|cRXP_WARN_a ordem eficiente de tarefas ao fazer esta missão é a seguinte:|r
    >>1. Comece no lado vivo da masmorra
    >>2. Saque três |cRXP_PICK_Postbox Parcels|r para o |T134799:0|t[|cRXP_LOOT_Stratholme Sombra Jars|r], os jarros são únicos então um jogador diferente deve pegar cada um
    >>3. Vá para a sala do pedestal e descubra quais chefes têm as essências em seu ID
    >>4. Colete todas as essências conforme avança pela masmorra
    >>5. Devolva para a sala do pedestal e ative cada um com sua essência
    >>6. Saque o orbe que aparece para sua runa
    .collect 228124,1 --Oneiric Epiphany
step
    .train 402850 >>Usar o |T135791:0|t[|cRXP_FRIENDLY_Oneiric Epifania|r] para treinar |T135948:0|t[|cRXP_FRIENDLY_Proteção Anímica|r]
    .use 228124
]])
