if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guia de Sobrevivência (H)
<< Horde
#name 21-24 Stonetalon/The Barrens
#version 7
#subgroup Guia de Sobrevivência RXP TBC 1-30
#next 24-25 Colinas de Eira dos Montes

step
    #completewith MeetingTW
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
    .zoneskip Orgrimmar
step << Mage
    #completewith Horthus
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,50.93,67.97,30,0
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,45.78,57.19,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Vá em direção à |cRXP_FRIENDLY_Horthus|r
    .itemcount 17031,<2
    .train 3567,1 << Troll Mage
step << Troll Mage
    #completewith Horthus
    .goto Orgrimmar,39.53,75.82,30,0
    .goto Orgrimmar,42.68,62.42,30,0
    .goto Orgrimmar,45.57,57.46,20,0
    .goto Orgrimmar,45.44,56.55,10 >>Vá em direção à |cRXP_FRIENDLY_Horthus|r
    .train 3567,3
    .zoneskip Durotar
step << Mage
    #label Horthus
    .goto Orgrimmar,45.44,56.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Horthus|r
    >>|cRXP_BUY_Compre|r |T134419:0|t[Runa de Teleporte] |cRXP_BUY_dele|r
    .collect 17031,2,496,1 --Rune of Teleportation (2)
    .target Horthus
step << Troll Mage
    #completewith MeetingTW
    #label MageRune1
    .goto Orgrimmar,41.83,61.66,6,0
    .goto Orgrimmar,42.01,60.77,6,0
    .goto Orgrimmar,41.73,62.41,8,0
    .goto Orgrimmar,38.65,56.58,25,0
    .goto Orgrimmar,38.78,54.87,25,0
    .goto Orgrimmar,40.94,45.20,25,0
    .goto Orgrimmar,42.30,37.44,30,0
    .goto Orgrimmar,39.50,37.17,20 >>Suba até a torre, depois em direção ao Bastião Grommash
    .zoneskip Durotar
    .isOnQuest 9813
step << !Troll Mage
    #completewith OrgFP
    #label MageRune1
    .goto Orgrimmar,49.02,61.46,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Voe para a torre em direção a |cRXP_FRIENDLY_Doraso|r
    .zoneskip Durotar
step << !Shaman !Warrior !Troll !Orc
    #completewith OrgFP
    #requires MageRune1 << Mage
    .goto Orgrimmar,49.59,94.74,30,0
    .goto Orgrimmar,49.42,90.90,30,0
    .goto Orgrimmar,52.26,88.65,30,0
    .goto Orgrimmar,51.01,68.03,30,0
    .goto Orgrimmar,49.72,66.08,30,0
    .goto Orgrimmar,47.41,65.07,10,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,46.59,64.54,6,0
    .goto Orgrimmar,46.75,63.84,6,0
    .goto Orgrimmar,45.12,63.88,10 >>Voe para a torre em direção a |cRXP_FRIENDLY_Doraso|r
step << !Shaman !Warrior !Troll !Orc
    #label OrgFP
    .goto Orgrimmar,45.12,63.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fp Orgrimmar >>Aprenda a rota de voo de Orgrimmar
    .target Doras
step << !Shaman !Warrior
    .goto Orgrimmar,31.62,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 9626 >>Entregue Encontro com os Orcs << BloodElf
    --.accept 9627 >> Accept Allegiance to the Horde << BloodElf
    .turnin 9813 >>Entregue Encontro com os Orcs << !BloodElf
    .target Thrall
    .isOnQuest 9626 << BloodElf
    .isOnQuest 9813 << !BloodElf
    .group
step << BloodElf
    .goto Orgrimmar,31.62,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dawnsinger|r
    .accept 9428 >>Aceite Reporte ao Posto Machadada
    .target Ambassador Dawnsinger
    .isQuestTurnedIn 9626
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pyreanor|r
    .train 879 >>Treine suas magias de classe
    .target Master Pyreanor
step
    #label MeetingTW
    .goto Orgrimmar,38.93,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Aceite Os Espíritos de Stonetalon
    .target Zor Lonetree
step << Mage
    .goto Orgrimmar,38.36,85.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pefreda|r
    .train 1953 >>Treine suas magias de classe
    .target Pephredo
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Thuul|r no topo da cabana
    .train 3567 >>Aprenda |T135759:0|t[Teleporte: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >>Treine suas magias de classe
    .target Ur'kyo
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 10794 >>Entregue Malandrins da Mão Estilhaçada
    .accept 2460 >>Aceite A saudação dos Mão Despedaçada
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|cRXP_WARN_Mire em |cRXP_FRIENDLY_Shenthul|r para cumprimentá-lo|r
    .complete 2460,1 --Shattered Salute Performed
    .target Shenthul
	.emote salute,3401
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Entregue A saudação dos Mão Despedaçada
    .accept 2458 >>Aceite A Cobertura Profunda
    .target Shenthul
step << Warlock
    .goto Orgrimmar,47.99,45.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grol'dar|r
    .train 1094 >>Treine suas magias de classe
    .target Grol'dar
step << Warlock
    #optional
    .goto Orgrimmar,48.25,45.27
    .abandon 10605 >>Abandone Invocações de Carendin
step << Warlock
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul|r e |cRXP_FRIENDLY_Cazul|r
    .accept 1507 >>Aceite Devorador de Almas
    .target +Gan'rul Bloodeye
    .goto Orgrimmar,48.25,45.27
    .turnin 1507 >>Entregue Devorador de Almas
    .accept 1508 >>Aceite Cegar Cazul
    --.accept 65601 >> Accept Love Hurts
    .target +Cazul
    .goto Orgrimmar,47.05,46.43
    --TODO: Add 65601 on Black Temple release
step << Warlock
    #completewith next
    .goto Orgrimmar,45.37,51.02,15,0
    .goto Orgrimmar,44.07,53.50,15,0
    .goto Orgrimmar,43.82,56.28,20,0
    .goto Orgrimmar,39.24,54.35,20,0
    .goto Orgrimmar,38.14,60.48,10,0
    .goto Orgrimmar,37.04,59.45,10 >>Vá em direção à |cRXP_FRIENDLY_Zankaja|r
step << Warlock
    .goto Orgrimmar,37.04,59.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Entregue Cegar Cazul
    .accept 1509 >>Aceite Notícias de Dogran
    .target Zankaja
step << skip --Warlock
    #completewith next
    .goto Orgrimmar,42.01,63.34,30,0
    .goto Orgrimmar,52.99,57.59,30,0
    .goto Orgrimmar,55.88,56.81,30,0
    .goto Orgrimmar,61.49,50.55,15,0
    .goto Orgrimmar,63.65,49.93,15 >>Vá em direção à |cRXP_FRIENDLY_Magar|r
step << skip --Warlock
    .goto Orgrimmar,63.65,49.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Magar|r
    .turnin 65601 >>Entregue O Amor Machuca
    .accept 65610 >>Aceite Queria Estar Aqui
    .target Magar
step << Mage
    #completewith next
    .goto Orgrimmar,37.22,87.73,8,0
    .goto Orgrimmar,37.74,88.56,8,0
    .goto Orgrimmar,38.64,85.42,10 >>Travel no andar de cima toward |cRXP_FRIENDLY_Thuul|r
step << Mage
    .goto Orgrimmar,38.64,85.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thuul|r
    .train 3567 >>Aprenda |T135759:0|t[Teleporte: Orgrimmar]
    .money <0.2000
    .target Thuul
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 5118 >>Treine suas magias de classe
    .target Ormak Grimshot
step << Paladin
    #completewith HanashiWepT
    .goto Orgrimmar,63.08,39.25,40,0 << Paladin
    .goto Orgrimmar,64.31,38.12,30,0 << Paladin
    .goto Orgrimmar,66.07,40.04,30,0 << Paladin
    .goto Orgrimmar,74.19,25.89,30,0 << Paladin
    .goto Orgrimmar,76.76,22.12,30,0 << Paladin/Shaman/Warrior
    .goto Orgrimmar,81.53,19.64,10 >>Vá em direção à |cRXP_FRIENDLY_Hanashi|r
step << Paladin
    #label HanashiWepT
    .goto Orgrimmar,81.53,19.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Treine Machados de Duas Mãos
    .money <0.0950 << Warrior
    .money <0.1 << Paladin
    .target Hanashi
step
    #completewith FlyXroads1
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Doras
    .zoneskip The Barrens
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Aceite Consumido pelo Ódio
    .accept 4921 >>Aceite Perdido na Batalha
    .target Mankrik
step
    #optional
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entregue Os Poços Esquecidos
    .accept 877 >>Aceite Oásis Estagnante
    .target Tonga Runetotem
    .isQuestComplete 870
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .accept 877 >>Aceite Oásis Estagnante
    .target Tonga Runetotem
    .isQuestTurnedIn 870
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .accept 905 >>Aceite Os Talhardepas Raivosos
    .target Sergra Darkthorn
step << Warlock
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Entregue Notícias de Dogran
    .accept 1510 >>Aceite Notícias de Dogran
    .target Gazrog
step
    #label FlyXroads1
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 3281 >>Aceite Prata Roubada
    .target Gazrog
step
    #optional
    #completewith TestSeeds
    >>Mate |cRXP_ENEMY_Ornery Plainstrider|r. Saqueie-os para obter |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #optional
    #completewith TestSeeds
    >>Mate |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r e |cRXP_LOOT_Penas|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Clique na |cRXP_PICK_Rachadura Borbulhante|r debaixo d'água
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .subzone 380 >>Return to A Encruzilhada
    .dungeon WC
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 877 >>Entregue O Oásis Estagnado
    .accept 880 >>Aceite Seres Alterados
    .target Tonga Runetotem
    .dungeon WC
step
    #loop
    .goto The Barrens,55.59,43.39,0
    .goto The Barrens,55.59,43.39,40,0
    .goto The Barrens,55.09,43.00,40,0
    .goto The Barrens,55.03,42.21,40,0
    .goto The Barrens,55.47,41.51,40,0
    .goto The Barrens,55.99,42.00,40,0
    .goto The Barrens,56.15,42.53,40,0
    .goto The Barrens,56.01,43.40,40,0
    >>Mate |cRXP_ENEMY_Mordeliscas do Oásis|r no lago e ao redor dele. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 880,1 --Altered Snapjaw Shell (8)
    .mob Oasis Snapjaw
    .dungeon WC
step
    #optional
    #completewith LostmyWife
    >>Mate |cRXP_ENEMY_Ornery Plainstrider|r. Saqueie-os para obter |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #optional
    #completewith Nest
    >>Mate |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r e |cRXP_LOOT_Penas|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    #label Verog
    .goto The Barrens,52.95,41.75
    >>Mate |cRXP_ENEMY_Verog|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ele pode aparecer sempre que um |cRXP_ENEMY_Kolkar|r é morto|r
    >>|cRXP_WARN_Em um servidor altamente populado ou lançamento recente, sua melhor opção é acampar no ponto de reaparecimento|r
    >>|cRXP_WARN_Pule este passo se você não conseguir pegá-lo|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Pegue a |cRXP_PICK_Prata Roubada|r no chão
    .complete 3281,1 --Stolen Silver (1)
step
    .goto The Barrens,52.60,46.10
    >>Clique no |cRXP_PICK_Blue Objetos de Clássico|r. Mate mais |cRXP_ENEMY_Sunscale Scytheclaws|r se você não tiver uma |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,1 --Visit Blue Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,52.45,46.57
    >>Clique no |cRXP_PICK_Red Objetos de Clássico|r. Mate mais |cRXP_ENEMY_Sunscale Scytheclaws|r se você não tiver uma |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,3 --Visit Red Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #label Nest
    .goto The Barrens,52.02,46.47
    >>Clique no |cRXP_PICK_Yellow Objetos de Clássico|r. Mate mais |cRXP_ENEMY_Sunscale Scytheclaws|r se você não tiver uma |T132914:0|t[Sunscale Feather]
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 905,2 --Visit Yellow Raptor Nest (1)
    .collect 5165,3,905,7,3
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,57.3,53.7,0
    .goto The Barrens,52.0,46.5,0
    .goto The Barrens,57.3,53.7,90,0
    .goto The Barrens,52.0,46.5,90,0
    >>Conclua matando |cRXP_ENEMY_Sunscale Scytheclaws|r. Saqueie-os por seus |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Cadáver Arrebentado|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
    .skipgossip
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Stormsnouts|r. Saqueie-os por um |cRXP_LOOT_Thunder Lizard Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label LakotaMani1
    #completewith CampTArrive
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
	>>Mate |cRXP_ENEMY_Lakota'mani - Missão|r. Saqueie-o pelo |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani - Missão|r]
    >>|cRXP_WARN_Use o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani - Missão|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    >>|cRXP_WARN_Pule este passo se você não conseguir encontrá-lo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith CampTArrive
    >>Abate os |cRXP_ENEMY_Stormsnouts|r. Saqueie-os para |cRXP_LOOT_Chifre|r. Isso não precisa ser concluído agora
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #label CampTArrive
    #completewith next
    .goto The Barrens,45.23,58.41,120 >>Viaje para Camp Taurajo
    .subzoneskip 378
step
    #requires CampTArrive
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Byula <Antigo Estalajadeiro>|r
    .home >>Defina sua Pedra de Retorno em Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 883 >>Entregue Lakota'mani - Missão - Missão - Missão
    .target Jorn Skyseer
    .isOnQuest 883
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .accept 878 >>Aceite Tribos em Guerra
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entregue Perdida na Batalha
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Entregue Seres Alterados
    .accept 1489 >>Aceite Hamuul Runetotem
    .accept 3301 >>Aceite Mura Runa Totem
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Entregue Garrafoices furiosos
    .accept 3261 >>Aceite Jorn Vidente do Céu
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Entregue Prata Roubada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entregue Perdida na Batalha
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 877 >>Entregue O Oásis Estagnado
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Entregue Garrafoices furiosos
    .accept 3261 >>Aceite Jorn Vidente do Céu
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Entregue Prata Roubada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .dungeon !WC
step
    #label Xroadsturnins2
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Entregue Verog, o Dervixe
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 851
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith BloodFeeders
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Entregue Os Espíritos de Stonetalon
    .accept 1062 >>Aceite Invasores Goblins
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Aceite Vingue Minha Vila
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .maxlevel 20
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    .goto The Barrens,35.26,27.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r
    .turnin 1061 >>Entregue Os Espíritos de Stonetalon
    .accept 1062 >>Aceite Invasores Goblins
    .target +Seereth Stonebreak
step
    #loop
    .goto Stonetalon Mountains,80.62,89.99,0
    .goto Stonetalon Mountains,80.62,89.99,40,0
    .goto Stonetalon Mountains,79.79,88.75,40,0
    .goto Stonetalon Mountains,81.19,87.56,40,0
    .goto Stonetalon Mountains,81.70,86.44,40,0
    .goto Stonetalon Mountains,82.26,86.10,40,0
    .goto Stonetalon Mountains,82.55,85.22,40,0
    .goto Stonetalon Mountains,83.64,85.02,40,0
    .goto Stonetalon Mountains,84.20,85.20,40,0
    .goto Stonetalon Mountains,83.80,86.38,40,0
    .goto Stonetalon Mountains,83.25,87.23,40,0
    .goto Stonetalon Mountains,82.33,89.73,40,0
    .goto Stonetalon Mountains,82.33,90.43,40,0
    .goto Stonetalon Mountains,81.34,90.78,40,0
    >>Mate os |cRXP_ENEMY_Grimtotem Ruffians|r e os |cRXP_ENEMY_Grimtotem [DEPRECATED][DEPRECATED]Mercenaries|r na área
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
    .mob +Grimtotem Ruffian
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .mob +Grimtotem Mercenary
    .isOnQuest 6548
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6548 >>Entregue Vingue minha vila
    .accept 6629 >>Aceite Mate Grundig Nuvem Negra
    .target Makaba Flathoof
    .isQuestComplete 6548
step
    #optional
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .accept 6629 >>Aceite Mate Grundig Nuvem Negra
    .target Makaba Flathoof
    .isQuestTurnedIn 6548
step
    #completewith BloodFeeders
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>Siga o caminho à esquerda para cima
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entregue Notícias de Dogran
    .accept 1511 >>Aceite Ken'zigla's Draught - Missão
    .target Ken'zigla
step
    #label BloodFeeders
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >>Aceite Fome Sangrenta
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Suba pela trilha até a fogueira
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Mate o |cRXP_ENEMY_Grundig Nuvem Negra|r e os |cRXP_ENEMY_Grimtotem Brutes|r
    >>|cRXP_WARN_Mate todos os seis|r |cRXP_ENEMY_Brutos Temível Totem|r |cRXP_WARN_antes de iniciar a missão lá dentro|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaya Casco Chato|r
    .accept 6523,1 >>Aceite Proteja Kaya
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escolte |cRXP_FRIENDLY_Kaya|r e fique perto dela
    >>|cRXP_WARN_Cuidado! Três|r |cRXP_ENEMY_Temíveis Totens|r |cRXP_WARN_aparecerão quando você chegar à fogueira no Acampamento Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
    .isQuestTurnedIn 6548
step
    #completewith next
    .goto Stonetalon Mountains,68.59,88.34,100,0
    .goto Stonetalon Mountains,64.95,83.88,100,0
    .goto Stonetalon Mountains,61.47,81.51,100,0
    >>Mate todos os |cRXP_ENEMY_Rastejantes de Fundolimo|r que encontrar
    >>|cRXP_WARN_Guarde qualquer|r |T134339:0|t[Pequeno Venenom Sacs] |cRXP_WARN_que você obtenha|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 6284 >>Aceite Aracnofobia
step
    #completewith Besseleth1
    >>Mate os |cRXP_ENEMY_Deepmoss Venomspitters|r e os |cRXP_ENEMY_Deepmoss Creepers|r
    >>|cRXP_WARN_Guarde qualquer|r |T134339:0|t[Pequeno Venenom Sacs] |cRXP_WARN_que você obtenha|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Venomspitter
step
    #completewith next
    >>Saque os |cRXP_PICK_Ovos de Aranha|r perto das árvores
    >>|cRXP_WARN_Cuidado! Os|r |cRXP_ENEMY_Filhotes de Aranha de Fundolimo|r |cRXP_WARN_podem invocar uma|r |cRXP_ENEMY_Matriarca de Fundolimo|r de nível 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #label Besseleth1
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Abate |cRXP_ENEMY_Besseleth|r. Saqueie-a pela |cRXP_LOOT_Dentada|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
step
    .goto Stonetalon Mountains,54.99,76.03
    >>Mate |cRXP_ENEMY_Rastejantes de Fundolimo|r
    >>|cRXP_WARN_Guarde qualquer|r |T134339:0|t[Pequeno Venenom Sacs] |cRXP_WARN_que você obtenha|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,15 >>Vá para |cRXP_FRIENDLY_Ziz|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >>Entregue Zé Fízzica
    .accept 1093 >>Aceite o Super Ceifador 6000
    .target Ziz Fizziks
step
    #completewith BluePrints
    >>Saque os |cRXP_PICK_Ovos de Aranha|r perto das árvores
    >>|cRXP_WARN_Cuidado! Os|r |cRXP_ENEMY_Filhotes de Aranha de Fundolimo|r |cRXP_WARN_podem invocar uma|r |cRXP_ENEMY_Matriarca de Fundolimo|r de nível 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    #completewith BluePrints
    >>Mate |cRXP_ENEMY_Madeireiros da Empreendimentos S.A.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,59.25,61.55,0
    .goto Stonetalon Mountains,59.25,61.55,50,0
    .goto Stonetalon Mountains,60.37,60.10,50,0
    .goto Stonetalon Mountains,61.34,59.15,50,0
    .goto Stonetalon Mountains,61.15,57.85,50,0
    .goto Stonetalon Mountains,61.41,56.77,50,0
    .goto Stonetalon Mountains,62.21,58.55,50,0
    .goto Stonetalon Mountains,63.12,60.02,50,0
    .goto Stonetalon Mountains,64.69,60.03,50,0
    .goto Stonetalon Mountains,62.76,61.69,50,0
    .goto Stonetalon Mountains,62.50,62.92,50,0
    .goto Stonetalon Mountains,62.48,64.15,50,0
    .goto Stonetalon Mountains,61.85,66.07,50,0
    .goto Stonetalon Mountains,60.71,66.12,50,0
    .goto Stonetalon Mountains,60.96,63.99,50,0
    .goto Stonetalon Mountains,60.25,63.21,50,0
    >>Mate os |cRXP_ENEMY_Deepmoss Venomspitters|r
    >>|cRXP_WARN_Guarde qualquer|r |T134339:0|t[Pequeno Venenom Sacs] |cRXP_WARN_que você obtenha|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar para|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135423:0|t[Machado de Batalha] |cRXP_BUY_dele|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135324:0|t[Espada Longa] |cRXP_BUY_dele.|r
    .collect 923,1,899,1 --Collect Longsword (1)
    .money <0.8743
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith BluePrints
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step
    #label BluePrints
    #loop
    .goto Stonetalon Mountains,62.8,53.7,0
    .goto Stonetalon Mountains,62.8,53.7,100,0
    .goto Stonetalon Mountains,61.7,51.5,100,0
    .goto Stonetalon Mountains,66.8,45.3,100,0
    .goto Stonetalon Mountains,71.7,49.9,100,0
    .goto Stonetalon Mountains,74.3,54.7,100,0
    >>Mate os |cRXP_ENEMY_Venture Co. Operators|r. Saque de seus |cRXP_LOOT_Planos|r
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
    .mob Venture Co. Operator
step
    #loop
    .goto Stonetalon Mountains,61.50,55.12,0
    .goto Stonetalon Mountains,61.50,55.12,50,0
    .goto Stonetalon Mountains,60.48,55.10,50,0
    .goto Stonetalon Mountains,59.80,53.69,50,0
    .goto Stonetalon Mountains,59.53,52.52,50,0
    .goto Stonetalon Mountains,60.80,51.23,50,0
    .goto Stonetalon Mountains,62.06,54.39,50,0
    .goto Stonetalon Mountains,62.63,55.35,50,0
    .goto Stonetalon Mountains,63.63,54.42,50,0
    .goto Stonetalon Mountains,65.42,54.15,50,0
    .goto Stonetalon Mountains,66.83,54.92,50,0
    .goto Stonetalon Mountains,68.64,54.03,50,0
    .goto Stonetalon Mountains,69.86,53.53,50,0
    .goto Stonetalon Mountains,70.34,56.41,50,0
    .goto Stonetalon Mountains,67.90,56.96,50,0
    .goto Stonetalon Mountains,66.25,56.64,50,0
    .goto Stonetalon Mountains,65.29,57.14,50,0
    .goto Stonetalon Mountains,64.27,57.63,50,0
    >>Mate |cRXP_ENEMY_Madeireiros da Empreendimentos S.A.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step
    #loop
    .goto Stonetalon Mountains,61.41,56.77,0
    .goto Stonetalon Mountains,59.25,61.55,30,0
    .goto Stonetalon Mountains,60.37,60.10,30,0
    .goto Stonetalon Mountains,61.34,59.15,30,0
    .goto Stonetalon Mountains,61.15,57.85,30,0
    .goto Stonetalon Mountains,61.41,56.77,30,0
    .goto Stonetalon Mountains,62.21,58.55,30,0
    .goto Stonetalon Mountains,63.12,60.02,30,0
    .goto Stonetalon Mountains,64.69,60.03,30,0
    .goto Stonetalon Mountains,62.76,61.69,30,0
    .goto Stonetalon Mountains,62.50,62.92,30,0
    .goto Stonetalon Mountains,62.48,64.15,30,0
    .goto Stonetalon Mountains,61.85,66.07,30,0
    .goto Stonetalon Mountains,60.71,66.12,30,0
    .goto Stonetalon Mountains,60.96,63.99,30,0
    .goto Stonetalon Mountains,60.25,63.21,30,0
    >>Saque os |cRXP_PICK_Ovos de Aranha|r perto das árvores
    >>|cRXP_WARN_Cuidado! Os|r |cRXP_ENEMY_Filhotes de Aranha de Fundolimo|r |cRXP_WARN_podem invocar uma|r |cRXP_ENEMY_Matriarca de Fundolimo|r de nível 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
	#completewith next
	+|cRXP_WARN_Se você tem mais de 15 |cRXP_LOOT_Ovos de Fundolimo|r|cRXP_WARN_, divida a pilha de extras (shift clique), depois delete-os|r
    .itemcount 5570,16
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >>Entregue o Super Ceifador 6000
    .accept 1094 >>Aceite as instruções adicionais
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,59.04,73.01,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Termine de matar |cRXP_ENEMY_Rastejantes de Fundolimo|r
    >>|cRXP_WARN_Guarde qualquer|r |T134339:0|t[Pequeno Venenom Sacs] |cRXP_WARN_que você obtenha|r << Rogue
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Treine suas magias de classe
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 5221 >>Treine suas magias de classe
    .target Loganaar
    .xp <22,1
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Camp Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
step
    .goto The Barrens,45.58,59.03
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Byula <Antigo Estalajadeiro>|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Byula
step
    #label JornSkyseerTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 3261 >>Entregue Jorn Vidente do Céu
    .accept 882 >>Aceite Ishamuhale
    .target Jorn Skyseer
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Entregue Ken'zigla's Draught - Missão - Missão
    .accept 1515 >>Aceite Dogran's Captivity - Missão - Missão
    .target Grunt Logmar
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .accept 878 >>Aceite Tribos em Guerra
    .target Mangletooth
step << Warlock
    #completewith next
    >>Abate os |cRXP_ENEMY_Costagulha Quilboars|r. Saque os |cRXP_LOOT_Tusks|r deles
    >>|cRXP_WARN_Guarde os|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] |cRXP_WARN_que você receber|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Entregue Dogran's Captivity - Missão - Missão
    .accept 1512 >>Aceite Love's Gift - Missão - Missão
    .target Grunt Dogran
step
    #loop
    .goto The Barrens,45.16,53.98,0
    .goto The Barrens,44.85,51.73,0
    .goto The Barrens,43.32,48.08,0
    .goto The Barrens,40.91,45.33,0
    .goto The Barrens,43.40,52.22,0
    .goto The Barrens,43.00,55.21,0
    .goto The Barrens,45.16,53.98,60,0
    .goto The Barrens,44.85,51.73,60,0
    .goto The Barrens,43.32,48.08,60,0
    .goto The Barrens,40.91,45.33,60,0
    .goto The Barrens,43.11,48.70,60,0
    .goto The Barrens,43.40,52.22,60,0
    .goto The Barrens,43.00,55.21,60,0
    >>Abate os |cRXP_ENEMY_Costagulha Quilboars|r. Saque os |cRXP_LOOT_Tusks|r deles
    >>|cRXP_WARN_Guarde os|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] |cRXP_WARN_que você receber|r
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .mob +Bristleback Water Seeker
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .mob +Bristleback Thornweaver
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .mob +Bristleback Geomancer
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
    .mob +Bristleback Water Seeker
    .mob +Bristleback Thornweaver
    .mob +Bristleback Geomancer
step
    #optional
    #completewith next
    >>Mate |cRXP_ENEMY_Ornery Plainstrider|r. Saqueie-os para obter |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Abate |cRXP_ENEMY_Stormsnouts|r. Saque-os para um |cRXP_LOOT_Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>Mate |cRXP_ENEMY_Ornery Plainstrider|r. Saqueie-os para obter |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    .goto The Barrens,44.55,59.27
    >>Abate |cRXP_ENEMY_Bristleback Quilboars|r. Saqueie-os para obter um |T134128:0|t[|cRXP_LOOT_Estilhaço de Sangue|rlood Shard|r]
    .collect 5075,1,5052,1 --Blood Shard (1)
    .mob Bristleback Water Seeker
    .mob Bristleback Thornweaver
    .mob Bristleback Geomancer
step
    #label TribesTurnin
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 878 >>Entregue Tribes at Guerra
    .accept 5052 >>Aceite Estilhaços de Sangue de Agamaggan
    .turnin 5052 >>Entregue Estilhaços de Sangue de Agamaggan
    .target Mangletooth
    .addquestitem 5075,5052
step << !Tauren
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .aura 16618 >>|cRXP_WARN_Use seu|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] |cRXP_WARN_para obter|r |T136022:0|t[Espírito of the Vento - Missão - Missão] |cRXP_WARN_de|r |cRXP_FRIENDLY_Denterroto|r
    >>|cRXP_WARN_Pule esta etapa se tiver a rota de voo de Penhasco do Trovão|r
    .itemcount 5075,10
    .train 5118,1 << Hunter --skip step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step << skip
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .accept 6382 >>Aceite A Caçada do Vale Gris
    .target Jorn Skyseer
step << !Tauren
    #completewith Zamah
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Vá para Mulgore
    .zoneskip Thunder Bluff
step << !Tauren
    #completewith Zamah
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Pegue o elevador para Penhasco do Trovão
step << Tauren
    #completewith Zamah
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    #completewith TBvisit1
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mensageiro do Penhasco Andaventos|r
	>>|cRXP_WARN_Ele patrulha os terraços, então você pode ter que procurar por ele|r
    .accept 742 >>Aceite A Caçada do Vale Gris
	.unitscan Bluff Runner Windstrider
    .isNotOnQuest 6382
    .isNotOnQuest 235
step << !Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Treine Cajados
    .target Ansekhwa
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>Vá para o Morro dos Anciãos
    .dungeon WC << !Druid
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >>Entregue Hamuul Runa Totem
    .accept 1490 >>Aceite Nara Juba Agreste
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Entregue Nara Juba Agreste
    .accept 914 >>Aceite Leaders of the Dentada
    .target Nara Wildmane
    .dungeon WC
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .trainer >>Treine suas magias de classe
    .accept 27 >>Aceite A Lesson to Learn
    .target Turak Runetotem
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entregue Retorno da Mochila Perdida
    .turnin 5723 >>Entregue Testando a Força de um Inimigo
    .target Rahauro
    .isOnQuest 5724
    .isQuestComplete 5723
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entregue Retorno da Mochila Perdida
    .target Rahauro
    .isOnQuest 5724
    .dungeon RFC
step
    #optional
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >>Entregue Testando a Força de um Inimigo
    .target Rahauro
    .isQuestComplete 5723
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Vá para o Alto do Espírito e entre nas Piscinas da Visão
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarice Nourrice|r
    >>|cRXP_WARN_Ela patrulha a área|r
    .accept 264 >>Aceite Até que a morte nos separe
    .target Clarice Foster
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .accept 962 >>Aceite Ofídeas
    .target Apothecary Zamah
    .dungeon WC
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .train 14914 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <20,1
    .xp >22,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .train 8103 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <22,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 12051 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <20,1
    .xp >22,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 2138 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <22,1
step
    #label Zamah
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarice Nourrice|r
    >>|cRXP_WARN_Ela patrulha a área|r
    .accept 264 >>Aceite Até que a morte nos separe
    .target Clarice Foster
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 2645 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <20,1
    .xp >22,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 8498 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <22,1
step << Shaman
    #optional
    .goto Thunder Bluff,25.21,20.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xanis|r
    .accept 1529 >>Aceite Chamado da Água
    .target Xanis Flameweaver
    .isQuestAvailable 1530
    .isNotOnQuest 1528,2985,2986
step
    #completewith next
    .skill firstaid,80 >>|cRXP_WARN_Crie|r |T133688:0|t[Heavy Linen Bandages] |cRXP_WARN_até sua habilidade chegar a 80 ou superior|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pand|r
    >>|cRXP_WARN_Pular este passo se você não tinha suficiente|r |T132889:0|t[Linho] |cRXP_WARN_para atingir perícia 80|r
    .train 3277 >>Aprenda |T133684:0|t[Bandagem de Lã]
    .train 7934 >>Aprenda |T134437:0|t[Antipeçonha] << Rogue
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Rogue
    >>|cRXP_WARN_Crie|r |T134437:0|t[Antipeçonha] |cRXP_WARN_se você encontrou algum|r |T134339:0|t[Pequenos Sacos de Veneno]
    >>|cRXP_WARN_Guarde-os para depois|r
    .collect 6452,1 --Anti Venom
    .itemcount 1475,1
step << Tauren
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 962
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >>Vá para a Alta do Caçador
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>Aceite Estalaço
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 5118 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 5118 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <22,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa|r
    .train 24494 >>Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm|r
    .train 845 >>Treine suas magias de classe
    .accept 1823 >>Aceite Falar com Ruga
    .target Torm Ragetotem
step
    #label TBvisit1
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >>Aceite A Chama Sagrada
    .target Zangen Stonehoof
step
    #loop
    .goto Thunder Bluff,41.54,57.87,70,0
    .goto Thunder Bluff,52.76,62.07,30,0
    .goto Thunder Bluff,55.63,50.08,70,0
    .goto Thunder Bluff,41.54,57.87,0
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mensageiro do Penhasco Andaventos|r
	>>|cRXP_WARN_Ele patrulha os terraços, então você pode ter que procurar por ele|r
    .accept 742 >>Aceite A Caçada do Vale Gris
	.unitscan Bluff Runner Windstrider
    .isNotOnQuest 6382
    .isNotOnQuest 235
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Tal
    .zoneskip The Barrens
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sputtervalve|r e |cRXP_FRIENDLY_Mebok|r
    .turnin 1094 >>Entregue instruções adicionais
    .accept 1095 >>Aceite as instruções adicionais
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entregue [Product]Chifres de Raptores
    .turnin 1069 >>Entregue [Product]Ovos de Aranha Musaúm
    .accept 1491 >>Aceite Smart Drinks
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    .home >>Defina sua Pedra de Retorno em Ratchet
    .target Innkeeper Wiley
    .bindlocation 392
    .dungeon WC
step << Warrior/Paladin
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xaveco|r
    .vendor >>Compre |T134583:0|t[|cRXP_FRIENDLY_Calças Encadeadas Potentes|r] dele se estiver disponível
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 9,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irriteixon|r
    .vendor >>Compre |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r] dele se estiverem disponíveis
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step << Warrior/Paladin
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipe as|r |T134583:0|t[|cRXP_FRIENDLY_Calças Encadeadas Potentes|r]
    .use 4800
    .itemcount 4800,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    #optional
    #completewith FlytoXroads
    +|cRXP_WARN_Equipe as|r |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drohn|r
    .turnin 821 >>Entregue Barril Vazio de Chen
    .target Brewmaster Drohn
    .isQuestComplete 821
step << Rogue
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Pule no navio, desça ao segundo andar e aumente sua perícia em Arrombamento para pelo menos 70|r
    .skill lockpicking,70,1
step
    #sticky
    #completewith EnterWC
    .subzone 718 >>Agora você deve estar procurando por um grupo para Caverna Ululante
    .dungeon WC
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zhevra|r. Saque-o pela |cRXP_LOOT_Carcaça Fresca de Zevra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    #label IshamuhalesFang
    .goto The Barrens,59.71,30.33
    .use 10338 >>Usar o |T134368:0|t[|cRXP_LOOT_Carcaça Fresca de Zevra|r] na árvore morta para invocar o |cRXP_ENEMY_Ishamuhale|r. Mate e saqueie-o pela |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_A Carcaça dura apenas 30 minutos!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #label FlytoXroads
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Entregue Consumido pelo Ódio
    .target Mankrik
step
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Korran|r
    .accept 868 >>Aceite Caça aos Ovos
    .target Korran
step
    #optional
    #completewith IshamuhaleTurnin
    .destroy 5085 >>|cRXP_WARN_Destruir os restantes|r |T133721:0|t[Presa de Javatusco Costagulha] |cRXP_WARN_pois não são mais necessários|r
step
    #completewith IshamuhaleTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .subzoneskip 378
    .target Devrak
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .turnin 883 >>Entregue Lakota'mani - Missão - Missão - Missão
    .target Jorn Skyseer
    .isOnQuest 883
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .target Jorn Skyseer
step
    #completewith next
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Mate |cRXP_ENEMY_Owatanka|r. Pegue a |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r]
    >>|cRXP_WARN_Use a |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Aceite Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.32,60.84,0
    .goto The Barrens,44.32,60.84,60,0
    .goto The Barrens,44.25,61.78,60,0
    .goto The Barrens,44.07,62.63,60,0
    .goto The Barrens,44.52,63.10,60,0
    .goto The Barrens,45.67,63.59,60,0
    .goto The Barrens,46.94,62.21,60,0
    .goto The Barrens,47.42,60.57,60,0
    .goto The Barrens,47.92,60.55,60,0
    .goto The Barrens,48.32,60.23,60,0
    .goto The Barrens,49.14,61.07,60,0
    .goto The Barrens,49.85,61.13,60,0
    .goto The Barrens,49.63,59.75,60,0
    .goto The Barrens,49.21,59.33,60,0
    .goto The Barrens,48.12,58.59,60,0
    >>Mate |cRXP_ENEMY_Lagartos Trovejantes|r. Pegue seu |cRXP_LOOT_Sangue|r
    .complete 907,1 --Thunder Lizard Blood (3)
    .mob Thunderhead
    .mob Stormsnout
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 884 >>Entregue Owatanka
    .turnin 907 >>Entregue Lagartos do Trovão Enraivecidos
    .accept 913 >>Aceite O grito do Falcotrom
    .isOnQuest 884
step
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos do Trovão Enraivecidos
    .accept 913 >>Aceite O grito do Falcotrom
    .target Jorn Skyseer
step
    #completewith next
    >>Mate |cRXP_ENEMY_Owatanka|r. Pegue a |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r]
    >>|cRXP_WARN_Use a |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    >>|cRXP_WARN_Pule este passo por enquanto se você não conseguir encontrá-lo|r
    .collect 5102,1,884,1 --Collect Owatanka's Tailspike
    .accept 884 >>Aceite Owatanka
    .use 5102
    .unitscan Owatanka
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Mate |cRXP_ENEMY_Filhote de Falcotrom|r ou |cRXP_ENEMY_Falcotrom Raspa-nuvens|r. Pegue suas |cRXP_LOOT_Asas de Falcotrom|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 884 >>Entregue Owatanka
    .turnin 913 >>Entregue O grito do Falcotrom
    .accept 874 >>Aceite Mahren Vidente do Céu
    .target Jorn Skyseer
    .isOnQuest 884
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 913 >>Entregue O grito do Falcotrom
    .accept 874 >>Aceite Mahren Vidente do Céu
    .target Jorn Skyseer
step
    #loop
    #label Hezrul
    .goto The Barrens,45.64,38.16,0
    .goto The Barrens,45.64,38.16,50,0
    .goto The Barrens,45.84,37.86,50,0
    .goto The Barrens,45.78,37.41,50,0
    .goto The Barrens,45.95,37.11,50,0
    .goto The Barrens,45.93,36.91,50,0
    .goto The Barrens,46.14,36.85,50,0
    .goto The Barrens,46.19,36.88,50,0
    .goto The Barrens,46.28,36.86,50,0
    .goto The Barrens,46.46,37.17,50,0
    .goto The Barrens,46.58,37.31,50,0
    .goto The Barrens,46.63,37.93,50,0
    .goto The Barrens,46.75,38.39,50,0
    .goto The Barrens,47.27,38.98,50,0
    .goto The Barrens,47.47,39.27,50,0
    .goto The Barrens,48.20,39.57,50,0
    .goto The Barrens,48.40,39.58,50,0
    .goto The Barrens,48.60,39.51,50,0
    .goto The Barrens,48.54,39.96,50,0
    .goto The Barrens,48.58,40.52,50,0
    .goto The Barrens,48.27,40.82,50,0
    .goto The Barrens,48.06,40.82,50,0
    .goto The Barrens,47.86,41.13,50,0
    .goto The Barrens,47.49,41.33,50,0
    .goto The Barrens,47.34,41.61,50,0
    .goto The Barrens,47.22,41.64,50,0
    .goto The Barrens,46.85,42.05,50,0
    .goto The Barrens,46.56,41.93,50,0
    .goto The Barrens,46.27,41.76,50,0
    .goto The Barrens,46.03,41.15,50,0
    .goto The Barrens,45.86,41.32,50,0
    .goto The Barrens,46.09,40.98,50,0
    .goto The Barrens,46.08,40.68,50,0
    .goto The Barrens,45.71,40.56,50,0
    >>Encontre e mate |cRXP_ENEMY_Hezrul Marca de Sangue|r. Saqueie-o para sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrulha ao redor do lago|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    .goto The Barrens,46.15,36.93,100 >>Vá à Caverna Ululante
    .subzoneskip 718
    .isOnQuest 1491
step
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Suba a montanha no ponto de encontro da Caverna Ululante
    >>|cRXP_WARN_Siga a seta próxima para chegar à caverna oculta|r
step
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Está localizado acima da entrada da Caverna Ululante|r
    .accept 1486 >>Aceite Pelegos anormais
    .target Nalpak
    .maxlevel 22
    .dungeon !WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_eles estão localizados acima da entrada da Caverna Ululante|r
    .accept 1486 >>Aceite Pelegos anormais
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >>Aceite Erradicação de Anormais
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .dungeon WC
step
    #optional
    #label WCcavepickups
step
    #optional
    #completewith EnterWC
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #completewith EnterWC
    >>Abate os |cRXP_ENEMY_Deviate Beasts|r. Saque os |cRXP_LOOT_Hides|r deles
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
step
    #completewith EnterWC
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .maxlevel 23
step
    #label MadMagg
    #loop
    .goto Kalimdor,51.97,55.23,0
    .goto Kalimdor,51.82,54.86,0
    .goto Kalimdor,52.01,55.02,0
    .goto Kalimdor,52.15,55.15,0
    .goto Kalimdor,51.97,55.23,30,0
    .goto Kalimdor,51.82,54.86,30,0
    .goto Kalimdor,52.01,55.02,30,0
    .goto Kalimdor,52.15,55.15,30,0
    >>Mate |cRXP_ENEMY_Maluc Insano|r. Saqueie-o para obter o |cRXP_LOOT_Xerez de 99 Anos|r
    >>|cRXP_WARN_Ele está invisível e tem múltiplos locais de reaparição|r
    >>|cRXP_WARN_Ele tem um longo tempo de respawn. Pule esta etapa se você não conseguir encontrá-lo|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .maxlevel 23
step
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >>Adentre o portal da Instância WC
    .dungeon WC
step
    #optional
    #label EnterWC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #hardcore
    #completewith DeviateRaptors
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    #completewith DeviateRaptors
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith DeviateRaptors
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .maxlevel 23
    .dungeon WC
step
    #completewith GlowingShard
    >>Mate os |cRXP_ENEMY_Deviate Ravagers|r, os |cRXP_ENEMY_Vipers|r, os |cRXP_ENEMY_Shamblers|r e os |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #label Gems
    >>Mate |cRXP_ENEMY_Lorde Cobrahn|r, |cRXP_ENEMY_Lady Sucurina|r, |cRXP_ENEMY_Lorde Pítias|r e |cRXP_ENEMY_Lorde Serpentis|r. Saqueie-os pelas suas |cRXP_LOOT_Gemas|r
    .complete 914,1 --Gem of Cobrahn (1)
    .mob +Lord Cobrahn
    .complete 914,2 --Gem of Anacondra (1)
    .mob +Lady Anacondra
    .complete 914,3 --Gem of Pythas (1)
    .mob +Lord Pythas
    .complete 914,4 --Gem of Serpentis (1)
    .mob +Lord Serpentis
    .isOnQuest 914
    .dungeon WC
step
    #requires Gems
    #completewith next
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Muyoh <Discípulo de Naralex>|r na entrada da Caverna Ululante. Escorte-o com segurança para |cRXP_FRIENDLY_Naralex|r
    .target Disciple of Naralex
    .skipgossip
    .dungeon WC
step
    #label GlowingShard
    >>Uma vez que você alcançar |cRXP_FRIENDLY_Naralex|r, você será atacado por duas ondas de inimigos e finalmente por |cRXP_ENEMY_Mutanus the Devorador|r
    >>Abate-o e saque-o para obter o |T135229:0|t[|cRXP_LOOT_Estilhaço Chamejante|r] e use-o para iniciar a missão
    .collect 10441,1 --Collect Glowing Shard (x1)
    .accept 6981 >>Aceite A lasca faiscante
    .use 10441
    .mob Mutanus the Devourer
    .dungeon WC
step
    #label DeviateRaptors
    >>Mate os |cRXP_ENEMY_Deviate Ravagers|r, os |cRXP_ENEMY_Vipers|r, os |cRXP_ENEMY_Shamblers|r e os |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .complete 1486,1 --Deviate Hide (20)
    .disablecheckbox
    .isOnQuest 1487
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    +|cRXP_WARN_O resto dessas missões pode ser completado fora do portal de instância Wailing Caverns|r
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    >>|cRXP_WARN_Esta missão pode ser pulada se há muita concorrência|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith EssenceHides
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Esta missão pode ser pulada se há muita concorrência|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .maxlevel 23
    .dungeon !WC
step
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Abate os |cRXP_ENEMY_Deviate Beasts|r. Saque os |cRXP_LOOT_Hides|r deles
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
    .maxlevel 23
    .dungeon !WC
step
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .maxlevel 23
    .dungeon !WC
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .dungeon WC
step
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Abate os |cRXP_ENEMY_Deviate Beasts|r. Saque os |cRXP_LOOT_Hides|r deles
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Slayer
    .mob Deviate Stinglash
    .isOnQuest 1486
    .dungeon WC
step
    #label EssenceHides
    #loop
    .goto Kalimdor,52.21,54.62,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .dungeon WC
step
    #optional
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    >>|cRXP_WARN_Esta missão pode ser pulada se há muita concorrência|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #label SerpBlooms
    #loop
    .goto Kalimdor,52.05,54.52,0
    .goto Kalimdor,51.93,54.93,30,0
    .goto Kalimdor,51.87,54.76,30,0
    .goto Kalimdor,52.05,54.52,30,0
    .goto Kalimdor,52.21,54.62,30,0
    .goto Kalimdor,52.57,54.49,30,0
    .goto Kalimdor,52.77,54.82,30,0
    .goto Kalimdor,52.52,55.04,30,0
    .goto Kalimdor,52.32,55.03,30,0
    .goto Kalimdor,52.33,54.70,30,0
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Esta missão pode ser pulada se há muita concorrência|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #completewith GShard
    .hs >>Use sua Pedra de Regresso para ir a Vila Catraca
    .use 6948
    .cooldown item,6948,>2,1
    .bindlocation 392,1
    .subzoneskip 392
    .dungeon WC
step
    #optional
    #completewith GShard
    .subzone 392 >>|cRXP_WARN_Realize uma 'Ghetto Lar' em Caverna Ululante|r
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copie e cole esta macro dentro de Caverna Ululante para ghetto Lar de volta a Ratchet|r
    .cooldown item,6948,<0
    .bindlocation 392,1
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Entregue Smart Drinks
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >>Entregue Encrencas nas Docas
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    #label GShard
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step
    #completewith next
    .goto The Barrens,50.49,34.36,20,0
    .goto The Barrens,49.61,34.54,20,0
    .goto The Barrens,49.14,34.02,20,0
    .goto The Barrens,48.18,32.78,50 >>Suba a montanha
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falla Vento Sábio|r
    .turnin 6981 >>Entregue A lasca faiscante
    .accept 3369 >>Aceite Em Pesadelos
    .target Falla Sagewind
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,48.18,32.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Falla Vento Sábio|r
    .accept 3369 >>Aceite Em Pesadelos
    .target Falla Sagewind
    .isQuestTurnedIn 6981
    .dungeon WC
step
    .goto Kalimdor,51.92,55.44
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_Está localizado acima da entrada da Caverna Ululante|r
    .turnin 1487 >>Entregue Erradicação de Anormais
    .target Ebru
    .isQuestComplete 1487
    .dungeon WC
step
    #label WCTurnins
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Está localizado acima da entrada da Caverna Ululante|r
    .turnin 1486 >>Entregue Pelegos anormais
    .target Nalpak
    .isQuestComplete 1486
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Aceite Contra-Ataque!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
    .group 2
step
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Mate |cRXP_ENEMY_Senhor da Guerra Krom'zar|r quando aparecer. Pegue o |cRXP_PICK_Estandarte|r que ele deixa no chão
    >>|cRXP_WARN_Cuidado! Ele é um elite forte e protegido por pelo menos dois|r |cRXP_ENEMY_inimigos|r |cRXP_WARN_Kolkar|r
    >>|cRXP_WARN_Pode levar até 3 minutos para ele aparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
    .group 2
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Entregue Contra-Ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
    .group
step
    #label EnterSTM2
    #completewith STMturnins1
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entregue Invasores goblins
    .timer 4,Invasores Goblins RP
    .accept 1063 >>Aceite [DEPRECATED] A Anciã Bruxa Má
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .turnin 6523 >>Entregue Proteja Kaya
    .accept 6401 >>Aceite Kaya Está Viva
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
    .isQuestComplete 6523
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entregue Invasores goblins
    .timer 4,Invasores Goblins RP
    .accept 1063 >>Aceite [DEPRECATED] A Anciã Bruxa Má
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6629
step
    #optional
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entregue Invasores goblins
    .timer 4,Invasores Goblins RP
    .accept 1063 >>Aceite [DEPRECATED] A Anciã Bruxa Má
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6523 >>Entregue Proteja Kaya
    .accept 6401 >>Aceite Kaya Está Viva
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
    .isQuestComplete 6523
step
    #label STMturnins1
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r
    .turnin 1062 >>Entregue Invasores goblins
    .timer 4,Invasores Goblins RP
    .accept 1063 >>Aceite [DEPRECATED] A Anciã Bruxa Má
    .goto The Barrens,35.26,27.88
    .target Seereth Stonebreak
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>Siga o caminho à esquerda para cima
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entregue Sanguessugas
    .target Xen'Zilla
step
    #completewith next
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Vá para Refúgio da Rocha do Sol
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Jayka|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jeeda|r no segundo andar da estalagem
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dela se estiverem disponíveis|r << !Warrior
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_e|r |T134413:0|t[Liferoot] |cRXP_BUY_dela se estiverem disponíveis|r << Warrior
    .target Jeeda
    .isQuestAvailable 6641
step
    .goto Stonetalon Mountains,47.30,61.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maggran|r
    .accept 5881 >>Aceite Chamando as Reservas
    .target Maggran Earthbinder
    .xp <23,1
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Entregue Aracnofobia
    .target Maggran Earthbinder
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Entregue A Kaya Está Viva
    .target Tammra Windfield
    .isOnQuest 6401
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Aprenda a rota de voo de Retiro Rocha do Sol
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>Suba pelo caminho à direita
step
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tsunomem|r
    .accept 6562 >>Aceite Problemas nas Profundezas
    .target Tsunaman
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Entregue instruções adicionais
    .target Ziz Fizziks
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >>Vá para Talondeep Trajetória
step
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Vá para Zoram'gar Posto Avançado
    .subzoneskip 2897
    >>|cRXP_WARN_Evite as guardas Astranaar no caminho. Siga o ponto de referência para segurança|r
    .unitscan Astranaar Sentinel
step
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >>Obtenha a rota de voo do Assentamento Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r e |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Entregue Problemas nas Profundezas
    .accept 6563 >>Aceite A Essência de Aku'mai
    .accept 6921 >>Aceite Entre as Ruínas
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Aceite No Meio do Caminho Tinha uma Pedra... e um Pelocardo...
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Aceite Patuá Trolls
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Aceite Nagas na Praia de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r e |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Entregue Problemas nas Profundezas
    .accept 6563 >>Aceite A Essência de Aku'mai
    .target +Je'neu Sancrea
    .goto Ashenvale,11.56,34.29
    .accept 216 >>Aceite No Meio do Caminho Tinha uma Pedra... e um Pelocardo...
    .target +Karang Amakkar
    .goto Ashenvale,11.90,34.53
    .accept 6462 >>Aceite Patuá Trolls
    .target +Mitsuwa
    .goto Ashenvale,11.65,34.85
    .accept 6442 >>Aceite Nagas na Praia de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .dungeon !BFD
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Isto iniciará uma missão de escolta. Tenha MUITO cuidado! |cRXP_ENEMY_Vorsha|r bate muito forte|r
    .accept 6641,1 >>Aceite Vorsha, a Açoitadora
    .target Muglash
    .group 2
step
    #completewith next
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
    .group 0
step
    .goto Ashenvale,9.63,27.63
    >>Clique no get there
    >>|cRXP_WARN_Haverá ondas de|r |cRXP_ENEMY_Naga|r |cRXP_WARN_que aparecem. Tenha cuidado quando|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_aparecer, ele acerta muito forte|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .group 2
    .mob Vorsha the Lasher
step
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >>Agora você deve procurar um grupo para BlackFathom Deeps
    .dungeon BFD
step
    #loop
    .goto Ashenvale,10.86,26.99,0
    .goto Ashenvale,10.86,26.99,50,0
    .goto Ashenvale,11.23,25.73,50,0
    .goto Ashenvale,11.83,25.75,50,0
    .goto Ashenvale,12.51,24.09,50,0
    .goto Ashenvale,14.18,24.03,50,0
    .goto Ashenvale,14.85,23.08,50,0
    .goto Ashenvale,14.13,20.77,50,0
    .goto Ashenvale,14.73,19.56,50,0
    .goto Ashenvale,14.59,17.90,50,0
    .goto Ashenvale,13.38,16.39,50,0
    .goto Ashenvale,13.62,14.48,50,0
    .goto Ashenvale,14.15,15.31,50,0
    .goto Ashenvale,15.88,15.42,50,0
    .goto Ashenvale,15.40,16.96,50,0
    .goto Ashenvale,15.22,18.81,50,0
    .goto Ashenvale,15.33,20.78,50,0
    .goto Ashenvale,15.33,22.51,50,0
    .goto Ashenvale,15.32,24.90,50,0
    .goto Ashenvale,14.76,25.52,50,0
    .goto Ashenvale,14.62,26.49,50,0
    .goto Ashenvale,14.52,28.25,50,0
    .goto Ashenvale,13.55,29.36,50,0
    .goto Ashenvale,12.41,29.15,50,0
    .goto Ashenvale,11.22,31.04,50,0
    .goto Ashenvale,10.38,29.60,50,0
    .goto Ashenvale,11.01,28.57,50,0
    >>Mate |cRXP_ENEMY_Nagas Cauda da Ira|r. Saqueie-os para obter os deles |cRXP_LOOT_Cabeças|r
    .complete 6442,1 --Wrathtail Head (20)
    .mob Wrathtail Razortail
    .mob Wrathtail Wave Rider
    .mob Wrathtail Sorceress
    .mob Wrathtail Sea Witch
    .mob Wrathtail Priestess
    .mob Wrathtail Myrmidon
    .mob Lady Vespia
step
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Vá para a entrada de Profundezas Negras
step
    #completewith next
    >>Saque |cRXP_LOOT_Safira de Aku'Mai|r da parede
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Mate as |cRXP_ENEMY_Sacerdotisas da Maré de Profundezas Negras|r. Saque-as para uma |T134332:0|t[|cRXP_LOOT_Nota Úmida|r] e use-a para iniciar a missão
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>Aceite Lealdade aos Antigos Deuses
    .mob Blackfathom Tide Priestess
    .use 16790
step
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_opcionalmente fale com|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_de volta a Zoram'gar Posto Avançado para obter outra missão de continuação de BFD|r
    .turnin 6564 >>Entregue Lealdade aos Deuses Antigos
    .accept 6565 >>Aceite Lealdade aos Antigos Deuses
    .target Je'neu Sancrea
    .dungeon BFD
step
    #label Sapphires
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Saque |cRXP_LOOT_Safira de Aku'Mai|r da parede
    .complete 6563,1 --Sapphire of Aku'Mai (20
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >>Vá até o Portal da instância de Profundezas Negras. Entre na instância
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Argênteo Thaelrid|r
    .accept 6561 >>Aceite Vilania nas Profundezas Negras
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Mate |cRXP_ENEMY_Lorgus Jett|r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Pegue o |cRXP_PICK_Fathom Pedra|r na água no chão para obter o |cRXP_LOOT_Fathom Núcleo|r
    >>|cRXP_WARN_Pegar este item fará aparecer|r |cRXP_ENEMY_Barão Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mate |cRXP_ENEMY_Barão Aquanis|r. Pegue um |T136222:0|t[|cRXP_LOOT_Globo d'Água Estranho|r]. Use-o para aceitar a missão
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Aceitar O Barão Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Pegue o |cRXP_PICK_Fathom Pedra|r na água no chão para obter o |cRXP_LOOT_Fathom Núcleo|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mate o |cRXP_ENEMY_Senhor do Crepúsculo Kelris|r. Saqueie-o para obter sua |cRXP_LOOT_Cabeça|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith BFDTurnins
    .zone Ashenvale >>Saia da masmorra
    >>|cRXP_WARN_Abate|r |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_primeiro se desejar. Este é o último chefe da masmorra|r
    .dungeon BFD
step
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Vá para Zoram'gar Posto Avançado
step
    .goto Ashenvale,12.22,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mensageiro do Brado Guerreiro|r
    .turnin 6641 >>Entregue Vorsha, a Açoitadora
    .target Warsong Runner
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Entregue Nagas na Praia de Zoram
    .target Marukai
    .isQuestComplete 6641
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entregue A Essência de Aku'mai
    .turnin 6564 >>Entregue Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Entregue Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Entregue Entre as Ruínas
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Entregue O Barão Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step
    #optional
    #label ZoramTurnins
step
    #completewith Zoram2
    .subzone 2897 >>Vá para Zoram'gar Posto Avançado
step
    .goto Ashenvale,12.22,34.21
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mensageiro do Brado Guerreiro|r
    .turnin 6641 >>Entregue Vorsha, a Açoitadora
    .target Warsong Runner
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Entregue Nagas na Praia de Zoram
    .target Marukai
    .isQuestComplete 6641
step
    #label Zoram2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entregue A Essência de Aku'mai
    .turnin 6564 >>Entregue Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
step << Druid
    #completewith next
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >>Entregar Uma Lição a Aprender
    .accept 28 >>Aceitar Prova do Lago
    .target Dendrite Starblaze
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Treine suas magias de classe
    .target Loganaar
    .xp <20,1
    .xp >22,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >>Treine suas magias de classe
    .target Loganaar
    .xp <22,1
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,30,1 >>Pegue o |cRXP_PICK_Recipiente de Adorno|r no fundo do lago para um |T134125:0|t[|cRXP_LOOT_Adorno de Altar|r]
    >>|cRXP_WARN_Não vá embaixo d'água até chegar direto acima do Bauble|r
step << Druid
    .goto Moonglade,36.40,42.01
    .cast 19719 >>|cRXP_WARN_Use o|r |T134125:0|t[Adorno de Altar] |cRXP_WARN_no Santuário de Remulos|r
    .complete 28,1 -- Complete the Trial of the Lake
    .use 15877
step << Druid
    .goto Moonglade,36.52,40.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jaeana|r
    .turnin 28 >>Entregar Prova do Lago
    .accept 30 >>Aceitar Prova do Leão Marinho
    .target Tajarri
step
    #completewith JourneytoTM
    .destroy 16784>>|cRXP_WARN_Apague seus restantes|r |T134133:0|t[|cRXP_LOOT_Safira de Aku'Mai|r] |cRXP_WARN_pois não são mais necessários|r
step
    #completewith JourneytoTM
    .hs >>Vá para Penhasco do Trovão
    .use 6948
    .bindlocation 1638,1
    .subzoneskip 1638
    .dungeon !WC
step
    #completewith JourneytoTM
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Andruk
    .zoneskip Thunder Bluff
    .dungeon WC
    --WC users still have HS in Ratchet
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>Vá para o Morro dos Anciãos
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Magatha|r
    .turnin 1063 >>Entregue A Velha Bruxa
    .accept 1064 >>Aceite Ajuda Renegada
    .timer 6,Cena de A Velha Anciã
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara|r
    .turnin 914 >>Entregue Líderes da Presa
    .target Nara Wildmane
    .isQuestComplete 914
    .dungeon WC
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul|r
    .turnin 3369 >>Entregue Em Pesadelos
    .target Arch Druid Hamuul Runetotem
    .isOnQuest 3369
    .dungeon WC
step
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bashana|r
    .turnin 6561 >>Entregue Vilania nas Profundezas Negras
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r nos poços de visão
    .turnin 1064 >>Entregue Ajuda Renegada
    .accept 1065 >>Aceite A jornada para Serraria Tarren
    .target Apothecary Zamah
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r nos poços de visão
    .turnin 962 >>Entregue Ofídeas
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    --.dungeon WC
step
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Tal
    .zoneskip The Barrens
    .dungeon !WC << !Shaman
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Entregue Smart Drinks
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon !WC
step
    #label DockTrouble
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >>Entregue Encrencas nas Docas
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon !WC
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r e o |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .turnin 1529 >>Entregue Clamor da água
    .accept 1530 >>Aceite Chamado da Água
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entregue para Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
step << Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r e o |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .turnin 1528 >>Entregue Clamor da água
    .accept 1530 >>Aceite Chamado da Água
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entregue para Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1528
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r e o |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .accept 1530 >>Aceite Chamado da Água
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entregue para Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1529
step << Shaman
    #optional
    #label CallofWater
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r e o |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .accept 1530 >>Aceite Chamado da Água
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entregue para Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isQuestTurnedIn 1528
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Bragok
    .subzoneskip 378
step << skip --Shaman
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Byula <Antigo Estalajadeiro>|r
    .home >>Defina sua Pedra de Retorno em Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma|r
    .turnin 1530 >>Entregue Clamor da água
    .accept 1535 >>Aceite Chamado da Água
    .target Brine
step << Shaman
    .goto The Barrens,44.22,76.75
    .use 7766 >>|cRXP_WARN_Encha seu|r |T132825:0|t[Odre Marrom Vazio] |cRXP_WARN_na fonte abaixo da cabana de Salma|r
    .complete 1535,1 --Filled Brown Waterskin (1)
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma|r
    .turnin 1535 >>Entregue Clamor da água
    .accept 1536 >>Aceite Chamado da Água
    .target Brine
step << Shaman
    #completewith FlyOrg
    .hs >>Use sua Pedra de Retorno para ir a Camp Taurajo
    .use 6948
    .bindlocation 378,1
    .subzoneskip 378
    .cooldown item,6948,>0
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Vá de volta para Camp Taurajo
    .subzoneskip 378
    .cooldown item,6948,<0
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Druid !Shaman
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    --.dungeon !WC
step << !Shaman
    #optional
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .zoneskip Orgrimmar
    --.dungeon WC
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1512 >>Entregue Love's Gift - Missão - Missão - Missão
    .accept 1513 >>Aceite A vinculação
    .target Gan'rul Bloodeye
step << Warlock
    #completewith next
    .cast 9224 >>|cRXP_WARN_Use o|r |T133290:0|t[Pingente de Dogran] |cRXP_WARN_no Círculo de Evocação|r
    .use 6626
step << Warlock
    .goto Orgrimmar,49.66,50.15
    >>Mate |cRXP_ENEMY_Súcubo Evocado|r
    .complete 1513,1 --Kill Summoned Succubus (1)
    .mob Summoned Succubus
    .use 6626
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul|r
    .turnin 1513 >>Entregue A Vinculação
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 6202 >>Treine suas magias de classe
    .target Mirket
    .xp <22,1
    .xp >24,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 6223 >>Treine suas magias de classe
    .target Mirket
    .xp <24,1
step << Rogue
    #completewith next
    .goto Orgrimmar,45.64,55.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kareth|r|cRXP_BUY_. Compre um|r |T135640:0|t[Jambiya] |cRXP_BUY_dele se você não tem um punhal|r
    .collect 2207,1 --Collect Jambiya (1)
    .target Kareth
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .train 8676 >>Treine |T132282:0|t[Emboscar]
    .train 1943 >>Aprenda |T132302:0|t[Ruptura]
    .train 1856 >>Aprenda |T132331:0|t[Sumir]
    .train 1725 >>Treine |T132289:0|t[Distração]
    .train 1785 >>Treine |T132320:0|t[Furtividade Rank 2]
    .accept 2460 >>Aceite A saudação dos Mão Despedaçada
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>Depois que |cRXP_FRIENDLY_Shenthul|r faz sua continência, digite /Continência enquanto o tem como alvo
    .complete 2460,1 --Shattered Salute Performed (1)
    .target Shenthul
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2460 >>Entregue A saudação dos Mão Despedaçada
    .accept 2458 >>Aceite A Cobertura Profunda
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre |r |T134387:0|t[Pó de Clarão] |cRXP_BUY_dele|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar para|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternativamente, você pode verificar a Casa de Leilões se algo melhor estiver disponível|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar para|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela|r
    .collect 5210,1,493,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 2138 >>Treine suas magias de classe
    .target Pephredo
    .xp <22,1
    .xp >24,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 2121 >>Treine suas magias de classe
    .target Pephredo
    .xp <24,1
step << Mage
    .goto Orgrimmar,38.66,85.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Thuul|r no topo da cabana
    .train 3567 >>Aprenda |T135759:0|t[Teleporte: Orgrimmar]
    .target Thuul
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <24,1
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >>Entre nas Savanas pela saída ocidental
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >> Travel to The Sludge Fen
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>Saqueie water for the |T133443:0|t[|cRXP_LOOT_Half Pendant of Aquatic Agility|r]
    .collect 15883,1,31,1 --Half Pendant of Aquatic Agility (1)
    .isOnQuest 30
step << Rogue
    #completewith next
    .goto The Barrens,55.70,5.89
	+Mire o |cRXP_FRIENDLY_Capataz Arruela|r, depois use seu |T134536:0|t[Sinalizador] DUAS VEZES e digite /Continência
    >>|cRXP_WARN_Cuidado! NÃO se aproxime dele até que ele se torne aliado ou ele o atacará!|r
    .use 8051
    .target Taskmaster Fizzule
step << Rogue
    .goto The Barrens,55.44,5.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Capataz Arruela|r
    .turnin 2458 >>Entregue Missão secreta
    .accept 2478 >>Aceite Missão: Possível, Mas Não Provável
    .target Taskmaster Fizzule
step << Rogue/Druid
    #optional
    #label MissionProbable
step << Rogue
    .goto The Barrens,54.80,5.97
    >>Usar |T133644:0|t[Bater Carteira] em |cRXP_ENEMY_Capataz Biela|r pela |cRXP_LOOT_Tower Chave|r
    .complete 2478,5 --Silixiz's Tower Key (1)
    .mob Foreman Silixiz
step << Rogue
    #completewith roguetowerq
    +|cRXP_WARN_Cada inimigo aqui recebe mais dano de certas habilidades|r
    >>Use |T132282:0|t[Emboscar] nos |cRXP_ENEMY_Peões Mutantes da Empreendimentos S.A.|r
    >>Usar |T132302:0|t[Ruptura] nos |cRXP_ENEMY_Patrulheiros da Companhia Venture Co.|r
    >>Usar |T132292:0|t[Eviscerar] nos |cRXP_ENEMY_Vigias da Companhia Venture Co.|r uma vez (1 ponto de combo)
step << Rogue
    #label roguetowerq
    .goto The Barrens,54.72,5.74
    >>Corra para a Torre do Ladino e mate os |cRXP_ENEMY_Drones|r, os |cRXP_ENEMY_Patrollers|r e os |cRXP_ENEMY_Lookouts|r
    .complete 2478,1 --Mutated Venture Co. Drone (2)
    .mob +Mutated Venture Co. Drone
    .complete 2478,3 --Venture Co. Patroller (2)
    .mob +Venture Co. Patroller
    .complete 2478,2 --Venture Co. Lookout (2)
    .mob +Venture Co. Lookout
step << Rogue
    .goto The Barrens,54.77,5.57
    >>No topo da torre, você encontrará |cRXP_ENEMY_Capataz-chefe Puzik Gallywix|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Use|r |T132282:0|t[Emboscar] |cRXP_WARN_para reduzir sua vida pela metade. Usar|r |T132155:0|t[Esfaquear] |cRXP_WARN_para restaurar energia e usar|r |T136205:0|t[Evasão]
	>>|cRXP_WARN_Lembre de usar uma Poção e|r |T132819:0|t[Chá de Cardo] |cRXP_WARN_se necessário|r
    .complete 2478,4 --Gallywix's Head (1)
    .mob Grand Foreman Puzik Gallywix
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Usar sua habilidade de arrombamento para abrir a |cRXP_PICK_Caixa-forte de Gallywix|r e pegue o |cRXP_LOOT_Mistura|r.
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Viaje para Orgrimmar pela entrada ocidental
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 30 << Druid
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Entregue Missão: Possível, Mas Não Provável
    .accept 2479 >>Aceite Assistência de Hinott
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre |r |T134387:0|t[Pó de Clarão] |cRXP_BUY_dele|r
    .collect 2928,40,2479,1 --Collect Dust of Decay (40)
    .collect 3371,40,2479,1 --Collect Empty Vial (40)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8498 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <22,1
    .xp >24,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 905 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <24,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 6192 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <22,1
    .xp >24,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 5308 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14323 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <22,1
    .xp >24,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14262 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <24,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24558 >>Treine as magias do seu mascote
    .target Xao'tsu
    .xp <24,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compre |r |T135423:0|t[Machado de Arremesso Mortal] |cRXP_BUY_dele|r
    .collect 25875,1,493,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_Se tiver|r |T134437:0|t[Antipeçonha]|cRXP_WARN_, use uma para se curar do|r |T136230:0|t[Toque de Zanzil]
    .itemcount 6452,1
    .aura 9991
    .aura 9810
step << Rogue
    .destroy 8051 >>|cRXP_WARN_Remova o|r |T134536:0|t[Sinalizador] |cRXP_WARN_da mochila, pois não é mais necessário|r
    .destroy 8066 >>|cRXP_WARN_Delete|r |T134374:0|t[Fizzule's Apito] |cRXP_WARN_from your bags, as it's no longer needed|r
step << skip --!Shaman
    .goto Orgrimmar,54.10,68.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Gryshka|r
    .home >>Defina sua Pedra de Retorno em Orgrimmar
	.target Innkeeper Gryshka
    .bindlocation 1637
    .train 3567,1 << Mage --Skips if Teleport Orgrimmar is trained
step << !Mage
    .goto Orgrimmar,49.1,94.5,30 >>Saia de Orgrimmar
    .zoneskip Durotar
step
    #optional
    #label BarrensEnd
step
    #optional
    .abandon 1486 >>Abandone Pelegos anormais
step
    #optional
    .abandon 1487 >>Abandone Erradicação de Anormais
step
    #optional
    .abandon 914 >>Abandone Líderes da Presa
step
    #optional
    .abandon 855 >>Abandone Braçadeiras de centauro
step
    #optional
    .abandon 959 >>Abandone Encrencas nas docas
step
    #optional
    .abandon 1491 >>Abandone Bebidas inteligentes


]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guia de Sobrevivência (H)
<< Horde
#name 24-25 Colinas de Eira dos Montes
#version 7
#subgroup Guia de Sobrevivência RXP TBC 1-30
#next 25-27 South Barrens

step
    #sticky
    #completewith EnterSFK
    .subzone 209,2 >>Agora você deve estar procurando um grupo para Bastilha da Presa Negra
    .dungeon SFK
step << !Mage
    #optional
    #completewith next
    .goto Orgrimmar,49.1,94.5,30 >>Saia de Orgrimmar
    .zoneskip Durotar
step << !Mage
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    .zoneskip Tirisfal Glades
    .zoneskip Undercity
    .zoneskip Silverpine Forest
    .zoneskip Hillsbrad Foothills
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
    .dungeon SFK
step << !Mage
    #completewith JourneytoHillsbrad
    .goto Undercity,66.09,20.06,35,0
    .goto Undercity,64.37,23.94,35,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
    .dungeon SFK
step << Mage
    #completewith JourneytoHillsbrad
    .cast 3563 >>Lance |T135766:0|t[Teleporte: Cidade Baixa]
    .zoneskip Undercity
step << !Undead
    .goto Undercity,63.25,48.56
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miguel|r
    .fp Undercity >>Aprenda a rota de voo para Undercity
    .target Michael Garrett
    .isQuestAvailable 9621 << BloodElf
    .isQuestAvailable 9812 << !BloodElf
    --fp not picked up yet if Barrens guide was chosen instead of Ghostlands
step
    .goto Undercity,53.74,54.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Bel'dugur|r
    .accept 1013 >>Aceite O Livro de Ur
    .target Keeper Bel'dugur
    .dungeon SFK
step
    #completewith JourneytoHillsbrad
    .goto Undercity,47.25,39.12,50,0
    .goto Undercity,46.35,43.86,10,0
    .goto Undercity,45.24,39.35,10,0
    .goto Undercity,41.32,38.40,10,0
    .goto Undercity,40.74,33.95,10,0
    .goto Undercity,34.80,33.19,15,0
    .goto Undercity,27.39,30.23,35,0
    .goto Undercity,21.89,43.35,35,0
    .goto Tirisfal Glades,51.10,71.53,50,0
    .zone Tirisfal Glades >>Saia de Cidade Baixa pelos Esgotos
    .zoneskip Silverpine Forest
    .dungeon SFK << !Mage
step
    #completewith next
    .goto Silverpine Forest,66.69,5.09,80,0
    .zone Silverpine Forest >>Vá para Floresta de Pinhaprata
step << Druid
    #completewith next
    .goto Silverpine Forest,36.12,28.30,120 >>Viaje para o Nordeste em direção ao Grande Mar
step << Druid
    .goto Silverpine Forest,29.58,29.30
    >>Saqueie water for the |T133442:0|t[|cRXP_LOOT_Half Pendant of Aquatic Endurance|r]
    .collect 15882,1,30,1 --Half Pendant of Aquatic Agility (1)
step
    #completewith JourneytoHillsbrad
    .subzone 228 >>Vá para The Sepulcher
step
    .goto Silverpine Forest,45.62,42.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karos|r
    .fp Sepulcher >>Aprenda a rota de voo para The Sepulcher
    .target Karos Razok
step
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .accept 1014 >>Aceite Arugal Tem que Morrer
    .target Dalar Dawnweaver
    .dungeon SFK
step
    .goto Silverpine Forest,42.90,40.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Renferrel|r
    .accept 493 >>Aceite Jornada para Colinas de Eira dos Montes
    .target Apothecary Renferrel
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadrec|r no andar de baixo da cripta
    .accept 1098 >>Aceite Mortalâmbitos na Presa Negra
    .target High Executor Hadrec
    .dungeon SFK
step
    .goto Silverpine Forest,42.90,41.99
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mura|r
    .turnin 3301 >>Entregue Mura Runa Totem
    .target Mura Runetotem
    .isOnQuest 3301
    .dungeon WC << !Warrior !Shaman
step
    #label JourneytoHillsbrad
    .goto Silverpine Forest,44.18,42.68
    >>Interaja com |cRXP_PICK_Lápide de Yuriv|r no chão
    .turnin 264 >>Entregue Até que a morte nos separe
    .target Clarice Foster
    .isOnQuest 264
step
    #label EnterSFK
    .goto Silverpine Forest,44.87,67.86
    .subzone 209,2 >>Entre no portal da instância SFK. Entre na instância
    .dungeon SFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vincent|r
    .turnin 1098 >>Entregue Mortalâmbitos na Presa Negra
    .target Deathstalker Vincent
    .dungeon SFK
    .isOnQuest 1098
step
    >>Pegue o |cRXP_PICK_Book of Ur|r da estante na sala de |cRXP_ENEMY_Fenrus the Devourer's|r
    .complete 1013,1 --Book of Ur(1)
    .dungeon SFK
    .isOnQuest 1013
step
    >>Abate |cRXP_ENEMY_Arquimago Arugal|r. Saque-o pela |cRXP_LOOT_Cabeça|r
    .complete 1014,1 --Head of Arugal (1)
    .mob Archmage Arugal
    .dungeon SFK
    .isOnQuest 1014
step
    #completewith SFKTurnins
    .goto Silverpine Forest,45.51,41.26,150,0
    .subzone 228 >>Vá para The Sepulcher
    .dungeon SFK
step
    .goto Silverpine Forest,43.43,40.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hadrec|r
    .turnin 1098 >>Entregue Mortalâmbitos na Presa Negra
    .target High Executor Hadrec
    .dungeon SFK
    .isQuestComplete 1098
step
    #label SFKTurnins
    .goto Silverpine Forest,44.22,39.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dalar|r
    .turnin 1014 >>Entregue Arugal Tem que Morrer
    .target Dalar Dawnweaver
    .dungeon SFK
    .isQuestComplete 1014
step
    #completewith next
    .zone Hillsbrad Foothills >>Vá para Contraforte de Eira dos Montes
    .zoneskip Hillsbrad Foothills
step
    .goto Hillsbrad Foothills,20.79,47.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|cRXP_FRIENDLY_ Sicário Açoute|r
    .accept 494 >>Aceite Tempo de Golpear
    .target Deathstalker Lesh
step
    #completewith next
    .goto Hillsbrad Foothills,62.06,20.19,120 >>Vá para Tarren Moinho
    .subzoneskip 272
step
    .goto Hillsbrad Foothills,60.14,18.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarissa|r
    .fp Tarren Mill>>Aprenda a rota de voo para Tarren Moinho
    .target Zarise
    .isQuestAvailable 498
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hinott|r
    .turnin 2479 >>Entregue Assistência de Hinott - Missão
    .accept 2480 >>Aceite Assistência de Hinott
    .timer 30,Assistência de Hinott - Missão RP
    .target Serge Hinott
step << Rogue
    .goto Hillsbrad Foothills,61.55,19.19
    >>Espere |cRXP_FRIENDLY_Serguei Hinoto|r concluir a cura
    .complete 2480,1 --Cure Completed (1)
step << Rogue
    .goto Hillsbrad Foothills,61.64,19.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hinott|r
    .turnin 2480 >>Entregue Assistência de Hinott - Missão
    .target Serge Hinott
step << Rogue
    #completewith TarrenMillPickups
    .cast 10723 >>|cRXP_WARN_Use|r |T134807:0|t[Óleo do Hinoto] |cRXP_WARN_para se curar de|r |T136230:0|t[Toque de Zanzil]
step << Rogue
    #completewith TarrenMillPickups
    >>|cRXP_WARN_Crie|r |T132273:0|t[Venenos Instantâneos]
    .collect 6947,20,1067,1 --Collect Instant Poison (20)
step
    .goto Hillsbrad Foothills,61.44,19.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Boticário Lindolfo|r
    .turnin 1065 >>Entregue A jornada para Serraria Tarren
    .accept 1066 >>Aceite Sangue dos Inocentes
    .turnin 493 >>Entregue Jornada ao Contraforte de Eira dos Montes
    .accept 496 >>Aceite Elixir de Sofrimento
    .accept 501 >>Aceite Elixir da dor
    .target Apothecary Lydon
step << Shaman
    .goto Hillsbrad Foothills,62.18,20.78
    .use 7768 >>|cRXP_WARN_Use o|r |T132829:0|t[Odre Vermelho Vazio] |cRXP_WARN_no poço no meio de Serraria Tarren|r
    .complete 1536,1 --Filled Red Waterskin (1)
step
    .goto Hillsbrad Foothills,62.37,20.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_High Executor Darthalia|r
    .turnin 494 >>Entregue Hora de atacar
    .accept 527 >>Aceite [DEPRECATED] Batalha de Hillsbrad
    .target High Executor Darthalia
step << BloodElf
    .goto Hillsbrad Foothills,62.58,20.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Duskingdawn|r
    .turnin 9425 >>Entregue Relatório para Tarren Moinho
    .target Advisor Duskingdawn
step
    .goto Hillsbrad Foothills,62.64,20.76
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 549 >>Aceite PROCURA-SE: integrantes da Camarilha
step
    .goto Hillsbrad Foothills,63.24,20.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krusk|r
    .accept 498 >>Aceite O resgate
    .target Krusk
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1800,549,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dele|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
step
    #label TarrenMillPickups
    .goto Hillsbrad Foothills,62.56,19.65
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 567 >>Aceite Perigo!
step << skip --Mage
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Chê|r
    .home >>Defina sua Pedra de Retorno em Tarren Moinho
	.target Innkeeper Shay
    .isQuestAvailable 498
    .bindlocation 272
    .train 3567,3 --Skips if Teleport Orgrimmar isn't trained
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Chê|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 498
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ott|r
    .vendor >>|cRXP_BUY_Compre um|r |T132408:0|t[Machado Impiedoso] |cRXP_BUY_dele se estiver disponível e você não tiver ainda|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ott|r
    .vendor >>|cRXP_BUY_Compre uma|r |T135640:0|t[Faca de Lâmina Larga] |cRXP_BUY_dela se estiver disponível e você não o tiver ainda|r
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Hunter
    #completewith next
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Theodore|r
    .stable >>Guarde seu mascote. Você domará um |cRXP_ENEMY_Urso Pestilento|r e um |cRXP_ENEMY_Rastejante da Floresta|r em breve
    .target Theodore Mont Claire
step << Hunter
    #loop
    .goto Hillsbrad Foothills,57.93,27.85,0
    .goto Hillsbrad Foothills,57.93,27.85,60,0
    .goto Hillsbrad Foothills,58.88,32.28,60,0
    .goto Hillsbrad Foothills,61.77,36.16,60,0
    .train 16829 >>|cRXP_WARN_lançou|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Gray Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 3)]
    .train 17263 >>|cRXP_WARN_Use|r |T132164:0|t[Domar Fera] |cRXP_WARN_em um |cRXP_ENEMY_Rastejante da Floresta|r. Ataque inimigos com ele para aprender|r |T132278:0|t[Morder (Rank 3)]
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
    .mob Gray Bear
    .mob Forest Moss Creeper
step << Hunter
    .goto Hillsbrad Foothills,62.31,19.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Theodore|r
    .stable >>Abandone o |cRXP_ENEMY_Urso Pestilento|r ou o |cRXP_ENEMY_Rastejante da Floresta|r e recupere seu mascote original
    .target Theodore Mont Claire
step << Rogue
    #completewith Durnholde1
    .cast 8679 >>|cRXP_WARN_Use o|r |T132273:0|t[Veneno Instantâneo] |cRXP_WARN_em suas armas|r
    .itemcount 6947,2
step
	#completewith next
    >>Mate route.Saqueie them for their |cRXP_LOOT_Tongues|re 
    >>|cRXP_WARN_Evite|r |cRXP_ENEMY_Elder Cinza Ursos|r |cRXP_WARN_e|r |cRXP_ENEMY_Giant Moss Creepers|r |cRXP_WARN_pois são de nível alto e não valem a pena matar|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #label Durnholde1
    .goto Hillsbrad Foothills,76.57,46.48,120 >>Viaje até Durnholde Keep
    .isOnQuest 549,1066,498
step
    #completewith Drull
    >>Mate os |cRXP_ENEMY_Ladinos da Camarilha|r, os |cRXP_ENEMY_Vigias da Camarilha|r e os |cRXP_ENEMY_Magos das Sombras da Camarilha|r.
    >>Saqueie |cRXP_LOOT_Vials of Innocent Blood|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
	.complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
	.complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob +Syndicate Shadow Mage
step
    #completewith Togthar
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    >>Mate for his |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_Ele pode ser encontrado em frente ao Quartel de |cRXP_FRIENDLY_Tog'thar|r ou em frente ao |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #loop
    .goto Hillsbrad Foothills,79.45,40.57,0
	.goto Hillsbrad Foothills,77.99,40.19,0
    .goto Hillsbrad Foothills,79.45,40.57,15,0
	.goto Hillsbrad Foothills,77.99,40.19,15,0
	>>Mate for his |cRXP_LOOT_Gold Key|r
    >>|cRXP_WARN_Ele pode ser encontrado em frente de |cRXP_FRIENDLY_Tog'thar|r ou no fundo da torre|r
    .collect 3499,1,498,2 --Burnished Gold Key (1)
    .mob Jailor Marlgen
step
    #label Togthar
	.goto Hillsbrad Foothills,79.79,39.65
    >>Clique no |cRXP_PICK_Ball and Chain|r no chão
    .complete 498,2 --Rescue Tog'thar (1)
step << Rogue/Hunter/Shaman
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Compre|r |T134590:0|t[|cRXP_FRIENDLY_Calças de Espreitar|r] |cRXP_BUY_e|r |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r] |cRXP_BUY_delas se estiverem disponíveis|r
    .vendor >>Comerciante e Conserto
    .target Cris Legace
    .money <1.1374
    .itemcount 4831,<1
    .itemcount 4794,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Compre|r |T134590:0|t[|cRXP_FRIENDLY_Calças de Espreitar|r] |cRXP_BUY_dela se estiver disponível|r
    .vendor >>Comerciante e Conserto
    .target Cris Legace
    .money <0.7859
    .itemcount 4831,<1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kris|r
    >>|cRXP_BUY_Compre|r |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r] |cRXP_BUY_dela se estiver disponível|r
    .vendor >>Comerciante e Conserto
    .target Cris Legace
    .money <0.3515
    .itemcount 4794,<1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_Equipe o|r |T134590:0|t[|cRXP_FRIENDLY_Calças de Espreitar|r] |cRXP_WARN_e|r |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r]
    .use 4831
    .use 4794
    .itemcount 4831,1
    .itemcount 4794,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
    .equip 7,1831
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_Equipe o|r |T134590:0|t[|cRXP_FRIENDLY_Calças de Espreitar|r]
    .use 4831
    .itemcount 4831,1
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<76
    .isOnQuest 498
    .equip 9,4794
step << Rogue/Hunter/Shaman/Druid
    #optional
    #completewith Drull
    +|cRXP_WARN_Equipe as|r |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r]
    .use 4794
    .itemcount 4794,1
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .isOnQuest 498
    .equip 9,4794
step << !Rogue !Hunter !Shaman !Druid
	.goto Hillsbrad Foothills,80.14,38.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kris|r
    .vendor >>Comerciante e Conserto
    .target Cris Legace
    .isOnQuest 498
    .subzoneskip 275,1
step
    #loop
    .goto Hillsbrad Foothills,79.55,41.85,0
    .goto Hillsbrad Foothills,75.31,41.63,0
    .goto Hillsbrad Foothills,79.55,41.85,15,0
    .goto Hillsbrad Foothills,75.31,41.63,15,0
    >>Mate for his |cRXP_LOOT_Iron Key|r
    >>|cRXP_WARN_Ele pode ser encontrado em frente ao Quartel de |cRXP_FRIENDLY_Tog'thar|r ou em frente ao |cRXP_FRIENDLY_Drull|r
	.collect 3467,1,498,1 --Dull Iron Key (1)
	.mob Jailor Eston
step
    #label Drull
    .goto Hillsbrad Foothills,75.33,41.50
    >>Clique no |cRXP_PICK_Ball and Chain|r no chão
    .complete 498,1 --Rescue Drull (1)
step
    #completewith next
    >>Mate |cRXP_ENEMY_Ladinos da Camarilha|r e |cRXP_ENEMY_Vigias da Camarilha|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>Mate |cRXP_ENEMY_Magos das Sombras da Camarilha|r. Saqueie-os para pegar suas |cRXP_LOOT_Ampolas|r
    >>|cRXP_WARN_Mais deles podem ser encontrados na torre ao sudoeste do forte|r
    .complete 1066,1 --Collect Vial of Innocent Blood (x5)
    .mob Syndicate Shadow Mage
step
    #loop
	.goto Hillsbrad Foothills,67.22,45.85,0
	.goto Hillsbrad Foothills,67.88,47.93,40,0
	.goto Hillsbrad Foothills,67.06,50.84,40,0
	.goto Hillsbrad Foothills,66.24,48.79,40,0
	.goto Hillsbrad Foothills,65.36,48.65,40,0
	.goto Hillsbrad Foothills,64.86,47.05,40,0
	.goto Hillsbrad Foothills,65.37,46.46,40,0
	.goto Hillsbrad Foothills,66.13,45.63,40,0
	.goto Hillsbrad Foothills,67.22,45.85,40,0
    >>Mate |cRXP_ENEMY_Ladinos da Camarilha|r e |cRXP_ENEMY_Vigias da Camarilha|r
    >>|cRXP_WARN_Mais deles podem ser encontrados na torre ao sudoeste do forte|r
    .complete 549,1 --Kill Syndicate Rogue (x10)
    .mob +Syndicate Rogue
    .complete 549,2 --Kill Syndicate Watchman (x10)
    .mob +Syndicate Watchman
step
	#completewith next
    >>Abata os |cRXP_ENEMY_Ursos|r e as |cRXP_ENEMY_Aranhas|r a caminho de volta para Tarren Moinho. Saqueie-os por suas |cRXP_LOOT_Línguas|r e |cRXP_LOOT_Ichor|r
    >>|cRXP_WARN_Evite|r |cRXP_ENEMY_Elder Cinza Ursos|r |cRXP_WARN_e|r |cRXP_ENEMY_Giant Moss Creepers|r |cRXP_WARN_pois são de nível alto e não valem a pena matar|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob +Forest Moss Creeper
    .isOnQuest 496
step
    #completewith next
    .subzone 272 >>Entregue em Tarren Moinho
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krusk|r e |cRXP_FRIENDLY_Alta-executora Darthalia|r
    .turnin 498 >>Entregue O Resgate
    .target +Krusk
    .goto Hillsbrad Foothills,63.24,20.65
    .turnin 549 >>Entregue [DEPRECATED] [DEPRECATED] WANTED: Syndicate Personnel
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.37,20.32
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1800,501,1 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .xp >25,1
    .itemcount 2515,<1000
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dele|r
    .collect 3030,1800,501,1 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .xp <25,1
    .itemcount 3030,<1000
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Chê|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
	.target Innkeeper Shay
    .isOnQuest 527
    .subzoneskip 272,1
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lydon|r e |cRXP_FRIENDLY_Umpi|r
    .turnin 1066 >>Entregue [DEPRECATED] Sanguíneo dos Inocentes
    .turnin 496 >>Entregue [DEPRECATED] Elixir do Sofrimento
    .accept 499 >>Aceite [DEPRECATED] Elixir do Sofrimento
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >>Entregue [DEPRECATED] Elixir do Sofrimento
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestComplete 496
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lydon|r e |cRXP_FRIENDLY_Umpi|r
    .turnin 1066 >>Entregue [DEPRECATED] Sanguíneo dos Inocentes
    .accept 499 >>Aceite [DEPRECATED] Elixir do Sofrimento
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.44,19.05
    .turnin 499 >>Entregue [DEPRECATED] Elixir do Sofrimento
    .target +Umpi
    .goto Hillsbrad Foothills,61.53,19.17
    .isQuestTurnedIn 496
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Lindolfo|r
    .turnin 1066 >>Entregue [DEPRECATED] Sanguíneo dos Inocentes
    .goto Hillsbrad Foothills,61.44,19.05
    .target Apothecary Lydon
step
    #optional
    #completewith FarmerRay
    .destroy 3499 >>|cRXP_WARN_Delete o|r |T134238:0|t[Chave de Ouro Lustroso] |cRXP_WARN_da sua mochila, pois não é mais necessária|r
step
    #optional
    #completewith FarmerRay
    .destroy 3467 >>|cRXP_WARN_Delete o|r |T134237:0|t[Chave de Ouro Desluzido] |cRXP_WARN_da sua mochila, pois não é mais necessária|r
step
	#completewith Fields1
    >>Mate |cRXP_ENEMY_Gray Bears|r e |cRXP_ENEMY_Starving Mountain Lions|r. Saqueie-os para obter |cRXP_LOOT_Gray Bear Tongues|r e |cRXP_LOOT_Mountain Lion Blood|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob +Gray Bear
    .mob +Vicious Gray Bear
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob +Starving Mountain Lion
    .isOnQuest 496
step
	#completewith Fields1
    >>Mate |cRXP_ENEMY_Starving Mountain Lions|r. Saqueie-os para obter |cRXP_LOOT_Mountain Lion Blood|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
    .isQuestTurnedIn 496
step
    #label Fields1
    .goto Hillsbrad Foothills,36.02,39.19
    .subzone 286 >>Vá para os Campos de Hillsbrad
    .isOnQuest 527
step
    #completewith FarmerRay
	>>Mate e around the fields
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Hillsbrad Farmers|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_Você|r << Rogue/Warrior/Shaman
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
step
    #loop
    .goto Hillsbrad Foothills,36.7,39.4,0
    .goto Hillsbrad Foothills,35.2,37.6,0
    .goto Hillsbrad Foothills,35.1,41.0,0
    .goto Hillsbrad Foothills,36.7,39.4,30,0
    .goto Hillsbrad Foothills,35.2,37.6,30,0
    .goto Hillsbrad Foothills,35.1,41.0,30,0
    >>Mate |cRXP_ENEMY_Farmer Getz|r
    >>|cRXP_WARN_Ele tem três locais de desova diferentes. Na casa, celeiro ou campo|r
    .complete 527,4 --Farmer Getz (1)
    .unitscan Farmer Getz
step
    #label FarmerRay
    #loop
    .goto Hillsbrad Foothills,33.28,34.65,0
    .goto Hillsbrad Foothills,33.65,35.44,30,0
    .goto Hillsbrad Foothills,32.90,35.23,10,0
    .goto Hillsbrad Foothills,33.23,34.65,10,0
    .goto Hillsbrad Foothills,32.69,34.77,8,0
    .goto Hillsbrad Foothills,32.88,34.99,8,0
    .goto Hillsbrad Foothills,33.28,34.65,8,0
    >>Mate |cRXP_ENEMY_Farmer Ray|r
    >>|cRXP_WARN_Ele pode surgir do lado de fora sob a videira ou no 1º ou 2º andar da casa|r
    .complete 527,3 --Farmer Ray (1)
    .unitscan Farmer Ray
step
    #loop
    .goto Hillsbrad Foothills,31.30,37.08,0
    .goto Hillsbrad Foothills,31.30,37.08,40,0
    .goto Hillsbrad Foothills,33.81,40.91,40,0
    .goto Hillsbrad Foothills,35.49,40.36,40,0
	>>Mate e around the fields
    >>|cRXP_WARN_Be careful.|r |cRXP_ENEMY_Hillsbrad Farmers|r |cRXP_WARN_can|r |T132343:0|t[Disarm] |cRXP_WARN_Você|r << Rogue/Warrior/Shaman
    .complete 527,1 --Kill Hillsbrad Farmer (x6)
    .mob +Hillsbrad Farmer
	.complete 527,2 --Kill Hillsbrad Farmhand (x6)
    .mob +Hillsbrad Farmhand
step
	#completewith next
    >>Mate |cRXP_ENEMY_Bears|r. Saqueie-os para obter |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #loop
	.goto Hillsbrad Foothills,54.77,28.72,0
	.goto Hillsbrad Foothills,39.79,34.43,60,0
	.goto Hillsbrad Foothills,38.70,36.71,60,0
	.goto Hillsbrad Foothills,38.45,38.77,60,0
	.goto Hillsbrad Foothills,39.88,40.56,60,0
	.goto Hillsbrad Foothills,37.97,44.59,60,0
	.goto Hillsbrad Foothills,39.92,45.83,60,0
	.goto Hillsbrad Foothills,40.91,44.23,60,0
	.goto Hillsbrad Foothills,42.56,40.19,60,0
	.goto Hillsbrad Foothills,43.36,39.38,60,0
	.goto Hillsbrad Foothills,51.28,35.37,60,0
	.goto Hillsbrad Foothills,54.29,31.75,60,0
	.goto Hillsbrad Foothills,52.93,29.45,60,0
	.goto Hillsbrad Foothills,54.77,28.72,60,0
    >>Finish killing |cRXP_ENEMY_Mountain Lions|r.Saqueie them for their |cRXP_LOOT_Blood|r
	.complete 501,1 --Collect Mountain Lion Blood (x10)
    .mob Starving Mountain Lion
step
	#completewith TarrenMillTurnins2
    >>Mate to Tarren Mill.Saqueie them for their |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r e |cRXP_FRIENDLY_Samsa|r
    .turnin 496 >>Entregue [DEPRECATED] Elixir do Sofrimento
    .accept 499 >>Aceite [DEPRECATED] Elixir do Sofrimento
    .turnin 501 >>Entregue Elixir da dor
    .accept 502 >>Aceite Elixir da dor
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 527 >>Entregue [DEPRECATED] Batalha de Hillsbrad
    .accept 528 >>Aceite [DEPRECATED] Batalha de Hillsbrad
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .accept 546 >>Aceite Lembrancinhas da morte
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.50,19.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r
    .accept 499 >>Aceite [DEPRECATED] Elixir do Sofrimento
    .isQuestTurnedIn 496
step
    #optional
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >>Entregue [DEPRECATED] Elixir do Sofrimento
    .target Umpi
    .isQuestTurnedIn 496
step
    #label TarrenMillTurnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lydon|r, |cRXP_FRIENDLY_Darthalia|r e |cRXP_FRIENDLY_Samsa|r
    .turnin 501 >>Entregue Elixir da dor
    .accept 502 >>Aceite Elixir da dor
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 527 >>Entregue [DEPRECATED] Batalha de Hillsbrad
    .accept 528 >>Aceite [DEPRECATED] Batalha de Hillsbrad
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .accept 546 >>Aceite Lembrancinhas da morte
    .target +Deathguard Samsa
    .goto Hillsbrad Foothills,62.11,19.68
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Chê|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
	.target Innkeeper Shay
    .isQuestAvailable 528
    .subzoneskip 272,1
step
	#completewith next
    >>Mate to the Hillsbrad Fields.Saqueie them for their |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    .goto Hillsbrad Foothills,36.02,39.19
    .subzone 286 >>Vá para os Campos de Hillsbrad
    .isOnQuest 528
step
    #completewith Kalaba
    >>Mate |cRXP_ENEMY_Hillsbrad Humans|r. Saqueie-os para obter |cRXP_LOOT_Caveira|r.
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 546,1,17 --Hillsbrad Human Skull (30)
step
    #completewith next
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Espere a encenação, depois mate|r |cRXP_ENEMY_Fido Enraivecido|r
    >>|cRXP_ENEMY_Fido Enraivecido|r |cRXP_WARN_dá uma quantidade de experiência equivalente a uma missão inteira|r
    .turnin 502 >>Entregue Elixir da dor
    .timer 9,Encenação do Fido (FIQUE ATENTO)
    .mob Stanley
step
    .line Hillsbrad Foothills,36.54,39.44,35.36,38.73,33.98,38.78,32.56,40.03,32.58,38.17,32.66,36.08,32.92,35.25,32.66,36.08,32.58,38.17,32.56,40.03,32.65,41.12,32.45,42.58,31.27,42.06,30.53,40.56,31.27,42.06,32.45,42.58,32.41,43.85,32.46,44.59,32.29,45.13
    #loop
    .goto Hillsbrad Foothills,36.54,39.44,0
    .goto Hillsbrad Foothills,36.54,39.44,40,0
    .goto Hillsbrad Foothills,35.36,38.73,40,0
    .goto Hillsbrad Foothills,33.98,38.78,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.58,38.17,40,0
    .goto Hillsbrad Foothills,32.66,36.08,40,0
    .goto Hillsbrad Foothills,32.92,35.25,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    .goto Hillsbrad Foothills,32.65,41.12,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,30.53,40.56,40,0
    .goto Hillsbrad Foothills,31.27,42.06,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.41,43.85,40,0
    .goto Hillsbrad Foothills,32.46,44.59,40,0
    .goto Hillsbrad Foothills,32.29,45.13,40,0
    .goto Hillsbrad Foothills,32.45,42.58,40,0
    .goto Hillsbrad Foothills,32.56,40.03,40,0
    >>Mate o |cRXP_ENEMY_Cidadão Wilkes|r
    >>|cRXP_WARN_Ele patrola ao redor das estradas da cidade|r
	.complete 567,2 --Kill Citizen Wilkes (x1)
    .unitscan Citizen Wilkes
    .unitscan Enraged Stanley
step
	.goto Hillsbrad Foothills,32.67,35.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Stanley|r
    >>|cRXP_WARN_Espere a encenação, depois mate|r |cRXP_ENEMY_Enraivecido Fido|r
    >>|cRXP_ENEMY_Enraivecido Fido|r |cRXP_WARN_dá experiência de uma missão completa|r
    .turnin 502 >>Entregue Elixir da dor
    .timer 9,Encenação de Fido (FIQUE ALERTA)
    .mob Stanley
step
    #completewith next
	>>Mate |cRXP_ENEMY_Hillsbrad Peasants|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #label Kalaba
	.goto Hillsbrad Foothills,36.00,46.50
    >>Mate |cRXP_ENEMY_Farmer Kalaba|r
    .complete 567,4 --Kill Farmer Kalaba (x1)
    .mob Farmer Kalaba
step
    #loop
	.goto Hillsbrad Foothills,36.64,45.21,0
	.goto Hillsbrad Foothills,36.64,45.21,25,0
	.goto Hillsbrad Foothills,36.03,44.40,25,0
	.goto Hillsbrad Foothills,34.36,44.62,25,0
	.goto Hillsbrad Foothills,33.82,45.75,25,0
	.goto Hillsbrad Foothills,33.25,48.54,25,0
	.goto Hillsbrad Foothills,34.59,48.13,25,0
	.goto Hillsbrad Foothills,35.29,47.28,25,0
	.goto Hillsbrad Foothills,36.49,47.49,25,0
	>>Mate |cRXP_ENEMY_Hillsbrad Peasants|r
	.complete 528,1 --Kill Hillsbrad Peasant (x15)
    .mob Hillsbrad Peasant
step
    #loop
	.goto Hillsbrad Foothills,66.52,34.52,0
	.goto Hillsbrad Foothills,40.88,33.87,60,0
	.goto Hillsbrad Foothills,40.86,37.40,60,0
	.goto Hillsbrad Foothills,40.85,39.42,60,0
	.goto Hillsbrad Foothills,38.50,38.04,60,0
	.goto Hillsbrad Foothills,37.68,41.23,60,0
	.goto Hillsbrad Foothills,38.71,42.66,60,0
	.goto Hillsbrad Foothills,40.40,44.65,60,0
	.goto Hillsbrad Foothills,44.39,41.34,60,0
	.goto Hillsbrad Foothills,45.23,39.62,60,0
	.goto Hillsbrad Foothills,43.87,37.01,60,0
	.goto Hillsbrad Foothills,49.75,34.33,60,0
	.goto Hillsbrad Foothills,52.06,36.86,60,0
	.goto Hillsbrad Foothills,51.91,32.97,60,0
	.goto Hillsbrad Foothills,52.39,29.27,60,0
	.goto Hillsbrad Foothills,57.38,22.85,60,0
	.goto Hillsbrad Foothills,57.09,25.67,60,0
	.goto Hillsbrad Foothills,58.08,28.07,60,0
	.goto Hillsbrad Foothills,56.88,28.85,60,0
	.goto Hillsbrad Foothills,59.68,30.90,60,0
	.goto Hillsbrad Foothills,57.71,34.06,60,0
	.goto Hillsbrad Foothills,59.89,36.74,60,0
	.goto Hillsbrad Foothills,62.63,37.64,60,0
	.goto Hillsbrad Foothills,64.73,38.03,60,0
	.goto Hillsbrad Foothills,66.52,34.52,60,0
    >>Finish killing |cRXP_ENEMY_Bears|r.Saqueie them for their |cRXP_LOOT_Tongues|r
	.complete 496,1 --Collect Gray Bear Tongue (x10)
    .mob Gray Bear
    .mob Vicious Gray Bear
step
    #loop
	.goto Hillsbrad Foothills,62.85,38.74,0
	.goto Hillsbrad Foothills,62.85,38.74,60,0
	.goto Hillsbrad Foothills,62.24,39.96,60,0
	.goto Hillsbrad Foothills,60.92,37.92,60,0
	.goto Hillsbrad Foothills,59.62,33.33,60,0
	.goto Hillsbrad Foothills,56.88,29.73,60,0
	.goto Hillsbrad Foothills,59.80,27.72,60,0
	.goto Hillsbrad Foothills,57.63,24.16,60,0
	.goto Hillsbrad Foothills,56.47,16.42,60,0
	.goto Hillsbrad Foothills,59.36,14.55,60,0
	.goto Hillsbrad Foothills,60.54,13.67,60,0
	.goto Hillsbrad Foothills,62.65,12.90,60,0
	.goto Hillsbrad Foothills,64.43,10.22,60,0
	.goto Hillsbrad Foothills,65.18,6.93,60,0
	.goto Hillsbrad Foothills,65.31,5.76,60,0
	.goto Hillsbrad Foothills,66.90,9.02,60,0
	.goto Hillsbrad Foothills,70.39,8.89,60,0
	.goto Hillsbrad Foothills,68.86,10.18,60,0
	.goto Hillsbrad Foothills,67.35,12.95,60,0
	.goto Hillsbrad Foothills,71.38,19.81,60,0
	.goto Hillsbrad Foothills,71.78,21.89,60,0
	.goto Hillsbrad Foothills,64.85,24.92,60,0
	.goto Hillsbrad Foothills,66.68,28.15,60,0
	.goto Hillsbrad Foothills,69.76,31.89,60,0
	.goto Hillsbrad Foothills,67.62,37.65,60,0
	>>Finish killing |cRXP_ENEMY_Forest Moss Creepers|re for their |cRXP_LOOT_Ichor|r
    .complete 496,2 --Collect Creeper Ichor (x1)
    .mob Forest Moss Creeper
    .mob Giant Moss Creeper
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lydon|r e |cRXP_FRIENDLY_Darthalia|r
    .turnin 496 >>Entregue [DEPRECATED] Elixir do Sofrimento
    .accept 499 >>Aceite Elixir de Sofrimento
    .accept 1067 >>Aceite Volte ao Penhasco do Trovão
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 528 >>Entregue [DEPRECATED] Batalha de Hillsbrad
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
    .isQuestComplete 496
step
    #optional
    .goto Hillsbrad Foothills,61.50,19.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Boticário Lindolfo|r
    .accept 499 >>Aceite Elixir de Sofrimento
    .target Apothecary Lydon
    .isQuestTurnedIn 496
step
    .goto Hillsbrad Foothills,61.55,19.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Umpi|r
    .turnin 499 >>Entregue [DEPRECATED] Elixir do Sofrimento
    .target Umpi
    .isQuestTurnedIn 496
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lydon|r e |cRXP_FRIENDLY_Darthalia|r
    .accept 1067 >>Aceite Volte ao Penhasco do Trovão
    .target +Apothecary Lydon
    .goto Hillsbrad Foothills,61.50,19.20
    .turnin 528 >>Entregue [DEPRECATED] Batalha de Hillsbrad
    .target +High Executor Darthalia
    .goto Hillsbrad Foothills,62.20,20.50
step
	.goto Hillsbrad Foothills,62.76,19.05
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Chê|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
	.target Innkeeper Shay
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1800 << Hunter --Sharp Arrow (1800)
    .target Kayren Soothallow
    .itemcount 2515,<1000
    .xp >25,1
    .subzoneskip 272,1
step << Hunter
    .goto Hillsbrad Foothills,62.56,19.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Kayren|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dele|r
    .collect 3030,1800 << Hunter --Razor Arrow (1800)
    .target Kayren Soothallow
    .itemcount 3030,<1000
    .xp <25,1
    .subzoneskip 272,1
step << Shaman/Warrior
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ott|r
    .vendor >>|cRXP_BUY_Compre um|r |T132408:0|t[Machado Impiedoso] |cRXP_BUY_dele se estiver disponível e você não tiver ainda|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Rogue
    .goto Hillsbrad Foothills,60.43,26.18
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ott|r
    .vendor >>|cRXP_BUY_Compre uma|r |T135640:0|t[Faca de Lâmina Larga] |cRXP_BUY_dela se estiver disponível e você ainda não a tem|r
    .money <2.8372
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.7
    .itemcount 12247,<1
    .target Ott
    .subzoneskip 272,1
step << Druid
    #completewith AquaticFormQ
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1822 >>Treine suas magias de classe
    .target Loganaar
    .xp <24,1
    .xp >26,1
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >>Treine suas magias de classe
    .target Loganaar
    .xp <26,1
step << Druid
    .goto Moonglade,36.026,41.374
    >>|cRXP_WARN_Combine os dois pingentes no Altar de Remulos para o|r |cRXP_LOOT_Pendant of the Sea Lion|r
    .collect 15882,1,30,1,1
    .collect 15883,1,30,1,1
    .complete 30,1 --Pendant of the Sea Lion
    .itemcount 15882,1
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .turnin 30 >>Entregue O Julgamento do Leão Marinho
    .accept 31 >>Aceite Aquatic Formação - Missão
    .target Dendrite Starblaze
    .isQuestComplete 30
step << Druid
    #label AquaticFormQ
    #optional
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .accept 31 >>Aceite Aquatic Formação - Missão
    .target Dendrite Starblaze
    .isQuestTurnedIn 30
step
    #label ThunderBluffHS
    .hs >>Vá para Penhasco do Trovão
    .use 6948
    .zoneskip Thunder Bluff
    .bindlocation 1638,1
step
    #optional
    .abandon 1014 >>Abandone Arugal Deve Morrer
    .dungeon SFK
step
    #optional
    .abandon 1098 >>Abandone CEs das Sombras em Presa Negra
    .dungeon SFK

    ]])



RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guia de Sobrevivência (H)
<< Horde
#name 25-27 South Barrens
#version 7
#subgroup Guia de Sobrevivência RXP TBC 1-30
#next 27-29 Vale Gris

step << Shaman/Warrior
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Delgo|r
    .vendor >>|cRXP_BUY_Compre um|r |T132408:0|t[Machado Impiedoso] |cRXP_BUY_dele se estiver disponível e você não tiver ainda|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .target Delgo Totem da Fúria
step << Hunter
    #completewith HunterTraining26
    .goto Thunder Bluff,61.31,78.25,80 >>Vá para a Alta do Caçador
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 14262 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <24,1
    .xp >26,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 3045 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <26,1
step << Hunter
    #label HunterTraining26
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa|r
    .train 24558 >>Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
step << Druid
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>Vá para o Morro dos Anciãos
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .trainer >>Treine suas magias de classe
    .turnin 31 >>Entregue Forma Aquática
    .target Turak Runetotem
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Compre um|r |T135495:0|t[Arco Recurvo Robusto Arco] |cRXP_BUY_dela se estiver disponível|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kina Chifre Troante
    .money <1.9467
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Vá para o Alto do Espírito e entre nas Piscinas da Visão
step
	.goto Thunder Bluff,22.90,21.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 1067 >>Entregue Volte ao Penhasco do Trovão
    .target Apothecary Zamah
    .isOnQuest 1067
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
	.train 3747 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <24,1
    .xp >26,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
	.train 992 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <26,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 8400 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <24,1
    .xp >26,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 120 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <26,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 905 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <24,1
    .xp >26,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 8190 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <26,1
step
    #completewith next
    .skill firstaid,115 >>|cRXP_WARN_Criar|r |T133688:0|t[Wool Bandages] |cRXP_WARN_until your skill is 115 or higher|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pand|r
    .train 3278 >>Aprenda |T133687:0|t[Bandagem Grossa de Lã]
    .target Pand Stonebinder
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >>Aceite A Chama Sagrada
    .target Zangen Stonehoof
step
    #label FlytoCampT2
    #completewith CampTHS2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .zoneskip The Barrens
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .accept 879 >>Aceite Traição de Dentro
    .target Mangletooth
    .isQuestTurnedIn 5052
step
    #completewith CampTHS2
    +|cRXP_WARN_Use seus restantes|r |T134128:0|t[Estilhaços de Sangue] |cRXP_WARN_para obter|r |T136104:0|t[Couro de Navalha] |cRXP_WARN_e outros bônus|r << !Mage !Druid
    +|cRXP_WARN_Use seus restantes|r |T134128:0|t[Estilhaços de Sangue] |cRXP_WARN_para obter bônus|r << Mage/Druid
    >>|cRXP_WARN_Se possível, guarde 10|r |T134128:0|t[Estilhaços de Sangue] |cRXP_WARN_para conseguir utilizar o bônus de velocidade mais tarde no guia|r
    >>|cRXP_WARN_Desative as funções de conclusão automática de addons como Questie ou Leatrix Plus para isso!|r
    .addquestitem 4075,5052
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .accept 6382 >>Aceite A Caçada do Vale Gris
    .target Jorn Skyseer
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ruga Totem da Fúria|r dentro do prédio
	.turnin 1823 >>Entregue Falar com Ruga
    .accept 1824 >>Aceite Julgamento no Campo dos Gigantes
    .target Ruga Ragetotem
step
    #label CampTHS2
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Byula <Antigo Estalajadeiro>|r
    .home >>Defina sua Pedra de Retorno em Camp Taurajo
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 879
step
    #loop
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Encontre e mate |cRXP_ENEMY_Owatanka|r (Lagarto do Trovão Azul) ao redor desta área. Saque-o pelo |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r]. Usar-o para iniciar a missão
    >>|cRXP_WARN_Pule esta missão se você não conseguir encontrá-lo|r
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Aceite Owatanka
    .use 5102
    .unitscan Owatanka
step << Warrior
    #loop
	.goto The Barrens,45.17,69.08,0
	.goto The Barrens,45.17,69.08,50,0
	.goto The Barrens,43.87,68.84,50,0
	.goto The Barrens,42.17,69.65,50,0
	.goto The Barrens,42.35,71.85,50,0
	.goto The Barrens,42.77,72.28,50,0
	.goto The Barrens,43.86,72.06,50,0
	.goto The Barrens,45.38,72.25,50,0
    >>Abata os |cRXP_ENEMY_Silithid Protectors|r, os |cRXP_ENEMY_Silithid Swarmers|r, os |cRXP_ENEMY_Silithid Creepers|r e os |cRXP_ENEMY_Silithid Larvas|r. Saque-os para obter |T133027:0|t[Twitching Antenna]
    >>|cRXP_WARN_NOTE: O |T133027:0|t[Twitching Antenna] tem apenas 15 minutos de duração, não fique ausente ou desconecte durante esta missão|r
    .complete 1824,1 --Twitching Antenna (5)
    .mob Silithid Protector
    .mob Silithid Swarmer
    .mob Silithid Creeper
    .mob Silithid Grub
step << Warrior
    .goto The Barrens,44.67,59.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Ruga Totem da Fúria|r dentro do prédio
    >>|cRXP_WARN_Pule a continuação|r
    .turnin 1824 >>Entregue Julgamento no Campo dos Gigantes
    .target Ruga Ragetotem
step
    #completewith next
    >>Abata o |cRXP_ENEMY_Ceifador Silitídeo|r. Saque-o pelo |T134321:0|t[|cRXP_LOOT_Cabeça do Ceifador|r]. Usar-o para iniciar a missão
    >>|cRXP_WARN_Pule esta missão se você não conseguir encontrá-lo. Este inimigo é muito raro!|r
    .collect 5138,1,897 --Collect Harvester's Head
    .accept 897 >>Aceite O Ceifador
    .use 5138
    .unitscan Silithid Harvester
step
    #label SilithidEggs
    #loop
    .goto The Barrens,42.91,69.86,0
    .goto The Barrens,45.04,69.85,60,0
    .goto The Barrens,42.91,69.86,60,0
    .goto The Barrens,42.97,71.11,60,0
    .goto The Barrens,45.36,72.36,60,0
    .goto The Barrens,47.40,70.11,60,0
    .goto The Barrens,48.40,70.08,60,0
    .goto The Barrens,42.91,69.86,60,0
	>>Saqueie |cRXP_PICK_Silithid Mounds|r for |cRXP_LOOT_Silithid Eggs|r
	.complete 868,1 --Silithid Egg (12)
    .isOnQuest 868
step << Shaman
    #completewith next
    .goto The Barrens,44.76,74.79,45,0
    >>Abata |cRXP_ENEMY_Anhan Guera|r. Saque-o para obter |T135992:0|t[|cRXP_LOOT_Pena de Anhan Guera|r]. Usar-o para iniciar a missão
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Aceite Anhan Guera
    .use 5103
    .unitscan Washte Pawne
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>Viaje para |cRXP_FRIENDLY_Salma|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma|r
    .turnin 1536 >>Entregue Clamor da água
    .accept 1534 >>Aceite Chamado da Água
    .target Brine
step
    #completewith Backstabber
    >>Abata |cRXP_ENEMY_Anhan Guera|r. Saque-o para obter |T135992:0|t[|cRXP_LOOT_Pena de Anhan Guera|r]. Usar-o para iniciar a missão
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Aceite Anhan Guera
    .use 5103
    .unitscan Washte Pawne
step
    #label Gann1
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrula para o norte e para o sul na estrada|r
    .accept 843 >>Aceite Reivindicação de Gann
    .target Gann Stonespire
    .maxlevel 27
step
    #completewith Lok
    >>Abata os |cRXP_ENEMY_Razormane Stalkers|r e os |cRXP_ENEMY_Razormane Desbravadores|r. Saque-os para obter |T135640:0|t[|cRXP_LOOT_Punhal Crinavalha|r]
    >>Mate for a |T135139:0|t[|cRXP_LOOT_Charred Razormane Wand|r]
    >>Mate for a |T134955:0|t[|cRXP_LOOT_Razormane War Shield|r]
    >>|cRXP_WARN_Os |cRXP_ENEMY_Razormane Stalkers|r estão ocultos|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber
    .mob +Razormane Stalker
    .mob +Razormane Pathfinder
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob +Razormane Seer
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob +Razormane Warfrenzy
step
	.line The Barrens,44.37,79.85,44.83,79.87,45.05,79.75,45.12,79.20,44.89,78.87,44.43,78.71,43.80,79.46,43.66,79.12,43.48,78.95,43.07,78.98,42.65,79.87,42.82,80.23,43.24,80.49,43.49,80.48,43.63,80.97,43.79,81.40,44.15,81.44,44.83,80.95,45.46,80.91,45.52,80.47,45.10,80.30,44.66,80.49,44.31,80.79,44.16,80.46,44.03,80.38,43.91,80.46,44.06,80.02,44.37,79.85
    #loop
    .goto The Barrens,44.06,80.02,45,0
    .goto The Barrens,43.91,80.46,45,0
    .goto The Barrens,44.03,80.38,45,0
    .goto The Barrens,44.16,80.46,45,0
    .goto The Barrens,44.31,80.79,45,0
    .goto The Barrens,44.66,80.49,45,0
    .goto The Barrens,45.10,80.30,45,0
    .goto The Barrens,45.52,80.47,45,0
    .goto The Barrens,45.46,80.91,45,0
    .goto The Barrens,44.83,80.95,45,0
    .goto The Barrens,44.15,81.44,45,0
    .goto The Barrens,43.79,81.40,45,0
    .goto The Barrens,43.63,80.97,45,0
    .goto The Barrens,43.49,80.48,45,0
    .goto The Barrens,43.24,80.49,45,0
    .goto The Barrens,42.82,80.23,45,0
    .goto The Barrens,42.65,79.87,45,0
    .goto The Barrens,43.07,78.98,45,0
    .goto The Barrens,43.48,78.95,45,0
    .goto The Barrens,43.66,79.12,45,0
    .goto The Barrens,43.80,79.46,45,0
    .goto The Barrens,44.43,78.71,45,0
    .goto The Barrens,44.89,78.87,45,0
    .goto The Barrens,45.12,79.20,45,0
    .goto The Barrens,45.05,79.75,45,0
    .goto The Barrens,44.83,79.87,45,0
    .goto The Barrens,44.83,79.87,0
    >>Mate |cRXP_ENEMY_Kuz|r. Saqueie-o para obter |cRXP_LOOT_Kuz's Skull|r
    >>|cRXP_ENEMY_Kâz|r |cRXP_WARN_patrula levemente ao redor|r
    .complete 879,1 --Kuz's Skull (1)
    .unitscan Kuz
    .isOnQuest 879
step
    #label Lok
    .goto The Barrens,40.31,80.70,20,0
    .goto The Barrens,40.14,80.56
    >>Mate |cRXP_ENEMY_Lok Orcbane|r. Saqueie-o para obter |cRXP_LOOT_Lok's Skull|r
    .complete 879,3 --Lok's Skull (1)
    .mob Lok Orcbane
    .isOnQuest 879
step
    #completewith next
    >>Abata os |cRXP_ENEMY_Razormane Stalkers|r e os |cRXP_ENEMY_Razormane Desbravadores|r. Saque-os para obter um |T135640:0|t[|cRXP_LOOT_Punhal Crinavalha|r]
    >>|cRXP_WARN_Os |cRXP_ENEMY_Razormane Stalkers|r estão ocultos|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #label WandShield
    #loop
	.goto The Barrens,42.57,78.81,50,0
	.goto The Barrens,42.12,78.48,50,0
	.goto The Barrens,41.49,78.69,50,0
	.goto The Barrens,41.22,79.72,50,0
	.goto The Barrens,40.91,80.60,50,0
	.goto The Barrens,40.55,80.84,50,0
	.goto The Barrens,41.62,80.92,50,0
	.goto The Barrens,41.54,82.28,50,0
	.goto The Barrens,42.48,82.28,50,0
	.goto The Barrens,42.57,78.81,50,0
    >>Mate for a |T135139:0|t[|cRXP_LOOT_Charred Razormane Wand|r]
    >>Mate for a |T134955:0|t[|cRXP_LOOT_Razormane War Shield|r]
    .collect 5092,1,893,1 --Charred Razormane Wand
    .mob +Razormane Seer
    .collect 5094,1,893,1 --Collect Razormane War Shield
    .mob +Razormane Warfrenzy
step
    .goto The Barrens,43.87,83.43
    >>Mate |cRXP_ENEMY_Nak|r. Saqueie-o para obter |cRXP_LOOT_Nak's Skull|r
    .complete 879,2 --Nak's Skull (1)
    .mob Nak
    .isOnQuest 879
step
    #label Backstabber
    #loop
    .goto The Barrens,45.48,79.89,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    .goto The Barrens,44.09,83.70,15,0
    .goto The Barrens,44.15,83.34,15,0
    .goto The Barrens,44.38,83.05,15,0
    .goto The Barrens,44.22,82.67,15,0
    .goto The Barrens,44.10,82.38,15,0
    .goto The Barrens,43.85,82.25,15,0
    .goto The Barrens,43.76,80.84,40,0
    .goto The Barrens,44.14,80.03,40,0
    .goto The Barrens,44.17,81.02,40,0
    .goto The Barrens,44.66,81.18,40,0
    .goto The Barrens,45.08,80.34,40,0
    .goto The Barrens,45.48,79.89,40,0
    >>Abata os |cRXP_ENEMY_Razormane Stalkers|r e os |cRXP_ENEMY_Razormane Desbravadores|r. Saque-os para obter um |T135640:0|t[|cRXP_LOOT_Punhal Crinavalha|r]
    >>|cRXP_WARN_Os |cRXP_ENEMY_Razormane Stalkers|r estão ocultos|r
    .collect 5093,1,893,1 --Collect Razormane Backstabber (x1)
    .mob Razormane Stalker
    .mob Razormane Pathfinder
step
    #completewith next
    >>Mate |cRXP_ENEMY_Bael'dun Excavators|r e |cRXP_ENEMY_Bael'dun Foremen|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
    #loop
	.goto The Barrens,48.34,86.19,0
    .goto The Barrens,47.51,85.04,15,0
	.goto The Barrens,47.44,85.71,15,0
	.goto The Barrens,47.94,85.68,15,0
	.goto The Barrens,48.34,86.19,15,0
	>>Mate |cRXP_ENEMY_Prospector Khazgorm|r. Saqueie-o para obter |cRXP_LOOT_Khazgorm's Journal|r
	.complete 843,3 --Collect Khazgorm's Journal (x1)
    .mob Prospector Khazgorm
    .isOnQuest 843
step
    #loop
    .goto The Barrens,47.22,84.98,0
    .goto The Barrens,47.22,84.98,40,0
    .goto The Barrens,47.28,85.74,40,0
    .goto The Barrens,47.60,85.66,40,0
    .goto The Barrens,48.43,86.34,40,0
    .goto The Barrens,48.03,85.46,40,0
    .goto The Barrens,47.94,84.86,40,0
    .goto The Barrens,47.37,84.01,40,0
    .goto The Barrens,46.92,84.22,40,0
    .goto The Barrens,46.99,85.82,40,0
    >>Mate |cRXP_ENEMY_Bael'dun Excavators|r e |cRXP_ENEMY_Bael'dun Foremen|r
    .complete 843,1 --Kill Bael'dun Excavator (x15)
    .mob +Bael'dun Excavator
    .complete 843,2 --Kill Bael'dun Foreman (x5)
    .mob +Bael'dun Foreman
    .isOnQuest 843
step
    #completewith BaelModan
    .goto The Barrens,47.21,79.35,45,0
    .goto The Barrens,47.22,79.72,45,0
    >>Abata |cRXP_ENEMY_Anhan Guera|r. Saque-o para obter |T135992:0|t[|cRXP_LOOT_Pena de Anhan Guera|r]. Usar-o para iniciar a missão
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Aceite Anhan Guera
    .use 5103
    .unitscan Washte Pawne
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrulha norte e sul na estrada|r
    .turnin 843 >>Entregue Reivindicação de Gann
    .accept 846 >>Aceite Revanche de Gann
    .target Gann Stonespire
    .isQuestComplete 843
step
    #optional
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrulha norte e sul na estrada|r
    .accept 846 >>Aceite Revanche de Gann
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label BaelModan
    .goto The Barrens,48.63,84.49,110 >>Viaje para Bael Modan
    .isOnQuest 846
step
    #loop
    .goto The Barrens,48.96,84.36,0
    .goto The Barrens,48.96,84.36,30,0
    .goto The Barrens,48.88,84.02,30,0
    .goto The Barrens,49.28,83.76,30,0
    .goto The Barrens,49.22,84.21,30,0
    .goto The Barrens,49.47,84.41,30,0
    .goto The Barrens,49.09,84.67,30,0
    >>Mate |cRXP_ENEMY_Bael'dun Dwarves|r. Saqueie-os para obter |cRXP_LOOT_Nitroglycerin|r, |cRXP_LOOT_Wood Pulp|r, and |cRXP_LOOT_Sodium Nitrate|r
    >>|cRXP_WARN_Cuidado!|r |cRXP_ENEMY_Oficiais Bael'dun|r |cRXP_WARN_têm 50% de chance aumentada de aparar por 8 segundos após fazer sua animação de postura defensiva|r << Rogue/Warrior/Druid/Shaman
    .complete 846,1 --Collect Nitroglycerin (x6)
    .complete 846,2 --Collect Wood Pulp (x6)
    .complete 846,3 --Collect Sodium Nitrate (x6)
    .mob Bael'dun Rifleman
    .mob Bael'dun Soldier
    .mob Bael'dun Officer
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrulha norte e sul na estrada|r
    .turnin 846 >>Entregue Revanche de Gann
    .accept 849 >>Aceite Revanche de Gann
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    .goto The Barrens,46.97,85.63
    >>Clique no platform
    >>|cRXP_WARN_Tem um alcance de 50 jardas|r
    .complete 849,1 --Collect Bael Modan Flying Machine destroyed (x1)
    .isQuestTurnedIn 843
step
    #loop
    .line The Barrens,46.12,81.25,46.09,80.54,46.16,79.66,46.14,79.37,46.07,79.19,45.86,78.77,45.79,78.47,45.83,77.21,45.91,76.97,46.02,76.71,46.08,76.33,46.14,75.40
    .goto The Barrens,46.14,75.40,40,0
    .goto The Barrens,46.08,76.33,40,0
    .goto The Barrens,46.02,76.71,40,0
    .goto The Barrens,45.91,76.97,40,0
    .goto The Barrens,45.83,77.21,40,0
    .goto The Barrens,45.79,78.47,40,0
    .goto The Barrens,45.86,78.77,40,0
    .goto The Barrens,46.07,79,19,40,0
    .goto The Barrens,46.14,79.37,40,0
    .goto The Barrens,46.16,79.66,40,0
    .goto The Barrens,46.09,80.54,40,0
    .goto The Barrens,46.12,81.25,40,0
    .goto The Barrens,46.14,75.40,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gann|r
    >>|cRXP_FRIENDLY_Gann|r |cRXP_WARN_patrulha norte e sul na estrada|r
    .turnin 849 >>Entregue Revanche de Gann
    .target Gann Stonespire
    .isQuestTurnedIn 843
step
    #label WashtethePawne
    #loop
	.goto The Barrens,44.85,78.81,0
	.goto The Barrens,44.85,78.81,60,0
	.goto The Barrens,44.44,78.97,60,0
	.goto The Barrens,43.14,80.75,60,0
	.goto The Barrens,43.35,81.16,60,0
	.goto The Barrens,47.22,79.72,60,0
	.goto The Barrens,47.21,79.35,60,0
	.goto The Barrens,44.76,74.79,60,0
    >>Mate |cRXP_ENEMY_Anhan Guera|r. Saque-o para obter |T135992:0|t[|cRXP_LOOT_Pena de Anhan Guera|r]. Usar-o para iniciar a missão
    >>|cRXP_WARN_Ele tem 4 locais de aparecimento diferentes, pule este passo se você não conseguir encontrá-lo|r
    .collect 5103,1,885 --Collect Washte Pawne's Feather
    .accept 885 >>Aceite Anhan Guera
    .use 5103
    .unitscan Washte Pawne
step
    #completewith WeaponsofChoiceTurnin
    .hs >>Use sua Pedra de Retorno para ir a Camp Taurajo
    .bindlocation 378,1
    .subzoneskip 378
    .use 6948
    .cooldown item,6948,>0
step
    #completewith next
    .subzone 378 >>Vá de volta para Camp Taurajo
    >>|cRXP_WARN_Você também pode farmar até que sua|r |T134414:0|t[Pedra de Regresso] |cRXP_WARN_esteja de volta|r
    .cooldown item,6948,<0
step
    #label WeaponsofChoiceTurnin
    .goto The Barrens,45.10,57.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tatternack|r
    .accept 893 >>Aceite Armas da Escolha
    .turnin 893 >>Entregue Armas da Escolha
    .target Tatternack Steelforge
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .accept 884 >>Aceite Owatanka
    .turnin 884 >>Entregue Owatanka
    .itemcount 5102,1
    .target Jorn Skyseer
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .accept 885 >>Aceite Anhan Guera
    .turnin 885 >>Entregue Anhan Guera
    .target Jorn Skyseer
    .itemcount 5103,1
step
    .goto The Barrens,44.86,59.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .accept 897 >>Aceite The Harvester
    .turnin 897 >>Entregue The Harvester
    .itemcount 5138,1
    .target Jorn Skyseer
step
    #optional
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .accept 874 >>Aceite Mahren Vidente do Céu
    .target Jorn Skyseer
    .isQuestTurnedIn 913
step
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 879 >>Entregue Traição de Dentro
    .accept 906 >>Aceite Traição de Dentro
    .target Mangletooth
    .isOnQuest 879
step
    #optional
    .goto The Barrens,44.54,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .accept 906 >>Aceite Traição de Dentro
    .target Mangletooth
    .isQuestTurnedIn 879
step
    #completewith XroadsEnd
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Omusa Thunderhorn
    .subzoneskip 380
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 906 >>Entregue Traição de Dentro
    .target Thork
    .isOnQuest 906
step
    .goto The Barrens,51.07,29.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Korran|r
    .turnin 868 >>Entregue Caça aos Ovos
    .target Korran
    .isOnQuest 868
step
    #completewith IshaAwak
    #optional
    .destroy 5058 >>|cRXP_WARN_Destroy any extra|r . Faça isso até que sua[Silithid Eggs]|cRXP_WARN_you still have|r
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 1096
step << Rogue
    .goto The Barrens,51.39,30.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hula'mahi|r
    .vendor >>|cRXP_BUY_Abastecça-se com|r |T134387:0|t[Pó de Clarão] |cRXP_BUY_e suprimentos de|r |T132273:0|t[Veneno Instantâneo]
    .target Hula'mahi
    .subzoneskip 380,1
step
    #label XroadsEnd --hidden step for #completewith
step << Hunter
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Hunter
    .goto Orgrimmar,48.12,80.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Trak'gen|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dele|r
    .collect 3030,1800,874,1 << Hunter --Razor Arrow (1800)
    .target Trak'gend
    --VV Add hunter training
step << Hunter
    #completewith IshaAwak
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Doras
    .subzoneskip 392
step << !Hunter
    #completewith IshaAwak
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Devrak
    .subzoneskip 392
step
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahren|r
    .turnin 874 >>Entregue para Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target Mahren Skyseer
    .isQuestTurnedIn 913
step
    #loop
    .goto The Barrens,65.67,46.63,0
    .goto The Barrens,64.74,50.35,0
    .goto The Barrens,63.60,53.54,0
    .goto The Barrens,65.77,45.28,50,0
    .goto The Barrens,65.67,46.63,50,0
    .goto The Barrens,64.74,50.35,50,0
    .goto The Barrens,63.60,53.54,50,0
    >>Mate for the |cRXP_LOOT_Heart of Isha Awak|r
    >>|cRXP_WARN_Ele tem quatro locais de aparecimento diferentes ao longo da costa|r
    .complete 873,1 --Heart of Isha Awak
    .unitscan Isha Awak
    .isQuestTurnedIn 913
step
    #label IshaAwak
    .goto The Barrens,65.84,43.86
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mahren|r
    .turnin 873 >>Entregue Isha Awak
    .target Mahren Skyseer
    .isQuestTurnedIn 913
step << !Mage
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    .isQuestTurnedIn 873
step << !Mage
    #optional
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .isQuestAvailable 873
step << Mage
    .cast 3567 >>|cRXP_WARN_Lance|r |T135759:0|t[Teleporte: Orgrimmar]
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 120 >>Treine suas magias de classe
    .target Pephredo
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 759 >>Treine suas magias de classe
    .target Pephredo
    .xp <28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 8687 >>Treine suas magias de classe
    .target Ormok
    .xp <26,1
    .xp >28,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 1833 >>Treine suas magias de classe
    >>|T132273:0|t[Veneno Instantâneo Nível 2] |cRXP_WARN_requer 120 de perícia em Venenos!|r
    .target Ormok
    .xp <28,1
step << Rogue
    .goto Orgrimmar,48.12,80.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Trak'gen|r|cRXP_BUY_. Compre |r |T135423:0|t[Machado de Arremesso Mortal] |cRXP_BUY_dele|r
    .collect 25875,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8190 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8053 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <28,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 6178 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 7887 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <28,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1456 >>Treine suas magias de classe
    .target Mirket
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 6217 >>Treine suas magias de classe
    .target Mirket
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Compre qualquer melhoria de mascote que possa pagar
	.target Kurgul
    --VV Warlock Grimoire steps
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135466:0|t[Varinha Pestilenta] |cRXP_BUY_dela|r
    .collect 5347,1,6544,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 3045 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14319 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <28,1
step << Hunter
    .goto Orgrimmar,78.11,38.46
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Jin'sora|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dele|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Jin'sora
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 992 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8104 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <28,1
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nogg|r
    .accept 2841 >>Aceite Rig Wars
    .target Nogg
    .dungeon GNOMER
step
    .goto Orgrimmar,75.50,25.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sovik|r
    >>|cRXP_WARN_Siga seu diálogo para aceitar esta missão|r
    .accept 2842 >>Aceite Engenheiro-chefe Scooty
    .target Sovik
    .dungeon GNOMER

    ]])


RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guia de Sobrevivência (H)
<< Horde
#name 27-29 Vale Cinzento
#version 7
#subgroup Guia de Sobrevivência RXP TBC 1-30
#next 29-31 Mil Agulhas


step
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Compre as|r |T134332:0|t[Retalhador Operating Manual Pages] |cRXP_BUY_na Casa de Leilões se estiverem disponíveis|r --Shredder Operating Manual Page 1-12
	.target Auctioneer Thathung
	.collect 16645,1,6504,1 -- Page 1
    .collect 16646,1,6504,1 -- Page 2
    .collect 16647,1,6504,1 -- Page 3
    .collect 16648,1,6504,1 -- Page 4
    .collect 16649,1,6504,1 -- Page 5
    .collect 16650,1,6504,1 -- Page 6
    .collect 16651,1,6504,1 -- Page 7
    .collect 16652,1,6504,1 -- Page 8
    .collect 16653,1,6504,1 -- Page 9
    .collect 16654,1,6504,1 -- Page 10
    .collect 16655,1,6504,1 -- Page 11
    .collect 16656,1,6504,1 -- Page 12
step
    #completewith next
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .zone The Barrens >>Saia de Orgrimmar pela saída oeste
    .zoneskip The Barrens
step
    #completewith next
    .goto Kalimdor,56.80,45.45,15,0
    .goto Ashenvale,94.54,76.15,40,0
    .goto Ashenvale,93.49,73.76,40,0
    .goto Ashenvale,92.47,71.18,40,0
    .goto Ashenvale,91.85,68.71,40,0
    .goto Ashenvale,91.39,65.86,25 >>Viaje ao norte ao longo do rio até Vale Cinzento
step
    .goto Ashenvale,89.87,68.07,40,0
    .goto Ashenvale,86.89,68.65,40,0
    .goto Ashenvale,79.89,68.38,40,0
    .goto Ashenvale,73.52,63.50,30 >>Viaje até Splintertree Post
    >>|cRXP_WARN_Você pode encontrar alguns inimigos de nível 29-30, evite-os se possível|r
    .subzoneskip 431
    .isQuestAvailable 6503
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senani|r
    .turnin 6382 >>Entregue A Caçada do Vale Gris
    .target Senani Thunderheart
    .isOnQuest 6382 --Camp T pickup
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senani|r
    .turnin 742 >>Entregue A Caçada do Vale Gris
    .target Senani Thunderheart
    .isOnQuest 742 --TB pickup
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senani|r
    .turnin 235 >>Entregue A Caçada do Vale Gris
    .target Senani Thunderheart
    .isOnQuest 235 --Org Pickup
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senani|r
    .turnin 6383 >>Entregue A Caçada do Vale Gris
    .target Senani Thunderheart
step
    .goto Ashenvale,74.00,60.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Innkeeper Kaylisk|r
    .home >>Defina sua Pedra de Regresso em Posto Machadada
    .target Innkeeper Kaylisk
    .bindlocation 431
    .subzoneskip 431,1
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mastok|r
    .accept 25 >>Aceite Impasse de Picopedra
    .target Mastok Wrilehiss
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pixel|r
    .accept 6441 >>Aceite Chifres de Sátiro
    .target Pixel
    .maxlevel 28
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fp Splintertree Post >>Aprenda a rota de voo para Posto Machadada
    .target Vhulgra
    .subzoneskip 431,1
step
    #label Splintertree1
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kuray'bin|r e |cRXP_FRIENDLY_Sunsworn|r << BloodElf
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kuray'bin|r << !BloodElf
    .accept 6503 >>Aceite Vanguardeiros do Vale Cinzento
    .target +Kuray'bin
    .goto Ashenvale,71.10,68.12
    .turnin 9428 >>Entregue Relatório em Posto Machadada << BloodElf
    .target +Advisor Sunsworn << BloodElf
    .goto Ashenvale,71.33,67.69 << BloodElf
    .isOnQuest 9428 << BloodElf
step << Hunter
    #completewith ClawBiteAshenvale1
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Quoiju|r
    .stable >>Stable your pet.You will tame an |cRXP_ENEMY_Elder Ashenvale Bear|re a |cRXP_ENEMY_Ghostpaw Alpha|rshortly
    .target Qeeju
step << Hunter
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_lançou|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>|cRXP_WARN_lançou|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ghostpaw Alpha|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale1
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_lançou|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
    .xp >27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Quoiju|r
    .stable >>Abandon the |cRXP_ENEMY_Elder Ashenvale Bear|ror |cRXP_ENEMY_Ghostpaw Alpha|re retrieve your regular pet
    .target Qeeju
    .zoneskip Ashenvale,1
    .train 16830,3
step << BloodElf
    #optional
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kuray'bin|r
    .accept 6503 >>Aceite Vanguardeiros do Vale Cinzento
    .target Kuray'bin
step
    #ah
    #completewith Outrunners
    .goto Ashenvale,70.01,71.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gurda|r
    >>|cRXP_WARN_Pule este passo se você não tem (todas as) páginas|r
    .accept 6504 >>Aceite As Páginas Perdidas
    .turnin 6504 >>Entregue As Páginas Perdidas
    .target Gurda Ragescar
step
    #completewith Outrunners
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Mate |cRXP_ENEMY_Garraguda|r. Saqueie a |T136063:0|t[|cRXP_LOOT_Garra de Garraguda|r] e use-a para iniciar a missão
    >>|cRXP_WARN_Tenha cuidado!|r |cRXP_ENEMY_Garraguda|r |cRXP_WARN_é nível 31 e patrula pela área. Você pode atraí-lo de volta para Posto Machadada ou Forsaken Camp se estiver lutando para matá-lo. Se você fizer isso, certifique-se de causar 50%+ de dano para receber crédito. Você também pode fazer esta missão depois|r
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>Aceite Garra de Garraguda
    .unitscan Sharptalon
    .use 16305
step << Hunter
    #completewith next
    .cast 19885 >>|cRXP_WARN_lançou|r |T132320:0|t[Track Hidden] |cRXP_WARN_to find the |cRXP_ENEMY_Ashenvale Outrunners|r more easily|r
    .train 19885,3
step
    #label Outrunners
    #loop
    .goto Ashenvale,76.15,67.60,0
    .goto Ashenvale,76.15,67.60,15,0
    .goto Ashenvale,76.03,69.02,15,0
    .goto Ashenvale,76.25,70.62,15,0
    .goto Ashenvale,75.76,71.61,15,0
    .goto Ashenvale,75.57,70.33,15,0
    .goto Ashenvale,75.20,70.62,15,0
    .goto Ashenvale,74.37,69.31,15,0
    .goto Ashenvale,73.61,70.91,15,0
    .goto Ashenvale,72.96,70.34,15,0
    .goto Ashenvale,72.66,69.46,15,0
    .goto Ashenvale,72.09,70.17,15,0
    .goto Ashenvale,71.07,72.60,15,0
    .goto Ashenvale,71.92,73.64,15,0
    .goto Ashenvale,72.53,72.58,15,0
    .goto Ashenvale,72.32,74.64,15,0
    .goto Ashenvale,73.36,74.43,15,0
    .goto Ashenvale,73.85,75.03,15,0
    >>Mate |cRXP_ENEMY_Ashenvale Outrunners|r
    >>|cRXP_WARN_Eles estão furtivos|r
    .complete 6503,1 --Kill Ashenvale Outrunner (x9)
    .mob Ashenvale Outrunner
step
    .goto Ashenvale,68.34,75.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torek|r para iniciar a escolta
    >>|cRXP_FRIENDLY_Torek|r |cRXP_WARN_tem um tempo de reaparecimento de 5 minutos|r
    .accept 6544 >>Aceite Junte-se aos bons
    .target Torek
step
    .goto Ashenvale,66.08,74.50,60,0
    .goto Ashenvale,65.07,75.36,20,0
    .goto Ashenvale,64.28,75.33,10,0
    .goto Ashenvale,64.81,75.34
    >>Siga |cRXP_FRIENDLY_Torek|r
    >>Deixe |cRXP_FRIENDLY_Torek|r e seus |cRXP_FRIENDLY_Splintertree Raiders|r tanquearem os |cRXP_ENEMY_Silverwing Warriors|r e os |cRXP_ENEMY_Silverwing Sentinels|r
    >>|cRXP_WARN_Quando limpar o prédio, corra para o Balcão. Quando |cRXP_ENEMY_Duriel Flameluna|r chegar, deixe |cRXP_FRIENDLY_Torek|r e seus |cRXP_FRIENDLY_Splintertree Raiders|r puxarem a agressão antes de causar dano|r
    .complete 6544,1 --Take Silverwing Outpost
    .mob Silverwing Warrior
    .mob Silverwing Sentinel
    .unitscan Duriel Moonfire
step
    .goto Ashenvale,59.73,62.81,80,0
    .goto Ashenvale,62.99,44.16,50 >>Viaje para a entrada ocidental de Noite Correr
    >>|cRXP_WARN_Tenha cuidado! Um nível 35|r |cRXP_ENEMY_Protetor Errante|r |cRXP_WARN_(PvP Élite) pode patrular a área!|r
    .unitscan Wandering Protector
    .subzoneskip 428
    .isOnQuest 6441
step
    #completewith next
    .goto Ashenvale,64.88,43.81,50,0
    .goto Ashenvale,67.04,50.73,80 >>Viaje até Night Run
    .subzoneskip 428
step
    #loop
	.goto Ashenvale,67.85,51.34,0
	.goto Ashenvale,66.78,51.71,50,0
	.goto Ashenvale,66.19,53.44,50,0
	.goto Ashenvale,66.17,54.40,50,0
	.goto Ashenvale,66.22,55.27,50,0
	.goto Ashenvale,66.20,56.37,50,0
	.goto Ashenvale,66.77,57.14,50,0
	.goto Ashenvale,67.11,56.39,50,0
	.goto Ashenvale,67.35,55.53,50,0
	.goto Ashenvale,67.92,54.42,50,0
	.goto Ashenvale,68.92,53.44,50,0
	.goto Ashenvale,68.63,52.69,50,0
	.goto Ashenvale,67.85,51.34,50,0
    >>Mate |cRXP_ENEMY_Felmusk Shadowstalkers|r, |cRXP_ENEMY_Felmusk Satyrs|r, and |cRXP_ENEMY_Felmusk Felsworns|r. Saqueie-os para obter |cRXP_LOOT_Satyr Horns|r
    >>|cRXP_WARN_Tenha cuidado! Todos os Felmusk lançam|r |T136119:0|t[Fedor Subjugador]|cRXP_WARN_, um silenciamento instantâneo de 6 segundos|r << Mage/Warlock/Priest/Druid/Shaman
    .complete 6441,1 --Collect Satyr Horns (x16)
    .mob Felmusk Shadowstalker
    .mob Felmusk Felsworn
    .mob Felmusk Satyr
    .isOnQuest 6441
step
    #completewith Shadumbra
    .subzone 426 >>Viaje para o oeste em direção a Refúgio Bosquepinho
    .isOnQuest 1195
step
    #completewith next
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    >>Mate |cRXP_ENEMY_Shadumbra|r. Saqueie a |T132225:0|t[|cRXP_LOOT_Cabeça de Shadumbra|r] e use-a para iniciar a missão
    >>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrula levemente|r
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>Aceite Cabeça de Shadumbra
	.unitscan Shadu
step
    #loop
    .goto Ashenvale,58.08,56.06,0
    .goto Ashenvale,58.08,56.06,40,0
    .goto Ashenvale,58.69,55.18,40,0
    .goto Ashenvale,59.27,54.47,40,0
    .goto Ashenvale,59.83,53.26,40,0
    .goto Ashenvale,60.40,52.83,40,0
    .goto Ashenvale,61.03,51.96,40,0
    .goto Ashenvale,60.99,49.19,40,0
    .goto Ashenvale,62.51,50.16,40,0
    >>Mate for an |T134776:0|t[|cRXP_LOOT_Etched Phial|r]
    .collect 5867,1,1195,1 --Etched Phial (1)
    .mob Laughing Sister
    .isOnQuest 1195
step
    #label Shadumbra
    #loop
    .line Ashenvale,62.39,49.80,61.99,49.81,61.30,50.03,61.03,50.43,61.01,51.09,60.94,51.53,60.49,52.41,59.83,53.40,59.55,53.71,59.26,54.25,59.10,54.76,58.80,55.24,58.17,55.57,57.91,55.90,57.54,56.03,56.93,56.06,56.37,55.90,56.16,55.46,55.62,55.41,54.80,55.09,54.06,54.91,53.01,54.54,52.68,54.42,52.24,54.38
    .goto Ashenvale,60.94,51.53,0
    .goto Ashenvale,60.94,51.53,40,0
    .goto Ashenvale,60.49,52.41,40,0
    .goto Ashenvale,59.83,53.40,40,0
    .goto Ashenvale,59.55,53.71,40,0
    .goto Ashenvale,59.26,54.25,40,0
    .goto Ashenvale,59.10,54.76,40,0
    .goto Ashenvale,58.80,55.24,40,0
    .goto Ashenvale,58.17,55.57,40,0
    .goto Ashenvale,57.91,55.90,40,0
    .goto Ashenvale,57.54,56.03,40,0
    .goto Ashenvale,56.93,56.06,40,0
    .goto Ashenvale,56.37,55.90,40,0
    .goto Ashenvale,56.16,55.46,40,0
    .goto Ashenvale,55.62,55.41,40,0
    .goto Ashenvale,54.80,55.09,40,0
    .goto Ashenvale,54.06,54.91,40,0
    .goto Ashenvale,53.01,54.54,40,0
    .goto Ashenvale,52.68,54.42,40,0
    .goto Ashenvale,52.24,54.38,40,0
    .goto Ashenvale,62.39,49.80,40,0
    >>Mate |cRXP_ENEMY_Shadumbra|r. Saqueie a |T132225:0|t[|cRXP_LOOT_Cabeça de Shadumbra|r] e use-a para iniciar a missão
    >>|cRXP_ENEMY_Shadumbra|r |cRXP_WARN_patrula levemente|r
    .collect 16304,1,24 --Collect Shadumbra's Head
	.accept 24 >>Aceite Cabeça de Shadumbra
	.unitscan Shadumbra
    .use 16304
step
   .goto Ashenvale,36.81,33.48,200 >>Viaje até Thistlefur Village
   >>|cRXP_WARN_Certifique-se de evitar os guardas de Astranaar no caminho|r
   .subzoneskip 2301
   .isOnQuest 216
step
    #completewith next
    >>Mate route to the cave
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger
step
    #label EntertheHold
    .goto Ashenvale,38.67,30.62,40 >>Entre na casa de Thistlefur Hold
    .isOnQuest 6462
step
    #loop
    .goto Ashenvale,40.39,33.22,0
    .goto Ashenvale,40.39,33.22,20,0
    .goto Ashenvale,40.77,32.81,20,0
    .goto Ashenvale,41.36,32.19,20,0
    .goto Ashenvale,41.75,32.94,20,0
    .goto Ashenvale,41.77,33.68,20,0
    .goto Ashenvale,42.37,33.61,20,0
    .goto Ashenvale,42.82,34.11,20,0
    .goto Ashenvale,41.73,34.47,20,0
    .goto Ashenvale,41.66,35.70,20,0
	>>Saqueie ground for |cRXP_LOOT_Troll Charms|r
	.complete 6462,1 --Collect Troll Charm (x8)
step
    .goto Ashenvale,41.49,34.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ruul|r no fundo da caverna. Isso iniciará uma escolta
    .accept 6482 >>Aceite Liberdade para Ruul!
    .target Ruul Snowhoof
step
    .goto Ashenvale,38.73,36.86,0
    .goto Ashenvale,40.68,33.21,20,0
    .goto Ashenvale,40.29,32.25,20,0
    .goto Ashenvale,39.41,31.00,20,0
    .goto Ashenvale,38.28,30.68,20,0
    .goto Ashenvale,37.39,32.74,30,0
    .goto Ashenvale,37.30,34.49,30,0
    .goto Ashenvale,38.73,36.86
    >>Escorte |cRXP_FRIENDLY_Ruul|r para fora de Thistlefur Village
    >>|cRXP_WARN_Tenha cuidado! 3|r |cRXP_ENEMY_Thistlefurs|r |cRXP_WARN_aparecerão assim que você chegar no meio da caverna e outros 3 fora do portão de Thistlefur Village|r
    .complete 6482,1 --Escort Ruul from the Thistlefurs
    .target Ruul Snowhoof
step
    #loop
    .goto Ashenvale,35.75,32.01,0
    .goto Ashenvale,37.91,34.49,40,0
    .goto Ashenvale,35.89,36.65,40,0
    .goto Ashenvale,35.75,32.01,40,0
    .goto Ashenvale,34.09,38.48,40,0
    .goto Ashenvale,31.86,39.25,40,0
    .goto Ashenvale,32.57,42.78,40,0
    .goto Ashenvale,30.98,44.40,40,0
    >>Finish killing |cRXP_ENEMY_Thistlefur Shamans|re 
    .complete 216,2 --Kill Thistlefur Shaman (x8)
    .mob +Thistlefur Shaman
	.complete 216,1 --Kill Thistlefur Avenger (x8)
    .mob +Thistlefur Avenger
step << Shaman
    .goto Ashenvale,33.55,67.47
    >>|cRXP_WARN_Use o|r |T132821:0|t[Vazio de cor Azul Odre] |cRXP_WARN_sob o Gazebo|r
    .complete 1534,1 --Filled Blue Waterskin (1)
    .use 7767
step
    #loop
    .line Ashenvale,39.81,62.94,39.65,63.74,39.77,65.40,40.22,66.23,41.41,66.56,41.46,67.44,41.55,67.71,41.79,68.28,42.08,68.71,42.46,68.39,42.96,68.43,43.33,68.09,43.78,68.86
    .goto Ashenvale,43.78,68.86,0
    .goto Ashenvale,43.78,68.86,40,0
    .goto Ashenvale,43.33,68.09,40,0
    .goto Ashenvale,42.46,68.39,40,0
    .goto Ashenvale,42.08,68.71,40,0
    .goto Ashenvale,41.79,68.28,40,0
    .goto Ashenvale,41.55,67.71,40,0
    .goto Ashenvale,41.46,67.44,40,0
    .goto Ashenvale,41.41,66.56,40,0
    .goto Ashenvale,40.22,66.23,40,0
    .goto Ashenvale,39.77,65.40,40,0
    .goto Ashenvale,39.65,63.74,40,0
    .goto Ashenvale,39.81,62.94,40,0
    >>Mate |cRXP_ENEMY_Ursangous|r. Saqueie a |T132941:0|t[|cRXP_LOOT_Pata de Ursangous|r] e use-a para iniciar a missão
    >>|cRXP_WARN_Ele patrulha um pouco pela área|r
    .collect 16303,1,23 --Collect Ursangous's Paw (x1)
    .accept 23 >>Aceite Ursangous's Paw
    .unitscan Ursangous
    .use 16303
step
    #completewith Tideress
    .subzone 421 >>Viaje até Mystral Lake
    .isOnQuest 25
step
    #completewith Tideress
    >>Mate |cRXP_ENEMY_Befouled Water Elementals|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    #completewith next
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,52.08,72.10,40,0
    .goto Ashenvale,52.18,71.60,40,0
    .goto Ashenvale,52.13,71.14,40,0
    .goto Ashenvale,51.42,70.86,40,0
    .goto Ashenvale,50.74,71.31,40,0
    .goto Ashenvale,50.54,71.08,40,0
    .goto Ashenvale,50.47,70.43,40,0
    .goto Ashenvale,50.21,70.36,40,0
    .goto Ashenvale,49.49,70.76,40,0
    .goto Ashenvale,48.93,70.82,40,0
    .goto Ashenvale,48.43,70.14,40,0
    .goto Ashenvale,48.36,69.74,40,0
    >>Mate |cRXP_ENEMY_Mareante|r. Saqueie a |T136222:0|t[|cRXP_LOOT_Globo de Água Conspurcado|r]. Usar-o para iniciar a missão
    >>|cRXP_ENEMY_Mareante|r |cRXP_WARN_patrula ao redor da ilha e embaixo d'água|r
    .collect 16408,1,1918 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Aceite O Elemento Conspurcado
    .use 16408
    .unitscan Tideress
step
	.goto Ashenvale,48.93,69.56
    >>Vá embaixo do Gazebo
    .complete 25,2 --Scout the gazebo on Mystral Lake that overlooks the nearby Alliance outpost
step
    #label Tideress
    #loop
    .line Ashenvale,45.84,70.67,46.07,70.83,46.53,70.80,46.72,70.63,47.22,70.44,47.57,70.42,47.79,69.90,48.04,69.67,48.71,69.54,48.36,69.74,48.43,70.14,48.93,70.82,49.49,70.76,50.21,70.36,50.47,70.43,50.54,71.08,50.74,71.31,51.42,70.86,51.75,70.86,52.13,71.14,52.18,71.60,52.08,72.10
    .goto Ashenvale,45.84,70.67,0
    .goto Ashenvale,48.71,69.54,40,0
    .goto Ashenvale,48.04,69.67,40,0
    .goto Ashenvale,47.79,69.90,40,0
    .goto Ashenvale,47.57,70.42,40,0
    .goto Ashenvale,47.22,70.44,40,0
    .goto Ashenvale,46.72,70.63,40,0
    .goto Ashenvale,46.53,70.80,40,0
    .goto Ashenvale,46.07,70.83,40,0
    .goto Ashenvale,45.84,70.67,40,0
    >>Mate |cRXP_ENEMY_Mareante|r. Saqueie a |T136222:0|t[|cRXP_LOOT_Globo de Água Conspurcado|r]. Usar-o para iniciar a missão
    >>|cRXP_ENEMY_Mareante|r |cRXP_WARN_patrula ao redor da ilha e embaixo d'água|r
    .collect 16408,1,1918,1 --Collect Befouled Water Globe (x1)
    .accept 1918 >>Aceite O Elemento Conspurcado
    .use 16408
    .unitscan Tideress
step
    #loop
	.goto Ashenvale,48.36,69.74,0
	.goto Ashenvale,48.36,69.74,50,0
	.goto Ashenvale,48.43,70.14,50,0
	.goto Ashenvale,48.93,70.82,50,0
	.goto Ashenvale,49.49,70.76,50,0
	.goto Ashenvale,50.21,70.36,50,0
	.goto Ashenvale,50.47,70.43,50,0
	.goto Ashenvale,50.54,71.08,50,0
	.goto Ashenvale,50.74,71.31,50,0
	.goto Ashenvale,51.42,70.86,50,0
	.goto Ashenvale,52.13,71.14,50,0
	.goto Ashenvale,52.18,71.60,50,0
	.goto Ashenvale,52.08,72.10,50,0
	.goto Ashenvale,45.84,70.67,50,0
    >>Mate |cRXP_ENEMY_Befouled Water Elementals|r
    .complete 25,1 --Kill Befouled Water Elemental (x12)
    .mob Befouled Water Elemental
step
    .goto Ashenvale,60.20,72.90
	>>|cRXP_WARN_Use o|r |T134776:0|t[|cRXP_LOOT_Frasco Gravado|r] |cRXP_WARN_no Poço da Lua|r
    .complete 1195,1 --Collect Filled Etched Phial (x1)
    .use 5867
    .isOnQuest 1195
step
    #completewith next
    .goto Ashenvale,71.10,68.12,80 >>Viaje até Splintertree Post
    .subzoneskip 431
step
    .goto Ashenvale,71.10,68.12
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kuray'bin|r
    .turnin 6503 >>Entregue Vanguardeiros do Vale Gris
    .target Kuray'bin
step
    #loop
    .goto Ashenvale,76.15,67.60,0
    .goto Ashenvale,78.24,65.72,45,0
    .goto Ashenvale,77.93,65.93,45,0
    .goto Ashenvale,77.60,66.33,45,0
    .goto Ashenvale,77.35,66.96,45,0
    .goto Ashenvale,76.93,68.04,45,0
    .goto Ashenvale,76.11,68.95,45,0
    .goto Ashenvale,75.94,69.80,45,0
    .goto Ashenvale,75.26,69.96,45,0
    .goto Ashenvale,74.86,70.06,45,0
    .goto Ashenvale,74.36,70.10,45,0
    .goto Ashenvale,73.33,70.61,45,0
    .goto Ashenvale,72.94,70.67,45,0
    .goto Ashenvale,72.50,70.60,45,0
    .goto Ashenvale,72.08,70.47,45,0
    .goto Ashenvale,71.46,70.10,45,0
    .line Ashenvale,71.46,70.10,72.08,70.47,72.50,70.60,72.94,70.67,73.33,70.61,74.36,70.10,74.86,70.06,75.26,69.96,75.94,69.80,76.11,68.95,76.93,68.04,77.35,66.96,77.60,66.33,77.93,65.93,78.24,65.72
    >>Mate |cRXP_ENEMY_Garraguda|r. Saqueie a |T136063:0|t[|cRXP_LOOT_Garra de Garraguda|r] e use-a para iniciar a missão
    >>|cRXP_WARN_Tenha cuidado!|r |cRXP_ENEMY_Garraguda|r |cRXP_WARN_é nível 31 e patrula pela área. Você pode atraí-lo de volta para Posto Machadada ou Forsaken Camp se estiver lutando para matá-lo. Se você fizer isso, certifique-se de causar 50%+ de dano para receber crédito|r
    >>|cRXP_WARN_Pule isto se você não conseguir matá-lo|r
    .collect 16305,1,2 --Sharptalon's Claw (1)
    .accept 2 >>Aceite Garra de Garraguda
    .unitscan Sharptalon
    .use 16305
step
    .goto Ashenvale,73.04,62.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ertog Raivatusco|r
    .turnin 6544 >>Entregue Junte-se aos bons
    .target Ertog Ragetusk
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senani|r
    .turnin 2 >>Entregue Garra de Garraguda
    .turnin 24 >>Entregue Cabeça de Shadumbra
    .turnin 23 >>Entregue Ursangous's Paw
    .turnin 247 >>Entregue Caçada do Vale Gris Terminada
    .target Senani Thunderheart
    .isOnQuest 2
step
    #optional
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senani|r
    .turnin 24 >>Entregue Cabeça de Shadumbra
    .turnin 23 >>Entregue Ursangous's Paw
    .turnin 247 >>Entregue Caçada do Vale Gris Terminada
    .target Senani Thunderheart
    .isQuestTurnedIn 2
step
    .goto Ashenvale,73.78,61.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Senani|r
    .turnin 24 >>Entregue Cabeça de Shadumbra
    .turnin 23 >>Entregue Ursangous's Paw
    .target Senani Thunderheart
step
    .goto Ashenvale,73.06,61.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pixel|r
    .turnin 6441 >>Entregue Chifres de Sátiro
    .target Pixel
    .isQuestComplete 6441
step
    .goto Ashenvale,73.67,60.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mastok|r
    .turnin 25 >>Entregue Paralisação de Picogranito
    .turnin 1918 >>Entregue O Elemento Conspurcado
    .accept 824 >>Aceite Je'neu da Harmonia Telúrica
    .target Mastok Wrilehiss
step
    .goto Ashenvale,74.11,60.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Yama|r
    .turnin 6482 >>Entregue Liberdade para Ruul!
    .target Yama Snowhoof
step << Hunter
    #optional
    #completewith ClawBiteAshenvale2
    .goto Ashenvale,73.38,61.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Quoiju|r
    .stable >>Stable your pet.You will tame an |cRXP_ENEMY_Elder Ashenvale Bear|re a |cRXP_ENEMY_Ghostpaw Alpha|rshortly
    .target Qeeju
step << Hunter
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,69.12,64.45,0
    .goto Ashenvale,69.12,64.45,50,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_lançou|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob +Elder Ashenvale Bear
    .train 17264 >>|cRXP_WARN_lançou|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Ghostpaw Alpha|r. Attack mobs with it to learn|r |T132278:0|t[Bite (Rank 4)]
    .mob +Ghostpaw Alpha
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
    .xp <27,1 --Ghostpaw Alphas are lvl 27-28
step << Hunter
    #label ClawBiteAshenvale2
    #optional
    #loop
    .goto Ashenvale,65.31,64.65,0
    .goto Ashenvale,68.59,60.53,50,0
    .goto Ashenvale,66.62,62.81,50,0
    .goto Ashenvale,65.31,64.65,50,0
    .train 16830 >>|cRXP_WARN_lançou|r |T132164:0|t[Tame Beast] |cRXP_WARN_on a |cRXP_ENEMY_Elder Ashenvale Bear|r. Attack mobs with it to learn|r |T132140:0|t[Claw (Rank 4)]
    .mob Elder Ashenvale Bear
    .link https://www.wow-petopia.com/classic/training.php >>Clique no link para mais informações sobre treinamento de pets: https://www.wow-petopia.com/classic/training.php
    .xp >26,1 --Ghostpaw Alphas are lvl 27-28
step
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >>Agora você deve procurar um grupo para BlackFathom Deeps
    .dungeon BFD
step
    #completewith ZoramVisit2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fly Zoram'gar >>Fly to Assentamento Zoram'gar
    .target Vhulgra
    .subzoneskip 2897
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karang|r
    .turnin 216 >>Turn in Between a Rock e a Thistlefur
    .target Karang Amakkar
step
    .goto Ashenvale,11.65,34.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mitsuwa|r
    .turnin 6462 >>Entregue Patuá Trolls
    .target Mitsuwa
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >>Entregue Je'neu da Harmonia Telúrica
    .accept 6563 >>Aceite A Essência de Aku'mai
    .accept 6921 >>Aceite Entre as Ruínas
    .accept 6565 >>Aceite Lealdade aos Antigos Deuses
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestTurnedIn 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >>Entregue Je'neu da Harmonia Telúrica
    .accept 6563 >>Aceite A Essência de Aku'mai
    .accept 6921 >>Aceite Entre as Ruínas
    .target Je'neu Sancrea
    .dungeon BFD
step
    #label ZoramVisit2
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 824 >>Entregue Je'neu da Harmonia Telúrica
    .target Je'neu Sancrea
step
    .goto Kalimdor,43.89,35.23,100 >>Vá para a entrada de Profundezas Negras
    .dungeon BFD
step
    #completewith next
    >>Saque |cRXP_LOOT_Safira de Aku'Mai|r da parede
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step
    #loop
    .goto Kalimdor,43.94,34.86,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.53,34.86,20,0
    >>Mate as |cRXP_ENEMY_Sacerdotisas da Maré de Profundezas Negras|r. Saque-as para uma |T134332:0|t[|cRXP_LOOT_Nota Úmida|r] e use-a para iniciar a missão
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>Aceite Lealdade aos Antigos Deuses
    .mob Blackfathom Tide Priestess
    .use 16790
    .dungeon BFD
step
    #loop
    .goto Kalimdor,44.34,35.11,0
    .goto Kalimdor,44.53,34.86,20,0
    .goto Kalimdor,44.35,34.97,20,0
    .goto Kalimdor,44.16,34.85,20,0
    .goto Kalimdor,44.00,34.57,20,0
    .goto Kalimdor,43.90,34.59,20,0
    .goto Kalimdor,43.94,34.86,20,0
    .goto Kalimdor,43.81,35.16,20,0
    .goto Kalimdor,44.34,35.11,20,0
    >>Saque |cRXP_LOOT_Safira de Aku'Mai|r da parede
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
    .isOnQuest 6563
step
    #label EnterBFD
    .goto Kalimdor,44.36,34.86
    .subzone 2797,2 >>Vá até o Portal da instância de Profundezas Negras. Entre na instância
    .dungeon BFD
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Guarda Argênteo Thaelrid|r
    .accept 6561 >>Aceite Vilania nas Profundezas Negras
    .target Argent Guard Thaelrid
    .dungeon BFD
step
    >>Mate |cRXP_ENEMY_Lorgus Jett |r
    .complete 6565,1 --Lorgus Jett slain (1)
    .mob Lorgus Jett
    .isOnQuest 6565
    .dungeon BFD
step
    #completewith next
    >>Pegue o |cRXP_PICK_Fathom Pedra|r na água no chão para obter o |cRXP_LOOT_Fathom Núcleo|r
    >>|cRXP_WARN_Pegar este item fará aparecer|r |cRXP_ENEMY_Barão Aquanis|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mate |cRXP_ENEMY_Barão Aquanis|r. Pegue um |T136222:0|t[|cRXP_LOOT_Globo d'Água Estranho|r]. Use-o para aceitar a missão
    .collect 16782,1,6782 --Strange Water Globe (1)
    .accept 6922 >>Aceitar O Barão Aquanis
    .mob Baron Aquanis
    .use 16782
    .dungeon BFD
step
    >>Pegue o |cRXP_PICK_Fathom Pedra|r na água no chão para obter o |cRXP_LOOT_Fathom Núcleo|r
    .complete 6921,1 --Fathom Core (1)
    .isOnQuest 6921
    .dungeon BFD
step
    >>Mate o |cRXP_ENEMY_Senhor do Crepúsculo Kelris|r. Saqueie-o para obter sua |cRXP_LOOT_Cabeça|r
    .complete 6561,1 --Head of Kelris (1)
    .mob Twilight Lord Kelris
    .isOnQuest 6561
    .dungeon BFD
step
    #completewith FlyZoramS2
    .hs >>Hearth to Posto Machadada
    >>|cRXP_WARN_Abate|r |cRXP_ENEMY_Aku'mai|r |cRXP_WARN_primeiro se desejar. Este é o último chefe da masmorra|r
    .cooldown item,6948,>2,1
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon BFD
step
    #optional
    #completewith FlyZoramS2
    .subzone 431 >>|cRXP_WARN_Faça um 'Ghetto Lar' em Profundezas Negras|r
	.link /run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >>run InviteUnit("aa");C_Timer.After(1,function() LeaveParty() end) >> |cRXP_WARN_Copie e cole esta macro dentro de Profundezas Negras para fazer Ghetto Lar de volta ao Posto Machadada|r
    .cooldown item,6948,<0
    .bindlocation 431,1
    .dungeon BFD
step
    #label FlyZoramS2
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fly Zoram'gar >>Fly to Assentamento Zoram'gar
    .target Vhulgr
    .subzoneskip 2897
    .dungeon BFD
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >>Entregue Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
    .dungeon BFD
    .isOnQuest 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6565 >>Entregue Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6565
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entregue A Essência de Aku'mai
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6921 >>Entregue Entre as Ruínas
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6521
step
    #label BFDTurnins
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6922 >>Entregue O Barão Aquanis
    .target Je'neu Sancrea
    .dungeon BFD
    .isQuestComplete 6922
step << Druid
    #completewith DruidTraining3
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
    .dungeon !BFD
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1850 >>Treine suas magias de classe
    .target Loganaar
    .xp <26,1
    .xp >28,1
    .dungeon !BFD
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 3029 >>Treine suas magias de classe
    .target Loganaar
    .xp <28,1
    .dungeon !BFD
step
    .hs >>Hearth to Posto Machadada
    .use 6948
    .bindlocation 431,1
    .subzoneskip 431
    .dungeon !BFD
step << Rogue/Warlock
    #completewith FlyTB
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fly Orgrimmar>>Voe para Orgrimmar
    .target Vhulgra
    .zoneskip Orgrimmar
    .dungeon !BFD
step << Rogue/Warlock
    #completewith OrgSkip
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fly Orgrimmar>>Voe para Orgrimmar
    .target Andruk
    .zoneskip Orgrimmar
    .dungeon BFD
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 1833 >>Treine suas magias de classe
    .target Ormok
    .xp <26,1
    .xp >28,1
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 8687 >>Treine suas magias de classe
    >>|T132273:0|t[Veneno Instantâneo Nível 2] |cRXP_WARN_requer 120 de perícia em Venenos!|r
    .target Ormok
    .xp <28,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkul|r
	.vendor >>|cRXP_BUY_Estoqueie|r |T134387:0|t[Pó de Clarão] |cRXP_BUY_e|r |T132273:0|t[Venenos]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1456 >>Treine suas magias de classe
    .target Mirket
    .xp <26,1
    .xp >28,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 6217 >>Treine suas magias de classe
    .target Mirket
    .xp <28,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Compre qualquer melhoria de mascote que possa pagar
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135466:0|t[Varinha Pestilenta] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternativamente, você pode verificar a Casa de Leilões se algo melhor estiver disponível|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135466:0|t[Varinha Pestilenta] |cRXP_BUY_dela|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Rogue/Warlock
    #optional
    #label OrgSkip
step
    #optional
    #label FlyTB
step << Rogue/Warlock
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Doras
    .zoneskip Orgrimmar,1
step
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Andruk
    .zoneskip Ashenvale,1
    .dungeon BFD
step
    .goto Ashenvale,73.18,61.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vhulgra|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Vhulgra
    .zoneskip Ashenvale,1
    .dungeon !BFD
]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guia de Sobrevivência (H)
<< Horde
#name 29-31 Mil Agulhas
#version 7
#subgroup Guia de Sobrevivência RXP TBC 1-30
#next RXP TBC Sobrevivência Guia (H)\31-33 Hillsbrad/Arathi parte 1

step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Delgo|r
    .vendor >>|cRXP_BUY_Compre um|r |T132408:0|t[Machado Impiedoso] |cRXP_BUY_dele se estiver disponível e você não tiver ainda|r
    >>|cRXP_WARN_Alternativamente, você pode verificar a Casa de Leilões se algo melhor estiver disponível|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Totem da Fúria
    .isQuestAvailable 4821,4841,1149
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Delgo|r
    .vendor >>|cRXP_BUY_Compre um|r |T132408:0|t[Machado Impiedoso] |cRXP_BUY_dele se estiver disponível e você não tiver ainda|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Totem da Fúria
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compre um|r |T135651:0|t[Adaga de Bloqueio] |cRXP_BUY_dela para sua mão secundária|r
    >>|cRXP_WARN_Alternativamente, você pode verificar a Casa de Leilões se algo melhor estiver disponível|r
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compre um|r |T135651:0|t[Adaga de Bloqueio] |cRXP_BUY_dela para sua mão secundária|r
    .collect 2526,1,5881,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4821,4841,1149
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_Equipe o|r |T135651:0|t[Adaga de Bloqueio]
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .xp <29,1
step
    .goto Thunder Bluff,54.90,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Zangen|r
    .turnin 1195 >>Entregue A Chama Sagrada
    .accept 1196 >>Aceite A Chama Sagrada
    .target Zangen Stonehoof
    .isOnQuest 1195
step
    #optional
    .goto Thunder Bluff,54.90,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Zangen|r
    .accept 1196 >>Aceite A Chama Sagrada
    .target Zangen Stonehoof
    .isQuestTurnedIn 1195
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kym|r
    .train 1850 >>Treine suas magias de classe
    .target Kym Wildmane
    .xp <26,1
    .xp >28,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kym|r
    .train 3029 >>Treine suas magias de classe
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kym|r
    .train 783 >>Treine suas magias de classe
    .target Kym Wildmane
    .xp <30,1
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .turnin 1130 >>Entregue Melor Envia uma Mensagem
    .accept 1131 >>Aceite Estalaço
    .target Melor Stonehoof
    .isOnQuest 1130
step
    #optional
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .accept 1131 >>Aceite Estalaço
    .target Melor Stonehoof
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 3045 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <26,1
    .xp >28,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 14319 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 5384 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <30,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >>Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ker|r
    .train 6178 >>Treine suas magias de classe
    .target Ker Ragetotem
    .xp <26,1
    .xp >28,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ker|r
    .train 7887 >>Treine suas magias de classe
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm|r
    .train 7369 >>Treine suas magias de classe
    .accept 1718 >>Aceite O Ilhéu
    .target Torm Ragetotem
    .xp <30,1
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Auld|r
    .accept 1102 >>Aceite A Vingativa Sina
    .target Auld Stonespire
    .dungeon RFK
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 1131,4821,4841,1149
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .train 992 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <26,1
    .xp >28,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .train 8104 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .train 602 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 120 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <26,1
    .xp >28,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 759 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 8412 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <30,1
step << Mage
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >>Aprenda |T135765:0|t[Teleporte: Penhasco do Trovão]
    .target Birgitte Cranston
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 943 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <26,1
    .xp >28,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 8053 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 556 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <30,1
step
    #optional
    #label SilkBandage
step
    #completewith next
    .skill firstaid,115 >>|cRXP_WARN_Criar|r |T133684:0|t[Wool Bandages] |cRXP_WARN_until your skill is 115|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pand|r
    .train 3278 >>Aprenda |T133687:0|t[Bandagem Grossa de Lã]
    .target Pand Stonebinde
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,150 >>|cRXP_WARN_Criar|r |T133687:0|t[Heavy Wool Bandages] |cRXP_WARN_until your skill is 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pand|r
    .train 7928 >>Treine |T133671:0|t[Bandagem de Seda]
    >>|cRXP_WARN_Pule este passo se você não tinha Tecido de Lã suficiente para atingir 150 de habilidade|r
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Compre um|r |T135495:0|t[Arco Recurvo Robusto Arco] |cRXP_BUY_dela se estiver disponível|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kina Chifre Troante
    .money <1.9467
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dela|r
    .collect 3030,1800,5881,1 << Hunter --Razor Arrow (1800)
    .target Kina Chifre Troante
    .itemcount 3030,<1400
step
    #optional
    .abandon 6561 >>Abandone Blackfathom Villainy
    .dungeon BFD
step
    #optional
    .abandon 6565 >>Abandone Lealdade aos Deuses Antigos
    .dungeon BFD
step
    #optional
    .abandon 6563 >>Abandone A Essência de Aku'mai
    .dungeon BFD
step
    #optional
    .abandon 6921 >>Abandone Amongst the Ruins
    .dungeon BFD
step
    #completewith Elevators
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .zoneskip The Barrens
    .zoneskip Thousand Needles
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tatternack|r
    .accept 1153 >>Aceite Uma Nova Amostra de Minério
    .target Tatternack Steelforge
    .isQuestTurnedIn 893
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .aura 16618 >>|cRXP_WARN_Se você tem 10|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r |cRXP_WARN_restantes, use-os para obter|r |T136022:0|t[Espírito of the Vento - Missão - Missão] |cRXP_WARN_de|r |cRXP_FRIENDLY_Denterroto|r]
    .itemcount 5075,10
    .target Mangletooth
    .train 783,1 << Druid --Travel form
    .train 2645,1 << Shaman --Ghost Wolf
    .train 5118,1 << Hunter -- Cheetah
step << Druid/Shaman/Hunter
    #optional
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    +|cRXP_WARN_Se você tem|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r |cRXP_WARN_restantes, use-os para obter buffs de sua escolha de|r |cRXP_FRIENDLY_Denterroto|r
    .itemcount 5075,4
    .target Mangletooth
    .train 783,3 << Druid --Travel form
    .train 2645,3 << Shaman --Ghost Wolf
    .train 5118,3 << Hunter -- Cheetah
step << Shaman
    #completewith next
    .goto The Barrens,43.84,77.28,25,0
    .goto The Barrens,43.62,77.29,25,0
    .goto The Barrens,43.42,77.41,15 >>Viaje para |cRXP_FRIENDLY_Salma|r
step << Shaman
    .goto The Barrens,43.42,77.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Salma|r
    .turnin 1534 >>Entregue Clamor da água
    .accept 220 >>Aceite Chamado da Água
    .target Brine
step
    #completewith next
    .goto The Barrens,48.63,84.49,110 >>Viaje para Bael Modan
    .subzoneskip 359
    .group
    .maxlevel 29
step
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Feegly|r
    .accept 857 >>Aceite A Lágrima das Luas
    .target Feegly the Exiled
    .group 2
    .maxlevel 29
step
    #completewith next
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.43,84.28,6 >>Desça para o andar mais baixo de Bael'dun
    .group
    .isOnQuest 857
step
    .goto The Barrens,49.13,84.25
    >>Abra |cRXP_PICK_Cofre do General Duas-tranças|r. Saque-o para obter o |cRXP_LOOT_Lágrima das Luas|r
    >>|cRXP_WARN_Tenha cuidado! É muito fácil fazer overpull na sala de |cRXP_ENEMY_General Duas-tranças|r|r
    >>|cRXP_WARN_Puxe diretamente qualquer mob, exceto |cRXP_ENEMY_General Duas-tranças|r << !Hunter !Warlock
    >>|cRXP_WARN_Puxe diretamente qualquer mob, exceto |cRXP_ENEMY_General Duas-tranças|r, e use seu mascote para tankar. Alternativamente, envie seu mascote e saque o cofre|r << Hunter/Warlock
    .complete 857,1 --Tear of the Moons (1)
    .group 2
    .isOnQuest 857
step
    #completewith next
    .goto The Barrens,49.43,84.28,8,0
    .goto The Barrens,49.53,84.42,8,0
    .goto The Barrens,49.38,84.48,8,0
    .goto The Barrens,49.06,84.59,8,0
    .goto The Barrens,49.01,84.48,8,0
    .goto The Barrens,48.75,84.63,20 >>Saia da Fortaleza de Bael'dun
    .group
step
    #label TearMoons2
    .goto The Barrens,48.94,86.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Feegly|r
    .turnin 857 >>Entregue A Lágrima das Luas
    .target Feegly the Exiled
    .isQuestComplete 857
    .group
step
    .goto Thousand Needles,31.87,21.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grish|r
    .turnin 5881 >>Entregue Chamando as Reservas
    .target Grish Longrunner
    .isOnQuest 5881
step
    #label Elevators
    .goto Thousand Needles,32.24,22.17
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Moonhorn|r
    .accept 4542 >>Aceite Mensagem para o Posto do Vento Livre
    .target Brave Moonhorn
step
    .goto Thousand Needles,31.97,23.76,30 >>Pegue o elevador para Mil Agulhas
    >>|cRXP_WARN_Não caia! Você vai morrer!|r
    .isOnQuest 4542
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.61,31.49,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>[Deprecated for 4.x]Mate o |cRXP_ENEMY_Galak Messenger|r. Saqueie dele o |T133473:0|t[|cRXP_LOOT_Assassination Nota|r]. Usar-o para iniciar a missão
    >>|cRXP_WARN_Ele aparece em Splithoof Crag (o acampamento Centauro oriental)|r
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Aceite Conspiração de Assassinato
    .use 12564
    .unitscan Galak Messenger
step
    #completewith next
    .goto Thousand Needles,46.73,48.27,30 >>Viaje até Freewind Post's Elevators
step
    .goto Thousand Needles,45.91,49.91,25 >>Pegue o elevador até Freewind
    .isQuestAvailable 4821,4841,1149
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elosai|r
    .accept 9431 >>Aceite Uma Metodologia Diferente
    .target Magistrix Elosai
step
    .goto Thousand Needles,46.00,50.80
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 5147 >>Aceite Wanted - Arnak Temível Totem
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Rau|r
    .turnin 1196 >>Entregue A Chama Sagrada
    .accept 1197 >>Aceite A Chama Sagrada
    .target Rau Cliffrunner
    .group
    .maxlevel 30
    .isOnQuest 1196
step
     #optional
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Rau|r
    .turnin 1196 >>Entregue A Chama Sagrada
    .target Rau Cliffrunner
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Longhorn|r
    .turnin 4542 >>Entregue Message em Freewind Post
    .accept 4841 >>Aceite Pacificar the Centaur
    .target Cliffwatcher Longhorn
    .maxlevel 30
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Longhorn|r
    .turnin 4542 >>Entregue Message em Freewind Post
    .target Cliffwatcher Longhorn
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montarr|r
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Cura Potions] |cRXP_BUY_e|r |T134937:0|t[Pergaminhos] |cRXP_BUY_dele se estiverem disponíveis|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_,\32|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Compre um|r |T135495:0|t[|cRXP_FRIENDLY_Arco Curto Denso|r] |cRXP_BUY_dele se estiver disponível|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step << Mage
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montarr|r
    >>|cRXP_BUY_Compre um ou mais|r |T134419:0|t[Runa de Teleporte] |cRXP_BUY_dele|r
    .collect 17031,1,4767,1 --Rune of Teleportation (1)
    .target Montarr
step << Mage
    #optional
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Abeqwa|r
    .home >>Defina sua Pedra de Retorno em Freewind Post
    .target Innkeeper Abeqwa
    .bindlocation 484
    .isQuestAvailable 4767
    .train 3566,3 --Skips step if Teleport Thunder Bluff isn't trained
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hagar|r
    .accept 4821 >>Aceite Alien Ovo
    .target Hagar Lightninghoof
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elu|r
    .accept 4767 >>Aceite Mantícora
    .target Elu
    .maxlevel 31
step
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyse|r
    .fp Freewind Post >>Aprenda a rota de voo para Freewind Post
    .target Nyse
    .isQuestAvailable 4821,4841,1149
    .subzoneskip 484,1
step
    #completewith Clovenhoof
    >>Mate |cRXP_ENEMY_Galak Scouts|r, |cRXP_ENEMY_Galak Wranglers|r, and |cRXP_ENEMY_Galak Windchasers|r
    >>|cRXP_WARN_Mate cada|r |cRXP_ENEMY_[Deprecated for 4.x][Deprecated for 4.x]Galak Batedor|r |cRXP_WARN_que você vê pois são mais raros|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
    .isOnQuest 4841
    .group 0
step
    #label Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.12,37.22,20 >>Entre na caverna
    .isOnQuest 1197
    .group 2
step
    #requires Splithoofcave
    #completewith Clovenhoof
    .goto Thousand Needles,44.44,36.32,12,0
    .goto Thousand Needles,43.14,35.19,12,0
    .goto Thousand Needles,42.11,34.54,12,0
    .goto Thousand Needles,42.01,31.47,20 >>Vá em direção ao |cRXP_PICK_Braseiro Antigo|r
    .isOnQuest 1197
    .group
step
    #requires Splithoofcave
    #label Clovenhoof
    .goto Thousand Needles,42.01,31.47
    >>Abra o |cRXP_PICK_Braseiro Antigo|r. Saque-o para obter o |cRXP_LOOT_Cloven Hoof|r
    >>|cRXP_WARN_Cuidado! O braseiro é defendido por dois inimigos de nível 30|r |cRXP_ENEMY_Guardas Galak das Chamas|r
    .complete 1197,1 --Collect Cloven Hoof (x1)
    .mob Galak Flame Guard
    .isOnQuest 1197
    .group 2
step
    #completewith next
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,38.46,32.60,50,0
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>Mate o |cRXP_ENEMY_Galak Messenger|r. Saqueie o |T133473:0|t[|cRXP_LOOT_Assassination Nota|r]. Usar-o para iniciar a missão
    >>|cRXP_WARN_Ele aparece em Splithoof Crag (o acampamento Centauro oriental)|r
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Aceite Assassinato Plot
    .use 12564
    .unitscan Galak Messenger
step
    #loop
	.goto Thousand Needles,43.12,36.86,0
	.goto Thousand Needles,43.12,36.86,50,0
	.goto Thousand Needles,41.18,34.83,50,0
	.goto Thousand Needles,40.42,34.45,50,0
	.goto Thousand Needles,39.00,32.56,50,0
	.goto Thousand Needles,39.68,34.93,50,0
	.goto Thousand Needles,39.76,35.82,50,0
	.goto Thousand Needles,39.32,36.93,50,0
	.goto Thousand Needles,40.43,37.96,50,0
	.goto Thousand Needles,41.04,39.03,50,0
	.goto Thousand Needles,41.12,41.34,50,0
	.goto Thousand Needles,42.33,40.54,50,0
	.goto Thousand Needles,42.84,39.09,50,0
	.goto Thousand Needles,44.15,40.72,50,0
	.goto Thousand Needles,44.98,41.03,50,0
	.goto Thousand Needles,45.66,43.81,50,0
	.goto Thousand Needles,47.23,41.98,50,0
	.goto Thousand Needles,48.57,43.53,50,0
	.goto Thousand Needles,49.39,41.24,50,0
	.goto Thousand Needles,48.14,40.43,50,0
	.goto Thousand Needles,47.11,40.29,50,0
	.goto Thousand Needles,45.89,40.32,50,0
	.goto Thousand Needles,44.43,38.36,50,0
    >>Mate |cRXP_ENEMY_Galak Scouts|r, |cRXP_ENEMY_Galak Wranglers|r, and |cRXP_ENEMY_Galak Windchasers|r
    .complete 4841,1 --Kill Galak Scout (x12)
    .mob +Galak Scout
    .complete 4841,2 --Kill Galak Wrangler (x10)
    .mob +Galak Wrangler
    .complete 4841,3 --Kill Galak Windchaser (x6)
    .mob +Galak Windchaser
    .isOnQuest 4841
step
    #completewith next
    .goto Thousand Needles,54.57,44.36,12,0
    .goto Thousand Needles,53.71,42.59,10,0
    .goto Thousand Needles,53.95,41.49,10 >>Vá em direção à |cRXP_FRIENDLY_Dorn|r
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorn|r
    .accept 1149 >>Aceite Teste da Fé
    .timer 7,Teste da Fé RP
    .target Dorn Plainstalker
step
    .goto Thousand Needles,26.63,34.23
    >>|cRXP_WARN_Espere a sequência de RP terminar|r
    >>|cRXP_WARN_Faça um Salto para fora do final da plataforma de madeira. Você será teleportado em vez de morrer por dano de queda|r
    .complete 1149,1 --Explore Zone (1)
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >>Entregue Teste da Fé
    .accept 1150 >>Aceite Teste de Resistência
    .target Dorn Plainstalker
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorn|r
    .turnin 1149 >>Entregue Teste da Fé
    .target Dorn Plainstalker
step
    #completewith AlienEgg
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,59.79,58.16,0
    >>Abate os |cRXP_ENEMY_Gravelsnout Surveyors|r, os |cRXP_ENEMY_Gravelsnout Diggers|r e o |cRXP_ENEMY_Gibblesnik|r (se estiver disponível). Saque-os para um |cRXP_LOOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
    .isOnQuest 1153
step
    #completewith next
    .goto Thousand Needles,56.36,50.39,20,0
    >>Saqueie |cRXP_LOOT_Alien Egg|r no chão
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #loop
    .goto Thousand Needles,60.49,58.82,0
    .goto Thousand Needles,63.69,60.43,0
    .goto Thousand Needles,65.84,61.77,0
    .goto Thousand Needles,63.67,48.03,0
    .goto Thousand Needles,60.49,58.82,50,0
    .goto Thousand Needles,63.69,60.43,50,0
    .goto Thousand Needles,65.84,61.77,50,0
    .goto Thousand Needles,63.67,48.03,50,0
    >>Mate |cRXP_ENEMY_Thundering Boulderkins|r. Saqueie-os para obter |cRXP_LOOT_Purifying Earth|r
    .complete 9431,1 --Collect Purifying Earth (x2)
    .mob Thundering Boulderkin
step
    #label AlienEgg
    #loop
    .goto Thousand Needles,52.34,55.24,0
    .goto Thousand Needles,37.63,56.11,0
    .goto Thousand Needles,56.36,50.39,0
    .goto Thousand Needles,52.34,55.24,20,0
    .goto Thousand Needles,37.63,56.11,20,0
    .goto Thousand Needles,56.36,50.39,20,0
    >>Saqueie |cRXP_LOOT_Alien Egg|r no chão
    >>|cRXP_WARN_Tem 3 locais diferentes para aparecimento. Eles estão marcados no mapa|r
    .complete 4821,1 --Collect Alien Egg (x1)
step
    #completewith Freewind2
    .goto Thousand Needles,46.73,48.27,30 >>Viaje até Freewind Post's Elevators
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Longhorn|r
    .turnin 4841 >>Entregue Pacificar the Centaur
    .accept 5064 >>Aceite Grimtotem Espionagem
    .target Cliffwatcher Longhorn
    .isQuestComplete 4841
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Longhorn|r
    .accept 5064 >>Aceite Grimtotem Espionagem
    .target Cliffwatcher Longhorn
    .isQuestTurnedIn 4841
step
    .goto Thousand Needles,46.10,51.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Rau|r
    .turnin 1197 >>Entregue A Chama Sagrada
    .target Rau Cliffrunner
    .isQuestComplete 1197
step
    .goto Thousand Needles,44.70,50.30
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hagar|r
    .turnin 4821 >>Entregue Alien Ovo
    .accept 4865 >>Aceite Serpente Selvagem
    .target Hagar Lightninghoof
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Compre um|r |T135495:0|t[|cRXP_FRIENDLY_Arco Curto Denso|r] |cRXP_BUY_dele se estiver disponível|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
    .isQuestAvailable 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dele|r
    .collect 3030,1800,4767,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    #label Freewind2
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montarr|r
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Cura Potions] |cRXP_BUY_e|r |T134937:0|t[Pergaminhos] |cRXP_BUY_dele se estiverem disponíveis|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_,\32|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .subzoneskip 484,1
    .isQuestAvailable 4767
step
    #label GrenkaCave
    .goto Thousand Needles,27.59,49.86,12,0
    .goto Thousand Needles,28.65,51.30,12,0
    .goto Thousand Needles,27.29,51.30,12 >>Entre na casa de Roguefeather Den
    .isOnQuest 1150
step
    #completewith Grenka
    +|cRXP_WARN_Cuidado pois |cRXP_ENEMY_Screeching Windcallers|r lançam|r |T136022:0|t[Rajada de Vento]|cRXP_WARN_, um atordoamento AdE de 4 segundos a 10 metros do |cRXP_ENEMY_Arauto do Vento Guinchador|r
    +|cRXP_ENEMY_Screeching Harpies|r lançam|r |T136122:0|t[Guinchado Ensurdecedor]|cRXP_WARN_, um silêncio de 8 segundos|r << Mage/Warlock/Priest/Druid/Shaman/Paladin
    .isOnQuest 1150
step
    #completewith next
    .goto Thousand Needles,25.84,54.78
    +Abra o ground in the back of the cave to summon |cRXP_ENEMY_Grenka|r
    .isOnQuest 1150
step
    #label Grenka
    .goto Thousand Needles,26.16,55.89,15,0
    .goto Thousand Needles,26.69,55.62,15,0
    .goto Thousand Needles,25.90,55.23
    >>Mate for |cRXP_LOOT_Grenka's Claw|r
    >>|cRXP_WARN_Esta missão foi enfraquecida em TBC. Nenhum inimigo adicional aparecerá|r
    .complete 1150,1 --Collect Grenka's Claw (x1)
    .mob Grenka Bloodscreech
    .isOnQuest 1150
step
    #completewith next
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Mate |cRXP_ENEMY_Steelsnap|r. Saqueie-o para obter |cRXP_LOOT_Steelsnap's Rib|r
    >>|cRXP_WARN_Cuidado, tem dois |cRXP_ENEMY_Hyenas|r defendendo-o!|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    #label HighPerchArrive
    #completewith Paoka1
    .goto Thousand Needles,14.41,32.44,20,0
    .goto Thousand Needles,14.04,32.37,12,0
    .goto Thousand Needles,14.04,32.37,20 >>Vá em direção à Highperch
    .subzoneskip 482
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #completewith Paoka1
    .goto Thousand Needles,13.18,39.55,15,0
    .goto Thousand Needles,13.52,40.27,15,0
    .goto Thousand Needles,14.01,40.27,15,0
    .goto Thousand Needles,14.92,39.63,15,0
    .goto Thousand Needles,16.46,41.09,25,0
    .goto Thousand Needles,17.89,40.57,20 >>Run up the path.Vá em direção à 
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #completewith PaokaEscort
    >>Saqueie |cRXP_LOOT_Highperch Wyvern Eggs|r no chão
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #label Paoka1
    .goto Thousand Needles,17.89,40.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pao'ka|r para começar a escolta
    >>|cRXP_WARN_Cuidado se |cRXP_ENEMY_Lamicárdio|r estiver ativo! Este é um raro élite nível 32|r
    .accept 4770,1 >>Aceite Homeward Vincular
    .target Pao'ka Swiftmountain
    .unitscan Heartrazor
    .isOnQuest 4767
step
    --#requires HighPerchArrive
    #label PaokaEscort
    .goto Thousand Needles,11.06,34.95,40,0
    .goto Thousand Needles,15.17,32.66
    >>|cRXP_WARN_Escolte|r |cRXP_FRIENDLY_Pao'ka|r
    >>|cRXP_WARN_Três Highperch Wyverns aparecerão quando |cRXP_FRIENDLY_Pao'ka|r chegar ao meio de Highperch. Você só precisa atrair o oriental e os outros desaparecerão|r
    .complete 4770,1 --Escort Pao'ka from Highperch
    .isOnQuest 4767
step
    #requires HighPerchArrive
    #loop
    .goto Thousand Needles,13.91,39.11,0
    .goto Thousand Needles,11.31,33.07,50,0
    .goto Thousand Needles,9.57,34.90,50,0
    .goto Thousand Needles,10.68,40.95,50,0
    .goto Thousand Needles,11.98,36.72,50,0
    .goto Thousand Needles,13.91,39.11,50,0
    >>Saqueie |cRXP_LOOT_Highperch Wyvern Eggs|r no chão
    .complete 4767,1 --Collect Highperch Wyvern Egg (x10)
    .isOnQuest 4767
step
    #completewith Messenger
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    >>Mate |cRXP_ENEMY_Steelsnap|r. Saqueie-o para obter |cRXP_LOOT_Steelsnap's Rib|r
    >>|cRXP_WARN_Cuidado, tem dois |cRXP_ENEMY_Hyenas|r defendendo-o!|r
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
    .unitscan Steelsnap
step
    .goto Thousand Needles,21.06,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Laer|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Laer Stepperunner
    .isQuestAvailable 5151
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Cuidado! Entregar isto invocará três |cRXP_ENEMY_Galak Assassins|r |cRXP_WARN_e você tem que proteger |cRXP_FRIENDLY_Kanati|r deles|r
    .turnin 4881 >>Entregue Assassinato Plot
    .accept 4966 >>Aceite Proteger Kanati Nuvem Cinzenta
    .target Kanati Greycloud
    .isOnQuest 4881
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>Mate as |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    #optional
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >>Entregue Proteger Kanati Nuvem Cinzenta
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Motega|r
    .turnin 4865 >>Entregue Serpente Selvagem
    .accept 5062 >>Aceite Sacred Fogo
    .turnin 4770 >>Entregue Homeward Vincular
    .target Motega Firemane
    .isQuestComplete 4770
step
    #optional
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Motega|r
    .turnin 4865 >>Entregue Serpente Selvagem
    .accept 5062 >>Aceite Sacred Fogo
    .target Motega Firemane
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wizlo|r
    .turnin 9431 >>Entregue Uma Metodologia Diferente
    .accept 9433 >>Um Mergulho no Poço da Lua
    .accept 5151 >>Aceite Hypercapacitor Gizmo
    .target Wizlo Bearingshiner
    .group
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wizlo|r
    .turnin 9431 >>Entregue Uma Metodologia Diferente
    .accept 9433 >>Um Mergulho no Poço Lunar
    .target Wizlo Bearingshiner
step
    .goto Thousand Needles,22.78,24.53
    >>Abra o cage e kill the |cRXP_ENEMY_Enraged Panther|r.Saqueie him for the |cRXP_LOOT_Hypercapacitor Gizmo|r
    .complete 5151,1 --Hypercapacitor Gizmo (1)
    .mob Enraged Panther
    .group 2
step
    #completewith MoonWellWater
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    >>[Deprecated for 4.x]Mate o |cRXP_ENEMY_Galak Messenger|r. Saqueie dele o |T133473:0|t[|cRXP_LOOT_Assassination Nota|r]. Usar-o para iniciar a missão
    >>|cRXP_WARN_Ele patrulha. Ele aparece em Splithoof Crag (o acampamento Centauro oriental)|r
    >>|cRXP_WARN_Explore a área por ele com|r |T132172:0|t[Olho de Águia] |cRXP_WARN_se você o treinou|r << Hunter
    >>|cRXP_WARN_Explore a área por ele com|r |T136034:0|t[Visão Distante] |cRXP_WARN_se você o treinou|r << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Aceite Conspiração de Assassinato
    .use 12564
    .unitscan Galak Messenger
step
    .goto Thousand Needles,9.46,18.69
    .cast 30009 >>|cRXP_WARN_Use o|r |T132995:0|t[Robotron Control Unit] |cRXP_WARN_perto do|r |cRXP_PICK_Oculto Painel de Controle|r
    .aura 29989
    .use 23675
    .isOnQuest 9433
step
    #label MoonWellWater
    .goto Feralas,89.54,46.31
    >>|cRXP_WARN_Enquanto você controla o|r |cRXP_FRIENDLY_Robotron 3000|r|cRXP_WARN_, entre no Moonwell e use a|r |T134754:0|t[Recolher Água] |cRXP_WARN_habilidade para coletar|r |cRXP_LOOT_Thalanaar Água do Poço Lunar|r
    .complete 9433,1 --Collect Thalanaar Moonwell Water (x1)
    .target Robotron 3000
    .use 23675
step
    #label Messenger
    #loop
    .line Thousand Needles,39.51,33.43,39.34,32.31,38.81,31.73,37.34,29.29,36.57,29.47,35.84,28.59,35.19,28.11,34.25,29.49,33.89,29.77,33.81,30.12,33.27,30.86,32.73,30.68,32.29,30.52,31.55,30.61,30.69,32.43,29.51,33.89,29.24,33.96,28.64,33.43,28.24,33.37,27.34,34.02,25.29,34.23,24.56,32.76,22.05,30.61,20.83,28.26,20.45,27.87,19.96,27.67,19.46,27.04,18.98,26.71,18.63,26.19,18.70,24.42,18.47,23.06,18.72,22.53,18.32,22.10,19.14,22.81,19.06,23.80,18.60,25.14
    .goto Thousand Needles,38.46,32.60,0
    .goto Thousand Needles,18.32,22.10,0
    .goto Thousand Needles,18.32,22.10,40,0
    .goto Thousand Needles,18.72,22.53,40,0
    .goto Thousand Needles,18.47,23.06,40,0
    .goto Thousand Needles,18.70,24.42,40,0
    .goto Thousand Needles,18.63,26.19,40,0
    .goto Thousand Needles,18.98,26.71,40,0
    .goto Thousand Needles,19.46,27.04,40,0
    .goto Thousand Needles,19.96,27.67,40,0
    .goto Thousand Needles,20.45,27.87,40,0
    .goto Thousand Needles,20.83,28.26,40,0
    .goto Thousand Needles,22.05,30.61,40,0
    .goto Thousand Needles,24.56,32.76,40,0
    .goto Thousand Needles,25.29,34.23,40,0
    .goto Thousand Needles,27.34,34.02,40,0
    .goto Thousand Needles,28.24,33.37,40,0
    .goto Thousand Needles,28.64,33.43,40,0
    .goto Thousand Needles,29.24,33.96,40,0
    .goto Thousand Needles,29.51,33.89,40,0
    .goto Thousand Needles,30.69,32.43,40,0
    .goto Thousand Needles,31.55,30.61,40,0
    .goto Thousand Needles,32.29,30.52,40,0
    .goto Thousand Needles,33.27,30.86,40,0
    .goto Thousand Needles,33.81,30.12,40,0
    .goto Thousand Needles,34.25,29.49,40,0
    .goto Thousand Needles,35.19,28.11,40,0
    .goto Thousand Needles,35.84,28.59,40,0
    .goto Thousand Needles,36.57,29.47,40,0
    .goto Thousand Needles,37.34,29.29,40,0
    .goto Thousand Needles,38.81,31.73,40,0
    .goto Thousand Needles,39.51,33.43,40,0
    >>[Deprecated for 4.x]Mate o |cRXP_ENEMY_Galak Messenger|r. Saqueie dele o |T133473:0|t[|cRXP_LOOT_Assassination Nota|r]. Usar-o para iniciar a missão
    >>|cRXP_WARN_Ele patrulha. Ele aparece em Splithoof Crag (o acampamento Centauro oriental)|r
    >>|cRXP_WARN_Explore a área por ele com|r |T132172:0|t[Olho de Águia] |cRXP_WARN_se você o treinou|r << Hunter
    >>|cRXP_WARN_Explore a área por ele com|r |T136034:0|t[Visão Distante] |cRXP_WARN_se você o treinou|r << Shaman
    .collect 12564,1,4881 --Collect Assassination Note
    .accept 4881 >>Aceite Conspiração de Assassinato
    .use 12564
    .unitscan Galak Messenger
step
    #loop
    .line Thousand Needles,14.34,30.13,15.08,31.63,15.67,31.56,16.59,30.34,17.19,29.60,17.82,27.50,18.48,26.74,18.64,25.90,18.68,24.68,18.57,24.07,18.11,23.65,17.66,22.98,17.24,22.32,17.54,21.49,17.87,20.78,17.96,20.18,17.66,19.46,17.28,18.93,16.70,18.61,16.20,18.53,15.69,18.65,14.49,20.04,12.89,19.97,11.88,20.90,11.50,21.61,11.20,22.29,11.16,23.21,11.49,24.07,11.55,24.44,11.91,25.02,13.01,26.31,13.36,26.97,13.75,28.54,14.34,30.13
    .goto Thousand Needles,11.50,21.61,0
    .goto Thousand Needles,11.50,21.61,40,0
    .goto Thousand Needles,11.88,20.90,40,0
    .goto Thousand Needles,12.89,19.97,40,0
    .goto Thousand Needles,14.49,20.04,40,0
    .goto Thousand Needles,15.69,18.65,40,0
    .goto Thousand Needles,16.20,18.53,40,0
    .goto Thousand Needles,16.70,18.61,40,0
    .goto Thousand Needles,17.28,18.93,40,0
    .goto Thousand Needles,17.66,19.46,40,0
    .goto Thousand Needles,17.96,20.18,40,0
    .goto Thousand Needles,17.87,20.78,40,0
    .goto Thousand Needles,17.54,21.49,40,0
    .goto Thousand Needles,17.24,22.32,40,0
    .goto Thousand Needles,17.66,22.98,40,0
    .goto Thousand Needles,18.11,23.65,40,0
    .goto Thousand Needles,18.57,24.07,40,0
    .goto Thousand Needles,18.68,24.68,40,0
    .goto Thousand Needles,18.64,25.90,40,0
    .goto Thousand Needles,18.48,26.74,40,0
    .goto Thousand Needles,17.82,27.50,40,0
    .goto Thousand Needles,17.19,29.60,40,0
    .goto Thousand Needles,15.67,31.56,40,0
    .goto Thousand Needles,15.08,31.63,40,0
    .goto Thousand Needles,14.34,30.13,40,0
    .goto Thousand Needles,13.75,28.54,40,0
    .goto Thousand Needles,13.36,26.97,40,0
    .goto Thousand Needles,13.01,26.31,40,0
    .goto Thousand Needles,11.91,25.02,40,0
    .goto Thousand Needles,11.55,24.44,40,0
    .goto Thousand Needles,11.49,24.07,40,0
    .goto Thousand Needles,11.16,23.21,40,0
    .goto Thousand Needles,11.20,22.29,40,0
    >>Mate |cRXP_ENEMY_Steelsnap|r. Saqueie-o para obter |cRXP_LOOT_Steelsnap's Rib|r
    >>|cRXP_WARN_Ele patrulha no sentido anti-horário|r
    >>|cRXP_WARN_Cuidado, tem dois |cRXP_ENEMY_Hienas|r defendendo-o!|r
    >>|cRXP_WARN_Explore a área por ele com|r |T132172:0|t[Olho de Águia] |cRXP_WARN_se você o treinou|r << Hunter
    >>|cRXP_WARN_Explore a área por ele com|r |T136034:0|t[Visão Distante] |cRXP_WARN_se você o treinou|r << Shaman
    .complete 1131,1 --Collect Steelsnap's Rib (x1)
	.unitscan Steelsnap
step
    .goto Thousand Needles,18.7,22.2,40,0
    .xp 29+500 >>Farme até o nível 29 500+/36300 XP
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Cuidado! Ao fazer isso vai evocar três |cRXP_ENEMY_Galak Assassinos|r |cRXP_WARN_que você tem que proteger |cRXP_FRIENDLY_Kanati|r de|r
    .turnin 4881 >>Entregue Trama de Assassinato
    .accept 4966 >>Aceite Proteger Kanati Nuvem Cinzenta
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>Mate as |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >>Entregue Proteger Kanati Nuvem Cinzenta
    .isQuestComplete 4966
step
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >>Entregue A Dip in the Moonwell
    .accept 9434 >>Aceite Testando a Poção
    .turnin 5151 >>Entregue Hypercapacitor Gizmo
    .target Wizlo Bearingshiner
    .isQuestComplete 5151
    .group
step
    #optional
    .goto Thousand Needles,21.43,32.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wizlo|r
    .turnin 9433 >>Entregue A Dip in the Moonwell
    .accept 9434 >>Aceite Testando a Poção
    .target Wizlo Bearingshiner
step
    #sticky
    #completewith EnterRFK
    .subzone 491,2 >>Agora você deve estar procurando um grupo para Urzal dos Tuscos
    .dungeon RFK
step
    #loop
    .goto Thousand Needles,36.58,38.77,0
    .goto Thousand Needles,36.58,38.77,35,0
    .goto Thousand Needles,37.77,38.17,35,0
    .goto Thousand Needles,36.63,36.23,35,0
    .goto Thousand Needles,34.96,33.22,35,0
    .goto Thousand Needles,33.37,32.85,35,0
    .goto Thousand Needles,33.67,34.09,35,0
    .goto Thousand Needles,34.88,34.82,35,0
    .goto Thousand Needles,35.62,36.20,35,0
    .goto Thousand Needles,36.05,37.41,35,0
    >>Saqueie ground e underwater
    >>|cRXP_ENEMY_Elementais Escaldantes|r e |cRXP_ENEMY_Elementais Fervendo|r são imunes a dano de gelo e altamente resistentes a fogo. Tente evitá-los ou use feiços Arcanos << Mage
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Boiling Elementals|r |cRXP_WARN_lançou|r |T132156:0|t[Steam Jet]|cRXP_WARN_, reducing your chance to hit by 30% for 10 seconds|r << Warrior/Rogue/Shaman/Druid
    >>|cRXP_WARN_Be careful as|r |cRXP_ENEMY_Scalding Elementals|r |cRXP_WARN_lançou|r |T135807:0|t[Scald]|cRXP_WARN_, instantly dealing 150 fire damage and stunning you for 4 seconds|r
    .complete 5062,1 --Collect Incendia Agave (x10)
    .maxlevel 31
step
    #completewith next
    >>|cRXP_WARN_Se possível, peça ao grupo que compartilhe a próxima missão. Pule este passo caso contrário|r
    .accept 1109 >>Aceite Going, Going, Guano!
    .dungeon RFK
step
    #label EnterRFK
    .goto The Barrens,43.46,90.18,0
    .goto The Barrens,43.46,90.18,40,0
    .goto 1414,50.89,70.35
    .subzone 491,2 >>Entre Urzal dos Tuscos
    .dungeon RFK
step
    >>Abate os |cRXP_ENEMY_Kraul Bats|r. Saque-os para obter |cRXP_LOOT_Kraul Guano|r
    .complete 1109,1 --Kraul Guano (1)
    .mob Kraul Bat
    .mob Greater Kraul Bat
    .dungeon RFK
    .isOnQuest 1109
step
    >>Abate |cRXP_ENEMY_Charlga Talhaflanco|r. Saque-a pelo |cRXP_LOOT_Coração|r e pelo |T134939:0|t[|cRXP_LOOT_Pequeno Pergaminho|r]. Usar o pergaminho para iniciar a missão
    .complete 1102,1 --Razorflank's Heart (1)
    .collect 17008,1,6522 --Collect Small Scroll (1)
    .accept 6522 >>Aceite Uma Aliança Profana
    .mob Charlga Razorflank
    .use 17008
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Importador Willix|r
    >>|cRXP_WARN_Isso iniciará uma escolta|r
    .accept 1144 >>Aceite Importador Willix
    .target Willix the Importer
    .dungeon RFK
step
    >>Acompanhe |cRXP_FRIENDLY_Importador Willix|r através de Urzal dos Tuscos
    >>|cRXP_WARN_Mantenha-se perto de |cRXP_FRIENDLY_Willix|r senão a missão pode não ser concluída!|r
    .complete 1144,1 -- Help Willix the Importer escape from Razorfen Kraul
    .isOnQuest 1144
    .target Willix the Importer
    .dungeon RFK
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Importador Willix|r
    .turnin 1144 >>Entregue Importador Willix
    .target Willix the Importer
    .isQuestComplete 1144
    .dungeon RFK
step
    #completewith HSTB
    .hs >>Vá para Penhasco do Trovão
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .use 6948
    .train 3566,1 << Mage
step << Mage
    #completewith HSTB
    .cast 3566 >>|cRXP_WARN_Cast|r |T135765:0|t[Teleporte: Penhasco do Trovão]
    .zoneskip Thunder Bluff
    .train 3566,3
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 8412 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
    .train 3566,3
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 8422 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <32,1
    .train 3566,3
step
    #label HSTB
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Pala
    .isQuestAvailable 4904,1151,5088,5147
step
    .goto Thunder Bluff,61.53,80.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Melor|r
    .turnin 1131 >>Entregue Estalaço
    .accept 1136 >>Aceite Bocarragelo
    .target Melor Stonehoof
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 14319 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <28,1
    .xp >30,1
step << Hunter
    #optional
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 5384 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <30,1
    .xp >32,1
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 14263 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <32,1
step << Hunter
    .goto Thunder Bluff,54.07,84.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hesuwa|r
    .train 24559 >>Treine as magias do seu mascote
    .target Hesuwa Thunderhorn
    .xp <30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.59,85.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ker|r
    .train 7887 >>Treine suas magias de classe
    .target Ker Ragetotem
    .xp <28,1
    .xp >30,1
step << Warrior
    #optional
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm|r
    .train 7369 >>Treine suas magias de classe
    .accept 1718 >>Aceite O Ilhéu
    .target Torm Ragetotem
    .xp <30,1
    .xp >32,1
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm|r
    .train 20658 >>Treine suas magias de classe
    .accept 1718 >>Aceite O Ilhéu
    .target Torm Ragetotem
    .xp <32,1
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Magatha|r
    .turnin 5062 >>Entregue Fogo Sagrado
    .target Magatha Grimtotem
    .isQuestComplete 5062
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Magatha|r
    .accept 5088 >>Aceite Arikara
    .target Magatha Grimtotem
    .isQuestTurnedIn 5062
    .group
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kym|r
    .train 3029 >>Treine suas magias de classe
    .target Kym Wildmane
    .xp <28,1
    .xp >30,1
step << Druid
    #optional
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kym|r
    .train 783 >>Treine suas magias de classe
    .target Kym Wildmane
    .xp <30,1
    .xp >32,1
step << Druid
    .goto Thunder Bluff,76.79,31.81
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kym|r
    .train 22568 >>Treine suas magias de classe
    .target Kym Wildmane
    .xp <32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .train 8104 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <28,1
    .xp >30,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .train 602 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .train 6077 >>Treine suas magias de classe
    .target Miles Welsh
    .xp <32,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 759 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <28,1
    .xp >30,1
step << Mage
    #optional
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 8412 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <30,1
    .xp >32,1
step << Mage
    .goto Thunder Bluff,22.74,14.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shymm|r
    .train 8422 >>Treine suas magias de classe
    .target Archmage Shymm
    .xp <32,1
step << Mage
    .goto Thunder Bluff,22.48,16.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Birgitte|r
    .train 3566 >>Aprenda |T135765:0|t[Teleporte: Penhasco do Trovão]
    .target Birgitte Cranston
    .xp <30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 8053 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <28,1
    .xp >30,1
step << Shaman
    #optional
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 556 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <30,1
    .xp >32,1
step << Shaman
    .goto Thunder Bluff,23.64,18.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Tigor|r
    .train 421 >>Treine suas magias de classe
    .target Tigor Skychaser
    .xp <32,1
step
    #completewith next
    .skill firstaid,150 >>|cRXP_WARN_Criar|r |T133687:0|t[Heavy Wool Bandages] |cRXP_WARN_until your skill is 150|r
    .skill firstaid,<1,1
step
    .goto Thunder Bluff,29.68,21.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pand|r
    .train 7928 >>Treine |T133671:0|t[Bandagem de Seda]
    >>|cRXP_WARN_Pule este passo se você não tinha Tecido de Lã suficiente para atingir 150 de habilidade|r
    .target Pand Stonebinder
    .skill firstaid,<1,1
step << !Undead --Quest unavailable to Undeads
    .goto Thunder Bluff,34.42,46.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sage|r
    .accept 1049 >>Aceite Compêndio dos Caídos
    .target Sage Truthseeker
    .dungeon SM
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kuna|r
    .vendor >>|cRXP_BUY_Compre um|r |T135495:0|t[Arco Recurvo Robusto Arco] |cRXP_BUY_dela se estiver disponível|r
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.9
    .target Kina Chifre Troante
    .money <1.9467
    .isQuestAvailable 4904,1151,5088,5147
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dela|r
    .collect 3030,1800,1153,1 --Razor Arrow (1800)
    .target Kina Chifre Troante
step << Shaman/Warrior
    #ssf
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Delgo|r
    .vendor >>|cRXP_BUY_Compre um|r |T132408:0|t[Machado Impiedoso] |cRXP_BUY_dele se estiver disponível|r
    >>|cRXP_WARN_Alternativamente, você pode comprar um|r |T135576:0|t[Bullova]
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Totem da Fúria
    .isQuestAvailable 4904,1151,5088,5147
step << Shaman/Warrior
    #ah
    .goto Thunder Bluff,54.06,57.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Delgo|r
    .vendor >>|cRXP_BUY_Compre um|r |T132408:0|t[Machado Impiedoso] |cRXP_BUY_dele se estiver disponível|r
    >>|cRXP_WARN_Alternativamente, você pode comprar um|r |T135576:0|t[Bullova] |cRXP_WARN_ou verifique a Casa de Leilões se houver algo melhor disponível|r
    .money <3.0195
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<21.0
    .itemcount 12249,<1
    .target Delgo Totem da Fúria
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compre uma|r |T135275:0|t[Espada Larga] |cRXP_BUY_dele|r
    >>|cRXP_WARN_Alternativamente, você pode verificar a Casa de Leilões se algo melhor estiver disponível|r
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compre uma|r |T135275:0|t[Espada Larga] |cRXP_BUY_dele|r
    .collect 2520,1,1153,1 --Collect Broadsword (1)
    .money <2.5924
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_Equipe o|r |T135275:0|t[Espada Larga]
    .use 2520
    .itemcount 2520,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.6
step << Rogue
    #ah
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compre um|r |T135651:0|t[Adaga de Bloqueio] |cRXP_BUY_dela para sua mão secundária|r
    >>|cRXP_WARN_Alternativamente, você pode verificar a Casa de Leilões se algo melhor estiver disponível|r
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #ssf
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kard|r|cRXP_BUY_. Compre um|r |T135651:0|t[Adaga de Bloqueio] |cRXP_BUY_dela para sua mão secundária|r
    .collect 2526,1,1153,1 --Collect Main Gauche (1)
    .money <2.0353
    .target Kard Ragetotem
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .isQuestAvailable 4904,1151,5088,5147
step << Rogue
    #optional
    #completewith FreewindHome
    +|cRXP_WARN_Equipe o|r |T135651:0|t[Adaga de Bloqueio]
    .use 2526
    .itemcount 2526,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.5
step
    .goto Thunder Bluff,36.01,59.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Auld|r
    .turnin 1102 >>Entregue A Vingativa Sina
    .target Auld Stonespire
    .isQuestComplete 1102
    .dungeon RFK
step
    #completewith EnterDWM
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .zoneskip The Barrens
step
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tatternack|r
    .turnin 1153 >>Entregue A New Ore Sample
    .target Tatternack Steelforge
    .isQuestComplete 1153
step << Tauren
    #optional
    #completewith next
    .subzone 222 >>Vá para Bloodhoof Village
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xar'Ti|r e |cRXP_FRIENDLY_Zjolnir|r
    .train 132245 >>Aprenda |T136103:0|t[Cavalgar Kodo]
    .vendor >>|cRXP_BUY_Compre um|r |T132253:0|t[|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step
    #label EnterDWM
    .goto The Barrens,50.48,78.72,100 >>Vá para Pântano Vadeoso
    .zoneskip Dustwallow Marsh
    .isQuestAvailable 4904,1151,5088,5147
step
    #optional
	.goto Dustwallow Marsh,29.7,47.6
    >>Clique no |cRXP_PICK_Suspicious Hoofprints|r no chão
    .accept 1268 >>Aceite [DEPRECATED]Pegadas Suspeitas de Cascos
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
	.goto Dustwallow Marsh,29.83,48.24
    >>Clique no plank of wood on the ground
    .accept 1269 >>Aceite [DEPRECATED]Lieutenant Paval Reethe
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #optional
    .goto Dustwallow Marsh,29.63,48.60
    >>Clique no fireplace
    .accept 1251 >>Aceite [DEPRECATED]The Preto Escudo
    .zoneskip Dustwallow Marsh,1
    .xp <30,1
step
    #completewith FlyFreewind
    .goto Dustwallow Marsh,30.65,45.34,40,0
    .goto Dustwallow Marsh,32.28,42.80,40,0
    .goto Dustwallow Marsh,33.12,40.85,40,0
    .goto Dustwallow Marsh,33.55,38.71,40,0
    .goto Dustwallow Marsh,34.73,37.66,40,0
    .goto Dustwallow Marsh,34.31,34.40,40,0
    .goto Dustwallow Marsh,33.30,31.23,40,0
    .goto Dustwallow Marsh,36.64,31.72,120,0
    .subzone 496 >>Viaje até Brackenwall Village
    >>|cRXP_WARN_Cuidado! Há inimigos de nível 36-38 na área. Siga a seta do ponto de referência para segurança|r
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krog|r
    .turnin 1268 >>Entregue [DEPRECATED]Suspeito Hoofprints
    .target Krog
    .isOnQuest 1268
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krog|r
    .turnin 1269 >>Entregue [DEPRECATED]Lieutenant Paval Reethe
    .target Krog
    .isOnQuest 1269
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krog|r
    .turnin 1251 >>Entregue [DEPRECATED]The Preto Escudo
    .accept 1321 >>Aceite [DEPRECATED]The Preto Escudo
    .target Krog
    .isOnQuest 1251
step
    #optional
    .goto Dustwallow Marsh,36.41,31.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Krog|r
    .accept 1321 >>Aceite [DEPRECATED]The Preto Escudo
    .target Krog
    .isQuestTurnedIn 1251
step
    #optional
    .goto Dustwallow Marsh,36.50,30.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Do'gol|r
    .turnin 1321 >>Entregue [DEPRECATED]The Preto Escudo
    .target Do'gol
    .isQuestTurnedIn 1251
step << Warrior/Shaman
    .goto Dustwallow Marsh,36.17,31.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Zulrg|r
    .vendor >>|cRXP_BUY_Compre um|r |T135158:0|t[Trocho] |cRXP_BUY_dele se estiver disponível|r
    --.collect 12251,1,873,1 --Collect Big Stick (1)
    .money <4.3117
    .target Zulrg
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<25.6
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balai|r
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Cura Potions] |cRXP_BUY_e|r |T134937:0|t[Pergaminhos] |cRXP_BUY_dela se estiverem disponíveis|r
    .target Balai Lok'Wein
step
    .goto Dustwallow Marsh,36.49,30.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Balai|r
    >>|cRXP_BUY_Compre os|r |T133735:0|t[Primeiros Socorros Manuals] |cRXP_BUY_dela|r
    .collect 16112,1,873,1 >>Manual: Bandagem Grossa de Seda (1)
    .collect 16113,1,873,1 >>Manual: Bandagem de Magitrama (1)
    .collect 16084,1,873,1 >>Manual: Socorrista Perito - Under Wraps (1)
    .target Balai Lok'Wein
    .skill firstaid,<1,1
step
    #label FlyFreewind
    #completewith FreewindHome
    .goto Dustwallow Marsh,35.57,31.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shardi|r
    .fp Brackenwall >>Aprenda a rota de voo para Brackenwall Village
    .fly Freewind Post >>Voe para Freewind Post
    .target Shardi
    .zoneskip Thousand Needles
step
    .goto Thousand Needles,44.90,48.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Elu|r
    .turnin 4767 >>Entregue Mantícora
    .target Elu
    .isQuestComplete 4767
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Compre um|r |T135495:0|t[|cRXP_FRIENDLY_Arco Curto Denso|r] |cRXP_BUY_dele se estiver disponível|r
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montarr|r
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Cura Potions] |cRXP_BUY_e|r |T134937:0|t[Pergaminhos] |cRXP_BUY_dele se estiverem disponíveis|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_,\32|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .isQuestAvailable 4904,1151,5088,5147
    .subzoneskip 484,1
step
    #label FreewindHome
    .goto Thousand Needles,46.07,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Abeqwa|r
    .home >>Defina sua Pedra de Retorno em Freewind Post
    .target Innkeeper Abeqwa
    .bindlocation 484
    .subzoneskip 484,1
step
    .goto Thousand Needles,46.1,50.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Longhorn|r
    .turnin 9434 >>Entregue Testando a Poção
    .target Magistrix Elosai
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorn|r
    .turnin 1150 >>Entregue Teste de Resistência
    .target Dorn Plainstalker
    .isQuestComplete 1150
    .group
step
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorn|r
    .accept 1151 >>Aceite Teste de Força
    .target Dorn Plainstalker
    .isQuestTurnedIn 1150
    .group
    .maxlevel 31
step
    #loop
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    .goto Thousand Needles,13.27,26.74,60,0
    .goto Thousand Needles,9.98,21.71,60,0
    .goto Thousand Needles,24.34,44.72,60,0
    >>Find e kill |cRXP_ENEMY_Rok'Alim the Pounder|r.Saqueie him for his |cRXP_LOOT_Fragmentos|r
    >>|cRXP_WARN_Ele patrulha uma grande parte da área norte/oeste|r
    >>|cRXP_WARN_Pule este passo por enquanto se você não conseguir encontrá-lo|r
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
    .group 2
step
    .goto Thousand Needles,31.47,36.71,30 >>Dirija-se para Darkcloud Pinnacle
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    #completewith next
    .goto Thousand Needles,33.08,35.33,20,0
    .goto Thousand Needles,32.78,32.24,20,0
    .goto Thousand Needles,32.03,31.36,20,0
    .goto Thousand Needles,32.37,28.64,20,0
    .goto Thousand Needles,32.60,27.51,20,0
    .goto Thousand Needles,34.87,31.76,20,0
    .goto Thousand Needles,34.15,35.77,20,0
    .goto Thousand Needles,33.32,36.24,20 >>Suba Darkcloud Pinnacle
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,31.79,32.58
    >>Abra o of the plataeu.Saqueie it for |cRXP_LOOT_Secret Note #1|r
    .complete 5064,1 --Secret Note #1 (1)
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,33.80,39.90
    >>Abra o big tent.Saqueie it for |cRXP_LOOT_Secret Note #1|r
    .complete 5064,2 --Secret Note #2 (1)
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,39.20,41.60
    >>Abra o tent on the eastern plateau.Saqueie it for |cRXP_LOOT_Secret Note #1|r
    .complete 5064,3 --Secret Note #3 (1)
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    #completewith next
    .goto Thousand Needles,35.68,39.25,20,0
    .goto Thousand Needles,34.32,35.74,20,0
    .goto Thousand Needles,35.56,30.94,20,0
    .goto Thousand Needles,36.97,31.97,20 >>Vá em direção à the |cRXP_PICK_Fogueira|ron the northern/eastern plateau
    .isOnQuest 5088
    .maxlevel 31
step
    >>Clear the |cRXP_ENEMY_Grimtotems|re then light the |cRXP_PICK_Fogueira|r
	>>Mate |cRXP_ENEMY_Arikara|r. Saqueie-a para obter o |cRXP_LOOT_Skin|r
    .goto Thousand Needles,38.00,35.30
    .complete 5088,2 --Incendia Powder (1)
    .complete 5088,1 --Arikara Serpent Skin (2)
    .mob Arikara
    .isOnQuest 5088
    .group
    .maxlevel 31
step
    .goto Thousand Needles,38.00,26.80
    >>Mate for his |cRXP_LOOT_Hoof|r
    .complete 5147,1 --Arnak's Hoof (1)
    .mob Arnak Grimtotem
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,38.00,26.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Lakota|r
    >>|cRXP_WARN_Isso iniciará uma escolta|r
    .accept 4904,1 >>Aceite Liberdade, liberdade
    .target Lakota Windsong
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    #label LakoteEscort
    .goto Thousand Needles,38.96,29.46,20,0
    .goto Thousand Needles,37.56,31.43,20,0
    .goto Thousand Needles,36.89,31.73,20,0
    .goto Thousand Needles,35.64,31.01,20,0
    .goto Thousand Needles,34.53,30.78,20,0
    .goto Thousand Needles,33.19,28.54,20,0
    .goto Thousand Needles,32.53,27.44,20,0
    .goto Thousand Needles,32.28,28.67,20,0
    .goto Thousand Needles,32.04,31.37,20,0
    .goto Thousand Needles,32.86,32.62,20,0
    .goto Thousand Needles,33.05,35.42,20,0
    .goto Thousand Needles,31.06,36.89
	>>Escolte |cRXP_FRIENDLY_Lakota|r para a segurança
    >>|cRXP_WARN_Dois|r |cRXP_ENEMY_Grimtotems|r |cRXP_WARN_aparecerão toda vez que ela chegar em uma nova plataforma. Tente ficar à frente dela para limpar as plataformas se tiver respawns atrás|r
	>>|cRXP_WARN_Tenha cuidado, essa missão é DIFÍCIL. Não tenha medo de escapar correndo para trás e falhando na escolta|r
    .complete 4904,1 --Escort Lakota Windsong from the Darkcloud Pinnacle. (1)
    .target Lakota Windsong
    .isQuestTurnedIn 4841
    .maxlevel 31
step
    .goto Thousand Needles,21.54,32.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Motega|r
    .turnin 5088 >>Entregue Arikara
    .target Motega Firemane
    .isQuestComplete 5088
    .group
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kanati|r
    >>|cRXP_WARN_Cuidado! Ao fazer isso vai evocar três |cRXP_ENEMY_Galak Assassinos|r |cRXP_WARN_que você tem que proteger |cRXP_FRIENDLY_Kanati|r de|r
    .turnin 4881 >>Entregue Trama de Assassinato
    .accept 4966 >>Aceite Proteger Kanati Nuvem Cinzenta
    .target Kanati Greycloud
    .isOnQuest 4881
step
    .goto Thousand Needles,21.25,32.05
    >>Mate as |cRXP_FRIENDLY_Kanati|r
    .complete 4966,1 --Protect Kanati Greycloud
    .mob Galak Assassin
    .isOnQuest 4966
step
    .goto Thousand Needles,21.25,32.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kanati|r
    .turnin 4966 >>Entregue Proteger Kanati Nuvem Cinzenta
    .isQuestComplete 4966
step
    #loop
    .goto Thousand Needles,36.10,55.02,0
    .goto Thousand Needles,30.35,51.58,0
    .goto Thousand Needles,24.34,44.72,0
    .goto Thousand Needles,20.88,39.84,0
    .goto Thousand Needles,17.33,36.72,0
    .goto Thousand Needles,13.27,26.74,0
    .goto Thousand Needles,9.98,21.71,0
    .goto Thousand Needles,36.10,55.02,100,0
    .goto Thousand Needles,30.35,51.58,40,0
    .goto Thousand Needles,24.34,44.72,60,0
    .goto Thousand Needles,20.88,39.84,60,0
    .goto Thousand Needles,17.33,36.72,60,0
    .goto Thousand Needles,13.27,26.74,60,0
    .goto Thousand Needles,9.98,21.71,60,0
    .goto Thousand Needles,24.34,44.72,60,0
    >>Find e kill |cRXP_ENEMY_Rok'Alim the Pounder|r.Saqueie him for his |cRXP_LOOT_Fragmentos|r
    >>|cRXP_WARN_Ele patrulha uma grande parte da área norte/oeste|r
    .complete 1151,1 -- Fragments of Rok'Alim (1)
    .unitscan Rok'Alim the Pounder
	.isOnQuest 1151
    .group 2
step
    #label TestofStrengthTI
    .goto Thousand Needles,53.95,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dorn|r
    .turnin 1151 >>Entregue Teste de Força
    .target Dorn Plainstalker
    .isQuestComplete 1151
    .group
step
    #loop
    .line Thousand Needles,51.89,43.02,53.41,46.19,54.05,44.96
    .line Thousand Needles,53.47,46.65,52.61,48.28,53.64,48.50,52.61,48.28,51.48,48.06
    .line Thousand Needles,62.21,47.76,63.05,48.92,62.63,48.38,62.96,47.64,64.01,47.52,63.92,46.63,63.10,45.53
    .line Thousand Needles,65.83,51.44,65.87,51.01,65.44,50.11,64.91,50.30,65.44,50.11,66.11,49.91,66.32,49.13
    .line Thousand Needles,59.79,58.16,59.53,58.57,58.87,58.69,57.66,57.70,58.87,58.69,58.93,57.68,58.94,56.55,58.97,54.98,59.32,53.69,59.79,58.16
    .goto Thousand Needles,51.89,43.02,40,0
    .goto Thousand Needles,53.41,46.19,40,0
    .goto Thousand Needles,54.05,44.96,40,0
    .goto Thousand Needles,53.47,46.65,40,0
    .goto Thousand Needles,52.61,48.28,40,0
    .goto Thousand Needles,53.64,48.50,40,0
    .goto Thousand Needles,51.48,48.06,40,0
    .goto Thousand Needles,59.69,47.76,40,0
    .goto Thousand Needles,62.21,47.76,40,0
    .goto Thousand Needles,62.63,48.38,40,0
    .goto Thousand Needles,64.01,47.52,40,0
    .goto Thousand Needles,63.92,46.63,40,0
    .goto Thousand Needles,63.10,45.53,40,0
    .goto Thousand Needles,65.83,51.44,40,0
    .goto Thousand Needles,65.44,50.11,40,0
    .goto Thousand Needles,64.91,50.30,40,0
    .goto Thousand Needles,66.11,49.91,40,0
    .goto Thousand Needles,66.32,49.13,40,0
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,58.87,58.69,40,0
    .goto Thousand Needles,57.66,57.70,40,0
    .goto Thousand Needles,58.93,57.68,40,0
    .goto Thousand Needles,58.94,56.55,40,0
    .goto Thousand Needles,58.97,54.98,40,0
    .goto Thousand Needles,59.32,53.69,40,0
    .goto Thousand Needles,59.79,58.16,40,0
    .goto Thousand Needles,59.79,58.16,0
    >>Mate os |cRXP_ENEMY_Gravelsnout Agrimensores|r, os |cRXP_ENEMY_Gravelsnout Escavadores|r e o |cRXP_ENEMY_Gibblesnik|r (se ele estiver disponível). Saque-os para um |cRXP_LOOT_Ore Sample|r
    .complete 1153,1 --Unrefined Ore Sample (1)
    .unitscan Gravelsnout Digger;Gravelsnout Surveyor;Gibblesnik
    .isOnQuest 1153
step
    #optional
    .goto Thousand Needles,43.12,36.86
    .xp 30 >>Suba até o nível 30
step
    #label ShimmeringF
    #completewith next
    .goto Thousand Needles,70.58,62.69,200 >>Viagem para as Planícies Cintilantes
    .subzoneskip 439
step
    .goto Thousand Needles,77.79,77.26
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Kravel|r
    .accept 1111 >>Aceite Mestre Portuário Caruncho
	.accept 5762 >>Aceite Rosarães Guima
	.target Kravel Koalbeard
step
    #completewith FWHS
    .goto Thousand Needles,75.44,97.37,40,0
    .goto Tanaris,51.60,25.44,100 >>Vá para Gadgetzan
    .zoneskip Tanaris
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >>Aprenda a rota de voo para Gadgetzan
    .fly freewind Post >>Voe para Freewind Post
    .target Bulkrek Ragefist
    .cooldown item,6948,<0
    .subzoneskip 484
step
    .goto Tanaris,51.60,25.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bulkrek|r
	.fp Gadgetzan >>Aprenda a rota de voo para Gadgetzan
    .target Bulkrek Ragefist
    .cooldown item,6948,>0,1
step
    #label FWHS
    .hs >>Hearth to Aldeia Vento Livre
    .goto Thousand Needles,46.06,51.41,30 >>Chegue no Posto Vento Livre
    .use 6948
    .cooldown item,6948,>0,1
    .subzoneskip 484
    .bindlocation 484,1
step
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Longhorn|r
    .turnin 5064 >>Entregue Grimtotem Espionagem
    .turnin 5147 >>Entregue Wanted - Arnak Temível Totem
    .target Cliffwatcher Longhorn
    .isQuestComplete 5064
    .isQuestComplete 5147
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Longhorn|r
    .turnin 5064 >>Entregue Grimtotem Espionagem
    .target Cliffwatcher Longhorn
    .isQuestComplete 5064
step
    #optional
    .goto Thousand Needles,45.70,50.66
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Longhorn|r
    .turnin 5147 >>Entregue Wanted - Arnak Temível Totem
    .target Cliffwatcher Longhorn
    .isQuestComplete 5147
step
    .goto Thousand Needles,46.00,51.50
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thalia|r
    .turnin 4904 >>Entregue Liberdade, liberdade
    .target Thalia Amberhide
    .isQuestComplete 4904
step
    .goto Thousand Needles,45.15,50.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Montarr|r
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Cura Potions] |cRXP_BUY_e|r |T134937:0|t[Pergaminhos] |cRXP_BUY_dele se estiverem disponíveis|r << !Warrior
    .vendor >>|cRXP_BUY_Buy|r |T134831:0|t[Healing Potions]|cRXP_BUY_,\32|r|T134937:0|t[Scrolls] |cRXP_BUY_and|r |T134413:0|t[Liferoot] |cRXP_BUY_from him if they're up|r << Warrior
    .target Montarr
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Starn|r
    .vendor >>|cRXP_BUY_Compre um|r |T135495:0|t[|cRXP_FRIENDLY_Arco Curto Denso|r] |cRXP_BUY_dele se estiver disponível e encha sua aljava com flechas|r
    .collect 3030,1800,1111,1 --Razor Arrow (1800)
    .target Starn
    .money <2.7172
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<14.2
    .subzoneskip 484,1
step << Hunter
    .goto Thousand Needles,44.89,50.68
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Starn|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dele|r
    .collect 3030,1800,1111,1 --Razor Arrow (1800)
    .target Starn
    .subzoneskip 484,1
step
    #optional
    .abandon 1151 >>Abandone Teste de Força
step
    #optional
    .abandon 5147 >>Abandone Wanted - Arnak Temível Totem
step
    #optional
    .abandon 5064 >>Abandone Grimtotem Espionagem
step
    #optional
    .abandon 5088 >>Abandone Arikara
step
    #optional
    .abandon 1152 >>Abandone Teste de Saber
step
    #completewith OreSampleTI
    .goto Thousand Needles,45.15,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyse|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Nyse
    .subzoneskip 484,1
step
    #label OreSampleTI
    .goto The Barrens,45.10,57.70
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tatternack|r
    .turnin 1153 >>Entregue Uma Nova Amostra de Minério
    .target Tatternack Steelforge
    .isOnQuest 1153
step << Tauren
    #optional
    #completewith next
    .subzone 222 >>Vá para Bloodhoof Village
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Tauren
    #optional
    #label KodoRiding
    .goto Mulgore,47.64,58.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xar'Ti|r e |cRXP_FRIENDLY_Zjolnir|r
    .train 132245 >>Aprenda |T136103:0|t[Cavalgar Kodo]
    .vendor >>|cRXP_BUY_Compre um|r |T132253:0|t[|cFF0070FFKodo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kar Stormsinger
    .target Harb Clawhoof
step << Tauren
    #optional
    #completewith FlyCR
    .subzone 378 >>Viaje para Camp Taurajo
    .skill riding,<75,1
step
    #completewith SwarmGrows
    #label FlyCR
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Crossroads>>Voe para Encruzilhada
    .target Omusa Thunderhorn
    .subzoneskip 484
step
    #optional
    #completewith SwarmGrows
    .goto Thousand Needles,45.15,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyse|r
    .fly Crossroads>>Voe para Encruzilhada
    .target Nyse
    .subzoneskip 484,1
step
    #label SwarmGrows
    .goto The Barrens,51.10,29.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Korran|r
    .accept 1145 >>Aceite The Enxame Grows
    .target Korran
step << !Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
	.target Devrak
    .subzoneskip 392
step << Warrior
    #completewith WharfDizzy
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
	.target Devrak
    .subzoneskip 392
    .isOnQuest 1718
step << Warrior
    #completewith IslanderPickUp
    .goto The Barrens,51.50,30.34
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
	.target Devrak
    .zoneskip Orgrimmar
    .isNotOnQuest 1718
step << Warrior
    #completewith next
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >>Entregue O Enxame Cresce
    .accept 1146 >>Aceite The Enxame Grows
    .target Belgrom Rockmaul
step << Warrior
    #label IslanderPickUp
    .goto Orgrimmar,80.37,32.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sorek|r
	.accept 1718 >>Aceite O Ilhéu
    .target Sorek
step << Warrior
    #completewith WharfDizzy
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Doras
    .zoneskip Orgrimmar,1
step
    #sticky
    #completewith EnterGNOMER
    .zone 721,2 >>Agora você deve estar procurando um grupo para Gnomeregan
    .dungeon GNOMER
step
    #label WharfDizzy
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1111 >>Entregue Mestre Portuário Caruncho
    .accept 1112 >>Aceite Parts for Kravel
    .target Wharfmaster Dizzywig
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r
    .turnin 220 >>Entregue Clamor da água
    .accept 63 >>Aceite Chamado da Água
    .target Islen Waterseer
step << Shaman
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r
    >>|cRXP_WARN_Certifique-se de que você obtenha o|r |T134754:0|t[|cRXP_LOOT_Água Sapta - Missão|r]
    .turnin 972 >>Entregue Água Sapta - Missão
	.collect 6637,1 --Water Sapta (1)
    .target Islen Waterseer
    .itemcount 6637,<1
step << Warrior
    #completewith next
    .goto The Barrens,65.09,47.81,90,0
    .goto The Barrens,68.61,49.16,100 >>Viaje até Fray Island
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Klannoc|r
    .turnin 1718 >>Entregue The Islander
    .accept 1719 >>Aceite The Affray - Missão - Missão - Missão
    .target Klannoc Macleod
step << Warrior
	>>Pise na grelha atrás de você. Rapidamente mate os |cRXP_ENEMY_Desafiadores de Combate|r que vêm um por um.
    >>Mate 
    .goto The Barrens,68.59,48.76
    .complete 1719,1 --Step on the grate to begin the Affray (1)
    .complete 1719,2 --Big Will (1)
    .mob Big Will
step << Warrior
    .goto The Barrens,68.62,49.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Klannoc|r
    >>|cRXP_WARN_Isto vai te ensinar Postura de Berserker|r
    .turnin 1719 >>Entregue The Affray - Missão - Missão - Missão
    .accept 1791 >>Aceite The Windwatcher
    .target Klannoc Macleod
step << !Mage
    #optional << !Warrior !Shaman
    #completewith FlyOrg2
    .goto The Barrens,62.81,37.91,200 >>Voe de volta para Ratchet
    .subzoneskip 392
step
    #completewith next
    .goto The Barrens,63.74,38.66
    .zone Stranglethorn Vale >>Pegue o barco para Stranglethorn Vale
    .zoneskip Stranglethorn Vale
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Scooty|r
    .turnin 2842 >>Entregue Engenheiro-chefe Scooty
    .accept 2843 >>Aceite E Lá Vamos Nós!
    .target Scooty
    .timer 9 >> Goblin Transponder
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.60,77.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Scooty|r
    .turnin 2843 >>Entregue E Lá Vamos Nós!
    .target Scooty
    .dungeon GNOMER
step
    .goto Stranglethorn Vale,27.63,77.55
    .goto Eastern Kingdoms,42.75,59.93,30 >>Suba no Gnomeregan Transponder
    .dungeon GNOMER
step
    #label EnterGNOMER
    .goto Eastern Kingdoms,42.64,59.80,20,0
    .goto Eastern Kingdoms,42.58,59.82,20,0
    .goto Eastern Kingdoms,42.56,59.87,20,0
    .goto Eastern Kingdoms,42.51,60.15,20,0
    .goto Eastern Kingdoms,42.34,60.18
    .zone 721,2 >>Entre em Gnomeregan
    .dungeon GNOMER
step
    >>Abate |cRXP_ENEMY_Mecangenheiro Termaplugue|r. Saqueie-o pelo |cRXP_LOOT_Safe Combination|r
    >>Saque o |cRXP_PICK_Seguro de Thermaplugg|r no lado norte da sala para obter |cRXP_LOOT_Rig Blueprints|r
    .complete 2841,2 --Thermaplugg's Safe Combination (1)
    .complete 2841,1 --Rig Blueprints (1)
    .mob Mekgineer Thermaplugg
    .dungeon GNOMER
step << !Mage
	.hs >>Hearth to Aldeia Vento Livre
    .use 6948
    .subzoneskip 484
    .bindlocation 484,1
    .dungeon GNOMER
step << !Mage
    .goto Thousand Needles,45.14,49.11
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nyse|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Nyse
    .zoneskip Thousand Needles,1
    .dungeon GNOMER
step << !Mage
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Bragok
    .zoneskip The Barrens,1
step << Mage
    .cast 3567 >>|cRXP_WARN_Lance|r |T135759:0|t[Teleporte: Orgrimmar]
    .zoneskip Orgrimmar
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 8412 >>Treine suas magias de classe
    .target Pephredo
    .xp <30,1
    .xp >32,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 8422 >>Treine suas magias de classe
    .target Pephredo
    .xp <32,1
step << Mage
    .goto Orgrimmar,45.43,56.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Horthus|r|cRXP_BUY_. Compre dois ou mais|r |T134419:0|t[Runa de Teleporte] |cRXP_BUY_dele|r
    .collect 17031,2 --Rune of Teleportation (2)
    .target Horthus
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 1760 >>Treine suas magias de classe
    .target Ormok
    .xp <30,1
    .xp >32,1
step << Rogue
    #optional
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 8623 >>Treine suas magias de classe
    .target Ormok
    .xp <32,1
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkul|r
	.vendor >>|cRXP_BUY_Estoqueie|r |T134387:0|t[Pó de Clarão] |cRXP_BUY_e|r |T132273:0|t[Venenos]
    .target Rekkul
    .zoneskip Orgrimmar,1
step << Shaman
    .goto Orgrimmar,37.95,37.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Searn|r
    .trainer >>Treine suas magias de classe
    .accept 1531 >>Aceite Call of Ar - Missão - Missão
    .target Searn Firewarder
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 5784 >>Aprenda |T136103:0|t[Evocar Corcel Vil]
    .target Mirket
    .xp <30,1
    .xp >32,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 6213 >>Treine suas magias de classe
    .target Mirket
    .xp <32,1
step << Warlock
    .goto Orgrimmar,47.52,46.73
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r
	.vendor >>Compre qualquer melhoria de mascote que possa pagar
	.target Kurgul
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ah
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135466:0|t[Varinha Pestilenta] |cRXP_BUY_dela|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step << Priest/Warlock
    #ssf
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135466:0|t[Varinha Pestilenta] |cRXP_BUY_dela|r
    >>|cRXP_WARN_Alternativamente, você pode verificar a Casa de Leilões se algo melhor estiver disponível|r
    .collect 5347,1 --Collect Pestilent Wand (1)
    .money <1.5713
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<26.9
    .target Katis
    .zoneskip Orgrimmar,1
step
    .goto Orgrimmar,44.70,52.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Covarde|r
    >>|cRXP_WARN_Ele patrulha na Fenda das Sombras|r
    .accept 1431 >>Aceite Relações da Aliança
    .target Craven Drok
step
    .goto Orgrimmar,75.00,34.10
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Belgrom|r
    .turnin 1145 >>Entregue O Enxame Cresce
    .accept 1146 >>Aceite The Enxame Grows
    .target Belgrom Rockmaul
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 7369 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <30,1
    .xp >32,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 20658 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 5384 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <30,1
    .xp >32,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 14263 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <32,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24559 >>Treine as magias do seu mascote
    .target Xao'tsu
    .xp <30,1
step
    .goto Orgrimmar,76.00,25.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nogg|r
    .turnin 2841 >>Entregue Rig Wars
    .target Nogg
    .dungeon GNOMER
    .isQuestComplete 2841
step << Orc !Warlock
    #optional
    .goto Orgrimmar,69.40,13.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kildar|r e |cRXP_FRIENDLY_Ogunaro|r
    .train 825 >>Aprenda |T136103:0|t[Cavalgar Lobo]
    .vendor >>|cRXP_BUY_Compre um|r |T132224:0|t[|cFF0070FFLobo|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Kildar
    .target Ogunaro Wolfrunner
step << Hunter
    .goto Orgrimmar,78.11,38.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Jin'sora|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Razor Flechas] |cRXP_BUY_dele|r
    .collect 3030,1800,549,1 << Hunter --Razor Arrow (1800)
    .target Jin'sora
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Treine Machados de Duas Mãos
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 602 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <30,1
    .xp >32,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 6077 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <32,1
step << Paladin
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pyreanor|r
    .train 34769 >>Aprenda |T136103:0|t[Evocar Cavalo de Guerra]
    .target Master Pyreanor
    .xp <30,1
    .xp >32,1
step << Paladin
    #optional
    .goto Orgrimmar,32.29,35.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Pyreanor|r
    .train 19836 >>Treine suas magias de classe
    .target Master Pyreanor
    .xp <32,1
step
    .goto Orgrimmar,22.50,52.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Keldran|r perto da saída ocidental de Orgrimmar
    .turnin 1431 >>Entregue Relações da Aliança
    .accept 1432 >>Aceite Relações da Aliança
    .target Keldran
step << Troll
    #optional
    #completewith next
    .subzone 367 >>Vá para Sen'Jin Village
    .xp <30,1
    .money <38
    .skill riding,75,1
step << Troll
    #optional
    .goto Durotar,55.28,75.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xar'Ti|r e |cRXP_FRIENDLY_Zjolnir|r
    .train 10861 >>Aprenda |T136103:0|t[Cavalgar Raptor]
    .vendor >>|cRXP_BUY_Compre um|r |T132253:0|t[|cFF0070FFRaptor|r]
    .xp <30,1
    .money <38
    .skill riding,75,1
    .target Xar'Ti
    .target Zjolnir
]])
