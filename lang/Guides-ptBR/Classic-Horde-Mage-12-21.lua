if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 12-17 The Barrens AdE
#version 1
#group Mago da Horda AdE
#defaultfor Horde Mage
#next 17-21 Stonetalon/Barrens AdE

step << Mage
	#era/som
    #completewith next
	+Observe que você selecionou o guia AdE. O AdE é tipicamente muito mais difícil do que um mago de alvo único, mas muito mais rápido
step << Mage
	#som
	#phase 3-6
    #completewith next
	+Observe que você selecionou o guia AdE. O AdE é tipicamente muito mais difícil do que um mago de alvo único e também é mais lento devido às alterações recentes de 100% de XP de missão no SoM
step
    .goto The Barrens,52.2,31.8
.target Tonga Runetotem
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .accept 870 >>Aceite Os Charcos Esquecidos
step
    .goto The Barrens,52.2,31.0
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
.target Sergra Darkthorn
    .accept 844 >>Aceite A Ameaça Pinote
step << Troll Mage
    .goto The Barrens,52.5,29.8
.target Zargh
>>Fale com |cRXP_FRIENDLY_Zargh|r
    .accept 6365 >>Aceite Encomenda para Gryshka
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Fale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Na Cola dos Larápios
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Fale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
step
    .goto The Barrens,51.5,30.4
    .fp The Crossroads >>Aprenda a rota de voo para Encruzilhada
step << Troll Mage
    >>NÃO vá para Orgrimmar
    .goto The Barrens,51.5,30.3
>>Fale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entregue Encomenda para Gryshka
.target Devrak
    .accept 6384 >>Aceite Carona Para Orgrimmar
step
    .goto The Barrens,51.5,30.1
.target Apothecary Helbrim
>>Fale com o |cRXP_FRIENDLY_Boticário Hermógenes|r
    .accept 848 >>Aceite Esporos de Fungos
    .accept 1492 >>Aceite Mestre Portuário Caruncho
step
    #sticky
    #completewith next
    >>Verifique este local para o Barril Vazio do Chen. Saque-o e comece a missão, caso contrário você o obterá depois
    .goto The Barrens,55.7,27.3
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    .goto The Barrens,55.6,26.6
    >>Mate os Quilboars na área
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
    >>Mate alguns Plainstriders no caminho se você tem tempo com Pedra do Poder Defeituosa. Saque-os para obter Beaks
    .complete 844,1 --Plainstrider Beak (7)
step << !Undead
    .goto The Barrens,50.4,22.0,20 >>Corra para cima da montanha
step << !Undead
    #label BeakCave
    .goto The Barrens,47.6,19.2,20 >>Vá para a caverna cercada por Orcs da Lâmina Ardente
step << !Undead
    >>Clique à direita no Altar
    .goto The Barrens,48.0,19.1
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
step
    #sticky
    #completewith next
    >>Mate os Raptors que você vê. Saque-os para obter algumas Cabeças de Raptor - você pegará mais depois
    .complete 869,1 --Raptor Head (12)
step
    >>Mate os Plainstriders. Saque-os para obter Beaks
    .goto The Barrens,50.8,32.1
    .complete 844,1 --Plainstrider Beak (7)
step
    >>Topo da torre
    .goto The Barrens,51.5,30.9
>>Fale com |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entregue Em Defesa do Posto Remoto
.target Thork
    .accept 872 >>Aceite A Ofensiva do Posto Remoto
.target Darsok Swiftdagger
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .accept 867 >>Aceite As harpias bandoleiras
step
    .goto The Barrens,52.2,31.0
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 844 >>Entregue A Ameaça Pinote
.target Sergra Darkthorn
    .accept 845 >>Aceite As Zebras
step
    #sticky
    #completewith Crates
    >>Mate os Razormanes enquanto coleta os Caixotes e mata Kreenig
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step
    #sticky
    #completewith next
    >>Saque as caixas marrons encontradas na área
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label Kreenig
    >>Mate Kreenig Rosnento. Saque-o para obter seu Tusk
    .goto The Barrens,58.6,27.1
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
step
    #label Crates
	.goto The Barrens,58.5,27.3,40,0
    .goto The Barrens,58.4,27.0,40,0
    .goto The Barrens,58.5,25.8,40,0
    .goto The Barrens,59.4,24.8,40,0
    >>Saque as caixas marrons encontradas na área
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    .goto The Barrens,56.7,25.3
    >>Complete Matando os Razormanes
    .complete 872,1 --Razormane Geomancer (8)
    .complete 872,2 --Razormane Defender (8)
step << !Undead
    #sticky
    #completewith next
    >>Abate qualquer Zhevra que você veja. Saque-os para obter Hooves
    .complete 845,1 --Zhevra Hooves (4)
step << !Undead
    .goto The Barrens,62.3,20.1
.target Ak'Zeloth
>>Fale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entregue A Semente Demônioíaca
step
    >>Abate qualquer Zhevra que você veja. Saque-os para obter Hooves. Certifique-se de ter 4 antes de entrar em Ratchet
    .goto The Barrens,58.03,19.76,150,0 << Undead
    .goto The Barrens,63.9,35.8
    .complete 845,1 --Zhevra Hooves (4)
step
    >>Andar superior do prédio
    .goto The Barrens,62.7,36.3
.target Gazlowe
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .accept 887 >>Aceite Os Flibusteiros dos Mares do Sul
step
    .goto The Barrens,63.1,37.1
    .fp Ratchet >>Aprenda a rota de voo para Ratchet
step
    .goto The Barrens,63.0,37.2
.target Sputtervalve
>>Fale com |cRXP_FRIENDLY_Cobogó|r
    .accept 894 >>Aceite A Rebimboca
step
    >>Clique no cartaz de procurado. Você também pode usar o banco aqui se quiser
    .goto The Barrens,62.6,37.5
    .accept 895 >>Aceite Procura-se: Capitão Garvão
step
    .goto The Barrens,62.4,37.7
.target Mebok Mizzyrix
>>Fale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 865 >>Aceite Só Pode Ser o Chifre
step
    .goto The Barrens,62.3,38.4
>>Fale com o |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 819 >>Entregue Barril Vazio de Chen
.target Brewmaster Drohn
    .accept 821 >>Aceite Barril Vazio do Chen
step
    #sticky
    #label Southsea
    >>Abate os inimigos de Southsea na área
    .complete 887,1 --Southsea Brigand (12)
    .complete 887,2 --Southsea Cannoneer (6)
step
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    .goto The Barrens,64.2,47.1,40,0
    .goto The Barrens,63.6,49.1,40,0
    .goto The Barrens,62.6,49.7,40,0
    >>Abate Barão Longacosta. Saque-o para obter a Cabeça
    .complete 895,1 --Baron Longshore's Head (1)
step
    #requires Southsea
    .goto The Barrens,62.7,36.3
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 887 >>Entregue Os Flibusteiros dos Mares do Sul
.target Gazlowe
    .accept 890 >>Aceite O Carregamento Desaparecido
    .turnin 895 >>Entregue Procura-se: Capitão Garvão
step
    .goto The Barrens,63.3,38.4
>>Fale com |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 1492 >>Entregue Mestre Portuário Caruncho
    .turnin 890 >>Entregue Carregamento perdido
.target Wharfmaster Dizzywig
    .accept 892 >>Aceite [DEPRECATED]The Missing Carregamento
    .accept 896 >>Aceite A Fortuna do Mineiro
step
    .goto The Barrens,62.7,36.3
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 892 >>Entregue Carregamento perdido
.target Gazlowe
    .accept 888 >>Aceite Butim Roubado
step
    .goto The Barrens,63.08,37.16
    .fly Crossroads >>Voe para A Encruzilhada
step
    .goto The Barrens,51.5,30.8
.target Thork
>>Fale com |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .turnin 872 >>Entregue A Ofensiva do Posto Remoto
step
    .goto The Barrens,52.2,31.0
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 845 >>Entregue As Zevras
.target Sergra Darkthorn
    .accept 903 >>Aceite Predadores dos Sertões
step
    #sticky
    #completewith next
    >>Mate Plainstriders. Saque-os pelos Rins
    .complete 821,2 --Plainstrider Kidney (5)
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Aceite Os Líderes Kolkar
    .accept 855 >>Aceite Braçadeiras de Centauro
    .target Regthar Deathgate
step
    #completewith KodobaneTurnin
    >>Mate os |cRXP_ENEMY_Cavalgantes Kolkar|r e os |cRXP_ENEMY_Trovejadores Kolkar|r. Saque-os pelos |cRXP_LOOT_Braçadeiras|r
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith Barak
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Mergulhe debaixo d'água para o |cRXP_PICK_Borbulhando Rachadura|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    #label Barak
    .goto The Barrens,42.82,23.52
    >>Mate |cRXP_ENEMY_Barak Findekodo|r. Saque-o pela |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Cuidado: os ataques corpo-a-corpo de |cRXP_ENEMY_Barak Findekodo|r causam MUITO dano e ele é protegido por um |cRXP_ENEMY_Cavalgante Kolkar|r. Eles podem te prender em rede e atirar à distância|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entregue para os Líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label KodobaneTurnin
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entregue Os Líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
step
    #sticky
    #completewith Claws
    >>Abate Raptores que você vê. Saque-os para obter alguns Raptor Cabeças - você conseguirá mais depois
    .complete 869,1 --Raptor Head (12)
step
    #sticky
    #completewith next
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
    .goto The Barrens,41.4,24.5,40,0
    .goto The Barrens,40.4,20.0,40,0
	>>Não foque em conseguir todos agora
    .complete 821,1 --Savannah Lion Tusk (5)
step
    #label Claws
    >>Abata Prowlers. Saqueie-os por suas Garras e Presas
    .goto The Barrens,41.4,24.5
    .complete 903,1 --Prowler Claws (7)
step
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,40.2,18.9,40,0
    .goto The Barrens,40.7,14.6,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>Abata Harpies. Saqueie-os por suas Garras
    .complete 867,1 --Witchwing Talon (8)
step
    #completewith next
    .goto The Barrens,43.8,12.2
    >>Se você ainda não tem a Maça Pesada com Pontas, considere comprá-la do Vrang Sanguebravo << Druid/Warrior
    .vendor >>Vá comprar deste vendedor se necessário
step
    #sticky
    #completewith next
    >>Mate Plainstriders. Saque-os pelos Rins
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    .goto The Barrens,54.3,12.3,40,0
    .goto The Barrens,54.6,16.7,40,0
    .goto The Barrens,42.6,15.1,40,0
    >>Abata Raptors. Saqueie-os por suas Cabeças
    .complete 869,1 --Raptor Head (12)
step
    >>Clique no Painel de Controle
    .goto The Barrens,52.4,11.6
    .turnin 894 >>Vire na Rebimboca
    .accept 900 >>Aceite A Rebimboca
step
    >>Clique na Válvula
    .goto The Barrens,52.4,11.4
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    >>Clique na Válvula. Mobs aparecerão quando você clicar em qualquer um deles.
    .goto The Barrens,52.3,11.4
    .complete 900,3 --Shut off Regulator Valve (1)
    .goto The Barrens,52.3,11.6
    .complete 900,1 --Shut off Main Control Valve (1)
step
    >>Clique no Painel de Controle
    .goto The Barrens,52.4,11.6
    .turnin 900 >>Vire na Rebimboca
    .accept 901 >>Aceite A Rebimboca
step
    >>Abata o Engenhoqueiro Faísca no prédio. Saqueie-o por sua Chave do Console
    .goto The Barrens,52.8,10.4
    .complete 901,1 --Console Key (1)
step
    .goto The Barrens,52.4,11.6
    .turnin 901 >>Vire na Rebimboca
    .accept 902 >>Aceite A Rebimboca
step
    >>Aceite Ignição do Retalhador
    .goto The Barrens,56.5,7.5
.target Wizzlecrank's Shredder
>>Fale com |cRXP_FRIENDLY_Retalhador do Manivela|r
    .accept 858 >>Aceite Ignição
step
    >>Subir até o nível 16 aqui é importante, pois as próximas 3 missões são bem difíceis.
	.xp 16 >>Suba até o nível 16
step
    >>Abata o Supervisor Rancatraca (Ele patrulha toda a torre). Saqueie-o por sua Chave de Ignição
	.goto The Barrens,56.3,8.6
    .complete 858,1 --Ignition Key (1)
step
    >>Isso vai iniciar uma escolta
    .goto The Barrens,56.5,7.5
>>Fale com |cRXP_FRIENDLY_Retalhador do Manivela|r
    .turnin 858 >>Entregue Ignição
.target Wizzlecrank's Shredder
    .accept 863 >>Aceite A Fuga
step
    #label Slugs
    >>2 Mobs aparecerão em um momento. Abata-os, depois espere sua encenação no final.
    .goto The Barrens,55.3,7.8
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
step
    >>Farme inimigos na área. Saqueie-os até que Esmeralda de Olho de Gato caia.
    .goto The Barrens,61.5,4.3
    .complete 896,1 -- Cats Eye Emerald (1)
step
    #completewith next
	.goto Orgrimmar,11.5,67.0,40 >>Corra para a entrada oeste de Orgrimmar
step
    .goto Orgrimmar,38.79,85.68
    .trainer >>Treine suas magias de classe
step << Troll Mage
    .goto Orgrimmar,54.2,68.6
>>Fale com a |cRXP_FRIENDLY_Estalajadeira Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
.target Innkeeper Gryshka
    .accept 6385 >>Aceite Doraso, o Mestre de Mantícoras
step
    >>Corra até o Mestre de Voo. NÃO voe para nenhum lugar.
    .goto Orgrimmar,45.120,63.889
    .fp Orgrimmar >>Aprenda a rota de voo de Orgrimmar << Undead
>>Fale com |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o Mestre de Mantícoras << Troll Mage
.target Doras
    .accept 6386 >>Aceite Devolver à Encruzilhada << Troll Mage
step
    >>Corra para a Fortaleza de Grommash
    .goto Orgrimmar,39.1,38.1
.target Zor Lonetree
>>Fale com |cRXP_FRIENDLY_Zor Solárbol|r
    .accept 1061 >>Aceite Os Espíritos de Stonetalon
step
    #completewith next
    .hs >>Use sua Pedra de Retorno para ir à Encruzilhada
step << Troll Mage
    .goto The Barrens,52.6,29.9
.target Zargh
>>Fale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Entregue De volta à Encruzilhada
step
    .goto The Barrens,51.9,30.3
>>Fale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Ladrões de Raptor
.target Gazrog
    .accept 3281 >>Aceite Prata Roubada
step
    .goto The Barrens,52.3,31.0
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 903 >>Entregue Espreitadores das Savanas
.target Sergra Darkthorn
    .accept 881 >>Aceite Echeyaki
step
    >>Usar o Berrante de Echeyaki na mochila para invocar Echeyaki. Mate-o e saqueie-o para obter sua Pele
    .goto The Barrens,55.5,17.3
    .complete 881,1 --Echeyakee's Hide (1)
step
    .goto The Barrens,52.2,31.0
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 881 >>Entregue Echeyaki
.target Sergra Darkthorn
    .accept 905 >>Aceite Os Talhardepas Raivosos
step
    .goto The Barrens,52.20,31.90
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 870 >>Entregue Os Poços Esquecidos
.target Tonga Runetotem
    .accept 877 >>Aceite Oásis Estagnante
step
    .goto The Barrens,52.00,31.60
.target Mankrik
>>Fale com |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Aceite Consumido pelo Ódio
    .accept 4921 >>Aceite Perdido na Batalha
step
    >>Topo da torre
    .goto The Barrens,51.6,30.9
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 867 >>Entregue Saqueadores Harpíia
.target Darsok Swiftdagger
    .accept 875 >>Aceite Tenentes das Harpíias
step
    .goto The Barrens,51.50,30.20
.target Apothecary Helbrim
>>Fale com o |cRXP_FRIENDLY_Boticário Hermógenes|r
    .turnin 848 >>Entregue Esporos de Fungos
step
    .goto The Barrens,51.5,30.3
    .fly Ratchet >>Voe para Ponto de Ancoragem
step
    .goto The Barrens,63.0,37.2
>>Fale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 902 >>Entregue Samoflange
    .turnin 863 >>Entregue A Fuga
.target Sputtervalve
    .accept 1483 >>Aceite Zé Fízzica
step
    .goto The Barrens,63.30,38.40
.target Wharfmaster Dizzywig
>>Fale com o |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 896 >>Entregue A fortuna do mineiro
step
    .goto The Barrens,62.40,37.70
.target Mebok Mizzyrix
>>Fale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .accept 1069 >>Aceite Ovos de Aranha Musgofunda
step
    >>Saque a caixa
    .goto The Barrens,63.6,49.2
    .complete 888,2 --Telescopic Lens (1)
step
    >>Saque a caixa
    .goto The Barrens,62.6,49.6
step
    #sticky
    #completewith Nest
    >>Mate qualquer raptor que você veja. Saque-os por seus chifres e Peninha. Cuidado, pois eles investem
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Pegue o baú para obter Prata Roubada
    >>Guarde qualquer pena Sunscale que você consiga para depois
    .goto The Barrens,57.4,52.4,90,0
    .goto The Barrens,58.0,53.9
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Colete |cRXP_LOOT_Laden Mushrooms|r ao redor do Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Clique na Rachadura Borbulhante debaixo d'água
    .goto The Barrens,55.6,42.7
    .complete 877,1 --Test the Dried Seeds (1)
step
    #sticky
	#completewith next
    >>Mate os Centaurs. Saque-os por suas braçadeiras
    .complete 855,1 --Centaur Bracers (15)
step
    #label Verog
    >>Mate Centauros ao redor do lago até que Verog apareça (você verá um Grito no chat quando ele aparecer)
    .goto The Barrens,52.95,41.77
    .complete 851,1 --Verog's Head (1)
step
#loop
	.line The Barrens,55.72,42.14,55.49,41.75,55.09,41.58,55.03,42.24,55.27,43.17,55.78,43.47,56.15,43.28,56.08,42.58,55.72,42.14
	.goto The Barrens,55.72,42.14,25,0
	.goto The Barrens,55.49,41.75,25,0
	.goto The Barrens,55.09,41.58,25,0
	.goto The Barrens,55.03,42.24,25,0
	.goto The Barrens,55.27,43.17,25,0
	.goto The Barrens,55.78,43.47,25,0
	.goto The Barrens,56.15,43.28,25,0
	.goto The Barrens,56.08,42.58,25,0
	.goto The Barrens,55.72,42.14,25,0
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor de O Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    >>Clique no ovo. Você precisa das penas Sunscale dos raptores
    .goto The Barrens,52.6,46.2
    .complete 905,1 --Visit Blue Raptor Nest (1)
step
    >>Clique no ovo. Você precisa das penas de escamasolar dos raptores
    .goto The Barrens,52.5,46.6
    .complete 905,3 --Visit Red Raptor Nest (1)
step
    #label Nest
    >>Clique no ovo. Você precisa das penas de escamasolar dos raptores
    .goto The Barrens,52.0,46.5
    .complete 905,2 --Visit Yellow Raptor Nest (1)
step
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    .goto The Barrens,57.3,53.7,40,0
    .goto The Barrens,52.0,46.5,40,0
    >>Conclua matar Raptores. Saque-os por seus Chifres
    .complete 865,1 --Intact Raptor Horn (5)
step
    >>Fale com a Esposa de Mankrik
    .goto The Barrens,49.3,50.4
    .complete 4921,1 --Find Mankrik's Wife (1)
step
    .goto The Barrens,45.6,59.0
    .home >>Defina sua Pedra de Retorno em Camp Taurajo
step
    .goto The Barrens,44.5,59.2
.target Mangletooth
>>Fale com |cRXP_FRIENDLY_Denterroto|r
    .accept 878 >>Aceite Tribos em Guerra
step
    .goto The Barrens,44.5,59.2
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo
    .fly Crossroads >>Voe para Encruzilhada
step
    .goto The Barrens,51.9,30.3
.target Gazrog
>>Fale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 3281 >>Entregue Prata Roubada
step
    .goto The Barrens,52.2,31.0
>>Fale com |cRXP_FRIENDLY_Sergra Espinhonegro|r
    .turnin 905 >>Entregue Garrafoices furiosos
.target Sergra Darkthorn
    .accept 3261 >>Aceite Jorn Vidente do Céu
step
    .goto The Barrens,52.2,31.9
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 877 >>Entregue O Oásis Estagnado
.target Tonga Runetotem
    .accept 880 >>Aceite Seres Alterados
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Fale com |cRXP_FRIENDLY_Mankrik|r
    .turnin 4921 >>Entregue Perdida na Batalha
step
    #sticky
	#completewith next
    >>Mate Plainstriders. Saque-os pelos Rins
    .complete 821,2 --Plainstrider Kidney (5)
step
    .goto The Barrens,45.39,28.43
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
.target Regthar Deathgate
    .accept 852 >>Aceite Hezrul Marca de Sangue
step
    .goto The Barrens,45.39,28.43
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .isQuestComplete 855
step
    .goto The Barrens,45.39,28.43
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 851 >>Entregue Verog, o Dervixe
.target Regthar Deathgate
    .accept 852 >>Aceite Hezrul Marca de Sangue
step
    #sticky
	#label CeBracers
    >>Mate os Centauros. Saqueie-os para obter suas braçadeiras
    .complete 855,1 --Centaur Bracers (15)
step
    .goto The Barrens,45.87,40.80
    >>Hezrul patrulha ao redor do grande lago WC
    .complete 852,1 --Hezrul's Head (1)
step
	#requires CeBracers
	.goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .turnin 855 >>Entregue Braçadeiras de Centauro
step
    .goto The Barrens,45.37,28.43
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .accept 4021 >>Aceite Contra-Ataque!
step
    >>Esta missão pode ser muito difícil de fazer sozinho. Se não tem ninguém para fazer grupo, considere se agrupar ou atraia-a perto do edifício do fornecedor de missão.
    >>Pule este passo se for muito difícil
    .goto The Barrens,44.33,28.14
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
--N Link to safespot abuse
step
    .isQuestComplete 4021
    .goto The Barrens,45.39,28.44
.target Regthar Deathgate
>>Fale com |cRXP_FRIENDLY_Regthar Portões-da-morte|r
    .turnin 4021 >>Entregue Contra-Ataque!
step
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3,80,0
    .goto The Barrens,37.4,15.8,80,0
    .goto The Barrens,40.3,15.2,80,0
    .goto The Barrens,39.8,17.3
    >>Mate os Abatedores Witchwing. Saqueie-os para obter os Anéis de Tenente Harpia
    .complete 875,1 --Harpy Lieutenant Ring (6)
step
    .goto The Barrens,41.4,24.5
    >>Mate os Predadores da Savana na área. Saqueie-os para obter suas Presas
    .complete 821,1 --Savannah Lion Tusk (5)
step
    .goto The Barrens,35.3,27.9
>>Fale com o |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1061 >>Entregue Os Espíritos de Stonetalon
.target Seereth Stonebreak
    .accept 1062 >>Aceite Invasores Goblins
.target Makaba Flathoof
>>Fale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .accept 6548 >>Aceite Vingue Minha Vila
]])

RXPGuides.RegisterGuide([[
#classic
#tbc
<< Horde Mage
#name 17-21 Stonetalon/Barrens AdE
#version 1
#group RestedXP Mago da Horda AdE
#defaultfor Horde Mage
#next 21-30 Floresta de Pinhaprata/Contraforte de Eira dos Montes AdE

step
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    .goto Stonetalon Mountains,80.7,89.2,50,0
    .goto Stonetalon Mountains,82.0,86.0,50,0
    .goto Stonetalon Mountains,84.7,84.3,50,0
    .goto Stonetalon Mountains,82.3,90.0,50,0
    >>Mate os Grimtotems na área
    .complete 6548,2 --Kill Grimtotem Mercenary (x6)
    .complete 6548,1 --Kill Grimtotem Ruffian (x8)
step
    .goto The Barrens,35.191,27.791
>>Fale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6548 >>Entregue Vingue minha vila
.target Makaba Flathoof
    .accept 6629 >>Aceite Mate Grundig Nuvem Negra
step
    >>Entre na aldeia pela trilha Ocidental. Certifique-se de matar todos os 6 brutos antes de começar a missão dentro. Mate Grundig em frente à tenda principal.
    .goto Stonetalon Mountains,71.7,86.7,60,0
    .goto Stonetalon Mountains,74.0,86.2
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .complete 6629,2 --Kill Grimtotem Brute (x6)
step
    >>Comece a Escolta de Kaya
    .goto Stonetalon Mountains,73.5,85.8
.target Kaya Flathoof
>>Fale com |cRXP_FRIENDLY_Kaya Casco Chato|r
    .accept 6523 >>Aceite Proteja Kaya
step
     >>Acompanhe Kaya e fique perto dela. 3 Grimtotems aparecerão na fogueira. Coma ou beba antes dela chegar ao acampamento.
    .goto Stonetalon Mountains,75.8,91.4
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
step
    .goto Stonetalon Mountains,71.4,95.1
.target Xen'Zilla
>>Fale com |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >>Aceite Fome Sangrenta
step
    #sticky
    #label deepmossegg
    >>Clique nos ovos de aranha perto das árvores
    .complete 1069,1 --Collect Deepmoss Egg (x15)
step
    >>Mate as Aranhas Musaúm na área
    .goto Stonetalon Mountains,57.5,76.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9,60,0
    .goto Stonetalon Mountains,52.6,71.8,60,0
    .goto Stonetalon Mountains,52.2,75.6,60,0
    .goto Stonetalon Mountains,53.9,74.2,60,0
    .goto Stonetalon Mountains,54.7,71.9
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
step
    .goto Stonetalon Mountains,58.989,62.599
>>Fale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1483 >>Entregue Zé Fízzica
.target Ziz Fizziks
    .accept 1093 >>Aceite o Super Ceifador 6000
step
    #sticky
    #requires deepmossegg
    #completewith next
    >>Mate os Lenhadores enquanto procura por Operadores para obter as Plantas
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    #requires deepmossegg
    >>Mate os Operadores da Companhia Ventura até obter as Plantas
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .goto Stonetalon Mountains,61.7,51.5,40,0
    .goto Stonetalon Mountains,66.8,45.3,40,0
    .goto Stonetalon Mountains,71.7,49.9,40,0
    .goto Stonetalon Mountains,74.3,54.7,40,0
    .goto Stonetalon Mountains,62.8,53.7,40,0
    .complete 1093,1 --Collect Super Reaper 6000 Blueprints (x1)
step
    >>Termine de matar Lenhadores
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .goto Stonetalon Mountains,64.1,56.7,40,0
    .goto Stonetalon Mountains,73.4,54.3,40,0
    .complete 1062,1 --Kill Venture Co. Logger (x15)
step
    .goto Stonetalon Mountains,58.989,62.599
>>Fale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1093 >>Entregue o Super Ceifador 6000
.target Ziz Fizziks
    .accept 1094 >>Aceite as instruções adicionais
step
    .hs >>Use sua Pedra de Retorno para ir a Camp Taurajo
step
    .goto The Barrens,44.9,59.1
>>Fale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 3261 >>Entregue Jorn Vidente do Céu
.target Jorn Skyseer
    .accept 882 >>Aceite Ishamuhale
step
    #sticky
    #label Lizard
    >>Mate Stormsnouts. Saque-os por um Chifre
    .complete 821,3 --Thunder Lizard Horn (1)
step
	#sticky
	#label Lakota1
	#completewith next
	.goto The Barrens,50.0,53.1,0
    .goto The Barrens,46.0,49.2,0
    .goto The Barrens,45.3,52.5,0
    .goto The Barrens,45.0,51.8,0
	>>Encontre e mate Lakota'mani - Missão - Missão (Kodo Cinza) na área. Saqueie seu Casco. Se você não conseguir encontrá-lo, pule esta missão.
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'Mani
step
    >>Mate muitos Quilboars. Saque-os por suas presas. Guarde os Estilhaços de Sangue que você conseguir
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.goto The Barrens,44.3,52.3,50,0
    .goto The Barrens,47.1,53.3,50,0
    .goto The Barrens,45.2,54.3,50,0
	.complete 878,1 --Kill Bristleback Water Seeker (x6)
    .complete 878,2 --Kill Bristleback Thornweaver (x12)
    .complete 878,3 --Kill Bristleback Geomancer (x12)
    .complete 899,1 --Collect Bristleback Quilboar Tusk (x60)
step
    #sticky
    #completewith Ishamuhale
    >>Mate Plainstriders. Saque-os pelos Rins
    .complete 821,2 --Plainstrider Kidney (5)
step
    #requires Lizard
    >>Vá ao redor do lago e use em área nas Tartarugas. Saqueie-as para obter seus Cascos.
	.goto The Barrens,55.5,42.6
    .complete 880,1 --Altered Snapjaw Shell (8)
step
   #completewith next
	>>Mate um Zhevra na área. Saque-o por um Cadáver.
	.goto The Barrens,61.0,32.2
	.collect 10338,1 --Collect Fresh Zhevra Carcass
step
	#label Ishamuhale
    >>Usar a Carcaça Fresca de Zhevra na árvore morta para invocar Ishamuhale. Mate-o e saqueie-o para obter sua Presa.
	.goto The Barrens,59.9,30.4
    .complete 882,1 --Ishamuhale's Fang (1)
step
    >>Mate Plainstriders. Saque-os pelos Rins
    .complete 821,2 --Plainstrider Kidney (5)
step
	.goto The Barrens,62.7,36.3
    >>Corra de volta para Ratchet
.target Gazlowe
>>Fale com |cRXP_FRIENDLY_Gasganete|r
    .turnin 888 >>Entregue Butim Roubado
step
    .goto The Barrens,63.0,37.2
>>Fale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 1094 >>Entregue instruções adicionais
.target Sputtervalve
    .accept 1095 >>Aceite as instruções adicionais
step
    .goto The Barrens,62.4,37.6
.target Mebok Mizzyrix
>>Fale com |cRXP_FRIENDLY_Cáliper Porcatraca|r
    .turnin 865 >>Entregue [Product]Chifres de Raptores
    .turnin 1069 >>Entregue [Product]Ovos de Aranha Musaúm
step
    .goto The Barrens,62.3,38.4
.target Brewmaster Drohn
>>Fale com o |cRXP_FRIENDLY_Cervejeiro Drohn|r
    .turnin 821 >>Entregue Barril Vazio de Chen
step
    .goto The Barrens,63.1,37.1
    .fly Crossroads >>Voe para Encruzilhada
step
    .goto The Barrens,52.2,31.9
>>Fale com |cRXP_FRIENDLY_Tonga Runa Totem|r
    .turnin 880 >>Entregue Seres Alterados
.target Tonga Runetotem
    .accept 1489 >>Aceite Hamuul Runetotem
    .accept 3301 >>Aceite Mura Runa Totem
step
    .goto The Barrens,52.0,31.6
.target Mankrik
>>Fale com |cRXP_FRIENDLY_Mankrik|r
    .turnin 899 >>Entregue Consumido pelo Ódio
step
    >>Topo da torre
    .goto The Barrens,51.60,30.90
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 875 >>Entregue Tenentes das Harpias
.target Darsok Swiftdagger
    .accept 876 >>Aceite Serena Plumassangue
step
    >>Isso inicia uma missão cronometrada
    .goto The Barrens,51.4,30.2
>>Fale com o |cRXP_FRIENDLY_Boticário Hermógenes|r
    .turnin 848 >>Entregue Esporos de Fungos
.target Apothecary Helbrim
    .accept 853 >>Aceite Boticário Zamah
step
    .goto The Barrens,51.5,30.3
    .fly Camp Taurajo >>Voe para Camp Taurajo
step
    .goto The Barrens,53.0,52.1
    >>Mate Quilboars para conseguir um Estilhaço de Sangue
    .collect 5075 --Blood Shard (1)
step
    .goto The Barrens,44.6,59.2
>>Fale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 878 >>Entregue Tribes at Guerra
.target Mangletooth
    .accept 5052 >>Aceite Estilhaços de Sangue de Agamaggan
    .turnin 5052 >>Entregue Estilhaços de Sangue de Agamaggan
--N Different classes needing different buffs, e.g. need speed buff later for Mulgore run for classes that didnt get FP earlier
step
    .goto The Barrens,44.8,59.1
>>Fale com o |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .accept 1130 >>Aceite Melor Sends Word
step
    .goto The Barrens,44.8,59.1
    .isOnQuest 883
.target Jorn Skyseer
>>Fale com o |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 883 >>Entregue Lakota'mani - Missão - Missão - Missão
step
    .goto The Barrens,44.8,59.1
>>Fale com o |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
.target Jorn Skyseer
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .accept 1130 >>Aceite Melor Sends Word
step
    #sticky
    #label Owatanka2
    #completewith next
    .goto The Barrens,44.2,62.1,0
    .goto The Barrens,49.2,62.6,0
    .goto The Barrens,49.6,60.0,0
    >>Procure Owatanka (Lagarto do Trovão Azul) nesta área. Se você o encontrar, saqueie o Tailspike e comece a missão. Se você não o encontrar, pule esta missão.
    .collect 5102,1,884 --Collect Owatanka's Tailspike
    .accept 884 >>Aceite Owatanka
step
    .goto The Barrens,42.5,60.3,30,0
    .goto The Barrens,47.1,63.7,30,0
    .goto The Barrens,50.0,61.1,30,0
    >>Mate Lagartos do Trovão. Saqueie-os para obter o sangue deles
    .complete 907,1 --Thunder Lizard Blood (3)
step
    .goto The Barrens,44.9,59.1
>>Fale com o |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos do Trovão Enraivecidos
.target Jorn Skyseer
    .accept 913 >>Aceite O grito do Falcotrom
step
    .goto The Barrens,44.9,59.1
.target Jorn Skyseer
>>Fale com o |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 884 >>Entregue Owatanka
    .isOnQuest 884
step
    .goto The Barrens,44.9,59.1
>>Fale com o |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos do Trovão Enraivecidos
.target Jorn Skyseer
    .accept 913 >>Aceite O grito do Falcotrom
step
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    .goto The Barrens,44.8,63.2,30,0
    .goto The Barrens,47.0,61.6,30,0
    >>Mate um Falcão Trovejante. Saqueie-o por suas Asas
    .complete 913,1 --Thunderhawk Wings (1)
step
    .goto The Barrens,44.8,59.1
.target Jorn Skyseer
>>Fale com o |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 913 >>Entregue O grito do Falcotrom
--    .accept 874 >>Accept Mahren Skyseer
step
    #completewith next
    .goto The Barrens,44.54,59.27
    >>Entregue seus Estilhaços de Sangue para o buff Espírito do Vento com Denterroto. Se você vendeu acidentalmente quaisquer estilhaços, pule esta etapa
.target Mangletooth
>>Fale com |cRXP_FRIENDLY_Denterroto|r
    .turnin 889 >>Entregue Espírito do Vento
step
    .goto Thunder Bluff,32.0,66.9,60 >>Corra para o elevador e pegue-o para Penhasco do Trovão
step
    .goto Thunder Bluff,45.814,64.711
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
step
    .goto Thunder Bluff,61.538,80.919
>>Fale com o |cRXP_FRIENDLY_Melor Casco de Pedra|r
    .turnin 1130 >>Entregue Melor Envia uma Mensagem
.target Melor Stonehoof
    .accept 1131 >>Aceite Estalaço
step
 	>>Entre nos Tanques da Visão
	.goto Thunder Bluff,30.1,30.0,30,0
	.goto Thunder Bluff,23.00,21.00
.target Apothecary Zamah
>>Fale com o |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 853 >>Entregue Boticário Zaqueu
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >>Treine suas magias de classe
	>>Não mude para AdE ainda (se você escolheu especialização de fogo)
step
    .goto Thunder Bluff,28.4,27.7
.target Clarice Foster
>>Fale com a |cRXP_FRIENDLY_Clarice Nourrice|r
    .accept 264 >>Aceite Até que a morte nos separe
step
	.goto Thunder Bluff,47.003,49.832
    .fp Thunder Bluff >>Aprenda a rota de voo para Penhasco do Trovão
    .fly Crossroads >>Voe para Encruzilhada
step
    >>Mate Serena Plumassangue. Saque-a por sua Cabeça
	.goto The Barrens,39.2,12.2
    .complete 876,1 --Serena's Head (1)
step
    .goto The Barrens,35.3,27.9
>>Fale com o |cRXP_FRIENDLY_Seereth Quebra-pedra|r
    .turnin 1062 >>Entregue Invasores goblins
>>Fale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .turnin 6523 >>Entregue Proteja Kaya
.target Makaba Flathoof
    .accept 6401 >>Aceite Kaya Está Viva
.target Seereth Stonebreak
    .accept 1063 >>Aceite [DEPRECATED] A Anciã Bruxa Má
--    .accept 1068 >> Accept Shredding Machines
step
    .goto Stonetalon Mountains,71.3,95.1
.target Xen'Zilla
>>Fale com |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entregue Sanguessugas
step
    .goto Stonetalon Mountains,58.989,62.599
.target Ziz Fizziks
>>Fale com |cRXP_FRIENDLY_Zé Fízzica|r
    .turnin 1095 >>Entregue instruções adicionais
step
    .goto Stonetalon Mountains,47.5,58.4
.target Tammra Windfield
>>Fale com |cRXP_FRIENDLY_Tammra Campo de Vento|r
    .turnin 6401 >>Entregue A Kaya Está Viva
step
    .goto Stonetalon Mountains,45.12,59.84
    .fp Sun Rock>>Aprenda a rota de voo de Retiro Rocha do Sol
step
    #completewith next
    .hs >>Vá para Penhasco do Trovão
step
    .goto Thunder Bluff,70.00,30.90
>>Fale com |cRXP_FRIENDLY_Magatha Temível Totem|r
    .turnin 1063 >>Entregue A Velha Bruxa
.target Magatha Grimtotem
    .accept 1064 >>Aceite Ajuda Renegada
step
    .goto Thunder Bluff,78.62,28.56
>>Fale com o |cRXP_FRIENDLY_Arquidruida Hamuul Runa Totem|r
    .turnin 1489 >>Entregue Hamuul Runa Totem
.target Arch Druid Hamuul Runetotem
    .accept 1490 >>Aceite Nara Juba Agreste
step
    .goto Thunder Bluff,75.65,31.62
.target Nara Wildmane
>>Fale com |cRXP_FRIENDLY_Nara Juba Agreste|r
    .turnin 1490 >>Entregue Nara Juba Agreste
step
    .goto Thunder Bluff,23.00,21.0
>>Fale com o |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 1064 >>Entregue Ajuda Renegada
.target Apothecary Zamah
    .accept 1065 >>Aceite A jornada para Serraria Tarren
step
    .goto Thunder Bluff,25.16,20.95
    .trainer >>Treine seus feitiços de classe se necessário
	>>Mude seus talentos para AdE Gélido se você ainda não o fez
step
    .goto Thunder Bluff,46.8,50.0
    .fly The Crossroads >>Voe para A Encruzilhada
step
    .goto The Barrens,51.60,30.90
	>>Vá para cima
.target Darsok Swiftdagger
>>Fale com |cRXP_FRIENDLY_Darsok Punhálacre|r
    .turnin 876 >>Entregue Serena Plumassangue
step
    .goto The Barrens,51.50,30.34
    .fly Orgrimmar >>Voe para Orgrimmar
]])
