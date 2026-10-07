if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde Mage
#name 12-17 The Barrens AdE
#version 1
#group Guia Forever (H)
#subgroup Speedrun Guia Mago AdE
#defaultfor Horde Mage
#next 17-21 Stonetalon/Barrens AdE

step << Mage
	#era/som
    #completewith next
	+Observe que você selecionou o guia AdE. O AdE é normalmente muito mais difícil que mago de alvo único, mas MUITO mais rápido
step << Mage
	#som
	#phase 3-6
    #completewith next
	+Observe que você selecionou o guia AdE. O AdE é normalmente muito mais difícil que mago de alvo único, e também é mais lento devido às mudanças recentes de 100% de XP de missão em SoM
step
    .goto 1413/1,-2666.68,-481.94--??
.target Tonga Runetotem
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .accept 870 >>Aceite Os Charcos Esquecidos
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 842 >>Entregue Encruzilhada Conscription
.target Sergra Darkthorn
    .accept 844 >>Aceite A Ameaça Pinote
step << Troll Mage
    .goto 1413/1,-2697.08,-400.86
.target Zargh
>>Fale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Fale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Na Cola dos Larápios
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Fale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos para a Encruzilhada
step
    .goto 1413/1,-2595.75,-441.40
    .fp The Crossroads >>Aprenda a rota de voo da Encruzilhada
step << Troll Mage
    >>NÃO vá para Orgrimmar
    .goto 1413/1,-2595.75,-434.64
>>Fale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entregue Encomenda para Gryshka
.target Devrak
    .accept 6384 >>Aceite Carona para Orgrimmar
step
    .goto 1413/1,-2595.75,-421.13
.target Apothecary Helbrim
>>Fale com o |cRXP_FRIENDLY_Boticário Hermógenes|r
    .accept 848 >>Aceite Esporos de Fungos
    .accept 1492 >>Aceite Mestre Portuário Caruncho
step
    #sticky
    #completewith next
    >>Verifique este local por Barril Vazio do Chen. Saque-o e comece a missão, caso contrário você o pegará mais tarde
    .goto 1413/1,-3021.35,-231.96
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    .goto 1413/1,-3011.22,-184.66
    >>Mate Quilboars na área
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,3 --Razormane Hunter (3)
step << !Undead
    #sticky
    #completewith next
    >>Se a Pedra do Poder Defeituosa na mochila tem menos de 10 minutos restantes, solte-a, depois volte e pegue a Pedra Roxa ao lado de Ak'Zeloth novamente
    .turnin 926 >>Entregue Pedra do Poder Defeituosa
step << !Undead
    #sticky
    #completewith BeakCave
    >>Mate alguns Plainstriders se você tiver tempo em Pedra do Poder Defeituosa. Saqueie-os para obter Beaks
    .complete 844,1 --Plainstrider Beak (7)
step << !Undead
    .goto 1413/1,-2484.28,126.12,20 >>Suba a montanha aqui
step << !Undead
    #label BeakCave
    .goto 1413/1,-2200.55,315.3,20 >>Vá para a caverna cercada por Orcs da Lâmina Ardente
step << !Undead
    >>Clique com botão direito no Altar
    .goto 1413/1,-2241.08,322.06
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Mate Raptors que você vê. Saqueie-os para obter algumas Cabeças de Raptor — você conseguirá mais depois
    .complete 869,1 --Raptor Head (12)
step
    >>Mate Plainstriders. Saqueie-os para obter Beaks
    .goto 1413/1,-2524.82,-556.26
    .complete 844,1 --Plainstrider Beak (7)
step
    >>No topo da torre
    .goto 1413/1,-2595.75,-475.18
>>Fale com |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entregue Em Defesa do Posto Remoto
.target Thork
    .accept 872 >>Aceite A Ofensiva do Posto Remoto
.target Darsok Swiftdagger
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .accept 867 >>Aceite As Harpias Bandoleiras
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 844 >>Entregue A Ameaça Pinote
.target Sergra Darkthorn
    .accept 845 >>Aceite As Zevras
step
    #sticky
    #completewith Crates
    >>Mate Razormanes enquanto pega os caixotes e mata Kreenig
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith next
    >>Saqueie os caixotes marrons encontrados na área
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
    >>Mate Kreenig Rosnento. Saqueie-o para obter sua Presa
    .goto 1413/1,-3315.22,-218.44
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto 1413/1,-3305.08,-231.96,40,0
    .goto 1413/1,-3294.95,-211.69.0,40,0
    .goto 1413/1,-3305.08,-130.61,40,0
    .goto 1413/1,-3396.28,-63.05,40,0
    >>Saqueie os caixotes marrons encontrados na área
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto 1413/1,-3122.68,-96.83
    >>Termine de matar os Razormanes
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Mate Zhevras. Saqueie-os para obter Cascos
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto 1413/1,-3690.15,254.49
.target Ak'Zeloth
>>Fale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entregue A Semente Demônioíaca
step
    >>Mate qualquer Zhevra que você vir. Saque-as para Cascos. Certifique-se de que tem 4 antes de entrar em Ponto de Ancoragem
    .goto 1413/1,-3257.46,277.46,150,0 << Undead
    .goto 1413/1,-3852.28,-806.24
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Andar superior do edifício
    .goto 1413/1,-3730.68,-840.02
.target Gazlowe
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .accept 887 >>Aceite Os Flibusteiros dos Mares do Sul
step
    .goto 1413/1,-3771.22,-894.07
    .fp Ratchet >>Aprenda a rota de voo para Ratchet
step
    .goto 1413/1,-3761.08,-900.83
.target Sputtervalve
>>Fale com |cRXP_FRIENDLY_Cobogó|r
    .accept 894 >>Aceite A Rebimboca
step
    >>Clique no Cartaz Procurado. Você também pode usar o banco aqui, se quiser.
    .goto 1413/1,-3720.55,-921.09
    .accept 895 >>Aceite Procura-se: Capitão Garvão
step
    .goto 1413/1,-3700.28,-934.61
.target Mebok Mizzyrix
>>Fale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 865 >>Aceite Chifres de Raptor
step
    .goto 1413/1,-3690.15,-981.90
>>Fale com o |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 819 >>Entregue Barril Vazio do Chen
.target Brewmaster Drohn
    .accept 821 >>Aceite Barril Vazio do Chen
step
    #sticky
    #label Southsea
    >>Mate os Southsea na área
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    .goto 1413/1,-3882.68,-1569.69,40,0
    .goto 1413/1,-3821.88,-1704.82,40,0
    .goto 1413/1,-3720.55,-1745.36,40,0
    >>Mate Capitão Garvão. Saqueie-o para a Cabeça.
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto 1413/1,-3730.68,-840.02
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 887 >>Entregue Os Flibusteiros dos Mares do Sul
.target Gazlowe
    .accept 890 >>Aceite [DEPRECATED]O Carregamento Desaparecido
    .turnin 895 >>Entregue Procura-se: Barão Longacosta
step
    .goto 1413/1,-3791.48,-981.90
>>Fale com o |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 1492 >>Entregue Mestre Portuário Caruncho
    .turnin 890 >>Entregue [DEPRECATED]O Carregamento Desaparecido
.target Wharfmaster Dizzywig
    .accept 892 >>Aceite [DEPRECATED]O Carregamento Desaparecido
    .accept 896 >>Aceite A Fortuna do Mineiro
step
    .goto 1413/1,-3730.68,-840.02
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 892 >>Entregue [DEPRECATED]O Carregamento Desaparecido
.target Gazlowe
    .accept 888 >>Aceite Butim Roubado
step
    .goto 1413/1,-3769.19,-898.12
    .fly Crossroads >>Voe para a Encruzilhada
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Fale com |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .turnin 872 >>Entregue A Ofensiva do Posto Remoto
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 845 >>Entregue As Zevras
.target Sergra Darkthorn
    .accept 903 >>Aceite Predadores dos Ermos
step
    #sticky
    #completewith next
    >>Mate Plainstriders. Saque-os para Rins.
    .complete 821,2 --Plainstrider Kidney (5)
step
    #label RegtharDeathgate1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Aceite Os Líderes Kolkar
    .accept 855 >>Aceite Braçadeiras de Centauro
    .target Regthar Deathgate
step
    #completewith KodobaneTurnin
    >>Abate os |cRXP_ENEMY_Kolkar Wranglers|r e os |cRXP_ENEMY_Kolkar Stormers|r. Saque-os por seus |cRXP_LOOT_Bracers|r
    >>|cRXP_WARN_Esta missão não precisa ser concluída agora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith Barak
    >>Colete os |cRXP_LOOT_Laden Mushrooms|r em volta dos Charcos Esquecidos
    >>|cRXP_WARN_Esta missão não precisa ser concluída agora|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto 1413/1,-1943.16,89.64
    >>Mergulhe debaixo d'água até a |cRXP_PICK_Fissura Borbulhante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>Abate |cRXP_ENEMY_Barak Findekodo|r. Saque-o por sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Tenha cuidado, pois os golpes corpo a corpo de |cRXP_ENEMY_Barak Findekodo|r causam MUITO dano e ele é protegido por um |cRXP_ENEMY_Cavalgante Kolkar|r. Eles podem prendê-lo e atirar de longe|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entregue Os Líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entregue Os Líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
step
    #sticky
    #completewith Claws
    >>Mate os Raptors que você vê. Saqueie-os para obter algumas Cabeças de Raptor - você receberá mais depois
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith next
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
	>>Não foque em capturá-los agora
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>Mate os Prowlers. Saqueie-os para obter suas Garras e Presas
    .goto 1413/1,-1572.28,-42.78
    .complete 903,1 --Prowler Claws (7)
step
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Mate as Harpies. Saqueie-as para obter suas Garras
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto 1413/1,-1815.48,788.24
    >>Se você ainda não obteve a Maça Pesada com Pontas, considere comprá-la de Vrang Sanguebravo << Druid/Warrior
    .vendor >>Vá ao vendedor se necessário
step
    #sticky
    #completewith next
    >>Mate Plainstriders. Saque-os para Rins.
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Mate os Raptors. Saqueie-os para obter suas Cabeças
    .complete 869,1 --Raptor Head (12)
step
    >>Clique no Painel de Controle
    .goto 1413/1,-2686.95,828.77
    .turnin 894 >>Entregue A rebimboca
    .accept 900 >>Aceite A Rebimboca
step
    >>Clique na Válvula
    .goto 1413/1,-2686.95,842.29
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Clique na Válvula. Inimigos aparecerão quando você clicar
    .goto 1413/1,-2676.82,842.29
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto 1413/1,-2676.82,828.77
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Clique no Painel de Controle
    .goto 1413/1,-2686.95,828.77
    .turnin 900 >>Entregue A rebimboca
    .accept 901 >>Aceite A Rebimboca
step
    >>Mate o Engenhoqueiro Faísca no prédio. Saqueie-o para obter a Chave do Console
    .goto 1413/1,-2727.48,909.85
    .complete 901,1 --Console Key (1)
step
    .goto 1413/1,-2686.95,828.77
    .turnin 901 >>Entregue A rebimboca
    .accept 902 >>Aceite A Rebimboca
step
    >>Aceite Ignição do Retalhador
    .goto 1413/1,-3102.42,1105.78
.target Wizzlecrank's Shredder
>>Fale com o |cRXP_FRIENDLY_Retalhador de Wizzlecrank|r
    .accept 858 >>Aceite Ignição
step
    >>É importante farmar até o nível 16 aqui, porque as próximas 3 missões são bem difíceis.
	.xp 16 >>Suba até o nível 16
step
    >>Mate o Supervisor Rancatraca (Ele patrulha por toda a torre). Saqueie-o para obter a Chave de Ignição
	.goto 1413/1,-3082.15,1031.46
    .complete 858,1 --Ignition Key (1)
step
    >>Isto iniciará uma escolta
    .goto 1413/1,-3102.42,1105.78
>>Fale com o |cRXP_FRIENDLY_Retalhador de Wizzlecrank|r
    .turnin 858 >>Entregue Ignição
.target Wizzlecrank's Shredder
    .accept 863 >>Aceite A fuga
step
    #label Slugs
    >>2 inimigos aparecerão em algum momento. Mate-os e depois espere a encenação no final
    .goto 1413/1,-2980.82,1085.51
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Farme inimigos na área. Saqueie-os até que a Esmeralda de Olho de Gato caia
    .goto 1413/1,-3609.08,1321.98
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto 1454/1,-3841.9,1647.15,40 >>Corra para a entrada oeste de Orgrimmar
step
    .goto 1454/1,-4224.67,1472.41
    .trainer >>Treine suas magias de classe
step << Troll Mage
    .goto 1454/1,-4440.81,1632.18
>>Fale com a |cRXP_FRIENDLY_Estalajadeira Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >>Aceite Doraso, o Mestre de Mantícoras
step
    >>Suba até o Mestre de Voo. NÃO voe em lugar nenhum
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    .fp Orgrimmar >>Aprenda a rota de voo para Orgrimmar << Undead
>>Fale com |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o Mestre de Mantícoras << Troll Mage
.target Doras
    .accept 6386 >>Aceite Voltar para a Encruzilhada << Troll Mage
step
    >>Corra para o Salão Grommash
    .goto 1454/1,-4229.02,1917.48
.target Zor Lonetree
>>Fale com |cRXP_FRIENDLY_Zor Solárbol|r
    .accept 1061 >>Aceite The Espíritos of Stonetalon
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Encruzilhada
step << Troll Mage
    .goto 1413/1,-2707.22,-407.62
.target Zargh
>>Fale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Entregue De Volta à Encruzilhada
step
    .goto 1413/1,-2636.28,-434.64
>>Fale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Na Cola dos Larápios
.target Gazrog
    .accept 3281 >>Aceite Prata Roubada
step
    .goto 1413/1,-2676.82,-481.94.0
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 903 >>Entregue Devoradores dos Barrens
.target Sergra Darkthorn
    .accept 881 >>Aceite Echeyaki
step
    >>Usar o Berrante de Echeyaki na mochila para invocar Echeyaki. Mate-o e saqueie-o para obter a Pele
    .goto 1413/1,-3001.08,443.67
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 881 >>Entregue Echeyaki
.target Sergra Darkthorn
    .accept 905 >>Aceite As Foicegarras Enfurecidas
step
    .goto 1413/1,-2666.68,-481.94.90
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 870 >>Entregue Os Charcos Esquecidos
.target Tonga Runetotem
    .accept 877 >>Aceite O Oásis Estagnado
step
    .goto 1413/1,-2646.42,-522.480
.target Mankrik
>>Fale com |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Aceite Consumido pelo Ódio
    .accept 4921 >>Aceite Perdida em Batalha
step
    >>No topo da torre
    .goto 1413/1,-2605.88,-475.18
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue As Harpias Bandoleiras
.target Darsok Swiftdagger
    .accept 875 >>Aceite Tenentes Harpias
step
    .goto 1413/1,-2595.75,-427.890
.target Apothecary Helbrim
>>Fale com o |cRXP_FRIENDLY_Boticário Hermógenes|r
    .turnin 848 >>Entregue Esporos de Fungos
step
    .goto 1413/1,-2595.75,-434.64
    .fly Ratchet >>Voe para Ponto de Ancoragem
step
    .goto 1413/1,-3761.08,-900.83
>>Fale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 902 >>Entregue A rebimboca
    .turnin 863 >>Entregue A Fuga
.target Sputtervalve
    .accept 1483 >>Aceite Zé Fízzica
step
    .goto 1413/1,-3791.48,-981.900
.target Wharfmaster Dizzywig
>>Fale com o |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 896 >>Entregue A Fortuna do Mineiro
step
    .goto 1413/1,-3700.28,-934.610
.target Mebok Mizzyrix
>>Fale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 1069 >>Aceite Ovos de Aranha de Musgoprofundo
step
    >>Saque o caixote
    .goto 1413/1,-3821.88,-1711.58
    .complete 888,2 --Telescopic Lens (1)
step
    >>Saque o caixote
    .goto 1413/1,-3720.55,-1738.60
step
    #sticky
    #completewith Nest
    >>Mate qualquer raptor que veja. Saqueie-os pelos Chifres e Penas. Tenha cuidado pois eles golpeiam
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Pegue o baú pela Prata Roubada
    >>Guarde qualquer pena de Escama Solar que obtenha para depois
    .goto 1413/1,-3193.62,-1927.77,90,0
    .goto 1413/1,-3254.42,-2029.12
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Coletar os |cRXP_LOOT_Laden Mushrooms|r ao redor do Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Clique na Rachadura Borbulhante embaixo d'água
    .goto 1413/1,-3011.22,-1272.42
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Mate os Centauros. Saque-os para obter Braçadeiras
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >>Enfrente qualquer Centauro em volta do lago até que Verog apareça (você verá um Grito no chat quando ele surgir)
    .goto 1413/1,-2742.68,-1209.59
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto 1413/1,-3023.38,-1234.58,25,0
	.goto 1413/1,-3000.07,-1208.23,25,0
	.goto 1413/1,-2959.54,-1196.75,25,0
	.goto 1413/1,-2953.46,-1241.34,25,0
	.goto 1413/1,-2977.78,-1304.17,25,0
	.goto 1413/1,-3029.46,-1324.44,25,0
	.goto 1413/1,-3066.95,-1311.61,25,0
	.goto 1413/1,-3059.86,-1264.31,25,0
	.goto 1413/1,-3023.38,-1234.58,25,0
    >>Coletar os |cRXP_LOOT_Laden Mushrooms|r ao redor do Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Clique no ovo. Você precisa das penas de Escama Solar dos raptores
    .goto 1413/1,-2707.22,-1508.89
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Clique no ovo. Você precisa das penas de Escama Solar dos raptores
    .goto 1413/1,-2697.08,-1535.91
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Clique no ovo. Você precisa das penas de Escama Solar dos raptores
    .goto 1413/1,-2646.42,-1529.16
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    .goto 1413/1,-3183.48,-2015.61,40,0
    .goto 1413/1,-2646.42,-1529.16,40,0
    >>Termine de matar os Raptores. Saqueie-os pelos Chifres
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Fale com a Esposa de Mankrik
    .goto 1413/1,-2372.82,-1792.65
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto 1413/1,-1997.88,-2373.69
    .home >>Defina sua Pedra de Regresso em Camp Taurajo
step
    .goto 1413/1,-1886.42,-2387.20
.target Mangletooth
>>Fale com |cRXP_FRIENDLY_Denterroto|r
    .accept 878 >>Aceite Tribes at Guerra
step
    .goto 1413/1,-1886.42,-2387.20
    .fp Camp Taurajo >>Aprenda a rota de voo para Camp Taurajo
    .fly Crossroads >>Voe para Encruzilhada
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Fale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Entregue Prata Roubada
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 905 >>Entregue No Covil dos Raptores
.target Sergra Darkthorn
    .accept 3261 >>Aceite Jorn Vidente do Céu
step
    .goto 1413/1,-2666.68,-481.94--??
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 877 >>Entregue O Oásis Estagnado
.target Tonga Runetotem
    .accept 880 >>Aceite Seres Alterados
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Fale com |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Entregue Perdida em Batalha
step
    #sticky
	#completewith next
    >>Mate Plainstriders. Saque-os para Rins.
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-1976.6,-308.30
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
.target Regthar Deathgate
    .accept 852 >>Aceite Hezrul Marca de Sangue
step
    .goto 1413/1,-1976.6,-308.30
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .isQuestComplete 855
step
    .goto 1413/1,-1976.6,-308.30
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
.target Regthar Deathgate
    .accept 852 >>Aceite Hezrul Marca de Sangue
step
    #sticky
	#label CeBracers
    >>Mate Centaurs. Saque-os pelas braçadeiras
    .complete 855,1 --Centaur Bracers (15)
step
    .goto 1413/1,-2025.24,-1144.050
    >>Hezrul patrulha ao redor do grande lago WC
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .turnin 855 >>Entregue Braçadeiras de Centauro
step
    .goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 4021 >>Aceite Contra-ataque!
step
    >>Esta missão pode ser muito difícil de fazer sozinho. Se você não tiver ninguém para se agrupar, considere formar um grupo ou kitar o inimigo perto do prédio do fornecedor de missões.
    >>Pule isto se for muito difícil
    .goto 1413/1,-1869.19,-288.71
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto 1413/1,-1976.6,-308.98
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-ataque!
step
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67,80,0
    .goto 1413/1,-1166.95,545.01,80,0
    .goto 1413/1,-1460.82,585.55,80,0
    .goto 1413/1,-1410.15,443.67
    >>Mate as Ceifadoras Asa-de-Bruxa. Saqueie-as para obter os Anéis de Tenente Harpia.
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto 1413/1,-1572.28,-42.78
    >>Mate Savannah Prowlers na área. Saque-os pelos Tusks
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto 1413/1,-954.15,-272.49
>>Fale com |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1061 >>Entregue Os Espíritos de Stonetalon
.target Seereth Stonebreak
    .accept 1062 >>Aceite Invasores Goblins
.target Makaba Flathoof
>>Fale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .accept 6548 >>Aceite Vingue Minha Vila
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde Mage
#name 17-21 Stonetalon/Barrens AdE
#version 1
#group Guia Forever (H)
#subgroup Speedrun Guia Mago AdE
#defaultfor Horde Mage
#next 21-30 Silverpine/Hillsbrad AdE

step
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96.0,50,0
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96.0,50,0
    >>Mate Grimtotems na área
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto 1413/1,-943.1,-265.13
>>Fale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6548 >>Entregue Vingue Minha Vila
.target Makaba Flathoof
    .accept 6629 >>Aceite Mate Grundig Nuvem Negra
step
    >>Entre no vilarejo pelo caminho Ocidental. Certifique-se de matar todos os 6 brutamontes antes de iniciar a missão dentro. Mate Grundig em frente à tenda principal
    .goto 1442/1,-255.52,93.5,60,0
    .goto 1442/1,-367.83,109.78
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Comece a Escolta Kaya
    .goto 1442/1,-343.42,122.80
.target Kaya Flathoof
>>Fale com |cRXP_FRIENDLY_Kaya Casco Chato|r
    .accept 6523 >>Aceite Proteja Kaya
step
     >>Escorte Kaya e fique perto dela. 3 Grimtotems aparecerão na fogueira. Coma/beba antes que ela chegue ao acampamento
    .goto 1442/1,-455.73,-59.55
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto 1442/1,-240.87,-180.03
.target Xen'Zilla
>>Fale com |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >>Aceite Fome Sangrenta
step
    #sticky
    #label deepmossegg
    >>Clique nos ovos de aranha perto das árvores
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    >>Mate as Aranhas de Deepmoss na área
    .goto 1442/1,437.92,435.4,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42,60,0
    .goto 1442/1,677.2,578.68,60,0
    .goto 1442/1,696.73,454.94,60,0
    .goto 1442/1,613.72,500.53,60,0
    .goto 1442/1,574.65,575.42
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto 1442/1,365.2,878.29
>>Fale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1483 >>Entregue Zé Fízzica
.target Ziz Fizziks
    .accept 1093 >>Aceite Super Ceifador 6000
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>Mate Loggers enquanto procura por Operators para conseguir os Blueprints
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>Mate Venture Co. Operators até obter os Blueprints
    .goto 1442/1,179.10,1168.06,40,0
    .goto 1442/1,232.82,1239.70,40,0
    .goto 1442/1,-16.23,1441.59,40,0
    .goto 1442/1,-255.52,1291.80,40,0
    .goto 1442/1,-382.48,1135.50,40,0
    .goto 1442/1,179.10,1168.06,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Complete matando Loggers
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .goto 1442/1,115.62,1070.37,40,0
    .goto 1442/1,-338.53,1148.52,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto 1442/1,365.2,878.29
>>Fale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1093 >>Entregue Super Ceifador 6000
.target Ziz Fizziks
    .accept 1094 >>Aceite Instruções Adicionais
step
    .hs >>Use sua Pedra de Retorno para ir a Camp Taurajo
step
    .goto 1413/1,-1926.95,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 3261 >>Entregue Jorn Vidente do Céu
.target Jorn Skyseer
    .accept 882 >>Aceite Ishamuhale
step
    #sticky
    #label Lizard
    >>Mate os Stormsnouts. Saque-os por um Chifre.
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto 1413/1,-2443.75,-1975.07,0
    .goto 1413/1,-2038.42,-1711.58,0
    .goto 1413/1,-1967.48,-1934.53,0
    .goto 1413/1,-1937.08,-1887.24,0
	>>Procure e mate Lakota'mani - Missão (Kodo Cinza) na área. Saqueie seu Casco. Se você não conseguir encontrá-lo, pule esta missão.
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceitar Lakota'Mani
step
    >>Mate MUITOS Quilboars. Saque-os por suas presas. Guarde os Estilhaços de Sangue que você conseguir.
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.goto 1413/1,-1866.15,-1921.02,50,0
    .goto 1413/1,-2149.88,-1988.58,50,0
    .goto 1413/1,-1957.35,-2056.14,50,0
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #sticky
    #completewith Ishamuhale
    >>Mate Plainstriders. Saque-os para Rins.
    .complete 821,2 --Plainstrider Kidney (5)
step
    #requires Lizard
    >>Contorne o lago e use AdE em Tartarugas. Saque-as por suas Conchas.
	.goto 1413/1,-3001.08,-1265.66
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Mate uma Zhevra na área. Saque-a para uma Carcaça.
	.goto 1413/1,-3558.42,-563.01
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Usar a Carcaça Fresca de Zevra na árvore morta para invocar Ishamuhale. Mate-o e saqueie sua Presa.
	.goto 1413/1,-3446.95,-441.40
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Mate Plainstriders. Saque-os para Rins.
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto 1413/1,-3730.68,-840.02
    >>Corra de volta para Ponto de Ancoragem.
.target Gazlowe
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 888 >>Entregue [DEPRICATED]Butim Roubado
step
    .goto 1413/1,-3761.08,-900.83
>>Fale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 1094 >>Entregue Instruções Adicionais
.target Sputtervalve
    .accept 1095 >>Aceite Instruções Adicionais
step
    .goto 1413/1,-3700.28,-927.85
.target Mebok Mizzyrix
>>Fale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .turnin 865 >>Entregue Só Pode Ser o Chifre
    .turnin 1069 >>Entregue [DEPRECATED] Ovos de Aranha de Musgoprofundo
step
    .goto 1413/1,-3690.15,-981.90
.target Brewmaster Drohn
>>Fale com o |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 821 >>Entregue Barril Vazio do Chen
step
    .goto 1413/1,-3771.22,-894.07
    .fly Crossroads >>Voe para Encruzilhada
step
    .goto 1413/1,-2666.68,-481.94--??
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 880 >>Entregue Seres Alterados
.target Tonga Runetotem
    .accept 1489 >>Aceite Hamuul Runetotem
    .accept 3301 >>Aceite Mura Runa Totem
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Fale com |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Entregue Consumido pelo Ódio
step
    >>No topo da torre
    .goto 1413/1,-2605.88,-475.180
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 875 >>Entregue Tenentes Harpias
.target Darsok Swiftdagger
    .accept 876 >>Aceite Serena Plumassangue
step
    >>Isto inicia uma missão com limite de tempo.
    .goto 1413/1,-2585.62,-427.89
>>Fale com o |cRXP_FRIENDLY_Boticário Hermógenes|r
    .turnin 848 >>Entregue Esporos de Fungos
.target Apothecary Helbrim
    .accept 853 >>Aceite o Boticário Zamah
step
    .goto 1413/1,-2595.75,-434.64
    .fly Camp Taurajo >>Voe para Camp Taurajo
step
    .goto 1413/1,-2747.75,-1907.51
    >>Mate Quilboars por um Estilhaço Sanguíneo
    .collect 5075 --Blood Shard (1)
step
    .goto 1413/1,-1896.55,-2387.20
>>Fale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 878 >>Entregue Tribes at Guerra
.target Mangletooth
    .accept 5052 >>Aceite Estilhaços de Sangue de Agamaggan
    .turnin 5052 >>Entregue Estilhaços de Sangue de Agamaggan
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto 1413/1,-1916.82,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Aceite Lagartos do Trovão Enraivecidos
    .accept 1130 >>Aceite Recado de Melor
step
    .goto 1413/1,-1916.82,-2380.44
    .isOnQuest 883
.target Jorn Skyseer
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 883 >>Entregue Lakota'mani - Missão - Missão
step
    .goto 1413/1,-1916.82,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Aceite Lagartos do Trovão Enraivecidos
    .accept 1130 >>Aceite Recado de Melor
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto 1413/1,-1856.02,-2583.13,0
    .goto 1413/1,-2362.68,-2616.91,0
    .goto 1413/1,-2403.22,-2441.25.0,0
    >>Procure Owatanka (Lagarto do Trovão Azul) nesta área. Se você o encontrar, saqueie seu Espinho de Cauda e comece a missão. Se você não conseguir encontrá-lo, pule esta missão.
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Aceite Owatanka
step
    .goto 1413/1,-1683.75,-2461.52,30,0
    .goto 1413/1,-2149.88,-2691.23,30,0
    .goto 1413/1,-2443.75,-2515.57,30,0
    >>Mate os Lagartos do Trovão. Saqueie-os por seu sangue.
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto 1413/1,-1926.95,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos do Trovão Enraivecidos
.target Jorn Skyseer
    .accept 913 >>Aceite Choro of the Thunderhawk
step
    .goto 1413/1,-1926.95,-2380.44
.target Jorn Skyseer
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 884 >>Entregue Owatanka
    .isOnQuest 884
step
    .goto 1413/1,-1926.95,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos do Trovão Enraivecidos
.target Jorn Skyseer
    .accept 913 >>Aceite Choro of the Thunderhawk
step
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    >>Mate um Thunderhawk Gaivota. Saqueie as Asas dele.
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto 1413/1,-1916.82,-2380.44
.target Jorn Skyseer
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 913 >>Entregue Choro of the Thunderhawk
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto 1413/1,-1890.47,-2391.93
    >>Entregue seus Estilhaços de Sangue para obter o buff de missão Vento Espírito do Denterroto. Se você acidentalmente vendeu qualquer Sanguíneo Shard, pule este passo.
.target Mangletooth
>>Fale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 889 >>Entregue Espírito do Vento
step
    .goto 1456/1,182.67,-1315.51,60 >>Corra para o elevador e pegue-o para ir a Trovão Blefe
step
    .goto 1456/1,38.48,-1300.28
    .home >>Defina sua Pedra de Retorno em Trovão Blefe
step
    .goto 1456/1,-125.64,-1413.06
>>Fale com o |cRXP_FRIENDLY_Melor Casco de Pedra|r
    .turnin 1130 >>Entregue Melor Envia Notícias
.target Melor Stonehoof
    .accept 1131 >>Aceite Estalaço
step
 	>>Vá para Os Poços da Visão
	.goto 1456/1,202.5,-1058.75.0,30,0
	.goto 1456/1,276.6,-996.120
.target Apothecary Zamah
>>Fale com o |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 853 >>Entregue para o Boticário Zamah
step
    .goto 1456/1,254.06,-995.78
    .trainer >>Treine suas magias de classe
	>>Não mude sua especialidade para AdE ainda (se você pegou especialidade de Fogo)
step
    .goto 1456/1,220.24,-1042.75
.target Clarice Foster
>>Fale com |cRXP_FRIENDLY_Clarice Nourrice|r
    .accept 264 >>Aceite Até que a Morte Nos Separe
step
	.goto 1456/1,26.07,-1196.75
    .fp Thunder Bluff >>Aprenda a rota de voo para Trovão Blefe
    .fly Crossroads >>Voe para Encruzilhada
step
    >>Mate Serena Plumassangue. Saqueie a Cabeça dela.
	.goto 1413/1,-1349.35,788.24
    .complete 876,1 --Serena's Head (1)
step
    .goto 1413/1,-954.15,-272.49
>>Fale com |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1062 >>Entregue Invasores Goblins
>>Fale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .turnin 6523 >>Entregue Proteja Kaya
.target Makaba Flathoof
    .accept 6401 >>Aceite Kaya Está Viva
.target Seereth Stonebreak
    .accept 1063 >>Aceite A Velha Bruxa Má
--    .accept 1068 >> Accept Shredding Machines
step
    .goto 1442/1,-235.98,-180.03
.target Xen'Zilla
>>Fale com |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entregue Fome Sangrenta
step
    .goto 1442/1,365.2,878.29
.target Ziz Fizziks
>>Fale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1095 >>Entregue Instruções Adicionais
step
    .goto 1442/1,926.25,1015.02
.target Tammra Windfield
>>Fale com |cRXP_FRIENDLY_Tammra Campo de Vento|r
    .turnin 6401 >>Entregue Kaya Está Viva
step
    .goto 1442/1,1042.47,968.13
    .fp Sun Rock>>Aprenda a rota de voo para Sol Pedra Recuar
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir a Penhasco do Trovão
step
    .goto 1456/1,-213.96,-1065.010
>>Fale com |cRXP_FRIENDLY_Magatha Temível Totem|r
    .turnin 1063 >>Entregue A Anciã Bruxa
.target Magatha Grimtotem
    .accept 1064 >>Aceite Ajuda Renegada
step
    .goto 1456/1,-303.93,-1048.73
>>Fale com o |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .turnin 1489 >>Entregue para Hamuul Runetotem
.target Arch Druid Hamuul Runetotem
    .accept 1490 >>Aceite Nara Juba Agreste
step
    .goto 1456/1,-272.93,-1070.02
.target Nara Wildmane
>>Fale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 1490 >>Entregue para Nara Juba Agreste
step
    .goto 1456/1,276.6,-996.12
>>Fale com o |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 1064 >>Entregue Ajuda Renegada
.target Apothecary Zamah
    .accept 1065 >>Aceite Jornada para Tarren Moinho
step
    .goto 1456/1,254.06,-995.78
    .trainer >>Treine seus feitiços de classe, se necessário
	>>Mude para especialidade Gélido AdE, se você ainda não o fez
step
    .goto 1456/1,28.19,-1197.92.0
    .fly The Crossroads >>Voe para a Encruzilhada
step
    .goto 1413/1,-2605.88,-475.180
	>>Suba as escadas
.target Darsok Swiftdagger
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 876 >>Entregue Serena Plumassangue
step
    .goto 1413/1,-2595.75,-437.35
    .fly Orgrimmar >>Voe para Orgrimmar
]])
