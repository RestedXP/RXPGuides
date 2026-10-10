if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#tbc
#version 7
#group RXP TBC Guia de Sobrevivência (H)
<< Horde
#name 14-16 Barrens
#version 7
#subgroup Guia de Sobrevivência RXP TBC 1-30
#next 16-18 Terra Fantasma

step << BloodElf/Undead
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Orgrimmar >>Entre em Orgrimmar
step << BloodElf/Undead
    .goto Orgrimmar,45.12,63.89
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Doraso|r
    .fp Orgrimmar >>Aprenda a rota de voo de Orgrimmar
    .target Doras
step << BloodElf/Undead
    #completewith next
    .goto Orgrimmar,48.97,92.84,50,0
    .zone Durotar >>Saia de Orgrimmar
step << BloodElf/Undead
    #completewith next
    .subzone 362 >>Vá para Monte Navalha
step << BloodElf/Undead
    .goto Durotar,50.8,43.6
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Takrin Buscatrilha|r
    .accept 840 >>Aceite Recruta da Horda
    .target Takrin Pathseeker
step << BloodElf/Undead
    .goto Durotar,55.94,74.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Vornal|r
    >>|cRXP_WARN_Isto é uma missão de baixo nível que recompensa 10x|r |T134712:0|t[Cola Grudenta à Beça] |cRXP_WARN_(raiz instantânea de 10 segundos no inimigo). Isto é extremamente valioso em situações perigosas, poderia salvar sua vida!|r
    >>|cRXP_WARN_Pule este passo se você não deseja obtê-lo|r
    .accept 818 >>Aceite Um Espírito Solvente
    .target Master Vornal
step << BloodElf/Undead
    #loop
    .goto Durotar,59.64,73.84,0
    .goto Durotar,59.64,73.84,60,0
    .goto Durotar,58.11,77.30,60,0
    .goto Durotar,57.27,79.38,60,0
    .goto Durotar,55.66,80.47,60,0
    .goto Durotar,53.8,83.14,60,0
    >>Abate |cRXP_ENEMY_Rastejadores Pigmeus de Surf|r e |cRXP_ENEMY_Rastejadores de Surf|r. Saque-os pelos |cRXP_LOOT_Muco|r
    >>Mate os |cRXP_ENEMY_Makrura Shellhides|r e os |cRXP_ENEMY_Makrura Clackers|r. Saque-os por seus |cRXP_LOOT_Olhos|r
    .complete 818,2 --Crawler Mucus (8)
    .mob +Pygmy Surf Crawler
    .mob +Surf Crawler
    .complete 818,1 --Intact Makrura Eye (4)
    .mob +Makrura Shellhide
    .mob +Makrura Clacker
    .isOnQuest 818
step << BloodElf/Undead
    .goto Durotar,55.94,74.40
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mestre Vornal|r
    >>|cRXP_WARN_Pule este passo se você não deseja obtê-lo|r
    .turnin 818 >>Entregue Um espírito solvente
    .target Master Vornal
    .isQuestComplete 818
step << BloodElf/Undead
    #completewith next
    .goto The Barrens,62.26,19.38,40 >>Voe para Posto de Farol
    .zoneskip The Barrens
step << BloodElf/Undead
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
    .target Kargal Battlescar
step << BloodElf/Undead
    #completewith CrossRoads1
    .subzone 380 >>Viaje até the Crossroads
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Na Cola dos Larápios
    .target Gazrog
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .accept 1492 >>Aceite Mestre Portuário Caruncho
    .accept 848 >>Aceite Esporos de Fungos
    .target Apothecary Helbrim
step
    .goto The Barrens,51.50,30.87
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r
    .accept 871 >>Aceite Em Defesa do Posto Remoto
    .accept 5041 >>Aceite Suprimentos Para a Encruzilhada
    .target Thork
step
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .accept 870 >>Aceite Os Charcos Esquecidos
    .target Tonga Runetotem
step << Undead/BloodElf
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada
    .accept 844 >>Aceite A Ameaça Pinote
    .target Sergra Darkthorn
step
    #label CrossRoads1
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .accept 869 >>Aceite Na Cola dos Larápios
    .target Gazrog
step << Orc/Troll
    .goto The Barrens,52.62,29.85
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zargh|r
    .turnin 6386 >>Volte à Encruzilhada
    .target Zargh
step
    #completewith DisruptTheAttacks
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saqueie-os para obter seus |cRXP_LOOT_Beaks|r
    .complete 844,1 --Plainstrider Beak (7)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
step
    #optional
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
step << Shaman
    #sticky
    #label FireTar2
    .goto The Barrens,54.97,25.23,50,0
    .goto The Barrens,54.2,24.60,50,0
    .goto The Barrens,53.57,25.51
    >>Abate um |cRXP_ENEMY_Ladravaz Crinavalha|r ou um |cRXP_ENEMY_Tecespinho Crinavalha|r. Saqueie-o para um |cRXP_LOOT_Fire Piche|r
    .complete 1525,1 --Fire Tar (1)
    .mob Razormane Water Seeker
    .mob Razormane Thornweaver
step
    #label DisruptTheAttacks
	.goto The Barrens,53.63,24.50,25,0
	.goto The Barrens,54.26,24.64,25,0
	.goto The Barrens,54.81,25.19,25,0
	.goto The Barrens,55.50,25.61,25,0
	.goto The Barrens,55.86,26.30,25,0
	.goto The Barrens,55.83,27.15,25,0
	.goto The Barrens,55.41,27.41,25,0
	.goto The Barrens,54.50,26.97,25,0
	.goto The Barrens,54.05,26.11,25,0
	.goto The Barrens,53.51,25.24,25,0
	.goto The Barrens,53.63,24.50,25,0
    >>Mate os |cRXP_ENEMY_Buscadores de Água|r, os |cRXP_ENEMY_Thornweavers|r e os |cRXP_ENEMY_Hunters|r
    .complete 871,1 --Razormane Water Seeker (8)
    .mob +Razormane Water Seeker
    .complete 871,2 --Razormane Thornweaver (8)
    .mob +Razormane Thornweaver
    .complete 871,3 --Razormane Hunter (3)
    .mob +Razormane Hunter
step
    #optional
    #completewith next
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step
    #label PlainstriderBeaks
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
    .goto The Barrens,52.24,31.01
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
step
    .goto The Barrens,55.70,27.30,20,0
    .goto The Barrens,55.78,20.00
    .use 4926 >>Pegue |cRXP_PICK_Barril Vazio de Chen|r do chão e comece a missão
    >>|cRXP_WARN_Espere reaparecer se não estiver lá|r
    .collect 4926,1,819 --Collect Chen's Empty Keg
    .accept 819 >>Aceite Barril Vazio do Chen
step
    #optional
    #completewith KreenigSnarlsnout
    .goto The Barrens,56.75,24.69,50,0
    .goto The Barrens,59.26,24.67,50,0
    >>Mate os |cRXP_ENEMY_Razormane Geomancers|r e os |cRXP_ENEMY_Razormane Defenders|r
    .complete 872,1 --Razormane Geomancer (8)
    .mob +Razormane Geomancer
    .complete 872,2 --Razormane Defender (8)
    .mob +Razormane Defender
step
    #optional
    #completewith next
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Tem vários locais de desova|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
step
    #label KreenigSnarlsnout
    .goto The Barrens,58.69,27.08
    >>Mate o |cRXP_ENEMY_Kreenig Rosnento|r. Saqueie o |cRXP_LOOT_Tusk|r
    .complete 872,3 --Kreenig Snarlsnout's Tusk (1)
    .mob Kreenig Snarlsnout
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
step
    #loop
    .goto The Barrens,58.38,27.01,30,0
    .goto The Barrens,59.46,24.58,30,0
    .goto The Barrens,58.38,27.01,0
    .goto The Barrens,59.46,24.58,0
    >>Saque os |cRXP_PICK_Caixotes de Suprimento da Encruzilhada|r
    >>|cRXP_WARN_Tem vários locais de desova|r
    .complete 5041,1 --Crossroads' Supply Crates (1)
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
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith ShamanDurotar
    >>Mate qualquer |cRXP_ENEMY_Zhevra|r que você veja. Saqueie os |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Tauren Shaman
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
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
    #optional
    #completewith FireEnd
    >>Abate todo |cRXP_ENEMY_Raptor|r que você vê. Saqueie-os para obter suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
step << Shaman
    #optional
    #completewith next
    >>Mate qualquer |cRXP_ENEMY_Zhevra|r que você veja. Saqueie os |cRXP_LOOT_Hooves|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
    .dungeon RFC
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
    #optional
    #completewith next
    .goto The Barrens,63.89,31.66,100,0
    >>Mate |cRXP_ENEMY_Zevra Corredora|r. Pegue seus |cRXP_LOOT_Cascos|r
    .complete 845,1 --Zhevra Hooves (4)
    .mob Zhevra Runner
step << Tauren
    .goto The Barrens,62.27,19.38
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kargal|r
    .turnin 840 >>Entregue Recruta da Horda
    .accept 842 >>Aceite Recrutamento da Encruzilhada
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
    #completewith next
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fp Ratchet >>Aprenda a rota de voo para Ratchet
    .target Bragok
step
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Cobogó|r e o |cRXP_FRIENDLY_Wanted Poster|r
    .accept 894 >>Aceite A Rebimboca
    .goto The Barrens,62.98,37.22
    .accept 895 >>Aceite Procura-se: Capitão Garvão
    .goto The Barrens,62.59,37.47
    .target Sputtervalve
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
    +|cRXP_WARN_Equipe o|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você está no nível 16|r
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
    #completewith BaronLongshore
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
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe|r |T133046:0|t[Martelo de Rocha] |cRXP_WARN_quando você estiver no nível 16|r
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
step << skip
    #optional
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe o segundo|r |T135343:0|t[Cimitarra] |cRXP_WARN_na mão secundária|r
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
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
    .home >>Defina sua Pedra de Retorno em Ratchet << !BloodElf !Undead
    .vendor >>Comerciante Lixo
    .collect 4592,20,895,1 --Longjaw Mud Snapper (20)
    .collect 1205,10,895,1 << Mage/Warlock/Priest/Shaman/Druid/Paladin --Melon Juice (10)
    .target Innkeeper Wiley
    .bindlocation 392 << !BloodElf !Undead
    .isOnQuest 887
step
    #completewith BaronLongshore
    .destroy 5088 >>|cRXP_WARN_Remova o|r |T133735:0|t[Manual de Operação do Console de Controle] |cRXP_WARN_da mochila, pois não é mais necessário|r
step
    #optional
    #completewith BaronLongshore
    >>Mate os |cRXP_ENEMY_Southsea Brigands|r e os |cRXP_ENEMY_Southsea Cannoneers|r
    .complete 887,1 --Southsea Brigand (12)
    .mob +Southsea Brigand
    .complete 887,2 --Southsea Cannoneer (6)
    .mob +Southsea Cannoneer
step << skip --Orc Rogue/Troll Rogue
    #optional
	#completewith SouthSea
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
step
    #label SouthSea
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
step << skip --Orc Rogue/Troll Rogue
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
    .target Wharfmaster Dizzywig
step
    .goto The Barrens,62.68,36.23
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConversar com |cRXP_FRIENDLY_Gasganete|r
    .turnin 892 >>Entregue Carregamento perdido
    --.accept 888 >>Accept Stolen Booty
    .target Gazlowe
step << Undead Warrior
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135353:0|t[Tarasca] |cRXP_BUY_dele|r
    .collect 2024,1,850,1 --Collect Espadon (1)
    .money <0.6397
    .target Ironzar
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<12.5
step << Undead Warrior
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe o|r |T135353:0|t[Tarasca] |cRXP_WARN_quando você está no nível 16|r
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
    #completewith BaronLongshore
    +|cRXP_WARN_Equipe|r |T135147:0|t[Cajado Nodoso]
    .use 2030
    .itemcount 2030,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<11.9
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Fale com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele|r
    .collect 2027,1,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << Rogue
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 16,QUALITY,<7
    .itemStat 16,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
step << Rogue
    .goto The Barrens,62.24,37.48
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Ferrozar|r|cRXP_BUY_. Compre uma segunda|r |T135343:0|t[Cimitarra] |cRXP_BUY_dele para sua segunda arma|r
    .collect 2027,2,850,1 --Collect Scimitar (1)
    .money <0.3815
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
    .target Ironzar
step << skip
    #optional
    #completewith FlyToXroads1
    +|cRXP_WARN_Equipe a|r |T135343:0|t[Cimitarra]
    .use 2027
    .itemcount 2027,1
    .itemStat 17,QUALITY,<7
    .itemStat 17,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<8.6
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
    #label XroadsTurnins3
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thork|r e |cRXP_FRIENDLY_Sergra|r
    .turnin 5041 >>Entregue Suprimentos para a Encruzilhada
    .turnin 872 >>Entregue A Ofensiva do Posto Remoto
    .target +Thork
    .goto The Barrens,51.50,30.87
    .turnin 845 >>Entregue As Zevras
    .turnin 842 >>Entregue O Recrutamento da Encruzilhada << Tauren
    .accept 903 >>Aceite Predadores dos Sertões
    .target +Sergra Darkthorn
    .goto The Barrens,52.23,31.00
step << Hunter
    .goto The Barrens,51.67,29.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Barg|r
    .vendor >>|cRXP_BUY_Buy|r |T132382:0|t[Sharp Arrows] |cRXP_BUY_ou|r |T132384:0|t[Heavy Shots] |cRXP_BUY_from him|r
    .target Barg
step
    #completewith RegtharDeathgate1
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .maxlevel 16
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
    .target Regthar Deathgate
step
    #completewith Barak
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
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
    .goto The Barrens,44.55,23.53,0
    .goto The Barrens,44.55,23.53,40,0
    .goto The Barrens,45.09,22.04,40,0
    .goto The Barrens,45.43,22.93,40,0
    .goto The Barrens,44.97,24.03,40,0
    >>Colete |cRXP_LOOT_Cogumelos Carregados|r ao redor dos Charcos Esquecidos
    .complete 848,1 --Collect Fungal Spores (x4)
step
    .goto The Barrens,45.35,28.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Regthar|r
    .turnin 850 >>Entregue Os Líderes Kolkar
    .accept 851 >>Aceite Verog, o Dervixe
    .target Regthar Deathgate
step
    #completewith CrossRoads3
    .subzone 380 >>Vá para The Encruzilhada
step
    .goto The Barrens,51.44,30.15
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Helbrim|r
    .turnin 848 >>Entregue Esporos de Fungos
    .target Apothecary Helbrim
step
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 903 >>Entregue Espreitadores das Savanas
    .accept 881 >>Aceite Echeyaki
    .target Sergra Darkthorn
step
    #label CrossRoads3
    .goto The Barrens,52.26,31.93
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Tonga|r
    .turnin 870 >>Entregue Os Poços Esquecidos
    .accept 877 >>Aceite Oásis Estagnante
    .target Tonga Runetotem
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Ladrões de Raptor
    .accept 3281 >>Aceite Prata Roubada
    .target Gazrog
    .isQuestComplete 869
step
    #completewith Samophlange
    >>Abata os |cRXP_ENEMY_Raptors|r. Saque suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
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
    #optional
    #completewith next
    >>Mate os |cRXP_ENEMY_Plainstriders|r. Saque-os pelos |cRXP_LOOT_Kidneys|r
    .complete 821,2 --Plainstrider Kidney (5)
    .mob Greater Plainstrider
    .mob Fleeting Plainstrider
    .mob Ornery Plainstrideridneys
step
    #loop
    .goto The Barrens,54.3,12.3,0
    .goto The Barrens,54.3,12.3,90,0
    .goto The Barrens,54.6,16.7,90,0
    .goto The Barrens,42.6,15.1,90,0
    >>Abata os |cRXP_ENEMY_Raptors|r. Saque suas |cRXP_LOOT_Cabeças|r
    .complete 869,1 --Raptor Head (12)
    .mob Sunscale Lashtail
    .mob Sunscale Screecher
    .mob Sunscale Scytheclaw
step
    #sticky
    #completewith EnterRFC
    .subzone 2437 >>Agora você deve procurar um grupo para Cavernas Ígneas
    .dungeon RFC
step << Druid
	#completewith DruidTrainB1
	.cast 18960 >>Use Teleporte: Clareira da Lua
	.zoneskip Moonglade
	.xp <16,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 783 >>Treine suas magias de classe << wotlk
    .train 8925 >>Treine suas magias de classe << TBC
	.target Loganaar
    .cooldown item,6948,>0
	.xp <16,1
    .xp >18,1
step << Druid
    #optional
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 8938 >>Treine suas magias de classe
	.target Loganaar
    .cooldown item,6948,>0
	.xp <18,1
    .xp >20,1
step << Druid
    #label DruidTrainB1
    .goto Moonglade,52.53,40.57
	>>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Loganaar|r
    .train 6756 >>Treine suas magias de classe
	.target Loganaar
    .cooldown item,6948,>0
	.xp <20,1
step << !Undead !BloodElf
    #completewith SamuTurnin1
    .hs >>Use sua Pedra de Regresso para ir a Vila Catraca
    .use 6948
    .cooldown item,6948,>0
    .bindlocation 392,1
step << !Undead !BloodElf
    #completewith SamuTurnin1
    .subzone 392 >>Viaje para Ponto de Ancoragem
    .cooldown item,6948,<0
step << !Undead !BloodElf
    #label SamuTurnin1
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 902 >>Entregue Samoflange
    .accept 1483 >>Aceite Zé Fízzica
    .target Sputtervalve
step << !Undead !BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
step << !Undead !BloodElf
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Aceite Só Pode Ser o Chifre
    .accept 1069 >>Aceite Ovos de Aranha Musgofunda
    .target Mebok Mizzyrix
step << !Undead !BloodElf
    #completewith EcheyakeeTurnin
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Crossroads >>Voe para Encruzilhada
    .target Bragok
    .subzoneskip 380
step << Undead/BloodElf
    #completewith EcheyakeeTurnin
    .subzone 380 >>Viaje até the Crossroads
step
    .goto The Barrens,51.93,30.32
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gazrog|r
    .turnin 869 >>Entregue Ladrões de Raptor
    .accept 3281 >>Aceite Prata Roubada
    .target Gazrog
step
    #label EcheyakeeTurnin
    .goto The Barrens,52.24,31.01
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tConverse com |cRXP_FRIENDLY_Sergra|r
    .turnin 881 >>Entregue Echeyaki
    .accept 905 >>Aceite Os Talhardepas Raivosos
    .target Sergra Darkthorn
step
    #completewith BarrensEnd
    .destroy 10327 >>|cRXP_WARN_Destrua o|r |T134227:0|t[Berrante de Echeyaki] |cRXP_WARN_você não precisa mais disso|r
step << Undead/BloodElf
    #completewith SamuTurnin2
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Ratchet >>Voe para Ponto de Ancoragem
    .target Devrak
    .subzoneskip 392
step << Undead/BloodElf
    .goto The Barrens,62.98,37.22
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Cobogó|r
    .turnin 902 >>Entregue Samoflange
    .accept 1483 >>Aceite Zé Fízzica
    .target Sputtervalve
step << Undead/BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
step << Undead/BloodElf
    .goto The Barrens,63.09,37.61
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bigglefuzz|r
    .accept 959 >>Aceite Encrencas nas docas
    .target Crane Operator Bigglefuzz
step << Undead/BloodElf
    #label SamuTurnin2
    .goto The Barrens,62.37,37.62
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mebok|r
    .accept 865 >>Aceite Só Pode Ser o Chifre
    .accept 1069 >>Aceite Ovos de Aranha Musgofunda
    .target Mebok Mizzyrix
step << !BloodElf/Undead
    #completewith BarrensEnd
    .goto The Barrens,51.50,30.34
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Devrak|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .zoneskip Orgrimmar
    .target Devrak
step << Undead/BloodElf
    #completewith BarrensEnd
    .goto The Barrens,63.09,37.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Bragok|r
    .fly Orgrimmar >>Voe para Orgrimmar
    .target Bragok
    .zoneskip Orgrimmar
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
step << Shaman
    #optional
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 8019 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <16,1
    .xp >18,1
step << Shaman
    .goto Orgrimmar,38.82,36.41
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Kardris|r
    .train 913 >>Treine suas magias de classe
    .target Kardris Dreamseeker
    .xp <18,1
step << Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 6761 >>Treine suas magias de classe
    .target Shenthul
step << skip --Rogue
    .goto Orgrimmar,43.05,53.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Shenthul|r
    .train 6761 >>Treine suas magias de classe
    .accept 2379 >>Aceite Zando'Zan
    .target Shenthul
step << skip --Rogue
    .goto Orgrimmar,42.72,52.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zando'zan|r
    .turnin 2379 >>Entregue Zando'zan
    .accept 2382 >>Aceite Wrenix da Vila Catraca
    .target Zando'zan
step << Warlock
    #optional
    .goto Orgrimmar,48.62,46.95
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Mirket|r
    .train 1455 >>Treine suas magias de classe
    .target Mirket
    .xp <16,1
    .xp >18,1
step << Warlock
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
    #optional
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 285 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <16,1
    .xp >18,1
step << Warrior
    .goto Orgrimmar,79.91,31.36
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Grezz|r
    .train 8198 >>Treine suas magias de classe
    .target Grezz Ragefist
    .xp <18,1
step << Hunter
    #optional
    .goto Orgrimmar,66.05,18.52
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Ormak|r
    .train 13795 >>Treine suas magias de classe
    .target Ormak Grimshot
    .xp <16,1
    .xp >18,1
step << Hunter
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
step << Troll Warrior/Tauren Warrior/Undead Warrior
    .goto Orgrimmar,81.52,19.60
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Hanashi|r
    .train 197 >>Aprenda a usar Machados de Duas Mãos
    .train 227 >>Treine Cajados
    .target Hanashi
step << Hunter
    .goto Orgrimmar,81.17,18.69
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|t|cRXP_BUY_Converse com|r |cRXP_FRIENDLY_Zendo'jian|r|cRXP_BUY_. Compre um|r |T135490:0|t[Arco Reforçado] |cRXP_BUY_dele|r
    .collect 3026,1,3281,1 --Collect Reinforced Bow (1)
    .money <0.3588
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
    .target Zendo'jian
    .train 227,3
step << Hunter
    #optional
    #completewith FoodandWater2
    +|cRXP_WARN_Equipe o|r |T135490:0|t[Arco Reforçado]
    .use 3026
    .itemcount 3026,1
    .itemStat 18,QUALITY,<7
    .itemStat 18,ITEM_MOD_DAMAGE_PER_SECOND_SHORT,<7.4
step
    .goto Orgrimmar,31.74,37.82
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Thrall|r
    >>|cRXP_WARN_Isto é uma missão de pré-requisito para Cavernas Ígneas. Pule este passo se você não deseja fazê-lo|r
    .accept 5726 >>Aceite Escondido Enemies
    .target Thrall
    .dungeon RFC
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
    #optional
    #label BarrensEnd
step << Undead !Rogue/BloodElf !Rogue
    .hs >>Hearth to Tranquillien
    .bindlocation 3488,1
    .subzoneskip 3488
step << BloodElf Rogue/Undead Rogue
    .hs >>Hearth to Luaprata
    .bindlocation 3487,1
    .subzoneskip 3487
step << !Undead !BloodElf
    #completewith ZeptoUC2
    .goto Durotar,45.54,12.14
    .zone Durotar >>Saia de Orgrimmar
step << !Undead !BloodElf
    #label ZeptoUC2
    .goto Durotar,50.8,13.8,40 >>Suba a Torre Zepelim
    .zone Tirisfal Glades >>Pegue o zepelim para Tirisfal Glades
    .zoneskip Tirisfal Glades
step << !Undead !BloodElf
    #completewith PorttoSilvermoon2
    .goto Tirisfal Glades,61.80,65.06,20,0
    .zone Undercity >>Entre em Cidade Baixa
    .zoneskip Undercity
step << !Undead !BloodElf
    #completewith PorttoSilvermoon
    .goto Undercity,62.0,11.3,18 >>Suba as escadas aqui
step << !Undead !BloodElf
    #label PorttoSilvermoon
    .goto Undercity,54.9,11.3
    .zone Silvermoon City >>Usar o |cRXP_PICK_Orbe de Translocação|r
step << Rogue
    .goto Silvermoon City,79.70,52.16
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Zelanis|r
    >>|cRXP_WARN_Certifique-se de que você treinou|r |T136058:0|t[Abrir Fechadura] |cRXP_WARN_para uma missão depois|r
    .accept 10372 >>Aceite Uma Pergunta Discreta
    .train 6761 >>Treine suas magias de classe
    .target Zelanis
    .xp <16,1
step << !BloodElf !Undead
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Saia de Luaprata
    .zoneskip Silvermoon City,1
step << !BloodElf !Undead
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >> Fly to Tranquillien
    .target Skymistress Gloaming
    .zoneskip Ghostlands
step << BloodElf Rogue/Undead Rogue
    #completewith next
    .goto Eversong Woods,56.43,49.91
    .zone Eversong Woods >>Saia de Luaprata
    .zoneskip Silvermoon City,1
step << BloodElf Rogue/Undead Rogue
    .goto Eversong Woods,54.37,50.73
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com |cRXP_FRIENDLY_Gloaming|r
    .fly Tranquillien >> Fly to Tranquillien
    .target Skymistress Gloaming
    .zoneskip Ghostlands

]])
