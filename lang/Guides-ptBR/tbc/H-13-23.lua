if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Horde
#name 13-18 Terras Devastadas
#subgroup RestedXP Horda 1-30
#defaultfor Shaman
#next 18-23 Stonetalon/The Barrens

step << Tauren Shaman
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step << Tauren Shaman
    #completewith next
    .goto Durotar,54.31,39.44,30,0
    .goto Durotar,52.8,28.7,20 >>Entre na Caverna Sopravento
step << Tauren Shaman
    #loop
    .goto Durotar,51.90,25.70,0
    .goto Durotar,53.18,29.15,20,0
    .goto Durotar,52.70,27.97,12,0
    .goto Durotar,53.05,27.87,12,0
    .goto Durotar,53.14,27.24,12,0
    .goto Durotar,52.84,26.80,12,0
    .goto Durotar,52.07,26.85,12,0
    .goto Durotar,51.90,25.70,12,0
    >>Abate |cRXP_ENEMY_Cultists|r. Saque-os para uma |cRXP_LOOT_Reagent Pouch|r
    .complete 1525,2 --Reagent Pouch (1)
    .mob Burning Blade Cultist
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
step << !Tauren
    #completewith DemonMountain
    +|cRXP_WARN_O|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_tem um cronômetro de 30 minutos. Não fique afk até você ter completado a missão 'A Semente Demônioíaca'|r
    .isOnQuest 924
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Vá ao topo da montanha
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1502 >>Entregue Thun'grim Olhafogo
    .accept 1503 >>Aceite Aço Forjado
    .target Thun'grim Firegaze
step << Warrior
    .goto The Barrens,55.05,26.65
    >>Pegue as |cRXP_PICK_Barras de Aço Forjado|r no |cRXP_LOOT_Baú de Ferro Roubado|r
    .complete 1503,1 --Forged Steel Bars (1)
step << Warrior
    #completewith next
    .goto The Barrens,54.53,27.96,30,0
    .goto The Barrens,55.53,28.28,30,0
    .goto The Barrens,56.58,28.61,30 >>Vá ao topo da montanha
step << Warrior
    .goto The Barrens,57.23,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thun'grim Olhafogo|r
    .turnin 1503 >>Entregue Aço forjado
    .target Thun'grim Firegaze
step << !Warrior !Shaman
    #hardcore
    #completewith Xroadspickups
    .subzone 380 >>Viaje até the Crossroads
step << !Warrior !Shaman
    #softcore
    #completewith Xroadspickups
    .deathskip >>Pule para a Encruzilhada
    .subzoneskip 380
step << !Warrior !Shaman
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << !Warrior !Shaman
    #optional
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
    .isOnQuest 842
step << !Warrior !Shaman
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
step << !Warrior !Shaman
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Na Cola dos Larápios
    .target Gazrog
step << !Warrior !Shaman
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
    .target Thork
step << !Warrior !Shaman
    #label Xroadspickups
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 848 >>Aceite Esporos de Fungos
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .target Apothecary Helbrim
step
    #completewith PlainstriderBeaks
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #completewith DisruptTheAttacks
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os para obter seus |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step << !Tauren
    #completewith next
    #label DemonMountain
    .goto The Barrens,51.09,22.68,40,0
    .goto The Barrens,50.33,21.85,40,0
    .goto The Barrens,49.21,20.42,40,0
    .goto The Barrens,47.65,19.21,100 >>Vá ao topo da montanha
    .isOnQuest 924
step << !Tauren
    #completewith next
    #requires DemonMountain
    .goto The Barrens,47.65,19.21,15 >>Entre em Dreadmist Den
    .isOnQuest 924
step << !Tauren
    #label DemonSeed
    .goto The Barrens,47.97,19.07
    >>Clique com o botão direito no |cRXP_PICK_Altar|r
    >>|cRXP_WARN_Certifique-se de que você tem um|r |T134095:0|t[Pedra do Poder Defeituosa] |cRXP_WARN_(duração de 30 minutos) com você|r
    .collect 4986,1,924 --Collect Flawed Power Stone
    .complete 924,1 --Destroy the Demon Seed (1)
    .isOnQuest 924
step << Shaman
    #completewith DisruptTheAttacks
    >>Abate um |cRXP_ENEMY_Ladravaz Crinavalha|r ou um |cRXP_ENEMY_Tecespinho Crinavalha|r. Saqueie-o para um |cRXP_LOOT_Fire Piche|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Buscadores de Água|r, os |cRXP_ENEMY_Thornweavers|r e os |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    .goto The Barrens,55.70,27.30
    .use 4926 >>Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Se não tiver saído, você o receberá depois|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    #label DisruptTheAttacks
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Mate os |cRXP_ENEMY_Buscadores de Água|r, os |cRXP_ENEMY_Thornweavers|r e os |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step << Shaman
    #loop
	.goto The Barrens,53.63,24.50,0
	.goto The Barrens,54.26,24.64,50,0
	.goto The Barrens,54.81,25.19,50,0
	.goto The Barrens,55.50,25.61,50,0
	.goto The Barrens,55.86,26.30,50,0
	.goto The Barrens,55.83,27.15,50,0
	.goto The Barrens,55.41,27.41,50,0
	.goto The Barrens,54.50,26.97,50,0
	.goto The Barrens,54.05,26.11,50,0
	.goto The Barrens,53.51,25.24,50,0
	.goto The Barrens,53.63,24.50,50,0
    >>Abate um |cRXP_ENEMY_Ladravaz Crinavalha|r ou um |cRXP_ENEMY_Tecespinho Crinavalha|r. Saqueie-o para um |cRXP_LOOT_Fire Piche|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #label PlainstriderBeaks
    .goto The Barrens,53.36,26.28,0
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
step << Orc/Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Volte à Encruzilhada
    .target Zargh
    .isOnQuest 6386
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Sergra|r e |cRXP_FRIENDLY_Thork|r
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada << Tauren Shaman
    .turnin 844 >>Entregue A Ameaça Pinote
    .accept 845 >>Aceite As Zebras
    .target +Sergra Darkthorn
    .goto The Barrens,52.24,31.01
    .turnin 871 >>Entregue Em Defesa do Posto Remoto
    .accept 872 >>Aceite A Ofensiva do Posto Remoto
    .target +Thork
    .goto The Barrens,51.50,30.87
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .accept 867 >>Aceite As harpias bandoleiras
    .target Darsok Swiftdagger
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .target Apothecary Helbrim
step << !Hunter !Rogue !Warlock !Mage !Priest
    #completewith next
    .goto The Barrens,52.5,30.7,0
    .vendor >>Verifique se |cRXP_FRIENDLY_Lizzarik|r está na Encruzilhada
    >>|cRXP_WARN_Ele vende poções e|r |T133476:0|t[|cRXP_FRIENDLY_Maça Pesada com Pontas|r] |cRXP_WARN_que é um item de oferta limitada|r
	.unitscan Lizzarik
    .subzoneskip 380,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << !Tauren
    .goto The Barrens,51.99,29.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Estalajadeiro Boorand|r
    .home >>Defina sua Pedra de Retorno em Encruzilhada
    .target Innkeeper Boorand Plainswind
    .isQuestAvailable 894
    .bindlocation 380
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    #completewith SupplyCrates
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate os |cRXP_ENEMY_Razormane Geomancers|r e os |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #completewith next
    >>Saqueie has multiple spawn locations
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Mate o |cRXP_ENEMY_Kreenig Rosnento|r. Saqueie o |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
step
    #label SupplyCrates
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58
    >>Saqueie has multiple spawn locations
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #loop
	.goto The Barrens,59.37,25.38,0
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
step << !Tauren
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zhevra|r que você veja. Saqueie os |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .isQuestComplete 924
step << !Tauren
    .goto The Barrens,62.34,20.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ak'Zeloth|r
    .turnin 924 >>Entregue A Semente Demônioíaca
    .target Ak'Zeloth
    .isQuestComplete 924
step << Shaman
    #completewith ShamanDurotar
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith ShamanDurotar
    >>Mate qualquer |cRXP_ENEMY_Zhevra|r que você veja. Saqueie os |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #completewith CallofFire3
    #label ShamanDurotar
    .goto Durotar,36.74,57.78
    .zone Durotar >>Vá para Durotar
    .isOnQuest 1525
step << Shaman
    #requires ShamanDurotar
    #completewith next
    .goto Durotar,36.74,57.78,10,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.63,58.15,8,0
    .goto Durotar,36.77,58.98,8,0
    .goto Durotar,36.85,58.32,8,0
    .goto Durotar,37.24,58.13,8,0
    .goto Durotar,37.86,58.18,8,0
    .goto Durotar,38.05,57.79,8,0
    .goto Durotar,38.93,57.54,8,0
    .goto Durotar,39.19,57.90,8,0
    .goto Durotar,39.16,58.56,10 >>Siga pelo caminho que sobe a montanha em direção a |cRXP_FRIENDLY_Telf Joolam|r
step << Shaman
    #label CallofFire3
    #requires ShamanDurotar
    .goto Durotar,38.52,58.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Telf|r
    .turnin 1525 >>Entregue Call of Fogo - Missão - Missão
    .accept 1526 >>Aceite Call of Fogo - Missão - Missão
    .target Telf Joolam
step << Shaman
    #completewith next
    .goto Durotar,38.18,58.58
    .cast 8898 >>|cRXP_WARN_Use o|r |T134732:0|t[Sapta do Fogo]
    .use 6636
step << Shaman
    .goto Durotar,38.96,58.22
    >>Mate o |cRXP_ENEMY_Manifestação Menor do Fogo|r. Saqueie-o para um |cRXP_LOOT_Glowing Ember|r
    .complete 1526,1 --Glowing Ember (1)
    .mob Minor Manifestation of Fire
step << Shaman
    .goto Durotar,38.96,58.22
    >>Clique no |cRXP_PICK_Braseiro|r no chão
    .turnin 1526 >>Entregue Call of Fogo - Missão - Missão
    .accept 1527 >>Aceite Call of Fogo - Missão - Missão
step << Shaman
    #completewith FireEnd
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zhevra|r que você veja. Saqueie os |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Shaman
    #label FireEnd
    .goto The Barrens,55.86,19.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kranal|r
    .turnin 1527 >>Entregue Call of Fogo - Missão - Missão
    .target Kranal Fiss
step << Shaman
    .goto The Barrens,55.78,20.00
    .use 4926 >>Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Mate |cRXP_ENEMY_Zevra Corredora|r. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label RatchetEnter
    .goto The Barrens,62.68,36.23
    .subzone 392 >>Viaje para Ponto de Ancoragem
    .isOnQuest 845
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gasganete|r
    .accept 887 >>Aceite Os Flibusteiros dos Mares do Sul
    .target Gazlowe
step
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >>Aprenda a rota de voo para Ratchet
    .target Bragok
    .isQuestAvailable 895
step
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .accept 894 >>Aceite A Rebimboca
    .target Sputtervalve
step
    .goto The Barrens,62.59,37.47
    >>Clique no |cRXP_PICK_Cartaz de Procurado|r
    .accept 895 >>Aceite Procura-se: Capitão Garvão
step
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Aceite Só Pode Ser o Chifre
    .target Mebok Mizzyrix
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135353:0|t[Tarasca] |cRXP_BUY_dele|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você atingir o nível 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso] |cRXP_WARN_quando você atingir o nível 15|r
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Troll Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
step << Orc Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T132394:0|t[Machado Farpado] |cRXP_BUY_dele|r
    .collect 2025,1,850,1 --Collect Bearded Axe (1)
    .money <0.5304
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T132394:0|t[Machado Farpado] |cRXP_WARN_quando você atingir o nível 15|r
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp >15,1
step << Orc Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T132394:0|t[Machado Farpado]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <15,1
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
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha] |cRXP_WARN_quando você atingir o nível 16|r
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
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
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso] |cRXP_WARN_quando você atingir o nível 15|r
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Shaman
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele|r
    .collect 2027,1,895,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
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
    >>|cRXP_BUY_Compre|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_são extremamente baratos, compre quantos quiser|r
    .vendor >>Comerciante Lixo
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isOnQuest 887
step
    #optional
    #completewith BaronLongshore
    .destroy 5088 >>|cRXP_WARN_Remova o|r |T133735:0|t[Manual de Operação do Console de Controle] |cRXP_WARN_da mochila, pois não é mais necessário|r
step
    #completewith BaronLongshore
    >>Mate os |cRXP_ENEMY_Southsea Brigands|r e os |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step
    #label BaronLongshore
    #loop
    .goto The Barrens,64.21,47.14,0
    .goto The Barrens,64.21,47.14,50,0
    .goto The Barrens,63.57,49.14,50,0
    .goto The Barrens,62.64,49.72,50,0
    >>Mate |cRXP_ENEMY_Barão Longacosta|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ele pode estar em um dos acampamentos|r
    .complete 895,1 --Baron Longshore's Head (1)
    .unitscan Baron Longshore
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
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135353:0|t[Tarasca] |cRXP_BUY_dele|r
    .collect 2024,1,895,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você atingir o nível 16|r
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp >16,1
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe a|r |T135353:0|t[Tarasca]
    .use 2024
    .itemcount 2024,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
step << Troll Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135147:0|t[Cajado Nodoso] |cRXP_BUY_dele|r
    .collect 2030,1,850,1 --Collect Gnarled Staff (1)
    .money <0.5544
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso] |cRXP_WARN_quando você atingir o nível 15|r
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Troll Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
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
    +|cRXP_WARN_Equipe o|r |T132394:0|t[Machado Farpado] |cRXP_WARN_quando você atingir o nível 15|r
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp >15,1
step << Orc Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T132394:0|t[Machado Farpado]
    .use 2025
    .itemcount 2025,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.8
    .xp <15,1
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
    .xp >16,1
step << Tauren Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T133046:0|t[Martelo de Rocha]
    .use 2026
    .itemcount 2026,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
    .xp <16,1
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
    +|cRXP_WARN_Equipe o|r |T135147:0|t[Cajado Nodoso] quando você atingir o nível 15
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp >15,1
step << Shaman
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
    .xp <15,1
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre um segundo|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele para sua mão secundária.|r
    .collect 923,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 923
    .itemcount 923,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step
    #label FlyToXroads1
    #completewith XroadsTurnins3
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .isQuestComplete 845
    .subzoneskip 380
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
    >>Finish killing |cRXP_ENEMY_Zhevras|r.Saqueie them for |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r e |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .turnin 872 >>Entregue A Ofensiva do Posto Remoto
    .target +Thork
    .goto The Barrens,51.50,30.87
    .turnin 845 >>Entregue As Zevras
    .accept 903 >>Aceite Predadores dos Sertões
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
step
    .goto The Barrens,51.95,31.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mankrik|r
    .accept 899 >>Aceite Consumido pelo Ódio
    .accept 4921 >>Aceite Perdido na Batalha
    .target Mankrik
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1200,850,1 << Hunter --Sharp Arrow (1200)
    .target Barg
step << Tauren Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132384:0|t[Heavy Shots] |cRXP_BUY_dele|r
    .collect 2519,1000,850,1 << Hunter --Heavy Shot (1000)
    .target Barg
step << Troll Hunter/Orc Hunter/BloodElf Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Uthrok|r
    .vendor >>|cRXP_BUY_Compre um|r |T135490:0|t[|cRXP_FRIENDLY_Arco Longo de Qualidade|r] |cRXP_BUY_dele se estiver disponível e compre flechas|r
    >>|cRXP_WARN_Se não estiver disponível, compre um|r |T135490:0|t[Arco Reforçado] |cRXP_WARN_em vez disso|r
    .collect 2515,1200,870,1 << Hunter --Sharp Arrow (1200)
    .target Uthrok
    .isOnQuest 903
step << Tauren Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale|r com |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre um|r |T135613:0|t[Cano de Atirar do Caçador] |cRXP_BUY_dele|r
    .collect 2511,1,871,1 --Collect Hunter's Boomstick (1)
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<4.9
    .target Uthrok
step
    #completewith KodobaneTurnin
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
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 850 >>Aceite Os Líderes Kolkar
    .accept 855 >>Aceite Braçadeiras de Centauro
    .target Regthar Deathgate
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
    .turnin 850 >>Entregue Os Líderes Kolkar
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
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
    .isQuestTurnedIn 850
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
    .goto The Barrens,41.51,19.09,0
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
    +|cRXP_WARN_Tenha cuidado com|r |cRXP_ENEMY_Sunscale Scytheclaws|r |cRXP_WARN_na área. Eles são até o nível 18 e podem|r |T132152:0|t[Surra]
    --.dungeon !RFC
    .xp >17,1
step
    #completewith Samophlange
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    .goto The Barrens,43.80,12.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Vrang Sanguebravo|r
    >>|cRXP_FRIENDLY_Vrang|r |cRXP_WARN_vende|r |T133476:0|t[|cRXP_FRIENDLY_Maça Pesada com Pontas|r] |cRXP_WARN_que é um item de estoque limitado|r << Orc Warrior/Troll Warrior/Tauren Warrior/Shaman
	.vendor	>>Venda itens inúteis e repare
    .target Vrang Wildgore
    .isQuestAvailable 901
step
	#label Samophlange
    .goto The Barrens,52.40,11.65
    >>Clique no |cRXP_PICK_Painel de Controle|r
    .turnin 894 >>Entregue Samoflange
    .accept 900 >>Aceite A Rebimboca
step
    .goto The Barrens,52.33,11.57
    >>Clique no |cRXP_PICK_Valve|r
    >>|cRXP_WARN_Tenha cuidado! Dois inimigos aparecerão depois que você desligar a Válvula|r
    .complete 900,2 --Shut off Fuel Control Valve (1)
step
    .goto The Barrens,52.29,11.40
    >>Clique no |cRXP_PICK_Valve|r
    >>|cRXP_WARN_Um inimigo aparecerá depois que você desligar a Válvula|r
    .complete 900,3 --Shut off Regulator Valve (1)
step
    .goto The Barrens,52.40,11.40
    >>Clique no |cRXP_PICK_Valve|r
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
step
    #completewith Ignition
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    .goto The Barrens,54.3,12.3,0
    >>Abata os |cRXP_ENEMY_Raptors|r. Saque suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #xprate <1.5
    #optional
    .goto The Barrens,56.5,7.5
    .xp 16 >>Suba até o nível 16
    >>|cRXP_WARN_Isto é importante, porque as próximas 3 missões são bastante difíceis|r
step
    #label Ignition
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tTalk to|r |cRXP_FRIENDLY_Wizzlecrank's Shredder|r in The Sludge Fen
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
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
    >>Abate |cRXP_ENEMY_Supervisor Rancatraca|r. Saque a |cRXP_LOOT_Chave|r dele. Ele patrulha para cima e para baixo da plataforma
    .complete 858,1 --Ignition Key (1)
    .mob Supervisor Lugwizzle
    .isOnQuest 858
step
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isto iniciará uma escolta. Certifique-se de que você tem saúde máxima|r
    .turnin 858 >>Entregue Ignição
    .accept 863,1 >>Aceite A Fuga
    .target Wizzlecrank's Shredder
    .isQuestComplete 858
step
    #optional
    .goto The Barrens,56.52,7.45
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Retalhador do Manivela|r
    >>|cRXP_FRIENDLY_Retalhador do Manivela|r |cRXP_WARN_demora para reaparecer. Considere pular esta missão se houver muita concorrência|r
    >>|cRXP_WARN_Isto iniciará uma escolta. Certifique-se de que você tem saúde máxima|r
    .accept 863,1 >>Aceite A Fuga
    .target Wizzlecrank's Shredder
    .isQuestTurnedIn 858
step
    #label Slugs
    .goto The Barrens,55.80,7.76,30,0
    .goto The Barrens,55.51,7.13
    >>|cRXP_WARN_Dois|r |cRXP_ENEMY_Mercenários da Empreendimentos S.A.|r |cRXP_WARN_aparecerão quando o retalhador subir ao terreno elevado. Mate-os e aguarde a cena final|r
    .complete 863,1 --Escort Wizzlecrank out of the Venture Co. drill site (1)
    .mob Venture Co. Mercenary
    .mob Venture Co. Drudger
    .mob Overseer Glibby
    .isOnQuest 863
step
    #completewith next
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label CatsEye
    .goto The Barrens,61.46,4.50,0
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
    >>|cRXP_WARN_Se não cair após matar 25+ inimigos, pode pular esta missão|r
    .complete 896,1 -- Cats Eye Emerald (1)
    .mob Venture Co. Enforcer
    .mob Venture Co. Overseer
step
    #completewith SpiritsPickup
    .goto Kalimdor,56.81,45.47
    .zone Orgrimmar >>Entre em Orgrimmar pela entrada ocidental
step
    #completewith next
    .skill firstaid,40 >>|cRXP_WARN_Criar|r |T133685:0|t[Linen Bandages] |cRXP_WARN_até alcançar 40 de habilidade|r
    .skill firstaid,<1,1
step
    .goto Orgrimmar,34.18,84.53
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Arnok|r
    >>|cRXP_WARN_Pule este passo se você não tivesse o suficiente|r |T132889:0|t[Linho] |cRXP_WARN_para alcançar 40 de perícia|r
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
    >>|cRXP_WARN_Pule este passo se você não tivesse o suficiente|r |T132889:0|t[Linho] |cRXP_WARN_para alcançar 50 de perícia|r
    .train 3274 >>Entrene Socorrista Profissional
    .target Arnok
    .skill firstaid,<40,1
step << Priest
    #optional
    .goto Orgrimmar,35.59,87.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|r |cRXP_FRIENDLY_Ur'kyo|r
    .train 8102 >>Treine suas magias de classe
    .target Ur'kyo
    .xp <16,1
    .xp >18,1
step << Priest
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
step << !Orc !Troll
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    >>|cRXP_WARN_Não voe para lugar nenhum!|r
    .fp Orgrimmar >>Aprenda a rota de voo de Orgrimmar
    .zoneskip The Barrens
    .target Doras
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
step << Paladin
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Master Pyreanor|r
    .train 7294 >>Treine suas magias de classe
    .target Master Pyreanor
    .xp <16,1
    .xp >18,1
step << Paladin
    #optional
    .goto Orgrimmar,32.3,35.7
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Master Pyreanor|r
    .train 5573 >>Treine suas magias de classe
    .target Master Pyreanor
    .xp <18,1
step
    #label SpiritsPickup
    .goto Orgrimmar,38.94,38.39
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zor|r
    .accept 1061 >>Aceite Os Espíritos de Stonetalon
    .target Zor Lonetree
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    >>|cRXP_WARN_Isto é uma missão de pré-requisito para Cavernas Ígneas. Pule este passo se você não deseja fazê-lo|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5726
    .dungeon RFC
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 1804 >>Treine [Abrir Fechadura]
    .train 921 >>Treine |T133644:0|t [Bater Carteira]
    .accept 2379 >>Aceite Zando'Zan
    .target Shenthul
step << Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Entregue Zando'zan
    .accept 2382 >>Aceite Wrenix da Vila Catraca
    .target Zando'zan
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
    .collect 16316,1,896,1 --Grimoire of Firebolt (Rank 3) (1)
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
step << Troll Hunter/Orc Hunter/Priest
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 227 >>Treine Cajados
    .target Hanashi
    .money <0.100
step << Tauren Hunter
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 264 >>Treine Arcos
    .target Hanashi
step << Warrior/Shaman/Paladin
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprenda a usar Machados de Duas Mãos
    .train 227 >>Treine Cajados << !Paladin !Shaman
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135490:0|t[Arco Reforçado] |cRXP_BUY_dele|r
    .collect 3026,1,3281,1 --Collect Laminated Recurve Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith EcheyakeePickup
    +|cRXP_WARN_Equipe o|r |T135490:0|t[Arco Reforçado]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step << Warrior/Paladin/Shaman
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135423:0|t[Machado de Batalha] |cRXP_BUY_dele|r
    .collect 926,1,3281,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Zendo'jian
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith EcheyakeePickup
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha] |cRXP_WARN_quando você atingir o nível 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith EcheyakeePickup
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step
    #completewith next
    .zone Durotar >>Saia de Orgrimmar
    .dungeon RFC
step
    .goto Durotar,53.08,9.19
    >>Abate os |cRXP_ENEMY_Lâmina Ardente|r em Rocha do Crânio até que |cRXP_LOOT_Lieutenant's Insignia|r caia
    >>|cRXP_WARN_Isto é uma missão de pré-requisito para Cavernas Ígneas. Pule este passo se você não deseja fazê-lo|r
    .complete 5726,1 --Lieutenant's Insignia (1)
    .isOnQuest 5726
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5726 >>Entregue Escondido Enemies
    .accept 5727 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestComplete 5726
    .dungeon RFC
step
    #optional
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5727 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5726
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
    .isOnQuest 5727
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5727 >>Entregue Escondido Enemies
    .accept 5728 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestComplete 5727
    .dungeon RFC
step
    #optional
    #label OrgPickups
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .accept 5728 >>Aceite Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5727
    .dungeon RFC
step
    #completewith EnterRFC
    .destroy 14544 >>|cRXP_WARN_Destrua|r |T134417:0|t[Lieutenant's Insignia] |cRXP_WARN_já que você não precisa mais dele|r
    .dungeon RFC
step
    #label EnterRFC
    .goto Orgrimmar,52.77,48.97
    .subzone 2437,2 >>Entre no portal da Instância RFC. Entre na zona
    .dungeon RFC
step
    >>|cRXP_WARN_Se possível, compartilhe as seguintes missões com os membros do grupo|r
    >>|cRXP_WARN_Pule este passo se ninguém tem estas missões|r
    .accept 5722 >>Aceite Procurando pela Bolsa Perdida
    .accept 5723 >>Aceite Testando a Força de um Inimigo
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
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    .turnin 5730 >>Entregue Escondido Enemies
    .target Thrall
    .isQuestTurnedIn 5728
    .dungeon RFC
step
    #completewith EcheyakeePickup
    .goto Orgrimmar,45.120,63.889
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Doras
    .subzoneskip 380
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Ladrões de Raptor
    .accept 3281 >>Aceite Prata Roubada
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >>Entregue Esporos de Fungos
    .target Apothecary Helbrim
    .isQuestComplete 848
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .turnin 867 >>Entregue Saqueadores Harpíia
    .accept 875 >>Aceite Tenentes das Harpíias
    .target Darsok Swiftdagger
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entregue Os Poços Esquecidos
    .accept 877 >>Aceite Oásis Estagnante
    .target Tonga Runetotem
step
    #label EcheyakeePickup
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Entregue Espreitadores das Savanas
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
step
    .goto The Barrens,55.80,17.03
    >>Usar o |T134227:0|t[Berrante de Echeyaki] para invocar |cRXP_ENEMY_Echeyaki|r
    >>Mate |cRXP_ENEMY_Echeyaki|r. Saqueie o |cRXP_LOOT_Echeyakee's Esconder-se|r
    >>|cRXP_WARN_Se |cRXP_ENEMY_Echeyaki|r não aparece após usar o|r |T134227:0|t[Berrante de Echeyaki]|cRXP_WARN_ ou você não recebeu a tag quando apareceu, pule este passo|r
    .complete 881,1 --Echeyakee's Hide (1)
    .mob Echeyakee
    .use 10327
step
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
    #completewith next
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #loop
    .goto The Barrens,40.28,15.49,0
    .goto The Barrens,40.28,15.49,40,0
    .goto The Barrens,39.50,14.68,40,0
    .goto The Barrens,39.47,13.24,40,0
    .goto The Barrens,38.94,12.80,40,0
    .goto The Barrens,38.18,12.56,40,0
    .goto The Barrens,37.96,13.52,40,0
    .goto The Barrens,38.62,13.95,40,0
    .goto The Barrens,38.18,14.62,40,0
    .goto The Barrens,38.14,15.59,40,0
    .goto The Barrens,37.29,15.68,40,0
    .goto The Barrens,37.24,16.26,40,0
    .goto The Barrens,37.67,16.34,40,0
    .goto The Barrens,38.35,17.08,40,0
    .goto The Barrens,38.83,17.71,40,0
    .goto The Barrens,39.37,17.21,40,0
    .goto The Barrens,39.87,16.66,40,0
    .goto The Barrens,40.15,15.98,40,0
    >>Mate |cRXP_ENEMY_Asabruxas Matadoras|r. Pegue seus |cRXP_LOOT_Anéis|r
    >>|cRXP_WARN_Cuidado, as |cRXP_ENEMY_Asabruxas Matadoras|r usam|r |T135358:0|t[Executar] |cRXP_WARN_(causa MUITO dano quando você está com menos de 20% de vida), e as |cRXP_ENEMY_Asabruxas Emboscadoras|r ficam|r |T132320:0|t[Furtivas] |cRXP_WARN_e patrulham a área|r
    >>|cRXP_WARN_Cuidado com as|r |cRXP_ENEMY_Asabruxas Emboscadoras|r|cRXP_WARN_. Elas ficam furtivas e patrulham a área|r
    .complete 875,1 --Harpy Lieutenant Ring (6)
    .mob Witchwing Slayer
    .mob Witchwing Ambusher
step << Druid
    #completewith DruidTraining1
    .cast 18960 >>Lance [Teleporte: Clareira da Lua]
    .zoneskip Moonglade
step << Druid
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 8925 >>Treine suas magias de classe
    .target Loganaar
    .xp <16,1
    .xp >18,1
step << Druid
    #label DruidTraining1
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 6808 >>Treine suas magias de classe
    .target Loganaar
    .xp <18,1
step
    #completewith next
    .hs >>Vá para A Encruzilhada
    .use 6948
    .bindlocation 380,1
    .subzoneskip 380
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Entregue Echeyaki
    .accept 905 >>Aceite Os Talhardepas Raivosos
    .target Sergra Darkthorn
step
    #completewith RapHornsPickup
    .destroy 10327 >>|cRXP_WARN_Destrua o|r |T134227:0|t[Berrante de Echeyaki] |cRXP_WARN_você não precisa mais disso|r
step
    .goto The Barrens,51.62,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .turnin 875 >>Entregue Tenentes das Harpias
    .accept 876 >>Aceite Serena Plumassangue
    .target Darsok Swiftdagger
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    >>|cRXP_BUY_Compre|r |T132382:0|t[Flechas Afiadas] |cRXP_BUY_dele|r
    .collect 2515,1800,888,1 << Hunter --Sharp Arrow (1800)
    .target Barg
step
    #completewith RapHornsPickup
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
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 902 >>Entregue Samoflange
    .turnin 863 >>Entregue A Fuga
    .accept 3921 >>Aceite Juntatudy Jogafora << Hunter
    .accept 1483 >>Aceite Zé Fízzica
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Entregue A fortuna do mineiro
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
    .isQuestComplete 863
step
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r e |cRXP_FRIENDLY_Mestre Portuário Caruncho|r
    .turnin 902 >>Entregue Samoflange
    .accept 3921 >>Aceite Juntatudy Jogafora << Hunter
    .accept 1483 >>Aceite Zé Fízzica
    .target +Sputtervalve
    .goto The Barrens,62.98,37.22
    .turnin 896 >>Entregue A fortuna do mineiro
    .target +Wharfmaster Dizzywig
    .goto The Barrens,63.35,38.45
    .isQuestComplete 896
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 863 >>Entregue A Fuga
    .accept 1483 >>Aceite Zé Fízzica
    .target Sputtervalve
    .isQuestComplete 863
step
    #optional
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .accept 1483 >>Aceite Zé Fízzica
    .target Sputtervalve
step
    #label RapHornsPickup
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Aceite Só Pode Ser o Chifre
    .accept 1069 >>Aceite Ovos de Aranha Musgofunda
    .target Mebok Mizzyrix
step
    .goto The Barrens,62.05,39.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com|cRXP_FRIENDLY_Innkeeper Wiley|r
    >>|cRXP_BUY_Compre|r |T133918:0|t[Longjaw Mud Snappers] |cRXP_BUY_dele|r
    >>|cRXP_BUY_Compre|r |T132796:0|t[Melão Suco] |cRXP_BUY_dele|r << Mage/Warlock/Priest/Shaman/Druid/Paladin
    >>|T133918:0|t[Longjaw Mud Snappers] |cRXP_WARN_são extremamente baratos, compre quantos quiser|r
    .vendor >>Comerciante Lixo
    .collect 4592,20,888,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,888,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .isQuestAvailable 888,865,3281,877,848
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
    #label LeaveRatchet
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
    >>Mate |cRXP_ENEMY_Garrafoices Helióscamo|r. Pegue seus |cRXP_LOOT_Chifres|r e |cRXP_LOOT_Penas|r
    >>|cRXP_WARN_Tenha cuidado pois eles lançam|r |T132152:0|t[Surra] |cRXP_WARN_(Causa 2 ataques extras a cada 10 segundos)|r
    .complete 865,1 --Intact Raptor Horn (5)
    .collect 5165,3,905,3 --Sunscale Feather (3)
    .mob Sunscale Scytheclaw
step
    .goto The Barrens,57.39,52.28,60,0
    .goto The Barrens,58.04,53.87
    >>Pegue a |cRXP_PICK_Prata Roubada|r no chão
    .complete 3281,1 --Stolen Silver (1)
step
    #completewith Verog
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor de O Oásis Estagnado
    .complete 848,1 --Collect Fungal Spores (x4)
step
    #label TestSeeds
    .goto The Barrens,55.61,42.75
    >>Clique na |cRXP_PICK_Rachadura Borbulhante|r debaixo d'água
    .complete 877,1 --Test the Dried Seeds (1)
step
    #completewith next
    #loop
    .goto The Barrens,55.80,45.78,50,0
    .goto The Barrens,56.75,43.41,50,0
    .goto The Barrens,57.01,41.22,50,0
    .goto The Barrens,55.45,41.37,50,0
    .goto The Barrens,54.99,40.84,50,0
    .goto The Barrens,53.41,40.26,50,0
    .goto The Barrens,52.99,44.73,50,0
    .goto The Barrens,54.31,46.81,50,0
    >>Abate os |cRXP_ENEMY_Kolkar|r ao redor do oásis. Saqueie-os para seus |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 851
step
    #label Verog
    .goto The Barrens,52.95,41.75
    >>Mate |cRXP_ENEMY_Verog|r. Pegue sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_WARN_Ele pode aparecer sempre que um |cRXP_ENEMY_Kolkar|r é morto|r
    >>|cRXP_WARN_Em um servidor altamente populado ou lançamento recente, sua melhor opção é acampar no ponto de reaparecimento|r
    .complete 851,1 --Verog's Head (1)
    .unitscan Verog the Dervish
    .isOnQuest 851
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
    #completewith LakotaMani
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
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
	.accept 883 >>Aceite Lakota'Mani
    .use 5099
    .unitscan Lakota'mani
step
    #completewith SetCampTaurajoHS
    >>Abate |cRXP_ENEMY_Stormsnouts|r. Saque-os para um |cRXP_LOOT_Chifre|r
    >>|cRXP_WARN_Isto não precisa ser completado agora|r
    .complete 821,3 --Thunder Lizard Horn (1)
    .mob Stormsnout
step
    #completewith next
    .subzone 378 >>Viaje para Camp Taurajo
step
    #label SetCampTaurajoHS
    .goto The Barrens,45.58,59.04
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Byula <Antigo Estalajadeiro>|r
    .home >>Defina sua Pedra de Retorno em Camp Taurajo
    .target Innkeeper Byula
    .isQuestAvailable 878
    .bindlocation 378
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
    .fp Camp Taurajo >>Aprenda a rota de voo de Camp Taurajo << !Tauren
    .fly Crossroads >>Voe para A Encruzilhada
    .target Omusa Thunderhorn
    .subzoneskip 380
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
    .goto The Barrens,51.95,31.58
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
    #completewith StonetalonPickups
    .destroy 5165 >>|cRXP_WARN_Apague qualquer restante|r |T132914:0|t[Pena de Helióscamo] |cRXP_WARN_que você ainda tiver|r
    .itemcount 5165,1
step << Hunter
    .goto The Barrens,51.11,29.07
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Uthrok|r|cRXP_BUY_. Compre uma|r |T134410:0|t[Aljava Média] |cRXP_BUY_dela|r
    .collect 11362,1,876,1 --Medium Quiver (1)
    .collect 2515,2200,876,1 --Sharp Arrow (2200)
    .target Uthrok
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
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 852 >>Aceite Hezrul Marca de Sangue
    .target Regthar Deathgate
    .isQuestTurnedIn 851
step
    #completewith StonetalonPickups
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrider
step
    #label Serena
    .goto The Barrens,39.16,12.16
    >>Mate |cRXP_ENEMY_Serena Plumassangue|r. Pegue sua |cRXP_LOOT_Cabeça|r
    .complete 876,1 --Serena's Head (1)
    .mob Serena Bloodfeather
step
    .goto The Barrens,35.26,27.88,100 >>Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains

    ]])

RXPGuides.RegisterGuide([[
#tbc
#version 7
#group Guia RestedXP TBC (A)
<< Horde
#name 18-23 Stonetalon/The Barrens
#subgroup RestedXP Horda 1-30
#defaultfor Shaman
#next 23-25 Encosta de Hillsbrad

step
    #completewith next
    .goto The Barrens,35.26,27.88,100 >>Viaje para as Montanhas de Pedralva
    .zoneskip Stonetalon Mountains
step
    #label StonetalonPickups
    #map Stonetalon Mountains
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Seereth|r e |cRXP_FRIENDLY_Makaba|r
    .turnin 1061 >>Entregue Os Espíritos de Stonetalon
    .accept 1062 >>Aceite Invasores Goblins
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .accept 6548 >>Aceite Vingue Minha Vila
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
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
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xen'Zilla|r
    .accept 6461 >>Aceite Fome Sangrenta
    .target Xen'Zilla
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
    >>Clique no |cRXP_FRIENDLY_Cartaz de Procurado|r
    .accept 6284 >>Aceite Aracnofobia
step
    #completewith Besseleth1
    >>Mate os |cRXP_ENEMY_Deepmoss Venomspitters|r e os |cRXP_ENEMY_Deepmoss Creepers|r
    >>|cRXP_WARN_Guarde qualquer|r |T134339:0|t[Pequeno Venenom Sacs] |cRXP_WARN_que você obtenha|r << Rogue
    .complete 6461,2 --Kill Deepmoss Venomspitter (x7)
    .mob +Deepmoss Venomspitter
    .complete 6461,1 --Kill Deepmoss Creeper (x10)
    .mob +Deepmoss Creeper
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
    #completewith Windshear
    >>Saque os |cRXP_PICK_Ovos de Aranha|r perto das árvores
    >>|cRXP_WARN_Cuidado! Os|r |cRXP_ENEMY_Filhotes de Aranha de Fundolimo|r |cRXP_WARN_podem invocar uma|r |cRXP_ENEMY_Matriarca de Fundolimo|r de nível 22
    .complete 1069,1 --Collect Deepmoss Egg (x15)
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
step
    #completewith BluePrints
    >>Mate |cRXP_ENEMY_Madeireiros da Empreendimentos S.A.|r
    .complete 1062,1 --Kill Venture Co. Logger (x15)
    .mob Venture Co. Logger
step << Warrior/Paladin/Shaman
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar para|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre um|r |T135423:0|t[Machado de Batalha] |cRXP_BUY_dele|r
    .collect 926,1,899,1 --Collect Battle Axe (1)
    .money <1.021
    .target Veenix
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Warrior/Paladin/Shaman
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp <20,1
step << Warrior/Paladin/Shaman
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha] |cRXP_WARN_quando você atingir o nível 20|r
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .xp >19,1
step << Rogue
    .goto Stonetalon Mountains,58.22,51.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Veenix|r|cRXP_BUY_. Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dele|r
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
step << Rogue
    #optional
    #completewith BluePrints
    +|cRXP_WARN_Equip the|r ou verifique a Casa de Leilões por algo melhor/mais barato[Longsword]|cRXP_WARN_once you are level 21|r
    --.use 923
    .itemcount 923,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.1
    .xp >20,1
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
    #label Windshear
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
    #completewith JornSkyseerTurnin
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
    #label JornSkyseerTurnin
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
	>>Procure e mate |cRXP_ENEMY_Lakota'mani|r (Kodo Cinza) nesta área. Saqueie o |T132318:0|t[|cRXP_LOOT_Casco de Lakota'mani - Missão|r] dele. Usar-o para iniciar a missão
    >>|cRXP_WARN_Pule esta missão se você não conseguir encontrá-lo|r
	.collect 5099,1,883 --Collect Hoof of Lakota'Mani
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
    #xprate <1.5
    #loop
	.goto The Barrens,50.71,54.60,0
	.goto The Barrens,50.71,54.60,50,0
	.goto The Barrens,50.74,55.33,50,0
	.goto The Barrens,50.73,56.78,50,0
	.goto The Barrens,50.42,57.23,50,0
	.goto The Barrens,50.50,57.65,50,0
	.goto The Barrens,50.87,57.50,50,0
	.goto The Barrens,51.26,57.84,50,0
	.goto The Barrens,51.74,57.69,50,0
	.goto The Barrens,51.79,57.10,50,0
	.goto The Barrens,53.08,54.69,50,0
	.goto The Barrens,53.65,54.27,50,0
	.goto The Barrens,53.63,53.53,50,0
	.goto The Barrens,53.35,52.72,50,0
	.goto The Barrens,53.00,51.83,50,0
	.goto The Barrens,52.62,52.19,50,0
	.goto The Barrens,52.59,52.71,50,0
	.goto The Barrens,52.41,53.07,50,0
	.goto The Barrens,52.32,53.71,50,0
	.goto The Barrens,51.39,54.22,50,0
    .xp 19+11000 >>Triture até 11000+/21300 XP
    --To ensure lvl 20 before ORG visit class q pickup
step << Warlock
    #xprate >1.49
    #loop
	.goto The Barrens,50.71,54.60,0
	.goto The Barrens,50.71,54.60,50,0
	.goto The Barrens,50.74,55.33,50,0
	.goto The Barrens,50.73,56.78,50,0
	.goto The Barrens,50.42,57.23,50,0
	.goto The Barrens,50.50,57.65,50,0
	.goto The Barrens,50.87,57.50,50,0
	.goto The Barrens,51.26,57.84,50,0
	.goto The Barrens,51.74,57.69,50,0
	.goto The Barrens,51.79,57.10,50,0
	.goto The Barrens,53.08,54.69,50,0
	.goto The Barrens,53.65,54.27,50,0
	.goto The Barrens,53.63,53.53,50,0
	.goto The Barrens,53.35,52.72,50,0
	.goto The Barrens,53.00,51.83,50,0
	.goto The Barrens,52.62,52.19,50,0
	.goto The Barrens,52.59,52.71,50,0
	.goto The Barrens,52.41,53.07,50,0
	.goto The Barrens,52.32,53.71,50,0
	.goto The Barrens,51.39,54.22,50,0
    .xp 19+700 >>Farme até 700+/21300 xp
    --To ensure lvl 20 before ORG visit class q pickup
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
    .goto The Barrens,59.87,30.41
    .use 10338 >>|cRXP_WARN_Use o|r |T134368:0|t[|cRXP_LOOT_Carcaça Fresca de Zevra|r] |cRXP_WARN_na árvore morta|r
    >>Mate .Saqueie him for his |cRXP_LOOT_Fang|r
    .complete 882,1 --Ishamuhale's Fang (1)
    .mob Ishamuhale
step
    #completewith BootyTurnin
    .goto The Barrens,63.00,36.42,100 >>Run to Vila Catraca
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
    #xprate <1.5
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
    --.accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
step
    #xprate >1.49
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
    --.accept 822 >>Accept Chen's Empty Keg
    .target +Brewmaster Drohn
    .goto The Barrens,62.27,38.39
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
    #xprate <1.5
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
step
    #xprate >1.49
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
    .goto The Barrens,51.62,30.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Darsok|r
    >>|cRXP_WARN_Ele está no topo da torre|r
    .turnin 876 >>Entregue Serena Plumassangue
    .accept 1060 >>Aceite Uma carta para Jin'Zil
    .target Darsok Swiftdagger
step
    #label XroadsHS2
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
    #completewith TribesTurnin
    .destroy 5085 >>|cRXP_WARN_Apague qualquer|r |T133721:0|t[Presa de Javatusco Costagulha] |cRXP_WARN_que você ainda tenha|r
    .itemcount 5085,1
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
    .collect 16346,1,1509,1 --Grimoire of Torment (Rank 2)
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
    .collect 5210,1,1509,1 --Collect Burning Wand (1)
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
step << Warlock
    #completewith TurninDogran
    .goto Orgrimmar,45.13,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
	.fly Crossroads >>Voe para A Encruzilhada
    .zoneskip Orgrimmar,1
    .subzoneskip 380
    .target Doras
step << Warlock
    #label TurninDogran
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 1509 >>Entregue Notícias de Dogran
    .accept 1510 >>Aceite Notícias de Dogran
    .target Gazrog
step << !Tauren !Warrior !Shaman
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    >>|cRXP_FRIENDLY_Helbrim|r |cRXP_WARN_Inicia uma missão cronometrada de 45 minutos|r
    .accept 853 >>Aceite Boticário Zamah
    .target Apothecary Helbrim
    .isQuestTurnedIn 848
    .isQuestAvailable 853
step << !Tauren !Warrior !Shaman
    #sticky
    #completewith ZamahTurnin
    +|cRXP_WARN_Você está em uma missão com prazo, não fique ausente. Ela será entregue 20–30 minutos após ser aceita|r
    .isOnQuest 853
step
    #completewith TribesTurnin
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Devrak
    .subzoneskip 378
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
    .goto The Barrens,44.32,60.84,60,0
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
    .target Jorn Skyseer
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
    .goto The Barrens,44.63,62.71,0
    .goto The Barrens,45.78,63.09,0
    .goto The Barrens,49.57,59.36,0
    .goto The Barrens,49.21,61.42,0
    .goto The Barrens,44.63,62.71,80,0
    .goto The Barrens,45.78,63.09,80,0
    .goto The Barrens,49.21,61.42,80,0
    .goto The Barrens,49.57,59.36,80,0
    >>Mate |cRXP_ENEMY_Owatanka|r. Pegue a |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r]
    >>|cRXP_WARN_Use |T133723:0|t[|cRXP_LOOT_Ponta da Cauda de Owatanka|r] para iniciar a missão|r
    >>|cRXP_WARN_Ele tem 4 pontos de aparecimento (marcados no mapa)|r
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
    .accept 6382 >>Aceite A Caçada do Vale Gris
    .target Jorn Skyseer
step << !Tauren !Shaman
    .goto The Barrens,44.55,59.27
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Denterroto|r
    .aura 16618 >>|cRXP_WARN_Se você tem 10|r |T134128:0|t[|cRXP_LOOT_Estilhaços de Sangue|r |cRXP_WARN_restantes, use-os para obter|r |T136022:0|t[Espírito of the Vento - Missão - Missão] |cRXP_WARN_de|r |cRXP_FRIENDLY_Denterroto|r]
    >>|cRXP_WARN_Pule esta etapa se tiver a rota de voo de Penhasco do Trovão|r
    .itemcount 5075,10
    .train 5118,1 << Hunter --skips step if aspect of the cheetah trained
    .train 2645,1 << Shaman --skips this step if ghost wolf is trained
    .target Mangletooth
step << !Tauren !Shaman
    #completewith next
    .goto Mulgore,68.68,60.34,120,0
    .zone Mulgore >>Vá para Mulgore
step << !Tauren !Shaman
    #completewith ZamahTurnin
    .goto Thunder Bluff,31.78,65.92
    .zone Thunder Bluff >>Pegue o elevador para Penhasco do Trovão
    >>|cRXP_WARN_Se você tem a rota de voo do Penhasco do Trovão, voe lá em vez disso|r
step << Tauren/Shaman
    #completewith ZamahTurnin
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Omusa Thunderhorn
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .dungeon !WC
    .bindlocation 1638
step
    .goto Thunder Bluff,47.12,57.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Chesmu|r
    .bankdeposit 5075 >>Deposite os |T134128:0|t[Estilhaços de Sangue]
    --.bankdeposit 5059 >>Deposit your |T132938:0|t[Digging Claw]
    .target Chesmu
step << Warrior !Tauren/Shaman/Paladin
    .goto Thunder Bluff,40.93,62.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ansekhwa|r
    .train 199 >>Treine Maças de Duas Mãos
    .target Ansekhwa
step << Troll Hunter/Orc Hunter/Warrior/Warlock/Priest
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
    .collect 25875,1,6562,1 --Deadly Throwing Axe (200)
    .target Kuruk
step
    #completewith ZamahTurnin
    .goto Thunder Bluff,28.14,32.97,40,0
    .goto Thunder Bluff,28.51,28.95,10 >>Vá para o Alto do Espírito e entre nas Piscinas da Visão
step
    #xprate <1.5
    #completewith ZamahTurnin
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarice Nourrice|r
    >>|cRXP_WARN_Ela patrulha a área|r
    .accept 264 >>Aceite Até que a morte nos separe
    .target Clarice Foster
step
    #xprate <1.5
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .turnin 853 >>Entregue Boticário Zaqueu
    .accept 962 >>Aceite Ofídeas
    .target Apothecary Zamah
    .isOnQuest 853
step
    #xprate <1.5
    #optional
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r
    .accept 962 >>Aceite Ofídeas
    .target Apothecary Zamah
step
    #optional
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
    #xprate <1.5
    .goto Thunder Bluff,28.55,25.64
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Clarice Nourrice|r
    >>|cRXP_WARN_Ela patrulha a área|r
    .accept 264 >>Aceite Até que a morte nos separe
    .target Clarice Foster
step
    #optional
    #label ZamahTurnin
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
step
    #completewith WCRFCTUrnins
    .goto Thunder Bluff,69.88,30.90,80 >>Vá para o Morro dos Anciãos
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
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >>Entregue Hamuul Runa Totem
    .accept 1490 >>Aceite Nara Juba Agreste
    .target Arch Druid Hamuul Runetotem
    .dungeon WC << !Druid
step << Druid
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Entregue Nara Juba Agreste
    .target Nara Wildmane
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Entregue Nara Juba Agreste
    .accept 914 >>Aceite Leaders of the Dentada
    .target Nara Wildmane
    .dungeon WC
step
    #optional
    #label WCRFCTUrnins
step << Druid
    .goto Thunder Bluff,76.48,27.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Turak|r
    .trainer >>Treine suas magias de classe
    .accept 27 >>Aceite A Lesson to Learn
    .target Turak Runetotem
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
step << Druid
    .hs >>Vá para Penhasco do Trovão
    .use 6948
    .cooldown item,6948,>0
    .zoneskip Moonglade,1
    .bindlocation 1638,1
    .zoneskip Thunder Bluff
step << Druid
    .goto Moonglade,44.29,45.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bunthen|r
    .fly Thunder Bluff >>Voe para Penhasco do Trovão
    .target Bunthen Plainswind
    .cooldown item,6948,<0
    .zoneskip Moonglade,1
    .zoneskip Thunder Bluff
step
    .goto Thunder Bluff,54.96,51.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Zangen|r
    .accept 1195 >>Aceite A Chama Sagrada
    .target Zangen Stonehoof
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
step << Rogue
    .goto Thunder Bluff,53.00,56.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Kard Totem da Fúria|r|cRXP_BUY_. Compre uma|r |T135324:0|t[Espada Longa] |cRXP_BUY_dele.|r
    .collect 923,1,6562,1 --Collect Longsword (1)
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
step << Warrior/Shaman/Paladin
    #completewith next
    #ah
    +|cRXP_FRIENDLY_Se for mais barato, você pode comprar uma arma verde do leilão em vez disso|r
step << Warrior/Paladin/Shaman
    .goto Thunder Bluff,53.21,58.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Etu|r|cRXP_BUY_. Compre um|r |T135423:0|t[Machado de Batalha] |cRXP_BUY_dele|r
    .collect 926,1,6562,1 --Collect Battle Axe (1)
    .money <1.021
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
    .target Etu Ragetotem
    .train 227,3
step << Warrior/Paladin/Shaman
    #optional
    #completewith KayaLives
    +|cRXP_WARN_Equipe o|r |T135423:0|t[Machado de Batalha]
    .use 926
    .itemcount 926,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<15.2
step << Hunter
    .goto Thunder Bluff,46.98,45.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Conversar com|r |cRXP_FRIENDLY_Kuna|r|cRXP_BUY_. Compre um|r |T135489:0|t[Arco Recurvo Pesado] |cRXP_BUY_dela|r
    .collect 3027,1,6562,1 --Collect Heavy Recurve Bow (1)
    .money <0.5643
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<9.1
    .target Kina Chifre Troante
step << Hunter
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
    .collect 2515,1600,6562,1 << Hunter --Sharp Arrow (1600)
    .target Kina Chifre Troante
step
    #sticky
    #completewith EnterWC
    .subzone 718 >>Agora você deve estar procurando por um grupo para Caverna Ululante
    .dungeon WC
step
    #completewith Hezrul
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Tal
    .subzoneskip 380
step
    #xprate <1.5
    .goto The Barrens,46.15,36.93,100 >>Vá à Caverna Ululante
    .isOnQuest 1491
step
    #xprate >1.49
    .goto The Barrens,46.15,36.93,100 >>Vá à Caverna Ululante
    .isOnQuest 1491
    .dungeon WC
step
    #xprate <1.5
    #completewith WCcavepickups
    .goto The Barrens,46.95,35.18,0
    .goto The Barrens,46.95,35.18,30,0
    .goto The Barrens,46.83,34.74,20,0
    .goto Kalimdor,51.98,55.36,20,0
    .goto Kalimdor,51.89,55.55,10,0
    .goto Kalimdor,51.87,55.50,10 >>Suba a montanha no ponto de encontro da Caverna Ululante
    >>|cRXP_WARN_Siga a seta próxima para chegar à caverna oculta|r
step
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Está localizado acima da entrada da Caverna Ululante|r
    .accept 1486 >>Aceite Pelegos anormais
    .target Nalpak
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
    #xprate <1.5
    #optional
    #completewith EnterWC
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
step
    #xprate <1.5
    #completewith EnterWC
    >>Abate os |cRXP_ENEMY_Deviate Beasts|r. Saque os |cRXP_LOOT_Hides|r deles
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
step
    #xprate <1.5
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
    .isOnQuest 959
step
    #xprate >1.49
    #optional
    #completewith EnterWC
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .isOnQuest 962
    .dungeon WC
step
    #xprate >1.49
    #completewith EnterWC
    >>Abate os |cRXP_ENEMY_Deviate Beasts|r. Saque os |cRXP_LOOT_Hides|r deles
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .dungeon WC
step
    #xprate >1.49
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
    .isOnQuest 959
    .dungeon WC
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
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    >>|cRXP_WARN_Esta missão pode ser pulada se há muita concorrência|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
step
    #xprate <1.5
    #optional
    #completewith EssenceHides
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Esta missão pode ser pulada se há muita concorrência|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
step
    #xprate <1.5
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
    >>Abate os |cRXP_ENEMY_Deviate Beasts|r. Saque os |cRXP_LOOT_Hides|r deles
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
step
    #xprate <1.5
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
step
    #xprate <1.5
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
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Cast|r |T133939:0|t[Localizar Plantas] |cRXP_WARN_para vê-los no seu minimapa|r
    >>|cRXP_WARN_Esta missão pode ser pulada se há muita concorrência|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,<1,1
    .dungeon WC
step
    #xprate >1.49
    #optional
    #completewith EssenceHides
    >>Saque o |cRXP_PICK_Serpentbloom|r no chão
    >>|cRXP_WARN_Esta missão pode ser pulada se há muita concorrência|r
    .complete 962,1 --Serpentbloom (10)
    .skill herbalism,1,1
    .dungeon WC
step
    #xprate >1.49
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
    >>Abate os |cRXP_ENEMY_Deviate Beasts|r. Saque os |cRXP_LOOT_Hides|r deles
    >>Abate os |cRXP_ENEMY_Ectoplasms|r. Saque-os para obter a |cRXP_LOOT_Essência|r
    .complete 1486,1 --Deviate Hide (20)
    .mob +Deviate Slayer
    .mob +Deviate Stinglash
    .complete 1491,1 --Wailing Essence (6)
    .mob +Devouring Ectoplasm
    .dungeon WC
step
    #xprate >1.49
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
    #xprate >1.49
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
    .dungeon WC
    .bindlocation 392,1
    .subzoneskip 392
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
step << Shaman
    #optional
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Islen|r e o |cRXP_FRIENDLY_Mahren Vidente do Céu|r
    .turnin 1529 >>Entregue Clamor da água
    .accept 1530 >>Aceite Chamado da Água
    .target +Islen Waterseer
    .goto The Barrens,65.83,43.78
    .turnin 874 >>Entregue a missão para Mahren Vidente do Céu
    .accept 873 >>Aceite Isha Awak
    .target +Mahren Skyseer
    .goto The Barrens,65.83,43.86
    .isOnQuest 1529
    .dungeon WC
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
    .dungeon WC
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
    .dungeon WC
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
    .isQuestTurnedIn 1528
    .dungeon WC
step
    #completewith WCTurnins
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para A Encruzilhada
    .target Bragok
    .subzoneskip 392,1
    .isQuestComplete 1486
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
    #xprate <1.5
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Está localizado acima da entrada da Caverna Ululante|r
    .turnin 1486 >>Entregue Pelegos anormais
    .target Nalpak
    .isQuestComplete 1486
step
    #xprate >1.49
    .goto Kalimdor,51.91,55.42
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nalpak|r
    >>|cRXP_WARN_Está localizado acima da entrada da Caverna Ululante|r
    .turnin 1486 >>Entregue Pelegos anormais
    .target Nalpak
    .isQuestComplete 1486
    .dungeon WC
step << skip
    #completewith next
    >>Abate os |cRXP_ENEMY_Kolkar|r ao redor do oásis. Saqueie-os para seus |cRXP_LOOT_Bracers|r
    .complete 855,1 --Centaur Bracers (15)
    .mob Kolkar Bloodcharger
    .mob Kolkar Pack runner
    .mob Kolkar Marauder
    .isOnQuest 855
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
    .goto The Barrens,45.64,38.16,50,0
    >>Encontre e mate |cRXP_ENEMY_Hezrul Marca de Sangue|r. Saqueie-o para sua |cRXP_LOOT_Cabeça|r
    >>|cRXP_ENEMY_Hezrul|r |cRXP_WARN_patrulha ao redor do lago|r
    .complete 852,1 --Hezrul's Head
    .unitscan Hezrul Bloodmark
    .isQuestTurnedIn 851
step
    #completewith CounterattackComplete
    .abandon 855 >>Abandone Braçadeiras de Centauro. Você não coletou o suficiente anteriormente para tornar proveitoso terminá-la.
    .itemcount 5030,<5 --Centaur Bracers (5)
step
    #optional
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 852 >>Entregue Hezrul Marca de Sangue
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .target Regthar Deathgate
    .isQuestComplete 852
    .isQuestComplete 855
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
    #softcore
    #completewith CounterattackComplete
    +|cRXP_WARN_A próxima missão é muito difícil. Recomenda-se formar um grupo. Você pode atrair |cRXP_ENEMY_Senhor da Guerra Krom'zar|r ao redor do prédio onde está o responsável pela missão, mantendo distância|r
    .isQuestTurnedIn 852
step
    #hardcore
    #completewith CounterattackComplete
    +|cRXP_WARN_A próxima missão é muito difícil. Recomenda-se formar um grupo. Você pode atrair |cRXP_ENEMY_Senhor da Guerra Krom'zar|r ao redor do prédio onde está o responsável pela missão, mantendo distância|r
    >>|cRXP_WARN_há alto risco de morrer em solo se você não está familiarizado com a missão|r
    .isQuestTurnedIn 852
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .accept 4021 >>Aceite Contra-Ataque!
    .target Regthar Deathgate
    --.timer 183,Warlord Krom'zar Spawn
    .isQuestTurnedIn 852
    --timer is random, generally somewhere between 120-210 seconds
step
    #label CounterattackComplete
    .goto The Barrens,44.48,28.15
    >>Mate |cRXP_ENEMY_Senhor da Guerra Krom'zar|r quando aparecer. Pegue o |cRXP_PICK_Estandarte|r que ele deixa no chão
    >>|cRXP_WARN_Cuidado! Ele é um elite forte e protegido por pelo menos dois|r |cRXP_ENEMY_inimigos|r |cRXP_WARN_Kolkar|r
    >>|cRXP_WARN_Pode levar até 3 minutos para ele aparecer|r
    .complete 4021,1 --Piece of Krom'zar's Banner (1)
    .unitscan Warlord Krom'zar
    .isOnQuest 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Entregue Contra-Ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .target Regthar Deathgate
    .isQuestComplete 855
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 4021 >>Entregue Contra-Ataque!
    .target Regthar Deathgate
    .isQuestComplete 4021
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 855 >>Entregue Braçadeiras de Centauro
    .target Regthar Deathgate
    .isQuestComplete 855
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
    .target +Seereth Stonebreak
    .goto The Barrens,35.26,27.88
    .turnin 6629 >>Entregue Mate Grundig Nuvem Negra
    .turnin 6523 >>Entregue Proteja Kaya
    .accept 6401 >>Aceite Kaya Está Viva
    .target +Makaba Flathoof
    .goto The Barrens,35.19,27.79
step
    #completewith BloodFeedersTI
    .goto Stonetalon Mountains,82.57,98.63,60,0
    .goto Stonetalon Mountains,80.10,98.20,40,0
    .goto Stonetalon Mountains,77.17,98.61,40 >>Siga o caminho à esquerda para cima
step
    .goto Stonetalon Mountains,74.54,97.94
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mandingueiro Jin'Zil|r
    .turnin 1060 >>Entregue Carta para Jin'Zil
    .target Witch Doctor Jin'Zil
step << Warlock
    .goto Stonetalon Mountains,73.25,95.13
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ken'zigla|r
    .turnin 1510 >>Entregue Notícias de Dogran
    .accept 1511 >>Aceite Ken'zigla's Draught - Missão
    .target Ken'zigla
step
    #label BloodFeedersTI
    .goto Stonetalon Mountains,71.25,95.02
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Xen'Zilla|r
    .turnin 6461 >>Entregue Sanguessugas
    .target Xen'Zilla
step
    #xprate >1.49
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Entregue instruções adicionais
    .target Ziz Fizziks
    .dungeon !BFD
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
    .goto Stonetalon Mountains,47.20,61.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Maggran|r
	.turnin 6284 >>Entregue Aracnofobia
    .target Maggran Earthbinder
step
    .goto Stonetalon Mountains,47.46,58.37
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tammra|r
    .turnin 6401 >>Entregue A Kaya Está Viva
    .target Tammra Windfield
step
    #label SRRFP
    .goto Stonetalon Mountains,45.13,59.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tharm|r
    .fp Sun Rock Retreat >>Aprenda a rota de voo de Retiro Rocha do Sol
    .target Tharm
    .subzoneskip 460,1
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>Suba pelo caminho à direita
step
    #xprate <1.5
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tsunomem|r
    .accept 6562 >>Aceite Problemas nas Profundezas
    .target Tsunaman
step
    #xprate <1.5
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Entregue instruções adicionais
    .target Ziz Fizziks
step
    #xprate <1.5
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >>Vá para Talondeep Trajetória
step
    #xprate <1.5
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Vá para Zoram'gar Posto Avançado
    .subzoneskip 2897
    >>|cRXP_WARN_Evite as guardas Astranaar no caminho. Siga o ponto de referência para segurança|r
    .unitscan Astranaar Sentinel
step
    #xprate <1.5
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >>Obtenha a rota de voo do Assentamento Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
step
    #xprate <1.5
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
    #xprate <1.5
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
    #xprate <1.5
    #softcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_Isso iniciará uma missão de escolta. Cuidado, ela é difícil|r
    .accept 6641,1 >>Aceite Vorsha, a Açoitadora
    .target Muglash
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,12.06,34.63
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Muglash|r
    >>|cRXP_WARN_isto iniciará uma missão de escolta. Tenha MUITO cuidado! |cRXP_ENEMY_Vorsha|r causa dano muito alto. Agrupar-se é recomendado|r
    .accept 6641,1 >>Aceite Vorsha, a Açoitadora
    .target Muglash
step
    #xprate <1.5
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
step
    #xprate <1.5
    #softcore
    .goto Ashenvale,9.63,27.63
    >>Clique no get there
    >>|cRXP_WARN_Haverá ondas de|r |cRXP_ENEMY_Naga|r |cRXP_WARN_que aparecem. Tenha cuidado quando|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_aparecer, ele acerta muito forte|r
    >>|cRXP_WARN_deixe|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_ganhar ameaça antes de atacar |cRXP_ENEMY_Vorsha|r!|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #hardcore
    .goto Ashenvale,9.63,27.63
    >>Clique no get there
    >>|cRXP_WARN_Haverá ondas de|r |cRXP_ENEMY_Naga|r |cRXP_WARN_que aparecem. Tenha cuidado quando|r |cRXP_ENEMY_Vorsha|r |cRXP_WARN_aparecer, ele acerta muito forte|r
    >>|cRXP_WARN_deixe|r |cRXP_FRIENDLY_Muglash|r |cRXP_WARN_ganhar ameaça antes de lutar com ele!|r
    >>|cRXP_WARN_esteja pronto para usar recargas e poções pois |cRXP_ENEMY_Vorsha|r pode criticar você causando dano alto!|r
    .complete 6641,1 --Defeat Vorsha the Lasher
    .mob Vorsha the Lasher
step
    #xprate <1.5
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >>Agora você deve procurar um grupo para BlackFathom Deeps
    .dungeon BFD
step
    #xprate <1.5
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
    #xprate <1.5
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Vá para a entrada de Profundezas Negras
step
    #xprate <1.5
    #completewith next
    >>Saque |cRXP_LOOT_Safira de Aku'Mai|r da parede
    .complete 6563,1 --Sapphire of Aku'Mai (20)
step
    #xprate <1.5
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
    #xprate <1.5
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_opcionalmente fale com|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_de volta a Zoram'gar Posto Avançado para obter outra missão de continuação de BFD|r
    .turnin 6564 >>Entregue Lealdade aos Deuses Antigos
    .accept 6565 >>Aceite Lealdade aos Antigos Deuses
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate <1.5
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
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,49.38,61.68,30,0
    .goto Stonetalon Mountains,48.92,62.71,30,0
    .goto Stonetalon Mountains,48.11,63.88,30,0
    .goto Stonetalon Mountains,47.21,64.05,30 >>Suba pelo caminho à direita
    .dungeon BFD
step
    #xprate >1.49
    #label Tsunaman1
    .goto Stonetalon Mountains,47.36,64.25
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tsunomem|r
    .accept 6562 >>Aceite Problemas nas Profundezas
    .target Tsunaman
    .dungeon BFD
step
    #xprate >1.49
    .goto Stonetalon Mountains,58.99,62.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ziz|r
    .turnin 1095 >>Entregue instruções adicionais
    .target Ziz Fizziks
    .dungeon BFD
step
    #xprate >1.49
    #sticky
    #completewith EnterBFD
    .subzone 2797,2 >>Agora você deve procurar um grupo para BlackFathom Deeps
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    .goto Stonetalon Mountains,78.29,42.51,30 >>Vá para Talondeep Trajetória
    .dungeon BFD
step
    #xprate >1.49
	#completewith ZoramFP
    .goto Ashenvale,34.14,53.61,50,0
    .goto Ashenvale,18.43,32.94,50,0
    .goto Ashenvale,11.96,34.28,80 >>Vá para Zoram'gar Posto Avançado
    .subzoneskip 2897
    >>|cRXP_WARN_Evite as guardas Astranaar no caminho. Siga o ponto de referência para segurança|r
    .unitscan Astranaar Sentinel
    .dungeon BFD
step
    #xprate >1.49
    #label ZoramFP
    .goto Ashenvale,12.24,33.80
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Andruk|r
    .fp Zoram'gar Outpost >>Obtenha a rota de voo do Assentamento Zoram'gar
    .target Andruk
    .isQuestAvailable 6442
    .dungeon BFD
step
    #xprate >1.49
    .goto Ashenvale,11.56,34.29
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Je'neu|r
    .turnin 6562 >>Entregue Problemas nas Profundezas
    .accept 6563 >>Aceite A Essência de Aku'mai
    .accept 6921 >>Aceite Entre as Ruínas
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
    #completewith Sapphires
    .goto Kalimdor,43.98,35.30,40 >>Vá para a entrada de Profundezas Negras
    .dungeon BFD
step
    #xprate >1.49
    #completewith next
    >>Saque |cRXP_LOOT_Safira de Aku'Mai|r da parede
    .complete 6563,1 --Sapphire of Aku'Mai (20)
    .dungeon BFD
step
    #xprate >1.49
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
    #xprate >1.49
    #completewith EnterBFD
    .goto Ashenvale,11.56,34.29,0
    >>|cRXP_WARN_opcionalmente fale com|r |cRXP_FRIENDLY_Je'neu Sancrea|r |cRXP_WARN_de volta a Zoram'gar Posto Avançado para obter outra missão de continuação de BFD|r
    .turnin 6564 >>Entregue Lealdade aos Deuses Antigos
    .accept 6565 >>Aceite Lealdade aos Antigos Deuses
    .target Je'neu Sancrea
    .dungeon BFD
step
    #xprate >1.49
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
    .dungeon BFD
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
    #xprate <1.5
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Vá para Zoram'gar Posto Avançado
step
    #xprate >1.49
    #optional
    #completewith ZoramTurnins
    .subzone 2897 >>Vá para Zoram'gar Posto Avançado
    .dungeon BFD
step
    #xprate <1.5
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com o |cRXP_FRIENDLY_Mensageiro do Brado Guerreiro|r e |cRXP_FRIENDLY_Marukai|r
    .turnin 6641 >>Entregue Vorsha, a Açoitadora
    .goto Ashenvale,12.22,34.21
    .target +Warsong Runner
    .turnin 6442 >>Entregue Nagas na Praia de Zoram
    .target +Marukai
    .goto Ashenvale,11.69,34.90
step
    #xprate <1.5
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
step << Druid
    #completewith DruidTraining3
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
    .cooldown item,6948,>0
step << Druid
    #label DruidTraining3
    .goto Moonglade,52.53,40.58
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 1075 >>Treine suas magias de classe
    .target Loganaar
    .xp <22,1
    .cooldown item,6948,>0
step
    #xprate <1.5
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Destruir seus|r |T134133:0|t[|cRXP_LOOT_Safira de Aku'Mai|r] |cRXP_WARN_pois já não são mais necessários|r
step
    #xprate >1.49
    #completewith JourneytoTM
    .destroy 16784 >>|cRXP_WARN_Destruir seus|r |T134133:0|t[|cRXP_LOOT_Safira de Aku'Mai|r] |cRXP_WARN_pois já não são mais necessários|r
    .dungeon BFD
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
    .timer 6,Cena de A Velha Anciã
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,78.61,28.55
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hamuul|r
    .turnin 1489 >>Entregue Hamuul Runa Totem
    .accept 1490 >>Aceite Nara Juba Agreste
    .target Arch Druid Hamuul Runetotem
    .dungeon !WC
step
    .goto Thunder Bluff,75.65,31.57
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Nara|r
    .turnin 1490 >>Entregue Nara Juba Agreste
    .target Nara Wildmane
    .dungeon !WC
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
    .goto Thunder Bluff,69.88,30.90
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Magatha|r
    .accept 1064 >>Aceite Ajuda Renegada
    .target Magatha Grimtotem
step
    .goto Thunder Bluff,71.04,34.19
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bashana|r
    .turnin 6561 >>Entregue Vilania nas Profundezas Negras
    .target Bashana Runetotem
    .isQuestComplete 6561
    .dungeon BFD
step
    #xprate <1.5
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r nos poços de visão
    .turnin 1064 >>Entregue Ajuda Renegada
    .accept 1065 >>Aceite A jornada para Serraria Tarren
    .turnin 962 >>Entregue Ofídeas
    .target Apothecary Zamah
    .isQuestComplete 962
step
    #label JourneytoTM
    .goto Thunder Bluff,22.82,20.88
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zamah|r nos poços de visão
    .turnin 1064 >>Entregue Ajuda Renegada
    .accept 1065 >>Aceite A jornada para Serraria Tarren
    .target Apothecary Zamah
step
    .goto Thunder Bluff,45.83,64.74
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com a |cRXP_FRIENDLY_Estalajadeira Pala|r
    .home >>Defina sua Pedra de Regresso em Penhasco do Trovão
    .target Innkeeper Pala
    .bindlocation 1638
    .dungeon WC
step << Warlock
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
    .subzoneskip 378
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
step << !Warlock
    #xprate <1.5
    #completewith DockTrouble << !Shaman
    #completewith CallofWater << Shaman
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon !WC
step << Warlock
    #xprate <1.5
    #completewith DockTrouble
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .dungeon !WC
step << Shaman
    #xprate >1.49
    #completewith CallofWater
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon !WC
step
    #xprate <1.5
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mebok|r
    .turnin 1491 >>Entregue Smart Drinks
    .target Mebok Mizzyrix
    .dungeon !WC
step
    #xprate <1.5
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
    .dungeon !WC
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
    .dungeon !WC
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
    .dungeon !WC
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
    .dungeon !WC
step << Shaman
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Bragok
    .subzoneskip 378
    .dungeon !WC
step << Shaman
    #completewith CallofWater
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Camp Taurajo >>Voe para Camp Taurajo
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step << Shaman
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
    #optional
    #completewith FlyOrg
    .hs >>Use sua Pedra de Retorno para ir a Camp Taurajo
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 378,1
    .subzoneskip 378
step << Shaman
    #completewith FlyOrg
    .goto The Barrens,44.85,59.14,200 >>Vá de volta para Camp Taurajo
    .cooldown item,6948,<0
    .subzoneskip 378
step << Shaman
    #label FlyOrg
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip Orgrimmar
step << !Shaman !Druid
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
    .dungeon !WC
step << !Shaman !Warlock
    #completewith BarrensEnd
    .goto Thunder Bluff,47.00,49.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tal|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Tal
    .zoneskip Thunder Bluff,1
    .dungeon WC
step << Warlock
    #completewith BarrensEnd
    .goto The Barrens,44.45,59.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Omusa|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Omusa Thunderhorn
    .zoneskip The Barrens,1
    .dungeon WC
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
step << Rogue
    #completewith MissionProbable
    .goto Orgrimmar,26.22,61.58,80,0
    .goto Orgrimmar,15.66,63.33,30,0
    .goto Orgrimmar,18.03,60.51,50 >>Entre em Savanas através da Saída Ocidental
    .zoneskip The Barrens
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #completewith MissionProbable
    .goto The Barrens,57.63,7.48,120,0
    .subzone 382 >> Travel to The Sludge Fen
    .isOnQuest 30 << Druid
step << Druid
    .goto The Barrens,56.67,8.32
    >>Abra o |cRXP_PICK_Cofre Estranho|r na água para obter o |T133443:0|t[Meio-pingente da Agilidade Aquática]
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
    >>Usar seu arrombamento para abrir |cRXP_PICK_Gallywix's Caixa-forte|r e saqueie o |cRXP_LOOT_Mistura|r
    .complete 2478,6 --Cache of Zanzil's Altered Mixture (1)
step << Rogue/Druid
    #hardcore
    #completewith next
    .goto Kalimdor,56.80,45.50,20,0
    .goto Orgrimmar,15.54,62.86
    .zone Orgrimmar >>Vá para Orgrimmar pela entrada ocidental
    .isOnQuest 30 << Druid
step << Rogue/Druid
    #softcore
    #completewith next
    .deathskip >>Morra e reviva no |cRXP_FRIENDLY_Anjo da Cura|r
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
    .collect 25875,1,6544,1 --Deadly Throwing Axe (200)
    .target Trak'gen
step << Rogue
    >>|cRXP_WARN_Se tiver|r |T134437:0|t[Antipeçonha]|cRXP_WARN_, use uma para se curar do|r |T136230:0|t[Toque de Zanzil]
    .itemcount 6452,1
    .use 6452
    .aura -9991
step << Rogue
    .destroy 8051 >>|cRXP_WARN_Remova o|r |T134536:0|t[Sinalizador] |cRXP_WARN_da mochila, pois não é mais necessário|r
    .destroy 8066 >>|cRXP_WARN_Delete|r |T134374:0|t[Fizzule's Apito] |cRXP_WARN_from your bags, as it's no longer needed|r
step
    #label BarrensEnd
    .goto Orgrimmar,49.1,94.5,30 >>Saia de Orgrimmar
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
