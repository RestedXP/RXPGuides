if GetLocale() ~= "ptBR" then return end
RXPGuides.RegisterGuide([[
#cata
#version 1
#group +Tol Barad
#name Tol Barad Missões Diárias

step << Horde
    #optional
    -- Peninsula quests
    .convertquest 27948,28684
    .convertquest 28275,28696
    .convertquest 27972,28680
    .convertquest 27987,28698
    .convertquest 27970,28678
    .convertquest 28059,28682
    .convertquest 27967,28691
    .convertquest 27978,28697
    .convertquest 28063,28685
    .convertquest 27992,28692
    .convertquest 28130,28686
    .convertquest 27971,28679
    .convertquest 27966,28690
    .convertquest 28050,28681
    .convertquest 27991,28700
    .convertquest 28137,28687
    .convertquest 27949,28689
    .convertquest 27944,28683
    .convertquest 27975,28695
    .convertquest 28065,28721
    .convertquest 27973,28694
    -- South Island quests
    .convertquest 28122,28657
    .convertquest 28117,28660
    .convertquest 28186,28665
    .convertquest 28165,28663
    .convertquest 28232,28670
    .convertquest 28120,28662
    .convertquest 28188,28668
    .convertquest 28185,28664
    .convertquest 28162,28658
    .convertquest 28118,28661
    .convertquest 28223,28669

step
    #completewith next
    .zone 84 >>Vá para Ventobravo << Alliance
	.zone 85 >>Viagem para Orgrimmar << Horde
	.zoneskip 245
step
    .goto 84,73.220,18.374 << Alliance
    .goto 85,47.405,39.261 << Horde
    .zone 245 >>Pegue o portal para Tol Barad
step << Alliance
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Dias|r, o |cRXP_FRIENDLY_Comandante Marco Gama|r, o |cRXP_FRIENDLY_Coordenador do Acampamento Leso|r e o |cRXP_FRIENDLY_Tenente Paranhos|r
    >>|TInterface/GossipFrame/DailyQuestIcon:0|t|cRXP_WARN_Aceite todas as missões diárias disponíveis no Acampamento da Base de Baradin|r
    .questcount <6,28046,27948,28275,27972,27987,27970,28059,27967,27978,28063,27992,28130,27971,27966,28050,27991,28137,27949,27944,27975,28065,27973
    #loop
    .goto 245,72.933,60.937,5,0
    .goto 245,73.393,59.177,5,0
    .goto 245,73.726,57.574,5,0
    .goto 245,74.775,59.600,5,0
    .target Sergeant Gray
    .target Commander Marcus Johnson
    .target Camp Coordinator Brack
    .target Lieutenant Farnsworth
step << Horde
    +|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro Oficial Kronkar|r, o |cRXP_FRIENDLY_Comandante Larmash|r, o |cRXP_FRIENDLY_Capitão Prug|r e o |cRXP_FRIENDLY_Recruta Sarlosk|r
    >>|TInterface/GossipFrame/DailyQuestIcon:0|t|cRXP_WARN_Aceite todas as missões diárias disponíveis em Grito Infernal's Agarrar|r
    .questcount <6,28693,27948,28275,27972,27987,27970,28059,27967,27978,28063,27992,28130,27971,27966,28050,27991,28137,27949,27944,27975,28065,27973
    #loop
    .goto 245,55.221,81.330,5,0
    .goto 245,53.526,80.582,5,0
    .goto 245,54.889,79.307,5,0
    .goto 245,55.779,78.475,5,0
    .target 3rd Officer Kronkar
    .target Commander Larmash
    .target Captain Prug
    .target Private Sarlosk
step << Alliance
    #completewith CommanderLargo
    .goto 245,75.26,44.80
    .subzone 5540 >>Viagem para o Miradouro de Largo
step << Alliance
    .isOnQuest 27987
    #loop
    .goto 245,77.6,54.1,60,0
    .goto 245,79.8,56.5,55,0
    .goto 245,81.4,49.1,30,0
    .goto 245,78.6,41.9,55,0
    >>Pegue os |cRXP_LOOT_Stacks of Balas de Canhão|r no chão
    .complete 27987,1 -- Stack of Cannonballs (4)
step << Alliance
    .isOnQuest 27978
    #loop
    .goto 245,77.24,49.46,60,0
    .goto 245,80.31,52.61,60,0
    .goto 245,82.23,48.44,45,0
    .goto 245,79.88,43.55,70,0
    >>Mate os |cRXP_ENEMY_Overlook Espíritos|r, os |cRXP_ENEMY_Overlook Spectres|r e os |cRXP_ENEMY_Ghastly Workers|r
    .complete 27978,1 -- Largo's Overlook Ghosts Slain (14)
    .mob Overlook Spirit
    .mob Overlook Spectre
    .mob Ghastly Worker
step << Alliance
    #label CommanderLargo
    .isOnQuest 27991
    .goto 245,78.594,42.031
    >>Mate |cRXP_ENEMY_Comandante Largo|r no topo da Torre do Overlook de Largo
    .complete 27991,1 -- Commander Largo slain (1)
    .mob Commander Largo
step << Alliance
    #completewith Seabass
    .subzone 5538 >>Viagem para Rustberg Village
step << Alliance
    .isOnQuest 28130
    #loop
    .goto 245,62.0,31.0,70,0 << Horde
    .goto 245,72.6,35.8,70,0 << Alliance
    .goto 245,67.4,34.0,70,0
    .goto 245,64.4,25.4,70,0
    .goto 245,72.2,25.8,70,0
    >>Mate os |cRXP_ENEMY_Aldeões Suspeitos|r, os |cRXP_ENEMY_Trabalhadores Apreensivos|r, os |cRXP_ENEMY_Bandidos de Rustberg|r e os |cRXP_ENEMY_Pescadores de Rustberg|r
    .complete 28130,1 -- Rustberg Village Residents slain (14)
    .mob Rustberg Bandit
    .mob Suspicious Villager
    .mob Rustberg Fisherman
    .mob Apprehensive Worker
step << Alliance
    #label Seabass
    .isOnQuest 28137
    #loop
    .goto 245,64.2,23.4,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Alliance
    .goto 245,64.2,23.4,50,0 << Alliance
    >>Mate os |cRXP_ENEMY_Pescadores de Rustberg|r. Saqueie-os para obter |cRXP_LOOT_Robalo de Rustberg|r
    >>|cRXP_LOOT_Robalo de Rustberg|r |cRXP_WARN_também pode ser saqueado da|r |cRXP_PICK_Corda de Peixe|r
    .complete 28137,1 -- Rustberg Seabass (22)
    .mob Rustberg Fisherman
step << Alliance
    #completewith Tankslain
    .subzone 5534 >>Viagem para o Cabo de Esperança Perdida
step << Alliance
    .isOnQuest 27972
    #loop
    .goto 245,47.6,27.4,70,0
    .goto 245,50.4,21.6,70,0
    .goto 245,49.1,13.7,70,0
    .goto 245,41.6,16.2,70,0
    >>Pegue os |cRXP_LOOT_Barris de Rum de Southsea|r na costa e debaixo d'água
    .complete 27972,1 -- Barrel of Southsea Rum (6)
step << Alliance
    .isOnQuest 27971
    #loop
    .goto 245,51.60,37.67,70,0
    .goto 245,49.14,28.63,70,0
    .goto 245,44.39,23.37,70,0
    >>Mate os |cRXP_ENEMY_Marinheiros náufragos|r
    .complete 27971,1 -- Shipwrecked Sailors slain (8)
    .mob Shipwrecked Sailor
step << Alliance
    .isOnQuest 27970
    .goto 245,48.04,8.00
    >>Mate |cRXP_ENEMY_Capitão P. Espargosa|r nos destroços do navio
    .complete 27970,1 -- Captain P. Harris slain (1)
    .mob Captain P. Harris
step << Alliance
    #label Tankslain
    .isOnQuest 28050
    #loop
    .goto 245,51.4,24.2,80,0
    .goto 245,41.0,16.6,80,0
    .goto 245,49.0,13.4,80,0
    >>Mate |cRXP_ENEMY_Tanque|r
    >>|cRXP_ENEMY_Tanque|r |cRXP_WARN_é um tubarão Élite que patrulha o Cabo de Esperança Perdida|r
    .complete 28050,1 -- Tank slain (1)
    .unitscan Tank
step << Alliance
    #completewith KeepLordFarson
    .subzone 5539 >>Viagem para o Forte de Farson
step << Alliance
    .isOnQuest 28063
    .goto 245,37.34,29.35
    >>Mate os |cRXP_ENEMY_Guardas Enlouquecidos|r. Saqueie-os para obter |cRXP_LOOT_Rifles de Ferrugem|r
    >>|cRXP_LOOT_Rusty Rifles|r |cRXP_WARN_também podem ser obtidos do|r |cRXP_PICK_Racks of Rifles|r
    >>|cRXP_WARN_Continue correndo pelo Segurar até completar|r
    .complete 28063,1 -- Rusty Rifle (12)
    .mob Crazed Guard
step << Alliance
    #label KeepLordFarson
    .isOnQuest 28059
    .goto 245,38.42,31.22,20,0
    .goto 245,35.64,30.22,10,0
    .goto 245,35.64,28.90,10,0
    .goto 245,36.12,27.30
    >>Abate |cRXP_ENEMY_Castelão Farson|r no andar de cima do Keep
    .complete 28059,1 -- Keep Lord Farson slain (1)
    .mob Keep Lord Farson
step << Alliance
    #completewith ForemanWellson
    .subzone 5535 >>Vá para o Wellson Estaleiro
step << Alliance
    .isOnQuest 27973
    #loop
    .goto 245,28.8,43.5,70,0
    .goto 245,27.56,36.69,50,0
    .goto 245,25.00,36.69,50,0
    .goto 245,27.05,50.57,35,0
    .goto 245,25.03,48.20,45,0
    >>Mate os |cRXP_ENEMY_Ghastly Dockhands|r, os |cRXP_ENEMY_Accursed Shipbuilders|r e os |cRXP_ENEMY_Accursed Longshoremen|r. Saqueie-os para obter |cRXP_LOOT_Shipyard Madeira Serrada|r
    >>|cRXP_LOOT_Shipyard Madeira Serrada|r |cRXP_WARN_também pode ser obtido do chão|r
    .complete 27973,1 -- Shipyard Lumber (15)
    .mob Ghastly Dockhand
    .mob Accursed Shipbuilder
    .mob Accursed Longshoreman
step << Alliance
    #completewith next
    .isOnQuest 28275
    #loop
    .goto 245,22.08,36.61,20,0
    .goto 245,21.76,47.89,20,0
    .vehicle 48283 >>|cRXP_WARN_Entre em um|r |cRXP_FRIENDLY_Canhão do Bonfilho|r
    .target Wellson Cannon
step << Alliance
    .isOnQuest 28275
    >>|cRXP_WARN_Use|r |T252185:0|t[Explosão de Canhão] (1) |cRXP_WARN_para destruir os Barcos de Suprimentos na água|r
    .complete 28275,1 -- Wellson Supply Boats Destroyed (10)
step << Alliance
    #label ForemanWellson
    .isOnQuest 27975
    #loop
    .goto 245,30.6,44.6,50,0
    .goto 245,27.6,47.6,50,0
    .goto 245,30.6,44.6,70,0
    .goto 245,26.4,41.0,50,0
    >>Mate |cRXP_ENEMY_Encarregado Bonfilho|r
    >>|cRXP_ENEMY_Encarregado Bonfilho|r |cRXP_WARN_patrulha o Wellson Estaleiro|r
    .complete 27975,1 -- Foreman Wellson slain (1)
    .unitscan Foreman Wellson
step << Horde
    #completewith FirstLieutenantConnor
    .subzone 5536 >>Vá para o Monte Esquecido
step << Horde
    .isOnQuest 27949
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Clique em |cRXP_PICK_Lápides do Soldado Esquecido|r em toda Forgotten Hill
    .complete 27949,1 -- Forgotten Soldier's Tombstone (6)
step << Horde
    .isOnQuest 27966
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Mate os |cRXP_ENEMY_Hungry Carniçais|r, os |cRXP_ENEMY_Forgotten Carniçais|r, os |cRXP_ENEMY_Wandering Almas|r e os |cRXP_ENEMY_Skeletal Beastmasters|r. Saqueie-os para obter |cRXP_LOOT_Cursed Femurs|r
    .complete 27966,1 -- Cursed Femur (9)
    .mob Forgotten Ghoul
    .mob Wandering Soul
    .mob Skeletal Beastmaster
    .mob Hungry Ghoul
step << Horde
    #label FirstLieutenantConnor
    .isOnQuest 27967
    #loop
    .goto 245,38.51,77.49,40,0
    .goto 245,36.02,79.14,40,0
    >>Mate |cRXP_ENEMY_Primeiro-tenente Cunha|r
    >>|cRXP_ENEMY_Primeiro-tenente Cunha|r |cRXP_WARN_patrulha um pouco|r
    .complete 27967,1 -- First Lieutenant Connor slain (1)
    .unitscan First Lieutenant Connor
step
    #completewith SiegeEngineScrap
    .subzone 5542 >>Vá para o Restless Front
step << Alliance
    .isOnQuest 28046
    #loop
    .goto 245,39.23,61.12,60,0
    .goto 245,47.46,69.52,60,0
    .goto 245,43.90,60.75,60,0
    >>Mate os |cRXP_ENEMY_Infantarias Inquietas|r
    .complete 28046,1 -- Restless Infantry slain (5)
    .mob Restless Infantry
step << Horde
    .isOnQuest 28693
    #loop
    .goto 245,47.46,69.52,60,0
    .goto 245,43.90,60.75,60,0
    .goto 245,39.23,61.12,60,0
    >>Mate os |cRXP_ENEMY_Soldados Inquietos|r
    .complete 28693,1 -- Restless Soldier slain (5)
    .mob Restless Soldier
step
    #label SiegeEngineScrap
    .isOnQuest 27992
    #loop
    .goto 245,39.23,61.12,60,0 << Alliance
    .goto 245,47.46,69.52,60,0 << Alliance
    .goto 245,43.90,60.75,60,0 << Alliance
    .goto 245,47.46,69.52,60,0 << Horde
    .goto 245,43.90,60.75,60,0 << Horde
    .goto 245,39.23,61.12,60,0 << Horde
    .use 62829 >>|cRXP_WARN_Use o|r |T134519:0|t[Coletor de Sucata Magnetizado] |cRXP_WARN_enquanto no Restless Front. Isso fará com que |cRXP_LOOT_Sucata da Máquina de Cerco|r seja revelada no chão|r
    >>|cRXP_WARN_Observe que o|r |T134519:0|t[Coletor de Sucata Magnetizado] |cRXP_WARN_nem sempre revela|r |cRXP_LOOT_Sucata da Máquina de Cerco|r
    >>Pegue a |cRXP_LOOT_Sucata da Máquina de Cerco|r no chão
    .complete 27992,1 -- Siege Engine Scrap (7)
step << Alliance
    #completewith FirstLieutenantConnor
    .subzone 5536 >>Vá para o Monte Esquecido
step << Alliance
    .isOnQuest 27949
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Clique em |cRXP_PICK_Lápides do Soldado Esquecido|r em toda Forgotten Hill
    .complete 27949,1 -- Forgotten Soldier's Tombstone (6)
step << Alliance
    .isOnQuest 27966
    #loop
    .goto 245,39.0,75.6,75,0
    .goto 245,27.6,66.0,75,0
    .goto 245,29.9,76.2,60,0
    .goto 245,39.9,83.5,75,0
    >>Mate os |cRXP_ENEMY_Hungry Carniçais|r, os |cRXP_ENEMY_Forgotten Carniçais|r, os |cRXP_ENEMY_Wandering Almas|r e os |cRXP_ENEMY_Skeletal Beastmasters|r. Saqueie-os para obter |cRXP_LOOT_Cursed Femurs|r
    .complete 27966,1 -- Cursed Femur (9)
    .mob Forgotten Ghoul
    .mob Wandering Soul
    .mob Skeletal Beastmaster
    .mob Hungry Ghoul
step << Alliance
    #label FirstLieutenantConnor
    .isOnQuest 27967
    #loop
    .goto 245,38.51,77.49,40,0
    .goto 245,36.02,79.14,40,0
    >>Mate |cRXP_ENEMY_Primeiro-tenente Cunha|r
    >>|cRXP_ENEMY_Primeiro-tenente Cunha|r |cRXP_WARN_patrulha um pouco|r
    .complete 27967,1 -- First Lieutenant Connor slain (1)
    .unitscan First Lieutenant Connor
step << Alliance
    #completewith next
    .subzone 5537 >>Vá para The Darkwood
step << Alliance
    .isOnQuest 27944
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Mate os |cRXP_ENEMY_Espreitadores Darkwood|r
    .complete 27944,1 -- Darkwood Lurker slain (12)
    .mob Darkwood Lurker
step << Alliance
    .isOnQuest 27948
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Mate as |cRXP_ENEMY_Progenitoras Darkwood|r. Saque-as para obter suas |cRXP_LOOT_Glândulas de Seda Grudenta|r
    .complete 27948,1 -- Sticky Silk Gland (4)
    .mob Darkwood Broodmother
step << Horde
    #completewith ForemanWellson
    .subzone 5535 >>Vá para o Wellson Estaleiro
step << Horde
    .isOnQuest 27973
    #loop
    .goto 245,28.8,43.5,70,0
    .goto 245,27.56,36.69,50,0
    .goto 245,25.00,36.69,50,0
    .goto 245,27.05,50.57,35,0
    .goto 245,25.03,48.20,45,0
    >>Mate os |cRXP_ENEMY_Ghastly Dockhands|r, os |cRXP_ENEMY_Accursed Shipbuilders|r e os |cRXP_ENEMY_Accursed Longshoremen|r. Saqueie-os para obter |cRXP_LOOT_Shipyard Madeira Serrada|r
    >>|cRXP_LOOT_Shipyard Madeira Serrada|r |cRXP_WARN_também pode ser obtido do chão|r
    .complete 27973,1 -- Shipyard Lumber (15)
    .mob Ghastly Dockhand
    .mob Accursed Shipbuilder
    .mob Accursed Longshoreman
step << Horde
    #completewith next
    .isOnQuest 28275
    #loop
    .goto 245,22.08,36.61,20,0
    .goto 245,21.76,47.89,20,0
    .vehicle 48283 >>|cRXP_WARN_Entre em um|r |cRXP_FRIENDLY_Canhão do Bonfilho|r
    .target Wellson Cannon
step << Horde
    .isOnQuest 28275
    >>|cRXP_WARN_Use|r |T252185:0|t[Explosão de Canhão] (1) |cRXP_WARN_para destruir os Barcos de Suprimentos na água|r
    .complete 28275,1 -- Wellson Supply Boats Destroyed (10)
step << Horde
    #label ForemanWellson
    .isOnQuest 27975
    #loop
    .goto 245,30.6,44.6,50,0
    .goto 245,27.6,47.6,50,0
    .goto 245,30.6,44.6,70,0
    .goto 245,26.4,41.0,50,0
    >>Mate |cRXP_ENEMY_Encarregado Bonfilho|r
    >>|cRXP_ENEMY_Encarregado Bonfilho|r |cRXP_WARN_patrulha o Wellson Estaleiro|r
    .complete 27975,1 -- Foreman Wellson slain (1)
    .unitscan Foreman Wellson
step << Horde
    #completewith KeepLordFarson
    .subzone 5539 >>Viagem para o Forte de Farson
step << Horde
    .isOnQuest 28063
    .goto 245,37.34,29.35
    >>Mate os |cRXP_ENEMY_Guardas Enlouquecidos|r. Saqueie-os para obter |cRXP_LOOT_Rifles de Ferrugem|r
    >>|cRXP_LOOT_Rusty Rifles|r |cRXP_WARN_também podem ser obtidos do|r |cRXP_PICK_Racks of Rifles|r
    >>|cRXP_WARN_Continue correndo pelo Segurar até completar|r
    .complete 28063,1 -- Rusty Rifle (12)
    .mob Crazed Guard
step << Horde
    #label KeepLordFarson
    .isOnQuest 28059
    .goto 245,38.42,31.22,20,0
    .goto 245,35.64,30.22,10,0
    .goto 245,35.64,28.90,10,0
    .goto 245,36.12,27.30
    >>Abate |cRXP_ENEMY_Castelão Farson|r no andar de cima do Keep
    .complete 28059,1 -- Keep Lord Farson slain (1)
    .mob Keep Lord Farson
step << Horde
    #completewith Tankslain
    .subzone 5534 >>Viagem para o Cabo de Esperança Perdida
step << Horde
    .isOnQuest 27972
    #loop
    .goto 245,47.6,27.4,70,0
    .goto 245,50.4,21.6,70,0
    .goto 245,49.1,13.7,70,0
    .goto 245,41.6,16.2,70,0
    >>Pegue os |cRXP_LOOT_Barris de Rum de Southsea|r na costa e debaixo d'água
    .complete 27972,1 -- Barrel of Southsea Rum (6)
step << Horde
    .isOnQuest 27971
    #loop
    .goto 245,51.60,37.67,70,0
    .goto 245,49.14,28.63,70,0
    .goto 245,44.39,23.37,70,0
    >>Mate os |cRXP_ENEMY_Marinheiros náufragos|r
    .complete 27971,1 -- Shipwrecked Sailors slain (8)
    .mob Shipwrecked Sailor
step << Horde
    .isOnQuest 27970
    .goto 245,48.04,8.00
    >>Mate |cRXP_ENEMY_Capitão P. Espargosa|r nos destroços do navio
    .complete 27970,1 -- Captain P. Harris slain (1)
    .mob Captain P. Harris
step << Horde
    #label Tankslain
    .isOnQuest 28050
    #loop
    .goto 245,51.4,24.2,80,0
    .goto 245,41.0,16.6,80,0
    .goto 245,49.0,13.4,80,0
    >>Mate |cRXP_ENEMY_Tanque|r
    >>|cRXP_WARN_Tank é um tubarão élite que patrulha o Cape of Esperança Perdida|r
    .complete 28050,1 -- Tank slain (1)
    .unitscan Tank
step << Horde
    #completewith Seabass
    .subzone 5538 >>Viagem para Rustberg Village
step << Horde
    .isOnQuest 28130
    #loop
    .goto 245,62.0,31.0,70,0 << Horde
    .goto 245,72.6,35.8,70,0 << Alliance
    .goto 245,67.4,34.0,70,0
    .goto 245,64.4,25.4,70,0
    .goto 245,72.2,25.8,70,0
    >>Mate os |cRXP_ENEMY_Aldeões Suspeitos|r, os |cRXP_ENEMY_Trabalhadores Apreensivos|r, os |cRXP_ENEMY_Bandidos de Rustberg|r e os |cRXP_ENEMY_Pescadores de Rustberg|r
    .complete 28130,1 -- Rustberg Village Residents slain (14)
    .mob Rustberg Bandit
    .mob Suspicious Villager
    .mob Rustberg Fisherman
    .mob Apprehensive Worker
step << Horde
    #label Seabass
    .isOnQuest 28137
    #loop
    .goto 245,64.2,23.4,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Horde
    .goto 245,70.79,24.62,50,0 << Alliance
    .goto 245,64.2,23.4,50,0 << Alliance
    >>Mate os |cRXP_ENEMY_Pescadores de Rustberg|r. Saqueie-os para obter |cRXP_LOOT_Robalo de Rustberg|r
    >>|cRXP_LOOT_Robalo de Rustberg|r |cRXP_WARN_também pode ser saqueado da|r |cRXP_PICK_Corda de Peixe|r
    .complete 28137,1 -- Rustberg Seabass (22)
    .mob Rustberg Fisherman
step << Horde
    #completewith CommanderLargo
    .goto 245,75.26,44.80
    .subzone 5540 >>Viagem para o Miradouro de Largo
step << Horde
    .isOnQuest 27987
    #loop
    .goto 245,77.6,54.1,60,0
    .goto 245,79.8,56.5,55,0
    .goto 245,81.4,49.1,30,0
    .goto 245,78.6,41.9,55,0
    >>Pegue os |cRXP_LOOT_Stacks of Balas de Canhão|r no chão
    .complete 27987,1 -- Stack of Cannonballs (4)
step << Horde
    .isOnQuest 27978
    #loop
    .goto 245,77.24,49.46,60,0
    .goto 245,80.31,52.61,60,0
    .goto 245,82.23,48.44,45,0
    .goto 245,79.88,43.55,70,0
    >>Mate os |cRXP_ENEMY_Overlook Espíritos|r, os |cRXP_ENEMY_Overlook Spectres|r e os |cRXP_ENEMY_Ghastly Workers|r
    .complete 27978,1 -- Largo's Overlook Ghosts Slain (14)
    .mob Overlook Spirit
    .mob Overlook Spectre
    .mob Ghastly Worker
step << Horde
    #label CommanderLargo
    .isOnQuest 27991
    .goto 245,78.594,42.031
    >>Mate |cRXP_ENEMY_Comandante Largo|r no topo da Torre do Overlook de Largo
    .complete 27991,1 -- Commander Largo slain (1)
    .mob Commander Largo
step << Horde
    #completewith next
    .subzone 5537 >>Vá para The Darkwood
step << Horde
    .isOnQuest 27944
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Mate os |cRXP_ENEMY_Espreitadores Darkwood|r
    .complete 27944,1 -- Darkwood Lurker slain (12)
    .mob Darkwood Lurker
step << Horde
    .isOnQuest 27948
    #loop
    .goto 245,56.4,53.6,70,0
    .goto 245,54.5,58.8,70,0
    .goto 245,54.4,48.3,70,0
    .goto 245,63.8,53.4,70,0
    .goto 245,58.6,59.9,70,0
    >>Mate as |cRXP_ENEMY_Progenitoras Darkwood|r. Saque-as para obter suas |cRXP_LOOT_Glândulas de Seda Grudenta|r
    .complete 27948,1 -- Sticky Silk Gland (4)
    .mob Darkwood Broodmother
step << Alliance
    #completewith BaradinBaseCampTurnins
    .goto 245,69.14,57.86,150 >>Volte para o Acampamento Base de Baradin
    .subzoneskip 5545
step << Alliance
    .isQuestComplete 28275
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Dias|r
    .dailyturnin 28275 >>Entregue Lançar Bombas!
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27987
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Dias|r
    .dailyturnin 27987 >>Entregue Bala de Canhão!
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27978
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Dias|r
    .dailyturnin 27978 >>Entregue Ghostbuster
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27991
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Dias|r
    .dailyturnin 27991 >>Entregue Retomando o Belvedere
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27973
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Dias|r
    .dailyturnin 27973 >>Entregue Cuidado com as Astas!
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 27975
    .goto 245,72.934,60.938
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Sargento Dias|r
    .dailyturnin 27975 >>Entregue WANTED: Encarregado Bonfilho
    .target Sergeant Gray
step << Alliance
    .isQuestComplete 28059
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Marco Gama|r
    .dailyturnin 28059 >>Entregue Reivindicar The Keep
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28063
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Marco Gama|r
    .dailyturnin 28063 >>Entregue Não Deixe Nenhuma Arma para Trás
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28130
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Marco Gama|r
    .dailyturnin 28130 >>Entregue A Cidade Menos Amigável
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28137
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Marco Gama|r
    .dailyturnin 28137 >>Entregue Ensinar um Homem a Pescar... ou Roubar
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 28065
    .goto 245,73.390,59.176
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Marco Gama|r
    .dailyturnin 28065 >>Entregue Passo uma Milha nos Sapatos Deles
    .target Commander Marcus Johnson
step << Alliance
    .isQuestComplete 27948
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante-de-campo Abreu|r
    .dailyturnin 27948 >>Entregue Uma Tarefa Grudenta
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27972
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante-de-campo Abreu|r
    .dailyturnin 27972 >>Entregue Impulsionando a Moral
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27970
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante-de-campo Abreu|r
    .dailyturnin 27970 >>Entregue Capitão P. Espargosa
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27971
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante-de-campo Abreu|r
    .dailyturnin 27971 >>Entregue Clangor das Gaiolas
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 28050
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante-de-campo Abreu|r
    .dailyturnin 28050 >>Entregue Aquário de Tubarões
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 27944
    .goto 245,73.729,57.571
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante-de-campo Abreu|r
    .dailyturnin 27944 >>Entregue Enxugando a Ninhada
    .target Camp Coordinator Brack
step << Alliance
    .isQuestComplete 28046
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Paranhos|r
    .dailyturnin 28046 >>Entregue Concluir o Trabalho
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27967
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Paranhos|r
    .dailyturnin 27967 >>Entregue Primeiro-tenente Cunha
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27992
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Paranhos|r
    .dailyturnin 27992 >>Entregue Ímãs, Como Eles Funcionam?
    .target Lieutenant Farnsworth
step << Alliance
    .isQuestComplete 27966
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Paranhos|r
    .dailyturnin 27966 >>Entregue Resgatando os Restos
    .target Lieutenant Farnsworth
step << Alliance
    #label BaradinBaseCampTurnins
    .isQuestComplete 27949
    .goto 245,74.776,59.600
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Tenente Paranhos|r
    .dailyturnin 27949 >>Entregue Os Esquecidos
    .target Lieutenant Farnsworth
step << Horde
    #completewith HellscreamsGraspTurnins
    .goto 245,52.43,68.91,150 >>Entregue a Garra de Grito Infernal
    .subzoneskip 5546
step << Horde
    .isQuestComplete 28693
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Prug|r
    .dailyturnin 28693 >>Entregue Concluir o Trabalho
    .target Captain Prug
step << Horde
    .isQuestComplete 27967
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Prug|r
    .dailyturnin 27967 >>Entregue Primeiro-tenente Cunha
    .target Captain Prug
step << Horde
    .isQuestComplete 27992
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Prug|r
    .dailyturnin 27992 >>Entregue Ímãs, Como Eles Funcionam?
    .target Captain Prug
step << Horde
    .isQuestComplete 27966
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Prug|r
    .dailyturnin 27966 >>Entregue Resgatando os Restos
    .target Captain Prug
step << Horde
    .isQuestComplete 27949
    .goto 245,54.890,79.311
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Capitão Prug|r
    .dailyturnin 27949 >>Entregue Os Esquecidos
    .target Captain Prug
step << Horde
    .isQuestComplete 28275
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Recruta Sarlosk|r
    .dailyturnin 28275 >>Entregue Lançar Bombas!
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27987
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Recruta Sarlosk|r
    .dailyturnin 27987 >>Entregue Bala de Canhão!
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27978
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Recruta Sarlosk|r
    .dailyturnin 27978 >>Entregue Ghostbuster
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27991
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Recruta Sarlosk|r
    .dailyturnin 27991 >>Entregue Retomando o Belvedere
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27973
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Recruta Sarlosk|r
    .dailyturnin 27973 >>Entregue Cuidado com as Astas!
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27975
    .goto 245,55.770,78.478
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Recruta Sarlosk|r
    .dailyturnin 27975 >>Entregue WANTED: Encarregado Bonfilho
    .target Private Sarlosk
step << Horde
    .isQuestComplete 27948
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro Oficial Kronkar|r
    .dailyturnin 27948 >>Entregue Uma Tarefa Grudenta
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27972
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro Oficial Kronkar|r
    .dailyturnin 27972 >>Entregue Impulsionando a Moral
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27970
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro Oficial Kronkar|r
    .dailyturnin 27970 >>Entregue Capitão P. Espargosa
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27971
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro Oficial Kronkar|r
    .dailyturnin 27971 >>Entregue Clangor das Gaiolas
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 28050
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro Oficial Kronkar|r
    .dailyturnin 28050 >>Entregue Aquário de Tubarões
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 27944
    .goto 245,55.223,81.329
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro Oficial Kronkar|r
    .dailyturnin 27944 >>Entregue Enxugando a Ninhada
    .target 3rd Officer Kronkar
step << Horde
    .isQuestComplete 28059
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Larmash|r
    .dailyturnin 28059 >>Entregue Reivindicar The Keep
    .target Commander Larmash
step << Horde
    .isQuestComplete 28063
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Larmash|r
    .dailyturnin 28063 >>Entregue Não Deixe Nenhuma Arma para Trás
    .target Commander Larmash
step << Horde
    .isQuestComplete 28130
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Larmash|r
    .dailyturnin 28130 >>Entregue A Cidade Menos Amigável
    .target Commander Larmash
step << Horde
    .isQuestComplete 28137
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Larmash|r
    .dailyturnin 28137 >>Entregue Ensinar um Homem a Pescar... ou Roubar
    .target Commander Larmash
step << Horde
    #label HellscreamsGraspTurnins
    .isQuestComplete 28065
    .goto 245,53.535,80.569
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Comandante Larmash|r
    .dailyturnin 28065 >>Entregue Passo uma Milha nos Sapatos Deles
    .target Commander Larmash
step
    #completewith next
    .goto 245,66.83,81.42,30,0
    .goto 244,40.80,20.76
    .zone 244 >>|cRXP_WARN_Você completou todas as missões diárias na Península de Tol Barad por hoje. Vá para o sul em direção a Tol Barad para completar mais missões diárias lá|r
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Segundo-tenente Osório|r, o |cRXP_FRIENDLY_Marechal Malone|r, o |cRXP_FRIENDLY_Sargento Paulo|r e o |cRXP_FRIENDLY_Comandante Stevens|r
    .daily 28186 >>Aceite Grilhões Amaldiçoados
    .daily 28165 >>Aceite Bloco D
    .daily 28185 >>Aceite Svarnos
    .goto 244,53.108,46.414
    .target +2nd Lieutenant Wansworth
    .daily 28232 >>Aceite Comida de Baixo
    .daily 28188 >>Aceite Revolta na Prisão
    .daily 28223 >>Aceite O Guardião
    .goto 244,53.517,47.011
    .target +Marshal Fallows
    .daily 28122 >>Aceite A Huge Problem
    .daily 28162 >>Aceite Isca do Pântano
    .daily 28163 >>Aceite As Sobras
    .goto 244,54.568,46.338
    .target +Sergeant Parker
    .daily 28117 >>Aceite Limpando as Profundezas
    .daily 28120 >>Aceite Aprendendo com o Passado
    .daily 28118 >>Aceite O Arquimago Aprisionado
    .goto 244,54.385,45.623
    .target +Commander Stevens
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro-sargento Lázaro|r, o |cRXP_FRIENDLY_Comandante Zanoth|r, o |cRXP_FRIENDLY_Recruta Garnoth|r e o |cRXP_FRIENDLY_Comandante-chefe Razgoth|r
    .daily 28232 >>Aceite Comida de Baixo
    .daily 28188 >>Aceite Revolta na Prisão
    .daily 28223 >>Aceite O Guardião
    .goto 244,48.719,53.631
    .target +Staff Sergeant Lazgar
    .daily 28122 >>Aceite A Huge Problem
    .daily 28162 >>Aceite Isca do Pântano
    .daily 28659 >>Aceite As Sobras
    .goto 244,48.003,54.792
    .target +Commander Zanoth
    .daily 28117 >>Aceite Limpando as Profundezas
    .daily 28120 >>Aceite Aprendendo com o Passado
    .daily 28118 >>Aceite O Arquimago Aprisionado
    .goto 244,48.476,55.240
    .target +Private Garnoth
    .daily 28186 >>Aceite Grilhões Amaldiçoados
    .daily 28165 >>Aceite Bloco D
    .daily 28185 >>Aceite Svarnos
    .goto 244,49.230,53.860
    .target +Drillmaster Razgoth
step
    #completewith GalusStaff
    .goto 244,61.330,50.108
    .subzone 5658 >>Entre nas Profundezas Amaldiçoadas
step
    #completewith GalusStaff
    .isOnQuest 28117
    >>Abate os |cRXP_ENEMY_Captive Espíritos|r, os |cRXP_ENEMY_Ghastly Convicts|r e os |cRXP_ENEMY_Cellblock Oozes|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #completewith GalusStaff
    .isOnQuest 28120
    >>Pegue os |cRXP_LOOT_Dusty Prison Journals|r no chão
    .complete 28120,1 -- Cursed Shackles (8)
step
    #label GalusStaff
    .isOnQuest 28118
    .goto 244,56.31,54.75
    >>Abate |cRXP_ENEMY_Arquimago Galus|r. Saque |cRXP_LOOT_Arquimago Galus' Cajado|r
    .complete 28118,1 -- Archmage Galus' Staff (1)
    .mob Archmage Galus
step
    #completewith next
    .isOnQuest 28117
    >>Abate os |cRXP_ENEMY_Captive Espíritos|r, os |cRXP_ENEMY_Ghastly Convicts|r e os |cRXP_ENEMY_Cellblock Oozes|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #loop
    .goto 244,58.38,48.32,40,0
    .goto 244,58.33,54.84,40,0
    .isOnQuest 28120
    >>Pegue os |cRXP_LOOT_Dusty Prison Journals|r no chão
    .complete 28120,1 -- Cursed Shackles (8)
step
    #loop
    .goto 244,58.38,48.32,40,0
    .goto 244,58.33,54.84,40,0
    .isOnQuest 28117
    >>Abate os |cRXP_ENEMY_Captive Espíritos|r, os |cRXP_ENEMY_Ghastly Convicts|r e os |cRXP_ENEMY_Cellblock Oozes|r
    .complete 28117,1 -- Ghosts Slain (9)
    .mob Captive Spirit
    .mob Cellblock Ooze
    .mob Ghastly Convict
step
    #completewith SvarnosCollar
    .goto 244,42.722,38.648
    .subzone 5657 >>Entre no Bloco D
step
    #completewith SvarnosCollar
    .isOnQuest 28165
    >>Mate os |cRXP_ENEMY_Demônios|r
    .complete 28165,1 -- Demons slain (10)
    .mob Shivarra Destroyer
    .mob Svarnos
    .mob Imprisoned Imp
    .mob Disciple of Hate
    .mob Cell Watcher
    .mob Jailed Wrathguard
step
    #completewith SvarnosCollar
    .isOnQuest 28186
    >>Pegue os |cRXP_LOOT_Cursed Grilhões|r no chão
    .complete 28186,1 -- Cursed Shackles (8)
step
    #label SvarnosCollar
    .isOnQuest 28185
    .goto 244,48.26,30.75
    >>Abate |cRXP_ENEMY_Svarnos|r. Saqueie-o por |cRXP_LOOT_Svarnos' Amaldiçoado Collar|r
    .complete 28185,1 -- Svarnos' Cursed Collar (1)
    .mob Svarnos
step
    #completewith next
    .isOnQuest 28165
    >>Mate os |cRXP_ENEMY_Demônios|r
    .complete 28165,1 -- Demons slain (10)
    .mob Shivarra Destroyer
    .mob Svarnos
    .mob Imprisoned Imp
    .mob Disciple of Hate
    .mob Cell Watcher
    .mob Jailed Wrathguard
step
    .isOnQuest 28186
    #loop
    .goto 244,39.53,30.31,40,0
    .goto 244,39.63,27.50,40,0
    .goto 244,48.26,30.75,40,0
    >>Pegue os |cRXP_LOOT_Cursed Grilhões|r no chão
    .complete 28186,1 -- Cursed Shackles (8)
step
    .isOnQuest 28165
    #loop
    .goto 244,39.53,30.31,40,0
    .goto 244,39.63,27.50,40,0
    .goto 244,48.26,30.75,40,0
    >>Mate os |cRXP_ENEMY_Demônios|r
    .complete 28165,1 -- Demons slain (10)
    .mob Shivarra Destroyer
    .mob Svarnos
    .mob Imprisoned Imp
    .mob Disciple of Hate
    .mob Cell Watcher
    .mob Jailed Wrathguard
step
    .isOnQuest 28162
    #loop
    .goto 244,39.8,55.0,70,0
    .goto 244,34.4,49.0,70,0
    .goto 244,39.6,40.2,70,0
    .goto 244,45.0,48.0,70,0
    >>Abate |cRXP_ENEMY_Baradin Crocoliscos|r. Saque |cRXP_LOOT_Couro de crocolisco|r deles
    .complete 28162,1 -- Crocolisk Hide (8)
    .mob Baradin Crocolisk
step
    #completewith WardensKeys
    .goto 244,43.93,70.10
    .subzone 5659 >>Entre no Buraco
step
    #completewith WardensKeys
    .isOnQuest 28188
    >>Abate |cRXP_ENEMY_Aprisionados|r dentro de The Hole
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    .isOnQuest 28232
    #completewith WardensKeys
    >>Abate os |cRXP_ENEMY_Imprisoned Workers|r. Saqueie-os por |cRXP_LOOT_Cellblock Rations|r
    >>|cRXP_LOOT_Cellblock Rations|r |cRXP_WARN_também pode ser encontrado no chão|r
    .complete 28232,1 -- Cellblock Rations (12)
    .mob Imprisoned Worker
step
    #label WardensKeys
    .isOnQuest 28223
    .goto 244,37.375,71.036
    >>Abate |cRXP_ENEMY_Carcereiro Silva|r. Saqueie-o pelas |cRXP_LOOT_Warden's Keys|r
    .complete 28223,1 -- Warden's Keys (1)
    .mob Warden Silva
step
    #completewith next
    .isOnQuest 28188
    >>Abate |cRXP_ENEMY_Aprisionados|r dentro de The Hole
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    #loop
    .goto 244,37.35,75.01,50,0
    .goto 244,37.28,78.18,50,0
    .goto 244,40.88,78.23,50,0
    .goto 244,46.15,81.49,50,0
    .isOnQuest 28232
    >>Abate os |cRXP_ENEMY_Imprisoned Workers|r. Saqueie-os por |cRXP_LOOT_Cellblock Rations|r
    >>|cRXP_LOOT_Cellblock Rations|r |cRXP_WARN_também pode ser encontrado no chão|r
    .complete 28232,1 -- Cellblock Rations (12)
    .mob Imprisoned Worker
step
    #loop
    .goto 244,37.35,75.01,50,0
    .goto 244,37.28,78.18,50,0
    .goto 244,40.88,78.23,50,0
    .goto 244,46.15,81.49,50,0
    .isOnQuest 28188
    >>Abate |cRXP_ENEMY_Aprisionados|r dentro de The Hole
    .complete 28188,1 -- Prisoners Slain (10)
    .mob Imprisoned Worker
    .mob Warden Guard
    .mob Warden Silva
    .mob Exiled Mage
    .mob Demented Prisoner
step
    .isOnQuest 28163 << Alliance
    .isOnQuest 28659 << Horde
    #loop
    .goto 244,36.2,68.4,60,0 -- sw
    .goto 244,51.4,29.0,60,0 -- north
    .goto 244,64.8,63.8,60,0 -- se
    >>Abate a |cRXP_ENEMY_Horde Infantry|r no The Slagworks, Guardiã's Vigília ou na Ironclad Garrison << Alliance
    >>Abate a |cRXP_ENEMY_Alliance Infantry|r no The Slagworks, Guardiã's Vigília ou na Ironclad Garrison << Horde
    .complete 28163,1 << Alliance -- Horde Infantry slain (12)
    .complete 28659,1 << Horde -- Alliance Infantry slain (12)
    .mob Horde Druid Infantry << Alliance
    .mob Horde Rogue Infantry << Alliance
    .mob Horde Mage Infantry << Alliance
    .mob Horde Shaman Infantry << Alliance
    .mob Alliance Hunter Infantry << Horde
    .mob Alliance Warrior Infantry << Horde
    .mob Alliance Mage Infantry << Horde
    .mob Alliance Paladin Infantry << Horde
step
    .isOnQuest 28122
    #loop
    .goto 244,51.0,36.6,80,0
    .goto 244,34.2,38.4,80,0
    .goto 244,38.2,60.6,80,0
    .goto 244,62.0,58.0,80,0
    .goto 244,58.6,36.8,80,0
    >>Abate |cRXP_ENEMY_Pobrema|r
    >>|cRXP_ENEMY_Pobrema|r |cRXP_WARN_patrulha pela estrada|r
    .complete 28122,1 -- Problim slain (1)
    .mob Problim
step << Alliance
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Segundo-tenente Osório|r, o |cRXP_FRIENDLY_Marechal Malone|r, o |cRXP_FRIENDLY_Sargento Paulo|r e o |cRXP_FRIENDLY_Comandante Stevens|r
    .dailyturnin 28186 >>Entregue Amaldiçoado Grilhões
    .dailyturnin 28165 >>Entregue D-Bloqueio
    .dailyturnin 28185 >>Entregue Svarnos
    .goto 244,53.108,46.414
    .target +2nd Lieutenant Wansworth
    .dailyturnin 28232 >>Entregue Comida From Below
    .dailyturnin 28188 >>Entregue Prison Revolta
    .dailyturnin 28223 >>Entregue O Guardião
    .goto 244,53.517,47.011
    .target +Marshal Fallows
    .dailyturnin 28122 >>Entregue A Huge Problem
    .dailyturnin 28162 >>Entregue Swamp Isca
    .dailyturnin 28163 >>Entregue The Sobras
    .goto 244,54.568,46.338
    .target +Sergeant Parker
    .dailyturnin 28117 >>Entregue Limpando the Depths
    .dailyturnin 28120 >>Entregue Aprendizagem From The Past
    .dailyturnin 28118 >>Entregue The Aprisionado Archmage
    .goto 244,54.385,45.623
    .target +Commander Stevens
step << Horde
    >>|Tinterface/worldmap/chatbubble_64grey.blp:20|tFale com o |cRXP_FRIENDLY_Terceiro-sargento Lázaro|r, o |cRXP_FRIENDLY_Comandante Zanoth|r, o |cRXP_FRIENDLY_Recruta Garnoth|r e o |cRXP_FRIENDLY_Comandante-chefe Razgoth|r
    .dailyturnin 28232 >>Entregue Comida From Below
    .dailyturnin 28188 >>Entregue Prison Revolta
    .dailyturnin 28223 >>Entregue O Guardião
    .goto 244,48.719,53.631
    .target +Staff Sergeant Lazgar
    .dailyturnin 28122 >>Entregue A Huge Problem
    .dailyturnin 28162 >>Entregue Swamp Isca
    .dailyturnin 28659 >>Entregue The Sobras
    .goto 244,48.003,54.792
    .target +Commander Zanoth
    .dailyturnin 28117 >>Entregue Limpando the Depths
    .dailyturnin 28120 >>Entregue Aprendizagem From The Past
    .dailyturnin 28118 >>Entregue The Aprisionado Archmage
    .goto 244,48.476,55.240
    .target +Private Garnoth
    .dailyturnin 28186 >>Entregue Amaldiçoado Grilhões
    .dailyturnin 28165 >>Entregue D-Bloqueio
    .dailyturnin 28185 >>Entregue Svarnos
    .goto 244,49.230,53.860
    .target +Drillmaster Razgoth
step
    +|cRXP_WARN_Você completou todas as missões diárias de Tol Barad hoje|r
]])
