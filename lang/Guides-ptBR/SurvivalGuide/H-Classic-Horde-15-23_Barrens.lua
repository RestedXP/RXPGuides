if GetLocale() ~= "ptBR" then return end
local faction = UnitFactionGroup("player")
if faction == "Alliance" then return end

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 15-19 Savanas
#version 1
#group Guia de Sobrevivência (H)
#subgroup RXP Sobrevivência Guia 1-20
#next 19-23 Stonetalon/Barrens/Vale Gris


step << !Tauren !Hunter !Shaman
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gar'Thok|r
    .turnin 837 >>Entregue Encroachment
    .goto Durotar,51.95,43.50
    .target Gar'Thok
    .isQuestComplete 837
step << Priest
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
	.train 6074 >>Treine suas magias de classe
    .target Tai'jin
    .xp <14,1
    .xp >16,1
step << Priest
    #optional
    .goto Durotar,54.26,42.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tai'jin|r
	.train 8102 >>Treine suas magias de classe
    .target Tai'jin
    .xp <16,1
step << Orc Warrior/Troll Warrior
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 1160 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <14,1
    .xp >16,1
step << Orc Warrior/Troll Warrior
    #optional
    .goto Durotar,54.18,42.46
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tarshaw|r
    .train 285 >>Treine suas magias de classe
    .target Tarshaw Jaggedscar
    .xp <16,1
step << Rogue
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 1758 >>Treine suas magias de classe
    .target Kaplak
    .xp <14,1
    .xp >16,1
step << Rogue
    #optional
    .goto Durotar,51.98,43.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaplak|r
    .train 6761 >>Treine suas magias de classe
    .target Kaplak
    .xp <16,1
step << Warlock
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 6222 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <14,1
    .xp >16,1
step << Warlock
    .goto Durotar,54.70,41.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kitha|r e compre |T133738:0|t[Grimório de Sacrificar]
    .collect 16351,1,842,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kitha
    .xp <16,1
step << Warlock
    #optional
    .goto Durotar,54.37,41.20
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dhugru|r
    .train 1455 >>Treine suas magias de classe
    .target Dhugru Gorelust
    .xp <16,1
step << !Tauren !Hunter !Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
    .isQuestAvailable 840
step
    #optional
    .abandon 480 >>Abandone A Fiandeira para evitar problemas no registro de missões. Você a aceitará novamente em breve.
    .isOnQuest 480
step
    #completewith next
    .zone The Barrens >>Viaje para os Sertões
    .zoneskip The Barrens
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
    .isOnQuest 840
step << !Tauren !Hunter !Shaman
    #label Akzeloth
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 809 >>Entregue Ak'Zeloth
    .accept 924 >>Aceite A Semente Demoníaca
    .isOnQuest 809
    .target Ak'Zeloth
    .group
step << !Tauren !Hunter !Shaman
    .goto The Barrens,62.34,20.03
    >>|cRXP_WARN_Saqueie a|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_ao lado de|r |cRXP_FRIENDLY_Ak'Zeloth|r|cRXP_WARN_. Este item tem um temporizador de 30 minutos, portanto certifique-se de ser rápido|r
    .turnin 926 >>Entregue Pedra do Poder Defeituosa
    .isOnQuest 924
    .group
step << !Tauren !Hunter !Shaman
    #completewith next
    .goto The Barrens,52.34,29.27,150 >>Vá para The Encruzilhada
    .subzoneskip 380
step << !Undead !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Mankrik|r e |cRXP_FRIENDLY_Thork|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .accept 869 >>Aceite Na Cola dos Larápios
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Aceite Consumido pelo Ódio
    .accept 4921 >>Aceite Perdido na Batalha
    .target +Mankrik
    .goto The Barrens,52.00,31.60
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
    .target +Thork
    .goto The Barrens,51.50,30.87
    .maxlevel 16
step << !Undead !Tauren
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r, |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r e |cRXP_FRIENDLY_Mankrik|r
    .accept 6365 >>Aceite Encomenda para Gryshka
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .accept 869 >>Aceite Na Cola dos Larápios
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Aceite Consumido pelo Ódio
    .accept 4921 >>Aceite Perdido na Batalha
    .target +Mankrik
    .goto The Barrens,52.00,31.60
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Mankrik|r e |cRXP_FRIENDLY_Thork|r
    .accept 869 >>Aceite Na Cola dos Larápios
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Aceite Consumido pelo Ódio
    .accept 4921 >>Aceite Perdido na Batalha
    .target +Mankrik
    .goto The Barrens,52.00,31.60
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
    .target +Thork
    .goto The Barrens,51.50,30.87
    .maxlevel 16
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Tonga|r e |cRXP_FRIENDLY_Mankrik|r
    .accept 869 >>Aceite Na Cola dos Larápios
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.94
    .accept 899 >>Aceite Consumido pelo Ódio
    .accept 4921 >>Aceite Perdido na Batalha
    .target +Mankrik
    .goto The Barrens,52.00,31.60
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 867 >>Aceite As harpias bandoleiras
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .turnin 6365 >>Entregue Encomenda para Gryshka << !Tauren !Undead
    .accept 6384 >>Aceite Carona Para Orgrimmar << !Tauren !Undead
    --.fp Crossroads >> Get the Crossroads Flight Path
    .zoneskip Orgrimmar
    .target Devrak
    .isOnQuest 6365
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Aceite Esporos de Fungos
    .accept 1492 >>Aceite Mestre Portuário Caruncho
	.turnin 1358 >>Entregue Uma amostra para Hermógenes
    .target Apothecary Helbrim
step
    #completewith DemonSeed
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os para obter seus |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .group
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.58,19.38,100 >>Vá ao topo da montanha
    .isOnQuest 924
step
    .group
    #label DemonSeed
    .goto The Barrens,47.98,19.08
    >>Clique com o botão direito no |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Certifique-se de que você tem um|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_(duração de 30 minutos) com você|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step
    .group
    #completewith DisruptTheAttacks
    .goto The Barrens,47.58,19.38,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,51.09,22.68,100 >>Desça a montanha de onde você veio
    .isOnQuest 924
step
    #completewith DisruptTheAttacks
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os para obter seus |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Buscadores de Água|r, os |cRXP_ENEMY_Thornweavers|r e os |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .isOnQuest 871
step
    .goto The Barrens,55.70,27.30
    .use 4926 >>Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Se não tiver saído, você o receberá depois|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step << !Tauren !Hunter !Shaman
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,53.63,24.50,50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
    >>Mate os |cRXP_ENEMY_Buscadores de Água|r, os |cRXP_ENEMY_Thornweavers|r e os |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
    .isOnQuest 871
step
    #loop
    .goto The Barrens,53.71,29.19,0
    .goto The Barrens,53.36,26.28,80,0
    .goto The Barrens,53.23,28.41,80,0
    .goto The Barrens,53.57,29.58,80,0
    .goto The Barrens,52.91,32.90,80,0
    .goto The Barrens,51.31,32.91,80,0
    .goto The Barrens,50.50,31.05,80,0
    .goto The Barrens,50.05,29.77,80,0
    .goto The Barrens,50.93,27.72,80,0
    .goto The Barrens,52.83,27.91,80,0
    .goto The Barrens,53.71,29.19,80,0
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os para obter seus |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 844 >>Entregue A Ameaça Pinote
    .accept 845 >>Aceite As Zebras
    .target Sergra Darkthorn
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 871 >>Entregue Em Defesa do Posto Remoto
    .accept 872 >>Aceite A Ofensiva do Posto Remoto
    .target Thork
    .isQuestComplete 871
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 872 >>Aceite A Ofensiva do Posto Remoto
    .target Thork
    .isQuestTurnedIn 871
step << !Tauren !Undead
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Volte à Encruzilhada
    .target Zargh
    .isOnQuest 6386
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>Agora você deve procurar um grupo para Cavernas Ígneas
    .dungeon RFC
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 845
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
    .dungeon RFC
step << skip --!Tauren
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>Siga o caminho à esquerda para cima
    .dungeon RFC
step << skip --!Tauren
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Salte em uma das gaiolas. Faça um Logout Pular saindo da conta e entrando novamente|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    .dungeon RFC
step << skip --!Tauren
    #completewith RFCPickups
    .goto Thunder Bluff,50.75,37.07,40 >>Pegue o elevador para Trovão Blefe
    .dungeon RFC
step << Tauren
    #completewith RFCPickups
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .zoneskip Thunder Bluff
    .dungeon RFC
step << !Tauren
    #completewith RFCPickups
    .goto Mulgore,68.68,60.34,120,0
    .zone Thunder Bluff >>Viaje para o sul até Camp Taurajo e entre em Mulgore. Viaje para Penhasco do Trovão de lá
    >>|cRXP_WARN_Se você tem a rota de voo do Penhasco do Trovão, voe lá em vez disso|r
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>Vá para o Morro dos Anciãos
    .dungeon RFC
step
    #label RFCPickups
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .accept 5722 >>Aceite Procurando pela Bolsa Perdida
    .accept 5723 >>Aceite Testando a Força de um Inimigo
    .target Rahauro
    .dungeon RFC
step
    #completewith next
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fp Thunder Bluff >>Aprenda a rota de voo para Penhasco do Trovão << !Tauren
    .fly Orgrimmar >>Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Tal
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>Abate os |cRXP_ENEMY_Lâmina Ardente|r em Rocha do Crânio até que |cRXP_LOOT_Lieutenant's Insignia|r caia
    .complete 5726,1 --Lieutenant's Insignia (1)
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Escondido Enemies
    .accept 5727 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .accept 5761 >>Aceite Abate da Fera
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .complete 5727,1 --Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
    .skipgossip
    .target Neeru Fireblade
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entregue Escondido Enemies
    .accept 5728 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destrua|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_já que você não precisa mais dele|r
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437 >>Entre no portal da Instância RFC. Entre na zona
    .dungeon RFC
step
    #completewith next
    >>Abate os |cRXP_ENEMY_Troggs Iraflama|r e os |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .turnin 5722 >>Entregue Procurando a Mochila Perdida
    .accept 5724 >>Aceite Retorno da Sacola Perdida
    .target Maur Grimtotem
    .isOnQuest 5722
    .dungeon RFC
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maur|r
    .accept 5724 >>Aceite Retorno da Sacola Perdida
    .target Maur Grimtotem
    .isQuestTurnedIn 5722
    .dungeon RFC
step
    #label TroggsShamans
    >>Abate os |cRXP_ENEMY_Troggs Iraflama|r e os |cRXP_ENEMY_Xamãs Iraflama|r
    .complete 5723,1 --Ragefire Trogg (8)
    .mob +Ragefire Trogg
    .complete 5723,2 --Ragefire Shaman (8)
    .mob +Ragefire Shaman
    .isOnQuest 5723
    .dungeon RFC
step
    #requires TroggsShamans
    #completewith BazzalanandJergosh
    >>Mate os |cRXP_ENEMY_Cultistas Lâmina Calcinante|r e os |cRXP_ENEMY_Bruxos Lâmina Calcinante|r. Saque-os para obter |cRXP_LOOT_Spells of Sombra|r e |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    >>Mate |cRXP_ENEMY_Taragaman, o Famélico|r. Saqueie-o para obter seu |cRXP_LOOT_Coração|r
    .complete 5761,1 -- Taragaman the Hungerer's Heart
    .mob Taragaman the Hungerer
    .isOnQuest 5761
    .dungeon RFC
step
    #label BazzalanandJergosh
    >>Abate |cRXP_ENEMY_Bazzalan|r e |cRXP_ENEMY_Jergosh, o Invocador|r
    .complete 5728,1 --Bazzalan (1)
    .mob +Bazzalan
    .complete 5728,2 --Jergosh the Invoker (1)
    .mob +Jergosh the Invoker
    .isOnQuest 5728
    .dungeon RFC
step
    >>Mate os |cRXP_ENEMY_Cultistas Lâmina Calcinante|r e os |cRXP_ENEMY_Bruxos Lâmina Calcinante|r. Saque-os para obter |cRXP_LOOT_Spells of Sombra|r e |cRXP_LOOT_Incantations from the Nether|r
    .complete 5725,1 --Spells of Shadow (1)
    .complete 5725,2 --	Incantations from the Nether (1)
    .mob Searing Blade Cultist
    .mob Searing Blade Warlock
    .isOnQuest 5725
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5761 >>Entregue Abate da Fera
    .target Neeru Fireblade
    .isQuestComplete 5761
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5728 >>Entregue Escondido Enemies
    .accept 5729 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestComplete 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5729 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,49.6,50.4
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Neeru Cortafogo|r
    .turnin 5729 >>Entregue Escondido Enemies
    .accept 5730 >>Aceite Escondido Enemies
    .target Neeru Fireblade
    .dungeon RFC
    .isQuestTurnedIn 5728
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >>Entregue Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    #completewith next
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
    .dungeon RFC
step
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    .zoneskip Tirisfal Glades
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith Varimathras
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
    .dungeon RFC
step
    #completewith next
    .goto Undercity,66.09,20.06,20,0
    .goto Undercity,64.37,23.94,20,0
    .goto Undercity,65.93,26.71,10,0
    .goto Undercity,65.89,34.03,10,0
    .goto Undercity,64.22,39.77,10,0
    .goto Undercity,65.53,43.62,15 >>Pegue o elevador até Cidade Baixa
    .goto Undercity,56.2,96.2
    .dungeon RFC
step
    #label Varimathras
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Varimatras|r
    .turnin 5725 >>Entregue O Poder de Destruir...
    .target Varimathras
    .isQuestComplete 5725
    .dungeon RFC
step
    #completewith next
    .hs >>Vá para A Encruzilhada
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
    .dungeon RFC
step
    #completewith FinalRFCTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon RFC
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entregue Retorno da Mochila Perdida
    .turnin 5723 >>Entregue Testando a Força de um Inimigo
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
    .isQuestComplete 5723
step
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5724 >>Entregue Retorno da Mochila Perdida
    .target Rahauro
    .dungeon RFC
    .isOnQuest 5724
step
    #label FinalRFCTurnin
    .goto Thunder Bluff,70.4,29.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rahauro|r
    .turnin 5723 >>Entregue Testando a Força de um Inimigo
    .target Rahauro
    .dungeon RFC
    .isQuestComplete 5723
step
    #completewith RatchetArrive
    .hs >>Vá para A Encruzilhada
    .cooldown item,6948,>0
    .use 6948
    .dungeon RFC
    .zoneskip Thunder Bluff,1
step
    #completewith RatchetArrive
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Tal
    .cooldown item,6948,<0
    .zoneskip The Barrens
    .dungeon RFC
step
    #optional
    .abandon 5723 >>Abandone Testando a Força de um Inimigo
    .dungeon RFC
step
    #optional
    .abandon 5725 >>Abandone O Poder de Destruir...
    .dungeon RFC
step
    #optional
    .abandon 5728 >>Abandone Escondido Enemies
    .dungeon RFC
step
    #optional
    .abandon 5761 >>Abandone Mate a besta
    .dungeon RFC
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate os |cRXP_ENEMY_Razormane Geomancers|r e os |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #completewith next
    >>Saqueie has multiple spawn locations
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 5041
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Mate o |cRXP_ENEMY_Kreenig Rosnento|r. Saqueie o |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
    .isOnQuest 872
step
    #optional
    #completewith next
    .goto The Barrens,56.75,24.69,0
    .goto The Barrens,59.26,24.67,0
    >>Mate os |cRXP_ENEMY_Razormane Geomancers|r e os |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Tem vários locais de desova|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
    .isOnQuest 5041
step
    #loop
	.goto The Barrens,58.90,25.37,0
	.goto The Barrens,59.37,25.38,50,0
	.goto The Barrens,59.63,24.46,50,0
	.goto The Barrens,59.63,23.88,50,0
	.goto The Barrens,59.06,23.89,50,0
	.goto The Barrens,58.62,23.98,50,0
	.goto The Barrens,57.83,24.28,50,0
	.goto The Barrens,56.87,24.55,50,0
	.goto The Barrens,56.74,25.37,50,0
	.goto The Barrens,57.25,25.46,50,0
	.goto The Barrens,57.52,25.63,50,0
	.goto The Barrens,57.65,25.08,50,0
	.goto The Barrens,58.24,24.98,50,0
	.goto The Barrens,58.90,25.37,50,0
    >>Mate os |cRXP_ENEMY_Razormane Geomancers|r e os |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
    .isOnQuest 872
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zhevra|r que você veja. Saqueie os |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .group
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entregue A Semente Demônioíaca
    .target Ak'Zeloth
    .isQuestComplete 924
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zhevra|r que você veja. Saqueie os |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .goto The Barrens,63.08,36.56,120 >>Vá para Ratchet
    .subzoneskip 392
step
    #label RatchetArrive
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gasganete|r
    .accept 887 >>Aceite Os Flibusteiros dos Mares do Sul
    .target Gazlowe
step
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >>Aprenda a rota de voo para Ratchet
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Wanted poster|r
    .accept 894 >>Aceite A Rebimboca
    .goto The Barrens,62.98,37.22
    .accept 895 >>Aceite Procura-se: Capitão Garvão
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_Equipe|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T132394:0|t[Machado Farpado] |cRXP_BUY_dele|r
    .collect 2025,1,895,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_Equipe o|r |T132394:0|t[Machado Farpado]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T133046:0|t[Martelo de Rocha] |cRXP_BUY_dele|r
    .collect 2026,1,895,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_Equipe|r |T133046:0|t[Martelo de Rocha] |cRXP_WARN_quando você estiver no nível 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,895,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith BarenLongshore
    +|cRXP_WARN_Equipe|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma segunda|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele para sua segunda arma|r
    .collect 2027,2,895,1 --Collect Scimitar(1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    .goto The Barrens,62.27,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Drohn|r
    .turnin 819 >>Entregue Barril Vazio de Chen
    .accept 821 >>Aceite Barril Vazio do Chen
    .target Brewmaster Drohn
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    >>|cRXP_BUY_Compre|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_São extremamente baratos, compre quantos você quiser|r
    .vendor >>Comerciante Lixo
    .collect 4592,40,895,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,895,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .home >>Defina sua Pedra de Retorno em Ratchet
    .target Innkeeper Wiley
    .bindlocation 392
    .isQuestAvailable 887
step
    #completewith BaronLongshore
    .destroy 5088 >>|cRXP_WARN_Remova o|r |T133735:0|t[Manual de Operação do Console de Controle] |cRXP_WARN_da mochila, pois não é mais necessário|r
step
    #completewith BaronLongshore
    >>Mate os |cRXP_ENEMY_Southsea Brigands|r e os |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
	#completewith next
	>>Mate |cRXP_ENEMY_Tazan|r. Pegue sua |cRXP_LOOT_Algibeira|r
    >>|cRXP_WARN_Ele patrulha subindo e descendo a colina|r
    .complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,63.57,49.14,0
    .goto The Barrens,62.64,49.72,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Mate |cRXP_ENEMY_Barão Longacosta|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ele pode estar em um dos acampamentos|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
step << Orc Rogue/Troll Rogue
	#completewith next
	>>Mate |cRXP_ENEMY_Tazan|r. Pegue sua |cRXP_LOOT_Algibeira|r
    >>|cRXP_WARN_Ele patrulha subindo e descendo a colina|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    #loop
    .goto The Barrens,64.23,47.10,0
    .goto The Barrens,64.40,44.09,50,0
    .goto The Barrens,63.62,46.26,50,0
    .goto The Barrens,64.23,47.10,50,0
    >>Mate os |cRXP_ENEMY_Southsea Brigands|r e os |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << Orc Rogue/Troll Rogue
    .goto The Barrens,63.70,44.32,50,0
    .goto The Barrens,62.70,44.07,50,0
    .goto The Barrens,62.18,44.47
    >>Mate |cRXP_ENEMY_Tazan|r. Pegue sua |cRXP_LOOT_Algibeira|r
    >>|cRXP_WARN_Ele patrulha subindo e descendo a colina|r
	.complete 1963,1 --Tazan's Satchel (1)
    .unitscan Tazan
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gasganete|r
    .turnin 887 >>Entregue Os Flibusteiros dos Mares do Sul
    .turnin 895 >>Entregue Procura-se: Capitão Garvão
    .accept 890 >>Aceite [DEPRECATED]The Missing Carregamento
    .target Gazlowe
step
    .goto The Barrens,63.35,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Dizzywig|r
    .turnin 1492 >>Entregue Mestre Portuário Caruncho
    .turnin 890 >>Entregue Carregamento perdido
    .accept 892 >>Aceite [DEPRECATED]The Missing Carregamento
    .accept 896 >>Aceite A Fortuna do Mineiro
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gasganete|r
    .turnin 892 >>Entregue Carregamento perdido
    .accept 888 >>Aceite Butim Roubado
    .target Gazlowe
step << Troll Warrior/Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior/Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T132394:0|t[Machado Farpado] |cRXP_BUY_dele|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T132394:0|t[Machado Farpado]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Tauren Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T133046:0|t[Martelo de Rocha] |cRXP_BUY_dele|r
    .collect 2026,1,850,1 --Collect Rock Hammer (1)
    .money <0.6286
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe|r |T133046:0|t[Martelo de Rocha] |cRXP_WARN_quando você estiver no nível 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Shaman
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Shaman
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele.|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um segundo|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele para sua mão secundária.|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
    .isQuestComplete 845
step
    #completewith next
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,55.27,37.82,0
    .goto The Barrens,48.33,36.75,0
    .goto The Barrens,55.27,37.82,80,0
    .goto The Barrens,53.84,38.52,80,0
    .goto The Barrens,52.63,38.07,80,0
    .goto The Barrens,49.49,37.20,80,0
    .goto The Barrens,48.33,36.75,80,0
    >>Mate todos os |cRXP_ENEMY_Zhevras|r. Saque-os pelos |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .turnin 872 >>Entregue A Ofensiva do Posto Remoto
    .target Thork
    .isQuestComplete 872
    .isQuestComplete 5041
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .target Thork
    .isQuestComplete 5041
step
    #optional
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .turnin 872 >>Entregue A Ofensiva do Posto Remoto
    .target Thork
    .isQuestComplete 872
step
    #label XroadsTurnins3
    .goto The Barrens,52.23,31.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 845 >>Entregue As Zevras
    .accept 903 >>Aceite Predadores dos Sertões
    .target Sergra Darkthorn
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step
    #completewith RegtharDeathgate1
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #completewith next
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label RegtharDeathgate1
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Aceite Os Líderes Kolkar
    .accept 855 >>Aceite Braçadeiras de Centauro
    .target Regthar Deathgate
step
    #completewith Leaders
    >>Mate os |cRXP_ENEMY_Cavalgantes Kolkar|r e os |cRXP_ENEMY_Trovejadores Kolkar|r. Saque-os pelos |cRXP_LOOT_Braçadeiras|r
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Wrangler
    .mob Kolkar Stormer
step
    #completewith next
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.06,22.54
    >>Mergulhe debaixo d'água para o |cRXP_PICK_Borbulhando Rachadura|r
    .complete 870,1 --Explore the waters of the Forgotten Pools
step
    .goto The Barrens,42.82,23.52
    >>Mate |cRXP_ENEMY_Barak Findekodo|r. Saque-o pela |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Cuidado! Os golpes de mêlée dele causam muito dano e ele é protegido por um|r |cRXP_ENEMY_Cavalgante Kolkar|r|cRXP_WARN_ . Eles podem prender você e atacar de distância|r
    .complete 850,1 --Kodobane's Head (1)
    .mob Barak Kodobane
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entregue Os Líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    #label Leaders
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entregue Os Líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
step
    #completewith next
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #loop
    .goto The Barrens,41.62,23.42,0
    .goto The Barrens,41.62,23.42,50,0
    .goto The Barrens,41.30,24.31,50,0
    .goto The Barrens,40.52,22.88,50,0
    .goto The Barrens,41.00,21.19,50,0
    .goto The Barrens,40.32,20.69,50,0
    >>Mate os |cRXP_ENEMY_Savannah Prowlers|r. Saque-os para obter seus |cRXP_LOOT_Claws|r e |cRXP_LOOT_Tusks|r
    .complete 903,1 --Prowler Claws (7)
    .complete 821,1 --Savannah Lion Tusk (5)
    .mob Savannah Prowler
step
    #loop
    .goto The Barrens,41.84,14.81,0
    .goto The Barrens,41.51,19.09,60,0
    .goto The Barrens,40.82,18.23,60,0
    .goto The Barrens,40.95,16.80,60,0
    .goto The Barrens,41.23,15.79,60,0
    .goto The Barrens,41.21,14.75,60,0
    .goto The Barrens,41.84,14.81,60,0
    >>Mate os |cRXP_ENEMY_Witchwing Harpies|r e os |cRXP_ENEMY_Witchwing Roguefeathers|r. Saque-os pelas |cRXP_LOOT_Garras|r
    .complete 867,1 --Witchwing Talon (8)
    .mob Witchwing Harpy
    .mob Witchwing Roguefeather
step
    #completewith Samophlange
    +|cRXP_WARN_Cuidado com|r |cRXP_ENEMY_Sunscale Scytheclaws|r |cRXP_WARN_na área. Eles são até nível 18 e podem|r |T132152:0|t[Surra] |cRXP_WARN_(Cargas 2 ataques extras a cada 10 segundos)|r
step
    #sticky
    #completewith Samophlange
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrang Sanguebravo|r
	.vendor	>>Venda itens inúteis e repare
    .target Vrang Wildgore
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 894 >>Entregue Samoflange
    .accept 900 >>Aceite A Rebimboca
step
    .goto The Barrens,52.33,11.57
    >>Clique em |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Tenha cuidado! Dois inimigos aparecerão depois que você desligar a Válvula|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>Clique na |cRXP_PICK_Válvula|r
    >>|cRXP_WARN_Um inimigo aparecerá depois que você desligar a Válvula|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>Clique na |cRXP_PICK_Válvula|r
    .complete 900,1 --Shut off Main Control Valve (1)
step
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 900 >>Entregue Samoflange
    .accept 901 >>Aceite A Rebimboca
step
    .goto The Barrens,52.84,10.40
    >>Abata o |cRXP_ENEMY_Engenhoqueiro Faísca|r no prédio. Saque sua |cRXP_LOOT_Chave|r
    .complete 901,1 --Console Key (1)
    .mob Tinkerer Sniggles
step
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 901 >>Entregue Samoflange
    .accept 902 >>Aceite A Rebimboca
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 5211 >>Treine suas magias de classe
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >>Treine suas magias de classe
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >>Use sua Pedra de Regresso para ir a Vila Catraca
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    >>|cRXP_BUY_Compre|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_São extremamente baratos, compre quantos você quiser|r
    .vendor >>Comerciante Lixo
    .collect 4592,40,896,1 --Longjaw Mud Snapper (40)
    .collect 1205,40,896,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (40)
    .target Innkeeper Wiley
    .isQuestAvailable 896
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 902 >>Entregue Samoflange
    .accept 3921 >>Aceite Juntatudy Jogafora
    .accept 1483 >>Aceite Zé Fízzica
    .target Sputtervalve
step
    #completewith Crossroadsturnins2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >>Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Darsok|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Gazrog|r
    .turnin 867 >>Entregue Saqueadores Harpíia
    .accept 875 >>Aceite Tenentes das Harpíias
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .turnin 870 >>Entregue Os Poços Esquecidos
    .accept 877 >>Aceite Oásis Estagnante
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 903 >>Entregue Espreitadores das Savanas
    .accept 881 >>Aceite Echeyaki
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 869 >>Entregue Ladrões de Raptor
    .accept 3281 >>Aceite Prata Roubada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .isQuestComplete 869
step
    #label Crossroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Helbrim|r, |cRXP_FRIENDLY_Darsok|r, |cRXP_FRIENDLY_Tonga|r e |cRXP_FRIENDLY_Sergra|r
    .turnin 867 >>Entregue Saqueadores Harpíia
    .accept 875 >>Aceite Tenentes das Harpíias
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .turnin 870 >>Entregue Os Poços Esquecidos
    .accept 877 >>Aceite Oásis Estagnante
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 903 >>Entregue Espreitadores das Savanas
    .accept 881 >>Aceite Echeyaki
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dela|r
    .collect 11362,1,896,1 --Medium Quiver (1)
    .collect 2515,1800,896,1 --Sharp Arrow (1800)
    .target Uthrok
step
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .isQuestAvailable 881
step
    #completewith CatsEye
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << !Tauren !Undead
    .goto Orgrimmar,54.097,68.407
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Gryshka|r
    .turnin 6384 >>Entregue Carona para Orgrimmar
    .accept 6385 >>Aceite Doraso, o Mestre de Mantícoras
    .target Innkeeper Gryshka
    .isOnQuest 6384
step << !Tauren !Undead
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .turnin 6385 >>Entregue Doraso, o Mestre de Mantícoras
    .accept 6386 >>Aceite Devolver à Encruzilhada
    .target Doras
    .isOnQuest 6385
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8019 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 913 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
step
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Aceite Os Espíritos de Stonetalon
    .target Zor Lonetree
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >>Treine [Abrir Fechadura]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .accept 2379 >>Aceite Zando'Zan
    .target Shenthul
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1963 >>Entregue A Mão Estilhaçada - Missão
    .accept 1858 >>Aceite The Estilhaçada Hand - Missão
    .target Therzok
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Entregue Zando'zan
    .accept 2382 >>Aceite Wrenix da Vila Catraca
    .target Zando'zan
step << Orc Rogue/Troll Rogue
    #completewith next
    .goto Orgrimmar,42.10,49.51
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre um|r |T134065:0|t[Thieves' Ferramentas] |cRXP_BUY_dele|r
    .collect 5060,1,1858,1 --Collect Thieves' Tools (1)
    .target Rekkul
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.52
    >>|cRXP_WARN_Usar|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_para abrir|r |T133626:0|t[Algibeira de Tazan]
    .complete 1858,1 --Tazan's Logbook (1)
    .money <0.15
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Entregue A Mão Estilhaçada - Missão
    .target Therzok
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,53.99,68.05
    >>|cRXP_WARN_Use|r |T133644:0|t[Bater Carteira] |cRXP_WARN_em|r |cRXP_ENEMY_Gamon|r |cRXP_WARN_na estalagem. Use a chave dele para abrir|r |T133626:0|t[Algibeira de Tazan]
	.collect 7208,1,1858,1 --Tazan's Key
	.complete 1858,1 --Tazan's Logbook (1)
    .isOnQuest 1858
step << Orc Rogue/Troll Rogue
    .goto Orgrimmar,42.74,53.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Therzok|r
    .turnin 1858 >>Entregue A Mão Estilhaçada - Missão
    .target Therzok
step << Warlock
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1455 >>Treine suas magias de classe
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1014 >>Treine suas magias de classe
    .target Mirket
    .xp <18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório de Sacrificar]
    .collect 16351,1,896,1 --Grimoire of Sacrifice (Rank 1) (1)
    .target Kurgul
    .xp <16,1
    .xp >18,1
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório of Seta de Fogo (Rank 3)]
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (Rank 1) (1)
    .target Kurgul
    .xp <18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 285 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 8198 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 13795 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 2643 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <18,1
step << Hunter
    .goto Orgrimmar,66.34,14.83
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
    .train 24557 >>Treine as magias do seu mascote
    .target Xao'tsu
    .xp <18,1
step << Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Treine Cajados
    .target Hanashi
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <18,1
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 2120 >>Treine suas magias de classe
    .target Pephredo
    .xp <16,1
    .xp >18,1
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >>Treine suas magias de classe
    .target Pephredo
    .xp <18,1
step
    #completewith next
    .skill firstaid,40 >>|cRXP_WARN_Criar|r |T133685:0|t[Linen Bandages] |cRXP_WARN_até alcançar 40 de habilidade|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Arnok|r
    .train 3276 >>Entrene |T133688:0|t[Bandagem Grossa de Linho]
    .target Arnok
    .skill firstaid,<1,1
step
    #completewith next
    .skill firstaid,50 >>|cRXP_WARN_Criar|r |T133688:0|t[Heavy Linen Bandages] |cRXP_WARN_até alcançar 50 de habilidade|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Arnok|r
    .train 3274 >>Entrene Socorrista Profissional
    .target Arnok
    .skill firstaid,<1,1
step
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >>Entre nas Savanas pela saída ocidental
    .zoneskip The Barrens
    .isOnQuest 896
step
    #label CatsEye
    #loop
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Abata os |cRXP_ENEMY_Venture Co. Enforcers|r e os |cRXP_ENEMY_Venture Co. Overseers|r. Saque-os pelos |cRXP_LOOT_Cats Eye Emerald|r
    >>|cRXP_WARN_Avoid going into the mine. Mobs are easily double pulled and there is little room for escape|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #ssf
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Abate os |cRXP_ENEMY_Venture Co. Overseers|r. Saque-os pelo seu |T132794:0|t[|cRXP_LOOT_Frasco de Óleo|r]
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #ah
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Abate os |cRXP_ENEMY_Venture Co. Overseers|r. Saque-os pelo seu |T132794:0|t[|cRXP_LOOT_Frasco de Óleo|r]
    >>|cRXP_WARN_Você também pode comprá-los na Casa de Leilões|r
    .collect 814,5,103,1 --Flask of Oil (5)
    .dungeon DM
step
    #completewith Wenikee
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Ornery Plainstrider
step
    #label Wenikee
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wenikee|r
    .turnin 3921 >>Entregue Juntatudy Jogafora
    .accept 3922 >>Aceite Chumbalheiras
    .target Wenikee Boltbucket
step
    #sticky
    #completewith Slugs
    >>Loot |cRXP_PICK_Tool Buckets|r from the ground around The Sludge Fen
    .complete 3922,1 --Nugget Slugs (15)
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r in The Sludge Fen
    .accept 858 >>Aceite Ignição
    .target Wizzlecrank's Shredder
step
    #completewith next
    +|cRXP_WARN_Cuidado se|r |cRXP_ENEMY_Foreman Grills|r |cRXP_WARN_ou|r |cRXP_ENEMY_Sludge Fera|r |cRXP_WARN_estiverem ativos. São inimigos raros fortes de nível 19|r
    .unitscan Foreman Grills
    .unitscan Sludge Beast
step
    .goto The Barrens,56.52,8.47,20,0
    .goto The Barrens,56.34,8.24,12,0
    .goto The Barrens,56.12,8.33,12,0
    .goto The Barrens,56.05,8.49,12,0
    .goto The Barrens,56.13,8.56,12,0
    .goto The Barrens,56.34,8.24
    >>Abata o |cRXP_ENEMY_Supervisor Rancatraca|r. Saque-o para obter a |cRXP_LOOT_Chave|r
    >>|cRXP_WARN_Patrulha para cima e para baixo na plataforma|r
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_WARN_Isto iniciará uma escolta. Certifique-se de que você tem saúde máxima|r
    .turnin 858 >>Entregue Ignição
    .accept 863,1 >>Aceite A Fuga
    .target Wizzlecrank's Shredder
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_Dois|r |cRXP_ENEMY_Mercenários da Empreendimentos S.A.|r |cRXP_WARN_aparecerão quando o retalhador subir ao terreno elevado. Mate-os e aguarde a cena final|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
step
    #loop
	.goto The Barrens,55.69,6.94,0
	.goto The Barrens,55.50,7.98,25,0
	.goto The Barrens,55.60,8.85,25,0
	.goto The Barrens,56.04,9.79,25,0
	.goto The Barrens,56.68,8.82,25,0
	.goto The Barrens,57.17,9.08,25,0
	.goto The Barrens,57.61,8.41,25,0
	.goto The Barrens,57.31,7.20,25,0
	.goto The Barrens,56.72,6.92,25,0
	.goto The Barrens,56.17,6.80,25,0
	.goto The Barrens,55.69,6.94,25,0
    >>Loot |cRXP_PICK_Tool Buckets|r from the ground around The Sludge Fen
    .complete 3922,1 --Nugget Slugs (15)
step
	#completewith NuggetSlugsTurnIn
	+|cRXP_WARN_Se você tem mais de 15 |cRXP_LOOT_Chumbalheiras|r|cRXP_WARN_, divida a pilha de extras (shift click) e depois delete-os|r
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #sticky
    #completewith NuggetSlugsTurnIn
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Saqueie o |cRXP_LOOT_Echeyakee's Esconder-se|r
    >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não aparece após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não recebeu a tag quando apareceu, pule este passo|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #optional
    .goto The Barrens,52.23,31.00
    .abandon 881 >>|cRXP_WARN_Se o |cRXP_ENEMY_Echeyaki|r não apareceu depois de usar o |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não recebeu a tag quando ele apareceu, abandone Echeyaki, depois volte para a cidade e aceite-a novamente|r
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
    .itemcount 5100,<1 --Echeyakee's Hide (0)
step
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Saqueie o |cRXP_LOOT_Echeyakee's Esconder-se|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
    #label NuggetSlugsTurnIn
    .goto The Barrens,49.05,11.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wenikee|r
    .turnin 3922 >>Entregue em Chumbalheiras
    .accept 3923 >>Aceite Rilli Passomal
    .target Wenikee Boltbucket
step
    #loop
    .goto The Barrens,47.81,14.18,0
    .goto The Barrens,47.81,14.18,50,0
    .goto The Barrens,45.78,14.74,50,0
    .goto The Barrens,44.60,15.04,50,0
    >>Complete matando |cRXP_ENEMY_Raptors|r. Saque-os |cRXP_LOOT_Cabeças|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #loop
	.goto The Barrens,40.15,15.98,0
	.goto The Barrens,40.28,15.49,50,0
	.goto The Barrens,39.50,14.68,50,0
	.goto The Barrens,39.47,13.24,50,0
	.goto The Barrens,38.94,12.80,50,0
	.goto The Barrens,38.18,12.56,50,0
	.goto The Barrens,37.96,13.52,50,0
	.goto The Barrens,38.62,13.95,50,0
	.goto The Barrens,38.18,14.62,50,0
	.goto The Barrens,38.14,15.59,50,0
	.goto The Barrens,37.29,15.68,50,0
	.goto The Barrens,37.24,16.26,50,0
	.goto The Barrens,37.67,16.34,50,0
	.goto The Barrens,38.35,17.08,50,0
	.goto The Barrens,38.83,17.71,50,0
	.goto The Barrens,39.37,17.21,50,0
	.goto The Barrens,39.87,16.66,50,0
	.goto The Barrens,40.15,15.98,50,0
    >>Mate |cRXP_ENEMY_Asabruxas Matadoras|r. Pegue seus |cRXP_LOOT_Anéis|r
    >>|cRXP_WARN_Tenha cuidado!|r |cRXP_ENEMY_Witchwing Slayers|r |cRXP_WARN_podem executar. Mantenha-se acima de 20% de saúde|r
    >>|cRXP_WARN_Cuidado com as|r |cRXP_ENEMY_Asabruxas Emboscadoras|r|cRXP_WARN_. Elas ficam furtivas e patrulham a área|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step
    #completewith FoodandWater1
    .hs >>Vá para A Encruzilhada
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 380,1
    .subzoneskip 380
step
    #completewith FoodandWater1
    .goto The Barrens,52.09,30.43,120 >>Vá para The Encruzilhada
    >>|cRXP_WARN_Você também pode farmar até que sua|r |T134414:0|t[Pedra de Regresso] |cRXP_WARN_esteja de volta|r
    .cooldown item,6948,<0
    .subzoneskip 380
step
    #completewith next
    +|cRXP_WARN_Certifique-se de que você não venda seu|r |T132794:0|t[|cRXP_LOOT_Frasco de Óleo|r]|cRXP_WARN_!|r
    .itemcount 814,5
    .dungeon DM
step
    #label FoodandWater1
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
step << !Tauren !Undead
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r, |cRXP_FRIENDLY_Darsok|r e |cRXP_FRIENDLY_Zargh|r
    .turnin 869 >>Entregue Ladrões de Raptor
    .accept 3281 >>Aceite Prata Roubada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 6386 >>Volte à Encruzilhada
    .target +Zargh
    .goto The Barrens,52.62,29.84
    .turnin 881 >>Entregue Echeyaki
    .accept 905 >>Aceite Os Talhardepas Raivosos
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 875 >>Entregue Tenentes das Harpias
    .accept 876 >>Aceite Serena Plumassangue
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .isOnQuest 6386
step
    #label EcheyakeeTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r, |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Darsok|r
    .turnin 869 >>Entregue Ladrões de Raptor
    .accept 3281 >>Aceite Prata Roubada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
    .turnin 881 >>Entregue Echeyaki
    .accept 905 >>Aceite Os Talhardepas Raivosos
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
    .turnin 875 >>Entregue Tenentes das Harpias
    .accept 876 >>Aceite Serena Plumassangue
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
step
    #completewith TheEscapeTurnIn
    .destroy 10327 >>|cRXP_WARN_Destrua o|r |T134227:0|t[Berrante de Echeyaki] |cRXP_WARN_você não precisa mais disso|r
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith TheEscapeTurnIn
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Devrak
    .subzoneskip 392
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix|r
    .turnin 2382 >>Entregue a Wrenix em Ratchet
    .accept 2381 >>Aceite Pilhagem dos Saqueadores
    .target Wrenix the Wretched
step << Rogue
    .goto The Barrens,63.12,36.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Aparato Mercadotrônico do Wrenix|r
    >>|cRXP_WARN_Obtenha um|r |T134059:0|t[B.E.C.A.] |cRXP_WARN_e |r |T134065:0|t[Ferramentas de Ladrões]
    .collect 7970,1,888,1 --E.C.A.C. (1)
    .collect 5060,1,888,1 --Thieves' Tools (1)
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 863 >>Entregue A Fuga
    .accept 1483 >>Aceite Zé Fízzica
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Entregue A fortuna do mineiro
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #label TheEscapeTurnIn
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 863 >>Entregue A Fuga
    .accept 1483 >>Aceite Zé Fízzica
    .target Sputtervalve
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Aceite Só Pode Ser o Chifre
    .accept 1069 >>Aceite Ovos de Aranha Musgofunda
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    >>|cRXP_BUY_Compre|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid
    >>|cRXP_WARN_Eles são extremamente baratos, compre quantos quiser|r
    .vendor >>Comerciante Lixo
    .collect 4592,40,888,1 --Longjaw Mud Snapper (40)
    .collect 1205,20,888,1 << Mage/Warlock/Priest/Shaman/Druid --Melon Juice (20)
    .target Innkeeper Wiley
    .isQuestAvailable 888
step << Rogue
	#completewith next
    .goto The Barrens,65.04,45.44
    +|cRXP_WARN_Pule no navio, desça ao segundo andar e aumente sua perícia em Arrombamento para pelo menos 70|r
step << Rogue
    .goto The Barrens,64.95,45.44
    >>Depois que seu arrombamento chegar a 70, desça ao andar mais baixo do navio e abra |cRXP_PICK_The Jewel of the Southsea|r
    >>|cRXP_WARN_Use o|r |T134059:0|t[E.C.A.C.] |cRXP_WARN_em|r |cRXP_ENEMY_Polly|r
    .complete 2381,1 --Southsea Treasure (1)
    .use 7970
    .mob Polly
step
    .goto The Barrens,63.58,49.25
    >>Pegue o |cRXP_PICK_Caixote|r no chão
    .complete 888,2 --Telescopic Lens (1)
step
    .goto The Barrens,62.63,49.64
    >>Pegue o |cRXP_PICK_Caixote|r no chão
    .complete 888,1 --Shipment of Boots (1)
step
    #completewith TestSeeds
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #completewith TestSeeds
    >>Mate qualquer |cRXP_ENEMY_Sunscale Garrafoice|r que você vê. Saque-os para seus |cRXP_LOOT_Horns|r e |cRXP_LOOT_Peninha|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Saque o |cRXP_PICK_Stolen Prateado|r
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor de O Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Mergulhe embaixo d'água no meio do lago e clique em |cRXP_PICK_Fissura Borbulhante|r
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    .goto The Barrens,52.95,41.75,0
    >>Mate |cRXP_ENEMY_Verog|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ele tem uma chance de aparecer toda vez que um|r |cRXP_ENEMY_Centaur|r |cRXP_WARN_é morto|r
    .complete 851,1 --Verog's Head (1)
    .mob Verog the Dervish
    .isOnQuest 851
step
    #loop
    .goto The Barrens,55.80,45.78,0
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Triture os |cRXP_ENEMY_Centaurs|r ao redor do oásis. Saque-os para suas |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    #loop
    .goto The Barrens,56.75,43.41,0
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Triture os |cRXP_ENEMY_Centaurs|r ao redor do oásis. Quando |cRXP_ENEMY_Verog|r aparecer, mate-o e saque-o para sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Verog|r |cRXP_WARN_tem uma chance de aparecer toda vez que um|r |cRXP_ENEMY_Centaur|r |cRXP_WARN_é morto|r
    .complete 851,1 --Verog's Head (1)
    .mob Verog the Dervish
step
    #loop
    .goto The Barrens,55.72,42.14,0
    .goto The Barrens,55.72,42.14,30,0
    .goto The Barrens,55.49,41.75,30,0
    .goto The Barrens,55.09,41.58,30,0
    .goto The Barrens,55.03,42.24,30,0
    .goto The Barrens,55.27,43.17,30,0
    .goto The Barrens,55.78,43.47,30,0
    .goto The Barrens,56.15,43.28,30,0
    .goto The Barrens,56.08,42.58,30,0
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor de O Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #completewith LizardHorn
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
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
    #optional
    #completewith next
    >>Abate |cRXP_ENEMY_Sunscale Scytheclaws|r. Saque-os para seus |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #label LostmyWife
    .goto The Barrens,49.33,50.33
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik's Wife|r
    .complete 4921,1 --Find Mankrik's Wife (1)
    .target Beaten Corpse
step
    #label LizardHorn
    #completewith SetCampTaurajoHS
    >>Abate |cRXP_ENEMY_Eletrossauro|r. Saque-os para obter um |cRXP_LOOT_Chifre|r. Isso não precisa ser completado agora
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .goto The Barrens,45.23,58.41,120 >>Viaje para Camp Taurajo
    .subzoneskip 378
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Byula <Antigo Estalajadeiro>|r
    .home >>Defina sua Pedra de Retorno em Camp Taurajo
    .target Innkeeper Byula
    .bindlocation 378
    .isQuestAvailable 1093
step
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .accept 878 >>Aceite Tribos em Guerra
    .target Mangletooth
step
    #completewith Xroadsturnins2
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo << !Tauren
    .fly Crossroads >>Voe para A Encruzilhada
    .subzoneskip 380
    .target Omusa Thunderhorn
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >>Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    #label Xroadsturnins2
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r, |cRXP_FRIENDLY_Tonga|r, |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Gazrog|r
    .turnin 4921 >>Entregue Perdida na Batalha
    .target +Mankrik
    .goto The Barrens,52.00,31.60
    .turnin 877 >>Entregue O Oásis Estagnado
    .accept 880 >>Aceite Seres Alterados
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
    .turnin 905 >>Entregue Garrafoices furiosos
    .accept 3261 >>Aceite Jorn Vidente do Céu
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 3281 >>Entregue Prata Roubada
    .target +Gazrog
    .goto The Barrens,51.93,30.32
step
    .destroy 5165 >>|cRXP_WARN_Apague qualquer restante|r |T132914:0|t[Pena de Helióscamo] |cRXP_WARN_que você ainda tiver|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 851 >>Entregue Verog, o Dervixe
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 851
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >>Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Entregue Os Espíritos de Stonetalon
    .accept 1062 >>Aceite Invasores Goblins
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Aceite Vingue Minha Vila
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79

]])

RXPGuides.RegisterGuide([[
#hardcore
#classic
#tbc
<< Horde
#name 19-23 Espinhaço do Mundo/Serras/Vale Gris
#version 1
#group Guia de Sobrevivência (H)
#subgroup RXP Sobrevivência Guia 1-20
#next 23-25 Hillsbrad

step
    #optional
    #completewith next
    >>Abandone Relate para Kadrak para evitar problemas no registro de missões. Você a aceitará novamente em breve
    .abandon 6541 >>Abandone Relate para Kadrak
    .isOnQuest 6541
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
step
    #map Stonetalon Mountains
    .goto The Barrens,35.19,27.79
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Makaba Casco Chato|r
    .turnin 6548 >>Entregue Vingue minha vila
    .accept 6629 >>Aceite Mate Grundig Nuvem Negra
    .target Makaba Flathoof
step
    #completewith next
    .goto Stonetalon Mountains,75.89,87.49,30 >>Suba pela trilha até a fogueira
step
    .goto Stonetalon Mountains,73.65,86.13
    >>Mate o |cRXP_ENEMY_Grundig Nuvem Negra|r e os |cRXP_ENEMY_Grimtotem Brutes|r
    >>|cRXP_WARN_Mate todos os seis|r |cRXP_ENEMY_Brutos Temível Totem|r |cRXP_WARN_antes de iniciar a missão lá dentro|r
    .complete 6629,1 --Kill Grundig Darkcloud (x1)
    .mob +Grundig Darkcloud
    .complete 6629,2 --Kill Grimtotem Brute (x6)
    .mob +Grimtotem Brute
step
    .goto Stonetalon Mountains,73.48,85.59
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kaya Casco Chato|r
    .accept 6523,1 >>Aceite Proteja Kaya
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.82,86.79,40,0
    .goto Stonetalon Mountains,71.83,89.79,40,0
    .goto Stonetalon Mountains,76.73,90.85
    >>Escolte |cRXP_FRIENDLY_Kaya|r e fique perto dela
    >>|cRXP_WARN_Cuidado! Três|r |cRXP_ENEMY_Temíveis Totens|r |cRXP_WARN_aparecerão quando você chegar à fogueira no Acampamento Aparaje|r
    .complete 6523,1 --Kaya Escorted to Camp Aparaje
    .target Kaya Flathoof
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >>Aceite Fome Sangrenta
    .target Xen'Zilla
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,68.59,88.34,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    >>Mate todos os |cRXP_ENEMY_Rastejantes de Fundolimo|r que encontrar
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step
    #completewith InDeepTrouble
    .goto Stonetalon Mountains,51.40,61.14,50,0
    .goto Stonetalon Mountains,49.96,61.04
    .subzone 460 >>Vá para Refúgio da Rocha do Sol
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>Corra para cima do caminho à esquerda
    .group
step
    #label InDeepTrouble
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mor'Rogal|r
    .accept 6421 >>Aceite Ravina da Avalanche
    .target Mor'Rogal
    .group
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Jayka|r
    >>|cRXP_WARN_NÃO defina sua Pedra de Retorno!|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 1093
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jeeda|r no segundo andar da estalagem
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dela se estiverem disponíveis|r << !Warrior
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_e|r |T134413:0|t[Liferoot] |cRXP_BUY_dela se estiverem disponíveis|r << Warrior
    .target Jeeda
    .isQuestAvailable 1093
step
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Aprenda a rota de voo de Retiro Rocha do Sol
    .target Tharm
    .subzoneskip 460,1
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >>Vá ao Rochedo Cortavento
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1483 >>Entregue Zé Fízzica
    .accept 1093 >>Aceite o Super Ceifador 6000
    .target Ziz Fizziks
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Deepmoss Venomspitters|r
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
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
    #loop
	.goto Stonetalon Mountains,60.25,63.21,0
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
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob Deepmoss Venomspitter
step << Troll Warrior/Undead Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Troll Warrior/Undead Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Orc Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar para|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135423:0|t[Machado de Batalha] |cRXP_BUY_dele|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <0.9784
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
step << Orc Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.3
    .xp <20,1
step << Tauren Warrior
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar para|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T133044:0|t[Malho] |cRXP_BUY_dele|r
    .collect 924,1,899,1 --Collect Maul (1)
    .money <1.0972
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
step << Tauren Warrior
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T133044:0|t[Malho]
    .use 924
    .itemcount 924,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<16.0
    .xp <21,1
step << Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,899,1 --Collect Long Staff (1)
    .money <0.9860
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
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
    .xp <21,1
step
    #completewith next
    >>Mate |cRXP_ENEMY_Madeireiros da Empreendimentos S.A.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
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
	#completewith next
	+|cRXP_WARN_Se você tem mais de 15 |cRXP_LOOT_Ovos de Fundolimo|r|cRXP_WARN_, divida a pilha de extras (shift clique), depois delete-os|r
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1093 >>Entregue o Super Ceifador 6000
    .accept 1094 >>Aceite as instruções adicionais
    .target Ziz Fizziks
step
    #loop
    .goto Stonetalon Mountains,68.59,88.34,0
    .goto Stonetalon Mountains,60.83,71.84,80,0
    .goto Stonetalon Mountains,59.04,73.01,80,0
    .goto Stonetalon Mountains,60.36,76.28,80,0
    .goto Stonetalon Mountains,61.47,81.51,80,0
    .goto Stonetalon Mountains,64.95,83.88,80,0
    .goto Stonetalon Mountains,68.59,88.34,80,0
    >>Termine de matar |cRXP_ENEMY_Rastejantes de Fundolimo|r
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob Deepmoss Creeper
step << Druid
    #completewith DruidTraining2
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    #optional
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1430 >>Treine suas magias de classe
    .target Loganaar
    .xp <18,1
    .xp >20,1
step << Druid
    #label DruidTraining2
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 768 >>Treine suas magias de classe
    .target Loganaar
    .xp <20,1
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
    .isOnQuest 3261
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 3261 >>Entregue Jorn Vidente do Céu
    .accept 882 >>Aceite Ishamuhale
    .target Jorn Skyseer
step
	#completewith LakotaMani
    >>Abate |cRXP_ENEMY_Eletrossauro|r. Saque-os para obter um |cRXP_LOOT_Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Mate |cRXP_ENEMY_Javatuscos Costagulha|r. Pegue suas |cRXP_LOOT_Presas|r. Guarde os |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] que pegar
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
    #label LakotaMani
    #loop
    .goto The Barrens,45.14,52.82,0
    .goto The Barrens,45.93,49.08,0
    .goto The Barrens,47.43,51.37,0
    .goto The Barrens,50.10,53.34,0
    .goto The Barrens,45.14,52.82,80,0
    .goto The Barrens,45.93,49.08,80,0
    .goto The Barrens,47.43,51.37,80,0
    .goto The Barrens,50.10,53.34,80,0
	>>Mate |cRXP_ENEMY_Lakota'mani - Missão|r. Saqueie-o pelo |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani - Missão|r]
    >>|cRXP_WARN_Use o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani - Missão|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
    >>|cRXP_WARN_Pule este passo se você não conseguir encontrá-lo|r
	.collect 5099,1,883,1 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith next
    >>Abate |cRXP_ENEMY_Eletrossauro|r. Saque-os para obter um |cRXP_LOOT_Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #loop
    .goto The Barrens,50.71,54.60,0
    .goto The Barrens,50.71,54.60,60,0
    .goto The Barrens,50.74,55.33,60,0
    .goto The Barrens,50.73,56.78,60,0
    .goto The Barrens,50.42,57.23,60,0
    .goto The Barrens,50.50,57.65,60,0
    .goto The Barrens,50.87,57.50,60,0
    .goto The Barrens,51.26,57.84,60,0
    .goto The Barrens,51.74,57.69,60,0
    .goto The Barrens,51.79,57.10,60,0
    .goto The Barrens,53.08,54.69,60,0
    .goto The Barrens,53.65,54.27,60,0
    .goto The Barrens,53.63,53.53,60,0
    .goto The Barrens,53.35,52.72,60,0
    .goto The Barrens,53.00,51.83,60,0
    .goto The Barrens,52.62,52.19,60,0
    .goto The Barrens,52.59,52.71,60,0
    .goto The Barrens,52.41,53.07,60,0
    .goto The Barrens,52.32,53.71,60,0
    .goto The Barrens,51.39,54.22,60,0
    >>Mate |cRXP_ENEMY_Javatuscos Costagulha|r. Pegue suas |cRXP_LOOT_Presas|r. Guarde os |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] que pegar
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
    #loop
    .goto The Barrens,50.88,52.96,0
    .goto The Barrens,50.88,52.96,50,0
    .goto The Barrens,50.06,52.78,50,0
    .goto The Barrens,49.35,53.74,50,0
    .goto The Barrens,49.54,55.08,50,0
    .goto The Barrens,49.03,56.24,50,0
    .goto The Barrens,49.72,56.13,50,0
    >>Abate |cRXP_ENEMY_Eletrossauro|r. Saque-os para obter um |cRXP_LOOT_Chifre|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    >>Abate |cRXP_ENEMY_Sunscale Scytheclaws|r. Saque-os para seus |cRXP_LOOT_Horns|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .mob Sunscale Scytheclaw
step
    #loop
    .goto The Barrens,53.98,51.68,0
    .goto The Barrens,53.98,51.68,50,0
    .goto The Barrens,54.10,50.58,50,0
    .goto The Barrens,53.85,49.76,50,0
    .goto The Barrens,54.32,49.38,50,0
    .goto The Barrens,54.82,49.00,50,0
    .goto The Barrens,55.23,47.96,50,0
    >>Conclua matando |cRXP_ENEMY_Plainstriders|r. Saqueie-os por seus |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
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
step
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zhevra|r. Saque-o pela |cRXP_LOOT_Carcaça Fresca de Zevra|r
	.collect 10338,1 --Collect Fresh Zhevra Carcass
    .mob Zhevra Charger
step
    .goto The Barrens,59.71,30.33
    .use 10338 >>Usar o |T134368:0|t[|cRXP_LOOT_Carcaça Fresca de Zevra|r] na árvore morta para invocar o |cRXP_ENEMY_Ishamuhale|r. Mate e saqueie-o pela |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_A Carcaça dura apenas 30 minutos!|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .subzone 392 >>Viaje para Ponto de Ancoragem
step << Rogue
    .goto The Barrens,63.07,36.31
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Wrenix|r
    .turnin 2381 >>Entregue Saqueando os saqueadores
    .target Wrenix the Wretched
step
    #label BootyTurnin
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gasganete|r
    .turnin 888 >>Entregue Butim Roubado
    .target Gazlowe
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r, |cRXP_FRIENDLY_Mebok|r e |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Entregue instruções adicionais
    .accept 1095 >>Aceite as instruções adicionais
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entregue [Product]Chifres de Raptores
    .turnin 1069 >>Entregue [Product]Ovos de Aranha Musaúm
    .accept 1491 >>Aceite Smart Drinks
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entregue Barril Vazio de Chen
    .accept 822 >>Aceite Barril Vazio do Chen
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r, |cRXP_FRIENDLY_Mebok|r e |cRXP_FRIENDLY_Drohn|r
    .turnin 1094 >>Entregue instruções adicionais
    .accept 1095 >>Aceite as instruções adicionais
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 865 >>Entregue [Product]Chifres de Raptores
    .turnin 1069 >>Entregue [Product]Ovos de Aranha Musaúm
    .target +Mebok Mizzyrix
    .goto The Barrens,62.37,37.62
    .turnin 821 >>Entregue Barril Vazio de Chen
    .accept 822 >>Aceite Barril Vazio do Chen
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step << Warrior
    .goto The Barrens,62.20,38.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xaveco|r
    .vendor >>Compre |T134583:0|t[|cRXP_FRIENDLY_Calças Encadeadas Potentes|r] dele se estiver disponível
    .target Grazlix
    .money <0.619
    .itemStat 7,ITEM_MOD_ARMOR_SHORT,<155
    .equip 7,4800
step << Rogue/Hunter/Warrior/Shaman/Druid
    .goto The Barrens,62.16,38.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Irriteixon|r
    .vendor >>Compre |T132603:0|t[|cRXP_FRIENDLY_Braçadeiras do Lobo|r] dele se estiverem disponíveis
    .target Vexspindle
    .money <0.3515
    .itemStat 9,ITEM_MOD_ARMOR_SHORT,<37
    .equip 9,4794
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
    .home >>Defina sua Pedra de Retorno em Ratchet
    .target Innkeeper Wiley
    .bindlocation 392
    .isQuestAvailable 959
    .dungeon WC
step << Warrior
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
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
    .dungeon WC
step
    #label FlytoXroads
    #completewith XroadsHS2
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r e |cRXP_FRIENDLY_Tonga|r
    .turnin 899 >>Entregue Consumido pelo Ódio
    .target +Mankrik
    .goto The Barrens,51.95,31.58
    .turnin 880 >>Entregue Seres Alterados
    .accept 1489 >>Aceite Hamuul Runetotem
    .accept 3301 >>Aceite Mura Runa Totem
    .target +Tonga Runetotem
    .goto The Barrens,52.26,31.93
step
    .destroy 5085 >>|cRXP_WARN_Apague qualquer|r |T133721:0|t[Presa de Javatusco Costagulha] |cRXP_WARN_que você ainda tenha|r
    .itemcount 5085,1
step
    #label XroadsHS2
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .bindlocation 380
    .dungeon !WC
step << Shaman
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Shaman
    .goto Orgrimmar,37.96,37.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Searn|r
	.accept 1528 >>Aceite Chamado da Água
    .target Searn Firewarder
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 2645 >>Treine suas magias de classe
    .target Kardris Dreamseeker
step << Warlock
    #completewith next
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Warlock
    .goto Orgrimmar,48.25,45.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gan'rul|r
    .trainer >>Treine suas magias de classe
    .accept 1507 >>Aceite Devorador de Almas
    .target Gan'rul Bloodeye
step << Warlock
    .goto Orgrimmar,47.54,46.75
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kurgul|r e compre |T133738:0|t[Grimório of Tormento (Rank 2)]
    .collect 16346,1,1507,1 --Grimoire of Torment (Rank 2)
    .target Kurgul
step << Warlock
    .goto Orgrimmar,47.05,46.47
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cazul|r
    .turnin 1507 >>Entregue Devorador de Almas
    .accept 1508 >>Aceite Cegar Cazul
    .target Cazul
step << Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar para|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
    .money <0.5808
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<17.4
    .target Katis
step << Warlock
    .goto Orgrimmar,37.03,59.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zankaja|r
    .turnin 1508 >>Entregue Cegar Cazul
    .accept 1509 >>Aceite Notícias de Dogran
    .target Zankaja
step
    #completewith EnterDM
    .subzone 1581 >>Agora você deve estar procurando um grupo para Minas Mortas
    .dungeon DM
step
    #completewith ZepptoSTVforDM
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
    .dungeon DM
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8052 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 2645 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
	.train 14318 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
	.train 14290 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <20,1
    .dungeon DM
step << Hunter
    .goto Orgrimmar,66.33,14.83
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xao'tsu|r
	.train 5118 >>Treine as magias do seu mascote
	.target Xao'tsu
    .xp <20,1
    .dungeon DM
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
	.train 8198 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warrior
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 845 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <20,1
    .dungeon DM
step << Rogue
    .goto Orgrimmar,43.90,54.65
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormok|r
    .train 1943 >>Treine suas magias de classe
    .target Ormok
    .xp <20,1
    .dungeon DM
step << Warlock
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zevrost|r
    .train 1014 >>Treine suas magias de classe
	.target Zevrost
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Warlock
    #optional
    .goto Undercity,48.47,45.42
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zevrost|r
    .train 706 >>Treine suas magias de classe
	.target Zevrost
    .xp <20,1
    .dungeon DM
step << Mage
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 3140 >>Treine suas magias de classe
    .target Pephredo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Mage
    #optional
    .goto Orgrimmar,38.36,85.54
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t Fale com|r |cRXP_FRIENDLY_Pephredo|r
    .train 1953 >>Treine suas magias de classe
    .target Pephredo
    .xp <20,1
    .dungeon DM
step << Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 970 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <18,1
    .xp >20,1
    .dungeon DM
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 14914 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <20,1
    .dungeon DM
step
    #ah
    .goto Orgrimmar,55.59,62.92
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thathung|r
    >>|cRXP_BUY_Compre|r |T132794:0|t[Frasco de Óleo] |cRXP_BUY_da Casa de Leilões se possível|r
    .collect 814,5,103,1 --Flask of Oil (5)
	.target Auctioneer Thathung
    .dungeon DM
step
    #completewith next
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
    .dungeon DM
step
    #label ZepptoSTVforDM
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Stranglethorn Vale >>Pegue o Zepelim para Stranglethorn Vale
    .zoneskip Stranglethorn Vale
    .dungeon DM
step
    .goto Stranglethorn Vale,30.51,29.10,40,0
    .goto Stranglethorn Vale,27.09,31.27,40,0
    .goto Stranglethorn Vale,22.90,31.17,60,0
    .goto Stranglethorn Vale,19.06,27.00,60,0
    .goto Stranglethorn Vale,16.33,23.46,60,0
    .goto Stranglethorn Vale,13.49,19.04,60,0
    .goto Westfall,41.08,98.55,60,0
    .goto Westfall,37.10,89.16,40,0
    .goto Westfall,30.01,86.02,200 >>Nade diretamente para o oeste de Grom'Gol para o Recife Vil e depois nade para o norte em direção a Cerro Oeste
    >>|cRXP_WARN_Mantenha-se longe da ilha. Siga o ponto de referência para sua segurança!|r
    .dungeon DM
step
    #completewith next
    .goto Westfall,30.01,86.02,40 >>Viaje para o Farol de Cerro Oeste
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 103 >>Aceite Guardião da Chama
    .target Captain Grayson
    .itemcount 814,5 -- Flask of Oil (5)
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 103 >>Entregue Guardião da Chama
    .itemcount 814,5 -- Flask of Oil (5)
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .accept 104 >>Aceite Ameaça Costeira
    .target Captain Grayson
    .dungeon DM
step
    .goto Westfall,34.43,83.93
    .line Westfall,34.43,83.93,34.43,83.93,33.88,83.32,33.08,82.86,32.56,82.71,32.08,82.49,31.91,82.36,31.55,81.88,30.86,81.42,30.63,81.16,30.33,80.81,30.02,80.11,29.68,79.22,29.32,78.19,29.29,77.60,29.27,77.31,29.18,76.26,29.07,75.29,28.95,74.14,28.85,73.29,28.79,72.48,28.37,71.94,27.84,71.29,27.44,70.25,27.29,69.47,27.13,68.65,27.09,67.57,27.07,67.01,26.74,66.09,27.07,67.01,27.09,67.57,27.13,68.65,27.29,69.47,27.44,70.25,27.84,71.29,28.37,71.94,28.79,72.48,28.85,73.29,28.95,74.14,29.07,75.29,29.18,76.26,29.27,77.31,29.29,77.60,29.32,78.19,29.68,79.22,30.02,80.11,30.33,80.81,30.63,81.16,30.86,81.42,31.55,81.88,31.91,82.36,32.08,82.49,32.56,82.71,33.08,82.86,33.88,83.32,34.43,83.93
    >>Mate o |cRXP_ENEMY_Velho Olho-turvo|r. Saque-o para obter sua |cRXP_LOOT_Escama|r
    >>|cRXP_ENEMY_Velho Olho-turvo|r |cRXP_WARN_patrulha para cima e para baixo na Longshore. Se você não o vê ao longo da Longshore, espere por ele aparecer no acampamento |cRXP_ENEMY_Murloc|r mais ao sul|r
    .complete 104,1 -- Scale of Old Murk-Eye (1)
    .unitscan Old Murk-Eye
    .dungeon DM
step
    .goto Westfall,30.01,86.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Calvino|r
    .turnin 104 >>Entregue O Mar Não Está para Peixe
    .target Captain Grayson
    .dungeon DM
step
    #optional
    .abandon 103 >>Abandone Guardião da Chama
    .dungeon DM
step
    #label EnterDM
    .goto Eastern Kingdoms,40.92,81.97,8,0
    .goto Eastern Kingdoms,40.92,82.02,8,0
    .goto Eastern Kingdoms,40.89,82.04,8,0
    .goto Eastern Kingdoms,40.96,82.10,8,0
    .goto Eastern Kingdoms,40.92,82.16,15,0
    .goto Eastern Kingdoms,40.82,82.30,15,0
    .goto Eastern Kingdoms,40.77,82.52,15,0
    .goto Eastern Kingdoms,40.74,82.61,15,0
    .goto Eastern Kingdoms,40.63,82.49,15,0
    .goto Eastern Kingdoms,40.50,82.45
    .zone 291 >>Entre no portal da Instância Minas Mortas. Carregue
    .dungeon DM
step
    .hs >>Retorne para Savanas após completar Minas Mortas
    .zone The Barrens >>Chegue a Savanas
    .use 6948
    .dungeon DM
step
    #optional
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Wiley|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Wiley
    .subzoneskip 392,1
    .dungeon WC
step
    #optional
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Boorand Plainswind
    .subzoneskip 380,1
    .dungeon DM
step << Warlock
    #optional
    #completewith TurninDogran
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
	.fly Crossroads >>Voe para A Encruzilhada
    .zoneskip Orgrimmar,1
    .target Doras
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Entregue Notícias de Dogran
    .accept 1510 >>Aceite Notícias de Dogran
    .target Gazrog
step << Shaman
    #optional
    #completewith CallofWater01
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Doras
    .zoneskip Orgrimmar,1
step << Shaman
    #optional
    #completewith CallofWater01
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Bragok
    .subzoneskip 392,1
    .dungeon DM
step << Shaman
    #label CallofWater01
    .goto The Barrens,65.83,43.78
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r
    .turnin 1528 >>Entregue Clamor da água
    .accept 1530 >>Aceite Chamado da Água
    .target Islen Waterseer
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
step << !Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 392,1
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Inicia uma missão cronometrada de 45 minutos|r
    .accept 853 >>Aceite Boticário Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Você está em uma missão com prazo, não fique ausente. Ela será entregue 20–30 minutos após ser aceita|r
    .isOnQuest 853
step << !Warlock !Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Bragok
    .subzoneskip 392,1
    .dungeon WC
step << Shaman
    #completewith TribesTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .subzoneskip 378
    .target Bragok
step << !Shaman
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Devrak
    .subzoneskip 380,1
step
    .goto The Barrens,44.55,59.27
    >>Mate os |cRXP_ENEMY_Bristleback Quilboars|r. Saqueie-os para obter um |T134128:0|t[|cRXP_LOOT_Blood Shard|r]lhaço de Sangue|r]
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
step
    #optional
    #completewith Thunderhawk
    .goto The Barrens,44.55,59.27,0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    +|cRXP_WARN_Use seus|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r] |cRXP_WARN_para obter buffs. Guarde pelo menos 4 deles para depois|r
    +|cRXP_WARN_Desative as funções de conclusão automática de addons como Questie ou Leatrix Plus para isso!|r
    .target Mangletooth
step
    #label IshamuhaleTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 882 >>Entregue Ishamuhale
    .accept 907 >>Aceite Lagartos trovejantes enfurecidos
    .target Jorn Skyseer
step
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .accept 883 >>Aceite Lakota'Mani
    .turnin 883 >>Entregue Lakota'mani - Missão - Missão - Missão
    .target Jorn Skyseer
    .itemcount 5099,1
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
    #label Thunderhawk
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 907 >>Entregue Lagartos do Trovão Enraivecidos
    .accept 913 >>Aceite O grito do Falcotrom
    .target Jorn Skyseer
step << Shaman
    #completewith CallofWater2
    .goto The Barrens,43.42,77.41,60>>Vá para o sul em direção a |cRXP_FRIENDLY_Salma|r
step << Shaman
    #completewith next
    >>Mate o |cRXP_ENEMY_Thunderhawk|r. Saque-o por suas |cRXP_LOOT_Asas|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
    .mob Greater Thunderhawk
step << Shaman
    #label CallofWater2
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
    #completewith ThunderhawkTurnin
    .goto The Barrens,44.85,59.14,200 >>Vá de volta para Camp Taurajo
step
    #loop
    .goto The Barrens,44.83,63.12,0
    .goto The Barrens,44.83,63.12,60,0
    .goto The Barrens,46.57,61.33,60,0
    .goto The Barrens,48.99,58.69,60,0
    .goto The Barrens,45.45,56.69,60,0
    .goto The Barrens,43.41,56.96,60,0
    >>Mate o |cRXP_ENEMY_Thunderhawk|r. Saque-o por suas |cRXP_LOOT_Asas|r
    .complete 913,1 --Thunderhawk Wings (1)
    .mob Thunderhawk Hatchling
    .mob Thunderhawk Cloudscraper
step
    #label ThunderhawkTurnin
    .goto The Barrens,44.85,59.14
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jorn Vidente do Céu|r
    .turnin 913 >>Entregue O grito do Falcotrom
    .accept 874 >>Aceite Mahren Vidente do Céu
    .target Jorn Skyseer
step << !Tauren
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .aura 16618 >>|cRXP_WARN_Se você tem 10|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r |cRXP_WARN_restantes, use-os para obter|r |T136022:0|t[Espírito of the Vento - Missão - Missão] |cRXP_WARN_de|r |cRXP_FRIENDLY_Denterroto|r]
    >>|cRXP_WARN_Pule esta etapa se tiver a rota de voo de Penhasco do Trovão|r
    .itemcount 5075,10
    .target Mangletooth
step << !Tauren
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Vá para Mulgore
step << !Tauren
    #completewith DeathDUPpickup
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Pegue o elevador para Penhasco do Trovão
    >>|cRXP_WARN_Se você tem a rota de voo do Penhasco do Trovão, voe lá em vez disso|r
step << Tauren
    #completewith DeathDUPpickup
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
step << Undead Warrior/Orc Warrior/Troll Warrior
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Treine Maças de Duas Mãos
    .train 227 >>Treine Cajados
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Undead Warrior/Warlock/Priest
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 227 >>Treine Cajados
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 198 >>Aprenda Maças de Uma Mão
    .target Ansekhwa
step << Rogue
    .goto Thunder Bluff,38.95,64.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kuruk|r|cRXP_BUY_. Compre |r |T135423:0|t[Machado de Arremesso Mortal] |cRXP_BUY_dele|r
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >>Deposite os |T134128:0|t[Estilhaços de Sangue]
    .target Chesmu
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .dungeon !WC
step
    #completewith next
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Vá para o Alto do Espírito e entre nas Piscinas da Visão
step
    #sticky
    #completewith DeathDUPpickup
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarice Nourrice|r
    .accept 264 >>Aceite Até que a morte nos separe
    .target Clarice Foster
    .dungeon !WC
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Entregue Boticário Zaqueu
    .accept 962 >>Aceite Ofídeas
    .target Apothecary Zamah
    .isOnQuest 853
    .dungeon WC
step
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .accept 962 >>Aceite Ofídeas
    .target Apothecary Zamah
    .dungeon WC
step
    #optional
    #label ZamahTurnin
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Entregue Boticário Zaqueu
    .target Apothecary Zamah
    .isOnQuest 853
step << Priest
    .goto Thunder Bluff,25.31,15.24
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Miles|r
    .accept 5644 >>Aceite Peste Devoradora << Undead Priest
    .accept 5642 >>Aceite Guarda Sombria << Troll Priest
    .trainer >>Treine suas magias de classe
    .target Miles Welsh
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
    #optional
    #label DeathDUPpickup
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
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>Vá para o Morro dos Anciãos
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >>Entregue Hamuul Runa Totem
    .accept 1490 >>Aceite Nara Juba Agreste
    .target Arch Druid Hamuul Runetotem
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Entregue Nara Juba Agreste
    .accept 914 >>Aceite Leaders of the Dentada
    .target Nara Wildmane
    .dungeon WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Entregue Nara Juba Agreste
    .target Nara Wildmane
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .trainer >>Treine suas magias de classe
    .accept 27 >>Aceite A Lesson to Learn
    .target Turak Runetotem
step << Druid
    #completewith next
    .cast 18960 >>Lance |T135758:0|t[Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,56.21,30.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dendrite|r
    .turnin 27 >>Entregar Uma Lição a Aprender
    .accept 28 >>Aceitar Prova do Lago
    .target Dendrite Starblaze
step << Druid
    #completewith next
    .goto Moonglade,54.30,55.68
    .collect 15877,1,28,1 >>Pegue o |cRXP_PICK_Recipiente de Adorno|r no fundo do lago para obter um |T134125:0|t[Adorno de Altar]
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
step << Druid
    #completewith FlyXroads2
    .hs >>Vá para Penhasco do Trovão
    .use 6948
    .cooldown item,6948,>0
    .dungeon !WC
step << Druid
    #completewith FlyXroads2
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .zoneskip Thunder Bluff
    .dungeon WC
step << Druid
    #completewith FlyXroads2
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Thunder Bluff
    .dungeon !WC
step << Hunter
    #completewith HunterTraining2
    .goto Thunder Bluff,61.31,78.25,60 >>Vá para a Alta do Caçador
step << Hunter
    .goto Thunder Bluff,59.13,86.91
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Urek|r
    .train 5118 >>Treine suas magias de classe
    .target Urek Thunderhorn
    .xp <20,1
    .xp >22,1
step << Hunter
    #label HunterTraining2
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
    #completewith next
    .goto Thunder Bluff,61.31,78.25,60 >>Vá para a Alta do Caçador
step << Warrior
    .goto Thunder Bluff,57.27,87.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Torm|r
    .train 845 >>Treine suas magias de classe
    .accept 1823 >>Aceite Falar com Ruga
    .target Torm Ragetotem
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kard Totem da Fúria|r|cRXP_BUY_. Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dele.|r
    .collect 923,1,493,1 --Collect Longsword (1)
    .money <0.8743
    .target Kard Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
step << Rogue
    #optional
    #completewith KayaLives
    +Equipe a [Espada Longa]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp <21,1
step << Warrior/Shaman
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Se for mais barato, você pode comprar uma arma verde do leilão em vez disso|r
step << Warrior
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Compre um|r |T135157:0|t[Cajado Longo] |cRXP_BUY_dele|r
    .collect 928,1,493,1 --Collect Long Staff (1)
    .money <0.9860
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equipe o|r |T135157:0|t[Cajado Longo]
    .use 928
    .itemcount 928,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Shaman
    #season 2
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Compre um|r |T133476:0|t[Mangual] |cRXP_BUY_dele|r
    .collect 925,1,493,1 --Collect Flail (1)
    .money <0.7797
    .target Etu Ragetotem
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Shaman
    #season 2
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equipe o|r |T133476:0|t[Mangual]
    .use 925
    .itemcount 925,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Compre um|r |T135489:0|t[Arco Recurvo Pesado] |cRXP_BUY_dela|r
    .collect 3027,1,493,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kina Chifre Troante
step << Hunter
    #optional
    #completewith KayaLives
    +Equipe o [Arco Recurvo Pesado]
    .use 3027
    .itemcount 3027,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kuna|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Sharp Flechas] |cRXP_BUY_dela|r
    .collect 2515,1600,493,1 << Hunter --Sharp Arrow (1600)
    .target Kina Chifre Troante
step
    #sticky
    #completewith EnterWC
    .subzone 718 >>Agora você deve estar procurando por um grupo para Caverna Ululante
    .dungeon WC
step
    #label FlyXroads2
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Tal
    .zoneskip The Barrens
step
    #completewith next
    .goto The Barrens,45.66,40.34,120 >>Vá ao Oásis das Águas Claras
    .isQuestTurnedIn 851
step
    #loop
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
    .isOnQuest 914
    .dungeon WC
step
    #completewith next
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Suba a montanha no ponto de encontro da Caverna Ululante
    >>|cRXP_WARN_Siga a seta próxima para chegar à caverna oculta|r
    .dungeon WC
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_eles estão localizados acima da entrada da Caverna Ululante|r
    .accept 1486 >>Aceite Pelegos anormais
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .accept 1487 >>Aceite Erradicação de Anormais
    .goto Kalimdor,51.92,55.44
    .target +Ebru
    .dungeon WC
step
    #optional
    #completewith EnterWC
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith EnterWC
    >>Abate todos os |cRXP_ENEMY_Deviate Beasts|r que vir. Saque-os por seus |cRXP_LOOT_Hides|r
    >>|cRXP_WARN_É recomendado que no máximo 3 jogadores tentem completar esta missão se estiverem fazendo apenas 1 execução. Não há o suficiente|r |cRXP_LOOT_Hides|r |cRXP_WARN_para todos|r
    .complete 1486,1 --Deviate Hide (20)
    .dungeon WC
    .isOnQuest 1486
    --Too many .mobs, would clutter target box
step
    #completewith EnterWC
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
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
    >>|cRXP_WARN_Ele tem um longo tempo de respawn. Pule esta etapa se você não conseguir encontrá-lo|r
    .complete 959,1 --99-Year-Old Port (1)
    .mob Mad Magglish
    .isOnQuest 959
    .dungeon WC
step
    #label EnterWC
    .goto Kalimdor,51.89,54.77,20,0
    .goto Kalimdor,51.95,54.56,20,0
    .goto Kalimdor,52.27,54.65,30,0
    .goto Kalimdor,52.40,55.20,30 >>Adentre o portal da Instância WC
    .dungeon WC
step
    #optional
    #completewith GlowingShard
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith GlowingShard
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith GlowingShard
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    >>|cRXP_WARN_É recomendado que no máximo 3 jogadores tentem completar esta missão se estiverem fazendo apenas 1 execução. Não há o suficiente|r |cRXP_LOOT_Hides|r |cRXP_WARN_para todos|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
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
    #optional
    #completewith DeviateRaptors
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #completewith Ectoplasms
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #completewith Ectoplasms
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    >>Abate os |cRXP_ENEMY_Deviate Ravagers|r, os |cRXP_ENEMY_Vipers|r, os |cRXP_ENEMY_Shamblers|r e os |cRXP_ENEMY_Dreadfangs|r. . Saque-os pelas |cRXP_ENEMY_Hides|r
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
    .isOnQuest 1486
    .dungeon WC
 step
    >>Mate os |cRXP_ENEMY_Deviate Ravagers|r, os |cRXP_ENEMY_Vipers|r, os |cRXP_ENEMY_Shamblers|r e os |cRXP_ENEMY_Dreadfangs|r
    .complete 1487,1 --Deviate Ravager (7)
    .mob +Deviate Ravager
    .complete 1487,2 --Deviate Viper (7)
    .mob +Deviate Viper
    .complete 1487,3 --Deviate Shambler (7)
    .mob +Deviate Shambler
    .complete 1487,4 --Deviate Dreadfang (7)
    .mob +Deviate Dreadfang
    .isOnQuest 1487
    .dungeon WC
step
    #label DeviateRaptors
    >>Abate os |cRXP_ENEMY_Deviate Raptors|r. Saque-os pelas |cRXP_ENEMY_Hides|r
    .complete 1486,1 --Deviate Hide (20)
    .mob Deviate Ravager
    .mob Deviate Viper
    .mob Deviate Shambler
    .mob Deviate Dreadfang
    .isOnQuest 1486
    .dungeon WC
step
    #label Ectoplasms
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1491,1 --Wailing Essence (6)
    .mob Devouring Ectoplasm
    .mob Evolving Ectoplasm
    .mob Nightmare Ectoplasm
    .isOnQuest 1491
    .dungeon WC
step
    #optional
    #hardcore
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #hardcore
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Recomenda-se que no máximo 3 jogadores tentem completar esta missão se você estiver fazendo apenas 1 volta. Não há o suficiente|r |cRXP_PICK_Serpentbloom|r |cRXP_WARN_para todos|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #optional
    #softcore
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #softcore
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #completewith GlowingShardRP
    .hs >>Use sua Pedra de Regresso para ir a Vila Catraca
    .bindlocation 392,1
    .subzoneskip 392
    .use 6948
    .dungeon WC
step
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bigglefuzz|r
    .turnin 959 >>Entregue Encrencas nas Docas
    .target Crane Operator Bigglefuzz
    .isQuestComplete 959
    .dungeon WC
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Entregue Smart Drinks
    .target Mebok Mizzyrix
    .isQuestComplete 1491
    .dungeon WC
step
    .use 10441 >>Usar o |T135229:0|t[|cRXP_LOOT_Estilhaço Chamejante|r] para aceitar a missão
    .accept 6981 >>Aceite A lasca faiscante
    .itemcount 10441,1
    .dungeon WC
step
    #label GlowingShardRP
    .goto The Barrens,62.99,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .complete 6981,1 --Speak with someone in Ratchet about the Glowing Shard
    .skipgossip
    .target Sputtervalve
    .isOnQuest 6981
    .dungeon WC
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 380
    .isOnQuest 6981
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
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r e |cRXP_FRIENDLY_Ebru|r
    >>|cRXP_WARN_eles estão localizados acima da entrada da Caverna Ululante|r
    .turnin 1486 >>Entregue Pelegos anormais
    .target +Nalpak
    .goto Kalimdor,51.91,55.42
    .turnin 1487 >>Entregue Erradicação de Anormais
    .target +Ebru
    .goto Kalimdor,51.92,55.44
    .isQuestComplete 1487
    .isQuestComplete 1486
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
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Está localizado acima da entrada da Caverna Ululante|r
    .turnin 1486 >>Entregue Pelegos anormais
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step
    #completewith WCEnd
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Devrak
    .zoneskip Thunder Bluff
    .dungeon WC
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
    .goto Thunder Bluff,23.0,21.0
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Boticário Zaqueu|r
    .turnin 962 >>Entregue Ofídeas
    .target Apothecary Zamah
    .isQuestComplete 962
    .dungeon WC
step
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarice Nourrice|r
    .accept 264 >>Aceite Até que a morte nos separe
    .target Clarice Foster
    .dungeon WC
step
    #label WCEnd
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .isQuestAvailable 6442
    .dungeon WC
step
    #completewith SerenaKill
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestComplete 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Aceite Contra-Ataque!
    --.timer 183,Warlord Krom'zar Spawn
    .target Regthar Deathgate
    .isQuestTurnedIn 852
    .group
    --timer is random, generally somewhere between 120-210 seconds
step
    .goto The Barrens,44.48,28.15
    >>Mate |cRXP_ENEMY_Senhor da Guerra Krom'zar|r quando aparecer. Pegue o |cRXP_PICK_Estandarte|r que ele deixa no chão
    >>|cRXP_WARN_Cuidado! Ele é um elite forte e protegido por pelo menos dois|r |cRXP_ENEMY_inimigos|r |cRXP_WARN_Kolkar|r
    >>|cRXP_WARN_Pode levar até 3 minutos para ele aparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .group 3
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Entregue Contra-Ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
    .group
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .target Regthar Deathgate
    .isQuestComplete 855
    .group
step
    #optional
    >>Se você não completou Braçadeiras de Centauro até este ponto, abandone-a.
    .abandon 855 >>Abandone Braçadeiras de centauro
    .isOnQuest 855
step
    #label SerenaKill
    .goto The Barrens,39.16,12.16
    >>Mate |cRXP_ENEMY_Serena Plumassangue|r. Pegue sua |cRXP_LOOT_Cabeça|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    #completewith next
    .subzone 380 >>Vá para The Encruzilhada
step
    #label ApothecaryPickup
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok|r e |cRXP_FRIENDLY_Korran|r
    .turnin 876 >>Entregue Serena Plumassangue
    .accept 1060 >>Aceite Uma carta para Jin'Zil
    .target +Darsok Swiftdagger
    .goto The Barrens,51.62,30.90
    .accept 868 >>Aceite Caça aos Ovos
    .target +Korran
    .goto The Barrens,51.10,29.60
step
    #completewith next
    .zone Stonetalon Mountains >>Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
step
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1062 >>Entregue Invasores goblins
    .timer 4,Invasores Goblins RP
    .accept 1063 >>Aceite [DEPRECATED] A Anciã Bruxa Má
    .accept 1068 >>Aceite Máquinas Retalhadoras
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .turnin 6523 >>Entregue Proteja Kaya
    .accept 6401 >>Aceite Kaya Está Viva
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #completewith next
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>Siga o caminho à esquerda para cima
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mandingueiro Jin'Zil|r
    .turnin 1060 >>Entregue Carta para Jin'Zil
    .accept 1058 >>Aceite A magia florestal de Jin'Zil
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entregue Notícias de Dogran
    .accept 1511 >>Aceite Ken'zigla's Draught - Missão
    .target Ken'zigla
step
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entregue Sanguessugas
    .target Xen'Zilla
step << skip
    .goto Stonetalon Mountains,74.69,98.10
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Salte em uma das gaiolas. Faça um Logout Pular saindo da conta e entrando novamente|r
    .link https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >>https://www.youtube.com/watch?v=cp2YI86AO4Y&ab >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    .solo
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >>Vá para Ravina da Avalanche e entre na caverna do norte
    .group
step
    .goto Stonetalon Mountains,60.16,90.92,30,0
    .goto Stonetalon Mountains,58.44,89.90
    >>Ataque os |cRXP_PICK_Cristais de Resonita|r e caminhe para dentro da caverna para investigar a área
    >>|cRXP_WARN_Cuidado! Esses inimigos são mais difíceis do que parecem e são facilmente duplo-puxados.|r |cRXP_ENEMY_Guardiões de Pedra Gogger|r |cRXP_WARN_lançam|r |T136026:0|t[Choque Terreno] |cRXP_WARN_que causa uma alta quantidade de dano!|r
    .complete 6421,1 --Investigate Cave in Boulderslide Ravine
    .complete 6421,2 --Resonity Crystal (x10)
    .isOnQuest 6421
    .group
step << skip
    #completewith next
    .goto Stonetalon Mountains,64.62,93.86,25,0
    .goto Stonetalon Mountains,64.80,95.27,20,0
    .goto Stonetalon Mountains,64.32,95.84,15 >>Entre na caverna do sul em Ravina da Avalanche
    .group
step << skip
    .goto Stonetalon Mountains,64.28,96.60
    .goto Thunder Bluff,56.65,18.96,30 >>|cRXP_WARN_Salte a rocha à direita. Realize um Pulo de Logout posicionando seu personagem até parecer que está flutuando, depois saindo e voltando.|r
    .link https://www.youtube.com/watch?v=j_DRDkqWeuE&ab >>https://www.youtube.com/watch?v=j_DRDkqWeuE&ab >> |cRXP_WARN_Clique aqui para um exemplo|r
    .group
step
    #completewith next
    .subzone 460 >>Vá para Refúgio da Rocha do Sol
step
    #label KayaLives
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Entregue A Kaya Está Viva
    .target Tammra Windfield
step
    .goto Stonetalon Mountains,47.47,62.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Estalajadeira Jayka|r
    >>|cRXP_WARN_NÃO defina sua Pedra de Retorno!|r
	.vendor >>|cRXP_BUY_Venda seus itens desnecessários, depois reabasteça-se de comida e água se necessário|r << !Rogue !Warrior
    .vendor >>|cRXP_BUY_Vender seus trastes, depois recompre comida se necessário|r << Rogue/Warrior
    .target Innkeeper Jayka
    .isQuestAvailable 6442
step
    .goto Stonetalon Mountains,47.61,61.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Jeeda|r no segundo andar da estalagem
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_dela se estiverem disponíveis|r << !Warrior
    .vendor >>|cRXP_BUY_Compre|r |T134831:0|t[Poções de Cura] |cRXP_BUY_e|r |T134413:0|t[Liferoot] |cRXP_BUY_dela se estiverem disponíveis|r << Warrior
    .target Jeeda
    .isQuestAvailable 6442
step
    #completewith InDeepTrouble2
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>Suba pelo caminho à direita
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tsunomem|r e |cRXP_FRIENDLY_Mor'Rogal|r
    .accept 6562 >>Aceite Problemas nas Profundezas
    --.accept 6393 >>Accept Elemental War
    .target +Tsunaman
    .goto Stonetalon Mountains,47.36,64.25
    .turnin 6421 >>Entregue Ravina da Avalanche
    .accept 6481 >>Aceite O Terrano se Ergue
    .target +Mor'Rogal
    .goto Stonetalon Mountains,47.21,64.05
    .isQuestComplete 6421
    .group
step
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mor'Rogal|r
    .accept 6481 >>Aceite O Terrano se Ergue
    .target Mor'Rogal
    .isQuestTurnedIn 6421
    .group
step
    #label InDeepTrouble2
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tsunomem|r
    .accept 6562 >>Aceite Problemas nas Profundezas
    --.accept 6393 >>Accept Elemental War
    .target Tsunaman
step
    .goto Stonetalon Mountains,59.08,75.70
    >>Clique no |cRXP_FRIENDLY_Cartaz de Procurado|r
    .accept 6284 >>Aceite Aracnofobia
    .group
step
    #loop
    .goto Stonetalon Mountains,54.80,71.95,0
    .goto Stonetalon Mountains,51.89,73.81,50,0
    .goto Stonetalon Mountains,52.46,71.67,50,0
    .goto Stonetalon Mountains,54.80,71.95,50,0
    >>Abate |cRXP_ENEMY_Besseleth|r. Saqueie-a pela |cRXP_LOOT_Dentada|r
    >>|cRXP_WARN_Limpe a área antes de puxá-la. Cuidado, ela pode enfeitiçar você com teia por 10 segundos!|r
    .complete 6284,1 --Collect Besseleth's Fang (x1)
	.unitscan Besseleth
    .group 3
step
    #completewith next
    .goto Stonetalon Mountains,67.41,87.92,60,0
    .goto Stonetalon Mountains,65.93,89.87,40,0
    .goto Stonetalon Mountains,63.66,93.80,40,0
    .goto Stonetalon Mountains,61.75,93.06,40 >>Viaje para Ravina da Avalanche e entre na caverna do norte
    .group
    .isOnQuest 6481
step
    .goto Stonetalon Mountains,59.50,90.40,40,0
    .goto Stonetalon Mountains,57.65,89.52
    >>Clique em |cRXP_PICK_Resonite Cask|r para invocar |cRXP_ENEMY_Goggeroc|r. Abata-o quando ele aparecer
    .complete 6481,1 --Goggeroc slain (1)
    .mob Goggeroc
    .group 2
    .isOnQuest 6481
step << skip
    .goto Stonetalon Mountains,58.24,89.81
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_Salte em um cogumelo amarelo. Execute um Logout Pular pulando no ar e simultaneamente desconectando e reconectando. Volte para Sol Pedra Recuar se não conseguir|r
    .link https://www.youtube.com/watch?v=DGsL3FX9_TE&ab >>https://www.youtube.com/watch?v=DGsL3FX9_TE&ab >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    .group
    .isQuestComplete 6481
    --VV Jump logout required for it to work, remove if it doesn't work on new servers
step
    #completewith EarthenAriseTurnin
    .goto Stonetalon Mountains,49.38,61.68,50 >>Vá para Refúgio da Rocha do Sol
    .group
    .isQuestComplete 6481
step
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,20,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>Corra pela trilha à esquerda
    .group
    .isQuestComplete 6481
step
    #label EarthenAriseTurnin
    .goto Stonetalon Mountains,47.21,64.05
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mor'Rogal|r
    .turnin 6481 >>Aceite O Terrano Se Ergue
    .target Mor'Rogal
    .isQuestComplete 6481
    .group
step
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Entregue Aracnofobia
    .target Maggran Earthbinder
	.isQuestComplete 6284
    .group
step
    #completewith next
    .goto Stonetalon Mountains,58.99,62.60,100 >>Vá ao Rochedo Cortavento
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Entregue instruções adicionais
    .target Ziz Fizziks
step
    #loop
    .line Stonetalon Mountains,70.82,55.25,70.52,56.22,69.76,56.70,68.52,56.04,67.77,55.97,66.94,56.25,66.41,56.31,65.74,57.20,65.14,57.02,64.37,56.47,63.72,56.80,62.99,56.25,62.32,56.11,61.58,55.10,61.10,54.68,60.98,54.06,59.81,53.51,59.66,52.14,60.33,51.68
    .goto Stonetalon Mountains,61.03,52.32,50,0
    .goto Stonetalon Mountains,60.33,51.68,50,0
    .goto Stonetalon Mountains,59.66,52.14,50,0
    .goto Stonetalon Mountains,59.81,53.51,50,0
    .goto Stonetalon Mountains,60.98,54.06,50,0
    .goto Stonetalon Mountains,61.10,54.68,50,0
    .goto Stonetalon Mountains,61.58,55.10,50,0
    .goto Stonetalon Mountains,62.32,56.11,50,0
    .goto Stonetalon Mountains,62.99,56.25,50,0
    .goto Stonetalon Mountains,63.72,56.80,50,0
    .goto Stonetalon Mountains,64.37,56.47,50,0
    .goto Stonetalon Mountains,65.14,57.02,50,0
    .goto Stonetalon Mountains,65.74,57.20,50,0
    .goto Stonetalon Mountains,66.41,56.31,50,0
    .goto Stonetalon Mountains,66.94,56.25,50,0
    .goto Stonetalon Mountains,67.77,55.97,50,0
    .goto Stonetalon Mountains,68.52,56.04,50,0
    .goto Stonetalon Mountains,69.76,56.70,50,0
    .goto Stonetalon Mountains,70.52,56.22,50,0
    .goto Stonetalon Mountains,70.82,55.25,50,0
    .goto Stonetalon Mountains,59.66,52.14,0
    >>Abate |cRXP_ENEMY_XT:9|r. Patrulha o lado sul do rio
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 1068,2 --XT:9 (1)
    .unitscan XT:9
step
    #loop
    .line Stonetalon Mountains,67.18,46.87,66.53,46.95,65.72,45.09,63.73,45.02,63.72,45.92,63.43,46.57,64.43,46.13,64.72,46.63,64.82,47.72,65.11,48.31,65.98,48.67,66.24,49.65,66.65,49.58,66.88,48.95,68.41,49.58,69.45,46.56,70.22,48.62,70.95,48.49,71.41,45.54,71.25,43.45
    .goto Stonetalon Mountains,67.18,46.87,50,0
    .goto Stonetalon Mountains,66.53,46.95,50,0
    .goto Stonetalon Mountains,65.72,45.09,50,0
    .goto Stonetalon Mountains,63.73,45.02,50,0
    .goto Stonetalon Mountains,63.72,45.92,50,0
    .goto Stonetalon Mountains,63.43,46.57,50,0
    .goto Stonetalon Mountains,64.43,46.13,50,0
    .goto Stonetalon Mountains,64.72,46.63,50,0
    .goto Stonetalon Mountains,64.82,47.72,50,0
    .goto Stonetalon Mountains,65.11,48.31,50,0
    .goto Stonetalon Mountains,65.98,48.67,50,0
    .goto Stonetalon Mountains,66.24,49.65,50,0
    .goto Stonetalon Mountains,66.65,49.58,50,0
    .goto Stonetalon Mountains,66.88,48.95,50,0
    .goto Stonetalon Mountains,68.41,49.58,50,0
    .goto Stonetalon Mountains,69.45,46.56,50,0
    .goto Stonetalon Mountains,70.22,48.62,50,0
    .goto Stonetalon Mountains,70.95,48.49,50,0
    .goto Stonetalon Mountains,71.41,45.54,50,0
    .goto Stonetalon Mountains,71.25,43.45,50,0
    .goto Stonetalon Mountains,64.82,47.23,50,0
    .goto Stonetalon Mountains,64.82,47.23,0
    >>Abate |cRXP_ENEMY_XT:4|r. Patrulha o lado norte do rio
    >>|cRXP_WARN_Esta missão não precisa ser completada agora|r
    .complete 1068,1 --XT:4 (1)
    .unitscan XT:4
step
    #completewith next
    .subzone 2160 >>Entre na Mina Cortavento
    .group
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piznik|r
    .accept 1090 >>Aceite Ordens de Hanfritz
    .target Piznik
    .group 3
step
    .goto Stonetalon Mountains,71.77,60.19
    >>Proteja |cRXP_FRIENDLY_Piznik|r dos |cRXP_ENEMY_Daninho de Cortavento|r
    .complete 1090,1 --Keep Piznik safe while he mines the mysterious ore
    .mob Windshear Vermin
    .group 3
step
    .goto Stonetalon Mountains,71.87,60.00
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Piznik|r
    .turnin 1090 >>Entregue Ordens de Gerenzo
    .accept 1092 >>Aceite Ordens de Hanfritz
    .target Piznik
    .group
step << skip
    .goto Stonetalon Mountains,71.83,60.34
    .goto Stonetalon Mountains,57.57,61.99,30 >>|cRXP_WARN_Salte na roda de madeira. Faça um Logout Pular desconectando e entrando novamente|r
    .link https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >>https://www.youtube.com/watch?v=8s1SRza7qFg&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    .group
step
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1092 >>Entregue Ordens de Gerenzo
    .target Ziz Fizziks
    .isQuestTurnedIn 1090
    .group
step
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >>Vá para Talondeep Trajetória
step << skip
    .goto Stonetalon Mountains,78.89,41.24
    .goto Ashenvale,40.40,53.06,30 >>|cRXP_WARN_Salte na pedra branca à sua direita. Faça um Logout Pular desconectando e entrando novamente|r
    .link https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >>https://www.youtube.com/watch?v=h2s4ZjFBLtg&ab_channel=RestedXP >> |cRXP_WARN_CLIQUE AQUI para um exemplo|r
    .zoneskip Ashenvale
step
	#completewith ZoramFP
    .goto Ashenvale,39.45,55.29,50,0
    .goto Ashenvale,36.47,57.15,50,0
    .goto Ashenvale,34.56,54.13,30,0
    .goto Ashenvale,32.14,52.12,60,0
    .goto Ashenvale,28.64,48.10,50,0
    .goto Ashenvale,26.34,45.44,50,0
    .goto Ashenvale,25.40,39.00,70,0
    .goto Ashenvale,11.96,34.28,80 >>Vá para Zoram'gar Posto Avançado
    >>|cRXP_WARN_Evite as guardas Astranaar no caminho. Siga o ponto de referência para segurança|r
    .unitscan Astranaar Sentinel
step
    #optional
	#loop
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
    .xp 21 >>Mate inimigos até o nível 21
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
    .group
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu|r, |cRXP_FRIENDLY_Karang|r, |cRXP_FRIENDLY_Mitsuwa|r e |cRXP_FRIENDLY_Marukai|r
    .turnin 6562 >>Entregue Problemas nas Profundezas
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
step
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Isso iniciará uma missão de escolta. Cuidado, ela é difícil|r
    .accept 6641,1 >>Aceite Vorsha, a Açoitadora
    .target Muglash
    .group 2
step
    .goto Ashenvale,9.63,27.63
    >>Clique no get there
    >>|cRXP_WARN_Haverá ondas de|r |cRXP_ENEMY_Naga|r |cRXP_WARN_que aparecem. Tenha cuidado quando|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_aparecer, ele acerta muito forte|r
    >>|cRXP_WARN_Você pode deixar|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_atrair os ataques antes de enfrentá-la|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
    .group 2
step
	#loop
	.goto Ashenvale,11.01,28.57,0
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
    .goto Kalimdor,43.89,35.23,100 >>Vá para a entrada de Profundezas Negras
    .isOnQuest 6563
    .group
step
    #completewith next
    >>Saque |cRXP_PICK_Safira de Aku'Mai|r da parede
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
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
    .goto Kalimdor,43.94,34.86,20,0
    >>Mate as |cRXP_ENEMY_Sacerdotisas da Maré de Profundezas Negras|r. Saque-as para uma |T134332:0|t[|cRXP_LOOT_Nota Úmida|r] e use-a para iniciar a missão
    .collect 16790,1,6564 --Collect Damp Note (1)
    .accept 6564 >>Aceite Lealdade aos Antigos Deuses
    .mob Blackfathom Tide Priestess
    .use 16790
    .group 4
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
    >>Saque |cRXP_PICK_Safira de Aku'Mai|r da parede
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .group 4
step
	#loop
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
    .xp 23 >>Suba até o nível 23
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entregue A Essência de Aku'mai
    .turnin 6564 >>Entregue Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
    .isQuestComplete 6564
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6563 >>Entregue A Essência de Aku'mai
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6563
step
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu Sancrea|r
    .turnin 6564 >>Entregue Lealdade aos Deuses Antigos
    .target Je'neu Sancrea
    .group
    .isQuestComplete 6564
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Mensageiro do Brado Guerreiro|r e |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >>Entregue Vorsha, a Açoitadora
    .target +Warsong Runner
    .goto Ashenvale,12.22,34.21
    .turnin 6442 >>Entregue Nagas na Praia de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
    .isQuestComplete 6641
    .group
step
    .goto Ashenvale,11.69,34.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Marukai|r
    .turnin 6442 >>Entregue Nagas na Praia de Zoram
    .target Marukai
step
    .goto Ashenvale,11.90,34.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Karang|r
    .accept 216 >>Aceite No Meio do Caminho Tinha uma Pedra... e um Pelocardo...
    .target Karang Amakkar
step
    #completewith flytoORG
    .hs >>Vá para Penhasco do Trovão
    .use 6948
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
    .cooldown item,6948,>0
step
    #completewith flytoORG
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .zoneskip Thunder Bluff
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Andruk
    .cooldown item,6948,<0
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5059 >>Deposite a |T132938:0|t[Garra de Escavação]
    .target Chesmu
step
    #completewith next
    .goto Thunder Bluff,69.88,30.90,80 >>Vá para o Morro dos Anciãos
step
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Magatha|r
    >>|cRXP_WARN_Espere o RP terminar|r
    .turnin 1063 >>Entregue A Velha Bruxa
    .timer 6,Cena de A Velha Anciã
    .accept 1064 >>Aceite Ajuda Renegada
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 1064 >>Entregue Ajuda Renegada
    .accept 1065 >>Aceite A jornada para Serraria Tarren
    .target Apothecary Zamah
step << Warlock
    #completewith flytoORG
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .subzoneskip 378
step << !Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal
    .zoneskip Orgrimmar
step << Warlock
    .goto The Barrens,44.62,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Logmar|r
    .turnin 1511 >>Entregue Ken'zigla's Draught - Missão - Missão
    .accept 1515 >>Aceite Dogran's Captivity - Missão - Missão
    .target Grunt Logmar
step << Warlock
    .goto The Barrens,43.31,47.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Dogran|r
    .turnin 1515 >>Entregue Dogran's Captivity - Missão - Missão
    .accept 1512 >>Aceite Love's Gift - Missão - Missão
    .target Grunt Dogran
step << Warlock
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
step
    #optional
    #label flytoORG
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
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
    .collect 5140,20,2479,1 --Collect Flash Powder (20)
    .target Rekkul
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rilli|r
    .turnin 3923 >>Entregue Rilli Passomal
    .accept 3924 >>Aceite [DEPRICATED] A rebimboca Manual
    .target Rilli Greasygob
step << Priest/Warlock
    .goto Orgrimmar,44.16,48.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar para|r |cRXP_FRIENDLY_Katis|r|cRXP_BUY_. Compre uma|r |T135139:0|t[Varinha Incandescente] |cRXP_BUY_dela|r
    .collect 5210,1,1507,1 --Collect Burning Wand (1)
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
step << Troll Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .turnin 5642 >>Entregue Guarda Sombria
    .trainer >>Treine suas magias de classe
    .target Ur'kyo
step << Undead Priest
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8103 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <22,1
    .xp >24,1
step << Undead Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 3747 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <24,1
step << Rogue/Druid
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >>Entre nas Savanas pela saída ocidental
    .zoneskip The Barrens
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120 >>Vá para o Pântano da Lama
step << Druid
    .goto The Barrens,56.67,8.32
    >>Abra o |cRXP_PICK_Cofre Estranho|r na água para obter o |T133443:0|t[Meio-pingente da Agilidade Aquática]
    .collect 15883,1,3924,1 --Half Pendant of Aquatic Agility (1)
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
    --VV Video?
step << Rogue
    .goto The Barrens,54.77,5.57
    >>Usar sua habilidade de arrombamento para abrir a |cRXP_PICK_Caixa-forte de Gallywix|r e pegue o |cRXP_LOOT_Mistura|r.
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #completewith SamophlangePages
    .goto The Barrens,61.33,4.21,120 >>Vá em direção à Mina Veio do Pedregulho
step << !Rogue/Druid
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >>Entre em Savanas através da Saída Ocidental
    .zoneskip The Barrens
    .isOnQuest 3924
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Venture Co. Enforcers|r e os |cRXP_ENEMY_Venture Co. Overseers|r. Saqueie-os para |cRXP_LOOT_Samophlange Manual Pages|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages
    .goto The Barrens,60.90,3.84,20,0
    .goto The Barrens,59.99,4.13
    >>Mate o |cRXP_ENEMY_Chefe Cobreplugue|r no fundo da mina. Saque-o para obter a |cRXP_LOOT_Cobertura da Rebimboca Manual|r.
    .collect 11147,1 --Samophlange Manual Cover (1)
    .mob Boss Copperplug
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #label SamophlangePages2
    #loop
    .goto The Barrens,61.51,4.43,0
    .goto The Barrens,61.46,4.50,40,0
    .goto The Barrens,61.06,3.63,40,0
    .goto The Barrens,61.63,3.37,40,0
    .goto The Barrens,62.14,3.52,40,0
    .goto The Barrens,61.94,4.53,40,0
    .goto The Barrens,61.85,5.37,40,0
    .goto The Barrens,61.44,5.56,40,0
    .goto The Barrens,61.17,5.05,40,0
    .goto The Barrens,61.51,4.43,40,0
    >>Mate os |cRXP_ENEMY_Venture Co. Enforcers|r e os |cRXP_ENEMY_Venture Co. Overseers|r. Saqueie-os para obter |cRXP_LOOT_Samophlange Manual Pages|r
    .collect 11148,5 --Samophlange Manual Page (5)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #requires SamophlangePages
    #requires SamophlangePages2
    >>|cRXP_WARN_Clique na|r |T133735:0|t[[DEPRICATED] A rebimboca Manual Cobertura] |cRXP_WARN_para criar o|r |cRXP_LOOT_Manual|r
    .complete 3924,1 -- Samophlange Manual
    .use 6626
ste
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Entre em Orgrimmar pela entrada ocidental
    .isQuestComplete 3924
step << skip
    .goto The Barrens,60.00,4.09
    .goto Orgrimmar,40.05,68.05,30 >>|cRXP_WARN_Pule para a tenda. Faça um Pulo de Logout saindo do jogo e entrando novamente. Corra de volta para Orgrimmar se não conseguir|r
    .link https://www.youtube.com/watch?v=cOxspH4RcI8&ab >>https://www.youtube.com/watch?v=cOxspH4RcI8&ab >> |cRXP_WARN_Clique aqui para um exemplo|r
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .turnin 2478 >>Entregue Missão: Possível, Mas Não Provável
    .accept 2479 >>Aceite Assistência de Hinott
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.10,49.49
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Rekkol|r|cRXP_BUY_. Compre |r |T133849:0|t[Poeira of Decompor] |cRXP_BUY_e|r |T132793:0|t[Vazio Vials] |cRXP_BUY_dele|r
    .collect 2928,20,2479,1 --Collect Dust of Decay (20)
    .collect 3371,20,2479,1 --Collect Empty Vial (20)
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
step
    .goto Orgrimmar,76.50,24.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Rilli |r
    .turnin 3924 >>Entregue [DEPRICATED] A rebimboca Manual
    .target Rilli Greasygob
step << Troll Warrior/Undead Warrior/Tauren Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprenda a usar Machados de Duas Mãos
    .target Hanashi
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
    .collect 3137,200,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step
    #optional
    .abandon 6421 >>Abandone Ravina do Deslizamento
step
    #optional
    .abandon 4021 >>Abandone Contra-ataque!
step
    #optional
    .abandon 6481 >>Abandone O terrano se ergue
step
    #optional
    .abandon 6284 >>Abandone Aracnofobia
step
    #optional
    .abandon 6641 >>Abandone Vorsha, a Açoitadora
step
    #optional
    .abandon 6563 >>Abandone A Essência de Aku'mai
step
    #optional
    .abandon 1486 >>Abandone Pelegos anormais
step
    #optional
    .abandon 1487 >>Abandone Erradicação de Anormais
step
    #optional
    .abandon 1491 >>Abandone Bebidas inteligentes
step
    #optional
    .abandon 959 >>Abandone Encrencas nas docas
step
    #optional
    .abandon 914 >>Abandone Líderes da Presa
step
    #optional
    .abandon 962 >>Abandone Serpentbloom
step
    #completewith next
    .zone Durotar >>Saia de Orgrimmar
    .zoneskip Durotar
step
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    .zoneskip Tirisfal Glades
    .zoneskip Undercity

]])

