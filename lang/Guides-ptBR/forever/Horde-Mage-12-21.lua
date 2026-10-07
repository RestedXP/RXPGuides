if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#forever
<< Horde Mage
#name 12-17 Sertões AoE
#version 1
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun Mago AoE
#defaultfor Horde Mage
#next 17-21 Cordilheira das Torres de Pedra/Sertões AoE

step << Mage
	#era/som
    #completewith next
	+Você selecionou o guia AoE. Jogar de mago com área de efeito costuma ser bem mais difícil que com alvo único, mas MUITO mais rápido
step << Mage
	#som
	#phase 3-6
    #completewith next
	+Você selecionou o guia AoE. Jogar de mago com área de efeito costuma ser bem mais difícil que com alvo único e também é mais lento devido ao recente aumento de 100% na XP de missões em Temporada de Maestria
step
    .goto 1413/1,-2666.68,-481.94--??
.target Tonga Runetotem
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .accept 870 >>Aceite Os Charcos Esquecidos
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 842 >>Entregue Recrutamento na Encruzilhada
.target Sergra Darkthorn
    .accept 844 >>Aceite A ameaça pinote
step << Troll Mage
    .goto 1413/1,-2697.08,-400.86
.target Zargh
>>Fale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Fale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Raptores ladrões
step
    .goto 1413/1,-2645.40,-406.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand Vento das Planícies|r
    .home >>Defina sua Pedra de Regresso em A Encruzilhada
    .target Innkeeper Boorand Plainswind
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Fale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Cortando o ataque pela raiz
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
>>Fale com |cRXP_FRIENDLY_Boticário Hermógenes|r
    .accept 848 >>Aceite Esporos de Fungos
    .accept 1492 >>Aceite Mestre Portuário Caruncho
step
    #sticky
    #completewith next
    >>Procure o Barril Vazio do Chen neste local. Pegue-o e inicie a missão; se não estiver aqui, pegue-o depois
    .goto 1413/1,-3021.35,-231.96
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    .goto 1413/1,-3011.22,-184.66
    >>Mate os Javatuscos na área
    .complete 871,2 --Razormane Thornweaver (8)
    .complete 871,1 --Razormane Water Seeker (8)
    .complete 871,3 --Razormane Hunter (3)
step << !Undead
    #sticky
    #completewith next
    >>Se a Pedra do Poder Defeituosa na suas bolsa tiver menos de 10 minutos restantes, descarte-a e volte para pegar novamente a Pedra Roxa ao lado de Ak'Zeloth
    .turnin 926 >>Entregue Pedra do Poder Defeituosa
step << !Undead
    #sticky
    #completewith BeakCave
    >>Mate alguns Pinotes pelo caminho se ainda houver tempo na Pedra do Poder Defeituosa. Pegue seus Bicos
    .complete 844,1 --Plainstrider Beak (7)
step << !Undead
    .goto 1413/1,-2484.28,126.12,20 >>Suba a montanha por aqui
step << !Undead
    #label BeakCave
    .goto 1413/1,-2200.55,315.3,20 >>Vá à caverna cercada por orcs da Lâmina Ardente
step << !Undead
    >>Clique com o botão direito no Altar
    .goto 1413/1,-2241.08,322.06
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Mate os Raptores que encontrar. Pegue algumas Cabeças de Raptor - você pegará mais depois
    .complete 869,1 --Raptor Head (12)
step
    >>Mate Pinotes. Pegue seus Bicos
    .goto 1413/1,-2524.82,-556.26
    .complete 844,1 --Plainstrider Beak (7)
step
    >>No topo da torre
    .goto 1413/1,-2595.75,-475.18
>>Fale com |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entregue Cortando o ataque pela raiz
.target Thork
    .accept 872 >>Aceite Adeus aos ataques
.target Darsok Swiftdagger
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .accept 867 >>Aceite As harpias bandoleiras
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 844 >>Entregue A ameaça pinote
.target Sergra Darkthorn
    .accept 845 >>Aceite As zevras
step
    #sticky
    #completewith Crates
    >>Mate Crinavalhas enquanto pega as Caixas e mata Kreenig
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith next
    >>Pegue as caixas marrons na área
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
    >>Mate Kreenig Rosnento. Pegue sua Presa
    .goto 1413/1,-3315.22,-218.44
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto 1413/1,-3305.08,-231.96,40,0
    .goto 1413/1,-3294.95,-211.69.0,40,0
    .goto 1413/1,-3305.08,-130.61,40,0
    .goto 1413/1,-3396.28,-63.05,40,0
    >>Pegue as caixas marrons na área
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto 1413/1,-3122.68,-96.83
    >>Termine de matar os Crinavalhas
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Mate as Zhevras que encontrar. Pegue seus Cascos
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto 1413/1,-3690.15,254.49
.target Ak'Zeloth
>>Fale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entregue A Semente Demoníaca
step
    >>Mate as Zevras que encontrar. Pegue seus Cascos. Tenha 4 antes de entrar em Vila Catraca
    .goto 1413/1,-3257.46,277.46,150,0 << Undead
    .goto 1413/1,-3852.28,-806.24
    .complete 845,1 --Zhevra Hooves (4)
step
    >>No último andar do edifício
    .goto 1413/1,-3730.68,-840.02
.target Gazlowe
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .accept 887 >>Aceite Os Flibusteiros dos Mares do Sul
step
    .goto 1413/1,-3771.22,-894.07
    .fp Ratchet >>Aprenda a rota de voo de Vila Catraca
step
    .goto 1413/1,-3761.08,-900.83
.target Sputtervalve
>>Fale com |cRXP_FRIENDLY_Cobogó|r
    .accept 894 >>Aceite A rebimboca
step
    >>Clique no Cartaz de Procura-se. Você também pode usar o banco aqui, se quiser
    .goto 1413/1,-3720.55,-921.09
    .accept 895 >>Aceite PROCURA-SE: Barão Longacosta
step
    .goto 1413/1,-3700.28,-934.61
.target Mebok Mizzyrix
>>Fale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 865 >>Aceite Chifres de raptor
step
    .goto 1413/1,-3690.15,-981.90
>>Fale com |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 819 >>Entregue Barril Vazio do Chen
.target Brewmaster Drohn
    .accept 821 >>Aceite Barril Vazio do Chen
step
    #sticky
    #label Southsea
    >>Mate os inimigos dos Mares do Sul na área
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
    >>Mate Barão Longacosta. Pegue sua Cabeça
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto 1413/1,-3730.68,-840.02
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 887 >>Entregue Os Flibusteiros dos Mares do Sul
.target Gazlowe
    .accept 890 >>Aceite Carregamento perdido
    .turnin 895 >>Entregue PROCURA-SE: Barão Longacosta
step
    .goto 1413/1,-3791.48,-981.90
>>Fale com |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 1492 >>Entregue Mestre Portuário Caruncho
    .turnin 890 >>Entregue Carregamento perdido
.target Wharfmaster Dizzywig
    .accept 892 >>Aceite Carregamento perdido
    .accept 896 >>Aceite A fortuna do mineiro
step
    .goto 1413/1,-3730.68,-840.02
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 892 >>Entregue Carregamento perdido
.target Gazlowe
    .accept 888 >>Aceite Butim Roubado
step
    .goto 1413/1,-3769.19,-898.12
    .fly Crossroads >>Voe para A Encruzilhada
step
    .goto 1413/1,-2595.75,-468.43
.target Thork
>>Fale com |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .turnin 872 >>Entregue Adeus aos ataques
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 845 >>Entregue As zevras
.target Sergra Darkthorn
    .accept 903 >>Aceite Predadores dos Sertões
step
    #sticky
    #completewith next
    >>Mate Pinotes. Pegue seus Rins
    .complete 821,2 --Plainstrider Kidney (5)
step
    #label RegtharDeathgate1
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 850 >>Aceite Os líderes Kolkar
    .accept 855 >>Aceite Braçadeiras de centauro
    .target Regthar Deathgate
step
    #completewith KodobaneTurnin
    >>Mate |cRXP_ENEMY_Cavalgantes Kolkar|r e |cRXP_ENEMY_Tempestários Kolkar|r. Pegue suas |cRXP_LOOT_Braçadeiras|r
    >>|cRXP_WARN_Não é preciso concluir esta missão agora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith Barak
    >>Pegue |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Não é preciso concluir esta missão agora|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto 1413/1,-1943.16,89.64
    >>Mergulhe até a |cRXP_PICK_Rachadura Borbulhante|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto 1413/1,-1716.18,23.43
    >>Mate |cRXP_ENEMY_Barak Findekodo|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Cuidado! Os ataques corpo a corpo de |cRXP_ENEMY_Barak Findekodo|r causam MUITO dano, e ele é protegido por um |cRXP_ENEMY_Cavalgante Kolkar|r. Eles podem prendê-lo com redes e atirar à distância|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 850 >>Entregue Os líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .turnin 855 >>Entregue Braçadeiras de centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto 1413/1,-1972.55,-306.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 850 >>Entregue Os líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
step
    #sticky
    #completewith Claws
    >>Mate os Raptores que encontrar. Pegue algumas Cabeças de Raptor - você pegará mais depois
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith next
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
    .goto 1413/1,-1572.28,-42.78,40,0
    .goto 1413/1,-1470.95,261.25,40,0
	>>Não se preocupe em pegar todos agora
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>Mate Predadores. Pegue suas Garras e Presas
    .goto 1413/1,-1572.28,-42.78
    .complete 903,1 --Prowler Claws (7)
step
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-1450.68,335.57,40,0
    .goto 1413/1,-1501.35,626.09,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Mate Harpias. Pegue suas Garras
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto 1413/1,-1815.48,788.24
    >>Se ainda não conseguiu a Maça Pesada com Pontas, tente comprá-la de Vrang Sanguebravo << Druid/Warrior
    .vendor >>Venda seus itens a ele se precisar
step
    #sticky
    #completewith next
    >>Mate Pinotes. Pegue seus Rins
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    .goto 1413/1,-2879.48,781.48,40,0
    .goto 1413/1,-2909.88,484.21,40,0
    .goto 1413/1,-1693.88,592.31,40,0
    >>Mate Raptores. Pegue suas Cabeças
    .complete 869,1 --Raptor Head (12)
step
    >>Clique no Painel de Controle
    .goto 1413/1,-2686.95,828.77
    .turnin 894 >>Entregue A rebimboca
    .accept 900 >>Aceite A rebimboca
step
    >>Clique na Válvula
    .goto 1413/1,-2686.95,842.29
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Clique na Válvula. Inimigos aparecerão ao clicar em qualquer uma delas
    .goto 1413/1,-2676.82,842.29
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto 1413/1,-2676.82,828.77
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Clique no Painel de Controle
    .goto 1413/1,-2686.95,828.77
    .turnin 900 >>Entregue A rebimboca
    .accept 901 >>Aceite A rebimboca
step
    >>Mate Engenhoqueiro Faísca no edifício. Pegue a Chave do Painel
    .goto 1413/1,-2727.48,909.85
    .complete 901,1 --Console Key (1)
step
    .goto 1413/1,-2686.95,828.77
    .turnin 901 >>Entregue A rebimboca
    .accept 902 >>Aceite A rebimboca
step
    >>Aceite Ignição com o Retalhador
    .goto 1413/1,-3102.42,1105.78
.target Wizzlecrank's Shredder
>>Fale com |cRXP_FRIENDLY_Retalhador do Manivela|r
    .accept 858 >>Aceite Ignição
step
    >>Chegue ao nível 16 matando inimigos aqui, pois as próximas 3 missões são bem difíceis.
	.xp 16 >>Mate inimigos até o nível 16
step
    >>Mate Supervisor Rancatraca (ele patrulha toda a torre). Pegue a Chave de Ignição
	.goto 1413/1,-3082.15,1031.46
    .complete 858,1 --Ignition Key (1)
step
    >>Isso iniciará uma escolta
    .goto 1413/1,-3102.42,1105.78
>>Fale com |cRXP_FRIENDLY_Retalhador do Manivela|r
    .turnin 858 >>Entregue Ignição
.target Wizzlecrank's Shredder
    .accept 863 >>Aceite A fuga
step
    #label Slugs
    >>2 inimigos aparecerão em algum momento. Mate-os e aguarde a cena dele no final
    .goto 1413/1,-2980.82,1085.51
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Mate inimigos na área e pegue seus itens até conseguir a Esmeralda Olho-de-gato
    .goto 1413/1,-3609.08,1321.98
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto 1454/1,-3841.9,1647.15,40 >>Vá até a entrada oeste de Orgrimmar
step
    .goto 1454/1,-4224.67,1472.41
    .trainer >>Treine suas magias de classe
step << Troll Mage
    .goto 1454/1,-4440.81,1632.18
>>Fale com |cRXP_FRIENDLY_Estalajadeira Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >>Aceite Doraso, o mestre de mantícoras
step
    >>Suba até o Mestre de Voo. NÃO voe para lugar nenhum
    .goto 1454/1,-4313.46,1676.25--c:Orgrimmar,45.120,63.889
    .fp Orgrimmar >>Aprenda a rota de voo de Orgrimmar << Undead
>>Fale com |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o mestre de mantícoras << Troll Mage
.target Doras
    .accept 6386 >>Aceite Retorno à Encruzilhada << Troll Mage
step
    >>Vá até o Castelo Grommash
    .goto 1454/1,-4229.02,1917.48
.target Zor Lonetree
>>Fale com |cRXP_FRIENDLY_Zor Solárbol|r
    .accept 1061 >>Aceite Os espíritos das Torres de Pedra
step
    #completewith next
    .hs >>Use sua Pedra de Regresso para ir à Encruzilhada
step << Troll Mage
    .goto 1413/1,-2707.22,-407.62
.target Zargh
>>Fale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Entregue Retorno à Encruzilhada.
step
    .goto 1413/1,-2636.28,-434.64
>>Fale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Raptores ladrões
.target Gazrog
    .accept 3281 >>Aceite Prata roubada
step
    .goto 1413/1,-2676.82,-481.94.0
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 903 >>Entregue Predadores dos Sertões
.target Sergra Darkthorn
    .accept 881 >>Aceite Echeyaki
step
    >>Use o Berrante de Echeyaki na sua bolsa para invocar Echeyaki. Mate-o e pegue seu Pelego
    .goto 1413/1,-3001.08,443.67
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 881 >>Entregue Echeyaki
.target Sergra Darkthorn
    .accept 905 >>Aceite Garrafoices furiosos
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
    .accept 899 >>Aceite Consumido pelo ódio
    .accept 4921 >>Aceite Perdida em combate
step
    >>No topo da torre
    .goto 1413/1,-2605.88,-475.18
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue As harpias bandoleiras
.target Darsok Swiftdagger
    .accept 875 >>Aceite Tenentes harpias
step
    .goto 1413/1,-2595.75,-427.890
.target Apothecary Helbrim
>>Fale com |cRXP_FRIENDLY_Boticário Hermógenes|r
    .turnin 848 >>Entregue Esporos de Fungos
step
    .goto 1413/1,-2595.75,-434.64
    .fly Ratchet >>Voe para Vila Catraca
step
    .goto 1413/1,-3761.08,-900.83
>>Fale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 902 >>Entregue A rebimboca
    .turnin 863 >>Entregue A fuga
.target Sputtervalve
    .accept 1483 >>Aceite Zé Fízzica
step
    .goto 1413/1,-3791.48,-981.900
.target Wharfmaster Dizzywig
>>Fale com |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 896 >>Entregue A fortuna do mineiro
step
    .goto 1413/1,-3700.28,-934.610
.target Mebok Mizzyrix
>>Fale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 1069 >>Aceite Ovos de Aranha de Fundolimo
step
    >>Pegue o caixote
    .goto 1413/1,-3821.88,-1711.58
    .complete 888,2 --Telescopic Lens (1)
step
    >>Pegue o caixote
    .goto 1413/1,-3720.55,-1738.60
step
    #sticky
    #completewith Nest
    >>Mate os raptores que encontrar. Pegue seus Chifres e Penas. Cuidado com seus ataques extras
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Pegue a Prata Roubada no baú
    >>Guarde as Penas Helióscamas que pegar para depois
    .goto 1413/1,-3193.62,-1927.77,90,0
    .goto 1413/1,-3254.42,-2029.12
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Pegue |cRXP_LOOT_Cogumelos Carregados|r ao redor do Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Clique na Rachadura Borbulhante debaixo d'água
    .goto 1413/1,-3011.22,-1272.42
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Mate Centauros. Pegue suas braçadeiras
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >>Mate Centauros ao redor do lago até Verog aparecer (você verá um grito no chat quando ele aparecer)
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
    >>Pegue |cRXP_LOOT_Cogumelos Carregados|r ao redor do Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Clique no ovo. Você precisa das Penas Helióscamas dos raptores
    .goto 1413/1,-2707.22,-1508.89
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Clique no ovo. Você precisa das Penas Helióscamas dos raptores
    .goto 1413/1,-2697.08,-1535.91
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Clique no ovo. Você precisa das Penas Helióscamas dos raptores
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
    >>Termine de matar os Raptores. Pegue seus Chifres
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Fale com a esposa de Mankrik
    .goto 1413/1,-2372.82,-1792.65
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto 1413/1,-1997.88,-2373.69
    .home >>Defina sua Pedra de Regresso ao Acampamento Taurajo
step
    .goto 1413/1,-1886.42,-2387.20
.target Mangletooth
>>Fale com |cRXP_FRIENDLY_Denterroto|r
    .accept 878 >>Aceite Tribos em guerra
step
    .goto 1413/1,-1886.42,-2387.20
    .fp Camp Taurajo >>Aprenda a rota de voo de Acampamento Taurajo
    .fly Crossroads >>Voe para A Encruzilhada
step
    .goto 1413/1,-2636.28,-434.64
.target Gazrog
>>Fale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Entregue Prata roubada
step
    .goto 1413/1,-2666.68,-481.94
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 905 >>Entregue Garrafoices furiosos
.target Sergra Darkthorn
    .accept 3261 >>Aceite Jorn Vidente do Céu
step
    .goto 1413/1,-2666.68,-481.94--??
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 877 >>Entregue O Oásis Estagnado
.target Tonga Runetotem
    .accept 880 >>Aceite Seres alterados
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Fale com |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Entregue Perdida em combate
step
    #sticky
	#completewith next
    >>Mate Pinotes. Pegue seus Rins
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
    .turnin 855 >>Entregue Braçadeiras de centauro
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
    >>Mate Centauros. Pegue suas braçadeiras
    .complete 855,1 --Centaur Bracers (15)
step
    .goto 1413/1,-2025.24,-1144.050
    >>Hezrul patrulha ao redor do grande lago da Caverna Ululante
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .turnin 855 >>Entregue Braçadeiras de centauro
step
    .goto 1413/1,-1974.58,-308.30
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 4021 >>Aceite Contra-ataque!
step
    >>Esta missão pode ser muito difícil de fazer sozinho. Tente formar um grupo ou atraia o inimigo para perto do edifício de quem oferece a missão, mantendo distância.
    >>Pule esta etapa se for muito difícil
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
    >>Mate Asabruxas Matadoras. Pegue os Anéis de Tenente Harpia
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto 1413/1,-1572.28,-42.78
    >>Mate Predadores da Savana na área. Pegue suas Presas
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto 1413/1,-954.15,-272.49
>>Fale com |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1061 >>Entregue Os espíritos das Torres de Pedra
.target Seereth Stonebreak
    .accept 1062 >>Aceite Invasores goblins
.target Makaba Flathoof
>>Fale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .accept 6548 >>Aceite Vingue minha vila
]])

RXPGuides.RegisterGuide([[
#forever
<< Horde Mage
#name 17-21 Cordilheira das Torres de Pedra/Sertões AoE
#version 1
#group Guia RestedXP Forever (H)
#subgroup Guia Speedrun Mago AoE
#defaultfor Horde Mage
#next 21-30 Floresta de Pinhaprata/Contraforte de Eira dos Montes AdE

step
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96.0,50,0
    .goto 1442/1,-695.02,12.09,50,0
    .goto 1442/1,-758.5,116.29,50,0
    .goto 1442/1,-890.35,171.65,50,0
    .goto 1442/1,-773.15,-13.96.0,50,0
    >>Mate Temíveis Totens na área
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto 1413/1,-943.1,-265.13
>>Fale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6548 >>Entregue Vingue minha vila
.target Makaba Flathoof
    .accept 6629 >>Aceite Mate Grundig Nuvem Negra
step
    >>Entre na aldeia pelo caminho oeste. Mate os 6 brutamontes antes de iniciar a missão lá dentro. Mate Grundig Nuvem Negra em frente à tenda principal
    .goto 1442/1,-255.52,93.5,60,0
    .goto 1442/1,-367.83,109.78
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Inicie a escolta de Kaya
    .goto 1442/1,-343.42,122.80
.target Kaya Flathoof
>>Fale com |cRXP_FRIENDLY_Kaya Casco Chato|r
    .accept 6523 >>Aceite Proteja Kaya
step
     >>Escolte Kaya e fique perto dela. 3 Temíveis Totens aparecerão na fogueira. Coma/beba antes que ela chegue ao acampamento
    .goto 1442/1,-455.73,-59.55
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto 1442/1,-240.87,-180.03
.target Xen'Zilla
>>Fale com |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >>Aceite Fome sangrenta
step
    #sticky
    #label deepmossegg
    >>Clique nos ovos de aranha perto das árvores
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    >>Mate as Aranhas de Fundolimo na área
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
    .accept 1093 >>Aceite o Super Ceifador 6000
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>Mate Lenhadores enquanto procura Operadores para pegar os Diagramas
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>Mate Operadores da Empreendimentos S.A. até pegar os Diagramas
    .goto 1442/1,179.10,1168.06,40,0
    .goto 1442/1,232.82,1239.70,40,0
    .goto 1442/1,-16.23,1441.59,40,0
    .goto 1442/1,-255.52,1291.80,40,0
    .goto 1442/1,-382.48,1135.50,40,0
    .goto 1442/1,179.10,1168.06,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Termine de matar os Lenhadores
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
    .turnin 1093 >>Entregue o Super Ceifador 6000
.target Ziz Fizziks
    .accept 1094 >>Aceite as instruções adicionais
step
    .hs >>Use a Pedra de Regresso para voltar ao Acampamento Taurajo
step
    .goto 1413/1,-1926.95,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 3261 >>Entregue Jorn Vidente do Céu
.target Jorn Skyseer
    .accept 882 >>Aceite Ishamuhale
step
    #sticky
    #label Lizard
    >>Mate Eletrossauros. Pegue um Chifre
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto 1413/1,-2443.75,-1975.07,0
    .goto 1413/1,-2038.42,-1711.58,0
    .goto 1413/1,-1967.48,-1934.53,0
    .goto 1413/1,-1937.08,-1887.24,0
	>>Encontre e mate Lakota'mani (kodo cinza) na área. Pegue seu Casco. Se não o encontrar, pule esta missão.
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'mani
step
    >>Mate MUITOS Javatuscos. Pegue suas presas. Guarde os Estilhaços de Sangue que pegar
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
    >>Mate Pinotes. Pegue seus Rins
    .complete 821,2 --Plainstrider Kidney (5)
step
    #requires Lizard
    >>Contorne o lago e mate Tartarugas com AoE. Pegue seus Cascos
	.goto 1413/1,-3001.08,-1265.66
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Mate uma Zevra na área. Pegue sua Carcaça
	.goto 1413/1,-3558.42,-563.01
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Use a Carcaça Fresca de Zevra na árvore morta para invocar Ishamuhale. Mate-o e pegue sua Presa
	.goto 1413/1,-3446.95,-441.40
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Mate Pinotes. Pegue seus Rins
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto 1413/1,-3730.68,-840.02
    >>Volte a Vila Catraca
.target Gazlowe
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 888 >>Entregue Butim Roubado
step
    .goto 1413/1,-3761.08,-900.83
>>Fale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 1094 >>Entregue instruções adicionais
.target Sputtervalve
    .accept 1095 >>Aceite as instruções adicionais
step
    .goto 1413/1,-3700.28,-927.85
.target Mebok Mizzyrix
>>Fale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .turnin 865 >>Entregue Chifres de raptor
    .turnin 1069 >>Entregue Ovos de Aranha de Fundolimo
step
    .goto 1413/1,-3690.15,-981.90
.target Brewmaster Drohn
>>Fale com |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 821 >>Entregue Barril Vazio do Chen
step
    .goto 1413/1,-3771.22,-894.07
    .fly Crossroads >>Voe para A Encruzilhada
step
    .goto 1413/1,-2666.68,-481.94--??
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 880 >>Entregue Seres alterados
.target Tonga Runetotem
    .accept 1489 >>Aceite Hamuul Runa Totem
    .accept 3301 >>Aceite Mura Runa Totem
step
    .goto 1413/1,-2646.42,-522.48
.target Mankrik
>>Fale com |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Entregue Consumido pelo ódio
step
    >>No topo da torre
    .goto 1413/1,-2605.88,-475.180
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 875 >>Entregue Tenentes harpias
.target Darsok Swiftdagger
    .accept 876 >>Aceite Serena Plumassangue
step
    >>Isso inicia uma missão com limite de tempo
    .goto 1413/1,-2585.62,-427.89
>>Fale com |cRXP_FRIENDLY_Boticário Hermógenes|r
    .turnin 848 >>Entregue Esporos de Fungos
.target Apothecary Helbrim
    .accept 853 >>Aceite o Boticário Zamah
step
    .goto 1413/1,-2595.75,-434.64
    .fly Camp Taurajo >>Voe para o Acampamento Taurajo
step
    .goto 1413/1,-2747.75,-1907.51
    >>Mate Javatuscos para pegar Estilhaço de Sangue
    .collect 5075 --Blood Shard (1)
step
    .goto 1413/1,-1896.55,-2387.20
>>Fale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 878 >>Entregue Tribos em guerra
.target Mangletooth
    .accept 5052 >>Aceite Estilhaços de Sangue de Agamaggan
    .turnin 5052 >>Entregue Estilhaços de Sangue de Agamaggan
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto 1413/1,-1916.82,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .accept 1130 >>Aceite Melor mandou lembranças
step
    .goto 1413/1,-1916.82,-2380.44
    .isOnQuest 883
.target Jorn Skyseer
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 883 >>Entregue Lakota'mani
step
    .goto 1413/1,-1916.82,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .accept 1130 >>Aceite Melor mandou lembranças
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto 1413/1,-1856.02,-2583.13,0
    .goto 1413/1,-2362.68,-2616.91,0
    .goto 1413/1,-2403.22,-2441.25.0,0
    >>Procure Owatanka (lagarto trovejante azul) nesta área. Se o encontrar, pegue a Ponta da Cauda de Owatanka e inicie a missão. Se não o encontrar, pule esta missão
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Aceite Owatanka
step
    .goto 1413/1,-1683.75,-2461.52,30,0
    .goto 1413/1,-2149.88,-2691.23,30,0
    .goto 1413/1,-2443.75,-2515.57,30,0
    >>Mate Lagartos Trovejantes. Pegue seu sangue
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto 1413/1,-1926.95,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos trovejantes enfurecidos
.target Jorn Skyseer
    .accept 913 >>Aceite O grito do Falcotrom
step
    .goto 1413/1,-1926.95,-2380.44
.target Jorn Skyseer
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 884 >>Entregue Owatanka
    .isOnQuest 884
step
    .goto 1413/1,-1926.95,-2380.44
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos trovejantes enfurecidos
.target Jorn Skyseer
    .accept 913 >>Aceite O grito do Falcotrom
step
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    .goto 1413/1,-1916.82,-2657.45,30,0
    .goto 1413/1,-2139.75,-2549.35,30,0
    >>Mate um Falcão Trovejante. Pegue suas Asas
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto 1413/1,-1916.82,-2380.44
.target Jorn Skyseer
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 913 >>Entregue O grito do Falcotrom
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto 1413/1,-1890.47,-2391.93
    >>Entregue seus Estilhaços de Sangue a Denterroto para receber o bônus Espírito do Vento. Se vendeu algum por engano, pule esta etapa
.target Mangletooth
>>Fale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 889 >>Entregue Espírito do vento
step
    .goto 1456/1,182.67,-1315.51,60 >>Vá até o elevador e suba para o Penhasco do Trovão
step
    .goto 1456/1,38.48,-1300.28
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
step
    .goto 1456/1,-125.64,-1413.06
>>Fale com |cRXP_FRIENDLY_Melor Casco de Pedra|r
    .turnin 1130 >>Entregue Melor mandou lembranças
.target Melor Stonehoof
    .accept 1131 >>Aceite Estalaço
step
 	>>Entre nos Poços da Visão
	.goto 1456/1,202.5,-1058.75.0,30,0
	.goto 1456/1,276.6,-996.120
.target Apothecary Zamah
>>Fale com o |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 853 >>Entregue para o Boticário Zamah
step
    .goto 1456/1,254.06,-995.78
    .trainer >>Treine suas magias de classe
	>>Não redistribua seus talentos para AoE ainda (se escolheu Fogo)
step
    .goto 1456/1,220.24,-1042.75
.target Clarice Foster
>>Fale com |cRXP_FRIENDLY_Clarice Nourrice|r
    .accept 264 >>Aceite Até que a morte nos separe
step
	.goto 1456/1,26.07,-1196.75
    .fp Thunder Bluff >>Aprenda a rota de voo de Penhasco do Trovão
    .fly Crossroads >>Voe para A Encruzilhada
step
    >>Mate Serena Plumassangue. Pegue sua Cabeça
	.goto 1413/1,-1349.35,788.24
    .complete 876,1 --Serena's Head (1)
step
    .goto 1413/1,-954.15,-272.49
>>Fale com |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1062 >>Entregue Invasores goblins
>>Fale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .turnin 6523 >>Entregue Proteja Kaya
.target Makaba Flathoof
    .accept 6401 >>Aceite Kaya está viva
.target Seereth Stonebreak
    .accept 1063 >>Aceite A Bruxa Anciã
--    .accept 1068 >> Accept Shredding Machines
step
    .goto 1442/1,-235.98,-180.03
.target Xen'Zilla
>>Fale com |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entregue Fome sangrenta
step
    .goto 1442/1,365.2,878.29
.target Ziz Fizziks
>>Fale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1095 >>Entregue instruções adicionais
step
    .goto 1442/1,926.25,1015.02
.target Tammra Windfield
>>Fale com |cRXP_FRIENDLY_Tammra Campo de Vento|r
    .turnin 6401 >>Entregue Kaya está viva
step
    .goto 1442/1,1042.47,968.13
    .fp Sun Rock>>Aprenda a rota de voo de Retiro Rocha do Sol
step
    #completewith next
    .hs >>Use a Pedra de Regresso para voltar ao Penhasco do Trovão
step
    .goto 1456/1,-213.96,-1065.010
>>Fale com |cRXP_FRIENDLY_Magatha Temível Totem|r
    .turnin 1063 >>Entregue A Bruxa Anciã
.target Magatha Grimtotem
    .accept 1064 >>Aceite Ajuda Renegada
step
    .goto 1456/1,-303.93,-1048.73
>>Fale com |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .turnin 1489 >>Entregue Hamuul Runa Totem
.target Arch Druid Hamuul Runetotem
    .accept 1490 >>Aceite Nara Juba Agreste
step
    .goto 1456/1,-272.93,-1070.02
.target Nara Wildmane
>>Fale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 1490 >>Entregue Nara Juba Agreste
step
    .goto 1456/1,276.6,-996.12
>>Fale com o |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 1064 >>Entregue Ajuda Renegada
.target Apothecary Zamah
    .accept 1065 >>Aceite A jornada para Serraria Tarren
step
    .goto 1456/1,254.06,-995.78
    .trainer >>Aprenda os feitiços da sua classe se precisar
	>>Redistribua seus talentos para Gélido AoE se ainda não fez isso
step
    .goto 1456/1,28.19,-1197.92.0
    .fly The Crossroads >>Voe para A Encruzilhada
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
