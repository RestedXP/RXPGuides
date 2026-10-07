if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Assombrar - 3 (Elwynn Forest)
#title Assombrar

step << Warlock
    #season 2
    .goto Elwynn Forest,52.544,51.922
    >>Abra o |cRXP_PICK_Defias Stashbox|r no chão. Saque a |T134419:0|t[|cRXP_FRIENDLY_Runa da Assombração|r]
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    #label RoH
    .cast 402265 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Assombração|r] |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Assombrar]
    .use 205230
    .itemcount 205230,1
    .train 403919,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Assombrar - 1 (Dun Morogh)
#title Assombrar

step << Warlock
    #season 2
    .goto Dun Morogh,26.733,72.552
    >>Abra o |cRXP_PICK_Baú dos Peidraqueixo|r no chão. Saque-o para obter a |T134419:0|t|cRXP_LOOT_[Runa da Assombração]|r
    .collect 205230,1 -- Rune of Haunting (1)
    .train 403919,1
step << Warlock
    #season 2
    .train 403919 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa da Assombração]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Assombrar]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Assombrar - 2 (Durotar)
#title Assombrar


    --Rune of Haunt

step << Orc
    #season 2
    .goto Durotar,40.65,68.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nartok|r
    .accept 77586 >>Aceite Poder Roubado
    .target Nartok
    .train 403919,1
step
    #season 2
    .goto Durotar,42.99,54.43
    >>Pegue o |cRXP_PICK_Baú Encharcado|r para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa da Assombração|r] dentro da caverna
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .train 403919 >>|cRXP_WARN_Use a|r |T134419:0|t|cRXP_LOOT_[Runa da Assombração]|r |cRXP_WARN_para aprender|r |T133816:0|t[Gravar Luvas - Assombrar]
    .use 205230
    .itemcount 205230,1 -- Rune of Haunting (1)
step << Orc
    #season 2
    .goto Durotar,42.51,69.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mai'ah|r
    .turnin 77586 >>Entregue Poder Roubado
    .target Nartok
    .isOnQuest 77586
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Assombrar - 2 (Tirisfal Glades)
#title Assombrar


    --Rune of Haunt

step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .accept 77672 >>Aceite A Runa Perdida
    .target Maximillion
step
    #season 2
    .goto Tirisfal Glades,24.60,59.45
    >>Pegue o |cRXP_PICK_Baú Perdido|r dentro da caverna para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa da Assombração|r]
    .collect 205230,1 --Rune of Haunting (1)
    .train 403919,1
step
    #season 2
    .cast 402265 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Anotações de Feitiços: ALEG DEN AÇOL|r]
    .use 205230
    .train 403919,1
step << Undead
    #season 2
    .goto Tirisfal Glades,30.91,66.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maximillion|r
    .turnin 77672 >>Entregue A Runa Perdida
    .target Maximillion


]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Sifão da Alma - 13 (Durotar)
#title Sifão da Alma

step
    #completewith next
    .zone Durotar >>Vá para Durotar
step
    .train 403920,1
    .goto Durotar,48.60,15.28
    .collect 205020,1 >>Usar |T136163:0|t[Drenar Alma] em uma criatura para obter |T134095:0|t[Pure Estilhaço de Alma]
step
    --Wowhead npc 3203 also possible, maybe better?
    .train 403920,1
    >>Usar |T136163:0|t[Drenar Alma] em |cRXP_ENEMY_Gazz'uz|r (dentro da caverna) para obter |T134085:0|t[Maculado Estilhaço de Alma]. |cRXP_WARN_Você não precisa matá-lo e pode drenar de abaixo|r
    .goto Durotar,51.47,9.73
    .collect 205019,1
    .mob Gazz'uz
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_[[Darmak Bloodhowl] <[Soul Broker]>] <[Soul Broker]>|r
    .goto Durotar,54.6,41.6
    .collect 205022,1
    .skipgossip 208226,1
    .target Darmak Bloodhowl
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sifão da Alma|r] |cRXP_WARN_para treinar|r |T136169:0|t[Sifão da Alma]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Sifão da Alma - 9 (Tirisfal Glades)
#title Sifão da Alma

step
    #completewith next
    .zone Tirisfal Glades >>Viaje para Tirisfal Glades
step
    #completewith next
    .train 403920,1
    .collect 205020,1 >>Usar |T136163:0|t[Drenar Alma] em uma criatura para obter |T134095:0|t[Pure Estilhaço de Alma]
step
    .train 403920,1
    >>Usar |T136163:0|t[Drenar Alma] em |cRXP_ENEMY_Olho de Verme|r para obter |T134085:0|t[Maculado Estilhaço de Alma]. |cRXP_WARN_Você não precisa matá-lo.|r
    .goto Tirisfal Glades,58.6,31.6
    .collect 205019,1
    .mob Maggot Eye
step
    .train 403920,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denísio Solavia <Corretor de Almas>|r em Undercity
    .goto Undercity,84.2,25.8
    .collect 205022,1
    .skipgossip 208682,1
    .target Denton Bleakway
step
    .use 205022
    .itemcount 205022,1
    .train 403920 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sifão da Alma|r] |cRXP_WARN_para treinar|r |T136169:0|t[Sifão da Alma]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Táticas Demônioíacas - 4 (Tirisfal Glades)
#title Táticas Demônioíacas

step
    #completewith next
    .zone Tirisfal Glades >>Viaje para Tirisfal Glades
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tInteraja com o |cRXP_FRIENDLY_Morto Acólito|r. Abra |T133625:0|t[Mochila do Acólito]
    .goto Tirisfal Glades,76.61,44.87
    .use 205364
    .collect 205181,1
    .collect 208224,1
    .skipgossip 208927,1
    .mob Dead Acolyte
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Rupertino Boch|r no andar superior da estalagem.
    .goto Tirisfal Glades,61.6,52.4
    .collect 205182,1
    .skipgossip 2127,2
    .target Rupert Boch
step
    .train 416009,1
    >>Usar o |T133447:0|t[Artefato Sem Poderes] ao lado da pedra rúnica. |cRXP_WARN_Depois você tem 10 minutos para chegar a Undercity (olhe para seu debilitamento)|r
    .goto Tirisfal Glades,76.61,44.87
    .use 205182
    .collect 205183,1
step
    .train 416009,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to |cRXP_FRIENDLY_Carendin Halgar|r in Undercity
    .goto Undercity,85.0,25.6
    .collect 205215,1
    .skipgossip 5675,1
    .target Carendin Halgar
step
    .use 205215
    .itemcount 205215,1
    .train 416009 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Táticas|r] |cRXP_WARN_para treinar|r |T136150:0|t[Táticas Demônioíacas]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Graça Demônioíaca - 8 (Durotar)
#title Graça Demônioíaca

step
    #completewith DemonicGraceDurotarTome
    .zone Durotar >>Vá para Durotar
step
    #completewith DemonicGraceDurotarSkull
    >>Mate os |cRXP_ENEMY_Makrura|r. Saqueie-os para obter os |T133571:0|t[Makrura Pernas]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    #label DemonicGraceDurotarTome
    >>Mate os |cRXP_ENEMY_Trolls Hexeados|r e os |cRXP_ENEMY_Trolls de Vodu|r. Saqueie-os para obter o |T133733:0|t[Tomo Agourento]
    .goto Durotar,67.2,85.6
    .collect 207731,1
    .mob Hexed Troll
    .mob Voodoo Troll
step
    #label DemonicGraceDurotarSkull
    >>Mate os |cRXP_ENEMY_Humanos Kultirenos|r. Saqueie-os para obter o |T133730:0|t[Crânio Kultireno]
    .goto Durotar,58.6,56.0
    .collect 207733,1
    .mob Kul Tiras Sailor
    .mob Kul Tiras Marine
step
    #loop
    .goto Durotar,61.0,43.0,50,0
    .goto Durotar,60.8,70.6,50,0
    .goto Durotar,51.6,84.6,50,0
    .goto Durotar,60.8,70.6,50,0
    >>Mate os |cRXP_ENEMY_Makrura|r. Saqueie-os para obter os |T133571:0|t[Makrura Pernas]
    .collect 207732,1
    .mob Makrura Clacker
    .mob Makrura Shellhide
step
    .train 425477,1
    *|cRXP_WARN_CUIDADO: outros podem marcar seu demônio, o que significa que você teria que coletar os reagentes novamente|r
    >>Entre nos Esgotos. Usar o |T133733:0|t[Tomo Agourento] no Círculo de Evocação. Mate |cRXP_WARN_a élite (talvez procure ajuda)|r |cRXP_ENEMY_Soboz|r. Saqueie-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa de Graça|r]
    .goto Durotar,67.45,87.83
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Graça|r] |cRXP_WARN_para treinar|r |T236293:0|t[Graça Demônioíaca]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Graça Demônioíaca - 8 (Tirisfal Glades)
#title Graça Demônioíaca

step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesTome
    .zone Tirisfal Glades >>Vá para Claras da Tirisfal
step
    .train 425477,1
    #completewith DemonicGraceTirisfalGladesBlood
    >>Mate os |cRXP_ENEMY_Darkhounds|r. Saqueie-os para obter os |T133726:0|t[Hound Queixada]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesTome
    >>Mate os |cRXP_ENEMY_Darkeye Bonecasters|r. Saqueie-os para obter o |T133733:0|t[Tomo Agourento]
    .goto Tirisfal Glades,47.6,36.4
    .collect 207974,1
    .mob Darkeye Bonecaster
step
    .train 425477,1
    #label DemonicGraceTirisfalGladesBlood
    >>Mate os |cRXP_ENEMY_Rot Hides|r. Saqueie-os para obter o |T133730:0|t[Gnoll Sanguíneo]
    .goto Tirisfal Glades,58.6,34.6
    .collect 204906,1
    .mob Rot Hide Mongrel
    .mob Rot Hide Gnoll
    .mob Rot Hide Graverobber
step
    .train 425477,1
    #loop
    .goto Tirisfal Glades,73.4,52.8,50,0
    .goto Tirisfal Glades,59.4,60.2,50,0
    .goto Tirisfal Glades,44.4,58.4,50,0
    .goto Tirisfal Glades,42.0,43.0,50,0
    >>Mate os |cRXP_ENEMY_Darkhounds|r. Saqueie-os para obter os |T133726:0|t[Hound Queixada]
    .collect 207973,1
    .mob Cursed Darkhound
    .mob Decrepit Darkhound
    .mob Ravenous Darkhound
step
    .train 425477,1
    *|cRXP_WARN_CUIDADO: outros podem marcar seu demônio, o que significa que você teria que coletar os reagentes novamente|r
    >>Entre nos Esgotos. Usar o |T133733:0|t[Tomo Agourento] no Círculo de Evocação. Mate |cRXP_WARN_a élite (talvez procure ajuda)|r |cRXP_ENEMY_Soboz|r. Saqueie-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa de Graça|r]
    .goto Undercity,15.1,31.3,20,0
    .goto Undercity,24.11,41.59
    .collect 204912,1
    .mob Soboz
step
    .use 204912
    .itemcount 204912,1
    .train 425477 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Graça|r] |cRXP_WARN_para treinar|r |T236293:0|t[Graça Demônioíaca]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
-- #subgroup Chest << Mage
#subgroup Gloves << Warlock
-- #name Burnout - 8 (Tirisfal Glades) << Mage
#name Seta do Caos - 8 (Tirisfal Glades) << Warlock
#title Seta do Caos << Warlock
--Permok: Dont load it for mages for now

step << Mage
    >>Compre um (ou múltiplos) |T135933:0|t[Amuleto de Compreensão] de um Comerciante de Reagentes
    .collect 211779,1
step
    #completewith next
    .zone Tirisfal Glades >>Vá para Claras da Tirisfal
step
    .train 403925,1 << Warlock
    .train 401759,1 << Mage
    .goto Tirisfal Glades,66.3,40.0
    >>Libere o |cRXP_ENEMY_Murloc Congelado|r |cRXP_WARN_usando feitiços de fogo|r. Saqueie-o para obter |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Combustão|r] << Mage
    >>Libere o |cRXP_ENEMY_Murloc Congelado|r |cRXP_WARN_usando feitiços de fogo|r. Saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Seta do Caos|r] << Warlock
    *|cRXP_WARN_Em níveis baixos você não conseguirá libertá-lo sozinho, procure por outro Bruxo ou Mago|r
    .collect 205228,1 << Warlock
    .collect 203748,1 << Mage
    .mob Frozen Murloc
step
    .use 205228 << Warlock
    .use 203748 << Mage
    .itemcount 205228,1 << Warlock
    .itemcount 203748,1 << Mage
    .collect 211779,1 >>Você precisa de um |T135933:0|t[Amuleto de Compreensão] de um Comerciante de Reagentes para usar o item << Mage
    .train 403925 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Seta do Caos|r] |cRXP_WARN_para treinar|r |T236291:0|t[Seta do Caos]  << Warlock
    .train 401759 >>Usar o |T134939:0|t[|cRXP_FRIENDLY_Notas de Feitiço: Combustão|r] |cRXP_WARN_para treinar|r |T236207:0|t[Combustão] << Mage
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Lago de Fogo - 25 (Contraforte de Eira dos Montes)
#title Lago de Fogo

step
    #completewith next
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes (p. ex. de Undercity através de Floresta de Pinhaprata) << Horde
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes (p. ex. de Pantanal, siga para o norte) << Alliance
step
    .train 403937,1
    #loop
    .goto Hillsbrad Foothills,58.2,19.6,40,0
    .goto Hillsbrad Foothills,57.5,36.4,50,0
    .goto Hillsbrad Foothills,51.1,46.4,40,0
    >>Procure Zixil|cRXP_FRIENDLY_. Ele patrulha entre Tarren Moinho e Southshore. Compre |T133709:0|t[Explosivos de Demolição]|r dele |cRXP_WARN_por 1 ouro|r
    .collect 211487,1
    .target Zixil
step
    .train 403937,1
    >>Usar os |T133709:0|t[Explosivos de Demolição] para destruir o |cRXP_PICK_Cascalho|r. Saque o |cRXP_PICK_Storage Locker|r no chão para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Fires Rastro|r]
    .goto Hillsbrad Foothills,79.7,41.0
    .collect 211476,1
step
    .use 211476
    .itemcount 211476,1
    .train 403937 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Fires Rastro|r] |cRXP_WARN_para treinar|r |T135826:0|t[Lago de Fogo]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#name Incinerar - 22 (Montanhas Cristarrubra)
#title Incinerar

step
    #completewith next
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra
step
    .goto Redridge Mountains,74.0,82.2,60,0
    .goto Redridge Mountains,77.6,86.6,50,0
    .goto Redridge Mountains,76.8,82.2
    >>Mate o |cRXP_ENEMY_Incinerador Gar'im|r |cRXP_WARN_(lvl 23 elite)|r. Saque-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r]
    .collect 211477,1
    .unitscan Incinerator Gar'im
    .train 416015,1
step
    .use 211477
    .itemcount 211477,1
    .train 416015 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Incinerar|r] |cRXP_WARN_para treinar|r |T135789:0|t[Incinerar]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Mestre Canalizador - 12 (The Barrens)
#title Mestre Canalizador

step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step
    .train 403932,1
    >>|cRXP_WARN_Vá ao Altar de Espinhos|r. Use |T136126:0|t[Conversão de Vida] até estar quase morrendo. Então use |T136168:0|t[Funil de Vida] no seu pet para morrer e obter |T134419:0|t[|cRXP_FRIENDLY_Rune of Canalizando|r]
    *|cRXP_WARN_você será revivido imediatamente ao morrer|r
    .goto The Barrens,58.2,26.7
    .cast 1454
    .cast 735
    .collect 208750,1
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r] |cRXP_WARN_para treinar|r |T136168:0|t[Mestre Canalizador]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Mestre Canalizador - 14 (Floresta de Pinhaprata)
#title Mestre Canalizador

step
    #completewith next
    .zone Silverpine Forest >>Viaje para a Floresta de Pinhaprata
step
    .train 403932,1
    >>Entre na caverna no local do ponto de viagem. Usar |T136225:0|t[Maldição da Temeridade] no |cRXP_ENEMY_Sadistic Fiend|r. Abata-o e saqueie-o para obter |T134419:0|t[|cRXP_FRIENDLY_Rune of Canalizando|r]
    .goto Silverpine Forest,56.6,46.4
    .collect 208750,1
    .mob Sadistic Fiend
step
    .use 208750
    .itemcount 208750,1
    .train 403932 >>|cRXP_WARN_use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r] |cRXP_WARN_para treinar|r |T136168:0|t[Mestre Canalizador]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Salva de Setas Sombrias - 16 (The Barrens)
#title Salva de Setas Sombrias

step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step
    .train 403936,1
    >>Usar |T136163:0|t[Drenar Alma] em Supervisor Rancatraca|cRXP_ENEMY_ (|rFeitor Glube|cRXP_ENEMY_ também pode funcionar) até obter |T134105:0|t[Alma de Ganância]|r
    *|cRXP_WARN_Você não precisa da tag|r
    .goto The Barrens,56.6,8.2
    .collect 208743,1
    .mob Supervisor Lugwizzle
    .mob Overseer Glibby
step
    .train 403936,1
    >>Clique em |cRXP_PICK_Fome Ídolo|r para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Shadowbolts|r]
    .goto The Barrens,57.06,9.65
    .collect 208744,1
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Shadowbolts|r] |cRXP_WARN_para treinar|r |T136195:0|t[Salva de Setas Sombrias]
]])

RXPGuides.RegisterGuide([[
#classic
<< Horde Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Salva de Setas Sombrias - 18 (Floresta de Pinhaprata)
#title Salva de Setas Sombrias

step
    #completewith next
    .zone Silverpine Forest >>Viaje para a Floresta de Pinhaprata
step
    .goto Silverpine Forest,60.38,74.37,40,0
    .goto Silverpine Forest,60.29,72.21,40,0
    .goto Silverpine Forest,59.38,70.54
    .train 403936,1
    >>Abate |cRXP_ENEMY_Mourejante Corvinalle|r e |cRXP_ENEMY_Ravenclaw Guardiões|r dentro da caverna|cRXP_WARN_. Saqueie-os para obter |T236295:0|t[Alma Torturada]|r
    .collect 210713,1
    .mob Ravenclaw Drudger
    .mob Ravenclaw Guardian
step
    .train 403936,1
    >>Usar |T136126:0|t[Conversão de Vida] uma vez e depois |T236295:0|t[Alma Torturada]. Abate a |cRXP_ENEMY_Alma Torturada|r. Saqueie-a para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Shadowbolts|r]
    .collect 208744,1
    .use 210713
    .cast 1455
    .mob Tortured Soul
step
    .use 208744
    .itemcount 208744,1
    .train 403936 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Shadowbolts|r] |cRXP_WARN_para treinar|r |T136195:0|t[Salva de Setas Sombrias]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Metamorfose - 25 (Azeroth)
#title Metamorfose

step
    #completewith WarlockRuneMetamorphosisA
    +|cRXP_WARN_É recomendado fazer todos esses passos em um grupo. Alguns passos podem ser completados sozinho.|r
step
    #completewith next
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra (por exemplo, pegue o barco de Ratchet para Booty Bay, corra para o norte) << Horde
    .zone Redridge Mountains >>Viaje para as Montanhas Cristarrubra << Alliance
step
    #label WarlockRuneMetamorphosisA
    .train 403938,1
    >>Saque o |cRXP_PICK_Demoníaco Reliquary|r no topo da torre para obter |T134337:0|t[Orbe of Des]
    *|cRXP_WARN_Tenha cuidado pois é guardado por uma élite. Saque o baú enquanto seu Emissário do Caos tanqua os inimigos|r
    .collect 210765,1
    .goto Redridge Mountains,80.2,49.5
step << Horde
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doan Karhan|r
    *|cRXP_WARN_Pule este passo se você está passando pelas Savanas|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Aceite O Orbe de Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Darkshore >>Vá para a Costa Negra (pegue o barco de Menethil Harbor) << Alliance
    .zone Darkshore >>Vá para a Costa Negra (caminhe por Vale Gris) << Horde
step
    .train 403938,1
    >>Saque o |cRXP_PICK_Bough of Altek|r no topo da torre para obter |T135153:0|t[Bough of Altek]
    *|cRXP_WARN_Tenha cuidado. Uma forma seria morrer perto dele, pule atrás da estante, ressuscite, (talvez desconcerte o primeiro conjurador que o atacaria) e saque-o.|r
    .collect 210763,1
    .goto Darkshore,56.3,26.5
step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .accept 1740 >>Aceite O Orbe de Soran'ruk
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
step
    .train 403938,1
    >>Mate os |cRXP_ENEMY_Acólitos do Crepúsculo|r perto da entrada da incursão BFD. Saqueie-os para obter os |cRXP_LOOT_Fragmentos de Soran'ruk|r
    *|cRXP_WARN_O |cRXP_WARN_Acólito do Crepúsculo|r dentro da incursão antes do 5º chefe também os solta|r
    .goto Ashenvale,14.5,14.3
    .complete 1740,1 --3/3 Soran'ruk Fragment
    .mob Twilight Acolyte
step
    .train 403938,1
    >>Mate os |cRXP_ENEMY_Shadowfang Darksouls|r dentro da |cRXP_WARN_masmorra Bastilha da Presa Negra (vá para a direita após o |cRXP_ENEMY_Baron Silverlaine|r)|r. Saqueie-os para obter o |cRXP_LOOT_Grande Fragmento de Soran'ruk|r
    .complete 1740,2 --1/1 Large Soran'ruk Fragment
    .mob Shadowfang Darksoul
step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doan Karhan|r
    .goto The Barrens,49.2,57.2
    .turnin 1740 >>Entregue O Orbe de Soran'ruk
    .accept 78680 >>Aceite Rumores se Espalham
    .turnin 78680 >>Entregue Rumores se Espalham
    .accept 78681 >>Aceite O Convocatório
    .target Doan Karhan
step
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
step
    .train 403938,1
    .goto Ashenvale,83.07,70.56,40,0
    .goto Ashenvale,84.05,76.96,30,0
    .goto Ashenvale,81.29,78.14,30,0
    .goto Ashenvale,79.05,81.11,30,0
    .goto Ashenvale,84.2,76.4
    >>Mate os |cRXP_ENEMY_Demônios|r na área. Saqueie-os pelo |cRXP_LOOT_Sangue da Legião|r
    .complete 78681,1 --10/10 Blood of the Legion
    .mob Mannoroc Lasher
    .mob Felguard
    .mob Searing Infernal
    .mob Legion Hound
step
    #completewith WarlockRuneMetamorphosisB
    +|cRXP_WARN_Se você estiver em um grupo de bruxos, o primeiro bruxo (aquele que tem uma debilitação) que entrega a missão tem que dar o golpe final do |cRXP_ENEMY_Infernal Abrasador|r enquanto fica dentro da runa|r
step
    .train 403938,1
    >>Interaja com a |cRXP_PICK_Pedra do Ritual Negro|r
    .goto Ashenvale,78.92,80.29
    .turnin 78681 >>Entregue O Convocatório
    .target Dark Ritual Stone
step
    .train 403938,1
    #label WarlockRuneMetamorphosisB
    >>Mate os |cRXP_ENEMY_Demônios|r que aparecem. |cRXP_WARN_Abate o |cRXP_ENEMY_Infernal Abrasador|r ENQUANTO CANALIZA|r |T136163:0|t[Drenar Alma] |cRXP_WARN_e ENQUANTO FICA DENTRO DA RUNA|r
    .goto Ashenvale,79.00,80.38
    .accept 78684 >>Aceite Viajante Misterioso
    .mob Searing Infernal
step
    .train 403938,1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doan Karhan|r para obter |T134419:0|t[|cRXP_FRIENDLY_Runa de Metamorfose|r]
    .goto The Barrens,49.2,57.2
    .turnin 78684 >>Entregue Viajante Misterioso
    .turnin 78702 >>Entregue Raszel Ander
    .collect 210980,1
    .target Doan Karhan
step
    .use 210980
    .itemcount 210980,1
    .train 403938 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Metamorfose|r] |cRXP_WARN_para treinar|r |T237558:0|t[Metamorfose]
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Grimório de Sinergia - 40 (Azeroth)
#title Grimório de Sinergia

step
    #optional
    #completewith next
    .train 426445,1
    +|cRXP_WARN_Você deve estar no mínimo no nível 30 antes de poder adquirir a|r |T133738:0|t[Grimório de Sinergia] |cRXP_WARN_runa|r
    .xp >30,1
step
    .train 403938 >>|cRXP_WARN_Você deve primeiro adquirir a runa de|r |T237558:0|t[Metamorfose] |cRXP_WARN_antes de adquirir a|r |T133738:0|t[Grimório de Sinergia] |cRXP_WARN_runa|r
step
    #optional
    .train 426445,1
    +|cRXP_WARN_Você deve estar no mínimo no nível 30 antes de poder adquirir a|r |T133738:0|t[Grimório de Sinergia] |cRXP_WARN_runa|r
    .xp >30,1
step
    .train 426445,1
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Você deve estar em|r |T237558:0|t[Metamorfose] |cRXP_WARN_para ver|r |cRXP_FRIENDLY_Raszel Ander|r
    .accept 78994 >>Aceite Uma Base Sólida
    .target Raszel Ander
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    .home >>Defina sua Pedra de Retorno em Ratchet
    .target Innkeeper Wiley
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Byula <Antigo Estalajadeiro>|r
    .home >>Defina sua Pedra de Regresso em Camp Taurajo
    .target Innkeeper Byula
step << Alliance
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,63.084,37.163
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Azshara >>Voe para Azshara
    .target Bragok
step << Horde
    .train 426445,1
    .isOnQuest 78994
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Splintertree Post >>Voe para Posto Avançado de Machado
    .target Omusa Thunderhorn
step
    .train 426445,1
    .train 126,3 -- skips step if they don't have eye of killrog trained
    .isOnQuest 78994
    .goto Ashenvale,88.82,41.52
    >>|cRXP_WARN_Viaje para a localização da seta em Vale Gris|r
    .cast 126 >>|cRXP_WARN_Lance|r |T136155:0|t[Olho de Kilrogg] |cRXP_WARN_e entre em Bough Sombra com isso (a área com todos os elites de nível 60+) e procure por uma árvore |cRXP_PICK_Bough of Sombras|r. Pode haver múltiplos pontos de aparição em todo Bough Sombra, e idealmente você quer encontrar um que não tenha muitos elites perto dele para que você possa saqueá-lo|r
step
    .train 426445,1
    .isOnQuest 78994
    #completewith next
    .goto Ashenvale,88.82,41.52
    .cast 440505 >>|cRXP_WARN_Use a|r |T236874:0|t[Poção de Invisibilidade] |cRXP_WARN_e procure por uma das |cRXP_PICK_Bough of Sombras|r árvores em todo Bough Sombra. A área tem muitos elites de nível 60+ patrulhando|r
    .use 217693
step
    .train 426445,1
    .isOnQuest 78994
    .goto Ashenvale,90.9,38.6,20,0
    .goto Ashenvale,91,37,0
    >>|cRXP_WARN_Antes de saquear a |cRXP_PICK_Bough of Sombras|r, tire todo seu equipamento e lance|r |T136121:0|t[Proteção contra Sombra]|cRXP_WARN_. Você está prestes a receber um debuff de dano muito alto que causa dano baseado em percentual. Esteja pronto para usar sua Pedra de Regresso depois de saquear|r
    >>Saque qualquer um dos |cRXP_PICK_Bough of Sombras|r em todo Bough Sombra
    .complete 78994,1
step
    #completewith next
    .train 426445,1
    .isOnQuest 78994
    .hs >>Use sua Pedra de Retorno para ir a Ponto de Ancoragem << Alliance
    .hs >>Use sua Pedra de Retorno para ir a Camp Taurajo << Horde
    .zoneskip The Barrens
step
    .train 426445,1
    .goto The Barrens,49.271,57.239
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Você deve estar em|r |T237558:0|t[Metamorfose] |cRXP_WARN_para ver|r |cRXP_FRIENDLY_Raszel Ander|r
    .turnin 78994 >>Entregue Uma Base Sólida
    .accept 78914 >>Aceite Receptáculo de Alma
    .target Raszel Ander
step
    .train 426445,1
    >>|cRXP_WARN_Adquira os seguintes materiais e peça a um Engenheiro para criar um|r |T133254:0|t[Receptáculo de Alma] |cRXP_WARN_para você. Observe que o|r |T134133:0|t[Preto Vitriol] |cRXP_WARN_e o|r |T134074:0|t[Shadowgem] |cRXP_WARN_podem ser comprados na Casa do Leilão e o|r |T134337:0|t[Demoníaco Figurine] |cRXP_WARN_de um|r |cRXP_FRIENDLY_Comerciante de Reagentes|r
    .collect 9262,1,78914,1,1 -- Black Vitriol
    .collect 1210,4,78914,1,1 -- Shadowgem
    .collect 16583,1,78914,1,1 -- Demonic Figurine
    >>|cRXP_WARN_Alternativamente você pode comprar um|r |T133254:0|t[Receptáculo de Alma] |cRXP_WARN_diretamente da Casa de Leilões|r
    .collect 211427,1,78914,1
step
    #completewith next
    .train 426445,1
    .zone Desolace >>Viaje para a Desolação
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Você deve estar em|r |T237558:0|t[Metamorfose] |cRXP_WARN_para ver|r |cRXP_FRIENDLY_Raszel Ander|r
    .turnin 78914 >>Entregue Receptáculo de Alma
    .accept 79298 >>Aceite Destino Tentador
    .target Raszel Ander
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    .gossip 215850,1 >>Converse com |cRXP_FRIENDLY_Raszel Ander|r para começar o ritual
    .timer 14,RP de Destino Tentador
    .skipgossip
step
    .train 426445,1
    .goto Desolace,51.195,82.465
    >>Clique no |cRXP_PICK_Cajado Reconstruído de NO TRANSLATION FOUND TO THIS ELEMENT|r para invocar |cRXP_ENEMY_Des'Altek|r
    >>|cRXP_WARN_Certifique-se de ter saúde máxima com|r |T136121:0|t[Proteção contra Sombra] |cRXP_WARN_ativa, pois você receberá dano enquanto canaliza e durante todo o combate|r
    >>Mate |cRXP_ENEMY_Des'Altek|r
    .complete 79298,1
    .mob Des'Altek
step
    .train 426445,1
    .goto Desolace,51.171,82.425
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Raszel Ander|r
    >>|cRXP_WARN_Você deve estar em|r |T237558:0|t[Metamorfose] |cRXP_WARN_para ver|r |cRXP_FRIENDLY_Raszel Ander|r
    .turnin 79298 >>Virar in Destino tentador
    .target Raszel Ander
step
    .train 426445 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Sinergia|r] |cRXP_WARN_para treinar|r |T133738:0|t[Grimório de Sinergia]
    .use 213090
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Mestre Canalizador - 10 (Loch Modan)
#title Mestre Canalizador

step << Warlock
    .line Loch Modan,22.87,70.89,24.69,68.20,28.02,65.41,29.47,59.92,31.56,56.66,32.36,50.09,34.94,47.10,32.36,50.09,31.36,47.60,31.54,44.72,32.29,42.34,32.25,41.14,31.08,38.57,30.04,31.45,27.96,25.37,26.73,23.07,26.04,19.16,25.95,15.13,25.53,11.66
    .goto Loch Modan,22.87,70.89,50,0
    .goto Loch Modan,24.69,68.20,50,0
    .goto Loch Modan,28.02,65.41,50,0
    .goto Loch Modan,29.47,59.92,50,0
    .goto Loch Modan,31.56,56.66,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,34.94,47.10,50,0
    .goto Loch Modan,32.36,50.09,50,0
    .goto Loch Modan,31.36,47.60,50,0
    .goto Loch Modan,31.54,44.72,50,0
    .goto Loch Modan,32.29,42.34,50,0
    .goto Loch Modan,32.25,41.14,50,0
    .goto Loch Modan,31.08,38.57,50,0
    .goto Loch Modan,30.04,31.45,50,0
    .goto Loch Modan,27.96,25.37,50,0
    .goto Loch Modan,26.73,23.07,50,0
    .goto Loch Modan,26.04,19.16,50,0
    .goto Loch Modan,25.95,15.13,50,0
    .goto Loch Modan,25.53,11.66
    >>|cRXP_WARN_Procure por |cRXP_FRIENDLY_Greishan Fornoferro|r patrulhando na estrada em Loch Modan. O caminho de sua patrulha é marcado no seu mapa|r
    >>|cRXP_BUY_Compre uma|r |T237359:0|t[Torta Malevolente] |cRXP_BUY_dele|r
    .collect 208833,1
    .unitscan Greishan Ironstove
    .train 403932,1
step << Warlock
    .use 208833 >>|cRXP_WARN_Use o|r |T237359:0|t[Torta Malevolente] |cRXP_WARN_para comê-la. Uma vez que o|r |T132108:0|t[Indigestão Infernal] |cRXP_WARN_debuff expire, você receberá o|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Canalizando|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r] |cRXP_WARN_para treinar|r |T136168:0|t[Mestre Canalizador]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Mestre Canalizador - 15 (Costa Negra)
#title Mestre Canalizador

step << Warlock
    .goto Darkshore,55.27,27.74,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,57.54,25.99,40,0
    .goto Darkshore,56.92,27.27,40,0
    .goto Darkshore,55.27,27.74
    >>Mate os |cRXP_ENEMY_Dark Strand Fanatics|r. Saqueie-os pelo |T134419:0|t[|cRXP_FRIENDLY_Rune of Canalizando|r]
    .collect 208750,1 -- Rune of Channeling (1)
    .mob Dark Strand Fanatic
    .train 403932,1
step << Warlock
    .train 403932 >>|cRXP_WARN_use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Canalização|r] |cRXP_WARN_para treinar|r |T136168:0|t[Mestre Canalizador]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#name Sifão da Alma - 10 (Dun Morogh)
#title Sifão da Alma

step << Warlock
    #completewith next
    >>|cRXP_WARN_Lance|r |T136163:0|t[Drenar Alma] |cRXP_WARN_em qualquer bicho para receber um|r |T134095:0|t[|cRXP_LOOT_Pure Estilhaço de Alma|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,77.894,62.236
    >>Mate o |cRXP_ENEMY_Capitão Beld|r lá embaixo dentro do prédio. Saqueie-o para um |T134085:0|t[|cRXP_LOOT_Tainted Estilhaço de Alma|r]
    >>|cRXP_WARN_Certifique-se de que ele morre enquanto você também tem|r |T136163:0|t[Drenar Alma] |cRXP_WARN_nele|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Captain Beld
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Lance|r |T136163:0|t[Drenar Alma] |cRXP_WARN_em qualquer bicho para receber um|r |T134095:0|t[|cRXP_LOOT_Pure Estilhaço de Alma|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Dun Morogh,47.351,53.550
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gaklik Torcecaos <Corretor de Almas>|r para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Sifão da Alma|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Gaklik Voidtwist
step << Warlock
    .train 403920 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sifão da Alma|r] |cRXP_WARN_para treinar|r |T136169:0|t[Sifão da Alma]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Sifão da Alma - 10 (Elwynn Forest)
#title Sifão da Alma

step << Warlock
    #completewith next
    >>|cRXP_WARN_Lance|r |T136163:0|t[Drenar Alma] |cRXP_WARN_em qualquer bicho para receber um|r |T134095:0|t[|cRXP_LOOT_Pure Estilhaço de Alma|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    .goto Elwynn Forest,27.0,86.7,80,0
    .goto Elwynn Forest,26.1,89.9,80,0
    .goto Elwynn Forest,25.2,92.7,80,0
    .goto Elwynn Forest,27.0,93.9,80,0
    >>Abate |cRXP_ENEMY_Hogger|r. Saque-o para um |T134085:0|t[|cRXP_LOOT_Maculado Estilhaço de Alma|r]
    >>|cRXP_WARN_Certifique-se de que ele morre enquanto você também tem|r |T136163:0|t[Drenar Alma] |cRXP_WARN_nele|r
    .collect 205019,1 -- Tainted Soul Shard (1)
    .mob Hogger
    .train 403920,1
step << Warlock
    >>|cRXP_WARN_Lance|r |T136163:0|t[Drenar Alma] |cRXP_WARN_em qualquer bicho para receber um|r |T134095:0|t[|cRXP_LOOT_Pure Estilhaço de Alma|r]
    .collect 205020,1 -- Pure Soul Shard (1)
    .train 403920,1
step << Warlock
    .goto Elwynn Forest,44.093,66.315
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Deimon Kane <Corretor de Almas>|r no porão da estalagem de Goldshire para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Sifão da Alma|r]
    .collect 205022,1 -- Rune of Soul Siphon (1)
    .skipgossip
    .itemcount 205020,1
    .itemcount 205019,1
    .target Damien Kane
step << Warlock
    .train 403920 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Sifão da Alma|r] |cRXP_WARN_para treinar|r |T136169:0|t[Sifão da Alma]
    .use 208750
    .itemcount 208750,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Baú
#name Táticas Demônioíacas - 1 (Elwynn Forest)
#title Táticas Demônioíacas

step << Warlock
    .goto Elwynn Forest,56.743,57.650
    >>Saqueie o |cRXP_FRIENDLY_Dead Acólito|r para o |T133625:0|t[|cRXP_LOOT_Mochila do Acólito|r]
    .collect 205364,1 -- Acolyte's Knapsack (1)
    .skipgossip
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    .use 205364 >>|cRXP_WARN_Use a|r |T133625:0|t[|cRXP_LOOT_Mochila do Acólito|r] |cRXP_WARN_para receber um|r |T133447:0|t[|cRXP_LOOT_Artefato Não Identificado|r]
    .collect 205181,1 -- Unidentified Artifact (1)
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,44.390,66.242
    .gossipoption 109291 >>Fale com |cRXP_FRIENDLY_Wagner Nascimento|r no porão da estalagem de Goldshire para receber o |T133447:0|t[|cRXP_LOOT_Artefato Sem Poderes|r]
    .collect 205182,1 -- Powerless Artifact (1)
    .skipgossip
    .target Maximillian Crowe
    .train 416009,1
step << Warlock
    .goto Elwynn Forest,56.743,57.650
    .cast 408755 >>|cRXP_WARN_Use o|r |T133447:0|t[|cRXP_LOOT_Artefato Sem Poderes|r] |cRXP_WARN_no local do |cRXP_FRIENDLY_Dead Acólito's|r para receber a|r |T136008:0|t[Oferenda de Sangue] |cRXP_WARN_penalidade|r
    .use 205182
    .aura 408755
    .target Dead Acolyte
    .train 416009,1
step << Warlock
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
    .train 416009,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
    .train 416009,1
step << Warlock
    .goto StormwindClassic,25.25,78.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gakin, o Neromante|r para receber a |T134419:0|t[|cRXP_FRIENDLY_Runa de Táticas|r]
    .collect 205215,1 -- Rune of Tactics (1)
    .skipgossip
    .target Gakin the Darkbinder
    .train 416009,1
step << Warlock
    .train 416009 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Táticas|r] |cRXP_WARN_para treinar|r |T136150:0|t[Táticas Demônioíacas]
    .use 205215
    .itemcount 205215,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Graça Demônioíaca - 10 (Elwynn Forest)
#title Graça Demônioíaca

step << Warlock
    .goto Elwynn Forest,61.6,53.8
    >>Abate os |cRXP_ENEMY_Kobold Geomancers|r. Saque-os para um |T133733:0|t[|cRXP_LOOT_Tomo Ominoso|r]
    .collect 204905,1 -- Ominous Tome (1)
    .mob Kobold Geomancer
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,27.0,86.7,70,0
    .goto Elwynn Forest,26.1,89.9,70,0
    .goto Elwynn Forest,25.2,92.7,70,0
    .goto Elwynn Forest,27.0,93.9,70,0
    .goto Elwynn Forest,25.9,93.9
    >>Abate os |cRXP_ENEMY_Riverpaw Nanico|r e os |cRXP_ENEMY_Riverpaw Outrunners|r. Saqueie-os para o |cRXP_LOOT_Gnoll Sanguíneo|r
    .collect 204906,1 -- Gnoll Blood (1)
    .mob Riverpaw Runt
    .mob Riverpaw Outrunner
    .train 425477,1
step << Warlock
    .goto Elwynn Forest,35.6,61.0,60,0
    .goto Elwynn Forest,57.8,59.4
    >>Abate os |cRXP_ENEMY_Mangy Wolves|r, os |cRXP_ENEMY_Gray Forest Wolves|r e os |cRXP_ENEMY_Prowlers|r. Saqueie-os para um |cRXP_LOOT_Wolf Queixada|r
    .collect 204907,1 -- Wolf Jawbone (1)
    .mob Mangy Wolf
    .mob Gray Forest Wolf
    .mob Prowler
    .train 425477,1
step << Warlock
    #completewith next
    .zone Stormwind City >>Vá para Ventobravo
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,29.2,74.0,20,0
    .goto StormwindClassic,27.2,78.1,15 >>Vá para The Slaughtered Lamb e desça
    .train 425477,1
step << Warlock
    #completewith next
    .goto StormwindClassic,25.2,80.7,18,0
    .goto StormwindClassic,23.2,79.5,18,0
    .goto StormwindClassic,26.3,79.5,18,0
    .goto StormwindClassic,25.154,77.406
    >>Viaje até o subsolo de O Cordeiro Degolado
    .cast 418065 >>|cRXP_WARN_Use o|r |T133733:0|t[|cRXP_LOOT_Tomo Ominoso|r] |cRXP_WARN_para evocar|r |cRXP_ENEMY_Soboz|r
    .use 204905
    .train 425477,1
step << Warlock
    .goto StormwindClassic,25.154,77.406
    .use 204905 >>Abate |cRXP_ENEMY_Soboz|r. Saque-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa de Graça|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Graça|r] |cRXP_WARN_para treinar|r |T236293:0|t[Graça Demônioíaca]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Pernas
#name Graça Demônioíaca - 10 (Dun Morogh)
#title Graça Demônioíaca

step << Warlock
    .goto Dun Morogh,22.8,50.6
    >>Abate os |cRXP_ENEMY_Frostmane Shadowcasters|r. Saque-os para um |T133733:0|t[|cRXP_LOOT_Tomo Ominoso|r]
    .collect 208139,1 -- Ominous Tome (1)
    .mob Frostmane Shadowcaster
    .train 425477,1
step << Warlock
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
    >>Abate os |cRXP_ENEMY_Young Wendigos|r e os |cRXP_ENEMY_Wendigos|r. Saque-os para o |cRXP_LOOT_Wendigo Sanguíneo|r
    .collect 208140,1 -- Wendigo Blood (1)
    .mob Young Wendigo
    .mob Wendigo
    .train 425477,1
step << Warlock
    .goto Dun Morogh,45.6,43.2,60,0
    .goto Dun Morogh,34.6,41.8
    >>Abate qualquer |cRXP_ENEMY_Lobo|r em Dun Morogh. Saque-os para o |cRXP_LOOT_Lobo Queixada|r
    .collect 204907,1 -- Wolf Jawbone
    .mob Starving Winter Wolf
    .mob Winter Wolf
    .mob Snow Tracker Wolf
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .cast 418065 >>|cRXP_WARN_Use o|r |T133733:0|t[|cRXP_LOOT_Tomo Ominoso|r] |cRXP_WARN_para evocar|r |cRXP_ENEMY_Soboz|r
    .use 208139
    .train 425477,1
step << Warlock
    .goto Dun Morogh,42.23,35.40
    .use 204905 >>Abate |cRXP_ENEMY_Soboz|r. Saque-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa de Graça|r]
    .collect 204912,1 -- Rune of Grace (1)
    .mob Soboz
    .train 425477,1
step << Warlock
    .train 425477 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Graça|r] |cRXP_WARN_para treinar|r |T236293:0|t[Graça Demônioíaca]
    .use 204912
    .itemcount 204912,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Salva de Setas Sombrias - 16 (Costa Negra)
#title Salva de Setas Sombrias

step << Warlock
    .goto Darkshore,56.8,27.6,60,0
    .goto Darkshore,57.6,26.0
    >>Abate |cRXP_ENEMY_Delmanis, o Odiado|r. Saque-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa de Raios de Sombra|r]
    .collect 208744,1 -- Rune of Shadowbolts (1)
    .unitscan Delmanis the Hated
    .train 403936,1
step << Warlock
    .train 403936 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Shadowbolts|r] |cRXP_WARN_para treinar|r |T136195:0|t[Salva de Setas Sombrias]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Seta do Caos - 8 (Dun Morogh)
#title Seta do Caos

step << Warlock
    .goto Dun Morogh,69.365,58.302
    >>Mate o |cRXP_ENEMY_Trogg Congelado|r. Saqueie-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa de Seta do Caos|r]
    >>|cRXP_WARN_Nota: Para quebrar o bloco de gelo, deve atacá-lo com vários feitiços de fogo em rápida sucessão|r
    >>|cRXP_WARN_Lançe|r |T135817:0|t[Imolação] |cRXP_WARN_e use seu Diabrete para também atacá-lo. Você vai precisar da assistência de outro Bruxo ou Mago para quebrá-lo|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Trogg
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Seta do Caos|r] |cRXP_WARN_para treinar|r |T236291:0|t[Seta do Caos]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Alliance Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Gloves
#name Seta do Caos - 8 (Elwynn Forest)
#title Seta do Caos

step << Warlock
    .goto Elwynn Forest,77.010,51.897
    >>Mate o |cRXP_ENEMY_Murloc Congelado|r. Saqueie-o para a |T134419:0|t[|cRXP_FRIENDLY_Runa de Seta do Caos|r]
    >>|cRXP_WARN_Nota: Para quebrar o bloco de gelo, deve atacá-lo com vários feitiços de fogo em rápida sucessão|r
    >>|cRXP_WARN_Lançe|r |T135817:0|t[Imolação] |cRXP_WARN_e use seu Diabrete para também atacá-lo. Você vai precisar da assistência de outro Bruxo ou Mago para quebrá-lo|r
    .collect 205228,1 -- Rune of Chaos Bolt (1)
    .mob Frozen Murloc
    .train 403925,1
step << Warlock
    .train 403925 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Seta do Caos|r] |cRXP_WARN_para treinar|r |T236291:0|t[Seta do Caos]
    .use 208744
    .itemcount 208744,1
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Cinto
#name Invocação - 35 (Planalto Arathi)
#title Invocação

-- Invocation

step
    .train 426443,1
    #completewith SyndicateConjuror
    +|cRXP_WARN_Recomenda-se que você encontre membros adicionais do grupo para adquirir o|r |T134419:0|t[|cRXP_LOOT_Runa de Invocação|r] |cRXP_WARN_conforme exige matar élites em Stromgarde Keep|r
step
    .train 426443,1
    .zone Arathi Highlands >>Vá para Planalto Arathi
step
    .train 426443,1
    #completewith next
    .subzone 324 >>Vá para Stromgarde Keep
step
    #label SyndicateConjuror
    .train 426443,1
    #loop
    .goto Arathi Highlands,26.04,62.80,40,0
    .goto Arathi Highlands,29.47,64.14,40,0
    .goto Arathi Highlands,29.06,60.96,40,0
    >>Abate |cRXP_ENEMY_Syndicate Conjurors|r. Saqueie-os para obter |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r]
    >>Abate um |cRXP_ENEMY_Lacaio Emissário do Caos|r enquanto você está canalizando |T136163:0|t[Drenar Alma] nele para receber uma |T132885:0|t[|cRXP_LOOT_Alma do Caos|r]
    .collect 213573,10
    .collect 213572,1
    .mob Syndicate Conjuror
    .mob Voidwalker Minion
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.292,62.283,10 >>|cRXP_WARN_Entre na grande casa no nível inferior de Stromgarde Keep, e suba para o 2º andar|r
step
    #completewith next
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    .cast 434994 >>|cRXP_WARN_Use o|r |T348282:0|t[|cRXP_LOOT_Conjuror's Pendants|r] |cRXP_WARN_nas escadas ao lado do|r |cRXP_PICK_Void Prisma|r |cRXP_WARN_flutuante para invocar o elite de nível 36 |cRXP_ENEMY_Perscrutador do Caos|r
    .use 213573
step
    .train 426443,1
    .goto Arathi Highlands,29.077,63.079
    >>Abate o |cRXP_ENEMY_Perscrutador do Caos|r. Saqueie-o pela |T134419:0|t[|cRXP_LOOT_Runa da Invocação|r]
    .collect 213098,1
    .mob Void Seeker
step
    .train 426443 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_LOOT_Runa de Invocação|r] |cRXP_WARN_para treinar|r |T136133:0|t[Invocação]
    .use 213098
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Dança dos Perversos - 35 (Desolação)
#title Dança dos Perversos

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Desolace >>Viaje para a Desolação
step
    .train 416017,1
    .goto Desolace,74.5,13.4
    >>Clique em |cRXP_ENEMY_Bruxo Descuidado|r no chão. Saqueie-o para obter |T236297:0|t[Entalhe com Enxofre]
    >>|cRXP_WARN_Este é um inimigo raro e há chance de ele não estar presente|r
    .collect 213583,1
    .mob Reckless Warlock
    .unitscan Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Use|r |T135818:0|t[Fogo do Inferno] |cRXP_WARN_para se danificar abaixo de 70% de saúde. Depois|r |T236297:0|t[Entalhe com Enxofre] |cRXP_WARN_se transformará em|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Perversão|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Perversão|r] |cRXP_WARN_para aprender|r |T236295:0|t[Dança dos Perversos]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Dança dos Perversos - 35 (Stranglethorn)
#title Dança dos Perversos

-- Dance of the Wicked

step
    .train 416017,1
    #completewith next
    .zone Stranglethorn Vale>>Viaje para Stranglethorn
step
    .train 416017,1
    .goto Stranglethorn Vale,31.2,47.4
    >>Clique em |cRXP_ENEMY_Bruxo Descuidado|r no chão. Saqueie-o para obter |T236297:0|t[Entalhe com Enxofre]
    >>|cRXP_WARN_Este é um inimigo raro e há chance de ele não estar presente|r
    .collect 213583,1
    .unitscan Reckless Warlock
    .mob Reckless Warlock
step
    .train 416017,1
    >>|cRXP_WARN_Use|r |T135818:0|t[Fogo do Inferno] |cRXP_WARN_para se danificar abaixo de 70% de saúde. Depois|r |T236297:0|t[Entalhe com Enxofre] |cRXP_WARN_se transformará em|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Perversão|r]
    .collect 213102,1 --Rune of Wickedness
step
    .train 416017 >>|cRXP_WARN_Use|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Perversão|r] |cRXP_WARN_para aprender|r |T236295:0|t[Dança dos Perversos]
    .use 416017
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Botas
#name Chama Sombria - 40 (Desolação)
#title Chama Sombria


-- Shadowflame

step
    .train 426467,1
    #completewith next
    .zone Desolace >>Viagem para Desolação |cRXP_WARN_É altamente recomendado formar um grupo de pelo menos 3 jogadores.|r
step
    .train 426467,1
    .train 19028,3 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >>|cRXP_WARN_Clique no Altar para invocar|r |cRXP_ENEMY_[[Seductress Ceeyna] <[Mistress of Desire]>] <[Mistress of Desire]>|r |cRXP_WARN_mas certifique-se de usar|r |T136121:0|t[Proteção contra Sombra]|cRXP_WARN_,|r |T136190:0|t[Sacrificar] |cRXP_WARN_e|r |T136160:0|t[Vínculo Anímico]|r |cRXP_WARN_antecipadamente|r |cFFFF0000pois você receberá muito dano durante o canal e não pode ser curado|r
step
    .train 426467,1
    .train 19028,1 --Soul Link
    .goto Desolace,81.2,79.7
    .cast 434869 >>|cRXP_WARN_Clique no Altar para invocar|r |cRXP_ENEMY_[[Seductress Ceeyna] <[Mistress of Desire]>] <[Mistress of Desire]>|r |cRXP_WARN_mas certifique-se de usar|r |T136121:0|t[Proteção contra Sombra] |cRXP_WARN_e|r |T136190:0|t[Sacrificar] |cRXP_WARN_antecipadamente|r |cFFFF0000pois você receberá muito dano durante o canal e não pode ser curado|r
step
    .train 426467,1
    .goto Desolace,81.2,79.7
    >>Abate |cRXP_ENEMY_[[Seductress Ceeyna] <[Mistress of Desire]>] <[Mistress of Desire]>|r. Saqueie a |T134419:0|t[|cRXP_FRIENDLY_Runa das Chamas Sombrias|r]
    .collect 213101,1
    .mob Seductress Ceeyna
step
    .train 426467 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa das Chamas Sombrias|r] |cRXP_WARN_para aprender|r |T236302:0|t[Chama Sombria]
    .use 213101
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Aura de Imolação
#name Aura de Imolação - 40 (Vale Gris)

step
    #completewith next
    .zone Ashenvale >>Viaje para Vale Gris
step
    .goto Ashenvale,93.5,38.0,100 >>Dirija-se para a área de Incursão Pesadelo de Vale Gris marcada no seu mapa
    .train 431758,1
step
    >>Abata os demônios fora do portal até obter todos os três itens listados abaixo
    .collect 221972,1 >>|T132839:0|t|cRXP_LOOT_Fogo da Pira Onírica|r deixado por |cRXP_ENEMY_Dreampyre Imps|r
    .collect 221971,1 >>|T237396:0|t|cRXP_LOOT_Chifre de Jurassonho|r deixado por |cRXP_ENEMY_Chispabrasa Jurassonho|r
    .collect 221973,1 >>|T133724:0|t|cRXP_LOOT_Presa de Caçador de Sonhos|r deixado por |cRXP_ENEMY_Dreampyre Hounds|r
    .mob Dreampyre Imp
    .mob Emberspark Dreamsworn
    .mob Dreamhunter Hound
    .train 431758,1
step
    .cast 447537 >>Clique direito em qualquer um dos itens da sua mochila para combiná-los e receba |T134419:0|t[|cRXP_FRIENDLY_Runa de Aura de Imolação|r]
    .collect 220618,1 --Rune of Immolation Aura
    .use 221972
    .train 431758,1
step
    .train 431758 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Aura de Imolação|r] |cRXP_WARN_para aprender|r |T135802:0|t[Aura de Imolação]
    .use 220618
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Braçadeiras
#title Evocar Guarda Vil
#name Evocar Guarda Vil - 10 (Azeroth)

step
    #completewith next
    +|cRXP_WARN_Para receber esta runa, você precisará ter encontrado um|r |T236294:0|t|cRXP_FRIENDLY_Diabrete Explorador|r. |cRXP_WARN_Se você ainda não tem um, lance|r |T136163:0|t|cRXP_FRIENDLY_[Drenar Alma]|r |cRXP_WARN_em inimigos. A cada tic da magia, você terá uma chance de obter uma|r |T133257:0|t|cRXP_LOOT_Alma de Explorador|r. |cRXP_WARN_Use-a para aprender como evocar seu|r |T236294:0|t|cRXP_FRIENDLY_Diabrete Explorador|r
step
    +Vá para uma das zonas abaixo. A runa pode ser obtida em qualquer uma delas, porém zonas de nível mais alto oferecerão melhores recompensas do seu Diabrete Explorador.
    >>The Barrens
    >>Cerro Oeste
    >>Costa Negra
    >>Floresta de Pinhaprata
    >>Vale Gris
    >>Montanhas Cristarrubra
    >>Pântano das Mágoas
    >>Desolação
    >>Feralas
    >>Azshara
    >>Barreira do Inferno
    .zoneskip The Barrens
    .zoneskip Westfall
    .zoneskip Darkshore
    .zoneskip Silverpine Forest
    .zoneskip Ashenvale
    .zoneskip Redridge Mountains
    .zoneskip Swamp of Sorrows
    .zoneskip Desolace
    .zoneskip Feralas
    .zoneskip Azshara
    .zoneskip Blasted Lands
step
    >>Procure |cRXP_FRIENDLY_Fel Portais|r nos locais marcados no seu mapa. Assim que encontrar um, invoque seu |T236294:0|t|cRXP_FRIENDLY_Diabrete Explorador|r e conclua o diálogo ao lado do portal. O Diabrete começará a explorar e você receberá um buff |T136164:0|t|cRXP_FRIENDLY_Diabrete em Missão|r. Depois de aproximadamente 10-20 minutos, seu Diabrete retornará a você ou você poderá invocá-lo novamente e falar com ele para entregar uma missão repetível que recompensa |T133639:0|t|cRXP_LOOT_Otherworldly Tesouro|r. Ao abri-lo, você receberá saque e terá uma chance de receber a |T134419:0|t[|cRXP_FRIENDLY_Runa do Guarda Vil|r]. Procure por fendas e saqueie tesouros até encontrá-lo
    .goto Westfall,28.6,44.0,0
    .goto Westfall,29.0,47.8,0
    .goto Westfall,29.0,58.2,0
    .goto Westfall,29.6,69.4,0
    .goto Westfall,29.8,34.4,0
    .goto Westfall,31.4,39.2,0
    .goto Westfall,31.4,65.6,0
    .goto Westfall,32.2,76.0,0
    .goto Westfall,32.2,80.2,0
    .goto Westfall,32.4,29.2,0
    .goto Westfall,34.0,82.2,0
    .goto Westfall,37.4,85.0,0
    .goto Westfall,41.4,15.4,0
    .goto Westfall,44.8,46.6,0
    .goto Westfall,47.0,39.4,0
    .goto Westfall,47.4,79.2,0
    .goto Westfall,47.6,22.0,0
    .goto Westfall,47.6,67.2,0
    .goto Westfall,47.8,13.8,0
    .goto Westfall,51.0,32.2,0
    .goto Westfall,51.6,71.4,0
    .goto Westfall,57.0,10.6,0
    .goto Westfall,62.6,26.0,0
    .goto The Barrens,39.6,13.8,0
    .goto The Barrens,40.0,18.4,0
    .goto The Barrens,40.8,14.4,0
    .goto The Barrens,42.0,14.2,0
    .goto The Barrens,44.4,50.0,0
    .goto The Barrens,45.8,51.2,0
    .goto The Barrens,46.4,52.6,0
    .goto The Barrens,47.6,49.4,0
    .goto The Barrens,51.6,53.4,0
    .goto The Barrens,53.0,50.8,0
    .goto The Barrens,54.2,52.6,0
    .goto The Barrens,54.4,48.6,0
    .goto The Barrens,55.6,25.6,0
    .goto The Barrens,55.8,51.0,0
    .goto The Barrens,56.0,24.8,0
    .goto The Barrens,57.6,23.6,0
    .goto The Barrens,58.2,49.6,0
    .goto The Barrens,58.8,25.8,0
    .goto The Barrens,59.0,29.2,0
    .goto The Barrens,59.0,32.0,0
    .goto The Barrens,59.2,36.4,0
    .goto The Barrens,59.8,27.6,0
    .goto The Barrens,60.2,36.0,0
    .goto The Barrens,60.8,29.0,0
    .goto The Barrens,61.8,32.0,0
    .goto Silverpine Forest,38.8,18.4,0
    .goto Silverpine Forest,38.8,23.4,0
    .goto Silverpine Forest,44.6,25.2,0
    .goto Silverpine Forest,45.4,31.8,0
    .goto Silverpine Forest,49.8,13.4,0
    .goto Silverpine Forest,50.2,56.8,0
    .goto Silverpine Forest,50.2,65.2,0
    .goto Silverpine Forest,55.6,24.6,0
    .goto Darkshore,37.6,63.8,0
    .goto Darkshore,43.2,27.0,0
    .goto Darkshore,44.0,82.0,0
    .goto Darkshore,45.0,26.2,0
    .goto Darkshore,46.2,46.8,0
    .goto Darkshore,47.4,28.8,0
    .goto Darkshore,49.8,36.8,0
    .goto Darkshore,56.4,24.8,0
    .goto Darkshore,59.8,21.8,0
    .goto Ashenvale,24.4,63.4,0
    .goto Ashenvale,27.6,62.6,0
    .goto Ashenvale,30.2,30.2,0
    .goto Ashenvale,33.6,28.4,0
    .goto Ashenvale,44.6,64.2,0
    .goto Ashenvale,51.2,47.0,0
    .goto Ashenvale,52.6,62.8,0
    .goto Ashenvale,55.6,40.2,0
    .goto Ashenvale,67.0,46.0,0
    .goto Ashenvale,67.2,51.0,0
    .goto Ashenvale,77.4,73.0,0
    .goto Ashenvale,80.4,70.6,0
    .goto Ashenvale,84.8,70.2,0
    .goto Redridge Mountains,29.8,30.4,0
    .goto Redridge Mountains,31.2,21.8,0
    .goto Redridge Mountains,42.8,16.8,0
    .goto Redridge Mountains,71.4,57.8,0
    .goto Redridge Mountains,71.4,83.6,0
    .goto Redridge Mountains,72.0,57.8,0
    .goto Redridge Mountains,79.0,33.4,0
    .goto Redridge Mountains,81.6,60.4,0
    .goto Redridge Mountains,83.2,44.4,0
    .goto Redridge Mountains,86.2,52.6,0
    .goto The Barrens,42.8,81.8,0
    .goto The Barrens,43.2,80.2,0
    .goto The Barrens,46.2,85.6,0
    .goto The Barrens,47.8,83.6,0
    .goto The Barrens,48.4,81.2,0
    .goto The Barrens,50.2,80.6,0
    .goto Swamp of Sorrows,10.4,59.4,0
    .goto Swamp of Sorrows,12.4,29.8,0
    .goto Swamp of Sorrows,16.4,63.0,0
    .goto Swamp of Sorrows,22.8,64.0,0
    .goto Swamp of Sorrows,27.0,48.8,0
    .goto Swamp of Sorrows,34.2,28.8,0
    .goto Swamp of Sorrows,36.2,50.6,0
    .goto Swamp of Sorrows,49.0,38.8,0
    .goto Swamp of Sorrows,56.6,65.0,0
    .goto Swamp of Sorrows,60.2,27.6,0
    .goto Swamp of Sorrows,69.4,78.4,0
    .goto Swamp of Sorrows,72.4,10.4,0
    .goto Swamp of Sorrows,77.4,89.6,0
    .goto Swamp of Sorrows,81.2,34.0,0
    .goto Swamp of Sorrows,83.2,66.6,0
    .goto Swamp of Sorrows,87.6,26.0,0
    .goto Swamp of Sorrows,90.8,65.2,0
    .goto Swamp of Sorrows,91.4,57.0,0
    .goto Desolace,47.4,22.2,0
    .goto Desolace,48.8,82.2,0
    .goto Desolace,49.4,75.0,0
    .goto Desolace,52.0,85.4,0
    .goto Desolace,52.2,72.4,0
    .goto Desolace,52.8,81.0,0
    .goto Desolace,54.4,19.2,0
    .goto Desolace,56.0,74.8,0
    .goto Desolace,71.6,18.4,0
    .goto Desolace,72.6,21.8,0
    .goto Desolace,73.4,24.6,0
    .goto Desolace,74.4,10.6,0
    .goto Desolace,76.4,19.2,0
    .goto Desolace,80.4,17.0,0
    .goto Blasted Lands,35.0,55.0,0
    .goto Blasted Lands,41.2,33.4,0
    .goto Blasted Lands,43.6,25.0,0
    .goto Blasted Lands,46.8,39.2,0
    .goto Blasted Lands,48.8,48.6,0
    .goto Blasted Lands,56.0,36.6,0
    .goto Blasted Lands,60.2,46.0,0
    .goto Blasted Lands,62.0,39.2,0
    .goto Feralas,68.2,58.8,0
    .goto Feralas,70.4,62.6,0
    .goto Feralas,72.4,63.8,0
    .goto Feralas,73.2,54.4,0
    .goto Feralas,74.2,50.4,0
    .goto Feralas,74.2,60.0,0
    .goto Feralas,76.2,56.4,0
    .goto Feralas,76.6,63.4,0
    .goto Azshara,16.4,51.0,0
    .goto Azshara,17.6,58.4,0
    .goto Azshara,21.2,54.0,0
    .goto Azshara,24.8,47.8,0
    .goto Azshara,25.0,81.4,0
    .goto Azshara,30.2,79.8,0
    .goto Azshara,33.0,81.4,0

    .collect 221499,1 --Rune of the felguard
    .use 223148 --Otherworldy Treasure
    .unitscan Fel Sliver
    .unitscan Fel Crack
    .unitscan Fel Tear
    .unitscan Fel Scar
    .unitscan Fel Rift
step
    .train 431756 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Guarda Vil|r] |cRXP_WARN_para aprender|r |T136216:0|t[Evocar Guarda Vil]
    .use 221499

]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Capacete
#title Pandemia
#name Pandemia - 40 (Feralas)

step
    #completewith next
    .zone Feralas >>Viaje para Feralas
step
    .goto Feralas,69.6,43.3
    >>Dirija-se para o local marcado oeste de Camp Mojache. Procure um |cRXP_ENEMY_Xamã Temível Totem Adoecido Morto|r deitado ao lado de uma árvore. Próximo ao cadáver você encontrará um |cRXP_PICK_Grimtotem Baú|r, saqueie-o para |T133291:0|t|cRXP_LOOT_Grimtotem Colar|r
    .collect 221974,1 --Grimtotem Necklace 1/1
    .unitscan Dead Diseased Grimtotem Shaman
    .train 431743,1
step
    .goto 1444/1,695.400,-4920.300,20 >>Vá para o caminho que sobe a colina em direção ao Woodpaw Den
    .train 431743,1
step
    .goto 1444/1,831.200,-4851.000,20 >>Suba pelo caminho marcado por tochas
    .train 431743,1
step
    .goto 1444/1,826.500,-4725.100
    >>Siga a borda direita do acampamento e vá até o |cRXP_ENEMY_Místico Patábua Adoecido Morto|r. Ao lado dele você encontrará uma |cRXP_PICK_Bolsa Patábua|r, saque-a para obter um |T135139:0|t|cRXP_LOOT_Broken Woodpaw Cajado|r
    .collect 221975,1 --Broken Woodpaw Staff
    .unitscan Dead Diseased Woodpaw Mystic
    .train 431743,1
step
    >>Usar o |T135139:0|t|cRXP_LOOT_Broken Woodpaw Cajado|r para combiná-lo com o |T133291:0|t|cRXP_LOOT_Grimtotem Colar|r e criar um |T135153:0|t|cRXP_LOOT_Diseased Nature Cajado|r
    .collect 221976,1 --Diseased Nature Staff
    .use 221975
    .train 431743,1
step
    .goto Feralas,72.6,50.8
    >>Procure um |cRXP_ENEMY_Diseased Forest Walker|r adormecido, use seu |T135153:0|t|cRXP_LOOT_Diseased Nature Cajado|r para acordá-lo. Derrote-o e saque a |T134419:0|t[|cRXP_FRIENDLY_Runa de Pandemia|r]
    .collect 220617,1 --Rune of Pandemic
    .use 221976
    .train 431743,1
step
    .train 431743 >>|cRXP_WARN_Use o|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Pandemia|r] |cRXP_WARN_para aprender|r |T136227:0|t[Pandemia]
    .use 220617
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Dizimação
#name Dizimação - 55 (Azeroth)

step
    #completewith next
    .zone Burning Steppes >>Vá para Estepes Ardentes
step
    #loop
    .goto Burning Steppes,93.2,59.0,55,0
    .goto Burning Steppes,72.2,31.6,55,0
    .goto Burning Steppes,69.0,26.4,55,0
    .goto Burning Steppes,59.8,65.0,55,0
    .goto Burning Steppes,36.4,60.8,55,0
    .goto Burning Steppes,24.2,64.6,55,0
    .goto Burning Steppes,37.6,42.2,55,0
    >>|cRXP_WARN_Procure |cRXP_PICK_Fel Rifts|r. Estes são portais que podem aparecer em toda a zona|r
    >>|cRXP_WARN_Fale com o |cRXP_PICK_Rift|r para enviar seu |cRXP_FRIENDLY_Diabrete Explorador|r pelo |cRXP_PICK_Rift|r e aguarde que retorne com um|r |T135222:0|t[|cRXP_LOOT_Sintonizador de Portal da Legião|r]
    >>|cRXP_WARN_Você pode ter que repetir isto algumas vezes até que retorne com o|r |T135222:0|t[|cRXP_LOOT_Sintonizador de Portal da Legião|r]
    .collect 224806,1
    .train 440922,1
    .skipgossip
step
    #completewith next
    .zone Blasted Lands >>Viaje para as Terras Devastadas
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224806 >>|cRXP_WARN_Use o|r |T135222:0|t[|cRXP_LOOT_Sintonizador de Portal da Legião|r] |cRXP_WARN_em uma |cRXP_PICK_Cicatriz Vil|r que a transformará em um|r |cRXP_PICK_Otherwordly Portal|r
    >>|cRXP_WARN_Fale com o |cRXP_PICK_Otherwordly Portal|r e envie seu |cRXP_FRIENDLY_Diabrete Explorador|r por ele e aguarde que retorne com um|r |T134429:0|t[|cRXP_LOOT_Sintonizador de Sintonizador de Portais|r]
    >>|cRXP_WARN_Você pode ter que repetir isto algumas vezes até que retorne com o|r |T134429:0|t[|cRXP_LOOT_Sintonizador de Sintonizador de Portais|r]
    .collect 224912,1
    .train 440922,1
    .skipgossip
step
    .use 224912 >>|cRXP_WARN_Use o|r |T134429:0|t[|cRXP_LOOT_Sintonizador de Sintonizador de Portais|r] |cRXP_WARN_para transformá-lo em um|r |T135224:0|t[|cRXP_LOOT_Sintonizador de Portais Sobrecarregado|r]
    .collect 224893,1
    .train 440922,1
step
    #loop
    .goto Blasted Lands,43.6,25.6,50,0
    .goto Blasted Lands,41.4,33.8,50,0
    .goto Blasted Lands,46.6,39.2,50,0
    .goto Blasted Lands,49.0,48.2,50,0
    .goto Blasted Lands,60.6,46.2,50,0
    .goto Blasted Lands,62.0,39.2,50,0
    .goto Blasted Lands,56.2,36.8,50,0
    .use 224893 >>|cRXP_WARN_Use o|r |T135224:0|t[|cRXP_LOOT_Sintonizador de Portais Sobrecarregado|r] |cRXP_WARN_em uma |cRXP_PICK_Cicatriz Vil|r que a tornará vermelha|r
    >>|cRXP_WARN_Fale com ela e envie seu |cRXP_FRIENDLY_Diabrete Explorador|r por ela e aguarde que retorne com a|r |T134419:0|t[|cRXP_FRIENDLY_Rune of Dizimação|r]
    .collect 225686,1
    .train 440922,1
    .skipgossip
step
    .train 440922 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Dizimação|r] |cRXP_WARN_para aprender|r |T135808:0|t[Dizimação]
    .use 225686
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Marca do Caos
#name Marca do Caos - 50 (Terras Pestilentas Ocidentais)

step
    #completewith next
    .zone Western Plaguelands >>Vá para Terras Pestilentas Ocidentais
step
    #loop
    .goto Western Plaguelands,50.6,77.6
    >>|cRXP_WARN_Lance|r |T136163:0|t[Drenar Alma] |cRXP_WARN_em |cRXP_ENEMY_Skeletal Flayers|r até que você tenha recebido 3|r |cRXP_LOOT_Plagued Estilhaços de Alma|r
    .collect 225929,3
    .mob Skeletal Flayer
    .train 440924,1
step
    .goto Western Plaguelands,43.361,84.143 << Alliance
    .goto Tirisfal Glades,83.035,72.631 << Horde
    >>|cRXP_WARN_Vire seus |cRXP_LOOT_Estilhaços de Alma Pestilentos|r para |cRXP_FRIENDLY_Pixi Roubestilha <Corretora de Almas>|r em Chillwind Camp para receber a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Marca do Caos|r] << Alliance
    >>|cRXP_WARN_Entregue seus |cRXP_LOOT_Estilhaços de Alma Pestilenta|r para |cRXP_FRIENDLY_Prazik Roubestilha <Corretor de Almas>|r no The Baluarte para receber a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Marca do Caos|r] << Horde
    .collect 225688,1
    .target Pixi Pilfershard << Alliance
    .target Prazik Pilfershard << Horde
    .train 440924,1
step
    .train 440924 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa da Marca do Caos|r] |cRXP_WARN_para aprender|r |T136226:0|t[Marca do Caos]
    .use 225688
]])

RXPGuides.RegisterGuide([[
#classic
<< Warlock SoD
#group Guia Runas e Livros RestedXP
#subgroup Manto
#title Armadura Infernal
#name Armadura Infernal - 55 (Barreira do Inferno)

step
    #completewith next
    .zone Blasted Lands >>Viaje para as Terras Devastadas
    >>|cRXP_WARN_Certifique-se de que tem as seguintes habilidades treinadas, e considere trazer um curador pois você precisará matar uma Élite de nível 56|r
    >>|T134131:0|t[Pedra Mágica Maior]
    >>|T136121:0|t[Proteção contra Sombra]
    >>|T136190:0|t[Sacrificar] |cRXP_WARN_para seu|r |T136221:0|t[Emissário do Caos]
step
    .train 440926,1
    #loop
    .goto Blasted Lands,65.31,32.63,20,0
    .goto Blasted Lands,68.050,28.667
    >>Abata qualquer |cRXP_ENEMY_Shadowsworn|r. Saque-os para a |cRXP_LOOT_Nota Shadowsworn|r
    .collect 227658,1
    .mob Shadowsworn Cultist
    .mob Shadowsworn Thug
    .mob Shadowsworn Adept
    .mob Shadowsworn Enforcer
    .mob Shadowsworn Warlock
    .mob Shadowsworn Dreadweaver
step
    .train 440926,1
    .goto Blasted Lands,68.050,28.667
    >>Vá para o |cRXP_PICK_Altar|r no fundo da caverna
    >>|cRXP_WARN_Antes de clicar no |cRXP_PICK_Altar|r, certifique-se de que usou seu|r |T134131:0|t[Pedra Mágica Maior]|cRXP_WARN_,|r |T136121:0|t[Proteção contra Sombra] |cRXP_WARN_e|r |T136190:0|t[Sacrificar] |cRXP_WARN_pois você está prestes a receber dano substancial ao clicar no |cRXP_PICK_Altar|r, e invocando |cRXP_ENEMY_Heliath|r no processo. |cRXP_ENEMY_Heliath|r é uma Élite de nível 56|r
    >>Abata |cRXP_ENEMY_Heliath|r. Saque-o para obter a |T134419:0|t[|cRXP_FRIENDLY_Rune of Armadura Infernal|r]
    .collect 225687,1
    .mob Heliath
step
    .train 440926 >>|cRXP_WARN_Use a|r |T134419:0|t[|cRXP_FRIENDLY_Runa de Armadura Infernal|r] |cRXP_WARN_para aprender|r |T236418:0|t[Armadura Infernal]
    .use 225687
]])
